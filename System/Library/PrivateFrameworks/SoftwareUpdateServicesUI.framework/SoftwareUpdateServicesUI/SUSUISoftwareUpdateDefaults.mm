@interface SUSUISoftwareUpdateDefaults
- (SUSUISoftwareUpdateDefaults)init;
- (id)_initWithLegacyDefaults:(id)defaults;
- (void)_bindAndRegisterDefaults;
- (void)_clearLegacySpringBoardPreferences;
- (void)_migrateLegacySpringBoardPreferences;
- (void)migrateAndClearLegacyPreferences;
@end

@implementation SUSUISoftwareUpdateDefaults

- (SUSUISoftwareUpdateDefaults)init
{
  location = self;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v10 = 0;
  v8 = 0;
  if ([bundleIdentifier isEqualToString:init_springBoardBundleIdentifier])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = 1;
    v4 = standardUserDefaults;
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x277CBEBD0]);
    v9 = [v2 initWithSuiteName:init_springBoardBundleIdentifier];
    v8 = 1;
    v4 = v9;
  }

  location = [(SUSUISoftwareUpdateDefaults *)self _initWithLegacyDefaults:v4, v4];
  v13 = MEMORY[0x277D82BE0](location);
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](standardUserDefaults);
  }

  MEMORY[0x277D82BD8](bundleIdentifier);
  MEMORY[0x277D82BD8](mainBundle);
  objc_storeStrong(&location, 0);
  return v13;
}

- (id)_initWithLegacyDefaults:(id)defaults
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, defaults);
  v3 = selfCopy;
  selfCopy = 0;
  v6 = [(BSAbstractDefaultDomain *)v3 _initWithDomain:@"com.apple.softwareupdateservices.ui.ios"];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_sbLegacyDefaults, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"lastOSVersion"];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
  MEMORY[0x277D82BD8](v3);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"softwareUpdateState"];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
  MEMORY[0x277D82BD8](v4);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"needsAlertPresentationAfterOTAUpdate"];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
  MEMORY[0x277D82BD8](v5);
}

- (void)migrateAndClearLegacyPreferences
{
  [(SUSUISoftwareUpdateDefaults *)self _migrateLegacySpringBoardPreferences];
  [(SUSUISoftwareUpdateDefaults *)self _clearLegacySpringBoardPreferences];
  [(SUSUISoftwareUpdateDefaults *)self setNeedsAlertPresentationAfterOTAUpdate:0];
  _store = [(BSAbstractDefaultDomain *)self _store];
  [_store synchronize];
  MEMORY[0x277D82BD8](_store);
}

- (void)_migrateLegacySpringBoardPreferences
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [(NSUserDefaults *)self->_sbLegacyDefaults dictionaryForKey:@"SBBootTransitionContext"];
  v5 = [v13[0] valueForKey:@"__fromOTASoftwareUpdate"];
  bOOLValue = [v5 BOOLValue];
  MEMORY[0x277D82BD8](v5);
  v12 = bOOLValue;
  v11 = [(NSUserDefaults *)selfCopy->_sbLegacyDefaults BOOLForKey:@"SBFromOTASoftwareUpdate"];
  needsAlertPresentationAfterOTAUpdate = [(SUSUISoftwareUpdateDefaults *)selfCopy needsAlertPresentationAfterOTAUpdate];
  if (v11 || (v12 & 1) != 0 || (needsAlertPresentationAfterOTAUpdate & 1) != 0)
  {
    location = SUSUILog();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_26AC54000, log, type, "Found legacy needOTAAlert preference", v7, 2u);
    }

    objc_storeStrong(&location, 0);
    v2 = +[SUSUIPreferences sharedInstance];
    [(SUSUIPreferences *)v2 setNeedsAlertPresentationAfterOTAUpdate:1];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(v13, 0);
}

- (void)_clearLegacySpringBoardPreferences
{
  [(NSUserDefaults *)self->_sbLegacyDefaults removeObjectForKey:@"SBFromOTASoftwareUpdate"];
  [(NSUserDefaults *)self->_sbLegacyDefaults removeObjectForKey:@"SBSoftwareUpdateBadgedSettings"];
  [(NSUserDefaults *)self->_sbLegacyDefaults removeObjectForKey:@"SBSoftwareUpdateOSVersion"];
  [(NSUserDefaults *)self->_sbLegacyDefaults removeObjectForKey:@"SBSoftwareUpdateState"];
  [(NSUserDefaults *)self->_sbLegacyDefaults synchronize];
}

@end