@interface STScreenTimeUsageGroupSpecifierProvider
- (STScreenTimeUsageGroupSpecifierProvider)init;
- (id)_usageDetailsCoordinator:(id)coordinator;
- (id)_weeklyTotal:(id)total;
- (void)_headerButtonPressed:(id)pressed;
- (void)_lastUpdatedDateDidChangeFrom:(id)from to:(id)to;
- (void)_refreshingDidChange:(BOOL)change;
- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to;
- (void)_specifierIdentifierDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STScreenTimeUsageGroupSpecifierProvider

- (STScreenTimeUsageGroupSpecifierProvider)init
{
  v17.receiver = self;
  v17.super_class = STScreenTimeUsageGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v17 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = [v3 localizedStringForKey:@"ScreenTimeGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v4];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FFA0]];

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF48]];

    [v5 setTarget:v2];
    [v5 setButtonAction:sel__headerButtonPressed_];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v5];
    v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Screen Time Summary" target:v2 set:0 get:sel__usageDetailsCoordinator_ detail:0 cell:-1 edit:0];
    [v10 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [(STScreenTimeUsageGroupSpecifierProvider *)v2 setUsageSummaryGraphSpecifier:v10];
    v11 = MEMORY[0x277D3FAD8];
    v12 = [v3 localizedStringForKey:@"WeeklyTotalSpecifierName" value:&stru_28766E5A8 table:0];
    v13 = [v11 preferenceSpecifierNamed:v12 target:v2 set:0 get:sel__weeklyTotal_ detail:0 cell:4 edit:0];

    [(STScreenTimeUsageGroupSpecifierProvider *)v2 setWeeklyTotalSpecifier:v13];
    mutableSpecifiers = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    [mutableSpecifiers addObject:v10];
    [mutableSpecifiers addObject:v13];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__specifierIdentifierDidChange_ name:0x2876743A8 object:0];
  }

  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.lastUpdatedDate" context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.refreshing" context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STScreenTimeUsageGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:7 context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.lastUpdatedDate" options:7 context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.refreshing" options:5 context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == "KVOContextScreenTimeUsageGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v12 == null)
      {

        v12 = 0;
      }

      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v12 BOOLValue] ^ 1);
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if ([pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.lastUpdatedDate"])
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

        [(STScreenTimeUsageGroupSpecifierProvider *)self _lastUpdatedDateDidChangeFrom:v12 to:v15];
      }

      else
      {
        [(STUsageGroupSpecifierProvider *)self coordinator];

        if (![pathCopy isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
        {
          [(STUsageGroupSpecifierProvider *)self coordinator];

          if (![pathCopy isEqualToString:@"usageDetailsCoordinator.refreshing"])
          {
            goto LABEL_21;
          }

          v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          null4 = [MEMORY[0x277CBEB68] null];

          if (v12 == null4)
          {

            v12 = 0;
          }

          -[STScreenTimeUsageGroupSpecifierProvider _refreshingDidChange:](self, "_refreshingDidChange:", [v12 BOOLValue]);
          goto LABEL_20;
        }

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

        [(STScreenTimeUsageGroupSpecifierProvider *)self _selectedUsageReportDidChangeFrom:v12 to:v15];
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  v20.receiver = self;
  v20.super_class = STScreenTimeUsageGroupSpecifierProvider;
  [(STScreenTimeUsageGroupSpecifierProvider *)&v20 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_21:
}

- (void)_lastUpdatedDateDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    v7 = toCopy;
    if (v7)
    {
      v8 = objc_opt_new();
      [v8 setTimeStyle:1];
      [v8 setDateStyle:2];
      [v8 setDoesRelativeDateFormatting:1];
      [v8 setFormattingContext:5];
      v9 = [v8 stringFromDate:v7];
      v10 = +[STScreenTimeSettingsUIBundle bundle];
      v11 = [v10 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v14 = [v12 initWithFormat:v11 locale:currentLocale, v9];
    }

    else
    {
      v8 = +[STScreenTimeSettingsUIBundle bundle];
      v14 = [v8 localizedStringForKey:@"NoLastUpdatedDate" value:&stru_28766E5A8 table:0];
    }

    groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
    v16 = *MEMORY[0x277D3FF88];
    v17 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
    [groupSpecifier setObject:v14 forKeyedSubscript:v16];
    if (v17)
    {
      v18 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF90]];
      [v18 reloadFromSpecifier];
    }

    else
    {
      [(STGroupSpecifierProvider *)self reloadSectionHeaderFootersWithAnimation:0];
    }
  }
}

- (void)_selectedUsageReportDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy != toCopy && ([fromCopy isEqual:toCopy] & 1) == 0)
  {
    groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
    v8 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FFB0]];
    type = [toCopy type];
    reportDateInterval = [toCopy reportDateInterval];
    startDate = [reportDateInterval startDate];

    if (!startDate)
    {
LABEL_13:
      [v8 reloadFromSpecifier];
      v20 = [fromCopy type] == type;
      usageSummaryGraphSpecifier = [(STScreenTimeUsageGroupSpecifierProvider *)self usageSummaryGraphSpecifier];
      [(STGroupSpecifierProvider *)self reloadSpecifier:usageSummaryGraphSpecifier animated:v20];
      weeklyTotalSpecifier = [(STScreenTimeUsageGroupSpecifierProvider *)self weeklyTotalSpecifier];
      mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      if ([toCopy type])
      {
        [mutableSpecifiers removeObject:weeklyTotalSpecifier];
      }

      else if ([mutableSpecifiers containsObject:weeklyTotalSpecifier])
      {
        [(STGroupSpecifierProvider *)self reloadSpecifier:weeklyTotalSpecifier animated:1];
      }

      else
      {
        [mutableSpecifiers ps_insertObject:weeklyTotalSpecifier afterObject:usageSummaryGraphSpecifier];
      }

      goto LABEL_19;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = currentCalendar;
    if (type == 1)
    {
      if (([currentCalendar isDateInToday:startDate] & 1) == 0)
      {
        v19 = +[STScreenTimeSettingsUIBundle bundle];
        v17 = [v19 localizedStringForKey:@"ShowTodayButtonText" value:&stru_28766E5A8 table:0];

        [groupSpecifier setObject:v17 forKeyedSubscript:0x287677008];
        [groupSpecifier setObject:MEMORY[0x277CBEC28] forKeyedSubscript:0x287677028];
        v18 = &unk_28769D418;
        goto LABEL_11;
      }
    }

    else
    {
      if (type)
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = objc_opt_new();
      v15 = [v13 isDate:startDate equalToDate:v14 toUnitGranularity:0x2000];

      if ((v15 & 1) == 0)
      {
        v16 = +[STScreenTimeSettingsUIBundle bundle];
        v17 = [v16 localizedStringForKey:@"ShowThisWeekButtonText" value:&stru_28766E5A8 table:0];

        [groupSpecifier setObject:v17 forKeyedSubscript:0x287677008];
        [groupSpecifier setObject:MEMORY[0x277CBEC28] forKeyedSubscript:0x287677028];
        v18 = &unk_28769D400;
LABEL_11:
        [groupSpecifier setObject:v18 forKeyedSubscript:0x287677048];

        goto LABEL_12;
      }
    }

    [groupSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287677028];
    goto LABEL_12;
  }

LABEL_19:
}

- (void)_refreshingDidChange:(BOOL)change
{
  changeCopy = change;
  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  v5 = [groupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF90]];

  if (changeCopy)
  {
    [v5 startAnimatingSpinner];
  }

  else
  {
    [v5 stopAnimatingSpinner];
  }
}

- (id)_usageDetailsCoordinator:(id)coordinator
{
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];

  return usageDetailsCoordinator;
}

- (id)_weeklyTotal:(id)total
{
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];
  selectedUsageReport = [viewModel selectedUsageReport];
  [selectedUsageReport totalScreenTime];
  v8 = v7;

  if (v8 >= 60.0)
  {
    st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
    [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
    [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
  }

  else
  {
    st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
  }

  v10 = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v8];

  return v10;
}

- (void)_headerButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  coordinator = [(STUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];

  v8 = [pressedCopy tag];
  if (v8 == 1)
  {
    [viewModel selectToday];
  }

  else if (v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STScreenTimeUsageGroupSpecifierProvider.m" lineNumber:235 description:{@"Unknown button tag: %lu", v8}];
  }

  else
  {
    [viewModel setSelectedWeek:0];
  }

  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  [groupSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287677028];
}

- (void)_specifierIdentifierDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:0x2876743C8];
  usageSummaryGraphSpecifier = [(STScreenTimeUsageGroupSpecifierProvider *)self usageSummaryGraphSpecifier];
  [usageSummaryGraphSpecifier setIdentifier:v4];
}

@end