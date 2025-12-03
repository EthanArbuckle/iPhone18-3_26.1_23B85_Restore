@interface SULegacyClientBridge
- (BOOL)composeReviewWithViewController:(id)controller animated:(BOOL)animated;
- (BOOL)enterAccountFlowWithViewController:(id)controller animated:(BOOL)animated;
- (BOOL)presentOverlayBackgroundViewController:(id)controller;
- (SULegacyClientBridge)initWithClientInterface:(id)interface;
- (id)_previewOverlayViewController;
- (void)_removePreviewOverlayViewController;
- (void)_showPreviewOverlayAnimated:(BOOL)animated;
- (void)composeEmailWithSubject:(id)subject body:(id)body;
- (void)dealloc;
- (void)hidePreviewOverlayAnimated:(BOOL)animated;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)scriptOverlayBackgroundDidDismiss:(id)dismiss;
- (void)showPreviewOverlayAnimated:(BOOL)animated;
@end

@implementation SULegacyClientBridge

- (SULegacyClientBridge)initWithClientInterface:(id)interface
{
  interfaceCopy = interface;
  v9.receiver = self;
  v9.super_class = SULegacyClientBridge;
  v6 = [(SULegacyClientBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientInterface, interface);
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

- (void)composeEmailWithSubject:(id)subject body:(id)body
{
  bodyCopy = body;
  subjectCopy = subject;
  v8 = objc_alloc_init(ISWeakLinkedClassForString());
  [v8 setKeyboardVisible:1];
  [v8 setMailComposeDelegate:self];
  [v8 setSubject:subjectCopy];

  [v8 setMessageBody:bodyCopy isHTML:1];
  [(UITabBarController *)self->_rootViewController presentViewController:v8 animated:1 completion:0];
}

- (BOOL)composeReviewWithViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SULegacyClientBridge_composeReviewWithViewController_animated___block_invoke;
  v8[3] = &unk_1E8166E58;
  objc_copyWeak(&v10, &location);
  v6 = controllerCopy;
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

- (BOOL)enterAccountFlowWithViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  v7 = [[SUNavigationController alloc] initWithRootViewController:controllerCopy];
  clientInterface = [controllerCopy clientInterface];

  [(SUNavigationController *)v7 setClientInterface:clientInterface];
  [(SUNavigationController *)v7 setNavigationBarHidden:1];
  [(SUNavigationController *)v7 setModalPresentationStyle:2];
  [(UITabBarController *)self->_rootViewController presentViewController:v7 animated:animatedCopy completion:0];

  return 1;
}

- (void)hidePreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    previewOverlayViewController = self->_previewOverlayViewController;
    rootViewController = self->_rootViewController;

    [(SUPreviewOverlayViewController *)previewOverlayViewController hideInViewController:rootViewController animated:animatedCopy completionBlock:0];
  }

  else
  {
    selectedViewController = [(UITabBarController *)self->_rootViewController selectedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = self->_previewOverlayViewController;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SULegacyClientBridge_hidePreviewOverlayAnimated___block_invoke;
      v11[3] = &unk_1E81645E8;
      v11[4] = self;
      [(SUPreviewOverlayViewController *)v10 hideInNavigationController:selectedViewController animated:animatedCopy completionBlock:v11];
    }

    else
    {
      [(SULegacyClientBridge *)self _removePreviewOverlayViewController];
    }
  }
}

- (BOOL)presentOverlayBackgroundViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_overlayBackgroundViewController || !self->_rootViewController)
  {
    v6 = 0;
  }

  else
  {
    objc_storeStrong(&self->_overlayBackgroundViewController, controller);
    [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController setDelegate:self];
    [(UITabBarController *)self->_rootViewController addChildViewController:self->_overlayBackgroundViewController];
    view = [(UITabBarController *)self->_rootViewController view];
    view2 = [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController view];
    [view bounds];
    [view2 setFrame:?];
    [view addSubview:view2];

    v6 = 1;
  }

  return v6;
}

- (void)showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _previewOverlayViewController = [(SULegacyClientBridge *)self _previewOverlayViewController];
  if (![_previewOverlayViewController isViewLoaded] || (objc_msgSend(_previewOverlayViewController, "view"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "window"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    if ([_previewOverlayViewController isContentLoaded])
    {
      [(SULegacyClientBridge *)self _showPreviewOverlayAnimated:animatedCopy];
    }

    else if (([_previewOverlayViewController isSkLoading] & 1) == 0)
    {
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__SULegacyClientBridge_showPreviewOverlayAnimated___block_invoke;
      v8[3] = &unk_1E8166E80;
      objc_copyWeak(&v9, &location);
      v10 = animatedCopy;
      [_previewOverlayViewController loadWithCompletionBlock:v8];
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

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  controllerCopy = controller;
  [controllerCopy setDelegate:0];
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)scriptOverlayBackgroundDidDismiss:(id)dismiss
{
  if ([(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController isViewLoaded])
  {
    view = [(SUOverlayBackgroundViewController *)self->_overlayBackgroundViewController view];
    [view removeFromSuperview];
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
    clientInterface = [(SULegacyClientBridge *)self clientInterface];
    [(SUViewController *)v6 setClientInterface:clientInterface];

    previewOverlayViewController = self->_previewOverlayViewController;
  }

  return previewOverlayViewController;
}

- (void)_removePreviewOverlayViewController
{
  if ([(SUPreviewOverlayViewController *)self->_previewOverlayViewController isViewLoaded])
  {
    view = [(SUPreviewOverlayViewController *)self->_previewOverlayViewController view];
    [view removeFromSuperview];
  }

  previewOverlayViewController = self->_previewOverlayViewController;
  if (previewOverlayViewController)
  {

    [(SUPreviewOverlayViewController *)previewOverlayViewController removeFromParentViewController];
  }
}

- (void)_showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _previewOverlayViewController = [(SULegacyClientBridge *)self _previewOverlayViewController];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [_previewOverlayViewController showInViewController:self->_rootViewController animated:animatedCopy completionBlock:0];
  }

  else
  {
    selectedViewController = [(UITabBarController *)self->_rootViewController selectedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__SULegacyClientBridge__showPreviewOverlayAnimated___block_invoke;
      v9[3] = &unk_1E81644A8;
      v10 = _previewOverlayViewController;
      selfCopy = self;
      [v10 showInNavigationController:selectedViewController animated:animatedCopy completionBlock:v9];
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