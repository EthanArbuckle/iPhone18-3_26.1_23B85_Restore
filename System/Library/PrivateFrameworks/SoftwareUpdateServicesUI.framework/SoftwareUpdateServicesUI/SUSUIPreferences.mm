@interface SUSUIPreferences
+ (id)sharedInstance;
- (BOOL)_getBooleanPreferenceForKey:(id)key withDefaultValue:(BOOL)value;
- (SUSUIPreferences)init;
- (id)_copyNumberPreferenceForKey:(id)key;
- (id)_copyStringPreferenceForKey:(id)key;
- (void)_copyPreferenceForKey:(__CFString *)key ofType:(unint64_t)type;
- (void)_loadPreferences;
- (void)_setBooleanPreferenceForKey:(id)key value:(BOOL)value;
- (void)dealloc;
- (void)setNeedsAlertPresentationAfterOTAUpdate:(BOOL)update;
- (void)setRestartCountdownOverrideIntervalSeconds:(id)seconds;
@end

@implementation SUSUIPreferences

- (SUSUIPreferences)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = SUSUIPreferences;
  v5 = [(SUSUIPreferences *)&v6 init];
  v8 = v5;
  objc_storeStrong(&v8, v5);
  if (v5)
  {
    [(SUSUIPreferences *)v8 _loadPreferences];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, __SUSUIPreferencesChanged, @"SUSUIPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  v4 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, @"SUSUIPreferencesChangedNotification", 0);
  v3.receiver = selfCopy;
  v3.super_class = SUSUIPreferences;
  [(SUSUIPreferences *)&v3 dealloc];
}

+ (id)sharedInstance
{
  v5 = &sharedInstance_pred;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance___instance_0;

  return v2;
}

uint64_t __34__SUSUIPreferences_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUSUIPreferences);
  v1 = sharedInstance___instance_0;
  sharedInstance___instance_0 = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (void)_loadPreferences
{
  self->_alertAfterDownload = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"alertAfterDownload" withDefaultValue:0];
  v2 = [(SUSUIPreferences *)self _copyNumberPreferenceForKey:@"passcodeRequiredDays"];
  passcodeRequiredDays = self->_passcodeRequiredDays;
  self->_passcodeRequiredDays = v2;
  MEMORY[0x277D82BD8](passcodeRequiredDays);
  self->_needsAlertPresentationAfterOTAUpdate = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"needsAlertAfterOTAUpdate" withDefaultValue:0];
  self->_preventCountdownAlert = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"preventCountdownAlert" withDefaultValue:0];
  v4 = [(SUSUIPreferences *)self _copyNumberPreferenceForKey:@"installAlertInterval"];
  installAlertIntervalMinutes = self->_installAlertIntervalMinutes;
  self->_installAlertIntervalMinutes = v4;
  MEMORY[0x277D82BD8](installAlertIntervalMinutes);
  self->_isSharedIPad = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"isSharedIPad" withDefaultValue:0];
  self->_IWillRebootLater = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"IWillRebootLater" withDefaultValue:0];
  v6 = [(SUSUIPreferences *)self _copyNumberPreferenceForKey:@"restartCountdownOverrideIntervalSeconds"];
  restartCountdownOverrideIntervalSeconds = self->_restartCountdownOverrideIntervalSeconds;
  self->_restartCountdownOverrideIntervalSeconds = v6;
  MEMORY[0x277D82BD8](restartCountdownOverrideIntervalSeconds);
  self->_preventRebootAlert = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"preventRebootAlert" withDefaultValue:0];
  self->_lastAppliedUpdateWasSplatOnly = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"lastAppliedUpdateWasSplatOnly" withDefaultValue:0];
  self->_preventPostUpdateAlert = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"preventPostUpdateAlert" withDefaultValue:0];
  self->_useMobileInboxUpdaterRebootDelay = [(SUSUIPreferences *)self _getBooleanPreferenceForKey:@"useMobileInboxUpdaterRebootDelay" withDefaultValue:0];
}

- (BOOL)_getBooleanPreferenceForKey:(id)key withDefaultValue:(BOOL)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  BOOLean = [(SUSUIPreferences *)selfCopy _copyPreferenceForKey:location[0] ofType:CFBooleanGetTypeID()];
  if (BOOLean)
  {
    v6 = CFBooleanGetValue(BOOLean) != 0;
    CFRelease(BOOLean);
    valueCopy = v6;
  }

  else
  {
    valueCopy = value;
  }

  objc_storeStrong(location, 0);
  return valueCopy;
}

- (id)_copyStringPreferenceForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(SUSUIPreferences *)selfCopy _copyPreferenceForKey:location[0] ofType:CFStringGetTypeID()];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_copyNumberPreferenceForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(SUSUIPreferences *)selfCopy _copyPreferenceForKey:location[0] ofType:CFNumberGetTypeID()];
  objc_storeStrong(location, 0);
  return v4;
}

- (void)_copyPreferenceForKey:(__CFString *)key ofType:(unint64_t)type
{
  cf = CFPreferencesCopyValue(key, @"com.apple.susui", @"mobile", *MEMORY[0x277CBF010]);
  if (cf && CFGetTypeID(cf) == type)
  {
    return cf;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

- (void)setNeedsAlertPresentationAfterOTAUpdate:(BOOL)update
{
  if (update != self->_needsAlertPresentationAfterOTAUpdate)
  {
    self->_needsAlertPresentationAfterOTAUpdate = update;
    [(SUSUIPreferences *)self _setBooleanPreferenceForKey:@"needsAlertAfterOTAUpdate" value:update];
  }
}

- (void)_setBooleanPreferenceForKey:(id)key value:(BOOL)value
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  if (value)
  {
    value = *MEMORY[0x277CBED28];
  }

  else
  {
    value = *MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(location[0], value, @"com.apple.susui");
  CFPreferencesAppSynchronize(@"com.apple.susui");
  objc_storeStrong(location, 0);
}

- (void)setRestartCountdownOverrideIntervalSeconds:(id)seconds
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, seconds);
  objc_storeStrong(&selfCopy->_restartCountdownOverrideIntervalSeconds, location[0]);
  objc_storeStrong(location, 0);
}

@end