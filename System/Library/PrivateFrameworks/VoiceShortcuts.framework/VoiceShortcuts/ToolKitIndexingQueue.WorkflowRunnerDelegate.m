@interface ToolKitIndexingQueue.WorkflowRunnerDelegate
- (void)outOfProcessWorkflowController:(id)a3 didFinishWithResult:(id)a4 dialogAttribution:(id)a5 runResidency:(unint64_t)a6;
@end

@implementation ToolKitIndexingQueue.WorkflowRunnerDelegate

- (void)outOfProcessWorkflowController:(id)a3 didFinishWithResult:(id)a4 dialogAttribution:(id)a5 runResidency:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_2310CFC24(v12, v10);
}

@end