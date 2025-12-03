@interface PKAddPassesRemoteAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKAddPassesRemoteAlertViewController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKAddPassesRemoteAlertViewController;
  [(PKAddPassesRemoteAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
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
  v3.super_class = PKAddPassesRemoteAlertViewController;
  [(PKAddPassesRemoteAlertViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKAddPassesRemoteAlertViewController;
  [(PKAddPassesRemoteAlertViewController *)&v4 viewWillDisappear:disappear];
  [(PKAddPassesRemoteAlertViewController *)self _dismiss];
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
  completionCopy = completion;
  contextCopy = context;
  _remoteViewControllerProxy = [(PKAddPassesRemoteAlertViewController *)self _remoteViewControllerProxy];
  userInfo = [contextCopy userInfo];

  integerValue = 1;
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
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
  v12 = [userInfo objectForKey:*MEMORY[0x1E69BBFE8]];
  v13 = [userInfo objectForKey:*MEMORY[0x1E69BBFF0]];
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Creating remote view controller for issuer binding.", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKAddPassesRemoteAlertViewController_configureWithContext_completion___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __72__PKAddPassesRemoteAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKServiceAddPassesViewController);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1000);
  *(v3 + 1000) = v2;

  [*(*(a1 + 32) + 1000) setResultsDelegate:?];
  [*(*(a1 + 32) + 1000) setModalPresentationStyle:0];
  v5 = [*(*(a1 + 32) + 1000) presentationController];
  [v5 setDelegate:*(a1 + 32)];

  [*(*(a1 + 32) + 1000) ingestPasses:0 orPassesContainer:0 orIssuerData:*(a1 + 40) withSignature:*(a1 + 48) fromPresentationSource:2];
  v6 = *(*(a1 + 32) + 1000);
  if (v6 && ([v6 topViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = *(a1 + 32);
    v9 = v8[125];

    [v8 presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Unable to present issuer binding view controller", v16, 2u);
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
    v12 = PKLocalizedPaymentString(&cfstr_IssuerDataGene_3.isa);
    v13 = PKLocalizedPaymentString(&cfstr_IssuerDataGene_6.isa);
    v14 = PKDisplayableErrorCustom();

    v15 = PKAlertForDisplayableErrorWithHandlers(v14, 0, 0, 0);
    [*(a1 + 32) presentViewController:v15 animated:1 completion:0];
  }
}

- (void)didInvalidateForRemoteAlert
{
  [(PKAddPassesRemoteAlertViewController *)self _dismiss];
  v3.receiver = self;
  v3.super_class = PKAddPassesRemoteAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 didInvalidateForRemoteAlert];
}

- (void)_dismiss
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__PKAddPassesRemoteAlertViewController__dismiss__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [(PKAddPassesRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __48__PKAddPassesRemoteAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

@end