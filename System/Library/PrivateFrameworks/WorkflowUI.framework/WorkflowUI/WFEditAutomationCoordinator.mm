@interface WFEditAutomationCoordinator
- (WFEditAutomationCoordinator)initWithDatabase:(id)database triggerRecord:(id)record triggerIdentifier:(id)identifier workflowReference:(id)reference;
- (WFEditAutomationCoordinatorDelegate)delegate;
- (id)start;
- (void)automationSummaryViewController:(id)controller editTrigger:(id)trigger;
- (void)automationSummaryViewController:(id)controller editWorkflow:(id)workflow;
- (void)automationSummaryViewControllerChooseShortcut:(id)shortcut;
- (void)cancel;
- (void)composeViewControllerRequestsDismissal:(id)dismissal;
- (void)finish;
- (void)triggerConfigurationViewController:(id)controller didFinishWithTrigger:(id)trigger;
- (void)triggerConfigurationViewControllerDidCancel:(id)cancel;
- (void)triggerSuggestionViewControllerDidFinish:(id)finish actions:(id)actions editable:(BOOL)editable selectedEntryMetadata:(id)metadata;
- (void)triggerSuggestionViewControllerDidFinish:(id)finish reference:(id)reference selectedEntryMetadata:(id)metadata;
- (void)updateUIForShowingViewController:(id)controller;
@end

@implementation WFEditAutomationCoordinator

- (WFEditAutomationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateUIForShowingViewController:(id)controller
{
  controllerCopy = controller;
  automationSummaryViewController = [(WFEditAutomationCoordinator *)self automationSummaryViewController];

  if (automationSummaryViewController == controllerCopy)
  {
    trigger = [(WFEditAutomationCoordinator *)self trigger];
    serializedData = [trigger serializedData];
    triggerRecord = [(WFEditAutomationCoordinator *)self triggerRecord];
    [triggerRecord setTriggerData:serializedData];

    automationSummaryViewController2 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    [automationSummaryViewController2 updateUI];
  }
}

- (void)composeViewControllerRequestsDismissal:(id)dismissal
{
  triggerManager = [(WFEditAutomationCoordinator *)self triggerManager];
  triggerIdentifier = [(WFEditAutomationCoordinator *)self triggerIdentifier];
  workflowReference = [(WFEditAutomationCoordinator *)self workflowReference];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__WFEditAutomationCoordinator_composeViewControllerRequestsDismissal___block_invoke;
  v7[3] = &unk_279EE8710;
  v7[4] = self;
  [triggerManager associateWorkflowToTriggerID:triggerIdentifier deletingExistingReference:0 notifyDaemon:1 workflowReference:workflowReference completion:v7];
}

- (void)triggerSuggestionViewControllerDidFinish:(id)finish reference:(id)reference selectedEntryMetadata:(id)metadata
{
  referenceCopy = reference;
  metadataCopy = metadata;
  [(WFEditAutomationCoordinator *)self setWorkflowReference:referenceCopy];
  triggerRecord = [(WFEditAutomationCoordinator *)self triggerRecord];
  [triggerRecord setEditableShortcut:0];

  triggerRecord2 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [triggerRecord2 setSelectedEntryMetadata:metadataCopy];

  triggerManager = [(WFEditAutomationCoordinator *)self triggerManager];
  triggerIdentifier = [(WFEditAutomationCoordinator *)self triggerIdentifier];
  editingWorkflow = [(WFEditAutomationCoordinator *)self editingWorkflow];
  hiddenFromLibraryAndSync = [editingWorkflow hiddenFromLibraryAndSync];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__WFEditAutomationCoordinator_triggerSuggestionViewControllerDidFinish_reference_selectedEntryMetadata___block_invoke;
  v16[3] = &unk_279EE87F8;
  v17 = referenceCopy;
  selfCopy = self;
  v15 = referenceCopy;
  [triggerManager associateWorkflowToTriggerID:triggerIdentifier deletingExistingReference:hiddenFromLibraryAndSync notifyDaemon:1 workflowReference:v15 completion:v16];
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

- (void)triggerSuggestionViewControllerDidFinish:(id)finish actions:(id)actions editable:(BOOL)editable selectedEntryMetadata:(id)metadata
{
  editableCopy = editable;
  v43 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  metadataCopy = metadata;
  editingWorkflow = [(WFEditAutomationCoordinator *)self editingWorkflow];
  hiddenFromLibraryAndSync = [editingWorkflow hiddenFromLibraryAndSync];

  v13 = objc_alloc_init(MEMORY[0x277D7CA60]);
  v14 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v17 = [v14 stringWithFormat:@"Automation %@", uUIDString];
  [v13 setName:v17];

  record = [v13 record];
  [record setHiddenFromLibraryAndSync:1];

  if ([actionsCopy count])
  {
    [v13 insertActions:actionsCopy atIndex:0];
  }

  v19 = objc_alloc(MEMORY[0x277D7CA68]);
  record2 = [v13 record];
  v21 = [v19 initWithRecord:record2];

  database = [(WFEditAutomationCoordinator *)self database];
  v38 = 0;
  v23 = [database createWorkflowWithOptions:v21 error:&v38];
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
  triggerRecord = [(WFEditAutomationCoordinator *)self triggerRecord];
  [triggerRecord setSelectedEntryMetadata:metadataCopy];

  triggerRecord2 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [triggerRecord2 setEditableShortcut:editableCopy];

  if (editableCopy)
  {
    v28 = [WFComposeViewController alloc];
    trigger = [(WFEditAutomationCoordinator *)self trigger];
    localizedDescriptionWithConfigurationSummary = [trigger localizedDescriptionWithConfigurationSummary];
    v31 = [(WFComposeViewController *)v28 initForTriggerEditingWithWorkflow:v13 triggerConfigurationDescription:localizedDescriptionWithConfigurationSummary];

    [v31 setDelegate:self];
    navigationItem = [v31 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    navigationController = [(WFEditAutomationCoordinator *)self navigationController];
    [navigationController pushViewController:v31 animated:1];
  }

  else
  {
    triggerManager = [(WFEditAutomationCoordinator *)self triggerManager];
    triggerIdentifier = [(WFEditAutomationCoordinator *)self triggerIdentifier];
    workflowReference = [(WFEditAutomationCoordinator *)self workflowReference];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __111__WFEditAutomationCoordinator_triggerSuggestionViewControllerDidFinish_actions_editable_selectedEntryMetadata___block_invoke;
    v37[3] = &unk_279EE8710;
    v37[4] = self;
    [triggerManager associateWorkflowToTriggerID:triggerIdentifier deletingExistingReference:hiddenFromLibraryAndSync notifyDaemon:1 workflowReference:workflowReference completion:v37];
  }
}

- (void)triggerConfigurationViewControllerDidCancel:(id)cancel
{
  navigationController = [(WFEditAutomationCoordinator *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)triggerConfigurationViewController:(id)controller didFinishWithTrigger:(id)trigger
{
  controllerCopy = controller;
  serializedData = [trigger serializedData];
  triggerRecord = [(WFEditAutomationCoordinator *)self triggerRecord];
  [triggerRecord setTriggerData:serializedData];

  LODWORD(serializedData) = [controllerCopy runImmediately];
  triggerRecord2 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [triggerRecord2 setShouldPrompt:serializedData ^ 1];

  shouldNotify = [controllerCopy shouldNotify];
  triggerRecord3 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [triggerRecord3 setShouldNotify:shouldNotify];

  shouldRecur = [controllerCopy shouldRecur];
  triggerRecord4 = [(WFEditAutomationCoordinator *)self triggerRecord];
  [triggerRecord4 setShouldRecur:shouldRecur];

  [(WFEditAutomationCoordinator *)self finish];
}

- (void)automationSummaryViewControllerChooseShortcut:(id)shortcut
{
  v4 = [WFTriggerSuggestionViewController alloc];
  trigger = [(WFEditAutomationCoordinator *)self trigger];
  v8 = [(WFTriggerSuggestionViewController *)v4 initWithTrigger:trigger selectedEntryMetadataData:0 selectedReference:0];

  navigationItem = [(WFTriggerSuggestionViewController *)v8 navigationItem];
  [navigationItem setLargeTitleDisplayMode:1];

  [(WFTriggerSuggestionViewController *)v8 setDelegate:self];
  navigationController = [(WFEditAutomationCoordinator *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)automationSummaryViewController:(id)controller editWorkflow:(id)workflow
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  workflowCopy = workflow;
  if (!workflowCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "[WFEditAutomationCoordinator automationSummaryViewController:editWorkflow:]";
    v27 = 2112;
    v28 = workflowCopy;
    _os_log_impl(&dword_274719000, v9, OS_LOG_TYPE_DEBUG, "%s will edit workflow: %@", buf, 0x16u);
  }

  triggerRecord = [(WFEditAutomationCoordinator *)self triggerRecord];
  editableShortcut = [triggerRecord editableShortcut];

  if (editableShortcut)
  {
    v12 = [WFComposeViewController alloc];
    trigger = [(WFEditAutomationCoordinator *)self trigger];
    localizedDescriptionWithConfigurationSummary = [trigger localizedDescriptionWithConfigurationSummary];
    v15 = [(WFComposeViewController *)v12 initForTriggerEditingWithWorkflow:workflowCopy triggerConfigurationDescription:localizedDescriptionWithConfigurationSummary];

    navigationItem = [(WFTriggerSuggestionViewController *)v15 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    [(WFTriggerSuggestionViewController *)v15 setDelegate:self];
    [(WFTriggerSuggestionViewController *)v15 setModalInPresentation:1];
  }

  else
  {
    v17 = [WFTriggerSuggestionViewController alloc];
    trigger2 = [(WFEditAutomationCoordinator *)self trigger];
    triggerRecord2 = [(WFEditAutomationCoordinator *)self triggerRecord];
    selectedEntryMetadata = [triggerRecord2 selectedEntryMetadata];
    workflowReference = [(WFEditAutomationCoordinator *)self workflowReference];
    v15 = [(WFTriggerSuggestionViewController *)v17 initWithTrigger:trigger2 selectedEntryMetadataData:selectedEntryMetadata selectedReference:workflowReference];

    navigationItem2 = [(WFTriggerSuggestionViewController *)v15 navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:1];

    [(WFTriggerSuggestionViewController *)v15 setDelegate:self];
  }

  navigationController = [(WFEditAutomationCoordinator *)self navigationController];
  [navigationController pushViewController:v15 animated:1];
}

- (void)automationSummaryViewController:(id)controller editTrigger:(id)trigger
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  triggerCopy = trigger;
  if (!triggerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"triggerRecord"}];
  }

  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[WFEditAutomationCoordinator automationSummaryViewController:editTrigger:]";
    v20 = 2112;
    v21 = triggerCopy;
    _os_log_impl(&dword_274719000, v9, OS_LOG_TYPE_DEBUG, "%s WFEditAutomationCoordinator will edit trigger: %@", buf, 0x16u);
  }

  trigger = [(WFEditAutomationCoordinator *)self trigger];
  v11 = [WFTriggerConfigurationViewController viewControllerClassForTriggerClass:objc_opt_class()];

  v12 = [v11 alloc];
  trigger2 = [(WFEditAutomationCoordinator *)self trigger];
  v14 = [v12 initWithTrigger:trigger2 mode:1];

  [v14 setDelegate:self];
  [v14 setRunImmediately:{objc_msgSend(triggerCopy, "shouldPrompt") ^ 1}];
  [v14 setShouldNotify:{objc_msgSend(triggerCopy, "shouldNotify")}];
  [v14 setShouldRecur:{objc_msgSend(triggerCopy, "shouldRecur")}];
  navigationItem = [v14 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [v14 setRunImmediately:{objc_msgSend(triggerCopy, "shouldPrompt") ^ 1}];
  navigationController = [(WFEditAutomationCoordinator *)self navigationController];
  [navigationController pushViewController:v14 animated:1];
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

  delegate = [(WFEditAutomationCoordinator *)self delegate];
  [delegate editAutomationCoordinatorDidCancel:self];
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
  triggerManager = [(WFEditAutomationCoordinator *)self triggerManager];
  triggerRecord = [(WFEditAutomationCoordinator *)self triggerRecord];
  triggerIdentifier = [(WFEditAutomationCoordinator *)self triggerIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__WFEditAutomationCoordinator_finish__block_invoke;
  v7[3] = &unk_279EE8710;
  v7[4] = self;
  [triggerManager updateConfiguredTrigger:triggerRecord triggerID:triggerIdentifier notifyDaemon:1 completion:v7];
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

  delegate = [(WFEditAutomationCoordinator *)self delegate];

  if (!delegate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:64 description:@"Delegate must be set before starting this coordinator"];
  }

  database = [(WFEditAutomationCoordinator *)self database];
  workflowReference = [(WFEditAutomationCoordinator *)self workflowReference];
  v44 = 0;
  v8 = [database recordWithDescriptor:workflowReference error:&v44];
  v9 = v44;

  if (v8)
  {
    v10 = MEMORY[0x277D7CA60];
    workflowReference2 = [(WFEditAutomationCoordinator *)self workflowReference];
    database2 = [(WFEditAutomationCoordinator *)self database];
    v43 = v9;
    v13 = [v10 workflowWithReference:workflowReference2 database:database2 error:&v43];
    v14 = v43;

    [(WFEditAutomationCoordinator *)self setEditingWorkflow:v13];
    editingWorkflow = [(WFEditAutomationCoordinator *)self editingWorkflow];

    if (!editingWorkflow)
    {
      triggerData = getWFTriggersLogObject();
      if (os_log_type_enabled(triggerData, OS_LOG_TYPE_ERROR))
      {
        database3 = [(WFEditAutomationCoordinator *)self database];
        workflowReference3 = [(WFEditAutomationCoordinator *)self workflowReference];
        *buf = 136315906;
        v46 = "[WFEditAutomationCoordinator start]";
        v47 = 2112;
        v48 = database3;
        v49 = 2112;
        v50 = workflowReference3;
        v51 = 2114;
        v52 = v14;
        _os_log_impl(&dword_274719000, triggerData, OS_LOG_TYPE_ERROR, "%s Failed to get workflow from database (%@) for reference (%@): %{public}@", buf, 0x2Au);
      }

      navigationController3 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v14 = v9;
  }

  triggerRecord = [(WFEditAutomationCoordinator *)self triggerRecord];
  triggerData = [triggerRecord triggerData];

  if (-[NSObject length](triggerData, "length") && ([MEMORY[0x277D7C970] triggerWithSerializedData:triggerData], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
    [(WFEditAutomationCoordinator *)self setTrigger:v21];
    v23 = [WFAutomationSummaryViewController alloc];
    triggerRecord2 = [(WFEditAutomationCoordinator *)self triggerRecord];
    triggerIdentifier = [(WFEditAutomationCoordinator *)self triggerIdentifier];
    editingWorkflow2 = [(WFEditAutomationCoordinator *)self editingWorkflow];
    v27 = [(WFAutomationSummaryViewController *)v23 initWithTrigger:triggerRecord2 triggerIdentifier:triggerIdentifier workflow:editingWorkflow2 mode:1];
    [(WFEditAutomationCoordinator *)self setAutomationSummaryViewController:v27];

    automationSummaryViewController = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    [automationSummaryViewController setDelegate:self];

    v29 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    automationSummaryViewController2 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    navigationItem = [automationSummaryViewController2 navigationItem];
    [navigationItem setLeftBarButtonItem:v29];

    automationSummaryViewController3 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    navigationItem2 = [automationSummaryViewController3 navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:2];

    v34 = objc_alloc(MEMORY[0x277D757A0]);
    automationSummaryViewController4 = [(WFEditAutomationCoordinator *)self automationSummaryViewController];
    v36 = [v34 initWithRootViewController:automationSummaryViewController4];
    [(WFEditAutomationCoordinator *)self setNavigationController:v36];

    navigationController = [(WFEditAutomationCoordinator *)self navigationController];
    [navigationController setDelegate:self];

    navigationController2 = [(WFEditAutomationCoordinator *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    navigationController3 = [(WFEditAutomationCoordinator *)self navigationController];
  }

  else
  {
    v22 = getWFTriggersLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v40 = [triggerData length];
      *buf = 136315650;
      v46 = "[WFEditAutomationCoordinator start]";
      v47 = 2112;
      v48 = triggerData;
      v49 = 2050;
      v50 = v40;
      _os_log_impl(&dword_274719000, v22, OS_LOG_TYPE_ERROR, "%s Failed to deserialize WFTrigger from data (%@) (length=%{public}lu)", buf, 0x20u);
    }

    navigationController3 = 0;
  }

LABEL_18:

  return navigationController3;
}

- (WFEditAutomationCoordinator)initWithDatabase:(id)database triggerRecord:(id)record triggerIdentifier:(id)identifier workflowReference:(id)reference
{
  databaseCopy = database;
  recordCopy = record;
  identifierCopy = identifier;
  referenceCopy = reference;
  if (databaseCopy)
  {
    if (recordCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (recordCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFEditAutomationCoordinator.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"triggerRecord"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = WFEditAutomationCoordinator;
  v16 = [(WFEditAutomationCoordinator *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_database, database);
    v18 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:databaseCopy];
    triggerManager = v17->_triggerManager;
    v17->_triggerManager = v18;

    objc_storeStrong(&v17->_triggerRecord, record);
    v20 = [identifierCopy copy];
    triggerIdentifier = v17->_triggerIdentifier;
    v17->_triggerIdentifier = v20;

    objc_storeStrong(&v17->_workflowReference, reference);
    v22 = v17;
  }

  return v17;
}

@end