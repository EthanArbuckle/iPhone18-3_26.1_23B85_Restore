@interface SKUIIPadProductPageViewController
- (BOOL)_isIncompatibleItem;
- (CGPoint)topContentOffset;
- (SKUIIPadProductPageDelegate)delegate;
- (SKUIIPadProductPageViewController)initWithItem:(id)a3;
- (SKUIIPadProductPageViewController)initWithItemIdentifier:(int64_t)a3;
- (SKUIIPadProductPageViewController)initWithProductPage:(id)a3;
- (SKUIIPadProductPageViewController)initWithURL:(id)a3;
- (SKUIIPadProductPageViewController)initWithURLRequest:(id)a3;
- (id)_detailsViewController;
- (id)_initSKUIIPadProductPageViewController;
- (id)_placeholderViewController;
- (id)_relatedViewController;
- (id)_reviewsViewController;
- (id)_viewControllerForSectionIndex:(int64_t)a3;
- (void)_initSKUIIPadProductPageViewController;
- (void)_metricsEnterEventNotification:(id)a3;
- (void)_reloadHeaderViewController;
- (void)_selectSectionIndex:(int64_t)a3;
- (void)_sendCannotOpen;
- (void)_setDefaultSectionIndexWithFragment:(int64_t)a3;
- (void)_setMetricsController:(id)a3;
- (void)_setProductPage:(id)a3 error:(id)a4;
- (void)_showBanner;
- (void)_showError:(id)a3;
- (void)_showIncompatibleView;
- (void)_showViewController:(id)a3;
- (void)askPermissionBannerDidSelect:(id)a3;
- (void)configureMetricsWithPageEvent:(id)a3;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)loadView;
- (void)networkErrorViewControllerInvalidated:(id)a3;
- (void)productPageChildOpenItem:(id)a3;
- (void)productPageChildOpenURL:(id)a3 viewControllerBlock:(id)a4;
- (void)productPageHeaderView:(id)a3 didSelectURL:(id)a4;
- (void)reloadData;
- (void)setAskPermission:(BOOL)a3;
- (void)setBannerText:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SKUIIPadProductPageViewController

- (id)_initSKUIIPadProductPageViewController
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPadProductPageViewController _initSKUIIPadProductPageViewController];
  }

  v8.receiver = self;
  v8.super_class = SKUIIPadProductPageViewController;
  v3 = [(SKUIIPadProductPageViewController *)&v8 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v3->_operationQueue;
    v3->_operationQueue = v4;

    [(NSOperationQueue *)v3->_operationQueue setMaxConcurrentOperationCount:4];
    v3->_defaultSelectedSectionIndex = 0;
    v3->_selectedSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel__metricsEnterEventNotification_ name:@"SKUIMetricsDidRecordEnterEventNotification" object:0];
  }

  return v3;
}

- (SKUIIPadProductPageViewController)initWithItem:(id)a3
{
  v5 = a3;
  v6 = [(SKUIIPadProductPageViewController *)self _initSKUIIPadProductPageViewController];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 133, a3);
    v7->_lookupItemIdentifier = [v5 itemIdentifier];
    v8 = [v5 productPageURLString];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CBABA0]);
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
      v11 = [v9 initWithURL:v10];
      urlRequest = v7->_urlRequest;
      v7->_urlRequest = v11;
    }
  }

  return v7;
}

- (SKUIIPadProductPageViewController)initWithItemIdentifier:(int64_t)a3
{
  result = [(SKUIIPadProductPageViewController *)self _initSKUIIPadProductPageViewController];
  if (result)
  {
    result->_lookupItemIdentifier = a3;
  }

  return result;
}

- (SKUIIPadProductPageViewController)initWithProductPage:(id)a3
{
  v5 = a3;
  v6 = [v5 item];
  v7 = [(SKUIIPadProductPageViewController *)self initWithItem:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_productPage, a3);
    [(SKUIIPadProductPageViewController *)v7 _setDefaultSectionIndexWithFragment:[(SKUIProductPage *)v7->_productPage defaultPageFragment]];
  }

  return v7;
}

- (SKUIIPadProductPageViewController)initWithURL:(id)a3
{
  v4 = [MEMORY[0x277CBABA0] requestWithURL:a3];
  v5 = [(SKUIIPadProductPageViewController *)self initWithURLRequest:v4];

  return v5;
}

- (SKUIIPadProductPageViewController)initWithURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(SKUIIPadProductPageViewController *)self _initSKUIIPadProductPageViewController];
  if (v5)
  {
    v6 = [v4 copy];
    urlRequest = v5->_urlRequest;
    v5->_urlRequest = v6;

    v8 = [v4 URL];
    [(SKUIIPadProductPageViewController *)v5 _setDefaultSectionIndexWithFragment:SKUIProductPageFragmentWithURL(v8)];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SKUIMetricsDidRecordEnterEventNotification" object:0];
  [(SKUIProductPageHeaderViewController *)self->_headerViewController setDelegate:0];
  [(SKUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:0];
  [(SKUISwooshArrayViewController *)self->_relatedViewController setDelegate:0];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];

  v4.receiver = self;
  v4.super_class = SKUIIPadProductPageViewController;
  [(SKUIIPadProductPageViewController *)&v4 dealloc];
}

- (void)configureMetricsWithPageEvent:(id)a3
{
  v4 = a3;
  metricsController = self->_metricsController;
  if (metricsController)
  {
    [(SKUIMetricsController *)metricsController recordEvent:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [(SKUIIPadProductPageViewController *)self clientContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__SKUIIPadProductPageViewController_configureMetricsWithPageEvent___block_invoke;
    v7[3] = &unk_2781FE488;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v6 getDefaultMetricsControllerWithCompletionBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __67__SKUIIPadProductPageViewController_configureMetricsWithPageEvent___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setMetricsController:v5];

  v4 = [*(a1 + 32) pageURL];
  [v5 setPageURL:v4];

  [v5 recordEvent:*(a1 + 32)];
}

- (void)reloadData
{
  objc_initWeak(&location, self);
  if (!self->_metricsController)
  {
    clientContext = self->_clientContext;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SKUIIPadProductPageViewController_reloadData__block_invoke;
    v10[3] = &unk_2781FB478;
    objc_copyWeak(&v11, &location);
    [(SKUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:v10];
    objc_destroyWeak(&v11);
  }

  if (!self->_productPage && !self->_loadOperation)
  {
    if (self->_urlRequest)
    {
      v4 = [[SKUILoadProductPageOperation alloc] initWithProductPageURLRequest:self->_urlRequest clientContext:self->_clientContext];
    }

    else
    {
      if (!self->_lookupItemIdentifier)
      {
        goto LABEL_10;
      }

      v4 = [[SKUILoadProductPageOperation alloc] initWithItemIdentifier:self->_lookupItemIdentifier clientContext:self->_clientContext];
    }

    loadOperation = self->_loadOperation;
    self->_loadOperation = v4;

LABEL_10:
    v6 = self->_loadOperation;
    if (v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__SKUIIPadProductPageViewController_reloadData__block_invoke_2;
      v8[3] = &unk_2781FE4B0;
      objc_copyWeak(&v9, &location);
      [(SKUILoadProductPageOperation *)v6 setOutputBlock:v8];
      [(NSOperationQueue *)self->_operationQueue addOperation:self->_loadOperation];
      lastPageEvent = self->_lastPageEvent;
      self->_lastPageEvent = 0;

      objc_destroyWeak(&v9);
    }
  }

  objc_destroyWeak(&location);
}

void __47__SKUIIPadProductPageViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMetricsController:v3];
}

void __47__SKUIIPadProductPageViewController_reloadData__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SKUIIPadProductPageViewController_reloadData__block_invoke_3;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __47__SKUIIPadProductPageViewController_reloadData__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setProductPage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)setAskPermission:(BOOL)a3
{
  if (self->_askPermission != a3)
  {
    self->_askPermission = a3;
    [(SKUIProductPageDetailsViewController *)self->_detailsViewController setAskPermission:?];
    [(SKUIProductPageReviewsViewController *)self->_reviewsViewController setAskPermission:self->_askPermission];
    [(SKUISwooshArrayViewController *)self->_relatedViewController setAskPermission:self->_askPermission];
    headerViewController = self->_headerViewController;
    askPermission = self->_askPermission;

    [(SKUIProductPageHeaderViewController *)headerViewController setAskPermission:askPermission];
  }
}

- (void)setBannerText:(id)a3
{
  v5 = a3;
  if (self->_bannerText != v5)
  {
    objc_storeStrong(&self->_bannerText, a3);
    if (self->_bannerText)
    {
      [(SKUIIPadProductPageViewController *)self _showBanner];
    }
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  metricsController = self->_metricsController;
  v6 = SKUIMetricsWindowOrientationForInterfaceOrientation([(SKUIIPadProductPageViewController *)self interfaceOrientation]);
  [(SKUIMetricsController *)metricsController setWindowOrientation:v6];

  v7.receiver = self;
  v7.super_class = SKUIIPadProductPageViewController;
  [(SKUIIPadProductPageViewController *)&v7 didRotateFromInterfaceOrientation:a3];
}

- (void)loadView
{
  overlayView = self->_overlayView;
  if (!overlayView)
  {
    v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 630.0, 630.0}];
    v5 = self->_overlayView;
    self->_overlayView = v4;

    v6 = self->_overlayView;
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v6 setBackgroundColor:v7];

    overlayView = self->_overlayView;
  }

  [(SKUIIPadProductPageViewController *)self setView:overlayView];
}

- (void)viewDidLayoutSubviews
{
  if (self->_productPage && self->_selectedSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SKUIIPadProductPageViewController *)self _selectSectionIndex:self->_defaultSelectedSectionIndex];
    v3 = [(SKUIIPadProductPageViewController *)self _reviewsViewController];
    [v3 reloadData];
  }

  v4.receiver = self;
  v4.super_class = SKUIIPadProductPageViewController;
  [(SKUIIPadProductPageViewController *)&v4 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  item = self->_item;
  if (item && !SKUIItemKindIsSoftwareKind([(SKUIItem *)item itemKind]))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SKUIIPadProductPageViewController_viewWillAppear___block_invoke;
    block[3] = &unk_2781F80F0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (self->_metricsController)
  {
    lastPageEvent = self->_lastPageEvent;
    if (lastPageEvent)
    {
      v7 = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:v7];

      [(SKUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    }
  }

  [(SKUIIPadProductPageViewController *)self reloadData];
  [(SKUIIPadProductPageViewController *)self _reloadHeaderViewController];
  [(SKUIProductPageHeaderViewController *)self->_headerViewController reloadData];
  v8.receiver = self;
  v8.super_class = SKUIIPadProductPageViewController;
  [(SKUIIPadProductPageViewController *)&v8 viewWillAppear:v3];
}

- (void)networkErrorViewControllerInvalidated:(id)a3
{
  v4 = a3;
  networkErrorViewController = self->_networkErrorViewController;
  if (networkErrorViewController)
  {
    v8 = v4;
    v6 = [networkErrorViewController view];
    [v6 removeFromSuperview];

    [(SKUINetworkErrorViewController *)self->_networkErrorViewController removeFromParentViewController];
    [(SKUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:0];
    v7 = self->_networkErrorViewController;
    self->_networkErrorViewController = 0;

    networkErrorViewController = SKUIViewControllerIsVisible(self);
    v4 = v8;
    if (networkErrorViewController)
    {
      self->_selectedSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
      networkErrorViewController = [(SKUIIPadProductPageViewController *)self reloadData];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](networkErrorViewController, v4);
}

- (void)productPageHeaderView:(id)a3 didSelectURL:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SKUIIPadProductPageViewController_productPageHeaderView_didSelectURL___block_invoke;
  v7[3] = &unk_2781FE4D8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(SKUIIPadProductPageViewController *)self productPageChildOpenURL:v6 viewControllerBlock:v7];
}

SKUIStorePageViewController *__72__SKUIIPadProductPageViewController_productPageHeaderView_didSelectURL___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SKUIStorePageViewController);
  v3 = [*(a1 + 32) clientContext];
  [(SKUIStorePageViewController *)v2 setClientContext:v3];

  v4 = [*(*(a1 + 32) + 1144) item];
  v5 = [v4 artistName];
  [(SKUIStorePageViewController *)v2 setTitle:v5];

  [(SKUIStorePageViewController *)v2 loadURL:*(a1 + 40) withCompletionBlock:0];

  return v2;
}

- (void)productPageChildOpenItem:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 iPadProductPage:self openItem:v7];
  }
}

- (void)productPageChildOpenURL:(id)a3 viewControllerBlock:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 iPadProductPage:self openURL:v10 viewControllerBlock:v6];
  }
}

- (CGPoint)topContentOffset
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)askPermissionBannerDidSelect:(id)a3
{
  if (!self->_bannerText)
  {
    v5 = SKUIAskPermissionFramework();
    v6 = SKUIWeakLinkedClassForString(&cfstr_Prrequestqueue.isa, v5);
    v7 = SKUIAskPermissionFramework();
    v8 = *SKUIWeakLinkedSymbolForString("kPRRequestQueueiTunesStoreIdentifier", v7);
    v10 = [v6 _requestQueueForIdentifier:v8];
    v9 = [(SKUIItem *)self->_item itemIdentifier];

    [v10 _attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:v9 completionHandler:0];
  }
}

- (void)_metricsEnterEventNotification:(id)a3
{
  if (SKUIViewControllerIsVisible(self))
  {
    lastPageEvent = self->_lastPageEvent;
    if (lastPageEvent)
    {
      v5 = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:v5];

      metricsController = self->_metricsController;
      v7 = self->_lastPageEvent;

      [(SKUIMetricsController *)metricsController recordEvent:v7];
    }
  }
}

- (id)_detailsViewController
{
  detailsViewController = self->_detailsViewController;
  if (!detailsViewController)
  {
    v4 = [[SKUIProductPageDetailsViewController alloc] initWithProductPage:self->_productPage];
    v5 = self->_detailsViewController;
    self->_detailsViewController = v4;

    v6 = self->_detailsViewController;
    v7 = [(SKUIIPadProductPageViewController *)self clientContext];
    [(SKUIProductPageDetailsViewController *)v6 setClientContext:v7];

    [(SKUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:self];
    [(SKUIProductPageDetailsViewController *)self->_detailsViewController setOperationQueue:self->_operationQueue];
    [(SKUIProductPageDetailsViewController *)self->_detailsViewController setAskPermission:self->_askPermission];
    detailsViewController = self->_detailsViewController;
  }

  return detailsViewController;
}

- (BOOL)_isIncompatibleItem
{
  v3 = [(SKUIProductPage *)self->_productPage item];
  item = v3;
  if (!v3)
  {
    item = self->_item;
  }

  v5 = item;

  v6 = [(SKUIItem *)v5 itemKind];
  return v6 == 5;
}

- (id)_placeholderViewController
{
  placeholderViewController = self->_placeholderViewController;
  if (!placeholderViewController)
  {
    v4 = objc_alloc_init(SKUIProductPagePlaceholderViewController);
    v5 = self->_placeholderViewController;
    self->_placeholderViewController = v4;

    v6 = self->_placeholderViewController;
    v7 = [(SKUIProductPage *)self->_productPage uber];
    v8 = [v7 colorScheme];
    [(SKUIProductPagePlaceholderViewController *)v6 setColorScheme:v8];

    [(SKUIProductPagePlaceholderViewController *)self->_placeholderViewController setClientContext:self->_clientContext];
    placeholderViewController = self->_placeholderViewController;
  }

  return placeholderViewController;
}

- (id)_relatedViewController
{
  relatedViewController = self->_relatedViewController;
  if (!relatedViewController)
  {
    v4 = [SKUISwooshArrayViewController alloc];
    v5 = [(SKUIProductPage *)self->_productPage relatedContentSwooshes];
    v6 = [(SKUISwooshArrayViewController *)v4 initWithSwooshComponents:v5];
    v7 = self->_relatedViewController;
    self->_relatedViewController = v6;

    [(SKUISwooshArrayViewController *)self->_relatedViewController setClientContext:self->_clientContext];
    v8 = self->_relatedViewController;
    v9 = [(SKUIProductPage *)self->_productPage uber];
    v10 = [v9 colorScheme];
    [(SKUISwooshArrayViewController *)v8 setColorScheme:v10];

    [(SKUISwooshArrayViewController *)self->_relatedViewController setDelegate:self];
    [(SKUISwooshArrayViewController *)self->_relatedViewController setOperationQueue:self->_operationQueue];
    [(SKUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    [(SKUISwooshArrayViewController *)self->_relatedViewController setAskPermission:self->_askPermission];
    relatedViewController = self->_relatedViewController;
  }

  return relatedViewController;
}

- (void)_reloadHeaderViewController
{
  headerViewController = self->_headerViewController;
  if (headerViewController || self->_item && (v15 = [[SKUIProductPageHeaderViewController alloc] initWithItem:self->_item], v16 = self->_headerViewController, self->_headerViewController = v15, v16, v17 = self->_headerViewController, [(SKUIIPadProductPageViewController *)self clientContext], v18 = objc_claimAutoreleasedReturnValue(), [(SKUIProductPageHeaderViewController *)v17 setClientContext:v18], v18, [(SKUIProductPageHeaderViewController *)self->_headerViewController setDelegate:self], [(SKUIProductPageHeaderViewController *)self->_headerViewController setOperationQueue:self->_operationQueue], [(SKUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage], [(SKUIProductPageHeaderViewController *)self->_headerViewController setSelectedSectionIndex:self->_defaultSelectedSectionIndex], [(SKUIProductPageHeaderViewController *)self->_headerViewController setAskPermission:self->_askPermission], [(SKUIIPadProductPageViewController *)self addChildViewController:self->_headerViewController], (headerViewController = self->_headerViewController) != 0))
  {
    v19 = [(SKUIProductPageHeaderViewController *)headerViewController view];
    [v19 frame];
    v5 = v4;
    v7 = v6;
    [(SKUIMessageBanner *)self->_banner frame];
    v9 = v8;
    [v19 setFrame:{v5, v8, 630.0, v7}];
    [(UIView *)self->_overlayView addSubview:v19];
    v10 = [(SKUIProductPageHeaderViewController *)self->_headerViewController floatingView];
    [v10 sizeToFit];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v21.origin.x = v5;
    v21.origin.y = v9;
    v21.size.width = 630.0;
    v21.size.height = v7;
    [v10 setFrame:{v12, CGRectGetMaxY(v21), 630.0, v14}];
    [(UIView *)self->_overlayView addSubview:v10];
  }
}

- (id)_reviewsViewController
{
  reviewsViewController = self->_reviewsViewController;
  if (!reviewsViewController)
  {
    v4 = [[SKUIProductPageReviewsViewController alloc] initWithProductPage:self->_productPage];
    v5 = self->_reviewsViewController;
    self->_reviewsViewController = v4;

    [(SKUIProductPageReviewsViewController *)self->_reviewsViewController setClientContext:self->_clientContext];
    [(SKUIProductPageReviewsViewController *)self->_reviewsViewController setAskPermission:self->_askPermission];
    reviewsViewController = self->_reviewsViewController;
  }

  return reviewsViewController;
}

- (void)_selectSectionIndex:(int64_t)a3
{
  if (self->_selectedSectionIndex != a3)
  {
    v7 = [(SKUIIPadProductPageViewController *)self _viewControllerForSectionIndex:?];
    if ([v7 isViewLoaded])
    {
      v5 = [v7 view];
      [v5 removeFromSuperview];
    }

    [v7 removeFromParentViewController];
    self->_selectedSectionIndex = a3;
    v6 = [(SKUIIPadProductPageViewController *)self _viewControllerForSectionIndex:a3];
    if (v6)
    {
      [(SKUIIPadProductPageViewController *)self addChildViewController:v6];
      [(SKUIIPadProductPageViewController *)self _showViewController:v6];
    }
  }
}

- (void)_sendCannotOpen
{
  if (!self->_didSendCannotOpen)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      self->_didSendCannotOpen = 1;
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 iPadProductPageCannotOpen:self];
    }
  }
}

- (void)_setDefaultSectionIndexWithFragment:(int64_t)a3
{
  if (a3 <= 2)
  {
    self->_defaultSelectedSectionIndex = a3;
  }
}

- (void)_setMetricsController:(id)a3
{
  v5 = a3;
  if (!self->_metricsController)
  {
    v20 = v5;
    v6 = [(SKUIProductPage *)self->_productPage metricsConfiguration];
    objc_storeStrong(&self->_metricsController, a3);
    metricsController = self->_metricsController;
    v8 = [(SKUIClientContext *)self->_clientContext clientInterface];
    v9 = [v8 clientIdentifier];
    [(SKUIMetricsController *)metricsController setApplicationIdentifier:v9];

    [(SKUIMetricsController *)self->_metricsController setPageConfiguration:v6];
    v10 = self->_metricsController;
    v11 = [(SKUIClientContext *)self->_clientContext metricsPageContextForViewController:self];
    [(SKUIMetricsController *)v10 setPageContext:v11];

    v12 = self->_metricsController;
    v13 = [(SKUIProductPage *)self->_productPage pageURL];
    v14 = [v13 absoluteString];
    [(SKUIMetricsController *)v12 setPageURL:v14];

    v15 = self->_metricsController;
    v16 = [MEMORY[0x277D75128] sharedApplication];
    v17 = SKUIMetricsWindowOrientationForInterfaceOrientation([v16 statusBarOrientation]);
    [(SKUIMetricsController *)v15 setWindowOrientation:v17];

    [(SKUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    v18 = self->_metricsController;
    v19 = [v6 pingURLs];
    [(SKUIMetricsController *)v18 pingURLs:v19 withClientContext:self->_clientContext];

    [(SKUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    v5 = v20;
  }
}

- (void)_setProductPage:(id)a3 error:(id)a4
{
  v25 = a3;
  v7 = a4;
  v8 = [v25 ITMLData];

  if (v8)
  {
    v9 = [(SKUIIPadProductPageViewController *)self clientContext];
    v10 = [v25 ITMLData];
    v11 = [v25 ITMLResponse];
    [v9 sendOnPageResponseWithDocument:0 data:v10 URLResponse:v11 performanceMetrics:0];
  }

  else
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    objc_storeStrong(&self->_productPage, a3);
    v9 = [(SKUIProductPage *)self->_productPage metricsConfiguration];
    [(SKUIMetricsController *)self->_metricsController setPageConfiguration:v9];
    metricsController = self->_metricsController;
    v13 = [(SKUIProductPage *)self->_productPage pageURL];
    v14 = [v13 absoluteString];
    [(SKUIMetricsController *)metricsController setPageURL:v14];

    if (!self->_item)
    {
      v15 = [v25 item];
      item = self->_item;
      self->_item = v15;

      [(SKUIIPadProductPageViewController *)self _reloadHeaderViewController];
    }

    [(SKUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage];
    if (self->_selectedSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SKUIIPadProductPageViewController *)self _selectSectionIndex:self->_defaultSelectedSectionIndex];
    }

    v17 = [(SKUIProductPage *)self->_productPage uber];
    v10 = [v17 colorScheme];

    [(SKUIProductPagePlaceholderViewController *)self->_placeholderViewController setColorScheme:v10];
    [(SKUISwooshArrayViewController *)self->_relatedViewController setColorScheme:v10];
    v18 = [(SKUIIPadProductPageViewController *)self _reviewsViewController];
    [v18 reloadData];

    [(SKUIProductPageHeaderViewController *)self->_headerViewController reloadData];
    v11 = [(SKUILoadProductPageOperation *)self->_loadOperation metricsPageEvent];
    if (v11)
    {
      v19 = [MEMORY[0x277CBEAA8] date];
      [v19 timeIntervalSince1970];
      [v11 setPageRenderTime:?];

      [(SKUIMetricsController *)self->_metricsController recordEvent:v11];
      objc_storeStrong(&self->_lastPageEvent, v11);
    }

    v20 = self->_metricsController;
    v21 = [v9 pingURLs];
    [(SKUIMetricsController *)v20 pingURLs:v21 withClientContext:self->_clientContext];
  }

LABEL_12:
  if (!v7)
  {
    goto LABEL_18;
  }

  v22 = [v7 domain];
  if ([v22 isEqualToString:@"SKUIErrorDomain"])
  {
    v23 = [v7 code];

    if (v23 == 1)
    {
      [(SKUIIPadProductPageViewController *)self _sendCannotOpen];
      goto LABEL_18;
    }
  }

  else
  {
  }

  [(SKUIIPadProductPageViewController *)self _showError:v7];
LABEL_18:
  [(SKUILoadProductPageOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;
}

- (void)_showError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_networkErrorViewController)
  {
    v8 = v4;
    v4 = [SKUINetworkErrorViewController canDisplayError:v4];
    v5 = v8;
    if (v4)
    {
      v6 = [[SKUINetworkErrorViewController alloc] initWithError:v8];
      networkErrorViewController = self->_networkErrorViewController;
      self->_networkErrorViewController = v6;

      [(SKUINetworkErrorViewController *)self->_networkErrorViewController setClientContext:self->_clientContext];
      [(SKUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:self];
      [(SKUIIPadProductPageViewController *)self addChildViewController:self->_networkErrorViewController];
      v4 = [(SKUIIPadProductPageViewController *)self _showViewController:self->_networkErrorViewController];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_showIncompatibleView
{
  incompatibleViewController = self->_incompatibleViewController;
  if (!incompatibleViewController)
  {
    v4 = [SKUIIncompatibleAppViewController alloc];
    v5 = [(SKUIProductPage *)self->_productPage item];
    v6 = [(SKUIIncompatibleAppViewController *)v4 initWithIncompatibleItem:v5];
    v7 = self->_incompatibleViewController;
    self->_incompatibleViewController = v6;

    [(SKUIViewController *)self->_incompatibleViewController setClientContext:self->_clientContext];
    [(SKUIIncompatibleAppViewController *)self->_incompatibleViewController setOperationQueue:self->_operationQueue];
    [(SKUIIPadProductPageViewController *)self addChildViewController:self->_incompatibleViewController];
    v8 = [(SKUIIncompatibleAppViewController *)self->_incompatibleViewController view];
    [v8 setAutoresizingMask:18];
    [(UIView *)self->_overlayView bounds];
    [v8 setFrame:?];
    [(UIView *)self->_overlayView addSubview:v8];

    incompatibleViewController = self->_incompatibleViewController;
  }

  overlayView = self->_overlayView;
  v10 = [(SKUIIncompatibleAppViewController *)incompatibleViewController view];
  [(UIView *)overlayView bringSubviewToFront:v10];
}

- (void)_showBanner
{
  if (!self->_banner)
  {
    v3 = objc_alloc_init(SKUIMessageBanner);
    banner = self->_banner;
    self->_banner = v3;

    [(SKUIMessageBanner *)self->_banner setDelegate:self];
    v5 = self->_banner;
    if (self->_bannerText)
    {
      [(SKUIMessageBanner *)self->_banner setMessage:?];
    }

    else
    {
      v6 = [(SKUIIPadProductPageViewController *)self clientContext];
      v7 = [(SKUIIPadProductPageViewController *)self view];
      v8 = [v7 tintColor];
      v9 = SKUIMessageBannerAttributedString(v6, v8);
      [(SKUIMessageBanner *)v5 setAttributedMessage:v9];
    }

    v10 = [(SKUIIPadProductPageViewController *)self view];
    [v10 addSubview:self->_banner];

    v11 = [(SKUIIPadProductPageViewController *)self view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;

    [(SKUIMessageBanner *)self->_banner sizeThatFits:630.0, 630.0];
    [(SKUIMessageBanner *)self->_banner setFrame:v13, v15, v16, v17];
    v18 = [(SKUIIPadProductPageViewController *)self _viewControllerForSectionIndex:self->_selectedSectionIndex];
    [(SKUIIPadProductPageViewController *)self _showViewController:v18];
  }
}

- (void)_showViewController:(id)a3
{
  v4 = a3;
  [(SKUIIPadProductPageViewController *)self _reloadHeaderViewController];
  v7 = [v4 view];

  [(SKUIMessageBanner *)self->_banner frame];
  v5 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [v5 frame];
  v6 = [(SKUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [v6 frame];

  [(UIView *)self->_overlayView bounds];
  [v7 setFrame:?];
  [(UIView *)self->_overlayView insertSubview:v7 atIndex:0];
  if ([(SKUIIPadProductPageViewController *)self _isIncompatibleItem])
  {
    [(SKUIIPadProductPageViewController *)self _showIncompatibleView];
  }
}

- (id)_viewControllerForSectionIndex:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [(SKUIProductPage *)self->_productPage relatedContentSwooshes];
    v6 = [v5 count];

    if (v6)
    {
      [(SKUIIPadProductPageViewController *)self _relatedViewController];
    }

    else
    {
      [(SKUIIPadProductPageViewController *)self _placeholderViewController];
    }
    v4 = ;
  }

  else if (a3 == 1)
  {
    v4 = [(SKUIIPadProductPageViewController *)self _reviewsViewController];
  }

  else if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SKUIIPadProductPageViewController *)self _detailsViewController];
  }

  return v4;
}

- (SKUIIPadProductPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_initSKUIIPadProductPageViewController
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPadProductPageViewController _initSKUIIPadProductPageViewController]";
}

@end