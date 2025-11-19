@interface PKPaymentSetupRemoteAlertViewController
- (PKPaymentSetupRemoteAlertViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)appProtectionCoordinatorDidGainAccess:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)paymentSetupDidFinish:(id)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPaymentSetupRemoteAlertViewController

- (PKPaymentSetupRemoteAlertViewController)init
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupRemoteAlertViewController;
  v2 = [(PKPaymentSetupRemoteAlertViewController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69B8560] shared];
    appProtectionCoordinator = v2->_appProtectionCoordinator;
    v2->_appProtectionCoordinator = v3;

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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = PKPaymentSetupRemoteAlertViewController;
  [(PKPaymentSetupRemoteAlertViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6)
  {
    [v6 bounds];
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
    PKSetDisplayProperties();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupRemoteAlertViewController;
  [(PKPaymentSetupRemoteAlertViewController *)&v4 viewWillDisappear:a3];
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

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32 = v6;
  v8 = [v6 userInfo];
  v9 = [(PKPaymentSetupRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v9 setAllowsAlertItems:1];
  [v9 setAllowsAlertStacking:1];
  [v9 setAllowsSiri:0];
  [v9 setAllowsBanners:1];
  [v9 setDesiredHardwareButtonEvents:16];
  [v9 setSwipeDismissalStyle:0];
  [v9 setDismissalAnimationStyle:1];
  [v9 setWallpaperStyle:0 withDuration:0.0];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69BBFF8]];
  v11 = v10;
  if (v10)
  {
    [v9 setLaunchingInterfaceOrientation:{objc_msgSend(v10, "integerValue")}];
  }

  if (v7)
  {
    v7[2](v7);
  }

  v31 = v8;
  v30 = [v8 objectForKey:@"paymentSetupRequest"];
  v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v30 error:0];
  v13 = [v12 paymentSetupFeatures];
  v14 = [v13 pk_containsObjectPassingTest:&__block_literal_global_27];

  if (v14)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc(MEMORY[0x1E69B8D48]);
  v17 = [MEMORY[0x1E69B8EF8] sharedService];
  v18 = [v16 initWithWebService:v17 paymentSetupRequest:v12];

  v19 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:v18 context:8];
  [(PKPaymentSetupNavigationController *)v19 setModalInPresentation:1];
  [(PKPaymentSetupNavigationController *)v19 setSetupDelegate:self];
  [(PKPaymentSetupNavigationController *)v19 setPaymentSetupMode:v15];
  v20 = objc_alloc_init(MEMORY[0x1E69DD258]);
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v20 setModalPresentationStyle:16];
    v21 = [v20 view];
    v22 = [v21 layer];
    [v22 setMasksToBounds:1];

    v23 = [v20 view];
    v24 = [v23 layer];
    [v24 setCornerRadius:6.0];
  }

  else
  {
    [v20 setModalPresentationStyle:3];
  }

  [v20 addChildViewController:v19];
  v25 = [v20 view];
  v26 = [(PKPaymentSetupNavigationController *)v19 view];
  [v25 addSubview:v26];

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

- (void)paymentSetupDidFinish:(id)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(PKPaymentSetupRemoteAlertViewController *)self _dismiss];
}

- (void)appProtectionCoordinatorDidGainAccess:(id)a3
{
  shieldViewController = self->_shieldViewController;
  if (shieldViewController)
  {
    v5 = [(UIViewController *)shieldViewController view];
    [v5 removeFromSuperview];

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
  v4 = [(PKPaymentSetupRemoteAlertViewController *)self presentedViewController];
  if (v4)
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