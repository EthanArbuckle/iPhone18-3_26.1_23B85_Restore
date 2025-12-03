@interface WFSignedShortcutFileProvider
- (WFSignedShortcutFileProvider)initWithWorkflow:(id)workflow userInterface:(id)interface;
- (id)item;
@end

@implementation WFSignedShortcutFileProvider

- (id)item
{
  activityType = [(UIActivityItemProvider *)self activityType];
  if ([activityType isEqualToString:@"is.workflow.activity.homescreen"] & 1) != 0 || (objc_msgSend(activityType, "isEqualToString:", @"is.workflow.activity.launchcenter") & 1) != 0 || (objc_msgSend(activityType, "isEqualToString:", @"is.workflow.activity.submit") & 1) != 0 || (objc_msgSend(activityType, "isEqualToString:", @"is.workflow.my.filesharer") & 1) != 0 || (objc_msgSend(activityType, "isEqualToString:", @"is.workflow.my.fileduplicator") & 1) != 0 || (objc_msgSend(activityType, "isEqualToString:", *MEMORY[0x277D54760]))
  {
    item = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFSignedShortcutFileProvider;
    item = [(WFWorkflowItemProvider *)&v6 item];
  }

  return item;
}

- (WFSignedShortcutFileProvider)initWithWorkflow:(id)workflow userInterface:(id)interface
{
  v6 = MEMORY[0x277CFC538];
  interfaceCopy = interface;
  workflowCopy = workflow;
  v9 = [v6 proposedTemporaryFileURLForFilename:@"Shortcut.shortcut"];
  v12.receiver = self;
  v12.super_class = WFSignedShortcutFileProvider;
  v10 = [(WFWorkflowItemProvider *)&v12 initWithWorkflow:workflowCopy userInterface:interfaceCopy placeholderItem:v9];

  return v10;
}

@end