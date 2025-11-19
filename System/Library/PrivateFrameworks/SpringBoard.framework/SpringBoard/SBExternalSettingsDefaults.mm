@interface SBExternalSettingsDefaults
- (BOOL)isBadgedForSoftwareUpdate;
- (void)setBadgedForSoftwareUpdate:(BOOL)a3;
@end

@implementation SBExternalSettingsDefaults

- (BOOL)isBadgedForSoftwareUpdate
{
  v2 = [(BSAbstractDefaultDomain *)self _store];
  v3 = [v2 BOOLForKey:@"kBadgedForSoftwareUpdateKey"];

  return v3;
}

- (void)setBadgedForSoftwareUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(BSAbstractDefaultDomain *)self _store];
  [v5 setBool:v3 forKey:@"kBadgedForSoftwareUpdateKey"];

  v6 = [(BSAbstractDefaultDomain *)self _store];
  [v6 synchronize];

  MEMORY[0x282167578](@"com.apple.Preferences", @"kBadgedForSoftwareUpdateKey");
}

@end