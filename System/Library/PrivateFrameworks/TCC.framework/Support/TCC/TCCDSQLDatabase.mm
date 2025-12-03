@interface TCCDSQLDatabase
- (TCCDSQLDatabase)initWithPathToDatabase:(id)database initialSetup:(id)setup migration:(id)migration;
- (int)_createDatabase;
- (int)_doEval:(const char *)eval bind:(id)bind step:(id)step lock:(BOOL)lock line:(int)line;
- (int)commit;
- (int)openDatabase;
- (int)removeDatabase;
- (int)transaction:(id)transaction;
- (void)closeDatabase;
@end

@implementation TCCDSQLDatabase

- (TCCDSQLDatabase)initWithPathToDatabase:(id)database initialSetup:(id)setup migration:(id)migration
{
  databaseCopy = database;
  setupCopy = setup;
  migrationCopy = migration;
  v33.receiver = self;
  v33.super_class = TCCDSQLDatabase;
  v12 = [(TCCDSQLDatabase *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pathToDatabase, database);
    objc_storeStrong(&v13->_initialSetup, setup);
    v14 = objc_retainBlock(migrationCopy);
    migration = v13->_migration;
    v13->_migration = v14;

    lastPathComponent = [(NSString *)v13->_pathToDatabase lastPathComponent];
    v17 = [@"com.apple.tcc.db_queue_" stringByAppendingString:lastPathComponent];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    queue = v13->_queue;
    v13->_queue = v18;

    objc_initWeak(&location, v13);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10002E678;
    v30[3] = &unk_1000A5DA0;
    objc_copyWeak(&v31, &location);
    v20 = objc_retainBlock(v30);
    eval = v13->_eval;
    v13->_eval = v20;

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10002E75C;
    v28[3] = &unk_1000A5DA0;
    objc_copyWeak(&v29, &location);
    v22 = objc_retainBlock(v28);
    evalLocked = v13->_evalLocked;
    v13->_evalLocked = v22;

    if ([(TCCDSQLDatabase *)v13 openDatabase])
    {
      v24 = +[TCCDPlatform currentPlatform];
      server = [v24 server];
      logHandle = [server logHandle];

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100033FD8();
      }
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (int)openDatabase
{
  pathToDatabase = [(TCCDSQLDatabase *)self pathToDatabase];
  if ([(TCCDSQLDatabase *)self unavailable])
  {
    LODWORD(migration) = 1;
    goto LABEL_13;
  }

  _createDatabase = [(TCCDSQLDatabase *)self _createDatabase];
  if (_createDatabase)
  {
    LODWORD(migration) = _createDatabase;
    v6 = +[TCCDPlatform currentPlatform];
    server = [v6 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100034040();
    }

    goto LABEL_8;
  }

  migration = [(TCCDSQLDatabase *)self migration];

  if (migration)
  {
    logHandle = [(TCCDSQLDatabase *)self migration];
    LODWORD(migration) = (*(logHandle + 16))(logHandle, self);
LABEL_8:
  }

  if ([(TCCDSQLDatabase *)self commit])
  {
    _generic_db_error(0, v9, self);
  }

  if (migration)
  {
    [(TCCDSQLDatabase *)self setUnavailable:1];
    [(TCCDSQLDatabase *)self setExtendedErrorCode:sqlite3_extended_errcode([(TCCDSQLDatabase *)self db])];
    [(TCCDSQLDatabase *)self closeDatabase];
  }

LABEL_13:

  return migration;
}

- (void)closeDatabase
{
  v3 = +[TCCDPlatform currentPlatform];
  server = [v3 server];
  logHandle = [server logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    pathToDatabase = [(TCCDSQLDatabase *)self pathToDatabase];
    *buf = 138412290;
    v10 = pathToDatabase;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "TCCDSQLDatabase db close for path:%@", buf, 0xCu);
  }

  queue = [(TCCDSQLDatabase *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002ECD4;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (int)_createDatabase
{
  ppDb = 0;
  pathToDatabase = [(TCCDSQLDatabase *)self pathToDatabase];
  initialSetup = [(TCCDSQLDatabase *)self initialSetup];
  stringByDeletingLastPathComponent = [pathToDatabase stringByDeletingLastPathComponent];
  v6 = mkpath_np([stringByDeletingLastPathComponent UTF8String], 0x1C0u);
  if (v6 && (v7 = v6, v6 != 17))
  {
    v21 = +[TCCDPlatform currentPlatform];
    server = [v21 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1000341C8(stringByDeletingLastPathComponent);
    }
  }

  else
  {
    [pathToDatabase UTF8String];
    v7 = _sqlite3_integrity_check();
    v8 = +[TCCDPlatform currentPlatform];
    server2 = [v8 server];
    logHandle2 = [server2 logHandle];

    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      uTF8String = [stringByDeletingLastPathComponent UTF8String];
      v33 = 1024;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "_sqlite3_integrity_check for %s returned (%d)", buf, 0x12u);
    }

    if (v7 == 11)
    {
      v11 = +[TCCDPlatform currentPlatform];
      server3 = [v11 server];
      logHandle3 = [server3 logHandle];

      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String2 = [pathToDatabase UTF8String];
        *buf = 136315138;
        uTF8String = uTF8String2;
        _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "database is corrupt: %s", buf, 0xCu);
      }

      if (!removefile([stringByDeletingLastPathComponent UTF8String], 0, 3u))
      {
        sub_1000341AC();
      }

      v15 = +[TCCDPlatform currentPlatform];
      server4 = [v15 server];
      logHandle4 = [server4 logHandle];

      if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
      {
        sub_1000340E4();
      }
    }

    if (sqlite3_open_v2([pathToDatabase UTF8String], &ppDb, 4227078, 0))
    {
      v18 = +[TCCDPlatform currentPlatform];
      server5 = [v18 server];
      logHandle5 = [server5 logHandle];

      if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_ERROR))
      {
        sub_100034118(&ppDb);
      }

      if (ppDb)
      {
        v7 = sqlite3_errcode(ppDb);
      }

      else
      {
        v7 = 12;
      }
    }

    else if (sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL;PRAGMA foreign_keys=ON;", 0, 0, 0) || sqlite3_exec(ppDb, "BEGIN", 0, 0, 0) || sqlite3_exec(ppDb, [initialSetup UTF8String], 0, 0, 0))
    {
      [(TCCDSQLDatabase *)self setDb:ppDb];
      _generic_db_error(0, v24, self);
    }

    else
    {
      v26 = +[TCCDPlatform currentPlatform];
      server6 = [v26 server];
      logHandle6 = [server6 logHandle];

      if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String3 = [pathToDatabase UTF8String];
        *buf = 136446210;
        uTF8String = uTF8String3;
        _os_log_impl(&_mh_execute_header, logHandle6, OS_LOG_TYPE_DEFAULT, "using database: %{public}s", buf, 0xCu);
      }

      v7 = 0;
    }

    [(TCCDSQLDatabase *)self setDb:ppDb];
  }

  return v7;
}

- (int)_doEval:(const char *)eval bind:(id)bind step:(id)step lock:(BOOL)lock line:(int)line
{
  lockCopy = lock;
  bindCopy = bind;
  stepCopy = step;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (!eval)
  {
    __assert_rtn("[TCCDSQLDatabase _doEval:bind:step:lock:line:]", "TCCDDatabase.m", 320, "sql != NULL");
  }

  v14 = stepCopy;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10002F380;
  v25 = &unk_1000A5DC8;
  selfCopy = self;
  v29 = &v32;
  evalCopy = eval;
  lineCopy = line;
  v15 = bindCopy;
  v27 = v15;
  v16 = v14;
  v28 = v16;
  v17 = objc_retainBlock(&v22);
  v18 = v17;
  if (lockCopy)
  {
    (v17[2])(v17);
  }

  else
  {
    v19 = [(TCCDSQLDatabase *)self queue:v22];
    dispatch_sync(v19, v18);
  }

  v20 = *(v33 + 6);

  _Block_object_dispose(&v32, 8);
  return v20;
}

- (int)transaction:(id)transaction
{
  transactionCopy = transaction;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (transactionCopy)
  {
    queue = [(TCCDSQLDatabase *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002F678;
    block[3] = &unk_1000A5340;
    block[4] = self;
    v9 = transactionCopy;
    v10 = &v11;
    dispatch_sync(queue, block);

    v6 = *(v12 + 6);
  }

  else
  {
    v6 = 1;
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (int)removeDatabase
{
  pathToDatabase = [(TCCDSQLDatabase *)self pathToDatabase];
  v4 = removefile([pathToDatabase UTF8String], 0, 3u);

  if (!v4)
  {
    return 0;
  }

  v5 = +[TCCDPlatform currentPlatform];
  server = [v5 server];
  logHandle = [server logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    sub_100034324(self);
  }

  return 1;
}

- (int)commit
{
  v2 = [(TCCDSQLDatabase *)self db];

  return sqlite3_exec(v2, "COMMIT", 0, 0, 0);
}

@end