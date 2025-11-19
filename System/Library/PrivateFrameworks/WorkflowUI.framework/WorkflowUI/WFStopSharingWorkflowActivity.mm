@interface WFStopSharingWorkflowActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)activityViewController;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation WFStopSharingWorkflowActivity

- (id)activityViewController
{
  v3 = WFLocalizedString(@"Stop Sharing");
  v4 = MEMORY[0x277D75110];
  v5 = WFLocalizedString(@"Are you sure you want to stop sharing this shortcut? The iCloud link will be deleted and will no longer work within a few minutes.");
  v6 = [v4 alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = WFLocalizedString(@"Cancel");
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  v10 = MEMORY[0x277D750F8];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke;
  v18 = &unk_279EE81B0;
  v11 = v6;
  v19 = v11;
  v20 = self;
  v12 = [v10 _actionWithTitle:v3 descriptiveText:0 image:0 style:2 handler:&v15 shouldDismissHandler:&__block_literal_global_204];
  [v11 addAction:{v12, v15, v16, v17, v18}];
  v13 = v11;

  return v11;
}

void __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTitle:0];
  [*(a1 + 32) setMessage:0];
  [*(a1 + 32) _setActions:MEMORY[0x277CBEBF8]];
  v2 = objc_alloc_init(WFActivityProgressViewController);
  [*(a1 + 32) setContentViewController:v2];
  v3 = [MEMORY[0x277D7C488] sharedManager];
  v4 = [*(a1 + 40) shortcut];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_2;
  v13[3] = &unk_279EE8160;
  v14 = v2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15 = v5;
  v16 = v6;
  v7 = v2;
  v8 = [v3 unshareSharedShortcut:v4 completionHandler:v13];
  [*(a1 + 40) setUnshareTask:v8];

  v9 = MEMORY[0x277D750F8];
  v10 = WFLocalizedString(@"Cancel");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_8;
  v12[3] = &unk_279EE8188;
  v12[4] = *(a1 + 40);
  v11 = [v9 actionWithTitle:v10 style:1 handler:v12];

  [*(a1 + 32) addAction:v11];
}

void __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_3;
  v7[3] = &unk_279EE8138;
  v8 = v3;
  v9 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) unshareTask];
  [v2 cancel];

  v3 = *(a1 + 32);

  return [v3 activityDidFinish:0];
}

void __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    [*(a1 + 40) setState:1];
    v5 = [*(a1 + 48) actions];
    [v5 enumerateObjectsUsingBlock:&__block_literal_global_14344];

    v6 = dispatch_time(0, 900000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_5;
    block[3] = &unk_279EE8A78;
    block[4] = *(a1 + 56);
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
    return;
  }

  if ([v2 wf_isUserCancelledError])
  {
    return;
  }

  v3 = [*(a1 + 32) domain];
  if (([v3 isEqualToString:*MEMORY[0x277CBBF50]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v4 = [*(a1 + 32) code];

  if (v4 != 20)
  {
LABEL_8:
    v7 = MEMORY[0x277CFC218];
    v8 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_6;
    v14[3] = &unk_279EE8C58;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v15 = v9;
    v16 = v10;
    v11 = [v7 alertWithError:v8 confirmationHandler:v14];
    v12 = [*(a1 + 48) presentingViewController];
    v13 = WFUserInterfaceFromViewController();

    [v13 presentAlert:v11];
  }
}

uint64_t __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_6(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__WFStopSharingWorkflowActivity_activityViewController__block_invoke_7;
  v3[3] = &unk_279EE8A78;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = a3;
  v6 = [v4 objectsMatchingClass:objc_opt_class()];

  v5 = [v6 firstObject];
  [(WFStopSharingWorkflowActivity *)self setShortcut:v5];
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = a3;
  v4 = [v3 objectsMatchingClass:objc_opt_class()];

  LOBYTE(v3) = [v4 count] != 0;
  return v3;
}

@end