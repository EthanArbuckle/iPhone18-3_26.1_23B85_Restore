@interface SSMetricsEventTable
+ (id)databasePath;
- (BOOL)_migrateToVersion1;
- (BOOL)_migrateToVersion2;
- (BOOL)_migrateToVersion3;
- (BOOL)_setupDatabase;
- (id)_pragmaValueForName:(id)a3;
- (void)performTransactionWithBlock:(id)a3;
@end

@implementation SSMetricsEventTable

- (void)performTransactionWithBlock:(id)a3
{
  v4 = a3;
  database = self->super._database;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSMetricsEventTable_performTransactionWithBlock___block_invoke;
  v7[3] = &unk_1E84AC338;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SSSQLiteDatabase *)database dispatchBlockSync:v7];
}

void __51__SSMetricsEventTable_performTransactionWithBlock___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v23.receiver = *(a1 + 32);
  v23.super_class = SSMetricsEventTable;
  objc_msgSendSuper2(&v23, sel_performTransactionWithBlock_, v2);
  v3 = [*(a1 + 32) _pragmaValueForName:@"freelist_count"];
  v4 = [v3 integerValue];

  if (v4 < 501)
  {
    return;
  }

  v5 = [*(a1 + 32) _pragmaValueForName:@"auto_vacuum"];
  v6 = [v5 integerValue];

  v7 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = objc_opt_class();
  v24 = 138543874;
  v25 = v11;
  v26 = 2048;
  v27 = v4;
  v28 = 2048;
  v29 = v6;
  v12 = v11;
  LODWORD(v22) = 32;
  v21 = &v24;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v24, v22}];
    free(v13);
    SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v10);
LABEL_12:
  }

  if (v6)
  {
    if (v6 != 2)
    {
      return;
    }

    v20 = @"PRAGMA incremental_vacuum(500);";
  }

  else
  {
    v20 = @"VACUUM;";
  }

  [*(*(a1 + 32) + 8) executeSQL:{v20, v21}];
}

+ (id)databasePath
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Caches", @"com.apple.storeServices.analytics", @"eventsTable_v1", 0}];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  v4 = [v3 stringByAppendingPathComponent:@"eventsTable_v1"];
  v5 = [v4 stringByAppendingPathExtension:@"db"];

  return v5;
}

- (BOOL)_migrateToVersion1
{
  v3 = [objc_opt_class() _eventsTableName];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ INTEGER, %@ TEXT, %@ BLOB, %@ REAL, %@ INTEGER, PRIMARY KEY (%@))", v3, @"pid", @"report_url", @"eventBody", @"timestampInserted", @"timestampReported", @"pid"];;
  if (-[SSSQLiteDatabase executeSQL:](self->super._database, "executeSQL:", @"PRAGMA legacy_file_format = 0;") && -[SSSQLiteDatabase executeSQL:](self->super._database, "executeSQL:", @"PRAGMA journal_mode=WAL;") && -[SSSQLiteDatabase executeSQL:](self->super._database, "executeSQL:", v4) && (v5 = self->super._database, [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@_%@ ON %@ (%@);", v3, @"report_url", v3, @"report_url"], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = -[SSSQLiteDatabase executeSQL:](v5, "executeSQL:", v6), v6, v5) && (v7 = self->super._database, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE INDEX IF NOT EXISTS %@_%@ ON %@ (%@);", v3, @"timestampInserted", v3, @"timestampInserted"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = -[SSSQLiteDatabase executeSQL:](v7, "executeSQL:", v8), v8, v7))
  {
    database = self->super._database;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@_%@ ON %@ (%@)", v3, @"timestampReported", v3, @"timestampReported"];;
    v11 = [(SSSQLiteDatabase *)database executeSQL:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_migrateToVersion2
{
  v3 = [objc_opt_class() _eventsTableName];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ INTEGER DEFAULT 0", v3, @"supressDsid"];;
  LOBYTE(self) = [(SSSQLiteDatabase *)self->super._database executeSQL:v4];

  return self;
}

- (BOOL)_migrateToVersion3
{
  v3 = [objc_opt_class() _eventsTableName];
  if ([(SSSQLiteDatabase *)self->super._database columnName:@"supressDsid" existsInTable:v3])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ INTEGER DEFAULT 0", v3, @"supressDsid"];;
    v4 = [(SSSQLiteDatabase *)self->super._database executeSQL:v5];
    if (v4 && [(SSSQLiteDatabase *)self->super._database columnName:@"suppressUserInfo" existsInTable:v3])
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = %@", v3, @"supressDsid", @"suppressUserInfo"];;
      [(SSSQLiteDatabase *)self->super._database executeSQL:v6];
    }
  }

  return v4;
}

- (BOOL)_setupDatabase
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [(SSSQLiteDatabase *)self->super._database userVersion];
  v4 = off_1E84AB000;
  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v47 = 138412290;
  v48 = v9;
  LODWORD(v46) = 12;
  v45 = &v47;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v47, v46}];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
LABEL_11:
  }

  [(SSSQLiteDatabase *)self->super._database executeSQL:@"PRAGMA auto_vacuum = 2;"];
  if (v3 == 3)
  {
    return 1;
  }

  v17 = v3 < 3;
  if (v3 > 2)
  {
LABEL_38:
    [(SSSQLiteDatabase *)self->super._database setUserVersion:3, v45];
    return v17;
  }

  v18 = 0;
  while (v3 == 2)
  {
    v3 = 3;
    if (![(SSMetricsEventTable *)self _migrateToVersion3])
    {
      goto LABEL_39;
    }

LABEL_26:
    v19 = [(__objc2_class *)v4[75] sharedStoreServicesConfig:v45];
    if (!v19)
    {
      v19 = [(__objc2_class *)v4[75] sharedConfig];
    }

    v20 = v4;
    v21 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v19 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v22 &= 2u;
    }

    if (!v22)
    {
      goto LABEL_36;
    }

    v24 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v47 = 138412290;
    v48 = v24;
    LODWORD(v46) = 12;
    v45 = &v47;
    v25 = _os_log_send_and_compose_impl();

    if (v25)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, &v47, v46}];
      free(v25);
      SSFileLog(v19, @"%@", v26, v27, v28, v29, v30, v31, v23);
LABEL_36:
    }

    v18 = 1;
    v4 = v20;
    if (v3 >= 3)
    {
      goto LABEL_38;
    }
  }

  if (v3 == 1)
  {
    v3 = 2;
    if (![(SSMetricsEventTable *)self _migrateToVersion2])
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  if (!v3)
  {
    v3 = 1;
    if (![(SSMetricsEventTable *)self _migrateToVersion1])
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  if (v18)
  {
    goto LABEL_26;
  }

LABEL_39:
  v32 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
  if (!v32)
  {
    v32 = [(__objc2_class *)v4[75] sharedConfig];
  }

  v33 = [v32 shouldLog];
  if ([v32 shouldLogToDisk])
  {
    v34 = v33 | 2;
  }

  else
  {
    v34 = v33;
  }

  v35 = [v32 OSLogObject];
  if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v34 &= 2u;
  }

  if (v34)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v47 = 138412290;
    v48 = v36;
    LODWORD(v46) = 12;
    v37 = _os_log_send_and_compose_impl();

    if (v37)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v47, v46}];
      free(v37);
      SSFileLog(v32, @"%@", v38, v39, v40, v41, v42, v43, v35);
      goto LABEL_49;
    }
  }

  else
  {
LABEL_49:
  }

  return 0;
}

- (id)_pragmaValueForName:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__81;
  v14 = __Block_byref_object_dispose__81;
  v15 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@;", v4];
  database = self->super._database;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SSMetricsEventTable__pragmaValueForName___block_invoke;
  v9[3] = &unk_1E84B37D8;
  v9[4] = &v10;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v5 cache:0 usingBlock:v9];
  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __43__SSMetricsEventTable__pragmaValueForName___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  if ([SSSQLiteDatabase statementHasRowAfterStepping:a2])
  {
    v4 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

@end