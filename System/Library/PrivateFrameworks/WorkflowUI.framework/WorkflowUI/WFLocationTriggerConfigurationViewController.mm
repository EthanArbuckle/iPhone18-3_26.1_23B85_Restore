@interface WFLocationTriggerConfigurationViewController
- (NSDateFormatter)dateFormatter;
- (WFLocationTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)customSections;
- (id)infoForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (id)textForSummaryFooterView;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)checkLocationAuthorization;
- (void)locationPicker:(id)a3 didFinishWithValue:(id)a4;
- (void)locationPickerDidCancel:(id)a3;
- (void)presentNavigationControllerWithRootViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)timeRangePickerViewController:(id)a3 didPickStartTime:(id)a4 endTime:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFLocationTriggerConfigurationViewController

- (void)timeRangePickerViewController:(id)a3 didPickStartTime:(id)a4 endTime:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(WFLocationTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  [v9 setStartTime:v8];

  v10 = [(WFTriggerConfigurationViewController *)self trigger];
  [v10 setEndTime:v7];

  v11 = [(WFTriggerConfigurationViewController *)self tableView];
  [v11 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)locationPickerDidCancel:(id)a3
{
  [(WFLocationTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v4 = [(WFTriggerConfigurationViewController *)self tableView];
  [v4 reloadData];
}

- (void)locationPicker:(id)a3 didFinishWithValue:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(WFLocationTriggerConfigurationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v6 = [v5 placemark];

  v7 = [v6 region];
  v8 = objc_opt_class();
  v9 = v7;
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

  v13 = [(WFLocationTriggerConfigurationViewController *)self isArrive];
  v14 = v13;
  [v10 setNotifyOnEntry:v13];
  [v10 setNotifyOnExit:!v14];
  v15 = [(WFTriggerConfigurationViewController *)self trigger];
  [v15 setRegion:v10];

  v16 = [(WFTriggerConfigurationViewController *)self tableView];
  [v16 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [(NSDateFormatter *)v4 setTimeZone:v5];

    [(NSDateFormatter *)v4 setDateStyle:0];
    [(NSDateFormatter *)v4 setTimeStyle:1];
    v6 = self->_dateFormatter;
    self->_dateFormatter = v4;

    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (void)presentNavigationControllerWithRootViewController:(id)a3
{
  v4 = MEMORY[0x277D757A0];
  v5 = a3;
  v6 = [[v4 alloc] initWithRootViewController:v5];
  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  if (v4)
  {
    [v6 setModalPresentationStyle:0];
  }

  [(WFLocationTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[WFLocationTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
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
    v11 = [(WFTriggerConfigurationViewController *)self trigger];
    v12 = [v11 region];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CE41F8]);
      v14 = [(WFTriggerConfigurationViewController *)self trigger];
      v15 = [v14 region];
      [v15 center];
      v17 = v16;
      v18 = [(WFTriggerConfigurationViewController *)self trigger];
      v19 = [v18 region];
      [v19 center];
      v20 = [v13 initWithLatitude:v17 longitude:?];

      v21 = MEMORY[0x277CBFC40];
      v22 = [(WFTriggerConfigurationViewController *)self trigger];
      v23 = [v22 region];
      v24 = [v23 identifier];
      v51 = [v21 placemarkWithLocation:v20 name:v24 postalAddress:0];

      v25 = objc_alloc(MEMORY[0x277CBFC40]);
      v26 = [v51 addressDictionary];
      v27 = [(WFTriggerConfigurationViewController *)self trigger];
      v28 = [v27 region];
      v29 = [v25 initWithLocation:v20 addressDictionary:v26 region:v28 areasOfInterest:0];

      v30 = objc_alloc(MEMORY[0x277D7C620]);
      v31 = [(WFTriggerConfigurationViewController *)self trigger];
      v32 = [v31 region];
      v33 = [v32 identifier];
      v34 = [v30 initWithLocationName:v33 placemark:v29];

      v35 = [objc_alloc(MEMORY[0x277D7BDB8]) initWithPickerType:1 value:v34];
    }

    else
    {
      v35 = [objc_alloc(MEMORY[0x277D7BDB8]) initWithPickerType:1 value:0];
    }

    [(WFTimeRangePickerViewController *)v35 setAllowsPickingCurrentLocation:1];
    [(WFTimeRangePickerViewController *)v35 setResolvesCurrentLocationToPlacemark:1];
    [(WFTimeRangePickerViewController *)v35 setDelegate:self];
    [(WFTimeRangePickerViewController *)v35 setRegionCondition:[(WFLocationTriggerConfigurationViewController *)self isArrive]^ 1];
    goto LABEL_17;
  }

  v36 = [v7 objectForKeyedSubscript:@"identifier"];
  v37 = [v36 isEqual:@"chooseTime"];

  if (v37)
  {
    v38 = [v6 row];
    v39 = [(WFTriggerConfigurationViewController *)self trigger];
    v40 = v39;
    if (!v38)
    {
      [v39 setStartTime:0];

      v35 = [(WFTriggerConfigurationViewController *)self trigger];
      [(WFTimeRangePickerViewController *)v35 setEndTime:0];
LABEL_18:

      goto LABEL_19;
    }

    v41 = [v39 startTime];
    if (v41)
    {
      v42 = v41;
      v43 = [(WFTriggerConfigurationViewController *)self trigger];
      v44 = [v43 endTime];

      if (v44)
      {
        v45 = [WFTimeRangePickerViewController alloc];
        v46 = [(WFTriggerConfigurationViewController *)self trigger];
        v47 = [v46 startTime];
        v48 = [(WFTriggerConfigurationViewController *)self trigger];
        v49 = [v48 endTime];
        v35 = [(WFTimeRangePickerViewController *)v45 initWithStartTime:v47 endTime:v49];

LABEL_16:
        [(WFTimeRangePickerViewController *)v35 setDelegate:self];
LABEL_17:
        [(WFLocationTriggerConfigurationViewController *)self presentNavigationControllerWithRootViewController:v35];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v35 = objc_alloc_init(WFTimeRangePickerViewController);
    goto LABEL_16;
  }

LABEL_19:
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v6 withSectionInfo:v7];
  v50 = [(WFTriggerConfigurationViewController *)self tableView];
  [v50 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFLocationTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"chooseLocation"];

  if (v12)
  {
    v10 = v10;
    v13 = WFLocalizedString(@"Location");
    v14 = [v10 textLabel];
    [v14 setText:v13];

    v15 = [(WFTriggerConfigurationViewController *)self trigger];
    v16 = [v15 region];

    if (v16)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [(WFTriggerConfigurationViewController *)self trigger];
      v19 = [v18 region];
      v20 = [v19 identifier];
      v21 = [v17 stringWithFormat:@"%@", v20];
      v22 = [v10 detailTextLabel];
      [v22 setText:v21];
    }

    else
    {
      v18 = WFLocalizedString(@"Choose");
      v19 = [v10 detailTextLabel];
      [v19 setText:v18];
    }

    goto LABEL_16;
  }

  v23 = [v8 objectForKeyedSubscript:@"identifier"];
  v24 = [v23 isEqualToString:@"chooseTime"];

  if (v24)
  {
    if ([v6 row])
    {
      v25 = [(WFTriggerConfigurationViewController *)self trigger];
      v26 = [v25 startTime];
      if (v26)
      {
        v27 = v26;
        v28 = [(WFTriggerConfigurationViewController *)self trigger];
        v29 = [v28 endTime];

        if (!v29)
        {
LABEL_10:
          v37 = WFLocalizedString(@"Time Range");
          v38 = [v10 textLabel];
          [v38 setText:v37];

LABEL_15:
          goto LABEL_16;
        }

        v25 = [(WFLocationTriggerConfigurationViewController *)self dateFormatter];
        v51 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"subtitleCell"];

        v30 = WFLocalizedString(@"Time Range");
        v31 = [v51 textLabel];
        [v31 setText:v30];

        v47 = MEMORY[0x277CCACA8];
        v48 = WFLocalizedString(@"%@ to %@");
        v50 = [(WFTriggerConfigurationViewController *)self trigger];
        v49 = [v50 startTime];
        v46 = [v25 stringFromDate:v49];
        v32 = [(WFTriggerConfigurationViewController *)self trigger];
        v33 = [v32 endTime];
        v34 = [v25 stringFromDate:v33];
        v35 = [v47 localizedStringWithFormat:v48, v46, v34];
        v36 = [v51 detailTextLabel];
        [v36 setText:v35];

        v10 = v51;
        [v51 setAccessoryType:3];
      }

      goto LABEL_10;
    }

    v39 = WFLocalizedString(@"Any Time");
    v40 = [v10 textLabel];
    [v40 setText:v39];

    v37 = [(WFTriggerConfigurationViewController *)self trigger];
    v41 = [v37 startTime];
    if (v41)
    {

      goto LABEL_15;
    }

    v44 = [(WFTriggerConfigurationViewController *)self trigger];
    v45 = [v44 endTime];

    if (!v45)
    {
      [v10 setAccessoryType:3];
    }
  }

LABEL_16:
  v42 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8];

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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = [(WFLocationTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"chooseLocation"];

  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setHorizontalPadding:0.0];
    v9 = [(WFLocationTriggerConfigurationViewController *)self textForSummaryFooterView];
    [v8 setText:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFLocationTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFLocationTriggerConfigurationViewController *)self infoForSection:a4];
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

- (void)checkLocationAuthorization
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/ShortcutsLocation.bundle"];
  -[WFLocationTriggerConfigurationViewController setIsLocationBasedAlertsEnabled:](self, "setIsLocationBasedAlertsEnabled:", [MEMORY[0x277CBFC10] authorizationStatusForBundle:v3] == 3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WFLocationTriggerConfigurationViewController;
  [(WFLocationTriggerConfigurationViewController *)&v5 viewWillAppear:a3];
  [(WFLocationTriggerConfigurationViewController *)self checkLocationAuthorization];
  v4 = [(WFTriggerConfigurationViewController *)self tableView];
  [v4 reloadData];
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

- (WFLocationTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = WFLocationTriggerConfigurationViewController;
  v7 = [(WFTriggerConfigurationViewController *)&v10 initWithTrigger:v6 mode:a4];
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