@interface SageWorkflowRunnerClientToolExecutionSession
- (NSString)debugDescription;
- (void)workflowRunnerClient:(WFSageWorkflowRunnerClient *)client postedDialogRequest:(WFDialogRequest *)request completionHandler:(id)handler;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
- (void)workflowRunnerClient:(id)client postedEvent:(int64_t)event;
@end

@implementation SageWorkflowRunnerClientToolExecutionSession

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1C8CBE164();

  v3 = sub_1C9063EBC();

  return v3;
}

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  clientCopy = client;
  progressCopy = progress;
  selfCopy = self;
  sub_1C8CC3900(selfCopy, progress);
}

- (void)workflowRunnerClient:(WFSageWorkflowRunnerClient *)client postedDialogRequest:(WFDialogRequest *)request completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = client;
  v9[3] = request;
  v9[4] = v8;
  v9[5] = self;
  clientCopy = client;
  requestCopy = request;
  selfCopy = self;

  sub_1C8E08CA0(&unk_1C90851F8, v9);
}

- (void)workflowRunnerClient:(id)client postedEvent:(int64_t)event
{
  clientCopy = client;
  selfCopy = self;
  sub_1C8E08DB0(selfCopy, event);
}

@end