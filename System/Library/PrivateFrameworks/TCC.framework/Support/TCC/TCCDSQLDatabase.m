@interface TCCDSQLDatabase
- (TCCDSQLDatabase)initWithPathToDatabase:(id)a3 initialSetup:(id)a4 migration:(id)a5;
- (int)_createDatabase;
- (int)_doEval:(const char *)a3 bind:(id)a4 step:(id)a5 lock:(BOOL)a6 line:(int)a7;
- (int)commit;
- (int)openDatabase;
- (int)removeDatabase;
- (int)transaction:(id)a3;
- (void)closeDatabase;
@end

@implementation TCCDSQLDatabase

- (TCCDSQLDatabase)initWithPathToDatabase:(id)a3 initialSetup:(id)a4 migration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = TCCDSQLDatabase;
  v12 = [(TCCDSQLDatabase *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pathToDatabase, a3);
    objc_storeStrong(&v13->_initialSetup, a4);
    v14 = objc_retainBlock(v11);
    migration = v13->_migration;
    v13->_migration = v14;

    v16 = [(NSString *)v13->_pathToDatabase lastPathComponent];
    v17 = [@"com.apple.tcc.db_queue_" stringByAppendingString:v16];
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
      v25 = [v24 server];
      v26 = [v25 logHandle];

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
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
  v3 = [(TCCDSQLDatabase *)self pathToDatabase];
  if ([(TCCDSQLDatabase *)self unavailable])
  {
    LODWORD(v4) = 1;
    goto LABEL_13;
  }

  v5 = [(TCCDSQLDatabase *)self _createDatabase];
  if (v5)
  {
    LODWORD(v4) = v5;
    v6 = +[TCCDPlatform currentPlatform];
    v7 = [v6 server];
    v8 = [v7 logHandle];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100034040();
    }

    goto LABEL_8;
  }

  v4 = [(TCCDSQLDatabase *)self migration];

  if (v4)
  {
    v8 = [(TCCDSQLDatabase *)self migration];
    LODWORD(v4) = (*(v8 + 16))(v8, self);
LABEL_8:
  }

  if ([(TCCDSQLDatabase *)self commit])
  {
    _generic_db_error(0, v9, self);
  }

  if (v4)
  {
    [(TCCDSQLDatabase *)self setUnavailable:1];
    [(TCCDSQLDatabase *)self setExtendedErrorCode:sqlite3_extended_errcode([(TCCDSQLDatabase *)self db])];
    [(TCCDSQLDatabase *)self closeDatabase];
  }

LABEL_13:

  return v4;
}

- (void)closeDatabase
{
  v3 = +[TCCDPlatform currentPlatform];
  v4 = [v3 server];
  v5 = [v4 logHandle];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TCCDSQLDatabase *)self pathToDatabase];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TCCDSQLDatabase db close for path:%@", buf, 0xCu);
  }

  v7 = [(TCCDSQLDatabase *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002ECD4;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  dispatch_sync(v7, block);
}

- (int)_createDatabase
{
  ppDb = 0;
  v3 = [(TCCDSQLDatabase *)self pathToDatabase];
  v4 = [(TCCDSQLDatabase *)self initialSetup];
  v5 = [v3 stringByDeletingLastPathComponent];
  v6 = mkpath_np([v5 UTF8String], 0x1C0u);
  if (v6 && (v7 = v6, v6 != 17))
  {
    v21 = +[TCCDPlatform currentPlatform];
    v22 = [v21 server];
    v23 = [v22 logHandle];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000341C8(v5);
    }
  }

  else
  {
    [v3 UTF8String];
    v7 = _sqlite3_integrity_check();
    v8 = +[TCCDPlatform currentPlatform];
    v9 = [v8 server];
    v10 = [v9 logHandle];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = [v5 UTF8String];
      v33 = 1024;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_sqlite3_integrity_check for %s returned (%d)", buf, 0x12u);
    }

    if (v7 == 11)
    {
      v11 = +[TCCDPlatform currentPlatform];
      v12 = [v11 server];
      v13 = [v12 logHandle];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v3 UTF8String];
        *buf = 136315138;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "database is corrupt: %s", buf, 0xCu);
      }

      if (!removefile([v5 UTF8String], 0, 3u))
      {
        sub_1000341AC();
      }

      v15 = +[TCCDPlatform currentPlatform];
      v16 = [v15 server];
      v17 = [v16 logHandle];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000340E4();
      }
    }

    if (sqlite3_open_v2([v3 UTF8String], &ppDb, 4227078, 0))
    {
      v18 = +[TCCDPlatform currentPlatform];
      v19 = [v18 server];
      v20 = [v19 logHandle];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
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

    else if (sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL;PRAGMA foreign_keys=ON;", 0, 0, 0) || sqlite3_exec(ppDb, "BEGIN", 0, 0, 0) || sqlite3_exec(ppDb, [v4 UTF8String], 0, 0, 0))
    {
      [(TCCDSQLDatabase *)self setDb:ppDb];
      _generic_db_error(0, v24, self);
    }

    else
    {
      v26 = +[TCCDPlatform currentPlatform];
      v27 = [v26 server];
      v28 = [v27 logHandle];

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v3 UTF8String];
        *buf = 136446210;
        v32 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "using database: %{public}s", buf, 0xCu);
      }

      v7 = 0;
    }

    [(TCCDSQLDatabase *)self setDb:ppDb];
  }

  return v7;
}

- (int)_doEval:(const char *)a3 bind:(id)a4 step:(id)a5 lock:(BOOL)a6 line:(int)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (!a3)
  {
    __assert_rtn("[TCCDSQLDatabase _doEval:bind:step:lock:line:]", "TCCDDatabase.m", 320, "sql != NULL");
  }

  v14 = v13;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10002F380;
  v25 = &unk_1000A5DC8;
  v26 = self;
  v29 = &v32;
  v30 = a3;
  v31 = a7;
  v15 = v12;
  v27 = v15;
  v16 = v14;
  v28 = v16;
  v17 = objc_retainBlock(&v22);
  v18 = v17;
  if (v8)
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

- (int)transaction:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v4)
  {
    v5 = [(TCCDSQLDatabase *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002F678;
    block[3] = &unk_1000A5340;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(v5, block);

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
  v3 = [(TCCDSQLDatabase *)self pathToDatabase];
  v4 = removefile([v3 UTF8String], 0, 3u);

  if (!v4)
  {
    return 0;
  }

  v5 = +[TCCDPlatform currentPlatform];
  v6 = [v5 server];
  v7 = [v6 logHandle];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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