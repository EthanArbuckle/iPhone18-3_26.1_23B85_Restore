@interface SBSetupAlwaysOnPolicy
- (id)analyticsPolicyValue;
- (void)_setInSetupMode:(BOOL)a3;
- (void)_updateSetupModeState;
- (void)activateAlwaysOnPolicy;
@end

@implementation SBSetupAlwaysOnPolicy

- (id)analyticsPolicyValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BLSAssertion *)self->_alwaysOnDisabledAssertion isAcquired];

  return [v2 numberWithBool:v3];
}

- (void)activateAlwaysOnPolicy
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!self->_alwaysOnPolicyActive)
  {
    self->_alwaysOnPolicyActive = 1;
    v3 = objc_alloc(MEMORY[0x277CF0868]);
    v4 = [MEMORY[0x277CF08F8] disableAlwaysOn];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [v3 initWithExplanation:@"Setup" attributes:v5];
    alwaysOnDisabledAssertion = self->_alwaysOnDisabledAssertion;
    self->_alwaysOnDisabledAssertion = v6;

    self->_inSetupMode = 0;
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__setupModeStateDidChange_ name:@"SBInBuddyModeDidChangeNotification" object:0];

    [(SBSetupAlwaysOnPolicy *)self _updateSetupModeState];
  }
}

- (void)_updateSetupModeState
{
  v3 = +[SBSetupManager sharedInstance];
  -[SBSetupAlwaysOnPolicy _setInSetupMode:](self, "_setInSetupMode:", [v3 isInSetupMode]);
}

- (void)_setInSetupMode:(BOOL)a3
{
  if (self->_inSetupMode != a3)
  {
    v11 = v3;
    v12 = v4;
    v5 = a3;
    self->_inSetupMode = a3;
    v7 = SBLogBacklight();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring setup-mode always-on-disable assertion", buf, 2u);
      }

      [(BLSAssertion *)self->_alwaysOnDisabledAssertion acquireWithObserver:0];
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Releasing setup-mode always-on-disable assertion", v9, 2u);
      }

      [(BLSAssertion *)self->_alwaysOnDisabledAssertion cancel];
    }
  }
}

@end