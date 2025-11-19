@interface STUsageDetailListController
+ (id)_getDevicesDropDownMenuWithCoordinator:(id)a3 viewController:(id)a4;
+ (id)_getUIActionForDevice:(id)a3 deviceIndentifier:(id)a4 coordinator:(id)a5 weakSelf:(id)a6;
+ (void)_setSelectedDeviceIdentifier:(id)a3 coordinator:(id)a4;
+ (void)_setSelectedUsageReportType:(unint64_t)a3 user:(id)a4;
+ (void)selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4 datePickerBar:(id)a5 coordinator:(id)a6;
- (BOOL)isDatePickerHidden;
- (void)_devicesDidChangeFrom:(id)a3 to:(id)a4;
- (void)_hasUsageDataDidChange:(BOOL)a3;
- (void)_isCloudSyncEnabledDidChangeFrom:(id)a3 to:(id)a4;
- (void)_reportCoreAnalyticsEventWithUser:(id)a3 currentDate:(id)a4 calendar:(id)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollViewDidScroll:(id)a3;
- (void)setCoordinator:(id)a3;
- (void)setDatePickerHidden:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation STUsageDetailListController

- (void)dealloc
{
  v3 = [(STPINListViewController *)self coordinator];
  [v3 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextUsageDetailListController"];
  [v3 removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices" context:"KVOContextUsageDetailListController"];
  [v3 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" context:"KVOContextUsageDetailListController"];
  [v3 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextUsageDetailListController"];
  [v3 removeObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" context:"KVOContextUsageDetailListController"];

  v4.receiver = self;
  v4.super_class = STUsageDetailListController;
  [(STListViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v50[7] = *MEMORY[0x277D85DE8];
  v3 = [(STPINListViewController *)self coordinator];
  v4 = [(STUsageGroupSpecifierProvider *)STTestGroupSpecifierProvider providerWithCoordinator:v3];
  [(STUsageDetailListController *)self setTestProvider:v4];
  v5 = [(STUsageGroupSpecifierProvider *)STSegmentedControlGroupSpecifierProvider providerWithCoordinator:v3];
  [(STUsageDetailListController *)self setSegmentedControlProvider:v5];
  v6 = [(STUsageGroupSpecifierProvider *)STScreenTimeUsageGroupSpecifierProvider providerWithCoordinator:v3];
  [(STUsageDetailListController *)self setScreenTimeProvider:v6];
  v7 = [(STUsageGroupSpecifierProvider *)STAllowanceProgressGroupSpecifierProvider providerWithCoordinator:v3];
  [(STUsageDetailListController *)self setAllowancesProvider:v7];
  v8 = [(STUsageGroupSpecifierProvider *)STMostUsedGroupSpecifierProvider providerWithCoordinator:v3];
  [(STUsageDetailListController *)self setMostUsedProvider:v8];
  v9 = [(STUsageGroupSpecifierProvider *)STDevicePickupsUsageGroupSpecifierProvider providerWithCoordinator:v3];
  [(STUsageDetailListController *)self setPickupsProvider:v9];
  v46 = v3;
  v10 = [(STUsageGroupSpecifierProvider *)STNotificationsUsageGroupSpecifierProvider providerWithCoordinator:v3];
  [(STUsageDetailListController *)self setNotificationsProvider:v10];
  v44 = v5;
  v45 = v4;
  v50[0] = v4;
  v50[1] = v5;
  v42 = v7;
  v43 = v6;
  v50[2] = v6;
  v50[3] = v7;
  v40 = v9;
  v41 = v8;
  v50[4] = v8;
  v50[5] = v9;
  v39 = v10;
  v50[6] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:7];
  [(STListViewController *)self setSpecifierProviders:v11];

  v48.receiver = self;
  v48.super_class = STUsageDetailListController;
  [(STUsageDetailListController *)&v48 viewDidLoad];
  v12 = [STNoUsageDataView alloc];
  v13 = [(STNoUsageDataView *)v12 initWithPreferredFontTextStyle:*MEMORY[0x277D76918]];
  [(STNoUsageDataView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = v13;
  [(STUsageDetailListController *)self setNoUsageDataView:v13];
  v14 = objc_opt_new();
  v15 = [(STPINListViewController *)self coordinator];
  [v14 updateWithCoordinator:v15];

  [(STUsageDetailListController *)self setDatePickerBar:v14];
  v16 = [(STUsageDetailListController *)self view];
  [v16 addSubview:v14];
  if (_UISolariumEnabled())
  {
    v17 = objc_alloc(MEMORY[0x277D76220]);
    v18 = [(STUsageDetailListController *)self table];
    v19 = [v17 initWithScrollView:v18 edge:1 style:0];

    [v14 addInteraction:v19];
  }

  v37 = v16;
  v20 = [v16 readableContentGuide];
  v21 = [v20 topAnchor];
  v22 = [v14 topAnchor];
  v23 = [v22 constraintEqualToAnchor:v21];

  v34 = v23;
  [(STUsageDetailListController *)self setDatePickerTopConstraint:v23];
  v24 = [v14 bottomAnchor];
  v35 = v21;
  v25 = [v24 constraintEqualToAnchor:v21];

  [(STUsageDetailListController *)self setDatePickerBottomConstraint:v25];
  v26 = MEMORY[0x277CCAAD0];
  v49[0] = v25;
  v27 = [v14 leadingAnchor];
  v28 = [v20 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v49[1] = v29;
  v30 = [v14 trailingAnchor];
  v36 = v20;
  v31 = [v20 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v49[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
  [v26 activateConstraints:v33];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewDidLoad", buf, 2u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = STUsageDetailListController;
  [(STUsageDetailListController *)&v12 viewWillAppear:a3];
  v4 = [(STPINListViewController *)self coordinator];
  v5 = [v4 usageDetailsCoordinator];
  [v5 startRefreshingUsageData];

  v6 = [(STUsageDetailListController *)self mostUsedProvider];
  [v6 refreshUsageSpecifiersWithUpdates:0];

  v7 = [(STPINListViewController *)self coordinator];
  v8 = [(STUsageDetailListController *)self segmentedControlProvider];
  [v8 setCoordinator:v7];

  v9 = [(STUsageDetailListController *)self screenTimeProvider];
  v10 = [v9 groupSpecifier];
  [(STUsageDetailListController *)self performSelector:sel_reloadSpecifier_ withObject:v10 afterDelay:0.0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewWillAppear", v11, 2u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = STUsageDetailListController;
  [(STPINListViewController *)&v24 viewDidAppear:a3];
  v4 = [(STPINListViewController *)self coordinator];
  v5 = [(STUsageDetailListController *)self segmentedControlProvider];
  [v5 setCoordinator:v4];

  v6 = [(STPINListViewController *)self coordinator];
  v7 = [v6 viewModel];
  v8 = [v7 me];

  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  [(STUsageDetailListController *)self _reportCoreAnalyticsEventWithUser:v8 currentDate:v9 calendar:v10];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewDidAppear", buf, 2u);
  }

  v11 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/SCREEN_TIME_SUMMARY"];
  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [v14 bundleURL];
  v16 = [v12 initWithKey:@"AllDevicesTitle" table:@"Localizable" locale:v13 bundleURL:v15];

  v17 = objc_alloc(MEMORY[0x277CCAEB8]);
  v18 = [MEMORY[0x277CBEAF8] currentLocale];
  v19 = +[STScreenTimeSettingsUIBundle bundle];
  v20 = [v19 bundleURL];
  v21 = [v17 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:v18 bundleURL:v20];

  v25[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [(STUsageDetailListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v16 localizedNavigationComponents:v22 deepLink:v11];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(STPINListViewController *)self coordinator];
  v6 = [v5 usageDetailsCoordinator];
  [v6 stopRefreshingUsageData];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewWillDisappear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STUsageDetailListController;
  [(STUsageDetailListController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = STUsageDetailListController;
  [(STUsageDetailListController *)&v10 viewDidLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(STUsageDetailListController *)self datePickerBar];
    v4 = [v3 layer];
    v5 = [MEMORY[0x277D75348] _barHairlineShadowColor];
    [v4 setShadowColor:{objc_msgSend(v5, "CGColor")}];

    [v4 setShadowOffset:{0.0, 3.0}];
    LODWORD(v6) = 1050253722;
    [v4 setShadowOpacity:v6];
    v7 = MEMORY[0x277D75208];
    [v3 bounds];
    v8 = [v7 bezierPathWithRect:?];
    [v4 setShadowPath:{objc_msgSend(v8, "CGPath")}];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewDidLayoutSubviews", v9, 2u);
  }
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STPINListViewController *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextUsageDetailListController"];
  [v5 removeObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" context:"KVOContextUsageDetailListController"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices" context:"KVOContextUsageDetailListController"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" context:"KVOContextUsageDetailListController"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextUsageDetailListController"];
  v13.receiver = self;
  v13.super_class = STUsageDetailListController;
  [(STPINListViewController *)&v13 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:5 context:"KVOContextUsageDetailListController"];
  [v4 addObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" options:7 context:"KVOContextUsageDetailListController"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.devices" options:7 context:"KVOContextUsageDetailListController"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" options:5 context:"KVOContextUsageDetailListController"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextUsageDetailListController"];
  v6 = [(STUsageDetailListController *)self datePickerBar];
  [v6 updateWithCoordinator:v4];

  v7 = [(STUsageDetailListController *)self segmentedControlProvider];
  [v7 setCoordinator:v4];

  v8 = [(STUsageDetailListController *)self screenTimeProvider];
  [v8 setCoordinator:v4];

  v9 = [(STUsageDetailListController *)self allowancesProvider];
  [v9 setCoordinator:v4];

  v10 = [(STUsageDetailListController *)self mostUsedProvider];
  [v10 setCoordinator:v4];

  v11 = [(STUsageDetailListController *)self pickupsProvider];
  [v11 setCoordinator:v4];

  v12 = [(STUsageDetailListController *)self notificationsProvider];
  [v12 setCoordinator:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextUsageDetailListController")
  {
    [(STPINListViewController *)self coordinator];

    if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
    {
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v13 = [MEMORY[0x277CBEB68] null];

      if (v12 == v13)
      {

        v12 = 0;
      }

      -[STUsageDetailListController _hasUsageDataDidChange:](self, "_hasUsageDataDidChange:", [v12 BOOLValue]);
    }

    else
    {
      [(STPINListViewController *)self coordinator];

      if ([v10 isEqualToString:@"usageDetailsCoordinator.devices"])
      {
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v14 = [MEMORY[0x277CBEB68] null];

        if (v12 == v14)
        {

          v12 = 0;
        }

        v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v16 = [MEMORY[0x277CBEB68] null];

        if (v15 == v16)
        {

          v15 = 0;
        }

        [(STUsageDetailListController *)self _devicesDidChangeFrom:v12 to:v15];
      }

      else
      {
        [(STPINListViewController *)self coordinator];

        if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName"])
        {
          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v17 = [MEMORY[0x277CBEB68] null];

          if (v12 == v17)
          {

            v12 = 0;
          }

          [(STUsageDetailListController *)self setTitle:v12];
          goto LABEL_18;
        }

        [(STPINListViewController *)self coordinator];

        if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
        {
          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          v18 = [MEMORY[0x277CBEB68] null];

          if (v12 == v18)
          {

            v12 = 0;
          }

          v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v19 = [MEMORY[0x277CBEB68] null];

          if (v15 == v19)
          {

            v15 = 0;
          }

          v20 = objc_opt_class();
          v21 = [(STUsageDetailListController *)self datePickerBar];
          v22 = [(STPINListViewController *)self coordinator];
          [v20 selectedUsageReportDidChangeFrom:v12 to:v15 datePickerBar:v21 coordinator:v22];
        }

        else
        {
          [(STPINListViewController *)self coordinator];

          if (![v10 isEqualToString:@"viewModel.isCloudSyncEnabled"])
          {
            goto LABEL_19;
          }

          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          v23 = [MEMORY[0x277CBEB68] null];

          if (v12 == v23)
          {

            v12 = 0;
          }

          v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v24 = [MEMORY[0x277CBEB68] null];

          if (v15 == v24)
          {

            v15 = 0;
          }

          [(STUsageDetailListController *)self _isCloudSyncEnabledDidChangeFrom:v12 to:v15];
        }
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v25.receiver = self;
  v25.super_class = STUsageDetailListController;
  [(STListViewController *)&v25 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_19:
}

- (void)_hasUsageDataDidChange:(BOOL)a3
{
  v3 = a3;
  v36[6] = *MEMORY[0x277D85DE8];
  v5 = [(STUsageDetailListController *)self view];
  v6 = [(STUsageDetailListController *)self noUsageDataView];
  v7 = [v5 subviews];
  v8 = [v7 containsObject:v6];

  if (v8 == v3)
  {
    if (v3)
    {
      [v6 removeFromSuperview];
      v9 = [(STUsageDetailListController *)self table];
      [v9 setScrollEnabled:1];
    }

    else
    {
      v10 = [(STUsageDetailListController *)self table];
      [v10 setScrollEnabled:0];

      [(STUsageDetailListController *)self setDatePickerHidden:1];
      v11 = [(STPINListViewController *)self coordinator];
      v12 = [v11 usageDetailsCoordinator];
      v13 = [v12 viewModel];
      [v6 setLocalDevice:{objc_msgSend(v13, "isLocalDevice")}];

      [v5 addSubview:v6];
      v14 = [v5 layoutMarginsGuide];
      v26 = MEMORY[0x277CCAAD0];
      v35 = [v6 topAnchor];
      v34 = [v5 topAnchor];
      v33 = [v35 constraintGreaterThanOrEqualToAnchor:v34];
      v36[0] = v33;
      v32 = [v6 leadingAnchor];
      v30 = v14;
      v31 = [v14 leadingAnchor];
      v29 = [v32 constraintGreaterThanOrEqualToAnchor:v31];
      v36[1] = v29;
      v28 = [v6 bottomAnchor];
      v27 = [v5 bottomAnchor];
      v25 = [v28 constraintLessThanOrEqualToAnchor:v27];
      v36[2] = v25;
      v24 = [v6 trailingAnchor];
      v23 = [v14 trailingAnchor];
      v15 = [v24 constraintLessThanOrEqualToAnchor:v23];
      v36[3] = v15;
      v16 = [v6 centerXAnchor];
      v17 = [v5 centerXAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v36[4] = v18;
      v19 = [v6 centerYAnchor];
      v20 = [v5 centerYAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v36[5] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:6];
      [v26 activateConstraints:v22];
    }
  }
}

- (void)_devicesDidChangeFrom:(id)a3 to:(id)a4
{
  v6 = a4;
  v9 = [a3 valueForKeyPath:@"identifier"];
  v7 = [v6 valueForKeyPath:@"identifier"];

  if (([v9 isEqual:v7] & 1) == 0)
  {
    v8 = [(STPINListViewController *)self coordinator];
    [STDevicesMenu updateWithCoordinator:v8 viewController:self];
  }
}

- (void)_isCloudSyncEnabledDidChangeFrom:(id)a3 to:(id)a4
{
  v6 = a4;
  LODWORD(a3) = [a3 BOOLValue];
  v7 = [v6 BOOLValue];

  if (a3 != v7)
  {
    v8 = [(STPINListViewController *)self coordinator];
    v9 = [v8 usageDetailsCoordinator];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__STUsageDetailListController__isCloudSyncEnabledDidChangeFrom_to___block_invoke;
    v10[3] = &unk_279B7CC18;
    v10[4] = self;
    [v9 loadViewModelWithCompletionHandler:v10];
  }
}

void __67__STUsageDetailListController__isCloudSyncEnabledDidChangeFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __67__STUsageDetailListController__isCloudSyncEnabledDidChangeFrom_to___block_invoke_cold_1(v3);
    }
  }

  else
  {
    v4 = [*(a1 + 32) coordinator];
    [STDevicesMenu updateWithCoordinator:v4 viewController:*(a1 + 32)];
  }
}

+ (void)selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4 datePickerBar:(id)a5 coordinator:(id)a6
{
  v75 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10 && ([v75 isEqual:v10] & 1) == 0)
  {
    v13 = [v10 reportDateInterval];
    v14 = [v13 startDate];
    v15 = [MEMORY[0x277CBEA80] currentCalendar];
    v16 = [v10 type];
    v17 = v16;
    if (v16 == 1)
    {
      v23 = objc_opt_new();
      [v23 setFormattingContext:2];
      [v23 setLocalizedDateFormatFromTemplate:@"MMMMd"];
      v24 = [v23 stringFromDate:v14];
      v70 = v13;
      v72 = v23;
      v73 = v24;
      v74 = v14;
      if ([v15 isDateInToday:v14])
      {
        v25 = +[STScreenTimeSettingsUIBundle bundle];
        v26 = [v25 localizedStringForKey:@"TodayScreenTimeFormat" value:&stru_28766E5A8 table:0];

        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        v28 = [MEMORY[0x277CBEAF8] currentLocale];
        v29 = v24;
        v30 = v28;
        v31 = [v27 initWithFormat:v26 locale:v28, v29];
        v32 = [v11 dateLabel];
        [v32 setText:v31];

        v33 = [v11 rightArrowButton];
        [v33 setEnabled:0];
      }

      else
      {
        if ([v15 isDateInYesterday:v14])
        {
          v35 = +[STScreenTimeSettingsUIBundle bundle];
          v36 = [v35 localizedStringForKey:@"YesterdayScreenTimeFormat" value:&stru_28766E5A8 table:0];

          v37 = objc_alloc(MEMORY[0x277CCACA8]);
          [MEMORY[0x277CBEAF8] currentLocale];
          v67 = v24;
          v69 = v38 = v36;
          v39 = [v37 initWithFormat:v36 locale:v67];
          v40 = [v11 dateLabel];
          [v40 setText:v39];
        }

        else
        {
          v53 = [v15 component:512 fromDate:v14];
          v54 = [v15 standaloneWeekdaySymbols];
          v68 = [v54 objectAtIndexedSubscript:v53 - 1];

          v55 = +[STScreenTimeSettingsUIBundle bundle];
          v56 = [v55 localizedStringForKey:@"WeekdayScreenTimeFormat" value:&stru_28766E5A8 table:0];

          v57 = objc_alloc(MEMORY[0x277CCACA8]);
          v39 = [MEMORY[0x277CBEAF8] currentLocale];
          v69 = v56;
          v40 = [v57 initWithFormat:v56 locale:v39, v68, v73];
          v58 = [v11 dateLabel];
          [v58 setText:v40];

          v38 = v68;
        }

        v26 = [v11 rightArrowButton];
        [v26 setEnabled:1];
      }

      v59 = [v12 usageDetailsCoordinator];
      v44 = [v59 viewModel];

      v60 = [v44 selectedWeek];
      v61 = [v44 weekUsageReports];
      v62 = [v61 count];

      v63 = [v15 component:512 fromDate:v74];
      v64 = v62 && v60 != v62 - 1 || v63 != [v15 firstWeekday];
      v52 = v72;
      v51 = [v11 leftArrowButton];
      [v51 setEnabled:v64];
      goto LABEL_26;
    }

    if (v16)
    {
LABEL_27:
      v65 = [v12 viewModel];
      v66 = [v65 me];
      [a1 _setSelectedUsageReportType:v17 user:v66];

      goto LABEL_28;
    }

    v18 = objc_opt_new();
    v19 = [v15 dateByAddingUnit:0x2000 value:-1 toDate:v18 options:0];
    v70 = v13;
    v71 = v18;
    v73 = v19;
    v74 = v14;
    if ([v15 isDate:v14 equalToDate:v18 toUnitGranularity:0x2000])
    {
      v20 = +[STScreenTimeSettingsUIBundle bundle];
      v21 = v20;
      v22 = @"DatePickerTitleThisWeek";
    }

    else
    {
      if (![v15 isDate:v14 equalToDate:v19 toUnitGranularity:0x2000])
      {
        v21 = objc_opt_new();
        [v21 setDateTemplate:@"MMMMddy"];
        v34 = [v21 stringFromDateInterval:v13];
        goto LABEL_15;
      }

      v20 = +[STScreenTimeSettingsUIBundle bundle];
      v21 = v20;
      v22 = @"DatePickerTitleLastWeek";
    }

    v34 = [v20 localizedStringForKey:v22 value:&stru_28766E5A8 table:0];
LABEL_15:
    v41 = v34;
    v42 = [v11 dateLabel];
    [v42 setText:v41];

    v43 = [v12 usageDetailsCoordinator];
    v44 = [v43 viewModel];

    v45 = [v44 selectedWeek];
    v46 = [v44 weekUsageReports];
    v47 = [v46 count];

    v48 = v45 < v47 - 1 && v47 != 0;
    v49 = [v11 leftArrowButton];
    [v49 setEnabled:v48];

    v50 = v45 != 0;
    v51 = [v11 rightArrowButton];
    [v51 setEnabled:v50];
    v52 = v71;
LABEL_26:

    v13 = v70;
    v14 = v74;
    goto LABEL_27;
  }

LABEL_28:
}

+ (void)_setSelectedUsageReportType:(unint64_t)a3 user:(id)a4
{
  v7 = a4;
  if ([v7 isRemoteUser])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v6 = [v7 dsid];
    [STUsageDetailsViewModelCoordinator setDefaultUsageReportType:v5 childDSID:v6];
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [STUsageDetailsViewModelCoordinator setDefaultUsageReportTypeForLocalUser:v5];
  }
}

+ (id)_getDevicesDropDownMenuWithCoordinator:(id)a3 viewController:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  val = a4;
  v28 = v5;
  v26 = [v5 usageDetailsCoordinator];
  v6 = [v26 selectedDeviceIdentifier];
  v7 = [v26 devices];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  objc_initWeak(&location, val);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v12 name];
        v15 = objc_loadWeakRetained(&location);
        v16 = [STUsageDetailListController _getUIActionForDevice:v14 deviceIndentifier:v13 coordinator:v28 weakSelf:v15];

        if ([v6 isEqualToString:v13])
        {
          [v16 setState:1];
        }

        [v8 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v17 = +[STScreenTimeSettingsUIBundle bundle];
  if ([obj count] >= 2)
  {
    v18 = [v26 viewModel];
    v19 = [v18 hasAggregateUsageData];

    if (v19)
    {
      v20 = [v17 localizedStringForKey:@"AllDevicesTitle" value:&stru_28766E5A8 table:0];
      v21 = objc_loadWeakRetained(&location);
      v22 = [STUsageDetailListController _getUIActionForDevice:v20 deviceIndentifier:0 coordinator:v28 weakSelf:v21];

      if (!v6)
      {
        [v22 setState:1];
      }

      [v8 addObject:v22];
    }
  }

  v23 = [MEMORY[0x277D75710] menuWithChildren:v8];

  objc_destroyWeak(&location);

  return v23;
}

+ (id)_getUIActionForDevice:(id)a3 deviceIndentifier:(id)a4 coordinator:(id)a5 weakSelf:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277D750C8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__STUsageDetailListController__getUIActionForDevice_deviceIndentifier_coordinator_weakSelf___block_invoke;
  v18[3] = &unk_279B7E4F8;
  v19 = v11;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = [v12 actionWithTitle:a3 image:0 identifier:0 handler:v18];

  return v16;
}

void __92__STUsageDetailListController__getUIActionForDevice_deviceIndentifier_coordinator_weakSelf___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = v1;
    [STUsageDetailListController _setSelectedDeviceIdentifier:v3 coordinator:v4];
    v8 = [STUsageDetailListController _getDevicesDropDownMenuWithCoordinator:a1[6] viewController:a1[4]];
    v6 = [v5 navigationItem];

    v7 = [v6 rightBarButtonItem];
    [v7 setMenu:v8];
  }
}

+ (void)_setSelectedDeviceIdentifier:(id)a3 coordinator:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v5 usageDetailsCoordinator];
  [v6 setSelectedDeviceIdentifier:v10];

  v7 = [v5 viewModel];

  v8 = [v7 me];

  if ([v8 isRemoteUser])
  {
    v9 = [v8 dsid];
    [STUsageDetailsViewModelCoordinator setDefaultDeviceIdentifier:v10 childDSID:v9];
  }

  else
  {
    [STUsageDetailsViewModelCoordinator setDefaultDeviceIdentifierForLocalUser:v10];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v14 = a3;
  v4 = [(STUsageDetailListController *)self segmentedControlProvider];
  v5 = [v4 groupSpecifier];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3FFB0]];

  v7 = [v6 window];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v6 frame];
      MaxY = CGRectGetMaxY(v16);
      [v14 contentOffset];
      v12 = v11;
      [v14 adjustedContentInset];
      [(STUsageDetailListController *)self setDatePickerHidden:v12 + v13 < MaxY];
    }
  }
}

- (BOOL)isDatePickerHidden
{
  v3 = [(STUsageDetailListController *)self datePickerTopConstraint];
  if ([v3 isActive])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(STUsageDetailListController *)self datePickerBottomConstraint];
    v4 = [v5 isActive];
  }

  return v4;
}

- (void)setDatePickerHidden:(BOOL)a3
{
  v3 = a3;
  if ([(STUsageDetailListController *)self isDatePickerHidden]!= a3)
  {
    v5 = [(STUsageDetailListController *)self datePickerTopConstraint];
    [v5 setActive:v3 ^ 1];

    v6 = [(STUsageDetailListController *)self datePickerBottomConstraint];
    [v6 setActive:v3];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__STUsageDetailListController_setDatePickerHidden___block_invoke;
    v9[3] = &unk_279B7C998;
    v9[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v9 options:0 animations:0.6 completion:0.0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__STUsageDetailListController_setDatePickerHidden___block_invoke_2;
    v7[3] = &unk_279B7CF70;
    v7[4] = self;
    v8 = v3;
    [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v7 options:0 animations:0.2 completion:0.0];
  }
}

void __51__STUsageDetailListController_setDatePickerHidden___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void __51__STUsageDetailListController_setDatePickerHidden___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) datePickerBar];
  [v2 setAlpha:v1];
}

- (void)_reportCoreAnalyticsEventWithUser:(id)a3 currentDate:(id)a4 calendar:(id)a5
{
  v19 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [v8 type];
  if (v9 > 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_264CD1B50[v9];
  }

  v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ScreenTimeAgent"];
  v12 = [v11 objectForKey:@"LastViewedAllActivityDate"];
  if (!v12)
  {
    v12 = v19;
  }

  [v11 setObject:v19 forKey:@"LastViewedAllActivityDate"];
  v13 = [v7 components:16 fromDate:v12 toDate:v19 options:0];

  v14 = [v13 day];
  v15 = objc_alloc(MEMORY[0x277D4BAE8]);
  v16 = [v8 isManaged];
  v17 = [v8 isRemoteUser];

  v18 = [v15 initWithDaysSinceLastView:v14 & ~(v14 >> 63) userAgeGroup:v10 userIsManaged:v16 userIsRemote:v17];
  [MEMORY[0x277D4B970] reportEvent:v18];
}

void __67__STUsageDetailListController__isCloudSyncEnabledDidChangeFrom_to___block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error isCloudSyncEnabledDidChangeFrom: %@", &v1, 0xCu);
}

@end