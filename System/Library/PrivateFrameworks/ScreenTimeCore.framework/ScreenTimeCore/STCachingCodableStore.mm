@interface STCachingCodableStore
- (STCachingCodableStore)initWithKeyValueStore:(id)a3 cacheSize:(id)a4 valueClass:(Class)a5;
- (id)description;
- (id)purge;
- (id)readValueForKey:(id)a3;
- (void)enumerateKeysAndValuesUsingBlock:(id)a3;
- (void)persistValue:(id)a3 forKey:(id)a4;
- (void)removeValueForKey:(id)a3;
@end

@implementation STCachingCodableStore

- (STCachingCodableStore)initWithKeyValueStore:(id)a3 cacheSize:(id)a4 valueClass:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = STCachingCodableStore;
  v11 = [(STCachingCodableStore *)&v15 init];
  objc_storeStrong(&v11->_backingStore, a3);
  objc_storeStrong(&v11->_valueClass, a5);
  v12 = objc_opt_new();
  keyValueCache = v11->_keyValueCache;
  v11->_keyValueCache = v12;

  if (v10)
  {
    -[NSCache setCountLimit:](v11->_keyValueCache, "setCountLimit:", [v10 unsignedIntegerValue]);
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass([(STCachingCodableStore *)self valueClass]);
  v5 = [(STCachingCodableStore *)self keyValueCache];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { ValueType: %@, CacheSizeLimit: %lu }>", v3, v4, [v5 countLimit]);

  return v6;
}

- (void)persistValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STCachingCodableStore *)self keyValueCache];
  v9 = [v7 copy];
  [v8 setObject:v9 forKey:v6];

  v13 = 0;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v13];

  v11 = v13;
  if (v10)
  {
    v12 = [(STCachingCodableStore *)self backingStore];
    [v12 persistValue:v10 forKey:v6];
  }

  else
  {
    v12 = +[STLog cachingCodableStore];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100112268(v11, v12);
    }
  }
}

- (void)removeValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(STCachingCodableStore *)self keyValueCache];
  [v5 removeObjectForKey:v4];

  v6 = [(STCachingCodableStore *)self backingStore];
  [v6 removeValueForKey:v4];
}

- (id)readValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(STCachingCodableStore *)self keyValueCache];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [(STCachingCodableStore *)self backingStore];
    v8 = [v7 readValueForKey:v4];

    if (v8)
    {
      v14 = 0;
      v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:[(STCachingCodableStore *)self valueClass] fromData:v8 error:&v14];
      v9 = v14;
      if (v6)
      {
        v10 = [(STCachingCodableStore *)self keyValueCache];
        v11 = [v6 copy];
        [v10 setObject:v11 forKey:v4];

        v12 = v8;
        v8 = v9;
      }

      else
      {
        v10 = +[STLog cachingCodableStore];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1001122E0(self, v9, v10);
        }

        v6 = 0;
        v12 = v9;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)enumerateKeysAndValuesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(STCachingCodableStore *)self backingStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011C78;
  v7[3] = &unk_1001A2F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndValuesUsingBlock:v7];
}

- (id)purge
{
  v2 = [(STCachingCodableStore *)self backingStore];
  v3 = [v2 purge];

  return v3;
}

@end