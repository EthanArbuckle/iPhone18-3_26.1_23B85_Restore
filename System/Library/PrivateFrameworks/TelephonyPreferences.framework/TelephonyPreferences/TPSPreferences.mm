@interface TPSPreferences
+ (TPSPreferences)sharedInstance;
- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)showSubscriptionList;
- (TPSPreferences)init;
- (id)numberForKey:(id)key defaultValue:(id)value;
- (id)preferencesValueForKey:(id)key;
- (id)preferencesValueForKey:(id)key domain:(id)domain;
- (id)stringForKey:(id)key defaultValue:(id)value;
- (int64_t)integerForKey:(id)key defaultValue:(int64_t)value;
- (unint64_t)unsignedIntegerForKey:(id)key defaultValue:(unint64_t)value;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setPreferencesValue:(id)value forKey:(id)key;
- (void)setPreferencesValue:(id)value forKey:(id)key domain:(id)domain;
- (void)setUnsignedInteger:(unint64_t)integer forKey:(id)key;
@end

@implementation TPSPreferences

+ (TPSPreferences)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TPSPreferences sharedInstance];
  }

  v3 = sharedInstance_sPreferences;

  return v3;
}

uint64_t __32__TPSPreferences_sharedInstance__block_invoke()
{
  sharedInstance_sPreferences = objc_alloc_init(TPSPreferences);

  return MEMORY[0x2821F96F8]();
}

- (TPSPreferences)init
{
  v7.receiver = self;
  v7.super_class = TPSPreferences;
  v2 = [(TPSPreferences *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v3 bundleIdentifier];
    domain = v2->_domain;
    v2->_domain = bundleIdentifier;
  }

  return v2;
}

- (BOOL)showSubscriptionList
{
  v3 = NSStringFromSelector(sel_showSubscriptionList);
  LOBYTE(self) = [(TPSPreferences *)self BOOLForKey:v3 defaultValue:0];

  return self;
}

- (id)preferencesValueForKey:(id)key
{
  keyCopy = key;
  domain = [(TPSPreferences *)self domain];
  v6 = [(TPSPreferences *)self preferencesValueForKey:keyCopy domain:domain];

  return v6;
}

- (id)preferencesValueForKey:(id)key domain:(id)domain
{
  v4 = CFPreferencesCopyValue(key, domain, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  return v4;
}

- (void)setPreferencesValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  domain = [(TPSPreferences *)self domain];
  [(TPSPreferences *)self setPreferencesValue:valueCopy forKey:keyCopy domain:domain];
}

- (void)setPreferencesValue:(id)value forKey:(id)key domain:(id)domain
{
  v7 = *MEMORY[0x277CBF030];
  v8 = *MEMORY[0x277CBF040];
  applicationID = domain;
  CFPreferencesSetValue(key, value, applicationID, v8, v7);
  CFPreferencesSynchronize(applicationID, v8, v7);
}

- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value
{
  v5 = [(TPSPreferences *)self numberForKey:key defaultValue:0];
  v6 = v5;
  if (v5)
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (id)numberForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(TPSPreferences *)self preferencesValueForKey:key];
  objc_opt_class();
  v8 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

- (int64_t)integerForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(TPSPreferences *)self numberForKey:key defaultValue:0];
  v6 = v5;
  if (v5)
  {
    value = [v5 integerValue];
  }

  return value;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(TPSPreferences *)self setNumber:v8 forKey:keyCopy];
}

- (unint64_t)unsignedIntegerForKey:(id)key defaultValue:(unint64_t)value
{
  v5 = [(TPSPreferences *)self numberForKey:key defaultValue:0];
  v6 = v5;
  if (v5)
  {
    value = [v5 unsignedIntegerValue];
  }

  return value;
}

- (void)setUnsignedInteger:(unint64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithUnsignedInteger:integer];
  [(TPSPreferences *)self setNumber:v8 forKey:keyCopy];
}

- (id)stringForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(TPSPreferences *)self preferencesValueForKey:key];
  objc_opt_class();
  v8 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

@end