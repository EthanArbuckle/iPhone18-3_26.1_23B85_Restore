@interface STSimpleScheduleListController
- (STSimpleScheduleListController)initWithSimpleSchedule:(id)schedule;
- (STSimpleScheduleListControllerDelegate)delegate;
- (id)_endTime:(id)time;
- (id)_startTime:(id)time;
- (id)datePickerForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_updateTimeSpecifierDetailTextLabelColors:(BOOL)colors selectedSpecifier:(id)specifier unselectedSpecifier:(id)unselectedSpecifier;
- (void)cancelButtonTapped:(id)tapped;
- (void)datePickerChanged:(id)changed;
- (void)doneButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation STSimpleScheduleListController

- (STSimpleScheduleListController)initWithSimpleSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v42.receiver = self;
  v42.super_class = STSimpleScheduleListController;
  v5 = [(STSimpleScheduleListController *)&v42 init];
  if (v5)
  {
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = [v6 localizedStringForKey:@"DeviceDowntimeEditScheduleTitle" value:&stru_28766E5A8 table:0];
    [(STSimpleScheduleListController *)v5 setTitle:v7];

    navigationItem = [(STSimpleScheduleListController *)v5 navigationItem];
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v5 action:sel_cancelButtonTapped_];
    [navigationItem setLeftBarButtonItem:v9];

    v40 = navigationItem;
    if (_UISolariumEnabled())
    {
      v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel_doneButtonTapped_];
      [navigationItem setRightBarButtonItem:v10];
    }

    else
    {
      v11 = +[STScreenTimeSettingsUIBundle bundle];
      v10 = [v11 localizedStringForKey:@"DeviceDowntimeScheduleDoneBarButtonItemTitle" value:&stru_28766E5A8 table:0];

      v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v10 style:2 target:v5 action:sel_doneButtonTapped_];
      [navigationItem setRightBarButtonItem:v12];
    }

    v13 = [scheduleCopy copy];
    simpleSchedule = v5->_simpleSchedule;
    v5->_simpleSchedule = v13;

    st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    simpleScheduleGroupSpecifier = v5->_simpleScheduleGroupSpecifier;
    v5->_simpleScheduleGroupSpecifier = st_emptyGroupSpecifier;

    v17 = [v6 localizedStringForKey:@"DeviceDowntimeFromSpecifierName" value:&stru_28766E5A8 table:0];
    v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v17 target:v5 set:0 get:sel__startTime_ detail:0 cell:4 edit:0];
    startTimeSpecifier = v5->_startTimeSpecifier;
    v5->_startTimeSpecifier = v18;

    v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v5 set:0 get:0 detail:0 cell:4 edit:0];
    startTimePickerSpecifier = v5->_startTimePickerSpecifier;
    v5->_startTimePickerSpecifier = v20;

    v41 = scheduleCopy;
    v22 = objc_opt_new();
    uUIDString = [v22 UUIDString];
    [(PSSpecifier *)v5->_startTimePickerSpecifier setIdentifier:uUIDString];

    v24 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v25 = [v24 numberWithDouble:?];
    v26 = *MEMORY[0x277D40140];
    [(PSSpecifier *)v5->_startTimePickerSpecifier setObject:v25 forKeyedSubscript:*MEMORY[0x277D40140]];

    v27 = objc_opt_class();
    v28 = *MEMORY[0x277D3FE58];
    [(PSSpecifier *)v5->_startTimePickerSpecifier setObject:v27 forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v29 = [v6 localizedStringForKey:@"DeviceDowntimeToSpecifierName" value:&stru_28766E5A8 table:0];
    v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v29 target:v5 set:0 get:sel__endTime_ detail:0 cell:4 edit:0];
    endTimeSpecifier = v5->_endTimeSpecifier;
    v5->_endTimeSpecifier = v30;

    v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v5 set:0 get:0 detail:0 cell:4 edit:0];
    endTimePickerSpecifier = v5->_endTimePickerSpecifier;
    v5->_endTimePickerSpecifier = v32;

    v34 = objc_opt_new();
    uUIDString2 = [v34 UUIDString];
    [(PSSpecifier *)v5->_endTimePickerSpecifier setIdentifier:uUIDString2];

    v36 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v37 = [v36 numberWithDouble:?];
    v38 = v26;
    scheduleCopy = v41;
    [(PSSpecifier *)v5->_endTimePickerSpecifier setObject:v37 forKeyedSubscript:v38];

    [(PSSpecifier *)v5->_endTimePickerSpecifier setObject:objc_opt_class() forKeyedSubscript:v28];
  }

  return v5;
}

- (void)doneButtonTapped:(id)tapped
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User saved edited simple Downtime schedule", v7, 2u);
  }

  delegate = [(STSimpleScheduleListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    simpleSchedule = [(STSimpleScheduleListController *)self simpleSchedule];
    [delegate simpleScheduleListController:self didSaveSimpleSchedule:simpleSchedule];
  }
}

- (void)cancelButtonTapped:(id)tapped
{
  v4 = +[STUILog persistence];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_INFO, "User cancelled editing simple Downtime schedule", v6, 2u);
  }

  delegate = [(STSimpleScheduleListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate simpleScheduleListControllerDidCancel:self];
  }
}

- (id)specifiers
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    simpleScheduleGroupSpecifier = [(STSimpleScheduleListController *)self simpleScheduleGroupSpecifier];
    v12[0] = simpleScheduleGroupSpecifier;
    startTimeSpecifier = [(STSimpleScheduleListController *)self startTimeSpecifier];
    v12[1] = startTimeSpecifier;
    startTimePickerSpecifier = [(STSimpleScheduleListController *)self startTimePickerSpecifier];
    v12[2] = startTimePickerSpecifier;
    endTimeSpecifier = [(STSimpleScheduleListController *)self endTimeSpecifier];
    v12[3] = endTimeSpecifier;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_startTime:(id)time
{
  v4 = objc_opt_new();
  [v4 setTimeStyle:1];
  [v4 setDateStyle:0];
  [v4 setFormattingContext:1];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  simpleSchedule = [(STSimpleScheduleListController *)self simpleSchedule];
  startTime = [simpleSchedule startTime];
  v8 = [currentCalendar dateFromComponents:startTime];

  v9 = [v4 stringFromDate:v8];

  return v9;
}

- (id)_endTime:(id)time
{
  v4 = objc_opt_new();
  [v4 setTimeStyle:1];
  [v4 setDateStyle:0];
  [v4 setFormattingContext:1];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  simpleSchedule = [(STSimpleScheduleListController *)self simpleSchedule];
  endTime = [simpleSchedule endTime];
  v8 = [currentCalendar dateFromComponents:endTime];

  v9 = [v4 stringFromDate:v8];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STSimpleScheduleListController *)self specifierAtIndexPath:pathCopy];
  startTimeSpecifier = [(STSimpleScheduleListController *)self startTimeSpecifier];
  startTimePickerSpecifier = [(STSimpleScheduleListController *)self startTimePickerSpecifier];
  endTimeSpecifier = [(STSimpleScheduleListController *)self endTimeSpecifier];
  endTimePickerSpecifier = [(STSimpleScheduleListController *)self endTimePickerSpecifier];
  if (v8 == startTimeSpecifier)
  {
    if ([(STSimpleScheduleListController *)self containsSpecifier:endTimePickerSpecifier])
    {
      v14 = 1;
      [(STSimpleScheduleListController *)self removeSpecifier:endTimePickerSpecifier animated:1];
    }

    else
    {
      if ([(STSimpleScheduleListController *)self containsSpecifier:startTimePickerSpecifier])
      {
        [(STSimpleScheduleListController *)self removeSpecifier:startTimePickerSpecifier animated:1];
        v14 = 0;
LABEL_13:
        selfCopy2 = self;
        v16 = v14;
        v17 = startTimeSpecifier;
        v18 = endTimeSpecifier;
LABEL_17:
        [(STSimpleScheduleListController *)selfCopy2 _updateTimeSpecifierDetailTextLabelColors:v16 selectedSpecifier:v17 unselectedSpecifier:v18];
        identifier = [v8 identifier];
        [(STSimpleScheduleListController *)self highlightSpecifierWithID:identifier];

        goto LABEL_18;
      }

      v14 = 1;
    }

    [(STSimpleScheduleListController *)self insertSpecifier:startTimePickerSpecifier afterSpecifier:startTimeSpecifier animated:1];
    goto LABEL_13;
  }

  if (v8 == endTimeSpecifier)
  {
    if ([(STSimpleScheduleListController *)self containsSpecifier:startTimePickerSpecifier])
    {
      v13 = 1;
      [(STSimpleScheduleListController *)self removeSpecifier:startTimePickerSpecifier animated:1];
    }

    else
    {
      if ([(STSimpleScheduleListController *)self containsSpecifier:endTimePickerSpecifier])
      {
        [(STSimpleScheduleListController *)self removeSpecifier:endTimePickerSpecifier animated:1];
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

    [(STSimpleScheduleListController *)self insertSpecifier:endTimePickerSpecifier afterSpecifier:endTimeSpecifier animated:1];
    goto LABEL_16;
  }

LABEL_18:
  v20.receiver = self;
  v20.super_class = STSimpleScheduleListController;
  [(STSimpleScheduleListController *)&v20 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  startTimeSpecifier = [(STSimpleScheduleListController *)self startTimeSpecifier];
  v10 = [(STSimpleScheduleListController *)self indexPathForSpecifier:startTimeSpecifier];
  v11 = [pathCopy isEqual:v10];
  if (v11)
  {
    startTimePickerSpecifier = [(STSimpleScheduleListController *)self startTimePickerSpecifier];
    if ([(STSimpleScheduleListController *)self containsSpecifier:startTimePickerSpecifier])
    {

      goto LABEL_11;
    }
  }

  endTimeSpecifier = [(STSimpleScheduleListController *)self endTimeSpecifier];
  v13 = [(STSimpleScheduleListController *)self indexPathForSpecifier:endTimeSpecifier];
  if ([pathCopy isEqual:v13])
  {
    endTimePickerSpecifier = [(STSimpleScheduleListController *)self endTimePickerSpecifier];
    v15 = [(STSimpleScheduleListController *)self containsSpecifier:endTimePickerSpecifier];
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
  calendar = [changedCopy calendar];
  date = [changedCopy date];

  v15 = [calendar components:96 fromDate:date];

  startTimePickerSpecifier = [(STSimpleScheduleListController *)self startTimePickerSpecifier];
  LODWORD(calendar) = [(STSimpleScheduleListController *)self containsSpecifier:startTimePickerSpecifier];

  if (calendar)
  {
    startTimeSpecifier = [(STSimpleScheduleListController *)self startTimeSpecifier];
    simpleSchedule = [(STSimpleScheduleListController *)self simpleSchedule];
    [simpleSchedule setStartTime:v15];
  }

  else
  {
    endTimePickerSpecifier = [(STSimpleScheduleListController *)self endTimePickerSpecifier];
    v11 = [(STSimpleScheduleListController *)self containsSpecifier:endTimePickerSpecifier];

    if (!v11)
    {
      goto LABEL_7;
    }

    startTimeSpecifier = [(STSimpleScheduleListController *)self endTimeSpecifier];
    simpleSchedule = [(STSimpleScheduleListController *)self simpleSchedule];
    [simpleSchedule setEndTime:v15];
  }

  if (startTimeSpecifier)
  {
    [(STSimpleScheduleListController *)self reloadSpecifier:startTimeSpecifier];
    v12 = [startTimeSpecifier objectForKeyedSubscript:*MEMORY[0x277D40148]];
    tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
    detailTextLabel = [v12 detailTextLabel];
    [detailTextLabel setTextColor:tableCellBlueTextColor];
  }

LABEL_7:
}

- (id)datePickerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_opt_new();
  [v5 setPreferredDatePickerStyle:1];
  [v5 setDatePickerMode:0];
  startTimePickerSpecifier = [(STSimpleScheduleListController *)self startTimePickerSpecifier];

  if (startTimePickerSpecifier == specifierCopy)
  {
    calendar = [v5 calendar];
    simpleSchedule = [(STSimpleScheduleListController *)self simpleSchedule];
    startTime = [simpleSchedule startTime];
  }

  else
  {
    endTimePickerSpecifier = [(STSimpleScheduleListController *)self endTimePickerSpecifier];

    if (endTimePickerSpecifier != specifierCopy)
    {
      goto LABEL_6;
    }

    calendar = [v5 calendar];
    simpleSchedule = [(STSimpleScheduleListController *)self simpleSchedule];
    startTime = [simpleSchedule endTime];
  }

  v11 = startTime;
  v12 = [calendar dateFromComponents:startTime];
  [v5 setDate:v12];

LABEL_6:

  return v5;
}

- (STSimpleScheduleListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end