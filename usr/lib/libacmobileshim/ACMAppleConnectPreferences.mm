@interface ACMAppleConnectPreferences
+ (id)preferencesWithStore:(id)a3;
- (ACMAppleConnectPreferences)initWithPreferencesStore:(id)a3;
- (BOOL)runsOn64BitsDevice;
- (BOOL)shouldRememberPasswordInKeychain;
- (NSMutableDictionary)environmentsContainer;
- (id)allValuesWithOptions:(int64_t)a3;
- (id)environmentPreferencesWithRealm:(id)a3;
- (id)principalPreferencesWithPrincipal:(id)a3;
- (int)logLevel;
- (void)cleanupOnMemoryWarning;
- (void)clearCache;
- (void)dealloc;
- (void)purgeAllValues;
- (void)purgeAllValuesWithOptions:(int64_t)a3;
- (void)replaceAllValues:(id)a3 withOptions:(int64_t)a4;
- (void)savePreferencesIfNeeded;
- (void)setLogLevel:(int)a3;
- (void)setRunsOn64BitsDevice:(BOOL)a3;
- (void)setShouldRememberPasswordInKeychain:(BOOL)a3;
- (void)setUUID:(id)a3;
@end

@implementation ACMAppleConnectPreferences

+ (id)preferencesWithStore:(id)a3
{
  v3 = [[a1 alloc] initWithPreferencesStore:a3];

  return v3;
}

- (ACMAppleConnectPreferences)initWithPreferencesStore:(id)a3
{
  v7.receiver = self;
  v7.super_class = ACMAppleConnectPreferences;
  v4 = [(ACMAppleConnectPreferences *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACMPreferences *)v4 setPreferencesStore:a3];
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

- (id)environmentPreferencesWithRealm:(id)a3
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)[(ACMAppleConnectPreferences *)self environmentsContainer] objectForKey:a3];
  if (!v5)
  {
    v5 = [(ACMAppleConnectPreferences *)self createEnvironmentWithRealm:a3];
    if (v5)
    {
      [v5 setPreferencesStore:{-[ACMPreferences preferencesStore](self, "preferencesStore")}];
      [(NSMutableDictionary *)[(ACMAppleConnectPreferences *)self environmentsContainer] setObject:v5 forKey:a3];
    }
  }

  objc_sync_exit(self);
  return v5;
}

- (id)principalPreferencesWithPrincipal:(id)a3
{
  v4 = -[ACMAppleConnectPreferences environmentPreferencesWithRealm:](self, "environmentPreferencesWithRealm:", [a3 realm]);
  v5 = [a3 userName];

  return [v4 principalPreferencesWithUserName:v5];
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

- (void)setLogLevel:(int)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithInt:*&a3];

  [(ACMPreferences *)self setPreferencesValue:v4 forKey:@"ACCLogLevel"];
}

- (void)setUUID:(id)a3
{
  if (a3)
  {
    [(ACMPreferences *)self setPreferencesValue:a3 forKey:@"ACCUUID"];
  }
}

- (BOOL)runsOn64BitsDevice
{
  v2 = [(ACMPreferencesStore *)[(ACMPreferences *)self preferencesStore] preferencesValueForKey:@"ACCRunsOn64BitsDevice"];

  return [v2 BOOLValue];
}

- (void)setRunsOn64BitsDevice:(BOOL)a3
{
  v3 = a3;
  v4 = [(ACMPreferences *)self preferencesStore];
  v5 = [MEMORY[0x29EDBA070] numberWithBool:v3];

  [(ACMPreferencesStore *)v4 setPreferencesValue:v5 forKey:@"ACCRunsOn64BitsDevice"];
}

- (void)setShouldRememberPasswordInKeychain:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];

  [(ACMPreferences *)self setPreferencesValue:v4 forKey:@"ACCRememberPassword"];
}

- (BOOL)shouldRememberPasswordInKeychain
{
  v2 = [(ACMPreferences *)self preferencesValueForKey:@"ACCRememberPassword"];

  return [v2 BOOLValue];
}

- (void)purgeAllValues
{
  v2 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v2 removeAllValues];
}

- (void)purgeAllValuesWithOptions:(int64_t)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v4 removeAllValuesWithOptions:a3];
}

- (id)allValuesWithOptions:(int64_t)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v4 allValuesWithOptions:a3];
}

- (void)replaceAllValues:(id)a3 withOptions:(int64_t)a4
{
  v6 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v6 replaceAllValues:a3 withOptions:a4];
}

- (void)clearCache
{
  v2 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v2 clearCache];
}

- (void)savePreferencesIfNeeded
{
  [(ACMPreferencesStore *)[(ACMPreferences *)self preferencesStore] savePreferencesIfNeeded];
  v3 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v3 clearCache];
}

- (void)cleanupOnMemoryWarning
{
  v2 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v2 cleanupOnMemoryWarning];
}

@end