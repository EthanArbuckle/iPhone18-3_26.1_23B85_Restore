@interface WFPredictedLocationTransitionTriggerConfigurationViewController
- (WFPredictedLocationTransitionTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateUI;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFPredictedLocationTransitionTriggerConfigurationViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFPredictedLocationTransitionTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315394;
    v18 = "[WFPredictedLocationTransitionTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", &v17, 0x16u);
  }

  v9 = [v7 objectForKeyedSubscript:@"identifier"];
  v10 = [v9 isEqual:@"triggerLocation"];

  v11 = [v7 objectForKeyedSubscript:@"items"];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  unsignedIntegerValue = [v12 unsignedIntegerValue];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  v15 = trigger;
  if (v10)
  {
    [trigger setDestinationType:unsignedIntegerValue];
  }

  else
  {
    [trigger setMinutesBefore:unsignedIntegerValue];
  }

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFPredictedLocationTransitionTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFPredictedLocationTransitionTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  [v10 setSelectionStyle:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    goto LABEL_15;
  }

  v13 = [v8 objectForKeyedSubscript:@"identifier"];
  v14 = [v13 isEqual:@"triggerLocation"];

  v15 = [v8 objectForKeyedSubscript:@"items"];
  v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  if (!v14)
  {
    if (unsignedIntegerValue <= 5)
    {
      v19 = WFLocalizedString(off_279EE8ED0[unsignedIntegerValue]);
      textLabel = [v10 textLabel];
      [textLabel setText:v19];
    }

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    minutesBefore = [trigger minutesBefore];
    goto LABEL_13;
  }

  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue != 1)
    {
      v23 = getWFTriggersLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v27 = 136315394;
        v28 = "[WFPredictedLocationTransitionTriggerConfigurationViewController tableView:cellForRowAtIndexPath:]";
        v29 = 2048;
        v30 = [pathCopy row];
        _os_log_impl(&dword_274719000, v23, OS_LOG_TYPE_FAULT, "%s Unexpected destination for WFSectionLocation: %lu", &v27, 0x16u);
      }

      goto LABEL_12;
    }

    v18 = @"To Work";
  }

  else
  {
    v18 = @"Back Home";
  }

  v23 = WFLocalizedString(v18);
  textLabel2 = [v10 textLabel];
  [textLabel2 setText:v23];

LABEL_12:
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  minutesBefore = [trigger destinationType];
LABEL_13:
  v25 = minutesBefore;

  if (v25 == unsignedIntegerValue)
  {
    [v10 setAccessoryType:3];
  }

LABEL_15:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFPredictedLocationTransitionTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [v5 isEqual:@"triggerDescription"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"identifier"];
    v9 = [v8 isEqual:@"triggerLocation"];

    if ((v9 & 1) != 0 || ([v4 objectForKeyedSubscript:@"identifier"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", @"triggerTimeBefore"), v10, v11))
    {
      v12 = [v4 objectForKeyedSubscript:@"items"];
      v7 = [v12 count];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFPredictedLocationTransitionTriggerConfigurationViewController;
  [(WFPredictedLocationTransitionTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateUI
{
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)customSections
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"triggerLocation";
  v13[0] = @"identifier";
  v13[1] = @"cellIdentifier";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v13[2] = @"items";
  v14[1] = v3;
  v14[2] = &unk_2883C2240;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v15[0] = v4;
  v12[0] = @"triggerTimeBefore";
  v11[0] = @"identifier";
  v11[1] = @"sectionTitle";
  v5 = WFLocalizedStringWithKey(@"Time (Triggers)", @"Time");
  v12[1] = v5;
  v11[2] = @"cellIdentifier";
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v11[3] = @"items";
  v12[2] = v7;
  v12[3] = &unk_2883C2258;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  return v9;
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

- (WFPredictedLocationTransitionTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPredictedLocationTransitionTriggerConfigurationViewController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFPredictedLocationTransitionTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFPredictedLocationTransitionTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:triggerCopy mode:mode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end