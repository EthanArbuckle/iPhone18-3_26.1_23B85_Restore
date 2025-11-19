@interface _SBContinuitySessionStateMachineStateActive
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateActive)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateLockState;
- (void)_evaluateSystemEvents;
- (void)appendDescriptionToStream:(id)a3;
- (void)enteredStateFrom:(unint64_t)a3;
- (void)invalidate;
@end

@implementation _SBContinuitySessionStateMachineStateActive

- (_SBContinuitySessionStateMachineStateActive)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _SBContinuitySessionStateMachineStateActive;
  v9 = [(_SBContinuitySessionStateMachineStateActive *)&v12 init];
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

- (void)enteredStateFrom:(unint64_t)a3
{
  self->_isCurrentState = 1;
  [(_SBContinuitySessionStateMachineStateActive *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStateActive *)self _evaluateLockState];

  [(_SBContinuitySessionStateMachineStateActive *)self _evaluateSystemEvents];
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
  v7[2] = __73___SBContinuitySessionStateMachineStateActive_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v6 overlayStyle:v5 block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionStateMachineStateActive.m" lineNumber:98 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
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
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid because UI blocked", v9, 2u);
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
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid because UI unlocked", v9, 2u);
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
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid because in call", v9, 2u);
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
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid because SOS active", v9, 2u);
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
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid because lock screen search presented", v9, 2u);
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
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid because using secure app", v9, 2u);
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
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid because airplay mirroring", v9, 2u);
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
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid because user-initiated remote transient overlay is presented", v9, 2u);
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
    v5 = [(SBContinuityDisplayAuthenticationCoordinator *)self->_authenticationCoordinator lockState];
    if (v5 == 2)
    {
      if (!self->_isCurrentState)
      {
        return;
      }

      v6 = SBLogContinuitySession();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid keybag has been unexpectedly unlocked", v10, 2u);
      }

      v7 = SBContinuityBlockKeybagUnlocked;
      goto LABEL_12;
    }

    if (!v5 && self->_isCurrentState)
    {
      v6 = SBLogContinuitySession();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Active] --> moving to .invalid keybag has been unexpectedly locked", buf, 2u);
      }

      v7 = SBContinuityBlockKeybagLocked;
LABEL_12:

      invalidStateHandler = self->_invalidStateHandler;
      v9 = [MEMORY[0x277CBEB98] setWithObject:*v7];
      invalidStateHandler[2](invalidStateHandler, v9);
    }
  }
}

- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_clientExternallyBlockedReasonsProvider);

  return WeakRetained;
}

@end