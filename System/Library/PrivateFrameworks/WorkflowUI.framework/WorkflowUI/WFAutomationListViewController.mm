@interface WFAutomationListViewController
- (BOOL)showEditViewForItem:(id)item;
- (BOOL)showHomeAutomationEditorForTriggerItem:(id)item;
- (BOOL)showPersonalAutomationEditorForConfiguredTrigger:(id)trigger;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (WFAutomationListViewController)initWithDatabase:(id)database workflowProvider:(id)provider;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)automationListCell:(id)cell didUpdateNotificationsEnabled:(BOOL)enabled;
- (void)buildTableSectionsWithConfiguredTriggers:(id)triggers homeTriggers:(id)homeTriggers;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)editAutomationCoordinatorDidCancel:(id)cancel;
- (void)editAutomationCoordinatorDidFinish:(id)finish;
- (void)flashAutomationForTriggerID:(id)d;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder;
- (void)updateTableViewLayoutMargins;
- (void)updateUIWithConfiguredTriggers:(id)triggers homeTriggers:(id)homeTriggers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFAutomationListViewController

- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__WFAutomationListViewController_triggerEditor_didFinishWithTriggerBuilder___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__WFAutomationListViewController_triggerEditor_didFinishWithTriggerBuilder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v4 = [*(a1 + 32) tableView];
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v3 animated:1];
}

- (BOOL)showHomeAutomationEditorForTriggerItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutomationListViewController.m" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"triggerItem"}];
  }

  trigger = [itemCopy trigger];
  home = [itemCopy home];
  v8 = home;
  if (!itemCopy || !trigger || !home)
  {
    v13 = getWFTriggersLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[WFAutomationListViewController showHomeAutomationEditorForTriggerItem:]";
      v22 = 2114;
      v23 = itemCopy;
      _os_log_impl(&dword_274719000, v13, OS_LOG_TYPE_ERROR, "%s Missing home or trigger from triggerItem: %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  HFTriggerBuilderClass = getHFTriggerBuilderClass();
  getHUTriggerBuilderContextClass();
  v10 = objc_opt_new();
  v11 = [(objc_class *)HFTriggerBuilderClass triggerBuilderForTrigger:trigger inHome:v8 context:v10];

  if (!v11)
  {
    v15 = getWFTriggersLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[WFAutomationListViewController showHomeAutomationEditorForTriggerItem:]";
      v22 = 2112;
      v23 = trigger;
      _os_log_impl(&dword_274719000, v15, OS_LOG_TYPE_ERROR, "%s Could not create HFTriggerBuilder for trigger: %@", buf, 0x16u);
    }

    v13 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__WFAutomationListViewController_showHomeAutomationEditorForTriggerItem___block_invoke;
  v18[3] = &unk_279EE8C58;
  v18[4] = self;
  v13 = v11;
  v19 = v13;
  [mEMORY[0x277D7C4F0] ensureHomesAreLoadedWithCompletionHandler:v18];

  v14 = 1;
LABEL_14:

  return v14;
}

void __73__WFAutomationListViewController_showHomeAutomationEditorForTriggerItem___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D7C4F0] sharedManager];
  v3 = [v2 requiresHomeUpdate];

  if (v3)
  {
    v16 = objc_alloc_init(_TtC10WorkflowUI28HomeUpdateRequiredController);
    v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
    [v4 setModalPresentationStyle:2];
    v5 = [v4 presentationController];
    v6 = v5;
    if (v5)
    {
      [v5 setDelegate:*(a1 + 32)];
    }

    [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
    v7 = [*(a1 + 32) tableView];
    v8 = [*(a1 + 32) tableView];
    v9 = [v8 indexPathForSelectedRow];
    [v7 deselectRowAtIndexPath:v9 animated:1];
  }

  else
  {
    v10 = objc_alloc(getHUTriggerSummaryViewControllerClass());
    v11 = *(a1 + 40);
    v12 = [objc_alloc(getHUTriggerActionFlowClass()) initWithFlowState:3];
    v16 = [v10 initWithTriggerBuilder:v11 flow:v12 delegate:*(a1 + 32)];

    v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
    v13 = [MEMORY[0x277D75348] wf_homeTintColor];
    v14 = [v4 navigationBar];
    [v14 setTintColor:v13];

    [v4 setModalPresentationStyle:2];
    v15 = [v4 presentationController];
    v6 = v15;
    if (v15)
    {
      [v15 setDelegate:*(a1 + 32)];
    }

    [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
  }
}

- (void)editAutomationCoordinatorDidCancel:(id)cancel
{
  navigationController = [cancel navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  tableView = [(WFAutomationListViewController *)self tableView];
  tableView2 = [(WFAutomationListViewController *)self tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)editAutomationCoordinatorDidFinish:(id)finish
{
  navigationController = [finish navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  tableView = [(WFAutomationListViewController *)self tableView];
  tableView2 = [(WFAutomationListViewController *)self tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  tableView3 = [(WFAutomationListViewController *)self tableView];
  [tableView3 reloadData];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  tableView = [(WFAutomationListViewController *)self tableView];
  [tableView selectRowAtIndexPath:0 animated:0 scrollPosition:0];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  tableSections = [(WFAutomationListViewController *)self tableSections];
  v6 = [tableSections objectAtIndexedSubscript:section];

  v7 = [v6 objectForKeyedSubscript:@"title"];
  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setDirectionalLayoutMargins:{4.0, 0.0, 10.0, 0.0}];
    v9 = objc_opt_new();
    v10 = MEMORY[0x277D74300];
    v11 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20]];
    v12 = [v11 fontDescriptorWithSymbolicTraits:2];
    v13 = [v10 fontWithDescriptor:v12 size:0.0];
    [v9 setFont:v13];

    [v9 setText:v7];
    [v8 addSubview:v9];
    layoutMarginsGuide = [v8 layoutMarginsGuide];
    v15 = [v9 wf_addConstraintsToFillLayoutGuide:layoutMarginsGuide];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableSections = [(WFAutomationListViewController *)self tableSections];
  v6 = [tableSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v7 = [v6 objectForKeyedSubscript:@"items"];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  if (![(WFAutomationListViewController *)self showEditViewForItem:v8])
  {
    tableView = [(WFAutomationListViewController *)self tableView];
    [tableView deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  if (style == 1)
  {
    pathCopy = path;
    tableSections = [(WFAutomationListViewController *)self tableSections];
    v8 = [tableSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    v9 = [v8 objectForKeyedSubscript:@"items"];
    v10 = [pathCopy row];

    v11 = [v9 objectAtIndex:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      identifier = [v12 identifier];
      if (!identifier)
      {
        v17 = getWFTriggersLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "[WFAutomationListViewController tableView:commitEditingStyle:forRowAtIndexPath:]";
          v25 = 2112;
          v26 = v12;
          _os_log_impl(&dword_274719000, v17, OS_LOG_TYPE_ERROR, "%s failed to get triggerID from WFConfiguredTrigger: %@", buf, 0x16u);
        }

        goto LABEL_8;
      }

      v14 = identifier;
      triggerManager = [(WFAutomationListViewController *)self triggerManager];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __81__WFAutomationListViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
      v21[3] = &unk_279EE8710;
      v16 = &v22;
      v22 = v14;
      v17 = v14;
      [triggerManager deleteTriggerWithIdentifier:v17 notifyDaemon:1 completion:v21];
    }

    else
    {
      getHFTriggerItemClass();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_9:

        return;
      }

      v18 = v11;
      v12 = [v8 objectForKeyedSubscript:@"home"];
      triggerManager = [v18 trigger];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __81__WFAutomationListViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_220;
      v19[3] = &unk_279EE76C8;
      v16 = v20;
      v20[0] = v18;
      v20[1] = self;
      v17 = v18;
      [v12 removeTrigger:triggerManager completionHandler:v19];
    }

LABEL_8:
    goto LABEL_9;
  }
}

void __81__WFAutomationListViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, char a2, void *a3)
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
      v9 = "[WFAutomationListViewController tableView:commitEditingStyle:forRowAtIndexPath:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_ERROR, "%s Failed to delete triggerID (%@) error: %{public}@", &v8, 0x20u);
    }
  }
}

void __81__WFAutomationListViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_220(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFTriggersLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) trigger];
      *buf = 136315650;
      v8 = "[WFAutomationListViewController tableView:commitEditingStyle:forRowAtIndexPath:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_ERROR, "%s Failed to delete home trigger (%@) error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__WFAutomationListViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_221;
    block[3] = &unk_279EE8A78;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __81__WFAutomationListViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_221(uint64_t a1)
{
  v1 = [*(a1 + 32) updateHandler];
  v1[2]();
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableSections = [(WFAutomationListViewController *)self tableSections];
  section = [pathCopy section];

  v8 = [tableSections objectAtIndexedSubscript:section];

  v9 = [v8 objectForKeyedSubscript:@"isEditable"];
  LOBYTE(section) = [v9 BOOLValue];

  return section;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableSections = [(WFAutomationListViewController *)self tableSections];
  v7 = [tableSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v8 = [v7 objectForKeyedSubscript:@"cellIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"items"];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  tableView = [(WFAutomationListViewController *)self tableView];
  v12 = [tableView dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  [(WFAutomationListViewController *)self configureCell:v12 forItem:v10];

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  tableSections = [(WFAutomationListViewController *)self tableSections];
  v6 = [tableSections objectAtIndexedSubscript:section];
  v7 = [v6 objectForKeyedSubscript:@"items"];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  tableSections = [(WFAutomationListViewController *)self tableSections];
  v4 = [tableSections count];

  return v4;
}

- (void)automationListCell:(id)cell didUpdateNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v21 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  database = [(WFAutomationListViewController *)self database];
  configuredTrigger = [cellCopy configuredTrigger];
  v14 = 0;
  v9 = [database recordWithDescriptor:configuredTrigger error:&v14];
  v10 = v14;

  if (v9)
  {
    [v9 setShouldNotify:enabledCopy];
    triggerManager = [(WFAutomationListViewController *)self triggerManager];
    configuredTrigger2 = [cellCopy configuredTrigger];
    identifier = [configuredTrigger2 identifier];
    [triggerManager updateConfiguredTrigger:v9 triggerID:identifier notifyDaemon:0 completion:&__block_literal_global_759];

LABEL_5:
    goto LABEL_6;
  }

  triggerManager = getWFTriggersLogObject();
  if (os_log_type_enabled(triggerManager, OS_LOG_TYPE_FAULT))
  {
    configuredTrigger2 = [cellCopy configuredTrigger];
    *buf = 136315650;
    v16 = "[WFAutomationListViewController automationListCell:didUpdateNotificationsEnabled:]";
    v17 = 2112;
    v18 = configuredTrigger2;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_274719000, triggerManager, OS_LOG_TYPE_FAULT, "%s Failed to get trigger record from descriptor (%@): %{public}@", buf, 0x20u);
    goto LABEL_5;
  }

LABEL_6:
}

void __83__WFAutomationListViewController_automationListCell_didUpdateNotificationsEnabled___block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[WFAutomationListViewController automationListCell:didUpdateNotificationsEnabled:]_block_invoke";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_274719000, v5, OS_LOG_TYPE_ERROR, "%s Failed to update configured trigger with error: %{public}@", &v6, 0x16u);
    }
  }
}

- (BOOL)showPersonalAutomationEditorForConfiguredTrigger:(id)trigger
{
  v33 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  if (!triggerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutomationListViewController.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  workflowID = [triggerCopy workflowID];

  if (workflowID)
  {
    database = [(WFAutomationListViewController *)self database];
    workflowID2 = [triggerCopy workflowID];
    workflowID = [database referenceForWorkflowID:workflowID2];
  }

  database2 = [(WFAutomationListViewController *)self database];
  v26 = 0;
  v10 = [database2 recordWithDescriptor:triggerCopy error:&v26];
  v11 = v26;

  if (v10)
  {
    v12 = [WFEditAutomationCoordinator alloc];
    database3 = [(WFAutomationListViewController *)self database];
    identifier = [triggerCopy identifier];
    v15 = [(WFEditAutomationCoordinator *)v12 initWithDatabase:database3 triggerRecord:v10 triggerIdentifier:identifier workflowReference:workflowID];
    [(WFAutomationListViewController *)self setEditAutomationCoordinator:v15];

    editAutomationCoordinator = [(WFAutomationListViewController *)self editAutomationCoordinator];
    [editAutomationCoordinator setDelegate:self];

    editAutomationCoordinator2 = [(WFAutomationListViewController *)self editAutomationCoordinator];
    start = [editAutomationCoordinator2 start];

    v19 = start != 0;
    if (start)
    {
      [start setModalPresentationStyle:2];
      presentationController = [start presentationController];
      v21 = presentationController;
      if (presentationController)
      {
        [presentationController setDelegate:self];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__WFAutomationListViewController_showPersonalAutomationEditorForConfiguredTrigger___block_invoke;
      block[3] = &unk_279EE8C58;
      block[4] = self;
      v25 = start;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v21 = getWFTriggersLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v28 = "[WFAutomationListViewController showPersonalAutomationEditorForConfiguredTrigger:]";
        _os_log_impl(&dword_274719000, v21, OS_LOG_TYPE_ERROR, "%s Failed to start the edit coordinator", buf, 0xCu);
      }
    }
  }

  else
  {
    start = getWFTriggersLogObject();
    if (os_log_type_enabled(start, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "[WFAutomationListViewController showPersonalAutomationEditorForConfiguredTrigger:]";
      v29 = 2112;
      v30 = triggerCopy;
      v31 = 2114;
      v32 = v11;
      _os_log_impl(&dword_274719000, start, OS_LOG_TYPE_ERROR, "%s Failed to get trigger record from descriptor (%@): %{public}@", buf, 0x20u);
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)showEditViewForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFAutomationListViewController *)self showPersonalAutomationEditorForConfiguredTrigger:itemCopy];
  }

  else
  {
    getHFTriggerItemClass();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(WFAutomationListViewController *)self showHomeAutomationEditorForTriggerItem:itemCopy];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = itemCopy;
      workflowProvider = [(WFAutomationListViewController *)self workflowProvider];
      workflowID = [v9 workflowID];
      v12 = [workflowProvider workflowForIdentifier:workflowID];

      [v8 setConfiguredTrigger:v9 workflow:v12 delegate:self];
    }

    else
    {
      getHFTriggerItemClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setHomeTrigger:itemCopy];
      }

      else
      {
        v13 = getWFTriggersLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315394;
          v15 = "[WFAutomationListViewController configureCell:forItem:]";
          v16 = 2114;
          v17 = itemCopy;
          _os_log_impl(&dword_274719000, v13, OS_LOG_TYPE_ERROR, "%s Unexpected item (%{public}@)", &v14, 0x16u);
        }
      }
    }
  }

  else
  {
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "[WFAutomationListViewController configureCell:forItem:]";
      v16 = 2114;
      v17 = cellCopy;
      v18 = 2114;
      v19 = itemCopy;
      _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_ERROR, "%s Unexpected cell (%{public}@) and/or item (%{public}@)", &v14, 0x20u);
    }
  }
}

- (void)buildTableSectionsWithConfiguredTriggers:(id)triggers homeTriggers:(id)homeTriggers
{
  v50 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  homeTriggersCopy = homeTriggers;
  v8 = objc_opt_new();
  v9 = @"items";
  if ([triggersCopy count])
  {
    v10 = MEMORY[0x277D7C978];
    v11 = triggersCopy;
    sortedTriggerClasses = [v10 sortedTriggerClasses];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v47 = __WFAutomationsSortForUI_block_invoke;
    v48 = &unk_279EE76F0;
    v49 = sortedTriggerClasses;
    v13 = sortedTriggerClasses;
    v14 = [v11 sortedArrayUsingComparator:&buf];

    [(WFAutomationListViewController *)self setSortedPersonalAutomations:v14];
    v44[0] = @"title";
    v15 = WFLocalizedString(@"Personal");
    v45[0] = v15;
    v44[1] = @"cellIdentifier";
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v45[1] = v17;
    v44[2] = @"items";
    sortedPersonalAutomations = [(WFAutomationListViewController *)self sortedPersonalAutomations];
    v44[3] = @"isEditable";
    v45[2] = sortedPersonalAutomations;
    v45[3] = MEMORY[0x277CBEC38];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
    [v8 addObject:v19];
  }

  if ([homeTriggersCopy count])
  {
    selfCopy = self;
    v36 = triggersCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = homeTriggersCopy;
    v20 = homeTriggersCopy;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          v25 = v9;
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          firstObject = [v26 firstObject];

          if (firstObject)
          {
            firstObject2 = [v26 firstObject];
            home = [firstObject2 home];

            v41[0] = @"title";
            name = [home name];
            v42[0] = name;
            v41[1] = @"cellIdentifier";
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v42[1] = v32;
            v42[2] = home;
            v41[2] = @"home";
            v41[3] = v25;
            v41[4] = @"isEditable";
            v42[3] = v26;
            v42[4] = MEMORY[0x277CBEC38];
            v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:5];
            [v8 addObject:v33];

            v9 = v25;
          }

          else
          {
            home = getWFTriggersLogObject();
            if (os_log_type_enabled(home, OS_LOG_TYPE_FAULT))
            {
              LODWORD(buf) = 136315138;
              *(&buf + 4) = "[WFAutomationListViewController buildTableSectionsWithConfiguredTriggers:homeTriggers:]";
              _os_log_impl(&dword_274719000, home, OS_LOG_TYPE_FAULT, "%s Was given an empty array of home triggers", &buf, 0xCu);
            }

            v9 = v25;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v22);
    }

    self = selfCopy;
    triggersCopy = v36;
    homeTriggersCopy = v34;
  }

  [(WFAutomationListViewController *)self setTableSections:v8];
}

- (void)flashAutomationForTriggerID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutomationListViewController.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];
  }

  database = [(WFAutomationListViewController *)self database];
  v7 = [database configuredTriggerForTriggerID:dCopy];

  if (v7)
  {
    sortedPersonalAutomations = [(WFAutomationListViewController *)self sortedPersonalAutomations];
    v9 = [sortedPersonalAutomations count];

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = 0;
    while (1)
    {
      sortedPersonalAutomations2 = [(WFAutomationListViewController *)self sortedPersonalAutomations];
      v12 = [sortedPersonalAutomations2 objectAtIndexedSubscript:v10];

      identifier = [v12 identifier];
      v14 = [identifier isEqualToString:dCopy];

      if (v14)
      {
        break;
      }

      ++v10;
      sortedPersonalAutomations3 = [(WFAutomationListViewController *)self sortedPersonalAutomations];
      v16 = [sortedPersonalAutomations3 count];

      if (v10 >= v16)
      {
        goto LABEL_12;
      }
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:0];
      tableView = [(WFAutomationListViewController *)self tableView];
      [tableView selectRowAtIndexPath:v19 animated:0 scrollPosition:2];

      v21 = dispatch_time(0, 600000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__WFAutomationListViewController_flashAutomationForTriggerID___block_invoke;
      block[3] = &unk_279EE8C58;
      block[4] = self;
      v24 = v19;
      v17 = v19;
      dispatch_after(v21, MEMORY[0x277D85CD0], block);
    }

    else
    {
LABEL_12:
      v17 = getWFTriggersLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [v7 identifier];
        *buf = 136315394;
        v26 = "[WFAutomationListViewController flashAutomationForTriggerID:]";
        v27 = 2112;
        v28 = identifier2;
        _os_log_impl(&dword_274719000, v17, OS_LOG_TYPE_ERROR, "%s Couldn't find indexPath for configuredTrigger: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v17 = getWFTriggersLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[WFAutomationListViewController flashAutomationForTriggerID:]";
      v27 = 2112;
      v28 = dCopy;
      _os_log_impl(&dword_274719000, v17, OS_LOG_TYPE_ERROR, "%s Couldn't find configuredTrigger for triggerID: %@", buf, 0x16u);
    }
  }
}

void __62__WFAutomationListViewController_flashAutomationForTriggerID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:1];
}

- (void)updateUIWithConfiguredTriggers:(id)triggers homeTriggers:(id)homeTriggers
{
  [(WFAutomationListViewController *)self buildTableSectionsWithConfiguredTriggers:triggers homeTriggers:homeTriggers];
  tableView = [(WFAutomationListViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateTableViewLayoutMargins
{
  [(UIViewController *)self wf_contentLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  tableView = [(WFAutomationListViewController *)self tableView];
  [tableView setLayoutMargins:{v4, v6, v8, v10}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WFAutomationListViewController;
  [(WFAutomationListViewController *)&v6 viewWillAppear:appear];
  v4 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFAutomationListViewController_viewWillAppear___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __49__WFAutomationListViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 navigationBar];
  [v1 sizeToFit];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WFAutomationListViewController;
  [(WFAutomationListViewController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:self->_database];
  triggerManager = self->_triggerManager;
  self->_triggerManager = v3;
}

- (void)loadView
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = WFAutomationListViewController;
  [(WFAutomationListViewController *)&v22 loadView];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  tableView = [(WFAutomationListViewController *)self tableView];
  [tableView setBackgroundColor:systemGroupedBackgroundColor];

  v5 = *MEMORY[0x277D76F30];
  tableView2 = [(WFAutomationListViewController *)self tableView];
  [tableView2 setRowHeight:v5];

  tableView3 = [(WFAutomationListViewController *)self tableView];
  [tableView3 setContentInset:{8.0, 0.0, 0.0, 0.0}];

  tableView4 = [(WFAutomationListViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:100.0];

  tableView5 = [(WFAutomationListViewController *)self tableView];
  [tableView5 setSeparatorInset:{0.0, 124.0, 0.0, 0.0}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v23 = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:{1, 0}];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        tableView6 = [(WFAutomationListViewController *)self tableView];
        v17 = NSStringFromClass(v15);
        [tableView6 registerClass:v15 forCellReuseIdentifier:v17];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v12);
  }

  [(WFAutomationListViewController *)self updateTableViewLayoutMargins];
}

- (WFAutomationListViewController)initWithDatabase:(id)database workflowProvider:(id)provider
{
  databaseCopy = database;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = WFAutomationListViewController;
  v9 = [(WFAutomationListViewController *)&v17 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    sortedPersonalAutomations = v10->_sortedPersonalAutomations;
    v12 = MEMORY[0x277CBEBF8];
    v10->_sortedPersonalAutomations = MEMORY[0x277CBEBF8];

    tableSections = v10->_tableSections;
    v10->_tableSections = v12;

    objc_storeStrong(&v10->_workflowProvider, provider);
    mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
    [mEMORY[0x277D7C4F0] reloadData];

    v15 = v10;
  }

  return v10;
}

@end