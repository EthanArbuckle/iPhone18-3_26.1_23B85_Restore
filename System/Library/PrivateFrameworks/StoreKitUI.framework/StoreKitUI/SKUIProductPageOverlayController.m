@interface SKUIProductPageOverlayController
- (NSArray)URLs;
- (SKUIProductPageOverlayController)initWithParentViewController:(id)a3;
- (SKUIProductPageOverlayDelegate)delegate;
- (UIViewController)parentViewController;
- (int64_t)numberOfVisibleOverlays;
- (void)_backstopViewAction:(id)a3;
- (void)_finishDismissAndNotifyDelegate:(BOOL)a3 withViewController:(id)a4;
- (void)_removeOverlayViewController;
- (void)_showOverlayViewController;
- (void)_showWithInitialViewController:(id)a3;
- (void)dealloc;
- (void)iPadProductPage:(id)a3 openItem:(id)a4;
- (void)iPadProductPage:(id)a3 openURL:(id)a4 viewControllerBlock:(id)a5;
- (void)iPadProductPageCannotOpen:(id)a3;
- (void)productViewControllerDidFinish:(id)a3;
- (void)showWithInitialItem:(id)a3;
- (void)showWithInitialItemIdentifier:(int64_t)a3;
- (void)showWithInitialProductPage:(id)a3 metricsPageEvent:(id)a4;
- (void)showWithInitialURL:(id)a3;
- (void)showWithInitialURLRequest:(id)a3;
- (void)showWithInitialURLs:(id)a3;
@end

@implementation SKUIProductPageOverlayController

- (SKUIProductPageOverlayController)initWithParentViewController:(id)a3
{
  v4 = a3;
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
    objc_storeWeak(&v5->_parentViewController, v4);
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
  v2 = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v3 = [v2 count];

  return v3;
}

- (void)showWithInitialItem:(id)a3
{
  v4 = a3;
  v6 = [[SKUIIPadProductPageViewController alloc] initWithItem:v4];
  initialItem = self->_initialItem;
  self->_initialItem = v4;

  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v6];
}

- (void)showWithInitialItemIdentifier:(int64_t)a3
{
  v4 = [[SKUIIPadProductPageViewController alloc] initWithItemIdentifier:a3];
  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v4];
}

- (void)showWithInitialProductPage:(id)a3 metricsPageEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[SKUIIPadProductPageViewController alloc] initWithProductPage:v7];

  v8 = [(SKUIProductPageOverlayController *)self clientContext];
  [(SKUIIPadProductPageViewController *)v9 setClientContext:v8];

  [(SKUIIPadProductPageViewController *)v9 configureMetricsWithPageEvent:v6];
  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v9];
}

- (void)showWithInitialURL:(id)a3
{
  v4 = a3;
  v5 = [[SKUIIPadProductPageViewController alloc] initWithURL:v4];

  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v5];
}

- (void)showWithInitialURLRequest:(id)a3
{
  v4 = a3;
  v5 = [[SKUIIPadProductPageViewController alloc] initWithURLRequest:v4];

  [(SKUIProductPageOverlayController *)self _showWithInitialViewController:v5];
}

- (void)showWithInitialURLs:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SKUIProductPageOverlayController *)self _showOverlayViewController];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        v14 = [(SKUIProductPageOverlayController *)self clientContext];
        [(SKUIIPadProductPageViewController *)v13 setClientContext:v14];

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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) URL];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)iPadProductPage:(id)a3 openItem:(id)a4
{
  v5 = a4;
  v7 = [[SKUIIPadProductPageViewController alloc] initWithItem:v5];

  v6 = [(SKUIProductPageOverlayController *)self clientContext];
  [(SKUIIPadProductPageViewController *)v7 setClientContext:v6];

  [(SKUIIPadProductPageViewController *)v7 setDelegate:self];
  [(SKUIOverlayContainerViewController *)self->_overlayViewController showViewController:v7 withCompletionBlock:0];
}

- (void)iPadProductPage:(id)a3 openURL:(id)a4 viewControllerBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10 && ((*(v10 + 2))(v10), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
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

  else if (v9)
  {
    SKUIMetricsOpenURL(v9);
  }
}

- (void)iPadProductPageCannotOpen:(id)a3
{
  v8 = [a3 URL];
  [(SKUIProductPageOverlayController *)self _finishDismissAndNotifyDelegate:0 withViewController:0];
  v4 = objc_alloc_init(MEMORY[0x277CDD3A8]);
  [v4 loadProductWithURL:v8 completionBlock:0];
  [v4 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v6 = [WeakRetained navigationController];
  v7 = [v6 topViewController];

  [v7 presentViewController:v4 animated:1 completion:0];
}

- (void)_backstopViewAction:(id)a3
{
  v4 = a3;
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

- (void)productViewControllerDidFinish:(id)a3
{
  [a3 dismissViewControllerAnimated:1 completion:0];

  [(SKUIProductPageOverlayController *)self _finishDismissAndNotifyDelegate:1 withViewController:0];
}

- (void)_finishDismissAndNotifyDelegate:(BOOL)a3 withViewController:(id)a4
{
  v4 = a3;
  v19 = a4;
  if ([(SKUIOverlayContainerViewController *)self->_overlayViewController isViewLoaded])
  {
    v6 = [(SKUIOverlayContainerViewController *)self->_overlayViewController view];
    [v6 removeFromSuperview];
  }

  v7 = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_32];

  v8 = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
  [v8 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SKUIOverlayContainerViewController *)self->_overlayViewController removeFromParentViewController];
  overlayViewController = self->_overlayViewController;
  self->_overlayViewController = 0;

  initialItem = self->_initialItem;
  self->_initialItem = 0;

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = v13;
    if (v12)
    {
      [v13 productPageOverlayDidDismiss:self toPresentViewController:v19];
      goto LABEL_10;
    }

    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 productPageOverlayDidDismiss:self];
    }
  }

  v17 = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  v14 = objc_loadWeakRetained(&self->_parentViewController);
  v18 = [v14 navigationController];
  [v18 pushViewController:v19 animated:1];

LABEL_10:
  v17 = v19;
LABEL_11:
}

- (void)_removeOverlayViewController
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if ([(SKUIOverlayContainerViewController *)self->_overlayViewController isViewLoaded])
  {
    v8 = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
    [v8 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

    v9 = [(SKUIOverlayContainerViewController *)self->_overlayViewController view];
    [v9 removeFromSuperview];
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
    v6 = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
    [v6 addTarget:self action:sel__backstopViewAction_ forControlEvents:64];

    clientContext = self->_clientContext;
    v8 = objc_loadWeakRetained(&self->_parentViewController);
    v9 = [(SKUIClientContext *)clientContext metricsPageContextForViewController:v8];

    [(SKUIClientContext *)self->_clientContext setMetricsPageContext:v9 forViewController:self->_overlayViewController];
  }

  v10 = [v20 view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(SKUIOverlayContainerViewController *)self->_overlayViewController view];
  [v19 setAutoresizingMask:18];
  [v19 setFrame:{v12, v14, v16, v18}];
  [v10 addSubview:v19];
}

- (void)_showWithInitialViewController:(id)a3
{
  v4 = a3;
  v5 = [(SKUIProductPageOverlayController *)self clientContext];
  [(SKUIOverlayFlipTransition *)v4 setClientContext:v5];

  [(SKUIOverlayFlipTransition *)v4 setDelegate:self];
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
    v15 = v4;
    v12 = v4;
    [(SKUIOverlayContainerViewController *)overlayViewController showViewController:v12 withFlipTransition:v10 completionBlock:v14];
  }

  else
  {
    v13 = self->_overlayViewController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__SKUIProductPageOverlayController__showWithInitialViewController___block_invoke;
    v16[3] = &unk_2781F80F0;
    v17 = v4;
    v9 = v4;
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