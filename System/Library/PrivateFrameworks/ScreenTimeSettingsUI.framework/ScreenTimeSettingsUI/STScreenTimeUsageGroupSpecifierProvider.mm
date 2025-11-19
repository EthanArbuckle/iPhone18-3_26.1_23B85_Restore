@interface STScreenTimeUsageGroupSpecifierProvider
- (STScreenTimeUsageGroupSpecifierProvider)init;
- (id)_usageDetailsCoordinator:(id)a3;
- (id)_weeklyTotal:(id)a3;
- (void)_headerButtonPressed:(id)a3;
- (void)_lastUpdatedDateDidChangeFrom:(id)a3 to:(id)a4;
- (void)_refreshingDidChange:(BOOL)a3;
- (void)_selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4;
- (void)_specifierIdentifierDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
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
    v14 = [(STGroupSpecifierProvider *)v2 mutableSpecifiers];
    [v14 addObject:v10];
    [v14 addObject:v13];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v2 selector:sel__specifierIdentifierDidChange_ name:0x2876743A8 object:0];
  }

  return v2;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STUsageGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.lastUpdatedDate" context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.refreshing" context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  v6.receiver = self;
  v6.super_class = STScreenTimeUsageGroupSpecifierProvider;
  [(STUsageGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.hasUsageData" options:7 context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.lastUpdatedDate" options:7 context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.viewModel.selectedUsageReport" options:7 context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.refreshing" options:5 context:"KVOContextScreenTimeUsageGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == "KVOContextScreenTimeUsageGroupSpecifierProvider")
  {
    [(STUsageGroupSpecifierProvider *)self coordinator];

    if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.hasUsageData"])
    {
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v13 = [MEMORY[0x277CBEB68] null];

      if (v12 == v13)
      {

        v12 = 0;
      }

      -[STGroupSpecifierProvider setIsHidden:](self, "setIsHidden:", [v12 BOOLValue] ^ 1);
    }

    else
    {
      [(STUsageGroupSpecifierProvider *)self coordinator];

      if ([v10 isEqualToString:@"usageDetailsCoordinator.viewModel.lastUpdatedDate"])
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

        [(STScreenTimeUsageGroupSpecifierProvider *)self _lastUpdatedDateDidChangeFrom:v12 to:v15];
      }

      else
      {
        [(STUsageGroupSpecifierProvider *)self coordinator];

        if (![v10 isEqualToString:@"usageDetailsCoordinator.viewModel.selectedUsageReport"])
        {
          [(STUsageGroupSpecifierProvider *)self coordinator];

          if (![v10 isEqualToString:@"usageDetailsCoordinator.refreshing"])
          {
            goto LABEL_21;
          }

          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v19 = [MEMORY[0x277CBEB68] null];

          if (v12 == v19)
          {

            v12 = 0;
          }

          -[STScreenTimeUsageGroupSpecifierProvider _refreshingDidChange:](self, "_refreshingDidChange:", [v12 BOOLValue]);
          goto LABEL_20;
        }

        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v17 = [MEMORY[0x277CBEB68] null];

        if (v12 == v17)
        {

          v12 = 0;
        }

        v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v18 = [MEMORY[0x277CBEB68] null];

        if (v15 == v18)
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
  [(STScreenTimeUsageGroupSpecifierProvider *)&v20 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_21:
}

- (void)_lastUpdatedDateDidChangeFrom:(id)a3 to:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (v19 != v6 && ([v19 isEqual:v6] & 1) == 0)
  {
    v7 = v6;
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
      v13 = [MEMORY[0x277CBEAF8] currentLocale];
      v14 = [v12 initWithFormat:v11 locale:v13, v9];
    }

    else
    {
      v8 = +[STScreenTimeSettingsUIBundle bundle];
      v14 = [v8 localizedStringForKey:@"NoLastUpdatedDate" value:&stru_28766E5A8 table:0];
    }

    v15 = [(STGroupSpecifierProvider *)self groupSpecifier];
    v16 = *MEMORY[0x277D3FF88];
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
    [v15 setObject:v14 forKeyedSubscript:v16];
    if (v17)
    {
      v18 = [v15 objectForKeyedSubscript:*MEMORY[0x277D3FF90]];
      [v18 reloadFromSpecifier];
    }

    else
    {
      [(STGroupSpecifierProvider *)self reloadSectionHeaderFootersWithAnimation:0];
    }
  }
}

- (void)_selectedUsageReportDidChangeFrom:(id)a3 to:(id)a4
{
  v24 = a3;
  v6 = a4;
  if (v24 != v6 && ([v24 isEqual:v6] & 1) == 0)
  {
    v7 = [(STGroupSpecifierProvider *)self groupSpecifier];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3FFB0]];
    v9 = [v6 type];
    v10 = [v6 reportDateInterval];
    v11 = [v10 startDate];

    if (!v11)
    {
LABEL_13:
      [v8 reloadFromSpecifier];
      v20 = [v24 type] == v9;
      v21 = [(STScreenTimeUsageGroupSpecifierProvider *)self usageSummaryGraphSpecifier];
      [(STGroupSpecifierProvider *)self reloadSpecifier:v21 animated:v20];
      v22 = [(STScreenTimeUsageGroupSpecifierProvider *)self weeklyTotalSpecifier];
      v23 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      if ([v6 type])
      {
        [v23 removeObject:v22];
      }

      else if ([v23 containsObject:v22])
      {
        [(STGroupSpecifierProvider *)self reloadSpecifier:v22 animated:1];
      }

      else
      {
        [v23 ps_insertObject:v22 afterObject:v21];
      }

      goto LABEL_19;
    }

    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = v12;
    if (v9 == 1)
    {
      if (([v12 isDateInToday:v11] & 1) == 0)
      {
        v19 = +[STScreenTimeSettingsUIBundle bundle];
        v17 = [v19 localizedStringForKey:@"ShowTodayButtonText" value:&stru_28766E5A8 table:0];

        [v7 setObject:v17 forKeyedSubscript:0x287677008];
        [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:0x287677028];
        v18 = &unk_28769D418;
        goto LABEL_11;
      }
    }

    else
    {
      if (v9)
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = objc_opt_new();
      v15 = [v13 isDate:v11 equalToDate:v14 toUnitGranularity:0x2000];

      if ((v15 & 1) == 0)
      {
        v16 = +[STScreenTimeSettingsUIBundle bundle];
        v17 = [v16 localizedStringForKey:@"ShowThisWeekButtonText" value:&stru_28766E5A8 table:0];

        [v7 setObject:v17 forKeyedSubscript:0x287677008];
        [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:0x287677028];
        v18 = &unk_28769D400;
LABEL_11:
        [v7 setObject:v18 forKeyedSubscript:0x287677048];

        goto LABEL_12;
      }
    }

    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287677028];
    goto LABEL_12;
  }

LABEL_19:
}

- (void)_refreshingDidChange:(BOOL)a3
{
  v3 = a3;
  v4 = [(STGroupSpecifierProvider *)self groupSpecifier];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3FF90]];

  if (v3)
  {
    [v5 startAnimatingSpinner];
  }

  else
  {
    [v5 stopAnimatingSpinner];
  }
}

- (id)_usageDetailsCoordinator:(id)a3
{
  v3 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v4 = [v3 usageDetailsCoordinator];

  return v4;
}

- (id)_weeklyTotal:(id)a3
{
  v3 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v4 = [v3 usageDetailsCoordinator];
  v5 = [v4 viewModel];
  v6 = [v5 selectedUsageReport];
  [v6 totalScreenTime];
  v8 = v7;

  if (v8 >= 60.0)
  {
    v9 = objc_opt_new();
    [v9 setAllowedUnits:96];
    [v9 setUnitsStyle:1];
  }

  else
  {
    v9 = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
  }

  v10 = [v9 stringFromTimeInterval:v8];

  return v10;
}

- (void)_headerButtonPressed:(id)a3
{
  v5 = a3;
  v6 = [(STUsageGroupSpecifierProvider *)self coordinator];
  v7 = [v6 usageDetailsCoordinator];
  v11 = [v7 viewModel];

  v8 = [v5 tag];
  if (v8 == 1)
  {
    [v11 selectToday];
  }

  else if (v8)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"STScreenTimeUsageGroupSpecifierProvider.m" lineNumber:235 description:{@"Unknown button tag: %lu", v8}];
  }

  else
  {
    [v11 setSelectedWeek:0];
  }

  v10 = [(STGroupSpecifierProvider *)self groupSpecifier];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287677028];
}

- (void)_specifierIdentifierDidChange:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKeyedSubscript:0x2876743C8];
  v5 = [(STScreenTimeUsageGroupSpecifierProvider *)self usageSummaryGraphSpecifier];
  [v5 setIdentifier:v4];
}

@end