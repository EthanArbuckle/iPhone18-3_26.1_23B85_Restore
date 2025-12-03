@interface WFShortcutsAppRunnerClient
- (WFShortcutsAppRunnerClient)initWithContextualAction:(id)action;
- (WFShortcutsAppRunnerClient)initWithIdentifier:(id)identifier name:(id)name action:(id)action metadata:(id)metadata runSource:(id)source remoteDialogPresenterEndpoint:(id)endpoint;
- (WFShortcutsAppRunnerClient)initWithWorkflow:(id)workflow state:(id)state runSource:(id)source input:(id)input remoteDialogPresenterEndpoint:(id)endpoint requestOutput:(BOOL)output;
- (WFShortcutsAppRunnerClient)initWithWorkflowData:(id)data runSource:(id)source;
- (id)runWorkflowWithRequest:(id)request descriptor:(id)descriptor completion:(id)completion;
@end

@implementation WFShortcutsAppRunnerClient

- (id)runWorkflowWithRequest:(id)request descriptor:(id)descriptor completion:(id)completion
{
  requestCopy = request;
  descriptorCopy = descriptor;
  completionCopy = completion;
  descriptor = [(WFWorkflowRunnerClient *)self descriptor];
  if (descriptor && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    context = [descriptor context];
    v13 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:context];
    runRequest = [(WFWorkflowRunnerClient *)self runRequest];
    [v13 resumeRunningWithRequest:runRequest error:0];
  }

  else
  {

    v16.receiver = self;
    v16.super_class = WFShortcutsAppRunnerClient;
    context = [(WFWorkflowRunnerClient *)&v16 runWorkflowWithRequest:requestCopy descriptor:descriptorCopy completion:completionCopy];
  }

  return context;
}

- (WFShortcutsAppRunnerClient)initWithContextualAction:(id)action
{
  v4 = MEMORY[0x1E69E0A30];
  actionCopy = action;
  v6 = [[v4 alloc] initWithSurface:2];
  v7 = [objc_alloc(MEMORY[0x1E69E0A50]) initWithAction:actionCopy context:v6];
  v8 = [objc_alloc(MEMORY[0x1E69E0A58]) initWithAction:actionCopy actionContext:v6];

  v11.receiver = self;
  v11.super_class = WFShortcutsAppRunnerClient;
  v9 = [(WFWorkflowRunnerClient *)&v11 initWithDescriptor:v7 runRequest:v8 delegateQueue:MEMORY[0x1E69E96A0]];

  return v9;
}

- (WFShortcutsAppRunnerClient)initWithIdentifier:(id)identifier name:(id)name action:(id)action metadata:(id)metadata runSource:(id)source remoteDialogPresenterEndpoint:(id)endpoint
{
  v14 = MEMORY[0x1E69E0B98];
  endpointCopy = endpoint;
  sourceCopy = source;
  metadataCopy = metadata;
  actionCopy = action;
  nameCopy = name;
  identifierCopy = identifier;
  v21 = [[v14 alloc] initWithIdentifier:identifierCopy name:nameCopy action:actionCopy metadata:metadataCopy isAutoShortcut:1];

  v22 = objc_alloc(MEMORY[0x1E69E0E20]);
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  v24 = [v22 initWithInput:0 presentationMode:{objc_msgSend(currentDevice, "hasSystemAperture")}];

  [v24 setRunSource:sourceCopy];
  [v24 setOutputBehavior:1];
  [v24 setAllowsDialogNotifications:0];
  [v24 setRemoteDialogPresenterEndpoint:endpointCopy];

  v27.receiver = self;
  v27.super_class = WFShortcutsAppRunnerClient;
  v25 = [(WFWorkflowRunnerClient *)&v27 initWithDescriptor:v21 runRequest:v24 delegateQueue:MEMORY[0x1E69E96A0]];

  return v25;
}

- (WFShortcutsAppRunnerClient)initWithWorkflowData:(id)data runSource:(id)source
{
  v6 = MEMORY[0x1E69E0DE0];
  sourceCopy = source;
  dataCopy = data;
  v9 = [[v6 alloc] initWithWorkflowData:dataCopy];

  v10 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:3];
  [v10 setRunSource:sourceCopy];

  [v10 setOutputBehavior:2];
  [v10 setAllowsDialogNotifications:0];
  v13.receiver = self;
  v13.super_class = WFShortcutsAppRunnerClient;
  v11 = [(WFWorkflowRunnerClient *)&v13 initWithDescriptor:v9 runRequest:v10 delegateQueue:MEMORY[0x1E69E96A0]];

  return v11;
}

- (WFShortcutsAppRunnerClient)initWithWorkflow:(id)workflow state:(id)state runSource:(id)source input:(id)input remoteDialogPresenterEndpoint:(id)endpoint requestOutput:(BOOL)output
{
  outputCopy = output;
  v50 = *MEMORY[0x1E69E9840];
  workflowCopy = workflow;
  stateCopy = state;
  sourceCopy = source;
  endpointCopy = endpoint;
  v17 = MEMORY[0x1E69E0E20];
  inputCopy = input;
  v19 = [v17 alloc];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  v21 = [v19 initWithInput:inputCopy presentationMode:{objc_msgSend(currentDevice, "hasSystemAperture")}];

  runningContext = [stateCopy runningContext];

  if (runningContext)
  {
    v23 = *MEMORY[0x1E69E0FB0];
    runningContext2 = [stateCopy runningContext];
    [runningContext2 setOriginatingBundleIdentifier:v23];

    v25 = [WFHandoffRunDescriptor alloc];
    runningContext3 = [stateCopy runningContext];
    v27 = [(WFHandoffRunDescriptor *)v25 initWithContext:runningContext3];

    extensionResourceClasses = [stateCopy extensionResourceClasses];
    [v21 setExtensionResourceClasses:extensionResourceClasses];

    runningContext4 = [stateCopy runningContext];
    identifier = WFWFWorkflowControllerStateDefaultSerializedURLFromContext(runningContext4);

    if (!identifier)
    {
      selfCopy = 0;
      v36 = sourceCopy;
      goto LABEL_13;
    }

    v31 = outputCopy;
    v43 = 0;
    v32 = [stateCopy writeToURL:identifier error:&v43];
    name = v43;
    if ((v32 & 1) == 0)
    {
      v34 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v45 = "[WFShortcutsAppRunnerClient initWithWorkflow:state:runSource:input:remoteDialogPresenterEndpoint:requestOutput:]";
        v46 = 2112;
        v47 = identifier;
        v48 = 2112;
        v49 = name;
        _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_FAULT, "%s Unable to save state to (%@): %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v31 = outputCopy;
    v35 = objc_alloc(MEMORY[0x1E69E0DE8]);
    identifier = [workflowCopy identifier];
    name = [workflowCopy name];
    v27 = [v35 initWithIdentifier:identifier name:name];
  }

  v36 = sourceCopy;
  [v21 setRunSource:sourceCopy];
  if (v31)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  [v21 setOutputBehavior:{v37, sourceCopy}];
  [v21 setRemoteDialogPresenterEndpoint:endpointCopy];
  [v21 setAllowsDialogNotifications:0];
  [v21 setDonateInteraction:{objc_msgSend(workflowCopy, "hiddenFromLibraryAndSync") ^ 1}];
  v42.receiver = self;
  v42.super_class = WFShortcutsAppRunnerClient;
  self = [(WFWorkflowRunnerClient *)&v42 initWithDescriptor:v27 runRequest:v21 delegateQueue:MEMORY[0x1E69E96A0]];
  selfCopy = self;
LABEL_13:

  v39 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end