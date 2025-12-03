@interface SBFocusModeAlwaysOnPolicy
- (BOOL)_shouldDisableAlwaysOnForDNDState:(id)state;
- (id)analyticsPolicyValue;
- (void)_setDisableAlwaysOn:(BOOL)on dndState:(id)state;
- (void)_updateFromDNDState:(id)state;
- (void)activateAlwaysOnPolicy;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBFocusModeAlwaysOnPolicy

- (id)analyticsPolicyValue
{
  if ([(BLSAssertion *)self->_alwaysOnDisabledAssertion isAcquired])
  {
    state = [(SBDoNotDisturbStateMonitor *)self->_dndStateMonitor state];
    activeModeConfiguration = [state activeModeConfiguration];
    mode = [activeModeConfiguration mode];

    if (mode)
    {
      [mode semanticType];
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
    policySettings = [v3 policySettings];
    policySettings = self->_policySettings;
    self->_policySettings = policySettings;

    [(PTSettings *)self->_policySettings addKeyObserver:self];
    v6 = objc_alloc(MEMORY[0x277CF0868]);
    allowAmbientIdleTimerForSleepFocus = [MEMORY[0x277CEA5C8] allowAmbientIdleTimerForSleepFocus];
    enableMotionDetectionWake = [MEMORY[0x277CEA5E0] enableMotionDetectionWake];
    v16[1] = enableMotionDetectionWake;
    disableAlwaysOn = [MEMORY[0x277CF08F8] disableAlwaysOn];
    v16[2] = disableAlwaysOn;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    v11 = [v6 initWithExplanation:@"Focus Mode" attributes:v10];
    alwaysOnDisabledAssertion = self->_alwaysOnDisabledAssertion;
    self->_alwaysOnDisabledAssertion = v11;

    self->_disableAlwaysOn = 0;
    v13 = +[SBDoNotDisturbStateMonitor sharedInstance];
    dndStateMonitor = self->_dndStateMonitor;
    self->_dndStateMonitor = v13;

    [(SBDoNotDisturbStateMonitor *)self->_dndStateMonitor addObserver:self];
    state = [(SBDoNotDisturbStateMonitor *)self->_dndStateMonitor state];
    if (state)
    {
      [(SBFocusModeAlwaysOnPolicy *)self _updateFromDNDState:state];
    }
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_policySettings == settings)
  {
    state = [(SBDoNotDisturbStateMonitor *)self->_dndStateMonitor state];
    if (state)
    {
      v7 = state;
      [(SBFocusModeAlwaysOnPolicy *)self _updateFromDNDState:state];
      state = v7;
    }
  }
}

- (void)_updateFromDNDState:(id)state
{
  stateCopy = state;
  [(SBFocusModeAlwaysOnPolicy *)self _setDisableAlwaysOn:[(SBFocusModeAlwaysOnPolicy *)self _shouldDisableAlwaysOnForDNDState:stateCopy] dndState:stateCopy];
}

- (void)_setDisableAlwaysOn:(BOOL)on dndState:(id)state
{
  onCopy = on;
  v11 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (self->_disableAlwaysOn != onCopy)
  {
    self->_disableAlwaysOn = onCopy;
    v7 = SBLogBacklight();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (onCopy)
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = stateCopy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring focus-mode always-on-disable assertion for state %@", &v9, 0xCu);
      }

      [(BLSAssertion *)self->_alwaysOnDisabledAssertion acquireWithObserver:0];
    }

    else
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = stateCopy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Releasing focus-mode always-on-disable assertion for state %@", &v9, 0xCu);
      }

      [(BLSAssertion *)self->_alwaysOnDisabledAssertion cancel];
    }
  }
}

- (BOOL)_shouldDisableAlwaysOnForDNDState:(id)state
{
  stateCopy = state;
  focusStrategy = [(SBAlwaysOnPolicySettings *)self->_policySettings focusStrategy];
  if (focusStrategy == 1)
  {
    activeModeConfiguration = [stateCopy activeModeConfiguration];
    dimsLockScreen = [activeModeConfiguration dimsLockScreen];

    v11 = dimsLockScreen != 0;
  }

  else if (focusStrategy)
  {
    v11 = 0;
  }

  else
  {
    activeModeConfiguration2 = [stateCopy activeModeConfiguration];
    mode = [activeModeConfiguration2 mode];
    semanticType = [mode semanticType];

    alwaysOnDisablingFocusSemanticTypes = [(SBAlwaysOnPolicySettings *)self->_policySettings alwaysOnDisablingFocusSemanticTypes];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:semanticType];
    v11 = [alwaysOnDisablingFocusSemanticTypes containsObject:v10];
  }

  return v11;
}

@end