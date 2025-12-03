@interface STCachingCodableStore
- (STCachingCodableStore)initWithKeyValueStore:(id)store cacheSize:(id)size valueClass:(Class)class;
- (id)description;
- (id)purge;
- (id)readValueForKey:(id)key;
- (void)enumerateKeysAndValuesUsingBlock:(id)block;
- (void)persistValue:(id)value forKey:(id)key;
- (void)removeValueForKey:(id)key;
@end

@implementation STCachingCodableStore

- (STCachingCodableStore)initWithKeyValueStore:(id)store cacheSize:(id)size valueClass:(Class)class
{
  storeCopy = store;
  sizeCopy = size;
  v15.receiver = self;
  v15.super_class = STCachingCodableStore;
  v11 = [(STCachingCodableStore *)&v15 init];
  objc_storeStrong(&v11->_backingStore, store);
  objc_storeStrong(&v11->_valueClass, class);
  v12 = objc_opt_new();
  keyValueCache = v11->_keyValueCache;
  v11->_keyValueCache = v12;

  if (sizeCopy)
  {
    -[NSCache setCountLimit:](v11->_keyValueCache, "setCountLimit:", [sizeCopy unsignedIntegerValue]);
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass([(STCachingCodableStore *)self valueClass]);
  keyValueCache = [(STCachingCodableStore *)self keyValueCache];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { ValueType: %@, CacheSizeLimit: %lu }>", v3, v4, [keyValueCache countLimit]);

  return v6;
}

- (void)persistValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  keyValueCache = [(STCachingCodableStore *)self keyValueCache];
  v9 = [valueCopy copy];
  [keyValueCache setObject:v9 forKey:keyCopy];

  v13 = 0;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:&v13];

  v11 = v13;
  if (v10)
  {
    backingStore = [(STCachingCodableStore *)self backingStore];
    [backingStore persistValue:v10 forKey:keyCopy];
  }

  else
  {
    backingStore = +[STLog cachingCodableStore];
    if (os_log_type_enabled(backingStore, OS_LOG_TYPE_ERROR))
    {
      sub_100112268(v11, backingStore);
    }
  }
}

- (void)removeValueForKey:(id)key
{
  keyCopy = key;
  keyValueCache = [(STCachingCodableStore *)self keyValueCache];
  [keyValueCache removeObjectForKey:keyCopy];

  backingStore = [(STCachingCodableStore *)self backingStore];
  [backingStore removeValueForKey:keyCopy];
}

- (id)readValueForKey:(id)key
{
  keyCopy = key;
  keyValueCache = [(STCachingCodableStore *)self keyValueCache];
  v6 = [keyValueCache objectForKey:keyCopy];

  if (!v6)
  {
    backingStore = [(STCachingCodableStore *)self backingStore];
    v8 = [backingStore readValueForKey:keyCopy];

    if (v8)
    {
      v14 = 0;
      v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:[(STCachingCodableStore *)self valueClass] fromData:v8 error:&v14];
      v9 = v14;
      if (v6)
      {
        keyValueCache2 = [(STCachingCodableStore *)self keyValueCache];
        v11 = [v6 copy];
        [keyValueCache2 setObject:v11 forKey:keyCopy];

        v12 = v8;
        v8 = v9;
      }

      else
      {
        keyValueCache2 = +[STLog cachingCodableStore];
        if (os_log_type_enabled(keyValueCache2, OS_LOG_TYPE_ERROR))
        {
          sub_1001122E0(self, v9, keyValueCache2);
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

- (void)enumerateKeysAndValuesUsingBlock:(id)block
{
  blockCopy = block;
  backingStore = [(STCachingCodableStore *)self backingStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011C78;
  v7[3] = &unk_1001A2F80;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [backingStore enumerateKeysAndValuesUsingBlock:v7];
}

- (id)purge
{
  backingStore = [(STCachingCodableStore *)self backingStore];
  purge = [backingStore purge];

  return purge;
}

@end