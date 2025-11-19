@interface PKContinuityPaymentRemoteAlertViewController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)result;
- (PKContinuityPaymentRemoteAlertViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelPayment;
- (void)_dismiss;
- (void)_presentEnrollAccessibilityIntentAlert;
- (void)authorizationDidAuthorizePayment:(id)a3;
- (void)authorizationDidFinishWithError:(id)a3;
- (void)authorizationWillStart;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didInvalidateForRemoteAlert;
- (void)didReceiveCancellationForRemotePaymentRequest:(id)a3;
- (void)didReceivePaymentClientUpdate:(id)a3 forRemotePaymentRequest:(id)a4;
- (void)didReceivePaymentResult:(id)a3 forRemotePaymentRequest:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKContinuityPaymentRemoteAlertViewController

- (PKContinuityPaymentRemoteAlertViewController)init
{
  v6.receiver = self;
  v6.super_class = PKContinuityPaymentRemoteAlertViewController;
  v2 = [(PKContinuityPaymentRemoteAlertViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B8760]);
    continuityService = v2->_continuityService;
    v2->_continuityService = v3;

    [(PKContinuityPaymentService *)v2->_continuityService setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(PKContinuityPaymentViewController *)self->_continuityViewController setDelegate:0];
  [(PKContinuityPaymentService *)self->_continuityService setDelegate:0];
  [(PKContinuityPaymentRemoteAlertViewController *)self _invalidate];
  v3.receiver = self;
  v3.super_class = PKContinuityPaymentRemoteAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKContinuityPaymentRemoteAlertViewController;
  [(PKContinuityPaymentRemoteAlertViewController *)&v6 viewDidLoad];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v2 setStatusBarHeightOverride:v3];

  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Did load continuity payment alert controller", v5, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(PKContinuityPaymentRemoteAlertViewController *)self _cancelPayment];
  v5.receiver = self;
  v5.super_class = PKContinuityPaymentRemoteAlertViewController;
  [(PKContinuityPaymentRemoteAlertViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PKContinuityPaymentRemoteAlertViewController;
  [(PKContinuityPaymentRemoteAlertViewController *)&v3 viewDidAppear:a3];
  AudioServicesPlaySystemSoundWithCompletion(0x487u, 0);
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)result
{
  if (self->_navigationController != a3)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKContinuityPaymentRemoteAlertViewController;
    [(PKContinuityPaymentRemoteAlertViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)didInvalidateForRemoteAlert
{
  v3.receiver = self;
  v3.super_class = PKContinuityPaymentRemoteAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 didInvalidateForRemoteAlert];
  [(PKContinuityPaymentRemoteAlertViewController *)self _invalidate];
  [(PKContinuityPaymentRemoteAlertViewController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 userInfo];
  v8 = [(PKContinuityPaymentRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v8 setAllowsAlertItems:1];
  [v8 setAllowsSiri:0];
  [v8 setAllowsBanners:1];
  if (![(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v8 setLaunchingInterfaceOrientation:1];
  }

  [v8 setWallpaperStyle:1 withDuration:0.0];
  if (PKDeviceUILocked())
  {
    [v8 setWallpaperTunnelActive:1];
    [v8 setDesiredAutoLockDuration:60.0];
  }

  [v8 setDesiredHardwareButtonEvents:16];
  [v8 setSwipeDismissalStyle:0];
  [v8 setDismissalAnimationStyle:1];
  if (v6)
  {
    v6[2](v6);
  }

  v9 = [v7 objectForKey:@"remotePaymentRequest"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:0];
      if (v10)
      {
        v11 = v10;
        v12 = [(PKRemotePaymentRequest *)v10 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508] error:0];
        remoteRequest = self->_remoteRequest;
        self->_remoteRequest = v12;

        [(PKRemotePaymentRequest *)v11 finishDecoding];
        goto LABEL_15;
      }
    }
  }

  else
  {

    v9 = 0;
  }

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Could not initialize unarchiver with remotePaymentRequest.", v21, 2u);
  }

  v11 = self->_remoteRequest;
  self->_remoteRequest = 0;
LABEL_15:

  if (self->_remoteRequest)
  {
    if ([MEMORY[0x1E69BC740] userIntentStyle] == -1)
    {
      [(PKContinuityPaymentRemoteAlertViewController *)self _cancelPayment];
      [(PKContinuityPaymentRemoteAlertViewController *)self _presentEnrollAccessibilityIntentAlert];
    }

    else
    {
      v15 = [[PKContinuityPaymentViewController alloc] initWithRemotePaymentRequest:self->_remoteRequest];
      continuityViewController = self->_continuityViewController;
      self->_continuityViewController = v15;

      [(PKContinuityPaymentViewController *)self->_continuityViewController setDelegate:self];
      v17 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
      navigationController = self->_navigationController;
      self->_navigationController = v17;

      [(UINavigationController *)self->_navigationController setModalPresentationStyle:6];
      [(UINavigationController *)self->_navigationController setModalInPresentation:1];
      v19 = self->_navigationController;
      v22[0] = self->_continuityViewController;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [(UINavigationController *)v19 setViewControllers:v20];

      [(PKContinuityPaymentRemoteAlertViewController *)self presentViewController:self->_navigationController animated:1 completion:&__block_literal_global_270];
    }
  }

  else
  {
    [(PKContinuityPaymentRemoteAlertViewController *)self _dismiss];
  }
}

void __80__PKContinuityPaymentRemoteAlertViewController_configureWithContext_completion___block_invoke()
{
  v0 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BD026000, v0, OS_LOG_TYPE_DEFAULT, "Presented continuity view controller", v1, 2u);
  }
}

- (void)handleButtonActions:(id)a3
{
  if (!self->_hasAuthorizedPayment)
  {
    [(PKContinuityPaymentRemoteAlertViewController *)self _cancelPayment];
  }

  [(PKContinuityPaymentRemoteAlertViewController *)self _dismiss];
}

- (void)_dismiss
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 pkui_resetSharedRootAuthenticationContext];

  [(PKContinuityPaymentRemoteAlertViewController *)self _invalidate];
  v4 = [(PKContinuityPaymentRemoteAlertViewController *)self presentedViewController];
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PKContinuityPaymentRemoteAlertViewController__dismiss__block_invoke;
    v6[3] = &unk_1E8010970;
    v6[4] = self;
    [(PKContinuityPaymentRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    v5 = [(PKContinuityPaymentRemoteAlertViewController *)self _remoteViewControllerProxy];
    [v5 invalidate];
  }
}

void __56__PKContinuityPaymentRemoteAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

- (void)_cancelPayment
{
  if (!self->_hasSentCancelPaymentRequest)
  {
    self->_hasSentCancelPaymentRequest = 1;
    remoteRequest = self->_remoteRequest;
    if (remoteRequest)
    {
      [(PKContinuityPaymentService *)self->_continuityService cancelRemotePaymentRequest:remoteRequest completion:0];
    }
  }
}

- (void)_presentEnrollAccessibilityIntentAlert
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKContinuityPaymentRemoteAlertViewController__presentEnrollAccessibilityIntentAlert__block_invoke;
  aBlock[3] = &unk_1E8010998;
  objc_copyWeak(&v9, &location);
  v3 = _Block_copy(aBlock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__PKContinuityPaymentRemoteAlertViewController__presentEnrollAccessibilityIntentAlert__block_invoke_2;
  v6[3] = &unk_1E80122D8;
  objc_copyWeak(&v7, &location);
  v4 = _Block_copy(v6);
  AccesibilityIntentUnavailable = PKAlertCreateAccesibilityIntentUnavailable(v3, v4);
  [(PKContinuityPaymentRemoteAlertViewController *)self presentViewController:AccesibilityIntentUnavailable animated:1 completion:0];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __86__PKContinuityPaymentRemoteAlertViewController__presentEnrollAccessibilityIntentAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _dismiss];
    WeakRetained = v2;
  }
}

void __86__PKContinuityPaymentRemoteAlertViewController__presentEnrollAccessibilityIntentAlert__block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _dismiss];
    v6 = objc_alloc_init(MEMORY[0x1E69636B8]);
    [v6 setSensitive:1];
    v8 = *MEMORY[0x1E699F970];
    v9[0] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v6 setFrontBoardOptions:v7];

    PKOpenApplication(v3, v6);
  }
}

- (void)didReceivePaymentResult:(id)a3 forRemotePaymentRequest:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKContinuityPaymentRemoteAlertViewController_didReceivePaymentResult_forRemotePaymentRequest___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)didReceivePaymentClientUpdate:(id)a3 forRemotePaymentRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKContinuityPaymentRemoteAlertViewController_didReceivePaymentClientUpdate_forRemotePaymentRequest___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __102__PKContinuityPaymentRemoteAlertViewController_didReceivePaymentClientUpdate_forRemotePaymentRequest___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [*(a1[5] + 1000) remoteRequest];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = a1[6];
    v5 = *(a1[5] + 1000);

    [v5 updatePaymentWithClientUpdate:v4];
  }
}

- (void)didReceiveCancellationForRemotePaymentRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__PKContinuityPaymentRemoteAlertViewController_didReceiveCancellationForRemotePaymentRequest___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __94__PKContinuityPaymentRemoteAlertViewController_didReceiveCancellationForRemotePaymentRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 1000) remoteRequest];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);

    [v4 _dismiss];
  }
}

- (void)authorizationWillStart
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Authorization will start", v3, 2u);
  }
}

- (void)authorizationDidFinishWithError:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Authorization did finish with error", v6, 2u);
  }

  if (!self->_hasAuthorizedPayment)
  {
    [(PKContinuityPaymentRemoteAlertViewController *)self _cancelPayment];
  }

  [(PKContinuityPaymentRemoteAlertViewController *)self _dismiss];
}

- (void)authorizationDidAuthorizePayment:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Authorization did authorize payment", v6, 2u);
  }

  if (!self->_hasSentCancelPaymentRequest)
  {
    self->_hasAuthorizedPayment = 1;
    [(PKContinuityPaymentService *)self->_continuityService sendPayment:v4 forRemotePaymentRequest:self->_remoteRequest completion:0];
  }
}

@end