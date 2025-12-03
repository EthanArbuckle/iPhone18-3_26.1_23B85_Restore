@interface WFP2PSignedShortcutFileProvider
- (WFP2PSignedShortcutFileProvider)initWithWorkflow:(id)workflow userInterface:(id)interface;
- (id)shareShortcutEventForActivityType:(id)type;
- (void)generateItemURL;
@end

@implementation WFP2PSignedShortcutFileProvider

- (void)generateItemURL
{
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v3 = dispatch_semaphore_create(0);
  shortcutExporter = [(WFWorkflowItemProvider *)self shortcutExporter];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__WFP2PSignedShortcutFileProvider_generateItemURL__block_invoke;
  v6[3] = &unk_279EE8958;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [shortcutExporter exportWorkflowWithCompletion:v6];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __50__WFP2PSignedShortcutFileProvider_generateItemURL__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x277CFC218];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __50__WFP2PSignedShortcutFileProvider_generateItemURL__block_invoke_2;
    v13 = &unk_279EE8C58;
    v6 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = v6;
    v7 = [v5 alertWithError:a3 confirmationHandler:&v10];
    v8 = [*(a1 + 32) userInterface];
    [v8 presentAlert:v7];
  }

  else
  {
    [*(a1 + 32) setWorkflowURL:a2];
    v9 = *(a1 + 40);

    dispatch_semaphore_signal(v9);
  }
}

intptr_t __50__WFP2PSignedShortcutFileProvider_generateItemURL__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WFP2PSignedShortcutFileProvider_generateItemURL__block_invoke_3;
  block[3] = &unk_279EE8A78;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (id)shareShortcutEventForActivityType:(id)type
{
  v5.receiver = self;
  v5.super_class = WFP2PSignedShortcutFileProvider;
  v3 = [(WFWorkflowItemProvider *)&v5 shareShortcutEventForActivityType:type];
  [v3 setSharingMode:*MEMORY[0x277D7CF60]];

  return v3;
}

- (WFP2PSignedShortcutFileProvider)initWithWorkflow:(id)workflow userInterface:(id)interface
{
  workflowCopy = workflow;
  v13.receiver = self;
  v13.super_class = WFP2PSignedShortcutFileProvider;
  v7 = [(WFSignedShortcutFileProvider *)&v13 initWithWorkflow:workflowCopy userInterface:interface];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D7C6D0]);
    v9 = objc_opt_new();
    v10 = [v8 initWithWorkflow:workflowCopy sharingOptions:v9];
    [(WFWorkflowItemProvider *)v7 setShortcutExporter:v10];

    v11 = v7;
  }

  return v7;
}

@end