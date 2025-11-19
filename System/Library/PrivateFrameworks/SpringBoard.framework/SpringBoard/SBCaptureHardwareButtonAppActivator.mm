@interface SBCaptureHardwareButtonAppActivator
- (BOOL)_isOverUnlockedApplication;
- (BOOL)_isVisionIntelligenceEnabled;
- (BOOL)isActivationInProgress;
- (SBCaptureHardwareButtonAppActivator)initWithSettingsSnapshot:(id)a3 windowScene:(id)a4 scanModeResource:(id)a5 activationManager:(id)a6 suppressionManager:(id)a7 setupManager:(id)a8 authenticationController:(id)a9 HUDController:(id)a10;
- (double)deviceStationaryDetectionStationaryDebounceInterval;
- (id)__clickAgainCoachingText;
- (id)__consoleModeCoachingText;
- (id)_behaviorsPolicy;
- (id)_coachingStringForCoachIntent:(unint64_t)a3;
- (id)_createCaptureButtonDefaultsObserver;
- (id)_foregoundAppBundleID;
- (void)_abortVisionIntelligence;
- (void)_activateVisionIntelligenceWithCompletion:(id)a3;
- (void)_attemptCameraAppLaunchSequence;
- (void)_beginObservingConsoleMode;
- (void)_cancel;
- (void)_cancelCameraPrewarmForBundleIdentifier:(id)a3;
- (void)_cancelHintingDroplet;
- (void)_cancelLaunchAnimation;
- (void)_consoleModeDidChange;
- (void)_deferredLaunchTimeoutDidOccur;
- (void)_handleButtonUpInteraction:(id)a3;
- (void)_handleCaptureButtonInteraction:(id)a3;
- (void)_initiateLaunchAnimationExpansion;
- (void)_initiateLaunchAnimationPrelude;
- (void)_invalidateDeferredLaunchTimer;
- (void)_invalidateExpansionAnimationYAndScaleComponentsLockoutTimer;
- (void)_invalidateLaunchGracePeriodTimer;
- (void)_invalidatePrewarmLockoutTimer;
- (void)_invalidateVisionIntelligenceActivation;
- (void)_launchCaptureApp;
- (void)_launchGracePeriodTimeoutDidOccur;
- (void)_prepareConfirmedLaunchSequenceForButtonDown:(BOOL)a3;
- (void)_prewarmCameraForBundleIdentifier:(id)a3;
- (void)_prewarmLockoutTimeoutDidOccur;
- (void)_prewarmVisionIntelligenceActivation;
- (void)_setupCaptureButtonBehaviors;
- (void)_showHintingDroplet;
- (void)_startDeferredLaunchTimerWithTimeout:(double)a3;
- (void)_startLaunchGracePeriodTimerWithTimeout:(double)a3;
- (void)_startPrewarmLockoutTimerWithTimeout:(double)a3;
- (void)_suppressionManagerDidUnsuppress:(id)a3;
- (void)_takeButtonDownPowerAssertion;
- (void)_updateCaptureButtonDefaults;
- (void)_updateStationarySquelchTimestampInContext:(id)a3 timeSinceLastStationarySquelch:(double)a4;
- (void)_updateStationaryState;
- (void)activateForGesture:(unint64_t)a3 atMachAbsoluteTime:(unint64_t)a4 pressDuration:(double)a5 suppressionOptions:(unint64_t)a6;
- (void)cancelActivationForGesture:(unint64_t)a3;
- (void)captureButtonSuppressionManager:(id)a3 event:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)prepareForGesture:(unint64_t)a3 forAppBundleID:(id)a4 atMachAbsoluteTime:(unint64_t)a5 suppressionOptions:(unint64_t)a6;
- (void)sessionDidFinalize:(id)a3;
@end

@implementation SBCaptureHardwareButtonAppActivator

- (SBCaptureHardwareButtonAppActivator)initWithSettingsSnapshot:(id)a3 windowScene:(id)a4 scanModeResource:(id)a5 activationManager:(id)a6 suppressionManager:(id)a7 setupManager:(id)a8 authenticationController:(id)a9 HUDController:(id)a10
{
  v16 = a3;
  v44 = a4;
  v43 = a5;
  v42 = a6;
  v17 = a7;
  v41 = a8;
  v40 = a9;
  v18 = a10;
  v45.receiver = self;
  v45.super_class = SBCaptureHardwareButtonAppActivator;
  v19 = [(SBCaptureHardwareButtonAppActivator *)&v45 init];
  if (!v19)
  {
    goto LABEL_11;
  }

  if (!v16)
  {
    [SBCaptureHardwareButtonAppActivator initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:];
  }

  if (!v43)
  {
    [SBCaptureHardwareButtonAppActivator initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:];
  }

  if (!v42)
  {
    [SBCaptureHardwareButtonAppActivator initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:];
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_13:
    [SBCaptureHardwareButtonAppActivator initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:];
    goto LABEL_8;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (!v44)
  {
    [SBCaptureHardwareButtonAppActivator initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:];
  }

  objc_storeStrong(&v19->_windowScene, a4);
  objc_storeStrong(&v19->_scanningModeAssertionProvider, a5);
  objc_storeStrong(&v19->_activationManager, a6);
  objc_storeStrong(&v19->_suppressionManager, a7);
  objc_storeStrong(&v19->_setupManager, a8);
  objc_storeStrong(&v19->_authenticationController, a9);
  v19->_valid = 1;
  v19->_preparedForCurrentActivation = 0;
  v19->_lastClickAgainSquelchTimestamp = 0.0;
  v20 = objc_alloc_init(MEMORY[0x277D55258]);
  siriTostadaSource = v19->_siriTostadaSource;
  v19->_siriTostadaSource = v20;

  v19->_consoleModeNotifyToken = -1;
  [(SBCaptureHardwareButtonAppActivator *)v19 _beginObservingConsoleMode];
  v22 = [v44 layoutStateTransitionCoordinator];
  [v22 addObserver:v19];
  objc_storeStrong(&v19->_settings, a3);
  v23 = [[SBCaptureButtonCoachingController alloc] initWithHUDController:v18];
  coachingController = v19->_coachingController;
  v19->_coachingController = v23;

  v25 = objc_alloc_init(SBDeviceStationaryMotionDetector);
  stationaryDeviceMotionDetector = v19->_stationaryDeviceMotionDetector;
  v19->_stationaryDeviceMotionDetector = v25;

  *&v19->_timeSinceLastStationary = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v19->_lastStationarySquelchTimestamp = 0.0;
  v27 = objc_alloc_init(SBDeviceMotionDetector);
  deviceMotionDetector = v19->_deviceMotionDetector;
  v19->_deviceMotionDetector = v27;

  v29 = +[SBDefaults localDefaults];
  v30 = [v29 captureButtonDefaults];
  captureButtonDefaults = v19->_captureButtonDefaults;
  v19->_captureButtonDefaults = v30;

  v32 = [(SBCaptureHardwareButtonAppActivator *)v19 _createCaptureButtonDefaultsObserver];
  captureButtonDefaultsObserver = v19->_captureButtonDefaultsObserver;
  v19->_captureButtonDefaultsObserver = v32;

  [(SBCaptureHardwareButtonAppActivator *)v19 _updateCaptureButtonDefaults];
  v19->_machAbsoluteButtonPressDownTimeForDeferredLaunches = 0;
  [v16 launchAfterButtonUpGracePeriod];
  v19->_gracePeriodForVOUnobstructionAfterRelease = v34;
  [v16 ignoreFaceDownAfterDuration];
  v19->_honorFaceDownDuration = v35;
  [(SBSystemActionControl *)v17 addSystemActionValidator:v19];
  v36 = objc_alloc_init(MEMORY[0x277CF0DB0]);
  batteryDeviceController = v19->_batteryDeviceController;
  v19->_batteryDeviceController = v36;

  [(SBCaptureHardwareButtonAppActivator *)v19 _setupCaptureButtonBehaviors];
LABEL_11:

  return v19;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (BOOL)isActivationInProgress
{
  if (self->_isWaitingForButtonUpToPerformLaunch)
  {
    return 1;
  }

  else
  {
    return [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_prewarmLockoutTimer isScheduled]|| [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_expansionAnimationYAndScaleComponentsLockoutTimer isScheduled]|| self->_waitingForActivationCompletion;
  }
}

- (void)prepareForGesture:(unint64_t)a3 forAppBundleID:(id)a4 atMachAbsoluteTime:(unint64_t)a5 suppressionOptions:(unint64_t)a6
{
  v52 = a6;
  v59 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (!self->_valid)
  {
    [SBCaptureHardwareButtonAppActivator prepareForGesture:forAppBundleID:atMachAbsoluteTime:suppressionOptions:];
  }

  if (self->_launchPendedDueToButtonDownWhileSuppressed)
  {
    [SBCaptureHardwareButtonAppActivator prepareForGesture:forAppBundleID:atMachAbsoluteTime:suppressionOptions:];
  }

  self->_preparedForCurrentActivation = 1;
  v9 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v58 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Preparing launching %{public}@.", buf, 0xCu);
  }

  v56 = v8;

  self->_isWaitingForButtonUpToPerformLaunch = 0;
  self->_isLongPressActivation = 0;
  objc_storeStrong(&self->_bundleIDForCurrentActivation, a4);
  [(SBCaptureHardwareButtonAppActivator *)self _invalidateDeferredLaunchTimer];
  [(SBCaptureButtonCoachingController *)self->_coachingController setExtraCoachingUIButtonOffset:6.0];
  [(SBCaptureHardwareButtonAppActivator *)self _updateStationaryState];
  v10 = [(SBCaptureButtonSuppressionManager *)self->_suppressionManager lowLatencyPose];
  v11 = [SBCaptureButtonContext alloc];
  isConsoleModeActive = self->_isConsoleModeActive;
  v47 = v11;
  consoleModeActiveStreakCount = self->_consoleModeActiveStreakCount;
  v51 = +[SBBacklightController sharedInstance];
  v46 = [v51 backlightState];
  [(SBCaptureHardwareButtonAppActivator *)self _timeSinceLastViewUnobstructed];
  v13 = v12;
  v50 = [(SBWindowScene *)self->_windowScene lockScreenManager];
  v44 = [v50 isUILocked];
  timeSinceLastStationary = self->_timeSinceLastStationary;
  timeSinceLastNonStationary = self->_timeSinceLastNonStationary;
  BSAbsoluteMachTimeNow();
  v17 = v16;
  lastStationarySquelchTimestamp = self->_lastStationarySquelchTimestamp;
  [v10 timeSinceLastStationary];
  v20 = v19;
  v53 = v10;
  [v10 timeSinceLastNonStationary];
  v22 = v21;
  v42 = [(SBCaptureButtonSuppressionManager *)self->_suppressionManager isInCameraCapturePose];
  v45 = [(SBDeviceMotionDetector *)self->_deviceMotionDetector gravity];
  v43 = [(SBDeviceMotionDetector *)self->_deviceMotionDetector rotationRate];
  v23 = [MEMORY[0x277D75418] currentDevice];
  v41 = [v23 orientation];
  v24 = [(SBCaptureHardwareButtonAppActivator *)self _behaviorsPolicy];
  launchPendedDueToButtonDownWhileSuppressed = self->_launchPendedDueToButtonDownWhileSuppressed;
  isWaitingForButtonUpToPerformLaunch = self->_isWaitingForButtonUpToPerformLaunch;
  v25 = [(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState];
  v26 = [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_prewarmLockoutTimer isScheduled];
  v27 = [(SBCaptureHardwareButtonAppActivator *)self _foregoundAppBundleID];
  v28 = [(SBWindowScene *)self->_windowScene ambientPresentationController];
  v29 = [v28 isPresented];
  v30 = [(BCBatteryDeviceController *)self->_batteryDeviceController sb_isConnectedToWirelessCharger];
  if (_AXSVoiceOverTouchEnabled())
  {
    v31 = _AXSVoiceOverTouchScreenCurtainEnabled() != 0;
  }

  else
  {
    v31 = 0;
  }

  BSAbsoluteMachTimeNow();
  BYTE3(v38) = v52 & 1;
  BYTE2(v38) = v31;
  BYTE1(v38) = v30;
  LOBYTE(v38) = v29;
  LOBYTE(v37) = v26;
  BYTE1(v36) = launchPendedDueToButtonDownWhileSuppressed;
  LOBYTE(v36) = isWaitingForButtonUpToPerformLaunch;
  BYTE1(v35) = v42;
  LOBYTE(v35) = v44;
  v33 = [SBCaptureButtonContext initWithEvent:v47 gesture:"initWithEvent:gesture:machAbsoluteTimestamp:consoleModeActive:consoleModeActiveStreakCount:backlightState:timeSinceLastViewUnobstructed:uiLocked:timeSinceLastStationary:timeSinceLastNonStationary:timeSinceLastStationarySquelch:lowLatencyTimeSinceLastStationary:lowLatencyTimeSinceLastNonStationary:inCameraPose:gravity:rotationRate:deviceOrientation:policy:cameraPrewarmed:suppressedOnButtonDown:suppressionState:prewarmLockoutActive:captureAppBundleID:pressDuration:foregroundAppBundleID:inAmbientPresentationMode:connectedToWirelessCharger:voiceOverScreenCurtainActive:wantsClickAgain:timeSinceLastClickAgainCoaching:" machAbsoluteTimestamp:1 consoleModeActive:a3 consoleModeActiveStreakCount:a5 backlightState:isConsoleModeActive timeSinceLastViewUnobstructed:consoleModeActiveStreakCount uiLocked:v46 timeSinceLastStationary:v13 timeSinceLastNonStationary:timeSinceLastStationary timeSinceLastStationarySquelch:timeSinceLastNonStationary lowLatencyTimeSinceLastStationary:v17 - lastStationarySquelchTimestamp lowLatencyTimeSinceLastNonStationary:v20 inCameraPose:v22 gravity:0.0 rotationRate:v32 - self->_lastClickAgainSquelchTimestamp deviceOrientation:v35 policy:v45 cameraPrewarmed:v43 suppressedOnButtonDown:v41 suppressionState:v24 prewarmLockoutActive:v36 captureAppBundleID:v25 pressDuration:v37 foregroundAppBundleID:v56 inAmbientPresentationMode:v27 connectedToWirelessCharger:v38 voiceOverScreenCurtainActive:? wantsClickAgain:? timeSinceLastClickAgainCoaching:?];

  v34 = [SBCaptureButtonBehaviorResolver resolveInteractionForBehaviors:self->_behaviors inContext:v33];
  [(SBCaptureHardwareButtonAppActivator *)self _handleCaptureButtonInteraction:v34];
  [(SBDeviceMotionDetector *)self->_deviceMotionDetector startWithTimeout:2.0];
}

- (void)activateForGesture:(unint64_t)a3 atMachAbsoluteTime:(unint64_t)a4 pressDuration:(double)a5 suppressionOptions:(unint64_t)a6
{
  v6 = a6;
  v63 = *MEMORY[0x277D85DE8];
  if (!self->_valid)
  {
    [SBCaptureHardwareButtonAppActivator activateForGesture:atMachAbsoluteTime:pressDuration:suppressionOptions:];
  }

  v11 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = a3;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Activating for gesture %lu.", buf, 0xCu);
  }

  if (self->_preparedForCurrentActivation)
  {
    v57 = v6;
    v58 = a4;
    self->_preparedForCurrentActivation = 0;
    v59 = a3;
    self->_isLongPressActivation = a3 == 3;
    [(SBCaptureHardwareButtonAppActivator *)self _timeSinceLastStationarySquelch];
    v13 = v12;
    if (self->_isConsoleModeActive)
    {
      ++self->_consoleModeActiveStreakCount;
    }

    v14 = [(SBCaptureButtonSuppressionManager *)self->_suppressionManager lowLatencyPose];
    v51 = [SBCaptureButtonContext alloc];
    isConsoleModeActive = self->_isConsoleModeActive;
    consoleModeActiveStreakCount = self->_consoleModeActiveStreakCount;
    v56 = +[SBBacklightController sharedInstance];
    v52 = [v56 backlightState];
    [(SBCaptureHardwareButtonAppActivator *)self _timeSinceLastViewUnobstructed];
    v16 = v15;
    v55 = [(SBWindowScene *)self->_windowScene lockScreenManager];
    v48 = [v55 isUILocked];
    timeSinceLastStationary = self->_timeSinceLastStationary;
    timeSinceLastNonStationary = self->_timeSinceLastNonStationary;
    [v14 timeSinceLastStationary];
    v20 = v19;
    v60 = v14;
    [v14 timeSinceLastNonStationary];
    v22 = v21;
    v46 = [(SBCaptureButtonSuppressionManager *)self->_suppressionManager isInCameraCapturePose];
    v50 = [(SBDeviceMotionDetector *)self->_deviceMotionDetector gravity];
    v49 = [(SBDeviceMotionDetector *)self->_deviceMotionDetector rotationRate];
    v47 = [MEMORY[0x277D75418] currentDevice];
    v45 = [v47 orientation];
    v23 = [(SBCaptureHardwareButtonAppActivator *)self _behaviorsPolicy];
    launchPendedDueToButtonDownWhileSuppressed = self->_launchPendedDueToButtonDownWhileSuppressed;
    isWaitingForButtonUpToPerformLaunch = self->_isWaitingForButtonUpToPerformLaunch;
    v24 = [(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState];
    v25 = [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_prewarmLockoutTimer isScheduled];
    bundleIDForCurrentActivation = self->_bundleIDForCurrentActivation;
    v27 = [(SBCaptureHardwareButtonAppActivator *)self _foregoundAppBundleID];
    v28 = [(SBWindowScene *)self->_windowScene ambientPresentationController];
    v29 = [v28 isPresented];
    v30 = [(BCBatteryDeviceController *)self->_batteryDeviceController sb_isConnectedToWirelessCharger];
    if (_AXSVoiceOverTouchEnabled())
    {
      v31 = _AXSVoiceOverTouchScreenCurtainEnabled() != 0;
    }

    else
    {
      v31 = 0;
    }

    BSAbsoluteMachTimeNow();
    BYTE3(v42) = v57 & 1;
    BYTE2(v42) = v31;
    BYTE1(v42) = v30;
    LOBYTE(v42) = v29;
    LOBYTE(v41) = v25;
    BYTE1(v40) = launchPendedDueToButtonDownWhileSuppressed;
    LOBYTE(v40) = isWaitingForButtonUpToPerformLaunch;
    BYTE1(v39) = v46;
    LOBYTE(v39) = v48;
    v34 = [SBCaptureButtonContext initWithEvent:v51 gesture:"initWithEvent:gesture:machAbsoluteTimestamp:consoleModeActive:consoleModeActiveStreakCount:backlightState:timeSinceLastViewUnobstructed:uiLocked:timeSinceLastStationary:timeSinceLastNonStationary:timeSinceLastStationarySquelch:lowLatencyTimeSinceLastStationary:lowLatencyTimeSinceLastNonStationary:inCameraPose:gravity:rotationRate:deviceOrientation:policy:cameraPrewarmed:suppressedOnButtonDown:suppressionState:prewarmLockoutActive:captureAppBundleID:pressDuration:foregroundAppBundleID:inAmbientPresentationMode:connectedToWirelessCharger:voiceOverScreenCurtainActive:wantsClickAgain:timeSinceLastClickAgainCoaching:" machAbsoluteTimestamp:2 consoleModeActive:v59 consoleModeActiveStreakCount:v58 backlightState:isConsoleModeActive timeSinceLastViewUnobstructed:consoleModeActiveStreakCount uiLocked:v52 timeSinceLastStationary:v16 timeSinceLastNonStationary:timeSinceLastStationary timeSinceLastStationarySquelch:timeSinceLastNonStationary lowLatencyTimeSinceLastStationary:v13 lowLatencyTimeSinceLastNonStationary:v20 inCameraPose:v22 gravity:a5 rotationRate:v33 - self->_lastClickAgainSquelchTimestamp deviceOrientation:v39 policy:v50 cameraPrewarmed:v49 suppressedOnButtonDown:v45 suppressionState:v23 prewarmLockoutActive:v40 captureAppBundleID:v24 pressDuration:v41 foregroundAppBundleID:bundleIDForCurrentActivation inAmbientPresentationMode:v27 connectedToWirelessCharger:v42 voiceOverScreenCurtainActive:? wantsClickAgain:? timeSinceLastClickAgainCoaching:?];

    v35 = [SBCaptureButtonBehaviorResolver resolveInteractionForBehaviors:self->_behaviors inContext:v34];
    [(SBCaptureHardwareButtonAppActivator *)self _handleCaptureButtonInteraction:v35];
    self->_launchPendedDueToButtonDownWhileSuppressed = 0;
    [(BSInvalidatable *)self->_buttonDownScanningRequest invalidate];
    buttonDownScanningRequest = self->_buttonDownScanningRequest;
    self->_buttonDownScanningRequest = 0;

    [(SBCaptureHardwareButtonAppActivator *)self _cancelHintingDroplet];
    [(SBCaptureHardwareButtonAppActivator *)self _updateStationarySquelchTimestampInContext:v34 timeSinceLastStationarySquelch:v13];
    if (v59 <= 4 && ((1 << v59) & 0x16) != 0)
    {
      v37 = SBLogCameraCaptureStudyLogs();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v35 JSONString];
        *buf = 138543362;
        v62 = v38;
        _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      [(SBCaptureHardwareButtonAppActivator *)self _handleButtonUpInteraction:v35];
    }

    v32 = v60;
  }

  else
  {
    v32 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [SBCaptureHardwareButtonAppActivator activateForGesture:v32 atMachAbsoluteTime:? pressDuration:? suppressionOptions:?];
    }
  }
}

- (void)cancelActivationForGesture:(unint64_t)a3
{
  if (!self->_valid)
  {
    [SBCaptureHardwareButtonAppActivator cancelActivationForGesture:];
  }

  if (a3 - 1 < 2)
  {
LABEL_6:
    v5 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling capture application launch.", buf, 2u);
    }

    [(SBCaptureHardwareButtonAppActivator *)self _cancel];
    return;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return;
    }

    goto LABEL_6;
  }

  self->_isLongPressActivation = 0;
  v6 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling vision intelligence.", v7, 2u);
  }

  [(SBCaptureHardwareButtonAppActivator *)self _invalidateVisionIntelligenceActivation];
  [(SBCaptureHardwareButtonAppActivator *)self _cancelLaunchAnimation];
}

- (void)sessionDidFinalize:(id)a3
{
  v4 = a3;
  [v4 logInteractionIntentions];
  [v4 logToCoreAnalytics];

  session = self->_session;
  self->_session = 0;
}

- (void)_handleButtonUpInteraction:(id)a3
{
  v10 = a3;
  session = self->_session;
  if (session && [(SBCaptureButtonSession *)session isActive])
  {
    [(SBCaptureButtonSession *)self->_session coalesceInteraction:v10];
  }

  else
  {
    v5 = [SBCaptureButtonSession alloc];
    v6 = [(SBWindowScene *)self->_windowScene appInteractionEventSource];
    v7 = [(SBWindowScene *)self->_windowScene displayLayoutPublisher];
    v8 = [(SBCaptureButtonSession *)v5 initWithInteraction:v10 delegate:self appInteractionEventSource:v6 displayLayoutPublisher:v7];
    v9 = self->_session;
    self->_session = v8;
  }
}

- (void)_setupCaptureButtonBehaviors
{
  v13[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SBCaptureButtonLaunchBehavior);
  v4 = objc_alloc_init(SBCaptureButtonConsoleModeBehavior);
  v5 = objc_alloc_init(SBCaptureButtonWakeBehavior);
  v6 = objc_alloc_init(SBCaptureButtonViewObstructedBehavior);
  v7 = objc_alloc_init(SBCaptureButtonDeviceStationaryBehavior);
  v8 = objc_alloc_init(SBCaptureButtonClickAgainBehavior);
  v13[0] = v3;
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v11 = SBCaptureButtonSortedBehaviorsMake(v9, v10);
  behaviors = self->_behaviors;
  self->_behaviors = v11;
}

- (id)_behaviorsPolicy
{
  v3 = [SBCaptureButtonPolicy alloc];
  disableWakeWhenDim = self->_disableWakeWhenDim;
  disableDirectLaunchAfterUnsuppress = self->_disableDirectLaunchAfterUnsuppress;
  [(SBCaptureButtonSettings *)self->_settings directLaunchAfterUnsuppressGracePeriod];
  v7 = v6;
  disableStationaryDetection = self->_disableStationaryDetection;
  v9 = [(SBCaptureButtonSettings *)self->_settings enablesStationaryDetectionForUnlocked];
  [(SBCaptureButtonSettings *)self->_settings accidentalPreventionStationaryThreshold];
  v11 = v10;
  [(SBCaptureButtonSettings *)self->_settings accidentalPreventionPickUpBuffer];
  v13 = v12;
  [(SBCaptureHardwareButtonAppActivator *)self deviceStationaryDetectionStationaryDebounceInterval];
  v15 = v14;
  disablePreLaunchCaptureButtonSuppression = self->_disablePreLaunchCaptureButtonSuppression;
  v17 = *&self->_allowLaunchIfUnobstructedWhileButtonDown;
  LOBYTE(v21) = [(SBCaptureHardwareButtonAppActivator *)self _isVisionIntelligenceEnabled];
  LOWORD(v20) = v17;
  v18 = [(SBCaptureButtonPolicy *)v3 initWithConsoleModeEnabled:1 wakeEnabled:!disableWakeWhenDim directLaunchAfterUnsuppressEnabled:!disableDirectLaunchAfterUnsuppress directLaunchAfterUnsuppressGracePeriod:!disableStationaryDetection deviceStationaryDetectionEnabled:v9 deviceStationaryDetectionEnabledWhenUnlocked:!disablePreLaunchCaptureButtonSuppression deviceStationaryDetectionStationaryThreshold:v7 deviceStationaryDetectionStationaryPickUpBuffer:v11 deviceStationaryDetectionStationaryDebounceInterval:v13 suppressionEnabled:v15 launchIfUnobstructedWhileButtonDownEnabled:v20 launchIfUnobstructedPromptlyAfterButtonUpEnabled:&unk_28336E8C8 wakingBacklightStates:v21 visionIntelligenceEnabled:?];

  return v18;
}

- (double)deviceStationaryDetectionStationaryDebounceInterval
{
  result = 4.0;
  if (self->_isLongPressActivation)
  {
    return 6.0;
  }

  return result;
}

- (id)_foregoundAppBundleID
{
  v2 = [(SBWindowScene *)self->_windowScene displayLayoutPublisher];
  v3 = [v2 currentLayout];
  v4 = [v3 elements];
  v5 = [v4 lastObject];

  v6 = [v5 bundleIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 identifier];
  }

  v9 = v8;

  return v9;
}

- (void)_handleCaptureButtonInteraction:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 context];
  v6 = [v4 response];

  v7 = [v6 prewarmIntent];
  if (v7 < 2)
  {
    v13 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Suppressing prewarm.", buf, 2u);
    }

    if ([v5 isPrewarmLockoutActive])
    {
      v14 = SBLogCameraCaptureSuppression();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 machAbsoluteTimestamp];
        *buf = 134217984;
        v47 = v15;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Button press at timestamp %lld ignored; confirmed launch prewarm already in progress.", buf, 0xCu);
      }
    }

    [(SBCaptureHardwareButtonAppActivator *)self _showHintingDroplet];
  }

  else if (v7 == 3)
  {
    v16 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Prewarming vision intelligence.", buf, 2u);
    }

    [(SBCaptureHardwareButtonAppActivator *)self _prewarmVisionIntelligenceActivation];
    [(SBCaptureHardwareButtonAppActivator *)self _initiateLaunchAnimationPrelude];
  }

  else if (v7 == 2)
  {
    v8 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 captureAppBundleID];
      *buf = 138543362;
      v47 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Prewarming capture application. %{public}@", buf, 0xCu);
    }

    v10 = SBLogCameraCaptureSuppression();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 machAbsoluteTimestamp];
      v12 = NSStringFromSBCaptureButtonSuppressionState([v5 suppressionState]);
      *buf = 134218242;
      v47 = v11;
      v48 = 2114;
      v49 = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Button press at timestamp %lld NOT suppressed; VO=%{public}@; will launch on button up.", buf, 0x16u);
    }

    [(SBCaptureHardwareButtonAppActivator *)self _prepareConfirmedLaunchSequenceForButtonDown:1];
    if ([v5 gesture] == 2)
    {
      [(SBCaptureHardwareButtonAppActivator *)self _abortVisionIntelligence];
    }
  }

  v17 = [v6 coachIntent];
  if (v17 != 2)
  {
    if (v17 != 1)
    {
      goto LABEL_28;
    }

    if ([v5 event] == 2)
    {
      BSAbsoluteMachTimeNow();
      self->_lastClickAgainSquelchTimestamp = v18;
    }
  }

  v19 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = SBCameraCoachIntentDescription([v6 coachIntent]);
    *buf = 138543362;
    v47 = v20;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Showing coaching UI for %{public}@", buf, 0xCu);
  }

  if (self->_bundleIDForCurrentActivation)
  {
    coachingController = self->_coachingController;
    v22 = -[SBCaptureHardwareButtonAppActivator _coachingStringForCoachIntent:](self, "_coachingStringForCoachIntent:", [v6 coachIntent]);
    [(SBCaptureButtonSettings *)self->_settings coachingUIDismissalInterval];
    [(SBCaptureButtonCoachingController *)coachingController showCoachingUIWithText:v22 dismissInterval:?];
  }

LABEL_28:
  v23 = [v6 launchIntent];
  if (v23 <= 2)
  {
    if (v23 != 1)
    {
      if (v23 != 2)
      {
        goto LABEL_58;
      }

      [(SBCaptureHardwareButtonAppActivator *)self _abortVisionIntelligence];
      v25 = [v5 cameraPrewarmed];
      v24 = SBLogCameraCaptureLaunch();
      v26 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if ((v25 & 1) == 0)
      {
        if (v26)
        {
          v39 = [v5 captureAppBundleID];
          *buf = 138543362;
          v47 = v39;
          _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Launching capture app (%{public}@) (not prewarmed).", buf, 0xCu);
        }

        [(SBCaptureHardwareButtonAppActivator *)self _prepareConfirmedLaunchSequenceForButtonDown:0];
        [(SBCaptureHardwareButtonAppActivator *)self _initiateLaunchAnimationExpansion];
        goto LABEL_57;
      }

      if (v26)
      {
        v27 = [v5 captureAppBundleID];
        *buf = 138543362;
        v47 = v27;
        _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Launching capture app (%{public}@ (prewarmed).", buf, 0xCu);
      }

LABEL_39:

      [(SBCaptureHardwareButtonAppActivator *)self _initiateLaunchAnimationExpansion];
      self->_isWaitingForButtonUpToPerformLaunch = 0;
      [(SBCaptureHardwareButtonAppActivator *)self _attemptCameraAppLaunchSequence];
LABEL_57:
      [(SBCaptureButtonCoachingController *)self->_coachingController dismissCoachingUI];
      goto LABEL_58;
    }

    v36 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v5 captureAppBundleID];
      *buf = 138543362;
      v47 = v37;
      _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "Aborting launching %{public}@", buf, 0xCu);
    }

    self->_isWaitingForButtonUpToPerformLaunch = 0;
    [(SBCaptureHardwareButtonAppActivator *)self _cancel];
  }

  else
  {
    switch(v23)
    {
      case 3:
        allowLaunchIfUnobstructedPromptlyAfterButtonUp = self->_allowLaunchIfUnobstructedPromptlyAfterButtonUp;
        v29 = SBLogCameraCaptureLaunch();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (allowLaunchIfUnobstructedPromptlyAfterButtonUp)
        {
          if (v30)
          {
            machAbsoluteButtonPressDownTimeForDeferredLaunches = self->_machAbsoluteButtonPressDownTimeForDeferredLaunches;
            *buf = 134217984;
            v47 = machAbsoluteButtonPressDownTimeForDeferredLaunches;
            _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Button press up corresponding to press down at timestamp %lld; further pending launch", buf, 0xCu);
          }

          [(SBCaptureHardwareButtonAppActivator *)self _startDeferredLaunchTimerWithTimeout:self->_gracePeriodForVOUnobstructionAfterRelease];
        }

        else
        {
          if (v30)
          {
            v38 = self->_machAbsoluteButtonPressDownTimeForDeferredLaunches;
            *buf = 134217984;
            v47 = v38;
            _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Button press up corresponding to press down at timestamp %lld without VO change; abandoning pended request; prohibiting launch", buf, 0xCu);
          }

          self->_machAbsoluteButtonPressDownTimeForDeferredLaunches = 0;
        }

        break;
      case 4:
        v32 = [v5 captureAppBundleID];

        if (v32)
        {
          v33 = SBLogCameraCaptureSuppression();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v5 machAbsoluteTimestamp];
            v35 = NSStringFromSBCaptureButtonSuppressionState([v5 suppressionState]);
            *buf = 134218242;
            v47 = v34;
            v48 = 2114;
            v49 = v35;
            _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "Button press at timestamp %lld pended (VO=%{public}@); pending launch", buf, 0x16u);
          }

          self->_launchPendedDueToButtonDownWhileSuppressed = 1;
          self->_machAbsoluteButtonPressDownTimeForDeferredLaunches = [v5 machAbsoluteTimestamp];
        }

        else
        {
          v43 = SBLogCameraCaptureLaunch();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v43, OS_LOG_TYPE_DEFAULT, "Ignoring request to launch capture app with nil bundleID", buf, 2u);
          }
        }

        break;
      case 5:
        v24 = SBLogCameraCaptureLaunch();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Launching vision intelligence.", buf, 2u);
        }

        goto LABEL_39;
      default:
        break;
    }
  }

LABEL_58:
  if ([v6 wakeIntent] == 1)
  {
    v40 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "Button press up; waking screen.", buf, 2u);
    }

    v41 = +[SBLockScreenManager sharedInstance];
    v44[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v44[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
    v45[0] = MEMORY[0x277CBEC38];
    v45[1] = MEMORY[0x277CBEC38];
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    [v41 unlockUIFromSource:40 withOptions:v42];
  }
}

- (void)_suppressionManagerDidUnsuppress:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSAbsoluteMachTimeNow();
  self->_lastUnsuppressEventTimestamp = v5;
  v6 = [v4 suppressionState];

  if (self->_allowLaunchIfUnobstructedWhileButtonDown && self->_launchPendedDueToButtonDownWhileSuppressed)
  {
    v7 = SBLogCameraCaptureSuppression();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSBCaptureButtonSuppressionState(v6);
      machAbsoluteButtonPressDownTimeForDeferredLaunches = self->_machAbsoluteButtonPressDownTimeForDeferredLaunches;
      v16 = 138543618;
      v17 = v8;
      v18 = 2048;
      v19 = *&machAbsoluteButtonPressDownTimeForDeferredLaunches;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "VO->%{public}@, deferred launch while button down for press down at timestamp %lld; allowing launch", &v16, 0x16u);
    }

    self->_launchPendedDueToButtonDownWhileSuppressed = 0;
    self->_machAbsoluteButtonPressDownTimeForDeferredLaunches = 0;
    [(SBCaptureHardwareButtonAppActivator *)self _prepareConfirmedLaunchSequenceForButtonDown:1];
  }

  else if (self->_allowLaunchIfUnobstructedPromptlyAfterButtonUp)
  {
    deferredLaunchAfterButtonUpGracePeriodTimer = self->_deferredLaunchAfterButtonUpGracePeriodTimer;
    if (deferredLaunchAfterButtonUpGracePeriodTimer)
    {
      if ([(BSAbsoluteMachTimer *)deferredLaunchAfterButtonUpGracePeriodTimer isScheduled])
      {
        v11 = SBLogCameraCaptureSuppression();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = NSStringFromSBCaptureButtonSuppressionState(v6);
          gracePeriodForVOUnobstructionAfterRelease = self->_gracePeriodForVOUnobstructionAfterRelease;
          [(BSAbsoluteMachTimer *)self->_deferredLaunchAfterButtonUpGracePeriodTimer timeRemaining];
          v14 = self->_machAbsoluteButtonPressDownTimeForDeferredLaunches;
          v16 = 138543874;
          v17 = v12;
          v18 = 2048;
          v19 = gracePeriodForVOUnobstructionAfterRelease - v15;
          v20 = 2048;
          v21 = v14;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "VO->%{public}@, deferred launch (%.3f sec) after button released for press down at timestamp %lld; allowing launch", &v16, 0x20u);
        }

        self->_machAbsoluteButtonPressDownTimeForDeferredLaunches = 0;
        [(SBCaptureHardwareButtonAppActivator *)self _prepareConfirmedLaunchSequenceForButtonDown:0];
        [(SBCaptureHardwareButtonAppActivator *)self _invalidateDeferredLaunchTimer];
      }
    }
  }
}

- (void)captureButtonSuppressionManager:(id)a3 event:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 suppressionState] == 2)
  {
    [v5 secondsAfterFaceDownAtUnsuppressionTime];
    v7 = v6;
    honorFaceDownDuration = self->_honorFaceDownDuration;
    v9 = SBLogCameraCaptureSuppression();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7 >= honorFaceDownDuration)
    {
      if (v10)
      {
        v14 = NSStringFromSBCaptureButtonSuppressionState(2uLL);
        machAbsoluteButtonPressDownTimeForDeferredLaunches = self->_machAbsoluteButtonPressDownTimeForDeferredLaunches;
        v16 = self->_honorFaceDownDuration;
        v17 = 138544130;
        v18 = v14;
        v19 = 2048;
        v20 = machAbsoluteButtonPressDownTimeForDeferredLaunches;
        v21 = 2048;
        v22 = v16;
        v23 = 2048;
        v24 = v7;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "VO->%{public}@, deferred launch for button press down at timestamp %lld;  face down limit of %g exceeded (%g)", &v17, 0x2Au);
      }

      [(SBCaptureHardwareButtonAppActivator *)self _suppressionManagerDidUnsuppress:v5];
    }

    else
    {
      if (v10)
      {
        v11 = NSStringFromSBCaptureButtonSuppressionState(2uLL);
        v12 = self->_machAbsoluteButtonPressDownTimeForDeferredLaunches;
        v13 = self->_honorFaceDownDuration;
        v17 = 138544130;
        v18 = v11;
        v19 = 2048;
        v20 = v12;
        v21 = 2048;
        v22 = v13;
        v23 = 2048;
        v24 = v7;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "VO->%{public}@, deferred launch for button press down at timestamp %lld;  device is face down within %g seconds (%g); prohibiting launch", &v17, 0x2Au);
      }
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v5 = [a4 toLayoutState];
  self->_unlockedEnvironmentMode = [v5 unlockedEnvironmentMode];
}

- (void)invalidate
{
  if (self->_valid)
  {
    [(BSDefaultObserver *)self->_captureButtonDefaultsObserver invalidate];
    captureButtonDefaultsObserver = self->_captureButtonDefaultsObserver;
    self->_captureButtonDefaultsObserver = 0;

    scanningModeAssertionProvider = self->_scanningModeAssertionProvider;
    self->_scanningModeAssertionProvider = 0;

    [(SBCaptureHardwareButtonAppActivator *)self _cancel];
    [(SBCaptureButtonSuppressionManager *)self->_suppressionManager removeObserver:?];
    [(SiriTostadaSource *)self->_siriTostadaSource invalidate];
    siriTostadaSource = self->_siriTostadaSource;
    self->_siriTostadaSource = 0;

    siriTostadaActivationIdentifier = self->_siriTostadaActivationIdentifier;
    self->_siriTostadaActivationIdentifier = 0;

    v9 = [(SBWindowScene *)self->_windowScene layoutStateTransitionCoordinator];
    [v9 removeObserver:self];
    self->_valid = 0;
    consoleModeNotifyToken = self->_consoleModeNotifyToken;
    if ((consoleModeNotifyToken & 0x80000000) == 0)
    {
      notify_cancel(consoleModeNotifyToken);
      self->_consoleModeNotifyToken = -1;
    }
  }
}

- (void)_invalidatePrewarmLockoutTimer
{
  [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_prewarmLockoutTimer invalidate];
  prewarmLockoutTimer = self->_prewarmLockoutTimer;
  self->_prewarmLockoutTimer = 0;
}

- (void)_startPrewarmLockoutTimerWithTimeout:(double)a3
{
  if (a3 > 0.0)
  {
    [(SBCaptureHardwareButtonAppActivator *)self _invalidatePrewarmLockoutTimer];
    v5 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Starting Prewarm Lockout Timer.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6 = [SBCaptureHardwareButtonScanningPowerLinkedTimer alloc];
    scanningModeAssertionProvider = self->_scanningModeAssertionProvider;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__SBCaptureHardwareButtonAppActivator__startPrewarmLockoutTimerWithTimeout___block_invoke;
    v10[3] = &unk_2783BD5C8;
    objc_copyWeak(&v11, buf);
    v8 = [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)v6 initWithIdentifier:@"appActivator.prewarmLockoutTimer" timeout:0 existingRequest:scanningModeAssertionProvider scanModeResource:v10 handler:a3];
    prewarmLockoutTimer = self->_prewarmLockoutTimer;
    self->_prewarmLockoutTimer = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __76__SBCaptureHardwareButtonAppActivator__startPrewarmLockoutTimerWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prewarmLockoutTimeoutDidOccur];
}

- (void)_prewarmLockoutTimeoutDidOccur
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_valid == YES" object:? file:? lineNumber:? description:?];
}

- (void)_invalidateExpansionAnimationYAndScaleComponentsLockoutTimer
{
  [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_expansionAnimationYAndScaleComponentsLockoutTimer invalidate];
  expansionAnimationYAndScaleComponentsLockoutTimer = self->_expansionAnimationYAndScaleComponentsLockoutTimer;
  self->_expansionAnimationYAndScaleComponentsLockoutTimer = 0;
}

- (void)_attemptCameraAppLaunchSequence
{
  v14 = *MEMORY[0x277D85DE8];
  isWaitingForButtonUpToPerformLaunch = self->_isWaitingForButtonUpToPerformLaunch;
  v4 = [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_prewarmLockoutTimer isScheduled];
  v5 = [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_expansionAnimationYAndScaleComponentsLockoutTimer isScheduled];
  v6 = SBLogCameraCaptureLaunch();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isWaitingForButtonUpToPerformLaunch || v4 || v5)
  {
    if (v7)
    {
      v9[0] = 67109632;
      v9[1] = isWaitingForButtonUpToPerformLaunch;
      v10 = 1024;
      v11 = v4;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Not performing camera app launch sequence because waitingForButtonUp:%{BOOL}u waitingForPrewarm:%{BOOL}u waitingForYAndScaleComponents:%{BOOL}u", v9, 0x14u);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Performing camera app launch sequence.", v9, 2u);
    }

    v8 = +[SBCaptureApplicationCenter captureApplicationSettings];
    [v8 launchMonitorDurationInSeconds];
    [(SBCaptureHardwareButtonAppActivator *)self _startLaunchGracePeriodTimerWithTimeout:?];

    [(SBCaptureHardwareButtonAppActivator *)self _launchCaptureApp];
  }
}

- (void)_invalidateLaunchGracePeriodTimer
{
  [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_launchGracePeriodActiveTimer invalidate];
  launchGracePeriodActiveTimer = self->_launchGracePeriodActiveTimer;
  self->_launchGracePeriodActiveTimer = 0;
}

- (void)_startLaunchGracePeriodTimerWithTimeout:(double)a3
{
  if (a3 > 0.0)
  {
    [(SBCaptureHardwareButtonAppActivator *)self _invalidateLaunchGracePeriodTimer];
    v5 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Starting Sensor Active Grace Period Timer.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6 = [(SBCaptureButtonScanningModeResource *)self->_scanningModeAssertionProvider requestActiveScanningModeUntilSceneAcquisition:@"appActivator.launchGracePeriodTimer"];
    v7 = [SBCaptureHardwareButtonScanningPowerLinkedTimer alloc];
    scanningModeAssertionProvider = self->_scanningModeAssertionProvider;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__SBCaptureHardwareButtonAppActivator__startLaunchGracePeriodTimerWithTimeout___block_invoke;
    v11[3] = &unk_2783BD5C8;
    objc_copyWeak(&v12, buf);
    v9 = [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)v7 initWithIdentifier:@"appActivator.launchGracePeriodTimer" timeout:v6 existingRequest:scanningModeAssertionProvider scanModeResource:v11 handler:a3];
    launchGracePeriodActiveTimer = self->_launchGracePeriodActiveTimer;
    self->_launchGracePeriodActiveTimer = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __79__SBCaptureHardwareButtonAppActivator__startLaunchGracePeriodTimerWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _launchGracePeriodTimeoutDidOccur];
}

- (void)_launchGracePeriodTimeoutDidOccur
{
  v3 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Launch Sensor Active Grace Period Timer expired.", v5, 2u);
  }

  [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)self->_launchGracePeriodActiveTimer invalidate];
  launchGracePeriodActiveTimer = self->_launchGracePeriodActiveTimer;
  self->_launchGracePeriodActiveTimer = 0;
}

- (void)_invalidateDeferredLaunchTimer
{
  self->_machAbsoluteButtonPressDownTimeForDeferredLaunches = 0;
  [(BSAbsoluteMachTimer *)self->_deferredLaunchAfterButtonUpGracePeriodTimer invalidate];
  deferredLaunchAfterButtonUpGracePeriodTimer = self->_deferredLaunchAfterButtonUpGracePeriodTimer;
  self->_deferredLaunchAfterButtonUpGracePeriodTimer = 0;
}

- (void)_startDeferredLaunchTimerWithTimeout:(double)a3
{
  if (a3 > 0.0)
  {
    if (self->_deferredLaunchAfterButtonUpGracePeriodTimer)
    {
      [SBCaptureHardwareButtonAppActivator _startDeferredLaunchTimerWithTimeout:];
    }

    v5 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Starting Deferred Launch Grace Period Timer.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"appActivator.deferredLaunchAfterButtonUpGracePeriodTimer"];
    deferredLaunchAfterButtonUpGracePeriodTimer = self->_deferredLaunchAfterButtonUpGracePeriodTimer;
    self->_deferredLaunchAfterButtonUpGracePeriodTimer = v6;

    v8 = self->_deferredLaunchAfterButtonUpGracePeriodTimer;
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__SBCaptureHardwareButtonAppActivator__startDeferredLaunchTimerWithTimeout___block_invoke;
    v11[3] = &unk_2783A9918;
    objc_copyWeak(&v12, buf);
    [(BSAbsoluteMachTimer *)v8 scheduleWithFireInterval:v9 leewayInterval:v11 queue:a3 handler:0.0];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __76__SBCaptureHardwareButtonAppActivator__startDeferredLaunchTimerWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deferredLaunchTimeoutDidOccur];
}

- (void)_deferredLaunchTimeoutDidOccur
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_deferredLaunchAfterButtonUpGracePeriodTimer)
  {
    v3 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      machAbsoluteButtonPressDownTimeForDeferredLaunches = self->_machAbsoluteButtonPressDownTimeForDeferredLaunches;
      v5 = 134217984;
      v6 = machAbsoluteButtonPressDownTimeForDeferredLaunches;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Deferred Launch Grace Period Timer expired for press at timestamp %lld without VO change; abandoning pended request; prohibiting launch", &v5, 0xCu);
    }

    [(SBCaptureHardwareButtonAppActivator *)self _invalidateDeferredLaunchTimer];
  }
}

- (void)_initiateLaunchAnimationPrelude
{
  if (!self->_activeLaunchAnimationPreludeToken)
  {
    v6 = [(SBWindowScene *)self->_windowScene hardwareButtonBezelEffectsCoordinator];
    v4 = [v6 animateLaunchZoomUpPreludeFromButton:9];
    activeLaunchAnimationPreludeToken = self->_activeLaunchAnimationPreludeToken;
    self->_activeLaunchAnimationPreludeToken = v4;
  }
}

- (void)_initiateLaunchAnimationExpansion
{
  if (self->_activeLaunchAnimationPreludeToken && !SBReduceMotion())
  {
    if ([(SBCaptureHardwareButtonAppActivator *)self _isOverUnlockedApplication])
    {
      isLongPressActivation = self->_isLongPressActivation;
    }

    else
    {
      isLongPressActivation = 1;
    }

    v4 = isLongPressActivation;
    [(SBHardwareButtonLaunchPreludeAnimationToken *)self->_activeLaunchAnimationPreludeToken expandHintingDropletByAddingComponents:1 shockwave:isLongPressActivation];
    [(SBCaptureButtonSettings *)self->_settings zoomUpYAndScaleDelay];
    v6 = v5;
    UIAnimationDragCoefficient();
    v8 = v7;
    [(SBCaptureHardwareButtonAppActivator *)self _invalidateExpansionAnimationYAndScaleComponentsLockoutTimer];
    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_activeLaunchAnimationPreludeToken);
    v9 = [SBCaptureHardwareButtonScanningPowerLinkedTimer alloc];
    scanningModeAssertionProvider = self->_scanningModeAssertionProvider;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__SBCaptureHardwareButtonAppActivator__initiateLaunchAnimationExpansion__block_invoke;
    v13[3] = &unk_2783BD5F0;
    objc_copyWeak(&v14, &location);
    objc_copyWeak(&v15, &from);
    v16 = v4;
    v11 = [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)v9 initWithIdentifier:@"appActivator.expansionAnimationYAndScaleComponentsLockoutTimer" timeout:0 existingRequest:scanningModeAssertionProvider scanModeResource:v13 handler:v6 * v8];
    expansionAnimationYAndScaleComponentsLockoutTimer = self->_expansionAnimationYAndScaleComponentsLockoutTimer;
    self->_expansionAnimationYAndScaleComponentsLockoutTimer = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __72__SBCaptureHardwareButtonAppActivator__initiateLaunchAnimationExpansion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = v2;
  if (WeakRetained)
  {
    if (v2)
    {
      v4 = WeakRetained[9];
      if (v3 == v4)
      {
        [v4 expandHintingDropletByAddingComponents:6 shockwave:*(a1 + 48)];
        [MEMORY[0x277CD9FF0] flush];
        [WeakRetained _attemptCameraAppLaunchSequence];
        [WeakRetained _invalidateExpansionAnimationYAndScaleComponentsLockoutTimer];
      }
    }
  }
}

- (void)_cancelLaunchAnimation
{
  activeLaunchAnimationPreludeToken = self->_activeLaunchAnimationPreludeToken;
  if (activeLaunchAnimationPreludeToken)
  {
    [(SBHardwareButtonLaunchPreludeAnimationToken *)activeLaunchAnimationPreludeToken cancel];
    v4 = self->_activeLaunchAnimationPreludeToken;
    self->_activeLaunchAnimationPreludeToken = 0;
  }
}

- (void)_prewarmVisionIntelligenceActivation
{
  if (!self->_siriTostadaActivationIdentifier)
  {
    v4 = [(SiriTostadaSource *)self->_siriTostadaSource prepareForActivation];
    siriTostadaActivationIdentifier = self->_siriTostadaActivationIdentifier;
    self->_siriTostadaActivationIdentifier = v4;
  }
}

- (void)_invalidateVisionIntelligenceActivation
{
  siriTostadaActivationIdentifier = self->_siriTostadaActivationIdentifier;
  self->_siriTostadaActivationIdentifier = 0;
}

- (void)_prepareConfirmedLaunchSequenceForButtonDown:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SBSetupManager *)self->_setupManager isInSetupMode];
  bundleIDForCurrentActivation = self->_bundleIDForCurrentActivation;
  if (v5 || !bundleIDForCurrentActivation)
  {
    self->_bundleIDForCurrentActivation = 0;

    [(SBCaptureHardwareButtonAppActivator *)self _showHintingDroplet];
  }

  else
  {
    if (v3)
    {
      self->_isWaitingForButtonUpToPerformLaunch = 1;
      [(SBCaptureHardwareButtonAppActivator *)self _takeButtonDownPowerAssertion];
    }

    else
    {
      self->_isWaitingForButtonUpToPerformLaunch = 0;
    }

    if (([(SBFUserAuthenticationController *)self->_authenticationController hasAuthenticatedAtLeastOnceSinceBoot]& 1) != 0)
    {
      if (![(SBCaptureHardwareButtonAppActivator *)self _isInSwitcher])
      {
        if (self->_isConsoleModeActive)
        {
          v7 = [(SBCaptureHardwareButtonAppActivator *)self _isOverUnlockedApplication];
          v8 = SBLogCameraCaptureLaunch();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            isConsoleModeActive = self->_isConsoleModeActive;
            v10 = 138543874;
            v11 = self;
            v12 = 1024;
            v13 = isConsoleModeActive;
            v14 = 1024;
            v15 = v7;
            _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@) skipping lockout timer and camera prewarm because isConsoleModeActive:%{BOOL}u isOverUnlockedApplication:%{BOOL}u", &v10, 0x18u);
          }
        }

        else
        {
          [(SBCaptureHardwareButtonAppActivator *)self _prewarmCameraForBundleIdentifier:self->_bundleIDForCurrentActivation];
          [(SBCaptureHardwareButtonAppActivator *)self _startPrewarmLockoutTimerWithTimeout:0.125];
        }
      }

      [(SBCaptureHardwareButtonAppActivator *)self _prewarmVisionIntelligenceActivation];
      [(SBCaptureHardwareButtonAppActivator *)self _initiateLaunchAnimationPrelude];
    }

    else
    {
      [(SBCaptureHardwareButtonAppActivator *)self _showHintingDroplet];
    }

    [(SBCaptureHardwareButtonAppActivator *)self _attemptCameraAppLaunchSequence];
  }
}

- (void)_cancel
{
  v3 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Canceling Camera Capture Button Activation.", v7, 2u);
  }

  [(SBCaptureHardwareButtonAppActivator *)self _invalidateDeferredLaunchTimer];
  if (self->_prewarmedBundleIdentifier)
  {
    [(SBCaptureHardwareButtonAppActivator *)self _cancelCameraPrewarmForBundleIdentifier:?];
    prewarmedBundleIdentifier = self->_prewarmedBundleIdentifier;
    self->_prewarmedBundleIdentifier = 0;

    bundleIDForCurrentActivation = self->_bundleIDForCurrentActivation;
    self->_bundleIDForCurrentActivation = 0;
  }

  [(SBCaptureHardwareButtonAppActivator *)self _invalidatePrewarmLockoutTimer];
  [(SBCaptureHardwareButtonAppActivator *)self _invalidateExpansionAnimationYAndScaleComponentsLockoutTimer];
  [(SBCaptureHardwareButtonAppActivator *)self _invalidateLaunchGracePeriodTimer];
  [(SBCaptureHardwareButtonAppActivator *)self _invalidateVisionIntelligenceActivation];
  [(SBCaptureHardwareButtonAppActivator *)self _cancelLaunchAnimation];
  [(SBCaptureHardwareButtonAppActivator *)self _cancelHintingDroplet];
  [(BSInvalidatable *)self->_buttonDownScanningRequest invalidate];
  buttonDownScanningRequest = self->_buttonDownScanningRequest;
  self->_buttonDownScanningRequest = 0;

  self->_launchPendedDueToButtonDownWhileSuppressed = 0;
  self->_isWaitingForButtonUpToPerformLaunch = 0;
}

- (void)_launchCaptureApp
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v3))
  {
    bundleIDForCurrentActivation = self->_bundleIDForCurrentActivation;
    *buf = 138543362;
    v25[0] = bundleIDForCurrentActivation;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_CAPTURE_LAUNCH_APP_AND_LAYOUT", "%{public,name=App}@", buf, 0xCu);
  }

  kdebug_trace();
  [*MEMORY[0x277D76620] _performBlockAfterCATransactionCommits:&__block_literal_global_273];
  v5 = +[SBLockScreenManager sharedInstance];
  if ([v5 isUILocked])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isLockScreenActive];
  }

  v7 = +[SBBacklightController sharedInstance];
  v8 = [v7 screenIsDim];

  if ((v6 & v8) == 1)
  {
    v26 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v27[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v5 unlockUIFromSource:40 withOptions:v9];
  }

  v10 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    LODWORD(v25[0]) = v6;
    WORD2(v25[0]) = 1024;
    *(v25 + 6) = v8;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Camera Capture App Activation Requested. Was UI-locked: %{BOOL}u, Was Dimmed: %{BOOL}u", buf, 0xEu);
  }

  self->_waitingForActivationCompletion = 1;
  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__SBCaptureHardwareButtonAppActivator__launchCaptureApp__block_invoke_197;
  v22[3] = &unk_2783AC358;
  objc_copyWeak(&v23, buf);
  v11 = MEMORY[0x223D6F7F0](v22);
  v12 = v11;
  if (self->_isLongPressActivation)
  {
    [(SBCaptureHardwareButtonAppActivator *)self _activateVisionIntelligenceWithCompletion:v11];
  }

  else
  {
    activationManager = self->_activationManager;
    v14 = self->_bundleIDForCurrentActivation;
    activeLaunchAnimationPreludeToken = self->_activeLaunchAnimationPreludeToken;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__SBCaptureHardwareButtonAppActivator__launchCaptureApp__block_invoke_199;
    v20[3] = &unk_2783AE778;
    v21 = v11;
    [(SBCameraActivationManager *)activationManager activateCaptureApplicationWithBundleID:v14 URL:0 launchType:0 fromSource:0x46uLL withPreludeAnimationToken:activeLaunchAnimationPreludeToken completion:v20];
  }

  v16 = self->_activeLaunchAnimationPreludeToken;
  self->_activeLaunchAnimationPreludeToken = 0;

  v17 = self->_bundleIDForCurrentActivation;
  self->_bundleIDForCurrentActivation = 0;

  prewarmedBundleIdentifier = self->_prewarmedBundleIdentifier;
  self->_prewarmedBundleIdentifier = 0;

  siriTostadaActivationIdentifier = self->_siriTostadaActivationIdentifier;
  self->_siriTostadaActivationIdentifier = 0;

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

uint64_t __56__SBCaptureHardwareButtonAppActivator__launchCaptureApp__block_invoke()
{
  v0 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v0))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CAPTURE_LAUNCH_APP_AND_LAYOUT", &unk_21F8B82DE, v2, 2u);
  }

  return kdebug_trace();
}

void __56__SBCaptureHardwareButtonAppActivator__launchCaptureApp__block_invoke_197(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Camera Capture App Activation Completed. success: %{BOOL}u", v8, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 254) = 0;
    [WeakRetained[8] captureButtonAppActivatorLaunchDidComplete:a2];
    if (a2)
    {
      v7 = v6[29];
      if ([v7 enableCameraPose] && objc_msgSend(v7, "cameraLaunchCounter") <= 0x13)
      {
        [v7 setCameraLaunchCounter:{objc_msgSend(v7, "cameraLaunchCounter") + 1}];
      }
    }
  }
}

- (void)_activateVisionIntelligenceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_activeLaunchAnimationPreludeToken;
  if (self->_prewarmedBundleIdentifier)
  {
    v6 = [(SiriTostadaSource *)self->_siriTostadaSource prewarmBundleIdentifier];
    if (v6)
    {
      [(SBCaptureHardwareButtonAppActivator *)self _prewarmCameraForBundleIdentifier:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277CF0B60];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__SBCaptureHardwareButtonAppActivator__activateVisionIntelligenceWithCompletion___block_invoke;
  v20[3] = &unk_2783BD618;
  objc_copyWeak(&v24, &location);
  v8 = v5;
  v21 = v8;
  v9 = v4;
  v23 = v9;
  v10 = v6;
  v22 = v10;
  v11 = [v7 responderWithHandler:v20];
  v12 = MEMORY[0x277D85CD0];
  v13 = MEMORY[0x277D85CD0];
  [v11 setQueue:v12];

  v14 = [[SBAssistantVisionIntelligenceActivationRequestAction alloc] initWithInfo:0 responder:v11];
  v15 = objc_alloc(MEMORY[0x277D55250]);
  v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
  v17 = [v15 initWithLaunchActions:v16 identifier:self->_siriTostadaActivationIdentifier];

  v18 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 0;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Activating siri to handle the launch animation", &v19, 2u);
  }

  [(SiriTostadaSource *)self->_siriTostadaSource activateWithContext:v17];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __81__SBCaptureHardwareButtonAppActivator__activateVisionIntelligenceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 error];
  if (v5)
  {

LABEL_3:
    v6 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __81__SBCaptureHardwareButtonAppActivator__activateVisionIntelligenceWithCompletion___block_invoke_cold_1(v3, v6);
    }

    [*(a1 + 32) cancel];
    if (WeakRetained && *(a1 + 40))
    {
      [WeakRetained _cancelCameraPrewarmForBundleIdentifier:?];
    }

    goto LABEL_8;
  }

  if (![v3 isAssistantVisionIntelligenceActivationRequestResponse] || !WeakRetained)
  {
    goto LABEL_3;
  }

  v7 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Requesting the assistant controller to commandeer the droplet launch animation", v9, 2u);
  }

  v8 = [WeakRetained[1] assistantController];
  [v8 commandeerCaptureDropletPreludeForVisionInvocation:*(a1 + 32)];

LABEL_8:
  (*(*(a1 + 48) + 16))();
}

- (void)_takeButtonDownPowerAssertion
{
  if (!self->_buttonDownScanningRequest)
  {
    v4 = [(SBCaptureButtonScanningModeResource *)self->_scanningModeAssertionProvider requestActiveScanningModeForReason:@"appActivator.buttonDown"];
    buttonDownScanningRequest = self->_buttonDownScanningRequest;
    self->_buttonDownScanningRequest = v4;
  }
}

- (void)_prewarmCameraForBundleIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SBCaptureApplicationCenter sharedInstance];
  v6 = [v5 predictedPrewarmBundleIdentifierForApplicationBundleIdentifier:v4];

  v7 = [v6 copy];
  prewarmedBundleIdentifier = self->_prewarmedBundleIdentifier;
  self->_prewarmedBundleIdentifier = v7;

  if (self->_prewarmedBundleIdentifier)
  {
    v9 = SBLogCameraCaptureLaunch();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_prewarmedBundleIdentifier;
      *buf = 138543618;
      v19 = self;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@) prewarming camera for bundleID: '%{public}@' ", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:mach_absolute_time()];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:mach_continuous_time()];
    v13 = *MEMORY[0x277CE58C8];
    v14 = *MEMORY[0x277CE5910];
    v16[0] = *MEMORY[0x277CE5908];
    v16[1] = v14;
    v17[0] = v13;
    v17[1] = v11;
    v16[2] = *MEMORY[0x277CE5920];
    v17[2] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    AVCapturePrewarmWithOptions();
  }
}

- (void)_cancelCameraPrewarmForBundleIdentifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCameraCaptureLaunch();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) cancelling prewarming camera for bundleID: '%{public}@' ", buf, 0x16u);
  }

  v7 = *MEMORY[0x277CE5908];
  v8 = *MEMORY[0x277CE58C0];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  MEMORY[0x223D6A9B0](v4, v6);
}

- (void)_updateStationaryState
{
  *&self->_timeSinceLastStationary = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (!self->_disableStationaryDetection)
  {
    v3 = [(SBWindowScene *)self->_windowScene lockScreenManager];
    if ([v3 isUILocked])
    {
    }

    else
    {
      v4 = [(SBCaptureButtonSettings *)self->_settings enablesStationaryDetectionForUnlocked];

      if (!v4)
      {
        return;
      }
    }

    objc_initWeak(&location, self);
    stationaryDeviceMotionDetector = self->_stationaryDeviceMotionDetector;
    [(SBCaptureButtonSettings *)self->_settings accidentalPreventionStationaryThreshold];
    v7 = v6;
    [(SBCaptureButtonSettings *)self->_settings accidentalPreventionPickUpBuffer];
    v9 = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__SBCaptureHardwareButtonAppActivator__updateStationaryState__block_invoke;
    v10[3] = &unk_2783BD640;
    objc_copyWeak(&v11, &location);
    [(SBDeviceStationaryMotionDetector *)stationaryDeviceMotionDetector queryWithStationaryThresholdTime:v10 pickUpBufferTime:v7 callbackOnMainQueue:v9];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __61__SBCaptureHardwareButtonAppActivator__updateStationaryState__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleStationaryCallbackWithTimeSinceLastStationary:a2 timeSinceLastNonStationary:a3];
}

- (void)_beginObservingConsoleMode
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "failed to begin observing console mode. status: %{public}d", v2, 8u);
}

- (void)_consoleModeDidChange
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "failed to read console mode. status: %{public}d", v2, 8u);
}

- (id)_createCaptureButtonDefaultsObserver
{
  v18[7] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  captureButtonDefaults = self->_captureButtonDefaults;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableStationaryDetection"];
  v18[0] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableWakeWhenDim"];
  v18[1] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableDirectLaunchAfterUnsuppress"];
  v18[2] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"allowLaunchIfUnobstructionOccursWhileButtonDown"];
  v18[3] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"allowLaunchIfUnobstructionOccursPromptlyAfterButtonUp"];
  v18[4] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableCameraPose"];
  v18[5] = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disablePreLaunchCaptureButtonSuppression"];
  v18[6] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
  v12 = MEMORY[0x277D85CD0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__SBCaptureHardwareButtonAppActivator__createCaptureButtonDefaultsObserver__block_invoke;
  v15[3] = &unk_2783A8C68;
  objc_copyWeak(&v16, &location);
  v13 = [(SBCaptureButtonDefaults *)captureButtonDefaults observeDefaults:v11 onQueue:MEMORY[0x277D85CD0] withBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v13;
}

void __75__SBCaptureHardwareButtonAppActivator__createCaptureButtonDefaultsObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCaptureButtonDefaults];
}

- (void)_updateCaptureButtonDefaults
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (id)_coachingStringForCoachIntent:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(SBCaptureHardwareButtonAppActivator *)self __clickAgainCoachingText];
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v3 = [(SBCaptureHardwareButtonAppActivator *)self __consoleModeCoachingText];
LABEL_5:
    v4 = v3;
    goto LABEL_6;
  }

  v4 = [(SBCaptureHardwareButtonAppActivator *)self __clickAgainCoachingText];
  v6 = SBLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    NSLog(&cfstr_ActivatorIsAsk.isa);
  }

LABEL_6:

  return v4;
}

- (id)__consoleModeCoachingText
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"CAPTURE_HARDWARE_BUTTON_COACHING_CONSOLE_MODE" value:&stru_283094718 table:@"SpringBoard_Fall_2024_iOS"];

  return v3;
}

- (id)__clickAgainCoachingText
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"CAPTURE_HARDWARE_BUTTON_COACHING_CLICK_AGAIN" value:&stru_283094718 table:@"SpringBoard_Fall_2024_iOS"];

  return v3;
}

- (void)_abortVisionIntelligence
{
  [(SBHardwareButtonLaunchPreludeAnimationToken *)self->_activeLaunchAnimationPreludeToken updateShockwaveLightType:2];
  if ([(SBCaptureHardwareButtonAppActivator *)self _isInSwitcher])
  {
    [(SBCaptureHardwareButtonAppActivator *)self _invalidateVisionIntelligenceActivation];

    [(SBCaptureHardwareButtonAppActivator *)self _cancelLaunchAnimation];
  }
}

- (BOOL)_isOverUnlockedApplication
{
  if (self->_unlockedEnvironmentMode == 3)
  {
    v2 = +[SBLockScreenManager sharedInstance];
    v3 = [v2 isLockScreenActive] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_updateStationarySquelchTimestampInContext:(id)a3 timeSinceLastStationarySquelch:(double)a4
{
  v9 = a3;
  [(SBCaptureHardwareButtonAppActivator *)self deviceStationaryDetectionStationaryDebounceInterval];
  v7 = v6;
  if (([v9 suppressionState] == 2 || !objc_msgSend(v9, "suppressionState")) && objc_msgSend(v9, "stationaryState") == 1 && v7 <= a4)
  {
    BSAbsoluteMachTimeNow();
    self->_lastStationarySquelchTimestamp = v8;
  }
}

- (void)_showHintingDroplet
{
  if (!self->_hintDropletAssertion)
  {
    v6 = [(SBWindowScene *)self->_windowScene hardwareButtonBezelEffectsCoordinator];
    v4 = [v6 activateHintDropletForButton:9];
    hintDropletAssertion = self->_hintDropletAssertion;
    self->_hintDropletAssertion = v4;
  }
}

- (void)_cancelHintingDroplet
{
  hintDropletAssertion = self->_hintDropletAssertion;
  if (hintDropletAssertion)
  {
    [(BSInvalidatable *)hintDropletAssertion invalidate];
    v4 = self->_hintDropletAssertion;
    self->_hintDropletAssertion = 0;
  }
}

- (BOOL)_isVisionIntelligenceEnabled
{
  v2 = [(SBWindowScene *)self->_windowScene assistantController];
  v3 = [v2 isVisualSearchEnabled];

  return v3;
}

- (void)initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"settings != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"scanModeResource != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"activationManager != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"suppressionManager != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithSettingsSnapshot:windowScene:scanModeResource:activationManager:suppressionManager:setupManager:authenticationController:HUDController:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"windowScene != nil" object:? file:? lineNumber:? description:?];
}

- (void)prepareForGesture:forAppBundleID:atMachAbsoluteTime:suppressionOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_valid == YES" object:? file:? lineNumber:? description:?];
}

- (void)prepareForGesture:forAppBundleID:atMachAbsoluteTime:suppressionOptions:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)activateForGesture:atMachAbsoluteTime:pressDuration:suppressionOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_valid == YES" object:? file:? lineNumber:? description:?];
}

- (void)cancelActivationForGesture:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_valid == YES" object:? file:? lineNumber:? description:?];
}

- (void)_startDeferredLaunchTimerWithTimeout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __81__SBCaptureHardwareButtonAppActivator__activateVisionIntelligenceWithCompletion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to launch siri for camera capture: %{public}@", &v4, 0xCu);
}

@end