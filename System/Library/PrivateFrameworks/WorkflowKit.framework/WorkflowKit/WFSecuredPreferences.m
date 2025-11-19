@interface WFSecuredPreferences
+ (WFSecuredPreferences)standardPreferences;
- (BOOL)BOOLForKey:(id)a3;
- (WFSecuredPreferences)init;
- (id)objectForKey:(id)a3;
- (void)registerDefaults:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)userDefaultsDidChange:(id)a3;
@end

@implementation WFSecuredPreferences

- (void)userDefaultsDidChange:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"WFSecuredPreferencesDidChangeNotification" object:self];
}

- (void)registerDefaults:(id)a3
{
  v4 = a3;
  v5 = [(WFSecuredPreferences *)self userDefaults];
  [v5 registerDefaults:v4];
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFSecuredPreferences *)self userDefaults];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFSecuredPreferences *)self userDefaults];
  [v5 removeObjectForKey:v4];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFSecuredPreferences *)self userDefaults];
  [v8 setObject:v7 forKey:v6];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFSecuredPreferences *)self userDefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (WFSecuredPreferences)init
{
  v10.receiver = self;
  v10.super_class = WFSecuredPreferences;
  v2 = [(WFSecuredPreferences *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E696AA70];
    v7 = [(WFSecuredPreferences *)v2 userDefaults];
    [v5 addObserver:v2 selector:sel_userDefaultsDidChange_ name:v6 object:v7];

    v8 = v2;
  }

  return v2;
}

+ (WFSecuredPreferences)standardPreferences
{
  if (standardPreferences_onceToken != -1)
  {
    dispatch_once(&standardPreferences_onceToken, &__block_literal_global_2906);
  }

  v3 = standardPreferences_standardPreferences;

  return v3;
}

void __43__WFSecuredPreferences_standardPreferences__block_invoke()
{
  v0 = objc_alloc_init(WFSecuredPreferences);
  v1 = standardPreferences_standardPreferences;
  standardPreferences_standardPreferences = v0;
}

@end