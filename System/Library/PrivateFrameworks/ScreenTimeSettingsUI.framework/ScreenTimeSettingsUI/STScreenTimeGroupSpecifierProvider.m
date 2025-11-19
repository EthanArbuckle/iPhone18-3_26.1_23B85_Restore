@interface STScreenTimeGroupSpecifierProvider
- (STScreenTimeGroupSpecifierProvider)init;
- (id)_createScreenTimeReportControllerWithSpecifier:(id)a3;
- (id)_createUsageDetailListControllerWithSpecifier:(id)a3;
- (id)_usageDetailsCoordinator:(id)a3;
- (void)_displayNameDidChangeFrom:(id)a3 to:(id)a4;
- (void)_hasDeviceActivityDataDidChange:(BOOL)a3;
- (void)_hasWatchOSDevicesOnlyDidChange:(BOOL)a3;
- (void)_refreshingDidChange:(BOOL)a3;
- (void)_screenTimeEnabledDidChange:(BOOL)a3;
- (void)_showScreenTimeReportViewController:(id)a3;
- (void)_showUsageDetailListController:(id)a3;
- (void)_usageReportDidChangeFrom:(id)a3 to:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
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
  v20 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
  if (_os_feature_enabled_impl())
  {
    p_usageSummarySpecifier = &v2->_screenTimeReportSpecifier;
  }

  [v20 addObject:*p_usageSummarySpecifier];
  [v20 addObject:v2->_seeAllActivitySpecifier];

  return v2;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.screenTimeEnabled" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.refreshing" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"viewModel.hasWatchOSDevicesOnly" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  if (_os_feature_enabled_impl())
  {
    [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasDeviceActivityData" context:"KVOContextScreenTimeGroupSpecifierProvider"];
  }

  v6.receiver = self;
  v6.super_class = STScreenTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"viewModel.screenTimeEnabled" options:5 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport" options:7 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" options:7 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.refreshing" options:5 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"viewModel.hasWatchOSDevicesOnly" options:5 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  if (_os_feature_enabled_impl())
  {
    [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasDeviceActivityData" options:5 context:"KVOContextScreenTimeGroupSpecifierProvider"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextScreenTimeGroupSpecifierProvider")
  {
    v12 = [(STRootGroupSpecifierProvider *)self coordinator];
    if ([v10 isEqualToString:@"viewModel.screenTimeEnabled"])
    {
      v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      -[STScreenTimeGroupSpecifierProvider _screenTimeEnabledDidChange:](self, "_screenTimeEnabledDidChange:", [v13 BOOLValue]);
      goto LABEL_20;
    }

    if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedWeekUsageReport"])
    {
      v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v13 == v15)
      {

        v13 = 0;
      }

      v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v17 = [MEMORY[0x277CBEB68] null];

      if (v16 == v17)
      {

        v16 = 0;
      }

      [(STScreenTimeGroupSpecifierProvider *)self _usageReportDidChangeFrom:v13 to:v16];
    }

    else
    {
      if (![v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName"])
      {
        if ([v10 isEqualToString:@"usageDetailsCoordinator.refreshing"])
        {
          v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v20 = [MEMORY[0x277CBEB68] null];

          if (v13 == v20)
          {

            v13 = 0;
          }

          -[STScreenTimeGroupSpecifierProvider _refreshingDidChange:](self, "_refreshingDidChange:", [v13 BOOLValue]);
        }

        else if ([v10 isEqualToString:@"viewModel.hasWatchOSDevicesOnly"])
        {
          v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v21 = [MEMORY[0x277CBEB68] null];

          if (v13 == v21)
          {

            v13 = 0;
          }

          -[STScreenTimeGroupSpecifierProvider _hasWatchOSDevicesOnlyDidChange:](self, "_hasWatchOSDevicesOnlyDidChange:", [v13 BOOLValue]);
        }

        else
        {
          if (![v10 isEqualToString:@"usageDetailsCoordinator.viewModel.hasDeviceActivityData"])
          {
            goto LABEL_21;
          }

          v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v22 = [MEMORY[0x277CBEB68] null];

          if (v13 == v22)
          {

            v13 = 0;
          }

          -[STScreenTimeGroupSpecifierProvider _hasDeviceActivityDataDidChange:](self, "_hasDeviceActivityDataDidChange:", [v13 BOOLValue]);
        }

LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v18 = [MEMORY[0x277CBEB68] null];

      if (v13 == v18)
      {

        v13 = 0;
      }

      v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v19 = [MEMORY[0x277CBEB68] null];

      if (v16 == v19)
      {

        v16 = 0;
      }

      [(STScreenTimeGroupSpecifierProvider *)self _displayNameDidChangeFrom:v13 to:v16];
    }

    goto LABEL_20;
  }

  v23.receiver = self;
  v23.super_class = STScreenTimeGroupSpecifierProvider;
  [(STScreenTimeGroupSpecifierProvider *)&v23 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_22:
}

- (void)_screenTimeEnabledDidChange:(BOOL)a3
{
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  v6 = [v5 viewModel];
  v7 = [v6 hasWatchOSDevicesOnly];

  [(STGroupSpecifierProvider *)self setIsHidden:v7 & 1 | !a3];
}

- (void)_usageReportDidChangeFrom:(id)a3 to:(id)a4
{
  v24 = a3;
  v6 = a4;
  if (v6 && ([v24 isEqual:v6] & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      v7 = MEMORY[0x277D4B998];
      v8 = [v6 reportDateInterval];
      v9 = [v7 lastUpdatedDateFor:v8];
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
      v13 = [v12 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [MEMORY[0x277CBEAF8] currentLocale];
      v16 = [v14 initWithFormat:v13 locale:v15, v11];
    }

    else
    {
      v8 = [v6 lastUpdatedDate];
      if (!v8)
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
      v10 = [v9 stringFromDate:v8];
      v17 = +[STScreenTimeSettingsUIBundle bundle];
      v11 = [v17 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = [MEMORY[0x277CBEAF8] currentLocale];
      v16 = [v18 initWithFormat:v11 locale:v13, v10];
    }

LABEL_10:
LABEL_11:

    v19 = [(STGroupSpecifierProvider *)self groupSpecifier];
    v20 = *MEMORY[0x277D3FF88];
    v21 = [v19 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
    [v19 setObject:v16 forKeyedSubscript:v20];
    if (v21)
    {
      v22 = [v19 objectForKeyedSubscript:*MEMORY[0x277D3FF90]];
      [v22 reloadFromSpecifier];
    }

    else
    {
      [(STGroupSpecifierProvider *)self reloadSectionHeaderFootersWithAnimation:0];
    }

    v23 = [(STScreenTimeGroupSpecifierProvider *)self usageSummarySpecifier];
    [(STGroupSpecifierProvider *)self reloadSpecifier:v23 animated:1];
  }
}

- (void)_displayNameDidChangeFrom:(id)a3 to:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11 != v6 && ([(__CFString *)v11 isEqual:v6]& 1) == 0)
  {
    v7 = [(STGroupSpecifierProvider *)self groupSpecifier];
    v8 = v7;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = @" ";
    }

    [v7 setName:v9];
    if ([(__CFString *)v11 isEqualToString:@" "])
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

- (void)_refreshingDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(STGroupSpecifierProvider *)self groupSpecifier];
  v6 = *MEMORY[0x277D3FF88];
  v21 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];

  if (!v21)
  {
    v7 = [(STRootGroupSpecifierProvider *)self coordinator];
    v8 = [v7 usageDetailsCoordinator];
    v9 = [v8 initialUsageFetchDate];
    if (v9)
    {
      v10 = objc_opt_new();
      [v10 setTimeStyle:1];
      [v10 setDateStyle:2];
      [v10 setDoesRelativeDateFormatting:1];
      [v10 setFormattingContext:5];
      [v10 stringFromDate:v9];
      v11 = v20 = v7;
      v12 = +[STScreenTimeSettingsUIBundle bundle];
      v13 = [v12 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [MEMORY[0x277CBEAF8] currentLocale];
      v16 = [v14 initWithFormat:v13 locale:v15, v11];

      v7 = v20;
    }

    else
    {
      v10 = +[STScreenTimeSettingsUIBundle bundle];
      v16 = [v10 localizedStringForKey:@"NoLastUpdatedDate" value:&stru_28766E5A8 table:0];
    }

    v17 = [(STGroupSpecifierProvider *)self groupSpecifier];
    [v17 setObject:v16 forKeyedSubscript:v6];

    [(STGroupSpecifierProvider *)self reloadSectionHeaderFootersWithAnimation:0];
  }

  v18 = [(STGroupSpecifierProvider *)self groupSpecifier];
  v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3FF90]];

  if (v3)
  {
    [v19 startAnimatingSpinner];
  }

  else
  {
    [v19 stopAnimatingSpinner];
  }
}

- (void)_hasWatchOSDevicesOnlyDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  v6 = [v5 viewModel];
  v7 = [v6 isScreenTimeEnabled];

  [(STGroupSpecifierProvider *)self setIsHidden:v7 ^ 1 | v3];
}

- (void)_hasDeviceActivityDataDidChange:(BOOL)a3
{
  v3 = a3;
  v16 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  v5 = [(STScreenTimeGroupSpecifierProvider *)self screenTimeReportSpecifier];
  v6 = [v16 indexOfObject:v5];
  if ((((v6 == 0x7FFFFFFFFFFFFFFFLL) ^ v3) & 1) == 0)
  {
    v7 = v6;
    v8 = [(STScreenTimeGroupSpecifierProvider *)self usageSummarySpecifier];
    v9 = [(STScreenTimeGroupSpecifierProvider *)self seeAllActivitySpecifier];
    if (v3)
    {
      [v16 replaceObjectAtIndex:objc_msgSend(v16 withObject:{"indexOfObject:", v8), v5}];
      v10 = &selRef__showScreenTimeReportViewController_;
    }

    else
    {
      [v16 replaceObjectAtIndex:v7 withObject:v8];
      v10 = &selRef__showUsageDetailListController_;
    }

    [v9 setControllerLoadAction:*v10];
    v11 = [(STGroupSpecifierProvider *)self delegate];
    v12 = [v11 navigationController];

    v13 = [v12 visibleViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v14 = [v12 popViewControllerAnimated:0];
      if (v3)
      {
        [(STScreenTimeGroupSpecifierProvider *)self _createScreenTimeReportControllerWithSpecifier:v9];
      }

      else
      {
        [(STScreenTimeGroupSpecifierProvider *)self _createUsageDetailListControllerWithSpecifier:v9];
      }
      v15 = ;
      [(STGroupSpecifierProvider *)self showController:v15 animated:0];
    }
  }
}

- (id)_usageDetailsCoordinator:(id)a3
{
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  v4 = [v3 usageDetailsCoordinator];

  return v4;
}

- (void)_showUsageDetailListController:(id)a3
{
  v4 = [(STScreenTimeGroupSpecifierProvider *)self _createUsageDetailListControllerWithSpecifier:a3];
  [(STGroupSpecifierProvider *)self showController:v4 animated:1];
}

- (id)_createUsageDetailListControllerWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 setCoordinator:v6];

  v7 = [(STGroupSpecifierProvider *)self delegate];
  [v5 setParentController:v7];
  v8 = [v7 rootController];
  [v5 setRootController:v8];

  [v5 setSpecifier:v4];

  return v5;
}

- (void)_showScreenTimeReportViewController:(id)a3
{
  v4 = [(STScreenTimeGroupSpecifierProvider *)self _createScreenTimeReportControllerWithSpecifier:a3];
  [(STGroupSpecifierProvider *)self showController:v4 animated:1];
}

- (id)_createScreenTimeReportControllerWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(STScreenTimeGroupSpecifierProvider *)self reportController];
  v6 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = v6;
  if (v5)
  {
    [v5 setCoordinator:v6];
    v8 = v5;
  }

  else
  {
    v9 = [v6 usageDetailsCoordinator];
    v10 = [v9 viewModel];
    v11 = [v10 selectedItemDisplayName];

    v12 = [(STGroupSpecifierProvider *)self delegate];
    v13 = [[STScreenTimeReportController alloc] initWithTitle:v11 coordinator:v7 pinControllerDelegate:v12];
    [(STScreenTimeReportController *)v13 setParentController:v12];
    v14 = [v12 rootController];
    [(STScreenTimeReportController *)v13 setRootController:v14];

    [(STScreenTimeReportController *)v13 setSpecifier:v4];
    [(STScreenTimeGroupSpecifierProvider *)self setReportController:v13];
    v8 = v13;
  }

  return v8;
}

@end