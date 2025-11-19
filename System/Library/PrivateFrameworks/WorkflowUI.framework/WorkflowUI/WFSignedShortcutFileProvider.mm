@interface WFSignedShortcutFileProvider
- (WFSignedShortcutFileProvider)initWithWorkflow:(id)a3 userInterface:(id)a4;
- (id)item;
@end

@implementation WFSignedShortcutFileProvider

- (id)item
{
  v3 = [(UIActivityItemProvider *)self activityType];
  if ([v3 isEqualToString:@"is.workflow.activity.homescreen"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"is.workflow.activity.launchcenter") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"is.workflow.activity.submit") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"is.workflow.my.filesharer") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"is.workflow.my.fileduplicator") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D54760]))
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFSignedShortcutFileProvider;
    v4 = [(WFWorkflowItemProvider *)&v6 item];
  }

  return v4;
}

- (WFSignedShortcutFileProvider)initWithWorkflow:(id)a3 userInterface:(id)a4
{
  v6 = MEMORY[0x277CFC538];
  v7 = a4;
  v8 = a3;
  v9 = [v6 proposedTemporaryFileURLForFilename:@"Shortcut.shortcut"];
  v12.receiver = self;
  v12.super_class = WFSignedShortcutFileProvider;
  v10 = [(WFWorkflowItemProvider *)&v12 initWithWorkflow:v8 userInterface:v7 placeholderItem:v9];

  return v10;
}

@end