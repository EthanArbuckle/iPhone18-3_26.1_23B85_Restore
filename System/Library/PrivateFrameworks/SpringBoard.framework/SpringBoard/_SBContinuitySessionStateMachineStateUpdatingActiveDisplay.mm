@interface _SBContinuitySessionStateMachineStateUpdatingActiveDisplay
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateUpdatingActiveDisplay)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateLockState;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)enteredStateFrom:(unint64_t)from;
- (void)invalidate;
@end

@implementation _SBContinuitySessionStateMachineStateUpdatingActiveDisplay

- (_SBContinuitySessionStateMachineStateUpdatingActiveDisplay)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator
{
  monitorCopy = monitor;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = _SBContinuitySessionStateMachineStateUpdatingActiveDisplay;
  v9 = [(_SBContinuitySessionStateMachineStateUpdatingActiveDisplay *)&v12 init];
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

- (void)enteredStateFrom:(unint64_t)from
{
  self->_isCurrentState = 1;
  [(_SBContinuitySessionStateMachineStateUpdatingActiveDisplay *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStateUpdatingActiveDisplay *)self _evaluateLockState];
  [(_SBContinuitySessionStateMachineStateUpdatingActiveDisplay *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSBContinuitySessionState(from);
  v6 = [v5 stringWithFormat:@"entered state from: %@", v7];
  [(_SBContinuitySessionStateMachineStateUpdatingActiveDisplay *)self _reevaluateStateForReason:v6];
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
  v7[2] = __88___SBContinuitySessionStateMachineStateUpdatingActiveDisplay_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = streamCopy;
  selfCopy = self;
  v6 = streamCopy;
  [v6 overlayStyle:collectionLineBreakNoneStyle block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBContinuitySessionStateMachineStateUpdatingActiveDisplay.m" lineNumber:110 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
}

- (void)_evaluateSystemEvents
{
  if (self->_isCurrentState)
  {
    v10 = v2;
    v11 = v3;
    if ([(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUIBlocked])
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid because UI blocked ", v9, 2u);
      }

      v6 = SBContinuityBlockUIBlocked;
LABEL_14:

      invalidStateHandler = self->_invalidStateHandler;
      v8 = [MEMORY[0x277CBEB98] setWithObject:*v6];
      invalidStateHandler[2](invalidStateHandler, v8);

      return;
    }

    if (![(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUILocked])
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid because UI unlocked", v9, 2u);
      }

      v6 = SBContinuityBlockUIUnlocked;
      goto LABEL_14;
    }

    if ([(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isInCall])
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid because in call", v9, 2u);
      }

      v6 = SBContinuityBlockInCall;
      goto LABEL_14;
    }

    if ([(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isSOSActive])
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid because SOS active", v9, 2u);
      }

      v6 = SBContinuityBlockSOSActive;
      goto LABEL_14;
    }

    if ([(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isLockScreenSearchPresented])
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid because lock screen search presented", v9, 2u);
      }

      v6 = SBContinuityBlockLockScreenSearchPresented;
      goto LABEL_14;
    }

    if ([(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUsingSecureApp])
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid because using secure app", v9, 2u);
      }

      v6 = SBContinuityBlockSecureAppUsage;
      goto LABEL_14;
    }

    if ([(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isAirplayMirroring])
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid because airplay mirroring", v9, 2u);
      }

      v6 = SBContinuityBlockAirplayMirroring;
      goto LABEL_14;
    }

    if ([(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUserInitiatedRemoteTransientOverlayPresented])
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid because user-initiated remote transient overlay is presented", v9, 2u);
      }

      v6 = SBContinuityBlockUserInitiatedRemoteTransientOverlayPresented;
      goto LABEL_14;
    }
  }
}

- (void)_evaluateLockState
{
  if (self->_isCurrentState)
  {
    v12 = v2;
    v13 = v3;
    lockState = [(SBContinuityDisplayAuthenticationCoordinator *)self->_authenticationCoordinator lockState];
    if (lockState == 2)
    {
      v6 = SBLogContinuitySession();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid keybag has been unexpectedly unlocked", v10, 2u);
      }

      v7 = SBContinuityBlockKeybagUnlocked;
    }

    else
    {
      if (lockState)
      {
        return;
      }

      v6 = SBLogContinuitySession();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .invalid keybag has been unexpectedly locked", buf, 2u);
      }

      v7 = SBContinuityBlockKeybagLocked;
    }

    invalidStateHandler = self->_invalidStateHandler;
    v9 = [MEMORY[0x277CBEB98] setWithObject:*v7];
    invalidStateHandler[2](invalidStateHandler, v9);
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
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] Re-evaluating state for reason: %{public}@", &v13, 0xCu);
    }

    v6 = [MEMORY[0x277CBEB58] set];
    v7 = v6;
    if (!self->_updatedActiveDisplay)
    {
      [v6 addObject:@"checkpoint.waiting-for-update-active-display"];
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
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] still blocked by %{public}@", &v13, 0xCu);
      }

      v12 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if (v10)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State.UpdatingActiveDisplay] --> moving to .launching", &v13, 2u);
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