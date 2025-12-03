@interface PKPeerPaymentRegistrationRemoteAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPeerPaymentRegistrationRemoteAlertViewController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentRegistrationRemoteAlertViewController;
  [(PKPeerPaymentRegistrationRemoteAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
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
  v3.super_class = PKPeerPaymentRegistrationRemoteAlertViewController;
  [(PKPeerPaymentRegistrationRemoteAlertViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentRegistrationRemoteAlertViewController;
  [(PKPeerPaymentRegistrationRemoteAlertViewController *)&v4 viewWillDisappear:disappear];
  [(PKPeerPaymentRegistrationRemoteAlertViewController *)self _dismiss];
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
  userInfo = [contextCopy userInfo];
  _remoteViewControllerProxy = [(PKPeerPaymentRegistrationRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
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

  v12 = [[PKPeerPaymentRegistrationFlowController alloc] initWithUserInfo:userInfo setupDelegate:self];
  flowController = self->_flowController;
  self->_flowController = v12;

  objc_initWeak(&location, self);
  v14 = self->_flowController;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PKPeerPaymentRegistrationRemoteAlertViewController_configureWithContext_completion___block_invoke;
  v15[3] = &unk_1E8011FE8;
  objc_copyWeak(&v16, &location);
  [(PKPeerPaymentRegistrationFlowController *)v14 preflightWithCompletion:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __86__PKPeerPaymentRegistrationRemoteAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4 && WeakRetained)
  {
    [WeakRetained presentViewController:v4 animated:1 completion:0];
  }
}

- (void)_dismiss
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__PKPeerPaymentRegistrationRemoteAlertViewController__dismiss__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [(PKPeerPaymentRegistrationRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __62__PKPeerPaymentRegistrationRemoteAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

@end