@interface WFStateMachine
- (BOOL)lock_prepareForInvalidation;
- (BOOL)transitionToState:(id)a3 withReason:(id)a4;
- (NSArray)stateHistory;
- (WFStateMachine)init;
- (id)lock_printedStateHistory;
- (void)lock_cancelPendingTimers;
@end

@implementation WFStateMachine

- (void)lock_cancelPendingTimers
{
  os_unfair_lock_assert_owner(&self->_transitionLock);
  v3 = [(WFStateMachine *)self timer];
  if (v3)
  {
    v4 = v3;
    v5 = [(WFStateMachine *)self timer];
    v6 = [v5 isCancelled];

    if ((v6 & 1) == 0)
    {
      v7 = [(WFStateMachine *)self timer];
      [v7 cancel];
    }
  }
}

- (WFStateMachine)init
{
  v12.receiver = self;
  v12.super_class = WFStateMachine;
  v2 = [(WFStateMachine *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.shortcuts.WFStateMachine.timer", v3);
    timerQueue = v2->_timerQueue;
    v2->_timerQueue = v4;

    v2->_transitionLock._os_unfair_lock_opaque = 0;
    v6 = _os_activity_create(&dword_1B1DE3000, "WFStateMachine", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    activity = v2->_activity;
    v2->_activity = v6;

    v2->_invalidated = 0;
    v8 = objc_opt_new();
    mutableStateHistory = v2->_mutableStateHistory;
    v2->_mutableStateHistory = v8;

    *&v2->_blocksTransitionsOnInvalidation = 1;
    v10 = v2;
  }

  return v2;
}

- (id)lock_printedStateHistory
{
  os_unfair_lock_assert_owner(&self->_transitionLock);
  v3 = [(WFStateMachine *)self mutableStateHistory];
  v4 = [v3 componentsJoinedByString:@" -> "];

  return v4;
}

- (BOOL)lock_prepareForInvalidation
{
  os_unfair_lock_assert_owner(&self->_transitionLock);
  [(WFStateMachine *)self lock_cancelPendingTimers];
  v3 = [(WFStateMachine *)self isInvalidated];
  if (!v3)
  {
    [(WFStateMachine *)self setInvalidated:1];
    if ([(WFStateMachine *)self blocksTransitionsOnInvalidation])
    {
      v4 = objc_opt_new();
      [(WFStateMachine *)self setCurrentState:v4];
    }
  }

  return !v3;
}

- (NSArray)stateHistory
{
  os_unfair_lock_lock(&self->_transitionLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__WFStateMachine_stateHistory__block_invoke;
  aBlock[3] = &unk_1E7B02158;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(WFStateMachine *)self mutableStateHistory];
  v5 = [v4 copy];

  v3[2](v3);

  return v5;
}

- (BOOL)transitionToState:(id)a3 withReason:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_assert_not_owner(&self->_transitionLock);
  if (!v7)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"WFStateMachine.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"state"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_29:
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFStateMachine.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"transitionReason"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_3:
  os_unfair_lock_lock(&self->_transitionLock);
  v9 = [(WFStateMachine *)self currentState];
  v10 = v9;
  if (!v9 || ([v9 canTransitionToState:v7] & 1) != 0)
  {
    [(WFStateMachine *)self lock_addTransitionEventToHistoryWithState:v7 reason:v8 valid:1];
    [(WFStateMachine *)self lock_cancelPendingTimers];
    [(WFStateMachine *)self setCurrentState:v7];
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v11 = [(WFStateMachine *)self activity];
    os_activity_scope_enter(v11, &state);

    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v39 = "[WFStateMachine transitionToState:withReason:]";
      v40 = 2112;
      v41 = *&v10;
      v42 = 2112;
      v43 = v7;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_DEFAULT, "%s Transitioning from %@ to %@, reason: %@", buf, 0x2Au);
    }

    v13 = v7;
    v14 = v13;
    if (v7)
    {
      if ([v13 conformsToProtocol:&unk_1F295A270])
      {
        v15 = v14;
        if (![v14 shouldStartTimer])
        {
LABEL_19:
          os_unfair_lock_unlock(&self->_transitionLock);
          if (objc_opt_respondsToSelector())
          {
            [v14 performAction];
          }

          os_activity_scope_leave(&state);
          v28 = 1;
          goto LABEL_27;
        }

        [v14 timeoutDuration];
        v17 = v16;
        v18 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "[WFStateMachine transitionToState:withReason:]";
          v40 = 2048;
          v41 = v17;
          _os_log_impl(&dword_1B1DE3000, v18, OS_LOG_TYPE_DEFAULT, "%s This is a timed state - setting timer with a timeout of %f seconds", buf, 0x16u);
        }

        v19 = [WFDispatchSourceTimer alloc];
        v20 = [(WFStateMachine *)self timerQueue];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __47__WFStateMachine_transitionToState_withReason___block_invoke;
        v35[3] = &unk_1E7B02158;
        v15 = v14;
        v36 = v15;
        v21 = [(WFDispatchSourceTimer *)v19 initWithInterval:v20 queue:v35 handler:v17];
        timer = self->_timer;
        self->_timer = v21;

        [(WFDispatchSourceTimer *)self->_timer start];
        v23 = v36;
      }

      else
      {
        v15 = 0;
        v23 = v14;
      }
    }

    else
    {
      v23 = 0;
      v15 = 0;
    }

    goto LABEL_19;
  }

  [(WFStateMachine *)self lock_addTransitionEventToHistoryWithState:v7 reason:v8 valid:0];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v24 = [(WFStateMachine *)self activity];
  os_activity_scope_enter(v24, &state);

  v25 = [(WFStateMachine *)self silentlyDropInvalidTransitions];
  v26 = getWFVoiceShortcutClientLogObject();
  v27 = v26;
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v39 = "[WFStateMachine transitionToState:withReason:]";
      v40 = 2112;
      v41 = *&v10;
      v42 = 2112;
      v43 = v7;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_1B1DE3000, v27, OS_LOG_TYPE_DEBUG, "%s Invalid transition from current state: %@ to new state: %@, reason: %@ (Silently dropping.)", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    v29 = [(WFStateMachine *)self lock_printedStateHistory];
    *buf = 136316162;
    v39 = "[WFStateMachine transitionToState:withReason:]";
    v40 = 2112;
    v41 = *&v10;
    v42 = 2112;
    v43 = v7;
    v44 = 2112;
    v45 = v8;
    v46 = 2112;
    v47 = v29;
    _os_log_impl(&dword_1B1DE3000, v27, OS_LOG_TYPE_FAULT, "%s Invalid transition from current state: %@ to new state: %@, reason: %@, events: %@", buf, 0x34u);
  }

  v30 = [(WFStateMachine *)self lock_prepareForInvalidation];
  os_unfair_lock_unlock(&self->_transitionLock);
  if (v30)
  {
    [(WFStateMachine *)self invalidate];
  }

  os_activity_scope_leave(&state);
  v28 = 0;
LABEL_27:

  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t __47__WFStateMachine_transitionToState_withReason___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[WFStateMachine transitionToState:withReason:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B1DE3000, v2, OS_LOG_TYPE_DEFAULT, "%s State %@ hit a timeout, cancelling it", &v6, 0x16u);
  }

  result = [*(a1 + 32) cancel];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end