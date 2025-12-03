@interface ACMAppleConnectPreferences
+ (id)preferencesWithStore:(id)store;
- (ACMAppleConnectPreferences)initWithPreferencesStore:(id)store;
- (BOOL)runsOn64BitsDevice;
- (BOOL)shouldRememberPasswordInKeychain;
- (NSMutableDictionary)environmentsContainer;
- (id)allValuesWithOptions:(int64_t)options;
- (id)environmentPreferencesWithRealm:(id)realm;
- (id)principalPreferencesWithPrincipal:(id)principal;
- (int)logLevel;
- (void)cleanupOnMemoryWarning;
- (void)clearCache;
- (void)dealloc;
- (void)purgeAllValues;
- (void)purgeAllValuesWithOptions:(int64_t)options;
- (void)replaceAllValues:(id)values withOptions:(int64_t)options;
- (void)savePreferencesIfNeeded;
- (void)setLogLevel:(int)level;
- (void)setRunsOn64BitsDevice:(BOOL)device;
- (void)setShouldRememberPasswordInKeychain:(BOOL)keychain;
- (void)setUUID:(id)d;
@end

@implementation ACMAppleConnectPreferences

+ (id)preferencesWithStore:(id)store
{
  v3 = [[self alloc] initWithPreferencesStore:store];

  return v3;
}

- (ACMAppleConnectPreferences)initWithPreferencesStore:(id)store
{
  v7.receiver = self;
  v7.super_class = ACMAppleConnectPreferences;
  v4 = [(ACMAppleConnectPreferences *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACMPreferences *)v4 setPreferencesStore:store];
  }

  return v5;
}

- (void)dealloc
{
  self->_environmentsContainer = 0;
  v3.receiver = self;
  v3.super_class = ACMAppleConnectPreferences;
  [(ACMPreferences *)&v3 dealloc];
}

- (NSMutableDictionary)environmentsContainer
{
  objc_sync_enter(self);
  environmentsContainer = self->_environmentsContainer;
  if (!environmentsContainer)
  {
    environmentsContainer = objc_opt_new();
    self->_environmentsContainer = environmentsContainer;
  }

  objc_sync_exit(self);
  return environmentsContainer;
}

- (id)environmentPreferencesWithRealm:(id)realm
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)[(ACMAppleConnectPreferences *)self environmentsContainer] objectForKey:realm];
  if (!v5)
  {
    v5 = [(ACMAppleConnectPreferences *)self createEnvironmentWithRealm:realm];
    if (v5)
    {
      [v5 setPreferencesStore:{-[ACMPreferences preferencesStore](self, "preferencesStore")}];
      [(NSMutableDictionary *)[(ACMAppleConnectPreferences *)self environmentsContainer] setObject:v5 forKey:realm];
    }
  }

  objc_sync_exit(self);
  return v5;
}

- (id)principalPreferencesWithPrincipal:(id)principal
{
  v4 = -[ACMAppleConnectPreferences environmentPreferencesWithRealm:](self, "environmentPreferencesWithRealm:", [principal realm]);
  userName = [principal userName];

  return [v4 principalPreferencesWithUserName:userName];
}

- (int)logLevel
{
  v2 = [(ACMPreferences *)self preferencesValueForKey:@"ACCLogLevel"];
  if (!v2)
  {
    return ACFLogSettingsGetLevel();
  }

  return [v2 intValue];
}

- (void)setLogLevel:(int)level
{
  v4 = [MEMORY[0x29EDBA070] numberWithInt:*&level];

  [(ACMPreferences *)self setPreferencesValue:v4 forKey:@"ACCLogLevel"];
}

- (void)setUUID:(id)d
{
  if (d)
  {
    [(ACMPreferences *)self setPreferencesValue:d forKey:@"ACCUUID"];
  }
}

- (BOOL)runsOn64BitsDevice
{
  v2 = [(ACMPreferencesStore *)[(ACMPreferences *)self preferencesStore] preferencesValueForKey:@"ACCRunsOn64BitsDevice"];

  return [v2 BOOLValue];
}

- (void)setRunsOn64BitsDevice:(BOOL)device
{
  deviceCopy = device;
  preferencesStore = [(ACMPreferences *)self preferencesStore];
  v5 = [MEMORY[0x29EDBA070] numberWithBool:deviceCopy];

  [(ACMPreferencesStore *)preferencesStore setPreferencesValue:v5 forKey:@"ACCRunsOn64BitsDevice"];
}

- (void)setShouldRememberPasswordInKeychain:(BOOL)keychain
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:keychain];

  [(ACMPreferences *)self setPreferencesValue:v4 forKey:@"ACCRememberPassword"];
}

- (BOOL)shouldRememberPasswordInKeychain
{
  v2 = [(ACMPreferences *)self preferencesValueForKey:@"ACCRememberPassword"];

  return [v2 BOOLValue];
}

- (void)purgeAllValues
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore removeAllValues];
}

- (void)purgeAllValuesWithOptions:(int64_t)options
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore removeAllValuesWithOptions:options];
}

- (id)allValuesWithOptions:(int64_t)options
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore allValuesWithOptions:options];
}

- (void)replaceAllValues:(id)values withOptions:(int64_t)options
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore replaceAllValues:values withOptions:options];
}

- (void)clearCache
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore clearCache];
}

- (void)savePreferencesIfNeeded
{
  [(ACMPreferencesStore *)[(ACMPreferences *)self preferencesStore] savePreferencesIfNeeded];
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore clearCache];
}

- (void)cleanupOnMemoryWarning
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore cleanupOnMemoryWarning];
}

@end