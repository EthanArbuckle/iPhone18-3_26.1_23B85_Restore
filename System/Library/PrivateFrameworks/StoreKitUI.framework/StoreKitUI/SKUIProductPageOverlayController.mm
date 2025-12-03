@interface SKUIProductPageOverlayController
- (NSArray)URLs;
- (SKUIProductPageOverlayController)initWithParentViewController:(id)controller;
- (SKUIProductPageOverlayDelegate)delegate;
- (UIViewController)parentViewController;
- (int64_t)numberOfVisibleOverlays;
- (void)_backstopViewAction:(id)action;
- (void)_finishDismissAndNotifyDelegate:(BOOL)delegate withViewController:(id)controller;
- (void)_removeOverlayViewController;
- (void)_showOverlayViewController;
- (void)_showWithInitialViewController:(id)controller;
- (void)dealloc;
- (void)iPadProductPage:(id)page openItem:(id)item;
- (void)iPadProductPage:(id)page openURL:(id)l viewControllerBlock:(id)block;
- (void)iPadProductPageCannotOpen:(id)open;
- (void)productViewControllerDidFinish:(id)finish;
- (void)showWithInitialItem:(id)item;
- (void)showWithInitialItemIdentifier:(int64_t)identifier;
- (void)showWithInitialProductPage:(id)page metricsPageEvent:(id)event;
- (void)showWithInitialURL:(id)l;
- (void)showWithInitialURLRequest:(id)request;
- (void)showWithInitialURLs:(id)ls;
@end

@implementation SKUIProductPageOverlayController

- (SKUIProductPageOverlayController)initWithParentViewController:(id)controller
{
  controllerCopy = controller;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageOverlayController initWithParentViewController:];
  }

  v8.receiver = self;
  v8.super_class = SKUIProductPageOverlayController;
  v5 = [(SKUIProductPageOverlayController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parentViewController, controllerCopy);
  }

  return v6;
}

- (void)dealloc
{
  if (self->_overlayViewController)
  {
    [(SKUIProductPageOverlayController *)self _removeOverlayViewController];
  }

  v3.receiver = self;
  v3.super_class = SKUIProductPageOverlayController;
  [(SKUIProductPageOverlayController *)&v3 dealloc];
}

- (int64_t)numberOfVisibleOverlays
{
  viewControllers = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v3 = [viewControllers count];

  return v3;
}

- (void)showWithInitialItem:(id)item
{
  itemCopy = item;
  v6 = [[SKUIIPadProductPageViewController alloc] initWithItem:itemCopy];
  initialItem = self->_initialItem;
  self->_initialItem = itemCopy;

  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v6];
}

- (void)showWithInitialItemIdentifier:(int64_t)identifier
{
  v4 = [[SKUIIPadProductPageViewController alloc] initWithItemIdentifier:identifier];
  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v4];
}

- (void)showWithInitialProductPage:(id)page metricsPageEvent:(id)event
{
  eventCopy = event;
  pageCopy = page;
  v9 = [[SKUIIPadProductPageViewController alloc] initWithProductPage:pageCopy];

  clientContext = [(SKUIProductPageOverlayController *)self clientContext];
  [(SKUIIPadProductPageViewController *)v9 setClientContext:clientContext];

  [(SKUIIPadProductPageViewController *)v9 configureMetricsWithPageEvent:eventCopy];
  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v9];
}

- (void)showWithInitialURL:(id)l
{
  lCopy = l;
  v5 = [[SKUIIPadProductPageViewController alloc] initWithURL:lCopy];

  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v5];
}

- (void)showWithInitialURLRequest:(id)request
{
  requestCopy = request;
  v5 = [[SKUIIPadProductPageViewController alloc] initWithURLRequest:requestCopy];

  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v5];
}

- (void)showWithInitialURLs:(id)ls
{
  v20 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  [(SKUIProductPageOverlayController *)self _showOverlayViewController];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = lsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [SKUIIPadProductPageViewController alloc];
        v13 = [(SKUIIPadProductPageViewController *)v12 initWithURL:v11, v15];
        clientContext = [(SKUIProductPageOverlayController *)self clientContext];
        [(SKUIIPadProductPageViewController *)v13 setClientContext:clientContext];

        [(SKUIIPadProductPageViewController *)v13 setDelegate:self];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(SKUIOverlayContainerViewController *)self->_overlayViewController showViewControllers:v5];
}

- (NSArray)URLs
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  viewControllers = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) URL];
        if (v9)
        {
          [array addObject:v9];
        }
      }

      v6 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)iPadProductPage:(id)page openItem:(id)item
{
  itemCopy = item;
  v7 = [[SKUIIPadProductPageViewController alloc] initWithItem:itemCopy];

  clientContext = [(SKUIProductPageOverlayController *)self clientContext];
  [(SKUIIPadProductPageViewController *)v7 setClientContext:clientContext];

  [(SKUIIPadProductPageViewController *)v7 setDelegate:self];
  [(SKUIOverlayContainerViewController *)self->_overlayViewController showViewController:v7 withCompletionBlock:0];
}

- (void)iPadProductPage:(id)page openURL:(id)l viewControllerBlock:(id)block
{
  pageCopy = page;
  lCopy = l;
  blockCopy = block;
  v11 = blockCopy;
  if (blockCopy && ((*(blockCopy + 2))(blockCopy), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    clientContext = self->_clientContext;
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    v16 = [(SKUIClientContext *)clientContext metricsPageContextForViewController:WeakRetained];

    [(SKUIClientContext *)self->_clientContext setMetricsPageContext:v16 forViewController:v13];
    if (self->_initialItem && (v17 = objc_loadWeakRetained(&self->_delegate), v18 = objc_opt_respondsToSelector(), v17, (v18 & 1) != 0) && (v19 = objc_loadWeakRetained(&self->_delegate), [v19 productPageOverlay:self flipSourceViewToDismissItem:self->_initialItem], v20 = objc_claimAutoreleasedReturnValue(), v19, v20))
    {
      v21 = objc_alloc_init(SKUIOverlayFlipTransition);
      [(SKUIOverlayFlipTransition *)v21 setFlipSourceView:v20];
      overlayViewController = self->_overlayViewController;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __80__SKUIProductPageOverlayController_iPadProductPage_openURL_viewControllerBlock___block_invoke_2;
      v26[3] = &unk_2781F80C8;
      v26[4] = self;
      v27 = v13;
      v23 = v13;
      [(SKUIOverlayContainerViewController *)overlayViewController dismissWithFlipTransition:v21 completionBlock:v26];
    }

    else
    {
      v24 = self->_overlayViewController;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __80__SKUIProductPageOverlayController_iPadProductPage_openURL_viewControllerBlock___block_invoke;
      v28[3] = &unk_2781F80C8;
      v28[4] = self;
      v29 = v13;
      v25 = v13;
      [(SKUIOverlayContainerViewController *)v24 dismissWithFadeTransitionCompletionBlock:v28];
    }
  }

  else if (lCopy)
  {
    SKUIMetricsOpenURL(lCopy);
  }
}

- (void)iPadProductPageCannotOpen:(id)open
{
  v8 = [open URL];
  [(SKUIProductPageOverlayController *)self _finishDismissAndNotifyDelegate:0 withViewController:0];
  v4 = objc_alloc_init(MEMORY[0x277CDD3A8]);
  [v4 loadProductWithURL:v8 completionBlock:0];
  [v4 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  navigationController = [WeakRetained navigationController];
  topViewController = [navigationController topViewController];

  [topViewController presentViewController:v4 animated:1 completion:0];
}

- (void)_backstopViewAction:(id)action
{
  actionCopy = action;
  if (self->_initialItem && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), WeakRetained, (v6 & 1) != 0) && (v7 = objc_loadWeakRetained(&self->_delegate), [v7 productPageOverlay:self flipSourceViewToDismissItem:self->_initialItem], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = objc_alloc_init(SKUIOverlayFlipTransition);
    [(SKUIOverlayFlipTransition *)v9 setFlipSourceView:v8];
    overlayViewController = self->_overlayViewController;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SKUIProductPageOverlayController__backstopViewAction___block_invoke_2;
    v12[3] = &unk_2781F80F0;
    v12[4] = self;
    [(SKUIOverlayContainerViewController *)overlayViewController dismissWithFlipTransition:v9 completionBlock:v12];
  }

  else
  {
    v11 = self->_overlayViewController;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__SKUIProductPageOverlayController__backstopViewAction___block_invoke;
    v13[3] = &unk_2781F80F0;
    v13[4] = self;
    [(SKUIOverlayContainerViewController *)v11 dismissWithFadeTransitionCompletionBlock:v13];
  }
}

- (void)productViewControllerDidFinish:(id)finish
{
  [finish dismissViewControllerAnimated:1 completion:0];

  [(SKUIProductPageOverlayController *)self _finishDismissAndNotifyDelegate:1 withViewController:0];
}

- (void)_finishDismissAndNotifyDelegate:(BOOL)delegate withViewController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  if ([(SKUIOverlayContainerViewController *)self->_overlayViewController isViewLoaded])
  {
    view = [(SKUIOverlayContainerViewController *)self->_overlayViewController view];
    [view removeFromSuperview];
  }

  viewControllers = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_32];

  backstopControl = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
  [backstopControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SKUIOverlayContainerViewController *)self->_overlayViewController removeFromParentViewController];
  overlayViewController = self->_overlayViewController;
  self->_overlayViewController = 0;

  initialItem = self->_initialItem;
  self->_initialItem = 0;

  if (delegateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = v13;
    if (v12)
    {
      [v13 productPageOverlayDidDismiss:self toPresentViewController:controllerCopy];
      goto LABEL_10;
    }

    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 productPageOverlayDidDismiss:self];
    }
  }

  v17 = controllerCopy;
  if (!controllerCopy)
  {
    goto LABEL_11;
  }

  v14 = objc_loadWeakRetained(&self->_parentViewController);
  navigationController = [v14 navigationController];
  [navigationController pushViewController:controllerCopy animated:1];

LABEL_10:
  v17 = controllerCopy;
LABEL_11:
}

- (void)_removeOverlayViewController
{
  v16 = *MEMORY[0x277D85DE8];
  viewControllers = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v11 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if ([(SKUIOverlayContainerViewController *)self->_overlayViewController isViewLoaded])
  {
    backstopControl = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
    [backstopControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

    view = [(SKUIOverlayContainerViewController *)self->_overlayViewController view];
    [view removeFromSuperview];
  }

  [(SKUIOverlayContainerViewController *)self->_overlayViewController removeFromParentViewController];
  overlayViewController = self->_overlayViewController;
  self->_overlayViewController = 0;
}

- (void)_showOverlayViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v20 = SKUIViewControllerGetAncestorTabBarController(WeakRetained);

  if (!self->_overlayViewController)
  {
    v4 = objc_alloc_init(SKUIOverlayContainerViewController);
    overlayViewController = self->_overlayViewController;
    self->_overlayViewController = v4;

    [v20 addChildViewController:self->_overlayViewController];
    backstopControl = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
    [backstopControl addTarget:self action:sel__backstopViewAction_ forControlEvents:64];

    clientContext = self->_clientContext;
    v8 = objc_loadWeakRetained(&self->_parentViewController);
    v9 = [(SKUIClientContext *)clientContext metricsPageContextForViewController:v8];

    [(SKUIClientContext *)self->_clientContext setMetricsPageContext:v9 forViewController:self->_overlayViewController];
  }

  view = [v20 view];
  [view bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view2 = [(SKUIOverlayContainerViewController *)self->_overlayViewController view];
  [view2 setAutoresizingMask:18];
  [view2 setFrame:{v12, v14, v16, v18}];
  [view addSubview:view2];
}

- (void)_showWithInitialViewController:(id)controller
{
  controllerCopy = controller;
  clientContext = [(SKUIProductPageOverlayController *)self clientContext];
  [(SKUIOverlayFlipTransition *)controllerCopy setClientContext:clientContext];

  [(SKUIOverlayFlipTransition *)controllerCopy setDelegate:self];
  [(SKUIProductPageOverlayController *)self _showOverlayViewController];
  if (self->_initialItem && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v7 = objc_opt_respondsToSelector(), WeakRetained, (v7 & 1) != 0) && (v8 = objc_loadWeakRetained(&self->_delegate), [v8 productPageOverlay:self flipSourceViewToPresentItem:self->_initialItem], v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = objc_alloc_init(SKUIOverlayFlipTransition);
    [(SKUIOverlayFlipTransition *)v10 setFlipSourceView:v9];
    overlayViewController = self->_overlayViewController;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__SKUIProductPageOverlayController__showWithInitialViewController___block_invoke_2;
    v14[3] = &unk_2781F80F0;
    v15 = controllerCopy;
    v12 = controllerCopy;
    [(SKUIOverlayContainerViewController *)overlayViewController showViewController:v12 withFlipTransition:v10 completionBlock:v14];
  }

  else
  {
    v13 = self->_overlayViewController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__SKUIProductPageOverlayController__showWithInitialViewController___block_invoke;
    v16[3] = &unk_2781F80F0;
    v17 = controllerCopy;
    v9 = controllerCopy;
    [(SKUIOverlayContainerViewController *)v13 showViewController:v9 withCompletionBlock:v16];
    v10 = v17;
  }
}

- (SKUIProductPageOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
  v1 = "[SKUIProductPageOverlayController initWithParentViewController:]";
}

@end