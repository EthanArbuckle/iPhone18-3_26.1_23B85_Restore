@interface PRUISInlinePosterEditingViewController
- (BOOL)prefersStatusBarHidden;
- (PRUISInlinePosterEditingViewController)initWithEntryPoint:(id)a3;
- (PRUISInlinePosterEditingViewControllerDelegate)delegate;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredStatusBarUpdateAnimation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_getEditingViewControllerIfPossible;
- (void)_shared_didDismissWithResponse:(id)a3;
- (void)_shared_willDismissWithResponse:(id)a3;
- (void)modalRemoteViewController:(id)a3 didDismissWithResponse:(id)a4;
- (void)modalRemoteViewController:(id)a3 willDismissWithResponse:(id)a4;
- (void)sendRequestDismissalAction;
- (void)setDisplayConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation PRUISInlinePosterEditingViewController

- (PRUISInlinePosterEditingViewController)initWithEntryPoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRUISInlinePosterEditingViewController;
  v6 = [(PRUISInlinePosterEditingViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryPoint, a3);
  }

  return v7;
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayConfiguration, a3);
    [(PRUISModalRemoteViewController *)self->_fallbackViewController setDisplayConfiguration:v5];
  }
}

- (void)_getEditingViewControllerIfPossible
{
  BSDispatchQueueAssertMain();
  if (![(PRUISInlinePosterEditingViewController *)self _isPresentingRemoteOrLocalEditingUI])
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke;
    aBlock[3] = &unk_1E83A72A8;
    objc_copyWeak(&v22, &location);
    v3 = _Block_copy(aBlock);
    if (+[PRUISExternallyHostedPosterEditingService isExternalEditingSupported](PRUISExternallyHostedPosterEditingService, "isExternalEditingSupported") && ([MEMORY[0x1E698E740] processHandle], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasEntitlement:", @"com.apple.posterboardui.externalEditing"), v4, v5))
    {
      v6 = objc_alloc_init(PRUISExternallyHostedPosterEditingService);
      [(PRUISExternallyHostedPosterEditingService *)v6 setDelegate:self];
      v7 = [PRUISExternallyHostedPosterEditingService editingRequestForEntryPoint:self->_entryPoint];
      remoteEditingRequest = self->_remoteEditingRequest;
      self->_remoteEditingRequest = v7;

      v9 = self->_remoteEditingRequest;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke_2;
      v16[3] = &unk_1E83A8100;
      objc_copyWeak(&v20, &location);
      v10 = v3;
      v19 = v10;
      v11 = v6;
      v17 = v11;
      v18 = self;
      [(PRUISExternallyHostedPosterEditingService *)v11 beginEditingWithRequest:v9 completion:v16];
      v12 = dispatch_time(0, 3000000000);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke_5;
      v13[3] = &unk_1E83A8128;
      objc_copyWeak(&v15, &location);
      v14 = v10;
      dispatch_after(v12, MEMORY[0x1E69E96A0], v13);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&v20);
    }

    else
    {
      v3[2](v3);
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [[PRUISModalRemoteViewController alloc] initWithEntryPoint:WeakRetained[124]];
    [(PRUISModalRemoteViewController *)v2 setDelegate:v6];
    v3 = [v6 displayConfiguration];
    [(PRUISModalRemoteViewController *)v2 setDisplayConfiguration:v3];

    v4 = v6[127];
    v6[127] = v2;
    v5 = v2;

    [v6 bs_addChildViewController:v5 animated:1 transitionBlock:0];
    WeakRetained = v6;
  }
}

void __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = a1[6];
  v6 = a1[4];
  v5 = v3;
  BSDispatchMain();
}

void __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke_3_cold_1(v2, v3);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      objc_storeStrong((v4 + 1008), *(a1 + 48));
      v5 = objc_alloc_init(PRUISInlinePosterEditingPlaceholderViewController);
      [(PRUISInlinePosterEditingPlaceholderViewController *)v5 setDelegate:*(a1 + 56)];
      [*(a1 + 40) bs_addChildViewController:v5 animated:1 transitionBlock:0];
    }
  }
}

void __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained _isPresentingRemoteOrLocalEditingUI] & 1) == 0)
  {
    v4 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke_5_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PRUISInlinePosterEditingViewController;
  [(PRUISInlinePosterEditingViewController *)&v3 viewDidLoad];
  [(PRUISInlinePosterEditingViewController *)self _getEditingViewControllerIfPossible];
}

- (void)sendRequestDismissalAction
{
  if (self->_remoteEditingService)
  {
    [(PRUISExternallyHostedPosterEditingService *)self->_remoteEditingService sendRequestDismissalActionWithRequest:self->_remoteEditingRequest];
  }

  else
  {
    fallbackViewController = self->_fallbackViewController;
    if (fallbackViewController)
    {
      [(PRUISModalRemoteViewController *)fallbackViewController sendRequestDismissalAction];
    }
  }
}

- (BOOL)prefersStatusBarHidden
{
  if (self->_fallbackViewController)
  {
    fallbackViewController = self->_fallbackViewController;

    return [(PRUISModalRemoteViewController *)fallbackViewController prefersStatusBarHidden];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PRUISInlinePosterEditingViewController;
    return [(PRUISInlinePosterEditingViewController *)&v6 prefersStatusBarHidden];
  }
}

- (int64_t)preferredStatusBarStyle
{
  if (self->_fallbackViewController)
  {
    fallbackViewController = self->_fallbackViewController;

    return [(PRUISModalRemoteViewController *)fallbackViewController preferredStatusBarStyle];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PRUISInlinePosterEditingViewController;
    return [(PRUISInlinePosterEditingViewController *)&v6 preferredStatusBarStyle];
  }
}

- (int64_t)preferredStatusBarUpdateAnimation
{
  if (self->_fallbackViewController)
  {
    fallbackViewController = self->_fallbackViewController;

    return [(PRUISModalRemoteViewController *)fallbackViewController preferredStatusBarUpdateAnimation];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PRUISInlinePosterEditingViewController;
    return [(PRUISInlinePosterEditingViewController *)&v6 preferredStatusBarUpdateAnimation];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_fallbackViewController)
  {
    fallbackViewController = self->_fallbackViewController;

    return [(PRUISModalRemoteViewController *)fallbackViewController supportedInterfaceOrientations];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PRUISInlinePosterEditingViewController;
    return [(PRUISInlinePosterEditingViewController *)&v6 supportedInterfaceOrientations];
  }
}

- (void)modalRemoteViewController:(id)a3 willDismissWithResponse:(id)a4
{
  v7 = a4;
  if (self->_fallbackViewController != a3)
  {
    [PRUISInlinePosterEditingViewController modalRemoteViewController:a2 willDismissWithResponse:self];
  }

  [(PRUISInlinePosterEditingViewController *)self _shared_willDismissWithResponse:?];
}

- (void)modalRemoteViewController:(id)a3 didDismissWithResponse:(id)a4
{
  v7 = a4;
  if (self->_fallbackViewController != a3)
  {
    [PRUISInlinePosterEditingViewController modalRemoteViewController:a2 didDismissWithResponse:self];
  }

  [(PRUISInlinePosterEditingViewController *)self _shared_didDismissWithResponse:?];
}

- (void)_shared_willDismissWithResponse:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  v4 = [(PRUISInlinePosterEditingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 inlineEditingViewController:self willDismissWithResponse:v5];
  }
}

- (void)_shared_didDismissWithResponse:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  v4 = [(PRUISInlinePosterEditingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 inlineEditingViewController:self didDismissWithResponse:v5];
  }

  [(PRUISExternallyHostedPosterEditingService *)self->_remoteEditingService invalidate];
}

- (PRUISInlinePosterEditingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __77__PRUISInlinePosterEditingViewController__getEditingViewControllerIfPossible__block_invoke_3_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_ERROR, "Failed to load remote editing service, falling back to local. Error: %@", &v3, 0xCu);
}

- (void)modalRemoteViewController:(uint64_t)a1 willDismissWithResponse:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISInlinePosterEditingViewController.m" lineNumber:157 description:@"should be our view controller!"];
}

- (void)modalRemoteViewController:(uint64_t)a1 didDismissWithResponse:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISInlinePosterEditingViewController.m" lineNumber:162 description:@"should be our view controller!"];
}

@end