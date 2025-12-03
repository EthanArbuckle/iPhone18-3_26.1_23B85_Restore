@interface SKProductPageViewController
+ (id)_defaultClientIdentifier;
+ (id)_defaultClientInterface;
+ (void)_validateURL:(id)l withURLBag:(id)bag completionBlock:(id)block;
+ (void)getCanLoadWithURL:(id)l completionBlock:(id)block;
- (BOOL)iPhoneProductPage:(id)page shouldOpenItem:(id)item;
- (BOOL)iPhoneProductPage:(id)page shouldOpenURL:(id)l;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (NSDictionary)scriptContextDictionary;
- (SKProductPageViewController)initWithTabBarItem:(id)item;
- (SKProductPageViewControllerDelegate)delegate;
- (id)_initSKProductPageViewController;
- (id)_newRequestPropertiesWithRequest:(id)request;
- (id)_previewOverlay;
- (id)scriptInterfaceForClientInterface:(id)interface;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationWillEnterForeground;
- (void)_failWithError:(id)error;
- (void)_gotoStoreButtonAction:(id)action;
- (void)_initSKProductPageViewController;
- (void)_loadClientContextWithCompletionBlock:(id)block;
- (void)_loadProductWithRequest:(id)request;
- (void)_loadRequestForProductParameters;
- (void)_purchaseFailedNotification:(id)notification;
- (void)_purchaseFinishedNotification:(id)notification;
- (void)_reloadGotoStoreButton;
- (void)_reloadViews;
- (void)_sendDidFailLoadWithError:(id)error;
- (void)_sendDidFinishWithResult:(int64_t)result;
- (void)_setClientContext:(id)context;
- (void)_setResponse:(id)response forProperties:(id)properties error:(id)error;
- (void)_showPageWithRequest:(id)request animated:(BOOL)animated;
- (void)_showPreviewOverlayAnimated:(BOOL)animated;
- (void)_showProductPage:(id)page pageEvent:(id)event;
- (void)clientInterface:(id)interface exitStoreWithReason:(int64_t)reason;
- (void)clientInterface:(id)interface hidePreviewOverlayAnimated:(BOOL)animated;
- (void)clientInterface:(id)interface presentDialog:(id)dialog;
- (void)clientInterface:(id)interface setStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation;
- (void)clientInterface:(id)interface setStatusBarStyle:(int64_t)style animated:(BOOL)animated;
- (void)clientInterface:(id)interface showPreviewOverlayAnimated:(BOOL)animated;
- (void)clientInterface:(id)interface willDismissViewController:(id)controller;
- (void)clientInterface:(id)interface willPresentViewController:(id)controller;
- (void)dealloc;
- (void)iPadProductPage:(id)page openItem:(id)item;
- (void)iPadProductPage:(id)page openURL:(id)l viewControllerBlock:(id)block;
- (void)itemStateCenter:(id)center didFinishPurchases:(id)purchases;
- (void)itemStateCenter:(id)center didFinishSoftwarePurchases:(id)purchases;
- (void)loadProductWithParameters:(id)parameters;
- (void)loadProductWithRequest:(id)request;
- (void)loadView;
- (void)loadWithProductPage:(id)page;
- (void)loadWithStorePageRequest:(id)request;
- (void)purchaseManager:(id)manager didFinishPurchaseRequest:(id)request withError:(id)error;
- (void)purchaseManager:(id)manager willAddPurchases:(id)purchases;
- (void)setAdditionalPurchaseParameters:(id)parameters;
- (void)setAffiliateIdentifier:(id)identifier;
- (void)setAskToBuy:(BOOL)buy;
- (void)setClientInterface:(id)interface;
- (void)setProductPageStyle:(int64_t)style;
- (void)setPromptString:(id)string;
- (void)setScriptContextDictionary:(id)dictionary;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SKProductPageViewController

- (id)_initSKProductPageViewController
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKProductPageViewController _initSKProductPageViewController];
  }

  v20.receiver = self;
  v20.super_class = SKProductPageViewController;
  v3 = [(SUViewController *)&v20 init];
  v4 = v3;
  if (v3)
  {
    if (v3->_style == 1)
    {
      v5 = objc_alloc_init(SKUIBannerViewController);
      bannerViewController = v4->_bannerViewController;
      v4->_bannerViewController = v5;

      [(SKUIBannerViewController *)v4->_bannerViewController setDelegate:v4];
      [(SKProductPageViewController *)v4 addChildViewController:v4->_bannerViewController];
    }

    else
    {
      _defaultClientInterface = [objc_opt_class() _defaultClientInterface];
      v8 = objc_alloc_init(MEMORY[0x277D7FE30]);
      [v8 setLeftItemsSupplementBackButton:1];
      [(SUViewController *)v4 _setExistingNavigationItem:v8];
      v4->_showsStoreButton = 1;
      v4->_preview = 0;
      v9 = [(SUViewController *)[SKUIITunesStoreUIPageViewController alloc] initWithSection:0];
      storePageViewController = v4->_storePageViewController;
      v4->_storePageViewController = v9;

      copyScriptProperties = [(SUStorePageViewController *)v4->_storePageViewController copyScriptProperties];
      if (v4->_style == 1)
      {
        [MEMORY[0x277D75348] clearColor];
      }

      else
      {
        [MEMORY[0x277D75348] colorWithWhite:0.921568627 alpha:1.0];
      }
      v12 = ;
      [copyScriptProperties setBackgroundColor:v12];

      [(SUStorePageViewController *)v4->_storePageViewController setScriptProperties:copyScriptProperties];
      [(SUStorePageViewController *)v4->_storePageViewController setCanMoveToOverlay:0];
      [(SUViewController *)v4->_storePageViewController _setExistingNavigationItem:v8];
      [(SUStorePageViewController *)v4->_storePageViewController setLoadsWhenHidden:1];
      [(SUStorePageViewController *)v4->_storePageViewController _setReloadsWhenCacheExpired:0];
      [(SKUIITunesStoreUIPageViewController *)v4->_storePageViewController setProductPageViewController:v4];
      [(SKProductPageViewController *)v4 addChildViewController:v4->_storePageViewController];
      [(SKProductPageViewController *)v4 setClientInterface:_defaultClientInterface];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v4 selector:sel__purchaseFailedNotification_ name:*MEMORY[0x277D7FF30] object:0];
      [defaultCenter addObserver:v4 selector:sel__purchaseFinishedNotification_ name:*MEMORY[0x277D7FF38] object:0];
      v14 = +[SKUIItemStateCenter defaultCenter];
      itemStateCenter = v4->_itemStateCenter;
      v4->_itemStateCenter = v14;

      [(SKUIItemStateCenter *)v4->_itemStateCenter addObserver:v4];
      style = v4->_style;
      if (style)
      {
        v17 = 0;
        if (style != 3)
        {
          v17 = 15;
        }
      }

      else
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice userInterfaceIdiom] == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 = 15;
        }
      }

      [(SKProductPageViewController *)v4 setEdgesForExtendedLayout:v17];
    }
  }

  return v4;
}

- (SKProductPageViewController)initWithTabBarItem:(id)item
{
  _initSKProductPageViewController = [(SKProductPageViewController *)self _initSKProductPageViewController];
  v4 = _initSKProductPageViewController;
  if (_initSKProductPageViewController)
  {
    [(SKProductPageViewController *)_initSKProductPageViewController _setShowsCancelButton:1];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FF30] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FF38] object:0];
  [(SKUIItemStateCenter *)self->_itemStateCenter removeObserver:self];
  [(SKUIITunesStoreUIPageViewController *)self->_storePageViewController setProductPageViewController:0];
  [(SKUIITunesStoreUIPageViewController *)self->_storePageViewController removeFromParentViewController];
  clientInterface = [(SUViewController *)self clientInterface];
  [clientInterface setDelegate:0];

  [(SKUIBannerViewController *)self->_bannerViewController setDelegate:0];
  [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController setDelegate:0];
  [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setDelegate:0];
  [(SUPurchaseManager *)self->_purchaseManager setDelegate:0];
  [(SUPreviewOverlayViewController *)self->_previewOverlay removeFromParentViewController];
  target = [(SUBarButtonItem *)self->_gotoStoreButtonItem target];

  if (target == self)
  {
    [(SUBarButtonItem *)self->_gotoStoreButtonItem setTarget:0];
  }

  target2 = [(SUBarButtonItem *)self->_rightBarButtonItem target];

  if (target2 == self)
  {
    [(SUBarButtonItem *)self->_rightBarButtonItem setTarget:0];
  }

  v7.receiver = self;
  v7.super_class = SKProductPageViewController;
  [(SUViewController *)&v7 dealloc];
}

+ (void)getCanLoadWithURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isOnDeviceAppInstallationAllowed = [mEMORY[0x277D262A0] isOnDeviceAppInstallationAllowed];

  if (isOnDeviceAppInstallationAllowed)
  {
    v10 = [MEMORY[0x277D69C90] contextWithBagType:0];
    mEMORY[0x277D7FD50] = [MEMORY[0x277D7FD50] sharedCache];
    v12 = [mEMORY[0x277D7FD50] URLBagForContext:v10];

    if (v12)
    {
      [self _validateURL:lCopy withURLBag:v12 completionBlock:blockCopy];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v10];
      objc_initWeak(&location, v13);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __65__SKProductPageViewController_getCanLoadWithURL_completionBlock___block_invoke;
      v18 = &unk_2781F80A0;
      objc_copyWeak(v22, &location);
      v22[1] = self;
      v19 = lCopy;
      v20 = v10;
      v21 = blockCopy;
      [v13 setCompletionBlock:&v15];
      mainQueue = [MEMORY[0x277D7FD20] mainQueue];
      [mainQueue addOperation:v13];

      objc_destroyWeak(v22);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

void __65__SKProductPageViewController_getCanLoadWithURL_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained success];

  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  if (v3)
  {
    v10 = [MEMORY[0x277D7FD50] sharedCache];
    v6 = [v10 URLBagForContext:*(a1 + 40)];
    [v4 _validateURL:v5 withURLBag:v6 completionBlock:*(a1 + 48)];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v9 = *(a1 + 32);

    [v8 _validateURL:v9 withURLBag:0 completionBlock:v7];
  }
}

- (void)loadProductWithParameters:(id)parameters
{
  if (self->_productParameters != parameters)
  {
    v4 = [parameters copy];
    productParameters = self->_productParameters;
    self->_productParameters = v4;

    [(SKProductPageViewController *)self _loadRequestForProductParameters];
  }
}

- (void)loadProductWithRequest:(id)request
{
  requestCopy = request;
  v5 = [MEMORY[0x277D69C90] contextWithBagType:0];
  mEMORY[0x277D7FD50] = [MEMORY[0x277D7FD50] sharedCache];
  v7 = [mEMORY[0x277D7FD50] URLBagForContext:v5];

  if (v7)
  {
    [(SKProductPageViewController *)self _loadProductWithRequest:requestCopy];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v5];
    v9 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __54__SKProductPageViewController_loadProductWithRequest___block_invoke;
    v15 = &unk_2781F80C8;
    v16 = v9;
    v17 = requestCopy;
    v10 = v9;
    [v8 setCompletionBlock:&v12];
    mainQueue = [MEMORY[0x277D7FD20] mainQueue];
    [mainQueue addOperation:v8];
  }
}

void __54__SKProductPageViewController_loadProductWithRequest___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__SKProductPageViewController_loadProductWithRequest___block_invoke_2;
  v2[3] = &unk_2781F80C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __54__SKProductPageViewController_loadProductWithRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _loadProductWithRequest:*(a1 + 40)];
}

- (NSDictionary)scriptContextDictionary
{
  copyScriptProperties = [(SUStorePageViewController *)self->_storePageViewController copyScriptProperties];
  contextDictionary = [copyScriptProperties contextDictionary];

  return contextDictionary;
}

- (void)setAdditionalPurchaseParameters:(id)parameters
{
  if (self->_additionalPurchaseParameters != parameters)
  {
    v4 = [parameters copy];
    additionalPurchaseParameters = self->_additionalPurchaseParameters;
    self->_additionalPurchaseParameters = v4;

    clientContext = self->_clientContext;
    v7 = self->_additionalPurchaseParameters;

    [(SKUIClientContext *)clientContext _setAdditionalPurchaseParameters:v7];
  }
}

- (void)setAffiliateIdentifier:(id)identifier
{
  if (self->_affiliateIdentifier != identifier)
  {
    v4 = [identifier copy];
    affiliateIdentifier = self->_affiliateIdentifier;
    self->_affiliateIdentifier = v4;

    clientContext = self->_clientContext;
    v7 = self->_affiliateIdentifier;

    [(SKUIClientContext *)clientContext _setPurchaseAffiliateIdentifier:v7];
  }
}

- (void)setAskToBuy:(BOOL)buy
{
  if (self->_askToBuy != buy)
  {
    self->_askToBuy = buy;
    [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setAskPermission:?];
    [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController setAskPermission:self->_askToBuy];
    clientInterface = [(SUViewController *)self clientInterface];
    [clientInterface setInAskToBuyApprovalFlow:self->_askToBuy];
  }
}

- (void)setPromptString:(id)string
{
  stringCopy = string;
  if (self->_promptString != stringCopy)
  {
    v7 = stringCopy;
    objc_storeStrong(&self->_promptString, string);
    [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setBannerText:self->_promptString];
    [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController setBannerText:self->_promptString];
    clientInterface = [(SUViewController *)self clientInterface];
    [clientInterface setAskToBuyApprovalPrompt:self->_promptString];

    stringCopy = v7;
  }
}

- (void)setProductPageStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    if (style)
    {
      if (style == 3)
      {
        v5 = 0;
      }

      else
      {
        v5 = 15;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = 15;
      }
    }

    [(SKProductPageViewController *)self setEdgesForExtendedLayout:v5];
  }
}

- (void)setScriptContextDictionary:(id)dictionary
{
  storePageViewController = self->_storePageViewController;
  dictionaryCopy = dictionary;
  copyScriptProperties = [(SUStorePageViewController *)storePageViewController copyScriptProperties];
  [copyScriptProperties setContextDictionary:dictionaryCopy];
  [(SKUIBannerViewController *)self->_bannerViewController setScriptContextDictionary:dictionaryCopy];

  [(SUStorePageViewController *)self->_storePageViewController setScriptProperties:copyScriptProperties];
}

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  if (success)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 productPageDidFinishLoad:self];
    }

    [(SKProductPageViewController *)self _reloadGotoStoreButton];
  }

  else
  {

    [(SKProductPageViewController *)self _failWithError:0];
  }
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.88 alpha:1.0];
  [v4 setBackgroundColor:v3];

  [(SKProductPageViewController *)self setView:v4];
  [(SKProductPageViewController *)self _reloadViews];
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  if (SKUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return orientation == 1 || userInterfaceIdiom != 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKProductPageViewController;
  [(SUViewController *)&v4 viewDidAppear:appear];
  [(SUStorePageViewController *)self->_storePageViewController _setReloadsWhenCacheExpired:1];
}

- (void)setClientInterface:(id)interface
{
  interfaceCopy = interface;
  clientInterface = [(SUViewController *)self clientInterface];
  v6 = clientInterface;
  if (clientInterface != interfaceCopy)
  {
    [clientInterface setDelegate:0];
    if (!self->_purchaseManager)
    {
      v7 = objc_alloc_init(MEMORY[0x277D7FE58]);
      purchaseManager = self->_purchaseManager;
      self->_purchaseManager = v7;

      [(SUPurchaseManager *)self->_purchaseManager setDelegate:self];
    }

    [interfaceCopy setDelegate:self];
    [interfaceCopy setPurchaseManager:self->_purchaseManager];
    [interfaceCopy setInAskToBuyApprovalFlow:self->_askToBuy];
    [interfaceCopy setAskToBuyApprovalPrompt:self->_promptString];
    [(SUViewController *)self->_storePageViewController setClientInterface:interfaceCopy];
  }

  v9.receiver = self;
  v9.super_class = SKProductPageViewController;
  [(SUViewController *)&v9 setClientInterface:interfaceCopy];
}

- (BOOL)iPhoneProductPage:(id)page shouldOpenItem:(id)item
{
  v4 = MEMORY[0x277CBEBC0];
  itemCopy = item;
  v6 = [v4 alloc];
  productPageURLString = [itemCopy productPageURLString];

  v8 = [v6 initWithString:productPageURLString];
  v9 = UIITunesStoreResolvedURLForHTTPURL();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] openURL:v12 options:MEMORY[0x277CBEC10] completionHandler:0];

  return 0;
}

- (BOOL)iPhoneProductPage:(id)page shouldOpenURL:(id)l
{
  lCopy = l;
  v5 = UIITunesStoreResolvedURLForHTTPURL();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = lCopy;
  }

  v8 = v7;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] openURL:v8 options:MEMORY[0x277CBEC10] completionHandler:0];

  return 0;
}

- (void)iPadProductPage:(id)page openItem:(id)item
{
  v4 = MEMORY[0x277CBEBC0];
  itemCopy = item;
  v6 = [v4 alloc];
  productPageURLString = [itemCopy productPageURLString];

  v8 = [v6 initWithString:productPageURLString];
  v9 = UIITunesStoreResolvedURLForHTTPURL();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] openURL:v12 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)iPadProductPage:(id)page openURL:(id)l viewControllerBlock:(id)block
{
  pageCopy = page;
  lCopy = l;
  blockCopy = block;
  if (lCopy || ([pageCopy item], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "productPageURLString"), v15 = objc_claimAutoreleasedReturnValue(), v14, v15) && (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v15), lCopy = objc_claimAutoreleasedReturnValue(), v15, lCopy))
  {
    v9 = UIITunesStoreResolvedURLForHTTPURL();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = lCopy;
    }

    v12 = v11;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:v12 options:MEMORY[0x277CBEC10] completionHandler:0];
  }
}

- (void)clientInterface:(id)interface exitStoreWithReason:(int64_t)reason
{
  if ((reason - 3) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = reason - 2;
  }

  [(SKProductPageViewController *)self _sendDidFinishWithResult:v4];
}

- (void)clientInterface:(id)interface hidePreviewOverlayAnimated:(BOOL)animated
{
  if (self->_previewOverlay)
  {
    animatedCopy = animated;
    navigationController = [(SUViewController *)self navigationController];
    previewOverlay = self->_previewOverlay;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__SKProductPageViewController_clientInterface_hidePreviewOverlayAnimated___block_invoke;
    v8[3] = &unk_2781F80F0;
    v8[4] = self;
    [(SUPreviewOverlayViewController *)previewOverlay hideInNavigationController:navigationController animated:animatedCopy completionBlock:v8];
  }
}

void __74__SKProductPageViewController_clientInterface_hidePreviewOverlayAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1248) removeFromParentViewController];
  v2 = [*(*(a1 + 32) + 1248) view];
  [v2 removeFromSuperview];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x277D7FF28] object:*(*(a1 + 32) + 1248)];
}

- (void)clientInterface:(id)interface presentDialog:(id)dialog
{
  dialogCopy = dialog;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 productPage:self presentAlertForDialog:dialogCopy];
  }

  else
  {
    dialogManager = self->_dialogManager;
    if (!dialogManager)
    {
      v10 = objc_alloc_init(MEMORY[0x277D7FDC8]);
      v11 = self->_dialogManager;
      self->_dialogManager = v10;

      dialogManager = self->_dialogManager;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SKProductPageViewController_clientInterface_presentDialog___block_invoke;
    v12[3] = &unk_2781F8118;
    v13 = dialogCopy;
    selfCopy = self;
    [(SUDialogManager *)dialogManager presentDialog:v13 withCompletionBlock:v12];
  }
}

void __61__SKProductPageViewController_clientInterface_presentDialog___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) buttons];
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = v4;
    v5 = [v4 count] > a2;
    v4 = v7;
    if (v5)
    {
      v6 = [v7 objectAtIndex:a2];
      if ([v6 actionType] == 5)
      {
        [*(a1 + 40) _sendDidFinishWithResult:0];
      }

      v4 = v7;
    }
  }
}

- (void)clientInterface:(id)interface setStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation
{
  hiddenCopy = hidden;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mEMORY[0x277D75128] = objc_loadWeakRetained(&self->_delegate);
    [mEMORY[0x277D75128] productPage:self setStatusBarHidden:hiddenCopy withAnimation:animation];
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setStatusBarHidden:hiddenCopy withAnimation:animation];
  }
}

- (void)clientInterface:(id)interface setStatusBarStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mEMORY[0x277D75128] = objc_loadWeakRetained(&self->_delegate);
    [mEMORY[0x277D75128] productPage:self setStatusBarStyle:style animated:animatedCopy];
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setStatusBarStyle:style animated:animatedCopy];
  }
}

- (void)clientInterface:(id)interface showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _previewOverlay = [(SKProductPageViewController *)self _previewOverlay];
  if ([_previewOverlay isContentLoaded])
  {
    [(SKProductPageViewController *)self _showPreviewOverlayAnimated:animatedCopy];
  }

  else
  {
    defaultRequestProperties = [objc_opt_class() defaultRequestProperties];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__SKProductPageViewController_clientInterface_showPreviewOverlayAnimated___block_invoke;
    v8[3] = &unk_2781F8140;
    v8[4] = self;
    v9 = animatedCopy;
    [_previewOverlay loadWithRequestProperties:defaultRequestProperties completionBlock:v8];
  }
}

uint64_t __74__SKProductPageViewController_clientInterface_showPreviewOverlayAnimated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _showPreviewOverlayAnimated:*(result + 40)];
  }

  return result;
}

- (void)clientInterface:(id)interface willDismissViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 productPage:self willDismissViewController:controllerCopy];
  }
}

- (void)clientInterface:(id)interface willPresentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 productPage:self willPresentViewController:controllerCopy];
  }
}

- (id)scriptInterfaceForClientInterface:(id)interface
{
  v4 = objc_alloc_init(SKScriptInterface);
  [(SKScriptInterface *)v4 setParentProductPageViewController:self];

  return v4;
}

- (void)purchaseManager:(id)manager didFinishPurchaseRequest:(id)request withError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  requestCopy = request;
  errorCopy = error;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  v15 = oSLogObject;
  if (!errorCopy)
  {
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      *v24 = 138412290;
      *&v24[4] = objc_opt_class();
      v21 = *&v24[4];
      LODWORD(v23) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_19:

        [(SKProductPageViewController *)self _sendDidFinishWithResult:4];
        goto LABEL_20;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, v24, v23, *v24, *&v24[8]}];
      free(v22);
      SSFileLog();
    }

    goto LABEL_19;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    *v24 = 138412546;
    *&v24[4] = objc_opt_class();
    *&v24[12] = 2112;
    *&v24[14] = errorCopy;
    v16 = *&v24[4];
    LODWORD(v23) = 22;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_11;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, v24, v23, *v24, *&v24[16], v25}];
    free(v17);
    SSFileLog();
  }

LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 productPage:self purchaseBatchFailedWithError:errorCopy];
  }

LABEL_20:
}

- (void)purchaseManager:(id)manager willAddPurchases:(id)purchases
{
  v38 = *MEMORY[0x277D85DE8];
  purchasesCopy = purchases;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = purchasesCopy;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(NSString *)self->_additionalPurchaseParameters length])
          {
            buyParameters = [v11 buyParameters];
            if (buyParameters)
            {
              v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@&%@", buyParameters, self->_additionalPurchaseParameters];
              [v11 setBuyParameters:v13];
            }
          }

          if (self->_affiliateIdentifier)
          {
            [v11 setAffiliateIdentifier:?];
          }

          if (self->_urlBagType)
          {
            requestProperties = [v11 requestProperties];
            v15 = [requestProperties mutableCopy];

            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x277D69BD0]);
            }

            [v15 setURLBagType:self->_urlBagType];
            [v11 setRequestProperties:v15];
          }

          [v28 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v18 = shouldLog | 2;
  }

  else
  {
    v18 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (v20)
  {
    v21 = objc_opt_class();
    v33 = 138412546;
    v34 = v21;
    v35 = 2112;
    v36 = v28;
    v22 = v21;
    LODWORD(v27) = 22;
    v23 = _os_log_send_and_compose_impl();

    if (!v23)
    {
      goto LABEL_30;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v33, v27}];
    free(v23);
    SSFileLog();
  }

LABEL_30:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = objc_loadWeakRetained(&self->_delegate);
    [v26 productPage:self willMakePurchases:v28];
  }
}

- (void)itemStateCenter:(id)center didFinishPurchases:(id)purchases
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  purchasesCopy = purchases;
  v6 = [purchasesCopy countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(purchasesCopy);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      error = [v10 error];

      if (error)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [purchasesCopy countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    error2 = [v10 error];

    if (!error2)
    {
      goto LABEL_22;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v35 = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = error2;
      v18 = v17;
      LODWORD(v30) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
        goto LABEL_20;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v35, v30, v31}];
      free(v19);
      SSFileLog();
    }

LABEL_20:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 productPage:self purchaseBatchFailedWithError:error2];
    }

    goto LABEL_32;
  }

LABEL_9:

LABEL_22:
  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v25 = shouldLog2 | 2;
  }

  else
  {
    v25 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v25 &= 2u;
  }

  if (!v25)
  {
    goto LABEL_30;
  }

  v27 = objc_opt_class();
  v35 = 138412290;
  v36 = v27;
  v28 = v27;
  LODWORD(v30) = 12;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:{4, &v35, v30, v31}];
    free(v29);
    SSFileLog();
LABEL_30:
  }

  [(SKProductPageViewController *)self _sendDidFinishWithResult:4];
  error2 = 0;
LABEL_32:
}

- (void)itemStateCenter:(id)center didFinishSoftwarePurchases:(id)purchases
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  purchasesCopy = purchases;
  v6 = [purchasesCopy countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(purchasesCopy);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      error = [v10 error];

      if (error)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [purchasesCopy countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    error2 = [v10 error];

    if (!error2)
    {
      goto LABEL_22;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v35 = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = error2;
      v18 = v17;
      LODWORD(v30) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
        goto LABEL_20;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v35, v30, v31}];
      free(v19);
      SSFileLog();
    }

LABEL_20:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 productPage:self purchaseBatchFailedWithError:error2];
    }

    goto LABEL_32;
  }

LABEL_9:

LABEL_22:
  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v25 = shouldLog2 | 2;
  }

  else
  {
    v25 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v25 &= 2u;
  }

  if (!v25)
  {
    goto LABEL_30;
  }

  v27 = objc_opt_class();
  v35 = 138412290;
  v36 = v27;
  v28 = v27;
  LODWORD(v30) = 12;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:{4, &v35, v30, v31}];
    free(v29);
    SSFileLog();
LABEL_30:
  }

  [(SKProductPageViewController *)self _sendDidFinishWithResult:4];
  error2 = 0;
LABEL_32:
}

- (void)_gotoStoreButtonAction:(id)action
{
  actionCopy = action;
  nativeURL = self->_nativeURL;
  if (nativeURL)
  {
    displayedURL = nativeURL;
  }

  else
  {
    displayedURL = [(SUStorePageViewController *)self->_storePageViewController displayedURL];
    if (!displayedURL)
    {
      goto LABEL_5;
    }
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v7 = UIITunesStoreResolvedURLForHTTPURL();
  [mEMORY[0x277D75128] openURL:v7];

LABEL_5:
  [(SKProductPageViewController *)self _sendDidFinishWithResult:3];
}

- (void)_purchaseFailedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKey:*MEMORY[0x277D7FF40]];

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    *v18 = 138412802;
    *&v18[4] = objc_opt_class();
    *&v18[12] = 2112;
    *&v18[14] = object;
    *&v18[22] = 2112;
    v19 = v7;
    v12 = *&v18[4];
    LODWORD(v17) = 32;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_10;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, v18, v17, *v18, *&v18[16], v19}];
    free(v13);
    SSFileLog();
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 productPage:self didFinishPurchase:object withError:v7];
  }
}

- (void)_purchaseFinishedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  object = [notification object];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v15 = 138412546;
    *&v15[4] = objc_opt_class();
    *&v15[12] = 2112;
    *&v15[14] = object;
    v9 = *&v15[4];
    LODWORD(v14) = 22;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_10;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v15, v14, *v15, *&v15[16]}];
    free(v10);
    SSFileLog();
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 productPage:self didFinishPurchase:object withError:0];
  }
}

- (void)_applicationWillEnterForeground
{
  lastPageEvent = self->_lastPageEvent;
  if (lastPageEvent)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:date];

    style = self->_style;
    if (style == 3 || !style && ([MEMORY[0x277D75418] currentDevice], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7 == 1))
    {
      v8 = &OBJC_IVAR___SKProductPageViewController__ipadProductPageViewController;
    }

    else
    {
      v8 = &OBJC_IVAR___SKProductPageViewController__iphoneProductPageViewController;
    }

    v9 = *(&self->super.super.super.super.isa + *v8);
    v10 = self->_lastPageEvent;

    [v9 configureMetricsWithPageEvent:v10];
  }
}

- (void)loadWithProductPage:(id)page
{
  pageCopy = page;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SKProductPageViewController_loadWithProductPage___block_invoke;
  v6[3] = &unk_2781F8168;
  objc_copyWeak(&v8, &location);
  v5 = pageCopy;
  v7 = v5;
  [(SKProductPageViewController *)self _loadClientContextWithCompletionBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __51__SKProductPageViewController_loadWithProductPage___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showProductPage:*(a1 + 32) pageEvent:0];
  }

  else
  {
    [WeakRetained _sendDidFailLoadWithError:v7];
  }
}

- (void)loadWithStorePageRequest:(id)request
{
  requestCopy = request;
  -[SKProductPageViewController setProductPageStyle:](self, "setProductPageStyle:", [requestCopy productPageStyle]);
  productURL = [requestCopy productURL];
  if (productURL)
  {
    v5 = productURL;
    v6 = [MEMORY[0x277CBABA0] requestWithURL:productURL];
    [(SKProductPageViewController *)self loadProductWithRequest:v6];
  }

  else
  {
    productParameters = [requestCopy productParameters];
    if (!productParameters)
    {
      goto LABEL_6;
    }

    v5 = productParameters;
    [(SKProductPageViewController *)self loadProductWithParameters:productParameters];
  }

LABEL_6:
}

+ (id)_defaultClientInterface
{
  v3 = objc_alloc_init(MEMORY[0x277D7FDC0]);
  _defaultClientIdentifier = [self _defaultClientIdentifier];
  [v3 setClientIdentifier:_defaultClientIdentifier];

  v5 = objc_alloc_init(SKUIViewControllerFactory);
  [v3 setViewControllerFactory:v5];

  return v3;
}

- (void)_sendDidFinishWithResult:(int64_t)result
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 productPage:self didFinishWithResult:result];
  }
}

- (void)_setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
    [(SKUIClientContext *)self->_clientContext setMetricsPageContext:@"Sheet" forViewController:self];
    contextCopy = v6;
  }
}

- (void)_showPageWithRequest:(id)request animated:(BOOL)animated
{
  animatedCopy = animated;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = v8;
  if (v7)
  {
    [(SKProductPageViewController *)v8 productPage:self presentProductPageWithRequest:requestCopy animated:animatedCopy];
  }

  else
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = objc_alloc_init(SKProductPageViewController);
    clientInterface = [(SUViewController *)self clientInterface];
    [(SKProductPageViewController *)v9 setClientInterface:clientInterface];

    [(SKProductPageViewController *)v9 loadWithStorePageRequest:requestCopy];
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 productPage:self presentProductPage:v9 animated:animatedCopy];
  }

LABEL_6:
}

+ (id)_defaultClientIdentifier
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.ios.StoreKitUIService"])
  {
    v4 = 0;
  }

  else
  {
    v4 = bundleIdentifier;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"ThirdParty";
  }

  v6 = v5;

  return v5;
}

+ (void)_validateURL:(id)l withURLBag:(id)bag completionBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  lCopy = l;
  blockCopy = block;
  v9 = [bag valueForKey:@"ix-store-sheet"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKey:@"host-patterns"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = 0;
LABEL_35:

        goto LABEL_36;
      }

      host = [lCopy host];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      path = v10;
      v13 = [path countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v13)
      {
        v14 = v13;
        v30 = v10;
        v32 = v9;
        v29 = lCopy;
        v15 = *v39;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(path);
            }

            v17 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:*(*(&v38 + 1) + 8 * i) options:1 error:0];
            v18 = [v17 rangeOfFirstMatchInString:host options:0 range:{0, objc_msgSend(host, "length")}];

            if (v18 != 0x7FFFFFFFFFFFFFFFLL)
            {

              lCopy = v29;
              v10 = v30;
              v9 = v32;
              goto LABEL_16;
            }
          }

          v14 = [path countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v19 = 0;
        v20 = 0;
        lCopy = v29;
        v10 = v30;
        v9 = v32;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      goto LABEL_33;
    }

LABEL_16:
    host = [v9 objectForKey:@"path-patterns"];
    if (host)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        path = [lCopy path];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        host = host;
        v22 = [host countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v22)
        {
          v23 = v22;
          v31 = v10;
          v33 = v9;
          v24 = lCopy;
          v25 = *v35;
LABEL_20:
          v26 = 0;
          while (1)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(host);
            }

            v20 = 1;
            v27 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:*(*(&v34 + 1) + 8 * v26) options:1 error:0];
            v28 = [v27 rangeOfFirstMatchInString:path options:0 range:{0, objc_msgSend(path, "length")}];

            if (v28 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v23 == ++v26)
            {
              v23 = [host countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v23)
              {
                goto LABEL_20;
              }

              v20 = 0;
              break;
            }
          }

          lCopy = v24;
          v10 = v31;
          v9 = v33;
        }

        else
        {
          v20 = 0;
        }

        v19 = 1;
LABEL_33:

        goto LABEL_34;
      }

      v20 = 0;
      v19 = 1;
    }

    else
    {
      v19 = 1;
      v20 = 1;
    }

LABEL_34:

    v21 = v19 & v20;
    goto LABEL_35;
  }

  v21 = 0;
LABEL_36:
  blockCopy[2](blockCopy, v21);
}

- (void)_failWithError:(id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!errorCopy)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CDD438];
    v10 = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2827FFAC8 table:0];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    errorCopy = [v5 errorWithDomain:v6 code:5 userInfo:v9];
  }

  [(SUStorePageViewController *)self->_storePageViewController setSkLoading:0];
  [(SKProductPageViewController *)self _sendDidFailLoadWithError:errorCopy];
}

- (void)_loadClientContextWithCompletionBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  clientInterface = [(SUViewController *)self clientInterface];
  clientIdentifier = [clientInterface clientIdentifier];

  if (!clientIdentifier)
  {
    clientIdentifier = [objc_opt_class() _defaultClientIdentifier];
  }

  if (!self->_clientContext)
  {
    v7 = +[SKUIClientContext defaultContext];
    clientContext = self->_clientContext;
    self->_clientContext = v7;

    clientInterface2 = [(SKUIClientContext *)self->_clientContext clientInterface];
    [clientInterface2 setClientIdentifier:clientIdentifier];

    [(SKUIClientContext *)self->_clientContext setMetricsPageContext:@"Sheet" forViewController:self];
    [(SKUIClientContext *)self->_clientContext _setAdditionalPurchaseParameters:self->_additionalPurchaseParameters];
    [(SKUIClientContext *)self->_clientContext _setPurchaseAffiliateIdentifier:self->_affiliateIdentifier];
    [(SKUIClientContext *)self->_clientContext _setPurchaseURLBagType:self->_urlBagType];
    if (!self->_clientContext)
    {
      v10 = objc_alloc_init(SKUIReloadConfigurationOperation);
      objc_initWeak(&location, self);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __69__SKProductPageViewController__loadClientContextWithCompletionBlock___block_invoke;
      v21[3] = &unk_2781F81B8;
      objc_copyWeak(&v25, &location);
      v22 = clientIdentifier;
      selfCopy = self;
      v24 = blockCopy;
      [(SKUIReloadConfigurationOperation *)v10 setOutputBlock:v21];
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      v15 = oSLogObject;
      if (shouldLogToDisk)
      {
        shouldLog |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        shouldLog &= 2u;
      }

      if (shouldLog)
      {
        v16 = objc_opt_class();
        v27 = 138412290;
        v28 = v16;
        v17 = v16;
        LODWORD(v20) = 12;
        v18 = _os_log_send_and_compose_impl();

        if (!v18)
        {
LABEL_15:

          v19 = objc_alloc_init(MEMORY[0x277CCABD8]);
          [v19 addOperation:v10];

          objc_destroyWeak(&v25);
          objc_destroyWeak(&location);

          goto LABEL_6;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v27, v20}];
        free(v18);
        SSFileLog();
      }

      goto LABEL_15;
    }
  }

  (*(blockCopy + 2))(blockCopy, 1, 0);
LABEL_6:
}

void __69__SKProductPageViewController__loadClientContextWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__SKProductPageViewController__loadClientContextWithCompletionBlock___block_invoke_2;
  v12[3] = &unk_2781F8190;
  objc_copyWeak(&v18, (a1 + 56));
  v13 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v12);

  objc_destroyWeak(&v18);
}

void __69__SKProductPageViewController__loadClientContextWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && *(a1 + 32))
  {
    v2 = [[SKUIClientContext alloc] initWithConfigurationDictionary:*(a1 + 32)];
    v3 = [(SKUIClientContext *)v2 clientInterface];
    [v3 setClientIdentifier:*(a1 + 40)];

    [(SKUIClientContext *)v2 setMetricsPageContext:@"Sheet" forViewController:*(a1 + 48)];
    [(SKUIClientContext *)v2 _setAdditionalPurchaseParameters:*(*(a1 + 48) + 1136)];
    [(SKUIClientContext *)v2 _setPurchaseAffiliateIdentifier:*(*(a1 + 48) + 1144)];
    [(SKUIClientContext *)v2 _setPurchaseURLBagType:*(*(a1 + 48) + 1312)];
    v4 = WeakRetained[146];
    WeakRetained[146] = v2;
  }

  (*(*(a1 + 64) + 16))();
}

- (void)_loadProductWithRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SKProductPageViewController__loadProductWithRequest___block_invoke;
  v6[3] = &unk_2781F8168;
  objc_copyWeak(&v8, &location);
  v5 = requestCopy;
  v7 = v5;
  [(SKProductPageViewController *)self _loadClientContextWithCompletionBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __55__SKProductPageViewController__loadProductWithRequest___block_invoke(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained _newRequestPropertiesWithRequest:*(a1 + 32)];

  if (a2)
  {
    v8 = [MEMORY[0x277D69B38] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      [v15 URL];
      v25 = 138412546;
      v26 = v14;
      v28 = v27 = 2112;
      LODWORD(v21) = 22;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v25, v21}];
        free(v17);
        SSFileLog();
      }
    }

    else
    {
    }

    v20 = [objc_alloc(MEMORY[0x277D69C98]) initWithRequestProperties:v7];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__SKProductPageViewController__loadProductWithRequest___block_invoke_106;
    v22[3] = &unk_2781F8208;
    objc_copyWeak(&v24, (a1 + 40));
    v23 = v7;
    [v20 startWithConnectionResponseBlock:v22];

    objc_destroyWeak(&v24);
  }

  else
  {
    v19 = objc_loadWeakRetained((a1 + 40));
    [v19 _setResponse:0 forProperties:v7 error:v5];
  }
}

void __55__SKProductPageViewController__loadProductWithRequest___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SKProductPageViewController__loadProductWithRequest___block_invoke_2;
  v9[3] = &unk_2781F81E0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __55__SKProductPageViewController__loadProductWithRequest___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setResponse:*(a1 + 32) forProperties:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_loadRequestForProductParameters
{
  v39[1] = *MEMORY[0x277D85DE8];
  if ([(NSDictionary *)self->_productParameters count])
  {
    if (self->_bannerViewController)
    {
      objc_initWeak(location, self);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __63__SKProductPageViewController__loadRequestForProductParameters__block_invoke;
      v33[3] = &unk_2781F8168;
      objc_copyWeak(&v34, location);
      v33[4] = self;
      [(SKProductPageViewController *)self _loadClientContextWithCompletionBlock:v33];
      objc_destroyWeak(&v34);
      objc_destroyWeak(location);
    }

    else
    {
      v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
      mEMORY[0x277D7FD50] = [MEMORY[0x277D7FD50] sharedCache];
      v5 = [mEMORY[0x277D7FD50] URLBagForContext:v3];

      if (v5)
      {
        v6 = [v5 valueForKey:@"ix-store-sheet"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (-[SKProductPageViewController productPageStyle](self, "productPageStyle") == 1 && ([v6 objectForKey:@"banner-lookup-url"], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "objectForKey:", @"lookup-url"), (v7 = objc_claimAutoreleasedReturnValue()) != 0)) && (v8 = objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]), "initWithString:", v7), v7, v8))
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
          shouldLog = [mEMORY[0x277D69B38] shouldLog];
          if ([mEMORY[0x277D69B38] shouldLogToDisk])
          {
            v11 = shouldLog | 2;
          }

          else
          {
            v11 = shouldLog;
          }

          oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
          if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
          {
            v11 &= 2u;
          }

          if (v11)
          {
            *location = 138412546;
            *&location[4] = objc_opt_class();
            v36 = 2112;
            v37 = v8;
            v13 = *&location[4];
            LODWORD(v28) = 22;
            v14 = _os_log_send_and_compose_impl();

            if (v14)
            {
              v15 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, location, v28}];
              free(v14);
              SSFileLog();
            }
          }

          else
          {
          }

          v25 = [MEMORY[0x277CBABA0] requestWithURL:v8];
          [(SKProductPageViewController *)self loadProductWithRequest:v25];
        }

        else
        {
          mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
          shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
          if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
          {
            v18 = shouldLog2 | 2;
          }

          else
          {
            v18 = shouldLog2;
          }

          oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
          if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v18 &= 2u;
          }

          if (v18)
          {
            *location = 138412290;
            *&location[4] = objc_opt_class();
            v20 = *&location[4];
            LODWORD(v28) = 12;
            v21 = _os_log_send_and_compose_impl();

            if (v21)
            {
              v22 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, location, v28}];
              free(v21);
              SSFileLog();
            }
          }

          else
          {
          }

          v24 = MEMORY[0x277CCA9B8];
          v38 = *MEMORY[0x277CCA450];
          v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v25 = [v8 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2827FFAC8 table:0];
          v39[0] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
          v27 = [v24 errorWithDomain:*MEMORY[0x277CDD438] code:5 userInfo:v26];
          [(SKProductPageViewController *)self _failWithError:v27];
        }
      }

      else
      {
        v6 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v3];
        objc_initWeak(location, v6);
        objc_initWeak(&from, self);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __63__SKProductPageViewController__loadRequestForProductParameters__block_invoke_114;
        v29[3] = &unk_2781F8258;
        objc_copyWeak(&v30, location);
        objc_copyWeak(&v31, &from);
        [v6 setCompletionBlock:v29];
        [(SUStorePageViewController *)self->_storePageViewController setSkLoading:1];
        mainQueue = [MEMORY[0x277D7FD20] mainQueue];
        [mainQueue addOperation:v6];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&v30);
        objc_destroyWeak(&from);
        objc_destroyWeak(location);
      }
    }
  }
}

void __63__SKProductPageViewController__loadRequestForProductParameters__block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a2)
  {
    if (WeakRetained)
    {
      [WeakRetained[145] setClientContext:*(*(a1 + 32) + 1168)];
      v7 = v6[145];
      v8 = v6[157];
      v9 = [*(a1 + 32) mainDocumentURL];
      [v7 loadWithProductParameters:v8 mainDocumentURL:v9];
    }
  }

  else
  {
    [WeakRetained _sendDidFailLoadWithError:v10];
  }
}

void __63__SKProductPageViewController__loadRequestForProductParameters__block_invoke_114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SKProductPageViewController__loadRequestForProductParameters__block_invoke_2;
  v4[3] = &unk_2781F8230;
  v5 = WeakRetained;
  v3 = WeakRetained;
  objc_copyWeak(&v6, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v6);
}

void __63__SKProductPageViewController__loadRequestForProductParameters__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) success])
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      [v8 error];
      v22 = 138412546;
      v23 = v7;
      v25 = v24 = 2112;
      LODWORD(v18) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_14:

        v11 = objc_loadWeakRetained((a1 + 40));
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CDD438];
        v20 = *MEMORY[0x277CCA450];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2827FFAC8 table:0];
        v21 = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v17 = [v12 errorWithDomain:v13 code:5 userInfo:v16];
        [v11 _failWithError:v17];

        return;
      }

      v5 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v22, v18}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 _loadRequestForProductParameters];
}

- (id)_newRequestPropertiesWithRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v16 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURLRequest:requestCopy];
  [v16 setITunesStoreRequest:1];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_productParameters;
  v4 = [(NSDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_productParameters objectForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = [v9 stringValue];

          v9 = stringValue;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 setObject:v9 forKey:v8];
        }
      }

      v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  [v16 setRequestParameters:v18];
  v11 = self->_style - 1;
  if (v11 >= 3)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v12 = @"iPad";
    }

    else
    {
      v12 = @"iPhone";
    }
  }

  else
  {
    v12 = off_2781F8278[v11];
  }

  [v16 setValue:v12 forRequestParameter:@"style"];

  return v16;
}

- (id)_previewOverlay
{
  previewOverlay = self->_previewOverlay;
  if (!previewOverlay)
  {
    v4 = objc_alloc_init(MEMORY[0x277D7FE48]);
    v5 = self->_previewOverlay;
    self->_previewOverlay = v4;

    v6 = self->_previewOverlay;
    clientInterface = [(SUViewController *)self clientInterface];
    [(SUPreviewOverlayViewController *)v6 setClientInterface:clientInterface];

    previewOverlay = self->_previewOverlay;
  }

  return previewOverlay;
}

- (void)_reloadGotoStoreButton
{
  nativeURL = self->_nativeURL;
  if (nativeURL)
  {
    displayedURL = nativeURL;
  }

  else
  {
    displayedURL = [(SUStorePageViewController *)self->_storePageViewController displayedURL];
    if (!displayedURL)
    {
      v30 = 0;
      v7 = 0;
      goto LABEL_9;
    }
  }

  v30 = displayedURL;
  v5 = UIITunesStoreResolvedURLForHTTPURL();
  scheme = [v5 scheme];
  if ([scheme isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"https"))
  {
    v7 = 0;
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v7 = [mEMORY[0x277D75128] canOpenURL:v5];
  }

LABEL_9:
  rightBarButtonItem = self->_rightBarButtonItem;
  if (!rightBarButtonItem)
  {
    rightBarButtonItem = self->_gotoStoreButtonItem;
  }

  v10 = rightBarButtonItem;
  if ((v7 & 1) != 0 && self->_showsStoreButton)
  {
    gotoStoreButtonItem = self->_gotoStoreButtonItem;
    if (!gotoStoreButtonItem)
    {
      v12 = objc_alloc_init(MEMORY[0x277D7FDB0]);
      v13 = self->_gotoStoreButtonItem;
      self->_gotoStoreButtonItem = v12;

      [(SUBarButtonItem *)self->_gotoStoreButtonItem setAction:sel__gotoStoreButtonAction_];
      [(SUBarButtonItem *)self->_gotoStoreButtonItem setTarget:self];
      v14 = self->_gotoStoreButtonItem;
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"GOTO_STORE_BUTTON" value:&stru_2827FFAC8 table:0];
      [(SUBarButtonItem *)v14 setTitle:v16];

      gotoStoreButtonItem = self->_gotoStoreButtonItem;
    }

    v17 = gotoStoreButtonItem;
  }

  else
  {
    target = [(SUBarButtonItem *)self->_gotoStoreButtonItem target];

    if (target == self)
    {
      [(SUBarButtonItem *)self->_gotoStoreButtonItem setTarget:0];
    }

    v19 = self->_gotoStoreButtonItem;
    self->_gotoStoreButtonItem = 0;

    v17 = 0;
  }

  v20 = self->_rightBarButtonItem;
  if (self->_showsRightBarButton)
  {
    if (!v20)
    {
      v21 = objc_alloc_init(MEMORY[0x277D7FDB0]);
      v22 = self->_rightBarButtonItem;
      self->_rightBarButtonItem = v21;

      [(SUBarButtonItem *)self->_rightBarButtonItem setAction:sel__rightBarButtonAction_];
      [(SUBarButtonItem *)self->_rightBarButtonItem setTarget:self];
      [(SUBarButtonItem *)self->_rightBarButtonItem setTitle:self->_rightBarButtonTitle];
      v20 = self->_rightBarButtonItem;
    }

    v23 = v20;
    v24 = v17;
    v17 = v23;
  }

  else
  {
    target2 = [(SUBarButtonItem *)v20 target];

    if (target2 == self)
    {
      [(SUBarButtonItem *)self->_rightBarButtonItem setTarget:0];
    }

    v24 = self->_rightBarButtonItem;
    self->_rightBarButtonItem = 0;
  }

  navigationItem = [(SUViewController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  v28 = [rightBarButtonItems mutableCopy];

  if (v10 != v17 || ([v28 containsObject:v17] & 1) == 0)
  {
    if (!v28 && v17)
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    if (v28 && (v29 = [v28 indexOfObjectIdenticalTo:v10], v29 != 0x7FFFFFFFFFFFFFFFLL))
    {
      if (v17)
      {
        [v28 replaceObjectAtIndex:v29 withObject:v17];
      }

      else
      {
        [v28 removeObjectAtIndex:v29];
      }
    }

    else if (v17)
    {
      [v28 addObject:v17];
    }

    [(SKUIITunesStoreUIPageViewController *)self->_storePageViewController resetNavigationItem:navigationItem];
    [navigationItem setRightBarButtonItems:v28];
  }
}

- (void)_reloadViews
{
  if (![(SKProductPageViewController *)self isViewLoaded])
  {
    return;
  }

  bannerViewController = self->_bannerViewController;
  if (!bannerViewController)
  {
    if (self->_ipadProductPageViewController)
    {
      view = [(SKUIITunesStoreUIPageViewController *)self->_storePageViewController view];
      [view removeFromSuperview];

      view2 = [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController view];
      [view2 removeFromSuperview];

      bannerViewController = self->_ipadProductPageViewController;
    }

    else
    {
      storePageViewController = self->_storePageViewController;
      if (self->_iphoneProductPageViewController)
      {
        view3 = [(SKUIITunesStoreUIPageViewController *)storePageViewController view];
        [view3 removeFromSuperview];

        view4 = [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController view];
        [view4 removeFromSuperview];

        view5 = [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController view];
        [(SKUIViewController *)self->_iphoneProductPageViewController _setWishlistButtonHidden:1];
        [(SKUIViewController *)self->_iphoneProductPageViewController showDefaultNavigationItems];
        [(SKProductPageViewController *)self _reloadGotoStoreButton];
        view8 = view5;
        if (!view5)
        {
          return;
        }

        goto LABEL_6;
      }

      if (!storePageViewController)
      {
        return;
      }

      view6 = [0 view];
      [view6 removeFromSuperview];

      view7 = [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController view];
      [view7 removeFromSuperview];

      bannerViewController = self->_storePageViewController;
    }
  }

  view8 = [bannerViewController view];
  if (!view8)
  {
    return;
  }

LABEL_6:
  v14 = view8;
  [view8 setAutoresizingMask:18];
  view9 = [(SKProductPageViewController *)self view];
  [view9 bounds];
  [v14 setFrame:?];

  view10 = [(SKProductPageViewController *)self view];
  [view10 addSubview:v14];
}

- (void)_setResponse:(id)response forProperties:(id)properties error:(id)error
{
  responseCopy = response;
  propertiesCopy = properties;
  errorCopy = error;
  nativeURL = self->_nativeURL;
  self->_nativeURL = 0;

  lastPageEvent = self->_lastPageEvent;
  self->_lastPageEvent = 0;

  bodyData = [responseCopy bodyData];
  if (bodyData)
  {
    v14 = +[(SSVURLDataConsumer *)SKUIProductPageDataConsumer];
    v26 = errorCopy;
    v15 = [v14 objectForData:bodyData response:0 error:&v26];
    v16 = v26;

    if (v15)
    {
      v17 = [responseCopy URL];
      [v15 setPageURL:v17];

      metricsPageEvent = [responseCopy metricsPageEvent];
      [(SKProductPageViewController *)self _showProductPage:v15 pageEvent:metricsPageEvent];

      metricsPageEvent2 = [responseCopy metricsPageEvent];
      v20 = self->_lastPageEvent;
      self->_lastPageEvent = metricsPageEvent2;
    }

    else
    {
      view = [(SKProductPageViewController *)self view];
      mIMEType = [responseCopy MIMEType];
      v23 = [mIMEType isEqualToString:@"text/html"];

      storePageViewController = self->_storePageViewController;
      if (v23)
      {
        v25 = [propertiesCopy URL];
        [(SUStorePageViewController *)storePageViewController reloadWithStorePage:bodyData ofType:1 forURL:v25];
      }

      else
      {
        [(SUStorePageViewController *)self->_storePageViewController reloadWithURLRequestProperties:propertiesCopy];
      }

      [(SKProductPageViewController *)self _reloadGotoStoreButton];
    }

    errorCopy = v16;
  }

  else
  {
    [(SKProductPageViewController *)self _sendDidFailLoadWithError:errorCopy];
  }
}

- (void)_sendDidFailLoadWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 productPage:self didFailLoadWithError:errorCopy];
  }
}

- (void)_showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _previewOverlay = [(SKProductPageViewController *)self _previewOverlay];
  navigationController = [(SUViewController *)self navigationController];
  [navigationController addChildViewController:_previewOverlay];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SKProductPageViewController__showPreviewOverlayAnimated___block_invoke;
  v8[3] = &unk_2781F80F0;
  v9 = _previewOverlay;
  v7 = _previewOverlay;
  [v7 showInNavigationController:navigationController animated:animatedCopy completionBlock:v8];
}

void __59__SKProductPageViewController__showPreviewOverlayAnimated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D7FF28] object:*(a1 + 32)];
}

- (void)_showProductPage:(id)page pageEvent:(id)event
{
  v36[1] = *MEMORY[0x277D85DE8];
  pageCopy = page;
  eventCopy = event;
  v8 = MEMORY[0x277CBEBC0];
  item = [pageCopy item];
  productPageURLString = [item productPageURLString];
  v11 = [v8 URLWithString:productPageURLString];
  nativeURL = self->_nativeURL;
  self->_nativeURL = v11;

  style = self->_style;
  if (style == 3 || !style && ([MEMORY[0x277D75418] currentDevice], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15 == 1))
  {
    [(SKUIClientContext *)self->_clientContext setUserInterfaceIdiomOverride:1];
    v16 = 1208;
    [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController removeFromParentViewController];
    v17 = [[SKUIIPadProductPageViewController alloc] initWithProductPage:pageCopy];
    ipadProductPageViewController = self->_ipadProductPageViewController;
    self->_ipadProductPageViewController = v17;

    v19 = self->_ipadProductPageViewController;
    navigationItem = [(SUViewController *)self navigationItem];
    [(SKUIIPadProductPageViewController *)v19 _setExistingNavigationItem:navigationItem];

    [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController setClientContext:self->_clientContext];
    [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController setDelegate:self];
    [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController configureMetricsWithPageEvent:eventCopy];
    [(SKUIIPadProductPageViewController *)self->_ipadProductPageViewController setAskPermission:self->_askToBuy];
    v21 = self->_ipadProductPageViewController;
    if (!self->_askToBuy)
    {
      promptString = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(SKUIClientContext *)self->_clientContext setUserInterfaceIdiomOverride:0];
    v16 = 1216;
    [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController removeFromParentViewController];
    v23 = [[SKUIIPhoneProductPageViewController alloc] initWithProductPage:pageCopy];
    iphoneProductPageViewController = self->_iphoneProductPageViewController;
    self->_iphoneProductPageViewController = v23;

    v25 = self->_iphoneProductPageViewController;
    navigationItem2 = [(SUViewController *)self navigationItem];
    [(SKUIIPhoneProductPageViewController *)v25 _setExistingNavigationItem:navigationItem2];

    [(SKUIViewController *)self->_iphoneProductPageViewController setClientContext:self->_clientContext];
    [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setDelegate:self];
    [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController configureMetricsWithPageEvent:eventCopy];
    [(SKUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setAskPermission:self->_askToBuy];
    promptString = 0;
    v21 = self->_iphoneProductPageViewController;
    if (!self->_askToBuy)
    {
      goto LABEL_8;
    }
  }

  promptString = self->_promptString;
LABEL_8:
  [v21 setBannerText:promptString];
  if (!*(&self->super.super.super.super.isa + v16))
  {
    [(SKProductPageViewController *)self _reloadViews];
    [(SKProductPageViewController *)self _reloadGotoStoreButton];
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CDD438];
    v35 = *MEMORY[0x277CCA450];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v29 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2827FFAC8 table:0];
    v36[0] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v34 = [v30 errorWithDomain:v31 code:5 userInfo:v33];
    [(SKProductPageViewController *)self _sendDidFailLoadWithError:v34];

    goto LABEL_12;
  }

  [(SKProductPageViewController *)self addChildViewController:?];
  [(SKProductPageViewController *)self _reloadViews];
  [(SKProductPageViewController *)self _reloadGotoStoreButton];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    [v29 productPageDidFinishLoad:self];
LABEL_12:
  }
}

- (SKProductPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_initSKProductPageViewController
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKProductPageViewController _initSKProductPageViewController]";
}

@end