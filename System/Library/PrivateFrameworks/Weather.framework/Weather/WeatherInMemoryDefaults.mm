@interface WeatherInMemoryDefaults
- (BOOL)BOOLForKey:(id)key;
- (WeatherInMemoryDefaults)init;
- (id)objectForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)synchronizeWithCompletionHandler:(id)handler;
@end

@implementation WeatherInMemoryDefaults

- (WeatherInMemoryDefaults)init
{
  v8.receiver = self;
  v8.super_class = WeatherInMemoryDefaults;
  v2 = [(WeatherInMemoryDefaults *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(WeatherInMemoryDefaults *)v2 setInMemoryStore:dictionary];

    inMemoryStore = [(WeatherInMemoryDefaults *)v2 inMemoryStore];
    [inMemoryStore setObject:MEMORY[0x277CBEBF8] forKey:@"cities"];

    inMemoryStore2 = [(WeatherInMemoryDefaults *)v2 inMemoryStore];
    [inMemoryStore2 setObject:@"2.0" forKey:@"PrefsVersion"];

    v6 = v2;
  }

  return v2;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  inMemoryStore = [(WeatherInMemoryDefaults *)self inMemoryStore];
  v6 = [inMemoryStore objectForKey:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  inMemoryStore = [(WeatherInMemoryDefaults *)self inMemoryStore];
  [inMemoryStore setObject:objectCopy forKey:keyCopy];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  inMemoryStore = [(WeatherInMemoryDefaults *)self inMemoryStore];
  [inMemoryStore removeObjectForKey:keyCopy];
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(WeatherInMemoryDefaults *)self objectForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)synchronizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(WeatherInMemoryDefaults *)self synchronize];
  handlerCopy[2](handlerCopy, 0);
}

@end