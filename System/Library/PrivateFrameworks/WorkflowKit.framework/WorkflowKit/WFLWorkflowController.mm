@interface WFLWorkflowController
- (BOOL)isRunning;
- (BOOL)openInteractionInApp:(id)app completionHandler:(id)handler;
- (BOOL)openUserActivity:(id)activity bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (BOOL)workflowController:(id)controller handleUnsupportedEnvironmentForAction:(id)action currentState:(id)state completionHandler:(id)handler;
- (NSProgress)progress;
- (WFLWorkflowController)initWithWorkflow:(id)workflow;
- (WFLWorkflowControllerDelegate)delegate;
- (WFWorkflow)workflow;
- (id)runSource;
- (void)action:(id)action provideInputForParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts completionHandler:(id)handler;
- (void)configureIntent:(id)intent;
- (void)launchAppWithCompletionHandler:(id)handler;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)runWithInput:(id)input;
- (void)showHandleInteraction:(id)interaction prompt:(id)prompt completionHandler:(id)handler;
- (void)stop;
- (void)workflowController:(id)controller didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled;
- (void)workflowController:(id)controller didRunAction:(id)action error:(id)error;
- (void)workflowController:(id)controller prepareToRunAction:(id)action withInput:(id)input completionHandler:(id)handler;
- (void)workflowControllerWillRun:(id)run;
@end

@implementation WFLWorkflowController

- (WFLWorkflowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)action:(id)action provideInputForParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v8 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315138;
    v11 = "[WFLWorkflowController action:provideInputForParameters:withDefaultStates:prompts:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s provideInputForParameters should not be called", &v10, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)configureIntent:(id)intent
{
  intentCopy = intent;
  [intentCopy _setExecutionContext:{-[WFLWorkflowController executionContext](self, "executionContext")}];
}

- (BOOL)openUserActivity:(id)activity bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  if (handler)
  {
    v6 = MEMORY[0x1E696ABC0];
    handlerCopy = handler;
    userCancelledError = [v6 userCancelledError];
    (*(handler + 2))(handlerCopy, 0, userCancelledError);
  }

  return 1;
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (BOOL)openInteractionInApp:(id)app completionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(WFLWorkflowController *)self delegate];
  controller = [(WFLWorkflowController *)self controller];
  currentAction = [controller currentAction];

  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate workflowController:self userInterfaceForRunningAction:currentAction];
  }

  else
  {
    v9 = 0;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __64__WFLWorkflowController_openInteractionInApp_completionHandler___block_invoke;
  v17 = &unk_1E837D770;
  v10 = handlerCopy;
  v19 = v10;
  v11 = currentAction;
  v18 = v11;
  v12 = _Block_copy(&v14);
  if (objc_opt_respondsToSelector())
  {
    [v9 action:v11 requiresContinuingInAppWithProceedHandler:{v12, v14, v15, v16, v17}];
  }

  else
  {
    v12[2](v12, 1);
  }

  return 1;
}

void __64__WFLWorkflowController_openInteractionInApp_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v9 = WFEnforceClass_6231(v3, v4);
    v5 = [v9 connection];
    v6 = [v5 appProxy];
    [v6 launchAppInBackground:0 completionHandler:*(a1 + 40)];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

- (void)showHandleInteraction:(id)interaction prompt:(id)prompt completionHandler:(id)handler
{
  handlerCopy = handler;
  [(WFLWorkflowController *)self setLastInteraction:interaction];
  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)workflowController:(id)controller handleUnsupportedEnvironmentForAction:(id)action currentState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  stateCopy = state;
  actionCopy = action;
  runSource = [controller runSource];
  LOBYTE(self) = WFRemoteExecuteActionIfApplicable(actionCopy, stateCopy, self, self, runSource, handlerCopy);

  return self;
}

- (void)workflowController:(id)controller didRunAction:(id)action error:(id)error
{
  actionCopy = action;
  delegate = [(WFLWorkflowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate workflowController:self didRunAction:actionCopy];
  }
}

- (void)workflowController:(id)controller prepareToRunAction:(id)action withInput:(id)input completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  delegate = [(WFLWorkflowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate workflowController:self willRunAction:actionCopy withInput:0 proceedHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)workflowController:(id)controller didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v26[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  delegate = [(WFLWorkflowController *)self delegate];
  if (errorCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  workflow = [(WFLWorkflowController *)self workflow];
  database = [workflow database];
  runEvent = [(WFLWorkflowController *)self runEvent];
  [database setOutcome:v9 forRunEvent:runEvent];

  [(WFLWorkflowController *)self setRunEvent:0];
  if (cancelledCopy)
  {
    userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];

    errorCopy = userCancelledError;
  }

  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v15 = [userInfo objectForKeyedSubscript:@"WFIntentExecutorIntentResponseErrorKey"];

    if (v15)
    {
      userInfo2 = [errorCopy userInfo];
      v17 = [userInfo2 mutableCopy];

      [v17 setObject:v15 forKey:@"WFLUnderlyingIntentResponse"];
      [v17 removeObjectForKey:@"WFIntentExecutorIntentResponseErrorKey"];
      v18 = MEMORY[0x1E696ABC0];
      domain = [errorCopy domain];
      v20 = [v18 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), v17}];

      errorCopy = v20;
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate workflowControllerDidStop:self withError:errorCopy];
    }
  }

  else
  {
    lastInteraction = [(WFLWorkflowController *)self lastInteraction];
    intentResponse = [lastInteraction intentResponse];
    if (intentResponse)
    {
      lastInteraction2 = [(WFLWorkflowController *)self lastInteraction];
      intentResponse2 = [lastInteraction2 intentResponse];
      v26[0] = intentResponse2;
      errorCopy = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    }

    else
    {
      errorCopy = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate workflowControllerDidFinishRunning:self withOutput:errorCopy];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)workflowControllerWillRun:(id)run
{
  delegate = [(WFLWorkflowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate workflowControllerWillRun:self];
  }
}

- (void)launchAppWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  controller = [(WFLWorkflowController *)self controller];
  isRunning = [controller isRunning];

  if (isRunning)
  {
    controller2 = [(WFLWorkflowController *)self controller];
    currentAction = [controller2 currentAction];
  }

  else
  {
    controller2 = [(WFLWorkflowController *)self workflow];
    actions = [controller2 actions];
    currentAction = [actions lastObject];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (isRunning)
    {
      connection = [currentAction connection];
      appProxy = [connection appProxy];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __56__WFLWorkflowController_launchAppWithCompletionHandler___block_invoke;
      v24[3] = &unk_1E837EE10;
      v24[4] = self;
      v25 = handlerCopy;
      [appProxy launchAppInBackground:0 completionHandler:v24];

      v12 = v25;
    }

    else
    {
      lastInteraction = [(WFLWorkflowController *)self lastInteraction];
      intentResponse = [lastInteraction intentResponse];
      userActivity = [intentResponse userActivity];
      v16 = INUserActivitySerializeToData();
      v17 = INUserActivityDeserializeFromData();

      v18 = objc_alloc(MEMORY[0x1E6996CA0]);
      lastInteraction2 = [(WFLWorkflowController *)self lastInteraction];
      v23 = 0;
      v20 = [v18 initWithInteraction:lastInteraction2 userActivity:v17 inBackground:0 error:&v23];
      v12 = v23;

      if (v12)
      {
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, 0, v12);
        }
      }

      else
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __56__WFLWorkflowController_launchAppWithCompletionHandler___block_invoke_2;
        v21[3] = &unk_1E837F0F0;
        v22 = handlerCopy;
        [v20 performWithCompletionHandler:v21];
      }
    }
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

uint64_t __56__WFLWorkflowController_launchAppWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stop];
}

uint64_t __56__WFLWorkflowController_launchAppWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stop
{
  controller = [(WFLWorkflowController *)self controller];
  [controller stop];
}

- (id)runSource
{
  executionContext = [(WFLWorkflowController *)self executionContext];
  if ((executionContext - 1) > 9)
  {
    v3 = MEMORY[0x1E69E1428];
  }

  else
  {
    v3 = qword_1E8374598[executionContext - 1];
  }

  v4 = *v3;

  return v4;
}

- (void)runWithInput:(id)input
{
  v4 = [MEMORY[0x1E6996D40] collectionWithItems:input];
  controller = [(WFLWorkflowController *)self controller];
  [controller setInput:v4];

  runSource = [(WFLWorkflowController *)self runSource];
  controller2 = [(WFLWorkflowController *)self controller];
  [controller2 setRunSource:runSource];

  workflow = [(WFLWorkflowController *)self workflow];
  database = [workflow database];
  workflow2 = [(WFLWorkflowController *)self workflow];
  reference = [workflow2 reference];
  v11 = [database logRunOfWorkflow:reference withSource:runSource triggerID:0];
  [(WFLWorkflowController *)self setRunEvent:v11];

  controller3 = [(WFLWorkflowController *)self controller];
  [controller3 run];
}

- (WFWorkflow)workflow
{
  controller = [(WFLWorkflowController *)self controller];
  workflow = [controller workflow];

  return workflow;
}

- (NSProgress)progress
{
  controller = [(WFLWorkflowController *)self controller];
  progress = [controller progress];

  return progress;
}

- (BOOL)isRunning
{
  controller = [(WFLWorkflowController *)self controller];
  isRunning = [controller isRunning];

  return isRunning;
}

- (WFLWorkflowController)initWithWorkflow:(id)workflow
{
  workflowCopy = workflow;
  v10.receiver = self;
  v10.super_class = WFLWorkflowController;
  v5 = [(WFLWorkflowController *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(WFWorkflowController);
    controller = v5->_controller;
    v5->_controller = v6;

    [(WFWorkflowController *)v5->_controller setWorkflow:workflowCopy];
    [(WFWorkflowController *)v5->_controller setDelegate:v5];
    v8 = v5;
  }

  return v5;
}

@end