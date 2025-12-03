@interface SBRecalibrateProximitySensorHardwareButtonInteraction
- (BOOL)_disallowsAnyPressForReason:(id *)reason;
- (BOOL)consumeInitialPressDown;
- (BOOL)consumeSinglePressUp;
- (SBRecalibrateProximitySensorHardwareButtonInteraction)initWithProximitySensorManager:(id)manager;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)hardwareButtonGestureParameters;
@end

@implementation SBRecalibrateProximitySensorHardwareButtonInteraction

- (SBRecalibrateProximitySensorHardwareButtonInteraction)initWithProximitySensorManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBRecalibrateProximitySensorHardwareButtonInteraction;
  v6 = [(SBRecalibrateProximitySensorHardwareButtonInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sensorManager, manager);
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBRecalibrateProximitySensorHardwareButtonInteraction;
  v4 = [(SBHardwareButtonGestureParametersProviderBase *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:self->_didResetProxCalibration withName:@"didResetProxCalibration"];

  return v4;
}

- (BOOL)consumeInitialPressDown
{
  v10 = *MEMORY[0x277D85DE8];
  self->_didResetProxCalibration = 0;
  isObjectInProximity = [(SBProximitySensorManager *)self->_sensorManager isObjectInProximity];
  result = 0;
  if (isObjectInProximity)
  {
    if (MGGetBoolAnswer())
    {
      v6 = SBLogButtonsLock();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = NSStringFromSelector(a2);
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignoring lock down because object within proximity", &v8, 0xCu);
      }

      return 1;
    }

    else
    {
      [(SBProximitySensorManager *)self->_sensorManager resetProximityCalibration];
      result = 0;
      self->_didResetProxCalibration = 1;
    }
  }

  return result;
}

- (BOOL)consumeSinglePressUp
{
  v9 = *MEMORY[0x277D85DE8];
  didResetProxCalibration = self->_didResetProxCalibration;
  if (didResetProxCalibration)
  {
    self->_didResetProxCalibration = 0;
    v4 = SBLogButtonsLock();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(a2);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignoring because we recalibrated prox, and we don't want to lock the screen in this case", &v7, 0xCu);
    }
  }

  return didResetProxCalibration;
}

- (BOOL)_disallowsAnyPressForReason:(id *)reason
{
  *reason = 0;
  isObjectInProximity = [(SBProximitySensorManager *)self->_sensorManager isObjectInProximity];
  if (isObjectInProximity)
  {
    isObjectInProximity = MGGetBoolAnswer();
    if (isObjectInProximity)
    {
      *reason = @"object in proximity && opposed lock/volume buttons";
      LOBYTE(isObjectInProximity) = 1;
    }
  }

  return isObjectInProximity;
}

- (id)hardwareButtonGestureParameters
{
  v2 = objc_alloc_init(SBHardwareButtonGestureParameters);

  return v2;
}

@end