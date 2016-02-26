set nocompatible
filetype off

" Download Vundle if not available
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set rtp +=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive', {'pinned': 1}
Plugin 'vim-airline/vim-airline', {'pinned': 1}
Plugin 'vim-airline/vim-airline-themes', {'pinned': 1}
Plugin 'scrooloose/syntastic', {'pinned': 1}
call vundle#end()

filetype plugin indent on
syntax on

" Airline settings
" needed to show statusbar straight away, not just after first split
set laststatus=2
set encoding=utf-8
let g:airline#extensions#branch#enabled=1
