@interface WFHandoffRunnerClient
- (WFHandoffRunnerClient)initWithRunningContext:(id)a3 runRequest:(id)a4;
- (WFHandoffRunnerClient)initWithWorkflowControllerState:(id)a3 runSource:(id)a4 remoteDialogPresenterEndpoint:(id)a5 error:(id *)a6;
- (id)runWorkflowWithRequest:(id)a3 descriptor:(id)a4 completion:(id)a5;
- (void)handleWorkflowDidStart:(id)a3;
- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4;
- (void)notifyStartHandlerWithProgress:(id)a3;
- (void)startWithHandler:(id)a3;
@end

@implementation WFHandoffRunnerClient

- (void)notifyStartHandlerWithProgress:(id)a3
{
  v6 = a3;
  v4 = [(WFHandoffRunnerClient *)self runningDidStartHandler];

  if (v4)
  {
    v5 = [(WFHandoffRunnerClient *)self runningDidStartHandler];
    (v5)[2](v5, v6);

    [(WFHandoffRunnerClient *)self setRunningDidStartHandler:0];
  }
}

- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E696AE38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 progressWithTotalUnitCount:1];
  [v9 setCompletedUnitCount:1];
  [(WFHandoffRunnerClient *)self notifyStartHandlerWithProgress:v9];
  v10.receiver = self;
  v10.super_class = WFHandoffRunnerClient;
  [(WFWorkflowRunnerClient *)&v10 handleWorkflowRunResult:v8 completion:v7];
}

- (void)handleWorkflowDidStart:(id)a3
{
  v4 = a3;
  [(WFHandoffRunnerClient *)self notifyStartHandlerWithProgress:v4];
  v5.receiver = self;
  v5.super_class = WFHandoffRunnerClient;
  [(WFWorkflowRunnerClient *)&v5 handleWorkflowDidStart:v4];
}

- (void)startWithHandler:(id)a3
{
  [(WFHandoffRunnerClient *)self setRunningDidStartHandler:a3];

  [(WFWorkflowRunnerClient *)self start];
}

- (id)runWorkflowWithRequest:(id)a3 descriptor:(id)a4 completion:(id)a5
{
  v6 = [(WFHandoffRunnerClient *)self runningContext:a3];
  v7 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:v6];

  v8 = [(WFWorkflowRunnerClient *)self runRequest];
  [v7 resumeRunningWithRequest:v8 error:0];

  v9 = [(WFHandoffRunnerClient *)self runningContext];

  return v9;
}

- (WFHandoffRunnerClient)initWithWorkflowControllerState:(id)a3 runSource:(id)a4 remoteDialogPresenterEndpoint:(id)a5 error:(id *)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v43 = a5;
  v42 = a4;
  v8 = a3;
  v9 = [v8 runningContext];
  v46 = [v9 copyWithNewIdentity];

  v36 = [WFWorkflowControllerState alloc];
  v41 = [v8 workflow];
  v40 = [v8 variables];
  v39 = [v8 currentActionIndex];
  v38 = [v8 currentInput];
  v37 = [v8 currentProcessedParameters];
  v35 = [v8 startDate];
  v34 = [v8 currentRunSource];
  v10 = [v8 numberOfDialogsPresented];
  v11 = [v8 outputBehavior];
  v33 = [v8 currentActionContentAttributionTracker];
  v12 = [v8 contentItemCache];
  v13 = [v8 flowTracker];
  v14 = [v8 allowedOnceSmartPromptStates];
  v15 = [v8 extensionResourceClasses];
  LOBYTE(v32) = [v8 shouldDisablePrivacyPrompts];
  v16 = [(WFWorkflowControllerState *)v36 initWithWorkflow:v41 variables:v40 currentActionIndex:v39 runningContext:v46 currentInput:v38 currentProcessedParameters:v37 startDate:v35 currentRunSource:v34 numberOfDialogsPresented:v10 outputBehavior:v11 contentAttributionTracker:v33 contentItemCache:v12 flowTracker:v13 allowedOnceSmartPromptStates:v14 extensionResourceClasses:v15 shouldDisablePrivacyPrompts:v32];

  v17 = v16;
  v18 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:1];
  [v18 setRunSource:v42];

  [v18 setOutputBehavior:0];
  [v18 setRemoteDialogPresenterEndpoint:v43];

  v19 = [v8 extensionResourceClasses];

  [v18 setExtensionResourceClasses:v19];
  v20 = [v17 runningContext];
  v21 = v20;
  if (v20)
  {
    v22 = WFWFWorkflowControllerStateDefaultSerializedURLFromContext(v20);
    if (v22)
    {
      v47 = 0;
      v23 = [v17 writeToURL:v22 error:&v47];
      v24 = v47;
      v25 = self;
      if (v23)
      {
        v25 = [(WFHandoffRunnerClient *)self initWithRunningContext:v21 runRequest:v18];
        v26 = v25;
      }

      else
      {
        v28 = getWFXPCRunnerLogObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315650;
          v49 = "[WFHandoffRunnerClient initWithWorkflowControllerState:runSource:remoteDialogPresenterEndpoint:error:]";
          v50 = 2112;
          v51 = v22;
          v52 = 2112;
          v53 = v24;
          _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_FAULT, "%s Unable to save state to (%@): %@", buf, 0x20u);
        }

        if (a6)
        {
          v29 = v24;
          v26 = 0;
          *a6 = v24;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v25 = self;
      if (a6)
      {
        [MEMORY[0x1E696ABC0] userCancelledError];
        *a6 = v26 = 0;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v27 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v49 = "[WFHandoffRunnerClient initWithWorkflowControllerState:runSource:remoteDialogPresenterEndpoint:error:]";
      _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s Unable to resume workflow execution when contextToResume is nil.", buf, 0xCu);
    }

    v25 = self;
    if (a6)
    {
      [MEMORY[0x1E696ABC0] userCancelledError];
      *a6 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

- (WFHandoffRunnerClient)initWithRunningContext:(id)a3 runRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[WFHandoffRunDescriptor alloc] initWithContext:v7];
  v13.receiver = self;
  v13.super_class = WFHandoffRunnerClient;
  v10 = [(WFWorkflowRunnerClient *)&v13 initWithDescriptor:v9 runRequest:v8];

  if (v10)
  {
    objc_storeStrong(&v10->_runningContext, a3);
    v11 = v10;
  }

  return v10;
}

@end