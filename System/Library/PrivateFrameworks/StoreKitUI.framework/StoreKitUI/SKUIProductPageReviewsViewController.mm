@interface SKUIProductPageReviewsViewController
- (NSOperationQueue)operationQueue;
- (SKUIProductPageChildViewControllerDelegate)delegate;
- (SKUIProductPageReviewsViewController)initWithProductPage:(id)page;
- (double)_defaultPageWidth;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_bottomBorderColorForScheme:(id)scheme;
- (id)_histogramViewController;
- (id)_loadMoreCellForTableView:(id)view indexPath:(id)path;
- (id)_reviewsHeaderView;
- (id)_tableView;
- (id)_textBoxCellForTableView:(id)view indexPath:(id)path;
- (id)_textLayoutRequestWithText:(id)text;
- (id)_urlStringWithPageNumber:(int64_t)number;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addHeaderView;
- (void)_addReviewsFromResponse:(id)response error:(id)error;
- (void)_appSupportAction:(id)action;
- (void)_loadNextPageIfNecessaryForOffset:(CGPoint)offset;
- (void)_reloadData;
- (void)_setReviewListWithResponse:(id)response error:(id)error;
- (void)_sortSelectionAction:(id)action;
- (void)_starRatingAction:(id)action;
- (void)_versionSelectionAction:(id)action;
- (void)_writeAReviewAction:(id)action;
- (void)dealloc;
- (void)layoutCacheDidFinishBatch:(id)batch;
- (void)loadView;
- (void)reloadData;
- (void)reviewComposeViewControllerDidFinish:(id)finish;
- (void)reviewsFacebookViewControllerDidChange:(id)change;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAskPermission:(BOOL)permission;
- (void)setClientContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)setFacebookLikeStatus:(id)status;
- (void)setHeaderViewController:(id)controller;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIProductPageReviewsViewController

- (SKUIProductPageReviewsViewController)initWithProductPage:(id)page
{
  pageCopy = page;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageReviewsViewController initWithProductPage:];
  }

  v9.receiver = self;
  v9.super_class = SKUIProductPageReviewsViewController;
  v6 = [(SKUIProductPageReviewsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPad = SKUIUserInterfaceIdiom(v6->_clientContext) == 1;
    objc_storeStrong(&v7->_productPage, page);
    v7->_sortOrder = 1;
  }

  return v7;
}

- (void)dealloc
{
  [(SKComposeReviewViewController *)self->_composeViewController setDelegate:0];
  appSupportButton = [(SKUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
  [appSupportButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  segmentedControl = [(SKUIReviewsHistogramViewController *)self->_histogramViewController segmentedControl];
  [segmentedControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  starRatingControl = [(SKUIReviewsHistogramViewController *)self->_histogramViewController starRatingControl];
  [starRatingControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  writeAReviewButton = [(SKUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
  [writeAReviewButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  appSupportButton2 = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
  [appSupportButton2 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  writeAReviewButton2 = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
  [writeAReviewButton2 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v9.receiver = self;
  v9.super_class = SKUIProductPageReviewsViewController;
  [(SKUIProductPageReviewsViewController *)&v9 dealloc];
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)reloadData
{
  v3 = [(SKUIProductPageReviewsViewController *)self _urlStringWithPageNumber:0];
  if (v3 && !self->_reviewList)
  {
    loadOperation = self->_loadOperation;

    if (!loadOperation)
    {

      [(SKUIProductPageReviewsViewController *)self _reloadData];
    }
  }

  else
  {
  }
}

- (void)setFacebookLikeStatus:(id)status
{
  statusCopy = status;
  facebookLikeStatus = [(SKUIReviewsFacebookViewController *)self->_facebookViewController facebookLikeStatus];

  if (facebookLikeStatus != statusCopy)
  {
    facebookViewController = self->_facebookViewController;
    if (statusCopy)
    {
      if (!facebookViewController)
      {
        v7 = objc_alloc_init(SKUIReviewsFacebookViewController);
        v8 = self->_facebookViewController;
        self->_facebookViewController = v7;

        [(SKUIReviewsFacebookViewController *)self->_facebookViewController setClientContext:self->_clientContext];
        [(SKUIReviewsFacebookViewController *)self->_facebookViewController setDelegate:self];
        view = [(SKUIReviewsFacebookViewController *)self->_facebookViewController view];
        uber = [(SKUIProductPage *)self->_productPage uber];
        colorScheme = [uber colorScheme];
        [view setColorScheme:colorScheme];

        [(SKUIProductPageReviewsViewController *)self addChildViewController:self->_facebookViewController];
        facebookViewController = self->_facebookViewController;
      }

      [(SKUIReviewsFacebookViewController *)facebookViewController setFacebookLikeStatus:?];
      view2 = [(SKUIReviewsFacebookViewController *)self->_facebookViewController view];
      [view2 setAutoresizingMask:2];
      v13 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [view2 setBackgroundColor:v13];

      [(SKUIProductPageReviewsViewController *)self _defaultPageWidth];
      [view2 sizeThatFits:?];
      [view2 setFrame:{0.0, 0.0, v14, v15}];
    }

    else
    {
      if (!facebookViewController)
      {
LABEL_9:
        tableView = self->_tableView;
        v17 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
        [(SKUIProductPageTableView *)tableView reloadSections:v17 withRowAnimation:100];

        goto LABEL_10;
      }

      [(SKUIReviewsFacebookViewController *)facebookViewController removeFromParentViewController];
      view2 = self->_facebookViewController;
      self->_facebookViewController = 0;
    }

    goto LABEL_9;
  }

LABEL_10:

  MEMORY[0x2821F9730](v5);
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v14 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
    self->_isPad = SKUIUserInterfaceIdiom(self->_clientContext) == 1;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_REVIEWS_TAB" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_REVIEWS_TAB" inBundles:0 inTable:@"ProductPage"];
    }
    v7 = ;
    [(SKUIProductPageReviewsViewController *)self setTitle:v7];

    writeAReviewButton = [(SKUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    clientInterface = [(SKUIClientContext *)self->_clientContext clientInterface];
    clientIdentifier = [clientInterface clientIdentifier];
    [writeAReviewButton setEnabled:clientIdentifier == 0];

    writeAReviewButton2 = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
    clientInterface2 = [(SKUIClientContext *)self->_clientContext clientInterface];
    clientIdentifier2 = [clientInterface2 clientIdentifier];
    [writeAReviewButton2 setEnabled:clientIdentifier2 == 0];

    contextCopy = v14;
  }
}

- (void)setAskPermission:(BOOL)permission
{
  if (self->_askPermission != permission)
  {
    self->_askPermission = permission;
    appSupportButton = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
    [appSupportButton setEnabled:!self->_askPermission];
  }
}

- (void)loadView
{
  _tableView = [(SKUIProductPageReviewsViewController *)self _tableView];
  [(SKUIProductPageReviewsViewController *)self setView:_tableView];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIProductPageTableView *)self->_tableView contentOffset];
  [(SKUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  v5.receiver = self;
  v5.super_class = SKUIProductPageReviewsViewController;
  [(SKUIProductPageReviewsViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIProductPageReviewsViewController *)self reloadData];
  v5.receiver = self;
  v5.super_class = SKUIProductPageReviewsViewController;
  [(SKUIProductPageReviewsViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)setHeaderViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_headerViewController != controllerCopy)
  {
    [(SKUIProductPageTableView *)self->_tableView setProductPageHeaderView:0];
    view = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
    [view removeFromSuperview];

    [(SKUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, controller);
    if (self->_headerViewController)
    {
      [(SKUIProductPageReviewsViewController *)self addChildViewController:?];
      if ([(SKUIProductPageReviewsViewController *)self isViewLoaded])
      {
        [(SKUIProductPageReviewsViewController *)self _addHeaderView];
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (self->_tableView)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 productPageChildViewControllerDidLoadScrollView:self];

      v5 = obj;
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained productPageChildViewControllerDidScroll:self];
}

- (void)reviewsFacebookViewControllerDidChange:(id)change
{
  [(SKUIProductPageTableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;

  [(SKUIProductPageTableView *)tableView endUpdates];
}

- (void)layoutCacheDidFinishBatch:(id)batch
{
  [(SKUIProductPageTableView *)self->_tableView reloadData];
  [(SKUIProductPageTableView *)self->_tableView contentOffset];

  [(SKUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
}

- (void)reviewComposeViewControllerDidFinish:(id)finish
{
  composeViewController = self->_composeViewController;
  if (composeViewController == finish)
  {
    [(SKComposeReviewViewController *)composeViewController setDelegate:0];
    [(SKComposeReviewViewController *)self->_composeViewController dismissViewControllerAnimated:1 completion:0];
    v5 = self->_composeViewController;
    self->_composeViewController = 0;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 3)
  {
    v9 = [(SKUIProductPageReviewsViewController *)self _loadMoreCellForTableView:viewCopy indexPath:pathCopy];
    goto LABEL_5;
  }

  if (section == 2)
  {
    v9 = [(SKUIProductPageReviewsViewController *)self _textBoxCellForTableView:viewCopy indexPath:pathCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    reviews = [(SKUIReviewList *)self->_reviewList reviews];
    _shouldShowLoadMoreCell = [reviews count];
  }

  else if (section == 3)
  {
    _shouldShowLoadMoreCell = [(SKUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell];
  }

  else
  {
    _shouldShowLoadMoreCell = 0;
  }

  return _shouldShowLoadMoreCell;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if ([path section] == 3)
  {
    [cellCopy stopAnimating];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  expandedIndexSet = self->_expandedIndexSet;
  if (!expandedIndexSet)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v8 = self->_expandedIndexSet;
    self->_expandedIndexSet = v7;

    expandedIndexSet = self->_expandedIndexSet;
  }

  -[NSMutableIndexSet addIndex:](expandedIndexSet, "addIndex:", [pathCopy row]);
  tableView = self->_tableView;
  v11[0] = pathCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(SKUIProductPageTableView *)tableView reloadRowsAtIndexPaths:v10 withRowAnimation:100];
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    _reviewsHeaderView = [(SKUIProductPageReviewsViewController *)self _reviewsHeaderView];
    view = _reviewsHeaderView;
    if (_reviewsHeaderView)
    {
      [_reviewsHeaderView frame];
      v7 = v13;
    }

    else
    {
      v7 = 0.0;
    }

    goto LABEL_12;
  }

  v7 = 0.0;
  if (section == 1)
  {
    if (self->_reviewList)
    {
      _histogramViewController = [(SKUIProductPageReviewsViewController *)self _histogramViewController];
      view = [_histogramViewController view];

      goto LABEL_8;
    }
  }

  else if (!section)
  {
    facebookViewController = self->_facebookViewController;
    if (facebookViewController)
    {
      view = [(SKUIReviewsFacebookViewController *)facebookViewController view];
LABEL_8:
      [(SKUIProductPageReviewsViewController *)self _defaultPageWidth];
      [view sizeThatFits:?];
      v7 = v11;
LABEL_12:
    }
  }

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 2)
  {
    v6 = [pathCopy row];
    v7 = [(SKUILayoutCache *)self->_layoutCache layoutForIndex:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 requiresTruncation] && (-[NSMutableIndexSet containsIndex:](self->_expandedIndexSet, "containsIndex:", v6) & 1) == 0)
      {
        [v8 truncatedSize];
      }

      else
      {
        [v8 textSize];
      }

      if (self->_isPad)
      {
        v11 = &kSKUITextBoxLayoutMarginTopIPad;
      }

      else
      {
        v11 = &kSKUITextBoxLayoutMarginTopIPhone;
      }

      v12 = *v11;
      v13 = &kSKUITextBoxLayoutTitleHeightIPad;
      if (!self->_isPad)
      {
        v13 = &kSKUITextBoxLayoutTitleHeightIPhone;
      }

      v14 = v12 + *v13;
      v15 = &kSKUITextBoxLayoutTextRatingBottomPaddingIPad;
      if (!self->_isPad)
      {
        v15 = &kSKUITextBoxLayoutTextRatingBottomPaddingIPhone;
      }

      v16 = v14 + *v15 + 14.0 + 5.0;
      v17 = &kSKUITextBoxLayoutMarginBottomIPad;
      if (!self->_isPad)
      {
        v17 = &kSKUITextBoxLayoutMarginBottomIPhone;
      }

      v10 = v9 + v16 + *v17;
    }

    else
    {
      v10 = 100.0;
    }
  }

  else
  {
    v10 = 100.0;
  }

  return v10;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  uber = [(SKUIProductPage *)self->_productPage uber];
  colorScheme = [uber colorScheme];
  backgroundColor = [colorScheme backgroundColor];
  v9 = backgroundColor;
  if (backgroundColor)
  {
    v10 = backgroundColor;
  }

  else
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
  }

  v11 = v10;

  if (section == 2)
  {
    _reviewsHeaderView = [(SKUIProductPageReviewsViewController *)self _reviewsHeaderView];
    goto LABEL_12;
  }

  if (section == 1)
  {
    if (self->_reviewList)
    {
      _histogramViewController = [(SKUIProductPageReviewsViewController *)self _histogramViewController];
      view = [_histogramViewController view];

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (section)
  {
LABEL_10:
    view = 0;
    goto LABEL_13;
  }

  _reviewsHeaderView = [(SKUIReviewsFacebookViewController *)self->_facebookViewController view];
LABEL_12:
  view = _reviewsHeaderView;
LABEL_13:
  [view setBackgroundColor:v11];

  return view;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  productPage = self->_productPage;
  pathCopy = path;
  uber = [(SKUIProductPage *)productPage uber];
  colorScheme = [uber colorScheme];
  backgroundColor = [colorScheme backgroundColor];
  if (backgroundColor)
  {
    [cellCopy setBackgroundColor:backgroundColor];
  }

  else
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    [cellCopy setBackgroundColor:v14];
  }

  section = [pathCopy section];
  if (section == 3)
  {
    [cellCopy startAnimating];
    [viewCopy contentOffset];
    [(SKUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  }
}

- (void)_appSupportAction:(id)action
{
  item = [(SKUIProductPage *)self->_productPage item];
  supportURLString = [item supportURLString];

  v4 = supportURLString;
  if (supportURLString)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:supportURLString];
    SKUIMetricsOpenURL(v5);

    v4 = supportURLString;
  }
}

- (void)_sortSelectionAction:(id)action
{
  sortOrder = self->_sortOrder;
  selectedSortIndex = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView selectedSortIndex];
  if (selectedSortIndex <= 3)
  {
    sortOrder = qword_215F3FAE0[selectedSortIndex];
  }

  if (self->_sortOrder != sortOrder)
  {
    self->_sortOrder = sortOrder;
    [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
    [(SSVLoadURLOperation *)self->_loadOperation cancel];
    loadOperation = self->_loadOperation;
    self->_loadOperation = 0;

    [(SKUIProductPageReviewsViewController *)self _reloadData];
  }
}

- (void)_starRatingAction:(id)action
{
  actionCopy = action;
  personalStarRating = [(SKUIReviewsHistogramViewController *)self->_histogramViewController personalStarRating];
  if (!self->_starRatingQueue)
  {
    v6 = [SKUIStarRatingQueue alloc];
    reviewConfiguration = [(SKUIProductPage *)self->_productPage reviewConfiguration];
    v8 = [(SKUIStarRatingQueue *)v6 initWithReviewConfiguration:reviewConfiguration];
    starRatingQueue = self->_starRatingQueue;
    self->_starRatingQueue = v8;

    v10 = self->_starRatingQueue;
    view = [(SKUIProductPageReviewsViewController *)self view];
    window = [view window];
    [(SKUIStarRatingQueue *)v10 setWindow:window];
  }

  objc_initWeak(&location, self);
  v13 = MEMORY[0x277CCACA8];
  item = [(SKUIProductPage *)self->_productPage item];
  v15 = [v13 stringWithFormat:@"%lld", objc_msgSend(item, "itemIdentifier")];

  v16 = self->_starRatingQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__SKUIProductPageReviewsViewController__starRatingAction___block_invoke;
  v17[3] = &unk_2781FA340;
  objc_copyWeak(&v18, &location);
  [(SKUIStarRatingQueue *)v16 setRating:personalStarRating forItemID:v15 completionBlock:v17];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __58__SKUIProductPageReviewsViewController__starRatingAction___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SKUIProductPageReviewsViewController__starRatingAction___block_invoke_2;
    block[3] = &unk_2781F8320;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v3);
  }
}

void __58__SKUIProductPageReviewsViewController__starRatingAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetPersonalStarRating];
}

- (void)_versionSelectionAction:(id)action
{
  v4 = [(SKUIReviewsHistogramViewController *)self->_histogramViewController selectedSegmentIndex]== 1;
  if (self->_showAllVersions != v4)
  {
    self->_showAllVersions = v4;
    [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
    [(SSVLoadURLOperation *)self->_loadOperation cancel];
    loadOperation = self->_loadOperation;
    self->_loadOperation = 0;

    [(SKUIProductPageReviewsViewController *)self _reloadData];
  }
}

- (void)_writeAReviewAction:(id)action
{
  actionCopy = action;
  if (!self->_composeViewController)
  {
    v5 = objc_alloc(MEMORY[0x277CDD350]);
    writeReviewURL = [(SKUIReviewList *)self->_reviewList writeReviewURL];
    v7 = [v5 initWithCompositionURL:writeReviewURL];

    [v7 setDelegate:self];
    objc_storeStrong(&self->_composeViewController, v7);
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__SKUIProductPageReviewsViewController__writeAReviewAction___block_invoke;
    v9[3] = &unk_2781F8168;
    objc_copyWeak(&v11, &location);
    v8 = v7;
    v10 = v8;
    [v8 prepareWithCompletionBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __60__SKUIProductPageReviewsViewController__writeAReviewAction___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];
  }
}

- (void)_addHeaderView
{
  view = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [view setAutoresizingMask:2];
  [view frame];
  v4 = v3;
  [(SKUIProductPageTableView *)self->_tableView bounds];
  [view setFrame:{0.0, v4}];
  [(SKUIProductPageTableView *)self->_tableView _addContentSubview:view atBack:0];
  floatingView = [(SKUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [floatingView setAutoresizingMask:2];
  [floatingView frame];
  v7 = v6;
  [(SKUIProductPageTableView *)self->_tableView bounds];
  [floatingView setFrame:{0.0, v7}];
  [(SKUIProductPageTableView *)self->_tableView setProductPageHeaderView:floatingView];
}

- (void)_addReviewsFromResponse:(id)response error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[SKUIReviewList alloc] initWithReviewListDictionary:responseCopy];
    reviews = [(SKUIReviewList *)v7 reviews];
    v9 = [reviews count];
    if (v9 > 0)
    {
      v28 = v9;
      v31 = v7;
      v32 = responseCopy;
      reviews2 = [(SKUIReviewList *)self->_reviewList reviews];
      v11 = [reviews2 count];

      _shouldShowLoadMoreCell = [(SKUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell];
      [(SKUIReviewList *)self->_reviewList addReviews:reviews];
      ++self->_loadedPageCount;
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = reviews;
      v13 = reviews;
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v13);
            }

            body = [*(*(&v33 + 1) + 8 * i) body];
            v19 = body;
            if (body)
            {
              v20 = body;
            }

            else
            {
              v20 = &stru_2827FFAC8;
            }

            v21 = [(SKUIProductPageReviewsViewController *)self _textLayoutRequestWithText:v20];
            [v12 addObject:v21];
          }

          v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v15);
      }

      [(SKUILayoutCache *)self->_layoutCache populateCacheWithLayoutRequests:v12];
      [(SKUIProductPageTableView *)self->_tableView beginUpdates];
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v23 = v11 + v28;
      do
      {
        v24 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:2];
        [v22 addObject:v24];

        ++v11;
      }

      while (v11 < v23);
      [(SKUIProductPageTableView *)self->_tableView insertRowsAtIndexPaths:v22 withRowAnimation:5];
      if (_shouldShowLoadMoreCell && ![(SKUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell])
      {
        tableView = self->_tableView;
        v26 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:3];
        v37 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [(SKUIProductPageTableView *)tableView deleteRowsAtIndexPaths:v27 withRowAnimation:5];
      }

      [(SKUIProductPageTableView *)self->_tableView endUpdates];

      v7 = v31;
      responseCopy = v32;
      reviews = v30;
    }

    [(SKUIProductPageTableView *)self->_tableView contentOffset];
    [(SKUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  }
}

- (id)_bottomBorderColorForScheme:(id)scheme
{
  primaryTextColor = [scheme primaryTextColor];
  v4 = primaryTextColor;
  if (primaryTextColor)
  {
    v5 = primaryTextColor;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  v6 = v5;

  return v6;
}

- (double)_defaultPageWidth
{
  if (self->_isPad)
  {
    return 630.0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 320.0;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v2 = v6;

  return v2;
}

- (id)_histogramViewController
{
  v31[2] = *MEMORY[0x277D85DE8];
  histogramViewController = self->_histogramViewController;
  if (!histogramViewController)
  {
    v4 = objc_alloc_init(SKUIReviewsHistogramViewController);
    v5 = self->_histogramViewController;
    self->_histogramViewController = v4;

    [(SKUIReviewsHistogramViewController *)self->_histogramViewController setClientContext:self->_clientContext];
    [(SKUIReviewsHistogramViewController *)self->_histogramViewController setReviewList:self->_reviewList];
    item = [(SKUIProductPage *)self->_productPage item];
    itemKind = [item itemKind];

    if (itemKind != 17)
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_CURRENT_VERSION" inTable:@"ProductPage"];
      }

      else
      {
        v9 = 0;
        [SKUIClientContext localizedStringForKey:@"REVIEWS_CURRENT_VERSION" inBundles:0 inTable:@"ProductPage"];
      }
      v10 = ;

      v11 = self->_clientContext;
      if (v11)
      {
        [(SKUIClientContext *)v11 localizedStringForKey:@"REVIEWS_ALL_VERSIONS" inTable:@"ProductPage"];
      }

      else
      {
        v12 = 0;
        [SKUIClientContext localizedStringForKey:@"REVIEWS_ALL_VERSIONS" inBundles:0 inTable:@"ProductPage"];
      }
      v13 = ;

      v14 = self->_histogramViewController;
      v31[0] = v10;
      v31[1] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      [(SKUIReviewsHistogramViewController *)v14 setSegmentedControlTitles:v15];

      [(SKUIReviewsHistogramViewController *)self->_histogramViewController setSelectedSegmentIndex:self->_showAllVersions];
      v16 = self->_histogramViewController;
      if (self->_showAllVersions)
      {
        [(SKUIReviewsHistogramViewController *)self->_histogramViewController setVersionString:0];
      }

      else
      {
        item2 = [(SKUIProductPage *)self->_productPage item];
        versionString = [item2 versionString];
        [(SKUIReviewsHistogramViewController *)v16 setVersionString:versionString];
      }
    }

    view = [(SKUIReviewsHistogramViewController *)self->_histogramViewController view];
    [view setAutoresizingMask:2];
    uber = [(SKUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [view setColorScheme:colorScheme];

    appSupportButton = [(SKUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
    [appSupportButton addTarget:self action:sel__appSupportAction_ forControlEvents:64];

    segmentedControl = [(SKUIReviewsHistogramViewController *)self->_histogramViewController segmentedControl];
    [segmentedControl addTarget:self action:sel__versionSelectionAction_ forControlEvents:4096];

    starRatingControl = [(SKUIReviewsHistogramViewController *)self->_histogramViewController starRatingControl];
    [starRatingControl addTarget:self action:sel__starRatingAction_ forControlEvents:4096];

    writeAReviewButton = [(SKUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    [writeAReviewButton addTarget:self action:sel__writeAReviewAction_ forControlEvents:64];

    appSupportButton2 = [(SKUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
    [appSupportButton2 setEnabled:!self->_askPermission];

    writeAReviewButton2 = [(SKUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    clientInterface = [(SKUIClientContext *)self->_clientContext clientInterface];
    clientIdentifier = [clientInterface clientIdentifier];
    [writeAReviewButton2 setEnabled:clientIdentifier == 0];

    [(SKUIProductPageReviewsViewController *)self addChildViewController:self->_histogramViewController];
    histogramViewController = self->_histogramViewController;
  }

  return histogramViewController;
}

- (id)_loadMoreCellForTableView:(id)view indexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"1", path}];
  if (!v4)
  {
    v4 = [[SKUILoadMoreCell alloc] initWithStyle:0 reuseIdentifier:@"1"];
  }

  return v4;
}

- (void)_loadNextPageIfNecessaryForOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ([(SKUIProductPageReviewsViewController *)self isViewLoaded])
  {
    view = [(SKUIProductPageReviewsViewController *)self view];
    if ([view isHidden])
    {
    }

    else
    {
      window = [view window];

      if (window)
      {
        if (!self->_loadOperation)
        {
          loadedPageCount = self->_loadedPageCount;
          if (loadedPageCount >= 1 && loadedPageCount < [(SKUIReviewList *)self->_reviewList numberOfPages])
          {
            [(SKUIProductPageTableView *)self->_tableView contentInset];
            v9 = [(SKUIProductPageTableView *)self->_tableView indexPathForRowAtPoint:x, y + v8];
            if (v9)
            {
              reviews = [(SKUIReviewList *)self->_reviewList reviews];
              v11 = [reviews count];

              v12 = [v9 row];
              if (v11 > v12 && v11 - v12 <= 10)
              {
                v14 = [(SKUIProductPageReviewsViewController *)self _urlStringWithPageNumber:self->_loadedPageCount + 1];
                v15 = objc_alloc(MEMORY[0x277D69CD8]);
                v16 = [MEMORY[0x277CBEBC0] URLWithString:v14];
                v17 = [v15 initWithURL:v16];
                loadOperation = self->_loadOperation;
                self->_loadOperation = v17;

                v19 = self->_loadOperation;
                v20 = +[(SSVURLDataConsumer *)SKUIJSONDataConsumer];
                [(SSVLoadURLOperation *)v19 setDataConsumer:v20];

                [(SSVLoadURLOperation *)self->_loadOperation setQueuePriority:-4];
                v21 = self->_loadOperation;
                v22 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
                [(SSVLoadURLOperation *)v21 setStoreFrontSuffix:v22];

                v23 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
                v24 = self->_loadOperation;
                v28[0] = MEMORY[0x277D85DD0];
                v28[1] = 3221225472;
                v28[2] = __74__SKUIProductPageReviewsViewController__loadNextPageIfNecessaryForOffset___block_invoke;
                v28[3] = &unk_2781FD9B0;
                v29 = v23;
                v25 = v23;
                [(SSVLoadURLOperation *)v24 setOutputBlock:v28];
                operationQueue = [(SKUIProductPageReviewsViewController *)self operationQueue];
                [operationQueue addOperation:self->_loadOperation];
              }
            }
          }
        }
      }
    }
  }
}

void __74__SKUIProductPageReviewsViewController__loadNextPageIfNecessaryForOffset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SKUIProductPageReviewsViewController__loadNextPageIfNecessaryForOffset___block_invoke_2;
  block[3] = &unk_2781F8680;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__SKUIProductPageReviewsViewController__loadNextPageIfNecessaryForOffset___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _addReviewsFromResponse:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_reloadData
{
  v3 = [(SKUIProductPageReviewsViewController *)self _urlStringWithPageNumber:0];
  v4 = objc_alloc(MEMORY[0x277D69CD8]);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v6 = [v4 initWithURL:v5];
  loadOperation = self->_loadOperation;
  self->_loadOperation = v6;

  v8 = self->_loadOperation;
  v9 = +[(SSVURLDataConsumer *)SKUIJSONDataConsumer];
  [(SSVLoadURLOperation *)v8 setDataConsumer:v9];

  v10 = self->_loadOperation;
  v11 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [(SSVLoadURLOperation *)v10 setStoreFrontSuffix:v11];

  v12 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
  v13 = self->_loadOperation;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__SKUIProductPageReviewsViewController__reloadData__block_invoke;
  v16[3] = &unk_2781FD9B0;
  v17 = v12;
  v14 = v12;
  [(SSVLoadURLOperation *)v13 setOutputBlock:v16];
  operationQueue = [(SKUIProductPageReviewsViewController *)self operationQueue];
  [operationQueue addOperation:self->_loadOperation];
}

void __51__SKUIProductPageReviewsViewController__reloadData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SKUIProductPageReviewsViewController__reloadData__block_invoke_2;
  block[3] = &unk_2781F8680;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__SKUIProductPageReviewsViewController__reloadData__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _setReviewListWithResponse:*(a1 + 40) error:*(a1 + 48)];
}

- (id)_reviewsHeaderView
{
  v30[4] = *MEMORY[0x277D85DE8];
  reviewsHeaderView = self->_reviewsHeaderView;
  if (!reviewsHeaderView)
  {
    if (self->_isPad)
    {
      v4 = [[SKUIIPadCustomerReviewsHeaderView alloc] initWithClientContext:self->_clientContext];
      v5 = self->_reviewsHeaderView;
      self->_reviewsHeaderView = v4;

      v6 = self->_reviewsHeaderView;
      uber = [(SKUIProductPage *)self->_productPage uber];
      colorScheme = [uber colorScheme];
      [(SKUIIPadCustomerReviewsHeaderView *)v6 setColorScheme:colorScheme];

      [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView addTarget:self action:sel__sortSelectionAction_ forControlEvents:4096];
      [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView setAutoresizingMask:2];
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_SORT_MOST_CRITICAL" inTable:@"ProductPage"];
      }

      else
      {
        v10 = 0;
        [SKUIClientContext localizedStringForKey:@"REVIEWS_SORT_MOST_CRITICAL" inBundles:0 inTable:@"ProductPage"];
      }
      v11 = ;

      v12 = self->_clientContext;
      if (v12)
      {
        [(SKUIClientContext *)v12 localizedStringForKey:@"REVIEWS_SORT_MOST_FAVORABLE" inTable:@"ProductPage"];
      }

      else
      {
        v13 = 0;
        [SKUIClientContext localizedStringForKey:@"REVIEWS_SORT_MOST_FAVORABLE" inBundles:0 inTable:@"ProductPage"];
      }
      v14 = ;

      v15 = self->_clientContext;
      if (v15)
      {
        [(SKUIClientContext *)v15 localizedStringForKey:@"REVIEWS_SORT_MOST_RECENT" inTable:@"ProductPage"];
      }

      else
      {
        v16 = 0;
        [SKUIClientContext localizedStringForKey:@"REVIEWS_SORT_MOST_RECENT" inBundles:0 inTable:@"ProductPage"];
      }
      v17 = ;

      v18 = self->_clientContext;
      if (v18)
      {
        [(SKUIClientContext *)v18 localizedStringForKey:@"REVIEWS_SORT_MOST_HELPFUL" inTable:@"ProductPage"];
      }

      else
      {
        v19 = 0;
        [SKUIClientContext localizedStringForKey:@"REVIEWS_SORT_MOST_HELPFUL" inBundles:0 inTable:@"ProductPage"];
      }
      v20 = ;

      v21 = self->_reviewsHeaderView;
      v30[0] = v20;
      v30[1] = v17;
      v30[2] = v14;
      v30[3] = v11;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
      [(SKUIIPadCustomerReviewsHeaderView *)v21 setSortTitles:v22];

      [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView sizeToFit];
      appSupportButton = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
      [appSupportButton addTarget:self action:sel__appSupportAction_ forControlEvents:64];

      writeAReviewButton = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
      [writeAReviewButton addTarget:self action:sel__writeAReviewAction_ forControlEvents:64];

      appSupportButton2 = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
      [appSupportButton2 setEnabled:!self->_askPermission];

      writeAReviewButton2 = [(SKUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
      clientInterface = [(SKUIClientContext *)self->_clientContext clientInterface];
      clientIdentifier = [clientInterface clientIdentifier];
      [writeAReviewButton2 setEnabled:clientIdentifier == 0];

      reviewsHeaderView = self->_reviewsHeaderView;
    }

    else
    {
      reviewsHeaderView = 0;
    }
  }

  return reviewsHeaderView;
}

- (void)_setReviewListWithResponse:(id)response error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = responseCopy;
    v7 = [[SKUIReviewList alloc] initWithReviewListDictionary:responseCopy];
    reviewList = self->_reviewList;
    self->_reviewList = v7;

    self->_loadedPageCount = 1;
    [(SKUILayoutCache *)self->_layoutCache setDelegate:0];
    layoutCache = self->_layoutCache;
    self->_layoutCache = 0;

    v10 = objc_alloc_init(SKUILayoutCache);
    v11 = self->_layoutCache;
    self->_layoutCache = v10;

    [(SKUILayoutCache *)self->_layoutCache setDelegate:self];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    reviews = [(SKUIReviewList *)self->_reviewList reviews];
    v14 = [reviews countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(reviews);
          }

          body = [*(*(&v26 + 1) + 8 * i) body];
          v19 = body;
          if (body)
          {
            v20 = body;
          }

          else
          {
            v20 = &stru_2827FFAC8;
          }

          v21 = [(SKUIProductPageReviewsViewController *)self _textLayoutRequestWithText:v20];
          [v12 addObject:v21];
        }

        v15 = [reviews countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    [(SKUILayoutCache *)self->_layoutCache populateCacheWithLayoutRequests:v12];
    [(SKUIReviewsHistogramViewController *)self->_histogramViewController setReviewList:self->_reviewList];
    histogramViewController = self->_histogramViewController;
    if (self->_showAllVersions)
    {
      [(SKUIReviewsHistogramViewController *)self->_histogramViewController setVersionString:0];
    }

    else
    {
      item = [(SKUIProductPage *)self->_productPage item];
      versionString = [item versionString];
      [(SKUIReviewsHistogramViewController *)histogramViewController setVersionString:versionString];
    }

    responseCopy = v25;
    [(SKUIProductPageTableView *)self->_tableView reloadData];
  }
}

- (id)_tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc_init(SKUIProductPageTableView);
    v5 = self->_tableView;
    self->_tableView = v4;

    v6 = self->_tableView;
    uber = [(SKUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    backgroundColor = [colorScheme backgroundColor];
    if (backgroundColor)
    {
      [(SKUIProductPageTableView *)v6 setBackgroundColor:backgroundColor];
    }

    else
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SKUIProductPageTableView *)v6 setBackgroundColor:v10];
    }

    [(SKUIProductPageTableView *)self->_tableView setDataSource:self];
    [(SKUIProductPageTableView *)self->_tableView setDelegate:self];
    [(SKUIProductPageTableView *)self->_tableView _setHeaderAndFooterViewsFloat:0];
    [(SKUIProductPageTableView *)self->_tableView setSeparatorStyle:0];
    if (self->_headerViewController)
    {
      [(SKUIProductPageReviewsViewController *)self _addHeaderView];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained productPageChildViewControllerDidLoadScrollView:self];

    tableView = self->_tableView;
  }

  return tableView;
}

- (id)_textBoxCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"0"];
  if (v7)
  {
    v8 = v7;
    textBoxView = [(SKUITextBoxTableViewCell *)v7 textBoxView];
  }

  else
  {
    v8 = [[SKUITextBoxTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"0"];
    [(SKUITextBoxTableViewCell *)v8 setSelectionStyle:0];
    uber = [(SKUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];

    v12 = [(SKUIProductPageReviewsViewController *)self _bottomBorderColorForScheme:colorScheme];
    [(SKUITableViewCell *)v8 setBottomBorderColor:v12];

    textBoxView = [(SKUITextBoxTableViewCell *)v8 textBoxView];
    [textBoxView setColorScheme:colorScheme];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"MORE_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
    }
    v14 = ;
    [textBoxView setMoreButtonTitle:v14];
  }

  v15 = [pathCopy row];

  v16 = [(SKUILayoutCache *)self->_layoutCache layoutForIndex:v15];
  if (v16)
  {
    reviews = [(SKUIReviewList *)self->_reviewList reviews];
    v18 = [reviews objectAtIndex:v15];

    [textBoxView setFixedWidthTextFrame:{objc_msgSend(v16, "textFrame")}];
    if ([(NSMutableIndexSet *)self->_expandedIndexSet containsIndex:v15])
    {
      v19 = 0;
    }

    else
    {
      v19 = 5;
    }

    [textBoxView setNumberOfVisibleLines:v19];
    [v18 rating];
    [textBoxView setRating:(v20 / 5.0)];
    v21 = [v18 formattedBylineWithClientContext:self->_clientContext];
    [textBoxView setRatingText:v21];

    v22 = MEMORY[0x277CCACA8];
    v23 = v15 + 1;
    title = [v18 title];
    v25 = [v22 stringWithFormat:@"%ld. %@", v23, title];
    [textBoxView setTitle:v25];
  }

  else
  {
    [textBoxView reset];
  }

  return v8;
}

- (id)_textLayoutRequestWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(SKUITextLayoutRequest);
  [(SKUITextLayoutRequest *)v5 setNumberOfLines:5];
  [(SKUITextLayoutRequest *)v5 setText:textCopy];

  [(SKUIProductPageReviewsViewController *)self _defaultPageWidth];
  [(SKUITextLayoutRequest *)v5 setWidth:v6 + -30.0];

  return v5;
}

- (id)_urlStringWithPageNumber:(int64_t)number
{
  reviewConfiguration = [(SKUIProductPage *)self->_productPage reviewConfiguration];
  v6 = reviewConfiguration;
  if (reviewConfiguration)
  {
    if (self->_showAllVersions)
    {
      [reviewConfiguration allVersionsURLString];
    }

    else
    {
      [reviewConfiguration currentVersionURLString];
    }
    v10 = ;
    pageNumberQueryParameter = [v6 pageNumberQueryParameter];
    v12 = pageNumberQueryParameter;
    if (number)
    {
      if (pageNumberQueryParameter)
      {
LABEL_12:
        [v10 stringByAppendingFormat:@"&sort-key=%ld&%@=%ld", self->_sortOrder, v12, number];
        goto LABEL_14;
      }

LABEL_11:
      v12 = @"page-number";
      goto LABEL_12;
    }
  }

  else
  {
    item = [(SKUIProductPage *)self->_productPage item];
    showAllVersions = self->_showAllVersions;
    reviewsURLString = [item reviewsURLString];
    v10 = reviewsURLString;
    if (!showAllVersions)
    {
      v11 = [reviewsURLString stringByAppendingString:@"&appVersion=current"];

      v10 = v11;
    }

    if (number)
    {
      goto LABEL_11;
    }

    v12 = 0;
  }

  [v10 stringByAppendingFormat:@"&sort-key=%ld", self->_sortOrder, v16, v17];
  v14 = LABEL_14:;

  return v14;
}

- (SKUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithProductPage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageReviewsViewController initWithProductPage:]";
}

@end