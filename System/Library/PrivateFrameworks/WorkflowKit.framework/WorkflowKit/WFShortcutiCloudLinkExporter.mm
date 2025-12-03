@interface WFShortcutiCloudLinkExporter
- (void)exportWorkflowWithCompletion:(id)completion;
@end

@implementation WFShortcutiCloudLinkExporter

- (void)exportWorkflowWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = +[WFGallerySessionManager sharedManager];
  workflowRecord = [(WFShortcutExporter *)self workflowRecord];
  workflowRecord2 = [(WFShortcutExporter *)self workflowRecord];
  name = [workflowRecord2 name];
  [v8 uploadWorkflow:workflowRecord withName:name shortDescription:0 longDescription:0 private:1 completionHandler:completionCopy];
}

@end