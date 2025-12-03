@interface ToolKitIndexingQueue.WorkflowRunnerDelegate
- (void)outOfProcessWorkflowController:(id)controller didFinishWithResult:(id)result dialogAttribution:(id)attribution runResidency:(unint64_t)residency;
@end

@implementation ToolKitIndexingQueue.WorkflowRunnerDelegate

- (void)outOfProcessWorkflowController:(id)controller didFinishWithResult:(id)result dialogAttribution:(id)attribution runResidency:(unint64_t)residency
{
  controllerCopy = controller;
  resultCopy = result;
  attributionCopy = attribution;
  selfCopy = self;
  sub_2310CFC24(selfCopy, resultCopy);
}

@end