@interface WFAppInFocusTriggerConfigurationViewController
- (WFAppInFocusTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)appSearchViewController:(id)controller didFinishWithApps:(id)apps;
- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected;
- (void)presentNavControllerWithRootViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDisplayNameOfSelectedApps;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFAppInFocusTriggerConfigurationViewController

- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected
{
  viewSelectedCopy = viewSelected;
  selectedCopy = selected;
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setOnFocus:selectedCopy];

  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger2 setOnBackground:viewSelectedCopy];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)appSearchViewController:(id)controller didFinishWithApps:(id)apps
{
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  appsCopy = apps;
  v8 = [appsCopy if_map:&__block_literal_global_220];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setSelectedBundleIdentifiers:v8];

  selectedApps = [(WFAppInFocusTriggerConfigurationViewController *)self selectedApps];
  [selectedApps removeAllObjects];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = appsCopy;
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
        selectedApps2 = [(WFAppInFocusTriggerConfigurationViewController *)self selectedApps];
        [selectedApps2 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(WFAppInFocusTriggerConfigurationViewController *)self updateDisplayNameOfSelectedApps];
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)updateDisplayNameOfSelectedApps
{
  v17 = *MEMORY[0x277D85DE8];
  displayNameOfSelectedApps = [(WFAppInFocusTriggerConfigurationViewController *)self displayNameOfSelectedApps];
  [displayNameOfSelectedApps removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  selectedApps = [(WFAppInFocusTriggerConfigurationViewController *)self selectedApps];
  v5 = [selectedApps countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(selectedApps);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        displayNameOfSelectedApps2 = [(WFAppInFocusTriggerConfigurationViewController *)self displayNameOfSelectedApps];
        localizedName = [v9 localizedName];
        [displayNameOfSelectedApps2 addObject:localizedName];

        ++v8;
      }

      while (v6 != v8);
      v6 = [selectedApps countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)presentNavControllerWithRootViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];

  [(WFAppInFocusTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFAppInFocusTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
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
    selectedApps = [(WFAppInFocusTriggerConfigurationViewController *)self selectedApps];
    v14 = [(WFAppSearchViewController *)v11 initWithAppSearchType:0 omittedAppBundleIDs:v12 allowMultipleSelection:1 selectedApps:selectedApps];

    [(WFAppSearchViewController *)v14 setDelegate:self];
    v15 = WFLocalizedString(@"Choose Apps");
    [(WFAppSearchViewController *)v14 setTitle:v15];

    [(WFAppInFocusTriggerConfigurationViewController *)self presentNavControllerWithRootViewController:v14];
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFAppInFocusTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFAppInFocusTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

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
      textLabel = [v16 textLabel];
      [textLabel setText:v17];

      trigger = [(WFTriggerConfigurationViewController *)self trigger];
      selectedBundleIdentifiers = [trigger selectedBundleIdentifiers];
      v21 = [selectedBundleIdentifiers count];

      if (v21)
      {
        trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedBundleIdentifiers2 = [trigger2 selectedBundleIdentifiers];
        v24 = [selectedBundleIdentifiers2 count];

        if (v24 == 1)
        {
          displayNameOfSelectedApps = [(WFAppInFocusTriggerConfigurationViewController *)self displayNameOfSelectedApps];
          trigger3 = [displayNameOfSelectedApps objectAtIndexedSubscript:0];
          detailTextLabel = [v16 detailTextLabel];
          [detailTextLabel setText:trigger3];
        }

        else
        {
          v39 = MEMORY[0x277CCACA8];
          displayNameOfSelectedApps = WFLocalizedString(@"Any of %lu Apps");
          trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
          [trigger3 selectedBundleIdentifiers];
          v40 = v52 = v9;
          v41 = [v39 localizedStringWithFormat:displayNameOfSelectedApps, objc_msgSend(v40, "count")];
          detailTextLabel2 = [v16 detailTextLabel];
          [detailTextLabel2 setText:v41];

          v9 = v52;
        }
      }

      else
      {
        displayNameOfSelectedApps = WFLocalizedString(@"Choose");
        trigger3 = [v16 detailTextLabel];
        [trigger3 setText:displayNameOfSelectedApps];
      }
    }

    else
    {
      v51 = v9;
      v48 = pathCopy;
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

      trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
      onIcon = [objc_opt_class() onIcon];
      trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
      onLabel = [objc_opt_class() onLabel];
      trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
      onIconTintColor = [objc_opt_class() onIconTintColor];
      trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
      offIcon = [objc_opt_class() offIcon];
      trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
      offLabel = [objc_opt_class() offLabel];
      trigger9 = [(WFTriggerConfigurationViewController *)self trigger];
      offIconTintColor = [objc_opt_class() offIconTintColor];
      [v53 configureWithLeftGlyph:onIcon leftTitle:onLabel leftTintColor:onIconTintColor rightGlyph:offIcon rightTitle:offLabel rightTintColor:offIconTintColor];

      trigger10 = [(WFTriggerConfigurationViewController *)self trigger];
      [v53 setLeftViewSelected:{objc_msgSend(trigger10, "onFocus")}];

      trigger11 = [(WFTriggerConfigurationViewController *)self trigger];
      [v53 setRightViewSelected:{objc_msgSend(trigger11, "onBackground")}];

      [v53 setDelegate:self];
      v9 = v51;
      pathCopy = v48;
      v8 = v45;
    }
  }

  v43 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v43;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFAppInFocusTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFAppInFocusTriggerConfigurationViewController;
  [(WFAppInFocusTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
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

- (WFAppInFocusTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAppInFocusTriggerConfigurationViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFAppInFocusTrigger class]]"}];
  }

  v20.receiver = self;
  v20.super_class = WFAppInFocusTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v20 initWithTrigger:triggerCopy mode:mode];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
    selectedApps = v8->_selectedApps;
    v8->_selectedApps = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    displayNameOfSelectedApps = v8->_displayNameOfSelectedApps;
    v8->_displayNameOfSelectedApps = v11;

    selectedBundleIdentifiers = [triggerCopy selectedBundleIdentifiers];
    v14 = [selectedBundleIdentifiers count];

    if (v14)
    {
      selectedBundleIdentifiers2 = [triggerCopy selectedBundleIdentifiers];
      v16 = [selectedBundleIdentifiers2 if_compactMap:&__block_literal_global_7446];

      [(NSMutableOrderedSet *)v8->_selectedApps addObjectsFromArray:v16];
      [(WFAppInFocusTriggerConfigurationViewController *)v8 updateDisplayNameOfSelectedApps];
    }

    v17 = v8;
  }

  return v8;
}

@end