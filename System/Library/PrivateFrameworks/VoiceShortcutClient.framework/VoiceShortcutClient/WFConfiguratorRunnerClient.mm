@interface WFConfiguratorRunnerClient
- (WFConfiguratorRunnerClient)initWithWorkflowName:(id)name inputStrings:(id)strings;
@end

@implementation WFConfiguratorRunnerClient

- (WFConfiguratorRunnerClient)initWithWorkflowName:(id)name inputStrings:(id)strings
{
  nameCopy = name;
  stringsCopy = strings;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguratorRunnerClient.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"workflowName"}];
  }

  v9 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithName:nameCopy];
  v10 = [[WFConfiguratorRunRequest alloc] initWithInputStrings:stringsCopy presentationMode:0];
  v14.receiver = self;
  v14.super_class = WFConfiguratorRunnerClient;
  v11 = [(WFWorkflowRunnerClient *)&v14 initWithDescriptor:v9 runRequest:v10];

  return v11;
}

@end