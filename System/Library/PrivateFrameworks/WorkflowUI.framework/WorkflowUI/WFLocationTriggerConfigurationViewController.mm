@interface WFLocationTriggerConfigurationViewController
- (NSDateFormatter)dateFormatter;
- (WFLocationTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (id)textForSummaryFooterView;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)checkLocationAuthorization;
- (void)locationPicker:(id)picker didFinishWithValue:(id)value;
- (void)locationPickerDidCancel:(id)cancel;
- (void)presentNavigationControllerWithRootViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)timeRangePickerViewController:(id)controller didPickStartTime:(id)time endTime:(id)endTime;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFLocationTriggerConfigurationViewController

- (void)timeRangePickerViewController:(id)controller didPickStartTime:(id)time endTime:(id)endTime
{
  endTimeCopy = endTime;
  timeCopy = time;
  [(WFLocationTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setStartTime:timeCopy];

  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger2 setEndTime:endTimeCopy];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)locationPickerDidCancel:(id)cancel
{
  [(WFLocationTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (void)locationPicker:(id)picker didFinishWithValue:(id)value
{
  v25 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  [(WFLocationTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
  placemark = [valueCopy placemark];

  region = [placemark region];
  v8 = objc_opt_class();
  v9 = region;
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315906;
      v18 = "WFEnforceClass";
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v8;
      v12 = v22;
      _os_log_impl(&dword_274719000, v11, OS_LOG_TYPE_FAULT, "%s didselect section: %{public}@", &v17, 0x2Au);
    }

    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  isArrive = [(WFLocationTriggerConfigurationViewController *)self isArrive];
  v14 = isArrive;
  [v10 setNotifyOnEntry:isArrive];
  [v10 setNotifyOnExit:!v14];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setRegion:v10];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    [(NSDateFormatter *)v4 setTimeZone:systemTimeZone];

    [(NSDateFormatter *)v4 setDateStyle:0];
    [(NSDateFormatter *)v4 setTimeStyle:1];
    v6 = self->_dateFormatter;
    self->_dateFormatter = v4;

    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (void)presentNavigationControllerWithRootViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];
  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  if (v4)
  {
    [v6 setModalPresentationStyle:0];
  }

  [(WFLocationTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v56 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFLocationTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v53 = "[WFLocationTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
    v54 = 2114;
    v55 = v7;
    _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", buf, 0x16u);
  }

  v9 = [v7 objectForKeyedSubscript:@"identifier"];
  v10 = [v9 isEqual:@"chooseLocation"];

  if (v10)
  {
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    region = [trigger region];

    if (region)
    {
      v13 = objc_alloc(MEMORY[0x277CE41F8]);
      trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
      region2 = [trigger2 region];
      [region2 center];
      v17 = v16;
      trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
      region3 = [trigger3 region];
      [region3 center];
      v20 = [v13 initWithLatitude:v17 longitude:?];

      v21 = MEMORY[0x277CBFC40];
      trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
      region4 = [trigger4 region];
      identifier = [region4 identifier];
      v51 = [v21 placemarkWithLocation:v20 name:identifier postalAddress:0];

      v25 = objc_alloc(MEMORY[0x277CBFC40]);
      addressDictionary = [v51 addressDictionary];
      trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
      region5 = [trigger5 region];
      v29 = [v25 initWithLocation:v20 addressDictionary:addressDictionary region:region5 areasOfInterest:0];

      v30 = objc_alloc(MEMORY[0x277D7C620]);
      trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
      region6 = [trigger6 region];
      identifier2 = [region6 identifier];
      v34 = [v30 initWithLocationName:identifier2 placemark:v29];

      trigger8 = [objc_alloc(MEMORY[0x277D7BDB8]) initWithPickerType:1 value:v34];
    }

    else
    {
      trigger8 = [objc_alloc(MEMORY[0x277D7BDB8]) initWithPickerType:1 value:0];
    }

    [(WFTimeRangePickerViewController *)trigger8 setAllowsPickingCurrentLocation:1];
    [(WFTimeRangePickerViewController *)trigger8 setResolvesCurrentLocationToPlacemark:1];
    [(WFTimeRangePickerViewController *)trigger8 setDelegate:self];
    [(WFTimeRangePickerViewController *)trigger8 setRegionCondition:[(WFLocationTriggerConfigurationViewController *)self isArrive]^ 1];
    goto LABEL_17;
  }

  v36 = [v7 objectForKeyedSubscript:@"identifier"];
  v37 = [v36 isEqual:@"chooseTime"];

  if (v37)
  {
    v38 = [pathCopy row];
    trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
    v40 = trigger7;
    if (!v38)
    {
      [trigger7 setStartTime:0];

      trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
      [(WFTimeRangePickerViewController *)trigger8 setEndTime:0];
LABEL_18:

      goto LABEL_19;
    }

    startTime = [trigger7 startTime];
    if (startTime)
    {
      v42 = startTime;
      trigger9 = [(WFTriggerConfigurationViewController *)self trigger];
      endTime = [trigger9 endTime];

      if (endTime)
      {
        v45 = [WFTimeRangePickerViewController alloc];
        trigger10 = [(WFTriggerConfigurationViewController *)self trigger];
        startTime2 = [trigger10 startTime];
        trigger11 = [(WFTriggerConfigurationViewController *)self trigger];
        endTime2 = [trigger11 endTime];
        trigger8 = [(WFTimeRangePickerViewController *)v45 initWithStartTime:startTime2 endTime:endTime2];

LABEL_16:
        [(WFTimeRangePickerViewController *)trigger8 setDelegate:self];
LABEL_17:
        [(WFLocationTriggerConfigurationViewController *)self presentNavigationControllerWithRootViewController:trigger8];
        goto LABEL_18;
      }
    }

    else
    {
    }

    trigger8 = objc_alloc_init(WFTimeRangePickerViewController);
    goto LABEL_16;
  }

LABEL_19:
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFLocationTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"chooseLocation"];

  if (v12)
  {
    v10 = v10;
    v13 = WFLocalizedString(@"Location");
    textLabel = [v10 textLabel];
    [textLabel setText:v13];

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    region = [trigger region];

    if (region)
    {
      v17 = MEMORY[0x277CCACA8];
      trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
      region2 = [trigger2 region];
      identifier = [region2 identifier];
      v21 = [v17 stringWithFormat:@"%@", identifier];
      detailTextLabel = [v10 detailTextLabel];
      [detailTextLabel setText:v21];
    }

    else
    {
      trigger2 = WFLocalizedString(@"Choose");
      region2 = [v10 detailTextLabel];
      [region2 setText:trigger2];
    }

    goto LABEL_16;
  }

  v23 = [v8 objectForKeyedSubscript:@"identifier"];
  v24 = [v23 isEqualToString:@"chooseTime"];

  if (v24)
  {
    if ([pathCopy row])
    {
      trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
      startTime = [trigger3 startTime];
      if (startTime)
      {
        v27 = startTime;
        trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
        endTime = [trigger4 endTime];

        if (!endTime)
        {
LABEL_10:
          trigger7 = WFLocalizedString(@"Time Range");
          textLabel2 = [v10 textLabel];
          [textLabel2 setText:trigger7];

LABEL_15:
          goto LABEL_16;
        }

        trigger3 = [(WFLocationTriggerConfigurationViewController *)self dateFormatter];
        v51 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"subtitleCell"];

        v30 = WFLocalizedString(@"Time Range");
        textLabel3 = [v51 textLabel];
        [textLabel3 setText:v30];

        v47 = MEMORY[0x277CCACA8];
        v48 = WFLocalizedString(@"%@ to %@");
        trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
        startTime2 = [trigger5 startTime];
        v46 = [trigger3 stringFromDate:startTime2];
        trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
        endTime2 = [trigger6 endTime];
        v34 = [trigger3 stringFromDate:endTime2];
        v35 = [v47 localizedStringWithFormat:v48, v46, v34];
        detailTextLabel2 = [v51 detailTextLabel];
        [detailTextLabel2 setText:v35];

        v10 = v51;
        [v51 setAccessoryType:3];
      }

      goto LABEL_10;
    }

    v39 = WFLocalizedString(@"Any Time");
    textLabel4 = [v10 textLabel];
    [textLabel4 setText:v39];

    trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
    startTime3 = [trigger7 startTime];
    if (startTime3)
    {

      goto LABEL_15;
    }

    trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
    endTime3 = [trigger8 endTime];

    if (!endTime3)
    {
      [v10 setAccessoryType:3];
    }
  }

LABEL_16:
  v42 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v42;
}

- (id)textForSummaryFooterView
{
  if ([(WFLocationTriggerConfigurationViewController *)self isLocationBasedAlertsEnabled])
  {
    v2 = @"This automation is controlled by the location of this device.";
  }

  else
  {
    v2 = @"Location-based automations will not run until you enable Alerts & Shortcuts Automations in Settings > Privacy & Security > Location Services > System Services.";
  }

  v3 = WFLocalizedString(v2);

  return v3;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [(WFLocationTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"chooseLocation"];

  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setHorizontalPadding:0.0];
    textForSummaryFooterView = [(WFLocationTriggerConfigurationViewController *)self textForSummaryFooterView];
    [v8 setText:textForSummaryFooterView];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFLocationTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFLocationTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"chooseTime"];

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];
  }

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

- (void)checkLocationAuthorization
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/ShortcutsLocation.bundle"];
  -[WFLocationTriggerConfigurationViewController setIsLocationBasedAlertsEnabled:](self, "setIsLocationBasedAlertsEnabled:", [MEMORY[0x277CBFC10] authorizationStatusForBundle:v3] == 3);
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFLocationTriggerConfigurationViewController;
  [(WFLocationTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
  [(WFLocationTriggerConfigurationViewController *)self checkLocationAuthorization];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)customSections
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"identifier";
  v12[1] = @"cellIdentifier";
  v13[0] = @"chooseLocation";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v4;
  v10[1] = @"cellIdentifier";
  v11[0] = @"chooseTime";
  v10[0] = @"identifier";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  return v8;
}

- (id)tableViewCellClasses
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

- (WFLocationTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  v10.receiver = self;
  v10.super_class = WFLocationTriggerConfigurationViewController;
  v7 = [(WFTriggerConfigurationViewController *)&v10 initWithTrigger:triggerCopy mode:mode];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7->_isArrive = 1;
    }

    v8 = v7;
  }

  return v7;
}

@end