@interface WFICloudSignedShortcutFileProvider
- (WFICloudSignedShortcutFileProvider)initWithWorkflow:(id)a3 userInterface:(id)a4;
- (id)shareShortcutEventForActivityType:(id)a3;
@end

@implementation WFICloudSignedShortcutFileProvider

- (id)shareShortcutEventForActivityType:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFICloudSignedShortcutFileProvider;
  v3 = [(WFWorkflowItemProvider *)&v5 shareShortcutEventForActivityType:a3];
  [v3 setSharingMode:*MEMORY[0x277D7CF68]];

  return v3;
}

- (WFICloudSignedShortcutFileProvider)initWithWorkflow:(id)a3 userInterface:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = WFICloudSignedShortcutFileProvider;
  v7 = [(WFSignedShortcutFileProvider *)&v13 initWithWorkflow:v6 userInterface:a4];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D7CAD0]);
    v9 = objc_opt_new();
    v10 = [v8 initWithWorkflow:v6 sharingOptions:v9];
    [(WFWorkflowItemProvider *)v7 setShortcutExporter:v10];

    v11 = v7;
  }

  return v7;
}

@end