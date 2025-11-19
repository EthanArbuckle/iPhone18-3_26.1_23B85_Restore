@interface WFEditorRunnerClient
- (WFEditorRunnerClient)initWithWorkflow:(id)a3 runSource:(id)a4;
- (WFEditorRunnerClient)initWithWorkflowData:(id)a3 runSource:(id)a4;
@end

@implementation WFEditorRunnerClient

- (WFEditorRunnerClient)initWithWorkflowData:(id)a3 runSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    __assert_rtn("[WFEditorRunnerClient initWithWorkflowData:runSource:]", "WFEditorRunnerClient.m", 33, "os_feature_enabled(Shortcuts, intermediate_outputs)");
  }

  v8 = [objc_alloc(MEMORY[0x1E69E0DE0]) initWithWorkflowData:v6];
  v9 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:3];
  [v9 setRunSource:v7];
  [v9 setOutputBehavior:3];
  [v9 setAllowsDialogNotifications:0];
  v12.receiver = self;
  v12.super_class = WFEditorRunnerClient;
  v10 = [(WFWorkflowRunnerClient *)&v12 initWithDescriptor:v8 runRequest:v9 delegateQueue:MEMORY[0x1E69E96A0]];

  return v10;
}

- (WFEditorRunnerClient)initWithWorkflow:(id)a3 runSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    __assert_rtn("[WFEditorRunnerClient initWithWorkflow:runSource:]", "WFEditorRunnerClient.m", 20, "os_feature_enabled(Shortcuts, intermediate_outputs)");
  }

  v8 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:0];
  v9 = objc_alloc(MEMORY[0x1E69E0DE8]);
  v10 = [v6 identifier];
  v11 = [v6 name];
  v12 = [v9 initWithIdentifier:v10 name:v11];

  [v8 setRunSource:v7];
  [v8 setOutputBehavior:3];
  [v8 setAllowsDialogNotifications:0];
  v15.receiver = self;
  v15.super_class = WFEditorRunnerClient;
  v13 = [(WFWorkflowRunnerClient *)&v15 initWithDescriptor:v12 runRequest:v8 delegateQueue:MEMORY[0x1E69E96A0]];

  return v13;
}

@end