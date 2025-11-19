@interface WFStingWorkflowRunnerClient
- (WFStingWorkflowRunnerClient)initWithStingWorkflow:(id)a3;
- (WFStingWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3;
@end

@implementation WFStingWorkflowRunnerClient

- (WFStingWorkflowRunnerClient)initWithStingWorkflow:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(WFStingWorkflowRunnerClient *)self initWithWorkflowIdentifier:v4];

  return v5;
}

- (WFStingWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:v4];

  v6 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:0];
  [(WFWorkflowRunRequest *)v6 setRunSource:@"watch-hardware"];
  [(WFWorkflowRunRequest *)v6 setAllowsHandoff:1];
  v9.receiver = self;
  v9.super_class = WFStingWorkflowRunnerClient;
  v7 = [(WFWorkflowRunnerClient *)&v9 initWithDescriptor:v5 runRequest:v6];

  return v7;
}

@end