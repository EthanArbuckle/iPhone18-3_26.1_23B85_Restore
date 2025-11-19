@interface WFAppInFocusTriggerConfigurationViewController
- (WFAppInFocusTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)customSections;
- (id)infoForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)appSearchViewController:(id)a3 didFinishWithApps:(id)a4;
- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5;
- (void)presentNavControllerWithRootViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDisplayNameOfSelectedApps;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFAppInFocusTriggerConfigurationViewController

- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(WFTriggerConfigurationViewController *)self trigger];
  [v8 setOnFocus:v6];

  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  [v9 setOnBackground:v5];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)appSearchViewController:(id)a3 didFinishWithApps:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 if_map:&__block_literal_global_220];
  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  [v9 setSelectedBundleIdentifiers:v8];

  v10 = [(WFAppInFocusTriggerConfigurationViewController *)self selectedApps];
  [v10 removeAllObjects];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = [(WFAppInFocusTriggerConfigurationViewController *)self selectedApps];
        [v17 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(WFAppInFocusTriggerConfigurationViewController *)self updateDisplayNameOfSelectedApps];
  [v6 dismissViewControllerAnimated:1 completion:0];
  v18 = [(WFTriggerConfigurationViewController *)self tableView];
  [v18 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)updateDisplayNameOfSelectedApps
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(WFAppInFocusTriggerConfigurationViewController *)self displayNameOfSelectedApps];
  [v3 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(WFAppInFocusTriggerConfigurationViewController *)self selectedApps];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(WFAppInFocusTriggerConfigurationViewController *)self displayNameOfSelectedApps];
        v11 = [v9 localizedName];
        [v10 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)presentNavControllerWithRootViewController:(id)a3
{
  v4 = MEMORY[0x277D757A0];
  v5 = a3;
  v6 = [[v4 alloc] initWithRootViewController:v5];

  [(WFAppInFocusTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[WFAppInFocusTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"chooseApps"];

  if (v9)
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v19 = "[WFAppInFocusTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", buf, 0x16u);
    }

    v11 = [WFAppSearchViewController alloc];
    v17 = *MEMORY[0x277D7A300];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v13 = [(WFAppInFocusTriggerConfigurationViewController *)self selectedApps];
    v14 = [(WFAppSearchViewController *)v11 initWithAppSearchType:0 omittedAppBundleIDs:v12 allowMultipleSelection:1 selectedApps:v13];

    [(WFAppSearchViewController *)v14 setDelegate:self];
    v15 = WFLocalizedString(@"Choose Apps");
    [(WFAppSearchViewController *)v14 setTitle:v15];

    [(WFAppInFocusTriggerConfigurationViewController *)self presentNavControllerWithRootViewController:v14];
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v6 withSectionInfo:v7];
  v16 = [(WFTriggerConfigurationViewController *)self tableView];
  [v16 reloadData];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFAppInFocusTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFAppInFocusTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setSelectionStyle:0];
  }

  else
  {
    v13 = [v8 objectForKeyedSubscript:@"identifier"];
    v14 = [v13 isEqual:@"chooseApps"];

    v15 = v10;
    v16 = v15;
    if (v14)
    {
      v17 = WFLocalizedString(@"App");
      v18 = [v16 textLabel];
      [v18 setText:v17];

      v19 = [(WFTriggerConfigurationViewController *)self trigger];
      v20 = [v19 selectedBundleIdentifiers];
      v21 = [v20 count];

      if (v21)
      {
        v22 = [(WFTriggerConfigurationViewController *)self trigger];
        v23 = [v22 selectedBundleIdentifiers];
        v24 = [v23 count];

        if (v24 == 1)
        {
          v25 = [(WFAppInFocusTriggerConfigurationViewController *)self displayNameOfSelectedApps];
          v26 = [v25 objectAtIndexedSubscript:0];
          v27 = [v16 detailTextLabel];
          [v27 setText:v26];
        }

        else
        {
          v39 = MEMORY[0x277CCACA8];
          v25 = WFLocalizedString(@"Any of %lu Apps");
          v26 = [(WFTriggerConfigurationViewController *)self trigger];
          [v26 selectedBundleIdentifiers];
          v40 = v52 = v9;
          v41 = [v39 localizedStringWithFormat:v25, objc_msgSend(v40, "count")];
          v42 = [v16 detailTextLabel];
          [v42 setText:v41];

          v9 = v52;
        }
      }

      else
      {
        v25 = WFLocalizedString(@"Choose");
        v26 = [v16 detailTextLabel];
        [v26 setText:v25];
      }
    }

    else
    {
      v51 = v9;
      v48 = v6;
      v45 = v8;
      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v16;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      v53 = v28;

      v50 = [(WFTriggerConfigurationViewController *)self trigger];
      v29 = [objc_opt_class() onIcon];
      v49 = [(WFTriggerConfigurationViewController *)self trigger];
      v30 = [objc_opt_class() onLabel];
      v47 = [(WFTriggerConfigurationViewController *)self trigger];
      v31 = [objc_opt_class() onIconTintColor];
      v46 = [(WFTriggerConfigurationViewController *)self trigger];
      v32 = [objc_opt_class() offIcon];
      v33 = [(WFTriggerConfigurationViewController *)self trigger];
      v34 = [objc_opt_class() offLabel];
      v35 = [(WFTriggerConfigurationViewController *)self trigger];
      v36 = [objc_opt_class() offIconTintColor];
      [v53 configureWithLeftGlyph:v29 leftTitle:v30 leftTintColor:v31 rightGlyph:v32 rightTitle:v34 rightTintColor:v36];

      v37 = [(WFTriggerConfigurationViewController *)self trigger];
      [v53 setLeftViewSelected:{objc_msgSend(v37, "onFocus")}];

      v38 = [(WFTriggerConfigurationViewController *)self trigger];
      [v53 setRightViewSelected:{objc_msgSend(v38, "onBackground")}];

      [v53 setDelegate:self];
      v9 = v51;
      v6 = v48;
      v8 = v45;
    }
  }

  v43 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8];

  return v43;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFAppInFocusTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)infoForSection:(int64_t)a3
{
  v4 = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WFAppInFocusTriggerConfigurationViewController;
  [(WFAppInFocusTriggerConfigurationViewController *)&v5 viewWillAppear:a3];
  v4 = [(WFTriggerConfigurationViewController *)self tableView];
  [v4 reloadData];
}

- (id)customSections
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"identifier";
  v12[1] = @"cellIdentifier";
  v13[0] = @"chooseApps";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v4;
  v10[1] = @"cellIdentifier";
  v11[0] = @"triggerParameters";
  v10[0] = @"identifier";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  return v8;
}

- (id)tableViewCellClasses
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

- (WFAppInFocusTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFAppInFocusTriggerConfigurationViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFAppInFocusTrigger class]]"}];
  }

  v20.receiver = self;
  v20.super_class = WFAppInFocusTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v20 initWithTrigger:v7 mode:a4];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
    selectedApps = v8->_selectedApps;
    v8->_selectedApps = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    displayNameOfSelectedApps = v8->_displayNameOfSelectedApps;
    v8->_displayNameOfSelectedApps = v11;

    v13 = [v7 selectedBundleIdentifiers];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v7 selectedBundleIdentifiers];
      v16 = [v15 if_compactMap:&__block_literal_global_7446];

      [(NSMutableOrderedSet *)v8->_selectedApps addObjectsFromArray:v16];
      [(WFAppInFocusTriggerConfigurationViewController *)v8 updateDisplayNameOfSelectedApps];
    }

    v17 = v8;
  }

  return v8;
}

@end