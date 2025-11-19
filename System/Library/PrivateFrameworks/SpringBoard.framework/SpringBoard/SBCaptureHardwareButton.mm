@interface SBCaptureHardwareButton
+ (uint64_t)deviceSupportsCaptureButton;
+ (uint64_t)isCaptureFeatureEnabled;
+ (uint64_t)simulateCaptureButtonWithActionButton;
- (BOOL)_isVisionIntelligenceSupported;
- (BOOL)_physicalButtonTargetMatchesExpectedTargetScene;
- (BOOL)_sendCaptureIntentToEligibleForegroundScene;
- (BOOL)_shouldContinueAfterProcessingStateForClickDown;
- (BOOL)_waitingForCaptureAppActivation;
- (BOOL)handleSimulatedCaptureButtonEvent:(uint64_t)a1;
- (double)_doubleClickInterval;
- (id)_sendCameraCaptureButtonDownToSceneOverride;
- (id)initWithActivationManager:(void *)a3 suppressionManager:(void *)a4 configurationCoordinator:(void *)a5 restrictionCoordinator:(void *)a6 mainWindowScene:(void *)a7 setupManager:(void *)a8 authenticationController:(void *)a9 HUDController:;
- (id)requestActiveScanningModeForReason:(id)a3;
- (id)requestActiveScanningModeUntilSceneAcquisition:(id)a3;
- (uint64_t)simulationButtonArbiter;
- (unint64_t)_clickGesture;
- (void)_attemptButtonActivationWithClickCountToActivate:(int64_t)a3 atTimestamp:(unint64_t)a4 forDownTimestamp:(unint64_t)a5 isAccessibilityEvent:(BOOL)a6;
- (void)_bufferPressForBundleIdentifier:(id)a3 timestamp:(unint64_t)a4;
- (void)_captureButtonGestureRecognizerAction:(id)a3;
- (void)_configureButtonProcessor;
- (void)_handleButtonDownAtTimestamp:(unint64_t)a3 isAccessibilityEvent:(BOOL)a4;
- (void)_handleButtonUpAtTimestamp:(unint64_t)a3 forDownTimestamp:(unint64_t)a4 isAccessibilityEvent:(BOOL)a5;
- (void)_handleLongPressAtTimestamp:(unint64_t)a3 forDownTimestamp:(unint64_t)a4;
- (void)_ignoreNextButtonUpForReason:(id)a3;
- (void)_invalidateBufferedPress;
- (void)_nextClickTimeoutDidFire;
- (void)_postBufferedPress;
- (void)_processZStackParticipantSettings:(id)a3;
- (void)_reevaluateButtonScanState;
- (void)_resetNextClickTimer;
- (void)_sendCaptureIntentToEligibleForegroundScene;
- (void)cancelHardwareButtonPress;
- (void)captureButtonAppActivatorLaunchDidComplete:(BOOL)a3;
- (void)dealloc;
- (void)performActionsForButtonDown:(id)a3;
- (void)performActionsForButtonLongPress:(id)a3;
- (void)performActionsForButtonUp:(id)a3;
- (void)physicalButtonSceneOverridesDidChange:(id)a3;
- (void)setSimulationButtonArbiter:(uint64_t)a1;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
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
  v1 = [v0 captureButtonDefaults];
  v2 = [v1 simulateCaptureButtonUsingActionButton];

  return v2;
}

- (id)initWithActivationManager:(void *)a3 suppressionManager:(void *)a4 configurationCoordinator:(void *)a5 restrictionCoordinator:(void *)a6 mainWindowScene:(void *)a7 setupManager:(void *)a8 authenticationController:(void *)a9 HUDController:
{
  v17 = a2;
  v45 = a3;
  v47 = a4;
  v44 = a5;
  v48 = a6;
  v43 = a7;
  v42 = a8;
  v46 = a9;
  if (!a1)
  {
    goto LABEL_10;
  }

  v41 = v17;
  if (!v17)
  {
    [SBCaptureHardwareButton initWithActivationManager:a1 suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  if (!v47)
  {
    [SBCaptureHardwareButton initWithActivationManager:a1 suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  if (!v48)
  {
    [SBCaptureHardwareButton initWithActivationManager:a1 suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  v54.receiver = a1;
  v54.super_class = SBCaptureHardwareButton;
  a1 = objc_msgSendSuper2(&v54, sel_init);
  if (a1)
  {
    v40 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v18 = [v40 physicalButtonSceneOverrideManager];
    objc_storeStrong(a1 + 9, v18);
    v39 = v18;
    v19 = [(SBPhysicalButtonSceneOverrideManager *)v18 addObserver:a1 forReason:@"capture button"];
    v20 = a1[10];
    a1[10] = v19;

    objc_storeStrong(a1 + 11, a2);
    objc_storeStrong(a1 + 12, a3);
    objc_storeStrong(a1 + 13, a4);
    objc_storeStrong(a1 + 8, a6);
    objc_storeStrong(a1 + 11, a2);
    objc_storeStrong(a1 + 15, a5);
    objc_storeStrong(a1 + 20, a7);
    objc_storeStrong(a1 + 21, a8);
    objc_storeStrong(a1 + 22, a9);
    [a1 _configureButtonProcessor];
    v21 = +[SBCaptureButtonDomain rootSettings];
    v22 = a1[17];
    a1[17] = v21;

    v23 = v46;
    v24 = [[SBCaptureHardwareButtonAppActivator alloc] initWithSettingsSnapshot:a1[17] windowScene:a1[8] scanModeResource:a1 activationManager:a1[11] suppressionManager:a1[12] setupManager:a1[20] authenticationController:a1[21] HUDController:v46];
    v25 = a1[14];
    a1[14] = v24;

    v26 = [v48 zStackResolver];
    v27 = [v26 addObserver:a1 ofParticipantWithIdentifier:29];
    [a1 _processZStackParticipantSettings:v27];
    v28 = [v48 systemGestureManager];
    [v28 addGestureRecognizer:a1[16] withType:139];
    [a1[17] addKeyObserver:a1];
    v29 = +[SBDefaults localDefaults];
    v30 = [v29 captureButtonDefaults];

    a1[27] = [v30 captureButtonClickCount];
    objc_initWeak(&location, a1);
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"captureButtonClickCount"];
    v32 = MEMORY[0x277D85CD0];
    v33 = MEMORY[0x277D85CD0];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __188__SBCaptureHardwareButton_initWithActivationManager_suppressionManager_configurationCoordinator_restrictionCoordinator_mainWindowScene_setupManager_authenticationController_HUDController___block_invoke;
    v49[3] = &unk_2783B00B0;
    objc_copyWeak(&v52, &location);
    a1 = a1;
    v50 = a1;
    v34 = v30;
    v51 = v34;
    v35 = [v34 observeDefault:v31 onQueue:v32 withBlock:v49];

    [a1 _resetNextClickTimer];
    v36 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.camera"];
    v37 = a1[32];
    a1[32] = v36;

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);

    v17 = v41;
  }

  else
  {
LABEL_10:
    v23 = v46;
  }

  return a1;
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

- (id)requestActiveScanningModeForReason:(id)a3
{
  v4 = a3;
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

  v11 = [(BSCompoundAssertion *)buttonScanningActiveAssertion acquireForReason:v4];

  return v11;
}

void __62__SBCaptureHardwareButton_requestActiveScanningModeForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluateButtonScanState];
}

- (id)requestActiveScanningModeUntilSceneAcquisition:(id)a3
{
  v5 = a3;
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
    v9 = [(SBCaptureHardwareButton *)self requestActiveScanningModeForReason:v5];
    v10 = self->_launchGracePeriodButtonPowerAssertion;
    self->_launchGracePeriodButtonPowerAssertion = v9;

    [(BSInvalidatable *)v8 invalidate];
    v7 = self->_launchGracePeriodButtonPowerAssertion;
  }

  v11 = v7;

  return v7;
}

- (void)captureButtonAppActivatorLaunchDidComplete:(BOOL)a3
{
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    v3 = a3;
    v5 = SBLogButtonsCapture();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
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

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if ([&unk_28336EA90 containsObject:a4])
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

- (void)_processZStackParticipantSettings:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 captureButtonFullFidelityEventRequestingScenes];
  if ((BSEqualArrays() & 1) == 0)
  {
    v6 = [v5 copy];
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

  v16 = [v4 foregroundCaptureSceneTargets];
  if ((BSEqualArrays() & 1) == 0)
  {
    v17 = [v16 copy];
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

  v21 = [v4 physicalButtonSceneTargets];
  if ((BSEqualArrays() & 1) == 0)
  {
    v22 = [v21 copy];
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
  v2 = self;
  v3 = [(NSArray *)self->_physicalButtonSceneTargets lastObject];
  v4 = [v3 scene];
  v5 = [v4 clientHandle];
  v6 = [v5 bundleIdentifier];
  LOBYTE(v2) = [v6 isEqual:v2->_captureAppBundleIdentifierForBufferedPress];

  return v2;
}

- (BOOL)_waitingForCaptureAppActivation
{
  v3 = [(SBCaptureHardwareButtonAppActivator *)self->_appActivator isActivationInProgress];
  if (v3)
  {
    LOBYTE(v3) = ![(SBCaptureHardwareButton *)self _physicalButtonTargetMatchesExpectedTargetScene];
  }

  return v3;
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

- (void)_bufferPressForBundleIdentifier:(id)a3 timestamp:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SBLogButtonsCapture();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a4;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Buffering press(down time: %llu)", &v10, 0xCu);
  }

  v8 = [v6 copy];
  captureAppBundleIdentifierForBufferedPress = self->_captureAppBundleIdentifierForBufferedPress;
  self->_captureAppBundleIdentifierForBufferedPress = v8;

  self->_bufferedPressAbsoluteTimestamp = a4;
}

- (void)_postBufferedPress
{
  v42 = *MEMORY[0x277D85DE8];
  p_bufferedPressAbsoluteTimestamp = &self->_bufferedPressAbsoluteTimestamp;
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    v4 = [(NSArray *)self->_foregroundCaptureSceneTargets lastObject];
    v5 = [v4 scene];

    if (v5)
    {
      if ([v5 contentState] == 2)
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
          v17 = [v5 clientHandle];
          v12 = [v17 bundleIdentifier];

          if ([v12 isEqual:self->_captureAppBundleIdentifierForBufferedPress])
          {
            v18 = [(SBCaptureHardwareButton *)self _sendCameraCaptureButtonDownToSceneOverride];
            if (v18)
            {
              v19 = SBLogButtonsCapture();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = [v18 identifier];
                v21 = *p_bufferedPressAbsoluteTimestamp;
                v34 = 138543618;
                v35 = *&v20;
                v36 = 2048;
                v37 = v21;
                _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Buffer: Invoking scene override Button Down Action for %{public}@ (down time: %llu)", &v34, 0x16u);
              }

              [v18 completeWithResult:0];
            }

            else
            {
              v24 = [(SBCaptureHardwareButton *)self _sendCaptureIntentToEligibleForegroundScene];
              v25 = SBLogButtonsCapture();
              v26 = v25;
              if (v24)
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
            v18 = SBLogButtonsCapture();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              bufferedPressAbsoluteTimestamp = self->_bufferedPressAbsoluteTimestamp;
              captureAppBundleIdentifierForBufferedPress = self->_captureAppBundleIdentifierForBufferedPress;
              v34 = 138544130;
              v35 = *&v12;
              v36 = 2114;
              v37 = captureAppBundleIdentifierForBufferedPress;
              v38 = 2048;
              v39 = bufferedPressAbsoluteTimestamp;
              v40 = 2114;
              v41 = v5;
              _os_log_error_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_ERROR, "Buffer: bundleID is %{public}@; expected %{public}@ (down time: %llu) %{public}@", &v34, 0x2Au);
            }
          }
        }

        else
        {
          v12 = SBLogButtonsCapture();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v34) = 0;
            _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Buffer: press too old, dropping", &v34, 2u);
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
  v3 = [(BSCompoundAssertion *)self->_buttonScanningActiveAssertion isActive];
  underlyingButtonPowerAssertion = self->_underlyingButtonPowerAssertion;
  if (v3)
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
  v2 = [(SBPhysicalButtonSceneOverrideManager *)&self->_physicalButtonOverrideManager->super.isa sendCameraCaptureButtonDown];
  if (v2)
  {
    v3 = SBLogButtonsCapture();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 identifier];
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_sendCameraCaptureButtonDownToSceneOverride to: %{public}@", &v6, 0xCu);
    }
  }

  return v2;
}

- (BOOL)_sendCaptureIntentToEligibleForegroundScene
{
  v3 = [(NSArray *)self->_foregroundCaptureSceneTargets lastObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 scene];
    if ([v5 isActive])
    {
      v6 = [v4 captureApplication];
      v7 = [(SBCaptureButtonAppConfigurationCoordinator *)self->_configurationCoordinator associatedAppBundleIdentifier];
      v8 = [v6 bundleIdentifier];
      v9 = [v7 isEqualToString:v8];
      v10 = SBLogButtonsCapture();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v11)
        {
          [(SBCaptureHardwareButton *)v5 _sendCaptureIntentToEligibleForegroundScene:v10];
        }

        v10 = [v6 launchActions];
        [v5 sendActions:v10];
      }

      else if (v11)
      {
        [(SBCaptureHardwareButton *)v8 _sendCaptureIntentToEligibleForegroundScene];
      }
    }

    else
    {
      v6 = SBLogButtonsCapture();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SBCaptureHardwareButton *)v5 _sendCaptureIntentToEligibleForegroundScene:v6];
      }

      LOBYTE(v9) = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v18 = [(SBWindowScene *)self->_mainWindowScene assistantController];
  v19 = [v18 presentationContext];
  v9 = [v19 hasVisionModality];

  if (v9)
  {
    v5 = SBLogButtonsCapture();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "_sendCaptureIntentToEligibleForegroundScene consuming on behalf of siri", v27, 2u);
    }

    LOBYTE(v9) = 1;
    goto LABEL_18;
  }

LABEL_19:

  return v9;
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
  v3 = [v2 intValue];

  result = v3 / 1000.0;
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

- (void)_ignoreNextButtonUpForReason:(id)a3
{
  v4 = a3;
  if (self->_buttonActiveAssertion)
  {
    ignoreButtonUpReasons = self->_ignoreButtonUpReasons;
    v8 = v4;
    if (!ignoreButtonUpReasons)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_ignoreButtonUpReasons;
      self->_ignoreButtonUpReasons = v6;

      ignoreButtonUpReasons = self->_ignoreButtonUpReasons;
    }

    [(NSMutableSet *)ignoreButtonUpReasons addObject:v8];
    v4 = v8;
  }
}

- (void)_handleLongPressAtTimestamp:(unint64_t)a3 forDownTimestamp:(unint64_t)a4
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

  [(SBCaptureHardwareButton *)self _attemptButtonActivationWithClickCountToActivate:0 atTimestamp:a3 forDownTimestamp:a4 isAccessibilityEvent:0];
  [(SBCaptureHardwareButton *)self _resetNextClickTimer];
}

- (void)_handleButtonDownAtTimestamp:(unint64_t)a3 isAccessibilityEvent:(BOOL)a4
{
  v46 = *MEMORY[0x277D85DE8];
  [(SBCaptureHardwareButton *)self _invalidateBufferedPress];
  if (!self->_buttonActiveAssertion)
  {
    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    v10 = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
    v11 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:v10];
    buttonActiveAssertion = self->_buttonActiveAssertion;
    self->_buttonActiveAssertion = v11;

    [(SBCaptureHardwareButton *)self _stopIgnoringNextButtonUp];
    v13 = self->_hardwareButtonCoordinator;
    v14 = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
    LOBYTE(v13) = [(SBHardwareButtonCoordinator *)v13 buttonShouldStart:v14];

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
        v45 = v8;
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
      v19 = [(SBCaptureButtonAppConfigurationCoordinator *)self->_configurationCoordinator associatedAppBundleIdentifier];
      [(SBCaptureHardwareButton *)self _bufferPressForBundleIdentifier:v19 timestamp:a3];

      goto LABEL_25;
    }

    v20 = [(SBCaptureHardwareButton *)self _sendCameraCaptureButtonDownToSceneOverride];
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = v20;

    if (self->_overrideButtonUpHandler)
    {
      v22 = SBLogButtonsCapture();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v45 = a3;
        v23 = "Invoking scene override Button Down Action (down time: %llu)";
LABEL_22:
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

    else
    {
      if (![(SBCaptureHardwareButton *)self _sendCaptureIntentToEligibleForegroundScene])
      {
        v25 = [(SBCaptureHardwareButton *)self _shouldContinueAfterProcessingStateForClickDown];
        clickCountToActivateApp = self->_clickCountToActivateApp;
        remainingClicksUpToActivateApp = self->_remainingClicksUpToActivateApp;
        v28 = [(SBCaptureHardwareButton *)self _isVisionIntelligenceSupported];
        v29 = v28;
        if (v25)
        {
          appActivator = self->_appActivator;
          if (a4)
          {
            v31 = 4;
          }

          else
          {
            v31 = [(SBCaptureHardwareButton *)self _clickGesture];
          }

          v32 = [(SBCaptureButtonAppConfigurationCoordinator *)self->_configurationCoordinator associatedAppBundleIdentifier];
          [(SBCaptureHardwareButtonAppActivator *)appActivator prepareForGesture:v31 forAppBundleID:v32 atMachAbsoluteTime:a3 suppressionOptions:[(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions]];
        }

        else
        {
          if (clickCountToActivateApp != remainingClicksUpToActivateApp)
          {
            goto LABEL_24;
          }

          if (!v28)
          {
            if (self->_hintDropletAssertion)
            {
              [SBCaptureHardwareButton _handleButtonDownAtTimestamp:a2 isAccessibilityEvent:?];
            }

            v39 = [(SBWindowScene *)self->_mainWindowScene hardwareButtonBezelEffectsCoordinator];
            v40 = [v39 activateHintDropletForButton:9];
            hintDropletAssertion = self->_hintDropletAssertion;
            self->_hintDropletAssertion = v40;

            goto LABEL_24;
          }

          [(SBCaptureHardwareButtonAppActivator *)self->_appActivator prepareForGesture:3 forAppBundleID:@"com.apple.siri" atMachAbsoluteTime:a3 suppressionOptions:[(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions]];
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
          v42[5] = a3;
          [(BSAbsoluteMachTimer *)v37 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v42 queue:v36 * v38 handler:0.01];
        }

        goto LABEL_24;
      }

      v22 = SBLogButtonsCapture();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v45 = a3;
        v23 = "Sending capture intent to foreground scene (down time: %llu)";
        goto LABEL_22;
      }
    }

LABEL_24:
    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 postNotificationName:@"SBCaptureHardwareButtonPressNotification" object:0];

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
  v2 = [(SBWindowScene *)self->_mainWindowScene assistantController];
  v3 = [v2 isVisualSearchEnabled];

  return v3;
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

- (void)_handleButtonUpAtTimestamp:(unint64_t)a3 forDownTimestamp:(unint64_t)a4 isAccessibilityEvent:(BOOL)a5
{
  v5 = a5;
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
      v22 = v13;
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
      v22 = a4;
      v23 = 2048;
      v24 = a3;
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
      [(SBCaptureHardwareButton *)self _attemptButtonActivationWithClickCountToActivate:self->_clickCountToActivateApp atTimestamp:a3 forDownTimestamp:a4 isAccessibilityEvent:v5];
    }

    else
    {
      if (v19)
      {
        v20 = self->_remainingClicksUpToActivateApp;
        v21 = 67109120;
        LODWORD(v22) = v20;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[button up] Waiting for next click (%d remaining)", &v21, 8u);
      }
    }
  }
}

- (void)_attemptButtonActivationWithClickCountToActivate:(int64_t)a3 atTimestamp:(unint64_t)a4 forDownTimestamp:(unint64_t)a5 isAccessibilityEvent:(BOOL)a6
{
  v6 = a6;
  hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
  v11 = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
  LODWORD(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:v11];

  if (hardwareButtonCoordinator)
  {
    BSTimeDifferenceFromMachTimeToMachTime();
    v13 = v12;
    if (a3 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_21F8A8260[a3];
    }

    if (v6)
    {
      v17 = 4;
    }

    else
    {
      v17 = v14;
    }

    appActivator = self->_appActivator;
    v19 = [(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions];

    [(SBCaptureHardwareButtonAppActivator *)appActivator activateForGesture:v17 atMachAbsoluteTime:a4 pressDuration:v19 suppressionOptions:v13];
  }

  else
  {
    v15 = self->_appActivator;
    v16 = [(SBCaptureHardwareButton *)self _clickGesture];

    [(SBCaptureHardwareButtonAppActivator *)v15 cancelActivationForGesture:v16];
  }
}

- (void)_captureButtonGestureRecognizerAction:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  switch(v5)
  {
    case 4:
      v11 = [v4 pressDownTimestamp];
      v12 = SBLogButtonsCapture();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = v11;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Capture Button Press Cancel (down time: %llu)", &v13, 0xCu);
      }

      [(SBCaptureHardwareButton *)self cancelHardwareButtonPress];
      break;
    case 3:
      v8 = [v4 pressUpTimestamp];
      v9 = [v4 pressDownTimestamp];
      v10 = SBLogButtonsCapture();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218240;
        v14 = v9;
        v15 = 2048;
        v16 = v8;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Capture Button Up (down time: %llu, up time: %llu)", &v13, 0x16u);
      }

      -[SBCaptureHardwareButton _handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:](self, "_handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:", v8, v9, [v4 isCaptureButtonSourceAccessibility]);
      break;
    case 1:
      v6 = [v4 pressDownTimestamp];
      v7 = SBLogButtonsCapture();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = v6;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Capture Button Down (down time: %llu)", &v13, 0xCu);
      }

      -[SBCaptureHardwareButton _handleButtonDownAtTimestamp:isAccessibilityEvent:](self, "_handleButtonDownAtTimestamp:isAccessibilityEvent:", v6, [v4 isCaptureButtonSourceAccessibility]);
      break;
  }
}

- (void)physicalButtonSceneOverridesDidChange:(id)a3
{
  v4 = a3;
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    v5 = [(SBCaptureHardwareButton *)self _physicalButtonTargetMatchesExpectedTargetScene];
    v6 = SBLogButtonsCapture();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
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

- (void)performActionsForButtonLongPress:(id)a3
{
  v3 = SBLogButtonsCapture();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Long Press (should be disabled?)", v4, 2u);
  }
}

- (void)performActionsForButtonDown:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsCapture();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v4 downTime];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Down (down time: %llu)", &v6, 0xCu);
  }

  -[SBCaptureHardwareButton _handleButtonDownAtTimestamp:isAccessibilityEvent:](self, "_handleButtonDownAtTimestamp:isAccessibilityEvent:", [v4 downTime], 0);
}

- (void)performActionsForButtonUp:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = mach_absolute_time();
  v6 = SBLogButtonsCapture();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = [v4 downTime];
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Up (down time: %llu, up time: %llu)", &v7, 0x16u);
  }

  -[SBCaptureHardwareButton _handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:](self, "_handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:", v5, [v4 downTime], 0);
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
    v7 = [(SBCaptureHardwareButtonFullPressRecognizer *)self->_captureButtonRecognizer pressUpTimestamp];
    v8 = [(SBCaptureHardwareButtonFullPressRecognizer *)self->_captureButtonRecognizer pressDownTimestamp];
    v9 = SBLogButtonsCapture();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = v8;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Invoking scene override Button Up Action due to press cancellation (down time: %llu, up time: %llu)", &v13, 0x16u);
    }

    [(SBPhysicalButtonCompletionHandling *)self->_overrideButtonUpHandler completeWithResult:1];
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = 0;
  }

  else
  {
    appActivator = self->_appActivator;
    v12 = [(SBCaptureHardwareButton *)self _clickGesture];

    [(SBCaptureHardwareButtonAppActivator *)appActivator cancelActivationForGesture:v12];
  }
}

- (BOOL)handleSimulatedCaptureButtonEvent:(uint64_t)a1
{
  if (a1)
  {
    objc_opt_self();
    if (CAMIsCameraButtonEnabled())
    {
      [*(a1 + 272) processEvent:a2];
    }
  }

  return a1 != 0;
}

- (uint64_t)simulationButtonArbiter
{
  if (result)
  {
    return *(result + 272);
  }

  return result;
}

- (void)setSimulationButtonArbiter:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 272), a2);
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
  v4 = a1;
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