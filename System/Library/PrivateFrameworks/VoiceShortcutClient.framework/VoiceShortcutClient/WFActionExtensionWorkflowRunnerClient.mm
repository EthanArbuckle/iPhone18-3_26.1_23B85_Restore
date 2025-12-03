@interface WFActionExtensionWorkflowRunnerClient
- (WFActionExtensionWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier input:(id)input javaScriptRunners:(id)runners;
@end

@implementation WFActionExtensionWorkflowRunnerClient

- (WFActionExtensionWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier input:(id)input javaScriptRunners:(id)runners
{
  runnersCopy = runners;
  inputCopy = input;
  identifierCopy = identifier;
  v11 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:identifierCopy];

  v12 = [[WFWorkflowRunRequest alloc] initWithInput:inputCopy presentationMode:1];
  [(WFWorkflowRunRequest *)v12 setRunSource:@"action_extension"];
  v13 = [runnersCopy if_compactMap:&__block_literal_global_5584];
  [(WFWorkflowRunRequest *)v12 setListenerEndpoints:v13];

  v19.receiver = self;
  v19.super_class = WFActionExtensionWorkflowRunnerClient;
  v14 = [(WFWorkflowRunnerClient *)&v19 initWithDescriptor:v11 runRequest:v12];
  if (v14)
  {
    v15 = [runnersCopy copy];
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