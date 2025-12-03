@interface ArchiveInteractionRunner.Delegate
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithError:(id)error cancelled:(BOOL)cancelled;
@end

@implementation ArchiveInteractionRunner.Delegate

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithError:(id)error cancelled:(BOOL)cancelled
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_26A62AE70(clientCopy, error);
}

@end