@interface SKUISearchFieldController
- (BOOL)_presentsInPopover:(id)popover;
- (BOOL)canBecomeActive;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)searchBarShouldClear:(id)clear;
- (SKUISearchFieldController)initWithContentsController:(id)controller;
- (SKUISearchFieldController)initWithContentsController:(id)controller clientContext:(id)context;
- (SKUISearchFieldDelegate)delegate;
- (UIViewController)contentsController;
- (id)URLForTrendingSearchPageView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_adjustInsetsForResultsTableView:(id)view;
- (void)_loadResultsForSearchRequest:(id)request;
- (void)_reloadData;
- (void)_reloadTrendingVisibility;
- (void)_setResponse:(id)response error:(id)error;
- (void)becomeActive;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentSearchController:(id)controller;
- (void)resignActive:(BOOL)active;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchControllerWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)setClientContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)setNumberOfSearchResults:(int64_t)results;
- (void)setSearchBarAccessoryText:(id)text;
- (void)setSearchTerm:(id)term;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)trendingSearchPageView:(id)view didSelectSearch:(id)search;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation SKUISearchFieldController

- (SKUISearchFieldController)initWithContentsController:(id)controller clientContext:(id)context
{
  objc_initWeak(&location, controller);
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISearchFieldController initWithContentsController:clientContext:];
  }

  v34.receiver = self;
  v34.super_class = SKUISearchFieldController;
  v7 = [(SKUISearchFieldController *)&v34 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v8;

    v10 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_contentsController, v10);

    v11 = [SKUISearchFieldTableView alloc];
    v12 = [(SKUISearchFieldTableView *)v11 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(SKUISearchFieldTableView *)v12 setTrendingSearchDelegate:v7];
    trendingSearchProvider = [contextCopy trendingSearchProvider];
    [(SKUISearchFieldTableView *)v12 setTrendingSearchProvider:trendingSearchProvider];

    v14 = [(SKUISearchFieldController *)v7 _presentsInPopover:contextCopy];
    v15 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:0];
    searchResultsController = v7->_searchResultsController;
    v7->_searchResultsController = v15;

    [(UITableViewController *)v7->_searchResultsController setTableView:v12];
    tableView = [(UITableViewController *)v7->_searchResultsController tableView];
    [tableView setDataSource:v7];

    tableView2 = [(UITableViewController *)v7->_searchResultsController tableView];
    [tableView2 setDelegate:v7];

    tableView3 = [(UITableViewController *)v7->_searchResultsController tableView];
    if (v14)
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] _systemBackgroundColor];
    }
    v20 = ;
    [tableView3 setBackgroundColor:v20];

    if (v14)
    {
      tableView4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7->_searchResultsController];
      v22 = [[SKUISearchController alloc] initWithSearchResultsController:tableView4];
      searchController = v7->_searchController;
      v7->_searchController = v22;
    }

    else
    {
      v24 = [[SKUISearchController alloc] initWithSearchResultsController:v7->_searchResultsController];
      v25 = v7->_searchController;
      v7->_searchController = v24;

      [(UITableViewController *)v7->_searchResultsController setAutomaticallyAdjustsScrollViewInsets:0];
      tableView4 = [(UITableViewController *)v7->_searchResultsController tableView];
      [tableView4 setContentInsetAdjustmentBehavior:101];
    }

    [(SKUISearchController *)v7->_searchController setHidesNavigationBarDuringPresentation:0];
    [(SKUISearchController *)v7->_searchController setDelegate:v7];
    [(SKUISearchController *)v7->_searchController setSearchResultsUpdater:v7];
    searchBar = [(SKUISearchController *)v7->_searchController searchBar];
    [searchBar setDrawsBackground:0];
    [searchBar setAutocapitalizationType:0];
    [searchBar setAutocorrectionType:1];
    [searchBar setDelegate:v7];
    [searchBar setSearchBarStyle:2];
    v27 = objc_loadWeakRetained(&location);
    navigationController = [v27 navigationController];
    navigationBar = [navigationController navigationBar];
    barStyle = [navigationBar barStyle];

    if (barStyle == 1)
    {
      searchField = [searchBar searchField];
      v32 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
      [searchField setTextColor:v32];
    }

    if (contextCopy)
    {
      [(SKUISearchFieldController *)v7 setClientContext:contextCopy];
    }
  }

  objc_destroyWeak(&location);
  return v7;
}

- (SKUISearchFieldController)initWithContentsController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SKUISearchFieldController *)self initWithContentsController:controllerCopy clientContext:0];

  return v5;
}

- (BOOL)canBecomeActive
{
  if (([(SKUISearchController *)self->_searchController isActive]& 1) != 0)
  {
    return 0;
  }

  searchBar = [(SKUISearchController *)self->_searchController searchBar];
  superview = [searchBar superview];
  v3 = superview != 0;

  return v3;
}

- (void)becomeActive
{
  transitionCoordinator = [(SKUISearchController *)self->_searchController transitionCoordinator];
  v4 = transitionCoordinator;
  if (transitionCoordinator)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__SKUISearchFieldController_becomeActive__block_invoke;
    v6[3] = &unk_2781F8348;
    v6[4] = self;
    [transitionCoordinator animateAlongsideTransition:0 completion:v6];
  }

  else
  {
    searchBar = [(SKUISearchController *)self->_searchController searchBar];
    [searchBar becomeFirstResponder];
  }
}

void __41__SKUISearchFieldController_becomeActive__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 40) searchBar];
  [v1 becomeFirstResponder];
}

- (void)resignActive:(BOOL)active
{
  activeCopy = active;
  if ([(SKUISearchController *)self->_searchController isActive])
  {
    if (activeCopy)
    {
      searchController = self->_searchController;

      [(SKUISearchController *)searchController setActive:0];
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __42__SKUISearchFieldController_resignActive___block_invoke;
      v6[3] = &unk_2781F80F0;
      v6[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v6];
    }
  }
}

- (void)setNumberOfSearchResults:(int64_t)results
{
  if (self->_numberOfSearchResults != results)
  {
    self->_numberOfSearchResults = results;
    if (results)
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"SEARCH_FIELD_RESULTS"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"SEARCH_FIELD_RESULTS" inBundles:0];
      }
      v6 = ;
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfSearchResults];
      v9 = [v7 stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, v8];

      [(SKUISearchController *)self->_searchController _setSuffix:v9];
    }

    else
    {
      v9 = 0;
      [(SKUISearchController *)self->_searchController _setSuffix:0];
    }
  }
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_clientContext, context);
  searchResultsController = self->_searchResultsController;
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"SEARCH_SUGGESTIONS"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"SEARCH_SUGGESTIONS" inBundles:0];
  }
  v7 = ;
  [(UITableViewController *)searchResultsController setTitle:v7];

  [(SKUISearchFieldController *)self _reloadTrendingVisibility];
}

- (void)setSearchBarAccessoryText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_searchBarAccessoryText] & 1) == 0)
  {
    v4 = [textCopy copy];
    searchBarAccessoryText = self->_searchBarAccessoryText;
    self->_searchBarAccessoryText = v4;

    [(SKUISearchController *)self->_searchController _setSuffix:self->_searchBarAccessoryText];
  }
}

- (void)setSearchTerm:(id)term
{
  searchController = self->_searchController;
  termCopy = term;
  searchBar = [(SKUISearchController *)searchController searchBar];
  searchField = [searchBar searchField];
  [searchField setText:termCopy];

  [(SKUISearchFieldController *)self _reloadTrendingVisibility];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFD | v5;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFB | v7;
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  v6 = objc_alloc_init(SKUISearchRequest);
  text = [clickedCopy text];
  [(SKUISearchRequest *)v6 setTerm:text];

  [(SKUISearchFieldController *)self _loadResultsForSearchRequest:v6];
  [clickedCopy resignFirstResponder];

  [(SKUISearchController *)self->_searchController setActive:0];
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained searchFieldControllerShouldBeginEditing:self];
  }

  else
  {
    v4 = 1;
  }

  tableView = [(UITableViewController *)self->_searchResultsController tableView];
  [(SKUISearchFieldController *)self _adjustInsetsForResultsTableView:tableView];

  return v4;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    changeCopy = change;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchFieldController:self searchBarDidChangeText:changeCopy];
  }
}

- (BOOL)searchBarShouldClear:(id)clear
{
  clearCopy = clear;
  if (([clearCopy isFirstResponder] & 1) != 0 || -[SKUISearchFieldController _presentsInPopover:](self, "_presentsInPopover:", self->_clientContext))
  {
    v5 = 1;
  }

  else
  {
    [clearCopy setText:0];
    text = [clearCopy text];
    [(SKUISearchFieldController *)self searchBar:clearCopy textDidChange:text];

    [(SKUISearchFieldController *)self becomeActive];
    v5 = 0;
  }

  return v5;
}

- (void)willPresentSearchController:(id)controller
{
  tableView = [(UITableViewController *)self->_searchResultsController tableView];
  [(SKUISearchFieldController *)self _adjustInsetsForResultsTableView:tableView];

  [(SKUISearchFieldController *)self _reloadData];
}

- (void)presentSearchController:(id)controller
{
  controllerCopy = controller;
  if ([(SKUISearchFieldController *)self _presentsInPopover:self->_clientContext])
  {
    [controllerCopy setModalPresentationStyle:7];
    popoverPresentationController = [controllerCopy popoverPresentationController];
    [popoverPresentationController setDelegate:self];
  }

  contentsController = [(SKUISearchFieldController *)self contentsController];
  [contentsController setDefinesPresentationContext:1];

  contentsController2 = [(SKUISearchFieldController *)self contentsController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SKUISearchFieldController_presentSearchController___block_invoke;
  v8[3] = &unk_2781F80F0;
  v8[4] = self;
  [contentsController2 presentViewController:controllerCopy animated:1 completion:v8];
}

void __53__SKUISearchFieldController_presentSearchController___block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) searchBar];
  v2 = [v14 superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [*(a1 + 32) searchBar];
    v4 = [v3 autoresizingMask];

    if ((v4 & 2) == 0)
    {
      return;
    }

    v14 = [*(a1 + 32) searchBar];
    v2 = [v14 superview];
    [v2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [*(a1 + 32) searchBar];
    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (void)willDismissSearchController:(id)controller
{
  contentsController = [(SKUISearchFieldController *)self contentsController];
  [contentsController setDefinesPresentationContext:0];
}

- (void)searchControllerWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__SKUISearchFieldController_searchControllerWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2781F8348;
  v4[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v4];
}

void __92__SKUISearchFieldController_searchControllerWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[4] tableView];
  [v1 _adjustInsetsForResultsTableView:v2];
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  v9[1] = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  [presentationCopy setPermittedArrowDirections:1];
  searchBar = [(SKUISearchController *)self->_searchController searchBar];
  [presentationCopy setSourceView:searchBar];

  searchBar2 = [(SKUISearchController *)self->_searchController searchBar];
  [searchBar2 bounds];
  [presentationCopy setSourceRect:?];

  searchBar3 = [(SKUISearchController *)self->_searchController searchBar];
  v9[0] = searchBar3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [presentationCopy setPassthroughViews:v8];
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  contentsController = [(SKUISearchFieldController *)self contentsController];
  [contentsController setDefinesPresentationContext:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"a"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"a"];
  }

  completions = [(SKUICompletionList *)self->_completionList completions];
  v9 = [pathCopy row];

  v10 = [completions objectAtIndex:v9];

  textLabel = [v7 textLabel];
  alternateTitle = [v10 alternateTitle];
  if ([alternateTitle length])
  {
    [v10 alternateTitle];
  }

  else
  {
    [v10 title];
  }
  v13 = ;
  [textLabel setText:v13];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SKUICompletionList *)self->_completionList completions:view];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v22 = objc_alloc_init(SKUISearchRequest);
  searchBar = [(SKUISearchController *)self->_searchController searchBar];
  text = [searchBar text];
  [(SKUISearchRequest *)v22 setSearchHintOriginalTerm:text];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "row")}];
  [(SKUISearchRequest *)v22 setSearchHintIndex:v8];

  completions = [(SKUICompletionList *)self->_completionList completions];
  v10 = [pathCopy row];

  v11 = [completions objectAtIndex:v10];

  title = [v11 title];
  [(SKUISearchRequest *)v22 setTerm:title];
  v13 = objc_alloc(MEMORY[0x277CBEBC0]);
  uRLString = [v11 URLString];
  v15 = [v13 initWithString:uRLString];

  [(SKUISearchRequest *)v22 setURL:v15];
  alternateTitle = [v11 alternateTitle];
  searchBar2 = [(SKUISearchController *)self->_searchController searchBar];
  searchField = [searchBar2 searchField];
  v19 = searchField;
  if (alternateTitle)
  {
    v20 = alternateTitle;
  }

  else
  {
    v20 = title;
  }

  [searchField setText:v20];

  [(SKUISearchFieldController *)self _loadResultsForSearchRequest:v22];
  searchBar3 = [(SKUISearchController *)self->_searchController searchBar];
  [searchBar3 resignFirstResponder];

  [(SKUISearchController *)self->_searchController setActive:0];
}

- (void)trendingSearchPageView:(id)view didSelectSearch:(id)search
{
  searchCopy = search;
  v12 = objc_alloc_init(SKUISearchRequest);
  v6 = MEMORY[0x277CBEBC0];
  uRLString = [searchCopy URLString];
  v8 = [v6 URLWithString:uRLString];
  [(SKUISearchRequest *)v12 setURL:v8];

  term = [searchCopy term];

  [(SKUISearchRequest *)v12 setTerm:term];
  searchBar = [(SKUISearchController *)self->_searchController searchBar];
  searchField = [searchBar searchField];
  [searchField setText:term];

  [(SKUISearchFieldController *)self _loadResultsForSearchRequest:v12];
  [(SKUISearchController *)self->_searchController setActive:0];
}

- (id)URLForTrendingSearchPageView:(id)view
{
  v3 = MEMORY[0x277CBEBC0];
  trendingSearchURLString = [(SKUISearchFieldController *)self trendingSearchURLString];
  v5 = [v3 URLWithString:trendingSearchURLString];

  return v5;
}

- (BOOL)_presentsInPopover:(id)popover
{
  popoverCopy = popover;
  if (SKUIUserInterfaceIdiom(popoverCopy) == 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    [keyWindow bounds];
    if (v6 <= SKUICompactThreshold())
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = [popoverCopy shouldForceTransientSearchControllerBahavior] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_adjustInsetsForResultsTableView:(id)view
{
  viewCopy = view;
  clientContext = [(SKUISearchFieldController *)self clientContext];
  if (SKUIUserInterfaceIdiom(clientContext) == 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    [keyWindow bounds];
    if (v7 > SKUICompactThreshold())
    {
      shouldForceTransientSearchControllerBahavior = [(SKUIClientContext *)self->_clientContext shouldForceTransientSearchControllerBahavior];

      if (!shouldForceTransientSearchControllerBahavior)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  [viewCopy contentInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [viewCopy contentOffset];
  v18 = v17;
  v20 = v19;
  contentsController = [(SKUISearchFieldController *)self contentsController];
  topLayoutGuide = [contentsController topLayoutGuide];
  [topLayoutGuide length];
  v24 = v23;

  if (v24 != v10)
  {
    [viewCopy setContentInset:{v24, v12, v14, v16}];
    [viewCopy setScrollIndicatorInsets:{v24, v12, v14, v16}];
    [viewCopy setContentOffset:{v18, v20 - (v24 - v10)}];
  }

LABEL_9:
}

- (void)_loadResultsForSearchRequest:(id)request
{
  requestCopy = request;
  delegate = [(SKUISearchFieldController *)self delegate];
  v5 = delegate;
  if (*&self->_delegateRespondsTo)
  {
    [delegate searchFieldController:self requestSearch:requestCopy];
  }

  else
  {
    term = [requestCopy term];
    v7 = [requestCopy URL];
    v8 = v7;
    if (!term || v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        [v11 searchFieldController:self requestSearchWithURL:v8 metricsEvent:0];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v5 searchFieldController:self requestSearchWithSearchTerm:term metricsEvent:0];
    }
  }
}

- (void)_reloadData
{
  searchBar = [(SKUISearchController *)self->_searchController searchBar];
  text = [searchBar text];

  if ([text length])
  {
    searchHintsURLString = [(SKUISearchFieldController *)self searchHintsURLString];

    if (!searchHintsURLString)
    {
      objc_initWeak(&location, self);
      uRLBag = [(SKUIClientContext *)self->_clientContext URLBag];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __40__SKUISearchFieldController__reloadData__block_invoke;
      v21[3] = &unk_2781FBDE0;
      objc_copyWeak(&v22, &location);
      [uRLBag loadValueForKey:@"searchHints" completionBlock:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
      goto LABEL_7;
    }

    [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
    [(SSVLoadURLOperation *)self->_loadOperation cancel];
    v6 = MEMORY[0x277CBEBC0];
    searchHintsURLString2 = [(SKUISearchFieldController *)self searchHintsURLString];
    v8 = [v6 URLWithString:searchHintsURLString2];
    tableView = [v8 URLByAppendingQueryParameter:@"term" value:text];

    v10 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:tableView];
    loadOperation = self->_loadOperation;
    self->_loadOperation = v10;

    v12 = self->_loadOperation;
    v13 = +[(SSVURLDataConsumer *)SKUICompletionDataConsumer];
    [(SSVLoadURLOperation *)v12 setDataConsumer:v13];

    v14 = self->_loadOperation;
    v15 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [(SSVLoadURLOperation *)v14 setStoreFrontSuffix:v15];

    objc_initWeak(&location, self);
    v16 = self->_loadOperation;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__SKUISearchFieldController__reloadData__block_invoke_3;
    v19[3] = &unk_2781FEE18;
    objc_copyWeak(&v20, &location);
    [(SSVLoadURLOperation *)v16 setOutputBlock:v19];
    [(NSOperationQueue *)self->_operationQueue addOperation:self->_loadOperation];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SKUISearchFieldController *)self _setResponse:0 error:0];
    [(SKUISearchFieldController *)self _loadResultsForSearchRequest:0];
    completionList = self->_completionList;
    self->_completionList = 0;

    tableView = [(UITableViewController *)self->_searchResultsController tableView];
    [tableView reloadData];
  }

LABEL_7:
  [(SKUISearchFieldController *)self _reloadTrendingVisibility];
}

void __40__SKUISearchFieldController__reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __40__SKUISearchFieldController__reloadData__block_invoke_2;
    v4[3] = &unk_2781FB310;
    objc_copyWeak(&v6, (a1 + 32));
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __40__SKUISearchFieldController__reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setSearchHintsURLString:*(a1 + 32)];
    [v3 _reloadData];
    WeakRetained = v3;
  }
}

void __40__SKUISearchFieldController__reloadData__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SKUISearchFieldController__reloadData__block_invoke_4;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __40__SKUISearchFieldController__reloadData__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_reloadTrendingVisibility
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    [keyWindow bounds];
    if (v6 <= SKUICompactThreshold())
    {
    }

    else
    {
      shouldForceTransientSearchControllerBahavior = [(SKUIClientContext *)self->_clientContext shouldForceTransientSearchControllerBahavior];

      if (shouldForceTransientSearchControllerBahavior)
      {
        return;
      }

      mEMORY[0x277D75128] = [(UITableViewController *)self->_searchResultsController tableView];
      trendingSearchProvider = [(SKUIClientContext *)self->_clientContext trendingSearchProvider];
      [mEMORY[0x277D75128] setTrendingSearchProvider:trendingSearchProvider];

      isActive = [(SKUISearchController *)self->_searchController isActive];
      searchBar = [(SKUISearchController *)self->_searchController searchBar];
      text = [searchBar text];
      v12 = [text length];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = isActive;
      }

      [mEMORY[0x277D75128] setTrendingSearchesVisible:v13];
    }
  }
}

- (void)_setResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (responseCopy)
  {
    searchBar = [(SKUISearchController *)self->_searchController searchBar];
    text = [searchBar text];
    v10 = [text length];

    if (v10)
    {
      objc_storeStrong(&self->_completionList, response);
      tableView = [(UITableViewController *)self->_searchResultsController tableView];
      [tableView reloadData];
    }
  }
}

- (UIViewController)contentsController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentsController);

  return WeakRetained;
}

- (SKUISearchFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithContentsController:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISearchFieldController initWithContentsController:clientContext:]";
}

@end