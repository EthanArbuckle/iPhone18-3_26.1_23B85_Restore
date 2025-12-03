@interface STDrillInUsageGroupSpecifierProvider
- (STDrillInUsageGroupSpecifierProvider)initWithUsageItem:(id)item coordinator:(id)coordinator;
- (id)dailyAverage:(id)average;
- (id)notifications:(id)notifications;
- (id)selectedUsageReport:(id)report;
- (id)weeklyPickupTotal:(id)total;
@end

@implementation STDrillInUsageGroupSpecifierProvider

- (STDrillInUsageGroupSpecifierProvider)initWithUsageItem:(id)item coordinator:(id)coordinator
{
  itemCopy = item;
  coordinatorCopy = coordinator;
  v48.receiver = self;
  v48.super_class = STDrillInUsageGroupSpecifierProvider;
  v9 = [(STGroupSpecifierProvider *)&v48 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_usageItem, item);
    objc_storeStrong(&v10->_coordinator, coordinator);
    v46 = coordinatorCopy;
    usageDetailsCoordinator = [coordinatorCopy usageDetailsCoordinator];
    viewModel = [usageDetailsCoordinator viewModel];
    selectedUsageReport = [viewModel selectedUsageReport];

    notificationsByTrustIdentifier = [selectedUsageReport notificationsByTrustIdentifier];
    trustIdentifier = [itemCopy trustIdentifier];
    v16 = [notificationsByTrustIdentifier objectForKeyedSubscript:trustIdentifier];
    totalUsage = [v16 totalUsage];
    v10->_numberOfNotifications = [totalUsage unsignedIntegerValue];

    v18 = +[STScreenTimeSettingsUIBundle bundle];
    if ([itemCopy itemType] == 6)
    {
      v19 = @"DrillInPickupGroupSpecifierName";
    }

    else
    {
      v19 = @"MostUsedScreenTimeGroupSpecifierName";
    }

    v44 = v18;
    v45 = [v18 localizedStringForKey:v19 value:&stru_28766E5A8 table:0];
    v20 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:?];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x277D3FFA0]];

    v47 = selectedUsageReport;
    lastUpdatedDate = [selectedUsageReport lastUpdatedDate];
    if (lastUpdatedDate)
    {
      v24 = objc_opt_new();
      [v24 setTimeStyle:1];
      [v24 setDateStyle:2];
      [v24 setDoesRelativeDateFormatting:1];
      [v24 setFormattingContext:5];
      v25 = [v24 stringFromDate:lastUpdatedDate];
      v26 = +[STScreenTimeSettingsUIBundle bundle];
      v27 = [v26 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v30 = [v28 initWithFormat:v27 locale:currentLocale, v25];
    }

    else
    {
      v24 = +[STScreenTimeSettingsUIBundle bundle];
      v30 = [v24 localizedStringForKey:@"NoLastUpdatedDate" value:&stru_28766E5A8 table:0];
    }

    [v20 setObject:v30 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v43 = v20;
    [(STGroupSpecifierProvider *)v10 setGroupSpecifier:v20];
    mutableSpecifiers = [(STGroupSpecifierProvider *)v10 mutableSpecifiers];
    v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Usage Summary" target:v10 set:0 get:sel_selectedUsageReport_ detail:0 cell:-1 edit:0];
    [v32 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v32 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [v32 setObject:itemCopy forKeyedSubscript:0x287673AA8];
    [mutableSpecifiers addObject:v32];
    if ([itemCopy itemType] == 6 && !objc_msgSend(v47, "type"))
    {
      v33 = v30;
      v34 = &selRef_weeklyPickupTotal_;
      v35 = @"DrillInPickupTotalSpecifierName";
    }

    else
    {
      v33 = v30;
      v34 = &selRef_dailyAverage_;
      v35 = @"MostUsedDailyAverageSpecifierName";
    }

    v36 = MEMORY[0x277D3FAD8];
    v37 = [v44 localizedStringForKey:v35 value:&stru_28766E5A8 table:0];
    v38 = [v36 preferenceSpecifierNamed:v37 target:v10 set:0 get:*v34 detail:0 cell:4 edit:0];

    [mutableSpecifiers addObject:v38];
    if (v10->_numberOfNotifications)
    {
      v39 = MEMORY[0x277D3FAD8];
      v40 = [v44 localizedStringForKey:@"MostUsedNotificationsSpecifierName" value:&stru_28766E5A8 table:0];
      v41 = [v39 preferenceSpecifierNamed:v40 target:v10 set:0 get:sel_notifications_ detail:0 cell:4 edit:0];

      [mutableSpecifiers addObject:v41];
    }

    coordinatorCopy = v46;
  }

  return v10;
}

- (id)selectedUsageReport:(id)report
{
  reportCopy = report;
  usageItem = [(STDrillInUsageGroupSpecifierProvider *)self usageItem];
  [reportCopy setUserInfo:usageItem];

  coordinator = [(STDrillInUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];
  selectedUsageReport = [viewModel selectedUsageReport];

  return selectedUsageReport;
}

- (id)weeklyPickupTotal:(id)total
{
  coordinator = [(STDrillInUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];
  selectedWeekUsageReport = [viewModel selectedWeekUsageReport];
  pickupsByTrustIdentifier = [selectedWeekUsageReport pickupsByTrustIdentifier];
  usageItem = [(STDrillInUsageGroupSpecifierProvider *)self usageItem];
  trustIdentifier = [usageItem trustIdentifier];
  v11 = [pickupsByTrustIdentifier objectForKeyedSubscript:trustIdentifier];
  totalUsage = [v11 totalUsage];
  unsignedIntegerValue = [totalUsage unsignedIntegerValue];

  v14 = MEMORY[0x277CCACA8];
  v15 = +[STScreenTimeSettingsUIBundle bundle];
  v16 = [v15 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
  v17 = [v14 localizedStringWithFormat:v16, unsignedIntegerValue];

  return v17;
}

- (id)dailyAverage:(id)average
{
  coordinator = [(STDrillInUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];
  selectedWeekUsageReport = [viewModel selectedWeekUsageReport];

  usageItem = [(STDrillInUsageGroupSpecifierProvider *)self usageItem];
  [selectedWeekUsageReport activePickupDateIntervals];
  if (v9 == 0.0)
  {
    v11 = 1.0;
  }

  else
  {
    [selectedWeekUsageReport activePickupDateIntervals];
    v11 = v10;
  }

  itemType = [usageItem itemType];
  v13 = &stru_28766E5A8;
  if (itemType <= 2)
  {
    if (itemType == 1)
    {
      [selectedWeekUsageReport totalScreenTime];
      v30 = v31 / v11;
      goto LABEL_16;
    }

    if (itemType != 2)
    {
      goto LABEL_21;
    }

    applicationUsageByTrustIdentifier = [selectedWeekUsageReport applicationUsageByTrustIdentifier];
  }

  else
  {
    switch(itemType)
    {
      case 3:
        applicationUsageByTrustIdentifier = [selectedWeekUsageReport categoryUsageByTrustIdentifier];
        break;
      case 4:
        applicationUsageByTrustIdentifier = [selectedWeekUsageReport webUsageByTrustIdentifier];
        break;
      case 6:
        pickupsByTrustIdentifier = [selectedWeekUsageReport pickupsByTrustIdentifier];
        trustIdentifier = [usageItem trustIdentifier];
        v16 = [pickupsByTrustIdentifier objectForKeyedSubscript:trustIdentifier];
        totalUsage = [v16 totalUsage];
        [totalUsage doubleValue];
        v19 = v18 / v11;

        v20 = MEMORY[0x277CCACA8];
        st_sharedAbbreviatedSecondsDateFormatter = +[STScreenTimeSettingsUIBundle bundle];
        v22 = [st_sharedAbbreviatedSecondsDateFormatter localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
        v13 = [v20 localizedStringWithFormat:v22, fmin(fmax(round(v19), 0.0), 1.79769313e308)];

        goto LABEL_20;
      default:
        goto LABEL_21;
    }
  }

  v24 = applicationUsageByTrustIdentifier;
  trustIdentifier2 = [usageItem trustIdentifier];
  v26 = [v24 objectForKeyedSubscript:trustIdentifier2];
  totalUsage2 = [v26 totalUsage];
  [totalUsage2 doubleValue];
  v29 = v28;

  v30 = v29 / v11;
LABEL_16:
  if (v30 >= 60.0)
  {
    st_sharedAbbreviatedSecondsDateFormatter = objc_opt_new();
    [st_sharedAbbreviatedSecondsDateFormatter setAllowedUnits:96];
    [st_sharedAbbreviatedSecondsDateFormatter setUnitsStyle:1];
  }

  else
  {
    st_sharedAbbreviatedSecondsDateFormatter = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
  }

  v13 = [st_sharedAbbreviatedSecondsDateFormatter stringFromTimeInterval:v30];
LABEL_20:

LABEL_21:

  return v13;
}

- (id)notifications:(id)notifications
{
  coordinator = [(STDrillInUsageGroupSpecifierProvider *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];
  selectedUsageReport = [viewModel selectedUsageReport];

  notificationsByTrustIdentifier = [selectedUsageReport notificationsByTrustIdentifier];
  usageItem = [(STDrillInUsageGroupSpecifierProvider *)self usageItem];
  trustIdentifier = [usageItem trustIdentifier];
  v11 = [notificationsByTrustIdentifier objectForKeyedSubscript:trustIdentifier];
  totalUsage = [v11 totalUsage];
  unsignedIntegerValue = [totalUsage unsignedIntegerValue];

  v14 = MEMORY[0x277CCACA8];
  v15 = +[STScreenTimeSettingsUIBundle bundle];
  v16 = [v15 localizedStringForKey:@"NotificationsCount" value:&stru_28766E5A8 table:0];
  v17 = [v14 localizedStringWithFormat:v16, unsignedIntegerValue];

  return v17;
}

@end