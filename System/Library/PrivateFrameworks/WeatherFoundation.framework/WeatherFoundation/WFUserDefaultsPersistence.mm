@interface WFUserDefaultsPersistence
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)synchronize;
- (WFUserDefaultsPersistence)init;
- (WFUserDefaultsPersistence)initWithUserDefaults:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation WFUserDefaultsPersistence

- (WFUserDefaultsPersistence)initWithUserDefaults:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFUserDefaultsPersistence;
  v5 = [(WFUserDefaultsPersistence *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WFUserDefaultsPersistence *)v5 setUserDefaults:v4];
  }

  return v6;
}

- (WFUserDefaultsPersistence)init
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"group.com.apple.weather"];
  v4 = [(WFUserDefaultsPersistence *)self initWithUserDefaults:v3];

  return v4;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [v5 arrayForKey:v4];

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [v5 dictionaryForKey:v4];

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [v5 stringForKey:v4];

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFUserDefaultsPersistence *)self userDefaults];
  [v8 setObject:v7 forKey:v6];
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFUserDefaultsPersistence *)self userDefaults];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(WFUserDefaultsPersistence *)self userDefaults];
  [v7 setBool:v4 forKey:v6];
}

- (BOOL)synchronize
{
  v2 = [(WFUserDefaultsPersistence *)self userDefaults];
  v3 = [v2 synchronize];

  return v3;
}

@end