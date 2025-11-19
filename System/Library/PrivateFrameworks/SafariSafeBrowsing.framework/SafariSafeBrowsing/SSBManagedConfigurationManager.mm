@interface SSBManagedConfigurationManager
+ (BOOL)isSafeBrowsingEnabledStateLockedDownByRestrictions;
+ (BOOL)restrictedBoolValueForSafeBrowsing;
@end

@implementation SSBManagedConfigurationManager

+ (BOOL)isSafeBrowsingEnabledStateLockedDownByRestrictions
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D26038]];

  return v3;
}

+ (BOOL)restrictedBoolValueForSafeBrowsing
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 BOOLRestrictionForFeature:*MEMORY[0x277D26038]] != 2;

  return v3;
}

@end