@interface WFSleepTriggerConfigurationViewController
- (BOOL)shouldEnableNextButton;
- (WFSleepTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)footerLinkViewForTableView:(id)view;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)healthFeatureAvailability:(id)availability sleepOnboardingStatusDidChange:(unint64_t)change;
- (void)setupParameterSectionCell:(id)cell atRow:(int64_t)row;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateUI;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFSleepTriggerConfigurationViewController

- (BOOL)shouldEnableNextButton
{
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  if ([trigger hasValidConfiguration])
  {
    healthFeatureAvailability = [(WFSleepTriggerConfigurationViewController *)self healthFeatureAvailability];
    v5 = [healthFeatureAvailability sleepOnboardingStatus] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)healthFeatureAvailability:(id)availability sleepOnboardingStatusDidChange:(unint64_t)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__WFSleepTriggerConfigurationViewController_healthFeatureAvailability_sleepOnboardingStatusDidChange___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __102__WFSleepTriggerConfigurationViewController_healthFeatureAvailability_sleepOnboardingStatusDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 updateNextButtonEnabledState];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFSleepTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"triggerParameters"];

  if (v9)
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315394;
      v17 = "[WFSleepTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", &v16, 0x16u);
    }

    if ([pathCopy row])
    {
      v11 = [pathCopy row];
      trigger = [(WFTriggerConfigurationViewController *)self trigger];
      v13 = trigger;
      if (v11 == 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      trigger = [(WFTriggerConfigurationViewController *)self trigger];
      v13 = trigger;
      v14 = 0;
    }

    [trigger setSelection:v14];
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)footerLinkViewForTableView:(id)view
{
  v45 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  healthFeatureAvailability = [(WFSleepTriggerConfigurationViewController *)self healthFeatureAvailability];
  sleepOnboardingStatus = [healthFeatureAvailability sleepOnboardingStatus];

  if (sleepOnboardingStatus == 1)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v9];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v11 = getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_ptr;
  v40 = getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_ptr;
  if (!getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v42 = __getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_block_invoke;
    v43 = &unk_279EE8CF8;
    v44 = &v37;
    v12 = SleepLibrary();
    v13 = dlsym(v12, "HKSPSleepLaunchURLRouteOnboardSleepCoaching");
    *(v44[1] + 24) = v13;
    getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_ptr = *(v44[1] + 24);
    v11 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v11)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HKSPSleepLaunchURLRoute getHKSPSleepLaunchURLRouteOnboardSleepCoaching(void)"];
    [currentHandler handleFailureInFunction:v32 file:@"WFSleepTriggerConfigurationViewController.m" lineNumber:26 description:{@"%s", dlerror()}];

    goto LABEL_24;
  }

  v14 = *v11;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v15 = getHKSPProvenanceSourceShortcutsSymbolLoc_ptr;
  v40 = getHKSPProvenanceSourceShortcutsSymbolLoc_ptr;
  if (!getHKSPProvenanceSourceShortcutsSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v42 = __getHKSPProvenanceSourceShortcutsSymbolLoc_block_invoke;
    v43 = &unk_279EE8CF8;
    v44 = &v37;
    v16 = SleepLibrary();
    v17 = dlsym(v16, "HKSPProvenanceSourceShortcuts");
    *(v44[1] + 24) = v17;
    getHKSPProvenanceSourceShortcutsSymbolLoc_ptr = *(v44[1] + 24);
    v15 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v15)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HKSPProvenanceSource getHKSPProvenanceSourceShortcuts(void)"];
    [currentHandler2 handleFailureInFunction:v34 file:@"WFSleepTriggerConfigurationViewController.m" lineNumber:28 description:{@"%s", dlerror()}];

    goto LABEL_24;
  }

  v18 = *v15;
  v19 = v14;
  v20 = v18;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v21 = getHKSPSleepURLSymbolLoc_ptr;
  v40 = getHKSPSleepURLSymbolLoc_ptr;
  if (!getHKSPSleepURLSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v42 = __getHKSPSleepURLSymbolLoc_block_invoke;
    v43 = &unk_279EE8CF8;
    v44 = &v37;
    v22 = SleepLibrary();
    v23 = dlsym(v22, "HKSPSleepURL");
    *(v44[1] + 24) = v23;
    getHKSPSleepURLSymbolLoc_ptr = *(v44[1] + 24);
    v21 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v21)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSURL *WFHKSPSleepURL(__strong HKSPSleepLaunchURLRoute, __strong HKSPProvenanceSource)"}];
    [currentHandler3 handleFailureInFunction:v36 file:@"WFSleepTriggerConfigurationViewController.m" lineNumber:27 description:{@"%s", dlerror()}];

LABEL_24:
    __break(1u);
  }

  v24 = v21(v19, v20);

  if (v24)
  {
    v25 = WFLocalizedString(@"You can set up a sleep schedule in the Health app.");
    v26 = WFLocalizedString(@"Open Health…");
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v25, v26, v37];
    v28 = [v27 rangeOfString:v26];
    [v10 setText:v27 URL:v24 linkRange:{v28, v29}];
    v7 = v10;
  }

  else
  {
    v25 = getWFTriggersLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFSleepTriggerConfigurationViewController footerLinkViewForTableView:]";
      _os_log_impl(&dword_274719000, v25, OS_LOG_TYPE_ERROR, "%s Failed to get onboard sleep coaching url", &buf, 0xCu);
    }

    v7 = 0;
  }

LABEL_18:

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(WFSleepTriggerConfigurationViewController *)self infoForSection:section];
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"triggerParameters"];

  if (v9)
  {
    v10 = [(WFSleepTriggerConfigurationViewController *)self footerLinkViewForTableView:viewCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFSleepTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (void)setupParameterSectionCell:(id)cell atRow:(int64_t)row
{
  cellCopy = cell;
  switch(row)
  {
    case 2:
      v6 = @"Waking Up";
      goto LABEL_7;
    case 1:
      v6 = @"Bedtime Begins";
      goto LABEL_7;
    case 0:
      v6 = @"Wind Down Begins";
LABEL_7:
      v7 = WFLocalizedString(v6);
      textLabel = [cellCopy textLabel];
      [textLabel setText:v7];

      goto LABEL_9;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid row %li for WFSleepTriggerConfigurationViewController", row}];
LABEL_9:
  [cellCopy setUserInteractionEnabled:1];
  textLabel2 = [cellCopy textLabel];
  [textLabel2 setEnabled:1];

  healthFeatureAvailability = [(WFSleepTriggerConfigurationViewController *)self healthFeatureAvailability];
  sleepOnboardingStatus = [healthFeatureAvailability sleepOnboardingStatus];

  if (sleepOnboardingStatus)
  {
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    selection = [trigger selection];

    if (selection == row)
    {
      [cellCopy setAccessoryType:3];
    }
  }

  else
  {
    [cellCopy setUserInteractionEnabled:0];
    textLabel3 = [cellCopy textLabel];
    [textLabel3 setEnabled:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[WFSleepTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setSelectionStyle:0];
    [v10 setAccessoryType:0];
  }

  else
  {
    [v10 setAccessoryType:0];
    -[WFSleepTriggerConfigurationViewController setupParameterSectionCell:atRow:](self, "setupParameterSectionCell:atRow:", v10, [pathCopy row]);
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __77__WFSleepTriggerConfigurationViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v20 = &unk_279EE8C58;
  selfCopy = self;
  v13 = v10;
  v22 = v13;
  v14 = _Block_copy(&v17);
  selfCopy = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v13 indexPath:pathCopy sectionInfo:v8, v17, v18, v19, v20, selfCopy];
  v14[2](v14);

  return selfCopy;
}

void __77__WFSleepTriggerConfigurationViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) healthFeatureAvailability];
  v3 = [v2 sleepOnboardingStatus];

  if (v3 != 1)
  {
    v4 = *(a1 + 40);

    [v4 setAccessoryType:0];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFSleepTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"triggerDescription"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:@"identifier"];
    v10 = [v9 isEqual:@"triggerParameters"];

    if (v10)
    {
      v8 = 3;
    }

    else
    {
      v8 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];
    }
  }

  return v8;
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
  v5.super_class = WFSleepTriggerConfigurationViewController;
  [(WFSleepTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)customSections
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7 = @"identifier";
  v8 = @"cellIdentifier";
  v9[0] = @"triggerParameters";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v7 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:{1, v7, v8, v9[0]}];

  return v5;
}

- (id)tableViewCellClasses
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)viewDidLoad
{
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [tableView registerClass:v2 forHeaderFooterViewReuseIdentifier:v4];
}

- (void)updateUI
{
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (WFSleepTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSleepTriggerConfigurationViewController.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFSleepTrigger class]]"}];
  }

  v15.receiver = self;
  v15.super_class = WFSleepTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v15 initWithTrigger:triggerCopy mode:mode];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D7C4E0]) initWithSleepFeature:0];
    healthFeatureAvailability = v8->_healthFeatureAvailability;
    v8->_healthFeatureAvailability = v9;

    healthFeatureAvailability = [(WFSleepTriggerConfigurationViewController *)v8 healthFeatureAvailability];
    [healthFeatureAvailability setObserver:v8];

    v12 = v8;
  }

  return v8;
}

@end