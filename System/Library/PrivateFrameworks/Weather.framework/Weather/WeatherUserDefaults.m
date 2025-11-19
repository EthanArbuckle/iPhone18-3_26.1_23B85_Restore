@interface WeatherUserDefaults
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)synchronize;
- (WeatherUserDefaults)initWithUserDefaults:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)synchronizeWithCompletionHandler:(id)a3;
@end

@implementation WeatherUserDefaults

- (WeatherUserDefaults)initWithUserDefaults:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WeatherUserDefaults;
  v5 = [(WeatherUserDefaults *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(WeatherUserDefaults *)v5 setUserDefaults:v4];
    v7 = v6;
  }

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherUserDefaults *)self userDefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WeatherUserDefaults *)self userDefaults];
  [v8 setObject:v7 forKey:v6];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherUserDefaults *)self userDefaults];
  [v5 removeObjectForKey:v4];
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherUserDefaults *)self userDefaults];
  v6 = [v5 arrayForKey:v4];

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherUserDefaults *)self userDefaults];
  v6 = [v5 stringForKey:v4];

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherUserDefaults *)self userDefaults];
  v6 = [v5 dictionaryForKey:v4];

  return v6;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherUserDefaults *)self userDefaults];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

- (BOOL)synchronize
{
  v2 = [(WeatherUserDefaults *)self userDefaults];
  v3 = [v2 synchronize];

  return v3;
}

- (void)synchronizeWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(WeatherUserDefaults *)self synchronize];
  v4[2](v4, 0);
}

@end