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
  v3 = [v2 objcPrivateContactDiscoveryEnabled];

  return v3;
}

+ (BOOL)solariumEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  v3 = [v2 objcSolariumEnabled];

  return v3;
}

+ (BOOL)moveToAppEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  v3 = [v2 objcMoveToAppEnabled];

  return v3;
}

+ (BOOL)systemLevelProgressEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  v3 = [v2 objcSystemLevelProgressEnabled];

  return v3;
}

+ (BOOL)askToAirdropEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  v3 = [v2 objcAskToAirDropEnabled];

  return v3;
}

+ (BOOL)nearFieldSharingEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  v3 = [v2 objcNearFieldSharingEnabled];

  return v3;
}

+ (BOOL)cellularUsageEnabled
{
  v2 = +[SFAirDropUserDefaults shared];
  v3 = [v2 objcCellularUsageEnabled];

  return v3;
}

@end