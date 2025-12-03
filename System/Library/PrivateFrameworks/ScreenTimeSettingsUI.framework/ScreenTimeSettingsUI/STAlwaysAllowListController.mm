@interface STAlwaysAllowListController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (STAlwaysAllowListController)init;
- (STAlwaysAllowListControllerDelegate)delegate;
- (id)_allowedContactsDuringDowntimeText:(id)text;
- (id)appSpecifiersForBundleIDs:(id)ds;
- (id)createAllowedAppsSpecifiers;
- (id)createChooseAppsSpecifiers;
- (id)removeMessagesConfirmationPrompt;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_alwaysAllowListDidChange:(id)change;
- (void)_communicationLimitsDidChangeFrom:(id)from to:(id)to;
- (void)_insertAllowedAppSpecifier:(id)specifier;
- (void)_removeAllowedAppSpecifier:(id)specifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAllowedIdentifier:(id)identifier withSpecifier:(id)specifier;
- (void)setCoordinator:(id)coordinator;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willResignActive;
@end

@implementation STAlwaysAllowListController

- (STAlwaysAllowListController)init
{
  v8.receiver = self;
  v8.super_class = STAlwaysAllowListController;
  v2 = [(STPINListViewController *)&v8 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = [v3 localizedStringForKey:@"AlwaysAllowTitle" value:&stru_28766E5A8 table:0];
    [(STAlwaysAllowListController *)v2 setTitle:v4];
  }

  v7.receiver = v2;
  v7.super_class = STAlwaysAllowListController;
  coordinator = [(STPINListViewController *)&v7 coordinator];
  [coordinator addObserver:v2 forKeyPath:@"timeAllowancesCoordinator.viewModel.alwaysAllowList" options:3 context:"KVOContextAlwaysAllowedListController"];
  [coordinator addObserver:v2 forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:3 context:"KVOContextAlwaysAllowedListController"];

  return v2;
}

- (void)dealloc
{
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.alwaysAllowList" context:"KVOContextAlwaysAllowedListController"];
  [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" context:"KVOContextAlwaysAllowedListController"];

  v4.receiver = self;
  v4.super_class = STAlwaysAllowListController;
  [(STListViewController *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.alwaysAllowList" context:"KVOContextAlwaysAllowedListController"];
  [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" context:"KVOContextAlwaysAllowedListController"];
  v12.receiver = self;
  v12.super_class = STAlwaysAllowListController;
  [(STPINListViewController *)&v12 setCoordinator:coordinatorCopy];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];
  contentPrivacyCoordinator2 = [coordinatorCopy contentPrivacyCoordinator];
  viewModel2 = [contentPrivacyCoordinator2 viewModel];
  communicationLimits2 = [viewModel2 communicationLimits];
  [(STAlwaysAllowListController *)self _communicationLimitsDidChangeFrom:communicationLimits to:communicationLimits2];

  [coordinatorCopy addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.alwaysAllowList" options:3 context:"KVOContextAlwaysAllowedListController"];
  [coordinatorCopy addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:3 context:"KVOContextAlwaysAllowedListController"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextAlwaysAllowedListController")
  {
    [(STPINListViewController *)self coordinator];

    if ([pathCopy isEqualToString:@"contentPrivacyCoordinator.viewModel.communicationLimits"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v14 == null2)
      {

        v14 = 0;
      }

      [(STAlwaysAllowListController *)self _communicationLimitsDidChangeFrom:v12 to:v14];
    }

    else
    {
      [(STPINListViewController *)self coordinator];

      if (![pathCopy isEqualToString:@"timeAllowancesCoordinator.viewModel.alwaysAllowList"])
      {
        goto LABEL_14;
      }

      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (v12 == null3)
      {

        v12 = 0;
      }

      [(STAlwaysAllowListController *)self _alwaysAllowListDidChange:v12];
    }

    goto LABEL_14;
  }

  v17.receiver = self;
  v17.super_class = STAlwaysAllowListController;
  [(STListViewController *)&v17 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_14:
}

- (void)_alwaysAllowListDidChange:(id)change
{
  changeCopy = change;
  v4 = MEMORY[0x277CBEB98];
  alwaysAllowList = [(STAlwaysAllowListController *)self alwaysAllowList];
  allowedBundleIDs = [alwaysAllowList allowedBundleIDs];
  v7 = [v4 setWithArray:allowedBundleIDs];

  v8 = MEMORY[0x277CBEB98];
  if (changeCopy)
  {
    allowedBundleIDs2 = [changeCopy allowedBundleIDs];
    v10 = [v8 setWithArray:allowedBundleIDs2];
  }

  else
  {
    v10 = objc_opt_new();
  }

  if (([v7 isEqualToSet:v10] & 1) == 0)
  {
    coordinator = [(STPINListViewController *)self coordinator];
    timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
    viewModel = [timeAllowancesCoordinator viewModel];
    alwaysAllowList2 = [viewModel alwaysAllowList];
    [(STAlwaysAllowListController *)self setAlwaysAllowList:alwaysAllowList2];

    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CF9650] systemUnblockableBundleIdentifiersForDeviceFamily:102];
    if (v16)
    {
      [v15 unionSet:v16];
    }

    else
    {
      v17 = objc_opt_new();
      [v15 unionSet:v17];
    }

    v18 = [MEMORY[0x277CF9650] systemBlockableBundleIdentifiersForDeviceFamily:102];
    if (v18)
    {
      [v15 unionSet:v18];
    }

    else
    {
      v19 = objc_opt_new();
      [v15 unionSet:v19];
    }

    v20 = [MEMORY[0x277CF9650] systemHiddenBundleIdentifiersForDeviceFamily:102];
    if (v20)
    {
      [v15 unionSet:v20];
    }

    else
    {
      v21 = objc_opt_new();
      [v15 unionSet:v21];
    }

    v22 = objc_alloc(MEMORY[0x277CBEB58]);
    alwaysAllowList3 = [(STAlwaysAllowListController *)self alwaysAllowList];
    allowedBundleIDs3 = [alwaysAllowList3 allowedBundleIDs];
    v25 = [v22 initWithArray:allowedBundleIDs3];

    [v25 unionSet:v15];
    coordinator2 = [(STPINListViewController *)self coordinator];
    viewModel2 = [coordinator2 viewModel];
    installedBundleIDs = [viewModel2 installedBundleIDs];

    [(STAlwaysAllowListController *)self setInstalledBundleIDs:installedBundleIDs];
    v29 = [installedBundleIDs mutableCopy];
    [v29 minusSet:v25];
    allObjects = [v29 allObjects];
    [(STAlwaysAllowListController *)self setChooseBundleIDs:allObjects];

    [(STAlwaysAllowListController *)self reloadSpecifiers];
  }
}

- (void)_communicationLimitsDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    allowedContactsSpecifier = [(STAlwaysAllowListController *)self allowedContactsSpecifier];
    [(STAlwaysAllowListController *)self reloadSpecifier:allowedContactsSpecifier];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = STAlwaysAllowListController;
  [(STAlwaysAllowListController *)&v5 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.super.super.isa + v3) setEditing:1];
  [*(&self->super.super.super.super.super.super.super.isa + v3) setAllowsSelectionDuringEditing:1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAlwaysAllowListController.viewDidLoad", v4, 2u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STAlwaysAllowListController;
  [(STPINListViewController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/ALWAYS_ALLOWED"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"AlwaysAllowTitle" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STAlwaysAllowListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(STAlwaysAllowListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    alwaysAllowList = [(STAlwaysAllowListController *)self alwaysAllowList];
    [delegate alwaysAllowListController:self didFinishEditingAlwaysAllowList:alwaysAllowList];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAlwaysAllowListController.viewWillDisappear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STAlwaysAllowListController;
  [(STAlwaysAllowListController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)willResignActive
{
  delegate = [(STAlwaysAllowListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    alwaysAllowList = [(STAlwaysAllowListController *)self alwaysAllowList];
    [delegate alwaysAllowListController:self didFinishEditingAlwaysAllowList:alwaysAllowList];
  }

  v5.receiver = self;
  v5.super_class = STAlwaysAllowListController;
  [(STAlwaysAllowListController *)&v5 willResignActive];
}

- (id)specifiers
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_21;
  }

  v5 = objc_opt_new();
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v8 = [viewModel me];

  v51 = v8;
  v52 = v6;
  if ([v8 type])
  {
    v9 = MEMORY[0x277D3FAD8];
    v10 = [v6 localizedStringForKey:@"AllowedContactsGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v11 = [v9 groupSpecifierWithName:v10];

    givenName = [v8 givenName];
    if ([v8 isRemoteUser])
    {
      if (givenName)
      {
        v13 = [v6 localizedStringForKey:@"AllowedContactsGroupSpecifierRemoteHeader" value:&stru_28766E5A8 table:0];
        v14 = v6;
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v17 = [v15 initWithFormat:v13 locale:currentLocale, givenName];

LABEL_10:
        v18 = *MEMORY[0x277D3FFA8];
        [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FFA8]];
        [v5 addObject:v11];
        v20 = MEMORY[0x277D3FAD8];
        v21 = [v14 localizedStringForKey:@"AllowedContactsSpecifierName" value:&stru_28766E5A8 table:0];
        v50 = v11;
        v22 = objc_opt_class();
        v23 = [v20 preferenceSpecifierNamed:v21 target:self set:0 get:sel__allowedContactsDuringDowntimeText_ detail:v22 cell:2 edit:objc_opt_class()];

        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        [v23 setObject:v25 forKeyedSubscript:*MEMORY[0x277D400B8]];

        [v23 setObject:&unk_28769CFB0 forKeyedSubscript:*MEMORY[0x277D401C0]];
        [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __41__STAlwaysAllowListController_specifiers__block_invoke;
        aBlock[3] = &unk_279B7CC68;
        aBlock[4] = self;
        v26 = _Block_copy(aBlock);
        v27 = _Block_copy(v26);
        [v23 setObject:v27 forKeyedSubscript:0x287675888];

        [v23 setObject:coordinator forKeyedSubscript:0x287675C48];
        [(STAlwaysAllowListController *)self setAllowedContactsSpecifier:v23];
        [v5 addObject:v23];

        v6 = v52;
        goto LABEL_11;
      }

      v19 = @"AllowedContactsGroupSpecifierRemoteGenericHeader";
    }

    else
    {
      v19 = @"AllowedContactsGroupSpecifierLocalHeader";
    }

    [v6 localizedStringForKey:v19 value:&stru_28766E5A8 table:0];
    v17 = v14 = v6;
    goto LABEL_10;
  }

  v18 = *MEMORY[0x277D3FFA8];
LABEL_11:
  v28 = MEMORY[0x277D3FAD8];
  v29 = [v6 localizedStringForKey:@"AllowedAppsGroupSpecifierName" value:&stru_28766E5A8 table:0];
  v30 = [v28 groupSpecifierWithName:v29];

  v31 = [v6 localizedStringForKey:@"AllowedAppsGroupSpecifierFooter" value:&stru_28766E5A8 table:0];
  [v30 setObject:v31 forKeyedSubscript:v18];

  [(STAlwaysAllowListController *)self setAllowedAppsGroupSpecifier:v30];
  [v5 addObject:v30];
  v32 = MEMORY[0x277D3FAD8];
  v33 = [v6 localizedStringForKey:@"ChooseAppsGroupSpecifierName" value:&stru_28766E5A8 table:0];
  v34 = [v32 groupSpecifierWithName:v33];
  [(STAlwaysAllowListController *)self setChooseAppsGroupSpecifier:v34];

  createAllowedAppsSpecifiers = [(STAlwaysAllowListController *)self createAllowedAppsSpecifiers];
  [(STAlwaysAllowListController *)self setAllowedAppsSpecifiers:createAllowedAppsSpecifiers];

  allowedAppsSpecifiers = [(STAlwaysAllowListController *)self allowedAppsSpecifiers];
  [v5 addObjectsFromArray:allowedAppsSpecifiers];

  chooseAppsGroupSpecifier = [(STAlwaysAllowListController *)self chooseAppsGroupSpecifier];
  [v5 addObject:chooseAppsGroupSpecifier];

  createChooseAppsSpecifiers = [(STAlwaysAllowListController *)self createChooseAppsSpecifiers];
  [(STAlwaysAllowListController *)self setChooseAppsSpecifiers:createChooseAppsSpecifiers];

  chooseAppsSpecifiers = [(STAlwaysAllowListController *)self chooseAppsSpecifiers];
  [v5 addObjectsFromArray:chooseAppsSpecifiers];

  alwaysAllowList = [(STAlwaysAllowListController *)self alwaysAllowList];
  LOBYTE(v33) = [alwaysAllowList shouldAllowEditing];

  if ((v33 & 1) == 0)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = v5;
    v42 = [v41 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v55;
      v45 = *MEMORY[0x277D3FF38];
      v46 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v54 + 1) + 8 * i) setObject:v46 forKeyedSubscript:v45];
        }

        v43 = [v41 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v43);
    }

    v6 = v52;
  }

  v48 = *(&self->super.super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.super.isa + v3) = v5;

  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
LABEL_21:

  return v4;
}

void __41__STAlwaysAllowListController_specifiers__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v7 = [v3 table];
    v4 = *(a1 + 32);
    v5 = [v4 allowedContactsSpecifier];
    v6 = [v4 indexPathForSpecifier:v5];
    [v3 tableView:v7 didSelectRowAtIndexPath:v6];
  }
}

- (id)_allowedContactsDuringDowntimeText:(id)text
{
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];
  downtimeCommunicationLimit = [communicationLimits downtimeCommunicationLimit];

  if (downtimeCommunicationLimit > 3)
  {
    v10 = 0;
  }

  else
  {
    v8 = off_279B7CD78[downtimeCommunicationLimit];
    v9 = +[STScreenTimeSettingsUIBundle bundle];
    v10 = [v9 localizedStringForKey:v8 value:&stru_28766E5A8 table:0];
  }

  return v10;
}

- (id)createAllowedAppsSpecifiers
{
  v24 = *MEMORY[0x277D85DE8];
  defaultAlwaysAllowBundleIDs = [MEMORY[0x277D4B928] defaultAlwaysAllowBundleIDs];
  alwaysAllowList = [(STAlwaysAllowListController *)self alwaysAllowList];
  allowedBundleIDs = [alwaysAllowList allowedBundleIDs];
  v6 = [allowedBundleIDs mutableCopy];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(defaultAlwaysAllowBundleIDs, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = defaultAlwaysAllowBundleIDs;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v6 containsObject:{v13, v19}])
        {
          [v6 removeObject:v13];
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(STAlwaysAllowListController *)self appSpecifiersForBundleIDs:v7];
  v15 = [(STAlwaysAllowListController *)self appSpecifiersForBundleIDs:v6];
  v16 = [v15 mutableCopy];

  [v16 sortUsingSelector:sel_titleCompare_];
  v17 = [v14 arrayByAddingObjectsFromArray:v16];

  return v17;
}

- (id)createChooseAppsSpecifiers
{
  chooseBundleIDs = [(STAlwaysAllowListController *)self chooseBundleIDs];
  v4 = [(STAlwaysAllowListController *)self appSpecifiersForBundleIDs:chooseBundleIDs];
  v5 = [v4 mutableCopy];

  [v5 sortUsingSelector:sel_titleCompare_];

  return v5;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v5 = [(STAlwaysAllowListController *)self indexForIndexPath:path];
  v6 = [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v5];
  userInfo = [v6 userInfo];
  v8 = [userInfo isEqualToString:@"com.apple.mobilephone"];

  return v8 ^ 1;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(STAlwaysAllowListController *)self indexForIndexPath:path];
  v6 = [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v5];
  cellType = [v6 cellType];
  userInfo = [v6 userInfo];
  v9 = userInfo;
  if (cellType == 3 && ([userInfo isEqualToString:@"com.apple.mobilephone"] & 1) == 0)
  {
    alwaysAllowList = [(STAlwaysAllowListController *)self alwaysAllowList];
    allowedBundleIDs = [alwaysAllowList allowedBundleIDs];
    v13 = [allowedBundleIDs containsObject:v9];

    if (v13)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  allowedContactsSpecifier = [(STAlwaysAllowListController *)self allowedContactsSpecifier];
  v7 = [(STAlwaysAllowListController *)self specifierAtIndexPath:pathCopy];

  return allowedContactsSpecifier == v7;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  allowedContactsSpecifier = [(STAlwaysAllowListController *)self allowedContactsSpecifier];
  v7 = [(STAlwaysAllowListController *)self specifierAtIndexPath:pathCopy];

  return allowedContactsSpecifier != v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = STAlwaysAllowListController;
  pathCopy = path;
  v7 = [(STListViewController *)&v11 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(STAlwaysAllowListController *)self allowedContactsSpecifier:v11.receiver];
  v9 = [(STAlwaysAllowListController *)self indexPathForSpecifier:v8];

  if (v9 == pathCopy)
  {
    [v7 setEditingAccessoryType:1];
  }

  return v7;
}

- (id)removeMessagesConfirmationPrompt
{
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];

  LODWORD(viewModel) = [v5 isRemoteUser];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  if (viewModel)
  {
    givenName = [v5 givenName];
    if (givenName)
    {
      v8 = givenName;
      v9 = MEMORY[0x277CCACA8];
      v10 = [v6 localizedStringForKey:@"AlwaysAllowRemoveMessagesConfirmPromptRemote" value:&stru_28766E5A8 table:0];
      v11 = [v9 localizedStringWithFormat:v10, v8];

      goto LABEL_8;
    }
  }

  else
  {
    coordinator2 = [(STPINListViewController *)self coordinator];
    viewModel2 = [coordinator2 viewModel];
    isCloudSyncEnabled = [viewModel2 isCloudSyncEnabled];

    if (!isCloudSyncEnabled)
    {
      v15 = @"AlwaysAllowRemoveMessagesConfirmPromptLocal";
      goto LABEL_7;
    }
  }

  v15 = @"AlwaysAllowRemoveMessagesConfirmPromptCloud";
LABEL_7:
  v11 = [v6 localizedStringForKey:v15 value:&stru_28766E5A8 table:0];
LABEL_8:

  return v11;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v7 = [(STAlwaysAllowListController *)self indexForIndexPath:path];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v7];
    coordinator = [(STPINListViewController *)self coordinator];
    if ([coordinator isPasscodeEnabled])
    {
      v10 = [coordinator hasAlreadyEnteredPINForSession] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    if (style == 1)
    {
      if (!v10)
      {
        [(STAlwaysAllowListController *)self _removeAllowedAppSpecifier:v8];
        goto LABEL_14;
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __78__STAlwaysAllowListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2;
      v12[3] = &unk_279B7CA40;
      v12[4] = self;
      v13 = v8;
      [(STPINListViewController *)self showPINSheet:v13 completion:v12];
      v11 = v13;
    }

    else
    {
      if (style != 2)
      {
LABEL_14:

        return;
      }

      if (!v10)
      {
        [(STAlwaysAllowListController *)self _insertAllowedAppSpecifier:v8];
        goto LABEL_14;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __78__STAlwaysAllowListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
      v14[3] = &unk_279B7CA40;
      v14[4] = self;
      v15 = v8;
      [(STPINListViewController *)self showPINSheet:v15 completion:v14];
      v11 = v15;
    }

    goto LABEL_14;
  }
}

uint64_t __78__STAlwaysAllowListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _insertAllowedAppSpecifier:*(result + 40)];
  }

  return result;
}

uint64_t __78__STAlwaysAllowListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _removeAllowedAppSpecifier:*(result + 40)];
  }

  return result;
}

- (void)_insertAllowedAppSpecifier:(id)specifier
{
  v36 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  chooseBundleIDs = [(STAlwaysAllowListController *)self chooseBundleIDs];
  v7 = [chooseBundleIDs mutableCopy];

  [v7 removeObject:identifier];
  v30 = v7;
  v8 = [v7 copy];
  [(STAlwaysAllowListController *)self setChooseBundleIDs:v8];

  chooseAppsSpecifiers = [(STAlwaysAllowListController *)self chooseAppsSpecifiers];
  v10 = [chooseAppsSpecifiers mutableCopy];

  [v10 removeObject:specifierCopy];
  [(STAlwaysAllowListController *)self setChooseAppsSpecifiers:v10];
  [(STAlwaysAllowListController *)self removeSpecifier:specifierCopy animated:1];
  alwaysAllowList = [(STAlwaysAllowListController *)self alwaysAllowList];
  allowedBundleIDs = [alwaysAllowList allowedBundleIDs];
  v13 = [allowedBundleIDs mutableCopy];

  [v13 addObject:identifier];
  v14 = [v13 copy];
  alwaysAllowList2 = [(STAlwaysAllowListController *)self alwaysAllowList];
  [alwaysAllowList2 setAllowedBundleIDs:v14];

  [(STAlwaysAllowListController *)self createAllowedAppsSpecifiers];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = v34 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v28 = v13;
    v29 = v10;
    v19 = *v32;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        identifier2 = [v21 identifier];
        v23 = [identifier2 isEqualToString:identifier];

        if (v23)
        {
          v24 = [v16 indexOfObject:v21];
          goto LABEL_11;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    v24 = 0;
LABEL_11:
    v13 = v28;
    v10 = v29;
  }

  else
  {
    v24 = 0;
  }

  allowedAppsSpecifiers = [(STAlwaysAllowListController *)self allowedAppsSpecifiers];
  v26 = [allowedAppsSpecifiers mutableCopy];

  [v26 insertObject:specifierCopy atIndex:v24];
  [(STAlwaysAllowListController *)self setAllowedAppsSpecifiers:v26];
  if (v24)
  {
    [v26 objectAtIndexedSubscript:v24 - 1];
  }

  else
  {
    [(STAlwaysAllowListController *)self allowedAppsGroupSpecifier];
  }
  v27 = ;
  [(STAlwaysAllowListController *)self insertSpecifier:specifierCopy afterSpecifier:v27 animated:1];
}

- (void)_removeAllowedAppSpecifier:(id)specifier
{
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"com.apple.MobileSMS"])
  {
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"AlwaysAllowRemoveMessagesConfirmTitle" value:&stru_28766E5A8 table:0];
    removeMessagesConfirmationPrompt = [(STAlwaysAllowListController *)self removeMessagesConfirmationPrompt];
    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:removeMessagesConfirmationPrompt preferredStyle:1];
    v10 = MEMORY[0x277D750F8];
    v11 = [v6 localizedStringForKey:@"AlwaysAllowRemove" value:&stru_28766E5A8 table:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__STAlwaysAllowListController__removeAllowedAppSpecifier___block_invoke;
    v16[3] = &unk_279B7CD58;
    v16[4] = self;
    v17 = identifier;
    v18 = specifierCopy;
    v12 = [v10 actionWithTitle:v11 style:2 handler:v16];
    [v9 addAction:v12];

    v13 = MEMORY[0x277D750F8];
    v14 = [v6 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
    v15 = [v13 actionWithTitle:v14 style:1 handler:0];
    [v9 addAction:v15];

    [(STAlwaysAllowListController *)self presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    [(STAlwaysAllowListController *)self removeAllowedIdentifier:identifier withSpecifier:specifierCopy];
  }
}

- (void)removeAllowedIdentifier:(id)identifier withSpecifier:(id)specifier
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  specifierCopy = specifier;
  alwaysAllowList = [(STAlwaysAllowListController *)self alwaysAllowList];
  allowedBundleIDs = [alwaysAllowList allowedBundleIDs];
  v10 = [allowedBundleIDs mutableCopy];

  [v10 removeObject:identifierCopy];
  v32 = v10;
  v11 = [v10 copy];
  alwaysAllowList2 = [(STAlwaysAllowListController *)self alwaysAllowList];
  [alwaysAllowList2 setAllowedBundleIDs:v11];

  allowedAppsSpecifiers = [(STAlwaysAllowListController *)self allowedAppsSpecifiers];
  v14 = [allowedAppsSpecifiers mutableCopy];

  [v14 removeObject:specifierCopy];
  [(STAlwaysAllowListController *)self setAllowedAppsSpecifiers:v14];
  [(STAlwaysAllowListController *)self removeSpecifier:specifierCopy animated:0];
  chooseBundleIDs = [(STAlwaysAllowListController *)self chooseBundleIDs];
  v16 = [chooseBundleIDs mutableCopy];

  [v16 addObject:identifierCopy];
  v17 = [v16 copy];
  [(STAlwaysAllowListController *)self setChooseBundleIDs:v17];

  [(STAlwaysAllowListController *)self createChooseAppsSpecifiers];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v36 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v30 = v16;
    v31 = v14;
    v21 = *v34;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        identifier = [v23 identifier];
        v25 = [identifier isEqualToString:identifierCopy];

        if (v25)
        {
          v26 = [v18 indexOfObject:v23];
          goto LABEL_11;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    v26 = 0;
LABEL_11:
    v16 = v30;
    v14 = v31;
  }

  else
  {
    v26 = 0;
  }

  chooseAppsSpecifiers = [(STAlwaysAllowListController *)self chooseAppsSpecifiers];
  v28 = [chooseAppsSpecifiers mutableCopy];

  [v28 insertObject:specifierCopy atIndex:v26];
  [(STAlwaysAllowListController *)self setChooseAppsSpecifiers:v28];
  if (v26)
  {
    [v28 objectAtIndexedSubscript:v26 - 1];
  }

  else
  {
    [(STAlwaysAllowListController *)self chooseAppsGroupSpecifier];
  }
  v29 = ;
  [(STAlwaysAllowListController *)self insertSpecifier:specifierCopy afterSpecifier:v29 animated:1];
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = [STScreenTimeSettingsUIBundle bundle:view];
  v5 = [v4 localizedStringForKey:@"AlwaysAllowRemove" value:&stru_28766E5A8 table:0];

  return v5;
}

- (id)appSpecifiersForBundleIDs:(id)ds
{
  v36 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = dsCopy;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    v7 = *MEMORY[0x277D4BBE0];
    v26 = *MEMORY[0x277D400B8];
    v25 = *MEMORY[0x277D401C0];
    v22 = *MEMORY[0x277D4BBC8];
    v20 = *MEMORY[0x277D40008];
    v21 = *MEMORY[0x277D40020];
    v24 = *MEMORY[0x277D3FE58];
    v8 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 isEqualToString:v7];
        mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
        v13 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:v10 localOnly:v11];

        if (v11 && [v13 source] != 2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v10;
            _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Not showing %@ because it's been deleted", buf, 0xCu);
          }
        }

        else
        {
          displayName = [v13 displayName];
          v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:0 cell:3 edit:objc_opt_class()];
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          [v15 setObject:v17 forKeyedSubscript:v26];

          [v15 setObject:&unk_28769CFB0 forKeyedSubscript:v25];
          [v15 setObject:v8 forKeyedSubscript:0x287675A28];
          [v15 setObject:v8 forKeyedSubscript:0x287675A48];
          [v15 setIdentifier:v10];
          [v15 setUserInfo:v10];
          if ([v13 source] == 2 && (objc_msgSend(v10, "isEqualToString:", v22) & 1) == 0)
          {
            [v15 setObject:v8 forKeyedSubscript:v21];
            v18 = v20;
          }

          else
          {
            [v15 setObject:objc_opt_class() forKeyedSubscript:v24];
            v18 = @"STAppBundleID";
          }

          [v15 setObject:v10 forKeyedSubscript:v18];
          [v28 addObject:v15];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);
  }

  return v28;
}

- (STAlwaysAllowListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end