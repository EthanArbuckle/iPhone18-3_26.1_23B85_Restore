@interface SKUIIPhoneProductPageViewController
- (BOOL)_isIncompatibleItem;
- (CGPoint)topContentOffset;
- (SKUIIPhoneProductPageDelegate)delegate;
- (SKUIIPhoneProductPageViewController)initWithItem:(id)a3;
- (SKUIIPhoneProductPageViewController)initWithItemIdentifier:(int64_t)a3;
- (SKUIIPhoneProductPageViewController)initWithProductPage:(id)a3;
- (SKUIIPhoneProductPageViewController)initWithURL:(id)a3;
- (SKUIIPhoneProductPageViewController)initWithURLRequest:(id)a3;
- (id)_detailsViewController;
- (id)_headerViewController;
- (id)_initSKUIIPhoneProductPageViewController;
- (id)_loadingViewController;
- (id)_relatedPlaceholderViewController;
- (id)_relatedViewController;
- (id)_reviewsViewController;
- (id)_viewControllerForSectionIndex:(unint64_t)a3;
- (void)_animateAddToWishlist;
- (void)_hideBanner;
- (void)_initSKUIIPhoneProductPageViewController;
- (void)_invalidateChildViewControllers;
- (void)_metricsEnterEventNotification:(id)a3;
- (void)_presentHTMLProductPage;
- (void)_reloadChildViewControllers;
- (void)_setContentInsetsForChildViewController:(id)a3;
- (void)_setHeaderPositionForChildViewController:(id)a3;
- (void)_setMetricsController:(id)a3;
- (void)_setProductPage:(id)a3 error:(id)a4;
- (void)_setSectionIndexWithFragment:(int64_t)a3;
- (void)_shareButtonAction:(id)a3;
- (void)_showActivityViewController;
- (void)_showBanner;
- (void)_showError:(id)a3;
- (void)askPermissionBannerDidSelect:(id)a3;
- (void)configureMetricsWithPageEvent:(id)a3;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)loadView;
- (void)networkErrorViewControllerInvalidated:(id)a3;
- (void)productPageChildOpenItem:(id)a3;
- (void)productPageChildOpenURL:(id)a3 viewControllerBlock:(id)a4;
- (void)productPageChildViewControllerDidScroll:(id)a3;
- (void)productPageHeaderView:(id)a3 didReloadItemOffer:(id)a4;
- (void)productPageHeaderView:(id)a3 didSelectSectionIndex:(int64_t)a4;
- (void)productPageHeaderView:(id)a3 didSelectURL:(id)a4;
- (void)productViewControllerDidFinish:(id)a3;
- (void)reloadData;
- (void)setAskPermission:(BOOL)a3;
- (void)setBannerText:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SKUIIPhoneProductPageViewController

- (id)_initSKUIIPhoneProductPageViewController
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPhoneProductPageViewController _initSKUIIPhoneProductPageViewController];
  }

  v9.receiver = self;
  v9.super_class = SKUIIPhoneProductPageViewController;
  v3 = [(SKUIIPhoneProductPageViewController *)&v9 init];
  p_isa = &v3->super.super.super.super.isa;
  if (v3)
  {
    v3->_sectionIndex = 0;
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v6 = p_isa[148];
    p_isa[148] = v5;

    [p_isa[148] setMaxConcurrentOperationCount:6];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:p_isa selector:sel__metricsEnterEventNotification_ name:@"SKUIMetricsDidRecordEnterEventNotification" object:0];
  }

  return p_isa;
}

- (SKUIIPhoneProductPageViewController)initWithItem:(id)a3
{
  v5 = a3;
  v6 = [(SKUIIPhoneProductPageViewController *)self _initSKUIIPhoneProductPageViewController];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 142, a3);
    v7[146] = [v7[142] itemIdentifier];
    v8 = [v5 productPageURLString];
    if (v8)
    {
      v9 = MEMORY[0x277CBABA0];
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
      v11 = [v9 requestWithURL:v10];
      v12 = v7[154];
      v7[154] = v11;
    }

    v13 = [v7[142] itemKind];
    if (v13 != 5 && !SKUIItemKindIsSoftwareKind(v13))
    {
      v16 = objc_alloc_init(SKUIDismissingProductViewController);
      v17 = [v7[154] URL];
      [(SKStoreProductViewController *)v16 loadProductWithURL:v17 completionBlock:0];

      v18 = [MEMORY[0x277D75128] sharedApplication];
      v19 = [v18 keyWindow];
      v20 = [v19 rootViewController];
      [v20 presentViewController:v16 animated:1 completion:0];

      v14 = 0;
      goto LABEL_8;
    }
  }

  v14 = v7;
LABEL_8:

  return v14;
}

- (SKUIIPhoneProductPageViewController)initWithItemIdentifier:(int64_t)a3
{
  result = [(SKUIIPhoneProductPageViewController *)self _initSKUIIPhoneProductPageViewController];
  if (result)
  {
    result->_lookupItemIdentifier = a3;
  }

  return result;
}

- (SKUIIPhoneProductPageViewController)initWithProductPage:(id)a3
{
  v5 = a3;
  v6 = [v5 item];
  v7 = [(SKUIIPhoneProductPageViewController *)self initWithItem:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_productPage, a3);
    -[SKUIIPhoneProductPageViewController _setSectionIndexWithFragment:](v7, "_setSectionIndexWithFragment:", [v5 defaultPageFragment]);
  }

  return v7;
}

- (SKUIIPhoneProductPageViewController)initWithURL:(id)a3
{
  v4 = [MEMORY[0x277CBABA0] requestWithURL:a3];
  v5 = [(SKUIIPhoneProductPageViewController *)self initWithURLRequest:v4];

  return v5;
}

- (SKUIIPhoneProductPageViewController)initWithURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(SKUIIPhoneProductPageViewController *)self _initSKUIIPhoneProductPageViewController];
  if (v5)
  {
    v6 = [v4 URL];
    [(SKUIIPhoneProductPageViewController *)v5 _setSectionIndexWithFragment:SKUIProductPageFragmentWithURL(v6)];

    v7 = [v4 copy];
    urlRequest = v5->_urlRequest;
    v5->_urlRequest = v7;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SKUIMetricsDidRecordEnterEventNotification" object:0];
  [(SKUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:0];
  [(SKUINetworkErrorViewController *)self->_errorViewController setDelegate:0];
  [(SKUIIncompatibleAppViewController *)self->_incompatibleViewController setDelegate:0];
  [(SKUIProductPagePlaceholderViewController *)self->_relatedPlaceholderViewController setDelegate:0];
  [(SKUIProductPagePlaceholderViewController *)self->_loadingViewController setDelegate:0];
  [(SKUISwooshArrayViewController *)self->_relatedViewController setDelegate:0];
  [(SKUIProductPageReviewsViewController *)self->_reviewsViewController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIIPhoneProductPageViewController;
  [(SKUIViewController *)&v4 dealloc];
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
      [(SKUIIPhoneProductPageViewController *)self _showBanner];
    }
  }
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
    v6 = [(SKUIViewController *)self clientContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__SKUIIPhoneProductPageViewController_configureMetricsWithPageEvent___block_invoke;
    v7[3] = &unk_2781FE488;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v6 getDefaultMetricsControllerWithCompletionBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __69__SKUIIPhoneProductPageViewController_configureMetricsWithPageEvent___block_invoke(uint64_t a1, void *a2)
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
  v3 = [(SKUIViewController *)self clientContext];
  objc_initWeak(&location, self);
  if (!self->_metricsController)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__SKUIIPhoneProductPageViewController_reloadData__block_invoke;
    v10[3] = &unk_2781FB478;
    objc_copyWeak(&v11, &location);
    [v3 getDefaultMetricsControllerWithCompletionBlock:v10];
    objc_destroyWeak(&v11);
  }

  if (!self->_productPage && !self->_loadOperation)
  {
    if (self->_urlRequest)
    {
      v4 = [[SKUILoadProductPageOperation alloc] initWithProductPageURLRequest:self->_urlRequest clientContext:v3];
    }

    else
    {
      if (!self->_lookupItemIdentifier)
      {
        goto LABEL_10;
      }

      v4 = [[SKUILoadProductPageOperation alloc] initWithItemIdentifier:self->_lookupItemIdentifier clientContext:v3];
    }

    loadOperation = self->_loadOperation;
    self->_loadOperation = v4;

LABEL_10:
    v6 = self->_loadOperation;
    if (v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__SKUIIPhoneProductPageViewController_reloadData__block_invoke_2;
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

void __49__SKUIIPhoneProductPageViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMetricsController:v3];
}

void __49__SKUIIPhoneProductPageViewController_reloadData__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SKUIIPhoneProductPageViewController_reloadData__block_invoke_3;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __49__SKUIIPhoneProductPageViewController_reloadData__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setProductPage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  metricsController = self->_metricsController;
  v6 = SKUIMetricsWindowOrientationForInterfaceOrientation([(SKUIIPhoneProductPageViewController *)self interfaceOrientation]);
  [(SKUIMetricsController *)metricsController setWindowOrientation:v6];

  v7.receiver = self;
  v7.super_class = SKUIIPhoneProductPageViewController;
  [(SKUIIPhoneProductPageViewController *)&v7 didRotateFromInterfaceOrientation:a3];
}

- (void)loadView
{
  v10 = objc_alloc_init(SKUIIPhoneProductPageView);
  [(SKUIIPhoneProductPageViewController *)self setView:?];
  [(SKUIViewController *)self showDefaultNavigationItems];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel__shareButtonAction_];
  [v3 setImageInsets:{-3.0, 0.0, 3.0, 0.0}];
  v4 = [(SKUIIPhoneProductPageViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItems];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  v9 = v8;

  [v9 addObject:v3];
  [v4 setRightBarButtonItems:v9];
}

- (void)viewDidLayoutSubviews
{
  if (!self->_childViewController)
  {
    [(SKUIIPhoneProductPageViewController *)self _reloadChildViewControllers];
    [(SKUIProductPageHeaderViewController *)self->_headerViewController reloadData];
  }

  v3.receiver = self;
  v3.super_class = SKUIIPhoneProductPageViewController;
  [(SKUIIPhoneProductPageViewController *)&v3 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (self->_metricsController)
  {
    lastPageEvent = self->_lastPageEvent;
    if (lastPageEvent)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:v6];

      [(SKUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    }
  }

  [(SKUIIPhoneProductPageViewController *)self reloadData];
  v7.receiver = self;
  v7.super_class = SKUIIPhoneProductPageViewController;
  [(SKUIViewController *)&v7 viewWillAppear:v3];
}

- (void)networkErrorViewControllerInvalidated:(id)a3
{
  v4 = a3;
  errorViewController = self->_errorViewController;
  if (errorViewController)
  {
    v9 = v4;
    childViewController = self->_childViewController;
    if (errorViewController == childViewController)
    {
      self->_childViewController = 0;

      errorViewController = self->_errorViewController;
    }

    [(SKUINetworkErrorViewController *)errorViewController setDelegate:0];
    v7 = [(SKUINetworkErrorViewController *)self->_errorViewController view];
    [v7 removeFromSuperview];

    [(SKUINetworkErrorViewController *)self->_errorViewController removeFromParentViewController];
    v8 = self->_errorViewController;
    self->_errorViewController = 0;

    [(SKUIIPhoneProductPageViewController *)self _reloadChildViewControllers];
    errorViewController = [(SKUIIPhoneProductPageViewController *)self reloadData];
    v4 = v9;
  }

  MEMORY[0x2821F96F8](errorViewController, v4);
}

- (void)productPageHeaderView:(id)a3 didReloadItemOffer:(id)a4
{
  v17 = a3;
  v5 = [v17 isViewLoaded];
  v6 = v17;
  if (v5)
  {
    v7 = [v17 view];
    [v7 sizeToFit];

    v8 = [(SKUIProductPageChildViewController *)self->_childViewController scrollView];
    v9 = v8;
    if (v8)
    {
      [v8 contentOffset];
      v11 = v10;
      v13 = v12;
      [v9 contentInset];
      v15 = v14;
      [(SKUIIPhoneProductPageViewController *)self _setContentInsetsForChildViewController:self->_childViewController];
      [(SKUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:self->_childViewController];
      [v9 contentInset];
      [v9 setContentOffset:{v11, v13 + v15 - v16}];
    }

    v6 = v17;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)productPageHeaderView:(id)a3 didSelectSectionIndex:(int64_t)a4
{
  if (self->_sectionIndex != a4)
  {
    self->_sectionIndex = a4;
    [(SKUIIPhoneProductPageViewController *)self _reloadChildViewControllers];
  }
}

- (void)productPageHeaderView:(id)a3 didSelectURL:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SKUIIPhoneProductPageViewController_productPageHeaderView_didSelectURL___block_invoke;
  v7[3] = &unk_2781FE4D8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(SKUIIPhoneProductPageViewController *)self productPageChildOpenURL:v6 viewControllerBlock:v7];
}

SKUIStorePageViewController *__74__SKUIIPhoneProductPageViewController_productPageHeaderView_didSelectURL___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SKUIStorePageViewController);
  v3 = [*(a1 + 32) clientContext];
  [(SKUIStorePageViewController *)v2 setClientContext:v3];

  v4 = [*(*(a1 + 32) + 1200) item];
  v5 = [v4 artistName];
  [(SKUIStorePageViewController *)v2 setTitle:v5];

  [(SKUIStorePageViewController *)v2 loadURL:*(a1 + 40) withCompletionBlock:0];

  return v2;
}

- (void)askPermissionBannerDidSelect:(id)a3
{
  v4 = a3;
  if (!self->_bannerText)
  {
    objc_initWeak(&location, self);
    v5 = SKUIAskPermissionFramework();
    v6 = SKUIWeakLinkedClassForString(&cfstr_Prrequestqueue.isa, v5);
    v7 = SKUIAskPermissionFramework();
    v8 = *SKUIWeakLinkedSymbolForString("kPRRequestQueueiTunesStoreIdentifier", v7);
    v9 = [v6 _requestQueueForIdentifier:v8];
    v10 = [(SKUIItem *)self->_item itemIdentifier];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__SKUIIPhoneProductPageViewController_askPermissionBannerDidSelect___block_invoke;
    v11[3] = &unk_2781FE5E8;
    objc_copyWeak(&v12, &location);
    [v9 _attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:v10 completionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __68__SKUIIPhoneProductPageViewController_askPermissionBannerDidSelect___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__SKUIIPhoneProductPageViewController_askPermissionBannerDidSelect___block_invoke_2;
  v3[3] = &unk_2781FDE00;
  v5 = a3;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
}

void __68__SKUIIPhoneProductPageViewController_askPermissionBannerDidSelect___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _hideBanner];
  }
}

- (void)productPageChildOpenItem:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (v6 = objc_loadWeakRetained(&self->_delegate), v7 = [v6 iPhoneProductPage:self shouldOpenItem:v11], v6, v7))
  {
    v8 = [[SKUIIPhoneProductPageViewController alloc] initWithItem:v11];
    v9 = [(SKUIViewController *)self clientContext];
    [(SKUIViewController *)v8 setClientContext:v9];

    v10 = [(SKUIIPhoneProductPageViewController *)self navigationController];
    [v10 pushViewController:v8 animated:1];
  }
}

- (void)productPageChildOpenURL:(id)a3 viewControllerBlock:(id)a4
{
  v14 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (v9 = objc_loadWeakRetained(&self->_delegate), v10 = [v9 iPhoneProductPage:self shouldOpenURL:v14], v9, v10))
  {
    if (v6 && (v6[2](v6), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [(SKUIIPhoneProductPageViewController *)self navigationController];
      [v13 pushViewController:v12 animated:1];
    }

    else
    {
      SKUIMetricsOpenURL(v14);
    }
  }
}

- (void)productPageChildViewControllerDidScroll:(id)a3
{
  if (self->_childViewController == a3)
  {
    [(SKUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:?];
  }
}

- (CGPoint)topContentOffset
{
  v2 = self;
  [(SKUIMessageBanner *)self->_banner frame];
  v4 = v3;
  v5 = [v2 clientContext];
  v6 = SKUIUserInterfaceIdiom(v5);
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = (v8 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v10 = v6 != 1;
  if (v10 == v9)
  {
    v11 = 0.0;
  }

  else
  {
    v2 = [v2 navigationController];
    v6 = [v2 navigationBar];
    [v6 frame];
  }

  v12 = v10 ^ v9;
  v13 = v4 + v11;
  v14 = [MEMORY[0x277D75418] currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v16 = v13 + 0.0;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v17 = [MEMORY[0x277D75128] sharedApplication];
  [v17 statusBarFrame];
  v18 = 20.0;
  if (v19 == 0.0)
  {
    v18 = 0.0;
  }

  v16 = v13 + v18;

  if (v12)
  {
LABEL_10:
  }

LABEL_11:

  v20 = 0.0;
  v21 = -49.0 - v16;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)productViewControllerDidFinish:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [v4 setDelegate:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SKUIIPhoneProductPageViewController_productViewControllerDidFinish___block_invoke;
  v5[3] = &unk_2781F8320;
  objc_copyWeak(&v6, &location);
  [v4 dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __70__SKUIIPhoneProductPageViewController_productViewControllerDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  v4 = [v3 topViewController];
  v5 = objc_loadWeakRetained((a1 + 32));

  v6 = objc_loadWeakRetained((a1 + 32));
  v9 = v6;
  if (v4 == v5)
  {
    v7 = [v6 navigationController];
    v8 = [v7 popViewControllerAnimated:1];
  }

  else
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
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

- (void)_shareButtonAction:(id)a3
{
  if (self->_productPage)
  {
    self->_wantsActivityViewController = 0;
    [(SKUIIPhoneProductPageViewController *)self _showActivityViewController];
  }

  else
  {
    self->_wantsActivityViewController = 1;
  }
}

- (void)_animateAddToWishlist
{
  v8 = [(SKUIProductPageHeaderViewController *)self->_headerViewController iconImage];
  v3 = [(SKUIIPhoneProductPageViewController *)self navigationController];
  v4 = [v3 navigationBar];

  v5 = [SKUIAddToWishlistAnimation alloc];
  v6 = [(SKUIViewController *)self _wishlistButtonItem];
  v7 = [(SKUIAddToWishlistAnimation *)v5 initWithImage:v8 buttonItem:v6 navigationBar:v4];

  [(SKUIAddToWishlistAnimation *)v7 animateWithCompletionBlock:0];
}

- (id)_detailsViewController
{
  detailsViewController = self->_detailsViewController;
  if (!detailsViewController)
  {
    if (self->_productPage)
    {
      v4 = [[SKUIProductPageDetailsViewController alloc] initWithProductPage:self->_productPage];
      v5 = self->_detailsViewController;
      self->_detailsViewController = v4;

      v6 = self->_detailsViewController;
      v7 = [(SKUIViewController *)self clientContext];
      [(SKUIProductPageDetailsViewController *)v6 setClientContext:v7];

      [(SKUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:self];
      [(SKUIProductPageDetailsViewController *)self->_detailsViewController setOperationQueue:self->_operationQueue];
      [(SKUIProductPageDetailsViewController *)self->_detailsViewController setAskPermission:self->_askPermission];
      detailsViewController = self->_detailsViewController;
    }

    else
    {
      detailsViewController = 0;
    }
  }

  return detailsViewController;
}

- (id)_reviewsViewController
{
  reviewsViewController = self->_reviewsViewController;
  if (!reviewsViewController)
  {
    if (self->_productPage)
    {
      v4 = [[SKUIProductPageReviewsViewController alloc] initWithProductPage:self->_productPage];
      v5 = self->_reviewsViewController;
      self->_reviewsViewController = v4;

      v6 = self->_reviewsViewController;
      v7 = [(SKUIViewController *)self clientContext];
      [(SKUIProductPageReviewsViewController *)v6 setClientContext:v7];

      [(SKUIProductPageReviewsViewController *)self->_reviewsViewController setDelegate:self];
      [(SKUIProductPageReviewsViewController *)self->_reviewsViewController setAskPermission:self->_askPermission];
      reviewsViewController = self->_reviewsViewController;
    }

    else
    {
      reviewsViewController = 0;
    }
  }

  return reviewsViewController;
}

- (id)_relatedViewController
{
  v3 = [(SKUIProductPage *)self->_productPage relatedContentSwooshes];
  v4 = v3;
  if (!self->_relatedViewController && [v3 count])
  {
    v5 = [[SKUISwooshArrayViewController alloc] initWithSwooshComponents:v4];
    relatedViewController = self->_relatedViewController;
    self->_relatedViewController = v5;

    v7 = self->_relatedViewController;
    v8 = [(SKUIProductPage *)self->_productPage uber];
    v9 = [v8 colorScheme];
    [(SKUISwooshArrayViewController *)v7 setColorScheme:v9];

    v10 = self->_relatedViewController;
    v11 = [(SKUIViewController *)self clientContext];
    [(SKUISwooshArrayViewController *)v10 setClientContext:v11];

    [(SKUISwooshArrayViewController *)self->_relatedViewController setDelegate:self];
    [(SKUISwooshArrayViewController *)self->_relatedViewController setOperationQueue:self->_operationQueue];
    [(SKUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    [(SKUISwooshArrayViewController *)self->_relatedViewController setAskPermission:self->_askPermission];
  }

  v12 = self->_relatedViewController;
  v13 = v12;

  return v12;
}

- (void)_showBanner
{
  if (self->_banner)
  {
    return;
  }

  v26 = [(SKUIIPhoneProductPageViewController *)self view];
  [(SKUIMessageBanner *)self->_banner frame];
  v4 = v3;
  v5 = [(SKUIViewController *)self clientContext];
  v6 = SKUIUserInterfaceIdiom(v5);
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = (v8 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v10 = v6 != 1;
  if (v10 == v9)
  {
    v11 = 0.0;
  }

  else
  {
    v6 = [(SKUIIPhoneProductPageViewController *)self navigationController];
    v7 = [v6 navigationBar];
    [v7 frame];
  }

  v12 = v10 ^ v9;
  v13 = v4 + v11;
  v14 = [MEMORY[0x277D75418] currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v26 setBannerOffset:v13 + 0.0];
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = [MEMORY[0x277D75128] sharedApplication];
    [v16 statusBarFrame];
    v17 = 20.0;
    if (v18 == 0.0)
    {
      v17 = 0.0;
    }

    [v26 setBannerOffset:v13 + v17];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  v19 = objc_alloc_init(SKUIMessageBanner);
  banner = self->_banner;
  self->_banner = v19;

  [(SKUIMessageBanner *)self->_banner setDelegate:self];
  v21 = self->_banner;
  if (self->_bannerText)
  {
    [(SKUIMessageBanner *)self->_banner setMessage:?];
  }

  else
  {
    v22 = [(SKUIViewController *)self clientContext];
    v23 = [(SKUIIPhoneProductPageViewController *)self view];
    v24 = [v23 tintColor];
    v25 = SKUIMessageBannerAttributedString(v22, v24);
    [(SKUIMessageBanner *)v21 setAttributedMessage:v25];
  }

  [v26 setBannerView:self->_banner];
  [v26 layoutSubviews];
  [(SKUIIPhoneProductPageViewController *)self _setContentInsetsForChildViewController:self->_childViewController];
  [(SKUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:self->_childViewController];
}

- (void)_hideBanner
{
  if (self->_banner)
  {
    v3 = [(SKUIIPhoneProductPageViewController *)self view];
    [v3 setBannerView:0];

    v4 = [(SKUIIPhoneProductPageViewController *)self view];
    [v4 layoutSubviews];

    [(SKUIMessageBanner *)self->_banner setDelegate:0];
    banner = self->_banner;
    self->_banner = 0;

    [(SKUIIPhoneProductPageViewController *)self _setContentInsetsForChildViewController:self->_childViewController];
    childViewController = self->_childViewController;

    [(SKUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:childViewController];
  }
}

- (id)_relatedPlaceholderViewController
{
  v3 = [(SKUIProductPage *)self->_productPage relatedContentSwooshes];
  v4 = v3;
  if (!self->_relatedPlaceholderViewController && ![v3 count])
  {
    v5 = [[SKUIProductPagePlaceholderViewController alloc] initWithStyle:0];
    relatedPlaceholderViewController = self->_relatedPlaceholderViewController;
    self->_relatedPlaceholderViewController = v5;

    v7 = self->_relatedPlaceholderViewController;
    v8 = [(SKUIProductPage *)self->_productPage uber];
    v9 = [v8 colorScheme];
    [(SKUIProductPagePlaceholderViewController *)v7 setColorScheme:v9];

    v10 = self->_relatedPlaceholderViewController;
    v11 = [(SKUIViewController *)self clientContext];
    [(SKUIProductPagePlaceholderViewController *)v10 setClientContext:v11];

    [(SKUIProductPagePlaceholderViewController *)self->_relatedPlaceholderViewController setDelegate:self];
  }

  v12 = self->_relatedPlaceholderViewController;
  v13 = v12;

  return v12;
}

- (id)_loadingViewController
{
  loadingViewController = self->_loadingViewController;
  if (!loadingViewController)
  {
    v4 = [[SKUIProductPagePlaceholderViewController alloc] initWithStyle:1];
    v5 = self->_loadingViewController;
    self->_loadingViewController = v4;

    v6 = self->_loadingViewController;
    v7 = [(SKUIProductPage *)self->_productPage uber];
    v8 = [v7 colorScheme];
    [(SKUIProductPagePlaceholderViewController *)v6 setColorScheme:v8];

    v9 = self->_loadingViewController;
    v10 = [(SKUIViewController *)self clientContext];
    [(SKUIProductPagePlaceholderViewController *)v9 setClientContext:v10];

    [(SKUIProductPagePlaceholderViewController *)self->_loadingViewController setDelegate:self];
    loadingViewController = self->_loadingViewController;
  }

  return loadingViewController;
}

- (id)_headerViewController
{
  headerViewController = self->_headerViewController;
  if (!headerViewController)
  {
    if (self->_item)
    {
      v4 = [[SKUIProductPageHeaderViewController alloc] initWithItem:self->_item];
      v5 = self->_headerViewController;
      self->_headerViewController = v4;

      v6 = self->_headerViewController;
      v7 = [(SKUIViewController *)self clientContext];
      [(SKUIProductPageHeaderViewController *)v6 setClientContext:v7];

      [(SKUIProductPageHeaderViewController *)self->_headerViewController setDelegate:self];
      [(SKUIProductPageHeaderViewController *)self->_headerViewController setOperationQueue:self->_operationQueue];
      [(SKUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage];
      [(SKUIProductPageHeaderViewController *)self->_headerViewController setSelectedSectionIndex:self->_sectionIndex];
      [(SKUIProductPageHeaderViewController *)self->_headerViewController setAskPermission:self->_askPermission];
      headerViewController = self->_headerViewController;
    }

    else
    {
      headerViewController = 0;
    }
  }

  return headerViewController;
}

- (void)_invalidateChildViewControllers
{
  if ([(SKUIIPhoneProductPageViewController *)self isViewLoaded])
  {
    v3 = [(SKUIIPhoneProductPageViewController *)self view];
    [v3 setView:0];
  }

  childViewController = self->_childViewController;
  self->_childViewController = 0;

  [(SKUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:0];
  [(SKUIProductPageDetailsViewController *)self->_detailsViewController removeFromParentViewController];
  detailsViewController = self->_detailsViewController;
  self->_detailsViewController = 0;

  [(SKUIIncompatibleAppViewController *)self->_incompatibleViewController setDelegate:0];
  [(SKUIIncompatibleAppViewController *)self->_incompatibleViewController removeFromParentViewController];
  incompatibleViewController = self->_incompatibleViewController;
  self->_incompatibleViewController = 0;

  [(SKUIProductPagePlaceholderViewController *)self->_loadingViewController setDelegate:0];
  [(SKUIProductPagePlaceholderViewController *)self->_loadingViewController removeFromParentViewController];
  loadingViewController = self->_loadingViewController;
  self->_loadingViewController = 0;

  [(SKUIProductPagePlaceholderViewController *)self->_relatedPlaceholderViewController setDelegate:0];
  [(SKUIProductPagePlaceholderViewController *)self->_relatedPlaceholderViewController removeFromParentViewController];
  relatedPlaceholderViewController = self->_relatedPlaceholderViewController;
  self->_relatedPlaceholderViewController = 0;

  [(SKUISwooshArrayViewController *)self->_relatedViewController setDelegate:0];
  [(SKUISwooshArrayViewController *)self->_relatedViewController removeFromParentViewController];
  relatedViewController = self->_relatedViewController;
  self->_relatedViewController = 0;

  [(SKUIProductPageReviewsViewController *)self->_reviewsViewController setDelegate:0];
  [(SKUIProductPageReviewsViewController *)self->_reviewsViewController removeFromParentViewController];
  reviewsViewController = self->_reviewsViewController;
  self->_reviewsViewController = 0;
}

- (BOOL)_isIncompatibleItem
{
  v3 = [(SKUIProductPage *)self->_productPage item];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = self->_item;
    if (!v4)
    {
LABEL_5:
      v6 = 0;
      goto LABEL_12;
    }
  }

  v5 = [(SKUIItem *)v4 deviceFamilies];
  if ((v5 & 6) != 0)
  {
    goto LABEL_5;
  }

  v7 = v5;
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v6 = (v7 & 1) == 0 || (v9 & 0xFFFFFFFFFFFFFFFBLL) != 1;
LABEL_12:
  v11 = [(SKUIItem *)v4 itemKind]== 5 || v6;

  return v11;
}

- (void)_presentHTMLProductPage
{
  v4 = objc_alloc_init(MEMORY[0x277CDD3A8]);
  v3 = [(NSURLRequest *)self->_urlRequest URL];
  [v4 loadProductWithURL:v3 completionBlock:0];

  [v4 setDelegate:self];
  [(SKUIIPhoneProductPageViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_reloadChildViewControllers
{
  v201 = [(SKUIIPhoneProductPageViewController *)self _viewControllerForSectionIndex:self->_sectionIndex];
  v3 = [(SKUIIPhoneProductPageViewController *)self isViewLoaded];
  v4 = v201;
  if (!v3 || self->_childViewController == v201)
  {
    goto LABEL_97;
  }

  v5 = [(SKUIIPhoneProductPageViewController *)self navigationItem];
  item = [(SKUIProductPage *)self->_productPage item];
  v7 = item;
  if (!item)
  {
    item = self->_item;
  }

  v8 = [item title];
  [v5 setBackButtonTitle:v8];

  v9 = [(SKUIIPhoneProductPageViewController *)self view];
  v10 = [(SKUIIPhoneProductPageViewController *)self _headerViewController];
  v11 = self->_childViewController;
  [(SKUIProductPageChildViewController *)v11 setHeaderViewController:0];
  [v9 setView:0];
  v200 = v11;
  [(SKUIProductPageChildViewController *)v11 removeFromParentViewController];
  objc_storeStrong(&self->_childViewController, v201);
  [(SKUIIPhoneProductPageViewController *)self addChildViewController:self->_childViewController];
  v12 = [(SKUIProductPageChildViewController *)self->_childViewController view];
  [v9 setView:v12];

  v198 = v10;
  [(SKUIProductPageChildViewController *)self->_childViewController setHeaderViewController:v10];
  [(SKUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:self->_childViewController];
  [(SKUIMessageBanner *)self->_banner frame];
  v14 = v13;
  v15 = [(SKUIViewController *)self clientContext];
  v16 = SKUIUserInterfaceIdiom(v15);
  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = (v18 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v20 = v16 != 1;
  v21 = 0.0;
  v22 = 0.0;
  if (v20 != v19)
  {
    v16 = [(SKUIIPhoneProductPageViewController *)self navigationController];
    v17 = [v16 navigationBar];
    [v17 frame];
  }

  v23 = v14 + v22;
  v24 = [MEMORY[0x277D75418] currentDevice];
  v25 = [v24 userInterfaceIdiom];

  v26 = v25 & 0xFFFFFFFFFFFFFFFBLL;
  if (v26 != 1)
  {
    v24 = [MEMORY[0x277D75128] sharedApplication];
    [v24 statusBarFrame];
    if (v27 == 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 20.0;
    }
  }

  v28 = v20 ^ v19;
  [(SKUIMessageBanner *)self->_banner frame];
  [v9 setBannerOffset:v23 + v21 - v29];
  if (v26 != 1)
  {
  }

  if (v28)
  {
  }

  v30 = &qword_215F3F000;
  v199 = v9;
  if (v200)
  {
    v31 = [(SKUIProductPageChildViewController *)v200 scrollView];
    [v31 contentOffset];
    v197 = v32;
    v34 = v33;
  }

  else
  {
    [(SKUIMessageBanner *)self->_banner frame];
    v36 = v35;
    v31 = [(SKUIViewController *)self clientContext];
    v37 = SKUIUserInterfaceIdiom(v31);
    v38 = [MEMORY[0x277D75418] currentDevice];
    v39 = [v38 userInterfaceIdiom];

    v40 = (v39 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v41 = v37 != 1;
    v42 = 0.0;
    v43 = 0.0;
    if (v41 != v40)
    {
      v37 = [(SKUIIPhoneProductPageViewController *)self navigationController];
      v38 = [v37 navigationBar];
      [v38 frame];
    }

    v44 = v36 + v43;
    v45 = [MEMORY[0x277D75418] currentDevice];
    v46 = [v45 userInterfaceIdiom];

    v47 = v46 & 0xFFFFFFFFFFFFFFFBLL;
    if ((v46 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v45 = [MEMORY[0x277D75128] sharedApplication];
      [v45 statusBarFrame];
      if (v48 == 0.0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = 20.0;
      }
    }

    v49 = MEMORY[0x277CBF348];
    v50 = v41 ^ v40;
    v51 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
    [v51 frame];
    v53 = -(v44 + v42) - v52;

    if (v47 != 1)
    {
    }

    v197 = *v49;
    v34 = v53 + -49.0;
    if (v50)
    {
    }

    v30 = &qword_215F3F000;
  }

  [(SKUIMessageBanner *)self->_banner frame];
  v55 = v54;
  v56 = [(SKUIViewController *)self clientContext];
  v57 = SKUIUserInterfaceIdiom(v56);
  v58 = [MEMORY[0x277D75418] currentDevice];
  v59 = [v58 userInterfaceIdiom];

  v60 = (v59 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v61 = v57 != 1;
  if (v61 == v60)
  {
    v62 = 0.0;
  }

  else
  {
    v57 = [(SKUIIPhoneProductPageViewController *)self navigationController];
    v58 = [v57 navigationBar];
    [v58 frame];
  }

  v63 = v61 ^ v60;
  v64 = v55 + v62;
  v65 = [MEMORY[0x277D75418] currentDevice];
  v66 = [v65 userInterfaceIdiom];

  if ((v66 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v67 = v64 + 0.0;
  }

  else
  {
    v68 = [MEMORY[0x277D75128] sharedApplication];
    [v68 statusBarFrame];
    v69 = 20.0;
    if (v70 == 0.0)
    {
      v69 = 0.0;
    }

    v67 = v64 + v69;
  }

  v71 = *(v30 + 456);
  v72 = v71 - v67;
  if (v63)
  {
  }

  if (v34 > v72)
  {
    [(SKUIMessageBanner *)self->_banner frame];
    v74 = v73;
    v75 = [(SKUIViewController *)self clientContext];
    v76 = SKUIUserInterfaceIdiom(v75);
    v77 = [MEMORY[0x277D75418] currentDevice];
    v78 = [v77 userInterfaceIdiom];

    v79 = (v78 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v80 = v76 != 1;
    if (v80 == v79)
    {
      v81 = 0.0;
    }

    else
    {
      v76 = [(SKUIIPhoneProductPageViewController *)self navigationController];
      v77 = [v76 navigationBar];
      [v77 frame];
    }

    v82 = v80 ^ v79;
    v83 = v74 + v81;
    v84 = [MEMORY[0x277D75418] currentDevice];
    v85 = [v84 userInterfaceIdiom];

    if ((v85 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v86 = v83 + 0.0;
      if (!v82)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v87 = [MEMORY[0x277D75128] sharedApplication];
      [v87 statusBarFrame];
      v88 = 20.0;
      if (v89 == 0.0)
      {
        v88 = 0.0;
      }

      v86 = v83 + v88;

      if (!v82)
      {
        goto LABEL_49;
      }
    }

LABEL_49:
    v34 = v71 - v86;
  }

  v196 = v34;
  [(SKUIMessageBanner *)self->_banner frame];
  v91 = v90;
  v194 = [(SKUIViewController *)self clientContext];
  v92 = SKUIUserInterfaceIdiom(v194);
  v93 = [MEMORY[0x277D75418] currentDevice];
  v94 = [v93 userInterfaceIdiom];

  v95 = 0.0;
  v96 = 0.0;
  v191 = v92 != 1;
  v192 = (v94 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  if (v191 != v192)
  {
    v185 = [(SKUIIPhoneProductPageViewController *)self navigationController];
    v184 = [v185 navigationBar];
    [v184 frame];
    v96 = v97;
  }

  v195 = v71;
  v98 = [MEMORY[0x277D75418] currentDevice];
  v99 = [v98 userInterfaceIdiom];

  v190 = v99 & 0xFFFFFFFFFFFFFFFBLL;
  if ((v99 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v186 = [MEMORY[0x277D75128] sharedApplication];
    [v186 statusBarFrame];
    if (v100 == 0.0)
    {
      v95 = 0.0;
    }

    else
    {
      v95 = 20.0;
    }
  }

  v189 = SKUIViewControllerGetAncestorTabBarController(self);
  v187 = [v189 tabBar];
  [v187 frame];
  v102 = v101;
  v103 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [v103 frame];
  v105 = v104;
  v106 = [(SKUIProductPageChildViewController *)self->_childViewController scrollView];
  [v106 contentSize];
  v188 = v107;
  v108 = [MEMORY[0x277D759A0] mainScreen];
  [v108 bounds];
  v193 = v109;
  [(SKUIMessageBanner *)self->_banner frame];
  v111 = v110;
  v112 = [(SKUIViewController *)self clientContext];
  v113 = SKUIUserInterfaceIdiom(v112);
  v114 = [MEMORY[0x277D75418] currentDevice];
  v115 = [v114 userInterfaceIdiom];

  v116 = (v115 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v117 = v113 != 1;
  v118 = 0.0;
  v119 = 0.0;
  if (v117 != v116)
  {
    v183 = [(SKUIIPhoneProductPageViewController *)self navigationController];
    v182 = [v183 navigationBar];
    [v182 frame];
    v119 = v120;
  }

  v121 = [MEMORY[0x277D75418] currentDevice];
  v122 = [v121 userInterfaceIdiom];

  v123 = v122 & 0xFFFFFFFFFFFFFFFBLL;
  if ((v122 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v121 = [MEMORY[0x277D75128] sharedApplication];
    [v121 statusBarFrame];
    if (v124 == 0.0)
    {
      v118 = 0.0;
    }

    else
    {
      v118 = 20.0;
    }
  }

  v125 = v91 + v96;
  v126 = v117 ^ v116;
  v127 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [v127 frame];
  v129 = v128;

  if (v123 != 1)
  {
  }

  v130 = v125 + v95;
  if (v126)
  {
  }

  v131 = v130 + v102;

  if (v190 != 1)
  {
  }

  v132 = v131 + v105;
  v133 = v111 + v119;
  if (v191 != v192)
  {
  }

  v134 = v133 + v118;

  [(SKUIMessageBanner *)self->_banner frame];
  v136 = v135;
  v137 = [(SKUIViewController *)self clientContext];
  v138 = SKUIUserInterfaceIdiom(v137);
  v139 = [MEMORY[0x277D75418] currentDevice];
  v140 = [v139 userInterfaceIdiom];

  v141 = (v140 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v142 = v138 != 1;
  v143 = 0.0;
  v144 = 0.0;
  if (v142 != v141)
  {
    v138 = [(SKUIIPhoneProductPageViewController *)self navigationController];
    v139 = [v138 navigationBar];
    [v139 frame];
  }

  v145 = v134 + v129;
  v146 = v136 + v144;
  v147 = [MEMORY[0x277D75418] currentDevice];
  v148 = [v147 userInterfaceIdiom];

  v149 = v148 & 0xFFFFFFFFFFFFFFFBLL;
  if ((v148 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v147 = [MEMORY[0x277D75128] sharedApplication];
    [v147 statusBarFrame];
    if (v150 == 0.0)
    {
      v143 = 0.0;
    }

    else
    {
      v143 = 20.0;
    }
  }

  v151 = v132 + v188 + 49.0 - v193;
  v152 = v145 + 49.0;
  v153 = v142 ^ v141;
  v154 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [v154 frame];
  v156 = -(v146 + v143) - v155;

  if (v149 != 1)
  {
  }

  v157 = v151 - v152;
  v158 = v199;
  if (v153)
  {
  }

  if (v157 < v156 + v195)
  {
    [(SKUIMessageBanner *)self->_banner frame];
    v160 = v159;
    v161 = [(SKUIViewController *)self clientContext];
    v162 = SKUIUserInterfaceIdiom(v161);
    v163 = [MEMORY[0x277D75418] currentDevice];
    v164 = [v163 userInterfaceIdiom];

    v165 = (v164 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v166 = v162 != 1;
    v167 = 0.0;
    v168 = 0.0;
    if (v166 != v165)
    {
      v162 = [(SKUIIPhoneProductPageViewController *)self navigationController];
      v163 = [v162 navigationBar];
      [v163 frame];
    }

    v169 = v160 + v168;
    v170 = [MEMORY[0x277D75418] currentDevice];
    v171 = [v170 userInterfaceIdiom];

    v172 = v171 & 0xFFFFFFFFFFFFFFFBLL;
    if ((v171 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v170 = [MEMORY[0x277D75128] sharedApplication];
      [v170 statusBarFrame];
      if (v173 == 0.0)
      {
        v167 = 0.0;
      }

      else
      {
        v167 = 20.0;
      }
    }

    v174 = v166 ^ v165;
    v175 = -(v169 + v167);
    v176 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
    [v176 frame];
    v178 = v177;

    if (v172 != 1)
    {
    }

    v179 = v175 - v178;
    v158 = v199;
    if (v174)
    {
    }

    v157 = v179 + v195;
  }

  if (v196 <= v157)
  {
    v157 = v196;
  }

  v180 = [(SKUIProductPageChildViewController *)self->_childViewController scrollView];
  [v180 setContentOffset:{v197, v157}];

  [v158 animateYPosition:v196 - v157];
  incompatibleViewController = self->_incompatibleViewController;
  if (v201 == incompatibleViewController)
  {
    [(SKUIIncompatibleAppViewController *)incompatibleViewController reloadData];
  }

  v4 = v201;
LABEL_97:

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)_setContentInsetsForChildViewController:(id)a3
{
  v4 = [a3 scrollView];
  if (v4)
  {
    v52 = v4;
    v5 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
    [v5 frame];
    v7 = v6;
    [(SKUIMessageBanner *)self->_banner frame];
    v9 = v8;
    v10 = [(SKUIViewController *)self clientContext];
    v11 = SKUIUserInterfaceIdiom(v10);
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    v14 = (v13 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v15 = v11 != 1;
    v16 = 0.0;
    v17 = 0.0;
    if (v15 != v14)
    {
      v12 = [(SKUIIPhoneProductPageViewController *)self navigationController];
      v51 = [v12 navigationBar];
      [v51 frame];
    }

    v18 = v7 + 49.0;
    v19 = v9 + v17;
    v20 = [MEMORY[0x277D75418] currentDevice];
    v21 = [v20 userInterfaceIdiom];

    v22 = v21 & 0xFFFFFFFFFFFFFFFBLL;
    if ((v21 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v20 = [MEMORY[0x277D75128] sharedApplication];
      [v20 statusBarFrame];
      if (v23 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 20.0;
      }
    }

    v24 = v15 ^ v14;
    v25 = SKUIViewControllerGetAncestorTabBarController(self);
    v26 = [v25 tabBar];
    [v26 frame];
    [v52 setContentInset:{v18 + v19 + v16, 0.0, v27, 0.0}];

    if (v22 != 1)
    {
    }

    if (v24)
    {
    }

    [(SKUIMessageBanner *)self->_banner frame];
    v29 = v28;
    v30 = [(SKUIViewController *)self clientContext];
    v31 = SKUIUserInterfaceIdiom(v30);
    v32 = [MEMORY[0x277D75418] currentDevice];
    v33 = [v32 userInterfaceIdiom];

    v34 = (v33 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v35 = v31 != 1;
    v36 = 0.0;
    v37 = 0.0;
    if (v35 != v34)
    {
      v31 = [(SKUIIPhoneProductPageViewController *)self navigationController];
      v32 = [v31 navigationBar];
      [v32 frame];
    }

    v38 = v29 + v37;
    v39 = [MEMORY[0x277D75418] currentDevice];
    v40 = [v39 userInterfaceIdiom];

    v41 = v40 & 0xFFFFFFFFFFFFFFFBLL;
    if ((v40 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v39 = [MEMORY[0x277D75128] sharedApplication];
      [v39 statusBarFrame];
      if (v42 == 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 20.0;
      }
    }

    v43 = v35 ^ v34;
    v44 = SKUIViewControllerGetAncestorTabBarController(self);
    v45 = [v44 tabBar];
    [v45 frame];
    [v52 setScrollIndicatorInsets:{v38 + v36, 0.0, v46, 0.0}];

    if (v41 != 1)
    {
    }

    if (v43)
    {
    }

    v47 = [(SKUIProductPage *)self->_productPage uber];
    v48 = [v47 colorScheme];
    v49 = [v48 backgroundColor];
    if (v49)
    {
      SKUIScrollViewSetTopBackgroundColor(v52, v49);
    }

    else
    {
      v50 = [MEMORY[0x277D75348] whiteColor];
      SKUIScrollViewSetTopBackgroundColor(v52, v50);
    }

    SKUIScrollViewLayoutTopBackgroundColorForProductPage(v52, 0.0);
    v4 = v52;
  }
}

- (void)_setHeaderPositionForChildViewController:(id)a3
{
  v23 = [a3 scrollView];
  [v23 contentOffset];
  v5 = v4;
  v6 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  v7 = [(SKUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [v23 contentInset];
  v9 = v8;
  v10 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [v10 frame];
  v12 = v9 - v11 + -49.0;

  [v7 frame];
  [v7 setFrame:?];
  [v6 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [v19 frame];
  v21 = -(v20 + 49.0);

  [v6 setFrame:{v14, v21, v16, v18}];
  v22 = 0.0;
  if (v5 > -(v12 + 49.0))
  {
    v22 = (v5 + 49.0 + v12) / 49.0;
  }

  [v7 setBackdropAlpha:{1.0 - fmin(v22, 1.0)}];
}

- (void)_setMetricsController:(id)a3
{
  v5 = a3;
  if (!self->_metricsController)
  {
    v22 = v5;
    v6 = [(SKUIProductPage *)self->_productPage metricsConfiguration];
    objc_storeStrong(&self->_metricsController, a3);
    [(SKUIMetricsController *)self->_metricsController setPageConfiguration:v6];
    metricsController = self->_metricsController;
    v8 = [(SKUIProductPage *)self->_productPage pageURL];
    v9 = [v8 absoluteString];
    [(SKUIMetricsController *)metricsController setPageURL:v9];

    v10 = [MEMORY[0x277D75128] sharedApplication];
    v11 = [v10 statusBarOrientation];

    v12 = self->_metricsController;
    v13 = SKUIMetricsWindowOrientationForInterfaceOrientation(v11);
    [(SKUIMetricsController *)v12 setWindowOrientation:v13];

    v14 = [(SKUIViewController *)self clientContext];
    v15 = self->_metricsController;
    v16 = [v14 clientInterface];
    v17 = [v16 clientIdentifier];
    [(SKUIMetricsController *)v15 setApplicationIdentifier:v17];

    v18 = self->_metricsController;
    v19 = [v14 metricsPageContextForViewController:self];
    [(SKUIMetricsController *)v18 setPageContext:v19];

    [(SKUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    v20 = self->_metricsController;
    v21 = [v6 pingURLs];
    [(SKUIMetricsController *)v20 pingURLs:v21 withClientContext:v14];

    v5 = v22;
  }
}

- (void)_setProductPage:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SKUILoadProductPageOperation *)self->_loadOperation metricsPageEvent];
  [(SKUILoadProductPageOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  v11 = [v7 ITMLData];

  if (v11)
  {
    v12 = [(SKUIViewController *)self clientContext];
    v13 = [v7 ITMLData];
    v14 = [v7 ITMLResponse];
    [v12 sendOnPageResponseWithDocument:0 data:v13 URLResponse:v14 performanceMetrics:0];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    objc_storeStrong(&self->_productPage, a3);
    v12 = [(SKUIProductPage *)self->_productPage metricsConfiguration];
    [(SKUIMetricsController *)self->_metricsController setPageConfiguration:v12];
    metricsController = self->_metricsController;
    v16 = [(SKUIProductPage *)self->_productPage pageURL];
    v17 = [v16 absoluteString];
    [(SKUIMetricsController *)metricsController setPageURL:v17];

    if (!self->_item)
    {
      v18 = [(SKUIProductPage *)self->_productPage item];
      item = self->_item;
      self->_item = v18;
    }

    [(SKUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage];
    if ([(SKUIProductPageHeaderViewController *)self->_headerViewController isViewLoaded])
    {
      v20 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
      [v20 sizeToFit];
    }

    [(SKUIIPhoneProductPageViewController *)self _invalidateChildViewControllers];
    [(SKUIIPhoneProductPageViewController *)self _reloadChildViewControllers];
    [(SKUIProductPageHeaderViewController *)self->_headerViewController reloadData];
    v21 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SKUIIPhoneProductPageViewController__setProductPage_error___block_invoke;
    block[3] = &unk_2781F80F0;
    block[4] = self;
    dispatch_after(v21, MEMORY[0x277D85CD0], block);
    if (v9)
    {
      v22 = [MEMORY[0x277CBEAA8] date];
      [v22 timeIntervalSince1970];
      [v9 setPageRenderTime:?];

      [(SKUIMetricsController *)self->_metricsController recordEvent:v9];
      objc_storeStrong(&self->_lastPageEvent, v9);
    }

    if (self->_wantsActivityViewController)
    {
      [(SKUIIPhoneProductPageViewController *)self _showActivityViewController];
    }

    v23 = self->_metricsController;
    v24 = [v12 pingURLs];
    v25 = [(SKUIViewController *)self clientContext];
    [(SKUIMetricsController *)v23 pingURLs:v24 withClientContext:v25];
  }

LABEL_14:
  if (v8)
  {
    v26 = [v8 domain];
    if ([v26 isEqualToString:@"SKUIErrorDomain"])
    {
      v27 = [v8 code];

      if (v27 == 1)
      {
        [(SKUIIPhoneProductPageViewController *)self _presentHTMLProductPage];
        goto LABEL_20;
      }
    }

    else
    {
    }

    [(SKUIIPhoneProductPageViewController *)self _showError:v8];
  }

LABEL_20:
}

void __61__SKUIIPhoneProductPageViewController__setProductPage_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reviewsViewController];
  [v1 reloadData];
}

- (void)_setSectionIndexWithFragment:(int64_t)a3
{
  if (a3 <= 2)
  {
    self->_sectionIndex = a3;
  }
}

- (void)_showError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_errorViewController)
  {
    v12 = v4;
    v4 = [SKUINetworkErrorViewController canDisplayError:v4];
    v5 = v12;
    if (v4)
    {
      [(SKUIProductPageChildViewController *)self->_childViewController setHeaderViewController:0];
      [(SKUIProductPageChildViewController *)self->_childViewController removeFromParentViewController];
      v6 = [[SKUINetworkErrorViewController alloc] initWithError:v12];
      errorViewController = self->_errorViewController;
      self->_errorViewController = v6;

      v8 = self->_errorViewController;
      v9 = [(SKUIViewController *)self clientContext];
      [(SKUINetworkErrorViewController *)v8 setClientContext:v9];

      [(SKUINetworkErrorViewController *)self->_errorViewController setDelegate:self];
      objc_storeStrong(&self->_childViewController, self->_errorViewController);
      [(SKUIIPhoneProductPageViewController *)self addChildViewController:self->_childViewController];
      v10 = [(SKUIIPhoneProductPageViewController *)self view];
      v11 = [(SKUINetworkErrorViewController *)self->_errorViewController view];
      [v11 setAutoresizingMask:18];
      [v10 bounds];
      [v11 setFrame:?];
      [v10 addSubview:v11];

      v5 = v12;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_showActivityViewController
{
  v3 = [SKUIProductPageActivityViewController alloc];
  v4 = [(SKUIProductPage *)self->_productPage item];
  v5 = [(SKUIViewController *)self clientContext];
  v6 = [(SKUIProductPageActivityViewController *)v3 initWithProductPageItem:v4 clientContext:v5];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __66__SKUIIPhoneProductPageViewController__showActivityViewController__block_invoke;
  v10 = &unk_2781FD758;
  objc_copyWeak(&v11, &location);
  [(SKUIProductPageActivityViewController *)v6 setCompletionWithItemsHandler:&v7];
  [(SKUIIPhoneProductPageViewController *)self presentViewController:v6 animated:1 completion:0, v7, v8, v9, v10];
  self->_wantsActivityViewController = 0;
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__SKUIIPhoneProductPageViewController__showActivityViewController__block_invoke(uint64_t a1, void *a2, int a3)
{
  if (a3 && [a2 isEqualToString:0x28280D768])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _animateAddToWishlist];
  }
}

- (id)_viewControllerForSectionIndex:(unint64_t)a3
{
  if (!self->_item)
  {
    goto LABEL_11;
  }

  if ([(SKUIIPhoneProductPageViewController *)self _isIncompatibleItem])
  {
    incompatibleViewController = self->_incompatibleViewController;
    if (!incompatibleViewController)
    {
      v6 = [SKUIIncompatibleAppViewController alloc];
      v7 = [(SKUIProductPage *)self->_productPage item];
      v8 = [(SKUIIncompatibleAppViewController *)v6 initWithIncompatibleItem:v7];
      v9 = self->_incompatibleViewController;
      self->_incompatibleViewController = v8;

      v10 = self->_incompatibleViewController;
      v11 = [(SKUIViewController *)self clientContext];
      [(SKUIViewController *)v10 setClientContext:v11];

      [(SKUIIncompatibleAppViewController *)self->_incompatibleViewController setDelegate:self];
      [(SKUIIncompatibleAppViewController *)self->_incompatibleViewController setOperationQueue:self->_operationQueue];
      incompatibleViewController = self->_incompatibleViewController;
    }

    v12 = incompatibleViewController;
    goto LABEL_18;
  }

  productPage = self->_productPage;
  if (!productPage)
  {
    v12 = [(SKUIIPhoneProductPageViewController *)self _loadingViewController];
    goto LABEL_18;
  }

  if (a3 == 2)
  {
    v15 = [(SKUIProductPage *)productPage relatedContentSwooshes];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [(SKUIIPhoneProductPageViewController *)self _relatedViewController];
      if ([v17 isSkLoaded])
      {
        v14 = v17;
      }

      else
      {
        v14 = [(SKUIIPhoneProductPageViewController *)self _loadingViewController];
        [v17 loadMissingItemData];
      }

      goto LABEL_19;
    }

    v12 = [(SKUIIPhoneProductPageViewController *)self _relatedPlaceholderViewController];
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v12 = [(SKUIIPhoneProductPageViewController *)self _reviewsViewController];
    goto LABEL_18;
  }

  if (a3)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_19;
  }

  v12 = [(SKUIIPhoneProductPageViewController *)self _detailsViewController];
LABEL_18:
  v14 = v12;
LABEL_19:

  return v14;
}

- (SKUIIPhoneProductPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_initSKUIIPhoneProductPageViewController
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPhoneProductPageViewController _initSKUIIPhoneProductPageViewController]";
}

@end