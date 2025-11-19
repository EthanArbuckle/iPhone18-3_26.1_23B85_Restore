@interface WFMicaWorkflowRunnerClient
- (WFMicaWorkflowRunnerClient)initWithWorkflowName:(id)a3;
@end

@implementation WFMicaWorkflowRunnerClient

- (WFMicaWorkflowRunnerClient)initWithWorkflowName:(id)a3
{
  v4 = a3;
  v5 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithName:v4];

  v6 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:0];
  [(WFWorkflowRunRequest *)v6 setRunSource:@"mica"];
  v9.receiver = self;
  v9.super_class = WFMicaWorkflowRunnerClient;
  v7 = [(WFWorkflowRunnerClient *)&v9 initWithDescriptor:v5 runRequest:v6];

  return v7;
}

@end