@interface WFAutomationListViewController
- (BOOL)showEditViewForItem:(id)a3;
- (BOOL)showHomeAutomationEditorForTriggerItem:(id)a3;
- (BOOL)showPersonalAutomationEditorForConfiguredTrigger:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (WFAutomationListViewController)initWithDatabase:(id)a3 workflowProvider:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)automationListCell:(id)a3 didUpdateNotificationsEnabled:(BOOL)a4;
- (void)buildTableSectionsWithConfiguredTriggers:(id)a3 homeTriggers:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)editAutomationCoordinatorDidCancel:(id)a3;
- (void)editAutomationCoordinatorDidFinish:(id)a3;
- (void)flashAutomationForTriggerID:(id)a3;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4;
- (void)updateTableViewLayoutMargins;
- (void)updateUIWithConfiguredTriggers:(id)a3 homeTriggers:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFAutomationListViewController

- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4
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

- (BOOL)showHomeAutomationEditorForTriggerItem:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFAutomationListViewController.m" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"triggerItem"}];
  }

  v6 = [v5 trigger];
  v7 = [v5 home];
  v8 = v7;
  if (!v5 || !v6 || !v7)
  {
    v13 = getWFTriggersLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[WFAutomationListViewController showHomeAutomationEditorForTriggerItem:]";
      v22 = 2114;
      v23 = v5;
      _os_log_impl(&dword_274719000, v13, OS_LOG_TYPE_ERROR, "%s Missing home or trigger from triggerItem: %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  HFTriggerBuilderClass = getHFTriggerBuilderClass();
  getHUTriggerBuilderContextClass();
  v10 = objc_opt_new();
  v11 = [(objc_class *)HFTriggerBuilderClass triggerBuilderForTrigger:v6 inHome:v8 context:v10];

  if (!v11)
  {
    v15 = getWFTriggersLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[WFAutomationListViewController showHomeAutomationEditorForTriggerItem:]";
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_274719000, v15, OS_LOG_TYPE_ERROR, "%s Could not create HFTriggerBuilder for trigger: %@", buf, 0x16u);
    }

    v13 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v12 = [MEMORY[0x277D7C4F0] sharedManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__WFAutomationListViewController_showHomeAutomationEditorForTriggerItem___block_invoke;
  v18[3] = &unk_279EE8C58;
  v18[4] = self;
  v13 = v11;
  v19 = v13;
  [v12 ensureHomesAreLoadedWithCompletionHandler:v18];

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

- (void)editAutomationCoordinatorDidCancel:(id)a3
{
  v4 = [a3 navigationController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v7 = [(WFAutomationListViewController *)self tableView];
  v5 = [(WFAutomationListViewController *)self tableView];
  v6 = [v5 indexPathForSelectedRow];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)editAutomationCoordinatorDidFinish:(id)a3
{
  v4 = [a3 navigationController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v5 = [(WFAutomationListViewController *)self tableView];
  v6 = [(WFAutomationListViewController *)self tableView];
  v7 = [v6 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v7 animated:1];

  v8 = [(WFAutomationListViewController *)self tableView];
  [v8 reloadData];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = [(WFAutomationListViewController *)self tableView];
  [v3 selectRowAtIndexPath:0 animated:0 scrollPosition:0];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(WFAutomationListViewController *)self tableSections];
  v6 = [v5 objectAtIndexedSubscript:a4];

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
    v14 = [v8 layoutMarginsGuide];
    v15 = [v9 wf_addConstraintsToFillLayoutGuide:v14];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  v5 = [(WFAutomationListViewController *)self tableSections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v10, "section")}];

  v7 = [v6 objectForKeyedSubscript:@"items"];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];
  if (![(WFAutomationListViewController *)self showEditViewForItem:v8])
  {
    v9 = [(WFAutomationListViewController *)self tableView];
    [v9 deselectRowAtIndexPath:v10 animated:1];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v6 = a5;
    v7 = [(WFAutomationListViewController *)self tableSections];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

    v9 = [v8 objectForKeyedSubscript:@"items"];
    v10 = [v6 row];

    v11 = [v9 objectAtIndex:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      v13 = [v12 identifier];
      if (!v13)
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

      v14 = v13;
      v15 = [(WFAutomationListViewController *)self triggerManager];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __81__WFAutomationListViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
      v21[3] = &unk_279EE8710;
      v16 = &v22;
      v22 = v14;
      v17 = v14;
      [v15 deleteTriggerWithIdentifier:v17 notifyDaemon:1 completion:v21];
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
      v15 = [v18 trigger];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __81__WFAutomationListViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_220;
      v19[3] = &unk_279EE76C8;
      v16 = v20;
      v20[0] = v18;
      v20[1] = self;
      v17 = v18;
      [v12 removeTrigger:v15 completionHandler:v19];
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

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WFAutomationListViewController *)self tableSections];
  v7 = [v5 section];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [v8 objectForKeyedSubscript:@"isEditable"];
  LOBYTE(v7) = [v9 BOOLValue];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WFAutomationListViewController *)self tableSections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v8 = [v7 objectForKeyedSubscript:@"cellIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"items"];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  v11 = [(WFAutomationListViewController *)self tableView];
  v12 = [v11 dequeueReusableCellWithIdentifier:v8 forIndexPath:v5];

  [(WFAutomationListViewController *)self configureCell:v12 forItem:v10];

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFAutomationListViewController *)self tableSections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 objectForKeyedSubscript:@"items"];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFAutomationListViewController *)self tableSections];
  v4 = [v3 count];

  return v4;
}

- (void)automationListCell:(id)a3 didUpdateNotificationsEnabled:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(WFAutomationListViewController *)self database];
  v8 = [v6 configuredTrigger];
  v14 = 0;
  v9 = [v7 recordWithDescriptor:v8 error:&v14];
  v10 = v14;

  if (v9)
  {
    [v9 setShouldNotify:v4];
    v11 = [(WFAutomationListViewController *)self triggerManager];
    v12 = [v6 configuredTrigger];
    v13 = [v12 identifier];
    [v11 updateConfiguredTrigger:v9 triggerID:v13 notifyDaemon:0 completion:&__block_literal_global_759];

LABEL_5:
    goto LABEL_6;
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [v6 configuredTrigger];
    *buf = 136315650;
    v16 = "[WFAutomationListViewController automationListCell:didUpdateNotificationsEnabled:]";
    v17 = 2112;
    v18 = v12;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_274719000, v11, OS_LOG_TYPE_FAULT, "%s Failed to get trigger record from descriptor (%@): %{public}@", buf, 0x20u);
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

- (BOOL)showPersonalAutomationEditorForConfiguredTrigger:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFAutomationListViewController.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  v6 = [v5 workflowID];

  if (v6)
  {
    v7 = [(WFAutomationListViewController *)self database];
    v8 = [v5 workflowID];
    v6 = [v7 referenceForWorkflowID:v8];
  }

  v9 = [(WFAutomationListViewController *)self database];
  v26 = 0;
  v10 = [v9 recordWithDescriptor:v5 error:&v26];
  v11 = v26;

  if (v10)
  {
    v12 = [WFEditAutomationCoordinator alloc];
    v13 = [(WFAutomationListViewController *)self database];
    v14 = [v5 identifier];
    v15 = [(WFEditAutomationCoordinator *)v12 initWithDatabase:v13 triggerRecord:v10 triggerIdentifier:v14 workflowReference:v6];
    [(WFAutomationListViewController *)self setEditAutomationCoordinator:v15];

    v16 = [(WFAutomationListViewController *)self editAutomationCoordinator];
    [v16 setDelegate:self];

    v17 = [(WFAutomationListViewController *)self editAutomationCoordinator];
    v18 = [v17 start];

    v19 = v18 != 0;
    if (v18)
    {
      [v18 setModalPresentationStyle:2];
      v20 = [v18 presentationController];
      v21 = v20;
      if (v20)
      {
        [v20 setDelegate:self];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__WFAutomationListViewController_showPersonalAutomationEditorForConfiguredTrigger___block_invoke;
      block[3] = &unk_279EE8C58;
      block[4] = self;
      v25 = v18;
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
    v18 = getWFTriggersLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "[WFAutomationListViewController showPersonalAutomationEditorForConfiguredTrigger:]";
      v29 = 2112;
      v30 = v5;
      v31 = 2114;
      v32 = v11;
      _os_log_impl(&dword_274719000, v18, OS_LOG_TYPE_ERROR, "%s Failed to get trigger record from descriptor (%@): %{public}@", buf, 0x20u);
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)showEditViewForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFAutomationListViewController *)self showPersonalAutomationEditorForConfiguredTrigger:v4];
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

    v5 = [(WFAutomationListViewController *)self showHomeAutomationEditorForTriggerItem:v4];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = [(WFAutomationListViewController *)self workflowProvider];
      v11 = [v9 workflowID];
      v12 = [v10 workflowForIdentifier:v11];

      [v8 setConfiguredTrigger:v9 workflow:v12 delegate:self];
    }

    else
    {
      getHFTriggerItemClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setHomeTrigger:v7];
      }

      else
      {
        v13 = getWFTriggersLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315394;
          v15 = "[WFAutomationListViewController configureCell:forItem:]";
          v16 = 2114;
          v17 = v7;
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
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_ERROR, "%s Unexpected cell (%{public}@) and/or item (%{public}@)", &v14, 0x20u);
    }
  }
}

- (void)buildTableSectionsWithConfiguredTriggers:(id)a3 homeTriggers:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = @"items";
  if ([v6 count])
  {
    v10 = MEMORY[0x277D7C978];
    v11 = v6;
    v12 = [v10 sortedTriggerClasses];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v47 = __WFAutomationsSortForUI_block_invoke;
    v48 = &unk_279EE76F0;
    v49 = v12;
    v13 = v12;
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
    v18 = [(WFAutomationListViewController *)self sortedPersonalAutomations];
    v44[3] = @"isEditable";
    v45[2] = v18;
    v45[3] = MEMORY[0x277CBEC38];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
    [v8 addObject:v19];
  }

  if ([v7 count])
  {
    v35 = self;
    v36 = v6;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v7;
    v20 = v7;
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
          v27 = [v26 firstObject];

          if (v27)
          {
            v28 = [v26 firstObject];
            v29 = [v28 home];

            v41[0] = @"title";
            v30 = [v29 name];
            v42[0] = v30;
            v41[1] = @"cellIdentifier";
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v42[1] = v32;
            v42[2] = v29;
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
            v29 = getWFTriggersLogObject();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              LODWORD(buf) = 136315138;
              *(&buf + 4) = "[WFAutomationListViewController buildTableSectionsWithConfiguredTriggers:homeTriggers:]";
              _os_log_impl(&dword_274719000, v29, OS_LOG_TYPE_FAULT, "%s Was given an empty array of home triggers", &buf, 0xCu);
            }

            v9 = v25;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v22);
    }

    self = v35;
    v6 = v36;
    v7 = v34;
  }

  [(WFAutomationListViewController *)self setTableSections:v8];
}

- (void)flashAutomationForTriggerID:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFAutomationListViewController.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];
  }

  v6 = [(WFAutomationListViewController *)self database];
  v7 = [v6 configuredTriggerForTriggerID:v5];

  if (v7)
  {
    v8 = [(WFAutomationListViewController *)self sortedPersonalAutomations];
    v9 = [v8 count];

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = 0;
    while (1)
    {
      v11 = [(WFAutomationListViewController *)self sortedPersonalAutomations];
      v12 = [v11 objectAtIndexedSubscript:v10];

      v13 = [v12 identifier];
      v14 = [v13 isEqualToString:v5];

      if (v14)
      {
        break;
      }

      ++v10;
      v15 = [(WFAutomationListViewController *)self sortedPersonalAutomations];
      v16 = [v15 count];

      if (v10 >= v16)
      {
        goto LABEL_12;
      }
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:0];
      v20 = [(WFAutomationListViewController *)self tableView];
      [v20 selectRowAtIndexPath:v19 animated:0 scrollPosition:2];

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
        v18 = [v7 identifier];
        *buf = 136315394;
        v26 = "[WFAutomationListViewController flashAutomationForTriggerID:]";
        v27 = 2112;
        v28 = v18;
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
      v28 = v5;
      _os_log_impl(&dword_274719000, v17, OS_LOG_TYPE_ERROR, "%s Couldn't find configuredTrigger for triggerID: %@", buf, 0x16u);
    }
  }
}

void __62__WFAutomationListViewController_flashAutomationForTriggerID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:1];
}

- (void)updateUIWithConfiguredTriggers:(id)a3 homeTriggers:(id)a4
{
  [(WFAutomationListViewController *)self buildTableSectionsWithConfiguredTriggers:a3 homeTriggers:a4];
  v5 = [(WFAutomationListViewController *)self tableView];
  [v5 reloadData];
}

- (void)updateTableViewLayoutMargins
{
  [(UIViewController *)self wf_contentLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(WFAutomationListViewController *)self tableView];
  [v11 setLayoutMargins:{v4, v6, v8, v10}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WFAutomationListViewController;
  [(WFAutomationListViewController *)&v6 viewWillAppear:a3];
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
  v3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v4 = [(WFAutomationListViewController *)self tableView];
  [v4 setBackgroundColor:v3];

  v5 = *MEMORY[0x277D76F30];
  v6 = [(WFAutomationListViewController *)self tableView];
  [v6 setRowHeight:v5];

  v7 = [(WFAutomationListViewController *)self tableView];
  [v7 setContentInset:{8.0, 0.0, 0.0, 0.0}];

  v8 = [(WFAutomationListViewController *)self tableView];
  [v8 setEstimatedRowHeight:100.0];

  v9 = [(WFAutomationListViewController *)self tableView];
  [v9 setSeparatorInset:{0.0, 124.0, 0.0, 0.0}];

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
        v16 = [(WFAutomationListViewController *)self tableView];
        v17 = NSStringFromClass(v15);
        [v16 registerClass:v15 forCellReuseIdentifier:v17];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v12);
  }

  [(WFAutomationListViewController *)self updateTableViewLayoutMargins];
}

- (WFAutomationListViewController)initWithDatabase:(id)a3 workflowProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = WFAutomationListViewController;
  v9 = [(WFAutomationListViewController *)&v17 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    sortedPersonalAutomations = v10->_sortedPersonalAutomations;
    v12 = MEMORY[0x277CBEBF8];
    v10->_sortedPersonalAutomations = MEMORY[0x277CBEBF8];

    tableSections = v10->_tableSections;
    v10->_tableSections = v12;

    objc_storeStrong(&v10->_workflowProvider, a4);
    v14 = [MEMORY[0x277D7C4F0] sharedManager];
    [v14 reloadData];

    v15 = v10;
  }

  return v10;
}

@end