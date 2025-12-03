@interface SBCaptureHardwareButton
+ (uint64_t)deviceSupportsCaptureButton;
+ (uint64_t)isCaptureFeatureEnabled;
+ (uint64_t)simulateCaptureButtonWithActionButton;
- (BOOL)_isVisionIntelligenceSupported;
- (BOOL)_physicalButtonTargetMatchesExpectedTargetScene;
- (BOOL)_sendCaptureIntentToEligibleForegroundScene;
- (BOOL)_shouldContinueAfterProcessingStateForClickDown;
- (BOOL)_waitingForCaptureAppActivation;
- (BOOL)handleSimulatedCaptureButtonEvent:(uint64_t)event;
- (double)_doubleClickInterval;
- (id)_sendCameraCaptureButtonDownToSceneOverride;
- (id)initWithActivationManager:(void *)manager suppressionManager:(void *)suppressionManager configurationCoordinator:(void *)coordinator restrictionCoordinator:(void *)restrictionCoordinator mainWindowScene:(void *)scene setupManager:(void *)setupManager authenticationController:(void *)controller HUDController:;
- (id)requestActiveScanningModeForReason:(id)reason;
- (id)requestActiveScanningModeUntilSceneAcquisition:(id)acquisition;
- (uint64_t)simulationButtonArbiter;
- (unint64_t)_clickGesture;
- (void)_attemptButtonActivationWithClickCountToActivate:(int64_t)activate atTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp isAccessibilityEvent:(BOOL)event;
- (void)_bufferPressForBundleIdentifier:(id)identifier timestamp:(unint64_t)timestamp;
- (void)_captureButtonGestureRecognizerAction:(id)action;
- (void)_configureButtonProcessor;
- (void)_handleButtonDownAtTimestamp:(unint64_t)timestamp isAccessibilityEvent:(BOOL)event;
- (void)_handleButtonUpAtTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp isAccessibilityEvent:(BOOL)event;
- (void)_handleLongPressAtTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp;
- (void)_ignoreNextButtonUpForReason:(id)reason;
- (void)_invalidateBufferedPress;
- (void)_nextClickTimeoutDidFire;
- (void)_postBufferedPress;
- (void)_processZStackParticipantSettings:(id)settings;
- (void)_reevaluateButtonScanState;
- (void)_resetNextClickTimer;
- (void)_sendCaptureIntentToEligibleForegroundScene;
- (void)cancelHardwareButtonPress;
- (void)captureButtonAppActivatorLaunchDidComplete:(BOOL)complete;
- (void)dealloc;
- (void)performActionsForButtonDown:(id)down;
- (void)performActionsForButtonLongPress:(id)press;
- (void)performActionsForButtonUp:(id)up;
- (void)physicalButtonSceneOverridesDidChange:(id)change;
- (void)setSimulationButtonArbiter:(uint64_t)arbiter;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBCaptureHardwareButton

+ (uint64_t)deviceSupportsCaptureButton
{
  objc_opt_self();

  return MGGetBoolAnswer();
}

+ (uint64_t)isCaptureFeatureEnabled
{
  objc_opt_self();

  return CAMIsCameraButtonEnabled();
}

+ (uint64_t)simulateCaptureButtonWithActionButton
{
  objc_opt_self();
  v0 = +[SBDefaults localDefaults];
  captureButtonDefaults = [v0 captureButtonDefaults];
  simulateCaptureButtonUsingActionButton = [captureButtonDefaults simulateCaptureButtonUsingActionButton];

  return simulateCaptureButtonUsingActionButton;
}

- (id)initWithActivationManager:(void *)manager suppressionManager:(void *)suppressionManager configurationCoordinator:(void *)coordinator restrictionCoordinator:(void *)restrictionCoordinator mainWindowScene:(void *)scene setupManager:(void *)setupManager authenticationController:(void *)controller HUDController:
{
  v17 = a2;
  managerCopy = manager;
  suppressionManagerCopy = suppressionManager;
  coordinatorCopy = coordinator;
  restrictionCoordinatorCopy = restrictionCoordinator;
  sceneCopy = scene;
  setupManagerCopy = setupManager;
  controllerCopy = controller;
  if (!self)
  {
    goto LABEL_10;
  }

  v41 = v17;
  if (!v17)
  {
    [SBCaptureHardwareButton initWithActivationManager:self suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  if (!suppressionManagerCopy)
  {
    [SBCaptureHardwareButton initWithActivationManager:self suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  if (!restrictionCoordinatorCopy)
  {
    [SBCaptureHardwareButton initWithActivationManager:self suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  v54.receiver = self;
  v54.super_class = SBCaptureHardwareButton;
  self = objc_msgSendSuper2(&v54, sel_init);
  if (self)
  {
    v40 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    physicalButtonSceneOverrideManager = [v40 physicalButtonSceneOverrideManager];
    objc_storeStrong(self + 9, physicalButtonSceneOverrideManager);
    v39 = physicalButtonSceneOverrideManager;
    v19 = [(SBPhysicalButtonSceneOverrideManager *)physicalButtonSceneOverrideManager addObserver:self forReason:@"capture button"];
    v20 = self[10];
    self[10] = v19;

    objc_storeStrong(self + 11, a2);
    objc_storeStrong(self + 12, manager);
    objc_storeStrong(self + 13, suppressionManager);
    objc_storeStrong(self + 8, restrictionCoordinator);
    objc_storeStrong(self + 11, a2);
    objc_storeStrong(self + 15, coordinator);
    objc_storeStrong(self + 20, scene);
    objc_storeStrong(self + 21, setupManager);
    objc_storeStrong(self + 22, controller);
    [self _configureButtonProcessor];
    v21 = +[SBCaptureButtonDomain rootSettings];
    v22 = self[17];
    self[17] = v21;

    v23 = controllerCopy;
    v24 = [[SBCaptureHardwareButtonAppActivator alloc] initWithSettingsSnapshot:self[17] windowScene:self[8] scanModeResource:self activationManager:self[11] suppressionManager:self[12] setupManager:self[20] authenticationController:self[21] HUDController:controllerCopy];
    v25 = self[14];
    self[14] = v24;

    zStackResolver = [restrictionCoordinatorCopy zStackResolver];
    v27 = [zStackResolver addObserver:self ofParticipantWithIdentifier:29];
    [self _processZStackParticipantSettings:v27];
    systemGestureManager = [restrictionCoordinatorCopy systemGestureManager];
    [systemGestureManager addGestureRecognizer:self[16] withType:139];
    [self[17] addKeyObserver:self];
    v29 = +[SBDefaults localDefaults];
    captureButtonDefaults = [v29 captureButtonDefaults];

    self[27] = [captureButtonDefaults captureButtonClickCount];
    objc_initWeak(&location, self);
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"captureButtonClickCount"];
    v32 = MEMORY[0x277D85CD0];
    v33 = MEMORY[0x277D85CD0];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __188__SBCaptureHardwareButton_initWithActivationManager_suppressionManager_configurationCoordinator_restrictionCoordinator_mainWindowScene_setupManager_authenticationController_HUDController___block_invoke;
    v49[3] = &unk_2783B00B0;
    objc_copyWeak(&v52, &location);
    self = self;
    selfCopy = self;
    v34 = captureButtonDefaults;
    v51 = v34;
    v35 = [v34 observeDefault:v31 onQueue:v32 withBlock:v49];

    [self _resetNextClickTimer];
    v36 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.camera"];
    v37 = self[32];
    self[32] = v36;

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);

    v17 = v41;
  }

  else
  {
LABEL_10:
    v23 = controllerCopy;
  }

  return self;
}

void __188__SBCaptureHardwareButton_initWithActivationManager_suppressionManager_configurationCoordinator_restrictionCoordinator_mainWindowScene_setupManager_authenticationController_HUDController___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    *(a1[4] + 27) = [a1[5] captureButtonClickCount];
    [v3 _resetNextClickTimer];
    [*(a1[4] + 14) cancelActivationForGesture:{objc_msgSend(a1[4], "_clickGesture")}];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_physicalButtonOverrideObserver invalidate];
  physicalButtonOverrideObserver = self->_physicalButtonOverrideObserver;
  self->_physicalButtonOverrideObserver = 0;

  [(SBCaptureHardwareButtonAppActivator *)self->_appActivator invalidate];
  appActivator = self->_appActivator;
  self->_appActivator = 0;

  v5.receiver = self;
  v5.super_class = SBCaptureHardwareButton;
  [(SBCaptureHardwareButton *)&v5 dealloc];
}

- (id)requestActiveScanningModeForReason:(id)reason
{
  reasonCopy = reason;
  buttonScanningActiveAssertion = self->_buttonScanningActiveAssertion;
  if (!buttonScanningActiveAssertion)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __62__SBCaptureHardwareButton_requestActiveScanningModeForReason___block_invoke;
    v16 = &unk_2783AD688;
    objc_copyWeak(&v17, &location);
    v7 = [v6 assertionWithIdentifier:@"buttonScanningActiveAssertion" stateDidChangeHandler:&v13];
    v8 = self->_buttonScanningActiveAssertion;
    self->_buttonScanningActiveAssertion = v7;

    v9 = self->_buttonScanningActiveAssertion;
    v10 = SBLogCameraCaptureButtonScanMode();
    [(BSCompoundAssertion *)v9 setLog:v10, v13, v14, v15, v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    buttonScanningActiveAssertion = self->_buttonScanningActiveAssertion;
  }

  v11 = [(BSCompoundAssertion *)buttonScanningActiveAssertion acquireForReason:reasonCopy];

  return v11;
}

void __62__SBCaptureHardwareButton_requestActiveScanningModeForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluateButtonScanState];
}

- (id)requestActiveScanningModeUntilSceneAcquisition:(id)acquisition
{
  acquisitionCopy = acquisition;
  launchGracePeriodButtonPowerAssertion = self->_launchGracePeriodButtonPowerAssertion;
  if (self->_clientRequestedButtonPowerAssertion)
  {
    if (launchGracePeriodButtonPowerAssertion)
    {
      [SBCaptureHardwareButton requestActiveScanningModeUntilSceneAcquisition:a2];
    }

    v7 = 0;
  }

  else
  {
    v8 = launchGracePeriodButtonPowerAssertion;
    v9 = [(SBCaptureHardwareButton *)self requestActiveScanningModeForReason:acquisitionCopy];
    v10 = self->_launchGracePeriodButtonPowerAssertion;
    self->_launchGracePeriodButtonPowerAssertion = v9;

    [(BSInvalidatable *)v8 invalidate];
    v7 = self->_launchGracePeriodButtonPowerAssertion;
  }

  v11 = v7;

  return v7;
}

- (void)captureButtonAppActivatorLaunchDidComplete:(BOOL)complete
{
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    completeCopy = complete;
    v5 = SBLogButtonsCapture();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (completeCopy)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Buffer: posting; successful launch", buf, 2u);
      }

      [(SBCaptureHardwareButton *)self _postBufferedPress];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Buffer: dropping; unsuccesful launch", v7, 2u);
      }

      [(SBCaptureHardwareButton *)self _invalidateBufferedPress];
    }
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if ([&unk_28336EA90 containsObject:key])
  {
    [(SBCaptureHardwareButtonAppActivator *)self->_appActivator invalidate];
    v5 = [[SBCaptureHardwareButtonAppActivator alloc] initWithSettingsSnapshot:self->_settings windowScene:self->_mainWindowScene scanModeResource:self activationManager:self->_activationManager suppressionManager:self->_suppressionManager setupManager:self->_setupManager authenticationController:self->_authenticationController HUDController:self->_hudController];
    appActivator = self->_appActivator;
    self->_appActivator = v5;

    [(SBCaptureHardwareButton *)self _resetNextClickTimer];
  }
}

- (void)_configureButtonProcessor
{
  if (+[SBCaptureHardwareButton simulateCaptureButtonWithActionButton]&& !self->_simulationButtonArbiter)
  {
    v3 = objc_alloc_init(SBHIDButtonStateArbiter);
    simulationButtonArbiter = self->_simulationButtonArbiter;
    self->_simulationButtonArbiter = v3;

    [(SBHIDButtonStateArbiter *)self->_simulationButtonArbiter setDelegate:self];
  }

  if (!self->_captureButtonRecognizer)
  {
    v5 = [[SBCaptureHardwareButtonFullPressRecognizer alloc] initWithTarget:self action:sel__captureButtonGestureRecognizerAction_];
    captureButtonRecognizer = self->_captureButtonRecognizer;
    self->_captureButtonRecognizer = v5;
  }
}

- (void)_processZStackParticipantSettings:(id)settings
{
  v28 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  captureButtonFullFidelityEventRequestingScenes = [settingsCopy captureButtonFullFidelityEventRequestingScenes];
  if ((BSEqualArrays() & 1) == 0)
  {
    v6 = [captureButtonFullFidelityEventRequestingScenes copy];
    buttonEventRequestingScenes = self->_buttonEventRequestingScenes;
    self->_buttonEventRequestingScenes = v6;

    v8 = SBLogButtonsCapture();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_buttonEventRequestingScenes];
      v26 = 138543362;
      v27 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "captureButtonFullFidelityEventRequestingScenes %{public}@", &v26, 0xCu);
    }

    v10 = [(NSArray *)self->_buttonEventRequestingScenes count];
    clientRequestedButtonPowerAssertion = self->_clientRequestedButtonPowerAssertion;
    if (v10)
    {
      if (!clientRequestedButtonPowerAssertion)
      {
        v12 = [(SBCaptureHardwareButton *)self requestActiveScanningModeForReason:@"externalSceneRequest"];
        v13 = self->_clientRequestedButtonPowerAssertion;
        self->_clientRequestedButtonPowerAssertion = v12;

        [(BSInvalidatable *)self->_launchGracePeriodButtonPowerAssertion invalidate];
        launchGracePeriodButtonPowerAssertion = self->_launchGracePeriodButtonPowerAssertion;
        self->_launchGracePeriodButtonPowerAssertion = 0;
      }
    }

    else if (clientRequestedButtonPowerAssertion)
    {
      [(BSInvalidatable *)clientRequestedButtonPowerAssertion invalidate];
      v15 = self->_clientRequestedButtonPowerAssertion;
      self->_clientRequestedButtonPowerAssertion = 0;

      [(SBCaptureHardwareButton *)self _invalidateBufferedPress];
    }
  }

  foregroundCaptureSceneTargets = [settingsCopy foregroundCaptureSceneTargets];
  if ((BSEqualArrays() & 1) == 0)
  {
    v17 = [foregroundCaptureSceneTargets copy];
    foregroundCaptureSceneTargets = self->_foregroundCaptureSceneTargets;
    self->_foregroundCaptureSceneTargets = v17;

    v19 = SBLogButtonsCapture();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_foregroundCaptureSceneTargets];
      v26 = 138543362;
      v27 = v20;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "foregroundCaptureSceneTargets %{public}@", &v26, 0xCu);
    }
  }

  physicalButtonSceneTargets = [settingsCopy physicalButtonSceneTargets];
  if ((BSEqualArrays() & 1) == 0)
  {
    v22 = [physicalButtonSceneTargets copy];
    physicalButtonSceneTargets = self->_physicalButtonSceneTargets;
    self->_physicalButtonSceneTargets = v22;

    v24 = SBLogButtonsCapture();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_physicalButtonSceneTargets];
      v26 = 138543362;
      v27 = v25;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "physicalButtonSceneTargets %{public}@", &v26, 0xCu);
    }
  }
}

- (BOOL)_physicalButtonTargetMatchesExpectedTargetScene
{
  selfCopy = self;
  lastObject = [(NSArray *)self->_physicalButtonSceneTargets lastObject];
  scene = [lastObject scene];
  clientHandle = [scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];
  LOBYTE(selfCopy) = [bundleIdentifier isEqual:selfCopy->_captureAppBundleIdentifierForBufferedPress];

  return selfCopy;
}

- (BOOL)_waitingForCaptureAppActivation
{
  isActivationInProgress = [(SBCaptureHardwareButtonAppActivator *)self->_appActivator isActivationInProgress];
  if (isActivationInProgress)
  {
    LOBYTE(isActivationInProgress) = ![(SBCaptureHardwareButton *)self _physicalButtonTargetMatchesExpectedTargetScene];
  }

  return isActivationInProgress;
}

- (void)_invalidateBufferedPress
{
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    captureAppBundleIdentifierForBufferedPress = self->_captureAppBundleIdentifierForBufferedPress;
    self->_bufferedPressAbsoluteTimestamp = 0;
    self->_captureAppBundleIdentifierForBufferedPress = 0;
  }
}

- (void)_bufferPressForBundleIdentifier:(id)identifier timestamp:(unint64_t)timestamp
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = SBLogButtonsCapture();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    timestampCopy = timestamp;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Buffering press(down time: %llu)", &v10, 0xCu);
  }

  v8 = [identifierCopy copy];
  captureAppBundleIdentifierForBufferedPress = self->_captureAppBundleIdentifierForBufferedPress;
  self->_captureAppBundleIdentifierForBufferedPress = v8;

  self->_bufferedPressAbsoluteTimestamp = timestamp;
}

- (void)_postBufferedPress
{
  v42 = *MEMORY[0x277D85DE8];
  p_bufferedPressAbsoluteTimestamp = &self->_bufferedPressAbsoluteTimestamp;
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    lastObject = [(NSArray *)self->_foregroundCaptureSceneTargets lastObject];
    scene = [lastObject scene];

    if (scene)
    {
      if ([scene contentState] == 2)
      {
        BSMonotonicReferencedTimeFromMachTime();
        v7 = v6;
        BSAbsoluteMachTimeNow();
        v9 = v8 - v7;
        v10 = SBLogButtonsCapture();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *p_bufferedPressAbsoluteTimestamp;
          v34 = 134218240;
          v35 = v9;
          v36 = 2048;
          v37 = v11;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Buffer: press buffered %fs ago (down time: %llu)", &v34, 0x16u);
        }

        if (v9 <= 2.0)
        {
          clientHandle = [scene clientHandle];
          bundleIdentifier = [clientHandle bundleIdentifier];

          if ([bundleIdentifier isEqual:self->_captureAppBundleIdentifierForBufferedPress])
          {
            _sendCameraCaptureButtonDownToSceneOverride = [(SBCaptureHardwareButton *)self _sendCameraCaptureButtonDownToSceneOverride];
            if (_sendCameraCaptureButtonDownToSceneOverride)
            {
              v19 = SBLogButtonsCapture();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                identifier = [_sendCameraCaptureButtonDownToSceneOverride identifier];
                v21 = *p_bufferedPressAbsoluteTimestamp;
                v34 = 138543618;
                v35 = *&identifier;
                v36 = 2048;
                v37 = v21;
                _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Buffer: Invoking scene override Button Down Action for %{public}@ (down time: %llu)", &v34, 0x16u);
              }

              [_sendCameraCaptureButtonDownToSceneOverride completeWithResult:0];
            }

            else
            {
              _sendCaptureIntentToEligibleForegroundScene = [(SBCaptureHardwareButton *)self _sendCaptureIntentToEligibleForegroundScene];
              v25 = SBLogButtonsCapture();
              v26 = v25;
              if (_sendCaptureIntentToEligibleForegroundScene)
              {
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = *p_bufferedPressAbsoluteTimestamp;
                  v34 = 134217984;
                  v35 = *&v27;
                  _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Buffer: Sending capture intent to foreground scene (down time: %llu)", &v34, 0xCu);
                }
              }

              else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                [(SBCaptureHardwareButton *)p_bufferedPressAbsoluteTimestamp _postBufferedPress:v26];
              }
            }
          }

          else
          {
            _sendCameraCaptureButtonDownToSceneOverride = SBLogButtonsCapture();
            if (os_log_type_enabled(_sendCameraCaptureButtonDownToSceneOverride, OS_LOG_TYPE_ERROR))
            {
              bufferedPressAbsoluteTimestamp = self->_bufferedPressAbsoluteTimestamp;
              captureAppBundleIdentifierForBufferedPress = self->_captureAppBundleIdentifierForBufferedPress;
              v34 = 138544130;
              v35 = *&bundleIdentifier;
              v36 = 2114;
              v37 = captureAppBundleIdentifierForBufferedPress;
              v38 = 2048;
              v39 = bufferedPressAbsoluteTimestamp;
              v40 = 2114;
              v41 = scene;
              _os_log_error_impl(&dword_21ED4E000, _sendCameraCaptureButtonDownToSceneOverride, OS_LOG_TYPE_ERROR, "Buffer: bundleID is %{public}@; expected %{public}@ (down time: %llu) %{public}@", &v34, 0x2Au);
            }
          }
        }

        else
        {
          bundleIdentifier = SBLogButtonsCapture();
          if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v34) = 0;
            _os_log_impl(&dword_21ED4E000, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "Buffer: press too old, dropping", &v34, 2u);
          }
        }

        [(SBCaptureHardwareButton *)self _invalidateBufferedPress];
        goto LABEL_30;
      }

      v13 = SBLogButtonsCapture();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *p_bufferedPressAbsoluteTimestamp;
        v34 = 134217984;
        v35 = *&v16;
        v15 = "Buffer: Not posting buffered press: scene not ready yet (down time: %llu)";
        goto LABEL_13;
      }
    }

    else
    {
      v13 = SBLogButtonsCapture();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *p_bufferedPressAbsoluteTimestamp;
        v34 = 134217984;
        v35 = *&v14;
        v15 = "Buffer: Not posting buffered press: no scene yet (down time: %llu)";
LABEL_13:
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, v15, &v34, 0xCu);
      }
    }

LABEL_30:
  }
}

- (void)_reevaluateButtonScanState
{
  isActive = [(BSCompoundAssertion *)self->_buttonScanningActiveAssertion isActive];
  underlyingButtonPowerAssertion = self->_underlyingButtonPowerAssertion;
  if (isActive)
  {
    if (underlyingButtonPowerAssertion)
    {
      return;
    }

    v5 = BKSHIDTouchSensitiveButtonRequestScanMode();
    v6 = self->_underlyingButtonPowerAssertion;
    self->_underlyingButtonPowerAssertion = v5;

    v7 = SBLogCameraCaptureButtonScanMode();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v12 = 0;
    v8 = "Setting Capture Button scan state to Active";
    v9 = &v12;
    goto LABEL_8;
  }

  if (!underlyingButtonPowerAssertion)
  {
    return;
  }

  [(BSInvalidatable *)underlyingButtonPowerAssertion invalidate];
  v10 = self->_underlyingButtonPowerAssertion;
  self->_underlyingButtonPowerAssertion = 0;

  v7 = SBLogCameraCaptureButtonScanMode();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    v8 = "Setting Capture Button scan state to Idle";
    v9 = &v11;
LABEL_8:
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  }

LABEL_9:
}

- (id)_sendCameraCaptureButtonDownToSceneOverride
{
  v8 = *MEMORY[0x277D85DE8];
  sendCameraCaptureButtonDown = [(SBPhysicalButtonSceneOverrideManager *)&self->_physicalButtonOverrideManager->super.isa sendCameraCaptureButtonDown];
  if (sendCameraCaptureButtonDown)
  {
    v3 = SBLogButtonsCapture();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [sendCameraCaptureButtonDown identifier];
      v6 = 138543362;
      v7 = identifier;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_sendCameraCaptureButtonDownToSceneOverride to: %{public}@", &v6, 0xCu);
    }
  }

  return sendCameraCaptureButtonDown;
}

- (BOOL)_sendCaptureIntentToEligibleForegroundScene
{
  lastObject = [(NSArray *)self->_foregroundCaptureSceneTargets lastObject];
  v4 = lastObject;
  if (lastObject)
  {
    scene = [lastObject scene];
    if ([scene isActive])
    {
      captureApplication = [v4 captureApplication];
      associatedAppBundleIdentifier = [(SBCaptureButtonAppConfigurationCoordinator *)self->_configurationCoordinator associatedAppBundleIdentifier];
      bundleIdentifier = [captureApplication bundleIdentifier];
      hasVisionModality = [associatedAppBundleIdentifier isEqualToString:bundleIdentifier];
      launchActions = SBLogButtonsCapture();
      v11 = os_log_type_enabled(launchActions, OS_LOG_TYPE_ERROR);
      if (hasVisionModality)
      {
        if (v11)
        {
          [(SBCaptureHardwareButton *)scene _sendCaptureIntentToEligibleForegroundScene:launchActions];
        }

        launchActions = [captureApplication launchActions];
        [scene sendActions:launchActions];
      }

      else if (v11)
      {
        [(SBCaptureHardwareButton *)bundleIdentifier _sendCaptureIntentToEligibleForegroundScene];
      }
    }

    else
    {
      captureApplication = SBLogButtonsCapture();
      if (os_log_type_enabled(captureApplication, OS_LOG_TYPE_ERROR))
      {
        [(SBCaptureHardwareButton *)scene _sendCaptureIntentToEligibleForegroundScene:captureApplication];
      }

      LOBYTE(hasVisionModality) = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  assistantController = [(SBWindowScene *)self->_mainWindowScene assistantController];
  presentationContext = [assistantController presentationContext];
  hasVisionModality = [presentationContext hasVisionModality];

  if (hasVisionModality)
  {
    scene = SBLogButtonsCapture();
    if (os_log_type_enabled(scene, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_21ED4E000, scene, OS_LOG_TYPE_DEFAULT, "_sendCaptureIntentToEligibleForegroundScene consuming on behalf of siri", v27, 2u);
    }

    LOBYTE(hasVisionModality) = 1;
    goto LABEL_18;
  }

LABEL_19:

  return hasVisionModality;
}

- (void)_resetNextClickTimer
{
  [(BSAbsoluteMachTimer *)self->_nextClickDownTimer invalidate];
  nextClickDownTimer = self->_nextClickDownTimer;
  self->_nextClickDownTimer = 0;

  clickCountToActivateApp = self->_clickCountToActivateApp;
  self->_remainingClicksDownToActivateApp = clickCountToActivateApp;
  self->_remainingClicksUpToActivateApp = clickCountToActivateApp;
}

- (void)_nextClickTimeoutDidFire
{
  v3 = SBLogButtonsCapture();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[button down] Timed out waiting for second click", v4, 2u);
  }

  [(SBCaptureHardwareButton *)self _resetNextClickTimer];
  [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:@"nextClickTimeout"];
}

- (double)_doubleClickInterval
{
  v2 = [(NSUserDefaults *)self->_cameraDefaults objectForKey:@"systemOverlay.doubleClickMaxIntervalMilliseconds"];
  intValue = [v2 intValue];

  result = intValue / 1000.0;
  if (result == 0.0)
  {
    return 0.4;
  }

  return result;
}

- (BOOL)_shouldContinueAfterProcessingStateForClickDown
{
  v20 = *MEMORY[0x277D85DE8];
  [(BSAbsoluteMachTimer *)self->_nextClickDownTimer invalidate];
  nextClickDownTimer = self->_nextClickDownTimer;
  self->_nextClickDownTimer = 0;

  remainingClicksDownToActivateApp = self->_remainingClicksDownToActivateApp;
  v5 = remainingClicksDownToActivateApp - 1;
  self->_remainingClicksDownToActivateApp = remainingClicksDownToActivateApp - 1;
  if (remainingClicksDownToActivateApp == 1)
  {
    v13 = SBLogButtonsCapture();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[button down] Got required clicks to activate app", buf, 2u);
    }
  }

  else
  {
    [(SBCaptureHardwareButton *)self _doubleClickInterval];
    v7 = v6;
    v8 = SBLogButtonsCapture();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_remainingClicksDownToActivateApp;
      *buf = 134218240;
      v17 = v7;
      v18 = 1024;
      v19 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[button down] Waiting for next click (for %gs) (%d clicks remaining)", buf, 0x12u);
    }

    v10 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"Capture button next click"];
    v11 = self->_nextClickDownTimer;
    self->_nextClickDownTimer = v10;

    v12 = self->_nextClickDownTimer;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__SBCaptureHardwareButton__shouldContinueAfterProcessingStateForClickDown__block_invoke;
    v15[3] = &unk_2783ABAA8;
    v15[4] = self;
    [(BSAbsoluteMachTimer *)v12 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v15 queue:v7 handler:0.01];
  }

  return v5 == 0;
}

- (void)_ignoreNextButtonUpForReason:(id)reason
{
  reasonCopy = reason;
  if (self->_buttonActiveAssertion)
  {
    ignoreButtonUpReasons = self->_ignoreButtonUpReasons;
    v8 = reasonCopy;
    if (!ignoreButtonUpReasons)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_ignoreButtonUpReasons;
      self->_ignoreButtonUpReasons = v6;

      ignoreButtonUpReasons = self->_ignoreButtonUpReasons;
    }

    [(NSMutableSet *)ignoreButtonUpReasons addObject:v8];
    reasonCopy = v8;
  }
}

- (void)_handleLongPressAtTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp
{
  v7 = SBLogButtonsCapture();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[long press] recognized", v9, 2u);
  }

  [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:@"long press"];
  [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
  longPressTimer = self->_longPressTimer;
  self->_longPressTimer = 0;

  [(SBCaptureHardwareButton *)self _attemptButtonActivationWithClickCountToActivate:0 atTimestamp:timestamp forDownTimestamp:downTimestamp isAccessibilityEvent:0];
  [(SBCaptureHardwareButton *)self _resetNextClickTimer];
}

- (void)_handleButtonDownAtTimestamp:(unint64_t)timestamp isAccessibilityEvent:(BOOL)event
{
  v46 = *MEMORY[0x277D85DE8];
  [(SBCaptureHardwareButton *)self _invalidateBufferedPress];
  if (!self->_buttonActiveAssertion)
  {
    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    hardwareButtonIdentifier = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
    v11 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:hardwareButtonIdentifier];
    buttonActiveAssertion = self->_buttonActiveAssertion;
    self->_buttonActiveAssertion = v11;

    [(SBCaptureHardwareButton *)self _stopIgnoringNextButtonUp];
    v13 = self->_hardwareButtonCoordinator;
    hardwareButtonIdentifier2 = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
    LOBYTE(v13) = [(SBHardwareButtonCoordinator *)v13 buttonShouldStart:hardwareButtonIdentifier2];

    if ((v13 & 1) == 0)
    {
      v15 = SBLogButtonsCapture();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[button down] Inhibit Actions preventing further processing", buf, 2u);
      }

      [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:@"buttonCoordinator"];
    }

    restrictionCoordinator = self->_restrictionCoordinator;
    v43 = 0;
    v17 = [(SBCaptureButtonRestrictionCoordinator *)restrictionCoordinator isCaptureButtonActionInhibited:&v43];
    v8 = v43;
    if (v17)
    {
      v18 = SBLogButtonsCapture();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        timestampCopy2 = v8;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[button down] Ignoring button press to inhibit assertion(s): %{public}@.", buf, 0xCu);
      }

      [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:v8];
    }

    if ([(NSMutableSet *)self->_ignoreButtonUpReasons count])
    {
      [(SBCaptureHardwareButton *)self _resetNextClickTimer];
      goto LABEL_25;
    }

    if ([(SBCaptureHardwareButton *)self _waitingForCaptureAppActivation])
    {
      associatedAppBundleIdentifier = [(SBCaptureButtonAppConfigurationCoordinator *)self->_configurationCoordinator associatedAppBundleIdentifier];
      [(SBCaptureHardwareButton *)self _bufferPressForBundleIdentifier:associatedAppBundleIdentifier timestamp:timestamp];

      goto LABEL_25;
    }

    _sendCameraCaptureButtonDownToSceneOverride = [(SBCaptureHardwareButton *)self _sendCameraCaptureButtonDownToSceneOverride];
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = _sendCameraCaptureButtonDownToSceneOverride;

    if (self->_overrideButtonUpHandler)
    {
      v22 = SBLogButtonsCapture();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        timestampCopy2 = timestamp;
        v23 = "Invoking scene override Button Down Action (down time: %llu)";
LABEL_22:
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

    else
    {
      if (![(SBCaptureHardwareButton *)self _sendCaptureIntentToEligibleForegroundScene])
      {
        _shouldContinueAfterProcessingStateForClickDown = [(SBCaptureHardwareButton *)self _shouldContinueAfterProcessingStateForClickDown];
        clickCountToActivateApp = self->_clickCountToActivateApp;
        remainingClicksUpToActivateApp = self->_remainingClicksUpToActivateApp;
        _isVisionIntelligenceSupported = [(SBCaptureHardwareButton *)self _isVisionIntelligenceSupported];
        v29 = _isVisionIntelligenceSupported;
        if (_shouldContinueAfterProcessingStateForClickDown)
        {
          appActivator = self->_appActivator;
          if (event)
          {
            _clickGesture = 4;
          }

          else
          {
            _clickGesture = [(SBCaptureHardwareButton *)self _clickGesture];
          }

          associatedAppBundleIdentifier2 = [(SBCaptureButtonAppConfigurationCoordinator *)self->_configurationCoordinator associatedAppBundleIdentifier];
          [(SBCaptureHardwareButtonAppActivator *)appActivator prepareForGesture:_clickGesture forAppBundleID:associatedAppBundleIdentifier2 atMachAbsoluteTime:timestamp suppressionOptions:[(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions]];
        }

        else
        {
          if (clickCountToActivateApp != remainingClicksUpToActivateApp)
          {
            goto LABEL_24;
          }

          if (!_isVisionIntelligenceSupported)
          {
            if (self->_hintDropletAssertion)
            {
              [SBCaptureHardwareButton _handleButtonDownAtTimestamp:a2 isAccessibilityEvent:?];
            }

            hardwareButtonBezelEffectsCoordinator = [(SBWindowScene *)self->_mainWindowScene hardwareButtonBezelEffectsCoordinator];
            v40 = [hardwareButtonBezelEffectsCoordinator activateHintDropletForButton:9];
            hintDropletAssertion = self->_hintDropletAssertion;
            self->_hintDropletAssertion = v40;

            goto LABEL_24;
          }

          [(SBCaptureHardwareButtonAppActivator *)self->_appActivator prepareForGesture:3 forAppBundleID:@"com.apple.siri" atMachAbsoluteTime:timestamp suppressionOptions:[(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions]];
        }

        if (clickCountToActivateApp == remainingClicksUpToActivateApp && v29)
        {
          v33 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"Capture button long press"];
          longPressTimer = self->_longPressTimer;
          self->_longPressTimer = v33;

          [(SBCaptureButtonSettings *)self->_settings longPressVisionIntelligenceDelay];
          v36 = v35;
          UIAnimationDragCoefficient();
          v37 = self->_longPressTimer;
          v42[1] = 3221225472;
          v42[0] = MEMORY[0x277D85DD0];
          v42[2] = __77__SBCaptureHardwareButton__handleButtonDownAtTimestamp_isAccessibilityEvent___block_invoke;
          v42[3] = &unk_2783BF7D0;
          v42[4] = self;
          v42[5] = timestamp;
          [(BSAbsoluteMachTimer *)v37 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v42 queue:v36 * v38 handler:0.01];
        }

        goto LABEL_24;
      }

      v22 = SBLogButtonsCapture();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        timestampCopy2 = timestamp;
        v23 = "Sending capture intent to foreground scene (down time: %llu)";
        goto LABEL_22;
      }
    }

LABEL_24:
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBCaptureHardwareButtonPressNotification" object:0];

    goto LABEL_25;
  }

  v8 = SBLogButtonsCapture();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SBCaptureHardwareButton _handleButtonDownAtTimestamp:v8 isAccessibilityEvent:?];
  }

LABEL_25:
}

uint64_t __77__SBCaptureHardwareButton__handleButtonDownAtTimestamp_isAccessibilityEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  v4 = *(a1 + 40);

  return [v2 _handleLongPressAtTimestamp:v3 forDownTimestamp:v4];
}

- (BOOL)_isVisionIntelligenceSupported
{
  assistantController = [(SBWindowScene *)self->_mainWindowScene assistantController];
  isVisualSearchEnabled = [assistantController isVisualSearchEnabled];

  return isVisualSearchEnabled;
}

- (unint64_t)_clickGesture
{
  if (self->_clickCountToActivateApp == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_handleButtonUpAtTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp isAccessibilityEvent:(BOOL)event
{
  eventCopy = event;
  v25 = *MEMORY[0x277D85DE8];
  [(BSInvalidatable *)self->_buttonActiveAssertion invalidate];
  buttonActiveAssertion = self->_buttonActiveAssertion;
  self->_buttonActiveAssertion = 0;

  [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
  longPressTimer = self->_longPressTimer;
  self->_longPressTimer = 0;

  [(BSInvalidatable *)self->_hintDropletAssertion invalidate];
  hintDropletAssertion = self->_hintDropletAssertion;
  self->_hintDropletAssertion = 0;

  if (self->_clickCountToActivateApp >= 2 && self->_remainingClicksUpToActivateApp >= 2)
  {
    [(SBCaptureHardwareButtonAppActivator *)self->_appActivator cancelActivationForGesture:3];
  }

  if ([(NSMutableSet *)self->_ignoreButtonUpReasons count])
  {
    v12 = SBLogButtonsCapture();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_ignoreButtonUpReasons];
      v21 = 138412290;
      downTimestampCopy = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[button up] Ignoring button up because %@", &v21, 0xCu);
    }
  }

  else if (self->_bufferedPressAbsoluteTimestamp)
  {
    v14 = SBLogButtonsCapture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[button up] bailing because buffered press.", &v21, 2u);
    }
  }

  else if (self->_overrideButtonUpHandler)
  {
    v15 = SBLogButtonsCapture();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134218240;
      downTimestampCopy = downTimestamp;
      v23 = 2048;
      timestampCopy = timestamp;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Invoking scene override Button Up Action (down time: %llu, up time: %llu)", &v21, 0x16u);
    }

    [(SBPhysicalButtonCompletionHandling *)self->_overrideButtonUpHandler completeWithResult:0];
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = 0;
  }

  else
  {
    remainingClicksUpToActivateApp = self->_remainingClicksUpToActivateApp;
    self->_remainingClicksUpToActivateApp = remainingClicksUpToActivateApp - 1;
    v18 = SBLogButtonsCapture();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (remainingClicksUpToActivateApp < 2)
    {
      if (v19)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[button up] Got required clicks to activate app", &v21, 2u);
      }

      [(SBCaptureHardwareButton *)self _resetNextClickTimer];
      [(SBCaptureHardwareButton *)self _attemptButtonActivationWithClickCountToActivate:self->_clickCountToActivateApp atTimestamp:timestamp forDownTimestamp:downTimestamp isAccessibilityEvent:eventCopy];
    }

    else
    {
      if (v19)
      {
        v20 = self->_remainingClicksUpToActivateApp;
        v21 = 67109120;
        LODWORD(downTimestampCopy) = v20;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[button up] Waiting for next click (%d remaining)", &v21, 8u);
      }
    }
  }
}

- (void)_attemptButtonActivationWithClickCountToActivate:(int64_t)activate atTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp isAccessibilityEvent:(BOOL)event
{
  eventCopy = event;
  hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
  hardwareButtonIdentifier = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
  LODWORD(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:hardwareButtonIdentifier];

  if (hardwareButtonCoordinator)
  {
    BSTimeDifferenceFromMachTimeToMachTime();
    v13 = v12;
    if (activate > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_21F8A8260[activate];
    }

    if (eventCopy)
    {
      v17 = 4;
    }

    else
    {
      v17 = v14;
    }

    appActivator = self->_appActivator;
    captureButtonSuppressionOptions = [(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions];

    [(SBCaptureHardwareButtonAppActivator *)appActivator activateForGesture:v17 atMachAbsoluteTime:timestamp pressDuration:captureButtonSuppressionOptions suppressionOptions:v13];
  }

  else
  {
    v15 = self->_appActivator;
    _clickGesture = [(SBCaptureHardwareButton *)self _clickGesture];

    [(SBCaptureHardwareButtonAppActivator *)v15 cancelActivationForGesture:_clickGesture];
  }
}

- (void)_captureButtonGestureRecognizerAction:(id)action
{
  v17 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  state = [actionCopy state];
  switch(state)
  {
    case 4:
      pressDownTimestamp = [actionCopy pressDownTimestamp];
      v12 = SBLogButtonsCapture();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = pressDownTimestamp;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Capture Button Press Cancel (down time: %llu)", &v13, 0xCu);
      }

      [(SBCaptureHardwareButton *)self cancelHardwareButtonPress];
      break;
    case 3:
      pressUpTimestamp = [actionCopy pressUpTimestamp];
      pressDownTimestamp2 = [actionCopy pressDownTimestamp];
      v10 = SBLogButtonsCapture();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218240;
        v14 = pressDownTimestamp2;
        v15 = 2048;
        v16 = pressUpTimestamp;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Capture Button Up (down time: %llu, up time: %llu)", &v13, 0x16u);
      }

      -[SBCaptureHardwareButton _handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:](self, "_handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:", pressUpTimestamp, pressDownTimestamp2, [actionCopy isCaptureButtonSourceAccessibility]);
      break;
    case 1:
      pressDownTimestamp3 = [actionCopy pressDownTimestamp];
      v7 = SBLogButtonsCapture();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = pressDownTimestamp3;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Capture Button Down (down time: %llu)", &v13, 0xCu);
      }

      -[SBCaptureHardwareButton _handleButtonDownAtTimestamp:isAccessibilityEvent:](self, "_handleButtonDownAtTimestamp:isAccessibilityEvent:", pressDownTimestamp3, [actionCopy isCaptureButtonSourceAccessibility]);
      break;
  }
}

- (void)physicalButtonSceneOverridesDidChange:(id)change
{
  changeCopy = change;
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    _physicalButtonTargetMatchesExpectedTargetScene = [(SBCaptureHardwareButton *)self _physicalButtonTargetMatchesExpectedTargetScene];
    v6 = SBLogButtonsCapture();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (_physicalButtonTargetMatchesExpectedTargetScene)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Buffer: Posting early!", buf, 2u);
      }

      [(SBCaptureHardwareButton *)self _postBufferedPress];
    }

    else
    {
      if (v7)
      {
        *v8 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Buffer: Not posting yet", v8, 2u);
      }
    }
  }
}

- (void)performActionsForButtonLongPress:(id)press
{
  v3 = SBLogButtonsCapture();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Long Press (should be disabled?)", v4, 2u);
  }
}

- (void)performActionsForButtonDown:(id)down
{
  v8 = *MEMORY[0x277D85DE8];
  downCopy = down;
  v5 = SBLogButtonsCapture();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    downTime = [downCopy downTime];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Down (down time: %llu)", &v6, 0xCu);
  }

  -[SBCaptureHardwareButton _handleButtonDownAtTimestamp:isAccessibilityEvent:](self, "_handleButtonDownAtTimestamp:isAccessibilityEvent:", [downCopy downTime], 0);
}

- (void)performActionsForButtonUp:(id)up
{
  v11 = *MEMORY[0x277D85DE8];
  upCopy = up;
  v5 = mach_absolute_time();
  v6 = SBLogButtonsCapture();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    downTime = [upCopy downTime];
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Up (down time: %llu, up time: %llu)", &v7, 0x16u);
  }

  -[SBCaptureHardwareButton _handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:](self, "_handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:", v5, [upCopy downTime], 0);
}

- (void)cancelHardwareButtonPress
{
  v17 = *MEMORY[0x277D85DE8];
  buttonActiveAssertion = self->_buttonActiveAssertion;
  if (buttonActiveAssertion)
  {
    [(BSInvalidatable *)buttonActiveAssertion invalidate];
    v4 = self->_buttonActiveAssertion;
    self->_buttonActiveAssertion = 0;
  }

  else
  {
    [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:@"coordinatorCancel"];
  }

  [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
  longPressTimer = self->_longPressTimer;
  self->_longPressTimer = 0;

  [(BSInvalidatable *)self->_hintDropletAssertion invalidate];
  hintDropletAssertion = self->_hintDropletAssertion;
  self->_hintDropletAssertion = 0;

  [(SBCaptureHardwareButton *)self _resetNextClickTimer];
  if (self->_overrideButtonUpHandler)
  {
    pressUpTimestamp = [(SBCaptureHardwareButtonFullPressRecognizer *)self->_captureButtonRecognizer pressUpTimestamp];
    pressDownTimestamp = [(SBCaptureHardwareButtonFullPressRecognizer *)self->_captureButtonRecognizer pressDownTimestamp];
    v9 = SBLogButtonsCapture();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = pressDownTimestamp;
      v15 = 2048;
      v16 = pressUpTimestamp;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Invoking scene override Button Up Action due to press cancellation (down time: %llu, up time: %llu)", &v13, 0x16u);
    }

    [(SBPhysicalButtonCompletionHandling *)self->_overrideButtonUpHandler completeWithResult:1];
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = 0;
  }

  else
  {
    appActivator = self->_appActivator;
    _clickGesture = [(SBCaptureHardwareButton *)self _clickGesture];

    [(SBCaptureHardwareButtonAppActivator *)appActivator cancelActivationForGesture:_clickGesture];
  }
}

- (BOOL)handleSimulatedCaptureButtonEvent:(uint64_t)event
{
  if (event)
  {
    objc_opt_self();
    if (CAMIsCameraButtonEnabled())
    {
      [*(event + 272) processEvent:a2];
    }
  }

  return event != 0;
}

- (uint64_t)simulationButtonArbiter
{
  if (result)
  {
    return *(result + 272);
  }

  return result;
}

- (void)setSimulationButtonArbiter:(uint64_t)arbiter
{
  if (arbiter)
  {
    objc_storeStrong((arbiter + 272), a2);
  }
}

- (void)initWithActivationManager:(uint64_t)a1 suppressionManager:(uint64_t)a2 configurationCoordinator:restrictionCoordinator:mainWindowScene:setupManager:authenticationController:HUDController:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureHardwareButton.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"activationManager != nil"}];
}

- (void)initWithActivationManager:(uint64_t)a1 suppressionManager:(uint64_t)a2 configurationCoordinator:restrictionCoordinator:mainWindowScene:setupManager:authenticationController:HUDController:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureHardwareButton.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"configurationCoordinator != nil"}];
}

- (void)initWithActivationManager:(uint64_t)a1 suppressionManager:(uint64_t)a2 configurationCoordinator:restrictionCoordinator:mainWindowScene:setupManager:authenticationController:HUDController:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureHardwareButton.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"windowScene != nil"}];
}

- (void)requestActiveScanningModeUntilSceneAcquisition:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"can have either client assertion or launch period assertion, not both"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"SBCaptureHardwareButton.m";
    v9 = 1024;
    v10 = 210;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_sendCaptureIntentToEligibleForegroundScene
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "sendCaptureIntent: Capture app (%{public}@) is not the expected one (%{public}@); unable to send capture intent.", &v3, 0x16u);
}

- (void)_handleButtonDownAtTimestamp:(const char *)a1 isAccessibilityEvent:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"shouldn't already have a hint droplet assertion"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"SBCaptureHardwareButton.m";
    v9 = 1024;
    v10 = 563;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end