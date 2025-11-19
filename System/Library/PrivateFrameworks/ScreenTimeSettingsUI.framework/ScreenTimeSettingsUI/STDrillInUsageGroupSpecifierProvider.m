@interface STDrillInUsageGroupSpecifierProvider
- (STDrillInUsageGroupSpecifierProvider)initWithUsageItem:(id)a3 coordinator:(id)a4;
- (id)dailyAverage:(id)a3;
- (id)notifications:(id)a3;
- (id)selectedUsageReport:(id)a3;
- (id)weeklyPickupTotal:(id)a3;
@end

@implementation STDrillInUsageGroupSpecifierProvider

- (STDrillInUsageGroupSpecifierProvider)initWithUsageItem:(id)a3 coordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v48.receiver = self;
  v48.super_class = STDrillInUsageGroupSpecifierProvider;
  v9 = [(STGroupSpecifierProvider *)&v48 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_usageItem, a3);
    objc_storeStrong(&v10->_coordinator, a4);
    v46 = v8;
    v11 = [v8 usageDetailsCoordinator];
    v12 = [v11 viewModel];
    v13 = [v12 selectedUsageReport];

    v14 = [v13 notificationsByTrustIdentifier];
    v15 = [v7 trustIdentifier];
    v16 = [v14 objectForKeyedSubscript:v15];
    v17 = [v16 totalUsage];
    v10->_numberOfNotifications = [v17 unsignedIntegerValue];

    v18 = +[STScreenTimeSettingsUIBundle bundle];
    if ([v7 itemType] == 6)
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

    v47 = v13;
    v23 = [v13 lastUpdatedDate];
    if (v23)
    {
      v24 = objc_opt_new();
      [v24 setTimeStyle:1];
      [v24 setDateStyle:2];
      [v24 setDoesRelativeDateFormatting:1];
      [v24 setFormattingContext:5];
      v25 = [v24 stringFromDate:v23];
      v26 = +[STScreenTimeSettingsUIBundle bundle];
      v27 = [v26 localizedStringForKey:@"LastUpdatedDateFormat" value:&stru_28766E5A8 table:0];

      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      v29 = [MEMORY[0x277CBEAF8] currentLocale];
      v30 = [v28 initWithFormat:v27 locale:v29, v25];
    }

    else
    {
      v24 = +[STScreenTimeSettingsUIBundle bundle];
      v30 = [v24 localizedStringForKey:@"NoLastUpdatedDate" value:&stru_28766E5A8 table:0];
    }

    [v20 setObject:v30 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v43 = v20;
    [(STGroupSpecifierProvider *)v10 setGroupSpecifier:v20];
    v31 = [(STGroupSpecifierProvider *)v10 mutableSpecifiers];
    v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Usage Summary" target:v10 set:0 get:sel_selectedUsageReport_ detail:0 cell:-1 edit:0];
    [v32 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v32 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [v32 setObject:v7 forKeyedSubscript:0x287673AA8];
    [v31 addObject:v32];
    if ([v7 itemType] == 6 && !objc_msgSend(v47, "type"))
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

    [v31 addObject:v38];
    if (v10->_numberOfNotifications)
    {
      v39 = MEMORY[0x277D3FAD8];
      v40 = [v44 localizedStringForKey:@"MostUsedNotificationsSpecifierName" value:&stru_28766E5A8 table:0];
      v41 = [v39 preferenceSpecifierNamed:v40 target:v10 set:0 get:sel_notifications_ detail:0 cell:4 edit:0];

      [v31 addObject:v41];
    }

    v8 = v46;
  }

  return v10;
}

- (id)selectedUsageReport:(id)a3
{
  v4 = a3;
  v5 = [(STDrillInUsageGroupSpecifierProvider *)self usageItem];
  [v4 setUserInfo:v5];

  v6 = [(STDrillInUsageGroupSpecifierProvider *)self coordinator];
  v7 = [v6 usageDetailsCoordinator];
  v8 = [v7 viewModel];
  v9 = [v8 selectedUsageReport];

  return v9;
}

- (id)weeklyPickupTotal:(id)a3
{
  v4 = [(STDrillInUsageGroupSpecifierProvider *)self coordinator];
  v5 = [v4 usageDetailsCoordinator];
  v6 = [v5 viewModel];
  v7 = [v6 selectedWeekUsageReport];
  v8 = [v7 pickupsByTrustIdentifier];
  v9 = [(STDrillInUsageGroupSpecifierProvider *)self usageItem];
  v10 = [v9 trustIdentifier];
  v11 = [v8 objectForKeyedSubscript:v10];
  v12 = [v11 totalUsage];
  v13 = [v12 unsignedIntegerValue];

  v14 = MEMORY[0x277CCACA8];
  v15 = +[STScreenTimeSettingsUIBundle bundle];
  v16 = [v15 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
  v17 = [v14 localizedStringWithFormat:v16, v13];

  return v17;
}

- (id)dailyAverage:(id)a3
{
  v4 = [(STDrillInUsageGroupSpecifierProvider *)self coordinator];
  v5 = [v4 usageDetailsCoordinator];
  v6 = [v5 viewModel];
  v7 = [v6 selectedWeekUsageReport];

  v8 = [(STDrillInUsageGroupSpecifierProvider *)self usageItem];
  [v7 activePickupDateIntervals];
  if (v9 == 0.0)
  {
    v11 = 1.0;
  }

  else
  {
    [v7 activePickupDateIntervals];
    v11 = v10;
  }

  v12 = [v8 itemType];
  v13 = &stru_28766E5A8;
  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      [v7 totalScreenTime];
      v30 = v31 / v11;
      goto LABEL_16;
    }

    if (v12 != 2)
    {
      goto LABEL_21;
    }

    v23 = [v7 applicationUsageByTrustIdentifier];
  }

  else
  {
    switch(v12)
    {
      case 3:
        v23 = [v7 categoryUsageByTrustIdentifier];
        break;
      case 4:
        v23 = [v7 webUsageByTrustIdentifier];
        break;
      case 6:
        v14 = [v7 pickupsByTrustIdentifier];
        v15 = [v8 trustIdentifier];
        v16 = [v14 objectForKeyedSubscript:v15];
        v17 = [v16 totalUsage];
        [v17 doubleValue];
        v19 = v18 / v11;

        v20 = MEMORY[0x277CCACA8];
        v21 = +[STScreenTimeSettingsUIBundle bundle];
        v22 = [v21 localizedStringForKey:@"PickupsCount" value:&stru_28766E5A8 table:0];
        v13 = [v20 localizedStringWithFormat:v22, fmin(fmax(round(v19), 0.0), 1.79769313e308)];

        goto LABEL_20;
      default:
        goto LABEL_21;
    }
  }

  v24 = v23;
  v25 = [v8 trustIdentifier];
  v26 = [v24 objectForKeyedSubscript:v25];
  v27 = [v26 totalUsage];
  [v27 doubleValue];
  v29 = v28;

  v30 = v29 / v11;
LABEL_16:
  if (v30 >= 60.0)
  {
    v21 = objc_opt_new();
    [v21 setAllowedUnits:96];
    [v21 setUnitsStyle:1];
  }

  else
  {
    v21 = [MEMORY[0x277CCA958] st_sharedAbbreviatedSecondsDateFormatter];
  }

  v13 = [v21 stringFromTimeInterval:v30];
LABEL_20:

LABEL_21:

  return v13;
}

- (id)notifications:(id)a3
{
  v4 = [(STDrillInUsageGroupSpecifierProvider *)self coordinator];
  v5 = [v4 usageDetailsCoordinator];
  v6 = [v5 viewModel];
  v7 = [v6 selectedUsageReport];

  v8 = [v7 notificationsByTrustIdentifier];
  v9 = [(STDrillInUsageGroupSpecifierProvider *)self usageItem];
  v10 = [v9 trustIdentifier];
  v11 = [v8 objectForKeyedSubscript:v10];
  v12 = [v11 totalUsage];
  v13 = [v12 unsignedIntegerValue];

  v14 = MEMORY[0x277CCACA8];
  v15 = +[STScreenTimeSettingsUIBundle bundle];
  v16 = [v15 localizedStringForKey:@"NotificationsCount" value:&stru_28766E5A8 table:0];
  v17 = [v14 localizedStringWithFormat:v16, v13];

  return v17;
}

@end