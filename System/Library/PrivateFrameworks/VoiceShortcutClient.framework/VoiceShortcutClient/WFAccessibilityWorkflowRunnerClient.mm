@interface WFAccessibilityWorkflowRunnerClient
- (WFAccessibilityWorkflowRunnerClient)initWithAccessibilityWorkflow:(id)workflow;
- (WFAccessibilityWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier;
@end

@implementation WFAccessibilityWorkflowRunnerClient

- (WFAccessibilityWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:identifierCopy];

  v6 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  [(WFWorkflowRunRequest *)v6 setRunSource:@"accessibility_gesture"];
  v9.receiver = self;
  v9.super_class = WFAccessibilityWorkflowRunnerClient;
  v7 = [(WFWorkflowRunnerClient *)&v9 initWithDescriptor:v5 runRequest:v6];

  return v7;
}

- (WFAccessibilityWorkflowRunnerClient)initWithAccessibilityWorkflow:(id)workflow
{
  identifier = [workflow identifier];
  v5 = [(WFAccessibilityWorkflowRunnerClient *)self initWithWorkflowIdentifier:identifier];

  return v5;
}

@end