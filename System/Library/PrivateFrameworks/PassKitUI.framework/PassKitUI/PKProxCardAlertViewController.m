@interface PKProxCardAlertViewController
- (id)_proxCardControllerForRequest:(id)a3;
- (void)_dismiss;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKProxCardAlertViewController

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = PKProxCardAlertViewController;
  [(PKProxCardAlertViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
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
  v4.super_class = PKProxCardAlertViewController;
  [(PKProxCardAlertViewController *)&v4 viewWillDisappear:a3];
  [(PKProxCardAlertViewController *)self _dismiss];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKProxCardAlertViewController *)self _remoteViewControllerProxy];
  [v8 setAllowsAlertItems:1];
  [v8 setAllowsSiri:0];
  [v8 setAllowsBanners:1];
  [v8 setDesiredHardwareButtonEvents:16];
  [v8 setSwipeDismissalStyle:0];
  [v8 setDismissalAnimationStyle:0];
  [v8 setWallpaperStyle:0 withDuration:0.0];
  [v8 setLaunchingInterfaceOrientation:1];
  if (v7)
  {
    v7[2](v7);
  }

  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69BC028]];

  v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
  v12 = [(PKProxCardAlertViewController *)self _proxCardControllerForRequest:v11];
  if (v12)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__PKProxCardAlertViewController_configureWithContext_completion___block_invoke;
    v15[3] = &unk_1E8020598;
    v15[4] = self;
    v13 = [MEMORY[0x1E69C66C8] actionWithTitle:&stru_1F3BD7330 style:0 handler:v15];
    [v12 setDismissButtonAction:v13];

    v14 = [(PKProxCardAlertViewController *)self presentProxCardFlowWithDelegate:self initialViewController:v12];
  }

  else
  {
    [(PKProxCardAlertViewController *)self _dismiss];
  }
}

- (void)_dismiss
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PKProxCardAlertViewController__dismiss__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(PKProxCardAlertViewController *)self presentedViewController];
  if (v4)
  {
    [(PKProxCardAlertViewController *)self dismissViewControllerAnimated:1 completion:v3];
  }

  else
  {
    v3[2](v3);
  }
}

void __41__PKProxCardAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

- (id)_proxCardControllerForRequest:(id)a3
{
  v3 = a3;
  if ([v3 proxCardType] == 1)
  {
    v4 = v3;
    v5 = [v4 supportedTerminal];
    v6 = [v4 referralSource];

    v7 = [v5 vehicleInitiatedPairingLaunchURLWithReferralSource:v6];
    v8 = [[PKVehicleInitiatedPairingViewController alloc] initWithSupportedTerminal:v5 launchURL:v7 referralSource:v6 didDismiss:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end