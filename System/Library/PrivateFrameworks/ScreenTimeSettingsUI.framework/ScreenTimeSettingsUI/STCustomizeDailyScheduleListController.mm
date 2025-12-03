@interface STCustomizeDailyScheduleListController
- (STCustomizeDailyScheduleListController)initWithDailySchedule:(id)schedule weekdayIndex:(unint64_t)index weekdayName:(id)name minimumStartTime:(id)time;
- (STCustomizeDailyScheduleListControllerDelegate)delegate;
- (id)_endTime:(id)time;
- (id)_getWeekdayEnabled:(id)enabled;
- (id)_startTime:(id)time;
- (id)datePickerForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_setWeekdayEnabled:(id)enabled specifier:(id)specifier;
- (void)_updateTimeSpecifierDetailTextLabelColors:(BOOL)colors selectedSpecifier:(id)specifier unselectedSpecifier:(id)unselectedSpecifier;
- (void)cancelButtonTapped:(id)tapped;
- (void)datePickerChanged:(id)changed;
- (void)doneButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation STCustomizeDailyScheduleListController

- (STCustomizeDailyScheduleListController)initWithDailySchedule:(id)schedule weekdayIndex:(unint64_t)index weekdayName:(id)name minimumStartTime:(id)time
{
  scheduleCopy = schedule;
  nameCopy = name;
  timeCopy = time;
  v52.receiver = self;
  v52.super_class = STCustomizeDailyScheduleListController;
  v13 = [(STCustomizeDailyScheduleListController *)&v52 init];
  v14 = v13;
  if (v13)
  {
    [(STCustomizeDailyScheduleListController *)v13 setTitle:nameCopy];
    navigationItem = [(STCustomizeDailyScheduleListController *)v14 navigationItem];
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v14 action:sel_cancelButtonTapped_];
    [navigationItem setLeftBarButtonItem:v16];

    v49 = navigationItem;
    if (_UISolariumEnabled())
    {
      v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v14 action:sel_doneButtonTapped_];
      [navigationItem setRightBarButtonItem:v17];
    }

    else
    {
      v18 = +[STScreenTimeSettingsUIBundle bundle];
      v17 = [v18 localizedStringForKey:@"DeviceDowntimeScheduleDoneBarButtonItemTitle" value:&stru_28766E5A8 table:0];

      v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v17 style:2 target:v14 action:sel_doneButtonTapped_];
      [navigationItem setRightBarButtonItem:v19];
    }

    v14->_weekdayEnabled = scheduleCopy != 0;
    v20 = [scheduleCopy copy];
    dailySchedule = v14->_dailySchedule;
    v14->_dailySchedule = v20;

    v14->_weekdayIndex = index;
    v22 = [timeCopy copy];
    minimumStartTime = v14->_minimumStartTime;
    v14->_minimumStartTime = v22;

    v50 = timeCopy;
    st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    dailyScheduleGroupSpecifier = v14->_dailyScheduleGroupSpecifier;
    v14->_dailyScheduleGroupSpecifier = st_emptyGroupSpecifier;

    v26 = +[STScreenTimeSettingsUIBundle bundle];
    v51 = scheduleCopy;
    v27 = [v26 localizedStringForKey:@"DeviceDowntimeFromSpecifierName" value:&stru_28766E5A8 table:0];
    v28 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v27 target:v14 set:0 get:sel__startTime_ detail:0 cell:4 edit:0];
    startTimeSpecifier = v14->_startTimeSpecifier;
    v14->_startTimeSpecifier = v28;

    v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v14 set:0 get:0 detail:0 cell:4 edit:0];
    startTimePickerSpecifier = v14->_startTimePickerSpecifier;
    v14->_startTimePickerSpecifier = v30;

    v32 = objc_opt_new();
    uUIDString = [v32 UUIDString];
    [(PSSpecifier *)v14->_startTimePickerSpecifier setIdentifier:uUIDString];

    v34 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v35 = [v34 numberWithDouble:?];
    v36 = *MEMORY[0x277D40140];
    [(PSSpecifier *)v14->_startTimePickerSpecifier setObject:v35 forKeyedSubscript:*MEMORY[0x277D40140]];

    v37 = objc_opt_class();
    v38 = *MEMORY[0x277D3FE58];
    [(PSSpecifier *)v14->_startTimePickerSpecifier setObject:v37 forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v39 = [v26 localizedStringForKey:@"DeviceDowntimeToSpecifierName" value:&stru_28766E5A8 table:0];
    v40 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v39 target:v14 set:0 get:sel__endTime_ detail:0 cell:4 edit:0];
    endTimeSpecifier = v14->_endTimeSpecifier;
    v14->_endTimeSpecifier = v40;

    v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v14 set:0 get:0 detail:0 cell:4 edit:0];
    endTimePickerSpecifier = v14->_endTimePickerSpecifier;
    v14->_endTimePickerSpecifier = v42;

    v44 = objc_opt_new();
    uUIDString2 = [v44 UUIDString];
    [(PSSpecifier *)v14->_endTimePickerSpecifier setIdentifier:uUIDString2];

    scheduleCopy = v51;
    v46 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v47 = [v46 numberWithDouble:?];
    [(PSSpecifier *)v14->_endTimePickerSpecifier setObject:v47 forKeyedSubscript:v36];

    timeCopy = v50;
    [(PSSpecifier *)v14->_endTimePickerSpecifier setObject:objc_opt_class() forKeyedSubscript:v38];
  }

  return v14;
}

- (void)doneButtonTapped:(id)tapped
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User saved edited custom Downtime schedule", v8, 2u);
  }

  delegate = [(STCustomizeDailyScheduleListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    isWeekdayEnabled = [(STCustomizeDailyScheduleListController *)self isWeekdayEnabled];
    if (isWeekdayEnabled)
    {
      dailySchedule = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    }

    else
    {
      dailySchedule = 0;
    }

    [delegate customizeDailyScheduleListController:self didSaveDailySchedule:dailySchedule forWeekdayIndex:{-[STCustomizeDailyScheduleListController weekdayIndex](self, "weekdayIndex")}];
    if (isWeekdayEnabled)
    {
    }
  }
}

- (void)cancelButtonTapped:(id)tapped
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User cancelled editing custom Downtime schedule", v6, 2u);
  }

  delegate = [(STCustomizeDailyScheduleListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate customizeDailyScheduleListControllerDidCancel:self];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v6 = MEMORY[0x277D3FAD8];
    title = [(STCustomizeDailyScheduleListController *)self title];
    v8 = [v6 preferenceSpecifierNamed:title target:self set:sel__setWeekdayEnabled_specifier_ get:sel__getWeekdayEnabled_ detail:0 cell:6 edit:0];

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{st_emptyGroupSpecifier, v8, 0}];
    if ([(STCustomizeDailyScheduleListController *)self isWeekdayEnabled])
    {
      dailyScheduleGroupSpecifier = [(STCustomizeDailyScheduleListController *)self dailyScheduleGroupSpecifier];
      [v9 addObject:dailyScheduleGroupSpecifier];

      startTimeSpecifier = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
      [v9 addObject:startTimeSpecifier];

      startTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
      [v9 addObject:startTimePickerSpecifier];

      endTimeSpecifier = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
      [v9 addObject:endTimeSpecifier];
    }

    v14 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_getWeekdayEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  isWeekdayEnabled = [(STCustomizeDailyScheduleListController *)self isWeekdayEnabled];

  return [v3 numberWithBool:isWeekdayEnabled];
}

- (void)_setWeekdayEnabled:(id)enabled specifier:(id)specifier
{
  v26[4] = *MEMORY[0x277D85DE8];
  bOOLValue = [enabled BOOLValue];
  [(STCustomizeDailyScheduleListController *)self setWeekdayEnabled:bOOLValue];
  if (bOOLValue)
  {
    dailySchedule = [(STCustomizeDailyScheduleListController *)self dailySchedule];

    if (!dailySchedule)
    {
      v7 = objc_opt_new();
      v8 = +[STDeviceBedtime defaultBedtimeSchedule];
      startTime = [v8 startTime];
      minimumStartTime = [(STCustomizeDailyScheduleListController *)self minimumStartTime];
      if (minimumStartTime && STCompareHourMinuteTimeComponents() == 1)
      {
        v11 = v7;
        v12 = minimumStartTime;
      }

      else
      {
        v11 = v7;
        v12 = startTime;
      }

      [v11 setStartTime:v12];
      endTime = [v8 endTime];
      [v7 setEndTime:endTime];

      [v7 setDay:{-[STCustomizeDailyScheduleListController weekdayIndex](self, "weekdayIndex")}];
      [(STCustomizeDailyScheduleListController *)self setDailySchedule:v7];
    }

    dailyScheduleGroupSpecifier = [(STCustomizeDailyScheduleListController *)self dailyScheduleGroupSpecifier];
    v26[0] = dailyScheduleGroupSpecifier;
    startTimeSpecifier = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
    v26[1] = startTimeSpecifier;
    startTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
    v26[2] = startTimePickerSpecifier;
    endTimeSpecifier = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
    v26[3] = endTimeSpecifier;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];

    [(STCustomizeDailyScheduleListController *)self addSpecifiersFromArray:v24 animated:1];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    dailyScheduleGroupSpecifier2 = [(STCustomizeDailyScheduleListController *)self dailyScheduleGroupSpecifier];
    startTimeSpecifier2 = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
    v25 = [v13 initWithObjects:{dailyScheduleGroupSpecifier2, startTimeSpecifier2, 0}];

    startTimePickerSpecifier2 = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:startTimePickerSpecifier2])
    {
      [v25 addObject:startTimePickerSpecifier2];
    }

    endTimeSpecifier2 = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
    [v25 addObject:endTimeSpecifier2];

    endTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:endTimePickerSpecifier])
    {
      [v25 addObject:endTimePickerSpecifier];
    }

    [(STCustomizeDailyScheduleListController *)self removeContiguousSpecifiers:v25 animated:1];
  }
}

- (id)_startTime:(id)time
{
  dailySchedule = [(STCustomizeDailyScheduleListController *)self dailySchedule];
  v4 = dailySchedule;
  if (dailySchedule)
  {
    startTime = [dailySchedule startTime];
    v6 = [startTime copy];

    [v6 setWeekday:{objc_msgSend(v4, "day") + 1}];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = objc_opt_new();
    v9 = [currentCalendar nextDateAfterDate:v8 matchingComponents:v6 options:1024];

    v10 = v9;
    v11 = objc_opt_new();
    [v11 setFormattingContext:3];
    [v11 setLocalizedDateFormatFromTemplate:@"EEEEjmm"];
    v12 = [v11 stringFromDate:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_endTime:(id)time
{
  dailySchedule = [(STCustomizeDailyScheduleListController *)self dailySchedule];
  v4 = dailySchedule;
  if (dailySchedule)
  {
    endTime = [dailySchedule endTime];
    v6 = [endTime copy];

    startTime = [v4 startTime];
    v8 = STCompareHourMinuteTimeComponents();

    v9 = [v4 day] + 1;
    if (v8 == 1)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      [currentCalendar maximumRangeOfUnit:512];
      v12 = v9 % v11;

      v9 = v12 + 1;
    }

    [v6 setWeekday:v9];
    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v14 = objc_opt_new();
    v15 = [currentCalendar2 nextDateAfterDate:v14 matchingComponents:v6 options:1024];

    v16 = v15;
    v17 = objc_opt_new();
    [v17 setFormattingContext:3];
    [v17 setLocalizedDateFormatFromTemplate:@"EEEEjmm"];
    v18 = [v17 stringFromDate:v16];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STCustomizeDailyScheduleListController *)self specifierAtIndexPath:pathCopy];
  startTimeSpecifier = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
  startTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
  endTimeSpecifier = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
  endTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];
  if (v8 == startTimeSpecifier)
  {
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:endTimePickerSpecifier])
    {
      v14 = 1;
      [(STCustomizeDailyScheduleListController *)self removeSpecifier:endTimePickerSpecifier animated:1];
    }

    else
    {
      if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:startTimePickerSpecifier])
      {
        [(STCustomizeDailyScheduleListController *)self removeSpecifier:startTimePickerSpecifier animated:1];
        v14 = 0;
LABEL_13:
        selfCopy2 = self;
        v16 = v14;
        v17 = startTimeSpecifier;
        v18 = endTimeSpecifier;
LABEL_17:
        [(STCustomizeDailyScheduleListController *)selfCopy2 _updateTimeSpecifierDetailTextLabelColors:v16 selectedSpecifier:v17 unselectedSpecifier:v18];
        identifier = [v8 identifier];
        [(STCustomizeDailyScheduleListController *)self highlightSpecifierWithID:identifier];

        goto LABEL_18;
      }

      v14 = 1;
    }

    [(STCustomizeDailyScheduleListController *)self insertSpecifier:startTimePickerSpecifier afterSpecifier:startTimeSpecifier animated:1];
    goto LABEL_13;
  }

  if (v8 == endTimeSpecifier)
  {
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:startTimePickerSpecifier])
    {
      v13 = 1;
      [(STCustomizeDailyScheduleListController *)self removeSpecifier:startTimePickerSpecifier animated:1];
    }

    else
    {
      if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:endTimePickerSpecifier])
      {
        [(STCustomizeDailyScheduleListController *)self removeSpecifier:endTimePickerSpecifier animated:1];
        v13 = 0;
LABEL_16:
        selfCopy2 = self;
        v16 = v13;
        v17 = endTimeSpecifier;
        v18 = startTimeSpecifier;
        goto LABEL_17;
      }

      v13 = 1;
    }

    [(STCustomizeDailyScheduleListController *)self insertSpecifier:endTimePickerSpecifier afterSpecifier:endTimeSpecifier animated:1];
    goto LABEL_16;
  }

LABEL_18:
  v20.receiver = self;
  v20.super_class = STCustomizeDailyScheduleListController;
  [(STCustomizeDailyScheduleListController *)&v20 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  startTimeSpecifier = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
  v10 = [(STCustomizeDailyScheduleListController *)self indexPathForSpecifier:startTimeSpecifier];
  v11 = [pathCopy isEqual:v10];
  if (v11)
  {
    startTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
    if ([(STCustomizeDailyScheduleListController *)self containsSpecifier:startTimePickerSpecifier])
    {

      goto LABEL_11;
    }
  }

  endTimeSpecifier = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
  v13 = [(STCustomizeDailyScheduleListController *)self indexPathForSpecifier:endTimeSpecifier];
  if ([pathCopy isEqual:v13])
  {
    endTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];
    v15 = [(STCustomizeDailyScheduleListController *)self containsSpecifier:endTimePickerSpecifier];
  }

  else
  {
    v15 = 0;
  }

  if (!v11)
  {

    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v15)
  {
LABEL_11:
    tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
    detailTextLabel = [cellCopy detailTextLabel];
    [detailTextLabel setTextColor:tableCellBlueTextColor];
  }

LABEL_12:
}

- (void)_updateTimeSpecifierDetailTextLabelColors:(BOOL)colors selectedSpecifier:(id)specifier unselectedSpecifier:(id)unselectedSpecifier
{
  colorsCopy = colors;
  v7 = *MEMORY[0x277D40148];
  unselectedSpecifierCopy = unselectedSpecifier;
  v9 = [specifier objectForKeyedSubscript:v7];
  detailTextLabel = [v9 detailTextLabel];

  v10 = [unselectedSpecifierCopy objectForKeyedSubscript:v7];

  detailTextLabel2 = [v10 detailTextLabel];

  if (colorsCopy)
  {
    textColor = [detailTextLabel textColor];
    tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
    [detailTextLabel setTextColor:tableCellBlueTextColor];

    v14 = detailTextLabel2;
  }

  else
  {
    textColor = [detailTextLabel2 textColor];
    v14 = detailTextLabel;
  }

  [v14 setTextColor:textColor];
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  startTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];
  v5 = [(STCustomizeDailyScheduleListController *)self containsSpecifier:startTimePickerSpecifier];

  if (v5)
  {
    startTimeSpecifier = [(STCustomizeDailyScheduleListController *)self startTimeSpecifier];
    dailySchedule = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    startTime = [dailySchedule startTime];
    endTime = [dailySchedule endTime];
    calendar = [changedCopy calendar];
    date = [changedCopy date];
    dailySchedule3 = [calendar components:96 fromDate:date];

    dailySchedule2 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    [dailySchedule2 setStartTime:dailySchedule3];

    v14 = STCompareHourMinuteTimeComponents();
    if (v14 != STCompareHourMinuteTimeComponents())
    {
      endTimeSpecifier = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
      [(STCustomizeDailyScheduleListController *)self reloadSpecifier:endTimeSpecifier];
    }
  }

  else
  {
    endTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];
    v17 = [(STCustomizeDailyScheduleListController *)self containsSpecifier:endTimePickerSpecifier];

    if (!v17)
    {
      goto LABEL_8;
    }

    startTimeSpecifier = [(STCustomizeDailyScheduleListController *)self endTimeSpecifier];
    dailySchedule = [changedCopy calendar];
    startTime = [changedCopy date];
    endTime = [dailySchedule components:96 fromDate:startTime];
    dailySchedule3 = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    [dailySchedule3 setEndTime:endTime];
  }

  if (startTimeSpecifier)
  {
    [(STCustomizeDailyScheduleListController *)self reloadSpecifier:startTimeSpecifier];
    v18 = [startTimeSpecifier objectForKeyedSubscript:*MEMORY[0x277D40148]];
    tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
    detailTextLabel = [v18 detailTextLabel];
    [detailTextLabel setTextColor:tableCellBlueTextColor];
  }

LABEL_8:
}

- (id)datePickerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_opt_new();
  [v5 setPreferredDatePickerStyle:1];
  [v5 setDatePickerMode:0];
  startTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self startTimePickerSpecifier];

  if (startTimePickerSpecifier == specifierCopy)
  {
    calendar = [v5 calendar];
    dailySchedule = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    startTime = [dailySchedule startTime];
    v14 = [calendar dateFromComponents:startTime];
    [v5 setDate:v14];

    minimumStartTime = [(STCustomizeDailyScheduleListController *)self minimumStartTime];
    endTime = [calendar dateFromComponents:minimumStartTime];
    [v5 setMinimumDate:endTime];
  }

  else
  {
    endTimePickerSpecifier = [(STCustomizeDailyScheduleListController *)self endTimePickerSpecifier];

    if (endTimePickerSpecifier != specifierCopy)
    {
      goto LABEL_6;
    }

    calendar = [v5 calendar];
    minimumStartTime = [(STCustomizeDailyScheduleListController *)self dailySchedule];
    endTime = [minimumStartTime endTime];
    v11 = [calendar dateFromComponents:endTime];
    [v5 setDate:v11];
  }

LABEL_6:

  return v5;
}

- (STCustomizeDailyScheduleListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end