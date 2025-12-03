@interface ScreenshotDelegate
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutputFiles:(id)files error:(id)error cancelled:(BOOL)cancelled;
@end

@implementation ScreenshotDelegate

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutputFiles:(id)files error:(id)error cancelled:(BOOL)cancelled
{
  filesCopy = files;
  if (files)
  {
    sub_267BA9F38(0, &qword_28022AF58, 0x277D79EB0);
    filesCopy = sub_267EF92F8();
  }

  clientCopy = client;
  errorCopy = error;
  selfCopy = self;
  sub_267D14320(clientCopy, filesCopy, error, cancelled);
}

@end