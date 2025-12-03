@interface WFICloudSignedShortcutFileProvider
- (WFICloudSignedShortcutFileProvider)initWithWorkflow:(id)workflow userInterface:(id)interface;
- (id)shareShortcutEventForActivityType:(id)type;
@end

@implementation WFICloudSignedShortcutFileProvider

- (id)shareShortcutEventForActivityType:(id)type
{
  v5.receiver = self;
  v5.super_class = WFICloudSignedShortcutFileProvider;
  v3 = [(WFWorkflowItemProvider *)&v5 shareShortcutEventForActivityType:type];
  [v3 setSharingMode:*MEMORY[0x277D7CF68]];

  return v3;
}

- (WFICloudSignedShortcutFileProvider)initWithWorkflow:(id)workflow userInterface:(id)interface
{
  workflowCopy = workflow;
  v13.receiver = self;
  v13.super_class = WFICloudSignedShortcutFileProvider;
  v7 = [(WFSignedShortcutFileProvider *)&v13 initWithWorkflow:workflowCopy userInterface:interface];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D7CAD0]);
    v9 = objc_opt_new();
    v10 = [v8 initWithWorkflow:workflowCopy sharingOptions:v9];
    [(WFWorkflowItemProvider *)v7 setShortcutExporter:v10];

    v11 = v7;
  }

  return v7;
}

@end