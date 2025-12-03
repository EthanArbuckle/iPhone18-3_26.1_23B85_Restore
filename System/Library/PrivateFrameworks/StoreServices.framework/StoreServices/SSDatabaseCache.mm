@interface SSDatabaseCache
- (BOOL)_setupDatabase;
- (SSDatabaseCache)initWithIdentifier:(id)identifier cacheName:(id)name;
- (SSDatabaseCache)initWithIdentifier:(id)identifier cacheName:(id)name database:(id)database cacheEntryClass:(Class)class;
- (id)cacheEntryForLookupKey:(id)key;
- (id)cacheEntryProperties:(id)properties forLookupKeys:(id)keys;
- (id)setData:(id)data expiring:(double)expiring retiring:(double)retiring lookupKey:(id)key userInfo:(id)info;
- (id)statistics;
- (int)clearRetiredData;
- (void)clear;
- (void)clearCacheForLookupKey:(id)key;
- (void)dealloc;
@end

@implementation SSDatabaseCache

- (SSDatabaseCache)initWithIdentifier:(id)identifier cacheName:(id)name database:(id)database cacheEntryClass:(Class)class
{
  v68[2] = *MEMORY[0x1E69E9840];
  v10 = [(SSDatabaseCache *)self init];
  if (v10)
  {
    if ([identifier length] && objc_msgSend(name, "length"))
    {
      v10->_maximumInlineBlobSize = 1024;
      v10->_identifier = [identifier copy];
      v10->_cacheName = [name copy];
      v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Caches", identifier, name, 0}];
      v12 = [MEMORY[0x1E696AEC0] pathWithComponents:v11];

      v13 = objc_alloc(MEMORY[0x1E695DEC8]);
      v14 = objc_opt_class();
      v15 = [v13 initWithObjects:{NSStringFromClass(v14), identifier, name, 0}];
      v16 = [v15 componentsJoinedByString:@"."];

      v17 = dispatch_queue_create([v16 UTF8String], 0);
      v10->_serialQueue = v17;
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_set_target_queue(v17, global_queue);
      v19 = objc_alloc_init(MEMORY[0x1E696AC08]);
      v60 = 0;
      v20 = *MEMORY[0x1E696A328];
      v67[0] = *MEMORY[0x1E696A360];
      v67[1] = v20;
      v68[0] = @"mobile";
      v68[1] = @"mobile";
      if ([v19 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v68, v67, 2), &v60}])
      {
        v21 = [[SSPersistentCache alloc] initWithIdentifier:identifier cacheName:name];
        v10->_persistentCache = v21;
        if (v21)
        {
          if (database)
          {
            v10->_database = database;
          }

          else
          {
            v39 = [objc_msgSend(v12 stringByAppendingPathComponent:{name), "stringByAppendingPathExtension:", @"db"}];
            v40 = [SSSQLiteDatabase alloc];
            v41 = -[SSSQLiteDatabase initWithDatabaseURL:](v40, "initWithDatabaseURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v39 isDirectory:0]);
            v10->_database = v41;
            if (!v41)
            {
              v45 = +[SSLogConfig sharedStoreServicesConfig];
              if (!v45)
              {
                v45 = +[SSLogConfig sharedConfig];
              }

              shouldLog = [v45 shouldLog];
              if ([v45 shouldLogToDisk])
              {
                v47 = shouldLog | 2;
              }

              else
              {
                v47 = shouldLog;
              }

              if (!os_log_type_enabled([v45 OSLogObject], OS_LOG_TYPE_DEFAULT))
              {
                v47 &= 2u;
              }

              if (v47)
              {
                v48 = objc_opt_class();
                v61 = 138412546;
                v62 = v48;
                v63 = 2112;
                v64 = v39;
                LODWORD(v59) = 22;
                v58 = &v61;
                v49 = _os_log_send_and_compose_impl();
                if (v49)
                {
                  v50 = v49;
                  v51 = [MEMORY[0x1E696AEC0] stringWithCString:v49 encoding:{4, &v61, v59}];
                  free(v50);
                  SSFileLog(v45, @"%@", v52, v53, v54, v55, v56, v57, v51);
                }
              }
            }
          }

          if (!class)
          {
            class = objc_opt_class();
          }

          v10->_cacheEntryClass = class;
          if ([(SSDatabaseCache *)v10 _setupDatabase])
          {
            goto LABEL_30;
          }

          v22 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v43 = shouldLog2 | 2;
          }

          else
          {
            v43 = shouldLog2;
          }

          if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v43 &= 2u;
          }

          if (!v43)
          {
LABEL_29:

            v10 = 0;
LABEL_30:

            return v10;
          }

          v44 = objc_opt_class();
          v61 = 138412290;
          v62 = v44;
          LODWORD(v59) = 12;
        }

        else
        {
          v22 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = +[SSLogConfig sharedConfig];
          }

          shouldLog3 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v27 = shouldLog3 | 2;
          }

          else
          {
            v27 = shouldLog3;
          }

          if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v27 &= 2u;
          }

          if (!v27)
          {
            goto LABEL_29;
          }

          v28 = objc_opt_class();
          v61 = 138412546;
          v62 = v28;
          v63 = 2112;
          v64 = v12;
          LODWORD(v59) = 22;
        }
      }

      else
      {
        v22 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v22)
        {
          v22 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          v24 = shouldLog4 | 2;
        }

        else
        {
          v24 = shouldLog4;
        }

        if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v24 &= 2u;
        }

        if (!v24)
        {
          goto LABEL_29;
        }

        v25 = objc_opt_class();
        v61 = 138412802;
        v62 = v25;
        v63 = 2112;
        v64 = v12;
        v65 = 2112;
        v66 = v60;
        LODWORD(v59) = 32;
      }

      v29 = _os_log_send_and_compose_impl();
      if (v29)
      {
        v30 = v29;
        v31 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v61, v59}];
        free(v30);
        SSFileLog(v22, @"%@", v32, v33, v34, v35, v36, v37, v31);
      }

      goto LABEL_29;
    }

    return 0;
  }

  return v10;
}

- (SSDatabaseCache)initWithIdentifier:(id)identifier cacheName:(id)name
{
  v7 = objc_opt_class();

  return [(SSDatabaseCache *)self initWithIdentifier:identifier cacheName:name database:0 cacheEntryClass:v7];
}

- (void)dealloc
{
  serialQueue = self->_serialQueue;
  if (serialQueue)
  {
    dispatch_release(serialQueue);
  }

  v4.receiver = self;
  v4.super_class = SSDatabaseCache;
  [(SSDatabaseCache *)&v4 dealloc];
}

- (BOOL)_setupDatabase
{
  databaseTable = [(objc_class *)self->_cacheEntryClass databaseTable];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (pid INTEGER, lookup_key TEXT, data_blob BLOB, data_size INTEGER, date_inserted INTEGER, date_expired INTEGER, date_retired INTEGER, user_info TEXT, PRIMARY KEY (pid));", databaseTable];
  if (!-[SSSQLiteDatabase executeSQL:](self->_database, "executeSQL:", @"PRAGMA legacy_file_format = 0;") || !-[SSSQLiteDatabase executeSQL:](self->_database, "executeSQL:", v4) || !-[SSSQLiteDatabase executeSQL:](self->_database, "executeSQL:", @"PRAGMA journal_mode=WAL;") || !-[SSSQLiteDatabase executeSQL:](self->_database, "executeSQL:", [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@_lookup_key ON %@ (lookup_key);", databaseTable, databaseTable]) || !-[SSSQLiteDatabase executeSQL:](self->_database, "executeSQL:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE INDEX IF NOT EXISTS %@_date_inserted ON %@ (date_inserted);", databaseTable, databaseTable)) || !-[SSSQLiteDatabase executeSQL:](self->_database, "executeSQL:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE INDEX IF NOT EXISTS %@_date_expired ON %@ (date_expired);", databaseTable, databaseTable)) || !-[SSSQLiteDatabase executeSQL:](self->_database, "executeSQL:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE INDEX IF NOT EXISTS %@_date_retired ON %@ (date_retired);", databaseTable, databaseTable)))
  {
    return 0;
  }

  database = self->_database;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@_date_user_info ON %@ (user_info);", databaseTable, databaseTable];

  return [(SSSQLiteDatabase *)database executeSQL:v6];
}

- (id)statistics
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = SSDatabaseCacheEntryDataBlobSize;
  databaseTable = [(objc_class *)self->_cacheEntryClass databaseTable];
  sSDatabaseCacheEntryDateRetired = [v7 initWithFormat:@"SELECT SUM(%@), COUNT(*) FROM %@ WHERE %@ <= ?;", v8, databaseTable, SSDatabaseCacheEntryDateRetired];
  database = self->_database;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __29__SSDatabaseCache_statistics__block_invoke;
  v25[3] = &unk_1E84B31F0;
  v25[5] = v3;
  v25[6] = v5;
  v25[4] = self;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:sSDatabaseCacheEntryDateRetired cache:1 usingBlock:v25];

  objc_autoreleasePoolPop(v6);
  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = SSDatabaseCacheEntryDataBlobSize;
  databaseTable2 = [(objc_class *)self->_cacheEntryClass databaseTable];
  sSDatabaseCacheEntryDateExpired = [v13 initWithFormat:@"SELECT SUM(%@), COUNT(*) FROM %@ WHERE %@ <= ?;", v14, databaseTable2, SSDatabaseCacheEntryDateExpired];
  v17 = self->_database;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __29__SSDatabaseCache_statistics__block_invoke_2;
  v24[3] = &unk_1E84B31F0;
  v24[5] = v3;
  v24[6] = v5;
  v24[4] = self;
  [(SSSQLiteDatabase *)v17 prepareStatementForSQL:sSDatabaseCacheEntryDateExpired cache:1 usingBlock:v24];

  objc_autoreleasePoolPop(v12);
  v18 = objc_autoreleasePoolPush();
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20 = [v19 initWithFormat:@"SELECT SUM(%@), COUNT(*) FROM %@;", SSDatabaseCacheEntryDataBlobSize, -[objc_class databaseTable](self->_cacheEntryClass, "databaseTable")];
  v21 = self->_database;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __29__SSDatabaseCache_statistics__block_invoke_3;
  v23[3] = &unk_1E84B3218;
  v23[4] = self;
  v23[5] = v3;
  [(SSSQLiteDatabase *)v21 prepareStatementForSQL:v20 cache:1 usingBlock:v23];

  objc_autoreleasePoolPop(v18);
  return v3;
}

uint64_t __29__SSDatabaseCache_statistics__block_invoke(void *a1, sqlite3_stmt *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  sqlite3_bind_int64(a2, 1, a1[6]);
  result = [*(a1[4] + 56) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      if (sqlite3_column_type(a2, 0) == 1)
      {
        v5 = sqlite3_column_int64(a2, 0);
      }

      else
      {
        v5 = 0;
      }

      if (sqlite3_column_type(a2, 1) == 1)
      {
        v6 = sqlite3_column_int64(a2, 1);
      }

      else
      {
        v6 = 0;
      }

      v7 = a1[5];
      v9[0] = @"count";
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
      v9[1] = @"bytes";
      v10[0] = v8;
      v10[1] = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
      [v7 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v10, v9, 2), @"retired"}];
      result = [*(a1[4] + 56) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t __29__SSDatabaseCache_statistics__block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  sqlite3_bind_int64(a2, 1, a1[6]);
  result = [*(a1[4] + 56) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      if (sqlite3_column_type(a2, 0) == 1)
      {
        v5 = sqlite3_column_int64(a2, 0);
      }

      else
      {
        v5 = 0;
      }

      if (sqlite3_column_type(a2, 1) == 1)
      {
        v6 = sqlite3_column_int64(a2, 1);
      }

      else
      {
        v6 = 0;
      }

      v7 = a1[5];
      v9[0] = @"count";
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
      v9[1] = @"bytes";
      v10[0] = v8;
      v10[1] = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
      [v7 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v10, v9, 2), @"expired"}];
      result = [*(a1[4] + 56) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t __29__SSDatabaseCache_statistics__block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 56) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      if (sqlite3_column_type(a2, 0) == 1)
      {
        v5 = sqlite3_column_int64(a2, 0);
      }

      else
      {
        v5 = 0;
      }

      if (sqlite3_column_type(a2, 1) == 1)
      {
        v6 = sqlite3_column_int64(a2, 1);
      }

      else
      {
        v6 = 0;
      }

      v7 = *(a1 + 40);
      v9[0] = @"count";
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
      v9[1] = @"bytes";
      v10[0] = v8;
      v10[1] = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
      [v7 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v10, v9, 2), @"total"}];
      result = [*(*(a1 + 32) + 56) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

- (void)clear
{
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"DELETE FROM %@", -[objc_class databaseTable](self->_cacheEntryClass, "databaseTable")];
  database = self->_database;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__SSDatabaseCache_clear__block_invoke;
  v6[3] = &unk_1E84B3240;
  v6[4] = self;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v4 cache:0 usingBlock:v6];

  objc_autoreleasePoolPop(v3);
}

uint64_t __24__SSDatabaseCache_clear__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 56) statementDidFinishAfterStepping:a2];
  if (result)
  {
    v4 = *(*(a1 + 32) + 48);

    return [v4 clear];
  }

  return result;
}

- (void)clearCacheForLookupKey:(id)key
{
  if ([key length])
  {
    [(SSPersistentCache *)self->_persistentCache removeDataForKey:key];
    v5 = [(SSDatabaseCache *)self cacheEntryForLookupKey:key];

    [v5 deleteFromDatabase];
  }
}

- (int)clearRetiredData
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_autoreleasePoolPush();
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = SSDatabaseCacheEntryLookupKey;
  v10 = SSDatabaseCacheEntryDataBlob;
  databaseTable = [(objc_class *)self->_cacheEntryClass databaseTable];
  sSDatabaseCacheEntryDateRetired = [v8 initWithFormat:@"SELECT %@, LENGTH(HEX(%@)) FROM %@ WHERE %@ <= ?;", v9, v10, databaseTable, SSDatabaseCacheEntryDateRetired];
  database = self->_database;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__SSDatabaseCache_clearRetiredData__block_invoke;
  v38[3] = &unk_1E84B3268;
  v38[4] = self;
  v38[5] = v3;
  v38[6] = v4;
  v38[7] = v7;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:sSDatabaseCacheEntryDateRetired cache:1 usingBlock:v38];

  objc_autoreleasePoolPop(v5);
  v14 = objc_autoreleasePoolPush();
  if ([v4 count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        v18 = 0;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v4);
          }

          [(SSPersistentCache *)self->_persistentCache removeDataForKey:*(*(&v34 + 1) + 8 * v18++)];
        }

        while (v16 != v18);
        v16 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v16);
    }
  }

  objc_autoreleasePoolPop(v14);
  v19 = [v3 count];
  v20 = objc_autoreleasePoolPush();
  if ([v3 count])
  {
    v21 = objc_alloc(MEMORY[0x1E696AD60]);
    databaseTable2 = [(objc_class *)self->_cacheEntryClass databaseTable];
    v23 = objc_msgSend(v21, "initWithFormat:", @"DELETE FROM %@ WHERE %@ IN(?"), databaseTable2, SSDatabaseCacheEntryLookupKey;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = [v3 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      while (1)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v3);
        }

        [v23 appendString:{@", ?"}];
        if (!--v25)
        {
          v25 = [v3 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    [v23 appendString:@";"]);
    v27 = self->_database;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __35__SSDatabaseCache_clearRetiredData__block_invoke_2;
    v29[3] = &unk_1E84B3218;
    v29[4] = v3;
    v29[5] = self;
    [(SSSQLiteDatabase *)v27 prepareStatementForSQL:v23 cache:1 usingBlock:v29];
  }

  objc_autoreleasePoolPop(v20);
  return v19;
}

uint64_t __35__SSDatabaseCache_clearRetiredData__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  result = [*(*(a1 + 32) + 56) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      if (sqlite3_column_type(a2, 0) == 3)
      {
        v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(a2, 0)}];
        [*(a1 + 40) addObject:v5];
        if (sqlite3_column_type(a2, 1) == 1 && !sqlite3_column_int64(a2, 1))
        {
          [*(a1 + 48) addObject:v5];
        }
      }

      result = [*(*(a1 + 32) + 56) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t __35__SSDatabaseCache_clearRetiredData__block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  sqlite3_bind_int64(a2, 1, 0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        sqlite3_bind_text(a2, v10, [*(*(&v12 + 1) + 8 * v9) UTF8String], objc_msgSend(*(*(&v12 + 1) + 8 * v9), "length"), 0);
        ++v9;
        ++v10;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return [*(*(a1 + 40) + 56) statementDidFinishAfterStepping:a2];
}

- (id)cacheEntryForLookupKey:(id)key
{
  v4 = [objc_alloc(self->_cacheEntryClass) initWithLookupKey:key inDatabase:self->_database];
  [v4 setPersistentCache:self->_persistentCache];
  return v4;
}

- (id)setData:(id)data expiring:(double)expiring retiring:(double)retiring lookupKey:(id)key userInfo:(id)info
{
  v68 = *MEMORY[0x1E69E9840];
  v13 = objc_autoreleasePoolPush();
  v14 = [data length];
  if (v14 && (v15 = v14, [key length]))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v17 = v16;
    v18 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
    maximumInlineBlobSize = [(SSDatabaseCache *)self maximumInlineBlobSize];
    dataCopy = data;
    v61 = maximumInlineBlobSize;
    if (v15 > maximumInlineBlobSize)
    {
      dataCopy = [MEMORY[0x1E695DFB0] null];
    }

    [v18 setObject:dataCopy forKey:SSDatabaseCacheEntryDataBlob];
    if (info)
    {
      v21 = SSDatabaseCacheEntryUserInfo;
      v22 = v18;
      infoCopy = info;
    }

    else
    {
      infoCopy = [MEMORY[0x1E695DFB0] null];
      v21 = SSDatabaseCacheEntryUserInfo;
      v22 = v18;
    }

    [v22 setObject:infoCopy forKey:v21];
    [v18 setObject:key forKey:SSDatabaseCacheEntryLookupKey];
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    [v18 setObject:v26 forKey:SSDatabaseCacheEntryDataBlobSize];
    v27 = [MEMORY[0x1E696AD98] numberWithLongLong:v17];
    [v18 setObject:v27 forKey:SSDatabaseCacheEntryDateInserted];
    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:expiring];
    [v18 setObject:v28 forKey:SSDatabaseCacheEntryDateExpired];
    v29 = [MEMORY[0x1E696AD98] numberWithLongLong:retiring];
    [v18 setObject:v29 forKey:SSDatabaseCacheEntryDateRetired];
    v30 = [(SSDatabaseCache *)self cacheEntryForLookupKey:key];
    if (v30)
    {
      v24 = v30;
      v31 = [v30 setValuesWithDictionary:v18];
    }

    else
    {
      v24 = [objc_alloc(self->_cacheEntryClass) initWithPropertyValues:v18 inDatabase:self->_database];
      v31 = v24 != 0;
    }

    v32 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v34 = shouldLog | 2;
    }

    else
    {
      v34 = shouldLog;
    }

    if (os_log_type_enabled([v32 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 & 2;
    }

    if (v35)
    {
      v62 = 138413058;
      v63 = v24;
      v64 = 1024;
      *v65 = v31;
      *&v65[4] = 1024;
      *&v65[6] = v15 > v61;
      v66 = 2112;
      keyCopy = key;
      LODWORD(v60) = 34;
      v59 = &v62;
      v36 = _os_log_send_and_compose_impl();
      if (v36)
      {
        v37 = v36;
        v38 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:{4, &v62, v60}];
        free(v37);
        SSFileLog(v32, @"%@", v39, v40, v41, v42, v43, v44, v38);
      }
    }

    if (v31)
    {
      persistentCache = self->_persistentCache;
      if (v15 <= v61)
      {
        [(SSPersistentCache *)persistentCache removeDataForKey:key];
      }

      else
      {
        [(SSPersistentCache *)persistentCache setData:data forKey:key];
      }
    }

    else
    {
      v46 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v46)
      {
        v46 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v46 shouldLog];
      if ([v46 shouldLogToDisk])
      {
        v48 = shouldLog2 | 2;
      }

      else
      {
        v48 = shouldLog2;
      }

      if (!os_log_type_enabled([v46 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v48 &= 2u;
      }

      if (v48)
      {
        v49 = objc_opt_class();
        v62 = 138412546;
        v63 = v49;
        v64 = 2112;
        *v65 = key;
        LODWORD(v60) = 22;
        v50 = _os_log_send_and_compose_impl();
        if (v50)
        {
          v51 = v50;
          v52 = [MEMORY[0x1E696AEC0] stringWithCString:v50 encoding:{4, &v62, v60}];
          free(v51);
          SSFileLog(v46, @"%@", v53, v54, v55, v56, v57, v58, v52);
        }
      }
    }
  }

  else
  {
    v24 = 0;
  }

  objc_autoreleasePoolPop(v13);
  return v24;
}

- (id)cacheEntryProperties:(id)properties forLookupKeys:(id)keys
{
  array = [MEMORY[0x1E695DF70] array];
  database = self->_database;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__SSDatabaseCache_cacheEntryProperties_forLookupKeys___block_invoke;
  v10[3] = &unk_1E84B3290;
  v10[4] = keys;
  v10[5] = self;
  v10[6] = properties;
  v10[7] = array;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v10];
  return array;
}

uint64_t __54__SSDatabaseCache_cacheEntryProperties_forLookupKeys___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [SSSQLiteCompoundPredicate predicateWithProperty:SSDatabaseCacheEntryLookupKey values:*(a1 + 32) comparisonType:1];
  v4 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [(SSSQLiteQueryDescriptor *)v4 setEntityClass:*(*(a1 + 40) + 64)];
  [(SSSQLiteQueryDescriptor *)v4 setPredicate:v3];
  -[SSSQLiteQueryDescriptor setOrderingProperties:](v4, "setOrderingProperties:", [MEMORY[0x1E695DEC8] arrayWithObject:SSDatabaseCacheEntryDateInserted]);
  -[SSSQLiteQueryDescriptor setOrderingDirections:](v4, "setOrderingDirections:", [MEMORY[0x1E695DEC8] arrayWithObject:@"DESC"]);
  v5 = [[SSSQLiteQuery alloc] initWithDatabase:*(*(a1 + 40) + 56) descriptor:v4];
  memset(v11, 0, sizeof(v11));
  v6 = [*(a1 + 48) count];
  v7 = v6;
  v8 = v11;
  if (v6 >= 0xB)
  {
    v8 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  }

  [*(a1 + 48) getObjects:v8 range:{0, v7}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__SSDatabaseCache_cacheEntryProperties_forLookupKeys___block_invoke_2;
  v10[3] = &unk_1E84B2F78;
  v10[5] = v7;
  v10[6] = v8;
  v10[4] = *(a1 + 56);
  [(SSSQLiteQuery *)v5 enumeratePersistentIDsAndProperties:v8 count:v7 usingBlock:v10];
  if (v8 != v11)
  {
    free(v8);
  }

  objc_autoreleasePoolPop(v2);
  return 1;
}

void __54__SSDatabaseCache_cacheEntryProperties_forLookupKeys___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(a1 + 40)];
  v7 = *(a1 + 40);
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = *(a3 + 8 * i);
      if (v9)
      {
        [v6 setObject:v9 forKey:*(*(a1 + 48) + 8 * i)];
        v7 = *(a1 + 40);
      }
    }
  }

  if ([v6 count])
  {
    [*(a1 + 32) addObject:v6];
  }

  objc_autoreleasePoolPop(v5);
}

@end