@interface SCLHistoryDaysDataSource
- (SCLHistoryDaysDataSource)initWithListController:(id)controller viewModel:(id)model;
- (void)dealloc;
- (void)handleSignificantTimeChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateHistoryGroupsWithItems:(id)items;
@end

@implementation SCLHistoryDaysDataSource

- (SCLHistoryDaysDataSource)initWithListController:(id)controller viewModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = SCLHistoryDaysDataSource;
  v7 = [(SCLSpecifierDataSource *)&v10 initWithListController:controller viewModel:modelCopy];
  if (v7)
  {
    [modelCopy addObserver:v7 forKeyPath:@"scheduleType" options:1 context:kOtherContext];
    [modelCopy addObserver:v7 forKeyPath:@"timeIntervals" options:1 context:kOtherContext];
    [modelCopy addObserver:v7 forKeyPath:@"customSchedule" options:1 context:kOtherContext];
    [modelCopy addObserver:v7 forKeyPath:@"historyItems" options:5 context:kItemsContext];
    [modelCopy addObserver:v7 forKeyPath:@"enabled" options:5 context:kOtherContext];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_handleSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
  }

  return v7;
}

- (void)dealloc
{
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel removeObserver:self forKeyPath:@"historyItems" context:kItemsContext];
  [viewModel removeObserver:self forKeyPath:@"enabled" context:kOtherContext];
  [viewModel removeObserver:self forKeyPath:@"scheduleType" context:kOtherContext];
  [viewModel removeObserver:self forKeyPath:@"timeIntervals" context:kOtherContext];
  [viewModel removeObserver:self forKeyPath:@"customSchedule" context:kOtherContext];

  v4.receiver = self;
  v4.super_class = SCLHistoryDaysDataSource;
  [(SCLSpecifierDataSource *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (kItemsContext == context)
  {
    viewModel = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    if ([viewModel count])
    {
      [(SCLHistoryDaysDataSource *)self updateHistoryGroupsWithItems:viewModel];
    }

    goto LABEL_7;
  }

  if (kOtherContext == context)
  {
    viewModel = [(SCLSpecifierDataSource *)self viewModel];
    historyItems = [viewModel historyItems];
    [(SCLHistoryDaysDataSource *)self updateHistoryGroupsWithItems:historyItems];

LABEL_7:
    goto LABEL_8;
  }

  v16.receiver = self;
  v16.super_class = SCLHistoryDaysDataSource;
  [(SCLSpecifierDataSource *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_8:
}

- (void)updateHistoryGroupsWithItems:(id)items
{
  v45 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = MEMORY[0x277D4B750];
  selfCopy = self;
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  v7 = [v5 scheduleSettingsWithViewModel:viewModel];

  v33 = itemsCopy;
  v34 = v7;
  if ([itemsCopy count] || objc_msgSend(v7, "isEnabled"))
  {
    v8 = MEMORY[0x277D4B728];
    schedule = [v7 schedule];
    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [v8 historyGroupsByPrioritizingSchedule:schedule forDate:date inCalendar:currentCalendar items:itemsCopy];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = objc_alloc_init(MEMORY[0x277CCAC78]);
  [v14 setCalendar:currentCalendar2];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v14 setLocale:currentLocale];

  [v14 setDateTimeStyle:1];
  v37 = v14;
  [v14 setUnitsStyle:0];
  date2 = [MEMORY[0x277CBEAA8] date];
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
        items = [v20 items];
        if ([items count])
        {
        }

        else
        {
          isEnabled = [v34 isEnabled];

          if ((isEnabled & 1) == 0)
          {
            continue;
          }
        }

        v23 = objc_alloc_init(SCLSettingsViewModel);
        referenceDate = [v20 referenceDate];
        v25 = [currentCalendar2 components:16 fromDate:date2 toDate:referenceDate options:0];

        if (![v25 day])
        {
          referenceDate2 = [v20 referenceDate];
          v27 = [currentCalendar2 isDateInYesterday:referenceDate2];

          if (v27)
          {
            [v25 setDay:-1];
          }
        }

        v28 = [v37 localizedStringFromDateComponents:v25];
        v29 = [SCLHistoryDayDataSource alloc];
        listController = [(SCLSpecifierDataSource *)selfCopy listController];
        v31 = [(SCLHistoryDayDataSource *)v29 initWithListController:listController viewModel:v23 historyGroup:v20 title:v28];

        [(SCLSpecifierDataSource *)v31 setActive:1];
        [v38 addObject:v31];
      }

      v17 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v17);
  }

  [(SCLSpecifierDataSource *)selfCopy setChildDataSources:v38];
  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleSignificantTimeChange:(id)change
{
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  historyItems = [viewModel historyItems];
  [(SCLHistoryDaysDataSource *)self updateHistoryGroupsWithItems:historyItems];
}

@end