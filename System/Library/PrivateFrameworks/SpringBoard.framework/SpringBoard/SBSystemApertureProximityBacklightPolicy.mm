@interface SBSystemApertureProximityBacklightPolicy
- (BOOL)_isGracePeriodDisabledByEntitledApp;
- (BOOL)proximityBacklightPolicyTouchHandlingView:(id)view shouldConsumeTouchForHitTest:(CGPoint)test withEvent:(id)event;
- (SBSystemApertureProximityBacklightPolicy)initWithConfiguration:(id)configuration;
- (SBSystemApertureProximityBacklightPolicyDelegate)delegate;
- (double)_nontelephonyTouchAllowanceGracePeriod;
- (void)_objectThatCanPreventTouchesWithinProximityDidChange:(BOOL)change fromGracePeriod:(BOOL)period;
- (void)_scheduleBacklightFactorToZeroForTouchWithinSystemAperture;
- (void)_startCancelingTouches;
- (void)_stopCancelingTouches;
- (void)dealloc;
- (void)proximitySensorManager:(id)manager objectWithinProximityDidChange:(BOOL)change detectionMode:(int)mode;
@end

@implementation SBSystemApertureProximityBacklightPolicy

- (void)_stopCancelingTouches
{
  [(BSInvalidatable *)self->_suppressSystemGestures invalidate];
  suppressSystemGestures = self->_suppressSystemGestures;
  self->_suppressSystemGestures = 0;
}

- (SBSystemApertureProximityBacklightPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_startCancelingTouches
{
  if (!self->_suppressSystemGestures)
  {
    BKSHIDServicesCancelTouchesOnMainDisplay();
    systemGestureManager = [(SBDefaultProximityBacklightPolicy *)self systemGestureManager];
    v3 = +[SBSystemGestureManager deviceHardwareButtonGestureTypes];
    v4 = [systemGestureManager acquireSystemGestureDisableAssertionForReason:@"objectInProximity" exceptSystemGestureTypes:v3];
    suppressSystemGestures = self->_suppressSystemGestures;
    self->_suppressSystemGestures = v4;
  }
}

- (double)_nontelephonyTouchAllowanceGracePeriod
{
  mEMORY[0x277CF06F8] = [MEMORY[0x277CF06F8] sharedInstance];
  sensorCharacteristics = [mEMORY[0x277CF06F8] sensorCharacteristics];

  suggestedSystemApertureGracePeriodForScreenOff = [sensorCharacteristics suggestedSystemApertureGracePeriodForScreenOff];
  if (suggestedSystemApertureGracePeriodForScreenOff == 0x7FFFFFFFFFFFFFFFLL)
  {
    _proximitySettings = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    [_proximitySettings nonTelephonyTouchAllowanceGracePeriodDuration];
    v8 = v7;
  }

  else
  {
    v8 = suggestedSystemApertureGracePeriodForScreenOff / 1000.0;
  }

  return v8;
}

- (SBSystemApertureProximityBacklightPolicy)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SBSystemApertureProximityBacklightPolicy;
  v5 = [(SBDefaultProximityBacklightPolicy *)&v11 initWithConfiguration:configurationCopy];
  if (v5)
  {
    sensorModeController = [configurationCopy sensorModeController];
    sensorModeController = v5->_sensorModeController;
    v5->_sensorModeController = sensorModeController;

    proximitySettings = [configurationCopy proximitySettings];
    proximitySettings = v5->_proximitySettings;
    v5->_proximitySettings = proximitySettings;

    BKSHIDServicesSetObjectInProximityIgnoresTouches();
  }

  return v5;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_suppressSystemGestures invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemApertureProximityBacklightPolicy;
  [(SBDefaultProximityBacklightPolicy *)&v3 dealloc];
}

- (void)proximitySensorManager:(id)manager objectWithinProximityDidChange:(BOOL)change detectionMode:(int)mode
{
  changeCopy = change;
  *&v28[5] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v9 = !self->_suppressBacklightChanges || !changeCopy;
  if (v9 || self->_objectThatCanPreventTouchesInProximity)
  {
    if (self->_objectInProximityAccordingToProxManager != changeCopy)
    {
      self->_objectInProximityAccordingToProxManager = changeCopy;
      if (self->_touchAllowanceGracePeriodTimer)
      {
        v10 = SBLogProximitySensor();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = NSStringFromBKSHIDServicesProximityDetectionMode();
          *buf = 67109378;
          v28[0] = changeCopy;
          LOWORD(v28[1]) = 2114;
          *(&v28[1] + 2) = v11;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Canceling grace period due to incoming event (objectInProximity:%{BOOL}u mode:%{public}@)", buf, 0x12u);
        }

        [(NSTimer *)self->_touchAllowanceGracePeriodTimer invalidate];
        touchAllowanceGracePeriodTimer = self->_touchAllowanceGracePeriodTimer;
        self->_touchAllowanceGracePeriodTimer = 0;
      }

      [(SBSystemApertureProximityBacklightPolicy *)self _nontelephonyTouchAllowanceGracePeriod];
      if (changeCopy && (v14 = v13, v13 > 0.0) && ((v15 = [(SBSystemApertureProximityBacklightPolicy *)self _isGracePeriodDisabledByEntitledApp], mode != 6) ? (v16 = 1) : (v16 = v15), (v16 & 1) == 0))
      {
        objc_initWeak(&location, self);
        objc_initWeak(&from, managerCopy);
        v18 = SBLogProximitySensor();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v28 = v14;
          _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Scheduling grace period (%gs)", buf, 0xCu);
        }

        v19 = MEMORY[0x277CBEBB8];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __112__SBSystemApertureProximityBacklightPolicy_proximitySensorManager_objectWithinProximityDidChange_detectionMode___block_invoke;
        v22[3] = &unk_2783C11B0;
        objc_copyWeak(&v23, &location);
        v24[1] = *&v14;
        objc_copyWeak(v24, &from);
        v20 = [v19 scheduledTimerWithTimeInterval:0 repeats:v22 block:v14];
        v21 = self->_touchAllowanceGracePeriodTimer;
        self->_touchAllowanceGracePeriodTimer = v20;

        objc_destroyWeak(v24);
        objc_destroyWeak(&v23);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }

      else
      {
        [(SBSystemApertureProximityBacklightPolicy *)self _objectThatCanPreventTouchesWithinProximityDidChange:changeCopy fromGracePeriod:0];
      }
    }
  }

  else
  {
    v17 = SBLogProximitySensor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Suppresing prox -- backlight change suppression is active", buf, 2u);
    }
  }
}

void __112__SBSystemApertureProximityBacklightPolicy_proximitySensorManager_objectWithinProximityDidChange_detectionMode___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 isValid])
  {
    v5 = SBLogProximitySensor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Grace period finished (%gs)", &v9, 0xCu);
    }

    v7 = WeakRetained[12];
    WeakRetained[12] = 0;

    v8 = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _objectThatCanPreventTouchesWithinProximityDidChange:objc_msgSend(v8 fromGracePeriod:{"isObjectInProximity"), 1}];
  }
}

- (void)_objectThatCanPreventTouchesWithinProximityDidChange:(BOOL)change fromGracePeriod:(BOOL)period
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_objectThatCanPreventTouchesInProximity != change)
  {
    periodCopy = period;
    changeCopy = change;
    delegate = [(SBSystemApertureProximityBacklightPolicy *)self delegate];
    WeakRetained = objc_loadWeakRetained(&self->_touchTrackingView);
    v9 = objc_loadWeakRetained(&self->_touchBlockingView);
    self->_objectThatCanPreventTouchesInProximity = changeCopy;
    _proximitySettings = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    allowTouchesInJindoWhenObjectInProximity = [_proximitySettings allowTouchesInJindoWhenObjectInProximity];

    if (changeCopy)
    {
      if (!WeakRetained)
      {
        WeakRetained = [[_SBSystemApertureProximityTouchHandlingView alloc] initWithDelegate:self hitTestsAsOpaque:allowTouchesInJindoWhenObjectInProximity ^ 1u];
      }

      _proximitySettings2 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
      colorScreenEdgeWhenObjectInProximity = [_proximitySettings2 colorScreenEdgeWhenObjectInProximity];

      if (colorScreenEdgeWhenObjectInProximity)
      {
        layer = [(_SBSystemApertureProximityTouchHandlingView *)WeakRetained layer];
        systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
        [layer setBorderColor:{objc_msgSend(systemYellowColor, "CGColor")}];

        layer2 = [(_SBSystemApertureProximityTouchHandlingView *)WeakRetained layer];
        [layer2 setBorderWidth:3.0];
      }

      if (!v9)
      {
        v9 = [[_SBSystemApertureProximityTouchHandlingView alloc] initWithDelegate:self hitTestsAsOpaque:1];
      }

      objc_storeWeak(&self->_touchTrackingView, WeakRetained);
      objc_storeWeak(&self->_touchBlockingView, v9);
      [delegate systemApertureProximityBacklightPolicy:self embedProximityTouchTrackingView:WeakRetained touchBlockingView:v9];
      if (periodCopy)
      {
        v17 = SBLogProximitySensor();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero immediately because we already spent time on the grace period.", &v27, 2u);
        }

        [(SBSystemApertureProximityBacklightPolicy *)self _startCancelingTouches];
        v18 = 0.0;
        selfCopy2 = self;
LABEL_13:
        [(SBDefaultProximityBacklightPolicy *)selfCopy2 _scheduleBacklightFactorToZeroAfterDebounceDuration:v18];
        goto LABEL_24;
      }

      if ([delegate systemApertureProximityBacklightPolicyShouldConsiderSystemApertureInert:self])
      {
        v22 = SBLogProximitySensor();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero after default duration (0.5s) because System Aperture is inert.", &v27, 2u);
        }

        [(SBSystemApertureProximityBacklightPolicy *)self _startCancelingTouches];
        [(SBDefaultProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDefaultDuration];
        goto LABEL_24;
      }

      _proximitySettings3 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
      [_proximitySettings3 initialBacklightDebounceDuration];
      v25 = v24;

      if (BSFloatGreaterThanFloat())
      {
        v26 = SBLogProximitySensor();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 134217984;
          v28 = v25;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero after initialBacklightDebounceDuration (%gs) because System Aperture is active.", &v27, 0xCu);
        }

        [(SBSystemApertureProximityBacklightPolicy *)self _startCancelingTouches];
        selfCopy2 = self;
        v18 = v25;
        goto LABEL_13;
      }
    }

    else
    {
      [(SBSystemApertureProximityBacklightPolicy *)self _stopCancelingTouches];
      self->_numberOfTouchesWhileObjectInProximity = 0;
      [(SBDefaultProximityBacklightPolicy *)self _restoreBacklightFactor];
      v20 = 0;
      v21 = 0;
      if (!(WeakRetained | v9))
      {
LABEL_25:

        return;
      }

      [delegate systemApertureProximityBacklightPolicy:self removeProximityTouchTrackingView:WeakRetained touchBlockingView:v9];
    }

LABEL_24:
    v20 = v9;
    v21 = WeakRetained;
    goto LABEL_25;
  }
}

- (BOOL)proximityBacklightPolicyTouchHandlingView:(id)view shouldConsumeTouchForHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v18[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_touchTrackingView);
  v10 = objc_loadWeakRetained(&self->_touchBlockingView);
  delegate = [(SBSystemApertureProximityBacklightPolicy *)self delegate];
  v12 = [delegate systemApertureProximityBacklightPolicyShouldConsiderSystemApertureInert:self];
  _proximitySettings = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
  allowTouchesInJindoWhenObjectInProximity = [_proximitySettings allowTouchesInJindoWhenObjectInProximity];

  if ((v12 & 1) == 0)
  {
    if (WeakRetained == viewCopy)
    {
      v15 = self->_numberOfTouchesWhileObjectInProximity + 1;
      self->_numberOfTouchesWhileObjectInProximity = v15;
      if (v15 <= 2)
      {
        self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = [delegate systemApertureProximityBacklightPolicy:self isSystemApertureElementVisibleAtPoint:{x, y}];
        v18[0] = *MEMORY[0x277CBE738];
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [(SBSystemApertureProximityBacklightPolicy *)self performSelector:sel__scheduleBacklightFactorToZeroForTouchWithinSystemAperture withObject:0 afterDelay:v16 inModes:0.0];
      }
    }

    else if (v10 == viewCopy)
    {
      self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = 0;
    }
  }

  return v10 == viewCopy || (allowTouchesInJindoWhenObjectInProximity & 1) == 0;
}

- (BOOL)_isGracePeriodDisabledByEntitledApp
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained systemApertureProximityBacklightPolicyShouldDisableGracePeriod:selfCopy];

  return selfCopy;
}

- (void)_scheduleBacklightFactorToZeroForTouchWithinSystemAperture
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_isTrackingTouchPossiblyInJindoWithObjectInProximity)
  {
    self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = 0;
    _proximitySettings = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    [_proximitySettings subsequentBacklightDebounceDuration];
    v5 = v4;

    v6 = SBLogProximitySensor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero after subsequentBacklightDebounceDuration (%.3f) because System Aperture is active and either did handle or could have handled touch.", &v7, 0xCu);
    }

    if (BSFloatGreaterThanFloat())
    {
      [(SBDefaultProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDebounceDuration:v5];
    }
  }
}

@end