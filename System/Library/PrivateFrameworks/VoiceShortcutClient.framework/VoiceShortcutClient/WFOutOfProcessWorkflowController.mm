@interface WFOutOfProcessWorkflowController
- (BOOL)isRunning;
- (BOOL)resumeRunningWithRequest:(id)a3 error:(id *)a4;
- (BOOL)runActionWithRunRequestData:(id)a3 error:(id *)a4;
- (BOOL)runWorkflowWithDescriptor:(id)a3 request:(id)a4 error:(id *)a5;
- (WFOutOfProcessWorkflowController)initWithEnvironment:(int64_t)a3 runningContext:(id)a4 presentationMode:(int64_t)a5 existingConnection:(id)a6;
- (WFOutOfProcessWorkflowControllerDelegate)delegate;
- (id)localizedTimeoutErrorDescription;
- (id)localizedXPCInterruptionErrorDescription;
- (id)runnerWithError:(id *)a3 synchronous:(BOOL)a4 reason:(id)a5;
- (void)actionWithUUID:(id)a3 didFinishRunningWithError:(id)a4 serializedVariable:(id)a5 executionResultMetadata:(id)a6;
- (void)controllerStateMachine:(id)a3 didFinishRunningShortcutWithResult:(id)a4;
- (void)controllerStateMachine:(id)a3 didRequestStoppingShortcutWithError:(id)a4;
- (void)controllerStateMachine:(id)a3 shouldNotifyDelegateWithResult:(id)a4 currentDialogAttribution:(id)a5;
- (void)controllerStateMachineDidRequestRunnerTearDown:(id)a3;
- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4;
- (void)forTestingOnly_simulateXPCInterruption;
- (void)getCurrentProgressCompletedWithCompletionHandler:(id)a3;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4;
- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4;
- (void)pauseWorkflowAndWriteStateToDisk;
- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)presenterRequestedUpdatedRunViewSource:(id)a3 completionHandler:(id)a4;
- (void)reindexToolKitDatabaseWithRequest:(id)a3 completionHandler:(id)a4;
- (void)reset;
- (void)resolveContent:(id)a3 completionHandler:(id)a4;
- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)runToolWithInvocation:(id)a3;
- (void)runnerDidPunchToShortcutsJr;
- (void)runnerWillExit;
- (void)stop;
- (void)transformAction:(id)a3 completionHandler:(id)a4;
- (void)updateRunViewSource:(id)a3;
- (void)workflowDidPause;
- (void)workflowDidStartRunning:(id)a3 isAutomation:(id)a4 dialogAttribution:(id)a5;
@end

@implementation WFOutOfProcessWorkflowController

- (void)stop
{
  v2 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [v2 stopShortcutWithError:0 reason:@"-stop was called"];
}

- (void)runnerWillExit
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[WFOutOfProcessWorkflowController runnerWillExit]";
    _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_DEFAULT, "%s Runner is about to tear down", &v8, 0xCu);
  }

  [(WFOutOfProcessWorkflowController *)self setRunner:0];
  os_unfair_lock_lock(&self->_serviceConnectionLock);
  v4 = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  [v4 setOnInterruption:0];

  v5 = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  [v5 setOnInvalidation:0];

  os_unfair_lock_unlock(&self->_serviceConnectionLock);
  v6 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [v6 handleRunnerWillExit];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  [(WFOutOfProcessWorkflowController *)self setCurrentWorkflow:0];

  [(WFOutOfProcessWorkflowController *)self setCurrentDialogAttribution:0];
}

- (WFOutOfProcessWorkflowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)localizedTimeoutErrorDescription
{
  if ([(WFOutOfProcessWorkflowController *)self isAutomation])
  {
    v3 = @"the automation took too long to run.";
  }

  else
  {
    v4 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];
    v5 = [v4 name];
    v6 = [v5 length];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = WFLocalizedString(@"The shortcut “%@” took too long to run.");
      v9 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];
      v10 = [v9 name];
      v11 = [v7 localizedStringWithFormat:v8, v10];

      goto LABEL_15;
    }

    v12 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];

    if (v12)
    {
      goto LABEL_6;
    }

    v13 = [(WFOutOfProcessWorkflowController *)self runRequest];
    if (v13)
    {
      objc_opt_class();
      v14 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v14 = 1;
    }

    v15 = [(WFOutOfProcessWorkflowController *)self runRequest];
    v16 = [v15 runSource];
    IsSuggestion = WFRunSourceIsSuggestion(v16);

    if ((v14 & 1) == 0)
    {
      v3 = @"The action took too long to run.";
      goto LABEL_14;
    }

    if (!IsSuggestion)
    {
LABEL_6:
      v3 = @"The shortcut took too long to run.";
    }

    else
    {
      v3 = @"The suggestion took too long to run.";
    }
  }

LABEL_14:
  v11 = WFLocalizedString(v3);
LABEL_15:

  return v11;
}

- (id)localizedXPCInterruptionErrorDescription
{
  if ([(WFOutOfProcessWorkflowController *)self isAutomation])
  {
    v3 = @"There was a problem running the automation.";
  }

  else
  {
    v4 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];
    v5 = [v4 name];
    v6 = [v5 length];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = WFLocalizedString(@"There was a problem running the shortcut “%@”.");
      v9 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];
      v10 = [v9 name];
      v11 = [v7 localizedStringWithFormat:v8, v10];

      goto LABEL_15;
    }

    v12 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];

    if (v12)
    {
      goto LABEL_6;
    }

    v13 = [(WFOutOfProcessWorkflowController *)self runRequest];
    if (v13)
    {
      objc_opt_class();
      v14 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v14 = 1;
    }

    v15 = [(WFOutOfProcessWorkflowController *)self runRequest];
    v16 = [v15 runSource];
    IsSuggestion = WFRunSourceIsSuggestion(v16);

    if ((v14 & 1) == 0)
    {
      v3 = @"There was a problem running the action.";
      goto LABEL_14;
    }

    if (!IsSuggestion)
    {
LABEL_6:
      v3 = @"There was a problem running the shortcut.";
    }

    else
    {
      v3 = @"There was a problem running the suggestion.";
    }
  }

LABEL_14:
  v11 = WFLocalizedString(v3);
LABEL_15:

  return v11;
}

- (void)runnerDidPunchToShortcutsJr
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(WFOutOfProcessWorkflowController *)self runRequest];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [(WFOutOfProcessWorkflowController *)self runningContext];
    [v4 setAllowsDialogNotifications:1];

    [(WFOutOfProcessWorkflowController *)self setPresentationMode:3];
  }

  else
  {

    v3 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "[WFOutOfProcessWorkflowController runnerDidPunchToShortcutsJr]";
      _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_FAULT, "%s Attempted to perform punch out for non-Siri request", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)workflowDidPause
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFOutOfProcessWorkflowController workflowDidPause]";
    _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_DEFAULT, "%s Workflow paused", &v6, 0xCu);
  }

  v4 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [v4 pauseAndWriteShortcutToDiskState];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)actionWithUUID:(id)a3 didFinishRunningWithError:(id)a4 serializedVariable:(id)a5 executionResultMetadata:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(WFOutOfProcessWorkflowController *)self delegate];
    v21 = 136315906;
    v22 = "[WFOutOfProcessWorkflowController actionWithUUID:didFinishRunningWithError:serializedVariable:executionResultMetadata:]";
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEFAULT, "%s Host received finish for action (%@), delegate: %@, error: %@", &v21, 0x2Au);
  }

  v16 = [(WFOutOfProcessWorkflowController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(WFOutOfProcessWorkflowController *)self delegate];
    v19 = [v12 propertyListObject];
    [v18 outOfProcessWorkflowController:self actionWithUUID:v10 didFinishRunningWithError:v11 serializedVariable:v19 executionResultMetadata:v13];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)workflowDidStartRunning:(id)a3 isAutomation:(id)a4 dialogAttribution:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [(WFOutOfProcessWorkflowController *)self setCurrentWorkflow:v8];
  v11 = [v10 BOOLValue];

  [(WFOutOfProcessWorkflowController *)self setIsAutomation:v11];
  [(WFOutOfProcessWorkflowController *)self setCurrentDialogAttribution:v9];
  v12 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[WFOutOfProcessWorkflowController workflowDidStartRunning:isAutomation:dialogAttribution:]";
    _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_DEBUG, "%s Background runner started running workflow", &v17, 0xCu);
  }

  v13 = [(WFOutOfProcessWorkflowController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(WFOutOfProcessWorkflowController *)self delegate];
    [v15 outOfProcessWorkflowController:self didStartFromWorkflowReference:v8 dialogAttribution:v9];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)presenterRequestedUpdatedRunViewSource:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFOutOfProcessWorkflowController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WFOutOfProcessWorkflowController *)self delegate];
    [v9 outOfProcessWorkflowController:self didRequestUpdatedRunViewSource:v10 completionHandler:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)controllerStateMachineDidRequestRunnerTearDown:(id)a3
{
  os_unfair_lock_lock(&self->_serviceConnectionLock);
  v4 = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  [v4 invalidate];

  [(WFOutOfProcessWorkflowController *)self setServiceConnection:0];
  os_unfair_lock_unlock(&self->_serviceConnectionLock);
  v5 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [v5 exitWithReason:@"runner is torn down"];
}

- (void)controllerStateMachine:(id)a3 shouldNotifyDelegateWithResult:(id)a4 currentDialogAttribution:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(WFOutOfProcessWorkflowController *)self runRequest];
  if ([v9 isStepwise])
  {
    v10 = [v7 error];

    if (!v10)
    {
      v11 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(WFOutOfProcessWorkflowController *)self delegate];
        v20 = 136315650;
        v21 = "[WFOutOfProcessWorkflowController controllerStateMachine:shouldNotifyDelegateWithResult:currentDialogAttribution:]";
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_DEFAULT, "%s Workflow stepped successfully (%@) but the run request is stepwise, not notifying the delegate %@", &v20, 0x20u);
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v13 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(WFOutOfProcessWorkflowController *)self delegate];
    v20 = 136315650;
    v21 = "[WFOutOfProcessWorkflowController controllerStateMachine:shouldNotifyDelegateWithResult:currentDialogAttribution:]";
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_1B1DE3000, v13, OS_LOG_TYPE_DEFAULT, "%s Reporting finish with result (%@) to the delegate (%@)", &v20, 0x20u);
  }

  v15 = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  v16 = [v15 targetType];

  if (v16)
  {
    v17 = 2 * (v16 == 1);
  }

  else
  {
    v17 = 1;
  }

  v11 = [(WFOutOfProcessWorkflowController *)self delegate];
  [v11 outOfProcessWorkflowController:self didFinishWithResult:v7 dialogAttribution:v8 runResidency:v17];
LABEL_12:

  v18 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [v18 tearDownRunnerWithReason:{@"finished processing result, and notifying the delegate if applicable, done"}];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)controllerStateMachine:(id)a3 didFinishRunningShortcutWithResult:(id)a4
{
  v5 = a4;
  v6 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  v7 = [(WFOutOfProcessWorkflowController *)self currentDialogAttribution];
  [v6 notifyDelegateWithReason:@"workflow did finish running" result:v5 currentDialogAttribution:v7];

  [(WFOutOfProcessWorkflowController *)self reset];
}

- (void)controllerStateMachine:(id)a3 didRequestStoppingShortcutWithError:(id)a4
{
  v5 = a4;
  v6 = [(WFOutOfProcessWorkflowController *)self runner];
  [v6 stopWithError:v5];
}

- (id)runnerWithError:(id *)a3 synchronous:(BOOL)a4 reason:(id)a5
{
  v5 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v29 = a5;
  v7 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [v7 acquiringRunnerWithReason:v29];

  v8 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[WFOutOfProcessWorkflowController runnerWithError:synchronous:reason:]";
    _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_DEFAULT, "%s Creating new connection", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_serviceConnectionLock);
  v9 = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  os_unfair_lock_unlock(&self->_serviceConnectionLock);
  objc_initWeak(buf, v9);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__WFOutOfProcessWorkflowController_runnerWithError_synchronous_reason___block_invoke;
  aBlock[3] = &unk_1E7AFFA50;
  objc_copyWeak(&v36, buf);
  objc_copyWeak(&v37, &location);
  v10 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __71__WFOutOfProcessWorkflowController_runnerWithError_synchronous_reason___block_invoke_166;
  v32[3] = &unk_1E7AFFA50;
  objc_copyWeak(&v33, buf);
  objc_copyWeak(&v34, &location);
  v11 = _Block_copy(v32);
  os_unfair_lock_lock(&self->_serviceConnectionLock);
  if (v9)
  {
    [(WFRunnerConnection *)v9 setOnInterruption:v10];
    [(WFRunnerConnection *)v9 setOnInvalidation:v11];
  }

  else
  {
    v12 = [WFRunnerConnection alloc];
    v13 = [(WFOutOfProcessWorkflowController *)self runDescriptor];
    v14 = [(WFOutOfProcessWorkflowController *)self runningContext];
    v15 = [v14 locale];
    v16 = [v15 languageIdentifier];
    v9 = [(WFRunnerConnection *)v12 initWithRunDescriptor:v13 host:self onInterruption:v10 onInvalidation:v11 languageIdentifier:v16];

    [(WFOutOfProcessWorkflowController *)self setServiceConnection:v9];
  }

  v17 = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  if (v5)
  {
    v31 = 0;
    v18 = &v31;
    v19 = [v17 syncRunnerWithReason:v29 error:&v31];
  }

  else
  {
    v30 = 0;
    v18 = &v30;
    v19 = [v17 asyncRunnerWithReason:v29 error:&v30];
  }

  v20 = v19;
  v21 = *v18;

  os_unfair_lock_unlock(&self->_serviceConnectionLock);
  if (a3 && v21)
  {
    v22 = v21;
    v23 = objc_opt_new();
    [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696AA08]];

    [v23 setObject:@"connection bringup failed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:WFOutOfProcessWorkflowControllerErrorDomain code:2 userInfo:v23];

    v25 = v24;
    *a3 = v24;
  }

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v33);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v26 = *MEMORY[0x1E69E9840];

  return v20;
}

void __71__WFOutOfProcessWorkflowController_runnerWithError_synchronous_reason___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[WFOutOfProcessWorkflowController runnerWithError:synchronous:reason:]_block_invoke";
    v11 = 2112;
    v12 = WeakRetained;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_INFO, "%s connection was interrupted: %@", &v9, 0x16u);
  }

  v5 = [v3 stateMachine];
  v6 = [v3 localizedXPCInterruptionErrorDescription];
  v7 = [v3 currentDialogAttribution];
  [v5 handleXPCErrorWithDescription:v6 reason:@"XPC connection interrupted" currentDialogAttribution:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __71__WFOutOfProcessWorkflowController_runnerWithError_synchronous_reason___block_invoke_166(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[WFOutOfProcessWorkflowController runnerWithError:synchronous:reason:]_block_invoke";
    v11 = 2112;
    v12 = WeakRetained;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_INFO, "%s connection was invalidated: %@", &v9, 0x16u);
  }

  v5 = [v3 stateMachine];
  v6 = [v3 localizedXPCInterruptionErrorDescription];
  v7 = [v3 currentDialogAttribution];
  [v5 handleXPCErrorWithDescription:v6 reason:@"XPC connection invalidated" currentDialogAttribution:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)reindexToolKitDatabaseWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69C75D0] currentProcess];
  v9 = [v8 daemonJobLabel];
  v10 = [v9 isEqualToString:@"com.apple.siriactionsd"];

  if (v10)
  {
    v11 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [v11 handlingRequestWithReason:@"new incoming ToolKit indexing request"];

    v20 = 0;
    v12 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v20 reason:@"incoming ToolKit indexing request"];
    v13 = v20;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__WFOutOfProcessWorkflowController_reindexToolKitDatabaseWithRequest_completionHandler___block_invoke;
    v18[3] = &unk_1E7B02B00;
    v18[4] = self;
    v19 = v7;
    v14 = v13;
    [v12 reindexToolKitDatabaseWithRequest:v6 completionHandler:v18];
    runner = self->_runner;
    self->_runner = v12;
    v16 = v12;
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:WFOutOfProcessWorkflowControllerErrorDomain code:5 userInfo:MEMORY[0x1E695E0F8]];
    (*(v7 + 2))(v7, v17);
  }
}

void __88__WFOutOfProcessWorkflowController_reindexToolKitDatabaseWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) stateMachine];
  [v2 tearDownRunnerWithReason:@"indexing complete"];
}

- (void)forTestingOnly_simulateXPCInterruption
{
  v4 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  v3 = [(WFOutOfProcessWorkflowController *)self currentDialogAttribution];
  [v4 handleXPCErrorWithDescription:@"simulated XPC interruption" reason:@"simulating XPC interruption for testing" currentDialogAttribution:v3];
}

- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFOutOfProcessWorkflowController *)self runner];
  [v8 fetchDisplayValueForRequest:v7 completionHandler:v6];
}

- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(WFOutOfProcessWorkflowController *)self runner];
  [v17 performQuery:v16 inValueSet:v15 toolInvocation:v14 options:v13 completionHandler:v12];
}

- (void)runToolWithInvocation:(id)a3
{
  v4 = a3;
  v5 = [(WFOutOfProcessWorkflowController *)self runner];
  [v5 runToolWithInvocation:v4];
}

- (void)transformAction:(id)a3 completionHandler:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFOutOfProcessWorkflowController *)self runner];

  if (v8)
  {
    v9 = [(WFOutOfProcessWorkflowController *)self runner];
    [v9 transformAction:v6 completionHandler:v7];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A798];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"You must be running before transforming an action";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v10 errorWithDomain:v11 code:94 userInfo:v12];
    (*(v7 + 2))(v7, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFOutOfProcessWorkflowController *)self runner];

  if (v11)
  {
    v12 = [(WFOutOfProcessWorkflowController *)self runner];
    [v12 resolveDeferredValueFromEncodedStorage:v8 withResolutionRequest:v9 completionHandler:v10];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"You must be running before resolving a deferred value";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v16 = [v13 errorWithDomain:v14 code:94 userInfo:v15];
    (*(v10 + 2))(v10, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFOutOfProcessWorkflowController *)self runner];

  if (v11)
  {
    v12 = [(WFOutOfProcessWorkflowController *)self runner];
    [v12 extractVariableContentFromEncodedReference:v8 withResolutionRequest:v9 completionHandler:v10];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"You must be running before pulling content from a runtime";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v16 = [v13 errorWithDomain:v14 code:94 userInfo:v15];
    (*(v10 + 2))(v10, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)resolveContent:(id)a3 completionHandler:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFOutOfProcessWorkflowController *)self runner];

  if (v8)
  {
    v9 = [(WFOutOfProcessWorkflowController *)self runner];
    v10 = [WFAnyToolKitVariableContent objectWithVariableContent:v6];
    [v9 resolveContent:v10 completionHandler:v7];
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"You must be running before resolving content";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v11 errorWithDomain:v12 code:94 userInfo:v13];
    (*(v7 + 2))(v7, 0, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFOutOfProcessWorkflowController *)self runner];

  if (v8)
  {
    v9 = [(WFOutOfProcessWorkflowController *)self runner];
    v10 = [WFAnyToolKitVariableContent objectWithVariableContent:v6];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__WFOutOfProcessWorkflowController_injectContentAsVariable_completionHandler___block_invoke;
    v16[3] = &unk_1E7AFFE70;
    v17 = v7;
    [v9 injectContentAsVariable:v10 completionHandler:v16];

    v11 = v17;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"You must be running before pushing content into a runtime";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v12 errorWithDomain:v13 code:94 userInfo:v11];
    (*(v7 + 2))(v7, 0, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __78__WFOutOfProcessWorkflowController_injectContentAsVariable_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 propertyListObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)getCurrentProgressCompletedWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(WFOutOfProcessWorkflowController *)self runner];

  if (v4)
  {
    v5 = [(WFOutOfProcessWorkflowController *)self runner];
    [v5 getCurrentProgressCompletedWithCompletionHandler:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[WFOutOfProcessWorkflowController handleIncomingFileForRemoteExecutionWithURL:withIdentifier:]";
    v21 = 2112;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_DEFAULT, "%s Handling incoming file for remote execution with URL: %@, identifier: %{public}@", buf, 0x20u);
  }

  if (v7)
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFOutOfProcessWorkflowController.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"WFOutOfProcessWorkflowController.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_5:
  v10 = [(WFOutOfProcessWorkflowController *)self runner];

  if (v10)
  {
    v11 = [(WFOutOfProcessWorkflowController *)self runner];
    [v11 handleIncomingFileForRemoteExecutionWithURL:v7 withIdentifier:v8];
  }

  else
  {
    v18 = 0;
    v12 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v18 reason:@"handling incoming remote execution file"];
    v11 = v18;
    if (v12)
    {
      [v12 handleIncomingFileForRemoteExecutionWithURL:v7 withIdentifier:v8];
      v13 = v12;
      runner = self->_runner;
      self->_runner = v13;
    }

    else
    {
      runner = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(runner, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[WFOutOfProcessWorkflowController handleIncomingFileForRemoteExecutionWithURL:withIdentifier:]";
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_1B1DE3000, runner, OS_LOG_TYPE_ERROR, "%s Unable to connect to BackgroundShortcutRunner: %@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)pauseWorkflowAndWriteStateToDisk
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[WFOutOfProcessWorkflowController pauseWorkflowAndWriteStateToDisk]";
    _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_DEFAULT, "%s Requested pausing run & writing state to disk", &v8, 0xCu);
  }

  v4 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [v4 pauseAndWriteShortcutToDiskState];

  v5 = [(WFOutOfProcessWorkflowController *)self runner];
  v6 = [(WFOutOfProcessWorkflowController *)self runningContext];
  [v5 pauseWorkflowAndWriteStateToDisk:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRunning
{
  v2 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  v3 = [v2 isRunningShortcut];

  return v3;
}

- (void)updateRunViewSource:(id)a3
{
  v4 = a3;
  v5 = [(WFOutOfProcessWorkflowController *)self runner];
  [v5 updateRunViewSource:v4];
}

- (BOOL)resumeRunningWithRequest:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(WFOutOfProcessWorkflowController *)self runningContext];
  v10 = [v8 stringWithFormat:@"resuming run with request: %@, context: %@", v6, v9];
  [v7 handlingRequestWithReason:v10];

  v25 = 0;
  v11 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v25 reason:@"incoming resume request"];
  v12 = v25;
  if (v11)
  {
    v13 = [v6 presentationMode];
    v14 = [(WFOutOfProcessWorkflowController *)self runningContext];
    [v14 setPresentationMode:v13];

    v15 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(WFOutOfProcessWorkflowController *)self runningContext];
      *buf = 136315394;
      v27 = "[WFOutOfProcessWorkflowController resumeRunningWithRequest:error:]";
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1B1DE3000, v15, OS_LOG_TYPE_DEFAULT, "%s Resuming a run for context: %@", buf, 0x16u);
    }

    v17 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [v17 startRunningShortcutWithReason:@"resume shortcut request"];

    v18 = [(WFOutOfProcessWorkflowController *)self runningContext];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__WFOutOfProcessWorkflowController_resumeRunningWithRequest_error___block_invoke;
    v24[3] = &unk_1E7AFFA28;
    v24[4] = self;
    [v11 resumeRunningFromContext:v18 withRequest:v6 completion:v24];

    objc_storeStrong(&self->_runner, v11);
  }

  else
  {
    v19 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[WFOutOfProcessWorkflowController resumeRunningWithRequest:error:]";
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_1B1DE3000, v19, OS_LOG_TYPE_ERROR, "%s Unable to connect to BackgroundShortcutRunner: %@", buf, 0x16u);
    }

    if (a4)
    {
      v20 = v12;
      *a4 = v12;
    }

    v21 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [v21 exitWithReason:@"unable to get runner to resume running"];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11 != 0;
}

void __67__WFOutOfProcessWorkflowController_resumeRunningWithRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stateMachine];
  [v4 finishRunningWithReason:@"resumed run finished" result:v3];
}

- (BOOL)runActionWithRunRequestData:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [v7 handlingRequestWithReason:@"incoming remote execution request"];

  v19 = 0;
  v8 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v19 reason:@"incoming remote execution request"];
  v9 = v19;
  v10 = getWFVoiceShortcutClientLogObject();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[WFOutOfProcessWorkflowController runActionWithRunRequestData:error:]";
      _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_DEFAULT, "%s Starting run for remote execution request", buf, 0xCu);
    }

    v12 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [v12 startRunningShortcutWithReason:@"incoming remote execution request"];

    v13 = [(WFOutOfProcessWorkflowController *)self runningContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__WFOutOfProcessWorkflowController_runActionWithRunRequestData_error___block_invoke;
    v18[3] = &unk_1E7AFFA28;
    v18[4] = self;
    [v8 runActionFromRunRequestData:v6 runningContext:v13 completion:v18];

    objc_storeStrong(&self->_runner, v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[WFOutOfProcessWorkflowController runActionWithRunRequestData:error:]";
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_ERROR, "%s Unable to connect to BackgroundShortcutRunner: %@", buf, 0x16u);
    }

    if (a4)
    {
      v14 = v9;
      *a4 = v9;
    }

    v15 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [v15 exitWithReason:@"unable to get runner to run remote execution request"];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

void __70__WFOutOfProcessWorkflowController_runActionWithRunRequestData_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stateMachine];
  [v4 finishRunningWithReason:@"remote execution finished" result:v3];
}

- (BOOL)runWorkflowWithDescriptor:(id)a3 request:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(WFOutOfProcessWorkflowController *)self stateMachine];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"incoming run request: %@", v9];
  [v10 handlingRequestWithReason:v11];

  v12 = [v9 automationType];
  v13 = [(WFOutOfProcessWorkflowController *)self runningContext];
  [v13 setAutomationType:v12];

  [(WFOutOfProcessWorkflowController *)self setRunRequest:v9];
  [(WFOutOfProcessWorkflowController *)self setRunDescriptor:v8];
  v14 = [v9 presentationMode];
  v15 = [(WFOutOfProcessWorkflowController *)self runningContext];
  [v15 setPresentationMode:v14];

  v16 = os_log_create("com.apple.shortcuts", "SystemSignpostIntervals");
  v17 = [(WFOutOfProcessWorkflowController *)self runningContext];
  v18 = [v17 identifier];
  v19 = [v18 hash];

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v19, "RunnerRunRequest", "", buf, 2u);
  }

  v20 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(WFOutOfProcessWorkflowController *)self environment];
    *buf = 136315650;
    v35 = "[WFOutOfProcessWorkflowController runWorkflowWithDescriptor:request:error:]";
    v36 = 2114;
    v37 = v9;
    v38 = 2048;
    v39 = v21;
    _os_log_impl(&dword_1B1DE3000, v20, OS_LOG_TYPE_DEFAULT, "%s Getting runner to run workflow with request: (%{public}@), environment (%ld)", buf, 0x20u);
  }

  v33 = 0;
  v22 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v33 reason:@"incoming run request"];
  v23 = v33;
  if (v22)
  {
    v24 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [v24 startRunningShortcutWithReason:@"run workflow"];

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFOutOfProcessWorkflowController environment](self, "environment")}];
    v26 = [(WFOutOfProcessWorkflowController *)self runningContext];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __76__WFOutOfProcessWorkflowController_runWorkflowWithDescriptor_request_error___block_invoke;
    v32[3] = &unk_1E7AFFA28;
    v32[4] = self;
    [v22 runWorkflowWithDescriptor:v8 request:v9 inEnvironment:v25 runningContext:v26 completion:v32];

    objc_storeStrong(&self->_runner, v22);
  }

  else
  {
    v27 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[WFOutOfProcessWorkflowController runWorkflowWithDescriptor:request:error:]";
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_1B1DE3000, v27, OS_LOG_TYPE_ERROR, "%s Unable to connect to BackgroundShortcutRunner: %@", buf, 0x16u);
    }

    if (a5)
    {
      v28 = v23;
      *a5 = v23;
    }

    v29 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [v29 exitWithReason:@"unable to get runner to run workflow"];
  }

  v30 = *MEMORY[0x1E69E9840];
  return v22 != 0;
}

void __76__WFOutOfProcessWorkflowController_runWorkflowWithDescriptor_request_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stateMachine];
  [v4 finishRunningWithReason:@"runner callback" result:v3];
}

- (WFOutOfProcessWorkflowController)initWithEnvironment:(int64_t)a3 runningContext:(id)a4 presentationMode:(int64_t)a5 existingConnection:(id)a6
{
  v10 = a4;
  v11 = a6;
  v23.receiver = self;
  v23.super_class = WFOutOfProcessWorkflowController;
  v12 = [(WFOutOfProcessWorkflowController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->_environment = a3;
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = [[WFWorkflowRunningContext alloc] initWithWorkflowIdentifier:0];
    }

    runningContext = v13->_runningContext;
    v13->_runningContext = v14;

    v13->_presentationMode = a5;
    v16 = objc_alloc_init(WFSandboxExtensionManager);
    sandboxExtensionManager = v13->_sandboxExtensionManager;
    v13->_sandboxExtensionManager = v16;

    objc_storeStrong(&v13->_serviceConnection, a6);
    v13->_serviceConnectionLock._os_unfair_lock_opaque = 0;
    v18 = objc_alloc_init(WFOutOfProcessWorkflowControllerStateMachine);
    [(WFOutOfProcessWorkflowControllerStateMachine *)v18 setDelegate:v13];
    stateMachine = v13->_stateMachine;
    v13->_stateMachine = v18;
    v20 = v18;

    [(WFOutOfProcessWorkflowControllerStateMachine *)v20 idleStateWithReason:@"initialized"];
    v21 = v13;
  }

  return v13;
}

@end