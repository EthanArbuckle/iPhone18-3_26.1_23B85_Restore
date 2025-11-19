@interface STSetupAssistantUsageDetailsCoordinator
- (STSetupAssistantUsageDetailsCoordinator)init;
- (id)_introUsageItemsWithStartDate:(id)a3;
- (id)categoryConfigByIdentifier;
@end

@implementation STSetupAssistantUsageDetailsCoordinator

- (STSetupAssistantUsageDetailsCoordinator)init
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = STSetupAssistantUsageDetailsCoordinator;
  v2 = [(STSetupAssistantUsageDetailsCoordinator *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_new();
    viewModel = v2->_viewModel;
    v2->_viewModel = v3;

    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 name];
    [(STUsageDetailsViewModel *)v2->_viewModel setSelectedItemDisplayName:v6];

    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = objc_opt_new();
    v9 = [v7 startOfDayForDate:v8];
    v10 = [v7 dateByAddingUnit:0x2000 value:-1 toDate:v9 options:0];
    v11 = [v7 maximumRangeOfUnit:512];
    if ([v7 component:512 fromDate:v10] == v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v7 nextDateAfterDate:v10 matchingUnit:512 value:v11 options:260];
    }

    v13 = v12;
    v14 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"startDate" ascending:1];
    v15 = [(STSetupAssistantUsageDetailsCoordinator *)v2 _introUsageItemsWithStartDate:v13];
    v20[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v17 = [v15 sortedArrayUsingDescriptors:v16];

    [(STUsageDetailsViewModel *)v2->_viewModel setWeekReportUsageItems:v17 weekStartDate:v13 lastUpdatedDate:v8];
  }

  return v2;
}

- (id)categoryConfigByIdentifier
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CF95D0];
  v6[0] = *MEMORY[0x277CF9608];
  v6[1] = v2;
  v7[0] = &unk_28769D960;
  v7[1] = &unk_28769D988;
  v3 = *MEMORY[0x277CF95E8];
  v6[2] = *MEMORY[0x277CF95F0];
  v6[3] = v3;
  v7[2] = &unk_28769D9B0;
  v7[3] = &unk_28769D9D8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

- (id)_introUsageItemsWithStartDate:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = objc_opt_new();
  for (i = 0; i != 8; ++i)
  {
    [v6 setDay:i];
    v8 = [v5 dateByAddingComponents:v6 toDate:v3 options:0];
    v9 = objc_opt_new();
    [v9 setItemType:1];
    [v9 setIdentifier:@"ScreenTime"];
    [v9 setTimePeriod:0];
    [v9 setStartDate:v8];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:(arc4random_uniform(0x28u) + 80) / 100.0 * 9360.0];
    [v9 setTotalUsage:v10];

    [v4 addObject:v9];
  }

  v53 = v5;
  v54 = v3;
  [(STSetupAssistantUsageDetailsCoordinator *)self appConfigByIdentifier];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v63 = 0u;
  v11 = 0x277D4B000uLL;
  v51 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v51)
  {
    v50 = *v61;
    do
    {
      v12 = 0;
      do
      {
        if (*v61 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v12;
        v13 = *(*(&v60 + 1) + 8 * v12);
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"App Item %@", v13];
        v15 = [obj objectForKeyedSubscript:v13];
        v16 = [v15 objectForKeyedSubscript:@"total"];
        v17 = [v16 unsignedIntegerValue];

        for (j = 0; j != 8; ++j)
        {
          [v6 setDay:j];
          v19 = [v53 dateByAddingComponents:v6 toDate:v54 options:0];
          v20 = objc_opt_new();
          [v20 setItemType:2];
          [v20 setIdentifier:v14];
          v21 = [objc_alloc(*(v11 + 2768)) initWithIdentifier:v13 usageTrusted:1];
          [v20 setTrustIdentifier:v21];

          [v20 setTimePeriod:0];
          [v20 setStartDate:v19];
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
          [v20 setTotalUsage:v22];

          v11 = 0x277D4B000;
          [v4 addObject:v20];
        }

        v12 = v56 + 1;
      }

      while (v56 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v51);
  }

  v23 = *MEMORY[0x277CF95D0];
  v64[0] = *MEMORY[0x277CF9608];
  v64[1] = v23;
  v65[0] = &unk_28769DA00;
  v65[1] = &unk_28769DA28;
  v24 = *MEMORY[0x277CF95E8];
  v64[2] = *MEMORY[0x277CF95F0];
  v64[3] = v24;
  v65[2] = &unk_28769DA50;
  v65[3] = &unk_28769DA78;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:4];
  v25 = [v57 allKeys];
  v52 = v25;
  if ([v25 count])
  {
    v26 = 0;
    do
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Category Item %d", v26];
      v59 = v26;
      v28 = [v25 objectAtIndexedSubscript:v26];
      v29 = [v57 objectForKeyedSubscript:v28];
      v30 = [v29 objectForKeyedSubscript:@"total"];
      [v30 doubleValue];
      v32 = v31;

      v33 = 0;
      v34 = v32 * 8.0;
      do
      {
        [v6 setDay:v33];
        v35 = [v53 dateByAddingComponents:v6 toDate:v54 options:0];
        v36 = objc_opt_new();
        [v36 setItemType:3];
        [v36 setIdentifier:v27];
        v37 = [objc_alloc(MEMORY[0x277D4BAD0]) initWithIdentifier:v28 usageTrusted:1];
        [v36 setTrustIdentifier:v37];

        [v36 setTimePeriod:0];
        [v36 setStartDate:v35];
        v38 = [MEMORY[0x277CCABB0] numberWithDouble:v34 * ((arc4random_uniform(0x28u) + 80) / 100.0)];
        [v36 setTotalUsage:v38];

        [v4 addObject:v36];
        ++v33;
      }

      while (v33 != 8);

      ++v26;
      v25 = v52;
    }

    while (v59 + 1 < [v52 count]);
  }

  for (k = 0; k != 8; ++k)
  {
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification App Item %d", k];
    [v6 setDay:k];
    v41 = [v53 dateByAddingComponents:v6 toDate:v54 options:0];
    v42 = objc_opt_new();
    [v42 setItemType:5];
    [v42 setIdentifier:v40];
    [v42 setTimePeriod:0];
    [v42 setStartDate:v41];
    [v42 setTotalUsage:&unk_28769D568];
    [v4 addObject:v42];
  }

  for (m = 0; m != 8; ++m)
  {
    [v6 setDay:m];
    v44 = [v53 dateByAddingComponents:v6 toDate:v54 options:0];
    [v53 rangeOfUnit:32 inUnit:16 forDate:v44];
    [v6 setHour:arc4random_uniform(v45)];
    v46 = [v53 dateByAddingComponents:v6 toDate:v54 options:0];

    v47 = objc_opt_new();
    [v47 setItemType:6];
    [v47 setIdentifier:@"Pickups"];
    [v47 setTimePeriod:0];
    [v47 setStartDate:v46];
    [v47 setTotalUsage:&unk_28769D580];
    [v4 addObject:v47];
  }

  v48 = [v4 copy];

  return v48;
}

@end