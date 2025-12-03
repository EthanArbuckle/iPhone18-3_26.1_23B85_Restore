@interface STWebFilterDetailController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (STContentPrivacyMediaRestrictionsDetailController)parentMediaRestrictionsController;
- (STWebFilterDetailController)init;
- (id)_addButtonSpecifierWithGroup:(id)group action:(SEL)action;
- (id)_listItemSpecifiersForNamedSitesGroup:(id)group;
- (id)_listItemSpecifiersForSitesGroup:(id)group;
- (id)getItemSpecifierValue:(id)value;
- (id)groupSpecifierWithConfiguration:(id)configuration key:(id)key footerText:(id)text radio:(BOOL)radio;
- (id)listItemSpecifierWithGroup:(id)group name:(id)name value:(id)value;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)addNamedSite:(id)site;
- (void)addSite:(id)site;
- (void)dealloc;
- (void)didCancelEnteringPIN;
- (void)gatedAddNamedSite:(id)site;
- (void)gatedAddSite:(id)site;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)saveItemValue:(id)value specifier:(id)specifier;
- (void)saveRemovingItem:(id)item value:(id)value;
- (void)setCoordinator:(id)coordinator;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateParent;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  if (![viewModel isLoaded])
  {
    v23 = MEMORY[0x277CBEBF8];
    goto LABEL_9;
  }

  v33 = viewModel;
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
  unsignedIntegerValue = [v17 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
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
    viewModel = v33;
    goto LABEL_7;
  }

  viewModel = v33;
  if (unsignedIntegerValue == 2)
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

- (id)_listItemSpecifiersForNamedSitesGroup:(id)group
{
  v24[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = [(STWebFilterDetailController *)self getItemSpecifierValue:groupCopy];
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
        payloadPageTitle = [v15 payloadPageTitle];
        v17 = [(STWebFilterDetailController *)self listItemSpecifierWithGroup:groupCopy name:payloadPageTitle value:v15];
        [v6 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return v6;
}

- (id)_listItemSpecifiersForSitesGroup:(id)group
{
  v20 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = [(STWebFilterDetailController *)self getItemSpecifierValue:groupCopy];
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

        v13 = [(STWebFilterDetailController *)self listItemSpecifierWithGroup:groupCopy name:*(*(&v15 + 1) + 8 * i) value:*(*(&v15 + 1) + 8 * i), v15];
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
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  [contentPrivacyCoordinator removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"WebFilterViewModelLoadedContext"];

  v5.receiver = self;
  v5.super_class = STWebFilterDetailController;
  [(STListViewController *)&v5 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];

  if (coordinator != coordinatorCopy)
  {
    coordinator2 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
    [contentPrivacyCoordinator removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"WebFilterViewModelLoadedContext"];

    v10.receiver = self;
    v10.super_class = STWebFilterDetailController;
    [(STPINListViewController *)&v10 setCoordinator:coordinatorCopy];
    coordinator3 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator2 = [coordinator3 contentPrivacyCoordinator];
    [contentPrivacyCoordinator2 addObserver:self forKeyPath:@"viewModel.isLoaded" options:0 context:@"WebFilterViewModelLoadedContext"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"WebFilterViewModelLoadedContext")
  {
    v7 = [(STPINListViewController *)self coordinator:path];
    contentPrivacyCoordinator = [v7 contentPrivacyCoordinator];
    viewModel = [contentPrivacyCoordinator viewModel];
    isLoaded = [viewModel isLoaded];

    if (isLoaded)
    {

      [(STWebFilterDetailController *)self reloadSpecifiers];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STWebFilterDetailController;
    [(STListViewController *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)gatedAddNamedSite:(id)site
{
  siteCopy = site;
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__STWebFilterDetailController_gatedAddNamedSite___block_invoke;
    v5[3] = &unk_279B7CA40;
    v5[4] = self;
    v6 = siteCopy;
    [(PSListController *)self st_showPINSheetWithCompletion:v5];
  }

  else
  {
    [(STWebFilterDetailController *)self addNamedSite:siteCopy];
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

- (void)gatedAddSite:(id)site
{
  siteCopy = site;
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__STWebFilterDetailController_gatedAddSite___block_invoke;
    v5[3] = &unk_279B7CA40;
    v5[4] = self;
    v6 = siteCopy;
    [(PSListController *)self st_showPINSheetWithCompletion:v5];
  }

  else
  {
    [(STWebFilterDetailController *)self addSite:siteCopy];
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

- (void)addNamedSite:(id)site
{
  siteCopy = site;
  v8 = objc_opt_new();
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  [v8 setCoordinator:contentPrivacyCoordinator];

  [v8 setParentController:self];
  v7 = [siteCopy objectForKeyedSubscript:0x287672648];

  [v8 setRestriction:v7];
  [v8 setIsNamedSite:1];
  [(STWebFilterDetailController *)self showController:v8 animate:1];
}

- (void)addSite:(id)site
{
  siteCopy = site;
  v8 = objc_opt_new();
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  [v8 setCoordinator:contentPrivacyCoordinator];

  [v8 setParentController:self];
  v7 = [siteCopy objectForKeyedSubscript:0x287672648];

  [v8 setRestriction:v7];
  [(STWebFilterDetailController *)self showController:v8 animate:1];
}

- (id)getItemSpecifierValue:(id)value
{
  v4 = [value objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  valuesByRestriction = [viewModel valuesByRestriction];
  v9 = [valuesByRestriction objectForKeyedSubscript:v4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [viewModel defaultValueForRestriction:v4];
  }

  v12 = v11;

  return v12;
}

- (void)saveRemovingItem:(id)item value:(id)value
{
  itemCopy = item;
  valueCopy = value;
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  valuesByRestriction = [viewModel valuesByRestriction];
  v11 = [valuesByRestriction objectForKeyedSubscript:itemCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [viewModel defaultValueForRestriction:itemCopy];
  }

  v14 = v13;

  payloadKey = [itemCopy payloadKey];
  v16 = [payloadKey isEqualToString:@"siteWhiteList"];

  v17 = MEMORY[0x277CCAC30];
  if (v16)
  {
    payloadAddress = [valueCopy payloadAddress];
    v19 = [v17 predicateWithFormat:@"%K != %@", @"payloadAddress", payloadAddress];
    v20 = [v14 filteredArrayUsingPredicate:v19];
  }

  else
  {
    payloadAddress = [MEMORY[0x277CCAC30] predicateWithFormat:@"self != %@", valueCopy];
    v20 = [v14 filteredArrayUsingPredicate:payloadAddress];
  }

  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
  v23 = [v20 copy];
  [contentPrivacyCoordinator2 saveRestrictionValue:v23 forItem:itemCopy completionHandler:&__block_literal_global_27];
}

- (void)saveItemValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v7 = [specifier objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__STWebFilterDetailController_saveItemValue_specifier___block_invoke;
  v10[3] = &unk_279B7CC18;
  v10[4] = self;
  [contentPrivacyCoordinator saveRestrictionValue:valueCopy forItem:v7 completionHandler:v10];
}

- (void)updateParent
{
  parentMediaRestrictionsController = [(STWebFilterDetailController *)self parentMediaRestrictionsController];
  [parentMediaRestrictionsController performSelectorOnMainThread:sel_reloadSpecifiers withObject:0 waitUntilDone:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = STWebFilterDetailController;
  [(STPINListViewController *)&v6 viewDidAppear:appear];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = STWebFilterDetailController;
  [(STWebFilterDetailController *)&v5 viewWillDisappear:disappear];
  [(STWebFilterDetailController *)self updateParent];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STWebFilterDetailController.viewWillDisappear", v4, 2u);
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(STWebFilterDetailController *)self specifierAtIndexPath:path];
  v5 = [v4 objectForKeyedSubscript:0x287672648];
  v6 = [v5 restrictionType] == 2 && objc_msgSend(v4, "cellType") != 13;

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  style = [(STWebFilterDetailController *)self specifierAtIndexPath:path, style];
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__STWebFilterDetailController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
    v9[3] = &unk_279B7CA40;
    v9[4] = self;
    v10 = style;
    [(PSListController *)self st_showPINSheetWithCompletion:v9];
  }

  else
  {
    [(STWebFilterDetailController *)self removeSpecifier:style animated:1];
    v7 = [style objectForKeyedSubscript:0x287672648];
    v8 = [style objectForKeyedSubscript:*MEMORY[0x277D401A8]];
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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(STWebFilterDetailController *)self specifierAtIndexPath:pathCopy];
  v7 = [(STWebFilterDetailController *)self getGroupSpecifierForSpecifier:v6];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3FFE8]];
  if ([v8 BOOLValue])
  {
  }

  else
  {
    cellType = [v6 cellType];

    if (cellType == 3)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = pathCopy;
LABEL_6:

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(STWebFilterDetailController *)self specifierAtIndexPath:pathCopy];
  v9 = [(STWebFilterDetailController *)self getGroupSpecifierForSpecifier:v8];
  v10 = [v9 propertyForKey:*MEMORY[0x277D40090]];
  v14.receiver = self;
  v14.super_class = STWebFilterDetailController;
  v11 = [(STListViewController *)&v14 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    [v12 setChecked:{objc_msgSend(v10, "isEqualToSpecifier:", v8)}];
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STWebFilterDetailController *)self specifierAtIndexPath:pathCopy];
  v9 = [(STWebFilterDetailController *)self getGroupSpecifierForSpecifier:v8];
  v10 = [v8 objectForKeyedSubscript:0x287672648];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
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
  [(STPINListViewController *)&v15 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
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

- (id)groupSpecifierWithConfiguration:(id)configuration key:(id)key footerText:(id)text radio:(BOOL)radio
{
  radioCopy = radio;
  textCopy = text;
  keyCopy = key;
  configurationCopy = configuration;
  v13 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v18 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  v19 = MEMORY[0x277D3FAD8];
  uiLabel = [v18 uiLabel];
  v21 = [v14 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:v13];
  v22 = [v19 groupSpecifierWithName:v21];

  [v22 setObject:v18 forKeyedSubscript:0x287672648];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:radioCopy];
  [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FFE8]];

  if (textCopy)
  {
    [v22 setObject:textCopy forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  return v22;
}

- (id)listItemSpecifierWithGroup:(id)group name:(id)name value:(id)value
{
  groupCopy = group;
  v9 = MEMORY[0x277D3FAD8];
  valueCopy = value;
  v11 = [v9 preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:3 edit:0];
  v12 = [groupCopy objectForKeyedSubscript:0x287672648];
  v13 = MEMORY[0x277CCABB0];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v17 = [v13 numberWithBool:{objc_msgSend(viewModel, "restrictionsEnabled")}];
  [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v11 setObject:v12 forKeyedSubscript:0x287672648];
  [v11 setObject:valueCopy forKeyedSubscript:*MEMORY[0x277D401A8]];
  v18 = [(STWebFilterDetailController *)self getItemSpecifierValue:v11];
  LODWORD(v9) = [valueCopy isEqual:v18];

  if (v9)
  {
    [groupCopy setObject:v11 forKeyedSubscript:*MEMORY[0x277D40090]];
  }

  return v11;
}

- (id)_addButtonSpecifierWithGroup:(id)group action:(SEL)action
{
  v5 = [group objectForKeyedSubscript:0x287672648];
  v6 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 localizedStringForKey:@"AddWebsiteButton" value:&stru_28766E5A8 table:v6];
  v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v10 = MEMORY[0x277CCABB0];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v14 = [v10 numberWithBool:{objc_msgSend(viewModel, "restrictionsEnabled")}];
  [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v9 setObject:v5 forKeyedSubscript:0x287672648];
  [v9 setButtonAction:action];

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