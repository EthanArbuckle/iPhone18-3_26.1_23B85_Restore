@interface WFAppleEventWorkflowRunnerClient
- (WFAppleEventWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier input:(id)input parentIdentifier:(id)parentIdentifier;
@end

@implementation WFAppleEventWorkflowRunnerClient

- (WFAppleEventWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier input:(id)input parentIdentifier:(id)parentIdentifier
{
  inputCopy = input;
  identifierCopy = identifier;
  v9 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:identifierCopy];

  v10 = [[WFWorkflowRunRequest alloc] initWithInput:inputCopy presentationMode:1];
  [(WFWorkflowRunRequest *)v10 setRunSource:@"apple-event"];
  [(WFWorkflowRunRequest *)v10 setAllowsDialogNotifications:0];
  [(WFWorkflowRunRequest *)v10 setOutputBehavior:0];
  v13.receiver = self;
  v13.super_class = WFAppleEventWorkflowRunnerClient;
  v11 = [(WFWorkflowRunnerClient *)&v13 initWithDescriptor:v9 runRequest:v10];

  return v11;
}

@end