@interface ScreenshotDelegate
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutputFiles:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
@end

@implementation ScreenshotDelegate

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutputFiles:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v8 = a4;
  if (a4)
  {
    sub_267BA9F38(0, &qword_28022AF58, 0x277D79EB0);
    v8 = sub_267EF92F8();
  }

  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_267D14320(v11, v8, a5, a6);
}

@end