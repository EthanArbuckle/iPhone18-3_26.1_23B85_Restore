@interface SBFocusModeAlwaysOnPolicy
- (BOOL)_shouldDisableAlwaysOnForDNDState:(id)a3;
- (id)analyticsPolicyValue;
- (void)_setDisableAlwaysOn:(BOOL)a3 dndState:(id)a4;
- (void)_updateFromDNDState:(id)a3;
- (void)activateAlwaysOnPolicy;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBFocusModeAlwaysOnPolicy

- (id)analyticsPolicyValue
{
  if ([(BLSAssertion *)self->_alwaysOnDisabledAssertion isAcquired])
  {
    v3 = [(SBDoNotDisturbStateMonitor *)self->_dndStateMonitor state];
    v4 = [v3 activeModeConfiguration];
    v5 = [v4 mode];

    if (v5)
    {
      [v5 semanticType];
      v6 = DNDModeSemanticTypeToString();
    }

    else
    {
      v6 = @"unkown";
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)activateAlwaysOnPolicy
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (!self->_alwaysOnPolicyActive)
  {
    self->_alwaysOnPolicyActive = 1;
    v3 = +[SBAlwaysOnDomain rootSettings];
    v4 = [v3 policySettings];
    policySettings = self->_policySettings;
    self->_policySettings = v4;

    [(PTSettings *)self->_policySettings addKeyObserver:self];
    v6 = objc_alloc(MEMORY[0x277CF0868]);
    v7 = [MEMORY[0x277CEA5C8] allowAmbientIdleTimerForSleepFocus];
    v8 = [MEMORY[0x277CEA5E0] enableMotionDetectionWake];
    v16[1] = v8;
    v9 = [MEMORY[0x277CF08F8] disableAlwaysOn];
    v16[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    v11 = [v6 initWithExplanation:@"Focus Mode" attributes:v10];
    alwaysOnDisabledAssertion = self->_alwaysOnDisabledAssertion;
    self->_alwaysOnDisabledAssertion = v11;

    self->_disableAlwaysOn = 0;
    v13 = +[SBDoNotDisturbStateMonitor sharedInstance];
    dndStateMonitor = self->_dndStateMonitor;
    self->_dndStateMonitor = v13;

    [(SBDoNotDisturbStateMonitor *)self->_dndStateMonitor addObserver:self];
    v15 = [(SBDoNotDisturbStateMonitor *)self->_dndStateMonitor state];
    if (v15)
    {
      [(SBFocusModeAlwaysOnPolicy *)self _updateFromDNDState:v15];
    }
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_policySettings == a3)
  {
    v6 = [(SBDoNotDisturbStateMonitor *)self->_dndStateMonitor state];
    if (v6)
    {
      v7 = v6;
      [(SBFocusModeAlwaysOnPolicy *)self _updateFromDNDState:v6];
      v6 = v7;
    }
  }
}

- (void)_updateFromDNDState:(id)a3
{
  v4 = a3;
  [(SBFocusModeAlwaysOnPolicy *)self _setDisableAlwaysOn:[(SBFocusModeAlwaysOnPolicy *)self _shouldDisableAlwaysOnForDNDState:v4] dndState:v4];
}

- (void)_setDisableAlwaysOn:(BOOL)a3 dndState:(id)a4
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_disableAlwaysOn != v4)
  {
    self->_disableAlwaysOn = v4;
    v7 = SBLogBacklight();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring focus-mode always-on-disable assertion for state %@", &v9, 0xCu);
      }

      [(BLSAssertion *)self->_alwaysOnDisabledAssertion acquireWithObserver:0];
    }

    else
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Releasing focus-mode always-on-disable assertion for state %@", &v9, 0xCu);
      }

      [(BLSAssertion *)self->_alwaysOnDisabledAssertion cancel];
    }
  }
}

- (BOOL)_shouldDisableAlwaysOnForDNDState:(id)a3
{
  v4 = a3;
  v5 = [(SBAlwaysOnPolicySettings *)self->_policySettings focusStrategy];
  if (v5 == 1)
  {
    v12 = [v4 activeModeConfiguration];
    v13 = [v12 dimsLockScreen];

    v11 = v13 != 0;
  }

  else if (v5)
  {
    v11 = 0;
  }

  else
  {
    v6 = [v4 activeModeConfiguration];
    v7 = [v6 mode];
    v8 = [v7 semanticType];

    v9 = [(SBAlwaysOnPolicySettings *)self->_policySettings alwaysOnDisablingFocusSemanticTypes];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    v11 = [v9 containsObject:v10];
  }

  return v11;
}

@end