@interface PKPaymentRemoteAlertViewController
+ (id)groupsControllerWithSource:(int64_t)source hasUserBeenAuthenticated:(BOOL)authenticated passUniqueID:(id)d;
- (BOOL)_isInGroup;
- (BOOL)_notificationIsFromChildViewController:(id)controller;
- (BOOL)_releaseUIBlockIfNeededTimeout:(BOOL)timeout;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKPaymentRemoteAlertViewController)init;
- (id)_activeViewController;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (void)_acquireStaticResources;
- (void)_contactlessInterfaceSessionDidAuthorize:(id)authorize;
- (void)_contactlessInterfaceSessionFinishTransaction:(id)transaction;
- (void)_dismissForSource:(unint64_t)source completion:(id)completion;
- (void)_dismissIfRestricted;
- (void)_insertViewControllerIfNeeded:(id)needed;
- (void)_invalidateForType:(int64_t)type;
- (void)_paymentDidReceiveSuccessfulTransactionNotification:(id)notification;
- (void)_presentHomeButtonDoubleTapAlertIfNecessary;
- (void)_presentPassAnimated:(BOOL)animated externalizedContext:(id)context completion:(id)completion;
- (void)_removeViewController:(id)controller;
- (void)_setupCoverSheetIfNeeded;
- (void)_setupGroupControllerIfNeeded;
- (void)_startBackgroundContactlessInterfaceSessionIfNeeded;
- (void)_startGroupControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)_transitionToAppeared;
- (void)_transitionToViewState:(id)state animated:(BOOL)animated;
- (void)authorizationCoverSheetViewControllerDidCompleteWithSuccess:(BOOL)success;
- (void)authorizationCoverSheetViewControllerDidGetBiometricUnavailableOrFailure;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)consumeDoublePressUpForButtonKind:(int64_t)kind;
- (void)dealloc;
- (void)didInvalidateForRemoteAlert;
- (void)handleButtonActions:(id)actions;
- (void)loadView;
- (void)openApplication:(id)application;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPaymentRemoteAlertViewController

+ (id)groupsControllerWithSource:(int64_t)source hasUserBeenAuthenticated:(BOOL)authenticated passUniqueID:(id)d
{
  authenticatedCopy = authenticated;
  v20[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v8 = objc_alloc(MEMORY[0x1E69B88E0]);
    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{dCopy, 0}];
    v10 = [v8 initWithPassTypeMask:-1 passFilters:0 allowedPassUniqueIDs:v9];
  }

  else
  {
    if (source)
    {
      v11 = 26;
      if (authenticatedCopy)
      {
        v11 = 10;
      }

      if (source != 1)
      {
        v11 = 0;
      }

      if (source == 5)
      {
        v12 = 10;
      }

      else
      {
        v12 = v11;
      }
    }

    else
    {
      if (PKUserIntentIsAvailable())
      {
        v13 = MEMORY[0x1E69B8540];
        v14 = *MEMORY[0x1E69BB6C0];
        v15 = *MEMORY[0x1E69BA440];
        v19[0] = *MEMORY[0x1E69BA680];
        v19[1] = v15;
        v16 = *MEMORY[0x1E69BA438];
        v20[0] = *MEMORY[0x1E69BA6F0];
        v20[1] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
        [v13 subject:v14 sendEvent:v17];
      }

      if (authenticatedCopy)
      {
        v12 = 8;
      }

      else
      {
        v12 = 24;
      }
    }

    v10 = [objc_alloc(MEMORY[0x1E69B88E0]) initWithPassTypeMask:-1 passFilters:v12 allowedPassUniqueIDs:0];
  }

  [v10 setReorderingEnabled:0];

  return v10;
}

- (PKPaymentRemoteAlertViewController)init
{
  v11.receiver = self;
  v11.super_class = PKPaymentRemoteAlertViewController;
  v2 = [(PKPaymentRemoteAlertViewController *)&v11 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    v6 = *(v2 + 130);
    *(v2 + 130) = paymentService;

    [*(v2 + 130) registerObserver:v2];
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v2[1152] = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE08]] == 1;

    if (PKAccessPassVisibilityEnabled())
    {
      v8 = v2[1152] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    v2[1168] = v8 & 1;
    [defaultCenter addObserver:v2 selector:sel__paymentDidReceiveSuccessfulTransactionNotification_ name:*MEMORY[0x1E69BC068] object:0];
    [defaultCenter addObserver:v2 selector:sel__contactlessInterfaceSessionDidAuthorize_ name:*MEMORY[0x1E69BB7E0] object:0];
    [defaultCenter addObserver:v2 selector:sel__contactlessInterfaceSessionFinishTransaction_ name:*MEMORY[0x1E69BB7F0] object:0];
    [defaultCenter addObserver:v2 selector:sel_openApplication_ name:@"PKOpenApplicationNotification" object:0];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, RestrictionChangedCallback, *MEMORY[0x1E69BB818], 0, 0);
    v9 = +[PKBacklightController sharedInstance];
    [v9 beginAllowingBacklightRamping:v2];

    v2[1139] = 1;
    *(v2 + 1191) = 0;
    *(v2 + 148) = 0;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69BB818], 0);
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  passbookForegroundAssertion = self->_passbookForegroundAssertion;
  if (passbookForegroundAssertion)
  {
    v6 = passbookForegroundAssertion;
    v7 = self->_passbookForegroundAssertion;
    self->_passbookForegroundAssertion = 0;

    v8 = dispatch_time(0, (*MEMORY[0x1E69BBAD8] * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PKPaymentRemoteAlertViewController_dealloc__block_invoke;
    block[3] = &unk_1E8010970;
    v12 = v6;
    v9 = v6;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  }

  [(PKPaymentRemoteAlertViewController *)self _invalidate];
  v10.receiver = self;
  v10.super_class = PKPaymentRemoteAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v10 dealloc];
}

- (void)_invalidateForType:(int64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  invalidationStatus = self->_invalidationStatus;
  if (invalidationStatus < type)
  {
    self->_invalidationStatus = type;
    if (type >= 1 && invalidationStatus <= 0)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        passGroupsViewController = self->_passGroupsViewController;
        v21 = 134349312;
        selfCopy3 = self;
        v23 = 2050;
        v24 = passGroupsViewController;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p:%{public}p): partially invalidated.", &v21, 0x16u);
      }

      view = [(PKPaymentRemoteAlertViewController *)self view];
      [view setUserInteractionEnabled:0];

      [(PKPassGroupsViewController *)self->_passGroupsViewController partiallyInvalidate];
      navigationController = self->_navigationController;
      if (navigationController)
      {
        [(PKPassGroupsViewNavigationController *)navigationController willInvalidate];
      }

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] pkui_resetSharedRootAuthenticationContext];

      staticGlyphResources = self->_staticGlyphResources;
      self->_staticGlyphResources = 0;

      lockButtonObserver = self->_lockButtonObserver;
      if (lockButtonObserver)
      {
        [(BSInvalidatable *)lockButtonObserver invalidate];
        v13 = self->_lockButtonObserver;
        self->_lockButtonObserver = 0;
      }

      lockButtonAssertion = self->_lockButtonAssertion;
      if (lockButtonAssertion)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 134349312;
          selfCopy3 = self;
          v23 = 2050;
          v24 = lockButtonAssertion;
          _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): Invalidating pre-arm assertion %{public}p.", &v21, 0x16u);
        }

        [(SBSAssertion *)self->_lockButtonAssertion invalidate];
        v15 = self->_lockButtonAssertion;
        self->_lockButtonAssertion = 0;
      }

      if (self->_brightnessRampingAllowed)
      {
        v16 = +[PKBacklightController sharedInstance];
        [v16 endAllowingBacklightRamping:self];
      }

      [(PKAuthorizationCoverSheetViewController *)self->_coverSheetViewController invalidate];
      [(PKAuthenticator *)self->_coverSheetAuthenticator invalidate];
      [(PKBackgroundContactlessInterfaceSessionController *)self->_backgroundContactlessInterfaceSession invalidate];
    }

    if (type > 1 && invalidationStatus <= 1)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_passGroupsViewController;
        v21 = 134349312;
        selfCopy3 = self;
        v23 = 2050;
        v24 = v18;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p:%{public}p): invalidated.", &v21, 0x16u);
      }

      [(PKAssertion *)self->_notificationSuppressionAssertion invalidate];
      notificationSuppressionAssertion = self->_notificationSuppressionAssertion;
      self->_notificationSuppressionAssertion = 0;

      [(PKPassGroupsViewController *)self->_passGroupsViewController invalidate];
      v20 = self->_navigationController;
      if (v20)
      {
        [(PKPassGroupsViewNavigationController *)v20 invalidate];
      }

      [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6C0]];
    }

    [(PKPaymentRemoteAlertViewController *)self _releaseUIBlockIfNeededTimeout:0];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKPaymentRemoteAlertViewController;
  [(PKPaymentRemoteAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    [windowCopy bounds];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    PKSetDisplayProperties();
  }
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = PKPaymentRemoteAlertViewController;
  [(PKPaymentRemoteAlertViewController *)&v7 loadView];
  view = [(PKPaymentRemoteAlertViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  [view setAutoresizingMask:0];
  [view setHidden:!self->_state.appeared];
  v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  [view addSubview:self->_backgroundView];
  [(PKPaymentRemoteAlertViewController *)self _transitionToViewState:self->_state.screen animated:*&self->_state.appeared & 0xFFFFFFFFFFFF00FFLL | 0x100, self->_shouldViewAnimateIn];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PKPaymentRemoteAlertViewController;
  [(PKPaymentRemoteAlertViewController *)&v2 viewDidLoad];
  kdebug_trace();
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKPaymentRemoteAlertViewController;
  [(PKPaymentRemoteAlertViewController *)&v17 viewWillLayoutSubviews];
  view = [(PKPaymentRemoteAlertViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIVisualEffectView *)self->_backgroundView setFrame:v5, v7, v9, v11];
  navigationController = self->_navigationController;
  if (navigationController)
  {
    view2 = [(PKPassGroupsViewNavigationController *)navigationController view];
    [view2 setFrame:{v5, v7, v9, v11}];
    [view2 layoutIfNeeded];
    groupStackView = [(PKPassGroupsViewController *)self->_passGroupsViewController groupStackView];
    [groupStackView layoutContentForCurrentPresentationState:0];
  }

  coverSheetViewController = self->_coverSheetViewController;
  if (coverSheetViewController)
  {
    view3 = [(PKAuthorizationCoverSheetViewController *)coverSheetViewController view];
    [view3 setFrame:{v5, v7, v9, v11}];
    [view3 layoutIfNeeded];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v15.receiver = self;
  v15.super_class = PKPaymentRemoteAlertViewController;
  [(PKPaymentRemoteAlertViewController *)&v15 viewWillAppear:?];
  if (!self->_passbookForegroundAssertion)
  {
    v5 = MEMORY[0x1E695FBE0];
    v6 = PKPassKitCoreBundle();
    v7 = [v5 newAssertionForBundle:v6 withReason:@"Passbook displaying UI for field"];
    passbookForegroundAssertion = self->_passbookForegroundAssertion;
    self->_passbookForegroundAssertion = v7;
  }

  if (self->_notificationSuppressionAssertion || self->_invalidationStatus)
  {
    if (!appearCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69B8650];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__PKPaymentRemoteAlertViewController_viewWillAppear___block_invoke;
    v12[3] = &unk_1E801B258;
    objc_copyWeak(&v13, &location);
    [v9 acquireAssertionOfType:4 withReason:@"Contactless Interface" completion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    if (!appearCopy)
    {
      goto LABEL_9;
    }
  }

  if (self->_shouldViewAnimateIn)
  {
    [(PKPaymentRemoteAlertViewController *)self _transitionToAppeared];
  }

LABEL_9:
  if (PKHomeButtonIsAvailable())
  {
    v10 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__PKPaymentRemoteAlertViewController_viewWillAppear___block_invoke_78;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    self->_processHomeButtonEvents = 1;
  }
}

void __53__PKPaymentRemoteAlertViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PKPaymentRemoteAlertViewController_viewWillAppear___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __53__PKPaymentRemoteAlertViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && !WeakRetained[150])
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Error acquiring notification suppression assertion: %@", buf, 0xCu);
      }

      [*(a1 + 32) invalidate];
    }

    else
    {
      [WeakRetained[138] setInvalidationHandler:0];
      [v3[138] invalidate];
      objc_storeStrong(v3 + 138, *(a1 + 32));
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __53__PKPaymentRemoteAlertViewController_viewWillAppear___block_invoke_3;
      v7[3] = &unk_1E8010998;
      objc_copyWeak(&v8, (a1 + 48));
      [v6 setInvalidationHandler:v7];
      objc_destroyWeak(&v8);
    }
  }

  else
  {
    [*(a1 + 32) invalidate];
  }
}

void __53__PKPaymentRemoteAlertViewController_viewWillAppear___block_invoke_3(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[138];
    WeakRetained[138] = 0;
    v4 = WeakRetained;

    WeakRetained = v4;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentRemoteAlertViewController;
  [(PKPaymentRemoteAlertViewController *)&v4 viewDidAppear:appear];
  kdebug_trace();
  [(PKPaymentRemoteAlertViewController *)self _transitionToAppeared];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentRemoteAlertViewController;
  [(PKPaymentRemoteAlertViewController *)&v4 viewWillDisappear:disappear];
  [(PKPaymentRemoteAlertViewController *)self _invalidateForType:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = PKPaymentRemoteAlertViewController;
  [(PKPaymentRemoteAlertViewController *)&v11 viewDidDisappear:disappear];
  passbookForegroundAssertion = self->_passbookForegroundAssertion;
  if (passbookForegroundAssertion)
  {
    v5 = passbookForegroundAssertion;
    v6 = self->_passbookForegroundAssertion;
    self->_passbookForegroundAssertion = 0;

    v7 = dispatch_time(0, (*MEMORY[0x1E69BBAD8] * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PKPaymentRemoteAlertViewController_viewDidDisappear___block_invoke;
    block[3] = &unk_1E8010970;
    v10 = v5;
    v8 = v5;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  [(PKPaymentRemoteAlertViewController *)self _invalidate];
}

- (void)_transitionToAppeared
{
  v7 = *MEMORY[0x1E69E9840];
  p_state = &self->_state;
  if (!self->_state.appeared)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134349056;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): appearing.", &v5, 0xCu);
    }

    [(PKPaymentRemoteAlertViewController *)self _transitionToViewState:p_state->screen animated:*&p_state->appeared & 0xFFFFFFFFFFFFFF00 | 1, self->_shouldViewAnimateIn];
  }
}

- (void)_transitionToViewState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *&state.var1;
  var0 = state.var0;
  v36 = *MEMORY[0x1E69E9840];
  p_state = &self->_state;
  screen = self->_state.screen;
  if ((state.var0 != screen || state.var1 != self->_state.appeared || ((*&state.var1 >> 8) & 1) != self->_state.viewLoaded) && state.var0 >= screen && self->_invalidationStatus == 0)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      selfCopy = self;
      v30 = 2048;
      v31 = var0;
      v32 = 1024;
      v33 = v5 & 1;
      v34 = 1024;
      v35 = (v5 >> 8) & 1;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): Transitioning to state (screen: %ld, appeared: %i, viewLoaded: %i)", buf, 0x22u);
    }

    if ((v5 & 0x100) != 0)
    {
      objc_initWeak(buf, self);
      view = [(PKPaymentRemoteAlertViewController *)self view];
      v13 = p_state->screen;
      appeared = p_state->appeared;
      p_state->screen = var0;
      *&p_state->appeared = v5;
      v15 = !appeared & v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__PKPaymentRemoteAlertViewController__transitionToViewState_animated___block_invoke;
      aBlock[3] = &unk_1E801F508;
      v26 = v15 & 1;
      v16 = view;
      v24 = v16;
      selfCopy2 = self;
      v27 = animatedCopy;
      v17 = _Block_copy(aBlock);
      if (var0 == 1)
      {
        [(PKPaymentRemoteAlertViewController *)self _setupCoverSheetIfNeeded];
        [(PKPaymentRemoteAlertViewController *)self _insertViewControllerIfNeeded:self->_coverSheetViewController];
        if (v15)
        {
          [(PKAuthorizationCoverSheetViewController *)self->_coverSheetViewController fadeInUIAnimated:animatedCopy performSynchronizedAnimation:v17];
        }
      }

      else if (var0 == 2)
      {
        [(PKPaymentRemoteAlertViewController *)self _setupGroupControllerIfNeeded];
        if (self->_passGroupsViewController)
        {
          v18 = self->_coverSheetViewController;
          if (v18)
          {
            coverSheetViewController = self->_coverSheetViewController;
            self->_coverSheetViewController = 0;

            if (v13 == 1 && animatedCopy)
            {
              v20[0] = MEMORY[0x1E69E9820];
              v20[1] = 3221225472;
              v20[2] = __70__PKPaymentRemoteAlertViewController__transitionToViewState_animated___block_invoke_3;
              v20[3] = &unk_1E80110E0;
              objc_copyWeak(&v22, buf);
              v21 = v18;
              [(PKAuthorizationCoverSheetViewController *)v21 fadeOutUIWithCompletion:v20];

              objc_destroyWeak(&v22);
            }

            else
            {
              [(PKPaymentRemoteAlertViewController *)self _removeViewController:v18];
            }

            [(PKAuthorizationCoverSheetViewController *)v18 invalidate];
          }

          [(PKPaymentRemoteAlertViewController *)self _insertViewControllerIfNeeded:self->_navigationController];
          if ((v15 & 1) != 0 || !((v5 >> 16) & 1 | ((v5 & 1) == 0)))
          {
            p_state->hasShownPassGroups = 1;
            [(PKPaymentRemoteAlertViewController *)self _startGroupControllerAnimated:animatedCopy completion:0];
          }

          v17[2](v17);
        }
      }

      objc_destroyWeak(buf);
    }

    else
    {
      p_state->screen = var0;
      *&p_state->appeared = v5;
      if (var0 != 2)
      {
        if (var0 != 1)
        {
          return;
        }

        [(PKPaymentRemoteAlertViewController *)self _setupCoverSheetIfNeeded];
      }

      [(PKPaymentRemoteAlertViewController *)self _setupGroupControllerIfNeeded];
    }
  }
}

void __70__PKPaymentRemoteAlertViewController__transitionToViewState_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    aBlock[7] = v1;
    aBlock[8] = v2;
    [*(a1 + 32) setHidden:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PKPaymentRemoteAlertViewController__transitionToViewState_animated___block_invoke_2;
    aBlock[3] = &unk_1E8010970;
    aBlock[4] = *(a1 + 40);
    v4 = _Block_copy(aBlock);
    v5 = v4;
    if (*(a1 + 49) == 1)
    {
      [MEMORY[0x1E69DD250] pkui_animateUsingOptions:4 animations:v4 completion:0];
    }

    else
    {
      (*(v4 + 2))(v4);
    }
  }
}

void __70__PKPaymentRemoteAlertViewController__transitionToViewState_animated___block_invoke_2(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v5 = PKPGVNCBackgroundVisualEffect();
    [*(*(a1 + 32) + 1000) setEffect:?];
  }

  else
  {
    v2 = *(*(a1 + 32) + 1000);
    v3 = [MEMORY[0x1E69DC730] effectWithBlurRadius:26.6666667];
    [v2 setEffect:v3];

    v4 = *(*(a1 + 32) + 1000);
    v5 = +[PKPassGroupStackView backgroundColor];
    [v4 setBackgroundColor:?];
  }
}

void __70__PKPaymentRemoteAlertViewController__transitionToViewState_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeViewController:*(a1 + 32)];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result
{
  if (self->_passGroupsViewController != container)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKPaymentRemoteAlertViewController;
    [(PKPaymentRemoteAlertViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (id)childViewControllerForStatusBarHidden
{
  if (self->_state.screen)
  {
    coverSheetViewController = self->_coverSheetViewController;
    if (!coverSheetViewController)
    {
      coverSheetViewController = self->_navigationController;
    }

    v4 = coverSheetViewController;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)childViewControllerForStatusBarStyle
{
  if (self->_state.screen)
  {
    coverSheetViewController = self->_coverSheetViewController;
    if (!coverSheetViewController)
    {
      coverSheetViewController = self->_navigationController;
    }

    v4 = coverSheetViewController;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didInvalidateForRemoteAlert
{
  v3.receiver = self;
  v3.super_class = PKPaymentRemoteAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 didInvalidateForRemoteAlert];
  [(PKPaymentRemoteAlertViewController *)self _invalidate];
  [(PKPaymentRemoteAlertViewController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): configuring.", buf, 0xCu);
  }

  _remoteViewControllerProxy = [(PKPaymentRemoteAlertViewController *)self _remoteViewControllerProxy];
  self->_isLockScreenPresented = PKDeviceUILocked() != 0;
  [_remoteViewControllerProxy setWallpaperStyle:1 withDuration:0.0];
  [_remoteViewControllerProxy setLaunchingInterfaceOrientation:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:1];
  [_remoteViewControllerProxy setDismissalAnimationStyle:1];
  if (self->_isLockScreenPresented)
  {
    [_remoteViewControllerProxy setDesiredAutoLockDuration:{30.0, completionCopy}];
  }

  userInfo = [contextCopy userInfo];
  v9 = [userInfo objectForKey:*MEMORY[0x1E69BC030]];
  self->_presentationSource = [v9 integerValue];

  v10 = [userInfo objectForKey:*MEMORY[0x1E69BC000]];
  self->_presentationStartTime = [v10 integerValue];

  v11 = [userInfo objectForKey:*MEMORY[0x1E69BBFC8]];
  self->_shouldViewAnimateIn = [v11 BOOLValue];

  p_passUniqueIdentifier = &self->_passUniqueIdentifier;
  passUniqueIdentifier = self->_passUniqueIdentifier;
  self->_passUniqueIdentifier = 0;

  fieldPassUniqueIdentifiers = self->_fieldPassUniqueIdentifiers;
  self->_fieldPassUniqueIdentifiers = 0;

  fieldProperties = self->_fieldProperties;
  self->_fieldProperties = 0;

  v42 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BBFE0]];
  if (v42)
  {
    v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v42 error:0];
    v17 = self->_fieldProperties;
    self->_fieldProperties = v16;
  }

  v18 = [userInfo objectForKey:*MEMORY[0x1E69BBFC0]];
  v19 = *MEMORY[0x1E69BB6C0];
  [MEMORY[0x1E69B8540] beginSubjectReporting:*MEMORY[0x1E69BB6C0] withArchivedParent:v18];
  v20 = MEMORY[0x1E69B8540];
  v49 = *MEMORY[0x1E69BA228];
  presentationSource = self->_presentationSource;
  if (presentationSource > 6)
  {
    v22 = @"unknown";
  }

  else
  {
    v22 = off_1E801F900[presentationSource];
  }

  v50 = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  [v20 subject:v19 sendEvent:v23];

  v24 = self->_presentationSource;
  if ((v24 - 1) < 6)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] pkui_consumeSharedRootAuthenticationContext];
LABEL_12:

    goto LABEL_13;
  }

  if (!v24)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] pkui_resetSharedRootAuthenticationContext];
    goto LABEL_12;
  }

LABEL_13:
  v26 = self->_fieldProperties;
  v27 = v26 == 0;
  if (v26)
  {
    p_passUniqueIdentifier = &self->_fieldPassUniqueIdentifiers;
  }

  v28 = MEMORY[0x1E69BC038];
  if (!v27)
  {
    v28 = MEMORY[0x1E69BBFD8];
  }

  v29 = [userInfo objectForKey:*v28];
  v30 = [v29 copy];
  v31 = *p_passUniqueIdentifier;
  *p_passUniqueIdentifier = v30;

  v32 = self->_presentationSource;
  v33 = v32 == 5;
  v34 = v32 == 6;
  v35 = self->_showCoverSheet && v32 != 5 && (PKDeviceLocked() & 1) != 0 || v34;
  self->_showCoverSheet = v35;
  objc_initWeak(buf, self);
  mEMORY[0x1E69B8560] = [MEMORY[0x1E69B8560] shared];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __70__PKPaymentRemoteAlertViewController_configureWithContext_completion___block_invoke;
  v43[3] = &unk_1E801F818;
  objc_copyWeak(&v46, buf);
  v37 = v40;
  v45 = v37;
  v47 = v33;
  v48 = v34;
  v38 = _remoteViewControllerProxy;
  v44 = v38;
  [mEMORY[0x1E69B8560] isShieldRequiredWithCompletion:v43];

  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);
}

void __70__PKPaymentRemoteAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1168] | a2;
    WeakRetained[1168] = v6;
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v8 = @"Y";
      }

      else
      {
        v8 = @"N";
      }

      if (PKAccessPassVisibilityEnabled())
      {
        v9 = @"Y";
      }

      else
      {
        v9 = @"N";
      }

      if (*(a1 + 56))
      {
        v10 = @"Y";
      }

      else
      {
        v10 = @"N";
      }

      v11 = *(a1 + 57);
      if (v5[1137])
      {
        v12 = @"Y";
      }

      else
      {
        v12 = @"N";
      }

      *v18 = 134350594;
      if (v11)
      {
        v13 = @"Y";
      }

      else
      {
        v13 = @"N";
      }

      *&v18[4] = v5;
      if (a2)
      {
        v14 = @"Y";
      }

      else
      {
        v14 = @"N";
      }

      *&v18[12] = 2112;
      *&v18[14] = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): Showing cover sheet: %@. FeatureEnabled: %@; isCompletedTransaction: %@, isLockScreenPresented: %@, isBiometricRequest: %@, isShieldRequired: %@", v18, 0x48u);
    }

    if (v5[1168])
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [v5 _transitionToViewStateScreen:v15 animated:{v5[1136], *v18}];
    [v5 _acquireStaticResources];
    [v5 _startBackgroundContactlessInterfaceSessionIfNeeded];
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))();
    }

    if (*(v5 + 150))
    {
      [*(a1 + 32) invalidate];
    }

    else
    {
      [v5 _dismissIfRestricted];
    }
  }

  else
  {
    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }
}

- (void)handleButtonActions:(id)actions
{
  v15 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v5 = actionsCopy;
  if (self->_processHomeButtonEvents)
  {
    [(PKPaymentRemoteAlertViewController *)self _dismissForSource:1 completion:0];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) sendResponseWithUnHandledEvents:{objc_msgSend(*(*(&v10 + 1) + 8 * v9), "events")}];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  coverSheetViewController = self->_coverSheetViewController;
  if (coverSheetViewController)
  {
    [(PKAuthorizationCoverSheetViewController *)coverSheetViewController startEvaluation];
  }

  presentationSource = self->_presentationSource;
  v10 = presentationSource == 1 && !self->_shouldViewAnimateIn;
  if (self->_showCoverSheet && !self->_state.appeared && (v11 = presentationSource == 0, PKHomeButtonIsAvailable()) && (v11 || v10))
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%p): Blocking UI to collect user auth", buf, 0xCu);
    }

    self->_isBlockingUIForUserAuthorization = 1;
    v13 = _Block_copy(completionCopy);
    blockingUIForUserAuthorizationCompletion = self->_blockingUIForUserAuthorizationCompletion;
    self->_blockingUIForUserAuthorizationCompletion = v13;

    objc_initWeak(buf, self);
    v15 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__PKPaymentRemoteAlertViewController_prepareForActivationWithContext_completion___block_invoke;
    block[3] = &unk_1E8010998;
    objc_copyWeak(&v17, buf);
    dispatch_after(v15, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __81__PKPaymentRemoteAlertViewController_prepareForActivationWithContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _releaseUIBlockIfNeededTimeout:1];
}

- (BOOL)_isInGroup
{
  groupsController = [(PKPassGroupsViewController *)self->_passGroupsViewController groupsController];
  v4 = [groupsController groupAtIndex:{objc_msgSend(groupsController, "groupIndexForPassUniqueID:", self->_passUniqueIdentifier)}];
  v5 = [v4 passCount] > 1;

  return v5;
}

- (void)_setupGroupControllerIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_invalidationStatus && !self->_passGroupsViewController)
  {
    if (PKAccessPassVisibilityEnabled())
    {
      v3 = 1;
    }

    else
    {
      v3 = PKDeviceLocked() ^ 1;
    }

    presentationSource = self->_presentationSource;
    v5 = objc_opt_class();
    if ((presentationSource - 5) > 1)
    {
      passUniqueIdentifier = 0;
    }

    else
    {
      passUniqueIdentifier = self->_passUniqueIdentifier;
    }

    v7 = [v5 groupsControllerWithSource:self->_presentationSource hasUserBeenAuthenticated:v3 passUniqueID:passUniqueIdentifier];
    v8 = [PKPassGroupsViewController alloc];
    if (v8)
    {
      v8 = [(PKPassGroupsViewController *)&v8->super.super.super.isa _initWithGroupsController:v7 kind:2 style:1];
    }

    passGroupsViewController = self->_passGroupsViewController;
    self->_passGroupsViewController = v8;

    v10 = [[PKPassGroupsViewNavigationController alloc] initWithPassGroupsViewController:self->_passGroupsViewController];
    navigationController = self->_navigationController;
    self->_navigationController = v10;

    [(PKPassGroupsViewController *)self->_passGroupsViewController setAssertExpressAvailable:self->_currentShowWhileLockedValue];
    if ([v7 groupCount])
    {
      [(PKPassGroupsViewController *)self->_passGroupsViewController setHandleFieldDetection:0];
      if (_os_feature_enabled_impl())
      {
        v12 = 275;
      }

      else
      {
        v12 = 307;
      }

      [(PKPassGroupsViewController *)self->_passGroupsViewController setSuppressedContent:v12];
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_passGroupsViewController;
        v17 = 134349312;
        selfCopy2 = self;
        v19 = 2050;
        v20 = v14;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): created PKPassGroupsViewController %{public}p.", &v17, 0x16u);
      }
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): Invaldiating due to no passes to show", &v17, 0xCu);
      }

      v16 = self->_passGroupsViewController;
      self->_passGroupsViewController = 0;

      if (self->_state.appeared)
      {
        [(PKPaymentRemoteAlertViewController *)self _dismissForSource:2 completion:0];
      }

      else
      {
        [(PKPaymentRemoteAlertViewController *)self _invalidate];
      }
    }
  }
}

- (void)_startGroupControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy)
  {
    [(PKPassGroupsViewController *)self->_passGroupsViewController presentOffscreenAnimated:0 split:1 withCompletionHandler:0];
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPaymentRemoteAlertViewController__startGroupControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E80111D0;
  objc_copyWeak(&v16, &location);
  v7 = completionCopy;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  coverSheetAuthenticator = self->_coverSheetAuthenticator;
  if (coverSheetAuthenticator && self->_showCoverSheet)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__PKPaymentRemoteAlertViewController__startGroupControllerAnimated_completion___block_invoke_2;
    v10[3] = &unk_1E801F840;
    objc_copyWeak(&v12, &location);
    v11 = v8;
    v13 = animatedCopy;
    [(PKAuthenticator *)coverSheetAuthenticator accessExternalizedContextWithCompletion:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    [(PKPaymentRemoteAlertViewController *)self _presentPassAnimated:animatedCopy externalizedContext:0 completion:v8];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __79__PKPaymentRemoteAlertViewController__startGroupControllerAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[127] setHandleFieldDetection:WeakRetained[140] != 5];
    [v4 _presentHomeButtonDoubleTapAlertIfNecessary];
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

void __79__PKPaymentRemoteAlertViewController__startGroupControllerAnimated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _presentPassAnimated:*(a1 + 48) externalizedContext:v5 completion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_presentPassAnimated:(BOOL)animated externalizedContext:(id)context completion:(id)completion
{
  animatedCopy = animated;
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v29 = 0;
  if (self->_passUniqueIdentifier)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%p): presenting pass.", buf, 0xCu);
    }

    v11 = objc_alloc_init(PKPassPresentationContext);
    [(PKPassPresentationContext *)v11 setFieldDetect:self->_presentationSource == 1];
    [(PKPassPresentationContext *)v11 setPostPayment:self->_presentationSource == 5];
    [(PKPassPresentationContext *)v11 setPresentFanned:1];
    v29 = self->_passUniqueIdentifier;
    view = [(PKPaymentRemoteAlertViewController *)self view];
    if ([(PKPassPresentationContext *)v11 isPostPayment]&& ![(PKPaymentRemoteAlertViewController *)self _isInGroup])
    {
      [view setUserInteractionEnabled:0];
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
  }

  else if (self->_presentationSource == 5)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%p): failed presentation for express payment. Dismissing remote interface.", buf, 0xCu);
    }

    v13 = 0;
    v11 = 0;
    v15 = 1;
  }

  else
  {
    fieldProperties = self->_fieldProperties;
    v17 = PKLogFacilityTypeGetObject();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (fieldProperties)
    {
      if (v18)
      {
        *buf = 134217984;
        selfCopy4 = self;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%p): presenting pass for field.", buf, 0xCu);
      }

      v19 = [(PKPassGroupsViewController *)self->_passGroupsViewController presentationContextForFieldProperties:self->_fieldProperties fieldPassUniqueIdentifiers:self->_fieldPassUniqueIdentifiers passUniqueIdentifierToPresent:&v29];
    }

    else
    {
      if (v18)
      {
        *buf = 134217984;
        selfCopy4 = self;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%p): presenting table.", buf, 0xCu);
      }

      v19 = objc_alloc_init(PKPassPresentationContext);
    }

    v11 = v19;
    v15 = 0;
    v13 = 0;
  }

  [(PKPassPresentationContext *)v11 setExternalizedAuthenticationContext:contextCopy];
  [(PKPassPresentationContext *)v11 setBackgroundSession:self->_backgroundContactlessInterfaceSession];
  if (v15)
  {
    [(PKPaymentRemoteAlertViewController *)self _dismissForSource:0 completion:completionCopy];
  }

  else
  {
    v20 = v29;
    passGroupsViewController = self->_passGroupsViewController;
    if (v29)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __90__PKPaymentRemoteAlertViewController__presentPassAnimated_externalizedContext_completion___block_invoke;
      v25[3] = &unk_1E801F868;
      v25[4] = self;
      v26 = completionCopy;
      v27 = v13;
      v28 = animatedCopy;
      [(PKPassGroupsViewController *)passGroupsViewController presentPassWithUniqueID:v20 context:v11 animated:animatedCopy completionHandler:v25];
      v22 = v26;
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __90__PKPaymentRemoteAlertViewController__presentPassAnimated_externalizedContext_completion___block_invoke_110;
      v23[3] = &unk_1E8010AD8;
      v24 = completionCopy;
      [(PKPassGroupsViewController *)passGroupsViewController presentOnscreen:animatedCopy context:v11 withCompletionHandler:v23];
      v22 = v24;
    }
  }
}

void __90__PKPaymentRemoteAlertViewController__presentPassAnimated_externalizedContext_completion___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 134217984;
      v14 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%p): Error: failed remote presentation for express or field detect.", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v6 _dismissForSource:0 completion:0];
    }

    else
    {
      v7 = [v6[127] groupStackView];
      v8 = [v7 presentationState];
      if ((v8 - 1) < 3 || v8 == 5 && [v7 modalGroupIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = *(a1 + 32);
        v10 = *(v9 + 1016);
        v11 = *(a1 + 49);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __90__PKPaymentRemoteAlertViewController__presentPassAnimated_externalizedContext_completion___block_invoke_109;
        v12[3] = &unk_1E8011D28;
        v12[4] = v9;
        [v10 presentOnscreen:v11 context:0 withCompletionHandler:v12];
      }
    }
  }
}

void __90__PKPaymentRemoteAlertViewController__presentPassAnimated_externalizedContext_completion___block_invoke_109(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%p): backup presentation failed", &v4, 0xCu);
  }
}

- (void)_setupCoverSheetIfNeeded
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_invalidationStatus && !self->_coverSheetViewController)
  {
    if (!self->_coverSheetAuthenticator)
    {
      v3 = [objc_alloc(MEMORY[0x1E69BC740]) initWithDelegate:0];
      coverSheetAuthenticator = self->_coverSheetAuthenticator;
      self->_coverSheetAuthenticator = v3;
    }

    v5 = [[PKAuthorizationCoverSheetViewController alloc] initWithDelegate:self authenticator:self->_coverSheetAuthenticator passUniqueIdentifier:self->_passUniqueIdentifier source:self->_presentationSource];
    coverSheetViewController = self->_coverSheetViewController;
    self->_coverSheetViewController = v5;

    [(PKAuthorizationCoverSheetViewController *)self->_coverSheetViewController setIsErrorRecovery:self->_presentationSource == 6];
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_coverSheetViewController;
      v9 = 134349312;
      selfCopy = self;
      v11 = 2050;
      v12 = v8;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): created PKAuthorizationCoverSheetViewController %{public}p.", &v9, 0x16u);
    }
  }
}

- (void)authorizationCoverSheetViewControllerDidCompleteWithSuccess:(BOOL)success
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_invalidationStatus)
  {
    successCopy = success;
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"N";
      if (successCopy)
      {
        v6 = @"Y";
      }

      v10 = 134349314;
      selfCopy = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): Cover Sheet did complete with success: %@", &v10, 0x16u);
    }

    if (!successCopy)
    {
      selfCopy3 = self;
      v9 = 5;
      goto LABEL_10;
    }

    v7 = [(PKPaymentRemoteAlertViewController *)self _releaseUIBlockIfNeededTimeout:0];
    if (self->_presentationSource == 6)
    {
      selfCopy3 = self;
      v9 = 6;
LABEL_10:
      [(PKPaymentRemoteAlertViewController *)selfCopy3 _dismissForSource:v9 completion:0];
      return;
    }

    [(PKPaymentRemoteAlertViewController *)self _transitionToViewStateScreen:2 animated:!v7];
  }
}

- (void)authorizationCoverSheetViewControllerDidGetBiometricUnavailableOrFailure
{
  if (!self->_invalidationStatus)
  {
    [(PKPaymentRemoteAlertViewController *)self _releaseUIBlockIfNeededTimeout:0];
  }
}

- (BOOL)_releaseUIBlockIfNeededTimeout:(BOOL)timeout
{
  v10 = *MEMORY[0x1E69E9840];
  isBlockingUIForUserAuthorization = self->_isBlockingUIForUserAuthorization;
  if (isBlockingUIForUserAuthorization)
  {
    if (timeout)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%p): Timed out blocking UI", &v8, 0xCu);
      }
    }

    self->_isBlockingUIForUserAuthorization = 0;
    (*(self->_blockingUIForUserAuthorizationCompletion + 2))();
    blockingUIForUserAuthorizationCompletion = self->_blockingUIForUserAuthorizationCompletion;
    self->_blockingUIForUserAuthorizationCompletion = 0;
  }

  return isBlockingUIForUserAuthorization;
}

- (void)_acquireStaticResources
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self->_invalidationStatus && !self->_hasAquiredStaticResources)
  {
    self->_hasAquiredStaticResources = 1;
    if (([MEMORY[0x1E69B91E0] isInFailForward] & 1) == 0)
    {
      mEMORY[0x1E69BC758] = [MEMORY[0x1E69BC758] sharedStaticResources];
      staticGlyphResources = self->_staticGlyphResources;
      self->_staticGlyphResources = mEMORY[0x1E69BC758];

      if (PKUserIntentIsAvailable())
      {
        mEMORY[0x1E69D4220] = [MEMORY[0x1E69D4220] sharedInstance];
        v6 = [mEMORY[0x1E69D4220] beginConsumingPressesForButtonKind:2 eventConsumer:self priority:0];
        lockButtonObserver = self->_lockButtonObserver;
        self->_lockButtonObserver = v6;

        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 0;
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __61__PKPaymentRemoteAlertViewController__acquireStaticResources__block_invoke;
        v18[3] = &unk_1E8011A18;
        v18[4] = &v19;
        v9 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"PKPaymentRemoteAlertViewController" expirationHandler:v18];

        v20[3] = v9;
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          selfCopy = self;
          _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): Acquiring pre-arm assertion...", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v11 = objc_alloc_init(MEMORY[0x1E69D41F0]);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __61__PKPaymentRemoteAlertViewController__acquireStaticResources__block_invoke_120;
        v14[3] = &unk_1E801F890;
        v12 = v11;
        v15 = v12;
        objc_copyWeak(&v17, buf);
        v13 = *MEMORY[0x1E69BBFD0];
        v16 = &v19;
        [v12 acquireWalletPreArmSuppressionAssertionForReason:v13 completion:v14];
        objc_destroyWeak(&v17);

        objc_destroyWeak(buf);
        _Block_object_dispose(&v19, 8);
      }
    }
  }
}

void __61__PKPaymentRemoteAlertViewController__acquireStaticResources__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __61__PKPaymentRemoteAlertViewController__acquireStaticResources__block_invoke_120(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentRemoteAlertViewController__acquireStaticResources__block_invoke_2;
  block[3] = &unk_1E801BB28;
  objc_copyWeak(&v9, (a1 + 48));
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __61__PKPaymentRemoteAlertViewController__acquireStaticResources__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v15 = 134349056;
      v16 = v11;
      v8 = "PKPaymentRemoteAlertViewController: Ignoring pre-arm assertion %{public}p.";
      v9 = v5;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    [*(a1 + 32) invalidate];
    goto LABEL_12;
  }

  v4 = WeakRetained[150];
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v15 = 134349312;
      v16 = v3;
      v17 = 2050;
      v18 = v7;
      v8 = "PKPaymentRemoteAlertViewController (%{public}p): Ignoring pre-arm assertion %{public}p.";
      v9 = v5;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, v8, &v15, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v12 = *(a1 + 32);
    v15 = 134349312;
    v16 = v3;
    v17 = 2050;
    v18 = v12;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): Acquired pre-arm assertion %{public}p.", &v15, 0x16u);
  }

  objc_storeStrong(v3 + 137, *(a1 + 32));
LABEL_12:
  v13 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 40) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v14 = [MEMORY[0x1E69DC668] sharedApplication];
    [v14 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

    *(*(*(a1 + 40) + 8) + 24) = v13;
  }
}

- (void)_presentHomeButtonDoubleTapAlertIfNecessary
{
  if (!self->_invalidationStatus)
  {
    v19[5] = v5;
    v19[6] = v4;
    v19[13] = v2;
    v19[14] = v3;
    if (!self->_presentationSource)
    {
      if (PKHomeButtonIsAvailable())
      {
        if ((PKContactlessInterfaceHomeButtonSourceHasOccurred() & 1) == 0)
        {
          v7 = MEMORY[0x1E69DC650];
          v8 = PKLocalizedPaymentString(&cfstr_ContactlessInt_0.isa);
          v9 = PKLocalizedPaymentString(&cfstr_ContactlessInt_1.isa);
          v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

          v11 = MEMORY[0x1E69DC648];
          v12 = PKLocalizedPaymentString(&cfstr_ContactlessInt_2.isa);
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __81__PKPaymentRemoteAlertViewController__presentHomeButtonDoubleTapAlertIfNecessary__block_invoke;
          v19[3] = &unk_1E80112E8;
          v19[4] = self;
          v13 = [v11 actionWithTitle:v12 style:0 handler:v19];

          v14 = MEMORY[0x1E69DC648];
          v15 = PKLocalizedPaymentString(&cfstr_ContactlessInt_3.isa);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __81__PKPaymentRemoteAlertViewController__presentHomeButtonDoubleTapAlertIfNecessary__block_invoke_3;
          v18[3] = &unk_1E80112E8;
          v18[4] = self;
          v16 = [v14 actionWithTitle:v15 style:1 handler:v18];

          [v10 addAction:v13];
          [v10 addAction:v16];
          pkui_frontMostViewController = [(UIViewController *)self pkui_frontMostViewController];
          [pkui_frontMostViewController presentViewController:v10 animated:1 completion:0];
        }
      }
    }
  }
}

uint64_t __81__PKPaymentRemoteAlertViewController__presentHomeButtonDoubleTapAlertIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 32);

  return [v2 _dismissForSource:3 completion:&__block_literal_global_189];
}

void __81__PKPaymentRemoteAlertViewController__presentHomeButtonDoubleTapAlertIfNecessary__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK"];
  PKOpenURL();
}

- (void)_dismissIfRestricted
{
  _remoteViewControllerProxy = [(PKPaymentRemoteAlertViewController *)self _remoteViewControllerProxy];

  if (_remoteViewControllerProxy)
  {
    mEMORY[0x1E699C848] = [MEMORY[0x1E699C848] sharedInstance];
    lostModeIsActive = [mEMORY[0x1E699C848] lostModeIsActive];

    if (lostModeIsActive)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing Payment Interface due to Lost Mode", v7, 2u);
      }

      [(PKPaymentRemoteAlertViewController *)self _dismissForSource:2 completion:0];
    }
  }
}

- (void)_dismissForSource:(unint64_t)source completion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = source;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): dismiss requested for %lu.", buf, 0x16u);
  }

  [(PKPaymentRemoteAlertViewController *)self _invalidateForType:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v67 = *MEMORY[0x1E69DDBE8];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke;
  v61[3] = &unk_1E8011A18;
  v61[4] = buf;
  v8 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:v61];
  *(*&buf[8] + 24) = v8;

  _remoteViewControllerProxy = [(PKPaymentRemoteAlertViewController *)self _remoteViewControllerProxy];
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v60 = 0;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_2;
  aBlock[3] = &unk_1E801F8B8;
  v56 = v59;
  objc_copyWeak(&v57, &location);
  v38 = _remoteViewControllerProxy;
  v55 = v38;
  v10 = _Block_copy(aBlock);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_3;
  v50[3] = &unk_1E801F8E0;
  v39 = v10;
  v51 = v39;
  v53 = buf;
  v11 = completionCopy;
  v52 = v11;
  v12 = _Block_copy(v50);
  view = [(PKPaymentRemoteAlertViewController *)self view];
  [view setUserInteractionEnabled:0];

  _activeViewController = [(PKPaymentRemoteAlertViewController *)self _activeViewController];
  view2 = [_activeViewController view];
  [view2 setUserInteractionEnabled:0];
  for (i = 0; ; i = v20)
  {

    v17 = i ? i : _activeViewController;
    presentedViewController = [v17 presentedViewController];

    if (!presentedViewController)
    {
      break;
    }

    view3 = [presentedViewController view];
    [view3 setUserInteractionEnabled:0];

    v20 = presentedViewController;
    view2 = i;
  }

  if (self->_state.appeared)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_4;
    v49[3] = &unk_1E8010970;
    v49[4] = self;
    [MEMORY[0x1E69DD250] pkui_animateUsingOptions:4 animations:v49 completion:0];
    groupStackView = [(PKPassGroupsViewController *)self->_passGroupsViewController groupStackView];
    [groupStackView setStaggerPileAnimations:0];

    navigationController = self->_navigationController;
    if (_activeViewController == navigationController)
    {
      vCsState = [(PKPassGroupsViewNavigationController *)self->_navigationController VCsState];
      if (!i && source != 4 && !vCsState)
      {
        passGroupsViewController = self->_passGroupsViewController;
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_5;
        v47[3] = &unk_1E8010AD8;
        v48 = v12;
        [(PKPassGroupsViewController *)passGroupsViewController presentOffscreenAnimated:1 split:1 withCompletionHandler:v47];
        view6 = v48;
LABEL_39:

        goto LABEL_40;
      }
    }

    coverSheetViewController = self->_coverSheetViewController;
    if (_activeViewController != coverSheetViewController)
    {
      if (i)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          view4 = [_activeViewController view];
          [view4 setAlpha:0.0];
        }

        else
        {
          if (_activeViewController == navigationController)
          {
            [(PKPassGroupsViewController *)self->_passGroupsViewController presentOffscreenAnimated:0 split:1 withCompletionHandler:0];
          }

          else
          {
            view5 = [_activeViewController view];
            [view5 setAlpha:0.0];
          }

          view4 = [i presentingViewController];
          [view4 dismissViewControllerAnimated:1 completion:0];
        }

        v32 = isKindOfClass ^ 1;
      }

      else
      {
        v32 = 0;
      }

      view6 = [v17 view];
      layer = [view6 layer];
      if (layer)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_7;
        v41[3] = &unk_1E8013FD0;
        v44 = v32 & 1;
        v42 = i;
        v43 = v12;
        [layer pkui_animateToOpacity:v41 withCompletion:0.0];
      }

      else
      {
        if ((v32 & 1) == 0)
        {
          presentingViewController = [i presentingViewController];
          [presentingViewController dismissViewControllerAnimated:0 completion:0];
        }

        v12[2](v12);
      }

      goto LABEL_39;
    }

    if (i)
    {
      [(PKAuthorizationCoverSheetViewController *)coverSheetViewController fadeOutUIWithCompletion:0];
      view7 = [i view];
      layer2 = [view7 layer];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_6;
      v45[3] = &unk_1E8010AD8;
      v46 = v12;
      [layer2 pkui_animateToOpacity:v45 withCompletion:0.0];

      view6 = v46;
      goto LABEL_39;
    }

    [(PKAuthorizationCoverSheetViewController *)coverSheetViewController fadeOutUIWithCompletion:v12];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v64 = 134349056;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController (%{public}p): Skipping dismiss animation because UI is not shown", v64, 0xCu);
    }

    if (i)
    {
      presentingViewController2 = [i presentingViewController];
      [presentingViewController2 dismissViewControllerAnimated:0 completion:0];
    }

    v12[2](v12);
  }

LABEL_40:
  v62 = @"source";
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:source];
  v63 = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F60], v37);

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);
  _Block_object_dispose(v59, 8);

  _Block_object_dispose(buf, 8);
}

void __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

uint64_t __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_2(uint64_t result)
{
  v2 = *(*(result + 40) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((result + 48));
    [WeakRetained _invalidate];

    v5 = *(v3 + 32);

    return [v5 invalidate];
  }

  return result;
}

uint64_t __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_3(void *a1)
{
  (*(a1[4] + 16))();
  v2 = *MEMORY[0x1E69DDBE8];
  if (*(*(a1[6] + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(a1[6] + 8) + 24)];

    *(*(a1[6] + 8) + 24) = v2;
  }

  result = a1[5];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_4(uint64_t a1)
{
  if (!_os_feature_enabled_impl())
  {
    v2 = *(*(a1 + 32) + 1000);
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [v2 setBackgroundColor:v3];
  }

  v4 = *(*(a1 + 32) + 1000);

  return [v4 setEffect:0];
}

uint64_t __67__PKPaymentRemoteAlertViewController__dismissForSource_completion___block_invoke_7(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 32) presentingViewController];
    [v2 dismissViewControllerAnimated:0 completion:0];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (BOOL)_notificationIsFromChildViewController:(id)controller
{
  controllerCopy = controller;
  object = [controllerCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  object2 = [controllerCopy object];
  v8 = object2;
  if (isKindOfClass)
  {
    for (i = [(PKPaymentRemoteAlertViewController *)object2 pkui_viewControllerFromResponderChain];
    {
      object3 = i;

LABEL_7:
      v12 = object3 != 0;
      if (!object3 || object3 == self)
      {
        break;
      }

      v8 = object3;
      [(PKPaymentRemoteAlertViewController *)object3 parentViewController];
    }
  }

  else
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      object3 = [controllerCopy object];
      goto LABEL_7;
    }

    object3 = 0;
    v12 = 0;
  }

  v13 = object3 == self && v12;

  return v13;
}

- (id)_activeViewController
{
  coverSheetViewController = self->_coverSheetViewController;
  if (!coverSheetViewController)
  {
    coverSheetViewController = self->_navigationController;
  }

  return coverSheetViewController;
}

- (void)_insertViewControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  viewIfLoaded = [(PKPaymentRemoteAlertViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    parentViewController = [neededCopy parentViewController];

    if (!parentViewController)
    {
      view = [neededCopy view];
      [(PKPaymentRemoteAlertViewController *)self addChildViewController:neededCopy];
      [viewIfLoaded addSubview:view];
      [neededCopy didMoveToParentViewController:self];
      [(PKPaymentRemoteAlertViewController *)self setNeedsStatusBarAppearanceUpdate];
      [viewIfLoaded setNeedsLayout];
      [viewIfLoaded layoutIfNeeded];
    }
  }
}

- (void)_removeViewController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    [(PKPaymentRemoteAlertViewController *)self removeChildViewController:controllerCopy];
    view = [controllerCopy view];
    [view removeFromSuperview];

    [controllerCopy didMoveToParentViewController:0];
  }
}

- (void)_startBackgroundContactlessInterfaceSessionIfNeeded
{
  if (self->_showCoverSheet)
  {
    objc_initWeak(&location, self);
    v3 = [PKBackgroundContactlessInterfaceSessionController alloc];
    fieldProperties = self->_fieldProperties;
    firstObject = [(NSArray *)self->_fieldPassUniqueIdentifiers firstObject];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__PKPaymentRemoteAlertViewController__startBackgroundContactlessInterfaceSessionIfNeeded__block_invoke;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, &location);
    v6 = [(PKBackgroundContactlessInterfaceSessionController *)v3 initWithFieldProperties:fieldProperties forPassUniqueID:firstObject relinquishOwnership:v10];
    backgroundContactlessInterfaceSession = self->_backgroundContactlessInterfaceSession;
    self->_backgroundContactlessInterfaceSession = v6;

    if (self->_backgroundContactlessInterfaceSession)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController: Starting background contactless interface session", v9, 2u);
      }

      [(PKBackgroundContactlessInterfaceSessionController *)self->_backgroundContactlessInterfaceSession start];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __89__PKPaymentRemoteAlertViewController__startBackgroundContactlessInterfaceSessionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentRemoteAlertViewController: Relinquishing background contactless interface session", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 145);
    *(WeakRetained + 145) = 0;
  }
}

- (void)consumeDoublePressUpForButtonKind:(int64_t)kind
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB6C0];
  v6 = *MEMORY[0x1E69BA440];
  v9[0] = *MEMORY[0x1E69BA680];
  v9[1] = v6;
  v7 = *MEMORY[0x1E69BA438];
  v10[0] = *MEMORY[0x1E69BA6F0];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 subject:v5 sendEvent:v8];

  [(PKPassGroupsViewController *)self->_passGroupsViewController forceModalPresentationFromButton:1];
}

- (void)_paymentDidReceiveSuccessfulTransactionNotification:(id)notification
{
  v13[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if ([(PKPaymentRemoteAlertViewController *)self _notificationIsFromChildViewController:notificationCopy])
  {
    v5 = MEMORY[0x1E69B8540];
    v6 = *MEMORY[0x1E69BB6C0];
    v12 = *MEMORY[0x1E69BAB38];
    v13[0] = *MEMORY[0x1E69BAB70];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v5 subject:v6 sendEvent:v7];

    groupStackView = [(PKPassGroupsViewController *)self->_passGroupsViewController groupStackView];
    object = [notificationCopy object];
    if ([groupStackView isViewCurrentlyPresentedFooterView:object])
    {
      userInfo = [notificationCopy userInfo];
      v11 = [userInfo PKBoolForKey:*MEMORY[0x1E69BC070]];

      if ((v11 & 1) == 0)
      {
        [(PKPaymentRemoteAlertViewController *)self _dismissForSource:0 completion:0];
      }
    }
  }
}

- (void)_contactlessInterfaceSessionDidAuthorize:(id)authorize
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentRemoteAlertViewController *)self _notificationIsFromChildViewController:authorize])
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6C0];
    v10 = *MEMORY[0x1E69BAB38];
    v11[0] = *MEMORY[0x1E69BAB60];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v4 subject:v5 sendEvent:v6];

    if (self->_isLockScreenPresented)
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 67109120;
        v9[1] = 60;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Card Authorized. Setting Auto-Lock Duration to %d seconds.", v9, 8u);
      }

      _remoteViewControllerProxy = [(PKPaymentRemoteAlertViewController *)self _remoteViewControllerProxy];
      [_remoteViewControllerProxy setDesiredAutoLockDuration:60.0];
    }
  }
}

- (void)_contactlessInterfaceSessionFinishTransaction:(id)transaction
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentRemoteAlertViewController *)self _notificationIsFromChildViewController:transaction])
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6C0];
    v23 = *MEMORY[0x1E69BAB38];
    v24[0] = *MEMORY[0x1E69BAB68];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v4 subject:v5 sendEvent:v6];

    v7 = objc_alloc(MEMORY[0x1E69B92D0]);
    v8 = [v7 initWithIdentifier:*MEMORY[0x1E69BC540] bundleIdentifier:*MEMORY[0x1E69BC3D8] context:*MEMORY[0x1E69BC538]];
    [v8 donateSignalWithCompletion:&__block_literal_global_152];
    if (self->_presentationStartTime)
    {
      presentationSource = self->_presentationSource;
      if (presentationSource > 6)
      {
        v10 = @"unknown";
      }

      else
      {
        v10 = off_1E801F938[presentationSource];
      }

      mach_absolute_time();
      PKSecondsFromMachTimeInterval();
      v12 = v11;
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v10;
        v21 = 2048;
        v22 = v12;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Contactless Interface Transaction Completed - Source: %@, Time: %g seconds", buf, 0x16u);
      }

      v14 = *MEMORY[0x1E69B9F68];
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:{v12, @"duration"}];
      v18 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      MEMORY[0x1BFB41980](v14, v16);
    }
  }
}

void __84__PKPaymentRemoteAlertViewController__contactlessInterfaceSessionFinishTransaction___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "TPSDiscoverabilitySignal - Failed to donate discoverability signal - contactless transaction: %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "TPSDiscoverabilitySignal - Successfully donated discoverability signal - contactless transaction";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

- (void)openApplication:(id)application
{
  applicationCopy = application;
  object = [applicationCopy object];
  selfCopy = self;
  if (selfCopy)
  {
    v7 = selfCopy;
    v8 = selfCopy;
    while (1)
    {
      viewIfLoaded = [(PKPaymentRemoteAlertViewController *)v8 viewIfLoaded];
      window = [viewIfLoaded window];

      if (window)
      {
        break;
      }

      presentedViewController = [(PKPaymentRemoteAlertViewController *)v7 presentedViewController];
      window = presentedViewController;
      if (v8 == presentedViewController)
      {

        goto LABEL_10;
      }

      v8 = window;
      if (!window)
      {
        goto LABEL_11;
      }
    }

    if (window == object)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__PKPaymentRemoteAlertViewController_openApplication___block_invoke;
      v12[3] = &unk_1E8010970;
      v13 = applicationCopy;
      [(PKPaymentRemoteAlertViewController *)v7 _dismissForSource:4 completion:v12];
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
    window = 0;
  }

LABEL_11:
}

@end