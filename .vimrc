scriptencoding utf-8

"--------------------------------------------------
" 文字コード
"--------------------------------------------------
set encoding=utf-8
" 保存時の文字コード
set fileencoding=utf-8
" 読み込み時の文字コード自動判別(左側から優先)
set fileencodings=utf-8,ucs-bom,cp932,sjis,euc-jp
" 改行コードの自動判別(左側から優先)
set fileformats=unix,dos,mac
" 全角半角
set ambiwidth=double
"--------------------------------------------------
" ファイル関連
"--------------------------------------------------
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

"--------------------------------------------------
" 表示、編集
"--------------------------------------------------
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の列を強調表示
"set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ターミナルのタイトルをセットする
set title
" ビープ音を可視化
"set visualbell
" ステータスラインを常に表示
set laststatus=2
" 空白文字の可視化
"set list
" 長い行の表示
set display=lastline
" コマンドラインの保管
set wildmode=list:longest
"無名レジスタのデータを*レジスタにも入れる
set clipboard+=unnamed

"--------------------------------------------------
" tab
"--------------------------------------------------
" タブを半角スペースに
set expandtab
let _curfile=expand("%:t")
if _curfile == ('Makefile')
    set noexpandtab
endif
" 行頭でのタブ文字の表示幅
set tabstop=4
" スマートインデント
set smartindent
set shiftwidth=4
" カラースキーマ
syntax on

"--------------------------------------------------
" 編集
"--------------------------------------------------
" 文字のないところにカーソル移動できるようにする
set virtualedit=block

"--------------------------------------------------
" 検索
"--------------------------------------------------
" 検索するときに大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視して検索
set smartcase
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" リアルタイム検索
set incsearch
" 検索結果をハイライト表示
set hlsearch
" 行をまたいで移動
"set whichwrap=b,s,h,l,<,>,[,],~
set backspace=indent,eol,start
" ESCキー2回押しでハイライトの切り替え
nnoremap <Esc><Esc> :noh<CR>
nnoremap ; :
nnoremap : ;

"--------------------------------------------------
" コマンド
"--------------------------------------------------
" コマンドモードの補完
set wildmenu

autocmd BufRead,BufNewFile *.php setlocal tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.c setlocal tabstop=4 shiftwidth=4
autocmd BufRead,BufNewFile *.cpp setlocal tabstop=4 shiftwidth=4
autocmd BufRead,BufNewFile *.java setlocal tabstop=4 shiftwidth=4

"--------------------------------------------------
" function
"--------------------------------------------------

"--------------------------------------------------
" 起動時
"--------------------------------------------------
"terminalを下方に表示
"set splitbelow
"terminalのサイズを変更(高さx幅)
"set termsize=7x0

if has('vim_starting')
"    "画面分割し、右画面に移動
"    sp
"    wincmd 1
"    terminal ++curwin
"    wincmd h
    source ~/vim/myCmd.vim
endif

"--------------------------------------------------
" NeoBundle
"--------------------------------------------------
"if has('vim_starting')
"    set runtimepath+=~/.vim/bundle/neobundle.vim/
"
"    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
"    echo "install NeoBundle..."
"        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
"    endif
"endif
"
"call neobundle#begin(expand('~/.vim/bundle/'))
"
"" 以下インストールするVimプラグイン
"NeoBundleFetch 'Shougo/neobundle.vim'
"
""------------------------------
"" molokai
"NeoBundle 'tomasr/molokai'
"" 行末空白の可視化
"NeoBundle 'bronson/vim-trailing-whitespace'
"
"if has('lua')
"    " 自動補完
"    NeoBundle 'Shougo/neocomplete.vim'
"    " スぺニットの補完機能
"    NeoBundle 'Shougo/neosnippet'
"    " スぺニット集
"    NeoBundle 'Shougo/neosnippet-snippets'
"endif
"
""------------------------------
"
"call neobundle#end()
"
"NeoBundleCheck

"if neobundle#is_installed('molokai')
"    colorscheme molokai
"endif
"set t_Co=256
"let g:molokai_original = 1
"let g:rehash256 = 1
"set background=dark



"--------------------------------------------------
" plugins
"--------------------------------------------------
"--------------------------------------------------
" dein.vim
"--------------------------------------------------
"deinn Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

    " Required:
    if dein#load_state('$HOME/.cache/dein')
        call dein#begin('$HOME/.cache/dein')

        " Let dein manage dein
        " Required:
        call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

        " Add or remove your plugins here:
        call dein#add('Shougo/neosnippet.vim')
        call dein#add('Shougo/neosnippet-snippets')
        "call dein#add('vim-table-mode')
        "下のメニュー表示
        call dein#add('vim-airline/vim-airline')
        "htmlタグ自動綴じ
        call dein#add('alvan/vim-closetag')
        "html/css入力補助プラグイン
        call dein#add('mattn/emmet-vim')

        " You can specify revision/branch/tag.
        call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

        " Required:
        call dein#end()
        call dein#save_state()
    endif

    " Required:
    filetype plugin indent on
    syntax enable

    " If you want to install not installed plugins on startup.
    if dein#check_install()
        call dein#install()
    endif

"End dein Scripts-------------------------

syntax on
colorscheme molokai
set t_Co=256

"if dein#is_installed('vim-closetag')
let g:closetag_filenames = '*.html, *php'
let g:user_emmet_leader_key='<c-s>'
"endif
