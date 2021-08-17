
            function fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=bash;
                export TF_ALIAS=fuck;
                export TF_SHELL_ALIASES=$(alias);
                export TF_HISTORY=$(fc -ln -10);
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER "$@"
                ) && eval "$TF_CMD";
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                history -s $TF_CMD;
            }
export PS1="\[$(tput bold)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;208m\]\h\[$(tput sgr0)\]:\W\\$ \[$(tput sgr0)\]" 
export EDITOR='vim'
alias tx='tmuxinator start narwhals'
tx
