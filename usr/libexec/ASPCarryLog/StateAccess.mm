@interface StateAccess
- (StateAccess)init;
- (id)getAllKeys;
- (id)getValueForKey:(id)key expectedType:(int)type;
- (id)getValueForKey:(id)key inDomain:(id)domain expectedType:(int)type;
- (void)deleteKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key inDomain:(id)domain;
@end

@implementation StateAccess

- (StateAccess)init
{
  v7.receiver = self;
  v7.super_class = StateAccess;
  v2 = [(StateAccess *)&v7 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    aspCarryDefaults = v2->_aspCarryDefaults;
    v2->_aspCarryDefaults = v3;

    v5 = v2;
  }

  return v2;
}

- (void)deleteKey:(id)key
{
  keyCopy = key;
  aspCarryDefaults = [(StateAccess *)self aspCarryDefaults];
  [aspCarryDefaults removeObjectForKey:keyCopy];
}

- (void)setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  aspCarryDefaults = [(StateAccess *)self aspCarryDefaults];
  [aspCarryDefaults setObject:valueCopy forKey:keyCopy];
}

- (void)setValue:(id)value forKey:(id)key inDomain:(id)domain
{
  valueCopy = value;
  keyCopy = key;
  domainCopy = domain;
  v10 = objc_autoreleasePoolPush();
  aspCarryDefaults = [(StateAccess *)self aspCarryDefaults];
  v12 = [aspCarryDefaults persistentDomainForName:domainCopy];

  if (v12)
  {
    v13 = [v12 mutableCopy];
  }

  else
  {
    v13 = objc_alloc_init(NSMutableDictionary);
  }

  v14 = v13;
  [v13 setObject:valueCopy forKeyedSubscript:keyCopy];
  aspCarryDefaults2 = [(StateAccess *)self aspCarryDefaults];
  [aspCarryDefaults2 setPersistentDomain:v14 forName:domainCopy];

  objc_autoreleasePoolPop(v10);
}

- (id)getValueForKey:(id)key expectedType:(int)type
{
  keyCopy = key;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  aspCarryDefaults = [(StateAccess *)self aspCarryDefaults];
  v8 = [aspCarryDefaults objectForKey:keyCopy];

  if (type <= 3)
  {
    v9 = v11[type];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (id)getValueForKey:(id)key inDomain:(id)domain expectedType:(int)type
{
  domainCopy = domain;
  keyCopy = key;
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  aspCarryDefaults = [(StateAccess *)self aspCarryDefaults];
  v11 = [aspCarryDefaults persistentDomainForName:domainCopy];

  v12 = [v11 objectForKey:keyCopy];

  if (type <= 3)
  {
    v13 = v15[type];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v12 = 0;
    }
  }

  return v12;
}

- (id)getAllKeys
{
  aspCarryDefaults = [(StateAccess *)self aspCarryDefaults];
  dictionaryRepresentation = [aspCarryDefaults dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  return allKeys;
}

@end