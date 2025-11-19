@interface PKPeerPaymentTermsAndConditionsRemoteAlertViewController
- (PKPeerPaymentTermsAndConditionsRemoteAlertViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPeerPaymentTermsAndConditionsRemoteAlertViewController

- (PKPeerPaymentTermsAndConditionsRemoteAlertViewController)init
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentTermsAndConditionsRemoteAlertViewController;
  return [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)&v3 init];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentTermsAndConditionsRemoteAlertViewController;
  [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6)
  {
    [v6 bounds];
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
    PKSetDisplayProperties();
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentTermsAndConditionsRemoteAlertViewController;
  [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentTermsAndConditionsRemoteAlertViewController;
  [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)&v4 viewWillDisappear:a3];
  [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)self _dismiss];
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
  v22 = v6;
  v8 = [v6 userInfo];
  v9 = [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)self _remoteViewControllerProxy];
  v10 = 1;
  [v9 setAllowsAlertItems:1];
  [v9 setAllowsSiri:0];
  [v9 setAllowsBanners:1];
  [v9 setDesiredHardwareButtonEvents:16];
  [v9 setSwipeDismissalStyle:0];
  [v9 setDismissalAnimationStyle:1];
  [v9 setWallpaperStyle:0 withDuration:0.0];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69BBFF8]];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    if (!v11)
    {
      goto LABEL_5;
    }

    v10 = [v11 integerValue];
  }

  [v9 setLaunchingInterfaceOrientation:v10];
LABEL_5:
  if (v7)
  {
    v7[2](v7);
  }

  v12 = MEMORY[0x1E695DFF8];
  v13 = [v8 objectForKey:{@"termsURL", v11}];
  v14 = [v12 URLWithString:v13];

  v15 = [v8 objectForKey:@"termsIdentifier"];
  v16 = [v8 objectForKey:@"passUniqueID"];
  v17 = [MEMORY[0x1E69B9020] sharedService];
  v18 = [[PKPeerPaymentTermsController alloc] initWithTermsURL:v14 termsIdentifier:v15 passUniqueID:v16 webService:v17];
  termsController = self->_termsController;
  self->_termsController = v18;

  objc_initWeak(&location, self);
  v20 = self->_termsController;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__PKPeerPaymentTermsAndConditionsRemoteAlertViewController_configureWithContext_completion___block_invoke;
  v23[3] = &unk_1E8012C78;
  objc_copyWeak(&v24, &location);
  [(PKPeerPaymentTermsController *)v20 presentTermsOverController:self showInterstitialViewController:1 withCompletionHandler:v23];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __92__PKPeerPaymentTermsAndConditionsRemoteAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 - 1) <= 1 && WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _dismiss];
    WeakRetained = v4;
  }
}

- (void)_dismiss
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__PKPeerPaymentTermsAndConditionsRemoteAlertViewController__dismiss__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __68__PKPeerPaymentTermsAndConditionsRemoteAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

@end