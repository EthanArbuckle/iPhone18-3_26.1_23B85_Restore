@interface PSDataUsageSpecifier
- (PSBillingPeriodSource)billingPeriodSource;
- (PSDataUsageSpecifier)initWithAppType:(unint64_t)a3 bundleID:(id)a4 name:(id)a5 statisticsCache:(id)a6 usageType:(unint64_t)a7;
- (id)dataUsageString;
- (unint64_t)dataUsage;
@end

@implementation PSDataUsageSpecifier

- (PSDataUsageSpecifier)initWithAppType:(unint64_t)a3 bundleID:(id)a4 name:(id)a5 statisticsCache:(id)a6 usageType:(unint64_t)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a3 == 4 && [v14 isEqualToString:@"Others"])
  {
    v24 = v13;
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = SFLocalizableWAPIStringKeyForKey();
    v18 = [v16 localizedStringForKey:v17 value:&stru_287730CE8 table:@"WirelessData"];

    v13 = v24;
    v14 = v18;
  }

  v25.receiver = self;
  v25.super_class = PSDataUsageSpecifier;
  v19 = [(PSDataUsageSpecifier *)&v25 initWithName:v14 target:0 set:0 get:0 detail:0 cell:4 edit:0];
  v20 = v19;
  if (v19)
  {
    [(PSDataUsageSpecifier *)v19 setTarget:v19];
    *(&v20->super.super.isa + *MEMORY[0x277D3FCA8]) = sel_dataUsageString;
    objc_storeStrong(&v20->_statisticsCache, a6);
    objc_storeStrong(&v20->_bundleID, a4);
    v20->_appType = a3;
    v20->_usageType = a7;
    [(PSDataUsageSpecifier *)v20 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40088]];
    v21 = [MEMORY[0x277D75418] currentDevice];
    v22 = [v21 sf_isChinaRegionCellularDevice];

    if (v22)
    {
      [(PSDataUsageSpecifier *)v20 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    }
  }

  return v20;
}

- (unint64_t)dataUsage
{
  v3 = [(PSDataUsageSpecifier *)self billingPeriodSource];
  v4 = v3;
  statisticsCache = self->_statisticsCache;
  bundleID = self->_bundleID;
  if (v3)
  {
    v7 = [v3 selectedPeriod];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PSDataUsageStatisticsCache *)statisticsCache usageForBundleID:bundleID inPeriod:v7];
  v9 = v8;
  if (self->_appType == 4)
  {
    v10 = self->_statisticsCache;
    v11 = self->_bundleID;
    if (v4)
    {
      v12 = [v4 selectedPeriod];
    }

    else
    {
      v12 = 0;
    }

    v18 = [(PSDataUsageStatisticsCache *)v10 usageForHotspotClientID:v11 inPeriod:v12];
  }

  else
  {
    usageType = self->_usageType;
    v14 = [v8 native];
    v15 = v14;
    if (usageType == 1)
    {
      v16 = [v14 satellite];
      v17 = [v9 proxied];
      v18 = [v17 satellite] + v16;
    }

    else
    {
      v19 = [v14 cellularHome];
      v17 = [v9 native];
      v20 = [v17 cellularRoaming] + v19;
      v21 = [v9 proxied];
      v22 = [v21 cellularHome];
      v23 = [v9 proxied];
      v18 = v20 + v22 + [v23 cellularRoaming];
    }
  }

  return v18;
}

- (id)dataUsageString
{
  v3 = [(PSDataUsageSpecifier *)self dataUsage];
  if (v3)
  {
    v4 = [SettingsCellularSharedUtils usageSizeString:v3];
  }

  else
  {
    v4 = 0;
  }

  if (self->_bundleID && (+[PSCellularManagementCache sharedInstance](PSCellularManagementCache, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isManaged:self->_bundleID], v5, v6))
  {
    if (v4)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = SFLocalizableWAPIStringKeyForKey();
      v10 = [v8 localizedStringForKey:v9 value:&stru_287730CE8 table:@"WirelessData"];
      v11 = [v7 stringWithFormat:v10, v4];
    }

    else
    {
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = SFLocalizableWAPIStringKeyForKey();
      v11 = [v14 localizedStringForKey:v15 value:&stru_287730CE8 table:@"WirelessData"];
    }
  }

  else
  {
    v12 = &stru_287730CE8;
    if (v4)
    {
      v12 = v4;
    }

    v11 = v12;
  }

  return v11;
}

- (PSBillingPeriodSource)billingPeriodSource
{
  WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);

  return WeakRetained;
}

@end