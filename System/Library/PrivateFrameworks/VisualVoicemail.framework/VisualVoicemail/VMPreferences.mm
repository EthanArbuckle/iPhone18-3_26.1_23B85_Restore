@interface VMPreferences
+ (id)sharedInstance;
- (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)transcriptionEnabled;
- (VMPreferences)init;
- (id)numberForKey:(id)a3 defaultValue:(id)a4;
- (id)preferencesValueForKey:(id)a3;
- (id)preferencesValueForKey:(id)a3 domain:(id)a4;
- (id)stringForKey:(id)a3 defaultValue:(id)a4;
- (int64_t)integerForKey:(id)a3 defaultValue:(int64_t)a4;
- (unint64_t)unsignedIntegerForKey:(id)a3 defaultValue:(unint64_t)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setPreferencesValue:(id)a3 forKey:(id)a4;
- (void)setPreferencesValue:(id)a3 forKey:(id)a4 domain:(id)a5;
- (void)setUnsignedInteger:(unint64_t)a3 forKey:(id)a4;
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
    v5 = [v4 bundleIdentifier];
    v6 = [v3 stringWithFormat:@"%@.preferences", v5];
    domain = v2->_domain;
    v2->_domain = v6;
  }

  return v2;
}

- (id)preferencesValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(VMPreferences *)self domain];
  v6 = [(VMPreferences *)self preferencesValueForKey:v4 domain:v5];

  return v6;
}

- (id)preferencesValueForKey:(id)a3 domain:(id)a4
{
  v4 = CFPreferencesCopyValue(a3, a4, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  return v4;
}

- (void)setPreferencesValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VMPreferences *)self domain];
  [(VMPreferences *)self setPreferencesValue:v7 forKey:v6 domain:v8];
}

- (void)setPreferencesValue:(id)a3 forKey:(id)a4 domain:(id)a5
{
  v7 = *MEMORY[0x277CBF030];
  v8 = *MEMORY[0x277CBF040];
  applicationID = a5;
  CFPreferencesSetValue(a4, a3, applicationID, v8, v7);
  CFPreferencesSynchronize(applicationID, v8, v7);
}

- (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = [(VMPreferences *)self numberForKey:a3 defaultValue:0];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)numberForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(VMPreferences *)self preferencesValueForKey:a3];
  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

- (int64_t)integerForKey:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [(VMPreferences *)self numberForKey:a3 defaultValue:0];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(VMPreferences *)self setNumber:v8 forKey:v7];
}

- (unint64_t)unsignedIntegerForKey:(id)a3 defaultValue:(unint64_t)a4
{
  v5 = [(VMPreferences *)self numberForKey:a3 defaultValue:0];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 unsignedIntegerValue];
  }

  return a4;
}

- (void)setUnsignedInteger:(unint64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:a3];
  [(VMPreferences *)self setNumber:v8 forKey:v7];
}

- (id)stringForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(VMPreferences *)self preferencesValueForKey:a3];
  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

@end