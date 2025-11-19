@interface SBSystemApertureProximityBacklightPolicy
- (BOOL)_isGracePeriodDisabledByEntitledApp;
- (BOOL)proximityBacklightPolicyTouchHandlingView:(id)a3 shouldConsumeTouchForHitTest:(CGPoint)a4 withEvent:(id)a5;
- (SBSystemApertureProximityBacklightPolicy)initWithConfiguration:(id)a3;
- (SBSystemApertureProximityBacklightPolicyDelegate)delegate;
- (double)_nontelephonyTouchAllowanceGracePeriod;
- (void)_objectThatCanPreventTouchesWithinProximityDidChange:(BOOL)a3 fromGracePeriod:(BOOL)a4;
- (void)_scheduleBacklightFactorToZeroForTouchWithinSystemAperture;
- (void)_startCancelingTouches;
- (void)_stopCancelingTouches;
- (void)dealloc;
- (void)proximitySensorManager:(id)a3 objectWithinProximityDidChange:(BOOL)a4 detectionMode:(int)a5;
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
    v6 = [(SBDefaultProximityBacklightPolicy *)self systemGestureManager];
    v3 = +[SBSystemGestureManager deviceHardwareButtonGestureTypes];
    v4 = [v6 acquireSystemGestureDisableAssertionForReason:@"objectInProximity" exceptSystemGestureTypes:v3];
    suppressSystemGestures = self->_suppressSystemGestures;
    self->_suppressSystemGestures = v4;
  }
}

- (double)_nontelephonyTouchAllowanceGracePeriod
{
  v3 = [MEMORY[0x277CF06F8] sharedInstance];
  v4 = [v3 sensorCharacteristics];

  v5 = [v4 suggestedSystemApertureGracePeriodForScreenOff];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    [v6 nonTelephonyTouchAllowanceGracePeriodDuration];
    v8 = v7;
  }

  else
  {
    v8 = v5 / 1000.0;
  }

  return v8;
}

- (SBSystemApertureProximityBacklightPolicy)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBSystemApertureProximityBacklightPolicy;
  v5 = [(SBDefaultProximityBacklightPolicy *)&v11 initWithConfiguration:v4];
  if (v5)
  {
    v6 = [v4 sensorModeController];
    sensorModeController = v5->_sensorModeController;
    v5->_sensorModeController = v6;

    v8 = [v4 proximitySettings];
    proximitySettings = v5->_proximitySettings;
    v5->_proximitySettings = v8;

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

- (void)proximitySensorManager:(id)a3 objectWithinProximityDidChange:(BOOL)a4 detectionMode:(int)a5
{
  v6 = a4;
  *&v28[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = !self->_suppressBacklightChanges || !v6;
  if (v9 || self->_objectThatCanPreventTouchesInProximity)
  {
    if (self->_objectInProximityAccordingToProxManager != v6)
    {
      self->_objectInProximityAccordingToProxManager = v6;
      if (self->_touchAllowanceGracePeriodTimer)
      {
        v10 = SBLogProximitySensor();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = NSStringFromBKSHIDServicesProximityDetectionMode();
          *buf = 67109378;
          v28[0] = v6;
          LOWORD(v28[1]) = 2114;
          *(&v28[1] + 2) = v11;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Canceling grace period due to incoming event (objectInProximity:%{BOOL}u mode:%{public}@)", buf, 0x12u);
        }

        [(NSTimer *)self->_touchAllowanceGracePeriodTimer invalidate];
        touchAllowanceGracePeriodTimer = self->_touchAllowanceGracePeriodTimer;
        self->_touchAllowanceGracePeriodTimer = 0;
      }

      [(SBSystemApertureProximityBacklightPolicy *)self _nontelephonyTouchAllowanceGracePeriod];
      if (v6 && (v14 = v13, v13 > 0.0) && ((v15 = [(SBSystemApertureProximityBacklightPolicy *)self _isGracePeriodDisabledByEntitledApp], a5 != 6) ? (v16 = 1) : (v16 = v15), (v16 & 1) == 0))
      {
        objc_initWeak(&location, self);
        objc_initWeak(&from, v8);
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
        [(SBSystemApertureProximityBacklightPolicy *)self _objectThatCanPreventTouchesWithinProximityDidChange:v6 fromGracePeriod:0];
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

- (void)_objectThatCanPreventTouchesWithinProximityDidChange:(BOOL)a3 fromGracePeriod:(BOOL)a4
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_objectThatCanPreventTouchesInProximity != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = [(SBSystemApertureProximityBacklightPolicy *)self delegate];
    WeakRetained = objc_loadWeakRetained(&self->_touchTrackingView);
    v9 = objc_loadWeakRetained(&self->_touchBlockingView);
    self->_objectThatCanPreventTouchesInProximity = v5;
    v10 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    v11 = [v10 allowTouchesInJindoWhenObjectInProximity];

    if (v5)
    {
      if (!WeakRetained)
      {
        WeakRetained = [[_SBSystemApertureProximityTouchHandlingView alloc] initWithDelegate:self hitTestsAsOpaque:v11 ^ 1u];
      }

      v12 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
      v13 = [v12 colorScreenEdgeWhenObjectInProximity];

      if (v13)
      {
        v14 = [(_SBSystemApertureProximityTouchHandlingView *)WeakRetained layer];
        v15 = [MEMORY[0x277D75348] systemYellowColor];
        [v14 setBorderColor:{objc_msgSend(v15, "CGColor")}];

        v16 = [(_SBSystemApertureProximityTouchHandlingView *)WeakRetained layer];
        [v16 setBorderWidth:3.0];
      }

      if (!v9)
      {
        v9 = [[_SBSystemApertureProximityTouchHandlingView alloc] initWithDelegate:self hitTestsAsOpaque:1];
      }

      objc_storeWeak(&self->_touchTrackingView, WeakRetained);
      objc_storeWeak(&self->_touchBlockingView, v9);
      [v7 systemApertureProximityBacklightPolicy:self embedProximityTouchTrackingView:WeakRetained touchBlockingView:v9];
      if (v4)
      {
        v17 = SBLogProximitySensor();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero immediately because we already spent time on the grace period.", &v27, 2u);
        }

        [(SBSystemApertureProximityBacklightPolicy *)self _startCancelingTouches];
        v18 = 0.0;
        v19 = self;
LABEL_13:
        [(SBDefaultProximityBacklightPolicy *)v19 _scheduleBacklightFactorToZeroAfterDebounceDuration:v18];
        goto LABEL_24;
      }

      if ([v7 systemApertureProximityBacklightPolicyShouldConsiderSystemApertureInert:self])
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

      v23 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
      [v23 initialBacklightDebounceDuration];
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
        v19 = self;
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

      [v7 systemApertureProximityBacklightPolicy:self removeProximityTouchTrackingView:WeakRetained touchBlockingView:v9];
    }

LABEL_24:
    v20 = v9;
    v21 = WeakRetained;
    goto LABEL_25;
  }
}

- (BOOL)proximityBacklightPolicyTouchHandlingView:(id)a3 shouldConsumeTouchForHitTest:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_touchTrackingView);
  v10 = objc_loadWeakRetained(&self->_touchBlockingView);
  v11 = [(SBSystemApertureProximityBacklightPolicy *)self delegate];
  v12 = [v11 systemApertureProximityBacklightPolicyShouldConsiderSystemApertureInert:self];
  v13 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
  v14 = [v13 allowTouchesInJindoWhenObjectInProximity];

  if ((v12 & 1) == 0)
  {
    if (WeakRetained == v8)
    {
      v15 = self->_numberOfTouchesWhileObjectInProximity + 1;
      self->_numberOfTouchesWhileObjectInProximity = v15;
      if (v15 <= 2)
      {
        self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = [v11 systemApertureProximityBacklightPolicy:self isSystemApertureElementVisibleAtPoint:{x, y}];
        v18[0] = *MEMORY[0x277CBE738];
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [(SBSystemApertureProximityBacklightPolicy *)self performSelector:sel__scheduleBacklightFactorToZeroForTouchWithinSystemAperture withObject:0 afterDelay:v16 inModes:0.0];
      }
    }

    else if (v10 == v8)
    {
      self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = 0;
    }
  }

  return v10 == v8 || (v14 & 1) == 0;
}

- (BOOL)_isGracePeriodDisabledByEntitledApp
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v2) = [WeakRetained systemApertureProximityBacklightPolicyShouldDisableGracePeriod:v2];

  return v2;
}

- (void)_scheduleBacklightFactorToZeroForTouchWithinSystemAperture
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_isTrackingTouchPossiblyInJindoWithObjectInProximity)
  {
    self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = 0;
    v3 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    [v3 subsequentBacklightDebounceDuration];
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