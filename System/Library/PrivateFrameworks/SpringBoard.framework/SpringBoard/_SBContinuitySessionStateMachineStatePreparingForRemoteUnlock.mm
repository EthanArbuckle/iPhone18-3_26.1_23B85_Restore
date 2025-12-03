@interface _SBContinuitySessionStateMachineStatePreparingForRemoteUnlock
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateLockState;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)continuityDisplayAuthenticationCoordinatorDidUpdateLockState:(id)state;
- (void)enteredStateFrom:(unint64_t)from;
- (void)invalidate;
- (void)setAutomaticBiometricsDisabled:(BOOL)disabled;
@end

@implementation _SBContinuitySessionStateMachineStatePreparingForRemoteUnlock

- (_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator
{
  monitorCopy = monitor;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = _SBContinuitySessionStateMachineStatePreparingForRemoteUnlock;
  v9 = [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemEventMonitor, monitor);
    [monitorCopy addObserver:v10];
    objc_storeStrong(&v10->_authenticationCoordinator, coordinator);
    [(SBContinuityDisplayAuthenticationCoordinator *)v10->_authenticationCoordinator addObserver:v10];
  }

  return v10;
}

- (void)setAutomaticBiometricsDisabled:(BOOL)disabled
{
  if (self->_automaticBiometricsDisabled != disabled)
  {
    self->_automaticBiometricsDisabled = disabled;
    v5 = @"enabled";
    if (disabled)
    {
      v5 = @"disabled";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"automatic biometrics %@", v5];
    [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _reevaluateStateForReason:v6];
  }
}

- (void)enteredStateFrom:(unint64_t)from
{
  self->_isCurrentState = 1;
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _evaluateLockState];
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSBContinuitySessionState(from);
  v6 = [v5 stringWithFormat:@"entered state from: %@", v7];
  [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self _reevaluateStateForReason:v6];
}

- (void)continuityDisplayAuthenticationCoordinatorDidUpdateLockState:(id)state
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

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  collectionLineBreakNoneStyle = [MEMORY[0x277CF0C10] collectionLineBreakNoneStyle];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91___SBContinuitySessionStateMachineStatePreparingForRemoteUnlock_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = streamCopy;
  selfCopy = self;
  v6 = streamCopy;
  [v6 overlayStyle:collectionLineBreakNoneStyle block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock.m" lineNumber:116 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
}

- (void)_evaluateSystemEvents
{
  if (self->_isCurrentState)
  {
    v22 = v2;
    v23 = v3;
    isUIBlocked = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUIBlocked];
    isUILocked = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUILocked];
    isInCall = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isInCall];
    isSOSActive = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isSOSActive];
    isLockScreenSearchPresented = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isLockScreenSearchPresented];
    isUsingSecureApp = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUsingSecureApp];
    isAirplayMirroring = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isAirplayMirroring];
    isUserInitiatedRemoteTransientOverlayPresented = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUserInitiatedRemoteTransientOverlayPresented];
    if (isUIBlocked)
    {
      v13 = SBLogContinuitySession();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because UI blocked", v21, 2u);
      }

      if (isUILocked)
      {
LABEL_4:
        if (!isInCall)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if (isUILocked)
    {
      goto LABEL_4;
    }

    v14 = SBLogContinuitySession();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[State.PreparingForRemoteUnlock] --> moving to .blocked because UI unlocked", v21, 2u);
    }

    if (!isInCall)
    {
LABEL_5:
      if (!isSOSActive)
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

    if (!isSOSActive)
    {
LABEL_6:
      if (!isLockScreenSearchPresented)
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

    if (!isLockScreenSearchPresented)
    {
LABEL_7:
      if (!isUsingSecureApp)
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

    if (!isUsingSecureApp)
    {
LABEL_8:
      if (!isAirplayMirroring)
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

    if (!isAirplayMirroring)
    {
LABEL_9:
      if (!isUserInitiatedRemoteTransientOverlayPresented)
      {
LABEL_35:
        if (isUIBlocked || isInCall || !isUILocked || isSOSActive || isLockScreenSearchPresented || isUsingSecureApp || isAirplayMirroring || isUserInitiatedRemoteTransientOverlayPresented)
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

    if (!isUserInitiatedRemoteTransientOverlayPresented)
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
    lockState = [(SBContinuityDisplayAuthenticationCoordinator *)self->_authenticationCoordinator lockState];
    switch(lockState)
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

- (void)_reevaluateStateForReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (self->_isCurrentState)
  {
    v5 = SBLogContinuitySession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = reasonCopy;
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
        bs_array = [v7 bs_array];
        v13 = 138543362;
        v14 = bs_array;
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