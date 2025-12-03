@interface SKUIRedeemViewController
- (SKUIRedeemViewCameraOverrideDelegate)cameraDelegate;
- (SKUIRedeemViewController)initWithRedeemCategory:(int64_t)category;
- (void)_presentLegacyRedeem;
- (void)_presentModernRedeemWithURL:(id)l;
- (void)_redeemURLWithCompletion:(id)completion;
- (void)_setChildViewController:(id)controller;
- (void)_setup;
- (void)_setupNavigationItem;
- (void)_startActivityIndicator;
- (void)_stopActivityIndicator;
- (void)clientInterfaceDidFinishLoading:(id)loading;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SKUIRedeemViewController

- (SKUIRedeemViewController)initWithRedeemCategory:(int64_t)category
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIRedeemViewController initWithRedeemCategory:];
  }

  v5 = objc_alloc_init(MEMORY[0x277D75D28]);
  v8.receiver = self;
  v8.super_class = SKUIRedeemViewController;
  v6 = [(SKUIRedeemViewController *)&v8 initWithRootViewController:v5];

  if (v6)
  {
    v6->_category = category;
    [(SKUIRedeemViewController *)v6 _setup];
  }

  return v6;
}

- (void)_setup
{
  [(SKUIRedeemViewController *)self setShouldPerformInitialOperationOnAppear:1];
  [(SKUIRedeemViewController *)self setModalPresentationStyle:2];

  [(SKUIRedeemViewController *)self _setupNavigationItem];
}

- (void)_setupNavigationItem
{
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonAction];
  topViewController = [(SKUIRedeemViewController *)self topViewController];
  navigationItem = [topViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v5];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = SKUIRedeemViewController;
  [(SKUIRedeemViewController *)&v5 loadView];
  view = [(SKUIRedeemViewController *)self view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SKUIRedeemViewController;
  [(SKUIRedeemViewController *)&v6 viewDidLoad];
  [(SKUIRedeemViewController *)self _startActivityIndicator];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SKUIRedeemViewController_viewDidLoad__block_invoke;
  v3[3] = &unk_2781FBBA8;
  objc_copyWeak(&v4, &location);
  [(SKUIRedeemViewController *)self _redeemURLWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __39__SKUIRedeemViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SKUIRedeemViewController_viewDidLoad__block_invoke_2;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __39__SKUIRedeemViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stopActivityIndicator];
  if (*(a1 + 32))
  {
    [WeakRetained _presentModernRedeemWithURL:?];
  }

  else
  {
    [WeakRetained _presentLegacyRedeem];
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUIRedeemViewController;
  [(SKUIRedeemViewController *)&v5 viewWillLayoutSubviews];
  activityIndicator = [(SKUIRedeemViewController *)self activityIndicator];
  view = [(SKUIRedeemViewController *)self view];
  [view center];
  [activityIndicator setCenter:?];
}

- (void)_presentLegacyRedeem
{
  [(SKUIRedeemViewController *)self _stopActivityIndicator];
  v8 = [[SKUIRedeemViewControllerLegacy alloc] initWithRedeemCategory:[(SKUIRedeemViewController *)self category]];
  [(SKUIRedeemViewControllerLegacy *)v8 setAttempsAutomaticRedeem:[(SKUIRedeemViewController *)self attempsAutomaticRedeem]];
  cameraDelegate = [(SKUIRedeemViewController *)self cameraDelegate];
  [(SKUIRedeemViewControllerLegacy *)v8 setCameraDelegate:cameraDelegate];

  initialCode = [(SKUIRedeemViewController *)self initialCode];
  [(SKUIRedeemViewControllerLegacy *)v8 setInitialCode:initialCode];

  clientContext = [(SKUIRedeemViewController *)self clientContext];
  [(SKUIRedeemViewControllerLegacy *)v8 setClientContext:clientContext];

  [(SKUIRedeemViewControllerLegacy *)v8 setCameraRedeemVisible:[(SKUIRedeemViewController *)self cameraRedeemVisible]];
  operationQueue = [(SKUIRedeemViewController *)self operationQueue];
  [(SKUIRedeemViewControllerLegacy *)v8 setOperationQueue:operationQueue];

  redeemConfiguration = [(SKUIRedeemViewController *)self redeemConfiguration];
  [(SKUIRedeemViewControllerLegacy *)v8 setRedeemConfiguration:redeemConfiguration];

  [(SKUIRedeemViewControllerLegacy *)v8 setShouldPerformInitialOperationOnAppear:[(SKUIRedeemViewController *)self shouldPerformInitialOperationOnAppear]];
  [(SKUIRedeemViewController *)self _setChildViewController:v8];
}

- (void)_presentModernRedeemWithURL:(id)l
{
  lCopy = l;
  initialCode = [(SKUIRedeemViewController *)self initialCode];

  if (initialCode)
  {
    initialCode2 = [(SKUIRedeemViewController *)self initialCode];
    v7 = [lCopy URLByAppendingQueryParameter:@"code" value:initialCode2];

    lCopy = v7;
  }

  v8 = [objc_alloc(MEMORY[0x277D7FD90]) initWithExternalAccountURL:lCopy];
  clientInterface = [(SKUIRedeemViewController *)self clientInterface];
  [clientInterface setDelegate:self];
  [v8 setClientInterface:clientInterface];
  view = [v8 view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];

  objc_storeStrong(&self->_embeddedViewController, v8);
  v12 = [objc_alloc(MEMORY[0x277D7FE20]) initWithChildViewController:v8];
  view2 = [v12 view];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [view2 setBackgroundColor:whiteColor2];

  navigationController = [(SKUIRedeemViewController *)self navigationController];

  if (navigationController)
  {
    [(SKUIRedeemViewController *)self _setChildViewController:v12];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
    view3 = [v16 view];
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [view3 setBackgroundColor:whiteColor3];

    [(SKUIRedeemViewController *)self _setChildViewController:v16];
  }

  v19 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SKUIRedeemViewController__presentModernRedeemWithURL___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_after(v19, MEMORY[0x277D85CD0], block);
}

void __56__SKUIRedeemViewController__presentModernRedeemWithURL___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 1474) & 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__cancelButtonAction];
    [v5 setTag:999];
    v3 = [*(a1 + 32) embeddedViewController];
    v4 = [v3 navigationItem];
    [v4 setLeftBarButtonItem:v5 animated:1];
  }
}

- (void)_redeemURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v5 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v4];
  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SKUIRedeemViewController__redeemURLWithCompletion___block_invoke;
  v8[3] = &unk_2781FBBD0;
  v6 = completionCopy;
  v9 = v6;
  objc_copyWeak(&v10, &location);
  [v5 setCompletionBlock:v8];
  mainQueue = [MEMORY[0x277D7FD20] mainQueue];
  [mainQueue addOperation:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __53__SKUIRedeemViewController__redeemURLWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = MEMORY[0x277CBEBC0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained URLBag];
    v4 = [v3 valueForKey:@"redeemCodeLanding"];
    v5 = [v2 URLWithString:v4];
    (*(v1 + 16))(v1, v5);
  }
}

- (void)clientInterfaceDidFinishLoading:(id)loading
{
  v19 = *MEMORY[0x277D85DE8];
  self->_finishedLoading = 1;
  embeddedViewController = [(SKUIRedeemViewController *)self embeddedViewController];
  navigationItem = [embeddedViewController navigationItem];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  leftBarButtonItems = [navigationItem leftBarButtonItems];
  v6 = [leftBarButtonItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(leftBarButtonItems);
        }

        if ([*(*(&v14 + 1) + 8 * v10) tag] == 999)
        {
          leftBarButtonItems2 = [navigationItem leftBarButtonItems];
          v13 = [leftBarButtonItems2 mutableCopy];

          [v13 removeObjectAtIndex:v11];
          [navigationItem setLeftBarButtonItems:v13 animated:1];

          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [leftBarButtonItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  [(SKUIRedeemViewController *)self setNavigationBarHidden:1];
  [controllerCopy willMoveToParentViewController:self];
  view = [controllerCopy view];
  view2 = [(SKUIRedeemViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [controllerCopy view];
  [view3 setAutoresizingMask:18];

  view4 = [(SKUIRedeemViewController *)self view];
  view5 = [controllerCopy view];
  [view4 addSubview:view5];

  [(SKUIRedeemViewController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
}

- (void)_startActivityIndicator
{
  v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
  [v4 startAnimating];
  view = [(SKUIRedeemViewController *)self view];
  [view addSubview:v4];

  [(SKUIRedeemViewController *)self setActivityIndicator:v4];
}

- (void)_stopActivityIndicator
{
  activityIndicator = [(SKUIRedeemViewController *)self activityIndicator];
  [activityIndicator stopAnimating];
  [activityIndicator removeFromSuperview];
  [(SKUIRedeemViewController *)self setActivityIndicator:0];
}

- (SKUIRedeemViewCameraOverrideDelegate)cameraDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  return WeakRetained;
}

- (void)initWithRedeemCategory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemViewController initWithRedeemCategory:]";
}

@end