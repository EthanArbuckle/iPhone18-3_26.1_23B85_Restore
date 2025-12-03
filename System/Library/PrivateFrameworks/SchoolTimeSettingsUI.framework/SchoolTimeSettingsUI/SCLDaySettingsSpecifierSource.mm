@interface SCLDaySettingsSpecifierSource
- (SCLDaySettingsSpecifierSource)initWithListController:(id)controller viewModel:(id)model;
- (int64_t)repeatScheduleForRepeatingScheduleType:(unint64_t)type;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path specifier:(id)specifier;
- (void)timeIntervalDataSource:(id)source didUpdateTimeIntervals:(id)intervals;
- (void)updateScheduleType:(unint64_t)type;
@end

@implementation SCLDaySettingsSpecifierSource

- (SCLDaySettingsSpecifierSource)initWithListController:(id)controller viewModel:(id)model
{
  v25[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  modelCopy = model;
  v23.receiver = self;
  v23.super_class = SCLDaySettingsSpecifierSource;
  v8 = [(SCLSpecifierDataSource *)&v23 initWithListController:controllerCopy viewModel:modelCopy];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [MEMORY[0x277D3FAE0] loadSpecifiersFromPlist:@"SCLDaySettings" inBundle:v9 target:v8 stringsTable:@"SchoolTimeSettings"];
    firstObject = [v10 firstObject];
    groupSpecifier = v8->_groupSpecifier;
    v8->_groupSpecifier = firstObject;

    [(SCLSpecifierDataSource *)v8 setSpecifiers:v10];
    timeIntervals = [modelCopy timeIntervals];
    if (![timeIntervals count])
    {
      v14 = +[SCLTimeIntervalModel defaultTimeInterval];
      v25[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

      timeIntervals = v15;
    }

    v16 = [[SCLTimeIntervalDataSource alloc] initWithListController:controllerCopy timeIntervals:timeIntervals];
    repeatedDaySource = v8->_repeatedDaySource;
    v8->_repeatedDaySource = v16;

    [(SCLTimeIntervalDataSource *)v8->_repeatedDaySource setDelegate:v8];
    v18 = [[SCLCustomDayDataSource alloc] initWithListController:controllerCopy viewModel:modelCopy];
    customDayDataSource = v8->_customDayDataSource;
    v8->_customDayDataSource = v18;

    v24[0] = v8->_repeatedDaySource;
    v24[1] = v8->_customDayDataSource;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [(SCLSpecifierDataSource *)v8 setChildDataSources:v20];

    [modelCopy addObserver:v8 forKeyPath:@"scheduleType" options:5 context:kScheduleTypeContext];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel removeObserver:self forKeyPath:@"scheduleType" context:kScheduleTypeContext];

  v4.receiver = self;
  v4.super_class = SCLDaySettingsSpecifierSource;
  [(SCLSpecifierDataSource *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kScheduleTypeContext == context)
  {
    v7 = [change objectForKeyedSubscript:{*MEMORY[0x277CCA2F0], object}];
    integerValue = [v7 integerValue];

    [(SCLDaySettingsSpecifierSource *)self updateScheduleType:integerValue];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCLDaySettingsSpecifierSource;
    [(SCLSpecifierDataSource *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)updateScheduleType:(unint64_t)type
{
  v36 = *MEMORY[0x277D85DE8];
  listController = [(SCLSpecifierDataSource *)self listController];
  [listController beginUpdates];

  if (type == 1)
  {
    sCL_nonWeekendDays = 127;
LABEL_7:
    viewModel = [(SCLSpecifierDataSource *)self viewModel];
    [viewModel setRepeatSchedule:sCL_nonWeekendDays];

    repeatedDaySource = [(SCLDaySettingsSpecifierSource *)self repeatedDaySource];
    viewModel2 = [(SCLSpecifierDataSource *)self viewModel];
    timeIntervals = [viewModel2 timeIntervals];
    [repeatedDaySource setTimeIntervals:timeIntervals];

    v9 = 0;
    v8 = 1;
    goto LABEL_8;
  }

  if (type != 3)
  {
    if (type != 2)
    {
      goto LABEL_9;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    sCL_nonWeekendDays = [currentCalendar SCL_nonWeekendDays];

    goto LABEL_7;
  }

  v8 = 0;
  v9 = 1;
LABEL_8:
  repeatedDaySource2 = [(SCLDaySettingsSpecifierSource *)self repeatedDaySource];
  [repeatedDaySource2 setActive:v8];

  customDayDataSource = [(SCLDaySettingsSpecifierSource *)self customDayDataSource];
  [customDayDataSource setActive:v9];

LABEL_9:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
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
        typeCopy = type;
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
        v25 = [v22 isEqual:v24];

        if (v25)
        {
          [(PSSpecifier *)selfCopy->_groupSpecifier setProperty:v21 forKey:v28];
        }

        type = typeCopy;
      }

      v17 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  listController2 = [(SCLSpecifierDataSource *)selfCopy listController];
  [listController2 endUpdates];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path specifier:(id)specifier
{
  v30 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SCLDaySettingsSpecifierSource;
  [(SCLSpecifierDataSource *)&v25 tableView:view didSelectRowAtIndexPath:path specifier:specifier];
  groupSpecifier = [(SCLDaySettingsSpecifierSource *)self groupSpecifier];
  v7 = [groupSpecifier propertyForKey:*MEMORY[0x277D40090]];

  if (v7)
  {
    v8 = [v7 propertyForKey:*MEMORY[0x277D401A8]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    integerValue = [v8 integerValue];
    viewModel = [(SCLSpecifierDataSource *)self viewModel];
    scheduleType = [viewModel scheduleType];

    if (integerValue == scheduleType)
    {
      goto LABEL_21;
    }

    v12 = scl_framework_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSCLSettingsViewModelScheduleType(scheduleType);
      v14 = NSStringFromSCLSettingsViewModelScheduleType(integerValue);
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_26486D000, v12, OS_LOG_TYPE_DEFAULT, "Switching from schedule type %@ to %@", buf, 0x16u);
    }

    viewModel2 = [(SCLSpecifierDataSource *)self viewModel];
    if (integerValue == 3 && SCLSettingsViewModelScheduleTypeHasRepeatSchedule(scheduleType))
    {
      v16 = [(SCLDaySettingsSpecifierSource *)self repeatScheduleForRepeatingScheduleType:scheduleType];
      v17 = objc_alloc(MEMORY[0x277D4B738]);
      timeIntervals = [viewModel2 timeIntervals];
      customSchedule = [v17 initWithTimeIntervals:timeIntervals repeatSchedule:v16];

      [viewModel2 setCustomSchedule:customSchedule];
    }

    else
    {
      if (!SCLSettingsViewModelScheduleTypeHasRepeatSchedule(integerValue) || scheduleType != 3)
      {
        goto LABEL_20;
      }

      customSchedule = [viewModel2 customSchedule];
      uniformTimeIntervals = [customSchedule uniformTimeIntervals];
      v21 = [uniformTimeIntervals count];
      v22 = scl_framework_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&dword_26486D000, v22, OS_LOG_TYPE_DEFAULT, "Had uniform time intervals for custom schedule - reusing", buf, 2u);
        }

        [viewModel2 setRepeatSchedule:{-[SCLDaySettingsSpecifierSource repeatScheduleForRepeatingScheduleType:](self, "repeatScheduleForRepeatingScheduleType:", integerValue)}];
        [viewModel2 setTimeIntervals:uniformTimeIntervals];
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
    [viewModel2 setScheduleType:integerValue];

LABEL_21:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (int64_t)repeatScheduleForRepeatingScheduleType:(unint64_t)type
{
  if (type == 1)
  {
    return 127;
  }

  if (type != 2)
  {
    return 0;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  sCL_nonWeekendDays = [currentCalendar SCL_nonWeekendDays];

  return sCL_nonWeekendDays;
}

- (void)timeIntervalDataSource:(id)source didUpdateTimeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel setTimeIntervals:intervalsCopy];
}

@end