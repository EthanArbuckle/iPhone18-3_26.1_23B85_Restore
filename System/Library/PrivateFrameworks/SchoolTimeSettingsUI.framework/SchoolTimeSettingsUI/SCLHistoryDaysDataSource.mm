@interface SCLHistoryDaysDataSource
- (SCLHistoryDaysDataSource)initWithListController:(id)a3 viewModel:(id)a4;
- (void)dealloc;
- (void)handleSignificantTimeChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateHistoryGroupsWithItems:(id)a3;
@end

@implementation SCLHistoryDaysDataSource

- (SCLHistoryDaysDataSource)initWithListController:(id)a3 viewModel:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SCLHistoryDaysDataSource;
  v7 = [(SCLSpecifierDataSource *)&v10 initWithListController:a3 viewModel:v6];
  if (v7)
  {
    [v6 addObserver:v7 forKeyPath:@"scheduleType" options:1 context:kOtherContext];
    [v6 addObserver:v7 forKeyPath:@"timeIntervals" options:1 context:kOtherContext];
    [v6 addObserver:v7 forKeyPath:@"customSchedule" options:1 context:kOtherContext];
    [v6 addObserver:v7 forKeyPath:@"historyItems" options:5 context:kItemsContext];
    [v6 addObserver:v7 forKeyPath:@"enabled" options:5 context:kOtherContext];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel_handleSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(SCLSpecifierDataSource *)self viewModel];
  [v3 removeObserver:self forKeyPath:@"historyItems" context:kItemsContext];
  [v3 removeObserver:self forKeyPath:@"enabled" context:kOtherContext];
  [v3 removeObserver:self forKeyPath:@"scheduleType" context:kOtherContext];
  [v3 removeObserver:self forKeyPath:@"timeIntervals" context:kOtherContext];
  [v3 removeObserver:self forKeyPath:@"customSchedule" context:kOtherContext];

  v4.receiver = self;
  v4.super_class = SCLHistoryDaysDataSource;
  [(SCLSpecifierDataSource *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (kItemsContext == a6)
  {
    v14 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    if ([v14 count])
    {
      [(SCLHistoryDaysDataSource *)self updateHistoryGroupsWithItems:v14];
    }

    goto LABEL_7;
  }

  if (kOtherContext == a6)
  {
    v14 = [(SCLSpecifierDataSource *)self viewModel];
    v15 = [v14 historyItems];
    [(SCLHistoryDaysDataSource *)self updateHistoryGroupsWithItems:v15];

LABEL_7:
    goto LABEL_8;
  }

  v16.receiver = self;
  v16.super_class = SCLHistoryDaysDataSource;
  [(SCLSpecifierDataSource *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_8:
}

- (void)updateHistoryGroupsWithItems:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D4B750];
  v39 = self;
  v6 = [(SCLSpecifierDataSource *)self viewModel];
  v7 = [v5 scheduleSettingsWithViewModel:v6];

  v33 = v4;
  v34 = v7;
  if ([v4 count] || objc_msgSend(v7, "isEnabled"))
  {
    v8 = MEMORY[0x277D4B728];
    v9 = [v7 schedule];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [v8 historyGroupsByPrioritizingSchedule:v9 forDate:v10 inCalendar:v11 items:v4];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = objc_alloc_init(MEMORY[0x277CCAC78]);
  [v14 setCalendar:v13];
  v15 = [MEMORY[0x277CBEAF8] currentLocale];
  [v14 setLocale:v15];

  [v14 setDateTimeStyle:1];
  v37 = v14;
  [v14 setUnitsStyle:0];
  v36 = [MEMORY[0x277CBEAA8] date];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v12;
  v16 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        v21 = [v20 items];
        if ([v21 count])
        {
        }

        else
        {
          v22 = [v34 isEnabled];

          if ((v22 & 1) == 0)
          {
            continue;
          }
        }

        v23 = objc_alloc_init(SCLSettingsViewModel);
        v24 = [v20 referenceDate];
        v25 = [v13 components:16 fromDate:v36 toDate:v24 options:0];

        if (![v25 day])
        {
          v26 = [v20 referenceDate];
          v27 = [v13 isDateInYesterday:v26];

          if (v27)
          {
            [v25 setDay:-1];
          }
        }

        v28 = [v37 localizedStringFromDateComponents:v25];
        v29 = [SCLHistoryDayDataSource alloc];
        v30 = [(SCLSpecifierDataSource *)v39 listController];
        v31 = [(SCLHistoryDayDataSource *)v29 initWithListController:v30 viewModel:v23 historyGroup:v20 title:v28];

        [(SCLSpecifierDataSource *)v31 setActive:1];
        [v38 addObject:v31];
      }

      v17 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v17);
  }

  [(SCLSpecifierDataSource *)v39 setChildDataSources:v38];
  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleSignificantTimeChange:(id)a3
{
  v5 = [(SCLSpecifierDataSource *)self viewModel];
  v4 = [v5 historyItems];
  [(SCLHistoryDaysDataSource *)self updateHistoryGroupsWithItems:v4];
}

@end