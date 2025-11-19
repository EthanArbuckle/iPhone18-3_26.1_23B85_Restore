@interface WFTimeOfDayTriggerConfigurationViewController
- (BOOL)showingPicker;
- (WFTimeOfDayTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (_CDUserContext)userContext;
- (id)calendarFooterText;
- (id)currentDayOfMonth;
- (id)currentSunriseTime;
- (id)currentSunsetTime;
- (id)customSections;
- (id)dateComponentsFromTriggerDays;
- (id)infoForSection:(int64_t)a3;
- (id)subtitleForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (id)titleForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dayOfWeekPickerCell:(id)a3 didChangeSelectedRecurrences:(id)a4;
- (void)dismissKeyboard;
- (void)presentOffsetPickerViewControllerForEvent:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)timeOffsetPickerViewController:(id)a3 didSelectOffset:(unint64_t)a4;
- (void)timePickerUpdated:(id)a3;
- (void)updateCalendarDayIfNeeded;
- (void)updateCalendarFooterText;
- (void)updateTriggerCalendarDayFromDate:(id)a3;
- (void)updateTriggerTimeFromDate:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFTimeOfDayTriggerConfigurationViewController

- (id)currentSunsetTime
{
  v2 = [(WFTimeOfDayTriggerConfigurationViewController *)self userContext];
  v3 = [MEMORY[0x277CFE338] keyPathForSunriseSunsetDataDictionary];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x277CFE338] currentSunsetKey];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (id)currentSunriseTime
{
  v2 = [(WFTimeOfDayTriggerConfigurationViewController *)self userContext];
  v3 = [MEMORY[0x277CFE338] keyPathForSunriseSunsetDataDictionary];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x277CFE338] currentSunriseKey];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (_CDUserContext)userContext
{
  userContext = self->_userContext;
  if (!userContext)
  {
    v4 = [MEMORY[0x277CFE318] userContext];
    v5 = self->_userContext;
    self->_userContext = v4;

    userContext = self->_userContext;
  }

  return userContext;
}

- (id)dateComponentsFromTriggerDays
{
  v3 = objc_opt_new();
  v4 = [(WFTriggerConfigurationViewController *)self trigger];
  v5 = [v4 daysOfWeek];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__WFTimeOfDayTriggerConfigurationViewController_dateComponentsFromTriggerDays__block_invoke;
  v8[3] = &unk_279EE8298;
  v6 = v3;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

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

- (void)dayOfWeekPickerCell:(id)a3 didChangeSelectedRecurrences:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [a4 if_map:&__block_literal_global_14648];
  v6 = [v5 allObjects];

  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [v6 sortedArrayUsingDescriptors:v8];
  v10 = [(WFTriggerConfigurationViewController *)self trigger];
  [v10 setDaysOfWeek:v9];
}

uint64_t __98__WFTimeOfDayTriggerConfigurationViewController_dayOfWeekPickerCell_didChangeSelectedRecurrences___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 weekday];

  return [v2 numberWithInteger:v3];
}

- (void)dismissKeyboard
{
  v2 = [(WFTimeOfDayTriggerConfigurationViewController *)self view];
  [v2 endEditing:1];
}

- (id)currentDayOfMonth
{
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [v2 components:16 fromDate:v3];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "day")}];

  return v5;
}

- (void)timeOffsetPickerViewController:(id)a3 didSelectOffset:(unint64_t)a4
{
  v6 = a3;
  [(WFTimeOfDayTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v7 = [v6 event];

  v8 = [(WFTriggerConfigurationViewController *)self trigger];
  [v8 setEvent:v7];

  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  [v9 setTimeOffset:a4];

  v10 = [(WFTriggerConfigurationViewController *)self trigger];
  [v10 setTime:0];

  v11 = [(WFTriggerConfigurationViewController *)self tableView];
  [v11 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)calendarFooterText
{
  v3 = MEMORY[0x277D7C960];
  v4 = [(WFTriggerConfigurationViewController *)self trigger];
  v5 = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunriseTime];
  v6 = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunsetTime];
  v7 = [v3 nextFireDateFromNowWithTrigger:v4 currentSunriseTime:v5 currentSunsetTime:v6];

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 components:16 fromDate:v7];
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
  v6 = [(WFTimeOfDayTriggerConfigurationViewController *)self calendarFooterText];
  v3 = [(WFTriggerConfigurationViewController *)self tableView];
  v4 = [v3 footerViewForSection:3];
  v5 = [v4 textLabel];
  [v5 setText:v6];
}

- (void)updateCalendarDayIfNeeded
{
  if ([(WFTimeOfDayTriggerConfigurationViewController *)self timeOfDayInterval]== 2)
  {
    v3 = [(WFTriggerConfigurationViewController *)self tableView];
    v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:3];
    v5 = [v3 cellForRowAtIndexPath:v4];

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
    v9 = [(WFTriggerConfigurationViewController *)self trigger];
    v10 = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunriseTime];
    v11 = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunsetTime];
    v12 = [v8 nextFireDateFromNowWithTrigger:v9 currentSunriseTime:v10 currentSunsetTime:v11];

    v13 = [v7 datePicker];

    [v13 setDate:v12];
  }
}

- (void)timePickerUpdated:(id)a3
{
  v6 = a3;
  if ([v6 datePickerMode])
  {
    if ([v6 datePickerMode] == 1)
    {
      v4 = [v6 date];
      [(WFTimeOfDayTriggerConfigurationViewController *)self updateTriggerCalendarDayFromDate:v4];

      [(WFTimeOfDayTriggerConfigurationViewController *)self updateCalendarFooterText];
    }
  }

  else
  {
    v5 = [v6 date];
    [(WFTimeOfDayTriggerConfigurationViewController *)self updateTriggerTimeFromDate:v5];

    [(WFTimeOfDayTriggerConfigurationViewController *)self updateCalendarDayIfNeeded];
  }

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)updateTriggerCalendarDayFromDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v9 = [v6 components:16 fromDate:v5];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "day")}];
  v8 = [(WFTriggerConfigurationViewController *)self trigger];
  [v8 setDayOfMonth:v7];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)updateTriggerTimeFromDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v8 = [v6 components:96 fromDate:v5];

  v7 = [(WFTriggerConfigurationViewController *)self trigger];
  [v7 setTime:v8];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)presentOffsetPickerViewControllerForEvent:(unint64_t)a3
{
  v5 = [WFTimeOffsetPickerViewController alloc];
  v6 = [(WFTriggerConfigurationViewController *)self trigger];
  v8 = -[WFTimeOffsetPickerViewController initWithTimeTriggerEvent:timeOffset:](v5, "initWithTimeTriggerEvent:timeOffset:", a3, [v6 timeOffset]);

  [(WFTimeOffsetPickerViewController *)v8 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(WFTimeOfDayTriggerConfigurationViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v28 = a4;
  [a3 deselectRowAtIndexPath:v28 animated:1];
  v6 = -[WFTimeOfDayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v28 section]);
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

    if ([v28 row])
    {
      if ([v28 row] == 1)
      {
        v12 = [(WFTriggerConfigurationViewController *)self trigger];
        [v12 setMode:0];

        v13 = [(WFTriggerConfigurationViewController *)self trigger];
        [v13 setDayOfMonth:0];

        v14 = [(WFTimeOfDayTriggerConfigurationViewController *)self allDaysOfWeek];
        v15 = [(WFTriggerConfigurationViewController *)self trigger];
        [v15 setDaysOfWeek:v14];
        v16 = 1;
      }

      else
      {
        if ([v28 row] != 2)
        {
LABEL_17:
          v26 = [(WFTriggerConfigurationViewController *)self tableView];
          [v26 reloadData];

          goto LABEL_18;
        }

        v24 = [(WFTriggerConfigurationViewController *)self trigger];
        [v24 setMode:1];

        v25 = [(WFTriggerConfigurationViewController *)self trigger];
        [v25 setDaysOfWeek:MEMORY[0x277CBEBF8]];

        v14 = [(WFTimeOfDayTriggerConfigurationViewController *)self currentDayOfMonth];
        v15 = [(WFTriggerConfigurationViewController *)self trigger];
        [v15 setDayOfMonth:v14];
        v16 = 2;
      }
    }

    else
    {
      v23 = [(WFTriggerConfigurationViewController *)self trigger];
      [v23 setMode:0];

      v14 = [(WFTimeOfDayTriggerConfigurationViewController *)self allDaysOfWeek];
      v15 = [(WFTriggerConfigurationViewController *)self trigger];
      [v15 setDaysOfWeek:v14];
      v16 = 0;
    }

    [(WFTimeOfDayTriggerConfigurationViewController *)self setTimeOfDayInterval:v16];
    goto LABEL_17;
  }

  if ([v28 row] > 2)
  {
    goto LABEL_18;
  }

  v9 = [v28 row];
  if (v9 < 2)
  {
    [(WFTimeOfDayTriggerConfigurationViewController *)self presentOffsetPickerViewControllerForEvent:v9];
    goto LABEL_18;
  }

  if (v9 == 2)
  {
    v17 = [(WFTriggerConfigurationViewController *)self trigger];
    v18 = [v17 event];

    v19 = [(WFTriggerConfigurationViewController *)self trigger];
    [v19 setEvent:2];

    if (v18 != 2)
    {
      v20 = [(WFTriggerConfigurationViewController *)self trigger];
      v21 = [v20 time];

      if (!v21)
      {
        v22 = objc_opt_new();
        [(WFTimeOfDayTriggerConfigurationViewController *)self updateTriggerTimeFromDate:v22];
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v28 withSectionInfo:v6];
  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
  v27 = [(WFTriggerConfigurationViewController *)self tableView];
  [v27 reloadData];
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(WFTimeOfDayTriggerConfigurationViewController *)self timeOfDayInterval];
  v7 = 0;
  if (a4 == 3 && v6 == 2)
  {
    v7 = [(WFTimeOfDayTriggerConfigurationViewController *)self calendarFooterText];
  }

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFTimeOfDayTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)subtitleForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[WFTimeOfDayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v4 section]);
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"timeSection"];

  if (!v7 || [v4 row] > 1)
  {
    goto LABEL_5;
  }

  v8 = [v4 row];
  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  if (v8 == [v9 event])
  {
    v10 = [(WFTriggerConfigurationViewController *)self trigger];
    v11 = [v10 timeOffset];

    if (v11 == 7)
    {
LABEL_5:
      v12 = 0;
      goto LABEL_6;
    }

    v14 = MEMORY[0x277D7C958];
    v9 = [(WFTriggerConfigurationViewController *)self trigger];
    v15 = [v9 event];
    v16 = [(WFTriggerConfigurationViewController *)self trigger];
    v12 = [v14 localizedSunriseSunsetDescriptionForTriggerEvent:v15 timeOffset:{objc_msgSend(v16, "timeOffset")}];
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (id)titleForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[WFTimeOfDayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v4 section]);
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"timeSection"];

  if (v7)
  {
    v8 = [v4 row];
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
      v8 = [v4 row];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[WFTimeOfDayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v7 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v6 dequeueReusableCellWithIdentifier:v9 forIndexPath:v7];
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
    v18 = [(WFTimeOfDayTriggerConfigurationViewController *)self titleForIndexPath:v7];
    v19 = [v10 textLabel];
    [v19 setText:v18];

    v20 = [(WFTimeOfDayTriggerConfigurationViewController *)self subtitleForIndexPath:v7];
    v21 = [v10 detailTextLabel];
    [v21 setText:v20];

    v22 = [(WFTriggerConfigurationViewController *)self trigger];
    v23 = [v22 event];
    v24 = [v7 row];

    if (v23 == v24)
    {
      [v10 setAccessoryType:3];
    }

    if ([v7 row] != 3)
    {
      goto LABEL_3;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v64 = v6;
    v13 = [v6 dequeueReusableCellWithIdentifier:v26 forIndexPath:v7];

    v27 = [v13 datePicker];
    [v27 setDatePickerMode:0];

    v28 = [v13 datePicker];
    [v28 addTarget:self action:sel_timePickerUpdated_ forControlEvents:4096];

    v29 = [(WFTriggerConfigurationViewController *)self trigger];
    v30 = [v29 time];

    if (v30)
    {
      v60 = [MEMORY[0x277CBEA80] currentCalendar];
      v61 = objc_opt_new();
      v62 = [(WFTriggerConfigurationViewController *)self trigger];
      v31 = [v62 time];
      v32 = [v60 nextDateAfterDate:v61 matchingComponents:v31 options:5120];
      [v13 datePicker];
      v33 = v9;
      v35 = v34 = v30;
      [v35 setDate:v32];

      v30 = v34;
      v9 = v33;

      v36 = v60;
      v37 = v61;
    }

    else
    {
      v36 = objc_opt_new();
      v37 = [v13 datePicker];
      [v37 setDate:v36];
    }
  }

  else
  {
    v38 = [v8 objectForKeyedSubscript:@"identifier"];
    v39 = [v38 isEqual:@"repeatSection"];

    if (v39)
    {
      v40 = [(WFTimeOfDayTriggerConfigurationViewController *)self titleForIndexPath:v7];
      v41 = [v10 textLabel];
      [v41 setText:v40];

      v42 = [(WFTimeOfDayTriggerConfigurationViewController *)self subtitleForIndexPath:v7];
      v43 = [v10 detailTextLabel];
      [v43 setText:v42];

      if (![v7 row] && !-[WFTimeOfDayTriggerConfigurationViewController timeOfDayInterval](self, "timeOfDayInterval") || objc_msgSend(v7, "row") == 1 && -[WFTimeOfDayTriggerConfigurationViewController timeOfDayInterval](self, "timeOfDayInterval") == 1 || objc_msgSend(v7, "row") == 2 && -[WFTimeOfDayTriggerConfigurationViewController timeOfDayInterval](self, "timeOfDayInterval") == 2)
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

      v51 = [(WFTimeOfDayTriggerConfigurationViewController *)self dateComponentsFromTriggerDays];
      [v50 setSelectedRecurrences:v51];

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
    v64 = v6;
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

    v53 = [v52 datePicker];
    [v53 setDatePickerMode:1];

    v54 = MEMORY[0x277D7C960];
    v63 = [(WFTriggerConfigurationViewController *)self trigger];
    v55 = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunriseTime];
    v56 = [(WFTimeOfDayTriggerConfigurationViewController *)self currentSunsetTime];
    v57 = [v54 nextFireDateFromNowWithTrigger:v63 currentSunriseTime:v55 currentSunsetTime:v56];
    v58 = [v52 datePicker];
    [v58 setDate:v57];

    v59 = [v52 datePicker];
    [v59 addTarget:self action:sel_timePickerUpdated_ forControlEvents:4096];

    [v52 setSelectionStyle:0];
  }

  v6 = v64;
LABEL_4:
  v14 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v13 indexPath:v7 sectionInfo:v8, v60];

  return v14;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFTimeOfDayTriggerConfigurationViewController *)self infoForSection:a4];
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)infoForSection:(int64_t)a3
{
  v4 = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (BOOL)showingPicker
{
  v2 = [(WFTriggerConfigurationViewController *)self trigger];
  v3 = [v2 event] == 2;

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WFTimeOfDayTriggerConfigurationViewController;
  [(WFTimeOfDayTriggerConfigurationViewController *)&v7 viewWillAppear:a3];
  v4 = [(WFTriggerConfigurationViewController *)self tableView];
  [v4 reloadData];

  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_dismissKeyboard];
  [v5 setCancelsTouchesInView:0];
  v6 = [(WFTimeOfDayTriggerConfigurationViewController *)self view];
  [v6 addGestureRecognizer:v5];
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

- (WFTimeOfDayTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFTimeOfDayTriggerConfigurationViewController.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFTimeOfDayTrigger class]]"}];
  }

  v15.receiver = self;
  v15.super_class = WFTimeOfDayTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v15 initWithTrigger:v7 mode:a4];
  if (v8)
  {
    if ([v7 mode])
    {
      v9 = 2;
    }

    else
    {
      v10 = [v7 daysOfWeek];
      v11 = [v10 count];

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