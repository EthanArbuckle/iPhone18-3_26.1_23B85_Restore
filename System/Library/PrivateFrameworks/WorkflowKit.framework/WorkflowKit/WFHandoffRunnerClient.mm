@interface WFHandoffRunnerClient
- (WFHandoffRunnerClient)initWithRunningContext:(id)context runRequest:(id)request;
- (WFHandoffRunnerClient)initWithWorkflowControllerState:(id)state runSource:(id)source remoteDialogPresenterEndpoint:(id)endpoint error:(id *)error;
- (id)runWorkflowWithRequest:(id)request descriptor:(id)descriptor completion:(id)completion;
- (void)handleWorkflowDidStart:(id)start;
- (void)handleWorkflowRunResult:(id)result completion:(id)completion;
- (void)notifyStartHandlerWithProgress:(id)progress;
- (void)startWithHandler:(id)handler;
@end

@implementation WFHandoffRunnerClient

- (void)notifyStartHandlerWithProgress:(id)progress
{
  progressCopy = progress;
  runningDidStartHandler = [(WFHandoffRunnerClient *)self runningDidStartHandler];

  if (runningDidStartHandler)
  {
    runningDidStartHandler2 = [(WFHandoffRunnerClient *)self runningDidStartHandler];
    (runningDidStartHandler2)[2](runningDidStartHandler2, progressCopy);

    [(WFHandoffRunnerClient *)self setRunningDidStartHandler:0];
  }
}

- (void)handleWorkflowRunResult:(id)result completion:(id)completion
{
  v6 = MEMORY[0x1E696AE38];
  completionCopy = completion;
  resultCopy = result;
  v9 = [v6 progressWithTotalUnitCount:1];
  [v9 setCompletedUnitCount:1];
  [(WFHandoffRunnerClient *)self notifyStartHandlerWithProgress:v9];
  v10.receiver = self;
  v10.super_class = WFHandoffRunnerClient;
  [(WFWorkflowRunnerClient *)&v10 handleWorkflowRunResult:resultCopy completion:completionCopy];
}

- (void)handleWorkflowDidStart:(id)start
{
  startCopy = start;
  [(WFHandoffRunnerClient *)self notifyStartHandlerWithProgress:startCopy];
  v5.receiver = self;
  v5.super_class = WFHandoffRunnerClient;
  [(WFWorkflowRunnerClient *)&v5 handleWorkflowDidStart:startCopy];
}

- (void)startWithHandler:(id)handler
{
  [(WFHandoffRunnerClient *)self setRunningDidStartHandler:handler];

  [(WFWorkflowRunnerClient *)self start];
}

- (id)runWorkflowWithRequest:(id)request descriptor:(id)descriptor completion:(id)completion
{
  v6 = [(WFHandoffRunnerClient *)self runningContext:request];
  v7 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:v6];

  runRequest = [(WFWorkflowRunnerClient *)self runRequest];
  [v7 resumeRunningWithRequest:runRequest error:0];

  runningContext = [(WFHandoffRunnerClient *)self runningContext];

  return runningContext;
}

- (WFHandoffRunnerClient)initWithWorkflowControllerState:(id)state runSource:(id)source remoteDialogPresenterEndpoint:(id)endpoint error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  sourceCopy = source;
  stateCopy = state;
  runningContext = [stateCopy runningContext];
  copyWithNewIdentity = [runningContext copyWithNewIdentity];

  v36 = [WFWorkflowControllerState alloc];
  workflow = [stateCopy workflow];
  variables = [stateCopy variables];
  currentActionIndex = [stateCopy currentActionIndex];
  currentInput = [stateCopy currentInput];
  currentProcessedParameters = [stateCopy currentProcessedParameters];
  startDate = [stateCopy startDate];
  currentRunSource = [stateCopy currentRunSource];
  numberOfDialogsPresented = [stateCopy numberOfDialogsPresented];
  outputBehavior = [stateCopy outputBehavior];
  currentActionContentAttributionTracker = [stateCopy currentActionContentAttributionTracker];
  contentItemCache = [stateCopy contentItemCache];
  flowTracker = [stateCopy flowTracker];
  allowedOnceSmartPromptStates = [stateCopy allowedOnceSmartPromptStates];
  extensionResourceClasses = [stateCopy extensionResourceClasses];
  LOBYTE(v32) = [stateCopy shouldDisablePrivacyPrompts];
  v16 = [(WFWorkflowControllerState *)v36 initWithWorkflow:workflow variables:variables currentActionIndex:currentActionIndex runningContext:copyWithNewIdentity currentInput:currentInput currentProcessedParameters:currentProcessedParameters startDate:startDate currentRunSource:currentRunSource numberOfDialogsPresented:numberOfDialogsPresented outputBehavior:outputBehavior contentAttributionTracker:currentActionContentAttributionTracker contentItemCache:contentItemCache flowTracker:flowTracker allowedOnceSmartPromptStates:allowedOnceSmartPromptStates extensionResourceClasses:extensionResourceClasses shouldDisablePrivacyPrompts:v32];

  v17 = v16;
  v18 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:1];
  [v18 setRunSource:sourceCopy];

  [v18 setOutputBehavior:0];
  [v18 setRemoteDialogPresenterEndpoint:endpointCopy];

  extensionResourceClasses2 = [stateCopy extensionResourceClasses];

  [v18 setExtensionResourceClasses:extensionResourceClasses2];
  runningContext2 = [v17 runningContext];
  v21 = runningContext2;
  if (runningContext2)
  {
    v22 = WFWFWorkflowControllerStateDefaultSerializedURLFromContext(runningContext2);
    if (v22)
    {
      v47 = 0;
      v23 = [v17 writeToURL:v22 error:&v47];
      v24 = v47;
      selfCopy3 = self;
      if (v23)
      {
        selfCopy3 = [(WFHandoffRunnerClient *)self initWithRunningContext:v21 runRequest:v18];
        v26 = selfCopy3;
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

        if (error)
        {
          v29 = v24;
          v26 = 0;
          *error = v24;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      selfCopy3 = self;
      if (error)
      {
        [MEMORY[0x1E696ABC0] userCancelledError];
        *error = v26 = 0;
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

    selfCopy3 = self;
    if (error)
    {
      [MEMORY[0x1E696ABC0] userCancelledError];
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

- (WFHandoffRunnerClient)initWithRunningContext:(id)context runRequest:(id)request
{
  contextCopy = context;
  requestCopy = request;
  v9 = [[WFHandoffRunDescriptor alloc] initWithContext:contextCopy];
  v13.receiver = self;
  v13.super_class = WFHandoffRunnerClient;
  v10 = [(WFWorkflowRunnerClient *)&v13 initWithDescriptor:v9 runRequest:requestCopy];

  if (v10)
  {
    objc_storeStrong(&v10->_runningContext, context);
    v11 = v10;
  }

  return v10;
}

@end