@interface STUsageDetailListController
+ (id)_getDevicesDropDownMenuWithCoordinator:(id)coordinator viewController:(id)controller;
+ (id)_getUIActionForDevice:(id)device deviceIndentifier:(id)indentifier coordinator:(id)coordinator weakSelf:(id)self;
+ (void)_setSelectedDeviceIdentifier:(id)identifier coordinator:(id)coordinator;
+ (void)_setSelectedUsageReportType:(unint64_t)type user:(id)user;
+ (void)selectedUsageReportDidChangeFrom:(id)from to:(id)to datePickerBar:(id)bar coordinator:(id)coordinator;
- (BOOL)isDatePickerHidden;
- (void)_devicesDidChangeFrom:(id)from to:(id)to;
- (void)_hasUsageDataDidChange:(BOOL)change;
- (void)_isCloudSyncEnabledDidChangeFrom:(id)from to:(id)to;
- (void)_reportCoreAnalyticsEventWithUser:(id)user currentDate:(id)date calendar:(id)calendar;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCoordinator:(id)coordinator;
- (void)setDatePickerHidden:(BOOL)hidden;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation STUsageDetailListController

- (void)dealloc
{
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextUsageDetailListController"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices" context:"KVOContextUsageDetailListController"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" context:"KVOContextUsageDetailListController"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextUsageDetailListController"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" context:"KVOContextUsageDetailListController"];

  v4.receiver = self;
  v4.super_class = STUsageDetailListController;
  [(STListViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v50[7] = *MEMORY[0x277D85DE8];
  coordinator = [(STPINListViewController *)self coordinator];
  v4 = [(STUsageGroupSpecifierProvider *)STTestGroupSpecifierProvider providerWithCoordinator:coordinator];
  [(STUsageDetailListController *)self setTestProvider:v4];
  v5 = [(STUsageGroupSpecifierProvider *)STSegmentedControlGroupSpecifierProvider providerWithCoordinator:coordinator];
  [(STUsageDetailListController *)self setSegmentedControlProvider:v5];
  v6 = [(STUsageGroupSpecifierProvider *)STScreenTimeUsageGroupSpecifierProvider providerWithCoordinator:coordinator];
  [(STUsageDetailListController *)self setScreenTimeProvider:v6];
  v7 = [(STUsageGroupSpecifierProvider *)STAllowanceProgressGroupSpecifierProvider providerWithCoordinator:coordinator];
  [(STUsageDetailListController *)self setAllowancesProvider:v7];
  v8 = [(STUsageGroupSpecifierProvider *)STMostUsedGroupSpecifierProvider providerWithCoordinator:coordinator];
  [(STUsageDetailListController *)self setMostUsedProvider:v8];
  v9 = [(STUsageGroupSpecifierProvider *)STDevicePickupsUsageGroupSpecifierProvider providerWithCoordinator:coordinator];
  [(STUsageDetailListController *)self setPickupsProvider:v9];
  v46 = coordinator;
  v10 = [(STUsageGroupSpecifierProvider *)STNotificationsUsageGroupSpecifierProvider providerWithCoordinator:coordinator];
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
  coordinator2 = [(STPINListViewController *)self coordinator];
  [v14 updateWithCoordinator:coordinator2];

  [(STUsageDetailListController *)self setDatePickerBar:v14];
  view = [(STUsageDetailListController *)self view];
  [view addSubview:v14];
  if (_UISolariumEnabled())
  {
    v17 = objc_alloc(MEMORY[0x277D76220]);
    table = [(STUsageDetailListController *)self table];
    v19 = [v17 initWithScrollView:table edge:1 style:0];

    [v14 addInteraction:v19];
  }

  v37 = view;
  readableContentGuide = [view readableContentGuide];
  topAnchor = [readableContentGuide topAnchor];
  topAnchor2 = [v14 topAnchor];
  v23 = [topAnchor2 constraintEqualToAnchor:topAnchor];

  v34 = v23;
  [(STUsageDetailListController *)self setDatePickerTopConstraint:v23];
  bottomAnchor = [v14 bottomAnchor];
  v35 = topAnchor;
  v25 = [bottomAnchor constraintEqualToAnchor:topAnchor];

  [(STUsageDetailListController *)self setDatePickerBottomConstraint:v25];
  v26 = MEMORY[0x277CCAAD0];
  v49[0] = v25;
  leadingAnchor = [v14 leadingAnchor];
  leadingAnchor2 = [readableContentGuide leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[1] = v29;
  trailingAnchor = [v14 trailingAnchor];
  v36 = readableContentGuide;
  trailingAnchor2 = [readableContentGuide trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
  [v26 activateConstraints:v33];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewDidLoad", buf, 2u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = STUsageDetailListController;
  [(STUsageDetailListController *)&v12 viewWillAppear:appear];
  coordinator = [(STPINListViewController *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  [usageDetailsCoordinator startRefreshingUsageData];

  mostUsedProvider = [(STUsageDetailListController *)self mostUsedProvider];
  [mostUsedProvider refreshUsageSpecifiersWithUpdates:0];

  coordinator2 = [(STPINListViewController *)self coordinator];
  segmentedControlProvider = [(STUsageDetailListController *)self segmentedControlProvider];
  [segmentedControlProvider setCoordinator:coordinator2];

  screenTimeProvider = [(STUsageDetailListController *)self screenTimeProvider];
  groupSpecifier = [screenTimeProvider groupSpecifier];
  [(STUsageDetailListController *)self performSelector:sel_reloadSpecifier_ withObject:groupSpecifier afterDelay:0.0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewWillAppear", v11, 2u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = STUsageDetailListController;
  [(STPINListViewController *)&v24 viewDidAppear:appear];
  coordinator = [(STPINListViewController *)self coordinator];
  segmentedControlProvider = [(STUsageDetailListController *)self segmentedControlProvider];
  [segmentedControlProvider setCoordinator:coordinator];

  coordinator2 = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator2 viewModel];
  v8 = [viewModel me];

  v9 = [MEMORY[0x277CBEAA8] now];
  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  [(STUsageDetailListController *)self _reportCoreAnalyticsEventWithUser:v8 currentDate:v9 calendar:autoupdatingCurrentCalendar];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewDidAppear", buf, 2u);
  }

  v11 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/SCREEN_TIME_SUMMARY"];
  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v14 bundleURL];
  v16 = [v12 initWithKey:@"AllDevicesTitle" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v17 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v19 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL2 = [v19 bundleURL];
  v21 = [v17 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v25[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [(STUsageDetailListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v16 localizedNavigationComponents:v22 deepLink:v11];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  coordinator = [(STPINListViewController *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  [usageDetailsCoordinator stopRefreshingUsageData];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewWillDisappear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STUsageDetailListController;
  [(STUsageDetailListController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = STUsageDetailListController;
  [(STUsageDetailListController *)&v10 viewDidLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    datePickerBar = [(STUsageDetailListController *)self datePickerBar];
    layer = [datePickerBar layer];
    _barHairlineShadowColor = [MEMORY[0x277D75348] _barHairlineShadowColor];
    [layer setShadowColor:{objc_msgSend(_barHairlineShadowColor, "CGColor")}];

    [layer setShadowOffset:{0.0, 3.0}];
    LODWORD(v6) = 1050253722;
    [layer setShadowOpacity:v6];
    v7 = MEMORY[0x277D75208];
    [datePickerBar bounds];
    v8 = [v7 bezierPathWithRect:?];
    [layer setShadowPath:{objc_msgSend(v8, "CGPath")}];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STUsageDetailListController.viewDidLayoutSubviews", v9, 2u);
  }
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextUsageDetailListController"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" context:"KVOContextUsageDetailListController"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices" context:"KVOContextUsageDetailListController"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" context:"KVOContextUsageDetailListController"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextUsageDetailListController"];
  v13.receiver = self;
  v13.super_class = STUsageDetailListController;
  [(STPINListViewController *)&v13 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:5 context:"KVOContextUsageDetailListController"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" options:7 context:"KVOContextUsageDetailListController"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.devices" options:7 context:"KVOContextUsageDetailListController"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName" options:5 context:"KVOContextUsageDetailListController"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextUsageDetailListController"];
  datePickerBar = [(STUsageDetailListController *)self datePickerBar];
  [datePickerBar updateWithCoordinator:coordinatorCopy];

  segmentedControlProvider = [(STUsageDetailListController *)self segmentedControlProvider];
  [segmentedControlProvider setCoordinator:coordinatorCopy];

  screenTimeProvider = [(STUsageDetailListController *)self screenTimeProvider];
  [screenTimeProvider setCoordinator:coordinatorCopy];

  allowancesProvider = [(STUsageDetailListController *)self allowancesProvider];
  [allowancesProvider setCoordinator:coordinatorCopy];

  mostUsedProvider = [(STUsageDetailListController *)self mostUsedProvider];
  [mostUsedProvider setCoordinator:coordinatorCopy];

  pickupsProvider = [(STUsageDetailListController *)self pickupsProvider];
  [pickupsProvider setCoordinator:coordinatorCopy];

  notificationsProvider = [(STUsageDetailListController *)self notificationsProvider];
  [notificationsProvider setCoordinator:coordinatorCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextUsageDetailListController")
  {
    [(STPINListViewController *)self coordinator];

    if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      -[STUsageDetailListController _hasUsageDataDidChange:](self, "_hasUsageDataDidChange:", [v12 BOOLValue]);
    }

    else
    {
      [(STPINListViewController *)self coordinator];

      if ([pathCopy isEqualToString:@"usageDetailsCoordinator.devices"])
      {
        v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        null2 = [MEMORY[0x277CBEB68] null];

        if (v12 == null2)
        {

          v12 = 0;
        }

        v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        null3 = [MEMORY[0x277CBEB68] null];

        if (v15 == null3)
        {

          v15 = 0;
        }

        [(STUsageDetailListController *)self _devicesDidChangeFrom:v12 to:v15];
      }

      else
      {
        [(STPINListViewController *)self coordinator];

        if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedItemDisplayName"])
        {
          v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null4 = [MEMORY[0x277CBEB68] null];

          if (v12 == null4)
          {

            v12 = 0;
          }

          [(STUsageDetailListController *)self setTitle:v12];
          goto LABEL_18;
        }

        [(STPINListViewController *)self coordinator];

        if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
        {
          v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          null5 = [MEMORY[0x277CBEB68] null];

          if (v12 == null5)
          {

            v12 = 0;
          }

          v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null6 = [MEMORY[0x277CBEB68] null];

          if (v15 == null6)
          {

            v15 = 0;
          }

          v20 = objc_opt_class();
          datePickerBar = [(STUsageDetailListController *)self datePickerBar];
          coordinator = [(STPINListViewController *)self coordinator];
          [v20 selectedUsageReportDidChangeFrom:v12 to:v15 datePickerBar:datePickerBar coordinator:coordinator];
        }

        else
        {
          [(STPINListViewController *)self coordinator];

          if (![pathCopy isEqualToString:@"viewModel.isCloudSyncEnabled"])
          {
            goto LABEL_19;
          }

          v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          null7 = [MEMORY[0x277CBEB68] null];

          if (v12 == null7)
          {

            v12 = 0;
          }

          v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null8 = [MEMORY[0x277CBEB68] null];

          if (v15 == null8)
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
  [(STListViewController *)&v25 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_19:
}

- (void)_hasUsageDataDidChange:(BOOL)change
{
  changeCopy = change;
  v36[6] = *MEMORY[0x277D85DE8];
  view = [(STUsageDetailListController *)self view];
  noUsageDataView = [(STUsageDetailListController *)self noUsageDataView];
  subviews = [view subviews];
  v8 = [subviews containsObject:noUsageDataView];

  if (v8 == changeCopy)
  {
    if (changeCopy)
    {
      [noUsageDataView removeFromSuperview];
      table = [(STUsageDetailListController *)self table];
      [table setScrollEnabled:1];
    }

    else
    {
      table2 = [(STUsageDetailListController *)self table];
      [table2 setScrollEnabled:0];

      [(STUsageDetailListController *)self setDatePickerHidden:1];
      coordinator = [(STPINListViewController *)self coordinator];
      usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
      viewModel = [usageDetailsCoordinator viewModel];
      [noUsageDataView setLocalDevice:{objc_msgSend(viewModel, "isLocalDevice")}];

      [view addSubview:noUsageDataView];
      layoutMarginsGuide = [view layoutMarginsGuide];
      v26 = MEMORY[0x277CCAAD0];
      topAnchor = [noUsageDataView topAnchor];
      topAnchor2 = [view topAnchor];
      v33 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      v36[0] = v33;
      leadingAnchor = [noUsageDataView leadingAnchor];
      v30 = layoutMarginsGuide;
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v29 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      v36[1] = v29;
      bottomAnchor = [noUsageDataView bottomAnchor];
      bottomAnchor2 = [view bottomAnchor];
      v25 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      v36[2] = v25;
      trailingAnchor = [noUsageDataView trailingAnchor];
      trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
      v15 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      v36[3] = v15;
      centerXAnchor = [noUsageDataView centerXAnchor];
      centerXAnchor2 = [view centerXAnchor];
      v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v36[4] = v18;
      centerYAnchor = [noUsageDataView centerYAnchor];
      centerYAnchor2 = [view centerYAnchor];
      v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v36[5] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:6];
      [v26 activateConstraints:v22];
    }
  }
}

- (void)_devicesDidChangeFrom:(id)from to:(id)to
{
  toCopy = to;
  v9 = [from valueForKeyPath:@"identifier"];
  v7 = [toCopy valueForKeyPath:@"identifier"];

  if (([v9 isEqual:v7] & 1) == 0)
  {
    coordinator = [(STPINListViewController *)self coordinator];
    [STDevicesMenu updateWithCoordinator:coordinator viewController:self];
  }
}

- (void)_isCloudSyncEnabledDidChangeFrom:(id)from to:(id)to
{
  toCopy = to;
  LODWORD(from) = [from BOOLValue];
  bOOLValue = [toCopy BOOLValue];

  if (from != bOOLValue)
  {
    coordinator = [(STPINListViewController *)self coordinator];
    usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__STUsageDetailListController__isCloudSyncEnabledDidChangeFrom_to___block_invoke;
    v10[3] = &unk_279B7CC18;
    v10[4] = self;
    [usageDetailsCoordinator loadViewModelWithCompletionHandler:v10];
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

+ (void)selectedUsageReportDidChangeFrom:(id)from to:(id)to datePickerBar:(id)bar coordinator:(id)coordinator
{
  fromCopy = from;
  toCopy = to;
  barCopy = bar;
  coordinatorCopy = coordinator;
  if (toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    reportDateInterval = [toCopy reportDateInterval];
    startDate = [reportDateInterval startDate];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    type = [toCopy type];
    v17 = type;
    if (type == 1)
    {
      v23 = objc_opt_new();
      [v23 setFormattingContext:2];
      [v23 setLocalizedDateFormatFromTemplate:@"MMMMd"];
      v24 = [v23 stringFromDate:startDate];
      v70 = reportDateInterval;
      v72 = v23;
      v73 = v24;
      v74 = startDate;
      if ([currentCalendar isDateInToday:startDate])
      {
        v25 = +[STScreenTimeSettingsUIBundle bundle];
        rightArrowButton2 = [v25 localizedStringForKey:@"TodayScreenTimeFormat" value:&stru_28766E5A8 table:0];

        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v29 = v24;
        v30 = currentLocale;
        v31 = [v27 initWithFormat:rightArrowButton2 locale:currentLocale, v29];
        dateLabel = [barCopy dateLabel];
        [dateLabel setText:v31];

        rightArrowButton = [barCopy rightArrowButton];
        [rightArrowButton setEnabled:0];
      }

      else
      {
        if ([currentCalendar isDateInYesterday:startDate])
        {
          v35 = +[STScreenTimeSettingsUIBundle bundle];
          v36 = [v35 localizedStringForKey:@"YesterdayScreenTimeFormat" value:&stru_28766E5A8 table:0];

          v37 = objc_alloc(MEMORY[0x277CCACA8]);
          [MEMORY[0x277CBEAF8] currentLocale];
          v67 = v24;
          v69 = v38 = v36;
          currentLocale2 = [v37 initWithFormat:v36 locale:v67];
          dateLabel2 = [barCopy dateLabel];
          [dateLabel2 setText:currentLocale2];
        }

        else
        {
          v53 = [currentCalendar component:512 fromDate:startDate];
          standaloneWeekdaySymbols = [currentCalendar standaloneWeekdaySymbols];
          v68 = [standaloneWeekdaySymbols objectAtIndexedSubscript:v53 - 1];

          v55 = +[STScreenTimeSettingsUIBundle bundle];
          v56 = [v55 localizedStringForKey:@"WeekdayScreenTimeFormat" value:&stru_28766E5A8 table:0];

          v57 = objc_alloc(MEMORY[0x277CCACA8]);
          currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
          v69 = v56;
          dateLabel2 = [v57 initWithFormat:v56 locale:currentLocale2, v68, v73];
          dateLabel3 = [barCopy dateLabel];
          [dateLabel3 setText:dateLabel2];

          v38 = v68;
        }

        rightArrowButton2 = [barCopy rightArrowButton];
        [rightArrowButton2 setEnabled:1];
      }

      usageDetailsCoordinator = [coordinatorCopy usageDetailsCoordinator];
      viewModel = [usageDetailsCoordinator viewModel];

      selectedWeek = [viewModel selectedWeek];
      weekUsageReports = [viewModel weekUsageReports];
      v62 = [weekUsageReports count];

      v63 = [currentCalendar component:512 fromDate:v74];
      v64 = v62 && selectedWeek != v62 - 1 || v63 != [currentCalendar firstWeekday];
      v52 = v72;
      leftArrowButton = [barCopy leftArrowButton];
      [leftArrowButton setEnabled:v64];
      goto LABEL_26;
    }

    if (type)
    {
LABEL_27:
      viewModel2 = [coordinatorCopy viewModel];
      v66 = [viewModel2 me];
      [self _setSelectedUsageReportType:v17 user:v66];

      goto LABEL_28;
    }

    v18 = objc_opt_new();
    v19 = [currentCalendar dateByAddingUnit:0x2000 value:-1 toDate:v18 options:0];
    v70 = reportDateInterval;
    v71 = v18;
    v73 = v19;
    v74 = startDate;
    if ([currentCalendar isDate:startDate equalToDate:v18 toUnitGranularity:0x2000])
    {
      v20 = +[STScreenTimeSettingsUIBundle bundle];
      v21 = v20;
      v22 = @"DatePickerTitleThisWeek";
    }

    else
    {
      if (![currentCalendar isDate:startDate equalToDate:v19 toUnitGranularity:0x2000])
      {
        v21 = objc_opt_new();
        [v21 setDateTemplate:@"MMMMddy"];
        v34 = [v21 stringFromDateInterval:reportDateInterval];
        goto LABEL_15;
      }

      v20 = +[STScreenTimeSettingsUIBundle bundle];
      v21 = v20;
      v22 = @"DatePickerTitleLastWeek";
    }

    v34 = [v20 localizedStringForKey:v22 value:&stru_28766E5A8 table:0];
LABEL_15:
    v41 = v34;
    dateLabel4 = [barCopy dateLabel];
    [dateLabel4 setText:v41];

    usageDetailsCoordinator2 = [coordinatorCopy usageDetailsCoordinator];
    viewModel = [usageDetailsCoordinator2 viewModel];

    selectedWeek2 = [viewModel selectedWeek];
    weekUsageReports2 = [viewModel weekUsageReports];
    v47 = [weekUsageReports2 count];

    v48 = selectedWeek2 < v47 - 1 && v47 != 0;
    leftArrowButton2 = [barCopy leftArrowButton];
    [leftArrowButton2 setEnabled:v48];

    v50 = selectedWeek2 != 0;
    leftArrowButton = [barCopy rightArrowButton];
    [leftArrowButton setEnabled:v50];
    v52 = v71;
LABEL_26:

    reportDateInterval = v70;
    startDate = v74;
    goto LABEL_27;
  }

LABEL_28:
}

+ (void)_setSelectedUsageReportType:(unint64_t)type user:(id)user
{
  userCopy = user;
  if ([userCopy isRemoteUser])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    dsid = [userCopy dsid];
    [STUsageDetailsViewModelCoordinator setDefaultUsageReportType:v5 childDSID:dsid];
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [STUsageDetailsViewModelCoordinator setDefaultUsageReportTypeForLocalUser:v5];
  }
}

+ (id)_getDevicesDropDownMenuWithCoordinator:(id)coordinator viewController:(id)controller
{
  v35 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  val = controller;
  v28 = coordinatorCopy;
  usageDetailsCoordinator = [coordinatorCopy usageDetailsCoordinator];
  selectedDeviceIdentifier = [usageDetailsCoordinator selectedDeviceIdentifier];
  devices = [usageDetailsCoordinator devices];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(devices, "count")}];
  objc_initWeak(&location, val);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = devices;
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
        identifier = [v12 identifier];
        name = [v12 name];
        v15 = objc_loadWeakRetained(&location);
        v16 = [STUsageDetailListController _getUIActionForDevice:name deviceIndentifier:identifier coordinator:v28 weakSelf:v15];

        if ([selectedDeviceIdentifier isEqualToString:identifier])
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
    viewModel = [usageDetailsCoordinator viewModel];
    hasAggregateUsageData = [viewModel hasAggregateUsageData];

    if (hasAggregateUsageData)
    {
      v20 = [v17 localizedStringForKey:@"AllDevicesTitle" value:&stru_28766E5A8 table:0];
      v21 = objc_loadWeakRetained(&location);
      v22 = [STUsageDetailListController _getUIActionForDevice:v20 deviceIndentifier:0 coordinator:v28 weakSelf:v21];

      if (!selectedDeviceIdentifier)
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

+ (id)_getUIActionForDevice:(id)device deviceIndentifier:(id)indentifier coordinator:(id)coordinator weakSelf:(id)self
{
  indentifierCopy = indentifier;
  coordinatorCopy = coordinator;
  selfCopy = self;
  v12 = MEMORY[0x277D750C8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__STUsageDetailListController__getUIActionForDevice_deviceIndentifier_coordinator_weakSelf___block_invoke;
  v18[3] = &unk_279B7E4F8;
  v19 = selfCopy;
  v20 = indentifierCopy;
  v21 = coordinatorCopy;
  v13 = coordinatorCopy;
  v14 = indentifierCopy;
  v15 = selfCopy;
  v16 = [v12 actionWithTitle:device image:0 identifier:0 handler:v18];

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

+ (void)_setSelectedDeviceIdentifier:(id)identifier coordinator:(id)coordinator
{
  identifierCopy = identifier;
  coordinatorCopy = coordinator;
  usageDetailsCoordinator = [coordinatorCopy usageDetailsCoordinator];
  [usageDetailsCoordinator setSelectedDeviceIdentifier:identifierCopy];

  viewModel = [coordinatorCopy viewModel];

  v8 = [viewModel me];

  if ([v8 isRemoteUser])
  {
    dsid = [v8 dsid];
    [STUsageDetailsViewModelCoordinator setDefaultDeviceIdentifier:identifierCopy childDSID:dsid];
  }

  else
  {
    [STUsageDetailsViewModelCoordinator setDefaultDeviceIdentifierForLocalUser:identifierCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  segmentedControlProvider = [(STUsageDetailListController *)self segmentedControlProvider];
  groupSpecifier = [segmentedControlProvider groupSpecifier];
  v6 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FFB0]];

  window = [v6 window];
  if (window)
  {
    v8 = window;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v6 frame];
      MaxY = CGRectGetMaxY(v16);
      [scrollCopy contentOffset];
      v12 = v11;
      [scrollCopy adjustedContentInset];
      [(STUsageDetailListController *)self setDatePickerHidden:v12 + v13 < MaxY];
    }
  }
}

- (BOOL)isDatePickerHidden
{
  datePickerTopConstraint = [(STUsageDetailListController *)self datePickerTopConstraint];
  if ([datePickerTopConstraint isActive])
  {
    isActive = 0;
  }

  else
  {
    datePickerBottomConstraint = [(STUsageDetailListController *)self datePickerBottomConstraint];
    isActive = [datePickerBottomConstraint isActive];
  }

  return isActive;
}

- (void)setDatePickerHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(STUsageDetailListController *)self isDatePickerHidden]!= hidden)
  {
    datePickerTopConstraint = [(STUsageDetailListController *)self datePickerTopConstraint];
    [datePickerTopConstraint setActive:hiddenCopy ^ 1];

    datePickerBottomConstraint = [(STUsageDetailListController *)self datePickerBottomConstraint];
    [datePickerBottomConstraint setActive:hiddenCopy];

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
    v8 = hiddenCopy;
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

- (void)_reportCoreAnalyticsEventWithUser:(id)user currentDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  userCopy = user;
  type = [userCopy type];
  if (type > 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_264CD1B50[type];
  }

  v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ScreenTimeAgent"];
  v12 = [v11 objectForKey:@"LastViewedAllActivityDate"];
  if (!v12)
  {
    v12 = dateCopy;
  }

  [v11 setObject:dateCopy forKey:@"LastViewedAllActivityDate"];
  v13 = [calendarCopy components:16 fromDate:v12 toDate:dateCopy options:0];

  v14 = [v13 day];
  v15 = objc_alloc(MEMORY[0x277D4BAE8]);
  isManaged = [userCopy isManaged];
  isRemoteUser = [userCopy isRemoteUser];

  v18 = [v15 initWithDaysSinceLastView:v14 & ~(v14 >> 63) userAgeGroup:v10 userIsManaged:isManaged userIsRemote:isRemoteUser];
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