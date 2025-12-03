@interface WFAutomationSelectTypeViewController
+ (unint64_t)automationTypeForHomeManager:(id)manager;
- (WFAutomationSelectTypeViewController)initWithTriggerManager:(id)manager;
- (WFAutomationSelectTypeViewControllerDelegate)delegate;
- (id)buildTableContent;
- (id)currentSections;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)triggerForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)chooseHomeAutomation:(id)automation;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)showHomeUpdateRequiredAlert:(id)alert;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFAutomationSelectTypeViewController

- (WFAutomationSelectTypeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  tableView = [(WFAutomationSelectTypeViewController *)self tableView];
  [tableView reloadData];
}

- (id)buildTableContent
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  availableTriggersByCategory = [MEMORY[0x277D7C978] availableTriggersByCategory];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [availableTriggersByCategory countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(availableTriggersByCategory);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v19[0] = @"sectionIdentifier";
        v19[1] = @"triggers";
        v20[0] = @"triggerTypes";
        v20[1] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
        [v2 addObject:v9];
      }

      v5 = [availableTriggersByCategory countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }

  v17 = @"sectionIdentifier";
  v18 = @"homePlatter";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v2 addObject:v10];

  v11 = [v2 copy];

  return v11;
}

- (id)triggerForIndexPath:(id)path
{
  pathCopy = path;
  currentSections = [(WFAutomationSelectTypeViewController *)self currentSections];
  v6 = [currentSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v7 = [v6 objectForKeyedSubscript:@"triggers"];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (id)currentSections
{
  searchController = [(WFAutomationSelectTypeViewController *)self searchController];
  if ([searchController isActive])
  {
    searchController2 = [(WFAutomationSelectTypeViewController *)self searchController];
    searchBar = [searchController2 searchBar];
    text = [searchBar text];
    v7 = [text length];

    if (v7)
    {
      searchController3 = [(WFAutomationSelectTypeViewController *)self searchController];
      searchBar2 = [searchController3 searchBar];
      text2 = [searchBar2 text];

      tableContent = [(WFAutomationSelectTypeViewController *)self tableContent];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__WFAutomationSelectTypeViewController_currentSections__block_invoke;
      v15[3] = &unk_279EE7F68;
      v16 = text2;
      v12 = text2;
      tableContent2 = [tableContent if_compactMap:v15];

      goto LABEL_6;
    }
  }

  else
  {
  }

  tableContent2 = [(WFAutomationSelectTypeViewController *)self tableContent];
LABEL_6:

  return tableContent2;
}

id __55__WFAutomationSelectTypeViewController_currentSections__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"sectionIdentifier"];
  v5 = [v4 isEqualToString:@"triggerTypes"];

  if (v5)
  {
    v6 = [v3 mutableCopy];
    v7 = [v3 objectForKeyedSubscript:@"triggers"];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__WFAutomationSelectTypeViewController_currentSections__block_invoke_2;
    v12[3] = &unk_279EE7F40;
    v13 = *(a1 + 32);
    v8 = [v7 if_objectsPassingTest:v12];
    if ([v8 count])
    {
      [v6 setObject:v8 forKeyedSubscript:@"triggers"];
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v6 = WFLocalizedString(@"Home");
    if ([v6 localizedCaseInsensitiveContainsString:*(a1 + 32)])
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    v9 = v10;
  }

  return v9;
}

uint64_t __55__WFAutomationSelectTypeViewController_currentSections__block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [MEMORY[0x277D7A048] defaultContext];
  v4 = [v2 localizedDisplayNameWithContext:v3];

  v5 = [v4 localizedCaseInsensitiveContainsString:*(a1 + 32)];
  return v5;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  currentSections = [(WFAutomationSelectTypeViewController *)self currentSections];
  v8 = [currentSections objectAtIndexedSubscript:section];

  v9 = [v8 objectForKeyedSubscript:@"sectionIdentifier"];
  v10 = [v9 isEqualToString:@"homePlatter"];

  if (v10)
  {
    v11 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"header"];
    extraProminentInsetGroupedHeaderConfiguration = [MEMORY[0x277D756E0] extraProminentInsetGroupedHeaderConfiguration];
    v13 = WFLocalizedString(@"Home Automation");
    [extraProminentInsetGroupedHeaderConfiguration setText:v13];

    v14 = 8.0;
    v15 = 8.0;
    v16 = 12.0;
LABEL_9:
    [extraProminentInsetGroupedHeaderConfiguration setDirectionalLayoutMargins:{v14, v15, v16, 8.0}];
    [v11 setContentConfiguration:extraProminentInsetGroupedHeaderConfiguration];

    goto LABEL_10;
  }

  v17 = [v8 objectForKeyedSubscript:@"sectionIdentifier"];
  v18 = [v17 isEqualToString:@"triggerTypes"];

  v11 = 0;
  if (!section && v18)
  {
    v11 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"header"];
    extraProminentInsetGroupedHeaderConfiguration = [MEMORY[0x277D756E0] extraProminentInsetGroupedHeaderConfiguration];
    v19 = WFLocalizedString(@"Personal Automation");
    [extraProminentInsetGroupedHeaderConfiguration setText:v19];

    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    idiom = [currentDevice idiom];

    if (idiom > 4)
    {
      v22 = @"An automation that runs on your device.";
    }

    else
    {
      v22 = off_279EE8E78[idiom];
    }

    v23 = WFLocalizedString(v22);
    [extraProminentInsetGroupedHeaderConfiguration setSecondaryText:v23];

    v14 = 8.0;
    v15 = 8.0;
    v16 = 14.0;
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [(WFAutomationSelectTypeViewController *)self triggerForIndexPath:pathCopy];

  if (v8)
  {
    delegate = [(WFAutomationSelectTypeViewController *)self delegate];
    [delegate selectTypeViewController:self didChooseTrigger:v8];
  }
}

- (void)showHomeUpdateRequiredAlert:(id)alert
{
  v10 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
  localizedHomeUpdateRequiredTitle = [MEMORY[0x277D7C4F0] localizedHomeUpdateRequiredTitle];
  [v10 setTitle:localizedHomeUpdateRequiredTitle];

  localizedHomeUpdateRequiredMessage = [MEMORY[0x277D7C4F0] localizedHomeUpdateRequiredMessage];
  [v10 setMessage:localizedHomeUpdateRequiredMessage];

  v5 = MEMORY[0x277CFC220];
  localizedHomeUpdateRequiredButtonLabel = [MEMORY[0x277D7C4F0] localizedHomeUpdateRequiredButtonLabel];
  v7 = [v5 buttonWithTitle:localizedHomeUpdateRequiredButtonLabel style:0 preferred:1 handler:&__block_literal_global_11979];

  v8 = [MEMORY[0x277CFC220] cancelButtonWithHandler:0];
  [v10 addButton:v8];

  [v10 addButton:v7];
  v9 = WFUserInterfaceFromViewController();
  [v9 presentAlert:v10];
}

- (void)chooseHomeAutomation:(id)automation
{
  delegate = [(WFAutomationSelectTypeViewController *)self delegate];
  [delegate selectTypeViewController:self didChooseAutomationType:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  currentSections = [(WFAutomationSelectTypeViewController *)self currentSections];
  v7 = [currentSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v8 = [v7 objectForKeyedSubscript:@"sectionIdentifier"];
  v9 = [v8 isEqualToString:@"triggerTypes"];

  tableView = [(WFAutomationSelectTypeViewController *)self tableView];
  if (v9)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [tableView dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];

    v14 = [(WFAutomationSelectTypeViewController *)self triggerForIndexPath:pathCopy];
    [v13 setTrigger:v14];

    [v13 setAccessoryType:1];
  }

  else
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v13 = [tableView dequeueReusableCellWithIdentifier:v16 forIndexPath:pathCopy];

    v17 = objc_opt_class();
    homeManager = [(WFAutomationSelectTypeViewController *)self homeManager];
    v19 = [v17 automationTypeForHomeManager:homeManager];

    homeManager2 = [(WFAutomationSelectTypeViewController *)self homeManager];
    requiresHomeUpdate = [homeManager2 requiresHomeUpdate];

    v22 = &selRef_showHomeUpdateRequiredAlert_;
    if (!requiresHomeUpdate)
    {
      v22 = &selRef_chooseHomeAutomation_;
    }

    [v13 configureForAutomationType:v19 buttonTarget:self action:*v22];
    [v13 setSelectionStyle:0];
  }

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  currentSections = [(WFAutomationSelectTypeViewController *)self currentSections];
  v6 = [currentSections objectAtIndexedSubscript:section];

  v7 = [v6 objectForKeyedSubscript:@"sectionIdentifier"];
  v8 = [v7 isEqualToString:@"triggerTypes"];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"triggers"];
    v10 = [v9 count];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  currentSections = [(WFAutomationSelectTypeViewController *)self currentSections];
  v4 = [currentSections count];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  homeManager = [(WFAutomationSelectTypeViewController *)self homeManager];
  [homeManager reloadData];

  wf_accentColor = [MEMORY[0x277D75348] wf_accentColor];
  navigationController = [(WFAutomationSelectTypeViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setTintColor:wf_accentColor];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WFAutomationSelectTypeViewController_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__WFAutomationSelectTypeViewController_homeManagerDidUpdateHomes___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = WFAutomationSelectTypeViewController;
  [(WFAutomationSelectTypeViewController *)&v19 viewDidLoad];
  tableView = [(WFAutomationSelectTypeViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];

  tableView2 = [(WFAutomationSelectTypeViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [tableView2 registerClass:v8 forCellReuseIdentifier:v10];

  tableView3 = [(WFAutomationSelectTypeViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"header"];

  v12 = *MEMORY[0x277D76F30];
  tableView4 = [(WFAutomationSelectTypeViewController *)self tableView];
  [tableView4 setRowHeight:v12];

  tableView5 = [(WFAutomationSelectTypeViewController *)self tableView];
  [tableView5 setEstimatedRowHeight:60.0];

  searchController = [(WFAutomationSelectTypeViewController *)self searchController];
  [searchController setSearchResultsUpdater:self];

  searchController2 = [(WFAutomationSelectTypeViewController *)self searchController];
  [searchController2 setObscuresBackgroundDuringPresentation:0];

  searchController3 = [(WFAutomationSelectTypeViewController *)self searchController];
  navigationItem = [(WFAutomationSelectTypeViewController *)self navigationItem];
  [navigationItem setSearchController:searchController3];
}

- (WFAutomationSelectTypeViewController)initWithTriggerManager:(id)manager
{
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = WFAutomationSelectTypeViewController;
  v6 = [(WFAutomationSelectTypeViewController *)&v16 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triggerManager, manager);
    mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
    homeManager = v7->_homeManager;
    v7->_homeManager = mEMORY[0x277D7C4F0];

    [(WFHomeManager *)v7->_homeManager addEventObserver:v7];
    v10 = objc_alloc_init(MEMORY[0x277D759F0]);
    searchController = v7->_searchController;
    v7->_searchController = v10;

    buildTableContent = [(WFAutomationSelectTypeViewController *)v7 buildTableContent];
    tableContent = v7->_tableContent;
    v7->_tableContent = buildTableContent;

    v14 = v7;
  }

  return v7;
}

+ (unint64_t)automationTypeForHomeManager:(id)manager
{
  managerCopy = manager;
  homesToWhichWeHaveAdminAccess = [managerCopy homesToWhichWeHaveAdminAccess];
  v5 = [homesToWhichWeHaveAdminAccess count];

  if (v5)
  {
    homesToWhichWeCanAddHomeAutomations = [managerCopy homesToWhichWeCanAddHomeAutomations];
    v7 = [homesToWhichWeCanAddHomeAutomations count];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

@end