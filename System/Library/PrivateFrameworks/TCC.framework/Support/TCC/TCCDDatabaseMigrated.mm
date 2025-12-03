@interface TCCDDatabaseMigrated
+ (char)getMigratedDBDir;
+ (id)sharedInstance;
+ (id)stringFromBacktrace;
- (TCCDDatabaseMigrated)init;
- (int)evalDB:(const char *)b locked:(BOOL)locked bind:(id)bind step:(id)step;
- (int)setupDB;
- (void)handleDBErrorAndForceCrash:(BOOL)crash;
@end

@implementation TCCDDatabaseMigrated

+ (char)getMigratedDBDir
{
  v2 = +[TCCDPlatform currentPlatform];
  server = [v2 server];
  stateDirectory = [server stateDirectory];

  if (!stateDirectory)
  {
    sub_1000604F8();
  }

  v5 = +[TCCDDatabaseMigrated getMigratedDBRelativeDirPath];
  v6 = [stateDirectory stringByAppendingPathComponent:v5];

  v7 = strdup([v6 UTF8String]);
  if (!v7)
  {
    sub_1000604DC();
  }

  v8 = v7;

  return v8;
}

+ (id)stringFromBacktrace
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v2 = backtrace(v8, 1024);
  v3 = backtrace_symbols(v8, v2);
  v4 = objc_alloc_init(NSMutableString);
  if (v3)
  {
    if (v2 >= 1)
    {
      for (i = 0; i != v2; [v4 appendFormat:v6, v3[i++]])
      {
        if (!v3[i])
        {
          break;
        }

        v6 = i >= (v2 - 1) ? @"%s" : @"%s\n";
      }
    }

    free(v3);
  }

  return v4;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000564D0;
  block[3] = &unk_1000A6468;
  block[4] = self;
  if (qword_1000C12C8 != -1)
  {
    dispatch_once(&qword_1000C12C8, block);
  }

  v2 = qword_1000C12C0;

  return v2;
}

- (TCCDDatabaseMigrated)init
{
  v6.receiver = self;
  v6.super_class = TCCDDatabaseMigrated;
  v2 = [(TCCDDatabaseMigrated *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.tcc.migrated_db_queue", 0);
    migratedDBQueue = v2->_migratedDBQueue;
    v2->_migratedDBQueue = v3;

    if (!v3)
    {
      sub_100056D78();
    }

    v2->_migratedDBHandle = 0;
    v2->_extendedErrorCode = 0;
    *&v2->_isSetup = 0;
  }

  return v2;
}

- (int)setupDB
{
  if ([(TCCDDatabaseMigrated *)self migratedDBUnavailable])
  {
    v3 = +[TCCDPlatform currentPlatform];
    server = [v3 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100056EBC(logHandle);
    }

LABEL_13:

    return 1;
  }

  filename = 0;
  if (asprintf(&filename, "%s/%s", +[TCCDDatabaseMigrated getMigratedDBDir], "TCC.db") == -1)
  {
    sub_10006072C();
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [NSString stringWithUTF8String:filename];
  v8 = [v6 fileExistsAtPath:v7];

  if ((v8 & 1) == 0)
  {
    [(TCCDDatabaseMigrated *)self setMigratedDBUnavailable:1];
    v14 = +[TCCDPlatform currentPlatform];
    server2 = [v14 server];
    logHandle = [server2 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100056D94(&filename, logHandle);
    }

    goto LABEL_13;
  }

  ppDb = [(TCCDDatabaseMigrated *)self migratedDBHandle];
  if (!sqlite3_open_v2(filename, &ppDb, 4227074, 0))
  {
    self->_migratedDBHandle = ppDb;
    v17 = +[TCCDPlatform currentPlatform];
    server3 = [v17 server];
    logHandle2 = [server3 logHandle];

    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = filename;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "opened migrated database: %{public}s", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_18;
  }

  v9 = +[TCCDPlatform currentPlatform];
  server4 = [v9 server];
  logHandle3 = [server4 logHandle];

  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
  {
    sub_100056E10(self, logHandle3);
  }

  self->_migratedDBHandle = ppDb;
  if ([(TCCDDatabaseMigrated *)self migratedDBHandle])
  {
    logHandle2 = objc_opt_self();
    v13 = sqlite3_errcode([logHandle2 migratedDBHandle]);
LABEL_18:

    goto LABEL_20;
  }

  v13 = 12;
LABEL_20:
  if (filename)
  {
    free(filename);
  }

  return v13;
}

- (int)evalDB:(const char *)b locked:(BOOL)locked bind:(id)bind step:(id)step
{
  lockedCopy = locked;
  bindCopy = bind;
  stepCopy = step;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000569DC;
  v19[3] = &unk_1000A5258;
  v19[4] = self;
  v22 = &v24;
  bCopy = b;
  v12 = bindCopy;
  v20 = v12;
  v13 = stepCopy;
  v21 = v13;
  v14 = objc_retainBlock(v19);
  v15 = v14;
  if (lockedCopy)
  {
    (v14[2])(v14);
  }

  else
  {
    migratedDBQueue = [(TCCDDatabaseMigrated *)self migratedDBQueue];
    dispatch_sync(migratedDBQueue, v15);
  }

  v17 = *(v25 + 6);

  _Block_object_dispose(&v24, 8);
  return v17;
}

- (void)handleDBErrorAndForceCrash:(BOOL)crash
{
  crashCopy = crash;
  v13 = 0;
  v5 = +[TCCDDatabaseMigrated stringFromBacktrace];
  v6 = sqlite3_errmsg([(TCCDDatabaseMigrated *)self migratedDBHandle]);
  if (asprintf(&v13, "database error: %s", v6) != -1)
  {
    v7 = +[TCCDPlatform currentPlatform];
    server = [v7 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = "";
      *buf = 136446722;
      if (crashCopy)
      {
        v12 = " aborting...";
      }

      v15 = v13;
      v16 = 2080;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "%{public}s%s\n%@", buf, 0x20u);
    }
  }

  v10 = sqlite3_errcode([(TCCDDatabaseMigrated *)self migratedDBHandle]);
  sqlite3_close([(TCCDDatabaseMigrated *)self migratedDBHandle]);
  [(TCCDDatabaseMigrated *)self setMigratedDBHandle:0];
  if (v10 == 26 || v10 == 11)
  {
    v11 = +[TCCDDatabaseMigrated getMigratedDBDir];
    removefile(v11, 0, 3u);
    free(v11);
  }

  if (crashCopy)
  {
    sub_100060514();
  }
}

@end