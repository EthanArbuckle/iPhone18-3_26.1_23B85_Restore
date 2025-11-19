@interface WFSleepWorkflowRunnerClient
- (WFSleepWorkflowRunnerClient)initWithTrigger:(id)a3;
@end

@implementation WFSleepWorkflowRunnerClient

- (WFSleepWorkflowRunnerClient)initWithTrigger:(id)a3
{
  v4 = a3;
  v5 = [WFWorkflowDatabaseRunDescriptor alloc];
  v6 = [v4 identifier];

  v7 = [(WFWorkflowDatabaseRunDescriptor *)v5 initWithIdentifier:v6];
  v8 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:0];
  [(WFWorkflowRunRequest *)v8 setRunSource:@"sleep"];
  v11.receiver = self;
  v11.super_class = WFSleepWorkflowRunnerClient;
  v9 = [(WFWorkflowRunnerClient *)&v11 initWithDescriptor:v7 runRequest:v8];

  return v9;
}

@end