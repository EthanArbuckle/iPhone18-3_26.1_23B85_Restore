@interface SULegacyClientBridge
- (BOOL)composeReviewWithViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)enterAccountFlowWithViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)presentOverlayBackgroundViewController:(id)a3;
- (SULegacyClientBridge)initWithClientInterface:(id)a3;
- (id)_previewOverlayViewController;
- (void)_removePreviewOverlayViewController;
- (void)_showPreviewOverlayAnimated:(BOOL)a3;
- (void)composeEmailWithSubject:(id)a3 body:(id)a4;
- (void)dealloc;
- (void)hidePreviewOverlayAnimated:(BOOL)a3;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)scriptOverlayBackgroundDidDismiss:(id)a3;
- (void)showPreviewOverlayAnimated:(BOOL)a3;
@end

@implementation SULegacyClientBridge

- (SULegacyClientBridge)initWithClientInterface:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SULegacyClientBridge;
  v6 = [(SULegacyClientBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientInterface, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SULegacyClientBridge;
  [(SULegacyClientBridge *)&v3 dealloc];
}

- (void)composeEmailWithSubject:(id)a3 body:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(ISWeakLinkedClassForString());
  [v8 setKeyboardVisible:1];
  [v8 setMailComposeDelegate:self];
  [v8 setSubject:v7];

  [v8 setMessageBody:v6 isHTML:1];
  [(UITabBarController *)self->_rootViewController presentViewController:v8 animated:1 completion:0];
}

- (BOOL)composeReviewWithViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SULegacyClientBridge_composeReviewWithViewController_animated___block_invoke;
  v8[3] = &unk_1E8166E58;
  objc_copyWeak(&v10, &location);
  v6 = v5;
  v9 = v6;
  [v6 prepareWithCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return 1;
}

void __65__SULegacyClientBridge_composeReviewWithViewController_animated___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained rootViewController];
    [v3 presentViewController:*(a1 + 32) animated:1 completion:0];
  }
}

- (BOOL)enterAccountFlowWithViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[SUNavigationController alloc] initWithRootViewController:v6];
  v8 = [v6 clientInterface];

  [(SUNavigationController *)v7 setClientInterface:v8];
  [(SUNavigationController *)v7 setNavigationBarHidden:1];
  [(SUNavigationController *)v7 setModalPresentationStyle:2];
  [(UITabBarController *)self->_rootViewController presentViewController:v7 animated:v4 completion:0];

  return 1;
}

- (void)hidePreviewOverlayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    previewOverlayViewController = self->_previewOverlayViewController;
    rootViewController = self->_rootViewController;

    [(SUPreviewOverlayViewController *)previewOverlayViewController hideInViewController:rootViewController animated:v3 completionBlock:0];
  }

  else
  {
    v9 = [(UITabBarController *)self->_rootViewController selectedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = self->_previewOverlayViewController;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SULegacyClientBridge_hidePreviewOverlayAnimated___block_invoke;
      v11[3] = &unk_1E81645E8;
      v11[4] = self;
      [(SUPreviewOverlayViewController *)v10 hideInNavigationController:v9 animated:v3 completionBlock:v11];
    }

    else
    {
      [(SULegacyClientBridge *)self _removePreviewOverlayViewController];
    }
  }
}

- (BOOL)presentOverlayBackgroundViewController:(id)a3
{
  v5 = a3;
  if (self->_overlayBackgroundViewController || !self->_rootViewController)
  {
    v6 = 0;
  }

  else
  {
    objc_storeStrong(&self->_overlayBackgroundViewController, a3);
    [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController setDelegate:self];
    [(UITabBarController *)self->_rootViewController addChildViewController:self->_overlayBackgroundViewController];
    v7 = [(UITabBarController *)self->_rootViewController view];
    v8 = [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController view];
    [v7 bounds];
    [v8 setFrame:?];
    [v7 addSubview:v8];

    v6 = 1;
  }

  return v6;
}

- (void)showPreviewOverlayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SULegacyClientBridge *)self _previewOverlayViewController];
  if (![v5 isViewLoaded] || (objc_msgSend(v5, "view"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "window"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    if ([v5 isContentLoaded])
    {
      [(SULegacyClientBridge *)self _showPreviewOverlayAnimated:v3];
    }

    else if (([v5 isSkLoading] & 1) == 0)
    {
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__SULegacyClientBridge_showPreviewOverlayAnimated___block_invoke;
      v8[3] = &unk_1E8166E80;
      objc_copyWeak(&v9, &location);
      v10 = v3;
      [v5 loadWithCompletionBlock:v8];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __51__SULegacyClientBridge_showPreviewOverlayAnimated___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showPreviewOverlayAnimated:*(a1 + 40)];
  }
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v5 = a3;
  [v5 setDelegate:0];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)scriptOverlayBackgroundDidDismiss:(id)a3
{
  if ([(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController isViewLoaded])
  {
    v4 = [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController view];
    [v4 removeFromSuperview];
  }

  [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController removeFromParentViewController];
  [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController setDelegate:0];
  overlayBackgroundViewController = self->_overlayBackgroundViewController;
  self->_overlayBackgroundViewController = 0;
}

- (id)_previewOverlayViewController
{
  previewOverlayViewController = self->_previewOverlayViewController;
  if (!previewOverlayViewController)
  {
    v4 = objc_alloc_init(SUPreviewOverlayViewController);
    v5 = self->_previewOverlayViewController;
    self->_previewOverlayViewController = v4;

    v6 = self->_previewOverlayViewController;
    v7 = [(SULegacyClientBridge *)self clientInterface];
    [(SUViewController *)v6 setClientInterface:v7];

    previewOverlayViewController = self->_previewOverlayViewController;
  }

  return previewOverlayViewController;
}

- (void)_removePreviewOverlayViewController
{
  if ([(SUPreviewOverlayViewController *)self->_previewOverlayViewController isViewLoaded])
  {
    v3 = [(SUPreviewOverlayViewController *)self->_previewOverlayViewController view];
    [v3 removeFromSuperview];
  }

  previewOverlayViewController = self->_previewOverlayViewController;
  if (previewOverlayViewController)
  {

    [(SUPreviewOverlayViewController *)previewOverlayViewController removeFromParentViewController];
  }
}

- (void)_showPreviewOverlayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SULegacyClientBridge *)self _previewOverlayViewController];
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    [v5 showInViewController:self->_rootViewController animated:v3 completionBlock:0];
  }

  else
  {
    v8 = [(UITabBarController *)self->_rootViewController selectedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__SULegacyClientBridge__showPreviewOverlayAnimated___block_invoke;
      v9[3] = &unk_1E81644A8;
      v10 = v5;
      v11 = self;
      [v10 showInNavigationController:v8 animated:v3 completionBlock:v9];
    }
  }
}

void __52__SULegacyClientBridge__showPreviewOverlayAnimated___block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) view];
  [v12 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(*(a1 + 40) + 32) view];
  v11 = [v12 superview];
  [v10 convertRect:v11 fromView:{v3, v5, v7, v9}];
  [v12 setFrame:?];

  [v10 addSubview:v12];
}

@end