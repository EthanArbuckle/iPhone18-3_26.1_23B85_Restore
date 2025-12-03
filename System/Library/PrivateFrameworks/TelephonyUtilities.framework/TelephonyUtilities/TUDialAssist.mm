@interface TUDialAssist
+ (TUDialAssist)sharedInstance;
- (TUDialAssist)init;
- (void)dealloc;
@end

@implementation TUDialAssist

+ (TUDialAssist)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TUDialAssist sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __30__TUDialAssist_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(TUDialAssist);

  return MEMORY[0x1EEE66BB8]();
}

- (TUDialAssist)init
{
  v5.receiver = self;
  v5.super_class = TUDialAssist;
  v2 = [(TUDialAssist *)&v5 init];
  if (v2)
  {
    uTF8String = [TUDialAssistUserSettingChanged UTF8String];
    notify_register_dispatch(uTF8String, &v2->_dialAssistUserSettingsChangedToken, MEMORY[0x1E69E96A0], &__block_literal_global_4_0);
    CFPreferencesAppSynchronize(TUDialAssistDomain);
    CFPreferencesAppSynchronize(TUMobilePhoneDomain);
  }

  return v2;
}

uint64_t __20__TUDialAssist_init__block_invoke()
{
  v0 = TUDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1956FD000, v0, OS_LOG_TYPE_DEFAULT, "Dial assist value changed. Synchronizing prefs", v2, 2u);
  }

  return CFPreferencesAppSynchronize(TUDialAssistDomain);
}

- (void)dealloc
{
  notify_cancel(self->_dialAssistUserSettingsChangedToken);
  v3.receiver = self;
  v3.super_class = TUDialAssist;
  [(TUDialAssist *)&v3 dealloc];
}

@end