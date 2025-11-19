@interface SBKPreferences
+ (id)storeBookkeeperPreferences;
- (SBKPreferences)init;
- (id)objectForKey:(id)a3 withDefaultValue:(id)a4;
- (void)_preferencesDidChange;
- (void)dealloc;
- (void)registerDefaultsIfKeyNotSet:(id)a3 registrationBlock:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation SBKPreferences

- (id)objectForKey:(id)a3 withDefaultValue:(id)a4
{
  v5 = a4;
  v6 = CFPreferencesCopyAppValue(a3, @"com.apple.storebookkeeper");
  if (!v6)
  {
    v6 = v5;
  }

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  CFPreferencesSetAppValue(a4, a3, @"com.apple.storebookkeeper");

  CFPreferencesAppSynchronize(@"com.apple.storebookkeeper");
}

- (void)registerDefaultsIfKeyNotSet:(id)a3 registrationBlock:(id)a4
{
  v6 = a4;
  v7 = [@"_didRegister-" stringByAppendingString:a3];
  if (![(SBKPreferences *)self BOOLForKey:?])
  {
    v6[2](v6);
    [(SBKPreferences *)self setBool:1 forKey:v7];
    CFPreferencesAppSynchronize(@"com.apple.storebookkeeper");
  }
}

- (void)_preferencesDidChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SBKPreferencesDidChangeNotification" object:self userInfo:0];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.storebookkeeper.defaultschange", self);
  v4.receiver = self;
  v4.super_class = SBKPreferences;
  [(SBKPreferences *)&v4 dealloc];
}

- (SBKPreferences)init
{
  v5.receiver = self;
  v5.super_class = SBKPreferences;
  v2 = [(SBKPreferences *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _PreferencesDidChangeNotification, @"com.apple.storebookkeeper.defaultschange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (id)storeBookkeeperPreferences
{
  if (storeBookkeeperPreferences_onceToken != -1)
  {
    dispatch_once(&storeBookkeeperPreferences_onceToken, &__block_literal_global_575);
  }

  v3 = storeBookkeeperPreferences_storeBookkeeperPreferences;

  return v3;
}

uint64_t __44__SBKPreferences_storeBookkeeperPreferences__block_invoke()
{
  storeBookkeeperPreferences_storeBookkeeperPreferences = objc_alloc_init(SBKPreferences);

  return MEMORY[0x2821F96F8]();
}

@end