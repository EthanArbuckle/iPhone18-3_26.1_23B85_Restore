@interface RMManagementSettings
+ (RMManagementSettings)sharedSettings;
+ (void)reset;
- (RMManagementSettings)initWithURL:(id)a3;
- (id)valueForKey:(id)a3;
- (void)_readCachedSettings;
- (void)_writeCachedSettings;
- (void)removeValueForKey:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation RMManagementSettings

+ (RMManagementSettings)sharedSettings
{
  if (qword_1000E6920 != -1)
  {
    sub_10004AA70();
  }

  v3 = qword_1000E6918;

  return v3;
}

+ (void)reset
{
  v5 = [a1 sharedSettings];
  v2 = [RMLocations dataVaultDirectoryURLCreateIfNeeded:1];
  v3 = [v2 URLByAppendingPathComponent:@"ManagementSettings.plist"];
  [v5 setSettingsURL:v3];

  [v5 _readCachedSettings];
  v4 = [v5 cachedSettings];
  [v4 removeAllObjects];

  [v5 _writeCachedSettings];
}

- (RMManagementSettings)initWithURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RMManagementSettings;
  v6 = [(RMManagementSettings *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settingsURL, a3);
    v8 = objc_opt_new();
    settingsLock = v7->_settingsLock;
    v7->_settingsLock = v8;
  }

  return v7;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = self->_settingsLock;
  objc_sync_enter(v5);
  [(RMManagementSettings *)self _readCachedSettings];
  v6 = [(RMManagementSettings *)self cachedSettings];
  v7 = [v6 valueForKey:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)removeValueForKey:(id)a3
{
  v6 = a3;
  v4 = self->_settingsLock;
  objc_sync_enter(v4);
  [(RMManagementSettings *)self _readCachedSettings];
  v5 = [(RMManagementSettings *)self cachedSettings];
  [v5 setObject:0 forKeyedSubscript:v6];

  [(RMManagementSettings *)self _writeCachedSettings];
  objc_sync_exit(v4);
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_settingsLock;
  objc_sync_enter(v7);
  [(RMManagementSettings *)self _readCachedSettings];
  v8 = [(RMManagementSettings *)self cachedSettings];
  [v8 setObject:v9 forKeyedSubscript:v6];

  [(RMManagementSettings *)self _writeCachedSettings];
  objc_sync_exit(v7);
}

- (void)_readCachedSettings
{
  v3 = [(RMManagementSettings *)self cachedSettings];

  if (!v3)
  {
    v4 = [(RMManagementSettings *)self settingsURL];
    v5 = [NSInputStream inputStreamWithURL:v4];

    [v5 open];
    v17 = 0;
    v6 = [NSPropertyListSerialization propertyListWithStream:v5 options:2 format:0 error:&v17];
    v7 = v17;
    [v5 close];
    if (v6)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v9 = +[RMLog managementSettings];
      v10 = v9;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10004AAEC(self);
        }

        [(RMManagementSettings *)self setCachedSettings:v6];
        goto LABEL_20;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004AA84();
      }

      v12 = objc_opt_new();
      [(RMManagementSettings *)self setCachedSettings:v12];
LABEL_19:

LABEL_20:
      return;
    }

    v11 = [v7 userInfo];
    v12 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v12)
    {
      v13 = [v12 domain];
      if ([v13 isEqualToString:NSPOSIXErrorDomain])
      {
        v14 = [v12 code];

        if (v14 == 2)
        {
          v15 = +[RMLog managementSettings];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_10004AB70(v15);
          }

LABEL_18:

          v16 = objc_opt_new();
          [(RMManagementSettings *)self setCachedSettings:v16];

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    v15 = +[RMLog managementSettings];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10004ABB4();
    }

    goto LABEL_18;
  }
}

- (void)_writeCachedSettings
{
  v3 = [(RMManagementSettings *)self settingsURL];
  v4 = [NSOutputStream outputStreamWithURL:v3 append:0];

  [v4 open];
  v5 = [(RMManagementSettings *)self cachedSettings];
  v10 = 0;
  v6 = [NSPropertyListSerialization writePropertyList:v5 toStream:v4 format:100 options:0 error:&v10];
  v7 = v10;

  [v4 close];
  v8 = +[RMLog managementSettings];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10004AC1C(self);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10004ACA0();
  }
}

@end