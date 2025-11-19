@interface PSUITotalCellularUsageSubgroup
- (PSBillingPeriodSource)billingPeriodSource;
- (PSUITotalCellularUsageSubgroup)initWithStatisticsCache:(id)a3 andBillingPeriodSource:(id)a4 usageType:(unint64_t)a5;
- (id)specifiers;
- (id)totalBytesUsed;
- (id)totalDataUsageForSpecifier:(id)a3;
- (id)totalRoamingBytesUsed;
- (id)totalRoamingDataUsageForSpecifier:(id)a3;
@end

@implementation PSUITotalCellularUsageSubgroup

- (PSUITotalCellularUsageSubgroup)initWithStatisticsCache:(id)a3 andBillingPeriodSource:(id)a4 usageType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = PSUITotalCellularUsageSubgroup;
  v11 = [(PSUITotalCellularUsageSubgroup *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statisticsCache, a3);
    objc_storeWeak(&v12->_billingPeriodSource, v10);
    v12->_usageType = a5;
    v13 = MEMORY[0x277D3FAD8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CURRENT_DATA_PERIOD" value:&stru_287733598 table:@"Cellular"];
    v16 = [v13 preferenceSpecifierNamed:v15 target:v12 set:0 get:sel_totalDataUsageForSpecifier_ detail:0 cell:4 edit:0];
    totalUsageSpecifier = v12->_totalUsageSpecifier;
    v12->_totalUsageSpecifier = v16;

    [(PSSpecifier *)v12->_totalUsageSpecifier setIdentifier:@"DATA_USAGE_IN_PERIOD"];
    v18 = MEMORY[0x277D3FAD8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CURRENT_ROAMING" value:&stru_287733598 table:@"Cellular"];
    v21 = [v18 preferenceSpecifierNamed:v20 target:v12 set:0 get:sel_totalRoamingDataUsageForSpecifier_ detail:0 cell:4 edit:0];
    totalRoamingUsageSpecifier = v12->_totalRoamingUsageSpecifier;
    v12->_totalRoamingUsageSpecifier = v21;

    [(PSSpecifier *)v12->_totalRoamingUsageSpecifier setIdentifier:@"ROAMING_DATA_USAGE_IN_PERIOD"];
    if ([(PSDataUsageStatisticsCache *)v12->_statisticsCache useCalendarMonthBillingCycle])
    {
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"CELLULAR_DATA_USED" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)v12->_totalUsageSpecifier setName:v24];

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"ROAMING" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)v12->_totalRoamingUsageSpecifier setName:v26];
    }
  }

  return v12;
}

- (id)specifiers
{
  v13 = *MEMORY[0x277D85DE8];
  totalUsageSpecifier = self->_totalUsageSpecifier;
  if (self->_usageType)
  {
    v10 = self->_totalUsageSpecifier;
    v3 = MEMORY[0x277CBEA60];
    v4 = &v10;
    v5 = 1;
  }

  else
  {
    totalRoamingUsageSpecifier = self->_totalRoamingUsageSpecifier;
    v11 = self->_totalUsageSpecifier;
    v12 = totalRoamingUsageSpecifier;
    v3 = MEMORY[0x277CBEA60];
    v4 = &v11;
    v5 = 2;
  }

  v7 = [v3 arrayWithObjects:v4 count:{v5, v10, v11, v12, v13}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)totalBytesUsed
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(PSUITotalCellularUsageSubgroup *)self billingPeriodSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 selectedPeriod];
    v6 = @"previous billing cycle";
    if (!v5)
    {
      v6 = @"current billing cycle";
    }

    v7 = v6;
    usageType = self->_usageType;
    statisticsCache = self->_statisticsCache;
    v10 = [v4 selectedPeriod];
    if (usageType)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = 0;
    statisticsCache = self->_statisticsCache;
    v7 = @"total";
    if (self->_usageType)
    {
LABEL_5:
      v11 = [(PSDataUsageStatisticsCache *)statisticsCache totalSatelliteUsageForPeriod:v10];
      goto LABEL_8;
    }
  }

  v11 = [(PSDataUsageStatisticsCache *)statisticsCache totalCellularUsageForPeriod:v10];
LABEL_8:
  v12 = v11;
  v13 = [(PSUITotalCellularUsageSubgroup *)self getLogger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[PSUITotalCellularUsageSubgroup totalBytesUsed]";
    v19 = 2112;
    v20 = v7;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s returning %@ usage %f", &v17, 0x20u);
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)totalRoamingBytesUsed
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(PSUITotalCellularUsageSubgroup *)self billingPeriodSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 selectedPeriod];
    v6 = @"previous billing cycle";
    if (!v5)
    {
      v6 = @"current billing cycle";
    }

    v7 = v6;
    statisticsCache = self->_statisticsCache;
    v9 = [v4 selectedPeriod];
  }

  else
  {
    v9 = 0;
    statisticsCache = self->_statisticsCache;
    v7 = @"total";
  }

  v10 = [(PSDataUsageStatisticsCache *)statisticsCache totalRoamingUsageForPeriod:v9];
  v11 = [(PSUITotalCellularUsageSubgroup *)self getLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[PSUITotalCellularUsageSubgroup totalRoamingBytesUsed]";
    v17 = 2112;
    v18 = v7;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "%s returning %@ roaming %f", &v15, 0x20u);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)totalDataUsageForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSUITotalCellularUsageSubgroup *)self totalBytesUsed];
  v6 = [v4 propertyForKey:*MEMORY[0x277D40148]];

  if (v5)
  {
    [v6 setAccessoryView:0];
    v7 = MEMORY[0x277D4D878];
    [v5 doubleValue];
    v8 = [v7 usageSizeString:?];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v9 startAnimating];
    [v6 setAccessoryView:v9];

    v8 = &stru_287733598;
  }

  return v8;
}

- (id)totalRoamingDataUsageForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSUITotalCellularUsageSubgroup *)self totalRoamingBytesUsed];
  v6 = [v4 propertyForKey:*MEMORY[0x277D40148]];

  if (v5)
  {
    [v6 setAccessoryView:0];
    v7 = MEMORY[0x277D4D878];
    [v5 doubleValue];
    v8 = [v7 usageSizeString:?];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v9 startAnimating];
    [v6 setAccessoryView:v9];

    v8 = &stru_287733598;
  }

  return v8;
}

- (PSBillingPeriodSource)billingPeriodSource
{
  WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);

  return WeakRetained;
}

@end