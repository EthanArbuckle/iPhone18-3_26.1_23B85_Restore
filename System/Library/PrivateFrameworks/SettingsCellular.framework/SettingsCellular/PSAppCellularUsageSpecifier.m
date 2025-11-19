@interface PSAppCellularUsageSpecifier
+ (id)appSpecifierWithBundleID:(id)a3 name:(id)a4 statisticsCache:(id)a5 usageType:(unint64_t)a6;
+ (id)systemPolicySpecifierForAppName:(id)a3 bundleID:(id)a4 icon:(id)a5;
+ (void)setIconForSpecifier:(id)a3 bundleID:(id)a4;
- (BOOL)isRestricted;
- (PSAppCellularUsageSpecifierDelegate)delegate;
- (PSBillingPeriodSource)billingPeriodSource;
- (id)dataUsageString;
- (id)usagePolicy;
- (unint64_t)dataUsage;
- (void)setUsagePolicy:(id)a3;
@end

@implementation PSAppCellularUsageSpecifier

+ (id)appSpecifierWithBundleID:(id)a3 name:(id)a4 statisticsCache:(id)a5 usageType:(unint64_t)a6
{
  v10 = a3;
  v11 = [a1 _specifierWithDisplayName:a4 appName:a4 bundleID:v10 shouldShowUsage:1 icon:0 statisticsCache:a5 usageType:a6];
  if (v10)
  {
    [a1 setIconForSpecifier:v11 bundleID:v10];
  }

  return v11;
}

+ (void)setIconForSpecifier:(id)a3 bundleID:(id)a4
{
  v12 = a3;
  v5 = MEMORY[0x277D75D70];
  v6 = a4;
  if ([v5 bundleIdentifierContainsWebClipIdentifier:v6])
  {
    v7 = [MEMORY[0x277D75D70] webClipIdentifierFromBundleIdentifier:v6];

    v8 = [MEMORY[0x277D75D70] webClipWithIdentifier:v7];
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    v10 = [v8 generateIconImageForFormat:0 scale:?];

    if (v10)
    {
      [v12 setProperty:v10 forKey:*MEMORY[0x277D3FFC0]];
    }
  }

  else
  {
    [v12 setProperty:v6 forKey:*MEMORY[0x277D40008]];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v12 setProperty:v11 forKey:*MEMORY[0x277D40020]];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v12 setProperty:v7 forKey:*MEMORY[0x277D40018]];
  }
}

+ (id)systemPolicySpecifierForAppName:(id)a3 bundleID:(id)a4 icon:(id)a5
{
  v7 = MEMORY[0x277D75418];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 currentDevice];
  [v11 sf_isChinaRegionCellularDevice];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = SFLocalizableWAPIStringKeyForKey();
  v14 = [v12 localizedStringForKey:v13 value:&stru_287730CE8 table:@"WirelessData"];

  v15 = +[PSDataUsageStatisticsCache sharedInstance];
  v16 = [PSAppCellularUsageSpecifier _specifierWithDisplayName:v14 appName:v10 bundleID:v9 shouldShowUsage:0 icon:v8 statisticsCache:v15 usageType:0];

  return v16;
}

- (unint64_t)dataUsage
{
  v3 = [(PSAppCellularUsageSpecifier *)self billingPeriodSource];
  statisticsCache = self->_statisticsCache;
  v5 = [(PSAppCellularUsageSpecifier *)self bundleID];
  if (v3)
  {
    v6 = [v3 selectedPeriod];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PSDataUsageStatisticsCache *)statisticsCache usageForBundleID:v5 inPeriod:v6];

  v8 = [(PSAppCellularUsageSpecifier *)self usageType];
  v9 = [v7 native];
  v10 = v9;
  if (v8 == 1)
  {
    v11 = [v9 satellite];
    v12 = [v7 proxied];
    v13 = [v12 satellite] + v11;
  }

  else
  {
    v14 = [v9 cellularHome];
    v12 = [v7 native];
    v15 = [v12 cellularRoaming] + v14;
    v16 = [v7 proxied];
    v17 = [v16 cellularHome];
    v18 = [v7 proxied];
    v13 = v15 + v17 + [v18 cellularRoaming];
  }

  return v13;
}

- (id)dataUsageString
{
  v3 = [(PSAppCellularUsageSpecifier *)self dataUsage];
  if (v3)
  {
    v4 = [SettingsCellularSharedUtils usageSizeString:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PSAppCellularUsageSpecifier *)self bundleID];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = +[PSCellularManagementCache sharedInstance];
  v8 = [(PSAppCellularUsageSpecifier *)self bundleID];
  v9 = [v7 isManaged:v8];

  if (v9)
  {
    if (v4)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = SFLocalizableWAPIStringKeyForKey();
      v13 = [v11 localizedStringForKey:v12 value:&stru_287730CE8 table:@"WirelessData"];
      v14 = [v10 stringWithFormat:v13, v4];
    }

    else
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = SFLocalizableWAPIStringKeyForKey();
      v14 = [v17 localizedStringForKey:v18 value:&stru_287730CE8 table:@"WirelessData"];
    }
  }

  else
  {
LABEL_8:
    v15 = &stru_287730CE8;
    if (v4)
    {
      v15 = v4;
    }

    v14 = v15;
  }

  return v14;
}

- (id)usagePolicy
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Unimplemented method." reason:@"This method is only implemented by subclasses." userInfo:0];
  objc_exception_throw(v2);
}

- (void)setUsagePolicy:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Unimplemented method." reason:@"This method is only implemented by subclasses." userInfo:0];
  objc_exception_throw(v4);
}

- (BOOL)isRestricted
{
  v3 = +[PSCellularManagementCache sharedInstance];
  if ([v3 isGlobalDataModificationRestricted])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[PSAppDataUsagePolicyCache sharedInstance];
    v6 = [(PSAppCellularUsageSpecifier *)self bundleID];
    v7 = [v5 policiesFor:v6];
    v4 = [v7 isRestricted];
  }

  return v4;
}

- (PSBillingPeriodSource)billingPeriodSource
{
  WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);

  return WeakRetained;
}

- (PSAppCellularUsageSpecifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end