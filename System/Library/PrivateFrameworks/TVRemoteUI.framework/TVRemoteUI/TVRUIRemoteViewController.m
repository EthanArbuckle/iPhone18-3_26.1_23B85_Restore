@interface TVRUIRemoteViewController
- (BOOL)_shouldAllowKeyboardToBePresented;
- (BOOL)hasPresentedContent;
- (BOOL)shouldDisconnectAndStopConnections;
- (BOOL)supportsVolumeControl;
- (CGSize)preferredContentSize;
- (TVRUIDeviceConnectionStatusDelegate)deviceConnectionStatusDelegate;
- (TVRUIRemoteViewController)init;
- (TVRUIRemoteViewControllerDelegate)delegate;
- (double)backgroundCornerRadius;
- (id)_stringForConnectionContext:(int64_t)a3;
- (id)_stringForDeviceDeviceIdentifierType:(int64_t)a3;
- (id)_stringForLaunchContextType:(int64_t)a3;
- (id)animatorForDismissalAsAlert;
- (id)animatorForPresentationAsAlert;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4 forTouchpadView:(id)a5;
- (id)playerCommandHandler;
- (int64_t)_connectionContextFromLaunchContext:(int64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activate;
- (void)_cancelHideConnectingAndShowDevicePicker;
- (void)_cancelPairing;
- (void)_cancelShowConnectingSpinner;
- (void)_connectToDevice:(id)a3 connectionContext:(int64_t)a4;
- (void)_connectToMostRelevantDevice;
- (void)_connectToPreferredDeviceFromDeviceList:(id)a3;
- (void)_createBlackGradientView;
- (void)_createFindingSessionIfNeeded;
- (void)_deactivate;
- (void)_disableSearch;
- (void)_disconnect;
- (void)_disconnectSystemInitiated;
- (void)_disconnectUserInitiatedAndModifyLockscreenAssertion:(BOOL)a3;
- (void)_enableLiveTVButtons:(BOOL)a3 animated:(BOOL)a4;
- (void)_enableMediaControls:(BOOL)a3 animated:(BOOL)a4;
- (void)_enableSearch;
- (void)_enableTVRemoteOnLockscreen:(BOOL)a3;
- (void)_expandDeviceList;
- (void)_forceShowMediaControls;
- (void)_hideConnectingAndShowDevicePicker;
- (void)_hideMessageContent;
- (void)_initSessionStatistics;
- (void)_installTapToRadarButton;
- (void)_layoutTouchpadExpanded:(BOOL)a3;
- (void)_logSessionStatistics;
- (void)_performSiriEffectsWithButtonEvent:(id)a3;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4;
- (void)_presentKeyboardWithAttributes:(id)a3 initialText:(id)a4;
- (void)_presentPairingAlert;
- (void)_presentTextPasswordAlert;
- (void)_resetActiveDevice;
- (void)_selectDevice:(id)a3 withConnectionContext:(int64_t)a4;
- (void)_setupChildViewControllers;
- (void)_setupDevicePickerController;
- (void)_setupNetworkObserverIfNeeded;
- (void)_setupNowPlayingController;
- (void)_showBluetoothDisabledAlertWithCompletion:(id)a3;
- (void)_showConnectingSpinner;
- (void)_showFindingAlert;
- (void)_showSearchingSpinnerIfNeeded;
- (void)_startDeviceQueryThresholdTimer;
- (void)_startFindingSessionForDevice:(id)a3;
- (void)_stopDeviceQueryThresholdTimer;
- (void)_stopFindingSessionForDevice:(id)a3;
- (void)_tapToRadar;
- (void)_toggleControlAvailability;
- (void)_toggleDock;
- (void)_turnOnBluetoothIfNeededWithCompletionBlock:(id)a3;
- (void)_updateControlsAppearance;
- (void)_updateInfoButtonState;
- (void)_updateSecureWindowState;
- (void)alertController:(id)a3 enteredText:(id)a4;
- (void)alertController:(id)a3 generatedTextInputPayload:(id)a4;
- (void)alertControllerCancelled:(id)a3;
- (void)alertControllerHitKeyboardReturnKey:(id)a3;
- (void)alertControllerPressedDictationButton:(id)a3;
- (void)alertControllerReleasedDictationButton:(id)a3;
- (void)backlightLuminanceDidChange;
- (void)bluetoothAvailabilityDidUpdate:(BOOL)a3;
- (void)clearMessageContent;
- (void)configureWithContext:(id)a3;
- (void)configureWithDeviceIdentifier:(id)a3 identifierType:(int64_t)a4 deviceType:(int64_t)a5 launchContext:(int64_t)a6;
- (void)connectionServiceDidInvalidate:(id)a3;
- (void)consumeSinglePressDownForButtonKind:(int64_t)a3;
- (void)dealloc;
- (void)device:(id)a3 beganTextEditingWithAttributes:(id)a4 initialText:(id)a5;
- (void)device:(id)a3 didEncounterAuthenticationThrottle:(int64_t)a4;
- (void)device:(id)a3 didUpdateAttributes:(id)a4;
- (void)device:(id)a3 didUpdateNowPlayingInfo:(id)a4;
- (void)device:(id)a3 didUpdateSiriRemoteFindingSessionState:(int64_t)a4;
- (void)device:(id)a3 didUpdateText:(id)a4;
- (void)device:(id)a3 endedTextEditingWithAttributes:(id)a4 endingText:(id)a5;
- (void)device:(id)a3 hasCaptionsEnabled:(BOOL)a4;
- (void)device:(id)a3 hidesMediaControls:(id)a4;
- (void)device:(id)a3 needsMediaControls:(id)a4;
- (void)device:(id)a3 supportsFindMyRemote:(BOOL)a4;
- (void)device:(id)a3 supportsSiri:(BOOL)a4 volumeControl:(BOOL)a5;
- (void)device:(id)a3 supportsVolumeControl:(BOOL)a4;
- (void)deviceBeganConnecting:(id)a3;
- (void)deviceDidConnect:(id)a3;
- (void)deviceDidDisconnect:(id)a3 reason:(int64_t)a4 error:(id)a5;
- (void)deviceDidEncounterAuthenticationChallenge:(id)a3 passwordType:(unint64_t)a4 passcode:(id)a5;
- (void)deviceInfoUpdated:(id)a3;
- (void)deviceListUpdated:(id)a3;
- (void)devicePickerTitleWasLongPressedForDevice:(id)a3;
- (void)devicePickerWillChangeState:(BOOL)a3 animated:(BOOL)a4;
- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4;
- (void)fetchPreferredDevice;
- (void)findButtonTappedForDevice:(id)a3;
- (void)findingSessionDidEnd;
- (void)findingSessionDidStart;
- (void)generatedButtonEvent:(id)a3;
- (void)generatedTouchEvent:(id)a3;
- (void)keyboardRequested;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillDeactivate:(id)a3;
- (void)setBackgroundCornerRadius:(double)a3;
- (void)setIsInSecureWindow:(BOOL)a3;
- (void)setSupportsSiri:(BOOL)a3;
- (void)setSupportsVolumeControl:(BOOL)a3;
- (void)showGenericUnableToConnectMessage;
- (void)showLoadingSpinner;
- (void)showMessageWithError:(id)a3 andDevice:(id)a4;
- (void)showMessageWithTitle:(id)a3 message:(id)a4;
- (void)showMessageWithTitle:(id)a3 message:(id)a4 titleFont:(id)a5;
- (void)showNoAssociatedNetworkMessage;
- (void)showNoWIFIConnectionMessage;
- (void)showPairingMessageWithCode:(id)a3;
- (void)showSearchingSpinner;
- (void)showThrottleConnectMessage;
- (void)startConnections;
- (void)stopConnections;
- (void)suggestedDevices:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)volumeDownEventGenerated;
- (void)volumeUpEventGenerated;
- (void)wifiStateDidUpdate:(int64_t)a3;
@end

@implementation TVRUIRemoteViewController

- (TVRUIRemoteViewController)init
{
  v33.receiver = self;
  v33.super_class = TVRUIRemoteViewController;
  v2 = [(TVRUIRemoteViewController *)&v33 init];
  if (v2)
  {
    v3 = objc_alloc_init(TVRUIDarkStyleProvider);
    styleProvider = v2->_styleProvider;
    v2->_styleProvider = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [[TVRUITouchpadViewController alloc] initWithNibName:0 bundle:0];
    touchpadViewController = v2->_touchpadViewController;
    v2->_touchpadViewController = v6;

    [(TVRUITouchpadViewController *)v2->_touchpadViewController setTouchDelegate:v2];
    [(TVRUITouchpadViewController *)v2->_touchpadViewController setStyleProvider:v2->_styleProvider];
    [(TVRUITouchpadViewController *)v2->_touchpadViewController setEventDelegate:v2];
    [v5 addObject:v2->_touchpadViewController];
    v8 = [[TVRUIControlPanelViewController alloc] initWithNibName:0 bundle:0];
    controlPanelViewController = v2->_controlPanelViewController;
    v2->_controlPanelViewController = v8;

    [(TVRUIControlPanelViewController *)v2->_controlPanelViewController setStyleProvider:v2->_styleProvider];
    [(TVRUIControlPanelViewController *)v2->_controlPanelViewController setButtonActionsDelegate:v2];
    [v5 addObject:v2->_controlPanelViewController];
    v10 = [[TVRUIMediaControlsViewController alloc] initWithNibName:0 bundle:0];
    mediaControlsViewController = v2->_mediaControlsViewController;
    v2->_mediaControlsViewController = v10;

    [(TVRUIMediaControlsViewController *)v2->_mediaControlsViewController setStyleProvider:v2->_styleProvider];
    [(TVRUIMediaControlsViewController *)v2->_mediaControlsViewController setButtonActionsDelegate:v2];
    [v5 addObject:v2->_mediaControlsViewController];
    [(TVRUIRemoteViewController *)v2 _setupNowPlayingController];
    [v5 addObject:v2->_nowPlayingController];
    [(TVRUIRemoteViewController *)v2 _setupDevicePickerController];
    [v5 addObject:v2->_devicePickerViewController];
    v12 = objc_alloc_init(TVRMessageView);
    messageView = v2->_messageView;
    v2->_messageView = v12;

    [(TVRMessageView *)v2->_messageView setStyleProvider:v2->_styleProvider];
    [(TVRMessageView *)v2->_messageView setUserInteractionEnabled:0];
    v14 = objc_alloc_init(TVRKeyboardHaptic);
    keyboardHaptic = v2->_keyboardHaptic;
    v2->_keyboardHaptic = v14;

    v16 = +[TVRUISiriManager sharedManager];
    siriManager = v2->_siriManager;
    v2->_siriManager = v16;

    [(TVRUISiriManager *)v2->_siriManager setButtonActionsDelegate:v2];
    objc_initWeak(&location, v2);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __33__TVRUIRemoteViewController_init__block_invoke;
    v30 = &unk_279D87F18;
    objc_copyWeak(&v31, &location);
    v18 = _Block_copy(&v27);
    v19 = [TVRUIDockController alloc];
    nowPlayingController = v2->_nowPlayingController;
    v21 = [(TVRUINowPlayingController *)nowPlayingController upNextProvider:v27];
    v22 = [(TVRUIDockController *)v19 initWithHostingViewController:v2 actionProvider:nowPlayingController upNextProvider:v21 nowPlayingProvider:v2->_nowPlayingController layoutHandler:v18];
    dockController = v2->_dockController;
    v2->_dockController = v22;

    [v5 addObject:v2->_dockController];
    [(TVRUIDockController *)v2->_dockController setStyleProvider:v2->_styleProvider];
    v24 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    deviceObservers = v2->_deviceObservers;
    v2->_deviceObservers = v24;

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__TVRUIRemoteViewController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setNeedsLayout];

    v3 = [v4 view];
    [v3 layoutIfNeeded];

    WeakRetained = v4;
  }
}

- (void)configureWithContext:(id)a3
{
  v4 = a3;
  v8 = [v4 deviceIdentifier];
  v5 = [v4 deviceIdentifierType];
  v6 = [v4 deviceType];
  v7 = [v4 launchContext];

  [(TVRUIRemoteViewController *)self configureWithDeviceIdentifier:v8 identifierType:v5 deviceType:v6 launchContext:v7];
}

- (void)configureWithDeviceIdentifier:(id)a3 identifierType:(int64_t)a4 deviceType:(int64_t)a5 launchContext:(int64_t)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [(TVRUIRemoteViewController *)self isConfigured];
  if ([(TVRUIRemoteViewController *)self isConfigured])
  {
    v12 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(TVRUIRemoteViewController *)self activeDevice];
      v14 = [v13 name];
      v39 = 138543362;
      v40 = v14;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "RemoteViewController is already configured with device: %{public}@", &v39, 0xCu);
    }

    v15 = [(TVRUIRemoteViewController *)self activeDevice];
    if (v15)
    {
      v16 = v15;
      v17 = [(TVRUIRemoteViewController *)self activeDevice];
      v18 = [v17 hasIdentifier:v10];

      if ((v18 & 1) == 0)
      {
        [(TVRUIRemoteViewController *)self _disconnectUserInitiated];
        [(TVRUIRemoteViewController *)self setActiveDevice:0];
        [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:0];
        goto LABEL_9;
      }
    }
  }

  else
  {
    v19 = [MEMORY[0x277D6C560] sharedInstance];
    [v19 reset];
  }

  if (v11)
  {
    goto LABEL_23;
  }

LABEL_9:
  if ([(__CFString *)v10 length])
  {
    v20 = [TVRUIDeviceFactory deviceWithIdentifier:v10];
    [(TVRUIRemoteViewController *)self setActiveDevice:v20];

    v21 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(TVRUIRemoteViewController *)self activeDevice];
      v39 = 138543362;
      v40 = v22;
      _os_log_impl(&dword_26CFEB000, v21, OS_LOG_TYPE_DEFAULT, "Updated active device to: %{public}@", &v39, 0xCu);
    }

    v23 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(TVRUIRemoteViewController *)self _stringForDeviceDeviceIdentifierType:a4];
      v39 = 138543618;
      v40 = v10;
      v41 = 2114;
      v42 = v24;
      _os_log_impl(&dword_26CFEB000, v23, OS_LOG_TYPE_DEFAULT, "Configured RemoteViewController with device-id %{public}@ of type %{public}@", &v39, 0x16u);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (a6 == 11)
  {
    v25 = [TVRUIDeviceFactory deviceWithIdentifier:@"Apple TV"];
    [(TVRUIRemoteViewController *)self setActiveDevice:v25];

    v26 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(TVRUIRemoteViewController *)self activeDevice];
      v39 = 138543362;
      v40 = v27;
      _os_log_impl(&dword_26CFEB000, v26, OS_LOG_TYPE_DEFAULT, "Updated active device to: %{public}@", &v39, 0xCu);
    }

    [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:@"Apple TV"];
    v23 = _TVRUIViewControllerLog();
    a4 = 4;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(TVRUIRemoteViewController *)self _stringForDeviceDeviceIdentifierType:4];
      v39 = 138543618;
      v40 = @"Apple TV";
      v41 = 2114;
      v42 = v28;
      _os_log_impl(&dword_26CFEB000, v23, OS_LOG_TYPE_DEFAULT, "deviceIdentifier was nil and this was from TTSU, configuring RemoteViewController with device-id %{public}@ of type %{public}@", &v39, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:
  v29 = +[TVRUIDeviceQuery deviceQuery];
  [(TVRUIRemoteViewController *)self setDeviceQuery:v29];

  v30 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v30 transitonToViewForDeviceType:{-[TVRUIRemoteViewController deviceType](self, "deviceType")}];

  v31 = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [v31 transitonToViewForDeviceType:{-[TVRUIRemoteViewController deviceType](self, "deviceType")}];

  v32 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(TVRUIRemoteViewController *)self _stringForDeviceDeviceIdentifierType:a4];
    v34 = [(TVRUIRemoteViewController *)self launchContextDesc];
    v39 = 138544130;
    v40 = v10;
    v41 = 2114;
    v42 = v33;
    v43 = 2048;
    v44 = a5;
    v45 = 2114;
    v46 = v34;
    _os_log_impl(&dword_26CFEB000, v32, OS_LOG_TYPE_DEFAULT, "Configured RemoteViewController with device-id %{public}@ identifier type %{public}@ device-type %ld launch-context %{public}@", &v39, 0x2Au);
  }

  [(TVRUIRemoteViewController *)self setConfigured:1];
LABEL_23:
  [(TVRUIRemoteViewController *)self setDeviceIdentifierType:a4];
  [(TVRUIRemoteViewController *)self setDeviceType:a5];
  [(TVRUIRemoteViewController *)self setLaunchContext:a6];
  v35 = [(TVRUIRemoteViewController *)self _stringForLaunchContextType:a6];
  [(TVRUIRemoteViewController *)self setLaunchContextDesc:v35];

  v36 = [MEMORY[0x277D6C4B8] sharedInstance];
  v37 = [(TVRUIRemoteViewController *)self launchContextDesc];
  [v36 logPresentationFrom:v37];

  v38 = [(TVRUIRemoteViewController *)self nowPlayingController];
  [v38 setViewServiceLaunchContext:a6];
}

- (void)viewDidLoad
{
  v28[1] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v27 viewDidLoad];
  [(TVRUIRemoteViewController *)self setOverrideUserInterfaceStyle:2];
  v3 = [(TVRUIRemoteViewController *)self styleProvider];
  v4 = [v3 rootBackgroundColor];

  v5 = [(TVRUIRemoteViewController *)self styleProvider];
  v6 = [v5 rootBackgroundView];
  [(TVRUIRemoteViewController *)self setBackgroundView:v6];

  v7 = [(TVRUIRemoteViewController *)self backgroundView];

  if (v7)
  {
    v8 = [(TVRUIRemoteViewController *)self backgroundView];
    [v8 setBackgroundColor:v4];

    v9 = [(TVRUIRemoteViewController *)self view];
    v10 = [(TVRUIRemoteViewController *)self backgroundView];
    [v9 addSubview:v10];

    v11 = [(TVRUIRemoteViewController *)self backgroundView];
    [v11 setUserInteractionEnabled:0];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v11 = [(TVRUIRemoteViewController *)self view];
    [v11 setBackgroundColor:v4];
  }

LABEL_6:
  [(TVRUIRemoteViewController *)self _setupChildViewControllers];
  [(TVRUIRemoteViewController *)self _createBlackGradientView];
  v12 = [(TVRUIRemoteViewController *)self nowPlayingController];
  v13 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [v13 setMenuProvider:v12];

  v14 = [(TVRUIRemoteViewController *)self traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 1)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:self selector:sel_sceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:self selector:sel_sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:self selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:0];

    v19 = objc_opt_self();
    v28[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v21 = [(TVRUIRemoteViewController *)self registerForTraitChanges:v20 withAction:sel_backlightLuminanceDidChange];
    [(TVRUIRemoteViewController *)self setTraitChangeRegistration:v21];
  }

  v22 = [(TVRUIRemoteViewController *)self view];
  v23 = [v22 maskView];

  if (!v23)
  {
    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
    v24 = [MEMORY[0x277D75348] blackColor];
    [v23 setBackgroundColor:v24];

    v25 = [(TVRUIRemoteViewController *)self view];
    [v25 setMaskView:v23];
  }

  v26 = [(TVRUIRemoteViewController *)self view];
  [v26 bounds];
  [v23 setFrame:?];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRUIRemoteViewController viewDidAppear:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v9 viewDidAppear:v3];
  v6 = [(TVRUIRemoteViewController *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    [(TVRUIRemoteViewController *)self startConnections];
  }

  [(TVRUIRemoteViewController *)self _installTapToRadarButton];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_connectionServiceDidInvalidate_ name:*MEMORY[0x277D6C578] object:0];
}

- (void)viewWillLayoutSubviews
{
  v123 = *MEMORY[0x277D85DE8];
  v120.receiver = self;
  v120.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v120 viewWillLayoutSubviews];
  v3 = [(TVRUIRemoteViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  rect = v8;
  v10 = v9;

  v11 = [(TVRUIRemoteViewController *)self backgroundView];

  if (v11)
  {
    v12 = [(TVRUIRemoteViewController *)self styleProvider];
    [v12 rootBackgroundInsets];
    v14 = v5 + v13;
    v16 = v7 + v15;
    v18 = rect - (v13 + v17);
    v20 = v10 - (v15 + v19);
    v21 = [(TVRUIRemoteViewController *)self backgroundView];
    [v21 setFrame:{v14, v16, v18, v20}];
  }

  v22 = [(TVRUIRemoteViewController *)self styleProvider];
  [v22 deviceSafeAreaInsetTop];
  v24 = v23;

  v25 = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (v25)
  {
    v26 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    v27 = [v26 view];
    [v27 setFrame:{0.0, v24, rect, v10 - v24}];

    v28 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v124.origin.x = 0.0;
      v124.origin.y = v24;
      v124.size.width = rect;
      v124.size.height = v10 - v24;
      v29 = NSStringFromCGRect(v124);
      *buf = 138412290;
      v122 = v29;
      _os_log_impl(&dword_26CFEB000, v28, OS_LOG_TYPE_DEFAULT, "Setup device picker frame %@", buf, 0xCu);
    }
  }

  v30 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  v31 = [v30 isDevicePickerShowing];

  v32 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [(TVRUIRemoteViewController *)self _layoutTouchpadExpanded:(v32 != 0) & v31];

  v33 = [(TVRUIRemoteViewController *)self touchpadViewController];
  v34 = [v33 view];
  [v34 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = [(TVRUIRemoteViewController *)self styleProvider];
  [v43 primaryButtonSize];
  v45 = v44;

  v46 = [(TVRUIRemoteViewController *)self styleProvider];
  LODWORD(v34) = [v46 isPad];

  if (v34)
  {
    v125.origin.x = v36;
    v125.origin.y = v38;
    v125.size.width = v40;
    v125.size.height = v42;
    v47 = v10 - CGRectGetMaxY(v125);
    v48 = v45;
    v49 = v47 - v45;
    v126.origin.x = v36;
    v126.origin.y = v38;
    v126.size.width = v40;
    v126.size.height = v42;
    v50 = CGRectGetMaxY(v126) + v49 * 0.5 + -6.0;
  }

  else
  {
    v51 = [(TVRUIRemoteViewController *)self styleProvider];
    [v51 deviceListRowHeight];
    v53 = v24 + v52;

    v127.origin.x = v36;
    v127.origin.y = v38;
    v127.size.width = v40;
    v127.size.height = v42;
    MinY = CGRectGetMinY(v127);
    if (v31)
    {
      v55 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [v55 _effectiveContentHeight];
      MinY = MinY - v56;
    }

    v128.origin.x = v36;
    v128.origin.y = v38;
    v128.size.width = v40;
    v128.size.height = v42;
    v50 = CGRectGetMaxY(v128) + MinY - v53;
    v48 = v45;
  }

  v57 = [(TVRUIRemoteViewController *)self controlPanelViewController];
  v58 = [v57 view];
  [v58 setFrame:{0.0, v50, rect, v48}];

  v59 = [(TVRUIRemoteViewController *)self styleProvider];
  [v59 mediaControlsViewHeight];
  v61 = v60;

  v129.origin.x = v36;
  v129.origin.y = v38;
  v129.size.width = v40;
  v129.size.height = v42;
  v62 = CGRectGetMaxY(v129) - v61 + -6.0;
  v63 = [(TVRUIRemoteViewController *)self styleProvider];
  [v63 touchpadInsets];
  v65 = v64;

  v66 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  v67 = [v66 view];
  [v67 setFrame:{v65, v62, v40, v61}];

  v68 = [(TVRUIRemoteViewController *)self dockController];
  v69 = [v68 dockViewController];

  v70 = [(TVRUIRemoteViewController *)self dockController];
  v71 = [v70 layoutManager];

  v72 = +[TVRUIFeatures isDockEnabled]& (v31 ^ 1);
  [v71 updateWithTouchpadFrame:v72 controlPanelFrame:v36 placement:{v38, v40, v42, 0.0, v118, rect, v48}];
  if (([v71 isReordering] & 1) == 0)
  {
    [v71 effectiveDockFrame];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = [v69 view];
    [v81 setFrame:{v74, v76, v78, v80}];
  }

  if (v72)
  {
    [v71 effectiveTouchpadFrame];
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = [(TVRUIRemoteViewController *)self touchpadViewController];
    v91 = [v90 view];
    [v91 setFrame:{v83, v85, v87, v89}];

    [v71 effectiveControlPanelFrame];
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v100 = [(TVRUIRemoteViewController *)self controlPanelViewController];
    v101 = [v100 view];
    [v101 setFrame:{v93, v95, v97, v99}];
  }

  v102 = [(TVRUIRemoteViewController *)self touchpadViewController];
  v103 = [v102 view];
  [v103 frame];
  v105 = v104;
  v107 = v106;

  v108 = [(TVRUIRemoteViewController *)self view];
  [v108 bounds];
  v110 = v109;
  v111 = [(TVRUIRemoteViewController *)self styleProvider];
  [v111 widthForMessagesView];
  v113 = (v110 - v112) * 0.5;

  v114 = [(TVRUIRemoteViewController *)self styleProvider];
  [v114 widthForMessagesView];
  v116 = v115;

  v117 = [(TVRUIRemoteViewController *)self messageView];
  [v117 setFrame:{v113, v105, v116, v107}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v21 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(TVRUIRemoteViewController *)self styleProvider];
  v9 = [v8 isPad];

  if (v9)
  {
    v10 = [(TVRUIRemoteViewController *)self view];
    v11 = [v10 superview];
    [v11 bounds];
    v13 = v12;
    v15 = v14;

    if (width > height != v13 > v15)
    {
      v16 = [(TVRUIRemoteViewController *)self nowPlayingController];
      v17 = [v16 currentModalContext];

      if (v17)
      {
        v18 = [(TVRUIRemoteViewController *)self nowPlayingController];
        [v18 dismissModalUI];

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __80__TVRUIRemoteViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
        v19[3] = &unk_279D88D10;
        v20 = 1;
        v19[4] = self;
        v19[5] = v17;
        [v7 animateAlongsideTransition:&__block_literal_global_17 completion:v19];
      }
    }
  }
}

void __80__TVRUIRemoteViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) nowPlayingController];
    [v3 presentModalContext:*(a1 + 40) animated:0];
  }
}

- (void)_layoutTouchpadExpanded:(BOOL)a3
{
  v3 = a3;
  v5 = [(TVRUIRemoteViewController *)self styleProvider];
  [v5 touchpadInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(TVRUIRemoteViewController *)self styleProvider];
  [v12 deviceListRowHeight];
  v14 = v13;

  v15 = [(TVRUIRemoteViewController *)self styleProvider];
  v16 = [v15 isPad];

  v17 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  if (v16)
  {
    if (v17)
    {
      v18 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      v19 = [v18 view];
      [v19 frame];
      v21 = v14 + v20 + 22.0;
    }

    else
    {
      v18 = [(TVRUIRemoteViewController *)self view];
      [v18 safeAreaInsets];
      v21 = v7 + v25;
    }
  }

  else
  {
    if (v17)
    {
      v22 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      v23 = [v22 view];
      [v23 frame];
      v24 = v14 + CGRectGetMinY(v74);
    }

    else
    {
      v22 = [(TVRUIRemoteViewController *)self view];
      [v22 safeAreaInsets];
      v24 = v7 + v26;
    }

    v21 = v24 + 10.0;
    if (SBUIIsSystemApertureEnabled())
    {
      v21 = v21 + 10.0;
    }
  }

  v27 = MGGetProductType();
  if (v27 > 2159747552)
  {
    if (v27 == 2159747553)
    {
      goto LABEL_18;
    }

    if (v27 != 3885279870)
    {
      goto LABEL_20;
    }

LABEL_17:
    v28 = 8.0;
LABEL_19:
    v21 = v21 + v28;
    goto LABEL_20;
  }

  if (v27 == 1060988941)
  {
    goto LABEL_17;
  }

  if (v27 == 2078329141)
  {
LABEL_18:
    v28 = 10.0;
    goto LABEL_19;
  }

LABEL_20:
  if (v3)
  {
    v29 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v29 _effectiveContentHeight];
    v31 = v30;

    v32 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v32 _calculatedContentHeight];
    v34 = v33;
    v35 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v35 _effectiveContentHeight];
    v37 = v36;

    if (v34 > v37)
    {
      v38 = [(TVRUIRemoteViewController *)self blackGradientView];
      [v38 setAlpha:1.0];
    }

    v21 = v21 + v31;
    v39 = [(TVRUIRemoteViewController *)self styleProvider];
    [v39 touchpadHeight];
    v41 = v40;
    v42 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v42 _effectiveContentHeight];
    v44 = v41 - v43;
  }

  else
  {
    v45 = [(TVRUIRemoteViewController *)self styleProvider];
    [v45 touchpadCornerRadius];
    v47 = v46;
    v48 = [(TVRUIRemoteViewController *)self touchpadViewController];
    v49 = [v48 view];
    [v49 _setContinuousCornerRadius:v47];

    v50 = [(TVRUIRemoteViewController *)self blackGradientView];
    [v50 setAlpha:0.0];

    v39 = [(TVRUIRemoteViewController *)self styleProvider];
    [v39 touchpadHeight];
    v44 = v51;
  }

  v52 = [(TVRUIRemoteViewController *)self styleProvider];
  if ([v52 isPad])
  {
    v53 = [(TVRUIRemoteViewController *)self view];
    v54 = [v53 window];
    v55 = [v54 windowScene];
    v56 = [v55 effectiveGeometry];
    v57 = [v56 interfaceOrientation] - 3;

    if (v57 < 2)
    {
      v44 = v44 + -40.0;
    }
  }

  else
  {
  }

  v58 = [(TVRUIRemoteViewController *)self view];
  [v58 bounds];
  v60 = v59;

  v61 = [(TVRUIRemoteViewController *)self touchpadViewController];
  v62 = [v61 view];
  [v62 setFrame:{v9, v21, v60 - v9 - v11, v44}];

  if (!+[TVRUIFeatures isSolariumEnabled])
  {
    v63 = [(TVRUIRemoteViewController *)self styleProvider];
    [v63 deviceListRowHeight];
    v65 = v64;

    v66 = [(TVRUIRemoteViewController *)self blackGradientView];
    [v66 setFrame:{0.0, v21 - v65, v60, v65}];

    v67 = [(TVRUIRemoteViewController *)self blackGradientView];
    v68 = [v67 layer];
    v69 = [v68 sublayers];
    v70 = [v69 objectAtIndexedSubscript:0];
    [v70 setFrame:{0.0, 0.0, v60, v65}];

    v72 = [(TVRUIRemoteViewController *)self view];
    v71 = [(TVRUIRemoteViewController *)self blackGradientView];
    [v72 bringSubviewToFront:v71];
  }
}

- (void)_createBlackGradientView
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (!+[TVRUIFeatures isSolariumEnabled])
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    v4 = [MEMORY[0x277D75348] clearColor];
    [v3 setBackgroundColor:v4];

    [v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x277CD9EB0] layer];
    v6 = [MEMORY[0x277D75348] clearColor];
    v7 = [MEMORY[0x277D75348] blackColor];
    v11[0] = [v6 CGColor];
    v11[1] = [v7 CGColor];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [v5 setColors:v8];
    v9 = [v3 layer];
    [v9 insertSublayer:v5 atIndex:0];

    v10 = [(TVRUIRemoteViewController *)self view];
    [v10 addSubview:v3];

    [(TVRUIRemoteViewController *)self setBlackGradientView:v3];
  }
}

- (void)setIsInSecureWindow:(BOOL)a3
{
  if (self->_isInSecureWindow != a3)
  {
    self->_isInSecureWindow = a3;
    [(TVRUIRemoteViewController *)self _updateSecureWindowState];
  }
}

- (void)_enableTVRemoteOnLockscreen:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(TVRUIRemoteViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
    v7 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v8 = @"enable";
      }

      else
      {
        v8 = @"disable";
      }

      v9 = [(TVRUIRemoteViewController *)self activeDeviceIdentifier];
      v13 = 138412546;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Requesting tvremoted to %@ lock screen assertion for device: %{public}@", &v13, 0x16u);
    }

    v10 = [MEMORY[0x277D6C560] sharedInstance];
    v11 = [(TVRUIRemoteViewController *)self activeDevice];
    v12 = [v11 identifier];
    [v10 enableTVRemoteOnLockscreen:v3 forDeviceIdentifier:v12];
  }
}

- (void)_updateSecureWindowState
{
  if ([(TVRUIRemoteViewController *)self isInSecureWindow]&& ([(TVRUIRemoteViewController *)self activeDevice], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "TVRUIRemoteViewController is in a secure window", buf, 2u);
    }

    v5 = 1;
  }

  else
  {
    v4 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "TVRUIRemoteViewController is NOT in a secure window", v6, 2u);
    }

    v5 = 0;
  }

  [(TVRUIRemoteViewController *)self _enableTVRemoteOnLockscreen:v5];
}

- (BOOL)shouldDisconnectAndStopConnections
{
  v3 = [(TVRUIRemoteViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    v5 = [(TVRUIRemoteViewController *)self systemMonitor];
    if ([v5 screenLocked])
    {
      v6 = [(TVRUIRemoteViewController *)self isInSecureWindow];

      if (v6)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[TVRUIRemoteViewController viewWillDisappear:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([(TVRUIRemoteViewController *)self shouldDisconnectAndStopConnections])
  {
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v10) = v3;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "tvruiremoteviewcontroller will disappear animated=%d", buf, 8u);
    }

    if (v3)
    {
      [(TVRUIRemoteViewController *)self _disconnectUserInitiated];
    }

    else
    {
      [(TVRUIRemoteViewController *)self _disconnectSystemInitiated];
    }

    [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:v3 completion:0];
    [(TVRUIRemoteViewController *)self stopConnections];
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x277D6C578] object:0];

  v8.receiver = self;
  v8.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v8 viewWillDisappear:v3];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(TVRUIRemoteViewController *)self traitCollection];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (CGSize)preferredContentSize
{
  v2 = [(TVRUIRemoteViewController *)self styleProvider];
  [v2 remoteSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)backlightLuminanceDidChange
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(TVRUIRemoteViewController *)self traitCollection];
  self->_isInReducedBacklightMode = [v3 _backlightLuminance] == 1;

  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TVRUIRemoteViewController *)self traitCollection];
    v6 = 134218240;
    v7 = [v5 _backlightLuminance];
    v8 = 1024;
    v9 = [(TVRUIRemoteViewController *)self isInReducedBacklightMode];
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Backlight Luminance: %ld in AOD: %d", &v6, 0x12u);
  }

  [(TVRUIRemoteViewController *)self _updateControlsAppearance];
}

- (void)dealloc
{
  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v3 = [(TVRUIRemoteViewController *)self traitChangeRegistration];
  [(TVRUIRemoteViewController *)self unregisterForTraitChanges:v3];

  v4 = [(TVRUIRemoteViewController *)self authenticatingDevice];

  if (v4)
  {
    v5 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    [v5 disconnectUserInitiated];
  }

  [(TVRUIRemoteViewController *)self setFindingSession:0];
  v6.receiver = self;
  v6.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v6 dealloc];
}

- (void)_setupNowPlayingController
{
  v3 = [TVRUINowPlayingController controllerWithHostingViewController:self];
  nowPlayingController = self->_nowPlayingController;
  self->_nowPlayingController = v3;

  objc_initWeak(&location, self);
  v5 = [(TVRUIRemoteViewController *)self playerCommandHandler];
  [(TVRUINowPlayingController *)self->_nowPlayingController setCommandHandler:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__TVRUIRemoteViewController__setupNowPlayingController__block_invoke;
  v8[3] = &unk_279D88D38;
  objc_copyWeak(&v9, &location);
  [(TVRUINowPlayingController *)self->_nowPlayingController setCapellaInfoDidChangeHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__TVRUIRemoteViewController__setupNowPlayingController__block_invoke_2;
  v6[3] = &unk_279D87F18;
  objc_copyWeak(&v7, &location);
  [(TVRUINowPlayingController *)self->_nowPlayingController setLayoutHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__TVRUIRemoteViewController__setupNowPlayingController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateInfoButtonState];
    WeakRetained = v2;
  }
}

void __55__TVRUIRemoteViewController__setupNowPlayingController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setNeedsLayout];

    v3 = [v4 view];
    [v3 layoutIfNeeded];

    WeakRetained = v4;
  }
}

- (void)_setupChildViewControllers
{
  v3 = [(TVRUIRemoteViewController *)self dockController];
  v4 = [v3 dockViewController];
  [(TVRUIRemoteViewController *)self bs_addChildViewController:v4];

  [(TVRUIRemoteViewController *)self bs_addChildViewController:self->_touchpadViewController];
  [(TVRUIRemoteViewController *)self bs_addChildViewController:self->_controlPanelViewController];
  [(TVRUIRemoteViewController *)self bs_addChildViewController:self->_mediaControlsViewController];
  v5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [(TVRUIRemoteViewController *)self bs_addChildViewController:v5];

  v6 = [(TVRUIRemoteViewController *)self view];
  v7 = [(TVRUIRemoteViewController *)self messageView];
  [v6 addSubview:v7];

  v8 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Setup remote child controllers and message view", v11, 2u);
  }

  v9 = [(TVRUIRemoteViewController *)self view];
  [v9 setNeedsLayout];

  v10 = [(TVRUIRemoteViewController *)self view];
  [v10 layoutIfNeeded];
}

- (void)_setupDevicePickerController
{
  v3 = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(TVRUIDevicePickerViewController);
    [(TVRUIRemoteViewController *)self setDevicePickerViewController:v4];

    v5 = [(TVRUIRemoteViewController *)self styleProvider];
    v6 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v6 setStyleProvider:v5];

    v7 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v7 setDelegate:self];

    v8 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v8 setButtonEventDelegate:self];

    v9 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v9 setEnabled:1];

    v10 = [(TVRUIRemoteViewController *)self playerCommandHandler];
    v11 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v11 setPlayerCommandHandler:v10];

    v12 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    tipSourceViewProvider = self->_tipSourceViewProvider;
    self->_tipSourceViewProvider = v12;

    MEMORY[0x2821F96F8](v12, tipSourceViewProvider);
  }
}

- (id)_stringForLaunchContextType:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      result = @"controlCenter";
      break;
    case 2:
      result = @"lockscreen";
      break;
    case 3:
      result = @"mediaPlatterHome";
      break;
    case 4:
      result = @"siriShortcut";
      break;
    case 5:
      result = @"mediaPlatterControlCenter";
      break;
    case 6:
      result = @"mediaPlatterLockscreen";
      break;
    case 7:
      result = @"mediaPlatterSiri";
      break;
    case 8:
      result = @"mediaPlatter";
      break;
    case 9:
      result = @"siri";
      break;
    case 10:
      result = @"continuityKeyboard";
      break;
    case 11:
      result = @"tapToSetup";
      break;
    case 12:
      result = @"expanse";
      break;
    case 13:
      result = @"jindo";
      break;
    case 14:
      result = @"controlCenterLockscreen";
      break;
    default:
      if (a3 == 100)
      {
        result = @"internalDevelopment";
      }

      else
      {
        result = @"unspecified";
      }

      break;
  }

  return result;
}

- (id)playerCommandHandler
{
  playerCommandHandler = self->_playerCommandHandler;
  if (!playerCommandHandler)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke;
    v8[3] = &unk_279D88D60;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(v8);
    v5 = self->_playerCommandHandler;
    self->_playerCommandHandler = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    playerCommandHandler = self->_playerCommandHandler;
  }

  v6 = _Block_copy(playerCommandHandler);

  return v6;
}

void __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v5 = 0;
  v6 = 6;
  switch(a2)
  {
    case 0:
      v5 = 0;
      v6 = 7;
      goto LABEL_20;
    case 1:
      v5 = 0;
      goto LABEL_12;
    case 2:
      v5 = 0;
      v6 = 5;
      goto LABEL_20;
    case 3:
      goto LABEL_20;
    case 4:
      v5 = 0;
      goto LABEL_19;
    case 5:
      v5 = 1;
      goto LABEL_12;
    case 6:
      v5 = 2;
LABEL_12:
      v6 = 14;
      goto LABEL_20;
    case 7:
      v5 = 1;
      goto LABEL_19;
    case 8:
      v5 = 2;
LABEL_19:
      v6 = 15;
      goto LABEL_20;
    case 9:
      v5 = 0;
      v6 = 31;
      goto LABEL_20;
    case 10:
      v5 = 0;
      v6 = 29;
      goto LABEL_20;
    case 11:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke_2;
      block[3] = &unk_279D87C20;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x277D85CD0], block);
      break;
    case 12:
      v5 = 0;
      v6 = 3;
      goto LABEL_20;
    case 14:
      v5 = 0;
      v6 = 9998;
LABEL_20:
      v8 = [TVRUIButtonEvent createButtonEvent:v5 buttonType:v6];
      [v4 generatedButtonEvent:v8];
      goto LABEL_21;
    case 15:
      v7 = [WeakRetained nowPlayingController];
      v8 = v7;
      v9 = 1;
      goto LABEL_16;
    case 16:
      v7 = [WeakRetained nowPlayingController];
      v8 = v7;
      v9 = 2;
LABEL_16:
      [v7 presentModalContext:v9 animated:1];
LABEL_21:

      break;
    case 17:
      [WeakRetained _toggleDock];
      break;
    default:
      break;
  }
}

void __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke_2(uint64_t a1)
{
  v2 = [TVRUIButtonEvent createButtonEvent:1 buttonType:3];
  [*(a1 + 32) generatedButtonEvent:v2];
  v3 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke_3;
  block[3] = &unk_279D87C20;
  block[4] = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke_3(uint64_t a1)
{
  v2 = [TVRUIButtonEvent createButtonEvent:2 buttonType:3];
  [*(a1 + 32) generatedButtonEvent:v2];
}

- (void)_toggleDock
{
  +[TVRUIFeatures setDockEnabled:](TVRUIFeatures, "setDockEnabled:", +[TVRUIFeatures isDockEnabled]^ 1);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__TVRUIRemoteViewController__toggleDock__block_invoke;
  v3[3] = &unk_279D87C20;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.25];
}

void __40__TVRUIRemoteViewController__toggleDock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (id)animatorForPresentationAsAlert
{
  v2 = [(TVRUIRemoteViewController *)self traitCollection];
  v3 = +[TVRemoteAlertVisualStyleProviding visualStyleForIdiom:](TVRemoteAlertVisualStyleProviding, "visualStyleForIdiom:", [v2 userInterfaceIdiom]);

  v4 = [[TVRUIAlertAnimationController alloc] initWithAnimationType:0 visualStyle:v3];

  return v4;
}

- (id)animatorForDismissalAsAlert
{
  v2 = [(TVRUIRemoteViewController *)self traitCollection];
  v3 = +[TVRemoteAlertVisualStyleProviding visualStyleForIdiom:](TVRemoteAlertVisualStyleProviding, "visualStyleForIdiom:", [v2 userInterfaceIdiom]);

  v4 = [[TVRUIAlertAnimationController alloc] initWithAnimationType:1 visualStyle:v3];

  return v4;
}

- (void)setBackgroundCornerRadius:(double)a3
{
  v5 = [(TVRUIRemoteViewController *)self backgroundView];
  v7 = v5;
  if (v5)
  {
    [v5 _setContinuousCornerRadius:a3];
  }

  else
  {
    v6 = [(TVRUIRemoteViewController *)self view];
    [v6 _setContinuousCornerRadius:a3];
  }
}

- (double)backgroundCornerRadius
{
  v3 = [(TVRUIRemoteViewController *)self backgroundView];
  v4 = v3;
  if (v3)
  {
    [v3 _continuousCornerRadius];
    v6 = v5;
  }

  else
  {
    v7 = [(TVRUIRemoteViewController *)self view];
    [v7 _continuousCornerRadius];
    v6 = v8;
  }

  return v6;
}

- (void)startConnections
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[TVRUIRemoteViewController startConnections]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [(TVRUIRemoteViewController *)self deviceQuery];
  if (v4)
  {
    v5 = [(TVRUIRemoteViewController *)self deviceQuery];
    v6 = [v5 hasStarted];

    if ((v6 & 1) == 0)
    {
      v7 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Starting device query", buf, 2u);
      }

      [(TVRUIRemoteViewController *)self fetchPreferredDevice];
      v8 = [(TVRUIRemoteViewController *)self deviceQuery];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __45__TVRUIRemoteViewController_startConnections__block_invoke;
      v36[3] = &unk_279D88D88;
      v36[4] = self;
      [v8 startQuery:self completionHandler:v36];

      [(TVRUIRemoteViewController *)self performSelector:sel__showSearchingSpinnerIfNeeded withObject:0 afterDelay:2.0];
    }
  }

  v9 = [(TVRUIRemoteViewController *)self sharingClient];
  v10 = v9 == 0;

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D54C30]);
    [(TVRUIRemoteViewController *)self setSharingClient:v11];

    v12 = [(TVRUIRemoteViewController *)self sharingClient];
    [v12 activateAssertionWithIdentifier:@"com.apple.sharing.PreventContinuityKeyboard"];

    v13 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Activated assertion to prevent Continuity Keyboard", buf, 2u);
    }
  }

  v14 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(TVRUIRemoteViewController *)self activeDevice];
    *buf = 138543362;
    v38 = v15;
    _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Active device: %{public}@", buf, 0xCu);
  }

  v16 = [(TVRUIRemoteViewController *)self activeDevice];
  v17 = [v16 isConnected];

  if (v17)
  {
    v18 = [(TVRUIRemoteViewController *)self deviceConnectionStatusDelegate];
    [v18 deviceDidConnect];
  }

  v19 = [(TVRUIRemoteViewController *)self activeDevice];
  if (v19)
  {
    v20 = [(TVRUIRemoteViewController *)self activeDevice];
    if ([v20 isConnecting])
    {
    }

    else
    {
      v21 = [(TVRUIRemoteViewController *)self activeDevice];
      v22 = [v21 isConnected];

      if (v22)
      {
        goto LABEL_22;
      }

      v23 = [(TVRUIRemoteViewController *)self _connectionContextFromLaunchContext:[(TVRUIRemoteViewController *)self launchContext]];
      v19 = [(TVRUIRemoteViewController *)self activeDevice];
      [(TVRUIRemoteViewController *)self _connectToDevice:v19 connectionContext:v23];
    }
  }

LABEL_22:
  [(TVRUIRemoteViewController *)self _setupNetworkObserverIfNeeded];
  v24 = [(TVRUIRemoteViewController *)self systemMonitor];
  v25 = v24 == 0;

  if (v25)
  {
    v26 = objc_alloc_init(MEMORY[0x277D02938]);
    [(TVRUIRemoteViewController *)self setSystemMonitor:v26];

    objc_initWeak(buf, self);
    v27 = [(TVRUIRemoteViewController *)self systemMonitor];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __45__TVRUIRemoteViewController_startConnections__block_invoke_125;
    v34 = &unk_279D87F18;
    objc_copyWeak(&v35, buf);
    [v27 setScreenLockedChangedHandler:&v31];

    v28 = [(TVRUIRemoteViewController *)self systemMonitor:v31];
    [v28 activateWithCompletion:&__block_literal_global_134];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  if ([(TVRUIRemoteViewController *)self supportsSiri])
  {
    v29 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_DEFAULT, "Registering for Siri Events", buf, 2u);
    }

    v30 = [(TVRUIRemoteViewController *)self siriManager];
    [v30 registerForSiriEvents];
  }

  [(TVRUIRemoteViewController *)self _initSessionStatistics];
}

uint64_t __45__TVRUIRemoteViewController_startConnections__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _startDeviceQueryThresholdTimer];
  }

  return result;
}

void __45__TVRUIRemoteViewController_startConnections__block_invoke_125(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained systemMonitor];
    v4 = [v3 screenLocked];

    v5 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"unlocked";
      if (v4)
      {
        v6 = @"locked";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Screen is now %@", &v8, 0xCu);
    }

    if (v4)
    {
      v7 = [v2 nowPlayingController];
      [v7 dismissModalUI];
    }
  }
}

void __45__TVRUIRemoteViewController_startConnections__block_invoke_132()
{
  v0 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26CFEB000, v0, OS_LOG_TYPE_DEFAULT, "Screen lock monitor activated", v1, 2u);
  }
}

- (void)stopConnections
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "[TVRUIRemoteViewController stopConnections]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v29, 0xCu);
  }

  v4 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v4)
  {
    v5 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "UI has active device. Calling disconnect on device", &v29, 2u);
    }

    v6 = [(TVRUIRemoteViewController *)self systemMonitor];
    v7 = [v6 screenLocked];

    if (v7)
    {
      [(TVRUIRemoteViewController *)self _disconnectSystemInitiated];
    }

    else
    {
      [(TVRUIRemoteViewController *)self _disconnectUserInitiated];
    }

    [(TVRUIRemoteViewController *)self _updateSecureWindowState];
  }

  v8 = [(TVRUIRemoteViewController *)self authenticatingDevice];

  if (v8)
  {
    v9 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Found an authenticating device. Requesting disconnect", &v29, 2u);
    }

    v10 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    [v10 disconnectUserInitiated];
  }

  v11 = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (v11)
  {
    v12 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v12 resetSelectedDevice];
  }

  v13 = [(TVRUIRemoteViewController *)self deviceQuery];

  if (v13)
  {
    v14 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Stopping device query", &v29, 2u);
    }

    v15 = [(TVRUIRemoteViewController *)self deviceQuery];
    [v15 stop];

    [(TVRUIRemoteViewController *)self setDeviceQuery:0];
    [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
  }

  v16 = [(TVRUIRemoteViewController *)self sharingClient];

  if (v16)
  {
    v17 = [(TVRUIRemoteViewController *)self sharingClient];
    [v17 invalidate];

    [(TVRUIRemoteViewController *)self setSharingClient:0];
    v18 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, "Invalidated sharing client", &v29, 2u);
    }
  }

  v19 = [(TVRUIRemoteViewController *)self systemMonitor];

  if (v19)
  {
    v20 = [(TVRUIRemoteViewController *)self systemMonitor];
    [v20 invalidate];

    [(TVRUIRemoteViewController *)self setSystemMonitor:0];
    v21 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_26CFEB000, v21, OS_LOG_TYPE_DEFAULT, "system monitor for screen locked state invalidated", &v29, 2u);
    }
  }

  v22 = [(TVRUIRemoteViewController *)self networkObserver];

  if (v22)
  {
    [(TVRUIRemoteViewController *)self setNetworkObserver:0];
  }

  [(TVRUIRemoteViewController *)self setSupportsVolumeControl:0];
  v23 = [(TVRUIRemoteViewController *)self siriManager];
  [v23 unregisterForSiriEvents];

  v24 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [v24 setDevices:MEMORY[0x277CBEBF8]];

  if (+[TVRUIFeatures corianderEnabled])
  {
    v25 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v25 setSuggestedDevices:MEMORY[0x277CBEBF8]];
  }

  v26 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [v26 collapseDeviceList];

  [(TVRUIRemoteViewController *)self setConfigured:0];
  v27 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  [v27 setEnabled:0];

  v28 = [(TVRUIRemoteViewController *)self nowPlayingController];
  [v28 dismissModalUI];

  [(TVRUIRemoteViewController *)self _logSessionStatistics];
}

- (void)_disconnectUserInitiatedAndModifyLockscreenAssertion:(BOOL)a3
{
  v3 = a3;
  v5 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v5)
  {
    v6 = [(TVRUIRemoteViewController *)self activeDevice];
    [(TVRUIRemoteViewController *)self _stopFindingSessionForDevice:v6];

    if (v3)
    {
      [(TVRUIRemoteViewController *)self _enableTVRemoteOnLockscreen:0];
    }

    v7 = [(TVRUIRemoteViewController *)self activeDevice];
    [v7 disconnectUserInitiated];

    [(TVRUIRemoteViewController *)self _resetActiveDevice];
    [(TVRUIRemoteViewController *)self _enableMediaControls:0 animated:0];
    [(TVRUIRemoteViewController *)self _enableLiveTVButtons:0 animated:0];
    v8 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v9 = "#tvrlock - user initiated disconnect called on active device";
      v10 = &v12;
LABEL_8:
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else
  {
    v8 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v9 = "#tvrlock - user initiated disconnect, but device is NOT ACTIVE";
      v10 = &v11;
      goto LABEL_8;
    }
  }
}

- (void)_disconnectSystemInitiated
{
  v3 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v3)
  {
    v4 = [(TVRUIRemoteViewController *)self activeDevice];
    [(TVRUIRemoteViewController *)self _stopFindingSessionForDevice:v4];

    [(TVRUIRemoteViewController *)self _enableTVRemoteOnLockscreen:0];
    v5 = [(TVRUIRemoteViewController *)self activeDevice];
    [v5 disconnectSystemInitiated];

    [(TVRUIRemoteViewController *)self _resetActiveDevice];
    [(TVRUIRemoteViewController *)self _enableMediaControls:0 animated:0];
    [(TVRUIRemoteViewController *)self _enableLiveTVButtons:0 animated:0];
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "#tvrlock - system initiated disconnect called on active device";
      v8 = &v10;
LABEL_6:
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "#tvrlock - system initiated disconnect, but device is NOT ACTIVE";
      v8 = &v9;
      goto LABEL_6;
    }
  }
}

- (void)_resetActiveDevice
{
  v3 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v3)
  {
    v4 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Resetting active device", v7, 2u);
    }

    v5 = [(TVRUIRemoteViewController *)self activeDevice];
    [v5 setDelegate:0];

    [(TVRUIRemoteViewController *)self setActiveDevice:0];
  }

  [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:0];
  v6 = [(TVRUIRemoteViewController *)self nowPlayingController];
  [v6 setNowPlayingInfo:0];
}

- (void)_initSessionStatistics
{
  v3 = objc_alloc_init(MEMORY[0x277D6C528]);
  [(TVRUIRemoteViewController *)self setSessionData:v3];

  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(TVRUIRemoteViewController *)self sessionData];
  [v5 setSessionStartTime:v4];

  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Initialized session stats", v7, 2u);
  }
}

- (void)_logSessionStatistics
{
  v3 = [(TVRUIRemoteViewController *)self sessionData];

  if (v3)
  {
    v4 = [(TVRUIRemoteViewController *)self launchContextDesc];
    v5 = [(TVRUIRemoteViewController *)self sessionData];
    [v5 setLaunchContextDesc:v4];

    v6 = [MEMORY[0x277D6C4B8] sharedInstance];
    v7 = [(TVRUIRemoteViewController *)self sessionData];
    [v6 logSessionStatistics:v7];

    [(TVRUIRemoteViewController *)self setSessionData:0];
    v8 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Logged session stats", v9, 2u);
    }
  }
}

- (void)sceneDidActivate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[TVRUIRemoteViewController sceneDidActivate:]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s - %{public}@", &v6, 0x16u);
  }

  [(TVRUIRemoteViewController *)self _activate];
}

- (void)sceneWillDeactivate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[TVRUIRemoteViewController sceneWillDeactivate:]";
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s - %{public}@", &v13, 0x16u);
  }

  v6 = [(TVRUIRemoteViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];

  if (v4 == v8)
  {
    v9 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(TVRUIRemoteViewController *)self view];
      v11 = [v10 window];
      v12 = [v11 windowScene];
      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Deactivating connection - notification scene object: %@ current scene: %@", &v13, 0x16u);
    }

    [(TVRUIRemoteViewController *)self _deactivate];
  }
}

- (void)_activate
{
  [(TVRUIRemoteViewController *)self startConnections];
  if ([(TVRUIRemoteViewController *)self isInSecureWindow])
  {
    v3 = [(TVRUIRemoteViewController *)self presentedViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [(TVRUIRemoteViewController *)self presentedViewController];
      v6 = [(TVRUIRemoteViewController *)self keyboardController];

      if (v5 == v6)
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __38__TVRUIRemoteViewController__activate__block_invoke;
        v7[3] = &unk_279D87C20;
        v7[4] = self;
        [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:0 completion:v7];
      }
    }
  }
}

uint64_t __38__TVRUIRemoteViewController__activate__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) presentedViewController];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Relaunching keyboard. presentedViewController:%@", &v5, 0xCu);
  }

  return [*(a1 + 32) keyboardRequested];
}

- (void)_deactivate
{
  v2 = [(TVRUIRemoteViewController *)self siriManager];
  [v2 unregisterForSiriEvents];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TVRUIRemoteViewController *)self view];
    v7 = [v6 window];
    v8 = [v7 windowScene];
    v13 = 136315906;
    v14 = "[TVRUIRemoteViewController sceneDidEnterBackground:]";
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v8;
    v19 = 1024;
    v20 = [(TVRUIRemoteViewController *)self isInSecureWindow];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s - scene: %{public}@ current window scene: %{public}@ secureWindow: %{BOOL}d", &v13, 0x26u);
  }

  if (!-[TVRUIRemoteViewController isInSecureWindow](self, "isInSecureWindow") && (-[TVRUIRemoteViewController view](self, "view"), v9 = objc_claimAutoreleasedReturnValue(), [v9 window], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "windowScene"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v4 == v11))
  {
    [(TVRUIRemoteViewController *)self _disconnect];
  }

  else
  {
    v12 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Not disconnecting the connection the TV as we are transitioning to a secure window", &v13, 2u);
    }
  }
}

- (void)_disconnect
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "[TVRUIRemoteViewController _disconnect]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v23, 0xCu);
  }

  v4 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v4)
  {
    v5 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "UI has active device. Calling disconnect on device", &v23, 2u);
    }

    [(TVRUIRemoteViewController *)self _disconnectUserInitiated];
  }

  v6 = [(TVRUIRemoteViewController *)self authenticatingDevice];

  if (v6)
  {
    v7 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Found an authenticating device. Requesting disconnect", &v23, 2u);
    }

    v8 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    [v8 disconnectUserInitiated];
  }

  v9 = [(TVRUIRemoteViewController *)self deviceQuery];
  v10 = [v9 hasStarted];

  if (v10)
  {
    v11 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Stopping device query", &v23, 2u);
    }

    v12 = [(TVRUIRemoteViewController *)self deviceQuery];
    [v12 stop];

    [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
  }

  [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:0 completion:0];
  v13 = [(TVRUIRemoteViewController *)self sharingClient];

  if (v13)
  {
    v14 = [(TVRUIRemoteViewController *)self sharingClient];
    [v14 invalidate];

    [(TVRUIRemoteViewController *)self setSharingClient:0];
    v15 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "Invalidated sharing client", &v23, 2u);
    }
  }

  v16 = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (v16)
  {
    v17 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v17 resetSelectedDevice];

    if (+[TVRUIFeatures corianderEnabled])
    {
      v18 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [v18 setSuggestedDevices:MEMORY[0x277CBEBF8]];
    }

    v19 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v19 setDevices:MEMORY[0x277CBEBF8]];

    v20 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v20 collapseDeviceList];
  }

  v21 = [(TVRUIRemoteViewController *)self networkObserver];

  if (v21)
  {
    [(TVRUIRemoteViewController *)self setNetworkObserver:0];
  }

  [(TVRUIRemoteViewController *)self setSupportsVolumeControl:0];
  [(TVRUIRemoteViewController *)self _toggleControlAvailability];
  v22 = [(TVRUIRemoteViewController *)self siriManager];
  [v22 unregisterForSiriEvents];

  [(TVRUIRemoteViewController *)self setConfigured:0];
  [(TVRUIRemoteViewController *)self _logSessionStatistics];
}

- (void)fetchPreferredDevice
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D6C520] sharedInstance];
  v4 = [v3 preferredDevice];
  [(TVRUIRemoteViewController *)self setPreferredDevice:v4];

  v5 = [(TVRUIRemoteViewController *)self preferredDevice];

  v6 = _TVRUIViewControllerLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(TVRUIRemoteViewController *)self preferredDevice];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Found preferredDevice %@", &v9, 0xCu);
    }
  }

  else if (v7)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "No preferredDevice found", &v9, 2u);
  }
}

- (void)_connectToDevice:(id)a3 connectionContext:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TVRUIRemoteViewController *)self _stringForConnectionContext:a4];
    v16 = 138543618;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Requesting connect to device=%{public}@ with connectionContext:%@", &v16, 0x16u);
  }

  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
  [(TVRUIRemoteViewController *)self _cancelShowConnectingSpinner];
  [(TVRUIRemoteViewController *)self performSelector:sel__showConnectingSpinner withObject:0 afterDelay:0.7];
  [v6 setDelegate:self];
  [v6 connectWithConnectionContext:a4];
  v9 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 name];

    if (v11)
    {
      v12 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [v12 setDevice:v6];

      v13 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      v14 = [v13 isDevicePickerShowing];

      if (v14)
      {
        v15 = [(TVRUIRemoteViewController *)self devicePickerViewController];
        [v15 collapseDeviceList];
      }
    }
  }
}

- (void)_updateControlsAppearance
{
  v3 = [(TVRUIRemoteViewController *)self isInReducedBacklightMode];
  if ([(TVRUIRemoteViewController *)self isInReducedBacklightMode])
  {
    v4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v4 collapseDeviceList];
  }

  v5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  v6 = [v5 isDevicePickerShowing];

  if ((v6 & 1) == 0)
  {
    v7 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v7 setEnabled:!v3];
  }

  v8 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v8 setEnabled:!v3];

  v9 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  [v9 setEnabled:!v3];

  [(TVRUIRemoteViewController *)self _toggleControlAvailability];
  if ([(TVRUIRemoteViewController *)self isInReducedBacklightMode])
  {
    if ([(TVRUIRemoteViewController *)self hasPresentedContent])
    {
      v10 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Dismissing presented content", buf, 2u);
      }

      [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:0 completion:0];
    }
  }

  else if ([(TVRUIRemoteViewController *)self isEditingSessionActive])
  {
    v11 = [(TVRUIRemoteViewController *)self keyboardController];

    if (!v11)
    {
      v12 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Launching keyboard view controller", v14, 2u);
      }

      [(TVRUIRemoteViewController *)self keyboardRequested];
    }
  }

  if ([(TVRUIRemoteViewController *)self isInReducedBacklightMode])
  {
    v13 = [(TVRUIRemoteViewController *)self nowPlayingController];
    [v13 dismissModalUI];
  }
}

- (void)_toggleControlAvailability
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TVRUIRemoteViewController *)self activeDevice];
    v5 = [v4 identifier];
    v6 = [(TVRUIRemoteViewController *)self activeDevice];
    v11 = 138543618;
    v12 = v5;
    v13 = 1024;
    v14 = [v6 isConnected];
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Toggling control panel controls. active device %{public}@. isConnected %d", &v11, 0x12u);
  }

  v7 = [(TVRUIRemoteViewController *)self activeDevice];
  if (v7)
  {
    v8 = [(TVRUIRemoteViewController *)self activeDevice];
    v9 = [v8 isConnected];

    if (v9)
    {
      v7 = [(TVRUIRemoteViewController *)self isInReducedBacklightMode]^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [v10 setEnabled:v7];
}

- (void)_startDeviceQueryThresholdTimer
{
  objc_initWeak(&location, self);
  if (self->_deviceQueryThresholdBlock)
  {
    if ([(TVRUIRemoteViewController *)self deviceQueryThresholdReached])
    {
      v3 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Unable to cancel deviceQueryThresholdTimer as the query threshold was reached", buf, 2u);
      }
    }

    else
    {
      [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TVRUIRemoteViewController__startDeviceQueryThresholdTimer__block_invoke;
  block[3] = &unk_279D87F18;
  objc_copyWeak(&v15, &location);
  v4 = dispatch_block_create(0, block);
  deviceQueryThresholdBlock = self->_deviceQueryThresholdBlock;
  self->_deviceQueryThresholdBlock = v4;

  v6 = [MEMORY[0x277D6C520] sharedInstance];
  [v6 preferredDeviceSearchTimeout];
  v8 = v7;

  v9 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Started deviceQueryThresholdTimer", buf, 2u);
  }

  v10 = dispatch_time(0, (v8 * 1000000000.0));
  v11 = MEMORY[0x277D85CD0];
  v12 = [(TVRUIRemoteViewController *)self deviceQueryThresholdBlock];
  v13 = MEMORY[0x277D85CD0];
  dispatch_after(v10, MEMORY[0x277D85CD0], v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __60__TVRUIRemoteViewController__startDeviceQueryThresholdTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDeviceQueryThresholdReached:1];
    v3 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Query threshold reached", v7, 2u);
    }

    [v2 _connectToMostRelevantDevice];
    v4 = [MEMORY[0x277D6C4B8] sharedInstance];
    v5 = [v2 devicePickerViewController];
    v6 = [v5 devices];
    [v4 logDeviceQueryCount:{objc_msgSend(v6, "count")}];
  }
}

- (void)_stopDeviceQueryThresholdTimer
{
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Stopping deviceQueryThresholdTimer", v7, 2u);
  }

  v4 = [(TVRUIRemoteViewController *)self deviceQueryThresholdBlock];

  if (v4)
  {
    v5 = [(TVRUIRemoteViewController *)self deviceQueryThresholdBlock];
    dispatch_block_cancel(v5);

    deviceQueryThresholdBlock = self->_deviceQueryThresholdBlock;
    self->_deviceQueryThresholdBlock = 0;
  }

  [(TVRUIRemoteViewController *)self setDeviceQueryThresholdReached:0];
}

- (void)_connectToMostRelevantDevice
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to connect to the most relevant device", buf, 2u);
  }

  if (![(TVRUIRemoteViewController *)self deviceQueryThresholdReached])
  {
    v9 = _TVRUIViewControllerLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v15 = "Query threshold not reached. Ignoring call";
    v16 = v9;
    v17 = 2;
LABEL_15:
    _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    goto LABEL_28;
  }

  v4 = [(TVRUIRemoteViewController *)self deviceQuery];
  if (!v4 || (v5 = v4, -[TVRUIRemoteViewController deviceQuery](self, "deviceQuery"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasStarted], v6, v5, (v7 & 1) == 0))
  {
    v9 = _TVRUIViewControllerLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v46 = "[TVRUIRemoteViewController _connectToMostRelevantDevice]";
    v15 = "%s - deviceQuery was invalidated";
    v16 = v9;
    v17 = 12;
    goto LABEL_15;
  }

  v8 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  v9 = [v8 devices];

  v10 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    *buf = 134217984;
    v46 = v11;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Query threshold reached. Queried devices count: %ld", buf, 0xCu);
  }

  v12 = [(TVRUIRemoteViewController *)self activeDevice];
  if (v12 || [v9 count]!= 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = [v9 objectAtIndexedSubscript:0];
    v14 = [v13 isPaired];
  }

  v18 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v46) = v14;
    _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, "Query threshold reached. canAutoconnect to single device = %d", buf, 8u);
  }

  if (v14)
  {
    v19 = [v9 objectAtIndexedSubscript:0];
    [(TVRUIRemoteViewController *)self setActiveDevice:v19];

    v20 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(TVRUIRemoteViewController *)self activeDevice];
      *buf = 138543362;
      v46 = v21;
      _os_log_impl(&dword_26CFEB000, v20, OS_LOG_TYPE_DEFAULT, "[Autoconnect] Updated active device to: %{public}@", buf, 0xCu);
    }

    v22 = [(TVRUIRemoteViewController *)self activeDevice];
    [(TVRUIRemoteViewController *)self _connectToDevice:v22 connectionContext:3];
LABEL_27:

    goto LABEL_28;
  }

  v23 = [(TVRUIRemoteViewController *)self activeDevice];
  if (v23 || ![v9 count])
  {

    goto LABEL_25;
  }

  v27 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  v28 = [v27 isDevicePickerShowing];

  if (v28)
  {
LABEL_25:
    v22 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(TVRUIRemoteViewController *)self activeDevice];
      v25 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      v26 = [v25 isDevicePickerShowing];
      *buf = 138412546;
      v46 = v24;
      v47 = 1024;
      v48 = v26;
      _os_log_impl(&dword_26CFEB000, v22, OS_LOG_TYPE_DEFAULT, "Failed to find a relevant TV. Active device :%@ isShowingDevicePicker: %d", buf, 0x12u);
    }

    goto LABEL_27;
  }

  if (!+[TVRUIFeatures corianderEnabled])
  {
    v34 = _TVRUIViewControllerLog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
LABEL_44:

      [(TVRUIRemoteViewController *)self _expandDeviceList];
      goto LABEL_28;
    }

    *buf = 0;
    v35 = "Showing device picker after query threshold reached";
LABEL_43:
    _os_log_impl(&dword_26CFEB000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
    goto LABEL_44;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v9;
  v29 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
LABEL_34:
    v32 = 0;
    while (1)
    {
      if (*v42 != v31)
      {
        objc_enumerationMutation(v9);
      }

      v33 = *(*(&v41 + 1) + 8 * v32);
      if ([v33 classification] == 1)
      {
        break;
      }

      if (v30 == ++v32)
      {
        v30 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v30)
        {
          goto LABEL_34;
        }

        goto LABEL_40;
      }
    }

    v22 = v33;
    v36 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v22;
      _os_log_impl(&dword_26CFEB000, v36, OS_LOG_TYPE_DEFAULT, "Found suggested device to auto select: %@", buf, 0xCu);
    }

    if (v22)
    {
      v37 = _TVRUIIRLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v22;
        _os_log_impl(&dword_26CFEB000, v37, OS_LOG_TYPE_DEFAULT, "Query threshold reached. Attempting to connect to suggested device: %@", buf, 0xCu);
      }

      [(TVRUIRemoteViewController *)self _selectDevice:v22 withConnectionContext:3];
      goto LABEL_27;
    }
  }

  else
  {
LABEL_40:
  }

  v38 = [(TVRUIRemoteViewController *)self preferredDevice];

  if (!v38)
  {
    v34 = _TVRUIViewControllerLog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v35 = "Query threshold reached. Showing device picker";
    goto LABEL_43;
  }

  v39 = _TVRUIIRLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [(TVRUIRemoteViewController *)self preferredDevice];
    *buf = 138412290;
    v46 = v40;
    _os_log_impl(&dword_26CFEB000, v39, OS_LOG_TYPE_DEFAULT, "Query threshold reached. Attempting to connect to last selected device: %@", buf, 0xCu);
  }

  [(TVRUIRemoteViewController *)self _connectToPreferredDeviceFromDeviceList:v9];
LABEL_28:
}

- (void)deviceBeganConnecting:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "UI device callback - began connecting %{public}@", &v5, 0xCu);
  }
}

- (void)deviceDidConnect:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "UI Device callback - did connect %{public}@. Now messaging child view controllers", buf, 0xCu);
  }

  v6 = [(TVRUIRemoteViewController *)self activeDevice];
  v7 = [v6 isEqualToDevice:v4];

  if (v7)
  {
    v8 = [(TVRUIRemoteViewController *)self activeDevice];
    v9 = [v8 name];
    v10 = [v9 length];

    if (!v10)
    {
      v11 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(TVRUIRemoteViewController *)self activeDevice];
        *buf = 138543618;
        v36 = v4;
        v37 = 2114;
        v38 = v12;
        _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Updating active device to: %{public}@ from: %{public}@", buf, 0x16u);
      }

      [(TVRUIRemoteViewController *)self setActiveDevice:v4];
    }

    v13 = [(TVRUIRemoteViewController *)self deviceObservers];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __46__TVRUIRemoteViewController_deviceDidConnect___block_invoke;
    v34[3] = &unk_279D88DB0;
    v34[4] = self;
    [v13 enumerateObjectsUsingBlock:v34];

    v14 = [v4 identifier];
    [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:v14];

    v15 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(TVRUIRemoteViewController *)self activeDevice];
      v17 = [v16 name];
      v18 = [(TVRUIRemoteViewController *)self activeDevice];
      v19 = [v18 identifier];
      *buf = 138543618;
      v36 = v17;
      v37 = 2114;
      v38 = v19;
      _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "Active device did connect name: %{public}@ identifier: %{public}@", buf, 0x16u);
    }
  }

  v20 = [(TVRUIRemoteViewController *)self authenticatingDevice];
  v21 = [v4 isEqualToDevice:v20];

  if (v21)
  {
    [(TVRUIRemoteViewController *)self setAuthenticatingDevice:0];
  }

  v22 = [(TVRUIRemoteViewController *)self deviceConnectionStatusDelegate];
  [v22 deviceDidConnect];

  if ([(TVRUIRemoteViewController *)self shouldStartFindingSession])
  {
    [(TVRUIRemoteViewController *)self _startFindingSessionForDevice:v4];
    [(TVRUIRemoteViewController *)self setShouldStartFindingSession:0];
  }

  [(TVRUIRemoteViewController *)self _toggleControlAvailability];
  [(TVRUIRemoteViewController *)self _hideMessageContent];
  [(TVRUIRemoteViewController *)self _cancelShowConnectingSpinner];
  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
  [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
  v23 = [(TVRUIRemoteViewController *)self activeDevice];
  -[TVRUIRemoteViewController setSupportsVolumeControl:](self, "setSupportsVolumeControl:", [v23 supportsVolumeControl]);

  v24 = [(TVRUIRemoteViewController *)self activeDevice];
  v25 = [v24 supportsLaunchingApplications];

  if ((v25 & 1) == 0)
  {
    [(TVRUIRemoteViewController *)self _disableSearch];
  }

  v26 = [(TVRUIRemoteViewController *)self activeDevice];
  v27 = [v26 supportsDonatingIntents];

  if (v27)
  {
    v28 = [(TVRUIRemoteViewController *)self activeDevice];
    v29 = [v28 identifier];
    v30 = [(TVRUIRemoteViewController *)self activeDevice];
    v31 = [v30 name];
    [TVRUIIntentManager donateIntentsForDeviceWithID:v29 name:v31];
  }

  v32 = [(TVRUIRemoteViewController *)self activeDevice];
  if (![v32 supportsTouchEvents])
  {
    goto LABEL_22;
  }

  v33 = _AXSAppleTVRemoteUsesSimpleGestures();

  if (v33)
  {
    v32 = [(TVRUIRemoteViewController *)self sessionData];
    [v32 setDirectionalControlsEnabled:1];
LABEL_22:
  }

  [(TVRUIRemoteViewController *)self _enableTVRemoteOnLockscreen:1];
  [(TVRUIRemoteViewController *)self _layoutTouchpadExpanded:0];
}

- (void)deviceDidDisconnect:(id)a3 reason:(int64_t)a4 error:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(TVRUIRemoteViewController *)self isNetworkReachable];
  v11 = _TVRUIViewControllerLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [(TVRUIRemoteViewController *)self activeDevice];
      v14 = [(TVRUIRemoteViewController *)self authenticatingDevice];
      *buf = 138413314;
      v34 = v8;
      v35 = 2048;
      v36 = a4;
      v37 = 2114;
      v38 = v9;
      v39 = 2112;
      v40 = v13;
      v41 = 2112;
      v42 = v14;
      _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Device disconnected - %@. Reason %ld. Error %{public}@. ActiveDevice %@, Auth Device %@", buf, 0x34u);
    }

    v15 = [(TVRUIRemoteViewController *)self activeDevice];
    v16 = [v8 isEqualToDevice:v15];

    if (v16)
    {
      v17 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "Current device disconnected", buf, 2u);
      }

      [(TVRUIRemoteViewController *)self _resetActiveDevice];
      v18 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [v18 resetSelectedDevice];

      v19 = [(TVRUIRemoteViewController *)self siriManager];
      [v19 unregisterForSiriEvents];

      v20 = [(TVRUIRemoteViewController *)self authenticatingDevice];
      if ([v8 isEqualToDevice:v20])
      {
        v21 = [(TVRUIRemoteViewController *)self isNetworkReachable];

        if (v21)
        {
          v22 = _TVRUIViewControllerLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CFEB000, v22, OS_LOG_TYPE_DEFAULT, "Authenticating device disconnected", buf, 2u);
          }

          v23 = [(TVRUIRemoteViewController *)self authenticatingDevice];
          [v23 cancelAuthenitcationChallenge];

          [(TVRUIRemoteViewController *)self setAuthenticatingDevice:0];
          [(TVRUIRemoteViewController *)self _resetActiveDevice];
        }
      }

      else
      {
      }

      objc_initWeak(buf, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __62__TVRUIRemoteViewController_deviceDidDisconnect_reason_error___block_invoke;
      v31[3] = &unk_279D87F18;
      objc_copyWeak(&v32, buf);
      [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:1 completion:v31];
      if (a4)
      {
        v25 = v9 == 0;
      }

      else
      {
        v25 = 1;
      }

      v24 = !v25;
      if (!v25)
      {
        [(TVRUIRemoteViewController *)self _hideMessageContent];
        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showConnectingSpinner object:0];
        v26 = _TVRUIViewControllerLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&dword_26CFEB000, v26, OS_LOG_TYPE_DEFAULT, "Hiding existing message content and canceling connecting spinner selector", v30, 2u);
        }

        [(TVRUIRemoteViewController *)self showMessageWithError:v9 andDevice:v8];
      }

      [(TVRUIRemoteViewController *)self _toggleControlAvailability];
      [(TVRUIRemoteViewController *)self setSupportsVolumeControl:0];
      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }

    else
    {
      v24 = 0;
    }

    v27 = [(TVRUIRemoteViewController *)self deviceConnectionStatusDelegate];
    [v27 deviceDidDisconnect];

    [(TVRUIRemoteViewController *)self _cancelShowConnectingSpinner];
    [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
    if (v16)
    {
      v28 = [(TVRUIRemoteViewController *)self activeDevice];
      if (v28)
      {
      }

      else if (((v24 | ![(TVRUIRemoteViewController *)self isNetworkReachable]) & 1) == 0)
      {
        v29 = _TVRUIViewControllerLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_DEFAULT, "Expanding picker since we got a disconnect message and no device is currently connected", buf, 2u);
        }

        [(TVRUIRemoteViewController *)self _expandDeviceList];
      }
    }
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Device disconnected but we are not connected to WiFi. Ignoring disconnection", buf, 2u);
    }
  }
}

void __62__TVRUIRemoteViewController_deviceDidDisconnect_reason_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[144];
    WeakRetained[144] = 0;
    v4 = WeakRetained;

    v3 = v4[145];
    v4[145] = 0;

    WeakRetained = v4;
  }
}

- (void)device:(id)a3 beganTextEditingWithAttributes:(id)a4 initialText:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(TVRUIRemoteViewController *)self activeDevice];
    v13 = [(TVRUIRemoteViewController *)self sharingClient];
    v18 = 138413058;
    v19 = self;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2048;
    v25 = [v9 length];
    _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "%@ RemoteViewCtrl received callback to present keyboard. Active Device %@. Sharing client %@ text length: %lu", &v18, 0x2Au);
  }

  v14 = [(TVRUIRemoteViewController *)self activeDevice];
  v15 = [v10 isEqualToDevice:v14];

  if (v15 && [(TVRUIRemoteViewController *)self _shouldAllowKeyboardToBePresented])
  {
    if ([(TVRUIRemoteViewController *)self isInReducedBacklightMode])
    {
      v16 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, "undimming the screen", &v18, 2u);
      }

      SBSUndimScreen();
    }

    [(TVRUIRemoteViewController *)self setEditingSessionActive:1];
    v17 = [(TVRUIRemoteViewController *)self controlPanelViewController];
    [v17 showKeyboardButton];

    [(TVRUIRemoteViewController *)self _presentKeyboardWithAttributes:v8 initialText:v9];
  }
}

- (void)device:(id)a3 endedTextEditingWithAttributes:(id)a4 endingText:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v7;
    v15 = 2048;
    v16 = [v8 length];
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "RemoteViewCtrl received callback to end text editing for device %{public}@ text length: %lu", &v13, 0x16u);
  }

  v10 = [(TVRUIRemoteViewController *)self activeDevice];
  v11 = [v7 isEqualToDevice:v10];

  if (v11)
  {
    [(TVRUIRemoteViewController *)self setEditingSessionActive:0];
    v12 = [(TVRUIRemoteViewController *)self controlPanelViewController];
    [v12 hideKeyboardButton];

    [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:1 completion:0];
  }
}

- (void)device:(id)a3 didUpdateText:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = [v6 length];
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "RemoteViewCtrl received callback to update text of local device text field to newText.length: %lu", &v13, 0xCu);
  }

  v9 = [(TVRUIRemoteViewController *)self activeDevice];
  v10 = [v7 isEqualToDevice:v9];

  if (v10)
  {
    v11 = [(TVRUIRemoteViewController *)self keyboardController];

    if (v11)
    {
      v12 = [(TVRUIRemoteViewController *)self keyboardController];
      [v12 setText:v6];
    }
  }
}

- (void)device:(id)a3 didUpdateAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "RemoteViewCtrl received callback to update keyboard attributes", v13, 2u);
  }

  v9 = [(TVRUIRemoteViewController *)self activeDevice];
  v10 = [v7 isEqualToDevice:v9];

  if (v10)
  {
    v11 = [(TVRUIRemoteViewController *)self keyboardController];

    if (v11)
    {
      v12 = [(TVRUIRemoteViewController *)self keyboardController];
      [v12 setKeyboardAttributes:v6];
    }
  }
}

- (void)deviceDidEncounterAuthenticationChallenge:(id)a3 passwordType:(unint64_t)a4 passcode:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "RemoteViewCtrl received authentication challenge for device %@", &v16, 0xCu);
  }

  [(TVRUIRemoteViewController *)self setAuthenticatingDevice:v8];
  v11 = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (v11)
  {
    v12 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v12 setDevice:v8];
  }

  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
  switch(a4)
  {
    case 2uLL:
      v15 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "Challenge is legacy password type", &v16, 2u);
      }

      [(TVRUIRemoteViewController *)self _presentLegacyPairingAlertWithCode:v9];
      break;
    case 1uLL:
      v14 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Challenge is text password type", &v16, 2u);
      }

      [(TVRUIRemoteViewController *)self _presentTextPasswordAlert];
      break;
    case 0uLL:
      v13 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Challenge is pin password type", &v16, 2u);
      }

      [(TVRUIRemoteViewController *)self _presentPairingAlert];
      break;
  }
}

- (void)device:(id)a3 didEncounterAuthenticationThrottle:(int64_t)a4
{
  [(TVRUIRemoteViewController *)self _cancelShowConnectingSpinner:a3];
  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];

  [(TVRUIRemoteViewController *)self showThrottleConnectMessage];
}

- (void)device:(id)a3 needsMediaControls:(id)a4
{
  v5 = _TVRUIButtonLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device needs media controls", v7, 2u);
  }

  [(TVRUIRemoteViewController *)self _enableMediaControls:1 animated:1];
  v6 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v6 setMediaControlsAreVisible:1];
}

- (void)device:(id)a3 hidesMediaControls:(id)a4
{
  v5 = _TVRUIButtonLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device hides media controls", v7, 2u);
  }

  [(TVRUIRemoteViewController *)self _enableMediaControls:0 animated:1];
  v6 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v6 setMediaControlsAreVisible:0];
}

- (void)device:(id)a3 hasCaptionsEnabled:(BOOL)a4
{
  v4 = a4;
  if (([a3 supportsDirectCaptionQueries] & 1) == 0)
  {
    v6 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    [v6 updateCaptionState:v4 buttonDisabled:0];
  }
}

- (void)_enableMediaControls:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(TVRUIRemoteViewController *)self mediaControlsViewController:a3];
  [v6 setEnabled:v4];

  v7 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  v8 = [v7 availableButtons] & 4;

  v9 = v8;
  if (v4)
  {
    v10 = [(TVRUIRemoteViewController *)self activeDevice];
    v11 = [v10 supportsCaptionsToggle];

    v12 = 9;
    if (v11)
    {
      v12 = 11;
    }

    v9 = v12 | v8;
    v13 = [(TVRUIRemoteViewController *)self activeDevice];
    if ([v13 supportsDirectCaptionQueries])
    {
      v14 = [(TVRUIRemoteViewController *)self nowPlayingController];
      v15 = [v14 nowPlayingInfo];
      v16 = [v15 hasValidCaptionOptions];
      if (v16)
      {
        v17 = [(TVRUIRemoteViewController *)self nowPlayingController];
        v18 = [v17 nowPlayingInfo];
        v19 = [v18 hasValidCaptionOptions];
        v25 = v14;
        v20 = [v19 BOOLValue] ^ 1;

        v21 = v20;
        v14 = v25;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        v22 = v8 | 9;
      }

      else
      {
        v22 = v9;
      }
    }

    else
    {

      v22 = v9;
    }

    v23 = [(TVRUIRemoteViewController *)self nowPlayingController];
    v24 = [v23 capellaInfoAvailable];

    if (v24)
    {
      v8 = v22;
    }

    else
    {
      v8 = v22 & 7;
    }
  }

  v26 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  [v26 setAvailableButtons:v9 enabledButtons:v8];
}

- (void)_updateInfoButtonState
{
  v3 = [(TVRUIRemoteViewController *)self nowPlayingController];
  v4 = [v3 nowPlayingInfo];

  if (v4)
  {
    v6 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    v5 = [(TVRUIRemoteViewController *)self nowPlayingController];
    [v6 updateButton:8 enabled:{objc_msgSend(v5, "capellaInfoAvailable")}];
  }
}

- (void)_enableLiveTVButtons:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(TVRUIRemoteViewController *)self mediaControlsViewController:a3];
  v7 = [v6 availableButtons];

  v8 = _AXSAppleTVRemoteForceLiveTVButtons();
  v9 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 67109376;
    v18[1] = v4;
    v19 = 1024;
    v20 = v8 != 0;
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Live tv buttons enable:%{BOOL}d, forceShowLiveTVButtons:%{BOOL}d", v18, 0xEu);
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4;
  }

  v11 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  v12 = [v11 availableButtons] & 0xFFFFFFFFFFFFFFFBLL;

  v13 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  v14 = [v13 enabledButtons] & 0xFFFFFFFFFFFFFFFBLL;

  if (v10)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  [v16 setAvailableButtons:v12 | v15 enabledButtons:v14 | v15];

  v17 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v17 setMediaControlsAreVisible:(v10 | (v7 >> 3)) & 1];
}

- (void)connectionServiceDidInvalidate:(id)a3
{
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Connection service invalidate notification received. Dispatching cleanup", buf, 2u);
  }

  objc_initWeak(buf, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__TVRUIRemoteViewController_connectionServiceDidInvalidate___block_invoke;
  v5[3] = &unk_279D87AE0;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __60__TVRUIRemoteViewController_connectionServiceDidInvalidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained[126])
  {
    [WeakRetained _resetActiveDevice];
  }

  if (v3[127])
  {
    v4 = [TVRUIDeviceFactory deviceWithIdentifier:?];
    v5 = v3[126];
    v3[126] = v4;
  }

  [v3 dismissPresentedContentAnimated:1 completion:0];
  v6 = v3[129];
  if (v6)
  {
    [v6 stop];
    v7 = v3[129];
    v3[129] = 0;

    v8 = [v3 devicePickerViewController];
    [v8 setDevices:MEMORY[0x277CBEBF8]];

    if (+[TVRUIFeatures corianderEnabled])
    {
      v9 = [v3 devicePickerViewController];
      [v9 setSuggestedDevices:MEMORY[0x277CBEBF8]];
    }

    v10 = +[TVRUIDeviceQuery deviceQuery];
    v11 = v3[129];
    v3[129] = v10;

    v12 = v3[129];
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__TVRUIRemoteViewController_connectionServiceDidInvalidate___block_invoke_2;
    v15[3] = &unk_279D88D88;
    v15[4] = v3;
    [v12 startQuery:v13 completionHandler:v15];
  }

  v14 = v3[126];
  if (v14)
  {
    [v3 _connectToDevice:v14 connectionContext:0];
  }
}

uint64_t __60__TVRUIRemoteViewController_connectionServiceDidInvalidate___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _startDeviceQueryThresholdTimer];
  }

  return result;
}

- (void)deviceInfoUpdated:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [v5 setDevice:v4];
}

- (void)deviceListUpdated:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device list updated: %{public}@", buf, 0xCu);
  }

  v6 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [v6 setDevices:v4];

  v7 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  v8 = [v7 isDevicePickerShowing];

  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__TVRUIRemoteViewController_deviceListUpdated___block_invoke;
    v10[3] = &unk_279D87C20;
    v10[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v10 animations:0.15];
  }

  if (+[TVRUIFeatures corianderEnabled])
  {
    if ([(TVRUIRemoteViewController *)self deviceQueryThresholdReached])
    {
      v9 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Query threshold reached. Attempting to the most relevant device from the updated device list", buf, 2u);
      }

      [(TVRUIRemoteViewController *)self _connectToMostRelevantDevice];
    }
  }

  else
  {
    [(TVRUIRemoteViewController *)self _connectToPreferredDeviceFromDeviceList:v4];
  }
}

void __47__TVRUIRemoteViewController_deviceListUpdated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutTouchpadExpanded:1];
  v2 = [*(a1 + 32) devicePickerViewController];
  [v2 _updateTableFrame:1];
}

- (void)_connectToPreferredDeviceFromDeviceList:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TVRUIRemoteViewController *)self preferredDevice];
  if (v5)
  {
    v6 = v5;
    v7 = [(TVRUIRemoteViewController *)self activeDevice];
    if (v7 || ([(TVRUIRemoteViewController *)self activeDeviceIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v8 = [v4 count];

      if (v8)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v9 = v4;
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v28 + 1) + 8 * i);
              v15 = [(TVRUIRemoteViewController *)self preferredDevice];
              v16 = [v15 identifier];
              v17 = [v14 hasIdentifier:v16];

              if (v17)
              {
                v18 = _TVRUIViewControllerLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v33 = v14;
                  _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, "Connecting to last selected device: %@", buf, 0xCu);
                }

                [(TVRUIRemoteViewController *)self setActiveDevice:v14];
                v19 = _TVRUIViewControllerLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [(TVRUIRemoteViewController *)self activeDevice];
                  *buf = 138543362;
                  v33 = v20;
                  _os_log_impl(&dword_26CFEB000, v19, OS_LOG_TYPE_DEFAULT, "Updated active device to: %{public}@", buf, 0xCu);
                }

                v21 = [(TVRUIRemoteViewController *)self preferredDevice];
                v22 = [v21 identifier];
                [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:v22];

                [(TVRUIRemoteViewController *)self _connectToDevice:v14 connectionContext:3];
                goto LABEL_21;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:

        v23 = [(TVRUIRemoteViewController *)self activeDevice];

        v24 = _TVRUIViewControllerLog();
        v25 = v24;
        if (v23)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [(TVRUIRemoteViewController *)self preferredDevice];
            *buf = 138543362;
            v33 = v26;
            _os_log_impl(&dword_26CFEB000, v25, OS_LOG_TYPE_DEFAULT, "Found preferred device to connect %{public}@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [(TVRUIRemoteViewController *)self _connectToPreferredDeviceFromDeviceList:v9, v25];
          }

          v27 = _TVRUIViewControllerLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CFEB000, v27, OS_LOG_TYPE_DEFAULT, "Showing device picker as no preferred device was found", buf, 2u);
          }

          [(TVRUIRemoteViewController *)self _expandDeviceList];
        }
      }
    }
  }
}

- (void)suggestedDevices:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIIRLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Suggested devices %{public}@", buf, 0xCu);
  }

  if (+[TVRUIFeatures corianderEnabled])
  {
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__TVRUIRemoteViewController_suggestedDevices___block_invoke;
    v6[3] = &unk_279D87AE0;
    objc_copyWeak(&v8, buf);
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __46__TVRUIRemoteViewController_suggestedDevices___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained activeDevice];

    if (v4)
    {
      v5 = _TVRUIIRLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 activeDevice];
        *buf = 138543362;
        v26 = v6;
        _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Skipping auto select because a device is already active %{public}@", buf, 0xCu);
LABEL_19:
      }
    }

    else
    {
      if (![*(a1 + 32) count])
      {
        v16 = _TVRUIIRLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, "No suggested devices, attempting to connect to last selected TV", buf, 2u);
        }

        v5 = [v3 devicePickerViewController];
        v6 = [v5 devices];
        [v3 _connectToPreferredDeviceFromDeviceList:v6];
        goto LABEL_19;
      }

      v7 = [v3 devicePickerViewController];
      v8 = [v7 suggestedDevices];
      v9 = [v8 count];

      if (v9)
      {
LABEL_21:
        v17 = *(a1 + 32);
        v18 = [v3 devicePickerViewController];
        [v18 setSuggestedDevices:v17];

        goto LABEL_22;
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = *(a1 + 32);
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
LABEL_9:
        v14 = 0;
        while (1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          if ([v15 classification] == 1)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v12)
            {
              goto LABEL_9;
            }

            goto LABEL_15;
          }
        }

        v5 = v15;

        if (!v5)
        {
          goto LABEL_27;
        }

        v19 = _TVRUIIRLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = v5;
          _os_log_impl(&dword_26CFEB000, v19, OS_LOG_TYPE_DEFAULT, "Auto selecting %{public}@", buf, 0xCu);
        }

        [v3 _selectDevice:v5 withConnectionContext:3];
      }

      else
      {
LABEL_15:

LABEL_27:
        v5 = _TVRUIIRLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "No devices were classified as AutoPick", buf, 2u);
        }
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_selectDevice:(id)a3 withConnectionContext:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TVRUIRemoteViewController *)self _stringForConnectionContext:a4];
    v16 = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Selecting device: %{public}@ with connectionContext: %{public}@", &v16, 0x16u);
  }

  v9 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v9)
  {
    [(TVRUIRemoteViewController *)self _disconnectUserInitiatedAndModifyLockscreenAssertion:a4 != 1];
  }

  [(TVRUIRemoteViewController *)self setActiveDevice:v6];
  v10 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(TVRUIRemoteViewController *)self activeDevice];
    v16 = 138543362;
    v17 = v11;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Updated active device to: %{public}@", &v16, 0xCu);
  }

  v12 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v12 transitonToViewForDeviceType:0];

  v13 = [v6 identifier];
  [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:v13];

  v14 = [(TVRUIRemoteViewController *)self activeDevice];
  [v14 setDelegate:self];

  [(TVRUIRemoteViewController *)self _connectToDevice:v6 connectionContext:a4];
  v15 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [v15 collapseDeviceList];
}

- (void)devicePickerWillChangeState:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v4 = a3;
    v6 = 1.0;
    if (a3)
    {
      v7 = [(TVRUIRemoteViewController *)self delegate];
      [v7 devicePickerWillExpand];

      v6 = 0.0;
    }

    v8 = [(TVRUIRemoteViewController *)self messageView];
    [v8 setAlpha:v6];

    v9 = [(TVRUIRemoteViewController *)self touchpadViewController];
    [v9 setShowControls:v4 ^ 1];

    [(TVRUIRemoteViewController *)self _layoutTouchpadExpanded:v4];
  }
}

- (void)devicePickerTitleWasLongPressedForDevice:(id)a3
{
  v3 = [(TVRUIRemoteViewController *)self nowPlayingController];
  [v3 displayUpNext];
}

- (void)_showBluetoothDisabledAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TVRemoteUIBluetoothAlertTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  supportsSiri = self->_supportsSiri;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (supportsSiri)
  {
    v11 = @"TVRemoteUIBluetoothAlertSiriRemoteSubtitle";
  }

  else
  {
    v11 = @"TVRemoteUIBluetoothAlertAppleTVRemoteSubtitle";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_287E6AEF8 table:@"Localizable"];
  v13 = [v5 alertControllerWithTitle:v7 message:v12 preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"TVRemoteUIBluetoothAlertDefaultButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __71__TVRUIRemoteViewController__showBluetoothDisabledAlertWithCompletion___block_invoke;
  v29[3] = &unk_279D88098;
  v17 = v4;
  v30 = v17;
  v18 = [v14 actionWithTitle:v16 style:0 handler:v29];
  [v13 addAction:v18];

  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"TVRemoteUIBluetoothAlertAlternateButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __71__TVRUIRemoteViewController__showBluetoothDisabledAlertWithCompletion___block_invoke_2;
  v27 = &unk_279D88098;
  v28 = v17;
  v22 = v17;
  v23 = [v19 actionWithTitle:v21 style:0 handler:&v24];
  [v13 addAction:{v23, v24, v25, v26, v27}];

  [(TVRUIRemoteViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_turnOnBluetoothIfNeededWithCompletionBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TVRUIRemoteViewController *)self networkObserver];
  v6 = [v5 cbController];

  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [v6 bluetoothState];
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth State: %ld", buf, 0xCu);
  }

  v8 = [(TVRUIRemoteViewController *)self networkObserver];
  v9 = [v8 isBluetoothAvailable];

  if (v9)
  {
    v4[2](v4, 1, 0);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke;
    v10[3] = &unk_279D88B68;
    v11 = v6;
    v12 = v4;
    [(TVRUIRemoteViewController *)self _showBluetoothDisabledAlertWithCompletion:v10];
  }
}

void __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke_2;
    v5[3] = &unk_279D88E00;
    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 setPowerState:5 completion:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke_3;
  block[3] = &unk_279D88DD8;
  v4 = *(a1 + 32);
  v9 = v3 == 0;
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_presentKeyboardWithAttributes:(id)a3 initialText:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(TVRUIRemoteViewController *)self _shouldAllowKeyboardToBePresented])
  {
    v8 = [(TVRUIRemoteViewController *)self presentedViewController];
    if (v8)
    {
      v9 = v8;
      v10 = [(TVRUIRemoteViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = _TVRUIKeyboardLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [TVRUIRemoteViewController _presentKeyboardWithAttributes:initialText:];
        }

        v13 = [(TVRUIRemoteViewController *)self presentedViewController];
        [v13 dismissViewControllerAnimated:0 completion:0];
      }
    }

    v14 = _TVRUIKeyboardLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(TVRUIRemoteViewController *)self activeDevice];
      if (v15)
      {
        v16 = @"true";
      }

      else
      {
        v16 = @"false";
      }

      v17 = [(TVRUIRemoteViewController *)self isSiriSessionActive];
      v18 = [(TVRUIRemoteViewController *)self presentedViewController];
      v19 = [(TVRUIRemoteViewController *)self keyboardController];
      v27 = 138544386;
      v28 = v16;
      v29 = 1024;
      *v30 = v17;
      *&v30[4] = 2114;
      *&v30[6] = v7;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Keyboard presentation allowed activeDevice: %{public}@, siriSessionActive: %{BOOL}d, text: %{public}@, presentedViewController: %@, keyboardController: %@", &v27, 0x30u);
    }

    v20 = [TVRAlertController alloc];
    v21 = [(TVRUIRemoteViewController *)self styleProvider];
    v22 = [(TVRAlertController *)v20 initWithKeyboardAttributes:v6 styleProvider:v21];

    [v22 setDelegate:self];
    [v22 setText:v7];
    [(TVRKeyboardHaptic *)self->_keyboardHaptic play];
    [(TVRUIRemoteViewController *)self setKeyboardController:v22];
    [(TVRUIRemoteViewController *)self setDefinesPresentationContext:1];
    [(TVRUIRemoteViewController *)self presentViewController:v22 animated:1 completion:0];
    v23 = [(TVRUIRemoteViewController *)self sessionData];
    [v23 setUsedRTI:1];

    v24 = _TVRUIKeyboardLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(TVRUIRemoteViewController *)self presentedViewController];
      v27 = 138412546;
      v28 = v22;
      v29 = 2112;
      *v30 = v25;
      _os_log_impl(&dword_26CFEB000, v24, OS_LOG_TYPE_DEFAULT, "presented keyboard controller %@ %@", &v27, 0x16u);
    }

    goto LABEL_19;
  }

  v22 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(TVRUIRemoteViewController *)self activeDevice];
    if (v24)
    {
      v26 = @"true";
    }

    else
    {
      v26 = @"false";
    }

    v27 = 138543618;
    v28 = v26;
    v29 = 1024;
    *v30 = [(TVRUIRemoteViewController *)self isSiriSessionActive];
    _os_log_impl(&dword_26CFEB000, v22, OS_LOG_TYPE_DEFAULT, "Keyboard presentation suppressed activeDevice: %{public}@, siriSessionActive: %{BOOL}d", &v27, 0x12u);
LABEL_19:
  }
}

- (void)_presentTextPasswordAlert
{
  v3 = [TVRAlertController alloc];
  v4 = [(TVRUIRemoteViewController *)self styleProvider];
  v5 = [v4 textForPairingPasswordAlert];
  v6 = [(TVRAlertController *)v3 initForTextPasswordType:v5];

  [v6 setDelegate:self];
  [v6 setText:&stru_287E6AEF8];
  [(TVRKeyboardHaptic *)self->_keyboardHaptic play];
  [(TVRUIRemoteViewController *)self setAuthenticationAlertController:v6];
  [(TVRUIRemoteViewController *)self setDefinesPresentationContext:1];
  [(TVRUIRemoteViewController *)self presentViewController:v6 animated:1 completion:0];
  v7 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Presented keyboard controller for alphanumeric pin", v8, 2u);
  }
}

- (void)_presentPairingAlert
{
  v3 = [TVRAlertController alloc];
  v4 = [(TVRUIRemoteViewController *)self styleProvider];
  v5 = [v4 textForPairingAlert];
  v6 = [(TVRAlertController *)v3 initWithTitle:v5 passcodeSize:4];

  [(TVRAlertController *)v6 setDelegate:self];
  [(TVRUIRemoteViewController *)self setAuthenticationAlertController:v6];
  [(TVRUIRemoteViewController *)self setDefinesPresentationContext:1];
  [(TVRUIRemoteViewController *)self presentViewController:v6 animated:1 completion:0];
  v7 = [(TVRUIRemoteViewController *)self sessionData];
  [v7 setRequiredPairing:1];

  v8 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Presented controller for pin", v9, 2u);
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4
{
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v5 = MEMORY[0x277D750F8];
  v6 = [(TVRUIRemoteViewController *)self styleProvider];
  v7 = [v6 textForDeviceLockoutAlert];
  v8 = [v5 actionWithTitle:v7 style:1 handler:0];
  [v9 addAction:v8];

  [(TVRUIRemoteViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_cancelPairing
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "User requested to cancel pairing for authentication device %@", &v11, 0xCu);
  }

  v5 = [(TVRUIRemoteViewController *)self authenticatingDevice];

  if (v5)
  {
    v6 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    [v6 cancelAuthenitcationChallenge];

    [(TVRUIRemoteViewController *)self setAuthenticatingDevice:0];
    v7 = [(TVRUIRemoteViewController *)self activeDevice];

    if (v7)
    {
      v8 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      v9 = [(TVRUIRemoteViewController *)self activeDevice];
      v10 = [v9 name];
      [v8 setTitle:v10];
    }

    else
    {
      [(TVRUIRemoteViewController *)self _expandDeviceList];
    }
  }
}

- (BOOL)hasPresentedContent
{
  v3 = [(TVRUIRemoteViewController *)self keyboardController];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TVRUIRemoteViewController *)self authenticationAlertController];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TVRUIRemoteViewController *)self presentedViewController];
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to dismiss presented content: %@", &v16, 0xCu);
  }

  v9 = [(TVRUIRemoteViewController *)self keyboardController];

  if (v9)
  {
    v10 = _TVRUIKeyboardLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(TVRUIRemoteViewController *)self keyboardController];
      v12 = [(TVRUIRemoteViewController *)self presentedViewController];
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Dismissed presented keyboard controller:%@, presented:%@", &v16, 0x16u);
    }

    v13 = [(TVRUIRemoteViewController *)self keyboardController];
    [v13 dismissViewControllerAnimated:v4 completion:v6];
    [(TVRUIRemoteViewController *)self setKeyboardController:0];
LABEL_11:

    goto LABEL_12;
  }

  v14 = [(TVRUIRemoteViewController *)self authenticationAlertController];

  if (v14)
  {
    v13 = [(TVRUIRemoteViewController *)self authenticationAlertController];
    [v13 dismissViewControllerAnimated:v4 completion:v6];
    [(TVRUIRemoteViewController *)self setAuthenticationAlertController:0];
    [(TVRUIRemoteViewController *)self _cancelPairing];
    v15 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "Dismissed presented authentication controller", &v16, 2u);
    }

    goto LABEL_11;
  }

  if (v6)
  {
    v6[2](v6);
  }

LABEL_12:
}

- (void)alertController:(id)a3 enteredText:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(TVRUIRemoteViewController *)self authenticatingDevice];
  if (v7 && ![v12 type])
  {
    v10 = [v6 length];

    if (v10 == 4)
    {
      v11 = [(TVRUIRemoteViewController *)self authenticatingDevice];
      [v11 sendAuthenticationCode:v6];

      [v12 dismissViewControllerAnimated:1 completion:0];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v6 && v8)
  {
    v9 = [(TVRUIRemoteViewController *)self activeDevice];
    [v9 sendText:v6];
  }

LABEL_9:
}

- (void)alertController:(id)a3 generatedTextInputPayload:(id)a4
{
  v5 = a4;
  v6 = [(TVRUIRemoteViewController *)self activeDevice];
  v8 = [v6 keyboardAttributes];

  [v8 setRtiDataPayload:v5];
  v7 = [(TVRUIRemoteViewController *)self activeDevice];
  [v7 sendTextInputPayload:v5];
}

- (void)alertControllerPressedDictationButton:(id)a3
{
  v4 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v4)
  {
    v7 = [TVRUIButtonEvent createButtonEvent:1 buttonType:4];
    v5 = [(TVRUIRemoteViewController *)self activeDevice];
    [v5 sendButtonEvent:v7];

    [(TVRUIRemoteViewController *)self _performSiriEffectsWithButtonEvent:v7];
  }

  else
  {
    v6 = _TVRUIKeyboardLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TVRUIRemoteViewController alertControllerPressedDictationButton:];
    }
  }
}

- (void)alertControllerReleasedDictationButton:(id)a3
{
  v4 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v4)
  {
    v6 = [TVRUIButtonEvent createButtonEvent:2 buttonType:4];
    v5 = [(TVRUIRemoteViewController *)self activeDevice];
    [v5 sendButtonEvent:v6];

    [(TVRUIRemoteViewController *)self _performSiriEffectsWithButtonEvent:v6];
  }
}

- (void)alertControllerHitKeyboardReturnKey:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIRemoteViewController *)self authenticatingDevice];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 type];

    if (v7 == 2)
    {
      v8 = _TVRUIKeyboardLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "User entered text password", buf, 2u);
      }

      v9 = [v4 text];
      v10 = [v9 length];

      if (v10)
      {
        v11 = [(TVRUIRemoteViewController *)self authenticatingDevice];
        v12 = [v4 text];
        [v11 sendAuthenticationCode:v12];

        [v4 dismissViewControllerAnimated:1 completion:0];
        goto LABEL_13;
      }

      v16 = _TVRUIKeyboardLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, "User entered password of zero length", v17, 2u);
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  v13 = [(TVRUIRemoteViewController *)self activeDevice];
  if (v13)
  {
    v14 = v13;
    v15 = [v4 type];

    if (v15 == 1)
    {
      v16 = [(TVRUIRemoteViewController *)self activeDevice];
      [v16 sendReturnKey];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)alertControllerCancelled:(id)a3
{
  v8 = a3;
  if (![v8 type] || objc_msgSend(v8, "type") == 2)
  {
    v4 = [(TVRUIRemoteViewController *)self authenticatingDevice];

    if (v4)
    {
      [(TVRUIRemoteViewController *)self _cancelPairing];
    }
  }

  v5 = [(TVRUIRemoteViewController *)self keyboardController];

  if (v5 == v8)
  {
    [(TVRUIRemoteViewController *)self setKeyboardController:0];
  }

  else
  {
    v6 = [(TVRUIRemoteViewController *)self authenticationAlertController];

    v7 = v8;
    if (v6 != v8)
    {
      goto LABEL_10;
    }

    [(TVRUIRemoteViewController *)self setAuthenticationAlertController:0];
  }

  v7 = v8;
LABEL_10:
}

- (void)wifiStateDidUpdate:(int64_t)a3
{
  v5 = [(TVRUIRemoteViewController *)self networkObserver];
  v6 = [v5 isNetworkReachable];

  v7 = _TVRUIViewControllerLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Network observer reported network is reachable", buf, 2u);
    }

    v9 = [(TVRUIRemoteViewController *)self deviceQuery];
    if (v9)
    {
      v10 = v9;
      v11 = [(TVRUIRemoteViewController *)self deviceQuery];
      v12 = [v11 hasStarted];

      if ((v12 & 1) == 0)
      {
        v13 = _TVRUIViewControllerLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Network is reachable. Requesting restarting query.", buf, 2u);
        }

        v14 = [(TVRUIRemoteViewController *)self deviceQuery];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __48__TVRUIRemoteViewController_wifiStateDidUpdate___block_invoke;
        v39[3] = &unk_279D88D88;
        v39[4] = self;
        [v14 startQuery:self completionHandler:v39];

        [(TVRUIRemoteViewController *)self performSelector:sel__showSearchingSpinnerIfNeeded withObject:0 afterDelay:2.0];
      }
    }

    [(TVRUIRemoteViewController *)self clearMessageContent];
    v15 = [(TVRUIRemoteViewController *)self activeDevice];
    if (!v15)
    {
      goto LABEL_33;
    }

    v16 = v15;
    v17 = [(TVRUIRemoteViewController *)self activeDevice];
    if ([v17 isConnected])
    {
    }

    else
    {
      v31 = [(TVRUIRemoteViewController *)self activeDevice];
      v32 = [v31 isConnecting];

      if (v32)
      {
        goto LABEL_33;
      }

      v33 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v33, OS_LOG_TYPE_DEFAULT, "Network is reachable. We have an active disconnected device. Requesting connect", buf, 2u);
      }

      v16 = [(TVRUIRemoteViewController *)self activeDevice];
      [(TVRUIRemoteViewController *)self _connectToDevice:v16 connectionContext:0];
    }

LABEL_33:
    v34 = [(TVRUIRemoteViewController *)self devicePickerViewController];

    if (v34)
    {
      v35 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      v36 = [v35 view];
      [v36 setHidden:0];

      v37 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v37, OS_LOG_TYPE_DEFAULT, "Network available. Making device picker button visible.", buf, 2u);
      }
    }

    goto LABEL_37;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Network observer reported network unreachable", buf, 2u);
  }

  [(TVRUIRemoteViewController *)self _resetActiveDevice];
  v18 = [(TVRUIRemoteViewController *)self deviceQuery];

  if (v18)
  {
    v19 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v19, OS_LOG_TYPE_DEFAULT, "No network. Stopping device query.", buf, 2u);
    }

    v20 = [(TVRUIRemoteViewController *)self deviceQuery];
    [v20 stop];

    [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
  }

  v21 = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (v21)
  {
    v22 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v22 collapseDeviceList];

    v23 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v23 resetSelectedDevice];

    v24 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v24 setDevices:MEMORY[0x277CBEBF8]];

    if (+[TVRUIFeatures corianderEnabled])
    {
      v25 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [v25 setSuggestedDevices:MEMORY[0x277CBEBF8]];
    }

    v26 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    v27 = [v26 view];
    [v27 setHidden:1];

    v28 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v28, OS_LOG_TYPE_DEFAULT, "No network. Collapsed device picker and hid it.", buf, 2u);
    }
  }

  v29 = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [v29 setEnabled:0];

  v30 = [(TVRUIRemoteViewController *)self topButtonPanelViewController];
  [v30 setEnabled:0];

  if (a3)
  {
    if (a3 == 1)
    {
      [(TVRUIRemoteViewController *)self showNoAssociatedNetworkMessage];
    }
  }

  else
  {
    [(TVRUIRemoteViewController *)self showNoWIFIConnectionMessage];
  }

LABEL_37:
  [(TVRUIRemoteViewController *)self setNetworkReachable:a3 == 2];
  if (+[TVRUIFeatures isAWDLEnabled])
  {
    v38 = [(TVRUIRemoteViewController *)self networkObserver];
    -[TVRUIRemoteViewController setNetworkReachable:](self, "setNetworkReachable:", [v38 isBluetoothAvailable] | -[TVRUIRemoteViewController isNetworkReachable](self, "isNetworkReachable"));
  }
}

uint64_t __48__TVRUIRemoteViewController_wifiStateDidUpdate___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _startDeviceQueryThresholdTimer];
  }

  return result;
}

- (void)bluetoothAvailabilityDidUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = _TVRUIViewControllerLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth is enabled", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth is disabled", buf, 2u);
    }

    v7 = [(TVRUIRemoteViewController *)self findingSession];
    v8 = [v7 isFindingSessionActive];

    if (v8)
    {
      v9 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Bluetooth was disabled in the middle of a finding session. Attemping to restart the finding session", buf, 2u);
      }

      v10 = [(TVRUIRemoteViewController *)self activeDevice];
      [(TVRUIRemoteViewController *)self _stopFindingSessionForDevice:v10];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__TVRUIRemoteViewController_bluetoothAvailabilityDidUpdate___block_invoke;
      block[3] = &unk_279D87C20;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __60__TVRUIRemoteViewController_bluetoothAvailabilityDidUpdate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 activeDevice];
  [v1 _startFindingSessionForDevice:v2];
}

- (void)_setupNetworkObserverIfNeeded
{
  v3 = [(TVRUIRemoteViewController *)self networkObserver];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(TVRUINetworkObserver);
    [(TVRUIRemoteViewController *)self setNetworkObserver:v4];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__TVRUIRemoteViewController__setupNetworkObserverIfNeeded__block_invoke;
    v10[3] = &unk_279D88980;
    objc_copyWeak(&v11, &location);
    v5 = [(TVRUIRemoteViewController *)self networkObserver];
    [v5 setWifiStateUpdatedHandler:v10];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__TVRUIRemoteViewController__setupNetworkObserverIfNeeded__block_invoke_177;
    v8[3] = &unk_279D88D38;
    objc_copyWeak(&v9, &location);
    v6 = [(TVRUIRemoteViewController *)self networkObserver];
    [v6 setBluetoothAvailabilityDidUpdate:v8];

    v7 = [(TVRUIRemoteViewController *)self networkObserver];
    [v7 startObserving];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __58__TVRUIRemoteViewController__setupNetworkObserverIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained networkObserver];
      v6 = 134218240;
      v7 = a2;
      v8 = 1024;
      v9 = [v5 isNetworkReachable];
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Network observer reported reachability update, state=%ld, reachable=%d", &v6, 0x12u);
    }

    [WeakRetained wifiStateDidUpdate:a2];
  }
}

void __58__TVRUIRemoteViewController__setupNetworkObserverIfNeeded__block_invoke_177(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Network observer reported bluetooth availability update, available=%d", v5, 8u);
    }

    [WeakRetained bluetoothAvailabilityDidUpdate:a2];
  }
}

- (void)showMessageWithError:(id)a3 andDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TVRUIRemoteViewController_showMessageWithError_andDevice___block_invoke;
  block[3] = &unk_279D883D8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__TVRUIRemoteViewController_showMessageWithError_andDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showMessageWithError:*(a1 + 40) device:*(a1 + 48)];

  v4 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TVRUIRemoteViewController_showMessageWithError_andDevice___block_invoke_2;
  block[3] = &unk_279D87C20;
  block[4] = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __60__TVRUIRemoteViewController_showMessageWithError_andDevice___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _hideMessageContent];
  v2 = [*(a1 + 32) devicePickerViewController];
  [v2 expandDeviceList];
}

- (void)showMessageWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TVRUIRemoteViewController_showMessageWithTitle_message___block_invoke;
  block[3] = &unk_279D883D8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__TVRUIRemoteViewController_showMessageWithTitle_message___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showMessageWithTitle:*(a1 + 40) message:*(a1 + 48)];
}

- (void)showMessageWithTitle:(id)a3 message:(id)a4 titleFont:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__TVRUIRemoteViewController_showMessageWithTitle_message_titleFont___block_invoke;
  v14[3] = &unk_279D88050;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __68__TVRUIRemoteViewController_showMessageWithTitle_message_titleFont___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showMessageWithTitle:*(a1 + 40) message:*(a1 + 48) titleFont:*(a1 + 56)];
}

- (void)showPairingMessageWithCode:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__TVRUIRemoteViewController_showPairingMessageWithCode___block_invoke;
  v6[3] = &unk_279D88230;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__TVRUIRemoteViewController_showPairingMessageWithCode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showPairingMessageWithCode:*(a1 + 40)];
}

- (void)showNoAssociatedNetworkMessage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TVRUIRemoteViewController_showNoAssociatedNetworkMessage__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__TVRUIRemoteViewController_showNoAssociatedNetworkMessage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showNoAssociatedNetworkMessage];
}

- (void)showNoWIFIConnectionMessage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TVRUIRemoteViewController_showNoWIFIConnectionMessage__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__TVRUIRemoteViewController_showNoWIFIConnectionMessage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showNoWIFIConnectionMessage];
}

- (void)showThrottleConnectMessage
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v3 localizedStringForKey:@"TVRemoteUIPairingLockoutTitle" value:&stru_287E6AEF8 table:@"Localizable"];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TVRemoteUIPairingLockoutMessage" value:&stru_287E6AEF8 table:@"Localizable"];

  [(TVRUIRemoteViewController *)self showMessageWithTitle:v6 message:v5];
}

- (void)showGenericUnableToConnectMessage
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"TVRemoteUIConnectionErrorTitleTV" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRUIRemoteViewController *)self showMessageWithTitle:v3 message:&stru_287E6AEF8];
}

- (void)showLoadingSpinner
{
  v3 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v3 setShowControls:0];

  messageView = self->_messageView;

  [(TVRMessageView *)messageView showLoadingSpinner];
}

- (void)showSearchingSpinner
{
  v3 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v3 setShowControls:0];

  [(TVRMessageView *)self->_messageView showSearchingSpinner];
  v4 = [MEMORY[0x277D6C4B8] sharedInstance];
  [v4 logSearchingSpinnerShown];
}

- (void)clearMessageContent
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRUIRemoteViewController clearMessageContent]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRMessageView *)self->_messageView clearContent];
  v4 = [(TVRUIRemoteViewController *)self touchpadViewController];
  [v4 setShowControls:1];
}

- (void)_showConnectingSpinner
{
  v3 = [(TVRUIRemoteViewController *)self isNetworkReachable];
  v4 = _TVRUIViewControllerLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Showing connecting spinner", buf, 2u);
    }

    [(TVRUIRemoteViewController *)self showLoadingSpinner];
    [(TVRUIRemoteViewController *)self performSelector:sel__hideConnectingAndShowDevicePicker withObject:0 afterDelay:10.0];
    v4 = [MEMORY[0x277D6C4B8] sharedInstance];
    v6 = [(TVRUIRemoteViewController *)self activeDevice];
    v7 = [v6 deviceContextInformation];
    [v4 logConnectingSpinnerShown:v7];
  }

  else if (v5)
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Not showing connecting spinner - Network is unreachable", v8, 2u);
  }
}

- (void)_cancelShowConnectingSpinner
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showConnectingSpinner object:0];
  v2 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Cancelled ShowConnectingSpinner selector", v3, 2u);
  }
}

- (void)_hideConnectingAndShowDevicePicker
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 activeDevice];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "Disconnecting device %@ due to connection timeout", &v4, 0xCu);
}

- (void)_cancelHideConnectingAndShowDevicePicker
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideConnectingAndShowDevicePicker object:0];
  v2 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Cancelled showdevicepicker selector", v3, 2u);
  }
}

- (void)_showSearchingSpinnerIfNeeded
{
  if ([(TVRUIRemoteViewController *)self isNetworkReachable])
  {
    v3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    v4 = [v3 devices];
    v5 = [v4 count];

    if (!v5)
    {
      v6 = [(TVRUIRemoteViewController *)self controlPanelViewController];
      [v6 setEnabled:0];

      [(TVRUIRemoteViewController *)self showSearchingSpinner];
    }
  }
}

- (void)_hideMessageContent
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showConnectingSpinner object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showSearchingSpinnerIfNeeded object:0];

  [(TVRUIRemoteViewController *)self clearMessageContent];
}

- (void)generatedButtonEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TVRUIRemoteViewController *)self activeDevice];

  if (!v5)
  {
    goto LABEL_25;
  }

  if ([v4 buttonType] == 9999)
  {
    if ([v4 eventType] == 2)
    {
      v6 = _TVRUIButtonLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "generatedButtonEvent [TVRUIButtonTypeKeyboard, TVRUIButtonEventTypeReleased]", &v16, 2u);
      }

      [(TVRUIRemoteViewController *)self keyboardRequested];
    }

    goto LABEL_25;
  }

  v7 = [v4 buttonType];
  v8 = [(TVRUIRemoteViewController *)self activeDevice];
  v9 = v8;
  if (v7 == 9992)
  {
    v10 = [v8 isModernAppleTV];

    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = [(TVRUIRemoteViewController *)self nowPlayingController];
    [v11 infoButtonWasTapped];
    goto LABEL_24;
  }

  [v8 sendButtonEvent:v4];

  v12 = _TVRUIButtonLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[TVRUIRemoteViewController generatedButtonEvent:]";
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "%s, event=%{public}@", &v16, 0x16u);
  }

  v13 = [v4 buttonType];
  if (v13 > 9)
  {
    if (v13 == 10)
    {
      if ([v4 eventType] != 1)
      {
        goto LABEL_25;
      }

      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = v14;
      v15 = @"TVRUIVolumeUpEventGenerated";
    }

    else
    {
      if (v13 != 11 || [v4 eventType] != 1)
      {
        goto LABEL_25;
      }

      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = v14;
      v15 = @"TVRUIVolumeDownEventGenerated";
    }

    [v14 postNotificationName:v15 object:0];
LABEL_24:

    goto LABEL_25;
  }

  if ((v13 - 2) < 2)
  {
    v11 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    [v11 collapseChannelButton];
    goto LABEL_24;
  }

  if (v13 == 4)
  {
    [(TVRUIRemoteViewController *)self _performSiriEffectsWithButtonEvent:v4];
  }

LABEL_25:
}

- (void)generatedTouchEvent:(id)a3
{
  v6 = a3;
  v4 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v4)
  {
    v5 = [(TVRUIRemoteViewController *)self activeDevice];
    [v5 sendTouchEvent:v6];
  }
}

- (void)keyboardRequested
{
  v3 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Keyboard was requested", v9, 2u);
  }

  v4 = [(TVRUIRemoteViewController *)self activeDevice];

  if (v4)
  {
    v5 = [(TVRUIRemoteViewController *)self activeDevice];
    v6 = [v5 keyboardAttributes];
    v7 = [(TVRUIRemoteViewController *)self activeDevice];
    v8 = [v7 currentText];
    [(TVRUIRemoteViewController *)self _presentKeyboardWithAttributes:v6 initialText:v8];
  }
}

- (void)_performSiriEffectsWithButtonEvent:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIRemoteViewController *)self activeDevice];

  if (!v5)
  {
    v10 = _TVRUIButtonLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TVRUIRemoteViewController _performSiriEffectsWithButtonEvent:];
    }

    goto LABEL_11;
  }

  if ([v4 buttonType] != 4)
  {
    goto LABEL_16;
  }

  v6 = [v4 eventType];
  switch(v6)
  {
    case 3:
      v10 = _TVRUIButtonLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "TVRUIButtonTypeSiri, TVRUIButtonEventTypeButtonDown", v14, 2u);
      }

LABEL_11:

      break;
    case 2:
      v11 = _TVRUIButtonLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "TVRUIButtonTypeSiri, TVRUIButtonEventTypeReleased", v13, 2u);
      }

      v12 = [(TVRUIRemoteViewController *)self sessionData];
      [v12 setUsedSiri:1];

      v8 = self;
      v9 = 0;
      goto LABEL_15;
    case 1:
      v7 = _TVRUIButtonLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "TVRUIButtonTypeSiri, TVRUIButtonEventTypePressed", buf, 2u);
      }

      v8 = self;
      v9 = 1;
LABEL_15:
      [(TVRUIRemoteViewController *)v8 setSiriSessionActive:v9];
      break;
  }

LABEL_16:
}

- (void)_enableSearch
{
  v2 = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [v2 enableSearchButton];
}

- (void)_disableSearch
{
  v2 = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [v2 disableSearchButton];
}

- (void)consumeSinglePressDownForButtonKind:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIButtonLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[TVRUIRemoteViewController consumeSinglePressDownForButtonKind:]";
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s, buttonKind=%ld", &v6, 0x16u);
  }

  if (a3 == 4)
  {
    [(TVRUIRemoteViewController *)self volumeDownEventGenerated];
  }

  else if (a3 == 3)
  {
    [(TVRUIRemoteViewController *)self volumeUpEventGenerated];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4 forTouchpadView:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a5;
  v9 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  v10 = [v9 isChannelButtonExpanded];

  if (v10)
  {
    v11 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    v12 = [v11 _channelUpButtonView];

    v13 = [(TVRUIRemoteViewController *)self view];
    [v12 frame];
    [v13 convertRect:v12 fromView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [(TVRUIRemoteViewController *)self view];
    [v22 convertPoint:v8 fromView:{x, y}];
    v24 = v23;
    v26 = v25;

    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    v31.x = v24;
    v31.y = v26;
    if (CGRectContainsPoint(v32, v31))
    {
      v27 = v12;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)device:(id)a3 supportsFindMyRemote:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 name];
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "device: '%{public}@' supportsFindMy: %d", &v10, 0x12u);
  }

  v9 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [v9 _device:v6 updatedFindMySupported:v4];
}

- (void)_showFindingAlert
{
  v25 = [(TVRUIRemoteViewController *)self findingSession];
  if ([v25 isFindingSessionActive])
  {
    v3 = [(TVRUIRemoteViewController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      v5 = [(TVRUIRemoteViewController *)self view];
      v6 = [v5 window];
      v7 = [v6 rootViewController];
      v26 = [v7 presentedViewController];

      v8 = MEMORY[0x277D75110];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"TVRemoteUIFindingAlertTitle" value:&stru_287E6AEF8 table:@"Localizable"];
      supportsSiri = self->_supportsSiri;
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      if (supportsSiri)
      {
        v14 = @"TVRemoteUIFindingAlertSiriRemoteSubtitle";
      }

      else
      {
        v14 = @"TVRemoteUIFindingAlertAppleTVSubtitle";
      }

      v15 = [v12 localizedStringForKey:v14 value:&stru_287E6AEF8 table:@"Localizable"];
      v16 = [v8 alertControllerWithTitle:v10 message:v15 preferredStyle:1];

      v17 = MEMORY[0x277D750F8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"TVRemoteUIFindingAlertDefaultButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __46__TVRUIRemoteViewController__showFindingAlert__block_invoke;
      v28[3] = &unk_279D88E28;
      v28[4] = self;
      v20 = [v17 actionWithTitle:v19 style:0 handler:v28];
      [v16 addAction:v20];

      v21 = MEMORY[0x277D750F8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"TVRemoteUIFindingAlertAlternateButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __46__TVRUIRemoteViewController__showFindingAlert__block_invoke_204;
      v27[3] = &unk_279D88E28;
      v27[4] = self;
      v24 = [v21 actionWithTitle:v23 style:0 handler:v27];
      [v16 addAction:v24];

      [v26 presentViewController:v16 animated:1 completion:0];
    }
  }

  else
  {
  }
}

void __46__TVRUIRemoteViewController__showFindingAlert__block_invoke(uint64_t a1)
{
  v2 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "User requested to continue looking for the remote. Restarting finding session", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 activeDevice];
  [v3 _startFindingSessionForDevice:v4];
}

void __46__TVRUIRemoteViewController__showFindingAlert__block_invoke_204(uint64_t a1)
{
  v2 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "User requested to stop finding remote", v4, 2u);
  }

  v3 = [*(a1 + 32) findingSession];
  [v3 stopFindingSession];
}

- (void)device:(id)a3 didUpdateSiriRemoteFindingSessionState:(int64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 name];
    if (a4 < 7 && ((0x77u >> a4) & 1) != 0)
    {
      v9 = off_279D88EB8[a4];
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v9 = [v10 stringWithFormat:@"Unknown %@", v11];
    }

    *buf = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "device: '%{public}@' did update finding state: %{public}@", buf, 0x16u);
  }

  if (a4 == 6)
  {
    [(TVRUIRemoteViewController *)self _showFindingAlert];
  }
}

- (void)device:(id)a3 didUpdateNowPlayingInfo:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 playbackRate];

  if (v8)
  {
    v9 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    v10 = [v7 playbackRate];
    [v9 updatePlaybackRate:v10];
  }

  v11 = [v7 captionsEnabled];
  if (v11)
  {
    v12 = v11;
    v13 = [v7 hasValidCaptionOptions];

    if (v13)
    {
      v14 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v6 name];
        v16 = [v7 captionsEnabled];
        v17 = [v7 hasValidCaptionOptions];
        v23 = 138543874;
        v24 = v15;
        v25 = 2114;
        v26 = v16;
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "device: '%{public}@' updateCaptionState: %{public}@, hasValidCaptionOptions: %{public}@", &v23, 0x20u);
      }

      v18 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
      v19 = [v7 captionsEnabled];
      v20 = [v19 BOOLValue];
      v21 = [v7 hasValidCaptionOptions];
      [v18 updateCaptionState:v20 buttonDisabled:{objc_msgSend(v21, "BOOLValue") ^ 1}];
    }
  }

  v22 = [(TVRUIRemoteViewController *)self nowPlayingController];
  [v22 setNowPlayingInfo:v7];
}

- (void)device:(id)a3 supportsVolumeControl:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 name];
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "device: '%{public}@' supportsVolumeControl %d", &v10, 0x12u);
  }

  [(TVRUIRemoteViewController *)self setSupportsVolumeControl:v4];
  v9 = [(TVRUIRemoteViewController *)self delegate];
  [v9 device:v6 supportsVolume:v4];
}

- (void)device:(id)a3 supportsSiri:(BOOL)a4 volumeControl:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[TVRUIRemoteViewController device:supportsSiri:volumeControl:]";
    v13 = 2112;
    v14 = v8;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "%s device=%@, supportsSiri=%{BOOL}d, supportsVolumeControl=%{BOOL}d", &v11, 0x22u);
  }

  [(TVRUIRemoteViewController *)self setSupportsVolumeControl:v5];
  [(TVRUIRemoteViewController *)self setSupportsSiri:v6];
  v10 = [(TVRUIRemoteViewController *)self delegate];
  [v10 device:v8 supportsSiri:v6 volume:v5];
}

- (void)setSupportsVolumeControl:(BOOL)a3
{
  v3 = a3;
  if (!self->_volumeController)
  {
    v5 = [TVRUIVolumeController alloc];
    v6 = [(TVRUIRemoteViewController *)self view];
    v7 = [v6 window];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__TVRUIRemoteViewController_setSupportsVolumeControl___block_invoke;
    v17[3] = &unk_279D88028;
    v17[4] = self;
    v8 = [(TVRUIVolumeController *)v5 initForWindow:v7 eventHandler:v17];
    volumeController = self->_volumeController;
    self->_volumeController = v8;
  }

  v10 = [(TVRUIRemoteViewController *)self volumeController];
  [v10 setSupportsVolumeControl:v3];

  if (self->_isFindingSessionActive)
  {
    v11 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Finding session is active. Not enabling volume control", buf, 2u);
    }
  }

  else
  {
    v12 = [(TVRUIRemoteViewController *)self volumeController];
    v13 = v12;
    if (v3)
    {
      [v12 enableVolumeControl];
    }

    else
    {
      [v12 disableVolumeControl];
    }

    v11 = [(TVRUIRemoteViewController *)self deviceObservers];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__TVRUIRemoteViewController_setSupportsVolumeControl___block_invoke_206;
    v14[3] = &__block_descriptor_33_e45_v32__0___TVRUIRemoteDeviceObserving__8Q16_B24l;
    v15 = v3;
    [v11 enumerateObjectsUsingBlock:v14];
  }
}

uint64_t __54__TVRUIRemoteViewController_setSupportsVolumeControl___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 2)
  {
    return [*(result + 32) volumeDownEventGenerated];
  }

  if (a2 == 1)
  {
    return [*(result + 32) volumeUpEventGenerated];
  }

  return result;
}

void __54__TVRUIRemoteViewController_setSupportsVolumeControl___block_invoke_206(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setVolumeControlAvailable:*(a1 + 32)];
  }
}

- (BOOL)supportsVolumeControl
{
  v3 = [(TVRUIRemoteViewController *)self volumeController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TVRUIRemoteViewController *)self volumeController];
  v5 = [v4 supportsVolumeControl];

  return v5;
}

- (void)setSupportsSiri:(BOOL)a3
{
  if (self->_supportsSiri == a3)
  {
    return;
  }

  self->_supportsSiri = a3;
  v6 = [MEMORY[0x277D75418] currentDevice];
  if ([v6 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v7 = [(TVRUIRemoteViewController *)self view];
    v8 = [v7 window];
    v9 = [v8 windowScene];
    v10 = [v9 activationState];

    if (v10)
    {
LABEL_7:
      v11 = [(TVRUIRemoteViewController *)self siriManager];
      [v11 unregisterForSiriEvents];
      goto LABEL_8;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v11 = [(TVRUIRemoteViewController *)self siriManager];
  [v11 registerForSiriEvents];
LABEL_8:
}

- (void)volumeUpEventGenerated
{
  v3 = [(TVRUIRemoteViewController *)self activeDevice];
  if (v3 && (v4 = v3, -[TVRUIRemoteViewController activeDevice](self, "activeDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 supportsVolumeControl], v5, v4, v6))
  {
    v7 = [TVRUIButtonEvent createButtonEvent:1 buttonType:10];
    [(TVRUIRemoteViewController *)self generatedButtonEvent:v7];
    v8 = [TVRUIButtonEvent createButtonEvent:2 buttonType:10];
    [(TVRUIRemoteViewController *)self generatedButtonEvent:v8];
    v9 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Sent volume UP button event", buf, 2u);
    }
  }

  else
  {
    v7 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Volume up event generated but device does not support. Not sending", v10, 2u);
    }
  }
}

- (void)volumeDownEventGenerated
{
  v3 = [(TVRUIRemoteViewController *)self activeDevice];
  if (v3 && (v4 = v3, -[TVRUIRemoteViewController activeDevice](self, "activeDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 supportsVolumeControl], v5, v4, v6))
  {
    v7 = [TVRUIButtonEvent createButtonEvent:1 buttonType:11];
    [(TVRUIRemoteViewController *)self generatedButtonEvent:v7];
    v8 = [TVRUIButtonEvent createButtonEvent:2 buttonType:11];
    [(TVRUIRemoteViewController *)self generatedButtonEvent:v8];
    v9 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Sent volume DOWN button event", buf, 2u);
    }
  }

  else
  {
    v7 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Volume down event generated but device does not support. Not sending", v10, 2u);
    }
  }
}

- (void)_expandDeviceList
{
  if ([(TVRUIRemoteViewController *)self isNetworkReachable])
  {
    [(TVRUIRemoteViewController *)self _hideMessageContent];
    v3 = [(TVRUIRemoteViewController *)self delegate];
    [v3 devicePickerWillExpand];

    v4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [v4 expandDeviceList];
  }
}

- (BOOL)_shouldAllowKeyboardToBePresented
{
  v3 = [(TVRUIRemoteViewController *)self activeDevice];
  if (v3)
  {
    v4 = ![(TVRUIRemoteViewController *)self isSiriSessionActive];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_installTapToRadarButton
{
  if (+[TVRUIFeatures isTapToRadarEnabled])
  {
    v3 = [(TVRUIRemoteViewController *)self tapToRadarButton];

    if (!v3)
    {
      v4 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__TVRUIRemoteViewController__installTapToRadarButton__block_invoke;
      block[3] = &unk_279D87C20;
      block[4] = self;
      dispatch_after(v4, MEMORY[0x277D85CD0], block);
    }
  }
}

void __53__TVRUIRemoteViewController__installTapToRadarButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 effectiveUserInterfaceLayoutDirection];

  v4 = +[TVRTapToRadarManager bugImage];
  v5 = [MEMORY[0x277D75220] buttonWithType:1];
  v6 = [*(a1 + 32) styleProvider];
  v7 = [v6 primaryTextAndGlyphColor];
  [v5 setTintColor:v7];

  [v5 setImage:v4 forState:0];
  v8 = 0.0;
  if (v3 == 1)
  {
    v9 = [*(a1 + 32) view];
    [v9 bounds];
    v8 = CGRectGetWidth(v15) + -50.0;
  }

  [v5 setFrame:{v8, 0.0, 50.0, 50.0}];
  [v5 addTarget:*(a1 + 32) action:sel__tapToRadar forControlEvents:0x2000];
  [v5 setAlpha:0.0];
  v10 = [*(a1 + 32) view];
  [v10 addSubview:v5];

  objc_storeStrong((*(a1 + 32) + 1208), v5);
  v11 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__TVRUIRemoteViewController__installTapToRadarButton__block_invoke_2;
  v13[3] = &unk_279D87C20;
  v14 = v5;
  v12 = v5;
  [v11 animateWithDuration:v13 animations:0.75];
}

- (void)_tapToRadar
{
  v3 = [(TVRUIRemoteViewController *)self view];
  v2 = [v3 window];
  [TVRTapToRadarManager fileRadarWithTitle:@"[TVRemote] " description:0 window:v2];
}

- (id)_stringForDeviceDeviceIdentifierType:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_279D88EF0[a3];
  }
}

- (void)_forceShowMediaControls
{
  v3 = [(TVRUIRemoteViewController *)self activeDevice];
  [(TVRUIRemoteViewController *)self device:v3 needsMediaControls:&unk_287E84C78];
}

- (int64_t)_connectionContextFromLaunchContext:(int64_t)a3
{
  if ((a3 - 5) > 8)
  {
    return 1;
  }

  else
  {
    return qword_26D0D2788[a3 - 5];
  }
}

- (id)_stringForConnectionContext:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_279D88F18[a3 - 1];
  }
}

- (void)_createFindingSessionIfNeeded
{
  if (!self->_findingSession)
  {
    v3 = objc_alloc_init(TVRUIFindingSession);
    findingSession = self->_findingSession;
    self->_findingSession = v3;

    MEMORY[0x2821F96F8](v3, findingSession);
  }
}

- (void)findButtonTappedForDevice:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Find button tapped for device: %@", &v6, 0xCu);
  }

  if ([v4 isConnected])
  {
    [(TVRUIRemoteViewController *)self _startFindingSessionForDevice:v4];
  }

  else
  {
    [(TVRUIRemoteViewController *)self _selectDevice:v4 withConnectionContext:1];
    [(TVRUIRemoteViewController *)self setShouldStartFindingSession:1];
  }
}

- (void)_startFindingSessionForDevice:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke;
  v6[3] = &unk_279D88E98;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(TVRUIRemoteViewController *)self _turnOnBluetoothIfNeededWithCompletionBlock:v6];
}

void __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRUIViewControllerLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth is enabled. Starting finding session", buf, 2u);
      }

      if (*(a1 + 32))
      {
        v9 = _TVRUIViewControllerLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [*(a1 + 32) name];
          *buf = 138543362;
          v21 = v10;
          _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Start finding session for: '%{public}@'", buf, 0xCu);
        }

        [*(a1 + 40) _createFindingSessionIfNeeded];
        objc_initWeak(buf, *(a1 + 40));
        v11 = [*(a1 + 40) findingSession];
        v12 = *(a1 + 32);
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke_249;
        v17 = &unk_279D88E70;
        v18 = v12;
        objc_copyWeak(&v19, buf);
        v13 = [v11 startFindingSessionForDevice:v18 dismissedHandler:&v14];

        if (v13)
        {
          [*(a1 + 32) enableFindingSession:{1, v14, v15, v16, v17, v18}];
          [*(a1 + 40) presentViewController:v13 animated:1 completion:0];
          [*(a1 + 40) findingSessionDidStart];
        }

        objc_destroyWeak(&v19);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth is not enabled. Ignoring user action to start finding session", buf, 2u);
      }
    }
  }
}

void __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke_249(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Finding session ended for device: '%{public}@'", &v5, 0xCu);
  }

  [*(a1 + 32) enableFindingSession:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained findingSessionDidEnd];
}

- (void)_stopFindingSessionForDevice:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 name];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Stop finding session for: '%{public}@'", &v9, 0xCu);
    }

    [v4 enableFindingSession:0];
    if (self->_findingSession)
    {
      v7 = [(TVRUIRemoteViewController *)self findingSession];
      [v7 stopFindingSession];

      findingSession = self->_findingSession;
      self->_findingSession = 0;
    }
  }
}

- (void)findingSessionDidStart
{
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Finding session started. Pausing volume support", v5, 2u);
  }

  v4 = [(TVRUIRemoteViewController *)self volumeController];
  [v4 disableVolumeControl];

  self->_isFindingSessionActive = 1;
}

- (void)findingSessionDidEnd
{
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Finding session ended. Restoring volume support.", v5, 2u);
  }

  self->_isFindingSessionActive = 0;
  v4 = [(TVRUIRemoteViewController *)self volumeController];
  [v4 enableVolumeControl];
}

- (TVRUIRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TVRUIDeviceConnectionStatusDelegate)deviceConnectionStatusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceConnectionStatusDelegate);

  return WeakRetained;
}

- (void)_connectToPreferredDeviceFromDeviceList:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 preferredDevice];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_26CFEB000, a3, OS_LOG_TYPE_ERROR, "No device found for preferred device %{public}@ - deviceList: %{public}@ ", &v6, 0x16u);
}

@end