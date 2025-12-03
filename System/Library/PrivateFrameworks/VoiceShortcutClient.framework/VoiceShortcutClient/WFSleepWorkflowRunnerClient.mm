@interface WFSleepWorkflowRunnerClient
- (WFSleepWorkflowRunnerClient)initWithTrigger:(id)trigger;
@end

@implementation WFSleepWorkflowRunnerClient

- (WFSleepWorkflowRunnerClient)initWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = [WFWorkflowDatabaseRunDescriptor alloc];
  identifier = [triggerCopy identifier];

  v7 = [(WFWorkflowDatabaseRunDescriptor *)v5 initWithIdentifier:identifier];
  v8 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:0];
  [(WFWorkflowRunRequest *)v8 setRunSource:@"sleep"];
  v11.receiver = self;
  v11.super_class = WFSleepWorkflowRunnerClient;
  v9 = [(WFWorkflowRunnerClient *)&v11 initWithDescriptor:v7 runRequest:v8];

  return v9;
}

@end