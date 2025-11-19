@interface _SBContinuitySessionStateMachineStatePreparingForRemoteUnlock
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateLockState;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)continuityDisplayAuthenticationCoordinatorDidUpdateLockState:(id)a3;
- (void)enteredStateFrom:(unint64_t)a3;
- (void)invalidate;
- (void)setAutomaticBiometricsDisabled:(BOOL)a3;
@end

@implementation _SBContinuitySessionStateMachineStatePreparingForRemoteUnlock

- (_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _SBContinuitySessionStateMachineStatePreparingForRemoteUnlock;
  v9 = [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemEventMonitor, a3);
    [v7 addObserver:v10];
    objc_storeStrong(&v10->_authenticationCoordinator, a4);
    [(SBContinuityDisplayAuthenticationCoordinator *)v10->_authenticationCoordinator addObserver:v10];
  }

  return v10;
}

- (void)setAutomaticBiometricsDisabled:(BOOL)a3
{
  if (self->_automaticBiometricsDisabled != a3)
  {
    self->_automaticBiometricsDisabled = a3;
    v5 = @"enabled";
    if (a3)
    {
      v5 = @"disabled";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"automatic biometrics %@", v5];
    [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _reevaluateStateForReason:v6];
  }
}

- (void)enteredStateFrom:(unint64_t)a3
{
  self->_isCurrentState = 1;
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _evaluateLockState];
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSBContinuitySessionState(a3);
  v6 = [v5 stringWithFormat:@"entered state from: %@", v7];
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _reevaluateStateForReason:v6];
}

- (void)continuityDisplayAuthenticationCoordinatorDidUpdateLockState:(id)a3
{
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _evaluateLockState];

  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _reevaluateStateForReason:@"lock state change"];
}

- (void)invalidate
{
  stateTransitionHandler = self->_stateTransitionHandler;
  self->_stateTransitionHandler = 0;

  stateUpdateHandler = self->_stateUpdateHandler;
  self->_stateUpdateHandler = 0;

  invalidStateHandler = self->_invalidStateHandler;
  self->_invalidStateHandler = 0;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C10] collectionLineBreakNoneStyle];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91___SBContinuitySessionStateMachineStatePreparingForRemoteUnlock_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v6 overlayStyle:v5 block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock.m" lineNumber:116 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
}

- (void)_evaluateSystemEvents
{
  if (self->_isCurrentState)
  {
    v22 = v2;
    v23 = v3;
    v5 = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUIBlocked];
    v6 = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUILocked];
    v7 = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isInCall];
    v8 = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isSOSActive];
    v9 = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isLockScreenSearchPresented];
    v10 = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUsingSecureApp];
    v11 = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isAirplayMirroring];
    v12 = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUserInitiatedRemoteTransientOverlayPresented];
    if (v5)
    {
      v13 = SBLogContinuitySession();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because UI blocked", v21, 2u);
      }

      if (v6)
      {
LABEL_4:
        if (!v7)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if (v6)
    {
      goto LABEL_4;
    }

    v14 = SBLogContinuitySession();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because UI unlocked", v21, 2u);
    }

    if (!v7)
    {
LABEL_5:
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_17:
    v15 = SBLogContinuitySession();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because in call", v21, 2u);
    }

    if (!v8)
    {
LABEL_6:
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

LABEL_20:
    v16 = SBLogContinuitySession();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because sos active", v21, 2u);
    }

    if (!v9)
    {
LABEL_7:
      if (!v10)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_23:
    v17 = SBLogContinuitySession();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because lock screen search presented", v21, 2u);
    }

    if (!v10)
    {
LABEL_8:
      if (!v11)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

LABEL_26:
    v18 = SBLogContinuitySession();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because using secure app", v21, 2u);
    }

    if (!v11)
    {
LABEL_9:
      if (!v12)
      {
LABEL_35:
        if (v5 || v7 || !v6 || v8 || v9 || v10 || v11 || v12)
        {
          (*(self->_stateTransitionHandler + 2))();
        }

        return;
      }

LABEL_32:
      v20 = SBLogContinuitySession();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because user-initiated remote alert is presented", v21, 2u);
      }

      goto LABEL_35;
    }

LABEL_29:
    v19 = SBLogContinuitySession();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because AirPlay mirroring", v21, 2u);
    }

    if (!v12)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }
}

- (void)_evaluateLockState
{
  if (self->_isCurrentState)
  {
    v10 = v2;
    v11 = v3;
    v5 = [(SBContinuityDisplayAuthenticationCoordinator *)self->_authenticationCoordinator lockState];
    switch(v5)
    {
      case 2uLL:
        self->_keybagLocked = 0;
        break;
      case 1uLL:
        v6 = SBLogContinuitySession();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .invalid keybag has been unexpectedly remote unlocked", v9, 2u);
        }

        invalidStateHandler = self->_invalidStateHandler;
        v8 = [MEMORY[0x277CBEB98] setWithObject:@".preparing + remote unlocked"];
        invalidStateHandler[2](invalidStateHandler, v8);

        break;
      case 0uLL:
        self->_keybagLocked = 1;
        break;
    }
  }
}

- (void)_reevaluateStateForReason:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isCurrentState)
  {
    v5 = SBLogContinuitySession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] Re-evaluating state for reason: %{public}@", &v13, 0xCu);
    }

    v6 = [MEMORY[0x277CBEB58] set];
    v7 = v6;
    if (!self->_keybagLocked)
    {
      [v6 addObject:@"checkpoint.waiting-for-keybag-locked"];
    }

    if (!self->_automaticBiometricsDisabled)
    {
      [v7 addObject:@"checkpoint.waiting-for-automatic-biometrics-to-be-disabled"];
    }

    v8 = [v7 count];
    v9 = SBLogContinuitySession();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [v7 bs_array];
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] still blocked by %{public}@", &v13, 0xCu);
      }

      v12 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if (v10)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .ready", &v13, 2u);
      }

      v12 = *(self->_stateTransitionHandler + 2);
    }

    v12();
  }
}

- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_clientExternallyBlockedReasonsProvider);

  return WeakRetained;
}

@end