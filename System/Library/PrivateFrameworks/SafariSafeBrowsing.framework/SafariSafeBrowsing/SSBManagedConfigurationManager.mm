@interface SSBManagedConfigurationManager
+ (BOOL)isSafeBrowsingEnabledStateLockedDownByRestrictions;
+ (BOOL)restrictedBoolValueForSafeBrowsing;
@end

@implementation SSBManagedConfigurationManager

+ (BOOL)isSafeBrowsingEnabledStateLockedDownByRestrictions
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D26038]];

  return v3;
}

+ (BOOL)restrictedBoolValueForSafeBrowsing
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] BOOLRestrictionForFeature:*MEMORY[0x277D26038]] != 2;

  return v3;
}

@end