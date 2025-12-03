@interface WFStingWorkflowRunnerClient
- (WFStingWorkflowRunnerClient)initWithStingWorkflow:(id)workflow;
- (WFStingWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier;
@end

@implementation WFStingWorkflowRunnerClient

- (WFStingWorkflowRunnerClient)initWithStingWorkflow:(id)workflow
{
  identifier = [workflow identifier];
  v5 = [(WFStingWorkflowRunnerClient *)self initWithWorkflowIdentifier:identifier];

  return v5;
}

- (WFStingWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:identifierCopy];

  v6 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:0];
  [(WFWorkflowRunRequest *)v6 setRunSource:@"watch-hardware"];
  [(WFWorkflowRunRequest *)v6 setAllowsHandoff:1];
  v9.receiver = self;
  v9.super_class = WFStingWorkflowRunnerClient;
  v7 = [(WFWorkflowRunnerClient *)&v9 initWithDescriptor:v5 runRequest:v6];

  return v7;
}

@end