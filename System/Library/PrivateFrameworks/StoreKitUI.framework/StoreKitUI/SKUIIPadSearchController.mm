@interface SKUIIPadSearchController
+ (void)setLastSearchTerm:(id)a3;
- (SKUIIPadSearchController)initWithParentViewController:(id)a3;
- (UIViewController)parentViewController;
- (id)_searchFieldController;
- (id)newSearchFieldBarItem;
- (void)_termDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)reloadSearchField;
- (void)searchFieldController:(id)a3 requestSearch:(id)a4;
- (void)setClientContext:(id)a3;
- (void)setNumberOfSearchResults:(int64_t)a3;
- (void)setSearchFieldPlaceholderText:(id)a3;
@end

@implementation SKUIIPadSearchController

- (SKUIIPadSearchController)initWithParentViewController:(id)a3
{
  objc_initWeak(&location, a3);
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

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel__termDidChangeNotification_ name:@"SKUIIPadSearchControllerTermDidChangeNotification" object:0];
  }

  objc_destroyWeak(&location);
  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SKUIIPadSearchControllerTermDidChangeNotification" object:0];
  [(SKUISearchFieldController *)self->_searchFieldController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIIPadSearchController;
  [(SKUIIPadSearchController *)&v4 dealloc];
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  p_clientContext = &self->_clientContext;
  if (self->_clientContext != v5)
  {
    v7 = v5;
    objc_storeStrong(p_clientContext, a3);
    p_clientContext = [(SKUISearchFieldController *)self->_searchFieldController setClientContext:self->_clientContext];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_clientContext, v5);
}

- (void)setSearchFieldPlaceholderText:(id)a3
{
  v4 = a3;
  v5 = [(SKUIIPadSearchController *)self _searchFieldController];
  v6 = [v5 searchBar];

  [v6 setPlaceholder:v4];
}

- (id)newSearchFieldBarItem
{
  v2 = [(SKUIIPadSearchController *)self _searchFieldController];
  v3 = [v2 searchBar];

  [v3 sizeToFit];
  [v3 frame];
  [v3 setFrame:?];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v3];

  return v4;
}

- (void)reloadSearchField
{
  v3 = [objc_opt_class() lastSearchTerm];
  [(SKUIIPadSearchController *)self setSearchFieldText:v3];
}

- (void)setNumberOfSearchResults:(int64_t)a3
{
  v4 = [(SKUIIPadSearchController *)self _searchFieldController];
  [v4 setNumberOfSearchResults:a3];
}

+ (void)setLastSearchTerm:(id)a3
{
  v3 = [a3 copy];
  v4 = _LastSearchTerm;
  _LastSearchTerm = v3;

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)searchFieldController:(id)a3 requestSearch:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = objc_opt_class();
    v7 = [v5 term];
    [v6 setLastSearchTerm:v7];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"SKUIIPadSearchControllerTermDidChangeNotification" object:self];

    v9 = [v5 term];
    v10 = [v5 URL];

    v11 = [v10 absoluteString];
    v13 = SKUIXEventSearchDictionary(v9, v11);

    v12 = [(SKUIIPadSearchController *)self clientContext];
    [v12 sendOnXEventWithDictionary:v13 completionBlock:0];
  }
}

- (void)_termDidChangeNotification:(id)a3
{
  v4 = [a3 object];

  if (v4 != self)
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
    v5 = [(SKUIIPadSearchController *)self parentViewController];
    v6 = [(SKUISearchFieldController *)v4 initWithContentsController:v5 clientContext:self->_clientContext];
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