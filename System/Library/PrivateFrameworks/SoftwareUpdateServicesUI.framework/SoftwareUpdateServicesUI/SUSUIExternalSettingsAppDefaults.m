@interface SUSUIExternalSettingsAppDefaults
- (BOOL)isBadgedForSoftwareUpdate;
- (SUSUIExternalSettingsAppDefaults)init;
- (void)setBadgedForSoftwareUpdate:(BOOL)a3;
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
  v3 = [(BSAbstractDefaultDomain *)self _store];
  v4 = [v3 BOOLForKey:@"kBadgedForSoftwareUpdateKey"];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (void)setBadgedForSoftwareUpdate:(BOOL)a3
{
  v3 = [(BSAbstractDefaultDomain *)self _store];
  [v3 setBool:a3 forKey:?];
  MEMORY[0x277D82BD8](v3);
  v4 = [(BSAbstractDefaultDomain *)self _store];
  [v4 synchronize];
  MEMORY[0x277D82BD8](v4);
  GSSendAppPreferencesChanged();
}

@end