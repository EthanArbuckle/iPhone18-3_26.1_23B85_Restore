@interface SBLowPowerModeAlwaysOnPolicy
- (id)analyticsPolicyValue;
- (void)_updateAssertion;
- (void)activateAlwaysOnPolicy;
@end

@implementation SBLowPowerModeAlwaysOnPolicy

- (id)analyticsPolicyValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BLSAssertion *)self->_alwaysOnDisabledAssertion isAcquired];

  return [v2 numberWithBool:v3];
}

- (void)activateAlwaysOnPolicy
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (!self->_alwaysOnPolicyActive)
  {
    self->_alwaysOnPolicyActive = 1;
    v3 = objc_alloc(MEMORY[0x277CF0868]);
    v4 = [MEMORY[0x277CEA5C8] allowAmbientIdleTimer];
    v10[0] = v4;
    v5 = [MEMORY[0x277CF08F8] disableAlwaysOn];
    v10[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v7 = [v3 initWithExplanation:@"Low Power Mode" attributes:v6];
    alwaysOnDisabledAssertion = self->_alwaysOnDisabledAssertion;
    self->_alwaysOnDisabledAssertion = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__noteLowPowerModeChanged_ name:*MEMORY[0x277CCA5E8] object:0];

    [(SBLowPowerModeAlwaysOnPolicy *)self _updateAssertion];
  }
}

- (void)_updateAssertion
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  v5 = SBLogBacklight();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Acquiring low-power-mode always-on-disable assertion", buf, 2u);
    }

    [(BLSAssertion *)self->_alwaysOnDisabledAssertion acquireWithObserver:0];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Releasing low-power-mode always-on-disable assertion", v7, 2u);
    }

    [(BLSAssertion *)self->_alwaysOnDisabledAssertion cancel];
  }
}

@end