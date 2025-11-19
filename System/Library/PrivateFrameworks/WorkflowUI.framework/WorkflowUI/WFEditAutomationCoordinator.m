@interface WFEditAutomationCoordinator
- (WFEditAutomationCoordinator)initWithDatabase:(id)a3 triggerRecord:(id)a4 triggerIdentifier:(id)a5 workflowReference:(id)a6;
- (WFEditAutomationCoordinatorDelegate)delegate;
- (id)start;
- (void)automationSummaryViewController:(id)a3 editTrigger:(id)a4;
- (void)automationSummaryViewController:(id)a3 editWorkflow:(id)a4;
- (void)automationSummaryViewControllerChooseShortcut:(id)a3;
- (void)cancel;
- (void)composeViewControllerRequestsDismissal:(id)a3;
- (void)finish;
- (void)triggerConfigurationViewController:(id)a3 didFinishWithTrigger:(id)a4;
- (void)triggerConfigurationViewControllerDidCancel:(id)a3;
- (void)triggerSuggestionViewControllerDidFinish:(id)a3 actions:(id)a4 editable:(BOOL)a5 selectedEntryMetadata:(id)a6;
- (void)triggerSuggestionViewControllerDidFinish:(id)a3 reference:(id)a4 selectedEntryMetadata:(id)a5;
- (void)updateUIForShowingViewController:(id)a3;
@end

@implementation WFEditAutomationCoordinator

- (WFEditAutomationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateUIForShowingViewController:(id)a3
{
  v4 = a3;
  v5 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];

  if (v5 == v4)
  {
    v6 = [(WFEditAutomationCoordinator *)self trigger];
    v7 = [v6 serializedData];
    v8 = [(WFEditAutomationCoordinator *)self triggerRecord];
    [v8 setTriggerData:v7];

    v9 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    [v9 updateUI];
  }
}

- (void)composeViewControllerRequestsDismissal:(id)a3
{
  v4 = [(WFEditAutomationCoordinator *)self triggerManager];
  v5 = [(WFEditAutomationCoordinator *)self triggerIdentifier];
  v6 = [(WFEditAutomationCoordinator *)self workflowReference];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__WFEditAutomationCoordinator_composeViewControllerRequestsDismissal___block_invoke;
  v7[3] = &unk_279EE8710;
  v7[4] = self;
  [v4 associateWorkflowToTriggerID:v5 deletingExistingReference:0 notifyDaemon:1 workflowReference:v6 completion:v7];
}

- (void)triggerSuggestionViewControllerDidFinish:(id)a3 reference:(id)a4 selectedEntryMetadata:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(WFEditAutomationCoordinator *)self setWorkflowReference:v7];
  v9 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [v9 setEditableShortcut:0];

  v10 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [v10 setSelectedEntryMetadata:v8];

  v11 = [(WFEditAutomationCoordinator *)self triggerManager];
  v12 = [(WFEditAutomationCoordinator *)self triggerIdentifier];
  v13 = [(WFEditAutomationCoordinator *)self editingWorkflow];
  v14 = [v13 hiddenFromLibraryAndSync];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__WFEditAutomationCoordinator_triggerSuggestionViewControllerDidFinish_reference_selectedEntryMetadata___block_invoke;
  v16[3] = &unk_279EE87F8;
  v17 = v7;
  v18 = self;
  v15 = v7;
  [v11 associateWorkflowToTriggerID:v12 deletingExistingReference:v14 notifyDaemon:1 workflowReference:v15 completion:v16];
}

void __104__WFEditAutomationCoordinator_triggerSuggestionViewControllerDidFinish_reference_selectedEntryMetadata___block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[WFEditAutomationCoordinator triggerSuggestionViewControllerDidFinish:reference:selectedEntryMetadata:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_ERROR, "%s Failed to update configured trigger with reference %@: error: %{public}@", &v8, 0x20u);
    }
  }

  [*(a1 + 40) finish];
}

- (void)triggerSuggestionViewControllerDidFinish:(id)a3 actions:(id)a4 editable:(BOOL)a5 selectedEntryMetadata:(id)a6
{
  v7 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  v11 = [(WFEditAutomationCoordinator *)self editingWorkflow];
  v12 = [v11 hiddenFromLibraryAndSync];

  v13 = objc_alloc_init(MEMORY[0x277D7CA60]);
  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCAD78] UUID];
  v16 = [v15 UUIDString];
  v17 = [v14 stringWithFormat:@"Automation %@", v16];
  [v13 setName:v17];

  v18 = [v13 record];
  [v18 setHiddenFromLibraryAndSync:1];

  if ([v9 count])
  {
    [v13 insertActions:v9 atIndex:0];
  }

  v19 = objc_alloc(MEMORY[0x277D7CA68]);
  v20 = [v13 record];
  v21 = [v19 initWithRecord:v20];

  v22 = [(WFEditAutomationCoordinator *)self database];
  v38 = 0;
  v23 = [v22 createWorkflowWithOptions:v21 error:&v38];
  v24 = v38;

  if (!v23)
  {
    v25 = getWFTriggersLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v40 = "[WFEditAutomationCoordinator triggerSuggestionViewControllerDidFinish:actions:editable:selectedEntryMetadata:]";
      v41 = 2114;
      v42 = v24;
      _os_log_impl(&dword_274719000, v25, OS_LOG_TYPE_FAULT, "%s Failed to create reference: %{public}@", buf, 0x16u);
    }
  }

  [(WFEditAutomationCoordinator *)self setWorkflowReference:v23];
  [(WFEditAutomationCoordinator *)self setEditingWorkflow:v13];
  v26 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [v26 setSelectedEntryMetadata:v10];

  v27 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [v27 setEditableShortcut:v7];

  if (v7)
  {
    v28 = [WFComposeViewController alloc];
    v29 = [(WFEditAutomationCoordinator *)self trigger];
    v30 = [v29 localizedDescriptionWithConfigurationSummary];
    v31 = [(WFComposeViewController *)v28 initForTriggerEditingWithWorkflow:v13 triggerConfigurationDescription:v30];

    [v31 setDelegate:self];
    v32 = [v31 navigationItem];
    [v32 setLargeTitleDisplayMode:2];

    v33 = [(WFEditAutomationCoordinator *)self navigationController];
    [v33 pushViewController:v31 animated:1];
  }

  else
  {
    v34 = [(WFEditAutomationCoordinator *)self triggerManager];
    v35 = [(WFEditAutomationCoordinator *)self triggerIdentifier];
    v36 = [(WFEditAutomationCoordinator *)self workflowReference];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __111__WFEditAutomationCoordinator_triggerSuggestionViewControllerDidFinish_actions_editable_selectedEntryMetadata___block_invoke;
    v37[3] = &unk_279EE8710;
    v37[4] = self;
    [v34 associateWorkflowToTriggerID:v35 deletingExistingReference:v12 notifyDaemon:1 workflowReference:v36 completion:v37];
  }
}

- (void)triggerConfigurationViewControllerDidCancel:(id)a3
{
  v4 = [(WFEditAutomationCoordinator *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)triggerConfigurationViewController:(id)a3 didFinishWithTrigger:(id)a4
{
  v6 = a3;
  v7 = [a4 serializedData];
  v8 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [v8 setTriggerData:v7];

  LODWORD(v7) = [v6 runImmediately];
  v9 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [v9 setShouldPrompt:v7 ^ 1];

  v10 = [v6 shouldNotify];
  v11 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [v11 setShouldNotify:v10];

  v12 = [v6 shouldRecur];
  v13 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [v13 setShouldRecur:v12];

  [(WFEditAutomationCoordinator *)self finish];
}

- (void)automationSummaryViewControllerChooseShortcut:(id)a3
{
  v4 = [WFTriggerSuggestionViewController alloc];
  v5 = [(WFEditAutomationCoordinator *)self trigger];
  v8 = [(WFTriggerSuggestionViewController *)v4 initWithTrigger:v5 selectedEntryMetadataData:0 selectedReference:0];

  v6 = [(WFTriggerSuggestionViewController *)v8 navigationItem];
  [v6 setLargeTitleDisplayMode:1];

  [(WFTriggerSuggestionViewController *)v8 setDelegate:self];
  v7 = [(WFEditAutomationCoordinator *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (void)automationSummaryViewController:(id)a3 editWorkflow:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "[WFEditAutomationCoordinator automationSummaryViewController:editWorkflow:]";
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_274719000, v9, OS_LOG_TYPE_DEBUG, "%s will edit workflow: %@", buf, 0x16u);
  }

  v10 = [(WFEditAutomationCoordinator *)self triggerRecord];
  v11 = [v10 editableShortcut];

  if (v11)
  {
    v12 = [WFComposeViewController alloc];
    v13 = [(WFEditAutomationCoordinator *)self trigger];
    v14 = [v13 localizedDescriptionWithConfigurationSummary];
    v15 = [(WFComposeViewController *)v12 initForTriggerEditingWithWorkflow:v8 triggerConfigurationDescription:v14];

    v16 = [(WFTriggerSuggestionViewController *)v15 navigationItem];
    [v16 setLargeTitleDisplayMode:2];

    [(WFTriggerSuggestionViewController *)v15 setDelegate:self];
    [(WFTriggerSuggestionViewController *)v15 setModalInPresentation:1];
  }

  else
  {
    v17 = [WFTriggerSuggestionViewController alloc];
    v18 = [(WFEditAutomationCoordinator *)self trigger];
    v19 = [(WFEditAutomationCoordinator *)self triggerRecord];
    v20 = [v19 selectedEntryMetadata];
    v21 = [(WFEditAutomationCoordinator *)self workflowReference];
    v15 = [(WFTriggerSuggestionViewController *)v17 initWithTrigger:v18 selectedEntryMetadataData:v20 selectedReference:v21];

    v22 = [(WFTriggerSuggestionViewController *)v15 navigationItem];
    [v22 setLargeTitleDisplayMode:1];

    [(WFTriggerSuggestionViewController *)v15 setDelegate:self];
  }

  v23 = [(WFEditAutomationCoordinator *)self navigationController];
  [v23 pushViewController:v15 animated:1];
}

- (void)automationSummaryViewController:(id)a3 editTrigger:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"triggerRecord"}];
  }

  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[WFEditAutomationCoordinator automationSummaryViewController:editTrigger:]";
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_274719000, v9, OS_LOG_TYPE_DEBUG, "%s WFEditAutomationCoordinator will edit trigger: %@", buf, 0x16u);
  }

  v10 = [(WFEditAutomationCoordinator *)self trigger];
  v11 = [WFTriggerConfigurationViewController viewControllerClassForTriggerClass:objc_opt_class()];

  v12 = [v11 alloc];
  v13 = [(WFEditAutomationCoordinator *)self trigger];
  v14 = [v12 initWithTrigger:v13 mode:1];

  [v14 setDelegate:self];
  [v14 setRunImmediately:{objc_msgSend(v8, "shouldPrompt") ^ 1}];
  [v14 setShouldNotify:{objc_msgSend(v8, "shouldNotify")}];
  [v14 setShouldRecur:{objc_msgSend(v8, "shouldRecur")}];
  v15 = [v14 navigationItem];
  [v15 setLargeTitleDisplayMode:2];

  [v14 setRunImmediately:{objc_msgSend(v8, "shouldPrompt") ^ 1}];
  v16 = [(WFEditAutomationCoordinator *)self navigationController];
  [v16 pushViewController:v14 animated:1];
}

- (void)cancel
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = getWFTriggersLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[WFEditAutomationCoordinator cancel]";
    _os_log_impl(&dword_274719000, v3, OS_LOG_TYPE_DEBUG, "%s WFEditAutomationCoordinator is cancelling", &v5, 0xCu);
  }

  v4 = [(WFEditAutomationCoordinator *)self delegate];
  [v4 editAutomationCoordinatorDidCancel:self];
}

- (void)finish
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = getWFTriggersLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[WFEditAutomationCoordinator finish]";
    _os_log_impl(&dword_274719000, v3, OS_LOG_TYPE_DEBUG, "%s WFEditAutomationCoordinator is finishing", buf, 0xCu);
  }

  [(WFEditAutomationCoordinator *)self setEditingWorkflow:0];
  v4 = [(WFEditAutomationCoordinator *)self triggerManager];
  v5 = [(WFEditAutomationCoordinator *)self triggerRecord];
  v6 = [(WFEditAutomationCoordinator *)self triggerIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__WFEditAutomationCoordinator_finish__block_invoke;
  v7[3] = &unk_279EE8710;
  v7[4] = self;
  [v4 updateConfiguredTrigger:v5 triggerID:v6 notifyDaemon:1 completion:v7];
}

void __37__WFEditAutomationCoordinator_finish__block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[WFEditAutomationCoordinator finish]_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_ERROR, "%s Failed to save configured trigger: %{public}@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFEditAutomationCoordinator_finish__block_invoke_192;
  block[3] = &unk_279EE8A78;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__WFEditAutomationCoordinator_finish__block_invoke_192(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 editAutomationCoordinatorDidFinish:*(a1 + 32)];
}

- (id)start
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v46 = "[WFEditAutomationCoordinator start]";
    _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_DEBUG, "%s WFEditAutomationCoordinator is starting", buf, 0xCu);
  }

  v5 = [(WFEditAutomationCoordinator *)self delegate];

  if (!v5)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:64 description:@"Delegate must be set before starting this coordinator"];
  }

  v6 = [(WFEditAutomationCoordinator *)self database];
  v7 = [(WFEditAutomationCoordinator *)self workflowReference];
  v44 = 0;
  v8 = [v6 recordWithDescriptor:v7 error:&v44];
  v9 = v44;

  if (v8)
  {
    v10 = MEMORY[0x277D7CA60];
    v11 = [(WFEditAutomationCoordinator *)self workflowReference];
    v12 = [(WFEditAutomationCoordinator *)self database];
    v43 = v9;
    v13 = [v10 workflowWithReference:v11 database:v12 error:&v43];
    v14 = v43;

    [(WFEditAutomationCoordinator *)self setEditingWorkflow:v13];
    v15 = [(WFEditAutomationCoordinator *)self editingWorkflow];

    if (!v15)
    {
      v16 = getWFTriggersLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [(WFEditAutomationCoordinator *)self database];
        v18 = [(WFEditAutomationCoordinator *)self workflowReference];
        *buf = 136315906;
        v46 = "[WFEditAutomationCoordinator start]";
        v47 = 2112;
        v48 = v17;
        v49 = 2112;
        v50 = v18;
        v51 = 2114;
        v52 = v14;
        _os_log_impl(&dword_274719000, v16, OS_LOG_TYPE_ERROR, "%s Failed to get workflow from database (%@) for reference (%@): %{public}@", buf, 0x2Au);
      }

      v19 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v14 = v9;
  }

  v20 = [(WFEditAutomationCoordinator *)self triggerRecord];
  v16 = [v20 triggerData];

  if (-[NSObject length](v16, "length") && ([MEMORY[0x277D7C970] triggerWithSerializedData:v16], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
    [(WFEditAutomationCoordinator *)self setTrigger:v21];
    v23 = [WFAutomationSummaryViewController alloc];
    v24 = [(WFEditAutomationCoordinator *)self triggerRecord];
    v25 = [(WFEditAutomationCoordinator *)self triggerIdentifier];
    v26 = [(WFEditAutomationCoordinator *)self editingWorkflow];
    v27 = [(WFAutomationSummaryViewController *)v23 initWithTrigger:v24 triggerIdentifier:v25 workflow:v26 mode:1];
    [(WFEditAutomationCoordinator *)self setAutomationSummaryViewController:v27];

    v28 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    [v28 setDelegate:self];

    v29 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    v30 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    v31 = [v30 navigationItem];
    [v31 setLeftBarButtonItem:v29];

    v32 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    v33 = [v32 navigationItem];
    [v33 setLargeTitleDisplayMode:2];

    v34 = objc_alloc(MEMORY[0x277D757A0]);
    v35 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    v36 = [v34 initWithRootViewController:v35];
    [(WFEditAutomationCoordinator *)self setNavigationController:v36];

    v37 = [(WFEditAutomationCoordinator *)self navigationController];
    [v37 setDelegate:self];

    v38 = [(WFEditAutomationCoordinator *)self navigationController];
    v39 = [v38 navigationBar];
    [v39 setPrefersLargeTitles:1];

    v19 = [(WFEditAutomationCoordinator *)self navigationController];
  }

  else
  {
    v22 = getWFTriggersLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v40 = [v16 length];
      *buf = 136315650;
      v46 = "[WFEditAutomationCoordinator start]";
      v47 = 2112;
      v48 = v16;
      v49 = 2050;
      v50 = v40;
      _os_log_impl(&dword_274719000, v22, OS_LOG_TYPE_ERROR, "%s Failed to deserialize WFTrigger from data (%@) (length=%{public}lu)", buf, 0x20u);
    }

    v19 = 0;
  }

LABEL_18:

  return v19;
}

- (WFEditAutomationCoordinator)initWithDatabase:(id)a3 triggerRecord:(id)a4 triggerIdentifier:(id)a5 workflowReference:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"triggerRecord"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = WFEditAutomationCoordinator;
  v16 = [(WFEditAutomationCoordinator *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_database, a3);
    v18 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v12];
    triggerManager = v17->_triggerManager;
    v17->_triggerManager = v18;

    objc_storeStrong(&v17->_triggerRecord, a4);
    v20 = [v14 copy];
    triggerIdentifier = v17->_triggerIdentifier;
    v17->_triggerIdentifier = v20;

    objc_storeStrong(&v17->_workflowReference, a6);
    v22 = v17;
  }

  return v17;
}

@end