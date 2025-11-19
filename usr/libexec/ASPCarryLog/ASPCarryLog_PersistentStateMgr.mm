@interface ASPCarryLog_PersistentStateMgr
- (ASPCarryLog_PersistentStateMgr)initWithIdentifier:(id)a3;
- (id)getValueForKey:(id)a3;
- (void)_tryInitializePlistDir;
- (void)removeKey:(id)a3 doPersist:(BOOL)a4;
- (void)saveValue:(id)a3 forKey:(id)a4 doPersist:(BOOL)a5;
@end

@implementation ASPCarryLog_PersistentStateMgr

- (ASPCarryLog_PersistentStateMgr)initWithIdentifier:(id)a3
{
  v5 = a3;
  v41.receiver = self;
  v41.super_class = ASPCarryLog_PersistentStateMgr;
  v6 = [(ASPCarryLog_PersistentStateMgr *)&v41 init];
  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    objc_storeStrong(&v6->_identifier, a3);
    v8 = [v5 stringByAppendingString:@".plist"];
    v9 = [@"/private/var/db/NANDTelemetryServices" stringByAppendingPathComponent:v8];
    plistPath = v6->_plistPath;
    v6->_plistPath = v9;

    v11 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
    v12 = [NSURL fileURLWithPath:v11 isDirectory:0];
    plistUrl = v6->_plistUrl;
    v6->_plistUrl = v12;

    stateDict = v6->_stateDict;
    v6->_stateDict = 0;

    [(ASPCarryLog_PersistentStateMgr *)v6 _tryInitializePlistDir];
    v15 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
    v16 = [v7 fileExistsAtPath:v15];

    v17 = 0;
    v18 = 0;
    if (v16)
    {
      v19 = [(ASPCarryLog_PersistentStateMgr *)v6 plistUrl];
      v40 = 0;
      v18 = [NSDictionary dictionaryWithContentsOfURL:v19 error:&v40];
      v20 = v40;

      if (v20)
      {
        v21 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100048B20(v21, v6);
        }

        v22 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
        v39 = v20;
        [v7 removeItemAtPath:v22 error:&v39];
        v17 = v39;
      }

      else
      {
        v23 = [NSMutableDictionary dictionaryWithDictionary:v18];
        v17 = 0;
        v22 = v6->_stateDict;
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
        v27 = v5;
        v28 = v26;
        v29 = [v5 UTF8String];
        *buf = 136315138;
        v43 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Persistent state absent for %s. Generated an empty one.", buf, 0xCu);
      }
    }

    v30 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
    v31 = [v7 fileExistsAtPath:v30];

    if ((v31 & 1) == 0)
    {
      v32 = [(ASPCarryLog_PersistentStateMgr *)v6 stateDict];
      v33 = [(ASPCarryLog_PersistentStateMgr *)v6 plistUrl];
      v38 = v17;
      [v32 writeToURL:v33 error:&v38];
      v34 = v38;

      v17 = v34;
      if (!v34)
      {
        v35 = [(ASPCarryLog_PersistentStateMgr *)v6 plistPath];
        disableFileBackUp(v35);

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
      v7 = [@"/private/var/db/NANDTelemetryServices" UTF8String];
      *buf = 136315138;
      v14 = v7;
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

- (id)getValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)saveValue:(id)a3 forKey:(id)a4 doPersist:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
  [v10 setObject:v9 forKeyedSubscript:v8];

  if (v5)
  {
    v11 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
    v12 = [(ASPCarryLog_PersistentStateMgr *)self plistUrl];
    v14 = 0;
    [v11 writeToURL:v12 error:&v14];
    v13 = v14;
  }
}

- (void)removeKey:(id)a3 doPersist:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
    [v9 removeObjectForKey:v6];

    if (v4)
    {
      v10 = [(ASPCarryLog_PersistentStateMgr *)self stateDict];
      v11 = [(ASPCarryLog_PersistentStateMgr *)self plistUrl];
      v13 = 0;
      [v10 writeToURL:v11 error:&v13];
      v12 = v13;
    }
  }
}

@end