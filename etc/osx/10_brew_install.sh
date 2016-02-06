if ! has brew; then
    die "Error: require brew"
fi

install_if_needed() {
	log_info "$(e_arrow $1)"
	if ! brew list $1 > /dev/null 2>&1; then
		brew install $1
	fi
}

install_if_needed coreutils
install_if_needed hub

brew tap tldr-pages/tldr
install_if_needed tldr

