@interface PSAppCellularUsageSpecifier
+ (id)appSpecifierWithBundleID:(id)d name:(id)name statisticsCache:(id)cache usageType:(unint64_t)type;
+ (id)systemPolicySpecifierForAppName:(id)name bundleID:(id)d icon:(id)icon;
+ (void)setIconForSpecifier:(id)specifier bundleID:(id)d;
- (BOOL)isRestricted;
- (PSAppCellularUsageSpecifierDelegate)delegate;
- (PSBillingPeriodSource)billingPeriodSource;
- (id)dataUsageString;
- (id)usagePolicy;
- (unint64_t)dataUsage;
- (void)setUsagePolicy:(id)policy;
@end

@implementation PSAppCellularUsageSpecifier

+ (id)appSpecifierWithBundleID:(id)d name:(id)name statisticsCache:(id)cache usageType:(unint64_t)type
{
  dCopy = d;
  v11 = [self _specifierWithDisplayName:name appName:name bundleID:dCopy shouldShowUsage:1 icon:0 statisticsCache:cache usageType:type];
  if (dCopy)
  {
    [self setIconForSpecifier:v11 bundleID:dCopy];
  }

  return v11;
}

+ (void)setIconForSpecifier:(id)specifier bundleID:(id)d
{
  specifierCopy = specifier;
  v5 = MEMORY[0x277D75D70];
  dCopy = d;
  if ([v5 bundleIdentifierContainsWebClipIdentifier:dCopy])
  {
    v7 = [MEMORY[0x277D75D70] webClipIdentifierFromBundleIdentifier:dCopy];

    v8 = [MEMORY[0x277D75D70] webClipWithIdentifier:v7];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = [v8 generateIconImageForFormat:0 scale:?];

    if (v10)
    {
      [specifierCopy setProperty:v10 forKey:*MEMORY[0x277D3FFC0]];
    }
  }

  else
  {
    [specifierCopy setProperty:dCopy forKey:*MEMORY[0x277D40008]];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [specifierCopy setProperty:v11 forKey:*MEMORY[0x277D40020]];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [specifierCopy setProperty:v7 forKey:*MEMORY[0x277D40018]];
  }
}

+ (id)systemPolicySpecifierForAppName:(id)name bundleID:(id)d icon:(id)icon
{
  v7 = MEMORY[0x277D75418];
  iconCopy = icon;
  dCopy = d;
  nameCopy = name;
  currentDevice = [v7 currentDevice];
  [currentDevice sf_isChinaRegionCellularDevice];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = SFLocalizableWAPIStringKeyForKey();
  v14 = [v12 localizedStringForKey:v13 value:&stru_287730CE8 table:@"WirelessData"];

  v15 = +[PSDataUsageStatisticsCache sharedInstance];
  v16 = [PSAppCellularUsageSpecifier _specifierWithDisplayName:v14 appName:nameCopy bundleID:dCopy shouldShowUsage:0 icon:iconCopy statisticsCache:v15 usageType:0];

  return v16;
}

- (unint64_t)dataUsage
{
  billingPeriodSource = [(PSAppCellularUsageSpecifier *)self billingPeriodSource];
  statisticsCache = self->_statisticsCache;
  bundleID = [(PSAppCellularUsageSpecifier *)self bundleID];
  if (billingPeriodSource)
  {
    selectedPeriod = [billingPeriodSource selectedPeriod];
  }

  else
  {
    selectedPeriod = 0;
  }

  v7 = [(PSDataUsageStatisticsCache *)statisticsCache usageForBundleID:bundleID inPeriod:selectedPeriod];

  usageType = [(PSAppCellularUsageSpecifier *)self usageType];
  native = [v7 native];
  v10 = native;
  if (usageType == 1)
  {
    satellite = [native satellite];
    proxied = [v7 proxied];
    v13 = [proxied satellite] + satellite;
  }

  else
  {
    cellularHome = [native cellularHome];
    proxied = [v7 native];
    v15 = [proxied cellularRoaming] + cellularHome;
    proxied2 = [v7 proxied];
    cellularHome2 = [proxied2 cellularHome];
    proxied3 = [v7 proxied];
    v13 = v15 + cellularHome2 + [proxied3 cellularRoaming];
  }

  return v13;
}

- (id)dataUsageString
{
  dataUsage = [(PSAppCellularUsageSpecifier *)self dataUsage];
  if (dataUsage)
  {
    v4 = [SettingsCellularSharedUtils usageSizeString:dataUsage];
  }

  else
  {
    v4 = 0;
  }

  bundleID = [(PSAppCellularUsageSpecifier *)self bundleID];
  if (!bundleID)
  {
    goto LABEL_8;
  }

  v6 = bundleID;
  v7 = +[PSCellularManagementCache sharedInstance];
  bundleID2 = [(PSAppCellularUsageSpecifier *)self bundleID];
  v9 = [v7 isManaged:bundleID2];

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

- (void)setUsagePolicy:(id)policy
{
  policyCopy = policy;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Unimplemented method." reason:@"This method is only implemented by subclasses." userInfo:0];
  objc_exception_throw(v4);
}

- (BOOL)isRestricted
{
  v3 = +[PSCellularManagementCache sharedInstance];
  if ([v3 isGlobalDataModificationRestricted])
  {
    isRestricted = 1;
  }

  else
  {
    v5 = +[PSAppDataUsagePolicyCache sharedInstance];
    bundleID = [(PSAppCellularUsageSpecifier *)self bundleID];
    v7 = [v5 policiesFor:bundleID];
    isRestricted = [v7 isRestricted];
  }

  return isRestricted;
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