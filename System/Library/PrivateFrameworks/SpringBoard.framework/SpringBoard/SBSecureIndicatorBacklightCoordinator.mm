@interface SBSecureIndicatorBacklightCoordinator
- (BOOL)isSuppressingFlipbookRendering;
- (SBSecureIndicatorBacklightCoordinator)initWithBacklightController:(id)controller sensorModeController:(id)modeController proximitySensorManager:(id)manager minimumOnTimeCoordinator:(id)coordinator windowScene:(id)scene;
- (void)_cancelPowerAssertionCancellation;
- (void)_handleObjectWithinCrudeProximityChanged;
- (void)_schedulePowerAssertionCancellation;
- (void)_setObjectWithinCrudeProximity:(BOOL)proximity;
- (void)_updateAssertions;
- (void)_updateDisplayPowerAssertionIfNeeded;
- (void)_updateHIDSensorMode;
- (void)_updateHIDSensorModeForBacklightState:(int64_t)state source:(int64_t)source;
- (void)_updateLiveRenderingAssertionIfNeeded;
- (void)_updateState;
- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)dealloc;
- (void)invalidate;
- (void)proximitySensorManager:(id)manager crudeProximityDidChange:(BOOL)change;
@end

@implementation SBSecureIndicatorBacklightCoordinator

- (SBSecureIndicatorBacklightCoordinator)initWithBacklightController:(id)controller sensorModeController:(id)modeController proximitySensorManager:(id)manager minimumOnTimeCoordinator:(id)coordinator windowScene:(id)scene
{
  controllerCopy = controller;
  modeControllerCopy = modeController;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  sceneCopy = scene;
  v33.receiver = self;
  v33.super_class = SBSecureIndicatorBacklightCoordinator;
  v17 = [(SBSecureIndicatorBacklightCoordinator *)&v33 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_backlightController, controller);
    objc_storeStrong(&v18->_windowScene, scene);
    objc_storeStrong(&v18->_sensorModeController, modeController);
    objc_storeStrong(&v18->_proximitySensorManager, manager);
    objc_storeStrong(&v18->_minimumOnTimeCoordinator, coordinator);
    [(SBProximitySensorManager *)v18->_proximitySensorManager addObserver:v18];
    [(SBBacklightController *)v18->_backlightController addObserver:v18];
    mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
    stateControl = [mainDisplay stateControl];
    [(SBSecureIndicatorBacklightCoordinator *)v18 _setDisplayStateControl:stateControl];

    objc_initWeak(&location, v18);
    v21 = MEMORY[0x277CF0BD0];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __150__SBSecureIndicatorBacklightCoordinator_initWithBacklightController_sensorModeController_proximitySensorManager_minimumOnTimeCoordinator_windowScene___block_invoke;
    v30[3] = &unk_2783AD688;
    objc_copyWeak(&v31, &location);
    v24 = [v21 assertionWithIdentifier:v23 stateDidChangeHandler:v30];
    assertions = v18->_assertions;
    v18->_assertions = v24;

    v26 = v18->_assertions;
    v27 = SBLogStatusBarish();
    [(BSCompoundAssertion *)v26 setLog:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __150__SBSecureIndicatorBacklightCoordinator_initWithBacklightController_sensorModeController_proximitySensorManager_minimumOnTimeCoordinator_windowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateState];
}

- (void)dealloc
{
  [(SBSecureIndicatorBacklightCoordinator *)self invalidate];
  [(SBProximitySensorManager *)self->_proximitySensorManager removeObserver:self];
  [(SBBacklightController *)self->_backlightController removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBSecureIndicatorBacklightCoordinator;
  [(SBSecureIndicatorBacklightCoordinator *)&v3 dealloc];
}

- (BOOL)isSuppressingFlipbookRendering
{
  v3 = objc_opt_class();
  attributes = [(BLSAssertion *)self->_liveRenderingAssertion attributes];
  v5 = [attributes bs_firstObjectOfClass:v3];
  LOBYTE(v3) = v5 != 0;

  return v3;
}

- (void)_updateState
{
  self->_isActive = [(BSCompoundAssertion *)self->_assertions isActive];

  [(SBSecureIndicatorBacklightCoordinator *)self _updateAssertions];
}

- (void)_updateAssertions
{
  [(SBSecureIndicatorBacklightCoordinator *)self _updateLiveRenderingAssertionIfNeeded];
  if ([(SBSecureIndicatorBacklightCoordinator *)self allowsBacklightChanges])
  {
    [(SBSecureIndicatorBacklightCoordinator *)self _updateDisplayPowerAssertionIfNeeded];

    [(SBSecureIndicatorBacklightCoordinator *)self _updateHIDSensorMode];
  }
}

- (void)_updateLiveRenderingAssertionIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = +[SBRecordingIndicatorManager _supportsSecureIndicator];
  v4 = v3 && self->_isActive && self->_windowScene != 0;
  v5 = SBLogStatusBarish();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isActive = self->_isActive;
    windowScene = self->_windowScene;
    *buf = 67109634;
    v18 = v3;
    v19 = 1024;
    v20 = isActive;
    v21 = 2112;
    v22 = windowScene;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] updating live rendering assertion... hasSecureIndicator: %{BOOL}u, isActive: %{BOOL}u, windowScene: %@", buf, 0x18u);
  }

  [(BLSAssertion *)self->_liveRenderingAssertion invalidate];
  if (v4)
  {
    v8 = MEMORY[0x277CF0868];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [MEMORY[0x277CF09A8] requestLiveUpdatingForScene:self->_windowScene];
    v12 = [MEMORY[0x277CF09B0] requestUnrestrictedFramerateForScene:{self->_windowScene, v11}];
    v16[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v14 = [v8 acquireWithExplanation:v10 observer:0 attributes:v13];
    liveRenderingAssertion = self->_liveRenderingAssertion;
    self->_liveRenderingAssertion = v14;
  }

  else
  {
    v10 = self->_liveRenderingAssertion;
    self->_liveRenderingAssertion = 0;
  }
}

- (void)_updateDisplayPowerAssertionIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[SBRecordingIndicatorManager _supportsSecureIndicator];
  v4 = v3 && self->_isActive;
  v5 = SBLogStatusBarish();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isActive = self->_isActive;
    v14[0] = 67109376;
    v14[1] = v3;
    v15 = 1024;
    v16 = isActive;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] updating display power assertion... hasSecureIndicator: %{BOOL}u, isActive: %{BOOL}u", v14, 0xEu);
  }

  displayPowerAssertion = self->_displayPowerAssertion;
  if (v4)
  {
    if (!displayPowerAssertion)
    {
      _displayStateControl = [(SBSecureIndicatorBacklightCoordinator *)self _displayStateControl];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [_displayStateControl createPowerAssertionWithReason:3 identifier:v10];
      v12 = self->_displayPowerAssertion;
      self->_displayPowerAssertion = v11;
    }

    [(SBSecureIndicatorBacklightCoordinator *)self _cancelPowerAssertionCancellation];
    if (([(CADisplayPowerAssertion *)self->_displayPowerAssertion isActive]& 1) == 0)
    {
      [(CADisplayPowerAssertion *)self->_displayPowerAssertion acquire];
    }
  }

  else
  {
    [(CADisplayPowerAssertion *)displayPowerAssertion invalidate];
    v13 = self->_displayPowerAssertion;
    self->_displayPowerAssertion = 0;
  }
}

- (void)_setObjectWithinCrudeProximity:(BOOL)proximity
{
  if (self->_objectWithinCrudeProximity != proximity)
  {
    self->_objectWithinCrudeProximity = proximity;
    [(SBSecureIndicatorBacklightCoordinator *)self _handleObjectWithinCrudeProximityChanged];
  }
}

- (void)_handleObjectWithinCrudeProximityChanged
{
  if ([(SBSecureIndicatorBacklightCoordinator *)self _isObjectWithinCrudeProximity])
  {

    [(SBSecureIndicatorBacklightCoordinator *)self _schedulePowerAssertionCancellation];
  }

  else
  {
    [(SBSecureIndicatorBacklightCoordinator *)self _cancelPowerAssertionCancellation];
    if (([(CADisplayPowerAssertion *)self->_displayPowerAssertion isActive]& 1) == 0)
    {
      [(CADisplayPowerAssertion *)self->_displayPowerAssertion acquire];

      [(SBSecureIndicatorBacklightCoordinator *)self _updateHIDSensorMode];
    }
  }
}

- (void)_schedulePowerAssertionCancellation
{
  [(SBSecureIndicatorBacklightCoordinator *)self _cancelPowerAssertionCancellation];
  if ([(CADisplayPowerAssertion *)self->_displayPowerAssertion isActive])
  {
    v3 = SBLogStatusBarish();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] did schedule display power assertion cancellation", buf, 2u);
    }

    minimumOnTimeCoordinator = self->_minimumOnTimeCoordinator;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__SBSecureIndicatorBacklightCoordinator__schedulePowerAssertionCancellation__block_invoke;
    v8[3] = &unk_2783A8C18;
    v8[4] = self;
    v5 = [(SBSecureIndicatorMinimumOnTimeCoordinator *)minimumOnTimeCoordinator performWhenMinimumOnTimeIsSatisfiedForIndicators:3 block:v8];
    displayPowerAssertionCancellationBlockRegistration = self->_displayPowerAssertionCancellationBlockRegistration;
    self->_displayPowerAssertionCancellationBlockRegistration = v5;

    if (!self->_displayPowerAssertionCancellationBlockRegistration)
    {
      v7 = SBLogStatusBarish();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] did cancel display power assertion immediately", buf, 2u);
      }
    }
  }
}

void __76__SBSecureIndicatorBacklightCoordinator__schedulePowerAssertionCancellation__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isObjectWithinCrudeProximity])
  {
    v2 = SBLogStatusBarish();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Cancelling display power assertion", v5, 2u);
    }

    [*(*(a1 + 32) + 72) cancel];
    [*(a1 + 32) _updateHIDSensorMode];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = 0;
}

- (void)_cancelPowerAssertionCancellation
{
  if (self->_displayPowerAssertionCancellationBlockRegistration)
  {
    v3 = SBLogStatusBarish();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] did cancel display power assertion cancellation", v5, 2u);
    }

    [(SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)self->_displayPowerAssertionCancellationBlockRegistration invalidate];
    displayPowerAssertionCancellationBlockRegistration = self->_displayPowerAssertionCancellationBlockRegistration;
    self->_displayPowerAssertionCancellationBlockRegistration = 0;
  }
}

- (void)_updateHIDSensorMode
{
  backlightState = [(SBBacklightController *)self->_backlightController backlightState];

  [(SBSecureIndicatorBacklightCoordinator *)self _updateHIDSensorModeForBacklightState:backlightState source:0];
}

- (void)_updateHIDSensorModeForBacklightState:(int64_t)state source:(int64_t)source
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_isActive)
  {
    v7 = +[SBDefaults localDefaults];
    idleTimerDefaults = [v7 idleTimerDefaults];
    supportTapToWake = [idleTimerDefaults supportTapToWake];

    v10 = 0;
    if (source != 13 && supportTapToWake)
    {
      v10 = ![(SBSecureIndicatorBacklightCoordinator *)self _isObjectWithinCrudeProximity];
    }

    v11 = self->_disabledDigitizerModeAssertion;
    v12 = self->_proximityModeAssertion;
    if (state == 4)
    {
      v13 = SBLogStatusBarish();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v26[0] = 67109632;
        v26[1] = supportTapToWake;
        v27 = 1024;
        v28 = source != 13;
        v29 = 1024;
        _isObjectWithinCrudeProximity = [(SBSecureIndicatorBacklightCoordinator *)self _isObjectWithinCrudeProximity];
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Attempting to acquire sensor mode assertions... supportsTapToWake: %{BOOL}u sourceIsNotProximitySensor: %{BOOL}u isObjectInCrudeProximity: %{BOOL}u", v26, 0x14u);
      }

      if (v10)
      {
        sensorModeController = self->_sensorModeController;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [(SBHIDUISensorModeController *)sensorModeController assertSecureIndicatorEnabledDisabledDigitizerModeForReason:v16];
        disabledDigitizerModeAssertion = self->_disabledDigitizerModeAssertion;
        self->_disabledDigitizerModeAssertion = v17;
      }

      v19 = self->_sensorModeController;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [(SBHIDUISensorModeController *)v19 assertSecureIndicatorEnabledProximityModeForReason:v21];
      proximityModeAssertion = self->_proximityModeAssertion;
      self->_proximityModeAssertion = v22;
    }

    [(BSInvalidatable *)v11 invalidate];
    [(BSInvalidatable *)v12 invalidate];
  }

  else
  {
    [(BSInvalidatable *)self->_disabledDigitizerModeAssertion invalidate:state];
    v24 = self->_disabledDigitizerModeAssertion;
    self->_disabledDigitizerModeAssertion = 0;

    [(BSInvalidatable *)self->_proximityModeAssertion invalidate];
    v25 = self->_proximityModeAssertion;
    self->_proximityModeAssertion = 0;
  }
}

- (void)proximitySensorManager:(id)manager crudeProximityDidChange:(BOOL)change
{
  changeCopy = change;
  if ([(SBSecureIndicatorBacklightCoordinator *)self allowsBacklightChanges])
  {

    [(SBSecureIndicatorBacklightCoordinator *)self _setObjectWithinCrudeProximity:changeCopy];
  }
}

- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  if ([(SBSecureIndicatorBacklightCoordinator *)self allowsBacklightChanges])
  {

    [(SBSecureIndicatorBacklightCoordinator *)self _updateHIDSensorModeForBacklightState:state source:source];
  }
}

- (void)invalidate
{
  [(BLSAssertion *)self->_liveRenderingAssertion invalidate];
  [(CADisplayPowerAssertion *)self->_displayPowerAssertion invalidate];
  [(BSInvalidatable *)self->_disabledDigitizerModeAssertion invalidate];
  [(SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)self->_displayPowerAssertionCancellationBlockRegistration invalidate];
  proximityModeAssertion = self->_proximityModeAssertion;

  [(BSInvalidatable *)proximityModeAssertion invalidate];
}

@end