@interface SUSearchDisplayController
- (id)_createPopoverController;
- (void)_noEventSetSearchFieldText:(id)text;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
- (void)setNavigationBarHidingEnabled:(BOOL)enabled;
@end

@implementation SUSearchDisplayController

- (void)_noEventSetSearchFieldText:(id)text
{
  searchBar = [(UISearchDisplayController *)self searchBar];
  delegate = [(UISearchBar *)searchBar delegate];
  [(UISearchBar *)searchBar setDelegate:0];
  [(UISearchBar *)searchBar setController:0];
  [(UISearchBar *)searchBar setText:text];
  [(UISearchBar *)searchBar setController:self];
  [(UISearchBar *)searchBar setDelegate:delegate];
  if (![text length])
  {

    [(UISearchBar *)searchBar setShowsSearchResultsButton:0];
  }
}

- (id)_createPopoverController
{
  v4.receiver = self;
  v4.super_class = SUSearchDisplayController;
  _createPopoverController = [(UISearchDisplayController *)&v4 _createPopoverController];
  [_createPopoverController _setPopoverBackgroundStyle:3];
  return _createPopoverController;
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  animatedCopy = animated;
  activeCopy = active;
  if (![(UISearchDisplayController *)self displaysSearchBarInNavigationBar])
  {
    animatedCopy = _UIApplicationUsesLegacyUI() & animatedCopy;
  }

  text = [(UISearchBar *)[(UISearchDisplayController *)self searchBar] text];
  v11.receiver = self;
  v11.super_class = SUSearchDisplayController;
  [(UISearchDisplayController *)&v11 setActive:activeCopy animated:animatedCopy];
  [(SUSearchDisplayController *)self _noEventSetSearchFieldText:text];
  if (activeCopy)
  {
    if (animatedCopy)
    {
      v8 = 300000000;
    }

    else
    {
      v8 = 0;
    }

    v9 = dispatch_time(0, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__SUSearchDisplayController_setActive_animated___block_invoke;
    v10[3] = &unk_1E8164370;
    v10[4] = self;
    v10[5] = text;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  }
}

uint64_t __48__SUSearchDisplayController_setActive_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBar];
  v3 = *(a1 + 40);

  return [v2 setText:v3];
}

- (void)setNavigationBarHidingEnabled:(BOOL)enabled
{
  self->_store_navigationBarHidingEnabled = enabled;
  v3.receiver = self;
  v3.super_class = SUSearchDisplayController;
  [(UISearchDisplayController *)&v3 setNavigationBarHidingEnabled:?];
}

@end