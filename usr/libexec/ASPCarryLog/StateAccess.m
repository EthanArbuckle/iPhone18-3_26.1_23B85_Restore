@interface StateAccess
- (StateAccess)init;
- (id)getAllKeys;
- (id)getValueForKey:(id)a3 expectedType:(int)a4;
- (id)getValueForKey:(id)a3 inDomain:(id)a4 expectedType:(int)a5;
- (void)deleteKey:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4 inDomain:(id)a5;
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

- (void)deleteKey:(id)a3
{
  v4 = a3;
  v5 = [(StateAccess *)self aspCarryDefaults];
  [v5 removeObjectForKey:v4];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(StateAccess *)self aspCarryDefaults];
  [v8 setObject:v7 forKey:v6];
}

- (void)setValue:(id)a3 forKey:(id)a4 inDomain:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [(StateAccess *)self aspCarryDefaults];
  v12 = [v11 persistentDomainForName:v9];

  if (v12)
  {
    v13 = [v12 mutableCopy];
  }

  else
  {
    v13 = objc_alloc_init(NSMutableDictionary);
  }

  v14 = v13;
  [v13 setObject:v16 forKeyedSubscript:v8];
  v15 = [(StateAccess *)self aspCarryDefaults];
  [v15 setPersistentDomain:v14 forName:v9];

  objc_autoreleasePoolPop(v10);
}

- (id)getValueForKey:(id)a3 expectedType:(int)a4
{
  v6 = a3;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v7 = [(StateAccess *)self aspCarryDefaults];
  v8 = [v7 objectForKey:v6];

  if (a4 <= 3)
  {
    v9 = v11[a4];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (id)getValueForKey:(id)a3 inDomain:(id)a4 expectedType:(int)a5
{
  v8 = a4;
  v9 = a3;
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v10 = [(StateAccess *)self aspCarryDefaults];
  v11 = [v10 persistentDomainForName:v8];

  v12 = [v11 objectForKey:v9];

  if (a5 <= 3)
  {
    v13 = v15[a5];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v12 = 0;
    }
  }

  return v12;
}

- (id)getAllKeys
{
  v2 = [(StateAccess *)self aspCarryDefaults];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 allKeys];

  return v4;
}

@end