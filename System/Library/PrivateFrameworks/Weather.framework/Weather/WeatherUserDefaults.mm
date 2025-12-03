@interface WeatherUserDefaults
- (BOOL)BOOLForKey:(id)key;
- (BOOL)synchronize;
- (WeatherUserDefaults)initWithUserDefaults:(id)defaults;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)synchronizeWithCompletionHandler:(id)handler;
@end

@implementation WeatherUserDefaults

- (WeatherUserDefaults)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = WeatherUserDefaults;
  v5 = [(WeatherUserDefaults *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(WeatherUserDefaults *)v5 setUserDefaults:defaultsCopy];
    v7 = v6;
  }

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WeatherUserDefaults *)self userDefaults];
  v6 = [userDefaults objectForKey:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  userDefaults = [(WeatherUserDefaults *)self userDefaults];
  [userDefaults setObject:objectCopy forKey:keyCopy];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WeatherUserDefaults *)self userDefaults];
  [userDefaults removeObjectForKey:keyCopy];
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WeatherUserDefaults *)self userDefaults];
  v6 = [userDefaults arrayForKey:keyCopy];

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WeatherUserDefaults *)self userDefaults];
  v6 = [userDefaults stringForKey:keyCopy];

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WeatherUserDefaults *)self userDefaults];
  v6 = [userDefaults dictionaryForKey:keyCopy];

  return v6;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  userDefaults = [(WeatherUserDefaults *)self userDefaults];
  v6 = [userDefaults BOOLForKey:keyCopy];

  return v6;
}

- (BOOL)synchronize
{
  userDefaults = [(WeatherUserDefaults *)self userDefaults];
  synchronize = [userDefaults synchronize];

  return synchronize;
}

- (void)synchronizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(WeatherUserDefaults *)self synchronize];
  handlerCopy[2](handlerCopy, 0);
}

@end