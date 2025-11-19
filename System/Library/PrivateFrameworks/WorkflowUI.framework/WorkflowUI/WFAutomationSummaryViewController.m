@interface WFAutomationSummaryViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (WFAutomationSummaryViewController)initWithTrigger:(id)a3 triggerIdentifier:(id)a4 workflow:(id)a5 mode:(unint64_t)a6;
- (WFAutomationSummaryViewControllerDelegate)delegate;
- (id)infoForSection:(int64_t)a3;
- (id)menuForTrigger;
- (id)sections;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didTapDone:(id)a3;
- (void)handleRunSelection:(int64_t)a3;
- (void)loadActionDescriptionIcons;
- (void)loadView;
- (void)notifySwitchChanged:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)testAutomation;
- (void)updateUI;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFAutomationSummaryViewController

- (WFAutomationSummaryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapDone:(id)a3
{
  v5 = [(WFAutomationSummaryViewController *)self delegate];
  v4 = [(WFAutomationSummaryViewController *)self triggerRecord];
  [v5 automationSummaryViewController:self didFinishWithTrigger:v4];
}

- (void)notifySwitchChanged:(id)a3
{
  v4 = [a3 isOn];
  v5 = [(WFAutomationSummaryViewController *)self triggerRecord];
  [v5 setShouldNotify:v4];
}

- (void)handleRunSelection:(int64_t)a3
{
  v4 = 0;
  if (!a3)
  {
LABEL_5:
    v5 = [(WFAutomationSummaryViewController *)self triggerRecord];
    [v5 setShouldPrompt:v4];

    v4 = 1;
    goto LABEL_6;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    v4 = 1;
    goto LABEL_5;
  }

LABEL_6:
  v6 = [(WFAutomationSummaryViewController *)self triggerRecord];
  [v6 setEnabled:v4];

  v7 = [(WFAutomationSummaryViewController *)self tableView];
  [v7 reloadData];
}

- (void)testAutomation
{
  v3 = [MEMORY[0x277D79D98] standardClient];
  v4 = [(WFAutomationSummaryViewController *)self triggerIdentifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__WFAutomationSummaryViewController_testAutomation__block_invoke;
  v5[3] = &unk_279EE8710;
  v5[4] = self;
  [v3 fireTriggerWithIdentifier:v4 force:1 completion:v5];
}

void __51__WFAutomationSummaryViewController_testAutomation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x277CFC218] alertWithError:?];
    v3 = WFUserInterfaceFromViewController();
    [v3 presentAlert:v4];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4 != 1)
  {
    return;
  }

  v6 = [(WFAutomationSummaryViewController *)self workflow:a3];
  v7 = [v6 workflowID];

  if (!v7)
  {
    return;
  }

  v16 = [MEMORY[0x277D7C2F0] defaultDatabase];
  v8 = [(WFAutomationSummaryViewController *)self workflow];
  v9 = [v8 workflowID];
  v10 = [v16 referenceForWorkflowID:v9];

  if ([v10 hiddenFromLibraryAndSync])
  {
    if (([v16 deleteReference:v10 error:0] & 1) == 0)
    {
      v11 = getWFTriggersLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = "[WFAutomationSummaryViewController tableView:commitEditingStyle:forRowAtIndexPath:]";
        _os_log_impl(&dword_274719000, v11, OS_LOG_TYPE_ERROR, "%s Failed to delete workflow reference from trigger summary view", buf, 0xCu);
      }

      return;
    }
  }

  else
  {
    v12 = [(WFAutomationSummaryViewController *)self triggerIdentifier];
    v13 = [v16 configuredTriggerForTriggerID:v12];

    v14 = [v16 associateWorkflowToTrigger:v13 workflow:0 error:0];
  }

  [(WFAutomationSummaryViewController *)self setWorkflow:0];
  v15 = [(WFAutomationSummaryViewController *)self tableView];
  [v15 reloadData];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = -[WFAutomationSummaryViewController infoForSection:](self, "infoForSection:", [a4 section]);
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [v5 isEqual:@"workflowSummary"];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [v6 section];

  v16 = [(WFAutomationSummaryViewController *)self infoForSection:v7];
  v8 = [v16 objectForKeyedSubscript:@"identifier"];
  LODWORD(v6) = [v8 isEqual:@"triggerSummary"];

  if (v6)
  {
    v9 = [(WFAutomationSummaryViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_13:

      goto LABEL_14;
    }

    v10 = [(WFAutomationSummaryViewController *)self triggerRecord];
    [v9 automationSummaryViewController:self editTrigger:v10];
LABEL_8:

    goto LABEL_13;
  }

  v11 = [v16 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"workflowSummary"];

  if (v12)
  {
    v9 = [(WFAutomationSummaryViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(WFAutomationSummaryViewController *)self workflow], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      if (objc_opt_respondsToSelector())
      {
        [v9 automationSummaryViewControllerChooseShortcut:self];
      }

      goto LABEL_13;
    }

    v10 = [(WFAutomationSummaryViewController *)self workflow];
    [v9 automationSummaryViewController:self editWorkflow:v10];
    goto LABEL_8;
  }

  v14 = [v16 objectForKeyedSubscript:@"identifier"];
  v15 = [v14 isEqual:@"testAutomation"];

  if (v15)
  {
    [(WFAutomationSummaryViewController *)self testAutomation];
  }

LABEL_14:
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = [(WFAutomationSummaryViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];
  v6 = WFAutomationTableSectionHeaderViewWithTitle(v5);

  return v6;
}

- (id)menuForTrigger
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D750C8];
  v4 = WFLocalizedString(@"Run After Confirmation");
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__WFAutomationSummaryViewController_menuForTrigger__block_invoke;
  v24[3] = &unk_279EE82C0;
  v24[4] = self;
  v5 = [v3 actionWithTitle:v4 image:0 identifier:@"confirmation" handler:v24];

  v6 = MEMORY[0x277D750C8];
  v7 = WFLocalizedString(@"Don’t Run");
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __51__WFAutomationSummaryViewController_menuForTrigger__block_invoke_2;
  v23[3] = &unk_279EE82C0;
  v23[4] = self;
  v8 = [v6 actionWithTitle:v7 image:0 identifier:0 handler:v23];

  v9 = MEMORY[0x277CBEB18];
  v25[0] = v5;
  v25[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v11 = [v9 arrayWithArray:v10];

  v12 = [(WFAutomationSummaryViewController *)self trigger];
  v13 = [objc_opt_class() isAllowedToRunAutomatically];

  v14 = 0;
  if (v13)
  {
    v15 = MEMORY[0x277D750C8];
    v16 = WFLocalizedString(@"Run Immediately");
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__WFAutomationSummaryViewController_menuForTrigger__block_invoke_3;
    v22[3] = &unk_279EE82C0;
    v22[4] = self;
    v14 = [v15 actionWithTitle:v16 image:0 identifier:0 handler:v22];

    [v11 insertObject:v14 atIndex:0];
  }

  v17 = [(WFAutomationSummaryViewController *)self triggerRecord];
  v18 = WFRunSelectionForTrigger(v17);

  v19 = v14;
  if (v18)
  {
    v19 = v8;
    if (v18 != 2)
    {
      v19 = v5;
    }
  }

  [v19 setState:1];
  v20 = [MEMORY[0x277D75710] menuWithChildren:v11];

  return v20;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = -[WFAutomationSummaryViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"sectionRows"];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v11 = [v10 objectForKeyedSubscript:@"cellIdentifier"];
  v12 = [v7 dequeueReusableCellWithIdentifier:v11 forIndexPath:v6];

  v13 = [v8 objectForKeyedSubscript:@"identifier"];
  v14 = [v13 isEqual:@"runImmediately"];

  if (v14)
  {
    [v12 setSelectionStyle:0];
    if ([v6 row])
    {
      v15 = [v10 objectForKeyedSubscript:@"cellTitle"];
      v16 = [v12 textLabel];
      [v16 setText:v15];

      [v12 setSelectionStyle:0];
      v12 = v12;
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v12;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v48 = v17;

      v49 = [v48 switchControl];

      v50 = [(WFAutomationSummaryViewController *)self triggerRecord];
      [v49 setOn:{objc_msgSend(v50, "shouldNotify")}];

      [v49 addTarget:self action:sel_notifySwitchChanged_ forControlEvents:4096];
    }

    else
    {
      v12 = v12;
      v37 = v11;
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v12;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      v51 = v38;

      v52 = [v10 objectForKeyedSubscript:@"cellTitle"];
      v53 = [v51 textLabel];
      [v53 setText:v52];

      v54 = [(WFAutomationSummaryViewController *)self menuForTrigger];
      [v12 setMenu:v54];

      v11 = v37;
    }
  }

  else
  {
    v18 = [v8 objectForKeyedSubscript:@"identifier"];
    v19 = [v18 isEqual:@"triggerSummary"];

    if (v19)
    {
      v20 = [(WFAutomationSummaryViewController *)self triggerRecord];
      v21 = [v20 triggerData];

      if ([v21 length] && (objc_msgSend(MEMORY[0x277D7C970], "triggerWithSerializedData:", v21), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = v22;
        v65 = [v22 displayGlyph];
        [v65 UIImage];
        v24 = v66 = v10;
        v25 = [v23 displayGlyphTintColor];
        [v25 UIColor];
        v26 = v68 = v11;
        v27 = [v23 localizedDescriptionWithConfigurationSummary];
        [v12 configureWithImage:v24 tintColor:v26 title:v27 numberOfLines:3 withTrigger:v23];

        v11 = v68;
        v10 = v66;
      }

      else
      {
        v23 = getWFTriggersLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v72 = "[WFAutomationSummaryViewController tableView:cellForRowAtIndexPath:]";
          _os_log_impl(&dword_274719000, v23, OS_LOG_TYPE_ERROR, "%s Could not deserialize trigger data from record in Automation Summary", buf, 0xCu);
        }
      }

      v39 = [(WFAutomationSummaryViewController *)self mode];
      v40 = v39 != 0;
      if (v39)
      {
        v41 = 3;
      }

      else
      {
        v41 = 0;
      }

      [v12 setSelectionStyle:v41];
      [v12 setAccessoryType:v40];
    }

    else
    {
      v28 = [v8 objectForKeyedSubscript:@"identifier"];
      v29 = [v28 isEqual:@"workflowSummary"];

      if (v29)
      {
        v30 = [(WFAutomationSummaryViewController *)self workflow];

        if (v30)
        {
          v31 = [(WFAutomationSummaryViewController *)self workflow];
          v32 = [v31 hiddenFromLibraryAndSync];

          v33 = [(WFAutomationSummaryViewController *)self workflow];
          v34 = v33;
          if (v32)
          {
            v35 = [v33 actionsDescription];
            v36 = [(WFAutomationSummaryViewController *)self actionIcons];
            [v12 configureWithTitle:v35 actionIcons:v36];
          }

          else
          {
            v35 = [v33 name];
            v67 = [(WFAutomationSummaryViewController *)self workflow];
            v60 = [v67 icon];
            [v60 icon];
            v70 = v69 = v11;
            v61 = v70;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
            v63 = v62 = v10;
            [v12 configureWithTitle:v35 actionIcons:v63];

            v10 = v62;
            v11 = v69;
          }

          if ([(WFAutomationSummaryViewController *)self mode])
          {
            [v12 setSelectionStyle:3];
            [v12 setAccessoryType:1];
          }

          else
          {
            [v12 setSelectionStyle:0];
          }
        }

        else
        {
          v55 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];

          [v55 setSelectionStyle:0];
          v56 = [MEMORY[0x277D75348] systemBlueColor];
          v57 = [v55 textLabel];
          [v57 setTextColor:v56];

          v58 = WFLocalizedString(@"Choose…");
          v59 = [v55 textLabel];
          [v59 setText:v58];

          v12 = v55;
        }
      }

      else
      {
        v42 = [v8 objectForKeyedSubscript:@"identifier"];
        v43 = [v42 isEqual:@"testAutomation"];

        if (v43)
        {
          v44 = [v10 objectForKeyedSubscript:@"cellTitle"];
          v45 = [v12 textLabel];
          [v45 setText:v44];

          v46 = [MEMORY[0x277D75348] systemBlueColor];
          v47 = [v12 textLabel];
          [v47 setTextColor:v46];
        }
      }
    }
  }

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFAutomationSummaryViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionRows"];
  v6 = [v5 count];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFAutomationSummaryViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)infoForSection:(int64_t)a3
{
  v4 = [(WFAutomationSummaryViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WFAutomationSummaryViewController;
  [(WFAutomationSummaryViewController *)&v3 viewDidLoad];
  [(WFAutomationSummaryViewController *)self loadActionDescriptionIcons];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WFAutomationSummaryViewController;
  [(WFAutomationSummaryViewController *)&v4 viewWillAppear:a3];
  [(WFAutomationSummaryViewController *)self loadActionDescriptionIcons];
}

- (void)loadActionDescriptionIcons
{
  v3 = [(WFAutomationSummaryViewController *)self workflow];
  v4 = [v3 actions];
  v5 = [(WFAutomationSummaryViewController *)self workflow];
  v6 = [v5 actions];
  v7 = [v6 count];

  if (v7 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v11 = [v4 subarrayWithRange:{0, v8}];

  v9 = [v11 if_compactMap:&__block_literal_global_13000];
  [(WFAutomationSummaryViewController *)self setActionIcons:v9];

  v10 = [(WFAutomationSummaryViewController *)self tableView];
  [v10 reloadData];
}

- (void)loadView
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(UITableView *)v4 setBackgroundColor:v5];

  [(UITableView *)v4 setDataSource:self];
  [(UITableView *)v4 setDelegate:self];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = self;
  obj = [(WFAutomationSummaryViewController *)self sections];
  v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = [v7 objectForKeyedSubscript:@"sectionRows"];
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v25 + 1) + 8 * j);
              v14 = [v13 objectForKeyedSubscript:@"cellClass"];
              v15 = [v13 objectForKeyedSubscript:@"cellIdentifier"];
              [(UITableView *)v4 registerClass:v14 forCellReuseIdentifier:v15];
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v10);
        }
      }

      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }

  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [(UITableView *)v4 registerClass:v16 forCellReuseIdentifier:v18];

  tableView = v21->_tableView;
  v21->_tableView = v4;
  v20 = v4;

  [(WFAutomationSummaryViewController *)v21 setView:v20];
}

- (void)updateUI
{
  v2 = [(WFAutomationSummaryViewController *)self tableView];
  [v2 reloadData];
}

- (id)sections
{
  v58[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(WFAutomationSummaryViewController *)self mode]== 1)
  {
    v4 = MEMORY[0x277CBEB18];
    v57[0] = @"cellTitle";
    v5 = WFLocalizedString(@"Automation");
    v58[0] = v5;
    v57[1] = @"cellIdentifier";
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v58[1] = v7;
    v57[2] = @"cellClass";
    v58[2] = objc_opt_class();
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
    v9 = [v4 arrayWithObject:v8];

    v10 = [(WFAutomationSummaryViewController *)self triggerRecord];
    v11 = WFRunSelectionForTrigger(v10);

    if (!v11)
    {
      v12 = [(WFAutomationSummaryViewController *)self trigger];
      v13 = [objc_opt_class() requiresNotification];

      if ((v13 & 1) == 0)
      {
        v55[0] = @"cellTitle";
        v14 = WFLocalizedString(@"Notify When Run");
        v56[0] = v14;
        v55[1] = @"cellIdentifier";
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v56[1] = v16;
        v55[2] = @"cellClass";
        v56[2] = objc_opt_class();
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
        [v9 addObject:v17];
      }
    }

    v53[0] = @"identifier";
    v53[1] = @"sectionRows";
    v54[0] = @"runImmediately";
    v54[1] = v9;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    [v3 addObject:v18];
  }

  v52[0] = @"triggerSummary";
  v51[0] = @"identifier";
  v51[1] = @"sectionTitle";
  v19 = WFLocalizedString(@"When");
  v52[1] = v19;
  v51[2] = @"sectionRows";
  v48[0] = @"cellIdentifier";
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v48[1] = @"cellClass";
  v49[0] = v21;
  v49[1] = objc_opt_class();
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v50 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v52[2] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
  [v3 addObject:v24];

  v47[0] = @"workflowSummary";
  v46[0] = @"identifier";
  v46[1] = @"sectionTitle";
  v25 = WFLocalizedString(@"Do");
  v47[1] = v25;
  v46[2] = @"sectionRows";
  v43[0] = @"cellIdentifier";
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v43[1] = @"cellClass";
  v44[0] = v27;
  v44[1] = objc_opt_class();
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v45 = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v47[2] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  [v3 addObject:v30];

  v31 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  LODWORD(v27) = [v31 BOOLForKey:@"WFShowTestAutomationButton"];

  if (v27)
  {
    v41[1] = @"sectionRows";
    v42[0] = @"testAutomation";
    v41[0] = @"identifier";
    v39[0] = @"Test This Automation";
    v38[0] = @"cellTitle";
    v38[1] = @"cellIdentifier";
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v39[1] = v33;
    v38[2] = @"cellClass";
    v39[2] = objc_opt_class();
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v40 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v42[1] = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v3 addObject:v36];
  }

  return v3;
}

- (WFAutomationSummaryViewController)initWithTrigger:(id)a3 triggerIdentifier:(id)a4 workflow:(id)a5 mode:(unint64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFAutomationSummaryViewController.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"triggerRecord"}];
  }

  v32.receiver = self;
  v32.super_class = WFAutomationSummaryViewController;
  v15 = [(WFAutomationSummaryViewController *)&v32 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_triggerRecord, a3);
    v17 = [v13 copy];
    triggerIdentifier = v16->_triggerIdentifier;
    v16->_triggerIdentifier = v17;

    v19 = MEMORY[0x277D7C970];
    v20 = [v12 triggerData];
    v21 = [v19 triggerWithSerializedData:v20];
    trigger = v16->_trigger;
    v16->_trigger = v21;

    if (!v16->_trigger)
    {
      v30 = [MEMORY[0x277CCA890] currentHandler];
      v31 = [v12 triggerData];
      [v30 handleFailureInMethod:a2 object:v16 file:@"WFAutomationSummaryViewController.m" lineNumber:88 description:{@"Failed to deserialize trigger from data (%@)", v31}];
    }

    objc_storeStrong(&v16->_workflow, a5);
    v16->_mode = a6;
    v23 = objc_alloc(MEMORY[0x277D751E0]);
    v24 = WFLocalizedString(@"Done");
    v25 = [v23 initWithTitle:v24 style:2 target:v16 action:sel_didTapDone_];
    v26 = [(WFAutomationSummaryViewController *)v16 navigationItem];
    [v26 setRightBarButtonItem:v25];

    v27 = v16;
  }

  return v16;
}

@end