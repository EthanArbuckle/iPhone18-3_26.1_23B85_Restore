@interface STWebFilterDetailController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (STContentPrivacyMediaRestrictionsDetailController)parentMediaRestrictionsController;
- (STWebFilterDetailController)init;
- (id)_addButtonSpecifierWithGroup:(id)a3 action:(SEL)a4;
- (id)_listItemSpecifiersForNamedSitesGroup:(id)a3;
- (id)_listItemSpecifiersForSitesGroup:(id)a3;
- (id)getItemSpecifierValue:(id)a3;
- (id)groupSpecifierWithConfiguration:(id)a3 key:(id)a4 footerText:(id)a5 radio:(BOOL)a6;
- (id)listItemSpecifierWithGroup:(id)a3 name:(id)a4 value:(id)a5;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)addNamedSite:(id)a3;
- (void)addSite:(id)a3;
- (void)dealloc;
- (void)didCancelEnteringPIN;
- (void)gatedAddNamedSite:(id)a3;
- (void)gatedAddSite:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)saveItemValue:(id)a3 specifier:(id)a4;
- (void)saveRemovingItem:(id)a3 value:(id)a4;
- (void)setCoordinator:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateParent;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation STWebFilterDetailController

- (STWebFilterDetailController)init
{
  v7.receiver = self;
  v7.super_class = STWebFilterDetailController;
  v2 = [(STPINListViewController *)&v7 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"WebContentSpecifierName" value:&stru_28766E5A8 table:v3];
    [(STWebFilterDetailController *)v2 setTitle:v5];
  }

  return v2;
}

- (id)specifiers
{
  v37[4] = *MEMORY[0x277D85DE8];
  v3 = [(STPINListViewController *)self coordinator];
  v4 = [v3 contentPrivacyCoordinator];
  v5 = [v4 viewModel];

  if (![v5 isLoaded])
  {
    v23 = MEMORY[0x277CBEBF8];
    goto LABEL_9;
  }

  v33 = v5;
  v6 = objc_opt_new();
  v7 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:@"UnrestrictedAccessSpecifierName" value:&stru_28766E5A8 table:v7];
  v10 = [v8 localizedStringForKey:@"LimitAdultWebsitesSpecifierName" value:&stru_28766E5A8 table:v7];
  v11 = [v8 localizedStringForKey:@"AADC_AllowedWebsitesSpecifierName" value:&stru_28766E5A8 table:v7];
  v12 = [(STWebFilterDetailController *)self groupSpecifierWithConfiguration:0x2876725E8 key:0x2876726E8 footerText:0 radio:1];
  v36 = v9;
  v37[0] = v12;
  v13 = [(STWebFilterDetailController *)self listItemSpecifierWithGroup:v12 name:v9 value:&unk_28769D730];
  v37[1] = v13;
  v35 = v10;
  v14 = [(STWebFilterDetailController *)self listItemSpecifierWithGroup:v12 name:v10 value:&unk_28769D748];
  v37[2] = v14;
  v34 = v11;
  v15 = [(STWebFilterDetailController *)self listItemSpecifierWithGroup:v12 name:v11 value:&unk_28769D760];
  v37[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
  [v6 addObjectsFromArray:v16];

  v17 = [(STWebFilterDetailController *)self getItemSpecifierValue:v12];
  v18 = [v17 unsignedIntegerValue];

  if (v18 == 1)
  {
    v24 = [v8 localizedStringForKey:@"WebContentAutoFilterFooterText" value:&stru_28766E5A8 table:v7];
    [v12 setObject:v24 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v25 = [(STWebFilterDetailController *)self groupSpecifierWithConfiguration:@"system.webcontentfilter.basic" key:@"filterWhiteList" footerText:0 radio:0];
    [v6 addObject:v25];
    v26 = [(STWebFilterDetailController *)self _listItemSpecifiersForSitesGroup:v25];
    [v6 addObjectsFromArray:v26];

    v27 = [(STWebFilterDetailController *)self _addButtonSpecifierWithGroup:v25 action:sel_gatedAddSite_];
    [v6 addObject:v27];

    v20 = [(STWebFilterDetailController *)self groupSpecifierWithConfiguration:@"system.webcontentfilter.basic" key:@"filterBlackList" footerText:0 radio:0];
    [v6 addObject:v20];
    v28 = [(STWebFilterDetailController *)self _listItemSpecifiersForSitesGroup:v20];
    [v6 addObjectsFromArray:v28];

    v22 = [(STWebFilterDetailController *)self _addButtonSpecifierWithGroup:v20 action:sel_gatedAddSite_];
    v5 = v33;
    goto LABEL_7;
  }

  v5 = v33;
  if (v18 == 2)
  {
    v19 = [v8 localizedStringForKey:@"WebContentCustomFilterFooterText" value:&stru_28766E5A8 table:v7];
    [v12 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v20 = [(STWebFilterDetailController *)self groupSpecifierWithConfiguration:@"system.webcontentfilter.basic" key:@"siteWhiteList" footerText:0 radio:0];
    [v6 addObject:v20];
    v21 = [(STWebFilterDetailController *)self _listItemSpecifiersForNamedSitesGroup:v20];
    [v6 addObjectsFromArray:v21];

    v22 = [(STWebFilterDetailController *)self _addButtonSpecifierWithGroup:v20 action:sel_gatedAddNamedSite_];
LABEL_7:
    [v6 addObject:v22];
  }

  v29 = [v6 copy];
  v30 = *MEMORY[0x277D3FC48];
  v31 = *(&self->super.super.super.super.super.super.super.isa + v30);
  *(&self->super.super.super.super.super.super.super.isa + v30) = v29;

  v23 = *(&self->super.super.super.super.super.super.super.isa + v30);
LABEL_9:

  return v23;
}

- (id)_listItemSpecifiersForNamedSitesGroup:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STWebFilterDetailController *)self getItemSpecifierValue:v4];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"payloadPageTitle" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v24[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v9 = [v5 sortedArrayUsingDescriptors:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 payloadPageTitle];
        v17 = [(STWebFilterDetailController *)self listItemSpecifierWithGroup:v4 name:v16 value:v15];
        [v6 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return v6;
}

- (id)_listItemSpecifiersForSitesGroup:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STWebFilterDetailController *)self getItemSpecifierValue:v4];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [v5 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(STWebFilterDetailController *)self listItemSpecifierWithGroup:v4 name:*(*(&v15 + 1) + 8 * i) value:*(*(&v15 + 1) + 8 * i), v15];
        [v6 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(STPINListViewController *)self coordinator];
  v4 = [v3 contentPrivacyCoordinator];
  [v4 removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"WebFilterViewModelLoadedContext"];

  v5.receiver = self;
  v5.super_class = STWebFilterDetailController;
  [(STListViewController *)&v5 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STPINListViewController *)self coordinator];

  if (v5 != v4)
  {
    v6 = [(STPINListViewController *)self coordinator];
    v7 = [v6 contentPrivacyCoordinator];
    [v7 removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"WebFilterViewModelLoadedContext"];

    v10.receiver = self;
    v10.super_class = STWebFilterDetailController;
    [(STPINListViewController *)&v10 setCoordinator:v4];
    v8 = [(STPINListViewController *)self coordinator];
    v9 = [v8 contentPrivacyCoordinator];
    [v9 addObserver:self forKeyPath:@"viewModel.isLoaded" options:0 context:@"WebFilterViewModelLoadedContext"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"WebFilterViewModelLoadedContext")
  {
    v7 = [(STPINListViewController *)self coordinator:a3];
    v8 = [v7 contentPrivacyCoordinator];
    v9 = [v8 viewModel];
    v10 = [v9 isLoaded];

    if (v10)
    {

      [(STWebFilterDetailController *)self reloadSpecifiers];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STWebFilterDetailController;
    [(STListViewController *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)gatedAddNamedSite:(id)a3
{
  v4 = a3;
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__STWebFilterDetailController_gatedAddNamedSite___block_invoke;
    v5[3] = &unk_279B7CA40;
    v5[4] = self;
    v6 = v4;
    [(PSListController *)self st_showPINSheetWithCompletion:v5];
  }

  else
  {
    [(STWebFilterDetailController *)self addNamedSite:v4];
  }
}

uint64_t __49__STWebFilterDetailController_gatedAddNamedSite___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) addNamedSite:*(result + 40)];
  }

  return result;
}

- (void)gatedAddSite:(id)a3
{
  v4 = a3;
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__STWebFilterDetailController_gatedAddSite___block_invoke;
    v5[3] = &unk_279B7CA40;
    v5[4] = self;
    v6 = v4;
    [(PSListController *)self st_showPINSheetWithCompletion:v5];
  }

  else
  {
    [(STWebFilterDetailController *)self addSite:v4];
  }
}

uint64_t __44__STWebFilterDetailController_gatedAddSite___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) addSite:*(result + 40)];
  }

  return result;
}

- (void)addNamedSite:(id)a3
{
  v4 = a3;
  v8 = objc_opt_new();
  v5 = [(STPINListViewController *)self coordinator];
  v6 = [v5 contentPrivacyCoordinator];
  [v8 setCoordinator:v6];

  [v8 setParentController:self];
  v7 = [v4 objectForKeyedSubscript:0x287672648];

  [v8 setRestriction:v7];
  [v8 setIsNamedSite:1];
  [(STWebFilterDetailController *)self showController:v8 animate:1];
}

- (void)addSite:(id)a3
{
  v4 = a3;
  v8 = objc_opt_new();
  v5 = [(STPINListViewController *)self coordinator];
  v6 = [v5 contentPrivacyCoordinator];
  [v8 setCoordinator:v6];

  [v8 setParentController:self];
  v7 = [v4 objectForKeyedSubscript:0x287672648];

  [v8 setRestriction:v7];
  [(STWebFilterDetailController *)self showController:v8 animate:1];
}

- (id)getItemSpecifierValue:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:0x287672648];
  v5 = [(STPINListViewController *)self coordinator];
  v6 = [v5 contentPrivacyCoordinator];
  v7 = [v6 viewModel];

  v8 = [v7 valuesByRestriction];
  v9 = [v8 objectForKeyedSubscript:v4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 defaultValueForRestriction:v4];
  }

  v12 = v11;

  return v12;
}

- (void)saveRemovingItem:(id)a3 value:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(STPINListViewController *)self coordinator];
  v8 = [v7 contentPrivacyCoordinator];
  v9 = [v8 viewModel];

  v10 = [v9 valuesByRestriction];
  v11 = [v10 objectForKeyedSubscript:v24];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 defaultValueForRestriction:v24];
  }

  v14 = v13;

  v15 = [v24 payloadKey];
  v16 = [v15 isEqualToString:@"siteWhiteList"];

  v17 = MEMORY[0x277CCAC30];
  if (v16)
  {
    v18 = [v6 payloadAddress];
    v19 = [v17 predicateWithFormat:@"%K != %@", @"payloadAddress", v18];
    v20 = [v14 filteredArrayUsingPredicate:v19];
  }

  else
  {
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self != %@", v6];
    v20 = [v14 filteredArrayUsingPredicate:v18];
  }

  v21 = [(STPINListViewController *)self coordinator];
  v22 = [v21 contentPrivacyCoordinator];
  v23 = [v20 copy];
  [v22 saveRestrictionValue:v23 forItem:v24 completionHandler:&__block_literal_global_27];
}

- (void)saveItemValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:0x287672648];
  v8 = [(STPINListViewController *)self coordinator];
  v9 = [v8 contentPrivacyCoordinator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__STWebFilterDetailController_saveItemValue_specifier___block_invoke;
  v10[3] = &unk_279B7CC18;
  v10[4] = self;
  [v9 saveRestrictionValue:v6 forItem:v7 completionHandler:v10];
}

- (void)updateParent
{
  v2 = [(STWebFilterDetailController *)self parentMediaRestrictionsController];
  [v2 performSelectorOnMainThread:sel_reloadSpecifiers withObject:0 waitUntilDone:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = STWebFilterDetailController;
  [(STPINListViewController *)&v6 viewDidAppear:a3];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [(STWebFilterDetailController *)self setParentMediaRestrictionsController:WeakRetained];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STWebFilterDetailController.viewDidAppear", v5, 2u);
  }
}

- (void)willResignActive
{
  v3.receiver = self;
  v3.super_class = STWebFilterDetailController;
  [(STWebFilterDetailController *)&v3 willResignActive];
  [(STWebFilterDetailController *)self updateParent];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STWebFilterDetailController;
  [(STWebFilterDetailController *)&v5 viewWillDisappear:a3];
  [(STWebFilterDetailController *)self updateParent];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STWebFilterDetailController.viewWillDisappear", v4, 2u);
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(STWebFilterDetailController *)self specifierAtIndexPath:a4];
  v5 = [v4 objectForKeyedSubscript:0x287672648];
  v6 = [v5 restrictionType] == 2 && objc_msgSend(v4, "cellType") != 13;

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v6 = [(STWebFilterDetailController *)self specifierAtIndexPath:a5, a4];
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__STWebFilterDetailController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
    v9[3] = &unk_279B7CA40;
    v9[4] = self;
    v10 = v6;
    [(PSListController *)self st_showPINSheetWithCompletion:v9];
  }

  else
  {
    [(STWebFilterDetailController *)self removeSpecifier:v6 animated:1];
    v7 = [v6 objectForKeyedSubscript:0x287672648];
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D401A8]];
    [(STWebFilterDetailController *)self saveRemovingItem:v7 value:v8];
  }
}

void __78__STWebFilterDetailController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) removeSpecifier:*(a1 + 40) animated:1];
    v3 = *(a1 + 32);
    v5 = [*(a1 + 40) objectForKeyedSubscript:0x287672648];
    v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D401A8]];
    [v3 saveRemovingItem:v5 value:v4];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(STWebFilterDetailController *)self specifierAtIndexPath:v5];
  v7 = [(STWebFilterDetailController *)self getGroupSpecifierForSpecifier:v6];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3FFE8]];
  if ([v8 BOOLValue])
  {
  }

  else
  {
    v9 = [v6 cellType];

    if (v9 == 3)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STWebFilterDetailController *)self specifierAtIndexPath:v6];
  v9 = [(STWebFilterDetailController *)self getGroupSpecifierForSpecifier:v8];
  v10 = [v9 propertyForKey:*MEMORY[0x277D40090]];
  v14.receiver = self;
  v14.super_class = STWebFilterDetailController;
  v11 = [(STListViewController *)&v14 tableView:v7 cellForRowAtIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    [v12 setChecked:{objc_msgSend(v10, "isEqualToSpecifier:", v8)}];
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STWebFilterDetailController *)self specifierAtIndexPath:v7];
  v9 = [(STWebFilterDetailController *)self getGroupSpecifierForSpecifier:v8];
  v10 = [v8 objectForKeyedSubscript:0x287672648];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D3FFE8]];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __65__STWebFilterDetailController_tableView_didSelectRowAtIndexPath___block_invoke;
      v16[3] = &unk_279B7CA40;
      v16[4] = self;
      v17 = v8;
      [(PSListController *)self st_showPINSheetWithCompletion:v16];
    }

    else
    {
      v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277D401A8]];
      [(STWebFilterDetailController *)self saveItemValue:v14 specifier:v8];
    }
  }

  v15.receiver = self;
  v15.super_class = STWebFilterDetailController;
  [(STPINListViewController *)&v15 tableView:v6 didSelectRowAtIndexPath:v7];
}

void __65__STWebFilterDetailController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D401A8]];
    [v3 saveItemValue:v4 specifier:*(a1 + 40)];
  }
}

- (id)groupSpecifierWithConfiguration:(id)a3 key:(id)a4 footerText:(id)a5 radio:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [(STPINListViewController *)self coordinator];
  v16 = [v15 contentPrivacyCoordinator];
  v17 = [v16 viewModel];
  v18 = [v17 visibleRestrictionWithConfiguration:v12 key:v11];

  v19 = MEMORY[0x277D3FAD8];
  v20 = [v18 uiLabel];
  v21 = [v14 localizedStringForKey:v20 value:&stru_28766E5A8 table:v13];
  v22 = [v19 groupSpecifierWithName:v21];

  [v22 setObject:v18 forKeyedSubscript:0x287672648];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FFE8]];

  if (v10)
  {
    [v22 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  return v22;
}

- (id)listItemSpecifierWithGroup:(id)a3 name:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x277D3FAD8];
  v10 = a5;
  v11 = [v9 preferenceSpecifierNamed:a4 target:self set:0 get:0 detail:0 cell:3 edit:0];
  v12 = [v8 objectForKeyedSubscript:0x287672648];
  v13 = MEMORY[0x277CCABB0];
  v14 = [(STPINListViewController *)self coordinator];
  v15 = [v14 contentPrivacyCoordinator];
  v16 = [v15 viewModel];
  v17 = [v13 numberWithBool:{objc_msgSend(v16, "restrictionsEnabled")}];
  [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v11 setObject:v12 forKeyedSubscript:0x287672648];
  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x277D401A8]];
  v18 = [(STWebFilterDetailController *)self getItemSpecifierValue:v11];
  LODWORD(v9) = [v10 isEqual:v18];

  if (v9)
  {
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277D40090]];
  }

  return v11;
}

- (id)_addButtonSpecifierWithGroup:(id)a3 action:(SEL)a4
{
  v5 = [a3 objectForKeyedSubscript:0x287672648];
  v6 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 localizedStringForKey:@"AddWebsiteButton" value:&stru_28766E5A8 table:v6];
  v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v10 = MEMORY[0x277CCABB0];
  v11 = [(STPINListViewController *)self coordinator];
  v12 = [v11 contentPrivacyCoordinator];
  v13 = [v12 viewModel];
  v14 = [v10 numberWithBool:{objc_msgSend(v13, "restrictionsEnabled")}];
  [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v9 setObject:v5 forKeyedSubscript:0x287672648];
  [v9 setButtonAction:a4];

  return v9;
}

- (void)didCancelEnteringPIN
{
  v3.receiver = self;
  v3.super_class = STWebFilterDetailController;
  [(STPINListViewController *)&v3 didCancelEnteringPIN];
  [(STWebFilterDetailController *)self reloadSpecifiers];
}

- (STContentPrivacyMediaRestrictionsDetailController)parentMediaRestrictionsController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentMediaRestrictionsController);

  return WeakRetained;
}

@end