@interface _SBContinuitySessionStateMachineStateBlocked
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateBlocked)initWithSystemEventMonitor:(id)monitor;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)continuitySessionSystemEventMonitor:(id)monitor eventOccurred:(id)occurred;
- (void)enteredStateFrom:(unint64_t)from;
- (void)invalidate;
- (void)noteClientConnectedWithInitialExternallyBlockedReasons:(id)reasons;
- (void)noteClientDidUpdateExternallyBlockedReasons;
@end

@implementation _SBContinuitySessionStateMachineStateBlocked

- (_SBContinuitySessionStateMachineStateBlocked)initWithSystemEventMonitor:(id)monitor
{
  monitorCopy = monitor;
  v9.receiver = self;
  v9.super_class = _SBContinuitySessionStateMachineStateBlocked;
  v6 = [(_SBContinuitySessionStateMachineStateBlocked *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemEventMonitor, monitor);
    [(SBContinuitySessionSystemEventMonitor *)v7->_systemEventMonitor addObserver:v7];
  }

  return v7;
}

- (void)noteClientConnectedWithInitialExternallyBlockedReasons:(id)reasons
{
  self->_clientConnected = 1;
  objc_storeStrong(&self->_blockedReasons_client, reasons);

  [(_SBContinuitySessionStateMachineStateBlocked *)self _reevaluateStateForReason:@"client connected"];
}

- (void)enteredStateFrom:(unint64_t)from
{
  self->_isCurrentState = 1;
  [(_SBContinuitySessionStateMachineStateBlocked *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStateBlocked *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSBContinuitySessionState(from);
  v6 = [v5 stringWithFormat:@"entered state from: %@", v7];
  [(_SBContinuitySessionStateMachineStateBlocked *)self _reevaluateStateForReason:v6];
}

- (void)noteClientDidUpdateExternallyBlockedReasons
{
  [(_SBContinuitySessionStateMachineStateBlocked *)self _evaluateClientExternallyBlockedReasons];

  [(_SBContinuitySessionStateMachineStateBlocked *)self _reevaluateStateForReason:@"client updated externally blocked reasons"];
}

- (void)continuitySessionSystemEventMonitor:(id)monitor eventOccurred:(id)occurred
{
  occurredCopy = occurred;
  [(_SBContinuitySessionStateMachineStateBlocked *)self _evaluateSystemEvents];
  occurredCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"system monitor event occurred: %@", occurredCopy];

  [(_SBContinuitySessionStateMachineStateBlocked *)self _reevaluateStateForReason:occurredCopy];
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
  v7[2] = __74___SBContinuitySessionStateMachineStateBlocked_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = streamCopy;
  selfCopy = self;
  v6 = streamCopy;
  [v6 overlayStyle:collectionLineBreakNoneStyle block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBContinuitySessionStateMachineStateBlocked.m" lineNumber:133 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
}

- (void)_evaluateSystemEvents
{
  if (self->_isCurrentState)
  {
    self->_uiLocked = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUILocked];
    self->_uiBlocked = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUIBlocked];
    self->_inCall = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isInCall];
    self->_sosActive = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isSOSActive];
    self->_lockScreenSearchPresented = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isLockScreenSearchPresented];
    self->_usingSecureApp = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUsingSecureApp];
    self->_isAirplayMirroring = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isAirplayMirroring];
    self->_isUserInitiatedRemoteTransientOverlayPresented = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUserInitiatedRemoteTransientOverlayPresented];
  }
}

- (void)_reevaluateStateForReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (self->_isCurrentState)
  {
    v5 = SBLogContinuitySession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Blocked] Re-evaluating state for reason: %{public}@", &v14, 0xCu);
    }

    v6 = [(NSSet *)self->_blockedReasons_client mutableCopy];
    v7 = v6;
    if (!self->_clientConnected)
    {
      [v6 addObject:@"block.session.client-connected"];
    }

    if (self->_uiBlocked)
    {
      [v7 addObject:@"block.embedded-display.uiBlocked"];
    }

    if (!self->_uiLocked)
    {
      [v7 addObject:@"block.embedded-display.uiUnlocked"];
    }

    if (self->_inCall)
    {
      [v7 addObject:@"block.inCall"];
    }

    if (self->_sosActive)
    {
      [v7 addObject:@"block.sos.active"];
    }

    if (self->_lockScreenSearchPresented)
    {
      [v7 addObject:@"block.lockScreen.searchPresented"];
    }

    if (self->_usingSecureApp)
    {
      [v7 addObject:@"block.embedded-display.secureAppUsage"];
    }

    if (self->_isAirplayMirroring)
    {
      [v7 addObject:@"block.airplayMirroring"];
    }

    if (self->_isUserInitiatedRemoteTransientOverlayPresented)
    {
      [v7 addObject:@"block.userInitiatedRemoteTransientOverlayPresented"];
    }

    if ([v7 count])
    {
      v8 = SBLogContinuitySession();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        bs_array = [v7 bs_array];
        v14 = 138543362;
        v15 = bs_array;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[State.Blocked] still blocked by %{public}@", &v14, 0xCu);
      }

      v10 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if ([(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isInStoreDemoMode])
      {
        v11 = 5;
      }

      else
      {
        v11 = 3;
      }

      v12 = SBLogContinuitySession();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromSBContinuitySessionState(v11);
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[State.Blocked] --> moving to %@", &v14, 0xCu);
      }

      v10 = *(self->_stateTransitionHandler + 2);
    }

    v10();
  }
}

- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_clientExternallyBlockedReasonsProvider);

  return WeakRetained;
}

@end