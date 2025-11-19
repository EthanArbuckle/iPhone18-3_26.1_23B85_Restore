@interface PKAccessoryDeviceExpressAlertViewController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (PKAccessoryDeviceExpressAlertViewController)init;
- (id)_expressNotificationNames;
- (void)_appearIfNecessary;
- (void)_changeStateIfNecessaryTo:(int64_t)a3;
- (void)_contactlessInterfaceSessionDidAuthorize:(id)a3;
- (void)_contactlessInterfaceSessionFinishTransaction:(id)a3;
- (void)_dismissIfRestricted;
- (void)_dismissImmediately:(BOOL)a3;
- (void)_handleExpressNotification:(id)a3;
- (void)_invalidate;
- (void)_paymentDidReceiveSuccessfulTransactionNotification:(id)a3;
- (void)_registerForExpressTransactionNotifications:(BOOL)a3;
- (void)_registerObserverForNotificationName:(id)a3 center:(id)a4 handler:(id)a5;
- (void)accessoryDeviceDidChangeStateTo:(int64_t)a3;
- (void)accessoryDeviceDidReachHardTimeout;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didAttachSleeveAccessory:(id)a3;
- (void)didDetachSleeveAccessory;
- (void)didInvalidateForRemoteAlert;
- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4;
- (void)handleButtonActions:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccessoryDeviceExpressAlertViewController

- (PKAccessoryDeviceExpressAlertViewController)init
{
  v11.receiver = self;
  v11.super_class = PKAccessoryDeviceExpressAlertViewController;
  v2 = [(PKAccessoryDeviceExpressAlertViewController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registeredExpressObservers = v2->_registeredExpressObservers;
    v2->_registeredExpressObservers = v3;

    [(PKAccessoryDeviceExpressAlertViewController *)v2 _registerForExpressTransactionNotifications:1];
    v5 = +[PKBacklightController sharedInstance];
    [v5 beginAllowingBacklightRamping:v2];

    v2->_brightnessRampingAllowed = 1;
    v2->_hasMultiple = 0;
    v2->_accessoryDeviceViewState = 0;
    v2->_presentedOnView = 0;
    v2->_appeared = 0;
    v6 = [objc_alloc(MEMORY[0x1E69B8328]) initWithDelegate:v2];
    accessoryDeviceMonitor = v2->_accessoryDeviceMonitor;
    v2->_accessoryDeviceMonitor = v6;

    v8 = *(MEMORY[0x1E695F050] + 16);
    v2->_windowedAccessoryCutoutFrameInScreen.origin = *MEMORY[0x1E695F050];
    v2->_windowedAccessoryCutoutFrameInScreen.size = v8;
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__paymentDidReceiveSuccessfulTransactionNotification_ name:*MEMORY[0x1E69BC068] object:0];
    [v9 addObserver:v2 selector:sel__contactlessInterfaceSessionDidAuthorize_ name:*MEMORY[0x1E69BB7E0] object:0];
    [v9 addObserver:v2 selector:sel__contactlessInterfaceSessionFinishTransaction_ name:*MEMORY[0x1E69BB7F0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PKAccessoryDeviceExpressAlertViewController *)self _registerForExpressTransactionNotifications:0];
  passbookForegroundAssertion = self->_passbookForegroundAssertion;
  if (passbookForegroundAssertion)
  {
    v5 = passbookForegroundAssertion;
    v6 = self->_passbookForegroundAssertion;
    self->_passbookForegroundAssertion = 0;

    v7 = dispatch_time(0, (*MEMORY[0x1E69BBAD8] * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKAccessoryDeviceExpressAlertViewController_dealloc__block_invoke;
    block[3] = &unk_1E8010970;
    v11 = v5;
    v8 = v5;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  [(PKAccessoryDeviceExpressAlertViewController *)self _invalidate];
  v9.receiver = self;
  v9.super_class = PKAccessoryDeviceExpressAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v9 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = PKAccessoryDeviceExpressAlertViewController;
  [(PKAccessoryDeviceExpressAlertViewController *)&v4 loadView];
  v3 = [(PKAccessoryDeviceExpressAlertViewController *)self view];
  [v3 setAutoresizingMask:0];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKAccessoryDeviceExpressAlertViewController;
  [(PKAccessoryDeviceExpressAlertViewController *)&v5 viewWillLayoutSubviews];
  v3 = self->_accessoryDeviceView;
  v4 = [(PKAccessoryDeviceExpressAlertViewController *)self view];
  [v4 bounds];
  [(PKAccessoryDeviceView *)v3 setFrame:?];

  [(PKAccessoryDeviceView *)v3 layoutIfNeeded];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = PKAccessoryDeviceExpressAlertViewController;
  [(PKAccessoryDeviceExpressAlertViewController *)&v16 viewWillAppear:?];
  if (!self->_passbookForegroundAssertion)
  {
    v5 = MEMORY[0x1E695FBE0];
    v6 = PKPassKitCoreBundle();
    v7 = [v5 newAssertionForBundle:v6 withReason:@"Passbook displaying UI for field"];
    passbookForegroundAssertion = self->_passbookForegroundAssertion;
    self->_passbookForegroundAssertion = v7;
  }

  if (self->_notificationSuppressionAssertion)
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69B8650];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __62__PKAccessoryDeviceExpressAlertViewController_viewWillAppear___block_invoke;
    v13 = &unk_1E801B258;
    objc_copyWeak(&v14, &location);
    [v9 acquireAssertionOfType:4 withReason:@"Contactless Interface" completion:&v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    if (!v3)
    {
      return;
    }
  }

  [(PKAccessoryDeviceExpressAlertViewController *)self _appearIfNecessary:v10];
}

void __62__PKAccessoryDeviceExpressAlertViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKAccessoryDeviceExpressAlertViewController_viewWillAppear___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __62__PKAccessoryDeviceExpressAlertViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
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
      [WeakRetained[131] setInvalidationHandler:0];
      [v3[131] invalidate];
      objc_storeStrong(v3 + 131, *(a1 + 32));
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62__PKAccessoryDeviceExpressAlertViewController_viewWillAppear___block_invoke_3;
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

void __62__PKAccessoryDeviceExpressAlertViewController_viewWillAppear___block_invoke_3(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[131];
    WeakRetained[131] = 0;
    v4 = WeakRetained;

    WeakRetained = v4;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKAccessoryDeviceExpressAlertViewController;
  [(PKAccessoryDeviceExpressAlertViewController *)&v4 viewDidAppear:a3];
  [(PKAccessoryDeviceExpressAlertViewController *)self _appearIfNecessary];
  self->_processHomeButtonEvents = 1;
}

- (void)_appearIfNecessary
{
  if (!self->_appeared)
  {
    self->_appeared = 1;
    [(PKAccessoryDeviceView *)self->_accessoryDeviceView changeToState:self->_accessoryDeviceViewState];
    self->_presentedOnView = 1;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PKAccessoryDeviceExpressAlertViewController;
  [(PKAccessoryDeviceExpressAlertViewController *)&v11 viewDidDisappear:a3];
  passbookForegroundAssertion = self->_passbookForegroundAssertion;
  if (passbookForegroundAssertion)
  {
    v5 = passbookForegroundAssertion;
    v6 = self->_passbookForegroundAssertion;
    self->_passbookForegroundAssertion = 0;

    v7 = dispatch_time(0, (*MEMORY[0x1E69BBAD8] * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PKAccessoryDeviceExpressAlertViewController_viewDidDisappear___block_invoke;
    block[3] = &unk_1E8010970;
    v10 = v5;
    v8 = v5;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  [(PKAccessoryDeviceExpressAlertViewController *)self _invalidate];
}

- (void)didInvalidateForRemoteAlert
{
  v3.receiver = self;
  v3.super_class = PKAccessoryDeviceExpressAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 didInvalidateForRemoteAlert];
  [(PKAccessoryDeviceExpressAlertViewController *)self _invalidate];
  [(PKAccessoryDeviceExpressAlertViewController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v51 = a3;
  v52 = a4;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceExpressAlertViewController: configuring with context.", buf, 2u);
  }

  v54 = [(PKAccessoryDeviceExpressAlertViewController *)self _remoteViewControllerProxy];
  self->_deviceUILocked = PKDeviceUILocked() != 0;
  [v54 setWallpaperStyle:1 withDuration:0.0];
  [v54 setLaunchingInterfaceOrientation:1];
  [v54 setAllowsSiri:0];
  [v54 setDesiredHardwareButtonEvents:16];
  [v54 setSwipeDismissalStyle:1];
  [v54 setDismissalAnimationStyle:1];
  if (self->_deviceUILocked)
  {
    [v54 setDesiredAutoLockDuration:30.0];
  }

  v7 = [v51 userInfo];
  v8 = [v7 valueForKey:*MEMORY[0x1E69BC030]];
  self->_presentationSource = [v8 integerValue];

  v9 = [v7 valueForKey:*MEMORY[0x1E69BBFC8]];
  self->_backlightActive = [v9 BOOLValue];

  v10 = *MEMORY[0x1E69BC038];
  v11 = [v7 objectForKey:*MEMORY[0x1E69BC038]];
  v12 = [v11 copy];
  passUniqueIdentifier = self->_passUniqueIdentifier;
  self->_passUniqueIdentifier = v12;

  fieldProperties = self->_fieldProperties;
  self->_fieldProperties = 0;

  v53 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69BBFE0]];
  if (v53)
  {
    v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v53 error:0];
    v16 = self->_fieldProperties;
    self->_fieldProperties = v15;
  }

  if (self->_fieldProperties)
  {
    v17 = [v7 objectForKey:*MEMORY[0x1E69BBFD8]];
    v18 = [v17 copy];
    fieldPassUniqueIdentifiers = self->_fieldPassUniqueIdentifiers;
    self->_fieldPassUniqueIdentifiers = v18;
  }

  else
  {
    v17 = [v7 objectForKey:v10];
    v20 = [v17 copy];
    fieldPassUniqueIdentifiers = self->_passUniqueIdentifier;
    self->_passUniqueIdentifier = v20;
  }

  v21 = [(NSArray *)self->_fieldPassUniqueIdentifiers count];
  v22 = [(UIViewController *)self pkui_frontMostViewController];
  v23 = [v22 view];

  v24 = *MEMORY[0x1E69BBFB0];
  v50 = [v7 objectForKey:*MEMORY[0x1E69BBFB0]];
  v25 = *MEMORY[0x1E69BBFB8];
  v49 = [v7 objectForKey:*MEMORY[0x1E69BBFB8]];
  v26 = self->_passUniqueIdentifier;
  if (v26)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v65 = v26;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceExpressAlertViewController: Single pass with PassuniqueID is %@", buf, 0xCu);
    }

    v27 = [objc_alloc(MEMORY[0x1E69B8320]) initWithDictionary:v50 endpointUUID:v49];
    accessoryDevice = self->_accessoryDevice;
    self->_accessoryDevice = v27;

    v29 = [MEMORY[0x1E69B8A58] sharedInstance];
    v30 = [v29 passWithUniqueID:self->_passUniqueIdentifier];

    v31 = [[PKAccessoryDeviceView alloc] initWithPass:v30 accessory:self->_accessoryDevice cutoutFrame:v23 parentView:self->_windowedAccessoryCutoutFrameInScreen.origin.x, self->_windowedAccessoryCutoutFrameInScreen.origin.y, self->_windowedAccessoryCutoutFrameInScreen.size.width, self->_windowedAccessoryCutoutFrameInScreen.size.height];
    accessoryDeviceView = self->_accessoryDeviceView;
    self->_accessoryDeviceView = v31;

    [(PKAccessoryDeviceView *)self->_accessoryDeviceView setDelegate:self];
    [(PKAccessoryDeviceView *)self->_accessoryDeviceView changeToState:self->_accessoryDeviceViewState];

LABEL_22:
    if (v52)
    {
      v52[2]();
    }

    [(PKAccessoryDeviceExpressAlertViewController *)self _dismissIfRestricted];
    goto LABEL_25;
  }

  v33 = self->_fieldPassUniqueIdentifiers;
  v34 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v33 || !v21)
  {
    if (v34)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceExpressAlertViewController: No passuniqueIdentifiers OR fieldpassuniqueidentiers - error", buf, 2u);
    }

    v42 = objc_alloc(MEMORY[0x1E69B8320]);
    v43 = [v7 objectForKey:v24];
    v44 = [v7 objectForKey:v25];
    v45 = [v42 initWithDictionary:v43 endpointUUID:v44];
    v46 = self->_accessoryDevice;
    self->_accessoryDevice = v45;

    self->_accessoryDeviceViewState = 3;
    v47 = [[PKAccessoryDeviceView alloc] initWithState:self->_accessoryDeviceViewState accessory:self->_accessoryDevice cutoutFrame:v23 parentView:self->_windowedAccessoryCutoutFrameInScreen.origin.x, self->_windowedAccessoryCutoutFrameInScreen.origin.y, self->_windowedAccessoryCutoutFrameInScreen.size.width, self->_windowedAccessoryCutoutFrameInScreen.size.height];
    v48 = self->_accessoryDeviceView;
    self->_accessoryDeviceView = v47;

    [(PKAccessoryDeviceView *)self->_accessoryDeviceView setDelegate:self];
    goto LABEL_22;
  }

  if (v34)
  {
    *buf = 138412290;
    v65 = v33;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceExpressAlertViewController Multi Pass Case: Field IDs are %@", buf, 0xCu);
  }

  v35 = [(NSArray *)self->_fieldPassUniqueIdentifiers firstObject];
  v36 = [MEMORY[0x1E69B8A58] sharedInstance];
  v37 = [v36 passWithUniqueID:v35];

  v38 = objc_alloc_init(MEMORY[0x1E69B88E0]);
  objc_initWeak(buf, self);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __79__PKAccessoryDeviceExpressAlertViewController_configureWithContext_completion___block_invoke;
  v55[3] = &unk_1E801CB00;
  objc_copyWeak(&v63, buf);
  v39 = v38;
  v56 = v39;
  v40 = v35;
  v57 = v40;
  v58 = v50;
  v59 = v49;
  v41 = v37;
  v60 = v41;
  v61 = v23;
  v62 = v52;
  [v39 reloadGroupsWithCompletion:v55];

  objc_destroyWeak(&v63);
  objc_destroyWeak(buf);

LABEL_25:
}

void __79__PKAccessoryDeviceExpressAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) groupAtIndex:{objc_msgSend(*(a1 + 32), "groupIndexForPassUniqueID:", *(a1 + 40))}];
    v4 = [v3 passCount];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v4;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceExpressAlertViewController: Passgroup has a count of %lu", &v13, 0xCu);
    }

    *(WeakRetained + 1088) = v4 > 1;
    v6 = [objc_alloc(MEMORY[0x1E69B8320]) initWithDictionary:*(a1 + 48) endpointUUID:*(a1 + 56)];
    v7 = *(WeakRetained + 140);
    *(WeakRetained + 140) = v6;

    v8 = [[PKAccessoryDeviceView alloc] initWithPass:*(a1 + 64) accessory:*(WeakRetained + 140) cutoutFrame:*(a1 + 72) parentView:*(WeakRetained + 142), *(WeakRetained + 143), *(WeakRetained + 144), *(WeakRetained + 145)];
    v9 = *(WeakRetained + 139);
    *(WeakRetained + 139) = v8;

    [*(WeakRetained + 139) setDelegate:WeakRetained];
    if (*(WeakRetained + 1088))
    {
      v10 = [*(a1 + 64) provisioningCredentialHash];

      if (v10)
      {
        *(WeakRetained + 137) = 2;
      }
    }

    [*(WeakRetained + 139) changeToState:*(WeakRetained + 137)];
    v11 = *(a1 + 80);
    if (v11)
    {
      (*(v11 + 16))();
    }

    [WeakRetained _dismissIfRestricted];
    if (*(WeakRetained + 1088) == 1)
    {
      v12 = [*(a1 + 64) provisioningCredentialHash];

      if (v12)
      {
        [WeakRetained _dismiss];
      }
    }
  }
}

- (void)_invalidate
{
  [(PKAssertion *)self->_notificationSuppressionAssertion invalidate];
  notificationSuppressionAssertion = self->_notificationSuppressionAssertion;
  self->_notificationSuppressionAssertion = 0;

  v4 = [(PKAccessoryDeviceExpressAlertViewController *)self view];
  [v4 setUserInteractionEnabled:0];

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 pkui_resetSharedRootAuthenticationContext];

  staticGlyphResources = self->_staticGlyphResources;
  self->_staticGlyphResources = 0;

  lockButtonObserver = self->_lockButtonObserver;
  if (lockButtonObserver)
  {
    [(BSInvalidatable *)lockButtonObserver invalidate];
    v8 = self->_lockButtonObserver;
    self->_lockButtonObserver = 0;
  }

  lockButtonAssertion = self->_lockButtonAssertion;
  if (lockButtonAssertion)
  {
    [(SBSAssertion *)lockButtonAssertion invalidate];
    v10 = self->_lockButtonAssertion;
    self->_lockButtonAssertion = 0;
  }

  if (self->_brightnessRampingAllowed)
  {
    v11 = +[PKBacklightController sharedInstance];
    [v11 endAllowingBacklightRamping:self];
  }

  v12 = [(PKAccessoryDeviceExpressAlertViewController *)self _remoteViewControllerProxy];
  [v12 invalidate];
}

- (void)_dismissIfRestricted
{
  v3 = [(PKAccessoryDeviceExpressAlertViewController *)self _remoteViewControllerProxy];
  if (v3)
  {
    v4 = [MEMORY[0x1E699C848] sharedInstance];
    v5 = [v4 lostModeIsActive];

    if (v5)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing Payment Interface due to Lost Mode", v7, 2u);
      }

      [(PKAccessoryDeviceExpressAlertViewController *)self _dismiss];
    }
  }
}

- (void)_dismissImmediately:(BOOL)a3
{
  v3 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = *MEMORY[0x1E69DDBE8];
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PKAccessoryDeviceExpressAlertViewController__dismissImmediately___block_invoke;
  v14[3] = &unk_1E8011A18;
  v14[4] = &v15;
  v6 = [v5 beginBackgroundTaskWithExpirationHandler:v14];
  v16[3] = v6;

  objc_initWeak(&location, self);
  accessoryDeviceView = self->_accessoryDeviceView;
  if (v3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PKAccessoryDeviceExpressAlertViewController__dismissImmediately___block_invoke_2;
    v11[3] = &unk_1E801CB28;
    v8 = &v12;
    objc_copyWeak(&v12, &location);
    v11[4] = &v15;
    [(PKAccessoryDeviceView *)accessoryDeviceView dismissViewImmediatelyWithCompletion:v11];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__PKAccessoryDeviceExpressAlertViewController__dismissImmediately___block_invoke_3;
    v9[3] = &unk_1E801CB28;
    v8 = &v10;
    objc_copyWeak(&v10, &location);
    v9[4] = &v15;
    [(PKAccessoryDeviceView *)accessoryDeviceView dismissViewWithCompletion:v9];
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v15, 8);
}

void __67__PKAccessoryDeviceExpressAlertViewController__dismissImmediately___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __67__PKAccessoryDeviceExpressAlertViewController__dismissImmediately___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _invalidate];
    [v4 dismissViewControllerAnimated:0 completion:0];
    WeakRetained = v4;
  }

  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    WeakRetained = v4;
  }
}

void __67__PKAccessoryDeviceExpressAlertViewController__dismissImmediately___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _invalidate];
    [v4 dismissViewControllerAnimated:0 completion:0];
    WeakRetained = v4;
  }

  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    WeakRetained = v4;
  }
}

- (void)handleButtonActions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_processHomeButtonEvents)
  {
    [(PKAccessoryDeviceExpressAlertViewController *)self _dismiss];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  if ([(PKAccessoryDevice *)self->_accessoryDevice isMock]&& os_variant_has_internal_ui())
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Overriding window because using mock device", v14, 2u);
    }

    v11 = [(PKAccessoryDeviceExpressAlertViewController *)self view];
    [v11 bounds];
    v13 = v12;

    width = v13 + -100.0;
    x = 50.0;
    y = 150.0;
    height = 100.0;
    goto LABEL_7;
  }

  if (v8)
  {
LABEL_7:
    self->_windowedAccessoryCutoutFrameInScreen.origin.x = x;
    self->_windowedAccessoryCutoutFrameInScreen.origin.y = y;
    self->_windowedAccessoryCutoutFrameInScreen.size.width = width;
    self->_windowedAccessoryCutoutFrameInScreen.size.height = height;
    [(PKAccessoryDeviceView *)self->_accessoryDeviceView setCutoutFrame:x, y, width, height];
    return;
  }

  [(PKAccessoryDeviceExpressAlertViewController *)self didDetachSleeveAccessory];
}

- (void)_paymentDidReceiveSuccessfulTransactionNotification:(id)a3
{
  v3 = [a3 userInfo];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKAccessoryDeviceExpressAlertViewController__paymentDidReceiveSuccessfulTransactionNotification___block_invoke;
  block[3] = &unk_1E8010970;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__PKAccessoryDeviceExpressAlertViewController__paymentDidReceiveSuccessfulTransactionNotification___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "_paymentDidReceiveSuccessfulTransactionNotification USERINFO %@", &v4, 0xCu);
  }
}

- (void)_contactlessInterfaceSessionDidAuthorize:(id)a3
{
  v3 = [a3 userInfo];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKAccessoryDeviceExpressAlertViewController__contactlessInterfaceSessionDidAuthorize___block_invoke;
  block[3] = &unk_1E8010970;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__PKAccessoryDeviceExpressAlertViewController__contactlessInterfaceSessionDidAuthorize___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "_contactlessInterfaceSessionDidAuthorize USERINFO %@", &v4, 0xCu);
  }
}

- (void)_contactlessInterfaceSessionFinishTransaction:(id)a3
{
  v3 = [a3 userInfo];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKAccessoryDeviceExpressAlertViewController__contactlessInterfaceSessionFinishTransaction___block_invoke;
  block[3] = &unk_1E8010970;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __93__PKAccessoryDeviceExpressAlertViewController__contactlessInterfaceSessionFinishTransaction___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "_contactlessInterfaceSessionFinishTransaction USERINFO %@", &v4, 0xCu);
  }
}

- (id)_expressNotificationNames
{
  v7[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69BB878];
  v7[0] = *MEMORY[0x1E69BB870];
  v7[1] = v2;
  v3 = *MEMORY[0x1E69BB860];
  v7[2] = *MEMORY[0x1E69BB858];
  v7[3] = v3;
  v4 = *MEMORY[0x1E69BB850];
  v7[4] = *MEMORY[0x1E69BB868];
  v7[5] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];

  return v5;
}

- (void)_registerObserverForNotificationName:(id)a3 center:(id)a4 handler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_registeredExpressObservers objectForKeyedSubscript:v11];
  if (!v10)
  {
    v10 = [v8 addObserverForName:v11 object:0 queue:0 usingBlock:v9];
    if (v10)
    {
      [(NSMutableDictionary *)self->_registeredExpressObservers setObject:v10 forKeyedSubscript:v11];
    }
  }
}

- (void)_registerForExpressTransactionNotifications:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696ABB0] defaultCenter];
  if (v3)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__PKAccessoryDeviceExpressAlertViewController__registerForExpressTransactionNotifications___block_invoke;
    aBlock[3] = &unk_1E801CB50;
    objc_copyWeak(&v26, &location);
    v6 = _Block_copy(aBlock);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(PKAccessoryDeviceExpressAlertViewController *)self _expressNotificationNames];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [(PKAccessoryDeviceExpressAlertViewController *)self _registerObserverForNotificationName:*(*(&v21 + 1) + 8 * i) center:v5 handler:v6];
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v8);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(PKAccessoryDeviceExpressAlertViewController *)self _expressNotificationNames];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v28 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v17 + 1) + 8 * j);
          v16 = [(NSMutableDictionary *)self->_registeredExpressObservers objectForKeyedSubscript:v15];
          if (v16)
          {
            [v5 removeObserver:v16];
            [(NSMutableDictionary *)self->_registeredExpressObservers removeObjectForKey:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v17 objects:v28 count:16];
      }

      while (v12);
    }
  }
}

void __91__PKAccessoryDeviceExpressAlertViewController__registerForExpressTransactionNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__PKAccessoryDeviceExpressAlertViewController__registerForExpressTransactionNotifications___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __91__PKAccessoryDeviceExpressAlertViewController__registerForExpressTransactionNotifications___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleExpressNotification:*(a1 + 32)];
}

- (void)_changeStateIfNecessaryTo:(int64_t)a3
{
  if (self->_accessoryDeviceViewState != a3)
  {
    self->_accessoryDeviceViewState = a3;
    [(PKAccessoryDeviceView *)self->_accessoryDeviceView changeToState:?];
    if (a3 == 3)
    {
      v4 = 1395;
    }

    else
    {
      if ((a3 - 1) > 1)
      {
        return;
      }

      v4 = 1394;
    }

    AudioServicesPlaySystemSound(v4);
  }
}

- (void)_handleExpressNotification:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [a3 name];
  v5 = *MEMORY[0x1E69BB870];
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
  {

    goto LABEL_7;
  }

  if (!v6 || !v5)
  {

    goto LABEL_11;
  }

  v8 = [v6 isEqualToString:v5];

  if (v8)
  {
LABEL_7:
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Express Transaction has started (No Error)", v39, 2u);
    }

    v10 = self;
    v11 = 0;
    goto LABEL_41;
  }

LABEL_11:
  v12 = *MEMORY[0x1E69BB878];
  v13 = v7;
  v14 = v13;
  if (v13 == v12)
  {

    goto LABEL_17;
  }

  if (!v7 || !v12)
  {

    goto LABEL_22;
  }

  v15 = [v13 isEqualToString:v12];

  if (v15)
  {
LABEL_17:
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Express Transaction has timed out (No Error) per contract as documented in rdar://36255593 ([Emet] Mercury new express mode transaction events) will show check mark", v39, 2u);
    }

LABEL_20:
    v10 = self;
    v11 = 1;
LABEL_41:
    [(PKAccessoryDeviceExpressAlertViewController *)v10 _changeStateIfNecessaryTo:v11, *v39];
    goto LABEL_42;
  }

LABEL_22:
  v17 = *MEMORY[0x1E69BB860];
  v18 = v14;
  v19 = v18;
  if (v18 == v17)
  {

    goto LABEL_28;
  }

  if (!v7 || !v17)
  {

    goto LABEL_31;
  }

  v20 = [v18 isEqualToString:v17];

  if (v20)
  {
LABEL_28:
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      v22 = "Express Transaction has ended in failure (Error)";
LABEL_39:
      _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, v22, v39, 2u);
    }

LABEL_40:

    v10 = self;
    v11 = 3;
    goto LABEL_41;
  }

LABEL_31:
  v23 = *MEMORY[0x1E69BB868];
  v24 = v19;
  v25 = v24;
  if (v24 == v23)
  {

    goto LABEL_37;
  }

  if (!v7 || !v23)
  {

    goto LABEL_44;
  }

  v26 = [v24 isEqualToString:v23];

  if (v26)
  {
LABEL_37:
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      v22 = "Express Transaction has ended due to being incompatible (Error)";
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_44:
  v27 = *MEMORY[0x1E69BB858];
  v28 = v25;
  v29 = v28;
  if (v28 == v27)
  {

    goto LABEL_50;
  }

  if (!v7 || !v27)
  {

    goto LABEL_60;
  }

  v30 = [v28 isEqualToString:v27];

  if (v30)
  {
LABEL_50:
    v31 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&dword_1BD026000, v31, OS_LOG_TYPE_DEFAULT, "Express Transaction has ended without incident (No Error)", v39, 2u);
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_hasMultiple)
      {
        v32 = @"True";
      }

      else
      {
        v32 = @"False";
      }

      *v39 = 138412290;
      *&v39[4] = v32;
      _os_log_impl(&dword_1BD026000, v31, OS_LOG_TYPE_DEFAULT, "_handleExpressNotification: _hasMultiple is %@", v39, 0xCu);
    }

    if (self->_hasMultiple)
    {
      v10 = self;
      v11 = 2;
      goto LABEL_41;
    }

    goto LABEL_20;
  }

LABEL_60:
  v33 = *MEMORY[0x1E69BB850];
  v34 = v29;
  v35 = v34;
  if (v34 == v33)
  {

LABEL_66:
    v37 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = PKAccessoryDeviceViewStateToString(self->_accessoryDeviceViewState);
      *v39 = 138412290;
      *&v39[4] = v38;
      _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "Express Transaction has exited (No Error) while the state is %@", v39, 0xCu);
    }

    if (self->_accessoryDeviceViewState)
    {
      [(PKAccessoryDeviceExpressAlertViewController *)self _dismiss];
    }

    goto LABEL_42;
  }

  if (!v7 || !v33)
  {

    goto LABEL_42;
  }

  v36 = [v34 isEqualToString:v33];

  if (v36)
  {
    goto LABEL_66;
  }

LABEL_42:
}

- (void)accessoryDeviceDidChangeStateTo:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_accessoryDeviceViewState != a3)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PKAccessoryDeviceViewStateToString(a3);
      v7 = PKAccessoryDeviceViewStateToString(self->_accessoryDeviceViewState);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "accessoryDeviceDidChangeStateTo %@ and existing state is %@", &v8, 0x16u);
    }

    if (a3 == 3)
    {
      self->_accessoryDeviceViewState = 3;
      AudioServicesPlaySystemSound(0x573u);
      [(PKAccessoryDeviceExpressAlertViewController *)self _dismiss];
    }
  }
}

- (void)accessoryDeviceDidReachHardTimeout
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "accessoryDeviceDidReachHardTimeout Hard time out reached dismissing viewcontroller immediately", v4, 2u);
  }

  [(PKAccessoryDeviceExpressAlertViewController *)self _changeStateIfNecessaryTo:3];
  [(PKAccessoryDeviceExpressAlertViewController *)self _dismiss];
}

- (void)didAttachSleeveAccessory:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_accessoryDevice, a3);
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Wallet_PassKitUI/Framework/PKAccessoryDeviceExpressAlertViewController.m";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "%s - didAttachSleeveAccessory getting called with %@", &v7, 0x16u);
  }
}

- (void)didDetachSleeveAccessory
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = self->_accessoryDevice;
  accessoryDevice = self->_accessoryDevice;
  self->_accessoryDevice = 0;

  [(PKAccessoryDeviceExpressAlertViewController *)self _dismissImmediately:1];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Wallet_PassKitUI/Framework/PKAccessoryDeviceExpressAlertViewController.m";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%s - didDetachSleeveAccessory getting called (and removing %@)", &v6, 0x16u);
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  v6.receiver = self;
  v6.super_class = PKAccessoryDeviceExpressAlertViewController;
  [(PKAccessoryDeviceExpressAlertViewController *)&v6 sizeForChildContentContainer:a3 withParentContainerSize:a4.width, a4.height];
  result.height = v5;
  result.width = v4;
  return result;
}

@end