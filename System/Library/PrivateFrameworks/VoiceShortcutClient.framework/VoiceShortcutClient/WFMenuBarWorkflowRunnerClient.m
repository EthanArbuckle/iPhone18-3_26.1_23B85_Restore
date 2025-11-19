@interface WFMenuBarWorkflowRunnerClient
- (WFMenuBarWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3;
@end

@implementation WFMenuBarWorkflowRunnerClient

- (WFMenuBarWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:v4];

  v6 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  [(WFWorkflowRunRequest *)v6 setRunSource:@"menu_bar"];
  v9.receiver = self;
  v9.super_class = WFMenuBarWorkflowRunnerClient;
  v7 = [(WFWorkflowRunnerClient *)&v9 initWithDescriptor:v5 runRequest:v6];

  return v7;
}

@end