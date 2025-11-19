@interface SCLDaySettingsSpecifierSource
- (SCLDaySettingsSpecifierSource)initWithListController:(id)a3 viewModel:(id)a4;
- (int64_t)repeatScheduleForRepeatingScheduleType:(unint64_t)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 specifier:(id)a5;
- (void)timeIntervalDataSource:(id)a3 didUpdateTimeIntervals:(id)a4;
- (void)updateScheduleType:(unint64_t)a3;
@end

@implementation SCLDaySettingsSpecifierSource

- (SCLDaySettingsSpecifierSource)initWithListController:(id)a3 viewModel:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SCLDaySettingsSpecifierSource;
  v8 = [(SCLSpecifierDataSource *)&v23 initWithListController:v6 viewModel:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [MEMORY[0x277D3FAE0] loadSpecifiersFromPlist:@"SCLDaySettings" inBundle:v9 target:v8 stringsTable:@"SchoolTimeSettings"];
    v11 = [v10 firstObject];
    groupSpecifier = v8->_groupSpecifier;
    v8->_groupSpecifier = v11;

    [(SCLSpecifierDataSource *)v8 setSpecifiers:v10];
    v13 = [v7 timeIntervals];
    if (![v13 count])
    {
      v14 = +[SCLTimeIntervalModel defaultTimeInterval];
      v25[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

      v13 = v15;
    }

    v16 = [[SCLTimeIntervalDataSource alloc] initWithListController:v6 timeIntervals:v13];
    repeatedDaySource = v8->_repeatedDaySource;
    v8->_repeatedDaySource = v16;

    [(SCLTimeIntervalDataSource *)v8->_repeatedDaySource setDelegate:v8];
    v18 = [[SCLCustomDayDataSource alloc] initWithListController:v6 viewModel:v7];
    customDayDataSource = v8->_customDayDataSource;
    v8->_customDayDataSource = v18;

    v24[0] = v8->_repeatedDaySource;
    v24[1] = v8->_customDayDataSource;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [(SCLSpecifierDataSource *)v8 setChildDataSources:v20];

    [v7 addObserver:v8 forKeyPath:@"scheduleType" options:5 context:kScheduleTypeContext];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  v3 = [(SCLSpecifierDataSource *)self viewModel];
  [v3 removeObserver:self forKeyPath:@"scheduleType" context:kScheduleTypeContext];

  v4.receiver = self;
  v4.super_class = SCLDaySettingsSpecifierSource;
  [(SCLSpecifierDataSource *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kScheduleTypeContext == a6)
  {
    v7 = [a5 objectForKeyedSubscript:{*MEMORY[0x277CCA2F0], a4}];
    v8 = [v7 integerValue];

    [(SCLDaySettingsSpecifierSource *)self updateScheduleType:v8];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCLDaySettingsSpecifierSource;
    [(SCLSpecifierDataSource *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)updateScheduleType:(unint64_t)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [(SCLSpecifierDataSource *)self listController];
  [v5 beginUpdates];

  if (a3 == 1)
  {
    v7 = 127;
LABEL_7:
    v10 = [(SCLSpecifierDataSource *)self viewModel];
    [v10 setRepeatSchedule:v7];

    v11 = [(SCLDaySettingsSpecifierSource *)self repeatedDaySource];
    v12 = [(SCLSpecifierDataSource *)self viewModel];
    v13 = [v12 timeIntervals];
    [v11 setTimeIntervals:v13];

    v9 = 0;
    v8 = 1;
    goto LABEL_8;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
      goto LABEL_9;
    }

    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [v6 SCL_nonWeekendDays];

    goto LABEL_7;
  }

  v8 = 0;
  v9 = 1;
LABEL_8:
  v14 = [(SCLDaySettingsSpecifierSource *)self repeatedDaySource];
  [v14 setActive:v8];

  v15 = [(SCLDaySettingsSpecifierSource *)self customDayDataSource];
  [v15 setActive:v9];

LABEL_9:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = self;
  obj = [(SCLSpecifierDataSource *)self specifiers];
  v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    v19 = *MEMORY[0x277D401A8];
    v28 = *MEMORY[0x277D40090];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = [v21 propertyForKey:v19];
        v23 = a3;
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
        v25 = [v22 isEqual:v24];

        if (v25)
        {
          [(PSSpecifier *)v29->_groupSpecifier setProperty:v21 forKey:v28];
        }

        a3 = v23;
      }

      v17 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  v26 = [(SCLSpecifierDataSource *)v29 listController];
  [v26 endUpdates];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 specifier:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SCLDaySettingsSpecifierSource;
  [(SCLSpecifierDataSource *)&v25 tableView:a3 didSelectRowAtIndexPath:a4 specifier:a5];
  v6 = [(SCLDaySettingsSpecifierSource *)self groupSpecifier];
  v7 = [v6 propertyForKey:*MEMORY[0x277D40090]];

  if (v7)
  {
    v8 = [v7 propertyForKey:*MEMORY[0x277D401A8]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    v9 = [v8 integerValue];
    v10 = [(SCLSpecifierDataSource *)self viewModel];
    v11 = [v10 scheduleType];

    if (v9 == v11)
    {
      goto LABEL_21;
    }

    v12 = scl_framework_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSCLSettingsViewModelScheduleType(v11);
      v14 = NSStringFromSCLSettingsViewModelScheduleType(v9);
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_26486D000, v12, OS_LOG_TYPE_DEFAULT, "Switching from schedule type %@ to %@", buf, 0x16u);
    }

    v15 = [(SCLSpecifierDataSource *)self viewModel];
    if (v9 == 3 && SCLSettingsViewModelScheduleTypeHasRepeatSchedule(v11))
    {
      v16 = [(SCLDaySettingsSpecifierSource *)self repeatScheduleForRepeatingScheduleType:v11];
      v17 = objc_alloc(MEMORY[0x277D4B738]);
      v18 = [v15 timeIntervals];
      v19 = [v17 initWithTimeIntervals:v18 repeatSchedule:v16];

      [v15 setCustomSchedule:v19];
    }

    else
    {
      if (!SCLSettingsViewModelScheduleTypeHasRepeatSchedule(v9) || v11 != 3)
      {
        goto LABEL_20;
      }

      v19 = [v15 customSchedule];
      v20 = [v19 uniformTimeIntervals];
      v21 = [v20 count];
      v22 = scl_framework_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&dword_26486D000, v22, OS_LOG_TYPE_DEFAULT, "Had uniform time intervals for custom schedule - reusing", buf, 2u);
        }

        [v15 setRepeatSchedule:{-[SCLDaySettingsSpecifierSource repeatScheduleForRepeatingScheduleType:](self, "repeatScheduleForRepeatingScheduleType:", v9)}];
        [v15 setTimeIntervals:v20];
      }

      else
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&dword_26486D000, v22, OS_LOG_TYPE_DEFAULT, "Had non-uniform time intervals for custom schedule. The daily schedule will be reverted.", buf, 2u);
        }
      }
    }

LABEL_20:
    [v15 setScheduleType:v9];

LABEL_21:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (int64_t)repeatScheduleForRepeatingScheduleType:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 127;
  }

  if (a3 != 2)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 SCL_nonWeekendDays];

  return v4;
}

- (void)timeIntervalDataSource:(id)a3 didUpdateTimeIntervals:(id)a4
{
  v5 = a4;
  v6 = [(SCLSpecifierDataSource *)self viewModel];
  [v6 setTimeIntervals:v5];
}

@end