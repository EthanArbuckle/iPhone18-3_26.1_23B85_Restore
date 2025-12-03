@interface SBHomeHardwareButton
- (BOOL)_acceleratedSinglePressRecognizerShouldBegin;
- (BOOL)_isMenuDoublePressAllowed:(id *)allowed;
- (BOOL)_isMenuDoublePressDisabled;
- (BOOL)_longPressGestureRecognizerShouldBegin:(id)begin;
- (BOOL)emulateHomeButtonEventsIfNeeded:(__IOHIDEvent *)needed;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)supportsAcceleratedAppDismiss;
- (SBHomeHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer homeButtonType:(int64_t)type;
- (SBHomeHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer homeButtonType:(int64_t)type buttonActions:(id)actions gestureRecognizerConfiguration:(id)configuration;
- (UIGestureRecognizer)screenshotGestureRecognizer;
- (int64_t)hapticType;
- (void)_cancelGestureRecognizer:(id)recognizer;
- (void)_createGestureRecognizersWithConfiguration:(id)configuration;
- (void)_reconfigureGestureRecognizersForNewMaximumPressCount:(int64_t)count oldMaximumPressCount:(int64_t)pressCount;
- (void)_reconfigureGestureRecognizersForNewMaximumTapCount:(int64_t)count oldMaximumTapCount:(int64_t)tapCount;
- (void)_reconfigureHomeButton;
- (void)_setFingerDetectionEnabled:(BOOL)enabled;
- (void)_singlePressUp:(id)up;
- (void)_startObservingReconfigurationTriggers;
- (void)_terminateHomeButtonEventAtCount:(int64_t)count;
- (void)acceleratedSinglePressUp:(id)up;
- (void)addHintSuppressionAssertion:(id)assertion;
- (void)addLongPressDurationAssertion:(id)assertion;
- (void)cancelHardwareButtonPress;
- (void)cancelLongPress;
- (void)configureForwardingToLockButton:(id)button;
- (void)doublePressDown:(id)down;
- (void)doublePressUp:(id)up;
- (void)doubleTapUp:(id)up;
- (void)initialButtonDown:(id)down;
- (void)initialButtonUp:(id)up;
- (void)longPress:(id)press;
- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters;
- (void)removeHintSuppressionAssertion:(id)assertion;
- (void)removeLongPressDurationAssertion:(id)assertion;
- (void)screenshotRecognizerDidRecognize:(id)recognize;
- (void)setHapticType:(int64_t)type;
- (void)singlePressUp:(id)up;
- (void)triplePressUp:(id)up;
@end

@implementation SBHomeHardwareButton

- (BOOL)_acceleratedSinglePressRecognizerShouldBegin
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = +[SBWorkspace mainWorkspace];
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  homeScreenController = [embeddedDisplayWindowScene homeScreenController];
  switcherController = [embeddedDisplayWindowScene switcherController];
  iconManager = [homeScreenController iconManager];
  buttonDefinition = [(SBHomeHardwareButton *)self buttonDefinition];
  if (![(NSMutableSet *)self->_hintSuppressionAssertions count])
  {
    if ([iconManager isEditing])
    {
      modalAlertPresentationCoordinator = SBLogButtonsHome();
      if (!os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v12 = "Accelerated single press recognizer should not begin because currently editing";
LABEL_28:
      v13 = modalAlertPresentationCoordinator;
      v14 = 2;
      goto LABEL_29;
    }

    lockHardwareButton = [SBApp lockHardwareButton];
    isButtonDown = [lockHardwareButton isButtonDown];

    if (isButtonDown)
    {
      modalAlertPresentationCoordinator = SBLogButtonsHome();
      if (!os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v12 = "Accelerated single press recognizer should not begin because the lock button is down";
      goto LABEL_28;
    }

    if ([buttonDefinition maximumPressCount] >= 3)
    {
      modalAlertPresentationCoordinator = SBLogButtonsHome();
      if (!os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v12 = "Accelerated single press recognizer should not begin because triple click is enabled";
      goto LABEL_28;
    }

    [buttonDefinition maximumMultiplePressTimeInterval];
    if (v17 > 0.349999994)
    {
      modalAlertPresentationCoordinator = SBLogButtonsHome();
      if (!os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v12 = "Accelerated single press recognizer should not begin because click speed setting is too slow";
      goto LABEL_28;
    }

    transientOverlayPresentationManager = [v3 transientOverlayPresentationManager];
    hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

    if (hasActivePresentation)
    {
      modalAlertPresentationCoordinator = SBLogButtonsHome();
      if (!os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v12 = "Accelerated single press recognizer should not begin because a transient overlay is up";
      goto LABEL_28;
    }

    v20 = +[SBControlCenterCoordinator sharedInstance];
    isVisible = [v20 isVisible];

    if (isVisible)
    {
      modalAlertPresentationCoordinator = SBLogButtonsHome();
      if (!os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v12 = "Accelerated single press recognizer should not begin because Control Center is up";
      goto LABEL_28;
    }

    notificationDispatcher = [SBApp notificationDispatcher];
    bannerDestination = [notificationDispatcher bannerDestination];
    isPresentingBanner = [bannerDestination isPresentingBanner];

    if (isPresentingBanner)
    {
      modalAlertPresentationCoordinator = SBLogButtonsHome();
      if (!os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v12 = "Accelerated single press recognizer should not begin because a banner is showing";
      goto LABEL_28;
    }

    if ([switcherController isMainSwitcherVisible])
    {
      modalAlertPresentationCoordinator = SBLogButtonsHome();
      if (!os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v12 = "Accelerated single press recognizer should not begin -- in the app switcher";
      goto LABEL_28;
    }

    modalAlertPresentationCoordinator = [SBApp modalAlertPresentationCoordinator];
    if ([modalAlertPresentationCoordinator isShowingSystemModalAlert])
    {
      menuButtonInterceptApp = SBLogButtonsHome();
      if (os_log_type_enabled(menuButtonInterceptApp, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v28 = "Accelerated single press recognizer should not begin -- system modal alert";
LABEL_38:
        _os_log_impl(&dword_21ED4E000, menuButtonInterceptApp, OS_LOG_TYPE_INFO, v28, buf, 2u);
        goto LABEL_39;
      }

      goto LABEL_39;
    }

    v29 = +[SBSetupManager sharedInstance];
    isInSetupMode = [v29 isInSetupMode];

    if (isInSetupMode)
    {
      menuButtonInterceptApp = SBLogButtonsHome();
      if (os_log_type_enabled(menuButtonInterceptApp, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v28 = "Accelerated single press recognizer should not begin -- in Setup";
        goto LABEL_38;
      }

LABEL_39:
      v25 = 0;
LABEL_48:

      goto LABEL_31;
    }

    menuButtonInterceptApp = [SBApp menuButtonInterceptApp];
    if (menuButtonInterceptApp)
    {
      v31 = SBLogButtonsHome();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [menuButtonInterceptApp bundleIdentifier];
        *buf = 138543362;
        v52 = bundleIdentifier;
        _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_INFO, "Accelerated single press recognizer should not begin -- intercept app:%{public}@", buf, 0xCu);
      }

LABEL_46:
      v25 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v33 = +[SBCoverSheetPresentationManager sharedInstance];
    isVisible2 = [v33 isVisible];

    if (isVisible2)
    {
      v31 = SBLogButtonsHome();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_INFO, "Accelerated single press recognizer should not begin -- coversheet", buf, 2u);
      }

      goto LABEL_46;
    }

    v31 = +[SBReachabilityManager sharedInstance];
    if ([v31 reachabilityModeActive])
    {
      log = SBLogButtonsHome();
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_INFO, "Accelerated single press recognizer should not begin -- reachability is open", buf, 2u);
      }

      v25 = 0;
      goto LABEL_69;
    }

    log = +[SBHardwareButtonService sharedInstance];
    if ([log hasConsumersForHomeButtonPresses])
    {
      layoutStatePrimaryElement = SBLogButtonsHome();
      if (os_log_type_enabled(layoutStatePrimaryElement, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v35 = "Accelerated single press recognizer should not begin -- external button consumers exist";
LABEL_56:
        v36 = layoutStatePrimaryElement;
        v37 = 2;
LABEL_66:
        _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_INFO, v35, buf, v37);
        goto LABEL_67;
      }

      goto LABEL_67;
    }

    v45 = +[SBAssistantController isVisible];
    v38 = +[SBVoiceControlController sharedInstance];
    isVisible3 = [v38 isVisible];

    if (v45 || isVisible3)
    {
      layoutStatePrimaryElement = SBLogButtonsHome();
      if (os_log_type_enabled(layoutStatePrimaryElement, OS_LOG_TYPE_INFO))
      {
        v39 = @"Voice Control";
        if (v45)
        {
          v39 = @"Siri";
        }

        *buf = 138543362;
        v52 = v39;
        v35 = "Accelerated single press recognizer should not begin -- %{public}@ is visible";
        v36 = layoutStatePrimaryElement;
        v37 = 12;
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    if ([homeScreenController areAnyIconViewContextMenusShowing])
    {
      layoutStatePrimaryElement = SBLogButtonsHome();
      if (os_log_type_enabled(layoutStatePrimaryElement, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v35 = "Accelerated single press recognizer should not begin -- icon force touch controller peeking or showing";
        goto LABEL_56;
      }

LABEL_67:
      v25 = 0;
LABEL_68:

LABEL_69:
      goto LABEL_47;
    }

    if ([iconManager isPerformingExpandTransition])
    {
      SBLogButtonsHome();
      layoutStatePrimaryElement = v25 = 1;
      if (!os_log_type_enabled(layoutStatePrimaryElement, OS_LOG_TYPE_INFO))
      {
        goto LABEL_68;
      }

      *buf = 0;
      v40 = "Accelerated single press recognizer should begin -- cancelling folder open";
LABEL_76:
      _os_log_impl(&dword_21ED4E000, layoutStatePrimaryElement, OS_LOG_TYPE_INFO, v40, buf, 2u);
      goto LABEL_68;
    }

    if ([switcherController _shouldAcceleratedHomeButtonPressBegin])
    {
      SBLogButtonsHome();
      layoutStatePrimaryElement = v25 = 1;
      if (!os_log_type_enabled(layoutStatePrimaryElement, OS_LOG_TYPE_INFO))
      {
        goto LABEL_68;
      }

      *buf = 0;
      v40 = "Accelerated single press recognizer should begin -- switcher wants it";
      goto LABEL_76;
    }

    if ([iconManager isTransitioning])
    {
      layoutStatePrimaryElement = SBLogButtonsHome();
      if (!os_log_type_enabled(layoutStatePrimaryElement, OS_LOG_TYPE_INFO))
      {
        goto LABEL_67;
      }

      *buf = 0;
      v35 = "Accelerated single press recognizer should not begin -- iconController is already transitioning";
      goto LABEL_56;
    }

    layoutStatePrimaryElement = [switcherController layoutStatePrimaryElement];
    workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
    isApplicationSceneEntity = [workspaceEntity isApplicationSceneEntity];

    if (isApplicationSceneEntity)
    {
      v47 = SBLogButtonsHome();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v42 = "Accelerated single press recognizer should not begin -- hasForegroundApplication";
LABEL_88:
        _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_INFO, v42, buf, 2u);
      }
    }

    else
    {
      hasOpenFolder = [iconManager hasOpenFolder];
      v47 = SBLogButtonsHome();
      v44 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
      if (hasOpenFolder)
      {
        if (v44)
        {
          *buf = 0;
          v25 = 1;
          _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_INFO, "Accelerated single press recognizer should begin -- hasOpenFolder", buf, 2u);
        }

        else
        {
          v25 = 1;
        }

        goto LABEL_90;
      }

      if (v44)
      {
        *buf = 0;
        v42 = "Accelerated single press recognizer should not begin: not in a supported context";
        goto LABEL_88;
      }
    }

    v25 = 0;
LABEL_90:

    goto LABEL_68;
  }

  modalAlertPresentationCoordinator = SBLogButtonsHome();
  if (os_log_type_enabled(modalAlertPresentationCoordinator, OS_LOG_TYPE_INFO))
  {
    hintSuppressionAssertions = self->_hintSuppressionAssertions;
    *buf = 138543362;
    v52 = hintSuppressionAssertions;
    v12 = "Accelerated single press recognizer should not begin -- 'hint' suppression assertions: %{public}@";
    v13 = modalAlertPresentationCoordinator;
    v14 = 12;
LABEL_29:
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
  }

LABEL_30:
  v25 = 0;
LABEL_31:

  return v25;
}

- (BOOL)_isMenuDoublePressDisabled
{
  v2 = +[SBDefaults localDefaults];
  hardwareDefaults = [v2 hardwareDefaults];
  disableHomeButtonDoublePress = [hardwareDefaults disableHomeButtonDoublePress];

  return disableHomeButtonDoublePress;
}

- (void)cancelLongPress
{
  v3 = SBLogButtonsHome();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Long press cancelled", v6, 2u);
  }

  self->_longPressDidOccur = 0;
  gestureRecognizerConfiguration = [(SBHomeHardwareButton *)self gestureRecognizerConfiguration];
  longPressGestureRecognizer = [gestureRecognizerConfiguration longPressGestureRecognizer];
  [longPressGestureRecognizer setEnabled:0];
  [longPressGestureRecognizer setEnabled:1];
  [(SBHomeHardwareButtonActions *)self->_buttonActions performLongPressCancelledActions];
}

- (SBHomeHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer homeButtonType:(int64_t)type
{
  recognizerCopy = recognizer;
  v7 = [[SBHomeHardwareButtonActions alloc] initWitHomeButtonType:type];
  v8 = objc_alloc_init(SBHomeHardwareButtonGestureRecognizerConfiguration);
  v9 = +[SBSystemGestureManager mainDisplayManager];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setSystemGestureManager:v9];

  v10 = [(UIHBClickGestureRecognizer *)[SBHBInitialPressDownGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setInitialButtonDownGestureRecognizer:v10];

  v11 = [(UIHBClickGestureRecognizer *)[SBHBInitialPressUpGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setInitialButtonUpGestureRecognizer:v11];

  v12 = [(UIHBClickGestureRecognizer *)[SBHBSinglePressUpGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setSinglePressUpGestureRecognizer:v12];

  v13 = [(UIHBClickGestureRecognizer *)[SBHBAcceleratedSinglePressUpGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setAcceleratedSinglePressUpGestureRecognizer:v13];

  v14 = [(UIHBLongClickGestureRecognizer *)[SBHBLongPressGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setLongPressGestureRecognizer:v14];

  v15 = [(UIHBClickGestureRecognizer *)[SBHBDoublePressDownGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setDoublePressDownGestureRecognizer:v15];

  v16 = [(UIHBClickGestureRecognizer *)[SBHBDoublePressUpGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setDoublePressUpGestureRecognizer:v16];

  v17 = [(UIHBClickGestureRecognizer *)[SBHBTriplePressUpGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setTriplePressUpGestureRecognizer:v17];

  v18 = [(UIHBClickGestureRecognizer *)[SBHBDoubleTapUpGestureRecognizer alloc] initWithTarget:0 action:0];
  [(SBHomeHardwareButtonGestureRecognizerConfiguration *)v8 setDoubleTapUpGestureRecognizer:v18];

  v19 = [(SBHomeHardwareButton *)self initWithScreenshotGestureRecognizer:recognizerCopy homeButtonType:type buttonActions:v7 gestureRecognizerConfiguration:v8];
  return v19;
}

- (SBHomeHardwareButton)initWithScreenshotGestureRecognizer:(id)recognizer homeButtonType:(int64_t)type buttonActions:(id)actions gestureRecognizerConfiguration:(id)configuration
{
  recognizerCopy = recognizer;
  actionsCopy = actions;
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = SBHomeHardwareButton;
  v13 = [(SBHomeHardwareButton *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_screenshotGestureRecognizer, recognizerCopy);
    v14->_homeButtonType = type;
    [(SBHomeHardwareButton *)v14 _createGestureRecognizersWithConfiguration:configurationCopy];
    objc_storeStrong(&v14->_buttonActions, actions);
    [(SBHardwareButtonGestureParametersProviderBase *)v14->_buttonActions addHardwareButtonGestureParametersObserver:v14];
    hardwareButtonGestureParameters = [(SBHomeHardwareButtonActions *)v14->_buttonActions hardwareButtonGestureParameters];
    buttonGestureParameters = v14->_buttonGestureParameters;
    v14->_buttonGestureParameters = hardwareButtonGestureParameters;

    if ([configurationCopy shouldConfigureDependencies])
    {
      [(SBHomeHardwareButton *)v14 _reconfigureHomeButton];
      [(SBHomeHardwareButton *)v14 _startObservingReconfigurationTriggers];
    }

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hintSuppressionAssertions = v14->_hintSuppressionAssertions;
    v14->_hintSuppressionAssertions = v17;
  }

  return v14;
}

- (void)configureForwardingToLockButton:(id)button
{
  buttonCopy = button;
  buttonActions = [(SBHomeHardwareButton *)self buttonActions];
  buttonActions2 = [buttonCopy buttonActions];

  [buttonActions configureForwardingToLockButtonActions:buttonActions2];
}

- (void)_setFingerDetectionEnabled:(BOOL)enabled
{
  fingerDetectEnabledAssertion = self->_fingerDetectEnabledAssertion;
  if ((((fingerDetectEnabledAssertion == 0) ^ enabled) & 1) == 0)
  {
    v12 = fingerDetectEnabledAssertion;
    if (enabled)
    {
      v5 = MEMORY[0x277D67C98];
      v6 = fingerDetectEnabledAssertion;
      sharedInstance = [v5 sharedInstance];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [(BSInvalidatable *)sharedInstance acquireFingerDetectionWantedAssertionForReason:v9 HIDEventsOnly:1];
      v11 = self->_fingerDetectEnabledAssertion;
      self->_fingerDetectEnabledAssertion = v10;
    }

    else
    {
      self->_fingerDetectEnabledAssertion = 0;
      sharedInstance = fingerDetectEnabledAssertion;
    }

    [(BSInvalidatable *)v12 invalidate];
  }
}

- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters
{
  parametersCopy = parameters;
  providerCopy = provider;
  v9 = SBLogButtonsHome();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "reconfiguring due to AX prefs change", v11, 2u);
  }

  buttonActions = self->_buttonActions;
  if (buttonActions == providerCopy)
  {
    objc_storeStrong(&self->_buttonGestureParameters, parameters);
  }

  [(SBHomeHardwareButton *)self _reconfigureHomeButton];
}

- (void)_startObservingReconfigurationTriggers
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = +[SBDefaults localDefaults];
  hardwareDefaults = [v3 hardwareDefaults];

  v5 = +[SBDefaults localDefaults];
  accessibilityDefaults = [v5 accessibilityDefaults];

  v6 = +[SBDefaults localDefaults];
  demoDefaults = [v6 demoDefaults];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"storeDemoApplicationLockEnabled"];
  v28[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__SBHomeHardwareButton__startObservingReconfigurationTriggers__block_invoke;
  v25[3] = &unk_2783A8C18;
  v25[4] = self;
  v10 = MEMORY[0x277D85CD0];
  v11 = [demoDefaults observeDefaults:v9 onQueue:MEMORY[0x277D85CD0] withBlock:v25];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableHomeButton"];
  v27[0] = v12;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableHomeButtonDoublePress"];
  v27[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__SBHomeHardwareButton__startObservingReconfigurationTriggers__block_invoke_124;
  v24[3] = &unk_2783A8C18;
  v24[4] = self;
  v15 = [hardwareDefaults observeDefaults:v14 onQueue:v10 withBlock:v24];

  if (+[SBReachabilityManager reachabilitySupported])
  {
    v16 = +[SBReachabilityManager sharedInstance];
    -[SBHomeHardwareButton _setFingerDetectionEnabled:](self, "_setFingerDetectionEnabled:", [v16 reachabilityEnabled]);
  }

  else
  {
    [(SBHomeHardwareButton *)self _setFingerDetectionEnabled:0];
  }

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"allowReachability", accessibilityDefaults}];
  v26 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__SBHomeHardwareButton__startObservingReconfigurationTriggers__block_invoke_127;
  v23[3] = &unk_2783A8C18;
  v23[4] = self;
  v19 = MEMORY[0x277D85CD0];
  v20 = [v22 observeDefaults:v18 onQueue:MEMORY[0x277D85CD0] withBlock:v23];
}

uint64_t __62__SBHomeHardwareButton__startObservingReconfigurationTriggers__block_invoke(uint64_t a1)
{
  v2 = SBLogButtonsHome();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "reconfiguring due to demo prefs change", v4, 2u);
  }

  return [*(a1 + 32) _reconfigureHomeButton];
}

uint64_t __62__SBHomeHardwareButton__startObservingReconfigurationTriggers__block_invoke_124(uint64_t a1)
{
  v2 = SBLogButtonsHome();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "reconfiguring due to SB prefs change", v4, 2u);
  }

  return [*(a1 + 32) _reconfigureHomeButton];
}

uint64_t __62__SBHomeHardwareButton__startObservingReconfigurationTriggers__block_invoke_127(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (+[SBReachabilityManager reachabilitySupported])
  {
    v2 = +[SBReachabilityManager sharedInstance];
    v3 = [v2 reachabilityEnabled];
  }

  else
  {
    v3 = 0;
  }

  v4 = SBLogButtonsHome();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "allowReachability changed, requesting setFingerDetect:%d", v6, 8u);
  }

  [*(a1 + 32) _setFingerDetectionEnabled:v3];
  return [*(a1 + 32) _reconfigureHomeButton];
}

- (void)_reconfigureHomeButton
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = +[SBDefaults localDefaults];
  hardwareDefaults = [v3 hardwareDefaults];

  v5 = +[SBDefaults localDefaults];
  demoDefaults = [v5 demoDefaults];

  maximumPressCount = [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters maximumPressCount];
  if (([hardwareDefaults disableHomeButtonDoublePress] & 1) != 0 || (objc_msgSend(hardwareDefaults, "disableHomeButton") & 1) != 0 || objc_msgSend(demoDefaults, "isStoreDemoApplicationLockEnabled"))
  {
    maximumPressCount = 1;
  }

  [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters multiplePressTimeInterval];
  v9 = v8;
  if (BSFloatIsZero())
  {
    v9 = 0.35;
  }

  else
  {
    v10 = SBLogButtonsHome();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v34 = v9;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "maximumMultiplePressInterval override from AX is:%g", buf, 0xCu);
    }
  }

  if (+[SBReachabilityManager reachabilitySupported])
  {
    v11 = +[SBReachabilityManager sharedInstance];
    if ([v11 reachabilityEnabled])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = v9 + -0.1;
  maximumTapCount = self->_maximumTapCount;
  self->_maximumTapCount = v12;
  [(SBHomeHardwareButton *)self _reconfigureGestureRecognizersForNewMaximumTapCount:v12 oldMaximumTapCount:maximumTapCount];
  maximumPressCount = self->_maximumPressCount;
  self->_maximumPressCount = maximumPressCount;
  [(SBHomeHardwareButton *)self _reconfigureGestureRecognizersForNewMaximumPressCount:maximumPressCount oldMaximumPressCount:maximumPressCount];
  lastObject = [(NSMutableOrderedSet *)self->_longPressDurationAssertions lastObject];
  [lastObject duration];
  v18 = v17;

  if (v18 <= 0.0)
  {
    [(SBHardwareButtonGestureParameters *)self->_buttonGestureParameters longPressTimeInterval];
    v22 = 0.5;
    if (v21 <= 0.0)
    {
      goto LABEL_24;
    }

    v18 = v21;
    v19 = SBLogButtonsHome();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v34 = v18;
      v20 = "maximumLongPressDuration from plugins is:%g";
      goto LABEL_22;
    }
  }

  else
  {
    v19 = SBLogButtonsHome();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v34 = v18;
      v20 = "maximumLongPressDuration override from assertion is:%g";
LABEL_22:
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
    }
  }

  v22 = v18;
LABEL_24:
  if (v9 < v13)
  {
    v23 = SBLogButtonsHome();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v34 = v9;
      v35 = 2048;
      v36 = v9;
      v37 = 2048;
      v38 = v9;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_INFO, "multiplePressInterval: minimum > maximum, using maximum(%g): %g > %g", buf, 0x20u);
    }

    v13 = v9;
  }

  v24 = 0.2;
  if (v22 < 0.2)
  {
    v25 = SBLogButtonsHome();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v34 = v22;
      v35 = 2048;
      v36 = v22;
      v37 = 2048;
      v38 = v22;
      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_INFO, "longPressDuration: minimum > maximum, using maximum(%g): %g > %g", buf, 0x20u);
    }

    v24 = v22;
  }

  [(SBHomeHardwareButtonActions *)self->_buttonActions setCurrentLongPressDuration:v22];
  [MEMORY[0x277CF05C8] definitionForHomeButton];
  v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [*&v26 setMaximumPressCount:maximumPressCount];
  [*&v26 setMaximumTapCount:v12];
  [*&v26 setMinimumLongPressTimeInterval:v24];
  [*&v26 setMaximumLongPressTimeInterval:v22];
  [*&v26 setMinimumMultiplePressTimeInterval:v13];
  [*&v26 setMaximumMultiplePressTimeInterval:v9];
  homeButtonHapticType = [hardwareDefaults homeButtonHapticType];
  if ((homeButtonHapticType - 1) >= 3)
  {
    v28 = 0;
  }

  else
  {
    v28 = homeButtonHapticType;
  }

  [*&v26 setClickHapticAssetType:v28];
  [(SBHomeHardwareButton *)self setButtonDefinition:*&v26];
  v29 = SBLogButtonsHome();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v34 = v26;
    _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "new button definition:%{public}@", buf, 0xCu);
  }

  mEMORY[0x277CF05C0] = [MEMORY[0x277CF05C0] sharedInstance];
  v32 = v26;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  [mEMORY[0x277CF05C0] applyDefinitions:v31];
}

- (void)_createGestureRecognizersWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  systemGestureManager = [configurationCopy systemGestureManager];
  objc_storeStrong(&self->_gestureRecognizerConfiguration, configuration);
  initialButtonDownGestureRecognizer = [configurationCopy initialButtonDownGestureRecognizer];
  [initialButtonDownGestureRecognizer addTarget:self action:sel_initialButtonDown_];
  [initialButtonDownGestureRecognizer setClickCount:1];
  [initialButtonDownGestureRecognizer setRecognizesOnPressPhaseBegan:1];
  [initialButtonDownGestureRecognizer setDelegate:self];
  [systemGestureManager addGestureRecognizer:initialButtonDownGestureRecognizer withType:72];
  initialButtonUpGestureRecognizer = [configurationCopy initialButtonUpGestureRecognizer];
  [initialButtonUpGestureRecognizer addTarget:self action:sel_initialButtonUp_];
  [initialButtonUpGestureRecognizer setClickCount:1];
  [initialButtonUpGestureRecognizer setRecognizesOnPressPhaseBegan:0];
  [initialButtonUpGestureRecognizer setDelegate:self];
  v17 = initialButtonUpGestureRecognizer;
  [systemGestureManager addGestureRecognizer:initialButtonUpGestureRecognizer withType:73];
  singlePressUpGestureRecognizer = [configurationCopy singlePressUpGestureRecognizer];
  [singlePressUpGestureRecognizer addTarget:self action:sel_singlePressUp_];
  [singlePressUpGestureRecognizer setClickCount:1];
  [singlePressUpGestureRecognizer setDelegate:self];
  [systemGestureManager addGestureRecognizer:singlePressUpGestureRecognizer withType:74];
  acceleratedSinglePressUpGestureRecognizer = [configurationCopy acceleratedSinglePressUpGestureRecognizer];
  [acceleratedSinglePressUpGestureRecognizer addTarget:self action:sel_acceleratedSinglePressUp_];
  [acceleratedSinglePressUpGestureRecognizer setClickCount:1];
  [acceleratedSinglePressUpGestureRecognizer setDelegate:self];
  [systemGestureManager addGestureRecognizer:acceleratedSinglePressUpGestureRecognizer withType:75];
  longPressGestureRecognizer = [configurationCopy longPressGestureRecognizer];
  [longPressGestureRecognizer addTarget:self action:sel_longPress_];
  [longPressGestureRecognizer setDelegate:self];
  [systemGestureManager addGestureRecognizer:longPressGestureRecognizer withType:76];
  doublePressDownGestureRecognizer = [configurationCopy doublePressDownGestureRecognizer];
  [doublePressDownGestureRecognizer addTarget:self action:sel_doublePressDown_];
  [doublePressDownGestureRecognizer setClickCount:2];
  [doublePressDownGestureRecognizer setRecognizesOnPressPhaseBegan:1];
  [doublePressDownGestureRecognizer setDelegate:self];
  [systemGestureManager addGestureRecognizer:doublePressDownGestureRecognizer withType:77];
  doublePressUpGestureRecognizer = [configurationCopy doublePressUpGestureRecognizer];
  [doublePressUpGestureRecognizer addTarget:self action:sel_doublePressUp_];
  [doublePressUpGestureRecognizer setClickCount:2];
  [doublePressUpGestureRecognizer setDelegate:self];
  [systemGestureManager addGestureRecognizer:doublePressUpGestureRecognizer withType:78];
  triplePressUpGestureRecognizer = [configurationCopy triplePressUpGestureRecognizer];
  [triplePressUpGestureRecognizer addTarget:self action:sel_triplePressUp_];
  [triplePressUpGestureRecognizer setClickCount:3];
  [triplePressUpGestureRecognizer setDelegate:self];
  doubleTapUpGestureRecognizer = [configurationCopy doubleTapUpGestureRecognizer];
  [doubleTapUpGestureRecognizer addTarget:self action:sel_doubleTapUp_];
  [doubleTapUpGestureRecognizer setClickCount:2];
  [doubleTapUpGestureRecognizer setDelegate:self];
  [doubleTapUpGestureRecognizer setAllowedPressTypes:&unk_28336E340];
  if ([configurationCopy shouldConfigureDependencies])
  {
    if (self->_homeButtonType != 2)
    {
      v16 = initialButtonDownGestureRecognizer;
      WeakRetained = objc_loadWeakRetained(&self->_screenshotGestureRecognizer);
      [singlePressUpGestureRecognizer requireGestureRecognizerToFail:WeakRetained];
      [acceleratedSinglePressUpGestureRecognizer requireGestureRecognizerToFail:WeakRetained];
      [longPressGestureRecognizer requireGestureRecognizerToFail:WeakRetained];
      [WeakRetained addTarget:self action:sel_screenshotRecognizerDidRecognize_];

      initialButtonDownGestureRecognizer = v16;
    }

    [singlePressUpGestureRecognizer requireGestureRecognizerToFail:acceleratedSinglePressUpGestureRecognizer];
  }
}

- (void)_reconfigureGestureRecognizersForNewMaximumTapCount:(int64_t)count oldMaximumTapCount:(int64_t)tapCount
{
  if (count != tapCount)
  {
    gestureRecognizerConfiguration = [(SBHomeHardwareButton *)self gestureRecognizerConfiguration];
    systemGestureManager = [gestureRecognizerConfiguration systemGestureManager];
    doubleTapUpGestureRecognizer = [gestureRecognizerConfiguration doubleTapUpGestureRecognizer];
    if (count < 2)
    {
      [systemGestureManager removeGestureRecognizer:doubleTapUpGestureRecognizer];
    }

    else
    {
      [systemGestureManager addGestureRecognizer:doubleTapUpGestureRecognizer withType:81];
    }
  }
}

- (void)_reconfigureGestureRecognizersForNewMaximumPressCount:(int64_t)count oldMaximumPressCount:(int64_t)pressCount
{
  if (count != pressCount)
  {
    gestureRecognizerConfiguration = [(SBHomeHardwareButton *)self gestureRecognizerConfiguration];
    systemGestureManager = [gestureRecognizerConfiguration systemGestureManager];
    singlePressUpGestureRecognizer = [gestureRecognizerConfiguration singlePressUpGestureRecognizer];
    doublePressDownGestureRecognizer = [gestureRecognizerConfiguration doublePressDownGestureRecognizer];
    doublePressUpGestureRecognizer = [gestureRecognizerConfiguration doublePressUpGestureRecognizer];
    triplePressUpGestureRecognizer = [gestureRecognizerConfiguration triplePressUpGestureRecognizer];
    v11 = SBLogButtonsHome();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (count < 3)
    {
      if (v12)
      {
        [SBHomeHardwareButton _reconfigureGestureRecognizersForNewMaximumPressCount:oldMaximumPressCount:];
      }

      [doublePressDownGestureRecognizer removeFailureRequirement:triplePressUpGestureRecognizer];
      [doublePressUpGestureRecognizer removeFailureRequirement:triplePressUpGestureRecognizer];
      [systemGestureManager removeGestureRecognizer:triplePressUpGestureRecognizer];
      if (count != 2)
      {
        v14 = SBLogButtonsHome();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [SBHomeHardwareButton _reconfigureGestureRecognizersForNewMaximumPressCount:oldMaximumPressCount:];
        }

        [singlePressUpGestureRecognizer removeFailureRequirement:doublePressUpGestureRecognizer];
        [singlePressUpGestureRecognizer removeFailureRequirement:doublePressDownGestureRecognizer];
        goto LABEL_15;
      }
    }

    else
    {
      if (v12)
      {
        [SBHomeHardwareButton _reconfigureGestureRecognizersForNewMaximumPressCount:oldMaximumPressCount:];
      }

      [systemGestureManager addGestureRecognizer:triplePressUpGestureRecognizer withType:80];
      [doublePressDownGestureRecognizer requireGestureRecognizerToFail:triplePressUpGestureRecognizer];
      [doublePressUpGestureRecognizer requireGestureRecognizerToFail:triplePressUpGestureRecognizer];
    }

    v13 = SBLogButtonsHome();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SBHomeHardwareButton _reconfigureGestureRecognizersForNewMaximumPressCount:oldMaximumPressCount:];
    }

    [singlePressUpGestureRecognizer requireGestureRecognizerToFail:doublePressUpGestureRecognizer];
    [singlePressUpGestureRecognizer requireGestureRecognizerToFail:doublePressDownGestureRecognizer];
LABEL_15:
  }
}

- (void)screenshotRecognizerDidRecognize:(id)recognize
{
  if ([recognize state] == 3)
  {
    if (self->_longPressDidOccur)
    {
      [(SBHomeHardwareButton *)self cancelLongPress];
    }

    buttonActions = self->_buttonActions;

    [(SBHomeHardwareButtonActions *)buttonActions performFinalButtonUpActions];
  }
}

- (void)addHintSuppressionAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (assertionCopy)
  {
    v5 = assertionCopy;
    if (objc_opt_respondsToSelector())
    {
      [(NSMutableSet *)self->_hintSuppressionAssertions addObject:v5];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)removeHintSuppressionAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (assertionCopy)
  {
    v5 = assertionCopy;
    if (objc_opt_respondsToSelector())
    {
      [(NSMutableSet *)self->_hintSuppressionAssertions removeObject:v5];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)addLongPressDurationAssertion:(id)assertion
{
  v11 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (assertionCopy)
  {
    longPressDurationAssertions = self->_longPressDurationAssertions;
    if (!longPressDurationAssertions)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:1];
      v7 = self->_longPressDurationAssertions;
      self->_longPressDurationAssertions = v6;

      longPressDurationAssertions = self->_longPressDurationAssertions;
    }

    [(NSMutableOrderedSet *)longPressDurationAssertions addObject:assertionCopy];
    v8 = SBLogButtonsHome();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = assertionCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "reconfiguring due to long press duration assertion addition: %{public}@", &v9, 0xCu);
    }

    [(SBHomeHardwareButton *)self _reconfigureHomeButton];
  }
}

- (void)removeLongPressDurationAssertion:(id)assertion
{
  v9 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (assertionCopy)
  {
    [(NSMutableOrderedSet *)self->_longPressDurationAssertions removeObject:assertionCopy];
    if (![(NSMutableOrderedSet *)self->_longPressDurationAssertions count])
    {
      longPressDurationAssertions = self->_longPressDurationAssertions;
      self->_longPressDurationAssertions = 0;
    }

    v6 = SBLogButtonsHome();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = assertionCopy;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "reconfiguring due to long press duration assertion removal: %{public}@", &v7, 0xCu);
    }

    [(SBHomeHardwareButton *)self _reconfigureHomeButton];
  }
}

- (int64_t)hapticType
{
  v2 = +[SBDefaults localDefaults];
  hardwareDefaults = [v2 hardwareDefaults];

  homeButtonHapticType = [hardwareDefaults homeButtonHapticType];
  return homeButtonHapticType;
}

- (void)setHapticType:(int64_t)type
{
  v5 = +[SBDefaults localDefaults];
  hardwareDefaults = [v5 hardwareDefaults];

  [hardwareDefaults setHomeButtonHapticType:type];
  [(SBHomeHardwareButton *)self _reconfigureHomeButton];
}

- (BOOL)supportsAcceleratedAppDismiss
{
  if (self->_homeButtonType != 1)
  {
    return 0;
  }

  buttonDefinition = [(SBHomeHardwareButton *)self buttonDefinition];
  maximumPressCount = [buttonDefinition maximumPressCount];
  [buttonDefinition maximumMultiplePressTimeInterval];
  v6 = v4 <= 0.349999994 && maximumPressCount < 3;

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  v30[6] = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  gestureRecognizerConfiguration = [(SBHomeHardwareButton *)self gestureRecognizerConfiguration];
  WeakRetained = objc_loadWeakRetained(&self->_screenshotGestureRecognizer);
  v10 = WeakRetained;
  v11 = 1;
  if (WeakRetained != recognizerCopy && WeakRetained != gestureRecognizerCopy)
  {
    initialButtonDownGestureRecognizer = [gestureRecognizerConfiguration initialButtonDownGestureRecognizer];
    v13 = initialButtonDownGestureRecognizer;
    if (initialButtonDownGestureRecognizer != recognizerCopy && initialButtonDownGestureRecognizer != gestureRecognizerCopy)
    {
      initialButtonUpGestureRecognizer = [gestureRecognizerConfiguration initialButtonUpGestureRecognizer];
      v15 = initialButtonUpGestureRecognizer;
      if (initialButtonUpGestureRecognizer != recognizerCopy && initialButtonUpGestureRecognizer != gestureRecognizerCopy)
      {
        singlePressUpGestureRecognizer = [gestureRecognizerConfiguration singlePressUpGestureRecognizer];
        doublePressDownGestureRecognizer = [gestureRecognizerConfiguration doublePressDownGestureRecognizer];
        doublePressUpGestureRecognizer = [gestureRecognizerConfiguration doublePressUpGestureRecognizer];
        triplePressUpGestureRecognizer = [gestureRecognizerConfiguration triplePressUpGestureRecognizer];
        longPressGestureRecognizer = [gestureRecognizerConfiguration longPressGestureRecognizer];
        v30[0] = doublePressUpGestureRecognizer;
        v30[1] = doublePressDownGestureRecognizer;
        v20 = singlePressUpGestureRecognizer;
        v21 = 0;
        v30[2] = v20;
        v30[3] = triplePressUpGestureRecognizer;
        v30[4] = v20;
        v30[5] = longPressGestureRecognizer;
        while (1)
        {
          v22 = v30[v21];
          v23 = &v30[v21];
          if (v22 == recognizerCopy && v23[1] == gestureRecognizerCopy)
          {
            break;
          }

          v24 = v23[1];
          if (v22 == gestureRecognizerCopy && v24 == recognizerCopy)
          {
            break;
          }

          v26 = v21 > 3;
          v21 += 2;
          if (v26)
          {
            v11 = 0;
            goto LABEL_18;
          }
        }

        v11 = 1;
LABEL_18:
        for (i = 5; i != -1; --i)
        {
        }
      }
    }
  }

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  gestureRecognizerConfiguration = [(SBHomeHardwareButton *)self gestureRecognizerConfiguration];
  doubleTapUpGestureRecognizer = [gestureRecognizerConfiguration doubleTapUpGestureRecognizer];
  initialButtonDownGestureRecognizer = [gestureRecognizerConfiguration initialButtonDownGestureRecognizer];

  v12 = doubleTapUpGestureRecognizer == recognizerCopy && initialButtonDownGestureRecognizer == gestureRecognizerCopy;
  return v12;
}

- (void)cancelHardwareButtonPress
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allGestureRecognizers = [(SBHomeHardwareButtonGestureRecognizerConfiguration *)self->_gestureRecognizerConfiguration allGestureRecognizers];
  v4 = [allGestureRecognizers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allGestureRecognizers);
        }

        [(SBHomeHardwareButton *)self _cancelGestureRecognizer:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allGestureRecognizers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v31 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
  hardwareButtonIdentifier = [(SBHomeHardwareButton *)self hardwareButtonIdentifier];
  LOBYTE(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:hardwareButtonIdentifier];

  if (hardwareButtonCoordinator)
  {
    v7 = +[SBDefaults localDefaults];
    hardwareDefaults = [v7 hardwareDefaults];
    disableHomeButton = [hardwareDefaults disableHomeButton];

    if (disableHomeButton)
    {
      v10 = SBLogButtonsHome();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "Preventing all home recognizers because user default disables home button";
LABEL_7:
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
        goto LABEL_8;
      }

      goto LABEL_8;
    }

    v14 = +[SBDefaults localDefaults];
    demoDefaults = [v14 demoDefaults];
    isStoreDemoApplicationLockEnabled = [demoDefaults isStoreDemoApplicationLockEnabled];

    if (isStoreDemoApplicationLockEnabled)
    {
      v10 = SBLogButtonsHome();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v11 = "Preventing all home recognizers because app store demo lock enabled";
      goto LABEL_7;
    }

    restartManager = [SBApp restartManager];
    v10 = restartManager;
    if (restartManager && ([restartManager startupTransition], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
    {
      if (![v10 isPendingExit])
      {
        gestureRecognizerConfiguration = [(SBHomeHardwareButton *)self gestureRecognizerConfiguration];
        acceleratedSinglePressUpGestureRecognizer = [gestureRecognizerConfiguration acceleratedSinglePressUpGestureRecognizer];
        if (acceleratedSinglePressUpGestureRecognizer == beginCopy)
        {
          _acceleratedSinglePressRecognizerShouldBegin = [(SBHomeHardwareButton *)self _acceleratedSinglePressRecognizerShouldBegin];
        }

        else
        {
          doublePressDownGestureRecognizer = [gestureRecognizerConfiguration doublePressDownGestureRecognizer];
          doublePressUpGestureRecognizer = [gestureRecognizerConfiguration doublePressUpGestureRecognizer];
          v25 = doublePressUpGestureRecognizer;
          if (doublePressDownGestureRecognizer == beginCopy || doublePressUpGestureRecognizer == beginCopy)
          {
            v28 = 0;
            _acceleratedSinglePressRecognizerShouldBegin = [(SBHomeHardwareButton *)self _isMenuDoublePressAllowed:&v28];
            longPressGestureRecognizer = v28;
            if (!_acceleratedSinglePressRecognizerShouldBegin)
            {
              v27 = SBLogButtonsHome();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v30 = longPressGestureRecognizer;
                _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_INFO, "Preventing double press recognizer for reason: %{public}@", buf, 0xCu);
              }
            }
          }

          else
          {
            longPressGestureRecognizer = [gestureRecognizerConfiguration longPressGestureRecognizer];
            _acceleratedSinglePressRecognizerShouldBegin = longPressGestureRecognizer != beginCopy || [(SBHomeHardwareButton *)self _longPressGestureRecognizerShouldBegin:longPressGestureRecognizer];
          }
        }

        goto LABEL_19;
      }

      gestureRecognizerConfiguration = SBLogButtonsHome();
      if (os_log_type_enabled(gestureRecognizerConfiguration, OS_LOG_TYPE_INFO))
      {
        pendingRestartTransitionRequest = [v10 pendingRestartTransitionRequest];
        *buf = 138543362;
        v30 = pendingRestartTransitionRequest;
        v21 = "Preventing all home recognizers because we have a pending restart transition: %{public}@";
        goto LABEL_17;
      }
    }

    else
    {
      gestureRecognizerConfiguration = SBLogButtonsHome();
      if (os_log_type_enabled(gestureRecognizerConfiguration, OS_LOG_TYPE_INFO))
      {
        pendingRestartTransitionRequest = [v10 startupTransition];
        *buf = 138543362;
        v30 = pendingRestartTransitionRequest;
        v21 = "Preventing all home recognizers because we're in a startup transition: %{public}@";
LABEL_17:
        _os_log_impl(&dword_21ED4E000, gestureRecognizerConfiguration, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
      }
    }

    _acceleratedSinglePressRecognizerShouldBegin = 0;
LABEL_19:

    goto LABEL_9;
  }

  v10 = SBLogButtonsHome();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v11 = "Preventing all home recognizers because hardware button coordinator says nope";
    goto LABEL_7;
  }

LABEL_8:
  _acceleratedSinglePressRecognizerShouldBegin = 0;
LABEL_9:

  return _acceleratedSinglePressRecognizerShouldBegin;
}

- (BOOL)_longPressGestureRecognizerShouldBegin:(id)begin
{
  lockOutController = [SBApp lockOutController];
  isBlocked = [lockOutController isBlocked];

  if (isBlocked)
  {
    v5 = SBLogButtonsHome();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      v6 = "Preventing long press recognizer because deviceIsBlocked";
      v7 = &v18;
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v8 = +[SBSetupManager sharedInstance];
  isInSetupMode = [v8 isInSetupMode];

  if (isInSetupMode)
  {
    v5 = SBLogButtonsHome();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Preventing long press recognizer because isInSetupMode";
      v7 = buf;
      goto LABEL_7;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v5 = +[SBSyncController sharedInstance];
  if ([v5 isRestoring])
  {
    v10 = SBLogButtonsHome();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Preventing long press recognizer because SBSyncController isRestoring", v16, 2u);
    }

    goto LABEL_12;
  }

  isResetting = [v5 isResetting];
  if (isResetting)
  {
    v14 = SBLogButtonsHome();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Preventing long press recognizer because SBSyncController isResetting", v15, 2u);
    }
  }

  v11 = isResetting ^ 1;
LABEL_13:

  return v11;
}

- (void)_terminateHomeButtonEventAtCount:(int64_t)count
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = count;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "EMU terminate with count:%d", v10, 8u);
  }

  switch(count)
  {
    case 3:
      buttonActions = self->_buttonActions;
      p_buttonActions = &self->_buttonActions;
      [(SBHomeHardwareButtonActions *)buttonActions performTriplePressUpActions];
      break;
    case 2:
      v8 = self->_buttonActions;
      p_buttonActions = &self->_buttonActions;
      [(SBHomeHardwareButtonActions *)v8 performDoublePressDownActions];
      break;
    case 1:
      v7 = self->_buttonActions;
      p_buttonActions = &self->_buttonActions;
      [(SBHomeHardwareButtonActions *)v7 performSinglePressUpActions];
      break;
    default:
      return;
  }

  [(SBHomeHardwareButtonActions *)*p_buttonActions performFinalButtonUpActions];
}

- (BOOL)emulateHomeButtonEventsIfNeeded:(__IOHIDEvent *)needed
{
  v40 = *MEMORY[0x277D85DE8];
  SenderID = IOHIDEventGetSenderID();
  if (IOHIDEventGetIntegerValue())
  {
    if ((IOHIDEventGetPhase() & 1) == 0 && IOHIDEventGetIntegerValue() <= 1 && !IOHIDEventGetIntegerValue())
    {
      v5 = SBLogButtonsHome();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        maximumPressCount = [(BKSButtonHapticsDefinition *)self->_buttonDefinition maximumPressCount];
        *buf = 134218240;
        *v39 = SenderID;
        *&v39[8] = 1024;
        *&v39[10] = maximumPressCount;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SenderID:%llX appears to be synthesizing home button events without press count/terminal support; SpringBoard is providing emulation for max count:%d", buf, 0x12u);
      }

      emulatedPerSenderDownCount = self->_emulatedPerSenderDownCount;
      if (!emulatedPerSenderDownCount)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = self->_emulatedPerSenderDownCount;
        self->_emulatedPerSenderDownCount = v8;

        emulatedPerSenderDownCount = self->_emulatedPerSenderDownCount;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
      v11 = [(NSMutableDictionary *)emulatedPerSenderDownCount objectForKey:v10];
      integerValue = [v11 integerValue];

      if (integerValue < [(BKSButtonHapticsDefinition *)self->_buttonDefinition maximumPressCount])
      {
        v13 = integerValue + 1;
      }

      else
      {
        v13 = 1;
      }

      v14 = ++emulateHomeButtonEventsIfNeeded__sTerminalGeneration;
      emulateHomeButtonEventsIfNeeded__sLastSenderID = SenderID;
      [(BKSButtonHapticsDefinition *)self->_buttonDefinition maximumMultiplePressTimeInterval];
      v16 = dispatch_time(0, (v15 * 1000000000.0));
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __56__SBHomeHardwareButton_emulateHomeButtonEventsIfNeeded___block_invoke;
      v37[3] = &unk_2783AECC8;
      v37[4] = self;
      v37[5] = v14;
      v37[6] = SenderID;
      v37[7] = v13;
      dispatch_after(v16, MEMORY[0x277D85CD0], v37);
      v17 = self->_emulatedPerSenderDownCount;
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
      [(NSMutableDictionary *)v17 setObject:v18 forKey:v19];

      v20 = SBLogButtonsHome();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v39 = v13;
        *&v39[4] = 2048;
        *&v39[6] = SenderID;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "EMU down count:%d senderID:%llX", buf, 0x12u);
      }

      if (v13 == 3 || v13 == 2)
      {
        goto LABEL_18;
      }

      if (v13 == 1)
      {
        [(SBHomeHardwareButtonActions *)self->_buttonActions performInitialButtonDownActions];
LABEL_18:
        v21 = 1;
        goto LABEL_36;
      }
    }

    goto LABEL_29;
  }

  v22 = self->_emulatedPerSenderDownCount;
  if (!v22)
  {
LABEL_29:
    v21 = 0;
    goto LABEL_36;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
  v24 = [(NSMutableDictionary *)v22 objectForKey:v23];

  if (v24)
  {
    integerValue2 = [v24 integerValue];
    v26 = integerValue2;
    if ((integerValue2 - 2) < 2)
    {
LABEL_25:
      if (v26 == [(BKSButtonHapticsDefinition *)self->_buttonDefinition maximumPressCount])
      {
        ++emulateHomeButtonEventsIfNeeded__sTerminalGeneration;
        [(SBHomeHardwareButton *)self _terminateHomeButtonEventAtCount:v26];
        v27 = self->_emulatedPerSenderDownCount;
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
        [(NSMutableDictionary *)v27 removeObjectForKey:v28];
      }

      v29 = SBLogButtonsHome();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 67109376;
      *v39 = v26;
      *&v39[4] = 2048;
      *&v39[6] = SenderID;
      v30 = "EMU eat up count:%d senderID:%llX";
      v31 = v29;
      v32 = 18;
      goto LABEL_33;
    }

    if (!integerValue2)
    {
      v33 = self->_emulatedPerSenderDownCount;
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
      [(NSMutableDictionary *)v33 removeObjectForKey:v34];

      v29 = SBLogButtonsHome();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_34:

        v21 = 1;
        goto LABEL_35;
      }

      *buf = 134217984;
      *v39 = SenderID;
      v30 = "EMU eat up after long press for senderID:%llX";
      v31 = v29;
      v32 = 12;
LABEL_33:
      _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_34;
    }

    if (integerValue2 == 1)
    {
      [(SBHomeHardwareButtonActions *)self->_buttonActions performInitialButtonUpActions];
      [(SBHomeHardwareButtonActions *)self->_buttonActions performLongPressCancelledActions];
      goto LABEL_25;
    }
  }

  v21 = 0;
LABEL_35:

LABEL_36:
  v35 = SBLogButtonsHome();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    [(SBHomeHardwareButton *)v21 emulateHomeButtonEventsIfNeeded:v35];
  }

  return v21;
}

void __56__SBHomeHardwareButton_emulateHomeButtonEventsIfNeeded___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == emulateHomeButtonEventsIfNeeded__sTerminalGeneration || emulateHomeButtonEventsIfNeeded__sLastSenderID != *(a1 + 48))
  {
    [*(a1 + 32) _terminateHomeButtonEventAtCount:*(a1 + 56)];
    v2 = *(*(a1 + 32) + 104);
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
    [v2 setObject:&unk_283370DF0 forKey:v3];

    ++emulateHomeButtonEventsIfNeeded__sTerminalGeneration;
  }
}

- (void)initialButtonDown:(id)down
{
  v9 = *MEMORY[0x277D85DE8];
  downCopy = down;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([downCopy state]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Initial button down (state:%{public}@)", &v7, 0xCu);
  }

  if ([downCopy state] == 3)
  {
    self->_longPressDidOccur = 0;
    [(SBHomeHardwareButtonActions *)self->_buttonActions performInitialButtonDownActions];
  }
}

- (void)initialButtonUp:(id)up
{
  v9 = *MEMORY[0x277D85DE8];
  upCopy = up;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([upCopy state]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Initial button up (state:%{public}@)", &v7, 0xCu);
  }

  if ([upCopy state] == 3)
  {
    [(SBHomeHardwareButtonActions *)self->_buttonActions performInitialButtonUpActions];
    if (!self->_longPressDidOccur)
    {
      [(SBHomeHardwareButtonActions *)self->_buttonActions performLongPressCancelledActions];
    }
  }
}

- (void)_singlePressUp:(id)up
{
  if ([up state] == 3)
  {
    lockHardwareButton = [SBApp lockHardwareButton];
    [lockHardwareButton cancelLongPress];

    if (self->_longPressDidOccur)
    {
      v5 = SBLogButtonsHome();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Single press -- skipping single press actions due to long press", v6, 2u);
      }
    }

    else
    {
      [(SBHomeHardwareButtonActions *)self->_buttonActions performSinglePressUpActions];
    }

    [(SBHomeHardwareButtonActions *)self->_buttonActions performFinalButtonUpActions];
  }
}

- (void)acceleratedSinglePressUp:(id)up
{
  v9 = *MEMORY[0x277D85DE8];
  upCopy = up;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([upCopy state]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Accelerated single press up (state:%{public}@)", &v7, 0xCu);
  }

  [(SBHomeHardwareButton *)self _singlePressUp:upCopy];
}

- (void)singlePressUp:(id)up
{
  v9 = *MEMORY[0x277D85DE8];
  upCopy = up;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([upCopy state]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Normal single press up (state:%{public}@)", &v7, 0xCu);
  }

  [(SBHomeHardwareButton *)self _singlePressUp:upCopy];
}

- (void)longPress:(id)press
{
  v11 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([pressCopy state]);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Long press (state:%{public}@)", &v9, 0xCu);
  }

  if ([pressCopy state] == 3)
  {
    self->_longPressDidOccur = 1;
    gestureRecognizerConfiguration = [(SBHomeHardwareButton *)self gestureRecognizerConfiguration];
    acceleratedSinglePressUpGestureRecognizer = [gestureRecognizerConfiguration acceleratedSinglePressUpGestureRecognizer];
    [(SBHomeHardwareButton *)self _cancelGestureRecognizer:acceleratedSinglePressUpGestureRecognizer];

    [(SBHomeHardwareButtonActions *)self->_buttonActions performLongPressActions];
  }
}

- (void)doublePressDown:(id)down
{
  v9 = *MEMORY[0x277D85DE8];
  downCopy = down;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([downCopy state]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Double press down (state:%{public}@)", &v7, 0xCu);
  }

  if ([downCopy state] == 3)
  {
    [(SBHomeHardwareButtonActions *)self->_buttonActions performDoublePressDownActions];
    if ([(SBHomeHardwareButton *)self _processDoubleDownAndDoubleUpSimultaneously])
    {
      [(SBHomeHardwareButtonActions *)self->_buttonActions performFinalButtonUpActions];
    }
  }
}

- (void)doublePressUp:(id)up
{
  v9 = *MEMORY[0x277D85DE8];
  upCopy = up;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([upCopy state]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Double press up (state:%{public}@)", &v7, 0xCu);
  }

  if ([upCopy state] == 3 && !-[SBHomeHardwareButton _processDoubleDownAndDoubleUpSimultaneously](self, "_processDoubleDownAndDoubleUpSimultaneously"))
  {
    [(SBHomeHardwareButtonActions *)self->_buttonActions performFinalButtonUpActions];
  }
}

- (void)triplePressUp:(id)up
{
  v9 = *MEMORY[0x277D85DE8];
  upCopy = up;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([upCopy state]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Triple press up (state:%{public}@)", &v7, 0xCu);
  }

  if ([upCopy state] == 3)
  {
    [(SBHomeHardwareButtonActions *)self->_buttonActions performTriplePressUpActions];
    [(SBHomeHardwareButtonActions *)self->_buttonActions performFinalButtonUpActions];
  }
}

- (void)doubleTapUp:(id)up
{
  v9 = *MEMORY[0x277D85DE8];
  upCopy = up;
  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SBSystemGestureRecognizerStateDescription([upCopy state]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Double tap up (state:%{public}@)", &v7, 0xCu);
  }

  if ([upCopy state] == 3)
  {
    [(SBHomeHardwareButtonActions *)self->_buttonActions performDoubleTapUpActions];
  }
}

- (void)_cancelGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy isEnabled])
  {
    [recognizerCopy setEnabled:0];
    [recognizerCopy setEnabled:1];
  }
}

- (BOOL)_isMenuDoublePressAllowed:(id *)allowed
{
  lockOutController = [SBApp lockOutController];
  v6 = +[SBSyncController sharedInstance];
  if ([v6 isInUse])
  {
    v7 = 0;
    v8 = @"syncing data";
    if (!allowed)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([lockOutController isBlocked])
  {
    v7 = 0;
    v8 = @"blocked";
    if (!allowed)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
  v10 = [remoteTransientOverlaySessionManager hasSessionWithPendingButtonEvents:1 options:0];

  if (v10)
  {
    v7 = 0;
    v8 = @"has session with pending lock event";
    if (!allowed)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  _isMenuDoublePressDisabled = [(SBHomeHardwareButton *)self _isMenuDoublePressDisabled];
  v7 = !_isMenuDoublePressDisabled;
  v8 = @"disabled by user default";
  if (!_isMenuDoublePressDisabled)
  {
    v8 = 0;
  }

  if (allowed)
  {
LABEL_13:
    *allowed = v8;
  }

LABEL_14:

  return v7;
}

- (UIGestureRecognizer)screenshotGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_screenshotGestureRecognizer);

  return WeakRetained;
}

- (void)emulateHomeButtonEventsIfNeeded:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "EMU handled:%d", v2, 8u);
}

@end