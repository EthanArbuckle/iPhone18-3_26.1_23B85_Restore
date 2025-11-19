@interface SKUISearchBarController
- (SKUISearchBarController)initWithSearchBarViewElement:(id)a3;
- (UISearchBar)searchBar;
- (UIViewController)parentViewController;
- (id)_newSearchFieldController;
- (id)_searchFieldController;
- (void)_cancelGestureAction:(id)a3;
- (void)_customizeSearchBar:(id)a3;
- (void)_customizeSearchFieldController:(id)a3;
- (void)_dispatchChangeEventWithText:(id)a3;
- (void)_dispatchSubmitEventWithText:(id)a3 URL:(id)a4 searchHintOriginalTerm:(id)a5 searchHintIndex:(id)a6;
- (void)_removeCancelTouchGestureRecognizer;
- (void)dealloc;
- (void)reloadAfterDocumentUpdate;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchFieldController:(id)a3 requestSearch:(id)a4;
- (void)searchFieldController:(id)a3 searchBarDidChangeText:(id)a4;
- (void)setDisplaysSearchBarInNavigationBar:(BOOL)a3;
- (void)setSearchBarViewElement:(id)a3;
@end

@implementation SKUISearchBarController

- (SKUISearchBarController)initWithSearchBarViewElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISearchBarController initWithSearchBarViewElement:];
  }

  v11.receiver = self;
  v11.super_class = SKUISearchBarController;
  v6 = [(SKUISearchBarController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, a3);
    v8 = [(SKUISearchBarViewElement *)v7->_viewElement searchHintsURLString];
    v9 = [(SKUISearchBarViewElement *)v7->_viewElement trendingSearchURLString];
    if (v8 | v9)
    {
      v7->_usesSearchFieldController = 1;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = 40;
  if (self->_usesSearchFieldController)
  {
    v3 = 48;
  }

  [*(&self->super.isa + v3) setDelegate:0];
  [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer removeTarget:self action:0];
  v4.receiver = self;
  v4.super_class = SKUISearchBarController;
  [(SKUISearchBarController *)&v4 dealloc];
}

- (void)reloadAfterDocumentUpdate
{
  if (self->_searchFieldController)
  {
    [(SKUISearchBarController *)self _customizeSearchFieldController:?];
    v3 = [(SKUISearchFieldController *)self->_searchFieldController searchBar];
    [(SKUISearchBarController *)self _customizeSearchBar:v3];
  }
}

- (UISearchBar)searchBar
{
  if (!self->_searchBar)
  {
    if (self->_usesSearchFieldController)
    {
      v3 = [(SKUISearchBarController *)self _searchFieldController];
      v4 = [v3 searchBar];
      searchBar = self->_searchBar;
      self->_searchBar = v4;
    }

    else
    {
      v3 = [(SKUISearchBarController *)self _newSearchFieldController];
      v6 = [v3 searchBar];
      v7 = self->_searchBar;
      self->_searchBar = v6;

      [(UISearchBar *)self->_searchBar setDelegate:self];
    }
  }

  v8 = self->_searchBar;

  return v8;
}

- (void)setDisplaysSearchBarInNavigationBar:(BOOL)a3
{
  if (self->_displaysSearchBarInNavigationBar != a3)
  {
    self->_displaysSearchBarInNavigationBar = a3;
    [(SKUISearchFieldController *)self->_searchFieldController setDisplaysSearchBarInNavigationBar:?];
  }
}

- (void)setSearchBarViewElement:(id)a3
{
  v5 = a3;
  p_viewElement = &self->_viewElement;
  if (self->_viewElement != v5)
  {
    v7 = v5;
    objc_storeStrong(p_viewElement, a3);
    p_viewElement = [(SKUISearchBarController *)self reloadAfterDocumentUpdate];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_viewElement, v5);
}

- (void)searchFieldController:(id)a3 requestSearch:(id)a4
{
  v5 = a4;
  v6 = [v5 term];
  [SKUIIPadSearchController setLastSearchTerm:v6];

  v10 = [v5 term];
  v7 = [v5 URL];
  v8 = [v5 searchHintOriginalTerm];
  v9 = [v5 searchHintIndex];

  [(SKUISearchBarController *)self _dispatchSubmitEventWithText:v10 URL:v7 searchHintOriginalTerm:v8 searchHintIndex:v9];
}

- (void)searchFieldController:(id)a3 searchBarDidChangeText:(id)a4
{
  v5 = a4;
  [SKUIIPadSearchController setLastSearchTerm:v5];
  [(SKUISearchBarController *)self _dispatchChangeEventWithText:v5];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v11 = a3;
  cancelTouchGestureRecognizer = self->_cancelTouchGestureRecognizer;
  if (cancelTouchGestureRecognizer)
  {
    [(SKUIFocusedTouchGestureRecognizer *)cancelTouchGestureRecognizer removeTarget:self action:0];
    v5 = [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer view];
    [v5 removeGestureRecognizer:self->_cancelTouchGestureRecognizer];

    v6 = self->_cancelTouchGestureRecognizer;
    self->_cancelTouchGestureRecognizer = 0;
  }

  v7 = [SKUIFocusedTouchGestureRecognizer alloc];
  v8 = [(SKUIFocusedTouchGestureRecognizer *)v7 initWithFocusedView:v11 touchAllowance:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v9 = self->_cancelTouchGestureRecognizer;
  self->_cancelTouchGestureRecognizer = v8;

  [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer addTarget:self action:sel__cancelGestureAction_];
  v10 = [v11 window];
  [v10 addGestureRecognizer:self->_cancelTouchGestureRecognizer];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  [v4 resignFirstResponder];
  v5 = [v4 text];

  [(SKUISearchBarController *)self _dispatchSubmitEventWithText:v5 URL:0 searchHintOriginalTerm:0 searchHintIndex:0];
}

- (void)_cancelGestureAction:(id)a3
{
  if (self->_cancelTouchGestureRecognizer == a3)
  {
    [(UISearchBar *)self->_searchBar resignFirstResponder];

    [(SKUISearchBarController *)self _removeCancelTouchGestureRecognizer];
  }
}

- (void)_customizeSearchBar:(id)a3
{
  v10 = a3;
  v4 = [v10 searchField];
  v5 = [(SKUISearchBarViewElement *)self->_viewElement style];
  v6 = SKUIViewElementPlainColorWithStyle(v5, 0);

  if (v6)
  {
    [v4 setTextColor:v6];
  }

  if (([v10 isFirstResponder] & 1) == 0)
  {
    v7 = [(SKUISearchBarViewElement *)self->_viewElement defaultText];
    v8 = [v7 string];
    [v4 setText:v8];
  }

  v9 = [(SKUISearchBarViewElement *)self->_viewElement placeholderString];
  [v4 setPlaceholder:v9];
}

- (void)_customizeSearchFieldController:(id)a3
{
  viewElement = self->_viewElement;
  v5 = a3;
  v6 = [(SKUISearchBarViewElement *)viewElement accessoryText];
  [v5 setSearchBarAccessoryText:v6];

  v7 = [(SKUISearchBarViewElement *)self->_viewElement searchHintsURLString];
  [v5 setSearchHintsURLString:v7];

  v8 = [(SKUISearchBarViewElement *)self->_viewElement trendingSearchURLString];
  [v5 setTrendingSearchURLString:v8];
}

- (void)_dispatchChangeEventWithText:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithObjectsAndKeys:{v5, @"term", 0}];

  [(SKUISearchBarViewElement *)self->_viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v6 completionBlock:0];
}

- (void)_dispatchSubmitEventWithText:(id)a3 URL:(id)a4 searchHintOriginalTerm:(id)a5 searchHintIndex:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = v13;
  if (v16)
  {
    [v13 setObject:v16 forKey:@"term"];
  }

  if (v10)
  {
    v15 = [v10 absoluteString];
    [v14 setObject:v15 forKey:@"url"];
  }

  if (v11)
  {
    [v14 setObject:v11 forKey:@"searchHintOriginalTerm"];
  }

  if (v12)
  {
    [v14 setObject:v12 forKey:@"searchHintIndex"];
  }

  if ([v14 count])
  {
    [(SKUISearchBarViewElement *)self->_viewElement dispatchEventOfType:14 canBubble:1 isCancelable:1 extraInfo:v14 completionBlock:0];
  }
}

- (id)_newSearchFieldController
{
  v3 = [SKUISearchFieldController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v5 = [(SKUISearchFieldController *)v3 initWithContentsController:WeakRetained clientContext:self->_clientContext];

  [(SKUISearchBarController *)self _customizeSearchFieldController:v5];
  if (self->_displaysSearchBarInNavigationBar)
  {
    [(SKUISearchFieldController *)v5 setDisplaysSearchBarInNavigationBar:1];
  }

  if (self->_showsResultsForEmptyField)
  {
    [(SKUISearchFieldController *)v5 setShowsResultsForEmptyField:1];
  }

  v6 = [(SKUISearchFieldController *)v5 searchBar];
  [(SKUISearchBarController *)self _customizeSearchBar:v6];

  return v5;
}

- (void)_removeCancelTouchGestureRecognizer
{
  [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer removeTarget:self action:0];
  v3 = [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_cancelTouchGestureRecognizer];

  cancelTouchGestureRecognizer = self->_cancelTouchGestureRecognizer;
  self->_cancelTouchGestureRecognizer = 0;
}

- (id)_searchFieldController
{
  searchFieldController = self->_searchFieldController;
  if (!searchFieldController)
  {
    v4 = [(SKUISearchBarController *)self _newSearchFieldController];
    v5 = self->_searchFieldController;
    self->_searchFieldController = v4;

    [(SKUISearchFieldController *)self->_searchFieldController setDelegate:self];
    searchFieldController = self->_searchFieldController;
  }

  return searchFieldController;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)initWithSearchBarViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISearchBarController initWithSearchBarViewElement:]";
}

@end