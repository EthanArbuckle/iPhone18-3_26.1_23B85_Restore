@interface PKPeerPaymentTermsAndConditionsRemoteAlertViewController
- (PKPeerPaymentTermsAndConditionsRemoteAlertViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPeerPaymentTermsAndConditionsRemoteAlertViewController

- (PKPeerPaymentTermsAndConditionsRemoteAlertViewController)init
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentTermsAndConditionsRemoteAlertViewController;
  return [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)&v3 init];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentTermsAndConditionsRemoteAlertViewController;
  [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
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
  v3.super_class = PKPeerPaymentTermsAndConditionsRemoteAlertViewController;
  [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentTermsAndConditionsRemoteAlertViewController;
  [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)&v4 viewWillDisappear:disappear];
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

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v22 = contextCopy;
  userInfo = [contextCopy userInfo];
  _remoteViewControllerProxy = [(PKPeerPaymentTermsAndConditionsRemoteAlertViewController *)self _remoteViewControllerProxy];
  integerValue = 1;
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setAllowsBanners:1];
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
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v12 = MEMORY[0x1E695DFF8];
  v13 = [userInfo objectForKey:{@"termsURL", v11}];
  v14 = [v12 URLWithString:v13];

  v15 = [userInfo objectForKey:@"termsIdentifier"];
  v16 = [userInfo objectForKey:@"passUniqueID"];
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  v18 = [[PKPeerPaymentTermsController alloc] initWithTermsURL:v14 termsIdentifier:v15 passUniqueID:v16 webService:mEMORY[0x1E69B9020]];
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