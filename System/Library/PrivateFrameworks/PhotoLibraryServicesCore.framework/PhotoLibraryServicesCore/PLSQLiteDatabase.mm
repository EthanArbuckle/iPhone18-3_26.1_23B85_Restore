@interface PLSQLiteDatabase
+ (id)openDatabaseAtPath:(id)a3 capabilities:(id)a4;
+ (int)dataProtectionOpenFlagForCapabilities:(id)a3;
+ (int)dataProtectionOpenFlagForPath:(id)a3;
+ (int)setLockProxyFileForDatabase:(sqlite3 *)a3 lockFilePath:(id)a4;
+ (sqlite3)_openSQLiteDatabaseAtPath:(const char *)a3 capabilities:(id)a4;
- (BOOL)_execute:(id)a3;
- (BOOL)close;
- (BOOL)prepareStatement:(id)a3 andStepThroughResultsWithBlock:(id)a4;
- (PLSQLiteDatabase)initWithOpenedSQLite3Database:(sqlite3 *)a3;
- (sqlite3_stmt)_prepareStatement:(id)a3;
@end

@implementation PLSQLiteDatabase

- (BOOL)_execute:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  errmsg = 0;
  v5 = sqlite3_exec(self->_database, [v4 UTF8String], 0, 0, &errmsg);
  if (v5)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v10 = v4;
      v11 = 2080;
      v12 = errmsg;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEFAULT, "Failed to execute %@: %s (%d)", buf, 0x1Cu);
    }
  }

  return v5 == 0;
}

- (sqlite3_stmt)_prepareStatement:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  ppStmt = 0;
  v7 = sqlite3_prepare_v2(self->_database, v5, v6 + 1, &ppStmt, 0);
  if (v7)
  {
    v8 = v7;
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sqlite3_errmsg(self->_database);
      *buf = 138412802;
      v15 = v4;
      v16 = 2080;
      v17 = v10;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEFAULT, "Failed to prepare %@: %s (%d)", buf, 0x1Cu);
    }
  }

  v11 = ppStmt;

  return v11;
}

- (BOOL)prepareStatement:(id)a3 andStepThroughResultsWithBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PLSQLiteDatabase *)self _prepareStatement:a3];
  if (v7)
  {
    v8 = v7;
    v15 = 0;
    while (1)
    {
      v9 = sqlite3_step(v8);
      if (v9 != 100)
      {
        break;
      }

      v6[2](v6, v8, &v15);
      if (v15)
      {
        v10 = 1;
        goto LABEL_12;
      }
    }

    v11 = v9;
    if (v9 == 101)
    {
      v10 = 1;
      v15 = 1;
    }

    else
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sqlite3_errmsg(self->_database);
        *buf = 136315394;
        v17 = v13;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_DEFAULT, "Failed to step statement: %s (%d)", buf, 0x12u);
      }

      v10 = 0;
      v15 = 1;
    }

LABEL_12:
    sqlite3_finalize(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)close
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = sqlite3_close(self->_database);
  if (v2)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = sqlite3_errstr(v2);
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_DEFAULT, "Failed to close database: %s (%d).", &v5, 0x12u);
    }
  }

  return v2 == 0;
}

- (PLSQLiteDatabase)initWithOpenedSQLite3Database:(sqlite3 *)a3
{
  v8.receiver = self;
  v8.super_class = PLSQLiteDatabase;
  v4 = [(PLSQLiteDatabase *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_database = a3;
    v6 = v4;
  }

  return v5;
}

+ (sqlite3)_openSQLiteDatabaseAtPath:(const char *)a3 capabilities:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLSQLiteDatabase.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"path != NULL"}];
  }

  ppDb = 0;
  v8 = sqlite3_open_v2(a3, &ppDb, [PLSQLiteDatabase dataProtectionOpenFlagForCapabilities:v7]| 2, 0);
  if (v8)
  {
    v9 = v8;
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v9;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEFAULT, "Failed to open DB - %d", buf, 8u);
    }

    v11 = 1;
  }

  else
  {
    errmsg = 0;
    v12 = sqlite3_exec(ppDb, "PRAGMA journal_mode = WAL", 0, 0, &errmsg);
    if (v12)
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v20 = v12;
        v21 = 2080;
        v22 = errmsg;
        _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEFAULT, "Failed to enable WAL - %d %s", buf, 0x12u);
      }
    }

    v11 = v12 != 0;
  }

  v14 = ppDb;
  if (v11 && ppDb)
  {
    sqlite3_close(ppDb);
    v14 = 0;
  }

  return v14;
}

+ (id)openDatabaseAtPath:(id)a3 capabilities:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [a1 _openSQLiteDatabaseAtPath:objc_msgSend(a3 capabilities:{"UTF8String"), v8}];

  if (v9)
  {
    v10 = [[PLSQLiteDatabase alloc] initWithOpenedSQLite3Database:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int)setLockProxyFileForDatabase:(sqlite3 *)a3 lockFilePath:(id)a4
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = sqlite3_mprintf("PRAGMA lock_proxy_file = %Q", [v5 fileSystemRepresentation]);
  if (v6)
  {
    v7 = v6;
    errmsg = 0;
    v8 = sqlite3_exec(a3, v6, 0, 0, &errmsg);
    if (v8)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v14[0] = v8;
        LOWORD(v14[1]) = 2080;
        *(&v14[1] + 2) = errmsg;
        _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Failed to set lock_proxy_file - %d %s", buf, 0x12u);
      }

      sqlite3_free(errmsg);
      errmsg = 0;
    }

    sqlite3_free(v7);
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v14 = v5;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Failed to set lock_proxy_file (statement parse error) for path: %@", buf, 0xCu);
    }

    v8 = 1;
  }

  return v8;
}

+ (int)dataProtectionOpenFlagForCapabilities:(id)a3
{
  if ([a3 supportsDataProtection])
  {
    return 3145728;
  }

  else
  {
    return 0;
  }
}

+ (int)dataProtectionOpenFlagForPath:(id)a3
{
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3 isDirectory:0];
  v4 = [PLFileSystemCapabilities capabilitiesWithURL:v3];

  LODWORD(v3) = [PLSQLiteDatabase dataProtectionOpenFlagForCapabilities:v4];
  return v3;
}

@end