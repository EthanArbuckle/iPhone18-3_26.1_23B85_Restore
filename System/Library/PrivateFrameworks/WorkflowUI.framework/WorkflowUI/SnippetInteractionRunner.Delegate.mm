@interface SnippetInteractionRunner.Delegate
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithError:(id)error cancelled:(BOOL)cancelled;
@end

@implementation SnippetInteractionRunner.Delegate

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithError:(id)error cancelled:(BOOL)cancelled
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_2748DBB38(clientCopy, error);
}

@end