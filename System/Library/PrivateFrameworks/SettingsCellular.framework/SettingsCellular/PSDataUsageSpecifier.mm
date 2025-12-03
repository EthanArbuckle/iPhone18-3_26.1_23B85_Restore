@interface PSDataUsageSpecifier
- (PSBillingPeriodSource)billingPeriodSource;
- (PSDataUsageSpecifier)initWithAppType:(unint64_t)type bundleID:(id)d name:(id)name statisticsCache:(id)cache usageType:(unint64_t)usageType;
- (id)dataUsageString;
- (unint64_t)dataUsage;
@end

@implementation PSDataUsageSpecifier

- (PSDataUsageSpecifier)initWithAppType:(unint64_t)type bundleID:(id)d name:(id)name statisticsCache:(id)cache usageType:(unint64_t)usageType
{
  dCopy = d;
  nameCopy = name;
  cacheCopy = cache;
  if (type == 4 && [nameCopy isEqualToString:@"Others"])
  {
    v24 = dCopy;
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = SFLocalizableWAPIStringKeyForKey();
    v18 = [v16 localizedStringForKey:v17 value:&stru_287730CE8 table:@"WirelessData"];

    dCopy = v24;
    nameCopy = v18;
  }

  v25.receiver = self;
  v25.super_class = PSDataUsageSpecifier;
  v19 = [(PSDataUsageSpecifier *)&v25 initWithName:nameCopy target:0 set:0 get:0 detail:0 cell:4 edit:0];
  v20 = v19;
  if (v19)
  {
    [(PSDataUsageSpecifier *)v19 setTarget:v19];
    *(&v20->super.super.isa + *MEMORY[0x277D3FCA8]) = sel_dataUsageString;
    objc_storeStrong(&v20->_statisticsCache, cache);
    objc_storeStrong(&v20->_bundleID, d);
    v20->_appType = type;
    v20->_usageType = usageType;
    [(PSDataUsageSpecifier *)v20 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40088]];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];

    if (sf_isChinaRegionCellularDevice)
    {
      [(PSDataUsageSpecifier *)v20 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    }
  }

  return v20;
}

- (unint64_t)dataUsage
{
  billingPeriodSource = [(PSDataUsageSpecifier *)self billingPeriodSource];
  v4 = billingPeriodSource;
  statisticsCache = self->_statisticsCache;
  bundleID = self->_bundleID;
  if (billingPeriodSource)
  {
    selectedPeriod = [billingPeriodSource selectedPeriod];
  }

  else
  {
    selectedPeriod = 0;
  }

  v8 = [(PSDataUsageStatisticsCache *)statisticsCache usageForBundleID:bundleID inPeriod:selectedPeriod];
  v9 = v8;
  if (self->_appType == 4)
  {
    v10 = self->_statisticsCache;
    v11 = self->_bundleID;
    if (v4)
    {
      selectedPeriod2 = [v4 selectedPeriod];
    }

    else
    {
      selectedPeriod2 = 0;
    }

    v18 = [(PSDataUsageStatisticsCache *)v10 usageForHotspotClientID:v11 inPeriod:selectedPeriod2];
  }

  else
  {
    usageType = self->_usageType;
    native = [v8 native];
    v15 = native;
    if (usageType == 1)
    {
      satellite = [native satellite];
      proxied = [v9 proxied];
      v18 = [proxied satellite] + satellite;
    }

    else
    {
      cellularHome = [native cellularHome];
      proxied = [v9 native];
      v20 = [proxied cellularRoaming] + cellularHome;
      proxied2 = [v9 proxied];
      cellularHome2 = [proxied2 cellularHome];
      proxied3 = [v9 proxied];
      v18 = v20 + cellularHome2 + [proxied3 cellularRoaming];
    }
  }

  return v18;
}

- (id)dataUsageString
{
  dataUsage = [(PSDataUsageSpecifier *)self dataUsage];
  if (dataUsage)
  {
    v4 = [SettingsCellularSharedUtils usageSizeString:dataUsage];
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