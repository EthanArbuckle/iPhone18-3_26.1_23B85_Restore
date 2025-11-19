@interface WFAccessibilityWorkflowRunnerClient
- (WFAccessibilityWorkflowRunnerClient)initWithAccessibilityWorkflow:(id)a3;
- (WFAccessibilityWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3;
@end

@implementation WFAccessibilityWorkflowRunnerClient

- (WFAccessibilityWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:v4];

  v6 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  [(WFWorkflowRunRequest *)v6 setRunSource:@"accessibility_gesture"];
  v9.receiver = self;
  v9.super_class = WFAccessibilityWorkflowRunnerClient;
  v7 = [(WFWorkflowRunnerClient *)&v9 initWithDescriptor:v5 runRequest:v6];

  return v7;
}

- (WFAccessibilityWorkflowRunnerClient)initWithAccessibilityWorkflow:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(WFAccessibilityWorkflowRunnerClient *)self initWithWorkflowIdentifier:v4];

  return v5;
}

@end