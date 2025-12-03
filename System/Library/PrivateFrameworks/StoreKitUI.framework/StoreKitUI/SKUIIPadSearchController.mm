@interface SKUIIPadSearchController
+ (void)setLastSearchTerm:(id)term;
- (SKUIIPadSearchController)initWithParentViewController:(id)controller;
- (UIViewController)parentViewController;
- (id)_searchFieldController;
- (id)newSearchFieldBarItem;
- (void)_termDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)reloadSearchField;
- (void)searchFieldController:(id)controller requestSearch:(id)search;
- (void)setClientContext:(id)context;
- (void)setNumberOfSearchResults:(int64_t)results;
- (void)setSearchFieldPlaceholderText:(id)text;
@end

@implementation SKUIIPadSearchController

- (SKUIIPadSearchController)initWithParentViewController:(id)controller
{
  objc_initWeak(&location, controller);
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPadSearchController initWithParentViewController:];
  }

  v8.receiver = self;
  v8.super_class = SKUIIPadSearchController;
  v4 = [(SKUIIPadSearchController *)&v8 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_parentViewController, v5);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__termDidChangeNotification_ name:@"SKUIIPadSearchControllerTermDidChangeNotification" object:0];
  }

  objc_destroyWeak(&location);
  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SKUIIPadSearchControllerTermDidChangeNotification" object:0];
  [(SKUISearchFieldController *)self->_searchFieldController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIIPadSearchController;
  [(SKUIIPadSearchController *)&v4 dealloc];
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  p_clientContext = &self->_clientContext;
  if (self->_clientContext != contextCopy)
  {
    v7 = contextCopy;
    objc_storeStrong(p_clientContext, context);
    p_clientContext = [(SKUISearchFieldController *)self->_searchFieldController setClientContext:self->_clientContext];
    contextCopy = v7;
  }

  MEMORY[0x2821F96F8](p_clientContext, contextCopy);
}

- (void)setSearchFieldPlaceholderText:(id)text
{
  textCopy = text;
  _searchFieldController = [(SKUIIPadSearchController *)self _searchFieldController];
  searchBar = [_searchFieldController searchBar];

  [searchBar setPlaceholder:textCopy];
}

- (id)newSearchFieldBarItem
{
  _searchFieldController = [(SKUIIPadSearchController *)self _searchFieldController];
  searchBar = [_searchFieldController searchBar];

  [searchBar sizeToFit];
  [searchBar frame];
  [searchBar setFrame:?];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:searchBar];

  return v4;
}

- (void)reloadSearchField
{
  lastSearchTerm = [objc_opt_class() lastSearchTerm];
  [(SKUIIPadSearchController *)self setSearchFieldText:lastSearchTerm];
}

- (void)setNumberOfSearchResults:(int64_t)results
{
  _searchFieldController = [(SKUIIPadSearchController *)self _searchFieldController];
  [_searchFieldController setNumberOfSearchResults:results];
}

+ (void)setLastSearchTerm:(id)term
{
  v3 = [term copy];
  v4 = _LastSearchTerm;
  _LastSearchTerm = v3;

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)searchFieldController:(id)controller requestSearch:(id)search
{
  if (search)
  {
    searchCopy = search;
    v6 = objc_opt_class();
    term = [searchCopy term];
    [v6 setLastSearchTerm:term];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SKUIIPadSearchControllerTermDidChangeNotification" object:self];

    term2 = [searchCopy term];
    v10 = [searchCopy URL];

    absoluteString = [v10 absoluteString];
    v13 = SKUIXEventSearchDictionary(term2, absoluteString);

    clientContext = [(SKUIIPadSearchController *)self clientContext];
    [clientContext sendOnXEventWithDictionary:v13 completionBlock:0];
  }
}

- (void)_termDidChangeNotification:(id)notification
{
  object = [notification object];

  if (object != self)
  {

    [(SKUIIPadSearchController *)self reloadSearchField];
  }
}

- (id)_searchFieldController
{
  searchFieldController = self->_searchFieldController;
  if (!searchFieldController)
  {
    v4 = [SKUISearchFieldController alloc];
    parentViewController = [(SKUIIPadSearchController *)self parentViewController];
    v6 = [(SKUISearchFieldController *)v4 initWithContentsController:parentViewController clientContext:self->_clientContext];
    v7 = self->_searchFieldController;
    self->_searchFieldController = v6;

    [(SKUISearchFieldController *)self->_searchFieldController setDelegate:self];
    [(SKUISearchFieldController *)self->_searchFieldController setShowsResultsForEmptyField:1];
    [(SKUIIPadSearchController *)self reloadSearchField];
    searchFieldController = self->_searchFieldController;
  }

  return searchFieldController;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)initWithParentViewController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPadSearchController initWithParentViewController:]";
}

@end