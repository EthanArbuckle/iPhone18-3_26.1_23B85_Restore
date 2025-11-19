@interface ACMPreferences
- (id)multiplePreferencesValuesForKeys:(id)a3;
- (id)multiplePreferencesValuesForKeys:(id)a3 withOptions:(int64_t)a4;
- (id)preferencesValueForKey:(id)a3;
- (id)preferencesValueForKey:(id)a3 withOptions:(int64_t)a4;
- (void)dealloc;
- (void)setMultiplePreferencesValues:(id)a3;
- (void)setMultiplePreferencesValues:(id)a3 withOptions:(int64_t)a4;
- (void)setPreferencesValue:(id)a3 forKey:(id)a4;
- (void)setPreferencesValue:(id)a3 forKey:(id)a4 withOptions:(int64_t)a5;
@end

@implementation ACMPreferences

- (void)dealloc
{
  [(ACMPreferences *)self setPreferencesStore:0];
  v3.receiver = self;
  v3.super_class = ACMPreferences;
  [(ACMPreferences *)&v3 dealloc];
}

- (id)preferencesValueForKey:(id)a3 withOptions:(int64_t)a4
{
  v6 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v6 preferencesValueForKey:a3 withOptions:a4];
}

- (void)setPreferencesValue:(id)a3 forKey:(id)a4 withOptions:(int64_t)a5
{
  v8 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v8 setPreferencesValue:a3 forKey:a4 withOptions:a5];
}

- (id)multiplePreferencesValuesForKeys:(id)a3 withOptions:(int64_t)a4
{
  v6 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v6 multiplePreferencesValuesForKeys:a3 withOptions:a4];
}

- (void)setMultiplePreferencesValues:(id)a3 withOptions:(int64_t)a4
{
  v6 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v6 setMultiplePreferencesValues:a3 withOptions:a4];
}

- (id)preferencesValueForKey:(id)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v4 preferencesValueForKey:a3];
}

- (void)setPreferencesValue:(id)a3 forKey:(id)a4
{
  v6 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v6 setPreferencesValue:a3 forKey:a4];
}

- (id)multiplePreferencesValuesForKeys:(id)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v4 multiplePreferencesValuesForKeys:a3];
}

- (void)setMultiplePreferencesValues:(id)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v4 setMultiplePreferencesValues:a3];
}

@end