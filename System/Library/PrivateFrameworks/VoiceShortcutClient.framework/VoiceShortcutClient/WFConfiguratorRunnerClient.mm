@interface WFConfiguratorRunnerClient
- (WFConfiguratorRunnerClient)initWithWorkflowName:(id)a3 inputStrings:(id)a4;
@end

@implementation WFConfiguratorRunnerClient

- (WFConfiguratorRunnerClient)initWithWorkflowName:(id)a3 inputStrings:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFConfiguratorRunnerClient.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"workflowName"}];
  }

  v9 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithName:v7];
  v10 = [[WFConfiguratorRunRequest alloc] initWithInputStrings:v8 presentationMode:0];
  v14.receiver = self;
  v14.super_class = WFConfiguratorRunnerClient;
  v11 = [(WFWorkflowRunnerClient *)&v14 initWithDescriptor:v9 runRequest:v10];

  return v11;
}

@end