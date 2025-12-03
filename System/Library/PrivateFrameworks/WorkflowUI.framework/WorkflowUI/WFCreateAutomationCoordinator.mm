@interface WFCreateAutomationCoordinator
- (WFCreateAutomationCoordinator)initWithDatabase:(id)database homeManager:(id)manager;
- (WFCreateAutomationCoordinatorDelegate)delegate;
- (void)automationSummaryViewController:(id)controller didFinishWithTrigger:(id)trigger;
- (void)buildViewControllerForHomeTriggerChooserStepWithBackButtonAction:(unint64_t)action hostingViewController:(id)controller completion:(id)completion;
- (void)buildViewControllerForPersonalTriggerChooserStepWithBackButtonAction:(unint64_t)action completion:(id)completion;
- (void)cancel;
- (void)cleanUpAbandonedTriggerIfNecessary;
- (void)composeViewControllerRequestsDismissal:(id)dismissal;
- (void)dealloc;
- (void)finishWithTriggerRecord:(id)record;
- (void)openHomeApp;
- (void)selectTypeViewController:(id)controller didChooseAutomationType:(unint64_t)type;
- (void)selectTypeViewController:(id)controller didChooseTrigger:(id)trigger;
- (void)startAtStep:(unint64_t)step hostingViewController:(id)controller completion:(id)completion;
- (void)triggerConfigurationViewController:(id)controller didFinishWithTrigger:(id)trigger;
- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder;
- (void)triggerSuggestionViewControllerDidFinish:(id)finish actions:(id)actions editable:(BOOL)editable selectedEntryMetadata:(id)metadata;
- (void)triggerSuggestionViewControllerDidFinish:(id)finish reference:(id)reference selectedEntryMetadata:(id)metadata;
@end

@implementation WFCreateAutomationCoordinator

- (WFCreateAutomationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)automationSummaryViewController:(id)controller didFinishWithTrigger:(id)trigger
{
  v14 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v6 = getWFTriggersLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[WFCreateAutomationCoordinator automationSummaryViewController:didFinishWithTrigger:]";
    _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_DEBUG, "%s summary VC did finish", &v12, 0xCu);
  }

  v7 = MEMORY[0x277D7C990];
  workflowReference = [(WFCreateAutomationCoordinator *)self workflowReference];
  [v7 trackAddAutomationWithWorkflowReference:workflowReference triggerRecord:triggerCopy];

  v9 = MEMORY[0x277D7C990];
  workflow = [(WFCreateAutomationCoordinator *)self workflow];
  workflowReference2 = [(WFCreateAutomationCoordinator *)self workflowReference];
  [v9 trackAddAutomationActionsWithWorkflow:workflow workflowReference:workflowReference2];

  [(WFCreateAutomationCoordinator *)self finishWithTriggerRecord:triggerCopy];
}

- (void)composeViewControllerRequestsDismissal:(id)dismissal
{
  workflow = [dismissal workflow];
  [(WFCreateAutomationCoordinator *)self setWorkflow:workflow];

  v5 = MEMORY[0x277D7C990];
  workflow2 = [(WFCreateAutomationCoordinator *)self workflow];
  reference = [workflow2 reference];
  triggerRecord = [(WFCreateAutomationCoordinator *)self triggerRecord];
  [v5 trackAddAutomationWithWorkflowReference:reference triggerRecord:triggerRecord];

  v9 = MEMORY[0x277D7C990];
  workflow3 = [(WFCreateAutomationCoordinator *)self workflow];
  workflow4 = [(WFCreateAutomationCoordinator *)self workflow];
  reference2 = [workflow4 reference];
  [v9 trackAddAutomationActionsWithWorkflow:workflow3 workflowReference:reference2];

  triggerRecord2 = [(WFCreateAutomationCoordinator *)self triggerRecord];
  [(WFCreateAutomationCoordinator *)self finishWithTriggerRecord:triggerRecord2];
}

- (void)triggerSuggestionViewControllerDidFinish:(id)finish reference:(id)reference selectedEntryMetadata:(id)metadata
{
  v28 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  referenceCopy = reference;
  metadataCopy = metadata;
  [(WFCreateAutomationCoordinator *)self cleanUpAbandonedTriggerIfNecessary];
  defaultDatabase = [MEMORY[0x277D7C2F0] defaultDatabase];
  v22 = 0;
  v12 = [MEMORY[0x277D7CA60] workflowWithReference:referenceCopy database:defaultDatabase error:&v22];
  v13 = v22;
  if (v12)
  {
    [(WFCreateAutomationCoordinator *)self setWorkflowReference:referenceCopy];
    triggerRecord = [(WFCreateAutomationCoordinator *)self triggerRecord];
    [triggerRecord setEditableShortcut:0];

    triggerRecord2 = [(WFCreateAutomationCoordinator *)self triggerRecord];
    [triggerRecord2 setSelectedEntryMetadata:metadataCopy];

    objc_initWeak(location, self);
    triggerManager = [(WFCreateAutomationCoordinator *)self triggerManager];
    triggerRecord3 = [(WFCreateAutomationCoordinator *)self triggerRecord];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __106__WFCreateAutomationCoordinator_triggerSuggestionViewControllerDidFinish_reference_selectedEntryMetadata___block_invoke;
    v19[3] = &unk_279EE8820;
    v19[4] = self;
    objc_copyWeak(&v21, location);
    v20 = referenceCopy;
    [triggerManager saveNewConfiguredTrigger:triggerRecord3 notifyDaemon:1 completion:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v18 = getWFTriggersLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *location = 136315650;
      *&location[4] = "[WFCreateAutomationCoordinator triggerSuggestionViewControllerDidFinish:reference:selectedEntryMetadata:]";
      v24 = 2112;
      v25 = referenceCopy;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_274719000, v18, OS_LOG_TYPE_ERROR, "%s Could not get workflow from reference %@ with error %@", location, 0x20u);
    }
  }
}

void __106__WFCreateAutomationCoordinator_triggerSuggestionViewControllerDidFinish_reference_selectedEntryMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  [*(a1 + 32) setUnfinishedTriggerIdentifier:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained triggerManager];
  v6 = [WeakRetained unfinishedTriggerIdentifier];
  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106__WFCreateAutomationCoordinator_triggerSuggestionViewControllerDidFinish_reference_selectedEntryMetadata___block_invoke_2;
  v8[3] = &unk_279EE87F8;
  v9 = v7;
  v10 = WeakRetained;
  [v5 associateWorkflowToTriggerID:v6 deletingExistingReference:0 notifyDaemon:1 workflowReference:v9 completion:v8];
}

void __106__WFCreateAutomationCoordinator_triggerSuggestionViewControllerDidFinish_reference_selectedEntryMetadata___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v16 = 136315650;
      v17 = "[WFCreateAutomationCoordinator triggerSuggestionViewControllerDidFinish:reference:selectedEntryMetadata:]_block_invoke_2";
      v18 = 2112;
      v19 = v7;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_ERROR, "%s Failed to update configured trigger with reference %@: error: %{public}@", &v16, 0x20u);
    }
  }

  v8 = MEMORY[0x277D7C990];
  v9 = [*(a1 + 40) workflowReference];
  v10 = [*(a1 + 40) triggerRecord];
  [v8 trackAddAutomationWithWorkflowReference:v9 triggerRecord:v10];

  v11 = MEMORY[0x277D7C990];
  v12 = [*(a1 + 40) workflow];
  v13 = [*(a1 + 40) workflowReference];
  [v11 trackAddAutomationActionsWithWorkflow:v12 workflowReference:v13];

  v14 = *(a1 + 40);
  v15 = [v14 triggerRecord];
  [v14 finishWithTriggerRecord:v15];
}

- (void)triggerSuggestionViewControllerDidFinish:(id)finish actions:(id)actions editable:(BOOL)editable selectedEntryMetadata:(id)metadata
{
  editableCopy = editable;
  finishCopy = finish;
  actionsCopy = actions;
  metadataCopy = metadata;
  [(WFCreateAutomationCoordinator *)self cleanUpAbandonedTriggerIfNecessary];
  triggerRecord = [(WFCreateAutomationCoordinator *)self triggerRecord];
  [triggerRecord setEditableShortcut:editableCopy];

  triggerRecord2 = [(WFCreateAutomationCoordinator *)self triggerRecord];
  [triggerRecord2 setSelectedEntryMetadata:metadataCopy];

  v15 = [actionsCopy count];
  v16 = objc_opt_new();
  [v16 setActionCount:{objc_msgSend(actionsCopy, "count")}];
  if (v15)
  {
    v17 = @"ShortcutSourceAppShortcut";
  }

  else
  {
    v17 = @"ShortcutSourceOnDevice";
  }

  [v16 setShortcutSource:v17];
  [v16 track];

  v18 = objc_alloc_init(MEMORY[0x277D7CA60]);
  v19 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v22 = [v19 stringWithFormat:@"Automation %@", uUIDString];
  [v18 setName:v22];

  record = [v18 record];
  [record setHiddenFromLibraryAndSync:1];

  if ([actionsCopy count])
  {
    [v18 insertActions:actionsCopy atIndex:0];
  }

  objc_initWeak(&location, self);
  triggerManager = [(WFCreateAutomationCoordinator *)self triggerManager];
  triggerRecord3 = [(WFCreateAutomationCoordinator *)self triggerRecord];
  record2 = [v18 record];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __113__WFCreateAutomationCoordinator_triggerSuggestionViewControllerDidFinish_actions_editable_selectedEntryMetadata___block_invoke;
  v27[3] = &unk_279EE87D0;
  objc_copyWeak(&v28, &location);
  v29 = editableCopy;
  [triggerManager saveNewConfiguredTrigger:triggerRecord3 workflow:record2 notifyDaemon:1 completion:v27];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __113__WFCreateAutomationCoordinator_triggerSuggestionViewControllerDidFinish_actions_editable_selectedEntryMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = MEMORY[0x277D7CA60];
  v9 = [WeakRetained database];
  v10 = [v8 workflowWithReference:v6 database:v9 error:0];

  [WeakRetained setWorkflowReference:v6];
  v11 = [v5 identifier];
  [WeakRetained setUnfinishedTriggerIdentifier:v11];

  if (*(a1 + 40) == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__WFCreateAutomationCoordinator_triggerSuggestionViewControllerDidFinish_actions_editable_selectedEntryMetadata___block_invoke_2;
    block[3] = &unk_279EE8CA8;
    v20 = v10;
    v21 = v5;
    v22 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v12 = MEMORY[0x277D7C990];
    v13 = [WeakRetained workflowReference];
    v14 = [WeakRetained triggerRecord];
    [v12 trackAddAutomationWithWorkflowReference:v13 triggerRecord:v14];

    v15 = MEMORY[0x277D7C990];
    v16 = [WeakRetained workflow];
    v17 = [WeakRetained workflowReference];
    [v15 trackAddAutomationActionsWithWorkflow:v16 workflowReference:v17];

    v18 = [WeakRetained triggerRecord];
    [WeakRetained finishWithTriggerRecord:v18];
  }
}

void __113__WFCreateAutomationCoordinator_triggerSuggestionViewControllerDidFinish_actions_editable_selectedEntryMetadata___block_invoke_2(uint64_t a1)
{
  v2 = [WFComposeViewController alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) trigger];
  v5 = [v4 localizedDescriptionWithConfigurationSummary];
  v7 = [(WFComposeViewController *)v2 initForTriggerEditingWithWorkflow:v3 triggerConfigurationDescription:v5];

  [v7 setDelegate:*(a1 + 48)];
  [v7 setModalInPresentation:1];
  v6 = [*(a1 + 48) navigationController];
  [v6 pushViewController:v7 animated:1];
}

- (void)triggerConfigurationViewController:(id)controller didFinishWithTrigger:(id)trigger
{
  v6 = MEMORY[0x277D7C290];
  triggerCopy = trigger;
  controllerCopy = controller;
  v15 = objc_alloc_init(v6);
  serializedData = [triggerCopy serializedData];
  [v15 setTriggerData:serializedData];

  [v15 setShouldPrompt:{objc_msgSend(controllerCopy, "runImmediately") ^ 1}];
  [v15 setShouldNotify:{objc_msgSend(controllerCopy, "shouldNotify")}];
  shouldRecur = [controllerCopy shouldRecur];

  [v15 setShouldRecur:shouldRecur];
  [v15 setEnabled:1];
  [v15 setSource:0];
  [v15 setNotificationLevel:0];
  [(WFCreateAutomationCoordinator *)self setTriggerRecord:v15];
  v11 = [[WFTriggerSuggestionViewController alloc] initWithTrigger:triggerCopy selectedEntryMetadataData:0 selectedReference:0];

  [(WFTriggerSuggestionViewController *)v11 setDelegate:self];
  navigationItem = [(WFTriggerSuggestionViewController *)v11 navigationItem];
  [navigationItem _setSupportsTwoLineLargeTitles:1];

  navigationItem2 = [(WFTriggerSuggestionViewController *)v11 navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:1];

  navigationController = [(WFCreateAutomationCoordinator *)self navigationController];
  [navigationController pushViewController:v11 animated:1];
}

- (void)cleanUpAbandonedTriggerIfNecessary
{
  unfinishedTriggerIdentifier = [(WFCreateAutomationCoordinator *)self unfinishedTriggerIdentifier];
  if (unfinishedTriggerIdentifier)
  {
    v4 = unfinishedTriggerIdentifier;
    triggerRecord = [(WFCreateAutomationCoordinator *)self triggerRecord];

    if (triggerRecord)
    {
      triggerManager = [(WFCreateAutomationCoordinator *)self triggerManager];
      unfinishedTriggerIdentifier2 = [(WFCreateAutomationCoordinator *)self unfinishedTriggerIdentifier];
      [triggerManager deleteTriggerWithIdentifier:unfinishedTriggerIdentifier2 notifyDaemon:1 completion:&__block_literal_global_254];
    }
  }
}

void __67__WFCreateAutomationCoordinator_cleanUpAbandonedTriggerIfNecessary__block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[WFCreateAutomationCoordinator cleanUpAbandonedTriggerIfNecessary]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_274719000, v5, OS_LOG_TYPE_ERROR, "%s Failed to delete configured trigger: %@", &v6, 0x16u);
    }
  }
}

- (void)selectTypeViewController:(id)controller didChooseAutomationType:(unint64_t)type
{
  controllerCopy = controller;
  if (type == 1)
  {
    objc_initWeak(&location, self);
    navigationController = [(WFCreateAutomationCoordinator *)self navigationController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__WFCreateAutomationCoordinator_selectTypeViewController_didChooseAutomationType___block_invoke_2;
    v9[3] = &unk_279EE87A8;
    objc_copyWeak(&v10, &location);
    [(WFCreateAutomationCoordinator *)self buildViewControllerForHomeTriggerChooserStepWithBackButtonAction:0 hostingViewController:navigationController completion:v9];

    v7 = &v10;
    goto LABEL_5;
  }

  if (!type)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__WFCreateAutomationCoordinator_selectTypeViewController_didChooseAutomationType___block_invoke;
    v11[3] = &unk_279EE87A8;
    objc_copyWeak(&v12, &location);
    [(WFCreateAutomationCoordinator *)self buildViewControllerForPersonalTriggerChooserStepWithBackButtonAction:0 completion:v11];
    v7 = &v12;
LABEL_5:
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __82__WFCreateAutomationCoordinator_selectTypeViewController_didChooseAutomationType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x277D75348] wf_accentColor];
  v5 = [WeakRetained navigationController];
  v6 = [v5 navigationBar];
  [v6 setTintColor:v4];

  v7 = [WeakRetained navigationController];
  [v7 pushViewController:v3 animated:1];
}

void __82__WFCreateAutomationCoordinator_selectTypeViewController_didChooseAutomationType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x277D75348] wf_homeTintColor];
  v5 = [WeakRetained navigationController];
  v6 = [v5 navigationBar];
  [v6 setTintColor:v4];

  v7 = [WeakRetained navigationController];
  [v7 pushViewController:v3 animated:1];
}

- (void)selectTypeViewController:(id)controller didChooseTrigger:(id)trigger
{
  triggerCopy = trigger;
  v7 = objc_opt_class();
  if (([v7 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCreateAutomationCoordinator.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"[trigger.class isSubclassOfClass:[WFTrigger class]]"}];
  }

  v11 = [objc_alloc(+[WFTriggerConfigurationViewController viewControllerClassForTriggerClass:](WFTriggerConfigurationViewController viewControllerClassForTriggerClass:{objc_opt_class())), "initWithTrigger:mode:", triggerCopy, 0}];

  [v11 setDelegate:self];
  navigationItem = [v11 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  navigationController = [(WFCreateAutomationCoordinator *)self navigationController];
  [navigationController pushViewController:v11 animated:1];
}

- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder
{
  v11 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v6 = getWFTriggersLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[WFCreateAutomationCoordinator triggerEditor:didFinishWithTriggerBuilder:]";
    v9 = 2112;
    v10 = builderCopy;
    _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_DEBUG, "%s didFinishWithTriggerBuilder: %@", &v7, 0x16u);
  }

  if (builderCopy)
  {
    [(WFCreateAutomationCoordinator *)self finishWithTriggerRecord:0];
  }

  else
  {
    [(WFCreateAutomationCoordinator *)self cancel];
  }
}

- (void)openHomeApp
{
  v2 = objc_alloc(MEMORY[0x277CFC240]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x277D7A258] options:0 URL:0 userActivity:0];
  [v3 performWithCompletionHandler:&__block_literal_global_16499];
}

void __44__WFCreateAutomationCoordinator_openHomeApp__block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[WFCreateAutomationCoordinator openHomeApp]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_274719000, v5, OS_LOG_TYPE_ERROR, "%s Failed to open Home app with error: %@", &v6, 0x16u);
    }
  }
}

- (void)cancel
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = getWFTriggersLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[WFCreateAutomationCoordinator cancel]";
    _os_log_impl(&dword_274719000, v3, OS_LOG_TYPE_DEBUG, "%s WFCreateAutomationCoordinator was cancelled", buf, 0xCu);
  }

  unfinishedTriggerIdentifier = [(WFCreateAutomationCoordinator *)self unfinishedTriggerIdentifier];
  v5 = unfinishedTriggerIdentifier == 0;

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__WFCreateAutomationCoordinator_cancel__block_invoke;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    objc_initWeak(buf, self);
    triggerManager = [(WFCreateAutomationCoordinator *)self triggerManager];
    unfinishedTriggerIdentifier2 = [(WFCreateAutomationCoordinator *)self unfinishedTriggerIdentifier];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__WFCreateAutomationCoordinator_cancel__block_invoke_2;
    v8[3] = &unk_279EE8760;
    objc_copyWeak(&v9, buf);
    [triggerManager deleteTriggerWithIdentifier:unfinishedTriggerIdentifier2 notifyDaemon:1 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __39__WFCreateAutomationCoordinator_cancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void __39__WFCreateAutomationCoordinator_cancel__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[WFCreateAutomationCoordinator cancel]_block_invoke_2";
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_ERROR, "%s Failed to delete configured trigger: %{public}@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WFCreateAutomationCoordinator_cancel__block_invoke_246;
  block[3] = &unk_279EE8908;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __39__WFCreateAutomationCoordinator_cancel__block_invoke_246(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 createAutomationCoordinatorDidCancel:WeakRetained];
}

- (void)finishWithTriggerRecord:(id)record
{
  v23 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFTriggersLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v22 = "[WFCreateAutomationCoordinator finishWithTriggerRecord:]";
    _os_log_impl(&dword_274719000, v5, OS_LOG_TYPE_DEBUG, "%s WFCreateAutomationCoordinator is finished", buf, 0xCu);
  }

  unfinishedTriggerIdentifier = [(WFCreateAutomationCoordinator *)self unfinishedTriggerIdentifier];
  [(WFCreateAutomationCoordinator *)self setUnfinishedTriggerIdentifier:0];
  v7 = getWFTriggersLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (recordCopy)
  {
    if (v8)
    {
      *buf = 136315138;
      v22 = "[WFCreateAutomationCoordinator finishWithTriggerRecord:]";
      _os_log_impl(&dword_274719000, v7, OS_LOG_TYPE_INFO, "%s Updating workflow and trigger", buf, 0xCu);
    }

    if (unfinishedTriggerIdentifier)
    {
      workflow = [(WFCreateAutomationCoordinator *)self workflow];

      if (workflow)
      {
        database = [(WFCreateAutomationCoordinator *)self database];
        workflow2 = [(WFCreateAutomationCoordinator *)self workflow];
        record = [workflow2 record];
        workflowReference = [(WFCreateAutomationCoordinator *)self workflowReference];
        v20 = 0;
        v14 = [database saveRecord:record withDescriptor:workflowReference error:&v20];
        workflow = v20;

        if ((v14 & 1) == 0)
        {
          v15 = getWFTriggersLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v22 = "[WFCreateAutomationCoordinator finishWithTriggerRecord:]";
            _os_log_impl(&dword_274719000, v15, OS_LOG_TYPE_ERROR, "%s Failed to save edited workflow", buf, 0xCu);
          }
        }
      }

      objc_initWeak(buf, self);
      triggerManager = [(WFCreateAutomationCoordinator *)self triggerManager];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __57__WFCreateAutomationCoordinator_finishWithTriggerRecord___block_invoke;
      v17[3] = &unk_279EE8738;
      objc_copyWeak(&v19, buf);
      v18 = unfinishedTriggerIdentifier;
      [triggerManager updateConfiguredTrigger:recordCopy triggerID:v18 notifyDaemon:0 completion:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    else
    {
      workflow = getWFTriggersLogObject();
      if (os_log_type_enabled(workflow, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[WFCreateAutomationCoordinator finishWithTriggerRecord:]";
        _os_log_impl(&dword_274719000, workflow, OS_LOG_TYPE_ERROR, "%s Attempted to finish trigger creation but trigger identifier was nil", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v22 = "[WFCreateAutomationCoordinator finishWithTriggerRecord:]";
      _os_log_impl(&dword_274719000, v7, OS_LOG_TYPE_INFO, "%s No trigger to save; was a Home Automation", buf, 0xCu);
    }

    workflow = [(WFCreateAutomationCoordinator *)self delegate];
    [workflow createAutomationCoordinatorDidFinish:self];
  }
}

void __57__WFCreateAutomationCoordinator_finishWithTriggerRecord___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained triggerManager];
  v4 = *(a1 + 32);
  v5 = [WeakRetained workflowReference];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WFCreateAutomationCoordinator_finishWithTriggerRecord___block_invoke_2;
  v6[3] = &unk_279EE8710;
  v6[4] = WeakRetained;
  [v3 associateWorkflowToTriggerID:v4 deletingExistingReference:0 notifyDaemon:1 workflowReference:v5 completion:v6];
}

void __57__WFCreateAutomationCoordinator_finishWithTriggerRecord___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[WFCreateAutomationCoordinator finishWithTriggerRecord:]_block_invoke_2";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_ERROR, "%s Failed to save configured trigger: %{public}@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WFCreateAutomationCoordinator_finishWithTriggerRecord___block_invoke_243;
  block[3] = &unk_279EE8A78;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__WFCreateAutomationCoordinator_finishWithTriggerRecord___block_invoke_243(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 createAutomationCoordinatorDidFinish:*(a1 + 32)];
}

- (void)buildViewControllerForHomeTriggerChooserStepWithBackButtonAction:(unint64_t)action hostingViewController:(id)controller completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __131__WFCreateAutomationCoordinator_buildViewControllerForHomeTriggerChooserStepWithBackButtonAction_hostingViewController_completion___block_invoke;
  aBlock[3] = &unk_279EE86C0;
  aBlock[4] = self;
  aBlock[5] = a2;
  aBlock[6] = action;
  v30 = _Block_copy(aBlock);
  homeManager = [(WFCreateAutomationCoordinator *)self homeManager];
  homesToWhichWeCanAddHomeAutomations = [homeManager homesToWhichWeCanAddHomeAutomations];

  if ([homesToWhichWeCanAddHomeAutomations count])
  {
    if ([homesToWhichWeCanAddHomeAutomations count] == 1)
    {
      firstObject = [homesToWhichWeCanAddHomeAutomations firstObject];
      v13 = v30[2](v30, firstObject);

      completionCopy[2](completionCopy, v13);
    }

    else if ([homesToWhichWeCanAddHomeAutomations count] >= 2)
    {
      v28 = controllerCopy;
      v27 = WFLocalizedString(@"Choose a Home to Automate");
      v14 = [MEMORY[0x277D75110] alertControllerWithTitle:? message:? preferredStyle:?];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = homesToWhichWeCanAddHomeAutomations;
      v15 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v35 + 1) + 8 * i);
            v20 = MEMORY[0x277D750F8];
            name = [v19 name];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __131__WFCreateAutomationCoordinator_buildViewControllerForHomeTriggerChooserStepWithBackButtonAction_hostingViewController_completion___block_invoke_2;
            v32[3] = &unk_279EE86E8;
            v22 = v30;
            v32[4] = v19;
            v33 = v22;
            v34 = completionCopy;
            v23 = [v20 actionWithTitle:name style:0 handler:v32];
            [v14 addAction:v23];
          }

          v16 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v16);
      }

      v24 = MEMORY[0x277D750F8];
      v25 = WFLocalizedString(@"Cancel");
      v26 = [v24 actionWithTitle:v25 style:1 handler:0];
      [v14 addAction:v26];

      controllerCopy = v28;
      [v28 presentViewController:v14 animated:1 completion:0];
    }
  }

  else
  {
    [(WFCreateAutomationCoordinator *)self openHomeApp];
  }
}

id __131__WFCreateAutomationCoordinator_buildViewControllerForHomeTriggerChooserStepWithBackButtonAction_hostingViewController_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a1[5] object:a1[4] file:@"WFCreateAutomationCoordinator.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v4 = [(objc_class *)getHFHomeKitDispatcherClass() sharedDispatcher];
  [v4 setSelectedHome:v3 userInitiated:0];
  v5 = [objc_alloc(getHUTriggerTypePickerViewControllerClass()) initWithActionSetBuilder:0 delegate:a1[4]];
  v6 = v5;
  v7 = a1[6];
  if (v7 == 1)
  {
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:a1[4] action:sel_cancel];
    v9 = [v6 navigationItem];
    [v9 setLeftBarButtonItem:v8];
  }

  else
  {
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = [v5 navigationItem];
    [v8 setLeftBarButtonItem:0];
  }

LABEL_8:

  return v6;
}

void __131__WFCreateAutomationCoordinator_buildViewControllerForHomeTriggerChooserStepWithBackButtonAction_hostingViewController_completion___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
}

- (void)buildViewControllerForPersonalTriggerChooserStepWithBackButtonAction:(unint64_t)action completion:(id)completion
{
  completionCopy = completion;
  v6 = [WFAutomationSelectTypeViewController alloc];
  triggerManager = [(WFCreateAutomationCoordinator *)self triggerManager];
  v8 = [(WFAutomationSelectTypeViewController *)v6 initWithTriggerManager:triggerManager];

  [(WFAutomationSelectTypeViewController *)v8 setDelegate:self];
  navigationItem = [(WFAutomationSelectTypeViewController *)v8 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  if (action == 1)
  {
    navigationItem3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    navigationItem2 = [(WFAutomationSelectTypeViewController *)v8 navigationItem];
    [navigationItem2 setLeftBarButtonItem:navigationItem3];
  }

  else
  {
    if (action)
    {
      goto LABEL_6;
    }

    navigationItem3 = [(WFAutomationSelectTypeViewController *)v8 navigationItem];
    [navigationItem3 setLeftBarButtonItem:0];
  }

LABEL_6:
  completionCopy[2](completionCopy, v8);
}

- (void)startAtStep:(unint64_t)step hostingViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCreateAutomationCoordinator.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  delegate = [(WFCreateAutomationCoordinator *)self delegate];

  if (!delegate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCreateAutomationCoordinator.m" lineNumber:84 description:@"Delegate must be set before starting this coordinator"];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__WFCreateAutomationCoordinator_startAtStep_hostingViewController_completion___block_invoke;
  aBlock[3] = &unk_279EE8698;
  v17 = completionCopy;
  stepCopy = step;
  aBlock[4] = self;
  v12 = completionCopy;
  v13 = _Block_copy(aBlock);
  if (step >= 2)
  {
    if (step == 2)
    {
      [(WFCreateAutomationCoordinator *)self buildViewControllerForHomeTriggerChooserStepWithBackButtonAction:1 hostingViewController:controllerCopy completion:v13];
    }
  }

  else
  {
    [(WFCreateAutomationCoordinator *)self buildViewControllerForPersonalTriggerChooserStepWithBackButtonAction:1 completion:v13];
  }
}

void __78__WFCreateAutomationCoordinator_startAtStep_hostingViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (!v13)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  v3 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
  [*(a1 + 32) setNavigationController:v3];

  v4 = [*(a1 + 32) navigationController];
  v5 = [v4 navigationBar];
  [v5 setPrefersLargeTitles:1];

  v6 = *(a1 + 48);
  if (v6 < 2)
  {
    v7 = [MEMORY[0x277D75348] wf_accentColor];
LABEL_7:
    v8 = v7;
    v9 = [*(a1 + 32) navigationController];
    v10 = [v9 navigationBar];
    [v10 setTintColor:v8];

    goto LABEL_8;
  }

  if (v6 == 2)
  {
    v7 = [MEMORY[0x277D75348] wf_homeTintColor];
    goto LABEL_7;
  }

LABEL_8:
  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) navigationController];
  (*(v11 + 16))(v11, v12);

LABEL_9:
}

- (void)dealloc
{
  [(WFCreateAutomationCoordinator *)self cleanUpAbandonedTriggerIfNecessary];
  v3.receiver = self;
  v3.super_class = WFCreateAutomationCoordinator;
  [(WFCreateAutomationCoordinator *)&v3 dealloc];
}

- (WFCreateAutomationCoordinator)initWithDatabase:(id)database homeManager:(id)manager
{
  databaseCopy = database;
  managerCopy = manager;
  v10 = managerCopy;
  if (databaseCopy)
  {
    if (managerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCreateAutomationCoordinator.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCreateAutomationCoordinator.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"homeManager"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFCreateAutomationCoordinator;
  v11 = [(WFCreateAutomationCoordinator *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_database, database);
    v13 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:databaseCopy];
    triggerManager = v12->_triggerManager;
    v12->_triggerManager = v13;

    objc_storeStrong(&v12->_homeManager, manager);
    v15 = v12;
  }

  return v12;
}

@end