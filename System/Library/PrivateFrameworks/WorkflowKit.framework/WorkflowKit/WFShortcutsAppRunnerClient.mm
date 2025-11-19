@interface WFShortcutsAppRunnerClient
- (WFShortcutsAppRunnerClient)initWithContextualAction:(id)a3;
- (WFShortcutsAppRunnerClient)initWithIdentifier:(id)a3 name:(id)a4 action:(id)a5 metadata:(id)a6 runSource:(id)a7 remoteDialogPresenterEndpoint:(id)a8;
- (WFShortcutsAppRunnerClient)initWithWorkflow:(id)a3 state:(id)a4 runSource:(id)a5 input:(id)a6 remoteDialogPresenterEndpoint:(id)a7 requestOutput:(BOOL)a8;
- (WFShortcutsAppRunnerClient)initWithWorkflowData:(id)a3 runSource:(id)a4;
- (id)runWorkflowWithRequest:(id)a3 descriptor:(id)a4 completion:(id)a5;
@end

@implementation WFShortcutsAppRunnerClient

- (id)runWorkflowWithRequest:(id)a3 descriptor:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFWorkflowRunnerClient *)self descriptor];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 context];
    v13 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:v12];
    v14 = [(WFWorkflowRunnerClient *)self runRequest];
    [v13 resumeRunningWithRequest:v14 error:0];
  }

  else
  {

    v16.receiver = self;
    v16.super_class = WFShortcutsAppRunnerClient;
    v12 = [(WFWorkflowRunnerClient *)&v16 runWorkflowWithRequest:v8 descriptor:v9 completion:v10];
  }

  return v12;
}

- (WFShortcutsAppRunnerClient)initWithContextualAction:(id)a3
{
  v4 = MEMORY[0x1E69E0A30];
  v5 = a3;
  v6 = [[v4 alloc] initWithSurface:2];
  v7 = [objc_alloc(MEMORY[0x1E69E0A50]) initWithAction:v5 context:v6];
  v8 = [objc_alloc(MEMORY[0x1E69E0A58]) initWithAction:v5 actionContext:v6];

  v11.receiver = self;
  v11.super_class = WFShortcutsAppRunnerClient;
  v9 = [(WFWorkflowRunnerClient *)&v11 initWithDescriptor:v7 runRequest:v8 delegateQueue:MEMORY[0x1E69E96A0]];

  return v9;
}

- (WFShortcutsAppRunnerClient)initWithIdentifier:(id)a3 name:(id)a4 action:(id)a5 metadata:(id)a6 runSource:(id)a7 remoteDialogPresenterEndpoint:(id)a8
{
  v14 = MEMORY[0x1E69E0B98];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[v14 alloc] initWithIdentifier:v20 name:v19 action:v18 metadata:v17 isAutoShortcut:1];

  v22 = objc_alloc(MEMORY[0x1E69E0E20]);
  v23 = [MEMORY[0x1E69E0A90] currentDevice];
  v24 = [v22 initWithInput:0 presentationMode:{objc_msgSend(v23, "hasSystemAperture")}];

  [v24 setRunSource:v16];
  [v24 setOutputBehavior:1];
  [v24 setAllowsDialogNotifications:0];
  [v24 setRemoteDialogPresenterEndpoint:v15];

  v27.receiver = self;
  v27.super_class = WFShortcutsAppRunnerClient;
  v25 = [(WFWorkflowRunnerClient *)&v27 initWithDescriptor:v21 runRequest:v24 delegateQueue:MEMORY[0x1E69E96A0]];

  return v25;
}

- (WFShortcutsAppRunnerClient)initWithWorkflowData:(id)a3 runSource:(id)a4
{
  v6 = MEMORY[0x1E69E0DE0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithWorkflowData:v8];

  v10 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:3];
  [v10 setRunSource:v7];

  [v10 setOutputBehavior:2];
  [v10 setAllowsDialogNotifications:0];
  v13.receiver = self;
  v13.super_class = WFShortcutsAppRunnerClient;
  v11 = [(WFWorkflowRunnerClient *)&v13 initWithDescriptor:v9 runRequest:v10 delegateQueue:MEMORY[0x1E69E96A0]];

  return v11;
}

- (WFShortcutsAppRunnerClient)initWithWorkflow:(id)a3 state:(id)a4 runSource:(id)a5 input:(id)a6 remoteDialogPresenterEndpoint:(id)a7 requestOutput:(BOOL)a8
{
  v8 = a8;
  v50 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v41 = a5;
  v16 = a7;
  v17 = MEMORY[0x1E69E0E20];
  v18 = a6;
  v19 = [v17 alloc];
  v20 = [MEMORY[0x1E69E0A90] currentDevice];
  v21 = [v19 initWithInput:v18 presentationMode:{objc_msgSend(v20, "hasSystemAperture")}];

  v22 = [v15 runningContext];

  if (v22)
  {
    v23 = *MEMORY[0x1E69E0FB0];
    v24 = [v15 runningContext];
    [v24 setOriginatingBundleIdentifier:v23];

    v25 = [WFHandoffRunDescriptor alloc];
    v26 = [v15 runningContext];
    v27 = [(WFHandoffRunDescriptor *)v25 initWithContext:v26];

    v28 = [v15 extensionResourceClasses];
    [v21 setExtensionResourceClasses:v28];

    v29 = [v15 runningContext];
    v30 = WFWFWorkflowControllerStateDefaultSerializedURLFromContext(v29);

    if (!v30)
    {
      v38 = 0;
      v36 = v41;
      goto LABEL_13;
    }

    v31 = v8;
    v43 = 0;
    v32 = [v15 writeToURL:v30 error:&v43];
    v33 = v43;
    if ((v32 & 1) == 0)
    {
      v34 = getWFXPCRunnerLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v45 = "[WFShortcutsAppRunnerClient initWithWorkflow:state:runSource:input:remoteDialogPresenterEndpoint:requestOutput:]";
        v46 = 2112;
        v47 = v30;
        v48 = 2112;
        v49 = v33;
        _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_FAULT, "%s Unable to save state to (%@): %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v31 = v8;
    v35 = objc_alloc(MEMORY[0x1E69E0DE8]);
    v30 = [v14 identifier];
    v33 = [v14 name];
    v27 = [v35 initWithIdentifier:v30 name:v33];
  }

  v36 = v41;
  [v21 setRunSource:v41];
  if (v31)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  [v21 setOutputBehavior:{v37, v41}];
  [v21 setRemoteDialogPresenterEndpoint:v16];
  [v21 setAllowsDialogNotifications:0];
  [v21 setDonateInteraction:{objc_msgSend(v14, "hiddenFromLibraryAndSync") ^ 1}];
  v42.receiver = self;
  v42.super_class = WFShortcutsAppRunnerClient;
  self = [(WFWorkflowRunnerClient *)&v42 initWithDescriptor:v27 runRequest:v21 delegateQueue:MEMORY[0x1E69E96A0]];
  v38 = self;
LABEL_13:

  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

@end