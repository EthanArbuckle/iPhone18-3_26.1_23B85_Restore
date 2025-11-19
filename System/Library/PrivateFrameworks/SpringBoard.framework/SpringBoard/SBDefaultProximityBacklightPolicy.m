@interface SBDefaultProximityBacklightPolicy
- (SBDefaultProximityBacklightPolicy)initWithConfiguration:(id)a3;
- (SBSystemGestureManager)systemGestureManager;
- (void)_backlightWillUndim:(id)a3;
- (void)_cancelScheduledBacklightFactorToZero;
- (void)_restoreBacklightFactor;
- (void)_scheduleBacklightFactorToZeroAfterDebounceDuration:(double)a3;
- (void)_turnBacklightOff;
- (void)dealloc;
- (void)proximitySensorManager:(id)a3 objectWithinProximityDidChange:(BOOL)a4;
- (void)systemGestureManager;
@end

@implementation SBDefaultProximityBacklightPolicy

- (SBSystemGestureManager)systemGestureManager
{
  systemGestureManager = self->_systemGestureManager;
  if (systemGestureManager)
  {
  }

  else
  {
    [SBDefaultProximityBacklightPolicy systemGestureManager];
    systemGestureManager = v5;
  }

  return systemGestureManager;
}

- (void)_cancelScheduledBacklightFactorToZero
{
  [(BSInvalidatable *)self->_idleTimerDisableAssertion invalidate];
  idleTimerDisableAssertion = self->_idleTimerDisableAssertion;
  self->_idleTimerDisableAssertion = 0;

  if (self->_scheduled)
  {
    v4 = SBLogProximitySensor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling scheduled backlight change.", v5, 2u);
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__turnBacklightOff object:0];
  }
}

- (void)_restoreBacklightFactor
{
  [(BSInvalidatable *)self->_captureButtonSuppressionAssertion invalidate];
  captureButtonSuppressionAssertion = self->_captureButtonSuppressionAssertion;
  self->_captureButtonSuppressionAssertion = 0;

  [(SBDefaultProximityBacklightPolicy *)self _cancelScheduledBacklightFactorToZero];
  v4 = [(SBBacklightController *)self->_backlightController lastBacklightChangeSource];
  v5 = SBLogProximitySensor();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 13)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Restoring original backlight factor.", buf, 2u);
    }

    [(SBBacklightController *)self->_backlightController _undimFromSource:13];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Not restoring original backlight factor, because someone else modified the backlight since we last turned it off.", v7, 2u);
    }
  }
}

- (SBDefaultProximityBacklightPolicy)initWithConfiguration:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBDefaultProximityBacklightPolicy;
  v5 = [(SBDefaultProximityBacklightPolicy *)&v10 init];
  if (v5)
  {
    v6 = [v4 backlightController];
    backlightController = v5->_backlightController;
    v5->_backlightController = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v5 selector:sel__backlightWillUndim_ name:*MEMORY[0x277D67A08] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBDefaultProximityBacklightPolicy;
  [(SBDefaultProximityBacklightPolicy *)&v4 dealloc];
}

- (void)proximitySensorManager:(id)a3 objectWithinProximityDidChange:(BOOL)a4
{
  if (a4)
  {
    [(SBDefaultProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDefaultDuration];
  }

  else
  {
    [(SBDefaultProximityBacklightPolicy *)self _restoreBacklightFactor];
  }
}

- (void)_scheduleBacklightFactorToZeroAfterDebounceDuration:(double)a3
{
  v10 = *MEMORY[0x277D85DE8];
  [(SBDefaultProximityBacklightPolicy *)self _cancelScheduledBacklightFactorToZero];
  v5 = SBLogProximitySensor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling backlight to turn off in %{public}@s.", &v8, 0xCu);
  }

  self->_scheduled = 1;
  v7 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE738]];
  [(SBDefaultProximityBacklightPolicy *)self performSelector:sel__turnBacklightOff withObject:0 afterDelay:v7 inModes:a3];
}

- (void)_backlightWillUndim:(id)a3
{
  [(BSInvalidatable *)self->_captureButtonSuppressionAssertion invalidate];
  captureButtonSuppressionAssertion = self->_captureButtonSuppressionAssertion;
  self->_captureButtonSuppressionAssertion = 0;

  if (self->_scheduled)
  {
    v5 = SBLogProximitySensor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Backlight will undim outside of our control - cancelling any scheduled changes.", v6, 2u);
    }

    [(SBDefaultProximityBacklightPolicy *)self _cancelScheduledBacklightFactorToZero];
  }
}

- (void)_turnBacklightOff
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBDefaultProximityBacklightPolicy.m" lineNumber:130 description:@"-_turnBacklightOff called without idle timer global coordinator"];

  *v0 = *v1;
}

- (void)systemGestureManager
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBDefaultProximityBacklightPolicy.m" lineNumber:53 description:@"systemGestureManager doesn't exist"];

  *v0 = *v1;
}

@end