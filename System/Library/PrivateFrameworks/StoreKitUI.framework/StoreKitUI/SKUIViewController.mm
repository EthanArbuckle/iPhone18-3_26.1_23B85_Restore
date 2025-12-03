@interface SKUIViewController
- (NSOperationQueue)operationQueue;
- (SKUIIPadSearchController)IPadSearchController;
- (SKUIViewController)initWithTabBarItem:(id)item;
- (id)_defaultLeftBarButtonItems;
- (id)_defaultRightBarButtonItemsIsCompact:(BOOL)compact;
- (id)_getIPadSearchController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_presentWishlistFromPopover:(id)popover;
- (void)_presentWishlistFromSheet;
- (void)_reloadForOrientation:(int64_t)orientation;
- (void)_showDialogWithError:(id)error;
- (void)_wishlistAction:(id)action;
- (void)_wishlistPopoverDidDismiss;
- (void)dealloc;
- (void)forceOrientationBackToSupportedOrientation;
- (void)networkErrorViewControllerInvalidated:(id)invalidated;
- (void)productPageOverlayDidDismiss:(id)dismiss;
- (void)setClientContext:(id)context;
- (void)showDefaultNavigationItems;
- (void)showDefaultNavigationItemsForSize:(CGSize)size;
- (void)showDefaultNavigationItemsIsCompact:(BOOL)compact;
- (void)showError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)wishlist:(id)wishlist didSelectItem:(id)item atIndexPath:(id)path;
@end

@implementation SKUIViewController

- (SKUIViewController)initWithTabBarItem:(id)item
{
  itemCopy = item;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIViewController initWithTabBarItem:];
  }

  v9.receiver = self;
  v9.super_class = SKUIViewController;
  v5 = [(SKUIViewController *)&v9 init];
  if (v5)
  {
    underlyingTabBarItem = [itemCopy underlyingTabBarItem];
    [(SKUIViewController *)v5 setTabBarItem:underlyingTabBarItem];
    _internalTitle = [underlyingTabBarItem _internalTitle];
    [(SKUIViewController *)v5 setTitle:_internalTitle];
  }

  return v5;
}

- (void)dealloc
{
  [(SKUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:0];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(UIBarButtonItem *)self->_wishlistButtonItem setTarget:0];
  [(SKUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:0 selector:0];
  [(SKUIWishlistViewController *)self->_wishlistViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIViewController;
  [(SKUIViewController *)&v3 dealloc];
}

- (SKUIIPadSearchController)IPadSearchController
{
  _getIPadSearchController = SKUIUserInterfaceIdiom(self->_clientContext);
  if (_getIPadSearchController)
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

      if (!shouldForceTransientSearchControllerBahavior)
      {
        _getIPadSearchController = [(SKUIViewController *)self _getIPadSearchController];
        goto LABEL_7;
      }
    }

    _getIPadSearchController = 0;
  }

LABEL_7:

  return _getIPadSearchController;
}

- (id)_getIPadSearchController
{
  searchController = self->_searchController;
  if (!searchController)
  {
    v4 = [[SKUIIPadSearchController alloc] initWithParentViewController:self];
    v5 = self->_searchController;
    self->_searchController = v4;

    v6 = self->_searchController;
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUIIPadSearchController *)v6 setClientContext:clientContext];

    searchController = self->_searchController;
  }

  return searchController;
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
    v6 = self->_operationQueue;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.StoreKitUI.%@.%p", objc_opt_class(), self];
    [(NSOperationQueue *)v6 setName:v7];

    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
    [(SKUIIPadSearchController *)self->_searchController setClientContext:self->_clientContext];
    contextCopy = v6;
  }
}

- (void)showDefaultNavigationItems
{
  navigationItem = [(SKUIViewController *)self navigationItem];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  [keyWindow bounds];
  v7 = [(SKUIViewController *)self _defaultRightBarButtonItemsIsCompact:v6 <= SKUICompactThreshold()];
  [navigationItem setRightBarButtonItems:v7];

  navigationItem2 = [(SKUIViewController *)self navigationItem];
  _defaultLeftBarButtonItems = [(SKUIViewController *)self _defaultLeftBarButtonItems];
  [navigationItem2 setLeftBarButtonItems:_defaultLeftBarButtonItems];
}

- (void)showDefaultNavigationItemsForSize:(CGSize)size
{
  width = size.width;
  v5 = [(SKUIViewController *)self navigationItem:size.width];
  _defaultLeftBarButtonItems = [(SKUIViewController *)self _defaultLeftBarButtonItems];
  [v5 setLeftBarButtonItems:_defaultLeftBarButtonItems];

  navigationItem = [(SKUIViewController *)self navigationItem];
  v7 = [(SKUIViewController *)self _defaultRightBarButtonItemsIsCompact:width <= SKUICompactThreshold()];
  [navigationItem setRightBarButtonItems:v7];
}

- (void)showDefaultNavigationItemsIsCompact:(BOOL)compact
{
  compactCopy = compact;
  navigationItem = [(SKUIViewController *)self navigationItem];
  _defaultLeftBarButtonItems = [(SKUIViewController *)self _defaultLeftBarButtonItems];
  [navigationItem setLeftBarButtonItems:_defaultLeftBarButtonItems];

  navigationItem2 = [(SKUIViewController *)self navigationItem];
  v7 = [(SKUIViewController *)self _defaultRightBarButtonItemsIsCompact:compactCopy];
  [navigationItem2 setRightBarButtonItems:v7];
}

- (void)showError:(id)error
{
  errorCopy = error;
  if ([SKUINetworkErrorViewController canDisplayError:?])
  {
    if (!self->_networkErrorViewController)
    {
      v4 = [[SKUINetworkErrorViewController alloc] initWithError:errorCopy];
      networkErrorViewController = self->_networkErrorViewController;
      self->_networkErrorViewController = v4;

      v6 = self->_networkErrorViewController;
      clientContext = [(SKUIViewController *)self clientContext];
      [(SKUINetworkErrorViewController *)v6 setClientContext:clientContext];

      [(SKUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:self];
      [(SKUIViewController *)self addChildViewController:self->_networkErrorViewController];
      view = [(SKUIViewController *)self view];
      view2 = [(SKUINetworkErrorViewController *)self->_networkErrorViewController view];
      [view2 setAutoresizingMask:18];
      [view bounds];
      [view2 setFrame:?];
      [view addSubview:view2];
    }
  }

  else
  {
    NSLog(&cfstr_LoadFailure.isa, errorCopy);
    if (SKUIViewControllerIsVisible(self))
    {
      [(SKUIViewController *)self _showDialogWithError:errorCopy];
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    return 30;
  }

  if (SKUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKUIViewController;
  [(SKUIViewController *)&v4 viewWillAppear:appear];
  [(SKUIViewController *)self _reloadForOrientation:[(SKUIViewController *)self interfaceOrientation]];
  [(SKUIIPadSearchController *)self->_searchController reloadSearchField];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = SKUIViewController;
  [(SKUIViewController *)&v6 willAnimateRotationToInterfaceOrientation:duration duration:?];
  [(SKUIViewController *)self _reloadForOrientation:orientation];
}

- (void)forceOrientationBackToSupportedOrientation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (([mEMORY[0x277D75128] statusBarOrientation] - 3) <= 1 && (-[SKUIViewController supportedInterfaceOrientations](self, "supportedInterfaceOrientations") & 0x18) == 0)
  {
    if (!-[SKUIViewController isViewLoaded](self, "isViewLoaded") || (-[SKUIViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], window = objc_claimAutoreleasedReturnValue(), v3, !window))
    {
      presentedViewController = [(SKUIViewController *)self presentedViewController];
      view = [presentedViewController view];
      window = [view window];

      if (!window)
      {
        window = [MEMORY[0x277D75DA0] keyWindow];
      }
    }

    [window _setRotatableViewOrientation:1 duration:1 force:0.0];
  }
}

- (void)networkErrorViewControllerInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  networkErrorViewController = self->_networkErrorViewController;
  if (networkErrorViewController)
  {
    v8 = invalidatedCopy;
    [networkErrorViewController setDelegate:0];
    view = [(SKUINetworkErrorViewController *)self->_networkErrorViewController view];
    [view removeFromSuperview];

    [(SKUINetworkErrorViewController *)self->_networkErrorViewController removeFromParentViewController];
    v7 = self->_networkErrorViewController;
    self->_networkErrorViewController = 0;

    networkErrorViewController = SKUIViewControllerIsVisible(self);
    invalidatedCopy = v8;
    if (networkErrorViewController)
    {
      networkErrorViewController = [(SKUIViewController *)self reloadData];
      invalidatedCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](networkErrorViewController, invalidatedCopy);
}

- (void)_wishlistPopoverDidDismiss
{
  [(SKUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:0 selector:0];
  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  self->_wishlistPopoverObserver = 0;

  [(SKUIWishlistViewController *)self->_wishlistViewController setDelegate:0];
  wishlistViewController = self->_wishlistViewController;
  self->_wishlistViewController = 0;
}

- (void)productPageOverlayDidDismiss:(id)dismiss
{
  [(SKUIProductPageOverlayController *)self->_productPageOverlayController setDelegate:0];
  productPageOverlayController = self->_productPageOverlayController;
  self->_productPageOverlayController = 0;
}

- (void)wishlist:(id)wishlist didSelectItem:(id)item atIndexPath:(id)path
{
  wishlistCopy = wishlist;
  itemCopy = item;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {

    goto LABEL_7;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  [keyWindow bounds];
  v13 = v12;
  v14 = SKUICompactThreshold();

  if (v13 <= v14)
  {
LABEL_7:
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__SKUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke;
    v28[3] = &unk_2781F80C8;
    v23 = &v29;
    v28[4] = self;
    v29 = itemCopy;
    v25 = itemCopy;
    [wishlistCopy dismissViewControllerAnimated:1 completion:v28];
    goto LABEL_8;
  }

  [(SKUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:0 selector:0];
  [(SKUIPopoverObserver *)self->_wishlistPopoverObserver dismissPopoverAnimated:1];
  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  self->_wishlistPopoverObserver = 0;

  [(SKUIWishlistViewController *)self->_wishlistViewController setDelegate:0];
  wishlistViewController = self->_wishlistViewController;
  self->_wishlistViewController = 0;

  if (!self->_productPageOverlayController)
  {
    v17 = [[SKUIProductPageOverlayController alloc] initWithParentViewController:self];
    productPageOverlayController = self->_productPageOverlayController;
    self->_productPageOverlayController = v17;

    v19 = self->_productPageOverlayController;
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUIProductPageOverlayController *)v19 setClientContext:clientContext];

    [(SKUIProductPageOverlayController *)self->_productPageOverlayController setDelegate:self];
  }

  UIAnimationDragCoefficient();
  v22 = dispatch_time(0, (v21 * 0.35 * 1000000000.0));
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__SKUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_4;
  v26[3] = &unk_2781F80C8;
  v23 = &v27;
  v26[4] = self;
  v27 = itemCopy;
  v24 = itemCopy;
  dispatch_after(v22, MEMORY[0x277D85CD0], v26);
LABEL_8:
}

void __57__SKUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientContext];
  v3 = [*(a1 + 40) lookupDictionary];
  v4 = SKUIXEventSidepackDictionary(v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SKUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_2;
  v6[3] = &unk_2781FB588;
  v7 = *(a1 + 40);
  v8 = v2;
  v9 = *(a1 + 32);
  v5 = v2;
  [v5 sendOnXEventWithDictionary:v4 completionBlock:v6];
}

void __57__SKUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SKUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_3;
    block[3] = &unk_2781F8680;
    v6 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v7 = v3;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __57__SKUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_3(uint64_t a1)
{
  v3 = [[SKUIIPhoneProductPageViewController alloc] initWithItem:*(a1 + 32)];
  [(SKUIViewController *)v3 setClientContext:*(a1 + 40)];
  v2 = [*(a1 + 48) navigationController];
  [v2 pushViewController:v3 animated:1];
}

- (void)_wishlistAction:(id)action
{
  actionCopy = action;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {

    goto LABEL_7;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  [keyWindow bounds];
  v8 = v7;
  v9 = SKUICompactThreshold();

  if (v8 <= v9)
  {
LABEL_7:
    [(SKUIViewController *)self _presentWishlistFromSheet];
    goto LABEL_8;
  }

  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  if (wishlistPopoverObserver)
  {
    [(SKUIPopoverObserver *)wishlistPopoverObserver setTarget:0 selector:0];
    [(SKUIPopoverObserver *)self->_wishlistPopoverObserver dismissPopoverAnimated:1];
    v11 = self->_wishlistPopoverObserver;
    self->_wishlistPopoverObserver = 0;

    [(SKUIWishlistViewController *)self->_wishlistViewController setDelegate:0];
    wishlistViewController = self->_wishlistViewController;
    self->_wishlistViewController = 0;
  }

  [(SKUIViewController *)self _presentWishlistFromPopover:actionCopy];
LABEL_8:
}

- (void)_presentWishlistFromSheet
{
  clientContext = [(SKUIViewController *)self clientContext];
  v3 = objc_alloc_init(SKUIWishlistViewController);
  [(SKUIWishlistViewController *)v3 setClientContext:clientContext];
  [(SKUIWishlistViewController *)v3 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [v4 setModalPresentationStyle:2];
  [(SKUIViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_presentWishlistFromPopover:(id)popover
{
  popoverCopy = popover;
  clientContext = [(SKUIViewController *)self clientContext];
  v5 = objc_alloc_init(SKUIWishlistViewController);
  wishlistViewController = self->_wishlistViewController;
  self->_wishlistViewController = v5;

  [(SKUIWishlistViewController *)self->_wishlistViewController setClientContext:clientContext];
  [(SKUIWishlistViewController *)self->_wishlistViewController setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_wishlistViewController];
  v8 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:v7];
  [v8 setPopoverContentSize:{320.0, 416.0}];
  [v8 presentPopoverFromBarButtonItem:popoverCopy permittedArrowDirections:1 animated:1];

  v9 = [[SKUIPopoverObserver alloc] initWithPopoverController:v8];
  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  self->_wishlistPopoverObserver = v9;

  [(SKUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:self selector:sel__wishlistPopoverDidDismiss];
}

- (void)_showDialogWithError:(id)error
{
  errorCopy = error;
  clientContext = [(SKUIViewController *)self clientContext];
  v6 = [clientContext localizedAlertWithError:errorCopy];

  [v6 show];
}

- (void)_reloadForOrientation:(int64_t)orientation
{
  v19 = *MEMORY[0x277D85DE8];
  navigationItem = [(SKUIViewController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = rightBarButtonItems;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        customView = [*(*(&v14 + 1) + 8 * i) customView];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [customView sizeToFit];
          [customView frame];
          [customView setFrame:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  navigationItem2 = [(SKUIViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItems:0];

  navigationItem3 = [(SKUIViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItems:v6];
}

- (id)_defaultLeftBarButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clientContext = [(SKUIViewController *)self clientContext];
  v5 = [clientContext additionalLeftBarButtonItemForViewController:self];

  if (v5)
  {
    [v3 addObject:v5];
  }

  return v3;
}

- (id)_defaultRightBarButtonItemsIsCompact:(BOOL)compact
{
  compactCopy = compact;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clientContext = [(SKUIViewController *)self clientContext];
  v7 = [clientContext additionalRightBarButtonItemForViewController:self];

  if (v7)
  {
    [v5 addObject:v7];
  }

  iPadSearchController = [(SKUIViewController *)self IPadSearchController];
  newSearchFieldBarItem = [iPadSearchController newSearchFieldBarItem];

  if (!newSearchFieldBarItem && !compactCopy)
  {
    if (SKUIUserInterfaceIdiom(self->_clientContext) != 1)
    {
      newSearchFieldBarItem = 0;
      goto LABEL_12;
    }

    _getIPadSearchController = [(SKUIViewController *)self _getIPadSearchController];
    newSearchFieldBarItem = [_getIPadSearchController newSearchFieldBarItem];
  }

  if (newSearchFieldBarItem)
  {
    clientContext2 = [(SKUIViewController *)self clientContext];
    v12 = [clientContext2 storeViewController:self shouldDisplayDefaultDarButton:0];

    if (v12)
    {
      if (!compactCopy)
      {
        [v5 addObject:newSearchFieldBarItem];
      }
    }
  }

LABEL_12:
  if (!self->_wishlistButtonHidden)
  {
    clientContext3 = [(SKUIViewController *)self clientContext];
    v14 = [clientContext3 storeViewController:self shouldDisplayDefaultDarButton:1];

    if (v14)
    {
      wishlistButtonItem = self->_wishlistButtonItem;
      if (!wishlistButtonItem)
      {
        clientContext4 = [(SKUIViewController *)self clientContext];
        v17 = [SKUIWishlistViewController wishlistBarButtonItemWithClientContext:clientContext4];
        v18 = self->_wishlistButtonItem;
        self->_wishlistButtonItem = v17;

        [(UIBarButtonItem *)self->_wishlistButtonItem setAction:sel__wishlistAction_];
        [(UIBarButtonItem *)self->_wishlistButtonItem setTarget:self];
        wishlistButtonItem = self->_wishlistButtonItem;
      }

      [v5 addObject:wishlistButtonItem];
    }
  }

  return v5;
}

- (void)initWithTabBarItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewController initWithTabBarItem:]";
}

@end