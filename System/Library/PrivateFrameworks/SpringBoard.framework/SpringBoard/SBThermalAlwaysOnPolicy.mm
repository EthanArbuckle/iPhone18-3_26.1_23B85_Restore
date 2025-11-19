@interface SBThermalAlwaysOnPolicy
- (id)analyticsPolicyValue;
- (void)_setThermallyBlocked:(BOOL)a3;
- (void)_updateThermalState;
- (void)activateAlwaysOnPolicy;
@end

@implementation SBThermalAlwaysOnPolicy

- (id)analyticsPolicyValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BLSAssertion *)self->_alwaysOnDisabledAssertion isAcquired];

  return [v2 numberWithBool:v3];
}

- (void)_updateThermalState
{
  v3 = [SBApp lockOutController];
  -[SBThermalAlwaysOnPolicy _setThermallyBlocked:](self, "_setThermallyBlocked:", [v3 isThermallyBlocked]);
}

- (void)activateAlwaysOnPolicy
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (!self->_alwaysOnPolicyActive)
  {
    self->_alwaysOnPolicyActive = 1;
    v3 = objc_alloc(MEMORY[0x277CF0868]);
    v4 = [MEMORY[0x277CEA5C8] allowAmbientIdleTimer];
    v11[0] = v4;
    v5 = [MEMORY[0x277CF08F8] disableAlwaysOn];
    v11[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v7 = [v3 initWithExplanation:@"Thermal Trap" attributes:v6];
    alwaysOnDisabledAssertion = self->_alwaysOnDisabledAssertion;
    self->_alwaysOnDisabledAssertion = v7;

    self->_thermallyBlocked = 0;
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__noteDeviceBlockStateDidChange_ name:*MEMORY[0x277D66030] object:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel__noteBootCompleted_ name:@"SBBootCompleteNotification" object:0];

    [(SBThermalAlwaysOnPolicy *)self _updateThermalState];
  }
}

- (void)_setThermallyBlocked:(BOOL)a3
{
  if (self->_thermallyBlocked != a3)
  {
    v11 = v3;
    v12 = v4;
    v5 = a3;
    self->_thermallyBlocked = a3;
    v7 = SBLogBacklight();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring thermal-trap always-on-disable assertion", buf, 2u);
      }

      [(BLSAssertion *)self->_alwaysOnDisabledAssertion acquireWithObserver:0];
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Releasing thermal-trap always-on-disable assertion", v9, 2u);
      }

      [(BLSAssertion *)self->_alwaysOnDisabledAssertion cancel];
    }
  }
}

@end