@interface WFAppleEventWorkflowRunnerClient
- (WFAppleEventWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3 input:(id)a4 parentIdentifier:(id)a5;
@end

@implementation WFAppleEventWorkflowRunnerClient

- (WFAppleEventWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3 input:(id)a4 parentIdentifier:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:v8];

  v10 = [[WFWorkflowRunRequest alloc] initWithInput:v7 presentationMode:1];
  [(WFWorkflowRunRequest *)v10 setRunSource:@"apple-event"];
  [(WFWorkflowRunRequest *)v10 setAllowsDialogNotifications:0];
  [(WFWorkflowRunRequest *)v10 setOutputBehavior:0];
  v13.receiver = self;
  v13.super_class = WFAppleEventWorkflowRunnerClient;
  v11 = [(WFWorkflowRunnerClient *)&v13 initWithDescriptor:v9 runRequest:v10];

  return v11;
}

@end