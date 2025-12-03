@interface STNoUsageReportedGroupSpecifierProvider
- (STNoUsageReportedGroupSpecifierProvider)init;
- (void)_devicesDidChange:(id)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STNoUsageReportedGroupSpecifierProvider

- (STNoUsageReportedGroupSpecifierProvider)init
{
  v8.receiver = self;
  v8.super_class = STNoUsageReportedGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v8 init];
  v3 = MEMORY[0x277D3FAD8];
  v4 = objc_opt_new();
  uUIDString = [v4 UUIDString];
  v6 = [v3 groupSpecifierWithID:uUIDString];

  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];
  return v2;
}

- (void)dealloc
{
  [(STNoUsageReportedGroupSpecifierProvider *)self setCoordinator:0];
  v4.receiver = self;
  v4.super_class = STNoUsageReportedGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v4 invalidate];
  v3.receiver = self;
  v3.super_class = STNoUsageReportedGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v3 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices"];
  v6.receiver = self;
  v6.super_class = STNoUsageReportedGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"usageDetailsCoordinator.devices" options:5 context:"KVOContextNoUsageReportedGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextNoUsageReportedGroupSpecifierProvider")
  {
    pathCopy = path;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v13 = [pathCopy isEqualToString:@"usageDetailsCoordinator.devices"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
      {

        v14 = 0;
      }

      [(STNoUsageReportedGroupSpecifierProvider *)self _devicesDidChange:v14];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STNoUsageReportedGroupSpecifierProvider;
    pathCopy2 = path;
    [(STNoUsageReportedGroupSpecifierProvider *)&v16 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)_devicesDidChange:(id)change
{
  v53 = *MEMORY[0x277D85DE8];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v6 = [viewModel me];

  if ([v6 isRemoteUser])
  {
    v7 = [v6 isScreenTimeEnabled] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v7];
  if (![(STGroupSpecifierProvider *)self isHidden])
  {
    v47 = v6;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [currentCalendar startOfDayForDate:v9];
    v46 = currentCalendar;
    v11 = [currentCalendar dateByAddingUnit:0x2000 value:-1 toDate:v10 options:0];

    v12 = objc_opt_new();
    coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
    usageDetailsCoordinator = [coordinator2 usageDetailsCoordinator];
    devices = [usageDetailsCoordinator devices];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = devices;
    v17 = [v16 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v49;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v48 + 1) + 8 * i);
          lastFamilyCheckinDate = [v21 lastFamilyCheckinDate];
          v23 = [v11 compare:lastFamilyCheckinDate];

          if (v23 == 1)
          {
            name = [v21 name];
            [v12 addObject:name];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v18);
    }

    v25 = [v12 count];
    [(STGroupSpecifierProvider *)self setIsHidden:v25 == 0];
    v6 = v47;
    if ([(STGroupSpecifierProvider *)self isHidden])
    {
      goto LABEL_25;
    }

    v26 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v12];
    v27 = @"NoUsageReportedSingleDeviceAlertFormat";
    if (v25 > 1)
    {
      v27 = @"NoUsageReportedMultipleDevicesAlertFormat";
    }

    v28 = v27;
    v29 = +[STScreenTimeSettingsUIBundle bundle];
    v30 = [v29 localizedStringForKey:v28 value:&stru_28766E5A8 table:0];

    v31 = MEMORY[0x277CCACA8];
    givenName = [v47 givenName];
    v42 = v26;
    v43 = v30;
    v33 = [v31 localizedStringWithValidatedFormat:v30 validFormatSpecifiers:@"%@ %@" error:0, v26, givenName];

    mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    noUsageReportedAlertSpecifier = [(STNoUsageReportedGroupSpecifierProvider *)self noUsageReportedAlertSpecifier];
    v36 = [mutableSpecifiers indexOfObject:noUsageReportedAlertSpecifier];

    v44 = mutableSpecifiers;
    v45 = v33;
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = *MEMORY[0x277D40160];
    }

    else
    {
      v38 = [mutableSpecifiers objectAtIndexedSubscript:v36];
      v37 = *MEMORY[0x277D40160];
      v39 = [v38 objectForKeyedSubscript:*MEMORY[0x277D40160]];
      v40 = [v39 isEqual:v33];

      if (v40)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }
    }

    v41 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v41 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v41 setObject:v45 forKeyedSubscript:v37];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v44 addObject:v41];
    }

    else
    {
      [v44 replaceObjectAtIndex:v36 withObject:v41];
    }

    [(STNoUsageReportedGroupSpecifierProvider *)self setNoUsageReportedAlertSpecifier:v41];

    goto LABEL_24;
  }

LABEL_26:
}

@end