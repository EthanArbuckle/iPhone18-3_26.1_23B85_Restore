@interface SKUISearchBarController
- (SKUISearchBarController)initWithSearchBarViewElement:(id)element;
- (UISearchBar)searchBar;
- (UIViewController)parentViewController;
- (id)_newSearchFieldController;
- (id)_searchFieldController;
- (void)_cancelGestureAction:(id)action;
- (void)_customizeSearchBar:(id)bar;
- (void)_customizeSearchFieldController:(id)controller;
- (void)_dispatchChangeEventWithText:(id)text;
- (void)_dispatchSubmitEventWithText:(id)text URL:(id)l searchHintOriginalTerm:(id)term searchHintIndex:(id)index;
- (void)_removeCancelTouchGestureRecognizer;
- (void)dealloc;
- (void)reloadAfterDocumentUpdate;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchFieldController:(id)controller requestSearch:(id)search;
- (void)searchFieldController:(id)controller searchBarDidChangeText:(id)text;
- (void)setDisplaysSearchBarInNavigationBar:(BOOL)bar;
- (void)setSearchBarViewElement:(id)element;
@end

@implementation SKUISearchBarController

- (SKUISearchBarController)initWithSearchBarViewElement:(id)element
{
  elementCopy = element;
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
    objc_storeStrong(&v6->_viewElement, element);
    searchHintsURLString = [(SKUISearchBarViewElement *)v7->_viewElement searchHintsURLString];
    trendingSearchURLString = [(SKUISearchBarViewElement *)v7->_viewElement trendingSearchURLString];
    if (searchHintsURLString | trendingSearchURLString)
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
    searchBar = [(SKUISearchFieldController *)self->_searchFieldController searchBar];
    [(SKUISearchBarController *)self _customizeSearchBar:searchBar];
  }
}

- (UISearchBar)searchBar
{
  if (!self->_searchBar)
  {
    if (self->_usesSearchFieldController)
    {
      _searchFieldController = [(SKUISearchBarController *)self _searchFieldController];
      searchBar = [_searchFieldController searchBar];
      searchBar = self->_searchBar;
      self->_searchBar = searchBar;
    }

    else
    {
      _searchFieldController = [(SKUISearchBarController *)self _newSearchFieldController];
      searchBar2 = [_searchFieldController searchBar];
      v7 = self->_searchBar;
      self->_searchBar = searchBar2;

      [(UISearchBar *)self->_searchBar setDelegate:self];
    }
  }

  v8 = self->_searchBar;

  return v8;
}

- (void)setDisplaysSearchBarInNavigationBar:(BOOL)bar
{
  if (self->_displaysSearchBarInNavigationBar != bar)
  {
    self->_displaysSearchBarInNavigationBar = bar;
    [(SKUISearchFieldController *)self->_searchFieldController setDisplaysSearchBarInNavigationBar:?];
  }
}

- (void)setSearchBarViewElement:(id)element
{
  elementCopy = element;
  p_viewElement = &self->_viewElement;
  if (self->_viewElement != elementCopy)
  {
    v7 = elementCopy;
    objc_storeStrong(p_viewElement, element);
    p_viewElement = [(SKUISearchBarController *)self reloadAfterDocumentUpdate];
    elementCopy = v7;
  }

  MEMORY[0x2821F96F8](p_viewElement, elementCopy);
}

- (void)searchFieldController:(id)controller requestSearch:(id)search
{
  searchCopy = search;
  term = [searchCopy term];
  [SKUIIPadSearchController setLastSearchTerm:term];

  term2 = [searchCopy term];
  v7 = [searchCopy URL];
  searchHintOriginalTerm = [searchCopy searchHintOriginalTerm];
  searchHintIndex = [searchCopy searchHintIndex];

  [(SKUISearchBarController *)self _dispatchSubmitEventWithText:term2 URL:v7 searchHintOriginalTerm:searchHintOriginalTerm searchHintIndex:searchHintIndex];
}

- (void)searchFieldController:(id)controller searchBarDidChangeText:(id)text
{
  textCopy = text;
  [SKUIIPadSearchController setLastSearchTerm:textCopy];
  [(SKUISearchBarController *)self _dispatchChangeEventWithText:textCopy];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  cancelTouchGestureRecognizer = self->_cancelTouchGestureRecognizer;
  if (cancelTouchGestureRecognizer)
  {
    [(SKUIFocusedTouchGestureRecognizer *)cancelTouchGestureRecognizer removeTarget:self action:0];
    view = [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer view];
    [view removeGestureRecognizer:self->_cancelTouchGestureRecognizer];

    v6 = self->_cancelTouchGestureRecognizer;
    self->_cancelTouchGestureRecognizer = 0;
  }

  v7 = [SKUIFocusedTouchGestureRecognizer alloc];
  v8 = [(SKUIFocusedTouchGestureRecognizer *)v7 initWithFocusedView:editingCopy touchAllowance:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v9 = self->_cancelTouchGestureRecognizer;
  self->_cancelTouchGestureRecognizer = v8;

  [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer addTarget:self action:sel__cancelGestureAction_];
  window = [editingCopy window];
  [window addGestureRecognizer:self->_cancelTouchGestureRecognizer];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy resignFirstResponder];
  text = [clickedCopy text];

  [(SKUISearchBarController *)self _dispatchSubmitEventWithText:text URL:0 searchHintOriginalTerm:0 searchHintIndex:0];
}

- (void)_cancelGestureAction:(id)action
{
  if (self->_cancelTouchGestureRecognizer == action)
  {
    [(UISearchBar *)self->_searchBar resignFirstResponder];

    [(SKUISearchBarController *)self _removeCancelTouchGestureRecognizer];
  }
}

- (void)_customizeSearchBar:(id)bar
{
  barCopy = bar;
  searchField = [barCopy searchField];
  style = [(SKUISearchBarViewElement *)self->_viewElement style];
  v6 = SKUIViewElementPlainColorWithStyle(style, 0);

  if (v6)
  {
    [searchField setTextColor:v6];
  }

  if (([barCopy isFirstResponder] & 1) == 0)
  {
    defaultText = [(SKUISearchBarViewElement *)self->_viewElement defaultText];
    string = [defaultText string];
    [searchField setText:string];
  }

  placeholderString = [(SKUISearchBarViewElement *)self->_viewElement placeholderString];
  [searchField setPlaceholder:placeholderString];
}

- (void)_customizeSearchFieldController:(id)controller
{
  viewElement = self->_viewElement;
  controllerCopy = controller;
  accessoryText = [(SKUISearchBarViewElement *)viewElement accessoryText];
  [controllerCopy setSearchBarAccessoryText:accessoryText];

  searchHintsURLString = [(SKUISearchBarViewElement *)self->_viewElement searchHintsURLString];
  [controllerCopy setSearchHintsURLString:searchHintsURLString];

  trendingSearchURLString = [(SKUISearchBarViewElement *)self->_viewElement trendingSearchURLString];
  [controllerCopy setTrendingSearchURLString:trendingSearchURLString];
}

- (void)_dispatchChangeEventWithText:(id)text
{
  v4 = MEMORY[0x277CBEAC0];
  textCopy = text;
  v6 = [[v4 alloc] initWithObjectsAndKeys:{textCopy, @"term", 0}];

  [(SKUISearchBarViewElement *)self->_viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v6 completionBlock:0];
}

- (void)_dispatchSubmitEventWithText:(id)text URL:(id)l searchHintOriginalTerm:(id)term searchHintIndex:(id)index
{
  textCopy = text;
  lCopy = l;
  termCopy = term;
  indexCopy = index;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = v13;
  if (textCopy)
  {
    [v13 setObject:textCopy forKey:@"term"];
  }

  if (lCopy)
  {
    absoluteString = [lCopy absoluteString];
    [v14 setObject:absoluteString forKey:@"url"];
  }

  if (termCopy)
  {
    [v14 setObject:termCopy forKey:@"searchHintOriginalTerm"];
  }

  if (indexCopy)
  {
    [v14 setObject:indexCopy forKey:@"searchHintIndex"];
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

  searchBar = [(SKUISearchFieldController *)v5 searchBar];
  [(SKUISearchBarController *)self _customizeSearchBar:searchBar];

  return v5;
}

- (void)_removeCancelTouchGestureRecognizer
{
  [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer removeTarget:self action:0];
  view = [(SKUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer view];
  [view removeGestureRecognizer:self->_cancelTouchGestureRecognizer];

  cancelTouchGestureRecognizer = self->_cancelTouchGestureRecognizer;
  self->_cancelTouchGestureRecognizer = 0;
}

- (id)_searchFieldController
{
  searchFieldController = self->_searchFieldController;
  if (!searchFieldController)
  {
    _newSearchFieldController = [(SKUISearchBarController *)self _newSearchFieldController];
    v5 = self->_searchFieldController;
    self->_searchFieldController = _newSearchFieldController;

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