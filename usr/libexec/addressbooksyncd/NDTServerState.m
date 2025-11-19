@interface NDTServerState
- (BOOL)getBoolValueForKey:(id)a3 default:(BOOL)a4;
- (NDTServerState)initWithPath:(id)a3;
- (double)getDoubleValueForKey:(id)a3 default:(double)a4;
- (id)getStringValueForKey:(id)a3 default:(id)a4;
- (int64_t)getIntegerValueForKey:(id)a3 default:(int64_t)a4;
- (void)_migrateFrom:(id)a3 to:(id)a4;
- (void)deleteKey:(id)a3;
- (void)setBoolValue:(BOOL)a3 forKey:(id)a4;
- (void)setDoubleValue:(double)a3 forKey:(id)a4;
- (void)setIntegerValue:(int64_t)a3 forKey:(id)a4;
- (void)setStringValue:(id)a3 forKey:(id)a4;
@end

@implementation NDTServerState

- (NDTServerState)initWithPath:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NDTServerState;
  v5 = [(NDTServerState *)&v15 init];
  if (v5)
  {
    v6 = v4;
    v7 = v6;
    if ([v6 hasSuffix:@".plist"])
    {
      v8 = [v6 substringWithRange:{0, objc_msgSend(v6, "length") - 6}];

      v7 = [v8 stringByAppendingString:@".sqlitedb"];
    }

    objc_storeStrong(&v5->_path, v7);
    v9 = [[NDTSQFile alloc] initWithPath:v5->_path];
    file = v5->_file;
    v5->_file = v9;

    v11 = [[NDTSQKeyValueStore alloc] initWithName:@"ServerState"];
    store = v5->_store;
    v5->_store = v11;

    [(NDTSQFile *)v5->_file addSchema:v5->_store];
    v13 = +[NSFileManager defaultManager];
    if ([v13 fileExistsAtPath:v6])
    {
      [(NDTServerState *)v5 _migrateFrom:v6 to:v7];
      [v13 removeItemAtPath:v6 error:0];
    }

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)_migrateFrom:(id)a3 to:(id)a4
{
  v5 = [NSMutableDictionary dictionaryWithContentsOfFile:a3, a4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NDTSQKeyValueStore *)self->_store setString:v11 forKey:v10];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          store = self->_store;
          [v11 doubleValue];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          store = self->_store;
          [v11 timeIntervalSinceReferenceDate];
        }

        [(NDTSQKeyValueStore *)store setDouble:v10 forKey:?];
LABEL_13:
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)setStringValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NDTSQKeyValueStore *)self->_store setString:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getStringValueForKey:(id)a3 default:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NDTSQKeyValueStore *)self->_store getStringForKey:v7 default:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)setIntegerValue:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(NDTSQKeyValueStore *)self->_store setInteger:a3 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)getIntegerValueForKey:(id)a3 default:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NDTSQKeyValueStore *)self->_store getIntegerForKey:v6 default:a4];

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (void)setDoubleValue:(double)a3 forKey:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(NDTSQKeyValueStore *)self->_store setDouble:v6 forKey:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)getDoubleValueForKey:(id)a3 default:(double)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NDTSQKeyValueStore *)self->_store getDoubleForKey:v6 default:a4];
  v8 = v7;

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (void)setBoolValue:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(NDTSQKeyValueStore *)self->_store setInteger:v4 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)getBoolValueForKey:(id)a3 default:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NDTSQKeyValueStore *)self->_store getIntegerForKey:v6 default:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v7 != 0;
}

- (void)deleteKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NDTSQKeyValueStore *)self->_store deleteValueForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end