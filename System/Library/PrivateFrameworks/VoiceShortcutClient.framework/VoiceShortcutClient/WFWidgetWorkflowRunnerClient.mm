@interface WFWidgetWorkflowRunnerClient
- (WFWidgetWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3 location:(int64_t)a4;
@end

@implementation WFWidgetWorkflowRunnerClient

- (WFWidgetWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3 location:(int64_t)a4
{
  v6 = a3;
  v7 = +[WFDevice currentDevice];
  v8 = [v7 hasSystemAperture];
  if (a4 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:v6];
  v11 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:v9];
  [(WFWorkflowRunRequest *)v11 setRunSource:@"widget"];
  v14.receiver = self;
  v14.super_class = WFWidgetWorkflowRunnerClient;
  v12 = [(WFWorkflowRunnerClient *)&v14 initWithDescriptor:v10 runRequest:v11];

  return v12;
}

@end