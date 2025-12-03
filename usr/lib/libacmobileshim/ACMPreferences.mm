@interface ACMPreferences
- (id)multiplePreferencesValuesForKeys:(id)keys;
- (id)multiplePreferencesValuesForKeys:(id)keys withOptions:(int64_t)options;
- (id)preferencesValueForKey:(id)key;
- (id)preferencesValueForKey:(id)key withOptions:(int64_t)options;
- (void)dealloc;
- (void)setMultiplePreferencesValues:(id)values;
- (void)setMultiplePreferencesValues:(id)values withOptions:(int64_t)options;
- (void)setPreferencesValue:(id)value forKey:(id)key;
- (void)setPreferencesValue:(id)value forKey:(id)key withOptions:(int64_t)options;
@end

@implementation ACMPreferences

- (void)dealloc
{
  [(ACMPreferences *)self setPreferencesStore:0];
  v3.receiver = self;
  v3.super_class = ACMPreferences;
  [(ACMPreferences *)&v3 dealloc];
}

- (id)preferencesValueForKey:(id)key withOptions:(int64_t)options
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore preferencesValueForKey:key withOptions:options];
}

- (void)setPreferencesValue:(id)value forKey:(id)key withOptions:(int64_t)options
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore setPreferencesValue:value forKey:key withOptions:options];
}

- (id)multiplePreferencesValuesForKeys:(id)keys withOptions:(int64_t)options
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore multiplePreferencesValuesForKeys:keys withOptions:options];
}

- (void)setMultiplePreferencesValues:(id)values withOptions:(int64_t)options
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore setMultiplePreferencesValues:values withOptions:options];
}

- (id)preferencesValueForKey:(id)key
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore preferencesValueForKey:key];
}

- (void)setPreferencesValue:(id)value forKey:(id)key
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore setPreferencesValue:value forKey:key];
}

- (id)multiplePreferencesValuesForKeys:(id)keys
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore multiplePreferencesValuesForKeys:keys];
}

- (void)setMultiplePreferencesValues:(id)values
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore setMultiplePreferencesValues:values];
}

@end