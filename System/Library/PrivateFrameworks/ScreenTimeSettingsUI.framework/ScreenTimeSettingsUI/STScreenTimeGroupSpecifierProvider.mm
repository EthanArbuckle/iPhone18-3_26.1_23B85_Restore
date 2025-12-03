@interface STScreenTimeGroupSpecifierProvider
- (STScreenTimeGroupSpecifierProvider)init;
- (id)_createScreenTimeReportControllerWithSpecifier:(id)specifier;
- (id)_createUsageDetailListControllerWithSpecifier:(id)specifier;
- (id)_usageDetailsCoordinator:(id)coordinator;
- (void)_displayNameDidChangeFrom:(id)from to:(id)to;
- (void)_hasDeviceActivityDataDidChange:(BOOL)change;
- (void)_hasWatchOSDevicesOnlyDidChange:(BOOL)change;
- (void)_refreshingDidChange:(BOOL)change;
- (void)_screenTimeEnabledDidChange:(BOOL)change;
- (void)_showScreenTimeReportViewController:(id)controller;
- (void)_showUsageDetailListController:(id)controller;
- (void)_usageReportDidChangeFrom:(id)from to:(id)to;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STScreenTimeGroupSpecifierProvider

- (STScreenTimeGroupSpecifierProvider)init
{
  v22.receiver = self;
  v22.super_class = STScreenTimeGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v22 init];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:@" "];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF48]];

  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v4];
  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v2 set:0 get:sel__usageDetailsCoordinator_ detail:0 cell:-1 edit:0];
  p_usageSummarySpecifier = &v2->_usageSummarySpecifier;
  usageSummarySpecifier = v2->_usageSummarySpecifier;
  v2->_usageSummarySpecifier = v7;

  v10 = objc_opt_class();
  v11 = *MEMORY[0x277D3FE58];
  [(PSSpecifier *)v2->_usageSummarySpecifier setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v12 = *MEMORY[0x277D3FF38];
  [(PSSpecifier *)v2->_usageSummarySpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  if (_os_feature_enabled_impl())
  {
    v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v2 set:0 get:sel__rootViewModelCoordinator_ detail:0 cell:-1 edit:0];
    screenTimeReportSpecifier = v2->_screenTimeReportSpecifier;
    v2->_screenTimeReportSpecifier = v13;

    [(PSSpecifier *)v2->_screenTimeReportSpecifier setObject:objc_opt_class() forKeyedSubscript:v11];
    [(PSSpecifier *)v2->_screenTimeReportSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
    [(PSSpecifier *)v2->_screenTimeReportSpecifier setControllerLoadAction:sel__showScreenTimeReportViewController_];
  }

  v15 = [v3 localizedStringForKey:@"SeeAllAppAndWebsiteActivityControlTitle" value:&stru_28766E5A8 table:0];
  v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v15 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
  seeAllActivitySpecifier = v2->_seeAllActivitySpecifier;
  v2->_seeAllActivitySpecifier = v16;

  [(PSSpecifier *)v2->_seeAllActivitySpecifier setIdentifier:@"SCREEN_TIME_SUMMARY"];
  v18 = _os_feature_enabled_impl();
  v19 = &selRef__showScreenTimeReportViewController_;
  if (!v18)
  {
    v19 = &selRef__showUsageDetailListController_;
  }

  [(PSSpecifier *)v2->_seeAllActivitySpecifier setControllerLoadAction:*v19];
  mutableSpecifiers = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
  if (_os_feature_enabled_impl())
  {
    p_usageSummarySpecifier = &v2->_screenTimeReportSpecifier;
  }

  [mutableSpecifiers addObject:*p_usageSummarySpecifier];
  [mutableSpecifiers addObject:v2->_seeAllActivitySpecifier];

  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.screenTimeEnabled" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.refreshing" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.hasWatchOSDevicesOnly" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  if (_os_feature_enabled_impl())
  {
    [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasDeviceActivityData" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  }

  v6.receiver = self;
  v6.super_class = STScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.screenTimeEnabled" options:5 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" options:7 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" options:7 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.refreshing" options:5 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.hasWatchOSDevicesOnly" options:5 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  if (_os_feature_enabled_impl())
  {
    [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasDeviceActivityData" options:5 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextScreenTimeGroupSpecifierProvider")
  {
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    if ([pathCopy isEqualToString:@"viewModel.screenTimeEnabled"])
    {
      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v13 == null)
      {

        v13 = 0;
      }

      -[STScreenTimeGroupSpecifierProvider _screenTimeEnabledDidChange:](self, "_screenTimeEnabledDidChange:", [v13 BOOLValue]);
      goto LABEL_20;
    }

    if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport"])
    {
      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v13 == null2)
      {

        v13 = 0;
      }

      v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null3 = [MEMORY[0x277CBEB68] null];

      if (v16 == null3)
      {

        v16 = 0;
      }

      [(STScreenTimeGroupSpecifierProvider *)self _usageReportDidChangeFrom:v13 to:v16];
    }

    else
    {
      if (![pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName"])
      {
        if ([pathCopy isEqualToString:@"usageDetailsCoordinator.refreshing"])
        {
          v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null4 = [MEMORY[0x277CBEB68] null];

          if (v13 == null4)
          {

            v13 = 0;
          }

          -[STScreenTimeGroupSpecifierProvider _refreshingDidChange:](self, "_refreshingDidChange:", [v13 BOOLValue]);
        }

        else if ([pathCopy isEqualToString:@"viewModel.hasWatchOSDevicesOnly"])
        {
          v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null5 = [MEMORY[0x277CBEB68] null];

          if (v13 == null5)
          {

            v13 = 0;
          }

          -[STScreenTimeGroupSpecifierProvider _hasWatchOSDevicesOnlyDidChange:](self, "_hasWatchOSDevicesOnlyDidChange:", [v13 BOOLValue]);
        }

        else
        {
          if (![pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.hasDeviceActivityData"])
          {
            goto LABEL_21;
          }

          v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null6 = [MEMORY[0x277CBEB68] null];

          if (v13 == null6)
          {

            v13 = 0;
          }

          -[STScreenTimeGroupSpecifierProvider _hasDeviceActivityDataDidChange:](self, "_hasDeviceActivityDataDidChange:", [v13 BOOLValue]);
        }

LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null7 = [MEMORY[0x277CBEB68] null];

      if (v13 == null7)
      {

        v13 = 0;
      }

      v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null8 = [MEMORY[0x277CBEB68] null];

      if (v16 == null8)
      {

        v16 = 0;
      }

      [(STScreenTimeGroupSpecifierProvider *)self _displayNameDidChangeFrom:v13 to:v16];
    }

    goto LABEL_20;
  }

  v23.receiver = self;
  v23.super_class = STScreenTimeGroupSpecifierProvider;
  [(STScreenTimeGroupSpecifierProvider *)&v23 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_22:
}

- (void)_screenTimeEnabledDidChange:(BOOL)change
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  hasWatchOSDevicesOnly = [viewModel hasWatchOSDevicesOnly];

  [(STGroupSpecifierProvider *)self setIsHidden:hasWatchOSDevicesOnly & 1 | !change];
}

- (void)_usageReportDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      v7 = MEMORY[0x277D4B998];
      reportDateInterval = [toCopy reportDateInterval];
      v9 = [v7 lastUpdatedDateFor:reportDateInterval];
      if (!v9)
      {
        v10 = +[STScreenTimeSettingsUIBundle bundle];
        v16 = [v10 localizedStringForKey:@"NoLastUpdatedDate" value:&stru_28766E5A8 table:0];
        goto LABEL_10;
      }

      v10 = objc_opt_new();
      [v10 setTimeStyle:1];
      [v10 setDateStyle:2];
      [v10 setDoesRelativeDateFormatting:1];
      [v10 setFormattingContext:5];
      v11 = [v10 stringFromDate:v9];
      v12 = +[STScreenTimeSettingsUIBundle bundle];
      currentLocale2 = [v12 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v16 = [v14 initWithFormat:currentLocale2 locale:currentLocale, v11];
    }

    else
    {
      reportDateInterval = [toCopy lastUpdatedDate];
      if (!reportDateInterval)
      {
        v9 = +[STScreenTimeSettingsUIBundle bundle];
        v16 = [v9 localizedStringForKey:@"NoLastUpdatedDate" value:&stru_28766E5A8 table:0];
        goto LABEL_11;
      }

      v9 = objc_opt_new();
      [v9 setTimeStyle:1];
      [v9 setDateStyle:2];
      [v9 setDoesRelativeDateFormatting:1];
      [v9 setFormattingContext:5];
      v10 = [v9 stringFromDate:reportDateInterval];
      v17 = +[STScreenTimeSettingsUIBundle bundle];
      v11 = [v17 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      v16 = [v18 initWithFormat:v11 locale:currentLocale2, v10];
    }

LABEL_10:
LABEL_11:

    groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
    v20 = *MEMORY[0x277D3FF88];
    v21 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
    [groupSpecifier setObject:v16 forKeyedSubscript:v20];
    if (v21)
    {
      v22 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF90]];
      [v22 reloadFromSpecifier];
    }

    else
    {
      [(STGroupSpecifierProvider *)self reloadSectionHeaderFootersWithAnimation:0];
    }

    usageSummarySpecifier = [(STScreenTimeGroupSpecifierProvider *)self usageSummarySpecifier];
    [(STGroupSpecifierProvider *)self reloadSpecifier:usageSummarySpecifier animated:1];
  }
}

- (void)_displayNameDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy && ([(__CFString *)fromCopy isEqual:toCopy]& 1) == 0)
  {
    groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
    v8 = groupSpecifier;
    if (toCopy)
    {
      v9 = toCopy;
    }

    else
    {
      v9 = @" ";
    }

    [groupSpecifier setName:v9];
    if ([(__CFString *)fromCopy isEqualToString:@" "])
    {
      v10 = 5;
    }

    else
    {
      v10 = 0;
    }

    [(STGroupSpecifierProvider *)self reloadSectionHeaderFootersWithAnimation:v10];
  }
}

- (void)_refreshingDidChange:(BOOL)change
{
  changeCopy = change;
  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  v6 = *MEMORY[0x277D3FF88];
  v21 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];

  if (!v21)
  {
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
    initialUsageFetchDate = [usageDetailsCoordinator initialUsageFetchDate];
    if (initialUsageFetchDate)
    {
      v10 = objc_opt_new();
      [v10 setTimeStyle:1];
      [v10 setDateStyle:2];
      [v10 setDoesRelativeDateFormatting:1];
      [v10 setFormattingContext:5];
      [v10 stringFromDate:initialUsageFetchDate];
      v11 = v20 = coordinator;
      v12 = +[STScreenTimeSettingsUIBundle bundle];
      v13 = [v12 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v16 = [v14 initWithFormat:v13 locale:currentLocale, v11];

      coordinator = v20;
    }

    else
    {
      v10 = +[STScreenTimeSettingsUIBundle bundle];
      v16 = [v10 localizedStringForKey:@"NoLastUpdatedDate" value:&stru_28766E5A8 table:0];
    }

    groupSpecifier2 = [(STGroupSpecifierProvider *)self groupSpecifier];
    [groupSpecifier2 setObject:v16 forKeyedSubscript:v6];

    [(STGroupSpecifierProvider *)self reloadSectionHeaderFootersWithAnimation:0];
  }

  groupSpecifier3 = [(STGroupSpecifierProvider *)self groupSpecifier];
  v19 = [groupSpecifier3 objectForKeyedSubscript:*MEMORY[0x277D3FF90]];

  if (changeCopy)
  {
    [v19 startAnimatingSpinner];
  }

  else
  {
    [v19 stopAnimatingSpinner];
  }
}

- (void)_hasWatchOSDevicesOnlyDidChange:(BOOL)change
{
  changeCopy = change;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  isScreenTimeEnabled = [viewModel isScreenTimeEnabled];

  [(STGroupSpecifierProvider *)self setIsHidden:isScreenTimeEnabled ^ 1 | changeCopy];
}

- (void)_hasDeviceActivityDataDidChange:(BOOL)change
{
  changeCopy = change;
  mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  screenTimeReportSpecifier = [(STScreenTimeGroupSpecifierProvider *)self screenTimeReportSpecifier];
  v6 = [mutableSpecifiers indexOfObject:screenTimeReportSpecifier];
  if ((((v6 == 0x7FFFFFFFFFFFFFFFLL) ^ changeCopy) & 1) == 0)
  {
    v7 = v6;
    usageSummarySpecifier = [(STScreenTimeGroupSpecifierProvider *)self usageSummarySpecifier];
    seeAllActivitySpecifier = [(STScreenTimeGroupSpecifierProvider *)self seeAllActivitySpecifier];
    if (changeCopy)
    {
      [mutableSpecifiers replaceObjectAtIndex:objc_msgSend(mutableSpecifiers withObject:{"indexOfObject:", usageSummarySpecifier), screenTimeReportSpecifier}];
      v10 = &selRef__showScreenTimeReportViewController_;
    }

    else
    {
      [mutableSpecifiers replaceObjectAtIndex:v7 withObject:usageSummarySpecifier];
      v10 = &selRef__showUsageDetailListController_;
    }

    [seeAllActivitySpecifier setControllerLoadAction:*v10];
    delegate = [(STGroupSpecifierProvider *)self delegate];
    navigationController = [delegate navigationController];

    visibleViewController = [navigationController visibleViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v14 = [navigationController popViewControllerAnimated:0];
      if (changeCopy)
      {
        [(STScreenTimeGroupSpecifierProvider *)self _createScreenTimeReportControllerWithSpecifier:seeAllActivitySpecifier];
      }

      else
      {
        [(STScreenTimeGroupSpecifierProvider *)self _createUsageDetailListControllerWithSpecifier:seeAllActivitySpecifier];
      }
      v15 = ;
      [(STGroupSpecifierProvider *)self showController:v15 animated:0];
    }
  }
}

- (id)_usageDetailsCoordinator:(id)coordinator
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];

  return usageDetailsCoordinator;
}

- (void)_showUsageDetailListController:(id)controller
{
  v4 = [(STScreenTimeGroupSpecifierProvider *)self _createUsageDetailListControllerWithSpecifier:controller];
  [(STGroupSpecifierProvider *)self showController:v4 animated:1];
}

- (id)_createUsageDetailListControllerWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_opt_new();
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 setCoordinator:coordinator];

  delegate = [(STGroupSpecifierProvider *)self delegate];
  [v5 setParentController:delegate];
  rootController = [delegate rootController];
  [v5 setRootController:rootController];

  [v5 setSpecifier:specifierCopy];

  return v5;
}

- (void)_showScreenTimeReportViewController:(id)controller
{
  v4 = [(STScreenTimeGroupSpecifierProvider *)self _createScreenTimeReportControllerWithSpecifier:controller];
  [(STGroupSpecifierProvider *)self showController:v4 animated:1];
}

- (id)_createScreenTimeReportControllerWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  reportController = [(STScreenTimeGroupSpecifierProvider *)self reportController];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = coordinator;
  if (reportController)
  {
    [reportController setCoordinator:coordinator];
    v8 = reportController;
  }

  else
  {
    usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
    viewModel = [usageDetailsCoordinator viewModel];
    selectedItemDisplayName = [viewModel selectedItemDisplayName];

    delegate = [(STGroupSpecifierProvider *)self delegate];
    v13 = [[STScreenTimeReportController alloc] initWithTitle:selectedItemDisplayName coordinator:v7 pinControllerDelegate:delegate];
    [(STScreenTimeReportController *)v13 setParentController:delegate];
    rootController = [delegate rootController];
    [(STScreenTimeReportController *)v13 setRootController:rootController];

    [(STScreenTimeReportController *)v13 setSpecifier:specifierCopy];
    [(STScreenTimeGroupSpecifierProvider *)self setReportController:v13];
    v8 = v13;
  }

  return v8;
}

@end