@interface _SBContinuitySessionStateMachineStateLaunching
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateLaunching)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateLockState;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)didHandleLaunchEvent:(id)a3;
- (void)didReceiveLaunchEvent:(id)a3;
- (void)enteredStateFrom:(unint64_t)a3;
- (void)invalidate;
@end

@implementation _SBContinuitySessionStateMachineStateLaunching

- (_SBContinuitySessionStateMachineStateLaunching)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _SBContinuitySessionStateMachineStateLaunching;
  v9 = [(_SBContinuitySessionStateMachineStateLaunching *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemEventMonitor, a3);
    [v7 addObserver:v10];
    v11 = [MEMORY[0x277CBEB18] array];
    handlingLaunchEvents = v10->_handlingLaunchEvents;
    v10->_handlingLaunchEvents = v11;

    objc_storeStrong(&v10->_authenticationCoordinator, a4);
    [(SBContinuityDisplayAuthenticationCoordinator *)v10->_authenticationCoordinator addObserver:v10];
  }

  return v10;
}

- (void)didReceiveLaunchEvent:(id)a3
{
  handlingLaunchEvents = self->_handlingLaunchEvents;
  v5 = a3;
  [(NSMutableArray *)handlingLaunchEvents addObject:v5];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"did receive launch event %@", v5];

  [(_SBContinuitySessionStateMachineStateLaunching *)self _reevaluateStateForReason:v6];
}

- (void)didHandleLaunchEvent:(id)a3
{
  handlingLaunchEvents = self->_handlingLaunchEvents;
  v5 = a3;
  [(NSMutableArray *)handlingLaunchEvents removeObject:v5];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"did handle launch event %@", v5];

  [(_SBContinuitySessionStateMachineStateLaunching *)self _reevaluateStateForReason:v6];
}

- (void)enteredStateFrom:(unint64_t)a3
{
  self->_isCurrentState = 1;
  self->_radar124642623 = [(NSMutableArray *)self->_handlingLaunchEvents count]== 0;
  [(_SBContinuitySessionStateMachineStateLaunching *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStateLaunching *)self _evaluateLockState];
  [(_SBContinuitySessionStateMachineStateLaunching *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSBContinuitySessionState(a3);
  v7 = [v5 stringWithFormat:@"entered state from: %@", v6];
  [(_SBContinuitySessionStateMachineStateLaunching *)self _reevaluateStateForReason:v7];

  if (self->_radar124642623)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67___SBContinuitySessionStateMachineStateLaunching_enteredStateFrom___block_invoke;
    block[3] = &unk_2783A8C68;
    objc_copyWeak(&v9, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
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
  v7[2] = __76___SBContinuitySessionStateMachineStateLaunching_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v6 overlayStyle:v5 block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionStateMachineStateLaunching.m" lineNumber:132 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
}

- (void)_evaluateSystemEvents
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionStateMachineStateLaunching.m" lineNumber:202 description:@"Must have invalid reason"];
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
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Launching] --> moving to .invalid keybag has been unexpectedly unlocked", v10, 2u);
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
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Launching] --> moving to .invalid keybag has been unexpectedly  locked", buf, 2u);
      }

      v7 = SBContinuityBlockKeybagLocked;
LABEL_12:

      invalidStateHandler = self->_invalidStateHandler;
      v9 = [MEMORY[0x277CBEB98] setWithObject:*v7];
      invalidStateHandler[2](invalidStateHandler, v9);
    }
  }
}

- (void)_reevaluateStateForReason:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isCurrentState)
  {
    v5 = SBLogContinuitySession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State.Launching] Re-evaluating state for reason: %{public}@", &v15, 0xCu);
    }

    v6 = [MEMORY[0x277CBEB58] set];
    if (self->_radar124642623)
    {
      v7 = SBLogContinuitySession();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[State.Launching] waiting on rdar://124642623", &v15, 2u);
      }

      [v6 addObject:@"rdar://124642623"];
    }

    if ([(NSMutableArray *)self->_handlingLaunchEvents count])
    {
      v8 = SBLogContinuitySession();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        handlingLaunchEvents = self->_handlingLaunchEvents;
        v15 = 138543362;
        v16 = handlingLaunchEvents;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[State.Launching] still waiting on launch events: %{public}@", &v15, 0xCu);
      }

      [v6 addObject:@"checkpoint.handling-launch-event"];
    }

    v10 = [v6 count];
    v11 = SBLogContinuitySession();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v6 bs_array];
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[State.Launching] still blocked by %{public}@", &v15, 0xCu);
      }

      v14 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if (v12)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[State.Launching] --> moving to .active", &v15, 2u);
      }

      v14 = *(self->_stateTransitionHandler + 2);
    }

    v14();
  }
}

- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_clientExternallyBlockedReasonsProvider);

  return WeakRetained;
}

@end