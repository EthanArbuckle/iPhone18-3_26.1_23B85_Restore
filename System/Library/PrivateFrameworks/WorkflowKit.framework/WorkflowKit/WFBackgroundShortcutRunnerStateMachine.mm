@interface WFBackgroundShortcutRunnerStateMachine
- (BOOL)isRunningShortcut;
- (WFBackgroundShortcutRunnerStateMachine)initWithProcessPolicy:(unint64_t)policy;
- (WFBackgroundShortcutRunnerStateMachineDelegate)delegate;
- (void)exitWithReason:(id)reason;
- (void)finishRunningWithReason:(id)reason result:(id)result;
- (void)handlingRequestStateWithReason:(id)reason;
- (void)idleStateWithReason:(id)reason;
- (void)invalidate;
- (void)invalidateWithReason:(id)reason;
- (void)stopShortcutWithError:(id)error reason:(id)reason;
@end

@implementation WFBackgroundShortcutRunnerStateMachine

- (BOOL)isRunningShortcut
{
  currentState = [(WFStateMachine *)self currentState];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (WFBackgroundShortcutRunnerStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invalidateWithReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  currentState = [(WFStateMachine *)self currentState];
  if (currentState && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([currentState stage] > 2)
    {
      if ([currentState stage] == 4 || objc_msgSend(currentState, "stage") == 5)
      {
        v7 = getWFStateMachineLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315394;
          v9 = "[WFBackgroundShortcutRunnerStateMachine invalidateWithReason:]";
          v10 = 2112;
          v11 = reasonCopy;
          _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ while finishing shortcut or exiting runner. Exiting should already be in process, not transitioning.", &v8, 0x16u);
        }
      }
    }

    else
    {
      [(WFBackgroundShortcutRunnerStateMachine *)self stopShortcutWithError:0 reason:reasonCopy];
    }
  }

  else
  {

    currentState = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = getWFStateMachineLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[WFBackgroundShortcutRunnerStateMachine invalidate]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s State machine invalidated", &v5, 0xCu);
  }

  [(WFBackgroundShortcutRunnerStateMachine *)self invalidateWithReason:@"state machine invalidated"];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)exitWithReason:(id)reason
{
  v14 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if ([(WFBackgroundShortcutRunnerStateMachine *)self processPolicy]== 1)
  {
    v5 = getWFStateMachineLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[WFBackgroundShortcutRunnerStateMachine exitWithReason:]";
      v12 = 2114;
      v13 = reasonCopy;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s exit was requested for reason '%{public}@', but not exiting because process policy is a shared runner", buf, 0x16u);
    }
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setStage:5];
    if ([(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy])
    {
      delegate = [(WFBackgroundShortcutRunnerStateMachine *)self delegate];

      if (delegate)
      {
        delegateQueue = [(WFBackgroundShortcutRunnerStateMachine *)self delegateQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __57__WFBackgroundShortcutRunnerStateMachine_exitWithReason___block_invoke;
        block[3] = &unk_1E837FA70;
        block[4] = self;
        dispatch_async(delegateQueue, block);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __57__WFBackgroundShortcutRunnerStateMachine_exitWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 runnerStateMachineDidRequestProcessExit:*(a1 + 32)];
}

- (void)finishRunningWithReason:(id)reason result:(id)result
{
  resultCopy = result;
  reasonCopy = reason;
  v8 = objc_opt_new();
  [v8 setStage:4];
  v9 = [(WFStateMachine *)self transitionToState:v8 withReason:reasonCopy];

  if (v9)
  {
    delegate = [(WFBackgroundShortcutRunnerStateMachine *)self delegate];

    if (delegate)
    {
      delegateQueue = [(WFBackgroundShortcutRunnerStateMachine *)self delegateQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__WFBackgroundShortcutRunnerStateMachine_finishRunningWithReason_result___block_invoke;
      v12[3] = &unk_1E837F870;
      v12[4] = self;
      v13 = resultCopy;
      dispatch_async(delegateQueue, v12);
    }
  }
}

void __73__WFBackgroundShortcutRunnerStateMachine_finishRunningWithReason_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 runnerStateMachine:*(a1 + 32) didFinishRunningShortcutWithResult:*(a1 + 40)];
}

- (void)stopShortcutWithError:(id)error reason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  reasonCopy = reason;
  currentState = [(WFStateMachine *)self currentState];
  if (currentState)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([currentState stage] < 3)
      {
        v10 = objc_opt_new();
        [v10 setStage:3];
        if ([(WFStateMachine *)self transitionToState:v10 withReason:reasonCopy])
        {
          delegate = [(WFBackgroundShortcutRunnerStateMachine *)self delegate];

          if (delegate)
          {
            delegateQueue = [(WFBackgroundShortcutRunnerStateMachine *)self delegateQueue];
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __71__WFBackgroundShortcutRunnerStateMachine_stopShortcutWithError_reason___block_invoke;
            v14[3] = &unk_1E837F870;
            v14[4] = self;
            v15 = errorCopy;
            dispatch_async(delegateQueue, v14);
          }
        }
      }

      else
      {
        v9 = getWFStateMachineLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v17 = "[WFBackgroundShortcutRunnerStateMachine stopShortcutWithError:reason:]";
          v18 = 2114;
          v19 = reasonCopy;
          v20 = 2048;
          stage = [currentState stage];
          _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s stop was requested because %{public}@, but we're already in the process of stopping/finishing (current stage: %lu)", buf, 0x20u);
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __71__WFBackgroundShortcutRunnerStateMachine_stopShortcutWithError_reason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 runnerStateMachine:*(a1 + 32) didRequestStoppingShortcutWithError:*(a1 + 40)];
}

void __116__WFBackgroundShortcutRunnerStateMachine_startRunningShortcutWithEnvironment_reference_isPersonalAutomation_reason___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = WFLocalizedString(@"“%@” took too long to run.");
    v4 = [*(a1 + 32) name];
    v5 = [v2 localizedStringWithFormat:v3, v4];
  }

  else
  {
    v5 = WFLocalizedString(@"The shortcut took too long to run.");
  }

  v6 = MEMORY[0x1E696ABC0];
  v11[0] = *MEMORY[0x1E696A578];
  v7 = WFLocalizedString(@"Shortcut Timed Out");
  v11[1] = *MEMORY[0x1E696A588];
  v12[0] = v7;
  v12[1] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v6 errorWithDomain:@"WFBackgroundShortcutRunnerErrorDomain" code:11 userInfo:v8];

  [*(a1 + 40) stopShortcutWithError:v9 reason:@"runner timed out"];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)handlingRequestStateWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [v5 setStage:1];
  [(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy];
}

- (void)idleStateWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [v5 setStage:0];
  [(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy];
}

- (WFBackgroundShortcutRunnerStateMachine)initWithProcessPolicy:(unint64_t)policy
{
  v10.receiver = self;
  v10.super_class = WFBackgroundShortcutRunnerStateMachine;
  v4 = [(WFStateMachine *)&v10 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.shortcuts.WFBackgroundShortcutRunnerStateMachine.delegate-queue", v5);
    delegateQueue = v4->_delegateQueue;
    v4->_delegateQueue = v6;

    v4->_processPolicy = policy;
    v8 = v4;
  }

  return v4;
}

@end