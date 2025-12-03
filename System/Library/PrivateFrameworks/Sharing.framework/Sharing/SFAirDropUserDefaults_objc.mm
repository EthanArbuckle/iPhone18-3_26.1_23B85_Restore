@interface SFAirDropUserDefaults_objc
+ (BOOL)askToAirdropEnabled;
+ (BOOL)cellularUsageEnabled;
+ (BOOL)moveToAppEnabled;
+ (BOOL)nearFieldSharingEnabled;
+ (BOOL)privateContactDiscoveryEnabled;
+ (BOOL)solariumEnabled;
+ (BOOL)systemLevelProgressEnabled;
@end

@implementation SFAirDropUserDefaults_objc

+ (BOOL)privateContactDiscoveryEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  objcPrivateContactDiscoveryEnabled = [v2 objcPrivateContactDiscoveryEnabled];

  return objcPrivateContactDiscoveryEnabled;
}

+ (BOOL)solariumEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  objcSolariumEnabled = [v2 objcSolariumEnabled];

  return objcSolariumEnabled;
}

+ (BOOL)moveToAppEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  objcMoveToAppEnabled = [v2 objcMoveToAppEnabled];

  return objcMoveToAppEnabled;
}

+ (BOOL)systemLevelProgressEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  objcSystemLevelProgressEnabled = [v2 objcSystemLevelProgressEnabled];

  return objcSystemLevelProgressEnabled;
}

+ (BOOL)askToAirdropEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  objcAskToAirDropEnabled = [v2 objcAskToAirDropEnabled];

  return objcAskToAirDropEnabled;
}

+ (BOOL)nearFieldSharingEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  objcNearFieldSharingEnabled = [v2 objcNearFieldSharingEnabled];

  return objcNearFieldSharingEnabled;
}

+ (BOOL)cellularUsageEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  objcCellularUsageEnabled = [v2 objcCellularUsageEnabled];

  return objcCellularUsageEnabled;
}

@end