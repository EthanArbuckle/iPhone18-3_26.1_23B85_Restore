@interface EditorShortcutRunner
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithAllResults:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4;
@end

@implementation EditorShortcutRunner

- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_274530624(v8, a4);
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithAllResults:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  if (a4)
  {
    sub_274412734(0, &unk_28094C200);
    sub_274412734(0, &unk_280950440);
    sub_27446839C();
    sub_27463B4CC();
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_274530974();
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = a5;
  sub_2745310A0();
}

@end