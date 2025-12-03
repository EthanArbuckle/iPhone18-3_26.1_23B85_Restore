@interface VMPreferences
+ (id)sharedInstance;
- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)transcriptionEnabled;
- (VMPreferences)init;
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

@implementation VMPreferences

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[VMPreferences sharedInstance];
  }

  v3 = sharedInstance_sPreferences;

  return v3;
}

- (BOOL)transcriptionEnabled
{
  v3 = NSStringFromSelector(sel_transcriptionEnabled);
  LOBYTE(self) = [(VMPreferences *)self BOOLForKey:v3 defaultValue:1];

  return self;
}

uint64_t __31__VMPreferences_sharedInstance__block_invoke()
{
  sharedInstance_sPreferences = objc_alloc_init(VMPreferences);

  return MEMORY[0x2821F96F8]();
}

- (VMPreferences)init
{
  v9.receiver = self;
  v9.super_class = VMPreferences;
  v2 = [(VMPreferences *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = [v3 stringWithFormat:@"%@.preferences", bundleIdentifier];
    domain = v2->_domain;
    v2->_domain = v6;
  }

  return v2;
}

- (id)preferencesValueForKey:(id)key
{
  keyCopy = key;
  domain = [(VMPreferences *)self domain];
  v6 = [(VMPreferences *)self preferencesValueForKey:keyCopy domain:domain];

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
  domain = [(VMPreferences *)self domain];
  [(VMPreferences *)self setPreferencesValue:valueCopy forKey:keyCopy domain:domain];
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
  v5 = [(VMPreferences *)self numberForKey:key defaultValue:0];
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
  v7 = [(VMPreferences *)self preferencesValueForKey:key];
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
  v5 = [(VMPreferences *)self numberForKey:key defaultValue:0];
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
  [(VMPreferences *)self setNumber:v8 forKey:keyCopy];
}

- (unint64_t)unsignedIntegerForKey:(id)key defaultValue:(unint64_t)value
{
  v5 = [(VMPreferences *)self numberForKey:key defaultValue:0];
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
  [(VMPreferences *)self setNumber:v8 forKey:keyCopy];
}

- (id)stringForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(VMPreferences *)self preferencesValueForKey:key];
  objc_opt_class();
  v8 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

@end