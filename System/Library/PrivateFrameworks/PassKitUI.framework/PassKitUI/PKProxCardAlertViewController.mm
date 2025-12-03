@interface PKProxCardAlertViewController
- (id)_proxCardControllerForRequest:(id)request;
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKProxCardAlertViewController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKProxCardAlertViewController;
  [(PKProxCardAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
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
  v4.super_class = PKProxCardAlertViewController;
  [(PKProxCardAlertViewController *)&v4 viewWillDisappear:disappear];
  [(PKProxCardAlertViewController *)self _dismiss];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  _remoteViewControllerProxy = [(PKProxCardAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:0];
  [_remoteViewControllerProxy setDismissalAnimationStyle:0];
  [_remoteViewControllerProxy setWallpaperStyle:0 withDuration:0.0];
  [_remoteViewControllerProxy setLaunchingInterfaceOrientation:1];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BC028]];

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
  presentedViewController = [(PKProxCardAlertViewController *)self presentedViewController];
  if (presentedViewController)
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

- (id)_proxCardControllerForRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy proxCardType] == 1)
  {
    v4 = requestCopy;
    supportedTerminal = [v4 supportedTerminal];
    referralSource = [v4 referralSource];

    v7 = [supportedTerminal vehicleInitiatedPairingLaunchURLWithReferralSource:referralSource];
    v8 = [[PKVehicleInitiatedPairingViewController alloc] initWithSupportedTerminal:supportedTerminal launchURL:v7 referralSource:referralSource didDismiss:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end