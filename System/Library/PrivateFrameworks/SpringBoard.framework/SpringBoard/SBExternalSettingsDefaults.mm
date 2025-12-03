@interface SBExternalSettingsDefaults
- (BOOL)isBadgedForSoftwareUpdate;
- (void)setBadgedForSoftwareUpdate:(BOOL)update;
@end

@implementation SBExternalSettingsDefaults

- (BOOL)isBadgedForSoftwareUpdate
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  v3 = [_store BOOLForKey:@"kBadgedForSoftwareUpdateKey"];

  return v3;
}

- (void)setBadgedForSoftwareUpdate:(BOOL)update
{
  updateCopy = update;
  _store = [(BSAbstractDefaultDomain *)self _store];
  [_store setBool:updateCopy forKey:@"kBadgedForSoftwareUpdateKey"];

  _store2 = [(BSAbstractDefaultDomain *)self _store];
  [_store2 synchronize];

  MEMORY[0x282167578](@"com.apple.Preferences", @"kBadgedForSoftwareUpdateKey");
}

@end