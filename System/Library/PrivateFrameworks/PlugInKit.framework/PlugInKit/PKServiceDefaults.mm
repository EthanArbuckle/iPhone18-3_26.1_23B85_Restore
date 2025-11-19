@interface PKServiceDefaults
- (BOOL)synchronize;
- (PKServiceDefaults)initWithPersonality:(id)a3;
- (PKServicePersonality)personality;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation PKServiceDefaults

- (PKServiceDefaults)initWithPersonality:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKServiceDefaults;
  v5 = [(PKServiceDefaults *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKServiceDefaults *)v5 setPersonality:v4];
  }

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(PKServiceDefaults *)self personality];
  v6 = [v5 identifier];

  v7 = CFPreferencesCopyAppValue(v4, v6);

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  value = a3;
  v7 = [(PKServiceDefaults *)self personality];
  v8 = [v7 identifier];

  CFPreferencesSetAppValue(v6, value, v8);
}

- (BOOL)synchronize
{
  v2 = [(PKServiceDefaults *)self personality];
  v3 = [v2 identifier];

  return CFPreferencesAppSynchronize(v3) != 0;
}

- (PKServicePersonality)personality
{
  WeakRetained = objc_loadWeakRetained(&self->_personality);

  return WeakRetained;
}

@end