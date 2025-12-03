@interface WFSecuredPreferences
+ (WFSecuredPreferences)standardPreferences;
- (BOOL)BOOLForKey:(id)key;
- (WFSecuredPreferences)init;
- (id)objectForKey:(id)key;
- (void)registerDefaults:(id)defaults;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)userDefaultsDidChange:(id)change;
@end

@implementation WFSecuredPreferences

- (void)userDefaultsDidChange:(id)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WFSecuredPreferencesDidChangeNotification" object:self];
}

- (void)registerDefaults:(id)defaults
{
  defaultsCopy = defaults;
  userDefaults = [(WFSecuredPreferences *)self userDefaults];
  [userDefaults registerDefaults:defaultsCopy];
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WFSecuredPreferences *)self userDefaults];
  v6 = [userDefaults BOOLForKey:keyCopy];

  return v6;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WFSecuredPreferences *)self userDefaults];
  [userDefaults removeObjectForKey:keyCopy];
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  userDefaults = [(WFSecuredPreferences *)self userDefaults];
  [userDefaults setObject:objectCopy forKey:keyCopy];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WFSecuredPreferences *)self userDefaults];
  v6 = [userDefaults objectForKey:keyCopy];

  return v6;
}

- (WFSecuredPreferences)init
{
  v10.receiver = self;
  v10.super_class = WFSecuredPreferences;
  v2 = [(WFSecuredPreferences *)&v10 init];
  if (v2)
  {
    systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = systemShortcutsUserDefaults;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E696AA70];
    userDefaults = [(WFSecuredPreferences *)v2 userDefaults];
    [defaultCenter addObserver:v2 selector:sel_userDefaultsDidChange_ name:v6 object:userDefaults];

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