@interface WFOutOfProcessWorkflowControllerStateMachine
- (BOOL)isFinishingShortcut;
- (BOOL)isRunningShortcut;
- (WFOutOfProcessWorkflowControllerStateMachine)init;
- (WFOutOfProcessWorkflowControllerStateMachineDelegate)delegate;
- (void)acquiringRunnerWithReason:(id)a3;
- (void)exitWithReason:(id)a3;
- (void)finishRunningWithReason:(id)a3 result:(id)a4;
- (void)handleRunnerWillExit;
- (void)handleXPCErrorWithDescription:(id)a3 reason:(id)a4 currentDialogAttribution:(id)a5;
- (void)handlingRequestWithReason:(id)a3;
- (void)idleStateWithReason:(id)a3;
- (void)notifyDelegateWithReason:(id)a3 result:(id)a4 currentDialogAttribution:(id)a5;
- (void)pauseAndWriteShortcutToDiskState;
- (void)startRunningShortcutWithReason:(id)a3;
- (void)stopShortcutWithError:(id)a3 reason:(id)a4;
- (void)tearDownRunnerWithReason:(id)a3;
@end

@implementation WFOutOfProcessWorkflowControllerStateMachine

- (WFOutOfProcessWorkflowControllerStateMachine)init
{
  v8.receiver = self;
  v8.super_class = WFOutOfProcessWorkflowControllerStateMachine;
  v2 = [(WFStateMachine *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.shortcuts.WFOutOfProcessWorkflowControllerStateMachine.delegate-queue", v3);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (WFOutOfProcessWorkflowControllerStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleRunnerWillExit
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(WFStateMachine *)self currentState];
  if (v3 && (v8 = v3, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v8 stage] > 4)
    {
      v6 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = "[WFOutOfProcessWorkflowControllerStateMachine handleRunnerWillExit]";
        _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_DEFAULT, "%s Runner will exit, but we're already in the proper cleanup. Ignore.", buf, 0xCu);
      }

      v7 = *MEMORY[0x1E69E9840];
    }

    else
    {
      [(WFOutOfProcessWorkflowControllerStateMachine *)self stopShortcutWithError:0 reason:@"runner notified us of exit, moving to stop and cleanup"];
      v4 = *MEMORY[0x1E69E9840];
    }
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)handleXPCErrorWithDescription:(id)a3 reason:(id)a4 currentDialogAttribution:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFStateMachine *)self currentState];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v11 stage] <= 6)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = WFOutOfProcessWorkflowControllerErrorDomain;
      v18 = *MEMORY[0x1E696A578];
      v19[0] = v8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v12 errorWithDomain:v13 code:4 userInfo:v14];

      v16 = [[WFWorkflowRunResult alloc] initWithError:v15];
      [(WFOutOfProcessWorkflowControllerStateMachine *)self notifyDelegateWithReason:v9 result:v16 currentDialogAttribution:v10];
    }
  }

  else
  {

    v11 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)exitWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(WFStateMachine *)self transitionToState:v5 withReason:v4];
}

- (void)tearDownRunnerWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setStage:8];
  v6 = [(WFStateMachine *)self transitionToState:v5 withReason:v4];

  if (v6)
  {
    v7 = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegate];

    if (v7)
    {
      v8 = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__WFOutOfProcessWorkflowControllerStateMachine_tearDownRunnerWithReason___block_invoke;
      block[3] = &unk_1E7B02158;
      block[4] = self;
      dispatch_async(v8, block);
    }
  }
}

void __73__WFOutOfProcessWorkflowControllerStateMachine_tearDownRunnerWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controllerStateMachineDidRequestRunnerTearDown:*(a1 + 32)];
}

- (void)notifyDelegateWithReason:(id)a3 result:(id)a4 currentDialogAttribution:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFStateMachine *)self currentState];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v11 stage] < 7)
      {
        v13 = objc_opt_new();
        [v13 setStage:7];
        if ([(WFStateMachine *)self transitionToState:v13 withReason:v8])
        {
          v14 = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegate];

          if (v14)
          {
            v15 = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegateQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __105__WFOutOfProcessWorkflowControllerStateMachine_notifyDelegateWithReason_result_currentDialogAttribution___block_invoke;
            block[3] = &unk_1E7B01C60;
            block[4] = self;
            v18 = v9;
            v19 = v10;
            dispatch_async(v15, block);
          }
        }
      }

      else
      {
        v12 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v21 = "[WFOutOfProcessWorkflowControllerStateMachine notifyDelegateWithReason:result:currentDialogAttribution:]";
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_DEFAULT, "%s Asked to notify delegate because %@ but we're already >= notifying delegate. Ignoring the request.", buf, 0x16u);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __105__WFOutOfProcessWorkflowControllerStateMachine_notifyDelegateWithReason_result_currentDialogAttribution___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  [v2 controllerStateMachine:*(a1 + 32) shouldNotifyDelegateWithResult:*(a1 + 40) currentDialogAttribution:*(a1 + 48)];

  v3 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[WFOutOfProcessWorkflowControllerStateMachine notifyDelegateWithReason:result:currentDialogAttribution:]_block_invoke";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_DEFAULT, "%s Notifying delegate with result: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)finishRunningWithReason:(id)a3 result:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setStage:6];
  v9 = [(WFStateMachine *)self transitionToState:v8 withReason:v7];

  if (v9)
  {
    v10 = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegate];

    if (v10)
    {
      v11 = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegateQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __79__WFOutOfProcessWorkflowControllerStateMachine_finishRunningWithReason_result___block_invoke;
      v12[3] = &unk_1E7B02180;
      v12[4] = self;
      v13 = v6;
      dispatch_async(v11, v12);
    }
  }
}

void __79__WFOutOfProcessWorkflowControllerStateMachine_finishRunningWithReason_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controllerStateMachine:*(a1 + 32) didFinishRunningShortcutWithResult:*(a1 + 40)];
}

- (void)stopShortcutWithError:(id)a3 reason:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFStateMachine *)self currentState];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_opt_new();
      [v9 setStage:5];
      if ([v8 stage] > 1)
      {
        if ([v8 stage] != 2)
        {
          if ([v8 stage] == 3)
          {
            if ([(WFStateMachine *)self transitionToState:v9 withReason:v7])
            {
              v12 = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegate];

              if (v12)
              {
                v13 = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegateQueue];
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __77__WFOutOfProcessWorkflowControllerStateMachine_stopShortcutWithError_reason___block_invoke;
                block[3] = &unk_1E7B02180;
                block[4] = self;
                v16 = v6;
                dispatch_async(v13, block);
              }
            }
          }

          else if ([v8 stage] >= 4)
          {
            v14 = getWFVoiceShortcutClientLogObject();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v18 = "[WFOutOfProcessWorkflowControllerStateMachine stopShortcutWithError:reason:]";
              v19 = 2048;
              v20 = [v8 stage];
              _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEFAULT, "%s stop was requested, but we're ignoring it because the current stage (%lu) will already result in a stop.", buf, 0x16u);
            }
          }

          goto LABEL_8;
        }

        [(WFStateMachine *)self transitionToState:v9 withReason:v7];
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"stop was requested because %@, tearing down runner", v7];
        [(WFOutOfProcessWorkflowControllerStateMachine *)self tearDownRunnerWithReason:v10];
      }

      else
      {
        [(WFStateMachine *)self transitionToState:v9 withReason:v7];
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"stop was requested because %@, but we haven't yet acquired a runner, so just exiting", v7];
        [(WFOutOfProcessWorkflowControllerStateMachine *)self exitWithReason:v10];
      }

LABEL_8:
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __77__WFOutOfProcessWorkflowControllerStateMachine_stopShortcutWithError_reason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controllerStateMachine:*(a1 + 32) didRequestStoppingShortcutWithError:*(a1 + 40)];
}

- (void)pauseAndWriteShortcutToDiskState
{
  v3 = objc_opt_new();
  [v3 setStage:4];
  [(WFStateMachine *)self transitionToState:v3 withReason:@"pause and write shortcut to disk requested"];
}

- (void)startRunningShortcutWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setStage:3];
  [(WFStateMachine *)self transitionToState:v5 withReason:v4];
}

- (void)acquiringRunnerWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setStage:2];
  [(WFStateMachine *)self transitionToState:v5 withReason:v4];
}

- (void)handlingRequestWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setStage:1];
  [(WFStateMachine *)self transitionToState:v5 withReason:v4];
}

- (void)idleStateWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setStage:0];
  [(WFStateMachine *)self transitionToState:v5 withReason:v4];
}

- (BOOL)isFinishingShortcut
{
  v2 = [(WFStateMachine *)self currentState];
  v3 = v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 stage] == 6;

  return v3;
}

- (BOOL)isRunningShortcut
{
  v2 = [(WFStateMachine *)self currentState];
  v3 = v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 stage] == 3;

  return v3;
}

@end