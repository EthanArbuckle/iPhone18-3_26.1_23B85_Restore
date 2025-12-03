@interface WFTimeOfDayTriggerConfigurationViewController
- (BOOL)showingPicker;
- (WFTimeOfDayTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (_CDUserContext)userContext;
- (id)calendarFooterText;
- (id)currentDayOfMonth;
- (id)currentSunriseTime;
- (id)currentSunsetTime;
- (id)customSections;
- (id)dateComponentsFromTriggerDays;
- (id)infoForSection:(int64_t)section;
- (id)subtitleForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (id)titleForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dayOfWeekPickerCell:(id)cell didChangeSelectedRecurrences:(id)recurrences;
- (void)dismissKeyboard;
- (void)presentOffsetPickerViewControllerForEvent:(unint64_t)event;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)timeOffsetPickerViewController:(id)controller didSelectOffset:(unint64_t)offset;
- (void)timePickerUpdated:(id)updated;
- (void)updateCalendarDayIfNeeded;
- (void)updateCalendarFooterText;
- (void)updateTriggerCalendarDayFromDate:(id)date;
- (void)updateTriggerTimeFromDate:(id)date;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFTimeOfDayTriggerConfigurationViewController

- (id)currentSunsetTime
{
  userContext = [(WFTimeOfDayTriggerConfigurationViewController *)self userContext];
  keyPathForSunriseSunsetDataDictionary = [MEMORY[0x277CFE338] keyPathForSunriseSunsetDataDictionary];
  v4 = [userContext objectForKeyedSubscript:keyPathForSunriseSunsetDataDictionary];

  currentSunsetKey = [MEMORY[0x277CFE338] currentSunsetKey];
  v6 = [v4 objectForKey:currentSunsetKey];

  return v6;
}

- (id)currentSunriseTime
{
  userContext = [(WFTimeOfDayTriggerConfigurationViewController *)self userContext];
  keyPathForSunriseSunsetDataDictionary = [MEMORY[0x277CFE338] keyPathForSunriseSunsetDataDictionary];
  v4 = [userContext objectForKeyedSubscript:keyPathForSunriseSunsetDataDictionary];

  currentSunriseKey = [MEMORY[0x277CFE338] currentSunriseKey];
  v6 = [v4 objectForKey:currentSunriseKey];

  return v6;
}

- (_CDUserContext)userContext
{
  userContext = self->_userContext;
  if (!userContext)
  {
    userContext = [MEMORY[0x277CFE318] userContext];
    v5 = self->_userContext;
    self->_userContext = userContext;

    userContext = self->_userContext;
  }

  return userContext;
}

- (id)dateComponentsFromTriggerDays
{
  v3 = objc_opt_new();
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  daysOfWeek = [trigger daysOfWeek];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__WFTimeOfDayTriggerConfigurationViewController_dateComponentsFromTriggerDays__block_invoke;
  v8[3] = &unk_279EE8298;
  v6 = v3;
  v9 = v6;
  [daysOfWeek enumerateObjectsUsingBlock:v8];

  return v6;
}

void __78__WFTimeOfDayTriggerConfigurationViewController_dateComponentsFromTriggerDays__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a2;
  v6 = objc_alloc_init(v3);
  v5 = [v4 integerValue];

  [v6 setWeekday:v5];
  [*(a1 + 32) addObject:v6];
}

- (void)dayOfWeekPickerCell:(id)cell didChangeSelectedRecurrences:(id)recurrences
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [recurrences if_map:&__block_literal_global_14648];
  allObjects = [v5 allObjects];

  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [allObjects sortedArrayUsingDescriptors:v8];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setDaysOfWeek:v9];
}

uint64_t __98__WFTimeOfDayTriggerConfigurationViewController_dayOfWeekPickerCell_didChangeSelectedRecurrences___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 weekday];

  return [v2 numberWithInteger:v3];
}

- (void)dismissKeyboard
{
  view = [(WFTimeOfDayTriggerConfigurationViewController *)self view];
  [view endEditing:1];
}

- (id)currentDayOfMonth
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [currentCalendar components:16 fromDate:v3];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "day")}];

  return v5;
}

- (void)timeOffsetPickerViewController:(id)controller didSelectOffset:(unint64_t)offset
{
  controllerCopy = controller;
  [(WFTimeOfDayTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
  event = [controllerCopy event];

  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setEvent:event];

  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger2 setTimeOffset:offset];

  trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger3 setTime:0];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)calendarFooterText
{
  v3 = MEMORY[0x277D7C960];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  currentSunriseTime = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunriseTime];
  currentSunsetTime = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunsetTime];
  v7 = [v3 nextFireDateFromNowWithTrigger:trigger currentSunriseTime:currentSunriseTime currentSunsetTime:currentSunsetTime];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar components:16 fromDate:v7];
  v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v10 setNumberStyle:WFLocalizedNumberFormatStyle()];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "day")}];
  v12 = [v10 stringFromNumber:v11];

  v13 = MEMORY[0x277CCACA8];
  v14 = WFLocalizedString(@"This automation will repeat on the %@ of every month.");
  v15 = [v13 stringWithFormat:v14, v12];

  return v15;
}

- (void)updateCalendarFooterText
{
  calendarFooterText = [(WFTimeOfDayTriggerConfigurationViewController *)self calendarFooterText];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  v4 = [tableView footerViewForSection:3];
  textLabel = [v4 textLabel];
  [textLabel setText:calendarFooterText];
}

- (void)updateCalendarDayIfNeeded
{
  if ([(WFTimeOfDayTriggerConfigurationViewController *)self timeOfDayInterval]== 2)
  {
    tableView = [(WFTriggerConfigurationViewController *)self tableView];
    v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:3];
    v5 = [tableView cellForRowAtIndexPath:v4];

    v14 = v5;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v14;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = MEMORY[0x277D7C960];
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    currentSunriseTime = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunriseTime];
    currentSunsetTime = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunsetTime];
    v12 = [v8 nextFireDateFromNowWithTrigger:trigger currentSunriseTime:currentSunriseTime currentSunsetTime:currentSunsetTime];

    datePicker = [v7 datePicker];

    [datePicker setDate:v12];
  }
}

- (void)timePickerUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy datePickerMode])
  {
    if ([updatedCopy datePickerMode] == 1)
    {
      date = [updatedCopy date];
      [(WFTimeOfDayTriggerConfigurationViewController *)self updateTriggerCalendarDayFromDate:date];

      [(WFTimeOfDayTriggerConfigurationViewController *)self updateCalendarFooterText];
    }
  }

  else
  {
    date2 = [updatedCopy date];
    [(WFTimeOfDayTriggerConfigurationViewController *)self updateTriggerTimeFromDate:date2];

    [(WFTimeOfDayTriggerConfigurationViewController *)self updateCalendarDayIfNeeded];
  }

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)updateTriggerCalendarDayFromDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v9 = [currentCalendar components:16 fromDate:dateCopy];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "day")}];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setDayOfMonth:v7];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)updateTriggerTimeFromDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v8 = [currentCalendar components:96 fromDate:dateCopy];

  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setTime:v8];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)presentOffsetPickerViewControllerForEvent:(unint64_t)event
{
  v5 = [WFTimeOffsetPickerViewController alloc];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  v8 = -[WFTimeOffsetPickerViewController initWithTimeTriggerEvent:timeOffset:](v5, "initWithTimeTriggerEvent:timeOffset:", event, [trigger timeOffset]);

  [(WFTimeOffsetPickerViewController *)v8 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(WFTimeOfDayTriggerConfigurationViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = -[WFTimeOfDayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  v8 = [v7 isEqual:@"timeSection"];

  if (!v8)
  {
    v10 = [v6 objectForKeyedSubscript:@"identifier"];
    v11 = [v10 isEqual:@"repeatSection"];

    if (!v11)
    {
      goto LABEL_18;
    }

    if ([pathCopy row])
    {
      if ([pathCopy row] == 1)
      {
        trigger = [(WFTriggerConfigurationViewController *)self trigger];
        [trigger setMode:0];

        trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
        [trigger2 setDayOfMonth:0];

        allDaysOfWeek = [(WFTimeOfDayTriggerConfigurationViewController *)self allDaysOfWeek];
        trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
        [trigger3 setDaysOfWeek:allDaysOfWeek];
        v16 = 1;
      }

      else
      {
        if ([pathCopy row] != 2)
        {
LABEL_17:
          tableView = [(WFTriggerConfigurationViewController *)self tableView];
          [tableView reloadData];

          goto LABEL_18;
        }

        trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
        [trigger4 setMode:1];

        trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
        [trigger5 setDaysOfWeek:MEMORY[0x277CBEBF8]];

        allDaysOfWeek = [(WFTimeOfDayTriggerConfigurationViewController *)self currentDayOfMonth];
        trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
        [trigger3 setDayOfMonth:allDaysOfWeek];
        v16 = 2;
      }
    }

    else
    {
      trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
      [trigger6 setMode:0];

      allDaysOfWeek = [(WFTimeOfDayTriggerConfigurationViewController *)self allDaysOfWeek];
      trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
      [trigger3 setDaysOfWeek:allDaysOfWeek];
      v16 = 0;
    }

    [(WFTimeOfDayTriggerConfigurationViewController *)self setTimeOfDayInterval:v16];
    goto LABEL_17;
  }

  if ([pathCopy row] > 2)
  {
    goto LABEL_18;
  }

  v9 = [pathCopy row];
  if (v9 < 2)
  {
    [(WFTimeOfDayTriggerConfigurationViewController *)self presentOffsetPickerViewControllerForEvent:v9];
    goto LABEL_18;
  }

  if (v9 == 2)
  {
    trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
    event = [trigger7 event];

    trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger8 setEvent:2];

    if (event != 2)
    {
      trigger9 = [(WFTriggerConfigurationViewController *)self trigger];
      time = [trigger9 time];

      if (!time)
      {
        v22 = objc_opt_new();
        [(WFTimeOfDayTriggerConfigurationViewController *)self updateTriggerTimeFromDate:v22];
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v6];
  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
  tableView2 = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView2 reloadData];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  timeOfDayInterval = [(WFTimeOfDayTriggerConfigurationViewController *)self timeOfDayInterval];
  calendarFooterText = 0;
  if (section == 3 && timeOfDayInterval == 2)
  {
    calendarFooterText = [(WFTimeOfDayTriggerConfigurationViewController *)self calendarFooterText];
  }

  return calendarFooterText;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFTimeOfDayTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)subtitleForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[WFTimeOfDayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"timeSection"];

  if (!v7 || [pathCopy row] > 1)
  {
    goto LABEL_5;
  }

  v8 = [pathCopy row];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  if (v8 == [trigger event])
  {
    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    timeOffset = [trigger2 timeOffset];

    if (timeOffset == 7)
    {
LABEL_5:
      v12 = 0;
      goto LABEL_6;
    }

    v14 = MEMORY[0x277D7C958];
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    event = [trigger event];
    trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
    v12 = [v14 localizedSunriseSunsetDescriptionForTriggerEvent:event timeOffset:{objc_msgSend(trigger3, "timeOffset")}];
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (id)titleForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[WFTimeOfDayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"timeSection"];

  if (v7)
  {
    v8 = [pathCopy row];
    if (v8 < 3)
    {
      v9 = off_279EE8EA0;
LABEL_7:
      v12 = WFLocalizedString(v9[v8]);
      goto LABEL_9;
    }
  }

  else
  {
    v10 = [v5 objectForKeyedSubscript:@"identifier"];
    v11 = [v10 isEqual:@"repeatSection"];

    if (v11)
    {
      v8 = [pathCopy row];
      if (v8 < 3)
      {
        v9 = off_279EE8EB8;
        goto LABEL_7;
      }
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[WFTimeOfDayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];
  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setSelectionStyle:0];
LABEL_3:
    v13 = v10;
    goto LABEL_4;
  }

  v16 = [v8 objectForKeyedSubscript:@"identifier"];
  v17 = [v16 isEqual:@"timeSection"];

  if (v17)
  {
    v18 = [(WFTimeOfDayTriggerConfigurationViewController *)self titleForIndexPath:pathCopy];
    textLabel = [v10 textLabel];
    [textLabel setText:v18];

    v20 = [(WFTimeOfDayTriggerConfigurationViewController *)self subtitleForIndexPath:pathCopy];
    detailTextLabel = [v10 detailTextLabel];
    [detailTextLabel setText:v20];

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    event = [trigger event];
    v24 = [pathCopy row];

    if (event == v24)
    {
      [v10 setAccessoryType:3];
    }

    if ([pathCopy row] != 3)
    {
      goto LABEL_3;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v64 = viewCopy;
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v26 forIndexPath:pathCopy];

    datePicker = [v13 datePicker];
    [datePicker setDatePickerMode:0];

    datePicker2 = [v13 datePicker];
    [datePicker2 addTarget:self action:sel_timePickerUpdated_ forControlEvents:4096];

    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    time = [trigger2 time];

    if (time)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v61 = objc_opt_new();
      trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
      time2 = [trigger3 time];
      v32 = [currentCalendar nextDateAfterDate:v61 matchingComponents:time2 options:5120];
      [v13 datePicker];
      v33 = v9;
      v35 = v34 = time;
      [v35 setDate:v32];

      time = v34;
      v9 = v33;

      v36 = currentCalendar;
      datePicker3 = v61;
    }

    else
    {
      v36 = objc_opt_new();
      datePicker3 = [v13 datePicker];
      [datePicker3 setDate:v36];
    }
  }

  else
  {
    v38 = [v8 objectForKeyedSubscript:@"identifier"];
    v39 = [v38 isEqual:@"repeatSection"];

    if (v39)
    {
      v40 = [(WFTimeOfDayTriggerConfigurationViewController *)self titleForIndexPath:pathCopy];
      textLabel2 = [v10 textLabel];
      [textLabel2 setText:v40];

      v42 = [(WFTimeOfDayTriggerConfigurationViewController *)self subtitleForIndexPath:pathCopy];
      detailTextLabel2 = [v10 detailTextLabel];
      [detailTextLabel2 setText:v42];

      if (![pathCopy row] && !-[WFTimeOfDayTriggerConfigurationViewController timeOfDayInterval](self, "timeOfDayInterval") || objc_msgSend(pathCopy, "row") == 1 && -[WFTimeOfDayTriggerConfigurationViewController timeOfDayInterval](self, "timeOfDayInterval") == 1 || objc_msgSend(pathCopy, "row") == 2 && -[WFTimeOfDayTriggerConfigurationViewController timeOfDayInterval](self, "timeOfDayInterval") == 2)
      {
        [v10 setAccessoryType:3];
      }

      goto LABEL_3;
    }

    v44 = [v8 objectForKeyedSubscript:@"identifier"];
    v45 = [v44 isEqual:@"weekSection"];

    if (v45)
    {
      v13 = v10;
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = v13;
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v46 = 0;
      }

      v50 = v46;

      dateComponentsFromTriggerDays = [(WFTimeOfDayTriggerConfigurationViewController *)self dateComponentsFromTriggerDays];
      [v50 setSelectedRecurrences:dateComponentsFromTriggerDays];

      [v50 setDelegate:self];
      goto LABEL_4;
    }

    v47 = [v8 objectForKeyedSubscript:@"identifier"];
    v48 = [v47 isEqual:@"calendarSection"];

    if (!v48)
    {
      goto LABEL_3;
    }

    v13 = v10;
    v64 = viewCopy;
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v13;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v52 = v49;

    datePicker4 = [v52 datePicker];
    [datePicker4 setDatePickerMode:1];

    v54 = MEMORY[0x277D7C960];
    trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
    currentSunriseTime = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunriseTime];
    currentSunsetTime = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunsetTime];
    v57 = [v54 nextFireDateFromNowWithTrigger:trigger4 currentSunriseTime:currentSunriseTime currentSunsetTime:currentSunsetTime];
    datePicker5 = [v52 datePicker];
    [datePicker5 setDate:v57];

    datePicker6 = [v52 datePicker];
    [datePicker6 addTarget:self action:sel_timePickerUpdated_ forControlEvents:4096];

    [v52 setSelectionStyle:0];
  }

  viewCopy = v64;
LABEL_4:
  v14 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v13 indexPath:pathCopy sectionInfo:v8, currentCalendar];

  return v14;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFTimeOfDayTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"triggerDescription"];

  if (v7)
  {
LABEL_2:
    v8 = 1;
    goto LABEL_9;
  }

  v9 = [v5 objectForKeyedSubscript:@"identifier"];
  v10 = [v9 isEqual:@"timeSection"];

  if (!v10)
  {
    v11 = [v5 objectForKeyedSubscript:@"identifier"];
    v12 = [v11 isEqual:@"repeatSection"];

    if (v12)
    {
      v8 = 3;
      goto LABEL_9;
    }

    v14 = [v5 objectForKeyedSubscript:@"identifier"];
    v15 = [v14 isEqual:@"weekSection"];

    if ((v15 & 1) == 0)
    {
      v16 = [v5 objectForKeyedSubscript:@"identifier"];
      v17 = [v16 isEqual:@"calendarSection"];

      if ((v17 & 1) == 0)
      {
        v8 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];
        goto LABEL_9;
      }
    }

    goto LABEL_2;
  }

  if ([(WFTimeOfDayTriggerConfigurationViewController *)self showingPicker])
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

LABEL_9:

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (BOOL)showingPicker
{
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  v3 = [trigger event] == 2;

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = WFTimeOfDayTriggerConfigurationViewController;
  [(WFTimeOfDayTriggerConfigurationViewController *)&v7 viewWillAppear:appear];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_dismissKeyboard];
  [v5 setCancelsTouchesInView:0];
  view = [(WFTimeOfDayTriggerConfigurationViewController *)self view];
  [view addGestureRecognizer:v5];
}

- (id)customSections
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v30[0] = @"timeSection";
  v29[0] = @"identifier";
  v29[1] = @"cellIdentifier";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v30[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v31[0] = v6;
  v28[0] = @"repeatSection";
  v27[0] = @"identifier";
  v27[1] = @"sectionTitle";
  v7 = WFLocalizedString(@"Repeat");
  v28[1] = v7;
  v27[2] = @"cellIdentifier";
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v28[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v31[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v12 = [v3 arrayWithArray:v11];

  if ([(WFTimeOfDayTriggerConfigurationViewController *)self timeOfDayInterval]== 1)
  {
    v25[1] = @"cellIdentifier";
    v26[0] = @"weekSection";
    v25[0] = @"identifier";
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v26[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v12 addObject:v15];
  }

  else
  {
    if ([(WFTimeOfDayTriggerConfigurationViewController *)self timeOfDayInterval]!= 2)
    {
      goto LABEL_6;
    }

    v22 = @"calendarSection";
    v19 = @"identifier";
    v20 = @"sectionTitle";
    v14 = WFLocalizedString(@"Starting");
    v23 = v14;
    v21 = @"cellIdentifier";
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v24 = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v19 count:3];
    [v12 addObject:{v17, v19, v20, v21, v22, v23}];
  }

LABEL_6:

  return v12;
}

- (id)tableViewCellClasses
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (WFTimeOfDayTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTimeOfDayTriggerConfigurationViewController.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFTimeOfDayTrigger class]]"}];
  }

  v15.receiver = self;
  v15.super_class = WFTimeOfDayTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v15 initWithTrigger:triggerCopy mode:mode];
  if (v8)
  {
    if ([triggerCopy mode])
    {
      v9 = 2;
    }

    else
    {
      daysOfWeek = [triggerCopy daysOfWeek];
      v11 = [daysOfWeek count];

      if (v11 == 7)
      {
        v8->_timeOfDayInterval = 0;
LABEL_10:
        v12 = v8;
        goto LABEL_11;
      }

      v9 = 1;
    }

    v8->_timeOfDayInterval = v9;
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

@end