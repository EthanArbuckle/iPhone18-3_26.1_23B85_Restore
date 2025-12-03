@interface WFWidgetWorkflowRunnerClient
- (WFWidgetWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier location:(int64_t)location;
@end

@implementation WFWidgetWorkflowRunnerClient

- (WFWidgetWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier location:(int64_t)location
{
  identifierCopy = identifier;
  v7 = +[WFDevice currentDevice];
  hasSystemAperture = [v7 hasSystemAperture];
  if (location == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = hasSystemAperture;
  }

  v10 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:identifierCopy];
  v11 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:v9];
  [(WFWorkflowRunRequest *)v11 setRunSource:@"widget"];
  v14.receiver = self;
  v14.super_class = WFWidgetWorkflowRunnerClient;
  v12 = [(WFWorkflowRunnerClient *)&v14 initWithDescriptor:v10 runRequest:v11];

  return v12;
}

@end