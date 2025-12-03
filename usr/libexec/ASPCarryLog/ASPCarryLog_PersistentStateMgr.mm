@interface ASPCarryLog_PersistentStateMgr
- (ASPCarryLog_PersistentStateMgr)initWithIdentifier:(id)identifier;
- (id)getValueForKey:(id)key;
- (void)_tryInitializePlistDir;
- (void)removeKey:(id)key doPersist:(BOOL)persist;
- (void)saveValue:(id)value forKey:(id)key doPersist:(BOOL)persist;
@end

@implementation ASPCarryLog_PersistentStateMgr

- (ASPCarryLog_PersistentStateMgr)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v41.receiver = self;
  v41.super_class = ASPCarryLog_PersistentStateMgr;
  v6 = [(ASPCarryLog_PersistentStateMgr *)&v41 init];
  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = [identifierCopy stringByAppendingString:@".plist"];
    v9 = [@"/private/var/db/NANDTelemetryServices" stringByAppendingPathComponent:v8];
    plistPath = v6->_plistPath;
    v6->_plistPath = v9;

    plistPath = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
    v12 = [NSURL fileURLWithPath:plistPath isDirectory:0];
    plistUrl = v6->_plistUrl;
    v6->_plistUrl = v12;

    stateDict = v6->_stateDict;
    v6->_stateDict = 0;

    [(ASPCarryLog_PersistentStateMgr *)v6 _tryInitializePlistDir];
    plistPath2 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
    v16 = [v7 fileExistsAtPath:plistPath2];

    v17 = 0;
    v18 = 0;
    if (v16)
    {
      plistUrl = [(ASPCarryLog_PersistentStateMgr *)v6 plistUrl];
      v40 = 0;
      v18 = [NSDictionary dictionaryWithContentsOfURL:plistUrl error:&v40];
      v20 = v40;

      if (v20)
      {
        v21 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100048B20(v21, v6);
        }

        plistPath3 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
        v39 = v20;
        [v7 removeItemAtPath:plistPath3 error:&v39];
        v17 = v39;
      }

      else
      {
        v23 = [NSMutableDictionary dictionaryWithDictionary:v18];
        v17 = 0;
        plistPath3 = v6->_stateDict;
        v6->_stateDict = v23;
      }
    }

    if (!v6->_stateDict)
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      v25 = v6->_stateDict;
      v6->_stateDict = v24;

      v26 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v27 = identifierCopy;
        v28 = v26;
        uTF8String = [identifierCopy UTF8String];
        *buf = 136315138;
        v43 = uTF8String;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Persistent state absent for %s. Generated an empty one.", buf, 0xCu);
      }
    }

    plistPath4 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
    v31 = [v7 fileExistsAtPath:plistPath4];

    if ((v31 & 1) == 0)
    {
      stateDict = [(ASPCarryLog_PersistentStateMgr *)v6 stateDict];
      plistUrl2 = [(ASPCarryLog_PersistentStateMgr *)v6 plistUrl];
      v38 = v17;
      [stateDict writeToURL:plistUrl2 error:&v38];
      v34 = v38;

      v17 = v34;
      if (!v34)
      {
        plistPath5 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
        disableFileBackUp(plistPath5);

        v17 = 0;
      }
    }

    v36 = v6;
  }

  return v6;
}

- (void)_tryInitializePlistDir
{
  v12 = 0;
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:@"/private/var/db/NANDTelemetryServices" isDirectory:&v12])
  {
    if (v12)
    {
      goto LABEL_13;
    }

    v3 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100048BD0(v3);
    }

    v11 = 0;
    [v2 removeItemAtPath:@"/private/var/db/NANDTelemetryServices" error:&v11];
    v4 = v11;
  }

  else
  {
    v5 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      uTF8String = [@"/private/var/db/NANDTelemetryServices" UTF8String];
      *buf = 136315138;
      v14 = uTF8String;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Plist directory %s does not exist. Creating it", buf, 0xCu);
    }

    v4 = 0;
  }

  v10 = v4;
  [v2 createDirectoryAtPath:@"/private/var/db/NANDTelemetryServices" withIntermediateDirectories:0 attributes:0 error:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100048C6C(v9, v8);
    }
  }

LABEL_13:
}

- (id)getValueForKey:(id)key
{
  keyCopy = key;
  stateDict = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
  v6 = [stateDict objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)saveValue:(id)value forKey:(id)key doPersist:(BOOL)persist
{
  persistCopy = persist;
  keyCopy = key;
  valueCopy = value;
  stateDict = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
  [stateDict setObject:valueCopy forKeyedSubscript:keyCopy];

  if (persistCopy)
  {
    stateDict2 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
    plistUrl = [(ASPCarryLog_PersistentStateMgr *)self plistUrl];
    v14 = 0;
    [stateDict2 writeToURL:plistUrl error:&v14];
    v13 = v14;
  }
}

- (void)removeKey:(id)key doPersist:(BOOL)persist
{
  persistCopy = persist;
  keyCopy = key;
  stateDict = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
  v8 = [stateDict objectForKeyedSubscript:keyCopy];

  if (v8)
  {
    stateDict2 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
    [stateDict2 removeObjectForKey:keyCopy];

    if (persistCopy)
    {
      stateDict3 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
      plistUrl = [(ASPCarryLog_PersistentStateMgr *)self plistUrl];
      v13 = 0;
      [stateDict3 writeToURL:plistUrl error:&v13];
      v12 = v13;
    }
  }
}

@end