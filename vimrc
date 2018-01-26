set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=/home/unknowner/.vim/bundle/Vundle.vim

call vundle#begin()
        Plugin 'lifepillar/vim-solarized8'
        Plugin 'vim-scripts/L9'
        Plugin 'tpope/vim-fugitive'
        Plugin 'tpope/vim-surround'
        Plugin 'tpope/vim-sleuth'
        Plugin 'tpope/vim-commentary'
        Plugin 'maciakl/vim-neatstatus'
        Plugin 'sbdchd/neoformat'
        Plugin 'vim-scripts/FuzzyFinder'
        Plugin 'scrooloose/nerdtree'
        Plugin 'jistr/vim-nerdtree-tabs'
        Plugin 'kien/ctrlp.vim'
        Plugin 'bsl/obviousmode'
        Plugin 'msanders/snipmate.vim'
        "Plugin 'majutsushi/tagbar'
        Plugin 'alvan/vim-closetag'
        Plugin 'townk/vim-autoclose'
        Plugin 'yggdroot/indentLine'
        Plugin 'mxw/vim-jsx'
        Plugin 'chemzqm/vim-jsx-improve'
        Plugin 'elzr/vim-json'
        Plugin 'pangloss/vim-javascript'
        Plugin 'skywind3000/asyncrun.vim'
        Plugin 'shawncplus/phpcomplete.vim'
        Plugin 'stanangeloff/php.vim'
call vundle#end()            " Vundle required
filetype plugin indent on    " Vundle required -- Automatically detect file types.

""""" RANDOM SHiT """""
" colorscheme badwolf 
colorscheme molokai 
" colorscheme solarized8 
syntax on
syntax enable
set background=dark
set t_Co=256
let mapleader=","
scriptencoding utf-8
set history=1000                    
set pastetoggle=<F12>  
set noerrorbells
set novisualbell
set gfn=Monaco 
set guicursor=a:blinkon0
set ls=2      " Always show status line
set laststatus=2 
set noswapfile
set nowb  
set wrap!
set nofoldenable
set mouse=n
set ttymouse=xterm2

"" TABS ""
set autoindent
set tabstop=2
set softtabstop=2
set expandtab "turn tasbs into spaces
set copyindent    " copy previous indent on autoindenting
set smartindent
set backspace=indent,eol,start 

"" LINES ""
set number
set number relativenumber
set cursorline " highlight current line

"Bottom Command line ""
set showcmd                                        " show command in bottom bar
set wildmenu                                       " visual autocomplete for command menu
set ruler                                          " Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
set showcmd                                        " Show partial commands in status line and

"" FILES ""
filetype indent on

"" SEARCH ""
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set incsearch           " Find as you type search
set ignorecase
set smartcase                   " Case sensitive when uc present
nnoremap <leader><space> :nohlsearch<CR> 

set lazyredraw          " redraw only when we need to.set showmatch           " highlight matching [{()}]

""FOLDING ""
set foldenable
set foldlevelstart=10  " open most folds by default 
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
set foldmethod=indent   " fold based on indent level


"" Remaps ""
nnoremap ½ $
inoremap ½ $
nnoremap ; : 
inoremap jj <esc>
nnoremap <leader>u :GundoToggle<CR> 
nnoremap <F1> :GundoToggle<CR>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_ 
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
"" For changing between splits
nmap <silent> <S-k> :wincmd k<CR>
nmap <silent> <S-j> :wincmd j<CR>
nmap <silent> <S-h> :wincmd h<CR>
nmap <silent> <S-l> :wincmd l<CR>
command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

" ####### LEADERS ####### "
map <leader>vimrc :tabe ~/.vimrc<cr>
autocmd bufwritepost .vimrc source $MYVIMRC

" ####### GIT ####### "
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

"" JAVASCRIPT / REACT ""
" autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

"" PLUGIN SETTINGS ""

"""""" NERDTree """"" {
        map <C-e> <plug>NERDTreeTabsToggle<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>
        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        "let g:nerdtree_tabs_open_on_gui_startup=0
        let NERDTreeShowLineNumbers=1
        autocmd FileType nerdtree setlocal relativenumber
""""" }

