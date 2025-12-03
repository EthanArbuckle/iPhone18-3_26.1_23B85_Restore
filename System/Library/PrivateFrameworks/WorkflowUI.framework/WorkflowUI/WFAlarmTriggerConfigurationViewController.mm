@interface WFAlarmTriggerConfigurationViewController
- (WFAlarmTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)extraTextForCellInSection:(id)section item:(id)item;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (id)titleForCellInSection:(id)section item:(id)item;
- (int64_t)accessoryTypeForCellInSection:(id)section item:(id)item;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)alarmChooserViewController:(id)controller didFinishWithChosenAlarms:(id)alarms;
- (void)presentAlarmChooserViewController;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFAlarmTriggerConfigurationViewController

- (void)alarmChooserViewController:(id)controller didFinishWithChosenAlarms:(id)alarms
{
  v21 = *MEMORY[0x277D85DE8];
  alarmsCopy = alarms;
  v6 = getWFTriggersLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[WFAlarmTriggerConfigurationViewController alarmChooserViewController:didFinishWithChosenAlarms:]";
    v19 = 2048;
    v20 = [alarmsCopy count];
    _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_INFO, "%s Got %lu alarms from the chooser", buf, 0x16u);
  }

  v7 = [alarmsCopy if_map:&__block_literal_global_2141];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setAlarmIDs:v7];

  v9 = objc_opt_new();
  [v9 setDateStyle:0];
  [v9 setTimeStyle:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__WFAlarmTriggerConfigurationViewController_alarmChooserViewController_didFinishWithChosenAlarms___block_invoke_2;
  v15[3] = &unk_279EE77D0;
  v16 = v9;
  v10 = v9;
  v11 = [alarmsCopy if_map:v15];
  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger2 setCachedAlarmDescriptions:v11];

  trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger3 setAlarmType:1];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFAlarmTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

id __98__WFAlarmTriggerConfigurationViewController_alarmChooserViewController_didFinishWithChosenAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 title];
  }

  else
  {
    v7 = objc_opt_new();
    v8 = [v3 nextFireDateAfterDate:v7];

    v6 = [*(a1 + 32) stringFromDate:v8];
  }

  return v6;
}

- (void)presentAlarmChooserViewController
{
  v3 = [WFAlarmChooserViewController alloc];
  alarmDataSource = [(WFAlarmTriggerConfigurationViewController *)self alarmDataSource];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  alarmIDs = [trigger alarmIDs];
  v8 = [(WFAlarmChooserViewController *)v3 initWithAlarmDataSource:alarmDataSource checkedAlarmIDs:alarmIDs];

  [(WFAlarmChooserViewController *)v8 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(WFAlarmTriggerConfigurationViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v55[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  v7 = -[WFAlarmTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  if (([v8 isEqualToString:@"triggerDescription"] & 1) == 0)
  {
    if ([v8 isEqualToString:@"chooseAlarm"])
    {
      v9 = [v7 objectForKeyedSubscript:@"items"];
      v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      integerValue = [v10 integerValue];
      switch(integerValue)
      {
        case 2:
          trigger = [(WFTriggerConfigurationViewController *)self trigger];
          [trigger setAlarmType:2];

          trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
          [trigger2 setCachedAlarmDescriptions:MEMORY[0x277CBEBF8]];

          alarmDataSource = [(WFAlarmTriggerConfigurationViewController *)self alarmDataSource];
          sleepAlarm = [alarmDataSource sleepAlarm];
          alarmID = [sleepAlarm alarmID];

          if (alarmID)
          {
            v55[0] = alarmID;
            trigger4 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
            trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
            [trigger3 setAlarmIDs:trigger4];
          }

          else
          {
            v27 = getWFTriggersLogObject();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v54 = "[WFAlarmTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
              _os_log_impl(&dword_274719000, v27, OS_LOG_TYPE_ERROR, "%s Failed to find wake up alarm", buf, 0xCu);
            }

            trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
            [trigger4 setAlarmIDs:MEMORY[0x277CBEBF8]];
          }

          break;
        case 1:
          [(WFAlarmTriggerConfigurationViewController *)self presentAlarmChooserViewController];
          break;
        case 0:
          trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
          [trigger5 setAlarmType:0];

          trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
          v14 = MEMORY[0x277CBEBF8];
          [trigger6 setAlarmIDs:MEMORY[0x277CBEBF8]];

          trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
          [trigger7 setCachedAlarmDescriptions:v14];

          break;
      }
    }

    else if ([v8 isEqualToString:@"chooseEvent"])
    {
      v16 = [v7 objectForKeyedSubscript:@"items"];
      v17 = [v16 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      integerValue2 = [v17 integerValue];
      trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
      [trigger8 setAlarmState:integerValue2];
    }

    v45 = v7;
    v46 = pathCopy;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    tableView2 = [(WFTriggerConfigurationViewController *)self tableView];
    indexPathsForVisibleRows = [tableView2 indexPathsForVisibleRows];

    obj = indexPathsForVisibleRows;
    v30 = [indexPathsForVisibleRows countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      v33 = @"identifier";
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v48 + 1) + 8 * i);
          v36 = -[WFAlarmTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v35 section]);
          v37 = [v36 objectForKeyedSubscript:v33];
          if (([v37 isEqualToString:@"triggerDescription"] & 1) == 0)
          {
            [v36 objectForKeyedSubscript:@"items"];
            v39 = v38 = v33;
            v40 = [v39 objectAtIndex:{objc_msgSend(v35, "row")}];

            tableView3 = [(WFTriggerConfigurationViewController *)self tableView];
            v42 = [tableView3 cellForRowAtIndexPath:v35];

            v33 = v38;
            [v42 setAccessoryType:{-[WFAlarmTriggerConfigurationViewController accessoryTypeForCellInSection:item:](self, "accessoryTypeForCellInSection:item:", v37, v40)}];
          }
        }

        v31 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v31);
    }

    v7 = v45;
    pathCopy = v46;
    [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v46 withSectionInfo:v45];
    [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
    tableView4 = [(WFTriggerConfigurationViewController *)self tableView];
    [tableView4 reloadData];

    v8 = v44;
  }
}

- (int64_t)accessoryTypeForCellInSection:(id)section item:(id)item
{
  sectionCopy = section;
  itemCopy = item;
  if ([sectionCopy isEqualToString:@"chooseAlarm"])
  {
    integerValue = [itemCopy integerValue];
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    alarmType = [trigger alarmType];
  }

  else
  {
    if (![sectionCopy isEqualToString:@"chooseEvent"])
    {
LABEL_7:
      v12 = 0;
      goto LABEL_8;
    }

    integerValue = [itemCopy integerValue];
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    alarmType = [trigger alarmState];
  }

  v11 = alarmType;

  if (v11 != integerValue)
  {
    goto LABEL_7;
  }

  v12 = 3;
LABEL_8:

  return v12;
}

- (id)extraTextForCellInSection:(id)section item:(id)item
{
  itemCopy = item;
  if ([section isEqualToString:@"chooseAlarm"] && objc_msgSend(itemCopy, "integerValue") == 1)
  {
    v7 = objc_opt_new();
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    cachedAlarmDescriptions = [trigger cachedAlarmDescriptions];
    v10 = [v7 stringForObjectValue:cachedAlarmDescriptions];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)titleForCellInSection:(id)section item:(id)item
{
  sectionCopy = section;
  itemCopy = item;
  if ([sectionCopy isEqualToString:@"chooseEvent"])
  {
    integerValue = [itemCopy integerValue];
    switch(integerValue)
    {
      case 2:
        v8 = @"Is Stopped";
        goto LABEL_16;
      case 1:
        v8 = @"Is Snoozed";
        goto LABEL_16;
      case 0:
        v8 = @"Goes Off";
LABEL_16:
        v10 = WFLocalizedString(v8);
        goto LABEL_17;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_18;
  }

  if (![sectionCopy isEqualToString:@"chooseAlarm"])
  {
    goto LABEL_11;
  }

  integerValue2 = [itemCopy integerValue];
  if (integerValue2 == 2)
  {
    v8 = @"Wake-Up";
    goto LABEL_16;
  }

  if (integerValue2 == 1)
  {
    v8 = @"Existing";
    goto LABEL_16;
  }

  if (integerValue2)
  {
    goto LABEL_11;
  }

  v10 = WFLocalizedStringWithKey(@"Any (alarm trigger)", @"Any");
LABEL_17:
  v11 = v10;
LABEL_18:

  return v11;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFAlarmTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [v5 isEqualToString:@"triggerDescription"];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:@"sectionTitle"];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFAlarmTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"identifier"];
  v10 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

  if ([v9 isEqual:@"triggerDescription"])
  {
    [v11 setTriggerTypeClass:objc_opt_class()];
    [v11 setSelectionStyle:0];
    [v11 setAccessoryType:0];
  }

  else
  {
    v12 = [v8 objectForKeyedSubscript:@"items"];
    v13 = [v12 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v14 = [(WFAlarmTriggerConfigurationViewController *)self titleForCellInSection:v9 item:v13];
    textLabel = [v11 textLabel];
    [textLabel setText:v14];

    v16 = [(WFAlarmTriggerConfigurationViewController *)self extraTextForCellInSection:v9 item:v13];
    detailTextLabel = [v11 detailTextLabel];
    [detailTextLabel setText:v16];

    [v11 setAccessoryType:{-[WFAlarmTriggerConfigurationViewController accessoryTypeForCellInSection:item:](self, "accessoryTypeForCellInSection:item:", v9, v13)}];
  }

  v18 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v11 indexPath:pathCopy sectionInfo:v8];

  return v18;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFAlarmTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  if ([v6 isEqual:@"triggerDescription"])
  {
    v7 = 1;
  }

  else if ([v6 isEqual:@"chooseAlarm"] || objc_msgSend(v6, "isEqual:", @"chooseEvent"))
  {
    v8 = [v5 objectForKeyedSubscript:@"items"];
    v7 = [v8 count];
  }

  else
  {
    v7 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];
  }

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = WFAlarmTriggerConfigurationViewController;
  [(WFAlarmTriggerConfigurationViewController *)&v7 viewWillAppear:appear];
  alarmDataSource = [(WFAlarmTriggerConfigurationViewController *)self alarmDataSource];
  reloadAlarms = [alarmDataSource reloadAlarms];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)customSections
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v23[0] = @"chooseEvent";
  v22[0] = @"identifier";
  v22[1] = @"cellIdentifier";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v22[2] = @"items";
  v23[1] = v4;
  v23[2] = &unk_2883C2168;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v7 = [v2 arrayWithArray:v6];

  v8 = MEMORY[0x277CBEB38];
  v21[0] = @"chooseAlarm";
  v17 = @"identifier";
  v18 = @"sectionTitle";
  v9 = WFLocalizedString(@"Alarms");
  v21[1] = v9;
  v19 = @"cellIdentifier";
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v20 = @"items";
  v21[2] = v11;
  v21[3] = &unk_2883C2180;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v17 count:4];
  v13 = [v8 dictionaryWithDictionary:{v12, v17, v18, v19}];

  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  idiom = [currentDevice idiom];

  if (idiom == 1)
  {
    [v13 setObject:&unk_2883C2198 forKey:@"items"];
  }

  [v7 addObject:v13];

  return v7;
}

- (id)tableViewCellClasses
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (WFAlarmTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAlarmTriggerConfigurationViewController.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFAlarmTrigger class]]"}];
  }

  v19.receiver = self;
  v19.super_class = WFAlarmTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v19 initWithTrigger:triggerCopy mode:mode];
  if (v8)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v9 = getMTAlarmManagerClass_softClass;
    v28 = getMTAlarmManagerClass_softClass;
    if (!getMTAlarmManagerClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getMTAlarmManagerClass_block_invoke;
      v23 = &unk_279EE8CF8;
      v24 = &v25;
      __getMTAlarmManagerClass_block_invoke(&v20);
      v9 = v26[3];
    }

    v10 = v9;
    _Block_object_dispose(&v25, 8);
    v11 = objc_opt_new();
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v12 = getMTAlarmDataSourceClass_softClass;
    v28 = getMTAlarmDataSourceClass_softClass;
    if (!getMTAlarmDataSourceClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getMTAlarmDataSourceClass_block_invoke;
      v23 = &unk_279EE8CF8;
      v24 = &v25;
      __getMTAlarmDataSourceClass_block_invoke(&v20);
      v12 = v26[3];
    }

    v13 = v12;
    _Block_object_dispose(&v25, 8);
    v14 = [[v12 alloc] initWithAlarmManager:v11];
    alarmDataSource = v8->_alarmDataSource;
    v8->_alarmDataSource = v14;

    v16 = v8;
  }

  return v8;
}

@end