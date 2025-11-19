@interface SageWorkflowRunnerClientToolExecutionSession
- (NSString)debugDescription;
- (void)workflowRunnerClient:(WFSageWorkflowRunnerClient *)a3 postedDialogRequest:(WFDialogRequest *)a4 completionHandler:(id)a5;
- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4;
- (void)workflowRunnerClient:(id)a3 postedEvent:(int64_t)a4;
@end

@implementation SageWorkflowRunnerClientToolExecutionSession

- (NSString)debugDescription
{
  v2 = self;
  sub_1C8CBE164();

  v3 = sub_1C9063EBC();

  return v3;
}

- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1C8CC3900(v8, a4);
}

- (void)workflowRunnerClient:(WFSageWorkflowRunnerClient *)a3 postedDialogRequest:(WFDialogRequest *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1C8E08CA0(&unk_1C90851F8, v9);
}

- (void)workflowRunnerClient:(id)a3 postedEvent:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1C8E08DB0(v7, a4);
}

@end