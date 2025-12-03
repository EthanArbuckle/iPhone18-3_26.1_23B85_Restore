@interface WFOutOfProcessWorkflowController
- (BOOL)isRunning;
- (BOOL)resumeRunningWithRequest:(id)request error:(id *)error;
- (BOOL)runActionWithRunRequestData:(id)data error:(id *)error;
- (BOOL)runWorkflowWithDescriptor:(id)descriptor request:(id)request error:(id *)error;
- (WFOutOfProcessWorkflowController)initWithEnvironment:(int64_t)environment runningContext:(id)context presentationMode:(int64_t)mode existingConnection:(id)connection;
- (WFOutOfProcessWorkflowControllerDelegate)delegate;
- (id)localizedTimeoutErrorDescription;
- (id)localizedXPCInterruptionErrorDescription;
- (id)runnerWithError:(id *)error synchronous:(BOOL)synchronous reason:(id)reason;
- (void)actionWithUUID:(id)d didFinishRunningWithError:(id)error serializedVariable:(id)variable executionResultMetadata:(id)metadata;
- (void)controllerStateMachine:(id)machine didFinishRunningShortcutWithResult:(id)result;
- (void)controllerStateMachine:(id)machine didRequestStoppingShortcutWithError:(id)error;
- (void)controllerStateMachine:(id)machine shouldNotifyDelegateWithResult:(id)result currentDialogAttribution:(id)attribution;
- (void)controllerStateMachineDidRequestRunnerTearDown:(id)down;
- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler;
- (void)forTestingOnly_simulateXPCInterruption;
- (void)getCurrentProgressCompletedWithCompletionHandler:(id)handler;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier;
- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler;
- (void)pauseWorkflowAndWriteStateToDisk;
- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler;
- (void)presenterRequestedUpdatedRunViewSource:(id)source completionHandler:(id)handler;
- (void)reindexToolKitDatabaseWithRequest:(id)request completionHandler:(id)handler;
- (void)reset;
- (void)resolveContent:(id)content completionHandler:(id)handler;
- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)runToolWithInvocation:(id)invocation;
- (void)runnerDidPunchToShortcutsJr;
- (void)runnerWillExit;
- (void)stop;
- (void)transformAction:(id)action completionHandler:(id)handler;
- (void)updateRunViewSource:(id)source;
- (void)workflowDidPause;
- (void)workflowDidStartRunning:(id)running isAutomation:(id)automation dialogAttribution:(id)attribution;
@end

@implementation WFOutOfProcessWorkflowController

- (void)stop
{
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [stateMachine stopShortcutWithError:0 reason:@"-stop was called"];
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
  serviceConnection = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  [serviceConnection setOnInterruption:0];

  serviceConnection2 = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  [serviceConnection2 setOnInvalidation:0];

  os_unfair_lock_unlock(&self->_serviceConnectionLock);
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [stateMachine handleRunnerWillExit];

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
    currentWorkflow = [(WFOutOfProcessWorkflowController *)self currentWorkflow];
    name = [currentWorkflow name];
    v6 = [name length];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = WFLocalizedString(@"The shortcut “%@” took too long to run.");
      currentWorkflow2 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];
      name2 = [currentWorkflow2 name];
      v11 = [v7 localizedStringWithFormat:v8, name2];

      goto LABEL_15;
    }

    currentWorkflow3 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];

    if (currentWorkflow3)
    {
      goto LABEL_6;
    }

    runRequest = [(WFOutOfProcessWorkflowController *)self runRequest];
    if (runRequest)
    {
      objc_opt_class();
      v14 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v14 = 1;
    }

    runRequest2 = [(WFOutOfProcessWorkflowController *)self runRequest];
    runSource = [runRequest2 runSource];
    IsSuggestion = WFRunSourceIsSuggestion(runSource);

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
    currentWorkflow = [(WFOutOfProcessWorkflowController *)self currentWorkflow];
    name = [currentWorkflow name];
    v6 = [name length];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = WFLocalizedString(@"There was a problem running the shortcut “%@”.");
      currentWorkflow2 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];
      name2 = [currentWorkflow2 name];
      v11 = [v7 localizedStringWithFormat:v8, name2];

      goto LABEL_15;
    }

    currentWorkflow3 = [(WFOutOfProcessWorkflowController *)self currentWorkflow];

    if (currentWorkflow3)
    {
      goto LABEL_6;
    }

    runRequest = [(WFOutOfProcessWorkflowController *)self runRequest];
    if (runRequest)
    {
      objc_opt_class();
      v14 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v14 = 1;
    }

    runRequest2 = [(WFOutOfProcessWorkflowController *)self runRequest];
    runSource = [runRequest2 runSource];
    IsSuggestion = WFRunSourceIsSuggestion(runSource);

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
  runRequest = [(WFOutOfProcessWorkflowController *)self runRequest];
  if (runRequest && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    runningContext = [(WFOutOfProcessWorkflowController *)self runningContext];
    [runningContext setAllowsDialogNotifications:1];

    [(WFOutOfProcessWorkflowController *)self setPresentationMode:3];
  }

  else
  {

    runRequest = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(runRequest, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "[WFOutOfProcessWorkflowController runnerDidPunchToShortcutsJr]";
      _os_log_impl(&dword_1B1DE3000, runRequest, OS_LOG_TYPE_FAULT, "%s Attempted to perform punch out for non-Siri request", &v6, 0xCu);
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

  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [stateMachine pauseAndWriteShortcutToDiskState];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)actionWithUUID:(id)d didFinishRunningWithError:(id)error serializedVariable:(id)variable executionResultMetadata:(id)metadata
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  variableCopy = variable;
  metadataCopy = metadata;
  v14 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(WFOutOfProcessWorkflowController *)self delegate];
    v21 = 136315906;
    v22 = "[WFOutOfProcessWorkflowController actionWithUUID:didFinishRunningWithError:serializedVariable:executionResultMetadata:]";
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = delegate;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEFAULT, "%s Host received finish for action (%@), delegate: %@, error: %@", &v21, 0x2Au);
  }

  delegate2 = [(WFOutOfProcessWorkflowController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate3 = [(WFOutOfProcessWorkflowController *)self delegate];
    propertyListObject = [variableCopy propertyListObject];
    [delegate3 outOfProcessWorkflowController:self actionWithUUID:dCopy didFinishRunningWithError:errorCopy serializedVariable:propertyListObject executionResultMetadata:metadataCopy];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)workflowDidStartRunning:(id)running isAutomation:(id)automation dialogAttribution:(id)attribution
{
  v19 = *MEMORY[0x1E69E9840];
  runningCopy = running;
  attributionCopy = attribution;
  automationCopy = automation;
  [(WFOutOfProcessWorkflowController *)self setCurrentWorkflow:runningCopy];
  bOOLValue = [automationCopy BOOLValue];

  [(WFOutOfProcessWorkflowController *)self setIsAutomation:bOOLValue];
  [(WFOutOfProcessWorkflowController *)self setCurrentDialogAttribution:attributionCopy];
  v12 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[WFOutOfProcessWorkflowController workflowDidStartRunning:isAutomation:dialogAttribution:]";
    _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_DEBUG, "%s Background runner started running workflow", &v17, 0xCu);
  }

  delegate = [(WFOutOfProcessWorkflowController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(WFOutOfProcessWorkflowController *)self delegate];
    [delegate2 outOfProcessWorkflowController:self didStartFromWorkflowReference:runningCopy dialogAttribution:attributionCopy];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)presenterRequestedUpdatedRunViewSource:(id)source completionHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  delegate = [(WFOutOfProcessWorkflowController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WFOutOfProcessWorkflowController *)self delegate];
    [delegate2 outOfProcessWorkflowController:self didRequestUpdatedRunViewSource:sourceCopy completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)controllerStateMachineDidRequestRunnerTearDown:(id)down
{
  os_unfair_lock_lock(&self->_serviceConnectionLock);
  serviceConnection = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  [serviceConnection invalidate];

  [(WFOutOfProcessWorkflowController *)self setServiceConnection:0];
  os_unfair_lock_unlock(&self->_serviceConnectionLock);
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [stateMachine exitWithReason:@"runner is torn down"];
}

- (void)controllerStateMachine:(id)machine shouldNotifyDelegateWithResult:(id)result currentDialogAttribution:(id)attribution
{
  v26 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  attributionCopy = attribution;
  runRequest = [(WFOutOfProcessWorkflowController *)self runRequest];
  if ([runRequest isStepwise])
  {
    error = [resultCopy error];

    if (!error)
    {
      delegate3 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(delegate3, OS_LOG_TYPE_DEFAULT))
      {
        delegate = [(WFOutOfProcessWorkflowController *)self delegate];
        v20 = 136315650;
        v21 = "[WFOutOfProcessWorkflowController controllerStateMachine:shouldNotifyDelegateWithResult:currentDialogAttribution:]";
        v22 = 2112;
        v23 = resultCopy;
        v24 = 2112;
        v25 = delegate;
        _os_log_impl(&dword_1B1DE3000, delegate3, OS_LOG_TYPE_DEFAULT, "%s Workflow stepped successfully (%@) but the run request is stepwise, not notifying the delegate %@", &v20, 0x20u);
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
    delegate2 = [(WFOutOfProcessWorkflowController *)self delegate];
    v20 = 136315650;
    v21 = "[WFOutOfProcessWorkflowController controllerStateMachine:shouldNotifyDelegateWithResult:currentDialogAttribution:]";
    v22 = 2112;
    v23 = resultCopy;
    v24 = 2112;
    v25 = delegate2;
    _os_log_impl(&dword_1B1DE3000, v13, OS_LOG_TYPE_DEFAULT, "%s Reporting finish with result (%@) to the delegate (%@)", &v20, 0x20u);
  }

  serviceConnection = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  targetType = [serviceConnection targetType];

  if (targetType)
  {
    v17 = 2 * (targetType == 1);
  }

  else
  {
    v17 = 1;
  }

  delegate3 = [(WFOutOfProcessWorkflowController *)self delegate];
  [delegate3 outOfProcessWorkflowController:self didFinishWithResult:resultCopy dialogAttribution:attributionCopy runResidency:v17];
LABEL_12:

  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [stateMachine tearDownRunnerWithReason:{@"finished processing result, and notifying the delegate if applicable, done"}];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)controllerStateMachine:(id)machine didFinishRunningShortcutWithResult:(id)result
{
  resultCopy = result;
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  currentDialogAttribution = [(WFOutOfProcessWorkflowController *)self currentDialogAttribution];
  [stateMachine notifyDelegateWithReason:@"workflow did finish running" result:resultCopy currentDialogAttribution:currentDialogAttribution];

  [(WFOutOfProcessWorkflowController *)self reset];
}

- (void)controllerStateMachine:(id)machine didRequestStoppingShortcutWithError:(id)error
{
  errorCopy = error;
  runner = [(WFOutOfProcessWorkflowController *)self runner];
  [runner stopWithError:errorCopy];
}

- (id)runnerWithError:(id *)error synchronous:(BOOL)synchronous reason:(id)reason
{
  synchronousCopy = synchronous;
  v41 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [stateMachine acquiringRunnerWithReason:reasonCopy];

  v8 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[WFOutOfProcessWorkflowController runnerWithError:synchronous:reason:]";
    _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_DEFAULT, "%s Creating new connection", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_serviceConnectionLock);
  serviceConnection = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  os_unfair_lock_unlock(&self->_serviceConnectionLock);
  objc_initWeak(buf, serviceConnection);
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
  if (serviceConnection)
  {
    [(WFRunnerConnection *)serviceConnection setOnInterruption:v10];
    [(WFRunnerConnection *)serviceConnection setOnInvalidation:v11];
  }

  else
  {
    v12 = [WFRunnerConnection alloc];
    runDescriptor = [(WFOutOfProcessWorkflowController *)self runDescriptor];
    runningContext = [(WFOutOfProcessWorkflowController *)self runningContext];
    locale = [runningContext locale];
    languageIdentifier = [locale languageIdentifier];
    serviceConnection = [(WFRunnerConnection *)v12 initWithRunDescriptor:runDescriptor host:self onInterruption:v10 onInvalidation:v11 languageIdentifier:languageIdentifier];

    [(WFOutOfProcessWorkflowController *)self setServiceConnection:serviceConnection];
  }

  serviceConnection2 = [(WFOutOfProcessWorkflowController *)self serviceConnection];
  if (synchronousCopy)
  {
    v31 = 0;
    v18 = &v31;
    v19 = [serviceConnection2 syncRunnerWithReason:reasonCopy error:&v31];
  }

  else
  {
    v30 = 0;
    v18 = &v30;
    v19 = [serviceConnection2 asyncRunnerWithReason:reasonCopy error:&v30];
  }

  v20 = v19;
  v21 = *v18;

  os_unfair_lock_unlock(&self->_serviceConnectionLock);
  if (error && v21)
  {
    v22 = v21;
    v23 = objc_opt_new();
    [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696AA08]];

    [v23 setObject:@"connection bringup failed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:WFOutOfProcessWorkflowControllerErrorDomain code:2 userInfo:v23];

    v25 = v24;
    *error = v24;
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

- (void)reindexToolKitDatabaseWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
  daemonJobLabel = [currentProcess daemonJobLabel];
  v10 = [daemonJobLabel isEqualToString:@"com.apple.siriactionsd"];

  if (v10)
  {
    stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [stateMachine handlingRequestWithReason:@"new incoming ToolKit indexing request"];

    v20 = 0;
    v12 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v20 reason:@"incoming ToolKit indexing request"];
    v13 = v20;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__WFOutOfProcessWorkflowController_reindexToolKitDatabaseWithRequest_completionHandler___block_invoke;
    v18[3] = &unk_1E7B02B00;
    v18[4] = self;
    v19 = handlerCopy;
    v14 = v13;
    [v12 reindexToolKitDatabaseWithRequest:requestCopy completionHandler:v18];
    runner = self->_runner;
    self->_runner = v12;
    v16 = v12;
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:WFOutOfProcessWorkflowControllerErrorDomain code:5 userInfo:MEMORY[0x1E695E0F8]];
    (*(handlerCopy + 2))(handlerCopy, v17);
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
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  currentDialogAttribution = [(WFOutOfProcessWorkflowController *)self currentDialogAttribution];
  [stateMachine handleXPCErrorWithDescription:@"simulated XPC interruption" reason:@"simulating XPC interruption for testing" currentDialogAttribution:currentDialogAttribution];
}

- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  runner = [(WFOutOfProcessWorkflowController *)self runner];
  [runner fetchDisplayValueForRequest:requestCopy completionHandler:handlerCopy];
}

- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  invocationCopy = invocation;
  setCopy = set;
  queryCopy = query;
  runner = [(WFOutOfProcessWorkflowController *)self runner];
  [runner performQuery:queryCopy inValueSet:setCopy toolInvocation:invocationCopy options:optionsCopy completionHandler:handlerCopy];
}

- (void)runToolWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  runner = [(WFOutOfProcessWorkflowController *)self runner];
  [runner runToolWithInvocation:invocationCopy];
}

- (void)transformAction:(id)action completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  runner = [(WFOutOfProcessWorkflowController *)self runner];

  if (runner)
  {
    runner2 = [(WFOutOfProcessWorkflowController *)self runner];
    [runner2 transformAction:actionCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A798];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"You must be running before transforming an action";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v10 errorWithDomain:v11 code:94 userInfo:v12];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  requestCopy = request;
  handlerCopy = handler;
  runner = [(WFOutOfProcessWorkflowController *)self runner];

  if (runner)
  {
    runner2 = [(WFOutOfProcessWorkflowController *)self runner];
    [runner2 resolveDeferredValueFromEncodedStorage:storageCopy withResolutionRequest:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"You must be running before resolving a deferred value";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v16 = [v13 errorWithDomain:v14 code:94 userInfo:v15];
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  requestCopy = request;
  handlerCopy = handler;
  runner = [(WFOutOfProcessWorkflowController *)self runner];

  if (runner)
  {
    runner2 = [(WFOutOfProcessWorkflowController *)self runner];
    [runner2 extractVariableContentFromEncodedReference:referenceCopy withResolutionRequest:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"You must be running before pulling content from a runtime";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v16 = [v13 errorWithDomain:v14 code:94 userInfo:v15];
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)resolveContent:(id)content completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  handlerCopy = handler;
  runner = [(WFOutOfProcessWorkflowController *)self runner];

  if (runner)
  {
    runner2 = [(WFOutOfProcessWorkflowController *)self runner];
    v10 = [WFAnyToolKitVariableContent objectWithVariableContent:contentCopy];
    [runner2 resolveContent:v10 completionHandler:handlerCopy];
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"You must be running before resolving content";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v11 errorWithDomain:v12 code:94 userInfo:v13];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  variableCopy = variable;
  handlerCopy = handler;
  runner = [(WFOutOfProcessWorkflowController *)self runner];

  if (runner)
  {
    runner2 = [(WFOutOfProcessWorkflowController *)self runner];
    v10 = [WFAnyToolKitVariableContent objectWithVariableContent:variableCopy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__WFOutOfProcessWorkflowController_injectContentAsVariable_completionHandler___block_invoke;
    v16[3] = &unk_1E7AFFE70;
    v17 = handlerCopy;
    [runner2 injectContentAsVariable:v10 completionHandler:v16];

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
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
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

- (void)getCurrentProgressCompletedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  runner = [(WFOutOfProcessWorkflowController *)self runner];

  if (runner)
  {
    runner2 = [(WFOutOfProcessWorkflowController *)self runner];
    [runner2 getCurrentProgressCompletedWithCompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  v9 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[WFOutOfProcessWorkflowController handleIncomingFileForRemoteExecutionWithURL:withIdentifier:]";
    v21 = 2112;
    v22 = lCopy;
    v23 = 2114;
    v24 = identifierCopy;
    _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_DEFAULT, "%s Handling incoming file for remote execution with URL: %@, identifier: %{public}@", buf, 0x20u);
  }

  if (lCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFOutOfProcessWorkflowController.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (identifierCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFOutOfProcessWorkflowController.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_5:
  runner = [(WFOutOfProcessWorkflowController *)self runner];

  if (runner)
  {
    runner2 = [(WFOutOfProcessWorkflowController *)self runner];
    [runner2 handleIncomingFileForRemoteExecutionWithURL:lCopy withIdentifier:identifierCopy];
  }

  else
  {
    v18 = 0;
    v12 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v18 reason:@"handling incoming remote execution file"];
    runner2 = v18;
    if (v12)
    {
      [v12 handleIncomingFileForRemoteExecutionWithURL:lCopy withIdentifier:identifierCopy];
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
        v22 = runner2;
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

  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [stateMachine pauseAndWriteShortcutToDiskState];

  runner = [(WFOutOfProcessWorkflowController *)self runner];
  runningContext = [(WFOutOfProcessWorkflowController *)self runningContext];
  [runner pauseWorkflowAndWriteStateToDisk:runningContext];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRunning
{
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  isRunningShortcut = [stateMachine isRunningShortcut];

  return isRunningShortcut;
}

- (void)updateRunViewSource:(id)source
{
  sourceCopy = source;
  runner = [(WFOutOfProcessWorkflowController *)self runner];
  [runner updateRunViewSource:sourceCopy];
}

- (BOOL)resumeRunningWithRequest:(id)request error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  v8 = MEMORY[0x1E696AEC0];
  runningContext = [(WFOutOfProcessWorkflowController *)self runningContext];
  v10 = [v8 stringWithFormat:@"resuming run with request: %@, context: %@", requestCopy, runningContext];
  [stateMachine handlingRequestWithReason:v10];

  v25 = 0;
  v11 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v25 reason:@"incoming resume request"];
  v12 = v25;
  if (v11)
  {
    presentationMode = [requestCopy presentationMode];
    runningContext2 = [(WFOutOfProcessWorkflowController *)self runningContext];
    [runningContext2 setPresentationMode:presentationMode];

    v15 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      runningContext3 = [(WFOutOfProcessWorkflowController *)self runningContext];
      *buf = 136315394;
      v27 = "[WFOutOfProcessWorkflowController resumeRunningWithRequest:error:]";
      v28 = 2112;
      v29 = runningContext3;
      _os_log_impl(&dword_1B1DE3000, v15, OS_LOG_TYPE_DEFAULT, "%s Resuming a run for context: %@", buf, 0x16u);
    }

    stateMachine2 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [stateMachine2 startRunningShortcutWithReason:@"resume shortcut request"];

    runningContext4 = [(WFOutOfProcessWorkflowController *)self runningContext];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__WFOutOfProcessWorkflowController_resumeRunningWithRequest_error___block_invoke;
    v24[3] = &unk_1E7AFFA28;
    v24[4] = self;
    [v11 resumeRunningFromContext:runningContext4 withRequest:requestCopy completion:v24];

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

    if (error)
    {
      v20 = v12;
      *error = v12;
    }

    stateMachine3 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [stateMachine3 exitWithReason:@"unable to get runner to resume running"];
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

- (BOOL)runActionWithRunRequestData:(id)data error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  [stateMachine handlingRequestWithReason:@"incoming remote execution request"];

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

    stateMachine2 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [stateMachine2 startRunningShortcutWithReason:@"incoming remote execution request"];

    runningContext = [(WFOutOfProcessWorkflowController *)self runningContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__WFOutOfProcessWorkflowController_runActionWithRunRequestData_error___block_invoke;
    v18[3] = &unk_1E7AFFA28;
    v18[4] = self;
    [v8 runActionFromRunRequestData:dataCopy runningContext:runningContext completion:v18];

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

    if (error)
    {
      v14 = v9;
      *error = v9;
    }

    stateMachine3 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [stateMachine3 exitWithReason:@"unable to get runner to run remote execution request"];
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

- (BOOL)runWorkflowWithDescriptor:(id)descriptor request:(id)request error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  requestCopy = request;
  stateMachine = [(WFOutOfProcessWorkflowController *)self stateMachine];
  requestCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"incoming run request: %@", requestCopy];
  [stateMachine handlingRequestWithReason:requestCopy];

  automationType = [requestCopy automationType];
  runningContext = [(WFOutOfProcessWorkflowController *)self runningContext];
  [runningContext setAutomationType:automationType];

  [(WFOutOfProcessWorkflowController *)self setRunRequest:requestCopy];
  [(WFOutOfProcessWorkflowController *)self setRunDescriptor:descriptorCopy];
  presentationMode = [requestCopy presentationMode];
  runningContext2 = [(WFOutOfProcessWorkflowController *)self runningContext];
  [runningContext2 setPresentationMode:presentationMode];

  v16 = os_log_create("com.apple.shortcuts", "SystemSignpostIntervals");
  runningContext3 = [(WFOutOfProcessWorkflowController *)self runningContext];
  identifier = [runningContext3 identifier];
  v19 = [identifier hash];

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v19, "RunnerRunRequest", "", buf, 2u);
  }

  v20 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    environment = [(WFOutOfProcessWorkflowController *)self environment];
    *buf = 136315650;
    v35 = "[WFOutOfProcessWorkflowController runWorkflowWithDescriptor:request:error:]";
    v36 = 2114;
    v37 = requestCopy;
    v38 = 2048;
    v39 = environment;
    _os_log_impl(&dword_1B1DE3000, v20, OS_LOG_TYPE_DEFAULT, "%s Getting runner to run workflow with request: (%{public}@), environment (%ld)", buf, 0x20u);
  }

  v33 = 0;
  v22 = [(WFOutOfProcessWorkflowController *)self asynchronousRunnerWithError:&v33 reason:@"incoming run request"];
  v23 = v33;
  if (v22)
  {
    stateMachine2 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [stateMachine2 startRunningShortcutWithReason:@"run workflow"];

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFOutOfProcessWorkflowController environment](self, "environment")}];
    runningContext4 = [(WFOutOfProcessWorkflowController *)self runningContext];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __76__WFOutOfProcessWorkflowController_runWorkflowWithDescriptor_request_error___block_invoke;
    v32[3] = &unk_1E7AFFA28;
    v32[4] = self;
    [v22 runWorkflowWithDescriptor:descriptorCopy request:requestCopy inEnvironment:v25 runningContext:runningContext4 completion:v32];

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

    if (error)
    {
      v28 = v23;
      *error = v23;
    }

    stateMachine3 = [(WFOutOfProcessWorkflowController *)self stateMachine];
    [stateMachine3 exitWithReason:@"unable to get runner to run workflow"];
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

- (WFOutOfProcessWorkflowController)initWithEnvironment:(int64_t)environment runningContext:(id)context presentationMode:(int64_t)mode existingConnection:(id)connection
{
  contextCopy = context;
  connectionCopy = connection;
  v23.receiver = self;
  v23.super_class = WFOutOfProcessWorkflowController;
  v12 = [(WFOutOfProcessWorkflowController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->_environment = environment;
    if (contextCopy)
    {
      v14 = contextCopy;
    }

    else
    {
      v14 = [[WFWorkflowRunningContext alloc] initWithWorkflowIdentifier:0];
    }

    runningContext = v13->_runningContext;
    v13->_runningContext = v14;

    v13->_presentationMode = mode;
    v16 = objc_alloc_init(WFSandboxExtensionManager);
    sandboxExtensionManager = v13->_sandboxExtensionManager;
    v13->_sandboxExtensionManager = v16;

    objc_storeStrong(&v13->_serviceConnection, connection);
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