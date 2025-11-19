@interface SBAccessibilityMesaUnlockTrigger
- (BOOL)bioUnlock;
- (SBAccessibilityMesaUnlockTrigger)initWithUnlockBehaviorConfigurationDelegate:(id)a3 baseTrigger:(id)a4;
- (void)fingerOn;
- (void)mesaUnlockTriggerFired:(id)a3;
@end

@implementation SBAccessibilityMesaUnlockTrigger

- (SBAccessibilityMesaUnlockTrigger)initWithUnlockBehaviorConfigurationDelegate:(id)a3 baseTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBAccessibilityMesaUnlockTrigger;
  v8 = [(SBAccessibilityMesaUnlockTrigger *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_behaviorConfigurationDelegate, v6);
    objc_storeStrong(&v9->_baseTrigger, a4);
    [(SBMesaUnlockTrigger *)v9->_baseTrigger setDelegate:v9];
  }

  return v9;
}

- (BOOL)bioUnlock
{
  if ([(SBMesaUnlockTrigger *)self->_baseTrigger bioUnlock])
  {
    WeakRetained = SBLogLockScreenMesaUnlockBehaviors();
    v4 = 1;
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, WeakRetained, OS_LOG_TYPE_INFO, "[SBAccessibilityMesaUnlockTrigger] unlocking base unlock trigger says we should", buf, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_behaviorConfigurationDelegate);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained isLockScreenShowingDefaultContent])
    {
      v5 = SBLogLockScreenMesaUnlockBehaviors();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "[SBAccessibilityMesaUnlockTrigger] NOT unlocking because main page is not visible or content is above dashboard", v7, 2u);
      }

      v4 = 0;
    }

    else
    {
      v5 = SBLogLockScreenMesaUnlockBehaviors();
      v4 = 1;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "[SBAccessibilityMesaUnlockTrigger] unlocking because main page visible & no content above dashboard", v8, 2u);
      }
    }
  }

  return v4;
}

- (void)fingerOn
{
  [(SBMesaUnlockTrigger *)self->_baseTrigger fingerOn];
  if ([(SBMesaUnlockTrigger *)self authenticated]&& [(SBAccessibilityMesaUnlockTrigger *)self bioUnlock])
  {
    v3 = [(SBMesaUnlockTrigger *)self delegate];
    [v3 mesaUnlockTriggerFired:self];
  }
}

- (void)mesaUnlockTriggerFired:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "[SBAccessibilityMesaUnlockTrigger] triggering because base unlock trigger fired: %@", &v7, 0xCu);
  }

  v6 = [(SBMesaUnlockTrigger *)self delegate];
  [v6 mesaUnlockTriggerFired:self];
}

@end