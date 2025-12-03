@interface PKServiceDefaults
- (BOOL)synchronize;
- (PKServiceDefaults)initWithPersonality:(id)personality;
- (PKServicePersonality)personality;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation PKServiceDefaults

- (PKServiceDefaults)initWithPersonality:(id)personality
{
  personalityCopy = personality;
  v8.receiver = self;
  v8.super_class = PKServiceDefaults;
  v5 = [(PKServiceDefaults *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKServiceDefaults *)v5 setPersonality:personalityCopy];
  }

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  personality = [(PKServiceDefaults *)self personality];
  identifier = [personality identifier];

  v7 = CFPreferencesCopyAppValue(keyCopy, identifier);

  return v7;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  value = object;
  personality = [(PKServiceDefaults *)self personality];
  identifier = [personality identifier];

  CFPreferencesSetAppValue(keyCopy, value, identifier);
}

- (BOOL)synchronize
{
  personality = [(PKServiceDefaults *)self personality];
  identifier = [personality identifier];

  return CFPreferencesAppSynchronize(identifier) != 0;
}

- (PKServicePersonality)personality
{
  WeakRetained = objc_loadWeakRetained(&self->_personality);

  return WeakRetained;
}

@end