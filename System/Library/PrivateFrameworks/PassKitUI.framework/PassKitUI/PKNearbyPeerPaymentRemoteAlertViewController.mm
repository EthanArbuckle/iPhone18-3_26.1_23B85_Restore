@interface PKNearbyPeerPaymentRemoteAlertViewController
- (BOOL)_allowHome;
- (void)_dismiss:(id)_dismiss;
- (void)_handleInitialHome;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKNearbyPeerPaymentRemoteAlertViewController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKNearbyPeerPaymentRemoteAlertViewController;
  [(PKNearbyPeerPaymentRemoteAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    [windowCopy bounds];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    PKSetDisplayProperties();
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PKNearbyPeerPaymentRemoteAlertViewController;
  [(PKNearbyPeerPaymentRemoteAlertViewController *)&v8 viewWillAppear:appear];
  [(PKNearbyPeerPaymentViewController *)self->_viewController setModalPresentationStyle:0];
  [(PKNearbyPeerPaymentViewController *)self->_viewController setModalTransitionStyle:2];
  [(PKNearbyPeerPaymentRemoteAlertViewController *)self presentViewController:self->_viewController animated:1 completion:0];
  if (!self->_inUseAssertion)
  {
    v4 = MEMORY[0x1E695FBE0];
    v5 = PKPassKitCoreBundle();
    v6 = [v4 newAssertionForBundle:v5 withReason:@"Passbook displaying nearby remote UI"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v6;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = PKNearbyPeerPaymentRemoteAlertViewController;
  [(PKNearbyPeerPaymentRemoteAlertViewController *)&v11 viewWillDisappear:disappear];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    v5 = inUseAssertion;
    v6 = self->_inUseAssertion;
    self->_inUseAssertion = 0;

    v7 = dispatch_time(0, (*MEMORY[0x1E69BBAD8] * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PKNearbyPeerPaymentRemoteAlertViewController_viewWillDisappear___block_invoke;
    block[3] = &unk_1E8010970;
    v10 = v5;
    v8 = v5;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  [(PKNearbyPeerPaymentRemoteAlertViewController *)self _dismiss:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PKNearbyPeerPaymentRemoteAlertViewController;
  [(PKNearbyPeerPaymentRemoteAlertViewController *)&v3 viewDidDisappear:disappear];
  [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6A8]];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  _remoteViewControllerProxy = [(PKNearbyPeerPaymentRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  _allowHome = [(PKNearbyPeerPaymentRemoteAlertViewController *)self _allowHome];
  if (_allowHome)
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:{_allowHome, contextCopy}];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:v9];
  [_remoteViewControllerProxy setSwipeDismissalStyle:0];
  [_remoteViewControllerProxy setDismissalAnimationStyle:1];
  [_remoteViewControllerProxy setWallpaperStyle:0 withDuration:0.0];
  [_remoteViewControllerProxy setLaunchingInterfaceOrientation:1];
  userInfo = [v24 userInfo];
  userInfo = self->_userInfo;
  self->_userInfo = userInfo;

  v12 = [(NSDictionary *)self->_userInfo valueForKey:*MEMORY[0x1E69BBFC0]];
  v13 = *MEMORY[0x1E69BB6A8];
  if (v12)
  {
    [MEMORY[0x1E69B8540] beginSubjectReporting:v13 withArchivedParent:v12];
  }

  else
  {
    [MEMORY[0x1E69B8540] beginSubjectReporting:v13];
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PKNearbyPeerPaymentRemoteAlertViewController_configureWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E8010998;
  objc_copyWeak(&v28, &location);
  v14 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __80__PKNearbyPeerPaymentRemoteAlertViewController_configureWithContext_completion___block_invoke_2;
  v25[3] = &unk_1E80221C0;
  objc_copyWeak(&v26, &location);
  v15 = _Block_copy(v25);
  nearbyContext = [(PKNearbyPeerPaymentRemoteAlertViewController *)self nearbyContext];
  if (nearbyContext)
  {
    if (nearbyContext != 1)
    {
      goto LABEL_16;
    }

    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_userInfo;
      *buf = 138412290;
      v31 = v18;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentSenderRemoteAlertViewController: initializing internal controller with user info %@", buf, 0xCu);
    }

    v19 = off_1E8005430;
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_userInfo;
      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentReceiverRemoteAlertViewController: initializing internal controller with user info %@", buf, 0xCu);
    }

    v19 = off_1E8005428;
  }

  v21 = [objc_alloc(*v19) initWithUserInfo:self->_userInfo screenEdgeSwipeAction:v14 dismissAction:v15];
  viewController = self->_viewController;
  self->_viewController = v21;

LABEL_16:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __80__PKNearbyPeerPaymentRemoteAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInitialHome];
}

void __80__PKNearbyPeerPaymentRemoteAlertViewController_configureWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss:v3];
}

- (void)handleButtonActions:(id)actions
{
  v44 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v23 = *MEMORY[0x1E69BAEB0];
    v24 = *MEMORY[0x1E69BAFB8];
    v35 = *MEMORY[0x1E69BAFC0];
    v8 = *MEMORY[0x1E69BAEB8];
    v32 = *MEMORY[0x1E69BA850];
    v33 = *MEMORY[0x1E69BB6A8];
    v30 = *MEMORY[0x1E69BAFB0];
    v31 = *MEMORY[0x1E69BAEE8];
    v28 = *MEMORY[0x1E69BA680];
    v29 = *MEMORY[0x1E69BABE8];
    v26 = *MEMORY[0x1E69BA440];
    v27 = *MEMORY[0x1E69BA6F0];
    v9 = &OBJC_IVAR___PKFamilyMemberTransactionsViewController__contactResolver;
    v25 = *MEMORY[0x1E69BA888];
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v37 + 1) + 8 * v10) events] & 0x10) != 0)
        {
          if ([*(&self->super.super.super.super.isa + v9[651]) hideStatusBar])
          {
            [(PKNearbyPeerPaymentRemoteAlertViewController *)self _handleInitialHome];
            goto LABEL_20;
          }

          v11 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "NearbyPeerPayment/PKPeerPaymentRemoteAlertViewController: user initiated dismiss", buf, 2u);
          }

          nearbyContext = [(PKNearbyPeerPaymentRemoteAlertViewController *)self nearbyContext];
          v13 = v35;
          v14 = v8;
          if (nearbyContext == 1)
          {
LABEL_14:
            v15 = v13;
            v16 = v14;
          }

          else
          {
            if (!nearbyContext)
            {
              v14 = v23;
              v13 = v24;
              goto LABEL_14;
            }

            v15 = 0;
            v16 = 0;
          }

          if ([v15 length] && objc_msgSend(v16, "length"))
          {
            v17 = v7;
            v18 = actionsCopy;
            v19 = MEMORY[0x1E69B8540];
            v41[0] = v32;
            v41[1] = v30;
            v42[0] = v31;
            v42[1] = v15;
            v41[2] = v29;
            v41[3] = v28;
            v42[2] = v16;
            v42[3] = v27;
            v41[4] = v26;
            v42[4] = v25;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:5];
            v21 = v20 = v9;
            v22 = v19;
            actionsCopy = v18;
            v7 = v17;
            self = selfCopy;
            [v22 subject:v33 sendEvent:v21];

            v9 = v20;
          }

          [(PKNearbyPeerPaymentRemoteAlertViewController *)self _dismiss:0];
        }

LABEL_20:
        ++v10;
      }

      while (v6 != v10);
      v6 = [actionsCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v6);
  }
}

- (BOOL)_allowHome
{
  if ((PKHomeButtonIsAvailable() & 1) != 0 || _AXSAssistiveTouchEnabled())
  {
    return 1;
  }

  return UIAccessibilityIsSwitchControlRunning();
}

- (void)_handleInitialHome
{
  [(PKNearbyPeerPaymentViewController *)self->_viewController setHideStatusBar:0];
  _allowHome = [(PKNearbyPeerPaymentRemoteAlertViewController *)self _allowHome];
  if (!_allowHome)
  {
    _remoteViewControllerProxy = [(PKNearbyPeerPaymentRemoteAlertViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
    [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  }

  v5 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
  [v5 impactOccurred];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PKNearbyPeerPaymentRemoteAlertViewController__handleInitialHome__block_invoke;
  v6[3] = &unk_1E8013F80;
  v6[4] = self;
  v7 = _allowHome;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __66__PKNearbyPeerPaymentRemoteAlertViewController__handleInitialHome__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1008);
  *(v3 + 1008) = v2;

  v5 = *(*(a1 + 32) + 1008);
  v6 = dispatch_time(0, 8000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v7 = *(*(a1 + 32) + 1008);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __66__PKNearbyPeerPaymentRemoteAlertViewController__handleInitialHome__block_invoke_2;
  handler[3] = &unk_1E80111A8;
  objc_copyWeak(&v12, &location);
  v13 = *(a1 + 40);
  dispatch_source_set_event_handler(v7, handler);
  v8 = *(*(a1 + 32) + 1008);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKNearbyPeerPaymentRemoteAlertViewController__handleInitialHome__block_invoke_3;
  v9[3] = &unk_1E8010998;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_cancel_handler(v8, v9);
  dispatch_resume(*(*(a1 + 32) + 1008));
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __66__PKNearbyPeerPaymentRemoteAlertViewController__handleInitialHome__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained[126];
  if (v3)
  {
    WeakRetained[126] = 0;
    v5 = WeakRetained;

    [v5[127] setHideStatusBar:1];
    WeakRetained = v5;
    if ((*(a1 + 40) & 1) == 0)
    {
      v4 = [v5 _remoteViewControllerProxy];
      [v4 setAllowsMenuButtonDismissal:0];
      [v4 setDesiredHardwareButtonEvents:0];

      WeakRetained = v5;
    }
  }
}

void __66__PKNearbyPeerPaymentRemoteAlertViewController__handleInitialHome__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[126];
  WeakRetained[126] = 0;
}

- (void)_dismiss:(id)_dismiss
{
  _dismissCopy = _dismiss;
  systemUITimer = self->_systemUITimer;
  if (systemUITimer)
  {
    dispatch_source_cancel(systemUITimer);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKNearbyPeerPaymentRemoteAlertViewController__dismiss___block_invoke;
  v7[3] = &unk_1E8010DD0;
  v7[4] = self;
  v8 = _dismissCopy;
  v6 = _dismissCopy;
  [(PKNearbyPeerPaymentRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

void __57__PKNearbyPeerPaymentRemoteAlertViewController__dismiss___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _remoteViewControllerProxy];
  [*(*(a1 + 32) + 1016) invalidate];
  [v3 invalidate];
  [*(a1 + 32) _cleanup];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

@end