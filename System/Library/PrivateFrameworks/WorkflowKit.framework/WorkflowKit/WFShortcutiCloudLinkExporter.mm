@interface WFShortcutiCloudLinkExporter
- (void)exportWorkflowWithCompletion:(id)a3;
@end

@implementation WFShortcutiCloudLinkExporter

- (void)exportWorkflowWithCompletion:(id)a3
{
  v4 = a3;
  v8 = +[WFGallerySessionManager sharedManager];
  v5 = [(WFShortcutExporter *)self workflowRecord];
  v6 = [(WFShortcutExporter *)self workflowRecord];
  v7 = [v6 name];
  [v8 uploadWorkflow:v5 withName:v7 shortDescription:0 longDescription:0 private:1 completionHandler:v4];
}

@end