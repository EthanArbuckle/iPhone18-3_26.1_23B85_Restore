@interface WFActionExtensionWorkflowRunnerClient
- (WFActionExtensionWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3 input:(id)a4 javaScriptRunners:(id)a5;
@end

@implementation WFActionExtensionWorkflowRunnerClient

- (WFActionExtensionWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3 input:(id)a4 javaScriptRunners:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:v10];

  v12 = [[WFWorkflowRunRequest alloc] initWithInput:v9 presentationMode:1];
  [(WFWorkflowRunRequest *)v12 setRunSource:@"action_extension"];
  v13 = [v8 if_compactMap:&__block_literal_global_5584];
  [(WFWorkflowRunRequest *)v12 setListenerEndpoints:v13];

  v19.receiver = self;
  v19.super_class = WFActionExtensionWorkflowRunnerClient;
  v14 = [(WFWorkflowRunnerClient *)&v19 initWithDescriptor:v11 runRequest:v12];
  if (v14)
  {
    v15 = [v8 copy];
    javaScriptRunners = v14->_javaScriptRunners;
    v14->_javaScriptRunners = v15;

    v17 = v14;
  }

  return v14;
}

id __92__WFActionExtensionWorkflowRunnerClient_initWithWorkflowIdentifier_input_javaScriptRunners___block_invoke(int a1, id a2, void *a3, void *a4, void *a5)
{
  *a4 = a2;
  result = [a3 endpoint];
  *a5 = result;
  return result;
}

@end