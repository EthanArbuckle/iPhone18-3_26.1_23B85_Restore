@interface SnippetInteractionRunner.Delegate
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithError:(id)a4 cancelled:(BOOL)a5;
@end

@implementation SnippetInteractionRunner.Delegate

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithError:(id)a4 cancelled:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_2748DBB38(v7, a4);
}

@end