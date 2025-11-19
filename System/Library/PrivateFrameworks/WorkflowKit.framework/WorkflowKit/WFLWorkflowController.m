@interface WFLWorkflowController
- (BOOL)isRunning;
- (BOOL)openInteractionInApp:(id)a3 completionHandler:(id)a4;
- (BOOL)openUserActivity:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5;
- (BOOL)workflowController:(id)a3 handleUnsupportedEnvironmentForAction:(id)a4 currentState:(id)a5 completionHandler:(id)a6;
- (NSProgress)progress;
- (WFLWorkflowController)initWithWorkflow:(id)a3;
- (WFLWorkflowControllerDelegate)delegate;
- (WFWorkflow)workflow;
- (id)runSource;
- (void)action:(id)a3 provideInputForParameters:(id)a4 withDefaultStates:(id)a5 prompts:(id)a6 completionHandler:(id)a7;
- (void)configureIntent:(id)a3;
- (void)launchAppWithCompletionHandler:(id)a3;
- (void)openURL:(id)a3 completionHandler:(id)a4;
- (void)runWithInput:(id)a3;
- (void)showHandleInteraction:(id)a3 prompt:(id)a4 completionHandler:(id)a5;
- (void)stop;
- (void)workflowController:(id)a3 didFinishRunningWithError:(id)a4 cancelled:(BOOL)a5;
- (void)workflowController:(id)a3 didRunAction:(id)a4 error:(id)a5;
- (void)workflowController:(id)a3 prepareToRunAction:(id)a4 withInput:(id)a5 completionHandler:(id)a6;
- (void)workflowControllerWillRun:(id)a3;
@end

@implementation WFLWorkflowController

- (WFLWorkflowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)action:(id)a3 provideInputForParameters:(id)a4 withDefaultStates:(id)a5 prompts:(id)a6 completionHandler:(id)a7
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a7;
  v8 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315138;
    v11 = "[WFLWorkflowController action:provideInputForParameters:withDefaultStates:prompts:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s provideInputForParameters should not be called", &v10, 0xCu);
  }

  (*(v7 + 2))(v7, 0, 0, 0);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)configureIntent:(id)a3
{
  v4 = a3;
  [v4 _setExecutionContext:{-[WFLWorkflowController executionContext](self, "executionContext")}];
}

- (BOOL)openUserActivity:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5
{
  if (a5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = a5;
    v8 = [v6 userCancelledError];
    (*(a5 + 2))(v7, 0, v8);
  }

  return 1;
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (BOOL)openInteractionInApp:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(WFLWorkflowController *)self delegate];
  v7 = [(WFLWorkflowController *)self controller];
  v8 = [v7 currentAction];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 workflowController:self userInterfaceForRunningAction:v8];
  }

  else
  {
    v9 = 0;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __64__WFLWorkflowController_openInteractionInApp_completionHandler___block_invoke;
  v17 = &unk_1E837D770;
  v10 = v5;
  v19 = v10;
  v11 = v8;
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

- (void)showHandleInteraction:(id)a3 prompt:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  [(WFLWorkflowController *)self setLastInteraction:a3];
  v7[2](v7, 0);
}

- (BOOL)workflowController:(id)a3 handleUnsupportedEnvironmentForAction:(id)a4 currentState:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 runSource];
  LOBYTE(self) = WFRemoteExecuteActionIfApplicable(v12, v11, self, self, v13, v10);

  return self;
}

- (void)workflowController:(id)a3 didRunAction:(id)a4 error:(id)a5
{
  v7 = a4;
  v6 = [(WFLWorkflowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 workflowController:self didRunAction:v7];
  }
}

- (void)workflowController:(id)a3 prepareToRunAction:(id)a4 withInput:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v8 = a6;
  v9 = [(WFLWorkflowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 workflowController:self willRunAction:v10 withInput:0 proceedHandler:v8];
  }

  else
  {
    v8[2](v8);
  }
}

- (void)workflowController:(id)a3 didFinishRunningWithError:(id)a4 cancelled:(BOOL)a5
{
  v5 = a5;
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(WFLWorkflowController *)self delegate];
  if (v7)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(WFLWorkflowController *)self workflow];
  v11 = [v10 database];
  v12 = [(WFLWorkflowController *)self runEvent];
  [v11 setOutcome:v9 forRunEvent:v12];

  [(WFLWorkflowController *)self setRunEvent:0];
  if (v5)
  {
    v13 = [MEMORY[0x1E696ABC0] userCancelledError];

    v7 = v13;
  }

  if (v7)
  {
    v14 = [v7 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"WFIntentExecutorIntentResponseErrorKey"];

    if (v15)
    {
      v16 = [v7 userInfo];
      v17 = [v16 mutableCopy];

      [v17 setObject:v15 forKey:@"WFLUnderlyingIntentResponse"];
      [v17 removeObjectForKey:@"WFIntentExecutorIntentResponseErrorKey"];
      v18 = MEMORY[0x1E696ABC0];
      v19 = [v7 domain];
      v20 = [v18 errorWithDomain:v19 code:objc_msgSend(v7 userInfo:{"code"), v17}];

      v7 = v20;
    }

    if (objc_opt_respondsToSelector())
    {
      [v8 workflowControllerDidStop:self withError:v7];
    }
  }

  else
  {
    v21 = [(WFLWorkflowController *)self lastInteraction];
    v22 = [v21 intentResponse];
    if (v22)
    {
      v23 = [(WFLWorkflowController *)self lastInteraction];
      v24 = [v23 intentResponse];
      v26[0] = v24;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    }

    else
    {
      v7 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      [v8 workflowControllerDidFinishRunning:self withOutput:v7];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)workflowControllerWillRun:(id)a3
{
  v4 = [(WFLWorkflowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 workflowControllerWillRun:self];
  }
}

- (void)launchAppWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFLWorkflowController *)self controller];
  v6 = [v5 isRunning];

  if (v6)
  {
    v7 = [(WFLWorkflowController *)self controller];
    v8 = [v7 currentAction];
  }

  else
  {
    v7 = [(WFLWorkflowController *)self workflow];
    v9 = [v7 actions];
    v8 = [v9 lastObject];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v6)
    {
      v10 = [v8 connection];
      v11 = [v10 appProxy];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __56__WFLWorkflowController_launchAppWithCompletionHandler___block_invoke;
      v24[3] = &unk_1E837EE10;
      v24[4] = self;
      v25 = v4;
      [v11 launchAppInBackground:0 completionHandler:v24];

      v12 = v25;
    }

    else
    {
      v13 = [(WFLWorkflowController *)self lastInteraction];
      v14 = [v13 intentResponse];
      v15 = [v14 userActivity];
      v16 = INUserActivitySerializeToData();
      v17 = INUserActivityDeserializeFromData();

      v18 = objc_alloc(MEMORY[0x1E6996CA0]);
      v19 = [(WFLWorkflowController *)self lastInteraction];
      v23 = 0;
      v20 = [v18 initWithInteraction:v19 userActivity:v17 inBackground:0 error:&v23];
      v12 = v23;

      if (v12)
      {
        if (v4)
        {
          (*(v4 + 2))(v4, 0, v12);
        }
      }

      else
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __56__WFLWorkflowController_launchAppWithCompletionHandler___block_invoke_2;
        v21[3] = &unk_1E837F0F0;
        v22 = v4;
        [v20 performWithCompletionHandler:v21];
      }
    }
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
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
  v2 = [(WFLWorkflowController *)self controller];
  [v2 stop];
}

- (id)runSource
{
  v2 = [(WFLWorkflowController *)self executionContext];
  if ((v2 - 1) > 9)
  {
    v3 = MEMORY[0x1E69E1428];
  }

  else
  {
    v3 = qword_1E8374598[v2 - 1];
  }

  v4 = *v3;

  return v4;
}

- (void)runWithInput:(id)a3
{
  v4 = [MEMORY[0x1E6996D40] collectionWithItems:a3];
  v5 = [(WFLWorkflowController *)self controller];
  [v5 setInput:v4];

  v13 = [(WFLWorkflowController *)self runSource];
  v6 = [(WFLWorkflowController *)self controller];
  [v6 setRunSource:v13];

  v7 = [(WFLWorkflowController *)self workflow];
  v8 = [v7 database];
  v9 = [(WFLWorkflowController *)self workflow];
  v10 = [v9 reference];
  v11 = [v8 logRunOfWorkflow:v10 withSource:v13 triggerID:0];
  [(WFLWorkflowController *)self setRunEvent:v11];

  v12 = [(WFLWorkflowController *)self controller];
  [v12 run];
}

- (WFWorkflow)workflow
{
  v2 = [(WFLWorkflowController *)self controller];
  v3 = [v2 workflow];

  return v3;
}

- (NSProgress)progress
{
  v2 = [(WFLWorkflowController *)self controller];
  v3 = [v2 progress];

  return v3;
}

- (BOOL)isRunning
{
  v2 = [(WFLWorkflowController *)self controller];
  v3 = [v2 isRunning];

  return v3;
}

- (WFLWorkflowController)initWithWorkflow:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLWorkflowController;
  v5 = [(WFLWorkflowController *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(WFWorkflowController);
    controller = v5->_controller;
    v5->_controller = v6;

    [(WFWorkflowController *)v5->_controller setWorkflow:v4];
    [(WFWorkflowController *)v5->_controller setDelegate:v5];
    v8 = v5;
  }

  return v5;
}

@end