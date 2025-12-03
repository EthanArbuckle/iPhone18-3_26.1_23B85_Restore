@interface SUSUIExternalSettingsAppDefaults
- (BOOL)isBadgedForSoftwareUpdate;
- (SUSUIExternalSettingsAppDefaults)init;
- (void)setBadgedForSoftwareUpdate:(BOOL)update;
@end

@implementation SUSUIExternalSettingsAppDefaults

- (SUSUIExternalSettingsAppDefaults)init
{
  v4 = 0;
  v4 = [(BSAbstractDefaultDomain *)self _initWithDomain:@"com.apple.Preferences"];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (BOOL)isBadgedForSoftwareUpdate
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  v4 = [_store BOOLForKey:@"kBadgedForSoftwareUpdateKey"];
  MEMORY[0x277D82BD8](_store);
  return v4;
}

- (void)setBadgedForSoftwareUpdate:(BOOL)update
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  [_store setBool:update forKey:?];
  MEMORY[0x277D82BD8](_store);
  _store2 = [(BSAbstractDefaultDomain *)self _store];
  [_store2 synchronize];
  MEMORY[0x277D82BD8](_store2);
  GSSendAppPreferencesChanged();
}

@end