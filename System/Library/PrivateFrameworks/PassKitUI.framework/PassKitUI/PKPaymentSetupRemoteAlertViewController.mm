@interface PKPaymentSetupRemoteAlertViewController
- (PKPaymentSetupRemoteAlertViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)appProtectionCoordinatorDidGainAccess:(id)access;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)paymentSetupDidFinish:(id)finish;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPaymentSetupRemoteAlertViewController

- (PKPaymentSetupRemoteAlertViewController)init
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupRemoteAlertViewController;
  v2 = [(PKPaymentSetupRemoteAlertViewController *)&v6 init];
  if (v2)
  {
    mEMORY[0x1E69B8560] = [MEMORY[0x1E69B8560] shared];
    appProtectionCoordinator = v2->_appProtectionCoordinator;
    v2->_appProtectionCoordinator = mEMORY[0x1E69B8560];

    [(PKAppProtectionCoordinator *)v2->_appProtectionCoordinator registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(PKAppProtectionCoordinator *)self->_appProtectionCoordinator unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKPaymentSetupRemoteAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 dealloc];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKPaymentSetupRemoteAlertViewController;
  [(PKPaymentSetupRemoteAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    [windowCopy bounds];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    PKSetDisplayProperties();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupRemoteAlertViewController;
  [(PKPaymentSetupRemoteAlertViewController *)&v4 viewWillDisappear:disappear];
  [(PKPaymentSetupRemoteAlertViewController *)self _dismiss];
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
  contextCopy = context;
  completionCopy = completion;
  v32 = contextCopy;
  userInfo = [contextCopy userInfo];
  _remoteViewControllerProxy = [(PKPaymentSetupRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:0];
  [_remoteViewControllerProxy setDismissalAnimationStyle:1];
  [_remoteViewControllerProxy setWallpaperStyle:0 withDuration:0.0];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BBFF8]];
  v11 = v10;
  if (v10)
  {
    [_remoteViewControllerProxy setLaunchingInterfaceOrientation:{objc_msgSend(v10, "integerValue")}];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v31 = userInfo;
  v30 = [userInfo objectForKey:@"paymentSetupRequest"];
  v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v30 error:0];
  paymentSetupFeatures = [v12 paymentSetupFeatures];
  v14 = [paymentSetupFeatures pk_containsObjectPassingTest:&__block_literal_global_27];

  if (v14)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v18 = [v16 initWithWebService:mEMORY[0x1E69B8EF8] paymentSetupRequest:v12];

  v19 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:v18 context:8];
  [(PKPaymentSetupNavigationController *)v19 setModalInPresentation:1];
  [(PKPaymentSetupNavigationController *)v19 setSetupDelegate:self];
  [(PKPaymentSetupNavigationController *)v19 setPaymentSetupMode:v15];
  v20 = objc_alloc_init(MEMORY[0x1E69DD258]);
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v20 setModalPresentationStyle:16];
    view = [v20 view];
    layer = [view layer];
    [layer setMasksToBounds:1];

    view2 = [v20 view];
    layer2 = [view2 layer];
    [layer2 setCornerRadius:6.0];
  }

  else
  {
    [v20 setModalPresentationStyle:3];
  }

  [v20 addChildViewController:v19];
  view3 = [v20 view];
  view4 = [(PKPaymentSetupNavigationController *)v19 view];
  [view3 addSubview:view4];

  [v20 didMoveToParentViewController:v19];
  objc_initWeak(&location, self);
  appProtectionCoordinator = self->_appProtectionCoordinator;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __75__PKPaymentSetupRemoteAlertViewController_configureWithContext_completion___block_invoke_2;
  v33[3] = &unk_1E8013220;
  objc_copyWeak(&v36, &location);
  v28 = v20;
  v34 = v28;
  v29 = v19;
  v35 = v29;
  [(PKAppProtectionCoordinator *)appProtectionCoordinator isShieldRequiredWithCompletion:v33];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __75__PKPaymentSetupRemoteAlertViewController_configureWithContext_completion___block_invoke_2(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = objc_alloc_init(PKAppProtectionShieldConfiguration);
      [(PKAppProtectionShieldConfiguration *)v5 setShieldType:1];
      [(PKAppProtectionShieldConfiguration *)v5 setDelegate:WeakRetained];
      [(PKAppProtectionShieldConfiguration *)v5 setShowDismiss:1];
      v6 = [PKAppProtectionShieldViewController createShieldViewControllerWithConfiguration:v5];
      v7 = WeakRetained[125];
      WeakRetained[125] = v6;

      if (WeakRetained[125])
      {
        [a1[4] addChildViewController:?];
        v8 = [a1[4] view];
        v9 = [WeakRetained[125] view];
        [v8 addSubview:v9];

        [WeakRetained[125] didMoveToParentViewController:a1[4]];
        v10 = [a1[5] view];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __75__PKPaymentSetupRemoteAlertViewController_configureWithContext_completion___block_invoke_3;
        v11[3] = &unk_1E80131F8;
        objc_copyWeak(&v12, a1 + 6);
        [v10 setAccessibilityElementsHiddenBlock:v11];

        objc_destroyWeak(&v12);
      }
    }

    [WeakRetained presentViewController:a1[4] animated:1 completion:0];
  }
}

BOOL __75__PKPaymentSetupRemoteAlertViewController_configureWithContext_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[125] != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)paymentSetupDidFinish:(id)finish
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(PKPaymentSetupRemoteAlertViewController *)self _dismiss];
}

- (void)appProtectionCoordinatorDidGainAccess:(id)access
{
  shieldViewController = self->_shieldViewController;
  if (shieldViewController)
  {
    view = [(UIViewController *)shieldViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_shieldViewController removeFromParentViewController];
    v6 = self->_shieldViewController;
    self->_shieldViewController = 0;
  }
}

- (void)_dismiss
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPaymentSetupRemoteAlertViewController__dismiss__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  presentedViewController = [(PKPaymentSetupRemoteAlertViewController *)self presentedViewController];
  if (presentedViewController)
  {
    [(PKPaymentSetupRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v3];
  }

  else
  {
    v3[2](v3);
  }
}

void __51__PKPaymentSetupRemoteAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

@end