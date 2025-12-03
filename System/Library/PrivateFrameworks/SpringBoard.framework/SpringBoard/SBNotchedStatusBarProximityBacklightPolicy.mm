@interface SBNotchedStatusBarProximityBacklightPolicy
- (SBNotchedStatusBarProximityBacklightPolicy)initWithConfiguration:(id)configuration;
- (SBNotchedStatusBarProximityBacklightPolicy)initWithConfiguration:(id)configuration touchHandlingController:(id)controller;
- (double)_debounceDurationForNumberOfTouchesReceivedWithObjectInProximity:(BOOL)proximity;
- (id)_createNewEnablementCondition;
- (void)_absorbTouchesBelowStatusBarHeight;
- (void)_absorbTouchesFullScreen;
- (void)_scheduleBacklightFactorToZeroAfterDebounceDuration:(double)duration;
- (void)condition:(id)condition enablementDidChange:(BOOL)change;
- (void)dealloc;
- (void)didHitAllowedRegion:(CGPoint)region;
- (void)proximitySensorManager:(id)manager objectWithinProximityDidChange:(BOOL)change;
- (void)windowSceneDidConnect:(id)connect;
@end

@implementation SBNotchedStatusBarProximityBacklightPolicy

- (SBNotchedStatusBarProximityBacklightPolicy)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [SBProximityTouchHandlingController alloc];
  proximitySettings = [configurationCopy proximitySettings];
  v7 = [(SBProximityTouchHandlingController *)v5 initWithSettings:proximitySettings touchHandlingDelegate:self];

  v8 = [(SBNotchedStatusBarProximityBacklightPolicy *)self initWithConfiguration:configurationCopy touchHandlingController:v7];
  return v8;
}

- (SBNotchedStatusBarProximityBacklightPolicy)initWithConfiguration:(id)configuration touchHandlingController:(id)controller
{
  configurationCopy = configuration;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SBNotchedStatusBarProximityBacklightPolicy;
  v8 = [(SBDefaultProximityBacklightPolicy *)&v12 initWithConfiguration:configurationCopy];
  if (v8)
  {
    proximitySettings = [configurationCopy proximitySettings];
    proximitySettings = v8->_proximitySettings;
    v8->_proximitySettings = proximitySettings;

    objc_storeStrong(&v8->_proxTouchHandlingController, controller);
  }

  return v8;
}

- (void)dealloc
{
  [(SBProximityTouchHandlingController *)self->_proxTouchHandlingController invalidate];
  [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self->_enablementCondition invalidate];
  v3.receiver = self;
  v3.super_class = SBNotchedStatusBarProximityBacklightPolicy;
  [(SBDefaultProximityBacklightPolicy *)&v3 dealloc];
}

- (void)_scheduleBacklightFactorToZeroAfterDebounceDuration:(double)duration
{
  if (BSFloatGreaterThanFloat())
  {
    v5.receiver = self;
    v5.super_class = SBNotchedStatusBarProximityBacklightPolicy;
    [(SBDefaultProximityBacklightPolicy *)&v5 _scheduleBacklightFactorToZeroAfterDebounceDuration:duration];
  }
}

- (id)_createNewEnablementCondition
{
  v2 = objc_alloc_init(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition);

  return v2;
}

- (void)proximitySensorManager:(id)manager objectWithinProximityDidChange:(BOOL)change
{
  changeCopy = change;
  managerCopy = manager;
  if (self->_objectInProximity != changeCopy)
  {
    v10 = managerCopy;
    self->_objectInProximity = changeCopy;
    if (changeCopy)
    {
      if (self->_touchesReceivedWithObjectInProximity)
      {
        [SBNotchedStatusBarProximityBacklightPolicy proximitySensorManager:objectWithinProximityDidChange:];
      }

      if (self->_timesEnabledWithObjectInProximity)
      {
        [SBNotchedStatusBarProximityBacklightPolicy proximitySensorManager:objectWithinProximityDidChange:];
      }

      _createNewEnablementCondition = [(SBNotchedStatusBarProximityBacklightPolicy *)self _createNewEnablementCondition];
      enablementCondition = self->_enablementCondition;
      self->_enablementCondition = _createNewEnablementCondition;

      [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self->_enablementCondition setDelegate:self];
      if ([(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self->_enablementCondition isEnabled])
      {
        [(SBNotchedStatusBarProximityBacklightPolicy *)self _debounceDurationForNumberOfTouchesReceivedWithObjectInProximity:1];
        [(SBNotchedStatusBarProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDebounceDuration:?];
        [(SBNotchedStatusBarProximityBacklightPolicy *)self _absorbTouchesBelowStatusBarHeight];
      }

      else
      {
        [(SBDefaultProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDefaultDuration];
        [(SBNotchedStatusBarProximityBacklightPolicy *)self _absorbTouchesFullScreen];
      }
    }

    else
    {
      [(SBNotchedStatusBarProximityBacklightPolicy *)self _stopAbsorbingTouches];
      [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self->_enablementCondition invalidate];
      v9 = self->_enablementCondition;
      self->_enablementCondition = 0;

      self->_timesEnabledWithObjectInProximity = 0;
      self->_touchesReceivedWithObjectInProximity = 0;
      [(SBDefaultProximityBacklightPolicy *)self _restoreBacklightFactor];
    }

    managerCopy = v10;
  }
}

- (void)windowSceneDidConnect:(id)connect
{
  v5.receiver = self;
  v5.super_class = SBNotchedStatusBarProximityBacklightPolicy;
  connectCopy = connect;
  [(SBDefaultProximityBacklightPolicy *)&v5 windowSceneDidConnect:connectCopy];
  [(SBProximityTouchHandlingController *)self->_proxTouchHandlingController windowSceneDidConnect:connectCopy, v5.receiver, v5.super_class];
}

- (void)didHitAllowedRegion:(CGPoint)region
{
  y = region.y;
  x = region.x;
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_objectInProximity)
  {
    [SBNotchedStatusBarProximityBacklightPolicy didHitAllowedRegion:];
  }

  v6 = self->_touchesReceivedWithObjectInProximity + 1;
  self->_touchesReceivedWithObjectInProximity = v6;
  v7 = SBLogProximitySensor();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 > 2)
  {
    if (v8)
    {
      v15.x = x;
      v15.y = y;
      v10 = NSStringFromCGPoint(v15);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "HIT allowed region (%@), and NOT allowed to reschedule backlight debounce timer because maximum touches reached.", &v11, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v14.x = x;
      v14.y = y;
      v9 = NSStringFromCGPoint(v14);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "HIT allowed region (%@), and allowed to reschedule backlight debounce timer.", &v11, 0xCu);
    }

    [(SBNotchedStatusBarProximityBacklightPolicy *)self _debounceDurationForNumberOfTouchesReceivedWithObjectInProximity:0];
    [(SBNotchedStatusBarProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDebounceDuration:?];
  }
}

- (void)condition:(id)condition enablementDidChange:(BOOL)change
{
  changeCopy = change;
  conditionCopy = condition;
  if (self->_objectInProximity)
  {
    if (!changeCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [SBNotchedStatusBarProximityBacklightPolicy condition:enablementDidChange:];
    if (!changeCopy)
    {
      goto LABEL_11;
    }
  }

  v7 = self->_timesEnabledWithObjectInProximity + 1;
  self->_timesEnabledWithObjectInProximity = v7;
  v8 = SBLogProximitySensor();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 > 2)
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Condition changed to allow prox touch handling, but NOT allowed to reschedule backlight debounce timer because max enablements reached.", v10, 2u);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Condition changed to allow prox touch handling, and allowed to reschedule backlight debounce timer.", buf, 2u);
    }

    [(SBNotchedStatusBarProximityBacklightPolicy *)self _debounceDurationForNumberOfTouchesReceivedWithObjectInProximity:0];
    [(SBNotchedStatusBarProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDebounceDuration:?];
  }

  [(SBNotchedStatusBarProximityBacklightPolicy *)self _absorbTouchesBelowStatusBarHeight];
LABEL_11:
}

- (void)_absorbTouchesBelowStatusBarHeight
{
  proxTouchHandlingController = self->_proxTouchHandlingController;
  [(SBNotchedStatusBarProximityBacklightPolicyEnablementCondition *)self->_enablementCondition enabledStatusBarHeight];
  [(SBProximityTouchHandlingController *)proxTouchHandlingController setStatusBarHeight:?];
  v4 = self->_proxTouchHandlingController;

  [(SBProximityTouchHandlingController *)v4 setAbsorbTouchesBelowStatusBar:1];
}

- (void)_absorbTouchesFullScreen
{
  [(SBProximityTouchHandlingController *)self->_proxTouchHandlingController setStatusBarHeight:0.0];
  proxTouchHandlingController = self->_proxTouchHandlingController;

  [(SBProximityTouchHandlingController *)proxTouchHandlingController setAbsorbTouchesBelowStatusBar:1];
}

- (double)_debounceDurationForNumberOfTouchesReceivedWithObjectInProximity:(BOOL)proximity
{
  touchesReceivedWithObjectInProximity = self->_touchesReceivedWithObjectInProximity;
  if (proximity && !touchesReceivedWithObjectInProximity)
  {
    _proximitySettings = [(SBNotchedStatusBarProximityBacklightPolicy *)self _proximitySettings];
    [_proximitySettings initialBacklightDebounceDuration];
LABEL_6:
    v6 = v5;

    return v6;
  }

  v6 = 0.0;
  if (touchesReceivedWithObjectInProximity <= 2)
  {
    _proximitySettings = [(SBNotchedStatusBarProximityBacklightPolicy *)self _proximitySettings];
    [_proximitySettings subsequentBacklightDebounceDuration];
    goto LABEL_6;
  }

  return v6;
}

- (void)proximitySensorManager:objectWithinProximityDidChange:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)proximitySensorManager:objectWithinProximityDidChange:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)didHitAllowedRegion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)condition:enablementDidChange:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end