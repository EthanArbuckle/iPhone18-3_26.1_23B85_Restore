@interface WFWorkflowLinkProvider
- (WFWorkflowLinkProvider)initWithWorkflow:(id)a3 userInterface:(id)a4;
- (id)item;
- (id)shareShortcutEventForActivityType:(id)a3;
- (void)generateItemURL;
@end

@implementation WFWorkflowLinkProvider

- (id)item
{
  v3 = [(UIActivityItemProvider *)self activityType];
  if ([v3 isEqualToString:@"is.workflow.activity.homescreen"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"is.workflow.activity.launchcenter") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"is.workflow.activity.submit") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"is.workflow.my.filesharer") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"is.workflow.my.fileduplicator") & 1) != 0 || (+[WFReportShortcutActivity activityType](WFReportShortcutActivity, "activityType"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqualToString:", v4), v4, (v5))
  {
    v6 = 0;
  }

  else
  {
    v8 = [(WFWorkflowLinkProvider *)self exclusiveActivityType];
    v9 = v8;
    if (v8 && ![v8 isEqualToString:v3])
    {
      v6 = 0;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = WFWorkflowLinkProvider;
      v10 = [(WFWorkflowItemProvider *)&v12 item];
      v6 = v10;
      if (v10)
      {
        v11 = v10;
      }
    }
  }

  return v6;
}

- (void)generateItemURL
{
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v3 = dispatch_semaphore_create(0);
  v4 = [(UIActivityItemProvider *)self activityType];
  v5 = WFLocalizedString(@"Create iCloud Link");
  v6 = WFLocalizedString(@"Anyone with access to this shared link will be able to view the contents of this shortcut.");
  if ([v4 isEqualToString:@"is.workflow.my.linkcopier"])
  {
    v7 = @"Copy Link";
  }

  else
  {
    v7 = @"Share";
  }

  v8 = WFLocalizedString(v7);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v9 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
  [v9 setTitle:v5];
  [v9 setMessage:v6];
  v10 = MEMORY[0x277CFC220];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__WFWorkflowLinkProvider_generateItemURL__block_invoke;
  v23[3] = &unk_279EE8A78;
  v11 = v3;
  v24 = v11;
  v12 = [v10 cancelButtonWithHandler:v23];
  [v9 addButton:v12];

  v13 = MEMORY[0x277CFC220];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__WFWorkflowLinkProvider_generateItemURL__block_invoke_2;
  v20[3] = &unk_279EE8980;
  v22 = &v25;
  v14 = v11;
  v21 = v14;
  v15 = [v13 buttonWithTitle:v8 style:0 preferred:1 handler:v20];
  [v9 addButton:v15];

  v16 = [(WFWorkflowItemProvider *)self userInterface];
  [v16 presentAlert:v9];

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (v26[3])
  {
    v18.receiver = self;
    v18.super_class = WFWorkflowLinkProvider;
    [(WFWorkflowItemProvider *)&v18 generateItemURL];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFWorkflowLinkProvider_generateItemURL__block_invoke_3;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    v17 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  _Block_object_dispose(&v25, 8);
}

- (id)shareShortcutEventForActivityType:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFWorkflowLinkProvider;
  v3 = [(WFWorkflowItemProvider *)&v5 shareShortcutEventForActivityType:a3];
  [v3 setSharingMode:*MEMORY[0x277D7CF70]];

  return v3;
}

- (WFWorkflowLinkProvider)initWithWorkflow:(id)a3 userInterface:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WFGallerySharingURLForIdentifier();
  v15.receiver = self;
  v15.super_class = WFWorkflowLinkProvider;
  v9 = [(WFWorkflowItemProvider *)&v15 initWithWorkflow:v6 userInterface:v7 placeholderItem:v8];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D7C898]);
    v11 = objc_opt_new();
    v12 = [v10 initWithWorkflow:v6 sharingOptions:v11];
    [(WFWorkflowItemProvider *)v9 setShortcutExporter:v12];

    v13 = v9;
  }

  return v9;
}

@end