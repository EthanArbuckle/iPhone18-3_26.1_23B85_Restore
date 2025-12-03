@interface SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction
- (BOOL)_disallowsAnyPressForReason:(id *)reason;
- (BOOL)consumeSinglePressUp;
- (SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction)initWithProximitySensorManager:(id)manager;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)hardwareButtonGestureParameters;
- (void)_transitionToPhase:(int64_t)phase timeout:(double)timeout;
- (void)dealloc;
- (void)proximitySensorManager:(id)manager objectWithinProximityDidChange:(BOOL)change;
@end

@implementation SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction

- (SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction)initWithProximitySensorManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction;
  v6 = [(SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sensorManager, manager);
    [(SBProximitySensorManager *)v7->_sensorManager addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  [(SBProximitySensorManager *)self->_sensorManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction;
  [(SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction *)&v3 dealloc];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction;
  v4 = [(SBHardwareButtonGestureParametersProviderBase *)&v10 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = v4;
  phase = self->_phase;
  if (phase > 2)
  {
    v7 = @"<unknown>";
  }

  else
  {
    v7 = off_2783BFCB8[phase];
  }

  v8 = [v4 appendObject:v7 withName:@"phase"];

  return v5;
}

- (BOOL)consumeSinglePressUp
{
  phase = self->_phase;
  v4 = 0.0;
  if (phase == 2)
  {
    goto LABEL_10;
  }

  if (phase == 1)
  {
    if (![(SBProximitySensorManager *)self->_sensorManager isObjectInProximity])
    {
      goto LABEL_11;
    }

    [(SBProximitySensorManager *)self->_sensorManager resetProximityCalibration];
    v4 = 1.0;
LABEL_10:
    v6 = 1;
    v7 = 2;
    goto LABEL_12;
  }

  if (phase)
  {
LABEL_11:
    v6 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  isObjectInProximity = [(SBProximitySensorManager *)self->_sensorManager isObjectInProximity];
  v6 = isObjectInProximity;
  if (isObjectInProximity)
  {
    v4 = 2.0;
  }

  else
  {
    v4 = 0.0;
  }

  v7 = isObjectInProximity;
LABEL_12:
  [(SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction *)self _transitionToPhase:v7 timeout:v4];
  return v6;
}

- (BOOL)_disallowsAnyPressForReason:(id *)reason
{
  *reason = 0;
  isObjectInProximity = [(SBProximitySensorManager *)self->_sensorManager isObjectInProximity];
  if (isObjectInProximity)
  {
    *reason = @"object in proximity";
  }

  return isObjectInProximity;
}

- (void)proximitySensorManager:(id)manager objectWithinProximityDidChange:(BOOL)change
{
  if (!change && self->_phase != 2)
  {
    [(SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction *)self _transitionToPhase:0];
  }
}

- (id)hardwareButtonGestureParameters
{
  v3 = objc_alloc_init(SBMutableHardwareButtonGestureParameters);
  [(SBMutableHardwareButtonGestureParameters *)v3 setMaximumPressCount:self->_phase > 0];

  return v3;
}

- (void)_transitionToPhase:(int64_t)phase timeout:(double)timeout
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_phase != phase)
  {
    v7 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      phase = self->_phase;
      if (phase > 2)
      {
        v10 = @"<unknown>";
      }

      else
      {
        v10 = off_2783BFCB8[phase];
      }

      if (phase > 2)
      {
        v11 = @"<unknown>";
      }

      else
      {
        v11 = off_2783BFCB8[phase];
      }

      *buf = 138544130;
      v22 = v8;
      v23 = 2114;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2048;
      timeoutCopy = timeout;
      v12 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ transition from::%{public}@ to:%{public}@ timeout:%g", buf, 0x2Au);
    }

    self->_phase = phase;
    [(BSAbsoluteMachTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    if (timeout > 0.0 && self->_phase >= 1)
    {
      objc_initWeak(buf, self);
      v14 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction.timer"];
      v15 = self->_timer;
      self->_timer = v14;

      v16 = self->_timer;
      v17 = MEMORY[0x277D85CD0];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __94__SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction__transitionToPhase_timeout___block_invoke;
      v19[3] = &unk_2783A9918;
      objc_copyWeak(&v20, buf);
      [(BSAbsoluteMachTimer *)v16 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v19 queue:timeout handler:0.0];

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }

    hardwareButtonGestureParameters = [(SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction *)self hardwareButtonGestureParameters];
    [(SBHardwareButtonGestureParametersProviderBase *)self publishUpdatedParameters:hardwareButtonGestureParameters];
  }
}

void __94__SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction__transitionToPhase_timeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerDidFire];
}

@end