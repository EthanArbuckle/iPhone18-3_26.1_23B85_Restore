@interface SUSearchFieldController
- (BOOL)_focusTransientViewController;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)searchBarShouldEndEditing:(id)editing;
- (SUSearchFieldController)initWithContentsController:(id)controller;
- (SUSearchFieldController)initWithContentsController:(id)controller clientInterface:(id)interface style:(int64_t)style;
- (SUSearchFieldController)initWithContentsController:(id)controller style:(int64_t)style;
- (UISearchBar)searchBar;
- (id)_cancelButtonView;
- (id)_defaultSearchTerm;
- (id)_newBlankStorePageViewController;
- (id)_newSearchBar;
- (id)_newSearchDisplayControllerWithContentsController:(id)controller;
- (id)_newTransientViewController;
- (id)_searchGroupForSearchKind:(id)kind;
- (id)_targetViewController;
- (id)newRequestPropertiesWithSearchTerm:(id)term kind:(id)kind;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_cancelCompletionsOperation;
- (void)_fetchCompletions;
- (void)_fetchResultsForTerm:(id)term URL:(id)l;
- (void)_fetchResultsForURLRequestProperties:(id)properties;
- (void)_reloadCompletionsForSearchString:(id)string;
- (void)_reloadSearchBar;
- (void)_resizeSearchBarForOrientation:(int64_t)orientation;
- (void)_saveSearchTermToDefaults:(id)defaults;
- (void)_savedSearchTermChangedNotification:(id)notification;
- (void)_sendOnXEventWithTerm:(id)term URL:(id)l completionBlock:(id)block;
- (void)_showDimmerView;
- (void)_tearDownDimmerView;
- (void)dealloc;
- (void)handleSearchURL:(id)l withSourceApplication:(id)application sourceURL:(id)rL;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)operationDidFinish:(id)finish;
- (void)scriptDidChangeTextForField:(id)field;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)searchBarWillRemoveFromSuperview:(id)superview;
- (void)setSearchFieldConfiguration:(id)configuration;
- (void)setSearchFieldStyle:(int64_t)style;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SUSearchFieldController

- (SUSearchFieldController)initWithContentsController:(id)controller
{
  v5 = +[SUClientDispatch clientInterface];

  return [(SUSearchFieldController *)self initWithContentsController:controller clientInterface:v5];
}

- (SUSearchFieldController)initWithContentsController:(id)controller style:(int64_t)style
{
  v7 = +[SUClientDispatch clientInterface];

  return [(SUSearchFieldController *)self initWithContentsController:controller clientInterface:v7 style:style];
}

- (SUSearchFieldController)initWithContentsController:(id)controller clientInterface:(id)interface style:(int64_t)style
{
  v12.receiver = self;
  v12.super_class = SUSearchFieldController;
  v8 = [(SUSearchFieldController *)&v12 init];
  if (v8)
  {
    v8->_clientInterface = interface;
    v8->_searchFieldStyle = style;
    v9 = objc_alloc_init(SUScriptTextFieldDelegate);
    v8->_textFieldDelegate = v9;
    [(SUScriptTextFieldDelegate *)v9 addDelegate:v8];
    v10 = [(SUSearchFieldController *)v8 _newSearchDisplayControllerWithContentsController:controller];
    v8->_searchController = v10;
    [(UISearchDisplayController *)v10 setDelegate:v8];
    [(UISearchDisplayController *)v8->_searchController setSearchResultsDataSource:v8];
    [(UISearchDisplayController *)v8->_searchController setSearchResultsDelegate:v8];
    -[UISearchDisplayController setSearchResultsTitle:](v8->_searchController, "setSearchResultsTitle:", [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SEARCH_SUGGESTIONS", &stru_1F41B3660, 0}]);
    [(UISearchBar *)[(SUSearchFieldController *)v8 searchBar] setDrawsBackground:0];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v8;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(SUSearchFieldController *)self _tearDownDimmerView];

  [(SUScriptTextFieldDelegate *)self->_textFieldDelegate removeDelegate:self];
  if (![(SUScriptTextFieldDelegate *)self->_textFieldDelegate numberOfDelegates]&& [(UISearchBar *)self->_searchBar delegate]== self->_textFieldDelegate)
  {
    [(UISearchBar *)self->_searchBar setDelegate:0];
  }

  [(UISearchDisplayController *)self->_searchController setDelegate:0];
  [(UISearchDisplayController *)self->_searchController setSearchResultsDataSource:0];
  [(UISearchDisplayController *)self->_searchController setSearchResultsDelegate:0];

  [(ISStoreURLOperation *)self->_completionsOperation setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUSearchFieldController;
  [(SUSearchFieldController *)&v3 dealloc];
}

- (void)handleSearchURL:(id)l withSourceApplication:(id)application sourceURL:(id)rL
{
  lCopy = l;
  v27 = *MEMORY[0x1E69E9840];
  v9 = [l copyQueryStringDictionaryWithUnescapedValues:1];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v19 = lCopy;
    applicationCopy = application;
    selfCopy = self;
    v12 = 0;
    v13 = 0;
    v14 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([v16 isEqualToString:{@"term", v19}] || objc_msgSend(v16, "rangeOfString:options:", @"term", 13) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [v9 objectForKey:v16];
        }

        else if (([v16 isEqualToString:@"kind"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"entity"))
        {
          v13 = [v9 objectForKey:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
    if (v12)
    {
      self = selfCopy;
      [(SUSearchDisplayController *)selfCopy->_searchController _noEventSetSearchFieldText:v12];
      lCopy = v19;
      application = applicationCopy;
      if (![v19 host])
      {
        v17 = [(SUSearchFieldController *)selfCopy newRequestPropertiesWithSearchTerm:v12 kind:v13];
        goto LABEL_21;
      }
    }

    else
    {
      lCopy = v19;
      application = applicationCopy;
      self = selfCopy;
      if (![v19 host])
      {
        goto LABEL_23;
      }
    }
  }

  else if (![lCopy host])
  {
    goto LABEL_23;
  }

  v17 = -[SUSearchFieldConfiguration URLRequestPropertiesWithBaseURL:forNetworkType:](self->_configuration, "URLRequestPropertiesWithBaseURL:forNetworkType:", lCopy, [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")]);
LABEL_21:
  v18 = v17;
  if (v17)
  {
    [v17 setValue:rL forHTTPHeaderField:@"referer"];
    [v18 setValue:application forHTTPHeaderField:@"ref-user-agent"];
    [(SUSearchFieldController *)self _fetchResultsForURLRequestProperties:v18];
  }

LABEL_23:
}

- (id)newRequestPropertiesWithSearchTerm:(id)term kind:(id)kind
{
  v7 = -[SUSearchFieldConfiguration searchURLRequestPropertiesForNetworkType:](self->_configuration, "searchURLRequestPropertiesForNetworkType:", [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")]);
  [v7 setValue:-[SUSearchFieldController _searchGroupForSearchKind:](self forRequestParameter:{"_searchGroupForSearchKind:", kind), @"group"}];
  [v7 setValue:term forRequestParameter:@"term"];
  v8 = v7;
  return v7;
}

- (UISearchBar)searchBar
{
  result = self->_searchBar;
  if (!result)
  {
    self->_searchBar = [(SUSearchFieldController *)self _newSearchBar];
    [(SUSearchFieldController *)self _reloadSearchBar];
    return self->_searchBar;
  }

  return result;
}

- (void)setSearchFieldConfiguration:(id)configuration
{
  configuration = self->_configuration;
  if (configuration != configuration)
  {

    self->_configuration = [configuration copy];

    [(SUSearchFieldController *)self _reloadSearchBar];
  }
}

- (void)setSearchFieldStyle:(int64_t)style
{
  if (self->_searchFieldStyle != style)
  {
    searchContentsController = [(UISearchDisplayController *)self->_searchController searchContentsController];
    self->_searchFieldStyle = style;
    [(UISearchDisplayController *)self->_searchController setDelegate:0];
    [(UISearchDisplayController *)self->_searchController setSearchResultsDataSource:self];
    [(UISearchDisplayController *)self->_searchController setSearchResultsDelegate:self];

    v6 = [(SUSearchFieldController *)self _newSearchDisplayControllerWithContentsController:searchContentsController];
    self->_searchController = v6;
    [(UISearchDisplayController *)v6 setDelegate:self];
    [(UISearchDisplayController *)self->_searchController setSearchResultsDataSource:self];
    [(UISearchDisplayController *)self->_searchController setSearchResultsDelegate:self];
    [(SUSearchFieldController *)self _reloadSearchBar];
  }
}

- (void)operation:(id)operation failedWithError:(id)error
{
  [(ISStoreURLOperation *)self->_completionsOperation setDelegate:0, error];

  self->_completionsOperation = 0;
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  self->_completions = [output completionItems];
  searchResultsTableView = [(UISearchDisplayController *)self->_searchController searchResultsTableView];

  [(UITableView *)searchResultsTableView reloadData];
}

- (void)operationDidFinish:(id)finish
{
  [(ISStoreURLOperation *)self->_completionsOperation setDelegate:0];

  self->_completionsOperation = 0;
}

- (void)scriptDidChangeTextForField:(id)field
{
  text = [(UISearchBar *)self->_searchBar text];

  [(SUSearchFieldController *)self _saveSearchTermToDefaults:text];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = [(UISearchDisplayController *)self->_searchController searchContentsController:bar];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] sendAction:sel_iTunesStoreUI_searchFieldControllerDidChange_ to:v5 from:bar forEvent:0];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  text = [clicked text];
  [(SUSearchDisplayController *)self->_searchController _noEventSetSearchFieldText:text];
  [(SUSearchDisplayController *)self->_searchController setActive:0 animated:1];
  [(SUSearchFieldController *)self _saveSearchTermToDefaults:text];
  if ([text length])
  {

    [(SUSearchFieldController *)self _fetchResultsForTerm:text URL:0];
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  if ([objc_msgSend(MEMORY[0x1E69DC938] currentDevice] == 1)
  {
    if ([(NSString *)[(UISearchBar *)self->_searchBar text] length]&& [(SUSearchFieldController *)self _focusTransientViewController])
    {
      return 0;
    }

    [(SUSearchFieldController *)self _showDimmerView];
  }

  return 1;
}

- (BOOL)searchBarShouldEndEditing:(id)editing
{
  if (self->_dimmerView)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__SUSearchFieldController_searchBarShouldEndEditing___block_invoke;
    v6[3] = &unk_1E8164348;
    v6[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__SUSearchFieldController_searchBarShouldEndEditing___block_invoke_2;
    v5[3] = &unk_1E8164B70;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v6 options:v5 animations:0.3 completion:0.0];
  }

  [(SUSearchFieldController *)self _cancelCompletionsOperation];
  return 1;
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  text = [(UISearchBar *)self->_searchBar text];

  [(SUSearchFieldController *)self _saveSearchTermToDefaults:text];
}

- (void)searchBarWillRemoveFromSuperview:(id)superview
{
  hasLoadedSearchResultsTableView = self->_hasLoadedSearchResultsTableView;
  searchController = self->_searchController;
  if (!hasLoadedSearchResultsTableView)
  {
    if (![(UISearchDisplayController *)searchController isActive])
    {
      return;
    }

LABEL_6:
    if (![(UISearchBar *)self->_searchBar isFirstResponder])
    {
      return;
    }

    goto LABEL_7;
  }

  window = [(UITableView *)[(UISearchDisplayController *)searchController searchResultsTableView] window];
  if (![(UISearchDisplayController *)self->_searchController isActive])
  {
    return;
  }

  if (!window)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = self->_searchController;

  [(SUSearchDisplayController *)v7 setActive:0 animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [view dequeueReusableCellWithIdentifier:@"a"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"a"];
  }

  v7 = -[NSArray objectAtIndex:](self->_completions, "objectAtIndex:", [path row]);
  alternateTitle = [v7 alternateTitle];
  if (![alternateTitle length])
  {
    alternateTitle = [v7 title];
  }

  [objc_msgSend(v6 "textLabel")];
  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = -[NSArray objectAtIndex:](self->_completions, "objectAtIndex:", [path row]);
  title = [v5 title];
  [(SUSearchDisplayController *)self->_searchController _noEventSetSearchFieldText:title];
  [(SUSearchDisplayController *)self->_searchController setActive:0 animated:1];
  [(SUSearchFieldController *)self _saveSearchTermToDefaults:title];
  v7 = [v5 URL];

  [(SUSearchFieldController *)self _fetchResultsForTerm:title URL:v7];
}

- (void)_savedSearchTermChangedNotification:(id)notification
{
  if ([objc_msgSend(objc_msgSend(objc_msgSend(notification "object")])
  {
    searchController = self->_searchController;
    _defaultSearchTerm = [(SUSearchFieldController *)self _defaultSearchTerm];

    [(SUSearchDisplayController *)searchController _noEventSetSearchFieldText:_defaultSearchTerm];
  }
}

- (id)_cancelButtonView
{
  searchContentsController = [(UISearchDisplayController *)self->_searchController searchContentsController];
  if (!searchContentsController)
  {
    return 0;
  }

  navigationItem = [(UIViewController *)searchContentsController navigationItem];
  if (sel_isEqual(sel_cancelTransientViewController_, [(UIBarButtonItem *)[(UINavigationItem *)navigationItem leftBarButtonItem] action]))
  {

    return [(UINavigationItem *)navigationItem customLeftView];
  }

  if (!sel_isEqual(sel_cancelTransientViewController_, [(UIBarButtonItem *)[(UINavigationItem *)navigationItem rightBarButtonItem] action]))
  {
    return 0;
  }

  return [(UINavigationItem *)navigationItem customRightView];
}

- (void)_cancelCompletionsOperation
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__fetchCompletions object:0];
  [(ISStoreURLOperation *)self->_completionsOperation setDelegate:0];
  [(ISStoreURLOperation *)self->_completionsOperation cancel];

  self->_completionsOperation = 0;
}

- (id)_defaultSearchTerm
{
  result = [(SUSearchFieldConfiguration *)self->_configuration userDefaultsKey];
  if (result)
  {
    v3 = result;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

    return [standardUserDefaults objectForKey:v3];
  }

  return result;
}

- (void)_fetchCompletions
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  text = [(UISearchBar *)[(SUSearchFieldController *)self searchBar] text];
  if ([(NSString *)text length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69E47E0]);
    self->_completionsOperation = v4;
    [(ISStoreURLOperation *)v4 setDataProvider:+[(ISDataProvider *)SUCompletionDataProvider]];
    [(ISStoreURLOperation *)self->_completionsOperation setDelegate:self];
    [(ISStoreURLOperation *)self->_completionsOperation setShouldMessageMainThread:1];
    v5 = -[SUSearchFieldConfiguration hintsURLRequestPropertiesForNetworkType:](self->_configuration, "hintsURLRequestPropertiesForNetworkType:", [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")]);
    [v5 setValue:text forRequestParameter:@"q"];
    [(ISStoreURLOperation *)self->_completionsOperation setRequestProperties:v5];
    mainQueue = [MEMORY[0x1E69E4798] mainQueue];
    completionsOperation = self->_completionsOperation;

    [mainQueue addOperation:completionsOperation];
  }
}

- (void)_fetchResultsForTerm:(id)term URL:(id)l
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SUSearchFieldController__fetchResultsForTerm_URL___block_invoke;
  v4[3] = &unk_1E8166438;
  v4[4] = l;
  v4[5] = self;
  v4[6] = term;
  [(SUSearchFieldController *)self _sendOnXEventWithTerm:term URL:l completionBlock:v4];
}

void __52__SUSearchFieldController__fetchResultsForTerm_URL___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v5)
    {
      v6 = [v4[4] URLRequestPropertiesWithBaseURL:v5 forNetworkType:{objc_msgSend(objc_msgSend(MEMORY[0x1E69E4778], "sharedInstance"), "networkType")}];
    }

    else
    {
      v6 = [v4 newRequestPropertiesWithSearchTerm:*(a1 + 48)];
    }

    v7 = v6;
    [*(a1 + 40) _fetchResultsForURLRequestProperties:v6];
  }
}

- (void)_fetchResultsForURLRequestProperties:(id)properties
{
  _targetViewController = [(SUSearchFieldController *)self _targetViewController];
  if (!_targetViewController)
  {
    [(SUSearchFieldController *)a2 _fetchResultsForURLRequestProperties:?];
  }

  [_targetViewController reloadWithURLRequestProperties:properties];
}

- (BOOL)_focusTransientViewController
{
  tabBarController = [(UIViewController *)[(UISearchDisplayController *)self->_searchController searchContentsController] tabBarController];
  if (!__SharedTransientViewController)
  {
    goto LABEL_6;
  }

  v4 = tabBarController;
  transientViewController = [(UITabBarController *)tabBarController transientViewController];
  if (transientViewController == __SharedTransientViewController)
  {
    goto LABEL_6;
  }

  topViewController = [__SharedTransientViewController topViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  searchFieldController = [topViewController searchFieldController];
  if (searchFieldController)
  {
    if ([objc_msgSend(searchFieldController "searchFieldConfiguration")] == 2)
    {
LABEL_6:
      LOBYTE(searchFieldController) = 0;
      return searchFieldController;
    }

    selfCopy = self;
    [(UITabBarController *)v4 setTransientViewController:__SharedTransientViewController animated:0];
    LOBYTE(searchFieldController) = 1;
  }

  return searchFieldController;
}

- (id)_newBlankStorePageViewController
{
  v3 = [(SUViewController *)[SUSearchRootStorePageViewController alloc] initWithSection:[(UIViewController *)[(UISearchDisplayController *)self->_searchController searchContentsController] section]];
  [(SUViewController *)v3 setClientInterface:self->_clientInterface];
  return v3;
}

- (id)_newSearchBar
{
  v3 = [SUSearchBar alloc];
  v4 = [(SUSearchBar *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(SUSearchBar *)v4 setAutocapitalizationType:0];
  [(SUSearchBar *)v4 setAutocorrectionType:1];
  [(SUSearchBar *)v4 setDelegate:self->_textFieldDelegate];
  return v4;
}

- (id)_newSearchDisplayControllerWithContentsController:(id)controller
{
  v4 = [(UISearchDisplayController *)[SUSearchDisplayController alloc] initWithSearchBar:[(SUSearchFieldController *)self searchBar] contentsController:controller];
  [(UISearchDisplayController *)v4 _setAllowDisablingNavigationBarHiding:1];
  [(UISearchDisplayController *)v4 setAutomaticallyShowsNoResultsMessage:0];
  [(UISearchDisplayController *)v4 setDimTableViewOnEmptySearchString:1];
  if (self->_searchFieldStyle)
  {
    [(SUSearchDisplayController *)v4 setNavigationBarHidingEnabled:1];
    [(UISearchDisplayController *)v4 _setCancelButtonManagementDisabled:0];
  }

  else
  {
    [(SUSearchDisplayController *)v4 setNavigationBarHidingEnabled:0];
    [(UISearchDisplayController *)v4 _setCancelButtonManagementDisabled:1];
    if (![objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
    {
      [(UISearchDisplayController *)v4 setDisplaysSearchBarInNavigationBar:1];
      [(UINavigationItem *)[(UISearchDisplayController *)v4 navigationItem] setRightBarButtonItem:0];
    }
  }

  return v4;
}

- (id)_newTransientViewController
{
  section = [(UIViewController *)[(UISearchDisplayController *)self->_searchController searchContentsController] section];
  _newBlankStorePageViewController = [(SUSearchFieldController *)self _newBlankStorePageViewController];
  v5 = [[SUNavigationController alloc] initWithSection:section rootViewController:_newBlankStorePageViewController];
  -[SUNavigationController setClientInterface:](v5, "setClientInterface:", [_newBlankStorePageViewController clientInterface]);

  return v5;
}

- (void)_reloadCompletionsForSearchString:(id)string
{
  [(SUSearchFieldController *)self _cancelCompletionsOperation];
  if ([string length])
  {

    [(SUSearchFieldController *)self performSelector:sel__fetchCompletions withObject:0 afterDelay:0.3];
  }

  else
  {

    self->_completions = 0;
  }
}

- (void)_reloadSearchBar
{
  [(SUSearchFieldController *)self _resizeSearchBarForOrientation:[(UIViewController *)[(UISearchDisplayController *)self->_searchController searchContentsController] interfaceOrientation]];
  if (![(NSString *)[(UISearchBar *)self->_searchBar text] length])
  {
    [(SUSearchDisplayController *)self->_searchController _noEventSetSearchFieldText:[(SUSearchFieldController *)self _defaultSearchTerm]];
  }

  v3 = _UIApplicationUsesLegacyUI();
  searchField = [(UISearchBar *)self->_searchBar searchField];
  if (v3)
  {
    if (self->_searchFieldStyle)
    {
      [(UISearchBar *)self->_searchBar setSearchFieldBackgroundImage:0 forState:0];
      [(UISearchBar *)self->_searchBar setSearchFieldBackgroundImage:0 forState:2];
      [(UISearchBar *)self->_searchBar setImage:0 forSearchBarIcon:1 state:0];
      [(UISearchBar *)self->_searchBar setImage:0 forSearchBarIcon:0 state:0];
      [(UISearchBar *)self->_searchBar setPositionAdjustment:1 forSearchBarIcon:0.0, 1.0];
      [searchField setShadowColor:0];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      -[UISearchBar setSearchFieldBackgroundImage:forState:](self->_searchBar, "setSearchFieldBackgroundImage:forState:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UISearch" inBundle:{v8), "resizableImageWithCapInsets:", 0.0, 16.0, 0.0, 16.0}], 0);
      -[UISearchBar setSearchFieldBackgroundImage:forState:](self->_searchBar, "setSearchFieldBackgroundImage:forState:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UISearchInactive" inBundle:{v8), "resizableImageWithCapInsets:", 0.0, 16.0, 0.0, 16.0}], 2);
      -[UISearchBar setImage:forSearchBarIcon:state:](self->_searchBar, "setImage:forSearchBarIcon:state:", [MEMORY[0x1E69DCAB8] imageNamed:@"UISearchBarClear" inBundle:v8], 1, 0);
      -[UISearchBar setImage:forSearchBarIcon:state:](self->_searchBar, "setImage:forSearchBarIcon:state:", [MEMORY[0x1E69DCAB8] imageNamed:@"UISearchBarClearPressed" inBundle:v8], 1, 1);
      [(UISearchBar *)self->_searchBar setPositionAdjustment:1 forSearchBarIcon:0.0, -1.0];
      -[UISearchBar setImage:forSearchBarIcon:state:](self->_searchBar, "setImage:forSearchBarIcon:state:", [MEMORY[0x1E69DCAB8] imageNamed:@"UISearchBarResultsList" inBundle:v8], 3, 0);
      -[UISearchBar setImage:forSearchBarIcon:state:](self->_searchBar, "setImage:forSearchBarIcon:state:", [MEMORY[0x1E69DCAB8] imageNamed:@"UISearchBarResultsListPressed" inBundle:v8], 3, 1);
      -[UISearchBar setImage:forSearchBarIcon:state:](self->_searchBar, "setImage:forSearchBarIcon:state:", [MEMORY[0x1E69DCAB8] imageNamed:@"UISearchBarSearch" inBundle:v8], 0, 0);
      [searchField setShadowColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.08, 1.0)}];
      [searchField setShadowOffset:{0.0, -1.0}];
      blackColor = [MEMORY[0x1E69DC888] colorWithWhite:0.73 alpha:1.0];
    }

    [searchField setTextColor:blackColor];
  }

  else
  {
    [searchField setFont:{objc_msgSend(MEMORY[0x1E69DB878], "systemFontOfSize:", 14.0)}];
    searchBar = self->_searchBar;
    if (self->_searchFieldStyle)
    {
      if (([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 2;
    }

    [(UISearchBar *)searchBar setSearchBarStyle:v7];
  }

  [(UISearchBar *)self->_searchBar setPlaceholder:[(SUSearchFieldConfiguration *)self->_configuration placeholderString]];
  v9 = self->_searchBar;
  v10 = self->_searchFieldStyle != 0;

  [(UISearchBar *)v9 setDrawsBackground:v10];
}

- (void)_resizeSearchBarForOrientation:(int64_t)orientation
{
  [(SUSearchFieldConfiguration *)self->_configuration widthForOrientation:?];
  v6 = v5;
  if (v5 < 0.00000011920929)
  {
    [+[SUSearchFieldConfiguration defaultConfigurationWithClientInterface:](SUSearchFieldConfiguration defaultConfigurationWithClientInterface:{self->_clientInterface), "widthForOrientation:", orientation}];
    v6 = v7;
  }

  [(UISearchBar *)self->_searchBar frame];
  v9 = v8;
  v11 = v10;
  [(UISearchBar *)self->_searchBar sizeThatFits:v6, 0.0];
  [(UISearchBar *)self->_searchBar setFrame:v9, v11, v12, v13];
  superview = [(UISearchBar *)self->_searchBar superview];

  [superview setNeedsLayout];
}

- (void)_saveSearchTermToDefaults:(id)defaults
{
  userDefaultsKey = [(SUSearchFieldConfiguration *)self->_configuration userDefaultsKey];
  if (userDefaultsKey)
  {
    v6 = userDefaultsKey;
    v7 = [defaults length];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    if (v7)
    {
      [standardUserDefaults setObject:defaults forKey:v6];
    }

    else
    {
      [standardUserDefaults removeObjectForKey:v6];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUSearchFieldControllerSavedSearchTermNotification" object:self];
  }
}

- (id)_searchGroupForSearchKind:(id)kind
{
  if ([kind isEqualToString:@"epubBook"] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"metaEbook") & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"ibook") & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"ibookTextbook"))
  {
    return @"ebook";
  }

  if ([kind isEqualToString:@"book"])
  {
    return @"audiobook";
  }

  if ([kind isEqualToString:@"iMix"] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"itunesMix") & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"mix") & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"preorderAlbum"))
  {
    return @"album";
  }

  if ([kind isEqualToString:@"shortFilm"])
  {
    return @"movie";
  }

  if ([kind isEqualToString:@"tvEpisode"])
  {
    return @"tvSeason";
  }

  if ([kind isEqualToString:@"podcastEpisode"])
  {
    return @"podcast";
  }

  if ([kind isEqualToString:@"tone"])
  {
    return @"ringtone";
  }

  if ([kind isEqualToString:@"course"])
  {
    return @"iTunesUCourse";
  }

  return kind;
}

- (void)_sendOnXEventWithTerm:(id)term URL:(id)l completionBlock:(id)block
{
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{@"search", @"type", 0}];
  v10 = v9;
  if (term)
  {
    [v9 setObject:term forKey:@"term"];
  }

  if (l)
  {
    [v10 setObject:objc_msgSend(l forKey:{"absoluteString"), @"url"}];
  }

  clientInterface = self->_clientInterface;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SUSearchFieldController__sendOnXEventWithTerm_URL_completionBlock___block_invoke;
  v12[3] = &unk_1E8164A48;
  v12[4] = block;
  [(SUClientInterface *)clientInterface _dispatchXEvent:v10 withCompletionBlock:v12];
}

void __69__SUSearchFieldController__sendOnXEventWithTerm_URL_completionBlock___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__SUSearchFieldController__sendOnXEventWithTerm_URL_completionBlock___block_invoke_2;
  v2[3] = &unk_1E8166460;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (void)_showDimmerView
{
  if (_UIApplicationUsesLegacyUI())
  {
    dimmerView = self->_dimmerView;
    if (!dimmerView)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DC8F0]);
      self->_dimmerView = v4;
      [(UIControl *)v4 setAutoresizingMask:18];
      -[UIControl setBackgroundColor:](self->_dimmerView, "setBackgroundColor:", [MEMORY[0x1E69DC888] blackColor]);
      [(UIControl *)self->_dimmerView addTarget:self action:sel__dimmerViewAction_ forControlEvents:64];
      dimmerView = self->_dimmerView;
    }

    if (![(UIControl *)dimmerView superview])
    {
      searchContentsController = [(UISearchDisplayController *)self->_searchController searchContentsController];
      [(UIControl *)self->_dimmerView setAlpha:0.0];
      parentViewController = [(UIViewController *)searchContentsController parentViewController];
      if (parentViewController)
      {
        view = [(UIViewController *)parentViewController view];
        view2 = [(UIViewController *)searchContentsController view];
        [(UIView *)view2 frame];
        [(UIView *)view convertRect:[(UIView *)view2 superview] fromView:v9, v10, v11, v12];
      }

      else
      {
        view = [(UIViewController *)searchContentsController view];
        [(UIView *)view bounds];
      }

      [(UIControl *)self->_dimmerView setFrame:?];
      [(UIView *)view addSubview:self->_dimmerView];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __42__SUSearchFieldController__showDimmerView__block_invoke;
      v13[3] = &unk_1E8164348;
      v13[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v13 options:&__block_literal_global_11 animations:0.3 completion:0.0];
    }
  }
}

uint64_t __42__SUSearchFieldController__showDimmerView__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  UIInterfaceGetContentDisabledAlpha();

  return [v1 setAlpha:?];
}

- (id)_targetViewController
{
  searchContentsController = [(UISearchDisplayController *)self->_searchController searchContentsController];
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    if (__SharedTransientViewController)
    {
      _newBlankStorePageViewController = [(SUSearchFieldController *)self _newBlankStorePageViewController];
      [__SharedTransientViewController setViewControllers:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", _newBlankStorePageViewController, 0)}];

      _newTransientViewController = __SharedTransientViewController;
    }

    else
    {
      _newTransientViewController = [(SUSearchFieldController *)self _newTransientViewController];
      __SharedTransientViewController = _newTransientViewController;
    }

    topViewController = [_newTransientViewController topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topViewController = [topViewController embeddedViewController];
    }

    selfCopy = self;
    tabBarController = [(UIViewController *)searchContentsController tabBarController];
    [(UITabBarController *)tabBarController setTransientViewController:__SharedTransientViewController animated:0];
    return topViewController;
  }

  return searchContentsController;
}

- (void)_tearDownDimmerView
{
  [(UIControl *)self->_dimmerView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(UIControl *)self->_dimmerView removeFromSuperview];

  self->_dimmerView = 0;
}

- (uint64_t)_fetchResultsForURLRequestProperties:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUSearchFieldController.m" lineNumber:493 description:@"Must have a target view controller"];
}

@end