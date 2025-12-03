@interface TCCDDatabaseRegistry
+ (char)getRegistryDir;
+ (id)stringFromBacktrace;
- (BOOL)checkIfAlreadySetUp:(BOOL)up;
- (BOOL)checkIfKnownDBAtPath:(const char *)path isKnown:(BOOL *)known;
- (BOOL)checkRegistryVersion:(BOOL)version;
- (TCCDDatabaseRegistry)init;
- (id)dumpState;
- (id)fetchAllKnownDBEntries;
- (id)registryEntryFromStep:(sqlite3_stmt *)step;
- (int)commitDB;
- (int)createDBWithSQL:(const char *)l atPath:(const char *)path withFilename:(const char *)filename;
- (int)evalDB:(const char *)b locked:(BOOL)locked bind:(id)bind step:(id)step;
- (int)executeWithTransaction:(id)transaction;
- (int)registerNewDBAtPath:(const char *)path;
- (int)setupDB;
- (void)closeDB;
- (void)handleDBErrorAndForceCrash:(BOOL)crash;
- (void)notifyRegistryChanged;
@end

@implementation TCCDDatabaseRegistry

- (TCCDDatabaseRegistry)init
{
  v6.receiver = self;
  v6.super_class = TCCDDatabaseRegistry;
  v2 = [(TCCDDatabaseRegistry *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.tcc.registry_queue", 0);
    registryQueue = v2->_registryQueue;
    v2->_registryQueue = v3;

    if (!v3)
    {
      sub_1000604C0();
    }

    v2->_registryDBHandle = 0;
    v2->_extendedErrorCode = 0;
    *&v2->_isSetup = 0;
  }

  return v2;
}

+ (char)getRegistryDir
{
  v2 = +[TCCDPlatform currentPlatform];
  server = [v2 server];
  stateDirectory = [server stateDirectory];

  if (!stateDirectory)
  {
    sub_1000604F8();
  }

  v5 = strdup([stateDirectory UTF8String]);
  if (!v5)
  {
    sub_1000604DC();
  }

  v6 = v5;

  return v6;
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

- (void)handleDBErrorAndForceCrash:(BOOL)crash
{
  crashCopy = crash;
  v13 = 0;
  v5 = +[TCCDDatabaseRegistry stringFromBacktrace];
  v6 = sqlite3_errmsg([(TCCDDatabaseRegistry *)self registryDBHandle]);
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

  v10 = sqlite3_errcode([(TCCDDatabaseRegistry *)self registryDBHandle]);
  sqlite3_close([(TCCDDatabaseRegistry *)self registryDBHandle]);
  [(TCCDDatabaseRegistry *)self setRegistryDBHandle:0];
  if (v10 == 26 || v10 == 11)
  {
    v11 = +[TCCDDatabaseRegistry getRegistryDir];
    removefile(v11, 0, 3u);
    free(v11);
  }

  if (crashCopy)
  {
    sub_100060514();
  }
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
  v19[2] = sub_1000120FC;
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
    registryQueue = [(TCCDDatabaseRegistry *)self registryQueue];
    dispatch_sync(registryQueue, v15);
  }

  v17 = *(v25 + 6);

  _Block_object_dispose(&v24, 8);
  return v17;
}

- (int)createDBWithSQL:(const char *)l atPath:(const char *)path withFilename:(const char *)filename
{
  filename = 0;
  v9 = mkpath_np(path, 0x1C0u);
  logHandle3 = v9;
  if (v9 && v9 != 17)
  {
    v15 = +[TCCDPlatform currentPlatform];
    server = [v15 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100060748(path, logHandle3, logHandle);
    }
  }

  else
  {
    if (asprintf(&filename, "%s/%s", path, filename) == -1)
    {
      sub_10006072C();
    }

    ppDb = [(TCCDDatabaseRegistry *)self registryDBHandle];
    if (sqlite3_open_v2(filename, &ppDb, 4227078, 0))
    {
      v11 = +[TCCDPlatform currentPlatform];
      server2 = [v11 server];
      logHandle2 = [server2 logHandle];

      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        sub_100060680(self, logHandle2);
      }

      self->_registryDBHandle = ppDb;
      if ([(TCCDDatabaseRegistry *)self registryDBHandle])
      {
        v14 = objc_opt_self();
        LODWORD(logHandle3) = sqlite3_errcode([v14 registryDBHandle]);
      }

      else
      {
        LODWORD(logHandle3) = 12;
      }
    }

    else if (sqlite3_exec(ppDb, "PRAGMA foreign_keys=ON;", 0, 0, 0) || sqlite3_exec(ppDb, "BEGIN", 0, 0, 0) || sqlite3_exec(ppDb, l, 0, 0, 0))
    {
      [(TCCDDatabaseRegistry *)self handleDBErrorAndForceCrash:0];
    }

    else
    {
      v20 = +[TCCDPlatform currentPlatform];
      server3 = [v20 server];
      logHandle3 = [server3 logHandle];

      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        filenameCopy = filename;
        _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "using database: %{public}s", buf, 0xCu);
      }

      LODWORD(logHandle3) = 0;
    }

    filenameCopy2 = filename;
    self->_registryDBHandle = ppDb;
    if (filenameCopy2)
    {
      free(filenameCopy2);
    }
  }

  return logHandle3;
}

- (id)registryEntryFromStep:(sqlite3_stmt *)step
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = [NSString stringWithUTF8String:sqlite3_column_text(step, 0)];
  [v4 setObject:v5 forKeyedSubscript:@"kTCCDDatabaseRegistryPathKey"];

  v6 = [NSNumber numberWithDouble:sqlite3_column_double(step, 1)];
  [v4 setObject:v6 forKeyedSubscript:@"kTCCDDatabaseRegistryFirstSeenKey"];

  v7 = [NSNumber numberWithDouble:sqlite3_column_double(step, 2)];
  [v4 setObject:v7 forKeyedSubscript:@"kTCCDDatabaseRegistryLastSeenKey"];

  v8 = [NSNumber numberWithInt:sqlite3_column_int(step, 3)];
  [v4 setObject:v8 forKeyedSubscript:@"kTCCDDatabaseRegistryTrustedKey"];

  return v4;
}

- (int)registerNewDBAtPath:(const char *)path
{
  v5 = +[NSDate now];
  [v5 timeIntervalSince1970];
  v7 = v6;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001276C;
  v9[3] = &unk_1000A5280;
  v9[6] = v7;
  v9[4] = self;
  v9[5] = path;
  return [(TCCDDatabaseRegistry *)self evalDB:"INSERT OR REPLACE INTO registry (abs_path locked:first_seen bind:last_seen step:trusted)VALUES (?, ?, ?, ?)", 0, v9, 0];
}

- (id)dumpState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000074D0;
  v12 = sub_100007568;
  v13 = &stru_1000A7240;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000129A0;
  v7[3] = &unk_1000A52A8;
  v7[4] = &v8;
  if ([(TCCDDatabaseRegistry *)self evalDB:"SELECT * FROM registry" locked:0 bind:0 step:v7])
  {
    v2 = +[TCCDPlatform currentPlatform];
    server = [v2 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1000607C0();
    }

    v5 = &stru_1000A7240;
  }

  else
  {
    v5 = v9[5];
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)checkIfKnownDBAtPath:(const char *)path isKnown:(BOOL *)known
{
  *known = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012C14;
  v12[3] = &unk_1000A52D0;
  v12[4] = self;
  v12[5] = path;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012C78;
  v11[3] = &unk_1000A52F0;
  v11[4] = known;
  v11[5] = path;
  v6 = -[TCCDDatabaseRegistry evalDB:locked:bind:step:](self, "evalDB:locked:bind:step:", [@"SELECT * FROM registry WHERE abs_path = ?" UTF8String], 0, v12, v11);
  if (v6)
  {
    v7 = +[TCCDPlatform currentPlatform];
    server = [v7 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100060834(path, v6, logHandle);
    }

    *known = 0;
  }

  return v6 == 0;
}

- (id)fetchAllKnownDBEntries
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100012EDC;
  v12 = &unk_1000A5318;
  selfCopy = self;
  v2 = objc_alloc_init(NSMutableArray);
  v14 = v2;
  if ([(TCCDDatabaseRegistry *)selfCopy evalDB:"SELECT * FROM registry" locked:0 bind:0 step:&v9])
  {
    v3 = [TCCDPlatform currentPlatform:v9];
    server = [v3 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1000608AC();
    }
  }

  v6 = v14;
  v7 = v2;

  return v2;
}

- (int)setupDB
{
  if ([(TCCDDatabaseRegistry *)self registryDBUnavailable])
  {
    return 1;
  }

  v4 = +[TCCDDatabaseRegistry getRegistryDir];
  if ([(TCCDDatabaseRegistry *)self createDBWithSQL:"CREATE TABLE IF NOT EXISTS admin (key TEXT PRIMARY KEY NOT NULL atPath:value INTEGER NOT NULL);INSERT OR IGNORE INTO admin VALUES ('version' withFilename:0);INSERT OR IGNORE INTO admin VALUES ('setup', 0);CREATE TABLE IF NOT EXISTS registry(   abs_path    TEXT    NOT NULL, first_seen  REAL    NOT NULL, last_seen   REAL    NOT NULL, trusted     INTEGER NOT NULL, PRIMARY KEY (abs_path));", v4, "REG.db"]|| (v17[0] = _NSConcreteStackBlock, v17[1] = 3221225472, v17[2] = sub_100013290, v17[3] = &unk_1000A5188, v17[4] = self, [(TCCDDatabaseRegistry *)self evalDB:"SELECT value FROM admin WHERE key = 'version'" locked:1 bind:0 step:v17]))
  {
LABEL_5:
    free(v4);
    return 0;
  }

  if (![(TCCDDatabaseRegistry *)self version])
  {
    if (!sqlite3_exec([(TCCDDatabaseRegistry *)self registryDBHandle], "COMMIT", 0, 0, 0))
    {
      v13 = +[TCCDPlatform currentPlatform];
      server = [v13 server];
      logHandle = [server logHandle];

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        version = [(TCCDDatabaseRegistry *)self version];
        *buf = 67109120;
        v19 = version;
        _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "using registry version: %d", buf, 8u);
      }

      goto LABEL_5;
    }

    [(TCCDDatabaseRegistry *)self handleDBErrorAndForceCrash:0];
    free(v4);
    setupDB = 1;
LABEL_18:
    self->_registryDBUnavailable = 1;
    self->_extendedErrorCode = sqlite3_extended_errcode([(TCCDDatabaseRegistry *)self registryDBHandle]);
    sqlite3_close([(TCCDDatabaseRegistry *)self registryDBHandle]);
    self->_registryDBHandle = 0;
    return setupDB;
  }

  v6 = +[TCCDPlatform currentPlatform];
  server2 = [v6 server];
  logHandle2 = [server2 logHandle];

  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    version2 = [(TCCDDatabaseRegistry *)self version];
    *buf = 67109376;
    v19 = version2;
    v20 = 1024;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Downgrading registry from version %d to %d", buf, 0xEu);
  }

  sqlite3_close([(TCCDDatabaseRegistry *)self registryDBHandle]);
  [(TCCDDatabaseRegistry *)self setRegistryDBHandle:0];
  if (removefile(v4, 0, 3u))
  {
    v10 = +[TCCDPlatform currentPlatform];
    server3 = [v10 server];
    logHandle3 = [server3 logHandle];

    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
    {
      sub_100060920();
    }

    setupDB = 1;
  }

  else
  {
    setupDB = [(TCCDDatabaseRegistry *)self setupDB];
  }

  [(TCCDDatabaseRegistry *)self notifyRegistryChanged];
  free(v4);
  if (setupDB)
  {
    goto LABEL_18;
  }

  return setupDB;
}

- (int)executeWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  registryQueue = [(TCCDDatabaseRegistry *)self registryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000133C4;
  block[3] = &unk_1000A5340;
  block[4] = self;
  v9 = transactionCopy;
  v10 = &v11;
  v6 = transactionCopy;
  dispatch_sync(registryQueue, block);

  LODWORD(transactionCopy) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return transactionCopy;
}

- (BOOL)checkIfAlreadySetUp:(BOOL)up
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013598;
  v9[3] = &unk_1000A52A8;
  v9[4] = &v10;
  v4 = [(TCCDDatabaseRegistry *)self evalDB:"SELECT value FROM admin WHERE key = 'setup'" locked:up bind:0 step:v9];
  if (v4)
  {
    v5 = +[TCCDPlatform currentPlatform];
    server = [v5 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10006095C();
    }
  }

  else
  {
    self->_isSetup = *(v11 + 6) != 0;
  }

  _Block_object_dispose(&v10, 8);
  return v4 == 0;
}

- (BOOL)checkRegistryVersion:(BOOL)version
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013718;
  v9[3] = &unk_1000A52A8;
  v9[4] = &v10;
  v4 = [(TCCDDatabaseRegistry *)self evalDB:"SELECT value FROM admin WHERE key = 'version'" locked:version bind:0 step:v9];
  if (v4)
  {
    v5 = +[TCCDPlatform currentPlatform];
    server = [v5 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100060998();
    }
  }

  else
  {
    self->_version = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return v4 == 0;
}

- (int)commitDB
{
  registryDBHandle = [(TCCDDatabaseRegistry *)self registryDBHandle];

  return sqlite3_exec(registryDBHandle, "COMMIT", 0, 0, 0);
}

- (void)closeDB
{
  registryQueue = [(TCCDDatabaseRegistry *)self registryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013814;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  dispatch_sync(registryQueue, block);
}

- (void)notifyRegistryChanged
{
  if (notify_post("com.apple.tcc.registry.changed"))
  {
    v2 = +[TCCDPlatform currentPlatform];
    server = [v2 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100060A10();
    }
  }
}

@end