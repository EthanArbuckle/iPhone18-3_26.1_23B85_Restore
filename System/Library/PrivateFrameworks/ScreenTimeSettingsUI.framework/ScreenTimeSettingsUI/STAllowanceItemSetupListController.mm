@interface STAllowanceItemSetupListController
- (STAllowanceItemSetupListController)init;
- (id)_applicationSpecifierForBundleIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier;
- (id)_categoryDetailText:(id)text;
- (id)_categorySpecifierForIdentifier:(id)identifier;
- (id)_webDomainSpecifierForDomain:(id)domain usageItem:(id)item;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addCustomWebDomain:(id)domain specifier:(id)specifier;
- (void)_addWebsiteButtonPressed:(id)pressed;
- (void)_cleanUpRetainCycles;
- (void)_didPressCancelButton:(id)button;
- (void)_didPressDoneButton:(id)button;
- (void)_hasSelectionDidChangeFrom:(BOOL)from to:(BOOL)to;
- (void)_selectCellsForSelectedIdentifiers:(id)identifiers;
- (void)_showNewCategoriesCompatibilityAlertIfNeeded;
- (void)_updateApplicationSpecifiersWithBundleIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier shouldInsertSpecifier:(BOOL)specifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
- (void)willResignActive;
@end

@implementation STAllowanceItemSetupListController

- (STAllowanceItemSetupListController)init
{
  v12.receiver = self;
  v12.super_class = STAllowanceItemSetupListController;
  v2 = [(STAllowanceItemSetupListController *)&v12 init];
  v3 = objc_opt_new();
  selectedBundleIdentifiers = v2->_selectedBundleIdentifiers;
  v2->_selectedBundleIdentifiers = v3;

  v5 = objc_opt_new();
  selectedWebDomains = v2->_selectedWebDomains;
  v2->_selectedWebDomains = v5;

  v7 = objc_opt_new();
  selectedCategoryIdentifiers = v2->_selectedCategoryIdentifiers;
  v2->_selectedCategoryIdentifiers = v7;

  v9 = objc_opt_new();
  applicationAndWebDomainSpecifiersByCategoryIdentifier = v2->_applicationAndWebDomainSpecifiersByCategoryIdentifier;
  v2->_applicationAndWebDomainSpecifiersByCategoryIdentifier = v9;

  return v2;
}

- (void)dealloc
{
  [(STAllowanceItemSearchResultsController *)self->_searchResultsController removeObserver:self forKeyPath:@"hasNewSelection" context:@"KVOContextAllowanceItemSetupListController"];
  v3.receiver = self;
  v3.super_class = STAllowanceItemSetupListController;
  [(STAllowanceItemSetupListController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = STAllowanceItemSetupListController;
  [(STAllowanceItemSetupListController *)&v22 viewDidLoad];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"AllowanceChooseAppsTitle" value:&stru_28766E5A8 table:0];
  [(STAllowanceItemSetupListController *)self setTitle:v4];

  navigationItem = [(STAllowanceItemSetupListController *)self navigationItem];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__didPressCancelButton_];
  [navigationItem setLeftBarButtonItem:v6];

  specifier = [(STAllowanceItemSetupListController *)self specifier];
  v8 = [specifier objectForKeyedSubscript:@"RightBarButtonTitle"];

  v9 = objc_alloc(MEMORY[0x277D751E0]);
  if (v8)
  {
    v10 = [v9 initWithTitle:v8 style:2 target:self action:sel__didPressDoneButton_];
  }

  else
  {
    v10 = [v9 initWithBarButtonSystemItem:0 target:self action:sel__didPressDoneButton_];
  }

  v11 = v10;
  selectedBundleIdentifiers = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
  if ([selectedBundleIdentifiers count])
  {
    [v11 setEnabled:1];
  }

  else
  {
    selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
    if ([selectedWebDomains count])
    {
      [v11 setEnabled:1];
    }

    else
    {
      selectedCategoryIdentifiers = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
      [v11 setEnabled:{objc_msgSend(selectedCategoryIdentifiers, "count") != 0}];
    }
  }

  [navigationItem setRightBarButtonItem:v11];
  v15 = [MEMORY[0x277D75AC8] storyboardWithName:@"AllowanceItemSearch" bundle:v3];
  instantiateInitialViewController = [v15 instantiateInitialViewController];
  selectedBundleIdentifiers2 = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
  [instantiateInitialViewController setSelectedBundleIdentifiers:selectedBundleIdentifiers2];

  selectedWebDomains2 = [(STAllowanceItemSetupListController *)self selectedWebDomains];
  [instantiateInitialViewController setSelectedWebDomains:selectedWebDomains2];

  [instantiateInitialViewController addObserver:self forKeyPath:@"hasNewSelection" options:3 context:@"KVOContextAllowanceItemSetupListController"];
  [(STAllowanceItemSetupListController *)self setSearchResultsController:instantiateInitialViewController];
  v19 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:instantiateInitialViewController];
  [v19 setSearchResultsUpdater:instantiateInitialViewController];
  [v19 setDelegate:self];
  [v19 setHidesNavigationBarDuringPresentation:0];
  [navigationItem setSearchController:v19];
  table = [(STAllowanceItemSetupListController *)self table];
  [table setEditing:1];
  [table setAllowsMultipleSelectionDuringEditing:1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceItemSetupListController.viewDidLoad", v21, 2u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = STAllowanceItemSetupListController;
  [(STAllowanceItemSetupListController *)&v24 viewWillAppear:appear];
  [(STAllowanceItemSetupListController *)self performSelector:sel__selectCellsForSelectedIdentifiers_ withObject:0 afterDelay:0.0];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(STAllowanceItemSetupListController *)self categorySpecifiers];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v14 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        identifier = [v7 identifier];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __53__STAllowanceItemSetupListController_viewWillAppear___block_invoke;
        aBlock[3] = &unk_279B7CA18;
        aBlock[4] = self;
        v9 = identifier;
        v19 = v9;
        v10 = _Block_copy(aBlock);
        [v7 setProperty:v10 forKey:0x287676768];

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __53__STAllowanceItemSetupListController_viewWillAppear___block_invoke_2;
        v16[3] = &unk_279B7CA40;
        v16[4] = self;
        v17 = v9;
        v11 = v9;
        v12 = _Block_copy(v16);
        [v7 setProperty:v12 forKey:0x287676788];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceItemSetupListController.viewWillAppear", buf, 2u);
  }
}

void __53__STAllowanceItemSetupListController_viewWillAppear___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) view];
  [v6 endEditing:0];

  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    v7 = [*(a1 + 32) applicationAndWebDomainSpecifiersByCategoryIdentifier];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    [*(a1 + 32) insertContiguousSpecifiers:v8 afterSpecifierID:*(a1 + 40) animated:1];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = *v27;
    v23 = *MEMORY[0x277D3FF38];
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [*(a1 + 32) indexPathForSpecifier:{v13, v23}];
        v15 = [v13 identifier];
        v16 = *(a1 + 32);
        if (a3)
        {
          v17 = [v16 table];
          [v17 selectRowAtIndexPath:v14 animated:0 scrollPosition:0];

          [v13 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v23];
          [*(a1 + 32) reloadSpecifier:v13 animated:0];
          goto LABEL_14;
        }

        v18 = [v16 selectedBundleIdentifiers];
        if ([v18 containsObject:v15])
        {
        }

        else
        {
          v19 = [*(a1 + 32) selectedWebDomains];
          v20 = [v19 containsObject:v15];

          if (!v20)
          {
            goto LABEL_14;
          }
        }

        v21 = [*(a1 + 32) table];
        [v21 selectRowAtIndexPath:v14 animated:0 scrollPosition:0];

LABEL_14:
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v10)
      {
LABEL_16:

        return;
      }
    }
  }

  v22 = [*(a1 + 32) applicationAndWebDomainSpecifiersByCategoryIdentifier];
  obja = [v22 objectForKeyedSubscript:*(a1 + 40)];

  [*(a1 + 32) removeContiguousSpecifiers:obja animated:1];
}

void __53__STAllowanceItemSetupListController_viewWillAppear___block_invoke_2(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) view];
  [v4 endEditing:0];

  v5 = [*(a1 + 32) table];
  v6 = [*(a1 + 32) specifierForID:*(a1 + 40)];
  v7 = [*(a1 + 32) indexPathForSpecifier:v6];
  v8 = [*(a1 + 32) selectedCategoryIdentifiers];
  v9 = [*(a1 + 40) isEqualToString:*MEMORY[0x277D4BCD8]];
  v10 = v9;
  v33 = v5;
  v29 = v7;
  v30 = v6;
  v28 = v8;
  if (a2)
  {
    if ((v9 & 1) == 0)
    {
      [v8 addObject:*(a1 + 40)];
      [v5 selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
    }

    v11 = MEMORY[0x277CBEC28];
  }

  else
  {
    [v8 removeObject:*(a1 + 40)];
    [v5 deselectRowAtIndexPath:v7 animated:0];
    v11 = MEMORY[0x277CBEC38];
  }

  v31 = [*(a1 + 32) selectedBundleIdentifiers];
  v32 = [*(a1 + 32) selectedWebDomains];
  v12 = [*(a1 + 32) applicationAndWebDomainSpecifiersByCategoryIdentifier];
  v13 = [v12 objectForKeyedSubscript:*(a1 + 40)];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    v17 = *MEMORY[0x277D3FF38];
    if (v10)
    {
      v18 = v32;
    }

    else
    {
      v18 = v31;
    }

    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        if (a2)
        {
          v21 = [*(*(&v35 + 1) + 8 * i) identifier];
          [v18 removeObject:v21];
        }

        [v20 setObject:v11 forKeyedSubscript:v17];
        if ([v20 cellType] == 3 && objc_msgSend(*(a1 + 32), "containsSpecifier:", v20))
        {
          v22 = [*(a1 + 32) indexPathForSpecifier:v20];
          if (a2)
          {
            [v33 selectRowAtIndexPath:v22 animated:0 scrollPosition:0];
          }

          else
          {
            [v33 deselectRowAtIndexPath:v22 animated:0];
          }

          [*(a1 + 32) reloadSpecifier:v20 animated:1];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  if ([v31 count])
  {
    v23 = 1;
    v24 = v33;
    v25 = v28;
  }

  else
  {
    v25 = v28;
    if ([v32 count])
    {
      v23 = 1;
    }

    else
    {
      v23 = [v28 count] != 0;
    }

    v24 = v33;
  }

  v26 = [*(a1 + 32) navigationItem];
  v27 = [v26 rightBarButtonItem];
  [v27 setEnabled:v23];

  if (a2 && ([*(a1 + 32) allAppsAndCategoriesSelected] & 1) == 0 && ((objc_msgSend(*(a1 + 40), "isEqualToString:", *MEMORY[0x277CF9630]) & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqualToString:", *MEMORY[0x277CF9600]) & 1) != 0 || objc_msgSend(*(a1 + 40), "isEqualToString:", *MEMORY[0x277CF9628])))
  {
    [*(a1 + 32) _showNewCategoriesCompatibilityAlertIfNeeded];
  }
}

- (void)_showNewCategoriesCompatibilityAlertIfNeeded
{
  specifier = [(STAllowanceItemSetupListController *)self specifier];
  v4 = [specifier objectForKeyedSubscript:0x287675C48];

  viewModel = [v4 viewModel];
  v6 = [viewModel me];
  if ([viewModel shouldShowCompatibilityAlerts])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [standardUserDefaults objectForKey:@"HasShownNewCategoriesCompatibilityAlertByDSID"];

    dsid = [v6 dsid];
    stringValue = [dsid stringValue];
    v11 = [v8 objectForKeyedSubscript:stringValue];
    bOOLValue = [v11 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v13 = +[STScreenTimeSettingsUIBundle bundle];
      if ([v6 isRemoteUser])
      {
        givenName = [v6 givenName];
        if (givenName)
        {
          v24 = [v13 localizedStringForKey:@"UpdateChildDevicesAlertTitleFormat" value:&stru_28766E5A8 table:0];
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v24 locale:currentLocale, givenName];
          v17 = [v13 localizedStringForKey:@"AppLimitChildCompatibilityAlertMessageFormat" value:&stru_28766E5A8 table:0];
          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v17 locale:currentLocale, givenName];

LABEL_9:
          v21 = [MEMORY[0x277D75110] alertControllerWithTitle:v16 message:v18 preferredStyle:1];
          v22 = [v13 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
          v23 = [MEMORY[0x277D750F8] actionWithTitle:v22 style:0 handler:0];
          [v21 addAction:v23];
          [v21 setPreferredAction:v23];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __82__STAllowanceItemSetupListController__showNewCategoriesCompatibilityAlertIfNeeded__block_invoke;
          v25[3] = &unk_279B7C998;
          v26 = v6;
          [(STAllowanceItemSetupListController *)self presentViewController:v21 animated:1 completion:v25];

          goto LABEL_10;
        }

        v16 = [v13 localizedStringForKey:@"UpdateChildDevicesAlertTitle" value:&stru_28766E5A8 table:0];
        v20 = @"AppLimitChildCompatibilityAlertMessage";
        v19 = v13;
      }

      else
      {
        v16 = [v13 localizedStringForKey:@"UpdateOtherDevicesAlertTitle" value:&stru_28766E5A8 table:0];
        givenName = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AppLimitCompatibilityAlertMessage"];
        v19 = v13;
        v20 = givenName;
      }

      v18 = [v19 localizedStringForKey:v20 value:&stru_28766E5A8 table:0];
      goto LABEL_9;
    }
  }

LABEL_10:
}

void __82__STAllowanceItemSetupListController__showNewCategoriesCompatibilityAlertIfNeeded__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"HasShownNewCategoriesCompatibilityAlertByDSID"];
  v4 = [*(a1 + 32) dsid];
  v5 = [v4 stringValue];

  if (v3)
  {
    v6 = [v3 mutableCopy];
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  }

  else
  {
    v7 = v5;
    v8[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  [v2 setObject:v6 forKey:@"HasShownNewCategoriesCompatibilityAlertByDSID"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = STAllowanceItemSetupListController;
  [(STAllowanceItemSetupListController *)&v6 viewWillDisappear:disappear];
  view = [(STAllowanceItemSetupListController *)self view];
  [view endEditing:0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceItemSetupListController.viewWillDisappear", v5, 2u);
  }
}

- (void)willResignActive
{
  v4.receiver = self;
  v4.super_class = STAllowanceItemSetupListController;
  [(STAllowanceItemSetupListController *)&v4 willResignActive];
  view = [(STAllowanceItemSetupListController *)self view];
  [view endEditing:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == @"KVOContextAllowanceItemSetupListController")
  {
    pathCopy = path;
    [(STAllowanceItemSetupListController *)self searchResultsController];

    v13 = [pathCopy isEqualToString:@"hasNewSelection"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
      {

        v14 = 0;
      }

      v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v16 == null2)
      {

        v16 = 0;
      }

      -[STAllowanceItemSetupListController _hasSelectionDidChangeFrom:to:](self, "_hasSelectionDidChangeFrom:to:", [v14 BOOLValue], objc_msgSend(v16, "BOOLValue"));
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = STAllowanceItemSetupListController;
    pathCopy2 = path;
    [(STAllowanceItemSetupListController *)&v18 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)_hasSelectionDidChangeFrom:(BOOL)from to:(BOOL)to
{
  if (from != to)
  {
    toCopy = to;
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = v7;
    if (toCopy)
    {
      v9 = @"AllowanceAddBarButtonItemTitle";
    }

    else
    {
      v9 = @"AllowanceCancelBarButtonItemTitle";
    }

    v17 = [v7 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];

    navigationItem = [(STAllowanceItemSetupListController *)self navigationItem];
    searchController = [navigationItem searchController];
    searchBar = [searchController searchBar];
    cancelButton = [searchBar cancelButton];
    [cancelButton setTitle:v17 forState:0];

    if (toCopy)
    {
      v14 = 1;
    }

    else
    {
      navigationItem = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
      v14 = [navigationItem count] != 0;
    }

    navigationItem2 = [(STAllowanceItemSetupListController *)self navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem setEnabled:v14];

    if (!toCopy)
    {
    }
  }
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = STAllowanceItemSetupListController;
  [(STAllowanceItemSetupListController *)&v16 setSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:@"InitialSelectedBundleIdentifiers"];
  if (v5)
  {
    selectedBundleIdentifiers = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
    [selectedBundleIdentifiers addObjectsFromArray:v5];
  }

  v7 = [specifierCopy objectForKeyedSubscript:@"InitialSelectedWebDomains"];
  if (v7)
  {
    selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
    [selectedWebDomains addObjectsFromArray:v7];
  }

  v9 = [specifierCopy objectForKeyedSubscript:@"InitialSelectedCategoryIdentifiers"];
  if (v9)
  {
    selectedCategoryIdentifiers = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
    [selectedCategoryIdentifiers addObjectsFromArray:v9];
    v11 = objc_alloc(MEMORY[0x277CBEB58]);
    mEMORY[0x277CF9650] = [MEMORY[0x277CF9650] sharedCategories];
    availableCategoryIDs = [mEMORY[0x277CF9650] availableCategoryIDs];
    v14 = [v11 initWithArray:availableCategoryIDs];

    [v14 removeObject:*MEMORY[0x277CF9620]];
    [v14 removeObject:*MEMORY[0x277CF9610]];
    [v14 removeObject:*MEMORY[0x277CF9618]];
    v15 = [selectedCategoryIdentifiers set];
    -[STAllowanceItemSetupListController setAllAppsAndCategoriesSelected:](self, "setAllAppsAndCategoriesSelected:", [v14 isEqualToSet:v15]);
  }
}

- (id)specifiers
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v76 = *MEMORY[0x277D3FC48];
    applicationAndWebDomainSpecifiersByCategoryIdentifier = [(STAllowanceItemSetupListController *)self applicationAndWebDomainSpecifiersByCategoryIdentifier];
    [applicationAndWebDomainSpecifiersByCategoryIdentifier removeAllObjects];
    v4 = objc_opt_new();
    specifier = [(STAllowanceItemSetupListController *)self specifier];
    v5 = [specifier objectForKeyedSubscript:0x287675C48];
    usageDetailsCoordinator = [v5 usageDetailsCoordinator];
    viewModel = [usageDetailsCoordinator viewModel];
    selectedWeekUsageReport = [viewModel selectedWeekUsageReport];

    [selectedWeekUsageReport topUsageItemsWithMaxCount:100 type:2 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = v100 = 0u;
    v9 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v98;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v98 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v97 + 1) + 8 * i);
          budgetItemIdentifier = [v13 budgetItemIdentifier];
          [v4 addObject:budgetItemIdentifier];
          categoryIdentifier = [v13 categoryIdentifier];
          if (categoryIdentifier)
          {
            [(STAllowanceItemSetupListController *)self _updateApplicationSpecifiersWithBundleIdentifier:budgetItemIdentifier categoryIdentifier:categoryIdentifier shouldInsertSpecifier:0];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
      }

      while (v10);
    }

    v74 = v5;
    viewModel2 = [v5 viewModel];
    installedBundleIDsByCategoryIdentifier = [viewModel2 installedBundleIDsByCategoryIdentifier];
    v18 = [installedBundleIDsByCategoryIdentifier mutableCopy];

    [v18 removeObjectForKey:*MEMORY[0x277CF9618]];
    [v18 removeObjectForKey:*MEMORY[0x277CF9610]];
    [v18 removeObjectForKey:*MEMORY[0x277CF9620]];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __48__STAllowanceItemSetupListController_specifiers__block_invoke;
    v94[3] = &unk_279B7CA68;
    v19 = v4;
    v95 = v19;
    selfCopy = self;
    v72 = v18;
    [v18 enumerateKeysAndObjectsUsingBlock:v94];
    selectedBundleIdentifiers = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __48__STAllowanceItemSetupListController_specifiers__block_invoke_2;
    v92[3] = &unk_279B7CA90;
    v71 = v19;
    v93 = v71;
    v21 = [selectedBundleIdentifiers indexesOfObjectsPassingTest:v92];
    if ([v21 count])
    {
      v22 = [selectedBundleIdentifiers objectsAtIndexes:v21];
      mEMORY[0x277CF9650] = [MEMORY[0x277CF9650] sharedCategories];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __48__STAllowanceItemSetupListController_specifiers__block_invoke_3;
      v91[3] = &unk_279B7CB08;
      v91[4] = self;
      [mEMORY[0x277CF9650] categoriesForBundleIDs:v22 completionHandler:v91];
    }

    v69 = v21;
    v70 = selectedBundleIdentifiers;
    v73 = selectedWeekUsageReport;
    v24 = [selectedWeekUsageReport topUsageItemsWithMaxCount:100 type:4 includeAggregateItem:0 nonAggregateItems:0 darkColors:0];
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v24, "count")}];
    v26 = objc_opt_new();
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v27 = v24;
    v28 = [v27 countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v88;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v88 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v87 + 1) + 8 * j);
          budgetItemIdentifier2 = [v32 budgetItemIdentifier];
          [v26 addObject:budgetItemIdentifier2];
          v34 = [(STAllowanceItemSetupListController *)self _webDomainSpecifierForDomain:budgetItemIdentifier2 usageItem:v32];
          [v25 addObject:v34];
        }

        v29 = [v27 countByEnumeratingWithState:&v87 objects:v103 count:16];
      }

      while (v29);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
    v36 = [selectedWebDomains countByEnumeratingWithState:&v83 objects:v102 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v84;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v84 != v38)
          {
            objc_enumerationMutation(selectedWebDomains);
          }

          v40 = *(*(&v83 + 1) + 8 * k);
          if (([v26 containsObject:v40] & 1) == 0)
          {
            v41 = [(STAllowanceItemSetupListController *)self _webDomainSpecifierForDomain:v40 usageItem:0];
            [v25 addObject:v41];
          }
        }

        v37 = [selectedWebDomains countByEnumeratingWithState:&v83 objects:v102 count:16];
      }

      while (v37);
    }

    v68 = v27;

    v42 = +[STScreenTimeSettingsUIBundle bundle];
    v66 = [v42 localizedStringForKey:@"AddWebsiteButtonTitle" value:&stru_28766E5A8 table:0];
    v43 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [v43 setButtonAction:sel__addWebsiteButtonPressed_];
    v44 = *MEMORY[0x277D4BCD8];
    [v43 setObject:*MEMORY[0x277D4BCD8] forKeyedSubscript:0x28766E868];
    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    v46 = [mEMORY[0x277D4BD98] blankSpaceImageWithSize:{29.0, 29.0}];

    v64 = v46;
    [v43 setObject:v46 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
    v65 = v43;
    [v25 addObject:v43];
    v63 = v44;
    [applicationAndWebDomainSpecifiersByCategoryIdentifier setObject:v25 forKeyedSubscript:v44];
    v62 = [v42 localizedStringForKey:@"AppsCategoriesWebsitesGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v47 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:?];
    v67 = v42;
    v60 = [v42 localizedStringForKey:@"AppsCategoriesWebsitesGroupFooter" value:&stru_28766E5A8 table:0];
    [v47 setObject:? forKeyedSubscript:?];
    v59 = [(STAllowanceItemSetupListController *)self _categorySpecifierForIdentifier:*MEMORY[0x277D4BCC0]];
    v61 = v47;
    v48 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v47, v59, 0}];
    v49 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v50 = STSortedCategoriesForUsageLimits();
    v51 = [v50 countByEnumeratingWithState:&v79 objects:v101 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v80;
      do
      {
        for (m = 0; m != v52; ++m)
        {
          if (*v80 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = [(STAllowanceItemSetupListController *)self _categorySpecifierForIdentifier:*(*(&v79 + 1) + 8 * m)];
          [v48 addObject:v55];
          [v49 addObject:v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v79 objects:v101 count:16];
      }

      while (v52);
    }

    v56 = [(STAllowanceItemSetupListController *)self _categorySpecifierForIdentifier:v63];
    [v48 addObject:v56];
    [v49 addObject:v56];
    [(STAllowanceItemSetupListController *)self setCategorySpecifiers:v49];
    v57 = *(&self->super.super.super.super.super.isa + v76);
    *(&self->super.super.super.super.super.isa + v76) = v48;

    v3 = *(&self->super.super.super.super.super.isa + v76);
  }

  return v3;
}

void __48__STAllowanceItemSetupListController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:v11] & 1) == 0)
        {
          [*(a1 + 40) _updateApplicationSpecifiersWithBundleIdentifier:v11 categoryIdentifier:v5 shouldInsertSpecifier:0];
          [*(a1 + 32) addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void __48__STAllowanceItemSetupListController_specifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CCABD8] mainQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__STAllowanceItemSetupListController_specifiers__block_invoke_4;
    v10[3] = &unk_279B7CAE0;
    v8 = v5;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    [v7 addOperationWithBlock:v10];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__STAllowanceItemSetupListController_specifiers__block_invoke_3_cold_1();
  }
}

uint64_t __48__STAllowanceItemSetupListController_specifiers__block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__STAllowanceItemSetupListController_specifiers__block_invoke_5;
  v3[3] = &unk_279B7CAB8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __48__STAllowanceItemSetupListController_specifiers__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 identifier];
  [v4 _updateApplicationSpecifiersWithBundleIdentifier:v5 categoryIdentifier:v6 shouldInsertSpecifier:1];
}

- (void)_updateApplicationSpecifiersWithBundleIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier shouldInsertSpecifier:(BOOL)specifier
{
  specifierCopy = specifier;
  categoryIdentifierCopy = categoryIdentifier;
  v8 = [(STAllowanceItemSetupListController *)self _applicationSpecifierForBundleIdentifier:identifier categoryIdentifier:categoryIdentifierCopy];
  applicationAndWebDomainSpecifiersByCategoryIdentifier = [(STAllowanceItemSetupListController *)self applicationAndWebDomainSpecifiersByCategoryIdentifier];
  v10 = [applicationAndWebDomainSpecifiersByCategoryIdentifier objectForKeyedSubscript:categoryIdentifierCopy];
  if (v10)
  {
    v11 = v10;
    [v10 addObject:v8];
    if (!specifierCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v8, 0}];
    [applicationAndWebDomainSpecifiersByCategoryIdentifier setObject:v11 forKeyedSubscript:categoryIdentifierCopy];
    if (!specifierCopy)
    {
      goto LABEL_13;
    }
  }

  v12 = [v11 count];
  if (v12 == 1)
  {
    v13 = [(STAllowanceItemSetupListController *)self specifierForID:categoryIdentifierCopy];
    v14 = [v13 objectForKeyedSubscript:0x2876767C8];
    if ([v14 integerValue] == 1)
    {
      [(STAllowanceItemSetupListController *)self insertSpecifier:v8 afterSpecifier:v13 animated:1];
    }

    [(STAllowanceItemSetupListController *)self reloadSpecifier:v13 animated:1];
  }

  else
  {
    v13 = [v11 objectAtIndexedSubscript:v12 - 2];
    if ([(STAllowanceItemSetupListController *)self containsSpecifier:v13])
    {
      [(STAllowanceItemSetupListController *)self insertSpecifier:v8 afterSpecifier:v13 animated:1];
    }

    [(STAllowanceItemSetupListController *)self reloadSpecifierID:categoryIdentifierCopy animated:1];
  }

LABEL_13:
}

- (id)_applicationSpecifierForBundleIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier
{
  identifierCopy = identifier;
  v7 = MEMORY[0x277D4B8C0];
  categoryIdentifierCopy = categoryIdentifier;
  sharedCache = [v7 sharedCache];
  v10 = [sharedCache appInfoForBundleIdentifier:identifierCopy];

  displayName = [v10 displayName];
  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v12 setIdentifier:identifierCopy];
  [v12 setObject:categoryIdentifierCopy forKeyedSubscript:0x28766E868];

  if ([v10 source] == 2 && (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277D4BBC8]) & 1) == 0)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    v13 = MEMORY[0x277D40008];
  }

  else
  {
    [v12 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v13 = &STAppBundleIDKey;
  }

  [v12 setObject:identifierCopy forKeyedSubscript:*v13];

  return v12;
}

- (id)_categorySpecifierForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  if ([identifierCopy isEqualToString:*MEMORY[0x277D4BCC0]])
  {
    v6 = [v5 localizedStringForKey:@"AllAppsAndCategoriesSpecifierName" value:&stru_28766E5A8 table:0];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:3 edit:0];
  }

  else
  {
    if ([identifierCopy isEqualToString:*MEMORY[0x277D4BCD8]])
    {
      v6 = [v5 localizedStringForKey:@"MostUsedWebsites" value:&stru_28766E5A8 table:0];
      v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:sel__categoryDetailText_ detail:0 cell:3 edit:0];
      [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
      v8 = 0x2876767A8;
      v9 = MEMORY[0x277CBEC38];
    }

    else
    {
      v6 = STCategoryNameWithIdentifier();
      v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:sel__categoryDetailText_ detail:0 cell:3 edit:0];
      v9 = objc_opt_class();
      v8 = *MEMORY[0x277D3FE58];
    }

    [v7 setObject:v9 forKeyedSubscript:v8];
    if ([(STAllowanceItemSetupListController *)self allAppsAndCategoriesSelected])
    {
      [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }
  }

  [v7 setIdentifier:identifierCopy];
  mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
  v11 = [mEMORY[0x277D4BD98] imageForCategoryIdentifier:identifierCopy];
  [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

  return v7;
}

- (id)_webDomainSpecifierForDomain:(id)domain usageItem:(id)item
{
  domainCopy = domain;
  itemCopy = item;
  v8 = MEMORY[0x277D3FAD8];
  _lp_userVisibleHost = [domainCopy _lp_userVisibleHost];
  v10 = [v8 preferenceSpecifierNamed:_lp_userVisibleHost target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v10 setIdentifier:domainCopy];
  [v10 setObject:*MEMORY[0x277D4BCD8] forKeyedSubscript:0x28766E868];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

  v13 = domainCopy;
  if ([v13 length])
  {
    v28 = userInterfaceStyle;
    v14 = objc_opt_new();
    [v14 setScheme:@"https"];
    [v14 setHost:v13];
    v15 = [v14 URL];
    _lp_highLevelDomain = [v15 _lp_highLevelDomain];
    host = [v14 host];
    v18 = [v14 URL];
    v19 = _lp_highLevelDomain;
    v20 = host;
    v21 = v18;
    if ([v19 length])
    {
      v22 = [v19 substringToIndex:1];
      uppercaseString = [v22 uppercaseString];
    }

    else
    {
      v24 = [v20 substringToIndex:1];
      uppercaseString = [v24 uppercaseString];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STAllowanceItemSetupListController _webDomainSpecifierForDomain:usageItem:];
      }
    }

    userInterfaceStyle = v28;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [STAllowanceItemSetupListController _webDomainSpecifierForDomain:usageItem:];
    }

    uppercaseString = 0;
  }

  if (itemCopy)
  {
    image = [itemCopy image];
    [v10 setObject:image forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  else
  {
    image = [MEMORY[0x277D4BD98] sharedCache];
    v26 = [image monogramImageForInitial:uppercaseString useDarkColors:userInterfaceStyle == 2];
    [v10 setObject:v26 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  return v10;
}

- (id)_categoryDetailText:(id)text
{
  v27 = *MEMORY[0x277D85DE8];
  identifier = [text identifier];
  if (-[STAllowanceItemSetupListController allAppsAndCategoriesSelected](self, "allAppsAndCategoriesSelected") || (-[STAllowanceItemSetupListController selectedCategoryIdentifiers](self, "selectedCategoryIdentifiers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:identifier], v5, v6))
  {
    selectedWebDomains = +[STScreenTimeSettingsUIBundle bundle];
    v8 = [selectedWebDomains localizedStringForKey:@"AllItemsSelectedDetailText" value:&stru_28766E5A8 table:0];
  }

  else
  {
    if ([identifier isEqualToString:*MEMORY[0x277D4BCD8]])
    {
      selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
      v9 = @"NumberOfWebsitesFormat";
    }

    else
    {
      selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
      v9 = @"NumberOfAppsFormat";
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    applicationAndWebDomainSpecifiersByCategoryIdentifier = [(STAllowanceItemSetupListController *)self applicationAndWebDomainSpecifiersByCategoryIdentifier];
    v11 = [applicationAndWebDomainSpecifiersByCategoryIdentifier objectForKeyedSubscript:identifier];

    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v11);
          }

          identifier2 = [*(*(&v22 + 1) + 8 * i) identifier];
          v18 = [selectedWebDomains containsObject:identifier2];

          v14 += v18;
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v19 = +[STScreenTimeSettingsUIBundle bundle];
    v20 = [v19 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];

    v8 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v20 validFormatSpecifiers:@"%lu" error:0, v14];
  }

  return v8;
}

- (void)_addWebsiteButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v4 = [(STAllowanceItemSetupListController *)self specifierForID:@"WebDomainTextField"];
  if (!v4)
  {
    v4 = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:0 target:self set:sel__addCustomWebDomain_specifier_ get:0 detail:0 cell:8 edit:0];
    [v4 setIdentifier:@"WebDomainTextField"];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF20]];
    v5 = *MEMORY[0x277D4BCD8];
    [v4 setObject:*MEMORY[0x277D4BCD8] forKeyedSubscript:0x28766E868];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"AddWebsitePlaceholderText" value:&stru_28766E5A8 table:0];

    [v4 setPlaceholder:v7];
    applicationAndWebDomainSpecifiersByCategoryIdentifier = [(STAllowanceItemSetupListController *)self applicationAndWebDomainSpecifiersByCategoryIdentifier];
    v9 = [applicationAndWebDomainSpecifiersByCategoryIdentifier objectForKeyedSubscript:v5];

    [v9 insertObject:v4 atIndex:{objc_msgSend(v9, "indexOfObject:", pressedCopy)}];
    [(STAllowanceItemSetupListController *)self insertSpecifier:v4 atIndex:[(STAllowanceItemSetupListController *)self indexOfSpecifier:pressedCopy] animated:1];
  }

  v10 = [(STAllowanceItemSetupListController *)self indexPathForSpecifier:v4];
  table = [(STAllowanceItemSetupListController *)self table];
  v12 = [table cellForRowAtIndexPath:v10];

  [v12 becomeFirstResponder];
}

- (void)_addCustomWebDomain:(id)domain specifier:(id)specifier
{
  v47[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  domainCopy = domain;
  applicationAndWebDomainSpecifiersByCategoryIdentifier = [(STAllowanceItemSetupListController *)self applicationAndWebDomainSpecifiersByCategoryIdentifier];
  v9 = *MEMORY[0x277D4BCD8];
  v10 = [applicationAndWebDomainSpecifiersByCategoryIdentifier objectForKeyedSubscript:*MEMORY[0x277D4BCD8]];

  _sf_bestURLForUserTypedString = [domainCopy _sf_bestURLForUserTypedString];

  host = [_sf_bestURLForUserTypedString host];

  if ([host length])
  {
    v13 = objc_opt_new();
    v14 = [v13 normalizeDomainName:host];

    v15 = [(STAllowanceItemSetupListController *)self specifierForID:v14];
    if (v15)
    {
      v16 = v15;
      [(STAllowanceItemSetupListController *)self removeSpecifier:v15 animated:1];
      [v10 removeObject:v16];
    }

    else
    {
      _lp_userVisibleHost = [v14 _lp_userVisibleHost];
      v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:_lp_userVisibleHost target:self set:0 get:0 detail:0 cell:3 edit:0];
      [v16 setIdentifier:v14];
      [v16 setObject:v9 forKeyedSubscript:0x28766E868];
      currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
      userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

      mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
      v20 = _lp_userVisibleHost;
      v45 = v20;
      if ([v20 length])
      {
        v42 = mEMORY[0x277D4BD98];
        v21 = objc_opt_new();
        [v21 setScheme:@"https"];
        [v21 setHost:v20];
        v41 = [v21 URL];
        _lp_highLevelDomain = [v41 _lp_highLevelDomain];
        host2 = [v21 host];
        v24 = [v21 URL];
        v25 = _lp_highLevelDomain;
        v26 = host2;
        v43 = v24;
        v40 = v9;
        if ([v25 length])
        {
          v27 = [v25 substringToIndex:1];
          uppercaseString = [v27 uppercaseString];
        }

        else
        {
          v29 = [v26 substringToIndex:1];
          uppercaseString2 = [v29 uppercaseString];

          uppercaseString = uppercaseString2;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [STAllowanceItemSetupListController _webDomainSpecifierForDomain:usageItem:];
          }
        }

        mEMORY[0x277D4BD98] = v42;

        v28 = uppercaseString;
        v9 = v40;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [STAllowanceItemSetupListController _webDomainSpecifierForDomain:usageItem:];
        }

        v28 = 0;
      }

      v31 = [mEMORY[0x277D4BD98] monogramImageForInitial:v28 useDarkColors:userInterfaceStyle == 2];
      [v16 setObject:v31 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
    }

    [v10 replaceObjectAtIndex:objc_msgSend(v10 withObject:{"indexOfObject:", specifierCopy), v16}];
    v47[0] = specifierCopy;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v46 = v16;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    [(STAllowanceItemSetupListController *)self replaceContiguousSpecifiers:v32 withSpecifiers:v33 animated:1];

    v34 = [(STAllowanceItemSetupListController *)self indexPathForSpecifier:v16];
    table = [(STAllowanceItemSetupListController *)self table];
    [table selectRowAtIndexPath:v34 animated:0 scrollPosition:0];

    selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
    [selectedWebDomains addObject:v14];

    navigationItem = [(STAllowanceItemSetupListController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];

    [(STAllowanceItemSetupListController *)self reloadSpecifierID:v9];
  }

  else
  {
    [v10 removeObject:specifierCopy];
    [(STAllowanceItemSetupListController *)self removeSpecifier:specifierCopy animated:1];
    v14 = host;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v22.receiver = self;
  v22.super_class = STAllowanceItemSetupListController;
  pathCopy = path;
  v7 = [(STAllowanceItemSetupListController *)&v22 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(STAllowanceItemSetupListController *)self specifierAtIndexPath:pathCopy, v22.receiver, v22.super_class];

  v9 = [v8 objectForKeyedSubscript:0x28766E868];

  if (v9)
  {
    v10 = objc_opt_new();
    tertiarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
    [v10 setBackgroundColor:tertiarySystemGroupedBackgroundColor];

    [v10 setAlpha:0.3];
    [v7 setBackgroundView:v10];
  }

  identifier = [v8 identifier];
  if ([identifier isEqualToString:*MEMORY[0x277D4BCD8]])
  {
  }

  else
  {
    cellType = [v8 cellType];

    if (cellType != 8)
    {
      goto LABEL_7;
    }
  }

  [v7 _setIgnoresMultipleSelectionDuringEditing:1];
LABEL_7:
  if ([v8 cellType] != 13)
  {
    v14 = objc_opt_new();
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v14 setBackgroundColor:clearColor];

    [v7 setSelectedBackgroundView:v14];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v7;
    [v16 setControllerDelegate:self];
    [v16 setValueChangedTarget:self action:sel__addCustomWebDomain_specifier_ specifier:v8];
    editableTextField = [v16 editableTextField];
    [editableTextField setAutocapitalizationType:0];
    [editableTextField setAutocorrectionType:1];
    [editableTextField setKeyboardType:3];
    [editableTextField setReturnKeyType:9];
    [editableTextField setClearButtonMode:1];
    [editableTextField setAdjustsFontSizeToFitWidth:1];
    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    v19 = [mEMORY[0x277D4BD98] blankSpaceImageWithSize:{29.0, 29.0}];

    iconImageView = [v16 iconImageView];

    [iconImageView setImage:v19];
  }

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if (([cellCopy isUserInteractionEnabled] & 1) == 0 && (objc_msgSend(cellCopy, "isSelected") & 1) == 0)
  {
    [cellCopy setUserInteractionEnabled:1];
    table = [(STAllowanceItemSetupListController *)self table];
    [table selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];

    [cellCopy setUserInteractionEnabled:0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v35 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  view = [(STAllowanceItemSetupListController *)self view];
  [view endEditing:0];

  selectedBundleIdentifiers = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
  selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
  selectedCategoryIdentifiers = [(STAllowanceItemSetupListController *)self specifierAtIndexPath:pathCopy];
  identifier = [selectedCategoryIdentifiers identifier];
  v28 = selectedCategoryIdentifiers;
  if ([identifier isEqualToString:*MEMORY[0x277D4BCC0]])
  {
    v25 = selectedWebDomains;
    v26 = pathCopy;
    v27 = viewCopy;
    [(STAllowanceItemSetupListController *)self setAllAppsAndCategoriesSelected:1];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    categorySpecifiers = [(STAllowanceItemSetupListController *)self categorySpecifiers];
    v13 = [categorySpecifiers countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      selectedCategoryIdentifiers = *MEMORY[0x277D3FF38];
      v16 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(categorySpecifiers);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:0x287676788];
          v19[2](v19, 1);
          [v18 setObject:v16 forKeyedSubscript:selectedCategoryIdentifiers];
          [(STAllowanceItemSetupListController *)self reloadSpecifier:v18 animated:0];
        }

        v14 = [categorySpecifiers countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }

    pathCopy = v26;
    viewCopy = v27;
    selectedWebDomains = v25;
  }

  else if ([selectedCategoryIdentifiers cellType] == 13)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    [selectedCategoryIdentifiers performButtonAction];
  }

  else if (identifier && [selectedCategoryIdentifiers cellType] != 8)
  {
    selectedCategoryIdentifiers = [selectedCategoryIdentifiers objectForKeyedSubscript:0x28766E868];
    if ([selectedCategoryIdentifiers isEqualToString:*MEMORY[0x277D4BCD8]])
    {
      v20 = selectedWebDomains;
    }

    else
    {
      v20 = selectedBundleIdentifiers;
    }

    [v20 addObject:identifier];
    [(STAllowanceItemSetupListController *)self reloadSpecifierID:selectedCategoryIdentifiers animated:0];
  }

  if ([selectedBundleIdentifiers count] || objc_msgSend(selectedWebDomains, "count"))
  {
    v21 = 0;
    v22 = 1;
  }

  else
  {
    selectedCategoryIdentifiers = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
    v22 = [selectedCategoryIdentifiers count] != 0;
    v21 = 1;
  }

  navigationItem = [(STAllowanceItemSetupListController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v22];

  if (v21)
  {
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v33 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  selectedBundleIdentifiers = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
  selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
  v9 = [(STAllowanceItemSetupListController *)self specifierAtIndexPath:pathCopy];
  identifier = [v9 identifier];
  v27 = identifier;
  if ([identifier isEqualToString:*MEMORY[0x277D4BCC0]])
  {
    v24 = v9;
    v25 = selectedWebDomains;
    v26 = pathCopy;
    [(STAllowanceItemSetupListController *)self setAllAppsAndCategoriesSelected:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    categorySpecifiers = [(STAllowanceItemSetupListController *)self categorySpecifiers];
    v12 = [categorySpecifiers countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      v15 = *MEMORY[0x277D3FF38];
      selectedCategoryIdentifiers = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(categorySpecifiers);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:0x287676788];
          v18[2](v18, 0);
          [v17 setObject:selectedCategoryIdentifiers forKeyedSubscript:v15];
          [(STAllowanceItemSetupListController *)self reloadSpecifier:v17 animated:0];
        }

        v13 = [categorySpecifiers countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    pathCopy = v26;
    v9 = v24;
    selectedWebDomains = v25;
  }

  else
  {
    selectedCategoryIdentifiers = [v9 objectForKeyedSubscript:0x28766E868];
    if ([selectedCategoryIdentifiers isEqualToString:*MEMORY[0x277D4BCD8]])
    {
      v19 = selectedWebDomains;
    }

    else
    {
      v19 = selectedBundleIdentifiers;
    }

    [v19 removeObject:identifier];
    [(STAllowanceItemSetupListController *)self reloadSpecifierID:selectedCategoryIdentifiers animated:0];
  }

  if ([selectedBundleIdentifiers count] || objc_msgSend(selectedWebDomains, "count"))
  {
    v20 = 0;
    v21 = 1;
  }

  else
  {
    selectedCategoryIdentifiers = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
    v21 = [selectedCategoryIdentifiers count] != 0;
    v20 = 1;
  }

  navigationItem = [(STAllowanceItemSetupListController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v21];

  if (v20)
  {
  }
}

- (void)_didPressCancelButton:(id)button
{
  [(STAllowanceItemSetupListController *)self dismissViewControllerAnimated:1 completion:0];
  [(STAllowanceItemSetupListController *)self _cleanUpRetainCycles];
  specifier = [(STAllowanceItemSetupListController *)self specifier];
  [specifier removePropertyForKey:@"CompletionHandler"];
}

- (void)_didPressDoneButton:(id)button
{
  specifier = [(STAllowanceItemSetupListController *)self specifier];
  v11 = [specifier objectForKeyedSubscript:@"CompletionHandler"];

  if (v11)
  {
    selectedBundleIdentifiers = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
    array = [selectedBundleIdentifiers array];
    selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
    array2 = [selectedWebDomains array];
    selectedCategoryIdentifiers = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
    array3 = [selectedCategoryIdentifiers array];
    v11[2](v11, self, array, array2, array3);
  }

  else
  {
    [(STAllowanceItemSetupListController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(STAllowanceItemSetupListController *)self _cleanUpRetainCycles];
}

- (void)_cleanUpRetainCycles
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  categorySpecifiers = [(STAllowanceItemSetupListController *)self categorySpecifiers];
  v3 = [categorySpecifiers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(categorySpecifiers);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 removePropertyForKey:0x287676768];
        [v7 removePropertyForKey:0x287676788];
      }

      v4 = [categorySpecifiers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)willPresentSearchController:(id)controller
{
  v57 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v4 = objc_opt_new();
  applicationAndWebDomainSpecifiersByCategoryIdentifier = [(STAllowanceItemSetupListController *)self applicationAndWebDomainSpecifiersByCategoryIdentifier];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  selfCopy = self;
  categorySpecifiers = [(STAllowanceItemSetupListController *)self categorySpecifiers];
  v6 = [categorySpecifiers countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(categorySpecifiers);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        identifier = [v10 identifier];
        v12 = [applicationAndWebDomainSpecifiersByCategoryIdentifier objectForKeyedSubscript:identifier];

        v13 = [v12 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v47;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v47 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v46 + 1) + 8 * j);
              if ([v17 cellType] == 3)
              {
                [v4 addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v14);
        }
      }

      v7 = [categorySpecifiers countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v7);
  }

  specifier = [(STAllowanceItemSetupListController *)selfCopy specifier];
  v19 = [specifier objectForKeyedSubscript:0x287675C48];

  viewModel = [v19 viewModel];
  installedBundleIDsByCategoryIdentifier = [viewModel installedBundleIDsByCategoryIdentifier];
  v22 = *MEMORY[0x277CF9610];
  v23 = [installedBundleIDsByCategoryIdentifier objectForKeyedSubscript:*MEMORY[0x277CF9610]];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v43;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [(STAllowanceItemSetupListController *)selfCopy _applicationSpecifierForBundleIdentifier:*(*(&v42 + 1) + 8 * k) categoryIdentifier:v22];
        [v4 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v26);
  }

  searchResultsController = [controllerCopy searchResultsController];
  [searchResultsController setAllowanceItemSpecifiers:v4];

  v31 = +[STScreenTimeSettingsUIBundle bundle];
  v32 = [v31 localizedStringForKey:@"AllowanceCancelBarButtonItemTitle" value:&stru_28766E5A8 table:0];

  navigationItem = [(STAllowanceItemSetupListController *)selfCopy navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];
  cancelButton = [searchBar cancelButton];
  [cancelButton setTitle:v32 forState:0];

  navigationItem2 = [(STAllowanceItemSetupListController *)selfCopy navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setHidden:1];
}

- (void)willDismissSearchController:(id)controller
{
  v40 = *MEMORY[0x277D85DE8];
  table = [(STAllowanceItemSetupListController *)self table];
  v28 = objc_opt_new();
  v29 = table;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];
  v8 = [indexPathsForSelectedRows countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    selectedWebDomains = v8;
    v9 = *v35;
    do
    {
      for (i = 0; i != selectedWebDomains; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        selectedCategoryIdentifiers2 = *(*(&v34 + 1) + 8 * i);
        v11 = [(STAllowanceItemSetupListController *)self specifierAtIndexPath:selectedCategoryIdentifiers2];
        v12 = [v11 objectForKeyedSubscript:0x28766E868];

        if (v12)
        {
          selectedCategoryIdentifiers = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
          v14 = [selectedCategoryIdentifiers containsObject:v12];

          if ((v14 & 1) == 0)
          {
            [v29 deselectRowAtIndexPath:selectedCategoryIdentifiers2 animated:0];
            [v28 addObject:v12];
          }
        }
      }

      selectedWebDomains = [indexPathsForSelectedRows countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (selectedWebDomains);
  }

  [(STAllowanceItemSetupListController *)self _selectCellsForSelectedIdentifiers:v28];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v28;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(STAllowanceItemSetupListController *)self reloadSpecifierID:*(*(&v30 + 1) + 8 * j) animated:0];
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v17);
  }

  selectedBundleIdentifiers = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
  v21 = [selectedBundleIdentifiers count];
  if (v21)
  {
    v22 = 0;
    v23 = 1;
  }

  else
  {
    selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
    if ([selectedWebDomains count])
    {
      v22 = 0;
      v23 = 1;
    }

    else
    {
      selectedCategoryIdentifiers2 = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
      v23 = [selectedCategoryIdentifiers2 count] != 0;
      v22 = 1;
    }
  }

  navigationItem = [(STAllowanceItemSetupListController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v23];

  if (v22)
  {
  }

  if (!v21)
  {
  }

  navigationItem2 = [(STAllowanceItemSetupListController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setHidden:0];
}

- (void)_selectCellsForSelectedIdentifiers:(id)identifiers
{
  v71 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  table = [(STAllowanceItemSetupListController *)self table];
  if ([(STAllowanceItemSetupListController *)self allAppsAndCategoriesSelected])
  {
    v6 = [(STAllowanceItemSetupListController *)self specifierForID:*MEMORY[0x277D4BCC0]];
    v7 = [(STAllowanceItemSetupListController *)self indexPathForSpecifier:v6];
    [table selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
    if (identifiersCopy)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      categorySpecifiers = [(STAllowanceItemSetupListController *)self categorySpecifiers];
      v9 = [categorySpecifiers countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v64;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v64 != v11)
            {
              objc_enumerationMutation(categorySpecifiers);
            }

            identifier = [*(*(&v63 + 1) + 8 * i) identifier];
            [identifiersCopy addObject:identifier];
          }

          v10 = [categorySpecifiers countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v10);
      }
    }
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  selectedCategoryIdentifiers = [(STAllowanceItemSetupListController *)self selectedCategoryIdentifiers];
  v15 = [selectedCategoryIdentifiers countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v60;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v60 != v17)
        {
          objc_enumerationMutation(selectedCategoryIdentifiers);
        }

        v19 = *(*(&v59 + 1) + 8 * j);
        v20 = [(STAllowanceItemSetupListController *)self specifierForID:v19];
        v21 = [(STAllowanceItemSetupListController *)self indexPathForSpecifier:v20];

        [table selectRowAtIndexPath:v21 animated:0 scrollPosition:0];
        [identifiersCopy addObject:v19];
      }

      v16 = [selectedCategoryIdentifiers countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v16);
  }

  applicationAndWebDomainSpecifiersByCategoryIdentifier = [(STAllowanceItemSetupListController *)self applicationAndWebDomainSpecifiersByCategoryIdentifier];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  selectedBundleIdentifiers = [(STAllowanceItemSetupListController *)self selectedBundleIdentifiers];
  v23 = [selectedBundleIdentifiers countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v56;
    v42 = v53;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v56 != v25)
        {
          objc_enumerationMutation(selectedBundleIdentifiers);
        }

        v27 = *(*(&v55 + 1) + 8 * k);
        v28 = [(STAllowanceItemSetupListController *)self specifierForID:v27, v42];
        v29 = v28;
        if (v28)
        {
          v30 = [v28 objectForKeyedSubscript:0x28766E868];
          [identifiersCopy addObject:v30];

          v31 = [(STAllowanceItemSetupListController *)self indexPathForSpecifier:v29];
          if (v31)
          {
            [table selectRowAtIndexPath:v31 animated:0 scrollPosition:0];
          }
        }

        else if (identifiersCopy)
        {
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v53[0] = __73__STAllowanceItemSetupListController__selectCellsForSelectedIdentifiers___block_invoke;
          v53[1] = &unk_279B7CB30;
          v53[2] = v27;
          v54 = identifiersCopy;
          [applicationAndWebDomainSpecifiersByCategoryIdentifier enumerateKeysAndObjectsUsingBlock:v52];
        }
      }

      v24 = [selectedBundleIdentifiers countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v24);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  selectedWebDomains = [(STAllowanceItemSetupListController *)self selectedWebDomains];
  v33 = [selectedWebDomains countByEnumeratingWithState:&v48 objects:v67 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v49;
    v43 = v46;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(selectedWebDomains);
        }

        v37 = *(*(&v48 + 1) + 8 * m);
        v38 = [(STAllowanceItemSetupListController *)self specifierForID:v37, v43];
        v39 = v38;
        if (v38)
        {
          v40 = [v38 objectForKeyedSubscript:0x28766E868];
          [identifiersCopy addObject:v40];

          v41 = [(STAllowanceItemSetupListController *)self indexPathForSpecifier:v39];
          if (v41)
          {
            [table selectRowAtIndexPath:v41 animated:0 scrollPosition:0];
          }
        }

        else if (identifiersCopy)
        {
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v46[0] = __73__STAllowanceItemSetupListController__selectCellsForSelectedIdentifiers___block_invoke_2;
          v46[1] = &unk_279B7CB30;
          v46[2] = v37;
          v47 = identifiersCopy;
          [applicationAndWebDomainSpecifiersByCategoryIdentifier enumerateKeysAndObjectsUsingBlock:v45];
        }
      }

      v34 = [selectedWebDomains countByEnumeratingWithState:&v48 objects:v67 count:16];
    }

    while (v34);
  }
}

void __73__STAllowanceItemSetupListController__selectCellsForSelectedIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) identifier];
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          [*(a1 + 40) addObject:v7];
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __73__STAllowanceItemSetupListController__selectCellsForSelectedIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) identifier];
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          [*(a1 + 40) addObject:v7];
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __48__STAllowanceItemSetupListController_specifiers__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_webDomainSpecifierForDomain:usageItem:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_webDomainSpecifierForDomain:usageItem:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end