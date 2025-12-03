@interface WFUserDefaultsPersistence
- (BOOL)BOOLForKey:(id)key;
- (BOOL)synchronize;
- (WFUserDefaultsPersistence)init;
- (WFUserDefaultsPersistence)initWithUserDefaults:(id)defaults;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation WFUserDefaultsPersistence

- (WFUserDefaultsPersistence)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v8.receiver = self;
  v8.super_class = WFUserDefaultsPersistence;
  v5 = [(WFUserDefaultsPersistence *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WFUserDefaultsPersistence *)v5 setUserDefaults:defaultsCopy];
  }

  return v6;
}

- (WFUserDefaultsPersistence)init
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"group.com.apple.weather"];
  v4 = [(WFUserDefaultsPersistence *)self initWithUserDefaults:v3];

  return v4;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [userDefaults arrayForKey:keyCopy];

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [userDefaults dictionaryForKey:keyCopy];

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [userDefaults stringForKey:keyCopy];

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [userDefaults objectForKey:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  userDefaults = [(WFUserDefaultsPersistence *)self userDefaults];
  [userDefaults setObject:objectCopy forKey:keyCopy];
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [userDefaults BOOLForKey:keyCopy];

  return v6;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  userDefaults = [(WFUserDefaultsPersistence *)self userDefaults];
  [userDefaults setBool:boolCopy forKey:keyCopy];
}

- (BOOL)synchronize
{
  userDefaults = [(WFUserDefaultsPersistence *)self userDefaults];
  synchronize = [userDefaults synchronize];

  return synchronize;
}

@end