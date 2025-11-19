@interface WFAutomationSelectTypeViewController
+ (unint64_t)automationTypeForHomeManager:(id)a3;
- (WFAutomationSelectTypeViewController)initWithTriggerManager:(id)a3;
- (WFAutomationSelectTypeViewControllerDelegate)delegate;
- (id)buildTableContent;
- (id)currentSections;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)triggerForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)chooseHomeAutomation:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)showHomeUpdateRequiredAlert:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFAutomationSelectTypeViewController

- (WFAutomationSelectTypeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v3 = [(WFAutomationSelectTypeViewController *)self tableView];
  [v3 reloadData];
}

- (id)buildTableContent
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D7C978] availableTriggersByCategory];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v19[0] = @"sectionIdentifier";
        v19[1] = @"triggers";
        v20[0] = @"triggerTypes";
        v20[1] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
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

- (id)triggerForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(WFAutomationSelectTypeViewController *)self currentSections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  v7 = [v6 objectForKeyedSubscript:@"triggers"];
  v8 = [v4 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (id)currentSections
{
  v3 = [(WFAutomationSelectTypeViewController *)self searchController];
  if ([v3 isActive])
  {
    v4 = [(WFAutomationSelectTypeViewController *)self searchController];
    v5 = [v4 searchBar];
    v6 = [v5 text];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [(WFAutomationSelectTypeViewController *)self searchController];
      v9 = [v8 searchBar];
      v10 = [v9 text];

      v11 = [(WFAutomationSelectTypeViewController *)self tableContent];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__WFAutomationSelectTypeViewController_currentSections__block_invoke;
      v15[3] = &unk_279EE7F68;
      v16 = v10;
      v12 = v10;
      v13 = [v11 if_compactMap:v15];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = [(WFAutomationSelectTypeViewController *)self tableContent];
LABEL_6:

  return v13;
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(WFAutomationSelectTypeViewController *)self currentSections];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [v8 objectForKeyedSubscript:@"sectionIdentifier"];
  v10 = [v9 isEqualToString:@"homePlatter"];

  if (v10)
  {
    v11 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"header"];
    v12 = [MEMORY[0x277D756E0] extraProminentInsetGroupedHeaderConfiguration];
    v13 = WFLocalizedString(@"Home Automation");
    [v12 setText:v13];

    v14 = 8.0;
    v15 = 8.0;
    v16 = 12.0;
LABEL_9:
    [v12 setDirectionalLayoutMargins:{v14, v15, v16, 8.0}];
    [v11 setContentConfiguration:v12];

    goto LABEL_10;
  }

  v17 = [v8 objectForKeyedSubscript:@"sectionIdentifier"];
  v18 = [v17 isEqualToString:@"triggerTypes"];

  v11 = 0;
  if (!a4 && v18)
  {
    v11 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"header"];
    v12 = [MEMORY[0x277D756E0] extraProminentInsetGroupedHeaderConfiguration];
    v19 = WFLocalizedString(@"Personal Automation");
    [v12 setText:v19];

    v20 = [MEMORY[0x277D79F18] currentDevice];
    v21 = [v20 idiom];

    if (v21 > 4)
    {
      v22 = @"An automation that runs on your device.";
    }

    else
    {
      v22 = off_279EE8E78[v21];
    }

    v23 = WFLocalizedString(v22);
    [v12 setSecondaryText:v23];

    v14 = 8.0;
    v15 = 8.0;
    v16 = 14.0;
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v8 = [(WFAutomationSelectTypeViewController *)self triggerForIndexPath:v6];

  if (v8)
  {
    v7 = [(WFAutomationSelectTypeViewController *)self delegate];
    [v7 selectTypeViewController:self didChooseTrigger:v8];
  }
}

- (void)showHomeUpdateRequiredAlert:(id)a3
{
  v10 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
  v3 = [MEMORY[0x277D7C4F0] localizedHomeUpdateRequiredTitle];
  [v10 setTitle:v3];

  v4 = [MEMORY[0x277D7C4F0] localizedHomeUpdateRequiredMessage];
  [v10 setMessage:v4];

  v5 = MEMORY[0x277CFC220];
  v6 = [MEMORY[0x277D7C4F0] localizedHomeUpdateRequiredButtonLabel];
  v7 = [v5 buttonWithTitle:v6 style:0 preferred:1 handler:&__block_literal_global_11979];

  v8 = [MEMORY[0x277CFC220] cancelButtonWithHandler:0];
  [v10 addButton:v8];

  [v10 addButton:v7];
  v9 = WFUserInterfaceFromViewController();
  [v9 presentAlert:v10];
}

- (void)chooseHomeAutomation:(id)a3
{
  v4 = [(WFAutomationSelectTypeViewController *)self delegate];
  [v4 selectTypeViewController:self didChooseAutomationType:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WFAutomationSelectTypeViewController *)self currentSections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v8 = [v7 objectForKeyedSubscript:@"sectionIdentifier"];
  v9 = [v8 isEqualToString:@"triggerTypes"];

  v10 = [(WFAutomationSelectTypeViewController *)self tableView];
  if (v9)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 dequeueReusableCellWithIdentifier:v12 forIndexPath:v5];

    v14 = [(WFAutomationSelectTypeViewController *)self triggerForIndexPath:v5];
    [v13 setTrigger:v14];

    [v13 setAccessoryType:1];
  }

  else
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v13 = [v10 dequeueReusableCellWithIdentifier:v16 forIndexPath:v5];

    v17 = objc_opt_class();
    v18 = [(WFAutomationSelectTypeViewController *)self homeManager];
    v19 = [v17 automationTypeForHomeManager:v18];

    v20 = [(WFAutomationSelectTypeViewController *)self homeManager];
    v21 = [v20 requiresHomeUpdate];

    v22 = &selRef_showHomeUpdateRequiredAlert_;
    if (!v21)
    {
      v22 = &selRef_chooseHomeAutomation_;
    }

    [v13 configureForAutomationType:v19 buttonTarget:self action:*v22];
    [v13 setSelectionStyle:0];
  }

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFAutomationSelectTypeViewController *)self currentSections];
  v6 = [v5 objectAtIndexedSubscript:a4];

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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFAutomationSelectTypeViewController *)self currentSections];
  v4 = [v3 count];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = [(WFAutomationSelectTypeViewController *)self homeManager];
  [v4 reloadData];

  v7 = [MEMORY[0x277D75348] wf_accentColor];
  v5 = [(WFAutomationSelectTypeViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setTintColor:v7];
}

- (void)homeManagerDidUpdateHomes:(id)a3
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
  v3 = [(WFAutomationSelectTypeViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];

  v7 = [(WFAutomationSelectTypeViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v7 registerClass:v8 forCellReuseIdentifier:v10];

  v11 = [(WFAutomationSelectTypeViewController *)self tableView];
  [v11 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"header"];

  v12 = *MEMORY[0x277D76F30];
  v13 = [(WFAutomationSelectTypeViewController *)self tableView];
  [v13 setRowHeight:v12];

  v14 = [(WFAutomationSelectTypeViewController *)self tableView];
  [v14 setEstimatedRowHeight:60.0];

  v15 = [(WFAutomationSelectTypeViewController *)self searchController];
  [v15 setSearchResultsUpdater:self];

  v16 = [(WFAutomationSelectTypeViewController *)self searchController];
  [v16 setObscuresBackgroundDuringPresentation:0];

  v17 = [(WFAutomationSelectTypeViewController *)self searchController];
  v18 = [(WFAutomationSelectTypeViewController *)self navigationItem];
  [v18 setSearchController:v17];
}

- (WFAutomationSelectTypeViewController)initWithTriggerManager:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = WFAutomationSelectTypeViewController;
  v6 = [(WFAutomationSelectTypeViewController *)&v16 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triggerManager, a3);
    v8 = [MEMORY[0x277D7C4F0] sharedManager];
    homeManager = v7->_homeManager;
    v7->_homeManager = v8;

    [(WFHomeManager *)v7->_homeManager addEventObserver:v7];
    v10 = objc_alloc_init(MEMORY[0x277D759F0]);
    searchController = v7->_searchController;
    v7->_searchController = v10;

    v12 = [(WFAutomationSelectTypeViewController *)v7 buildTableContent];
    tableContent = v7->_tableContent;
    v7->_tableContent = v12;

    v14 = v7;
  }

  return v7;
}

+ (unint64_t)automationTypeForHomeManager:(id)a3
{
  v3 = a3;
  v4 = [v3 homesToWhichWeHaveAdminAccess];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 homesToWhichWeCanAddHomeAutomations];
    v7 = [v6 count];

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