@interface _SBContinuitySessionStateMachineStateStoreDemoPrep
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateStoreDemoPrep)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)continuitySessionSystemEventMonitor:(id)a3 eventOccurred:(id)a4;
- (void)enteredStateFrom:(unint64_t)a3;
- (void)invalidate;
@end

@implementation _SBContinuitySessionStateMachineStateStoreDemoPrep

- (_SBContinuitySessionStateMachineStateStoreDemoPrep)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _SBContinuitySessionStateMachineStateStoreDemoPrep;
  v9 = [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_blockOnUIUnlock = 1;
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
  [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSBContinuitySessionState(a3);
  v6 = [v5 stringWithFormat:@"entered state from: %@", v7];
  [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self _reevaluateStateForReason:v6];
}

- (void)continuitySessionSystemEventMonitor:(id)a3 eventOccurred:(id)a4
{
  v5 = a4;
  [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self _evaluateSystemEvents];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"system monitor event occurred: %@", v5];

  [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self _reevaluateStateForReason:v6];
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
  v7[2] = __80___SBContinuitySessionStateMachineStateStoreDemoPrep_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v6 overlayStyle:v5 block:v7];
}

- (void)_evaluateSystemEvents
{
  if (self->_isCurrentState)
  {
    self->_uiLocked = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUILocked];
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
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.StoreDemoPrep] Re-evaluating state for reason: %{public}@", &v13, 0xCu);
    }

    v6 = [MEMORY[0x277CBEB58] set];
    v7 = v6;
    if (!self->_uiLocked && self->_blockOnUIUnlock)
    {
      [v6 addObject:@"block.embedded-display.uiUnlocked"];
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
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State.StoreDemoPrep] still blocked by %{public}@", &v13, 0xCu);
      }

      v12 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if (v10)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State.StoreDemoPrep] --> moving to .blocked", &v13, 2u);
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