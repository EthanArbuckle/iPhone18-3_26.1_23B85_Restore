@interface SBSOSEventHandler
+ (SBSOSEventHandler)sharedInstance;
- (BOOL)isSOSActive;
- (SBBacklightController)_backlightController;
- (SBFUserAuthenticationController)_authenticationController;
- (SBLockScreenManager)_lockScreenManager;
- (SBSOSEventHandler)init;
- (SOSManager)_sosManager;
- (id)addObserver:(id)a3;
- (void)_forceBioAuthenticationLockoutIfAvailableWithSource:(int)a3 showingPasscode:(BOOL)a4;
- (void)dealloc;
- (void)invalidate;
- (void)run;
@end

@implementation SBSOSEventHandler

+ (SBSOSEventHandler)sharedInstance
{
  if (sharedInstance_onceToken_46 != -1)
  {
    +[SBSOSEventHandler sharedInstance];
  }

  v3 = sharedInstance_eventHandler;

  return v3;
}

- (BOOL)isSOSActive
{
  v3 = [(SBSOSEventHandler *)self _sosManager];

  if (!v3)
  {
    return 0;
  }

  v4 = [(SBSOSEventHandler *)self _sosManager];
  v5 = [v4 currentSOSInitiationState];

  return v5 == 1;
}

- (SOSManager)_sosManager
{
  override_sosManager = self->_override_sosManager;
  if (override_sosManager)
  {
    v3 = override_sosManager;
  }

  else
  {
    v3 = [MEMORY[0x277D495A0] sharedInstance];
  }

  return v3;
}

void __35__SBSOSEventHandler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBSOSEventHandler);
  v1 = sharedInstance_eventHandler;
  sharedInstance_eventHandler = v0;
}

- (SBSOSEventHandler)init
{
  v3.receiver = self;
  v3.super_class = SBSOSEventHandler;
  result = [(SBSOSEventHandler *)&v3 init];
  if (result)
  {
    *&result->_isValid = 1;
  }

  return result;
}

- (void)invalidate
{
  if (self->_isValid)
  {
    self->_isValid = 0;
    [(BSCompoundAssertion *)self->_observers invalidate];
    v4 = [(SBSOSEventHandler *)self _sosManager];
    [v4 removeObserver:self];
  }
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"must -invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSOSEventHandler.m";
    v16 = 1024;
    v17 = 73;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)run
{
  if (![(SBSOSEventHandler *)self _isRunning])
  {
    v3 = [(SBSOSEventHandler *)self _sosManager];
    [v3 addObserver:self queue:MEMORY[0x277D85CD0]];

    [(SBSOSEventHandler *)self _setRunning:1];
  }
}

- (id)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  if (!observers)
  {
    v6 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"SOSEventObservers"];
    v7 = self->_observers;
    self->_observers = v6;

    observers = self->_observers;
  }

  v8 = [objc_opt_class() description];
  v9 = [(BSCompoundAssertion *)observers acquireForReason:v8 withContext:v4];

  return v9;
}

void __56__SBSOSEventHandler_didUpdateCurrentSOSInitiationState___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isSOSActive];
  v3 = SBLogButtonsCombo();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v20 = v6;
    v7 = "%{public}@ - SOS UI initiation state changed. SOS active";
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v8 = objc_opt_class();
    v6 = NSStringFromClass(v8);
    *buf = 138543362;
    v20 = v6;
    v7 = "%{public}@ - SOS UI initiation state changed. SOS inactive";
  }

  _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);

LABEL_7:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [*(*(a1 + 32) + 16) orderedContext];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * i) SOSEventHandlerStateDidChange:*(a1 + 32)];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

void __48__SBSOSEventHandler_didDismissSOSBeforeSOSCall___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = SBLogButtonsCombo();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - SOS dismissed", &v10, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v5 != 1)
    {
      return;
    }

    v6 = [*(a1 + 32) _backlightController];
    [v6 setBacklightState:3 source:3];

    v7 = *(a1 + 32);
    v8 = 1;
    v9 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = 22;
    v9 = 1;
  }

  [v7 _forceBioAuthenticationLockoutIfAvailableWithSource:v8 showingPasscode:v9];
}

- (void)_forceBioAuthenticationLockoutIfAvailableWithSource:(int)a3 showingPasscode:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v13[3] = *MEMORY[0x277D85DE8];
  v6 = [SBApp authenticationController];
  v7 = [v6 hasPasscodeSet];

  if ((v7 & v4) != 0)
  {
    v8 = &__block_literal_global_14_3;
  }

  else
  {
    v8 = 0;
  }

  v12[0] = @"SBUILockOptionsForceBioLockoutKey";
  v12[1] = @"SBUILockOptionsForceLockKey";
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = @"SBUILockOptionsUseScreenOffModeKey";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:!v4];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v11 = +[SBLockScreenManager sharedInstance];
  [v11 lockUIFromSource:v5 withOptions:v10 completion:v8];
}

void __89__SBSOSEventHandler__forceBioAuthenticationLockoutIfAvailableWithSource_showingPasscode___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_16_2);
  }
}

void __89__SBSOSEventHandler__forceBioAuthenticationLockoutIfAvailableWithSource_showingPasscode___block_invoke_2()
{
  v0 = +[SBLockScreenManager sharedInstance];
  [v0 setPasscodeVisible:1 animated:1 ignoringPreflightRequirementsForPresentation:0];
}

- (SBFUserAuthenticationController)_authenticationController
{
  override_authenticationController = self->_override_authenticationController;
  if (override_authenticationController)
  {
    v3 = override_authenticationController;
  }

  else
  {
    v3 = [SBApp authenticationController];
  }

  return v3;
}

- (SBBacklightController)_backlightController
{
  override_backlightController = self->_override_backlightController;
  if (override_backlightController)
  {
    v3 = override_backlightController;
  }

  else
  {
    v3 = +[SBBacklightController sharedInstance];
  }

  return v3;
}

- (SBLockScreenManager)_lockScreenManager
{
  override_lockscreenManager = self->_override_lockscreenManager;
  if (override_lockscreenManager)
  {
    v3 = override_lockscreenManager;
  }

  else
  {
    v3 = +[SBLockScreenManager sharedInstance];
  }

  return v3;
}

@end