@interface PKPeerPaymentIdentityVerificationRemoteAlertViewController
- (id)_alertViewController;
- (id)pk_navigationController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPeerPaymentIdentityVerificationRemoteAlertViewController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentIdentityVerificationRemoteAlertViewController;
  [(PKPeerPaymentIdentityVerificationRemoteAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    [windowCopy bounds];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    PKSetDisplayProperties();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentIdentityVerificationRemoteAlertViewController;
  [(PKPeerPaymentIdentityVerificationRemoteAlertViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentIdentityVerificationRemoteAlertViewController;
  [(PKPeerPaymentIdentityVerificationRemoteAlertViewController *)&v4 viewWillDisappear:disappear];
  [(PKPeerPaymentIdentityVerificationRemoteAlertViewController *)self _dismiss];
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

- (void)configureWithContext:(id)context completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  contextCopy = context;
  _remoteViewControllerProxy = [(PKPeerPaymentIdentityVerificationRemoteAlertViewController *)self _remoteViewControllerProxy];
  userInfo = [contextCopy userInfo];

  integerValue = 1;
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:0];
  [_remoteViewControllerProxy setDismissalAnimationStyle:1];
  [_remoteViewControllerProxy setWallpaperStyle:0 withDuration:0.0];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BBFF8]];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    if (!v11)
    {
      goto LABEL_5;
    }

    integerValue = [v11 integerValue];
  }

  [_remoteViewControllerProxy setLaunchingInterfaceOrientation:integerValue];
LABEL_5:
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  webService = self->_webService;
  self->_webService = mEMORY[0x1E69B9020];

  v14 = [userInfo objectForKey:*MEMORY[0x1E69BC040]];
  v15 = [objc_alloc(MEMORY[0x1E69B8F90]) initWithData:v14];
  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v15;
    _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Creating remote view controller for PKPeerPaymentIdentityVerificationResponse: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v17 = [[PKPeerPaymentIdentityVerificationController alloc] initWithPeerPaymentWebService:self->_webService identityVerificationResponse:v15 setupDelegate:self hideInitialSplashScreen:0 context:0];
  controller = self->_controller;
  self->_controller = v17;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PKPeerPaymentIdentityVerificationRemoteAlertViewController_configureWithContext_completion___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __94__PKPeerPaymentIdentityVerificationRemoteAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) firstViewController];
  if (PKDeviceSupportsPeerPaymentIdentityVerification())
  {
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [*(a1 + 32) pk_navigationController];
      [v4 pushViewController:v2 animated:0];

      [*(a1 + 32) presentViewController:*(*(a1 + 32) + 1008) animated:1 completion:0];
    }

    else
    {
      v6 = [*(a1 + 32) _alertViewController];
      [v3 presentViewController:v6 animated:1 completion:0];
    }
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __94__PKPeerPaymentIdentityVerificationRemoteAlertViewController_configureWithContext_completion___block_invoke_2;
    v7[3] = &unk_1E8010970;
    v7[4] = *(a1 + 32);
    v5 = PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported(v7);
    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }
}

void __94__PKPeerPaymentIdentityVerificationRemoteAlertViewController_configureWithContext_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

- (id)pk_navigationController
{
  navController = self->_navController;
  if (!navController)
  {
    v4 = objc_alloc_init(PKNavigationController);
    v5 = self->_navController;
    self->_navController = v4;

    [(PKNavigationController *)self->_navController setSupportedInterfaceOrientations:2];
    [(PKNavigationController *)self->_navController setModalInPresentation:1];
    navController = self->_navController;
  }

  return navController;
}

- (void)handleButtonActions:(id)actions
{
  captureController = [(PKPeerPaymentIdentityVerificationController *)self->_controller captureController];
  if (captureController && [captureController state] == 5)
  {
    [captureController userWantsToCancel];
  }

  else
  {
    [(PKPeerPaymentIdentityVerificationRemoteAlertViewController *)self _dismiss];
  }
}

- (void)_dismiss
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70__PKPeerPaymentIdentityVerificationRemoteAlertViewController__dismiss__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [(PKPeerPaymentIdentityVerificationRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __70__PKPeerPaymentIdentityVerificationRemoteAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

- (id)_alertViewController
{
  v3 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_22.isa);
  v4 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_23.isa);
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PKPeerPaymentIdentityVerificationRemoteAlertViewController__alertViewController__block_invoke;
  v10[3] = &unk_1E80112E8;
  v10[4] = self;
  v8 = [v6 actionWithTitle:v7 style:0 handler:v10];
  [v5 addAction:v8];

  return v5;
}

void __82__PKPeerPaymentIdentityVerificationRemoteAlertViewController__alertViewController__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

@end