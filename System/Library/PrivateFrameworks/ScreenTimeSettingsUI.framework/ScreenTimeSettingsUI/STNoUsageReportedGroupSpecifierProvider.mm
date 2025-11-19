@interface STNoUsageReportedGroupSpecifierProvider
- (STNoUsageReportedGroupSpecifierProvider)init;
- (void)_devicesDidChange:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
@end

@implementation STNoUsageReportedGroupSpecifierProvider

- (STNoUsageReportedGroupSpecifierProvider)init
{
  v8.receiver = self;
  v8.super_class = STNoUsageReportedGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v8 init];
  v3 = MEMORY[0x277D3FAD8];
  v4 = objc_opt_new();
  v5 = [v4 UUIDString];
  v6 = [v3 groupSpecifierWithID:v5];

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

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices"];
  v6.receiver = self;
  v6.super_class = STNoUsageReportedGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"usageDetailsCoordinator.devices" options:5 context:"KVOContextNoUsageReportedGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextNoUsageReportedGroupSpecifierProvider")
  {
    v12 = a3;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v13 = [v12 isEqualToString:@"usageDetailsCoordinator.devices"];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
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
    v11 = a3;
    [(STNoUsageReportedGroupSpecifierProvider *)&v16 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (void)_devicesDidChange:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  v5 = [v4 viewModel];
  v6 = [v5 me];

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
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [v8 startOfDayForDate:v9];
    v46 = v8;
    v11 = [v8 dateByAddingUnit:0x2000 value:-1 toDate:v10 options:0];

    v12 = objc_opt_new();
    v13 = [(STRootGroupSpecifierProvider *)self coordinator];
    v14 = [v13 usageDetailsCoordinator];
    v15 = [v14 devices];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = v15;
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
          v22 = [v21 lastFamilyCheckinDate];
          v23 = [v11 compare:v22];

          if (v23 == 1)
          {
            v24 = [v21 name];
            [v12 addObject:v24];
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
    v32 = [v47 givenName];
    v42 = v26;
    v43 = v30;
    v33 = [v31 localizedStringWithValidatedFormat:v30 validFormatSpecifiers:@"%@ %@" error:0, v26, v32];

    v34 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    v35 = [(STNoUsageReportedGroupSpecifierProvider *)self noUsageReportedAlertSpecifier];
    v36 = [v34 indexOfObject:v35];

    v44 = v34;
    v45 = v33;
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = *MEMORY[0x277D40160];
    }

    else
    {
      v38 = [v34 objectAtIndexedSubscript:v36];
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