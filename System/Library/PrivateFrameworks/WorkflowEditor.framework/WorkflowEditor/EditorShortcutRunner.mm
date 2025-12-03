@interface EditorShortcutRunner
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithAllResults:(id)results error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation EditorShortcutRunner

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  clientCopy = client;
  progressCopy = progress;
  selfCopy = self;
  sub_274530624(selfCopy, progress);
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithAllResults:(id)results error:(id)error cancelled:(BOOL)cancelled
{
  if (results)
  {
    sub_274412734(0, &unk_28094C200);
    sub_274412734(0, &unk_280950440);
    sub_27446839C();
    sub_27463B4CC();
  }

  clientCopy = client;
  errorCopy = error;
  selfCopy = self;
  sub_274530974();
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  clientCopy = client;
  outputCopy = output;
  selfCopy = self;
  errorCopy = error;
  sub_2745310A0();
}

@end