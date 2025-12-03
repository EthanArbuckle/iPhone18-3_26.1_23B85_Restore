@interface WBSSQLiteDatabase
+ (id)_errorWithErrorCode:(int)code userInfo:(id)info;
+ (id)writeAheadLogSharedMemoryURLForDatabaseURL:(id)l;
+ (id)writeAheadLogURLForDatabaseURL:(id)l;
- (BOOL)_openWithFlags:(int)flags useLock:(BOOL)lock vfs:(id)vfs error:(id *)error;
- (BOOL)executeQuery:(id)query error:(id *)error;
- (BOOL)openWithAccessType:(int64_t)type protectionType:(int64_t)protectionType vfs:(id)vfs error:(id *)error;
- (BOOL)reportErrorWithCode:(int)code query:(id)query error:(id *)error;
- (BOOL)tryToPerformTransactionInBlock:(id)block;
- (NSString)lastErrorMessage;
- (WBSSQLiteDatabase)initWithURL:(id)l queue:(id)queue;
- (WBSSQLiteDatabaseDelegate)delegate;
- (id)checkIntegrity;
- (id)fetchQuery:(id)query;
- (id)fetchQuery:(id)query stringArguments:(id)arguments;
- (id)lastErrorWithMethodName:(const char *)name;
- (int)checkpointWriteAheadLogWithLogFrameCount:(int *)count checkpointedFrameCount:(int *)frameCount;
- (int)close;
- (void)_reportSevereError:(id)error;
- (void)close;
- (void)dealloc;
@end

@implementation WBSSQLiteDatabase

- (id)checkIntegrity
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  *buf = &v15;
  v3 = SafariShared::WBSSQLiteDatabaseEnumerate<std::tuple<NSString * {__strong}&>>(self, &v14, @"PRAGMA integrity_check(128)", buf);
  v4 = v14;
  if (v3)
  {
    if ([v15 isEqualToString:@"ok"])
    {
      v5 = v4;
      v4 = 0;
      goto LABEL_10;
    }

    v9 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WBSSQLiteDatabase *)self url];
      [(WBSSQLiteDatabase(Extras) *)v10 checkIntegrity:buf];
    }

    v13 = v4;
    [(WBSSQLiteDatabase *)self reportErrorWithCode:11 query:0 error:&v13];
    v6 = v4;
    v4 = v13;
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WBSSQLiteDatabase *)self url];
      safari_privacyPreservingDescription = [v4 safari_privacyPreservingDescription];
      *buf = 138412802;
      *&buf[4] = v7;
      v17 = 2114;
      v18 = safari_privacyPreservingDescription;
      v19 = 2112;
      v20 = v15;
      _os_log_error_impl(&dword_1B8447000, v6, OS_LOG_TYPE_ERROR, "Failed database integrity check on %@: %{public}@: %@", buf, 0x20u);
    }
  }

  v5 = 0;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int)close
{
  v10 = *MEMORY[0x1E69E9840];
  SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler(v8, &cfstr_Wbssqlitedatab.isa);
  v3 = sqlite3_close_v2(self->_handle);
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      lastErrorMessage = [(WBSSQLiteDatabase *)self lastErrorMessage];
      [(WBSSQLiteDatabase *)lastErrorMessage close];
    }
  }

  else
  {
    self->_handle = 0;
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v8);
  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WBSSQLiteDatabase;
  [(WBSSQLiteDatabase *)&v2 dealloc];
}

id __31__WBSSQLiteDatabase_initialize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:v5];
  if (!v7)
  {
    if ([v5 isEqualToString:@"WBSPrivacyPreservingDescription"])
    {
      v7 = errorStringForCode([v4 code]);
    }

    else if ([v5 isEqualToString:*MEMORY[0x1E696A578]])
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = errorStringForCode([v4 code]);
      if (v9)
      {
        [v8 addObject:v9];
      }

      v10 = [v6 safari_stringForKey:@"Message"];
      if (v10)
      {
        [v8 addObject:v10];
      }

      v11 = [v6 safari_stringForKey:@"SQL"];
      if (v11)
      {
        [v8 addObject:v11];
      }

      v7 = [v8 componentsJoinedByString:@": "];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WBSSQLiteDatabase)initWithURL:(id)l queue:(id)queue
{
  lCopy = l;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = WBSSQLiteDatabase;
  v8 = [(WBSSQLiteDatabase *)&v13 init];
  if (v8)
  {
    v9 = [lCopy copy];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_queue, queue);
    v11 = v8;
  }

  return v8;
}

- (BOOL)openWithAccessType:(int64_t)type protectionType:(int64_t)protectionType vfs:(id)vfs error:(id *)error
{
  vfsCopy = vfs;
  v11 = 0x8000;
  v12 = 1;
  if (type > 1)
  {
    if (type == 3)
    {
      v11 = 32774;
    }

    else
    {
      v11 = 0x8000;
    }

    v12 = 1;
    if (type == 2)
    {
      v11 = 32770;
    }
  }

  else
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_11;
      }

      v12 = 0;
    }

    v11 = 32769;
  }

LABEL_11:
  v13 = v11 | 0x300000;
  v14 = v11 | 0x200000;
  if (protectionType == 3)
  {
    v11 |= 0x100000u;
  }

  if (protectionType == 2)
  {
    v11 = v14;
  }

  if (protectionType >= 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = [(WBSSQLiteDatabase *)self _openWithFlags:v15 useLock:v12 vfs:vfsCopy error:error];

  return v16;
}

- (void)_reportSevereError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = qos_class_self();
    v7 = dispatch_get_global_queue(v6, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__WBSSQLiteDatabase__reportSevereError___block_invoke;
    block[3] = &unk_1E7CF0A38;
    v9 = WeakRetained;
    selfCopy = self;
    v11 = errorCopy;
    dispatch_async(v7, block);
  }
}

- (BOOL)reportErrorWithCode:(int)code query:(id)query error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  url = self->_url;
  if (url)
  {
    v12 = [(NSURL *)url copy];
    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A998]];
  }

  if ((code - 100) >= 2)
  {
    if (code)
    {
      v9 = sqlite3_errmsg(self->_handle);
      if (v9)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
        [v10 setObject:v13 forKeyedSubscript:@"Message"];
      }
    }
  }

  if (queryCopy)
  {
    v14 = [queryCopy copy];
    [v10 setObject:v14 forKeyedSubscript:@"SQL"];
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Safari.SQLite" code:code userInfo:v10];
  v16 = v15;
  if (error)
  {
    v17 = v15;
    *error = v16;
  }

  else
  {
    v18 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription = [v16 safari_privacyPreservingDescription];
      [WBSSQLiteDatabase reportErrorWithCode:safari_privacyPreservingDescription query:v22 error:v18];
    }
  }

  if ((code & 0xFFFFFFFE) == 0xA)
  {
    [(WBSSQLiteDatabase *)self _reportSevereError:v16];
  }

  v20 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)executeQuery:(id)query error:(id *)error
{
  queryCopy = query;
  objc_storeStrong(&self->_lastSQLQuery, query);
  ppStmt = 0;
  v8 = sqlite3_prepare_v2(self->_handle, [queryCopy UTF8String], -1, &ppStmt, 0);
  if (v8)
  {
    [(WBSSQLiteDatabase *)self reportErrorWithCode:v8 query:queryCopy error:error];
    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
    }

    v9 = 0;
  }

  else
  {
    v10 = sqlite3_step(ppStmt);
    v9 = v10 == 101 || v10 == 0;
    if (v10 && v10 != 101)
    {
      [(WBSSQLiteDatabase *)self reportErrorWithCode:v10 query:queryCopy error:error];
    }

    sqlite3_finalize(ppStmt);
  }

  return v9;
}

- (id)fetchQuery:(id)query
{
  queryCopy = query;
  objc_storeStrong(&self->_lastSQLQuery, query);
  v6 = SafariShared::WBSSQLiteDatabaseFetch<>(self, queryCopy);

  return v6;
}

- (id)fetchQuery:(id)query stringArguments:(id)arguments
{
  queryCopy = query;
  argumentsCopy = arguments;
  objc_storeStrong(&self->_lastSQLQuery, query);
  v9 = [[WBSSQLiteStatement alloc] initWithDatabase:self query:queryCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__WBSSQLiteDatabase_fetchQuery_stringArguments___block_invoke;
  v13[3] = &unk_1E7CF0CD8;
  v10 = v9;
  v14 = v10;
  [argumentsCopy enumerateObjectsUsingBlock:v13];
  fetch = [(WBSSQLiteStatement *)v10 fetch];

  return fetch;
}

- (int)checkpointWriteAheadLogWithLogFrameCount:(int *)count checkpointedFrameCount:(int *)frameCount
{
  v10[3] = *MEMORY[0x1E69E9840];
  v5 = sqlite3_wal_checkpoint_v2(self->_handle, 0, 2, count, frameCount);
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      lastErrorMessage = [(WBSSQLiteDatabase *)self lastErrorMessage];
      [(WBSSQLiteDatabase *)lastErrorMessage checkpointWriteAheadLogWithLogFrameCount:v10 checkpointedFrameCount:v5];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)lastErrorMessage
{
  v2 = sqlite3_errmsg(self->_handle);
  if (v2)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  return v2;
}

- (id)lastErrorWithMethodName:(const char *)name
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  lastSQLQuery = self->_lastSQLQuery;
  if (lastSQLQuery)
  {
    [dictionary setObject:lastSQLQuery forKeyedSubscript:@"SQL"];
  }

  name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", name];
  [v6 setObject:name forKeyedSubscript:@"MethodName"];

  v9 = [objc_opt_class() _errorWithErrorCode:-[WBSSQLiteDatabase lastErrorCode](self userInfo:{"lastErrorCode"), v6}];

  return v9;
}

- (BOOL)_openWithFlags:(int)flags useLock:(BOOL)lock vfs:(id)vfs error:(id *)error
{
  vfsCopy = vfs;
  p_url = &self->_url;
  url = self->_url;
  v13 = +[WBSSQLiteDatabase inMemoryDatabaseURL];
  v14 = [(NSURL *)url isEqual:v13];

  if (v14)
  {
    v15 = @"file::memory:";
  }

  else
  {
    v16 = *p_url;
    v17 = +[WBSSQLiteDatabase privateOnDiskDatabaseURL];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      v15 = &stru_1F3064D08;
    }

    else
    {
      v19 = MEMORY[0x1E696AEC0];
      path = [*p_url path];
      v15 = [v19 stringWithFormat:@"file:%s", objc_msgSend(path, "fileSystemRepresentation")];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      uRLByDeletingLastPathComponent = [*p_url URLByDeletingLastPathComponent];
      v23 = [defaultManager safari_ensureDirectoryExists:uRLByDeletingLastPathComponent];

      if (!v23)
      {
        if (error)
        {
          v28 = WBS_LOG_CHANNEL_PREFIXSQLite();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [WBSSQLiteDatabase _openWithFlags:v28 useLock:? vfs:? error:?];
          }

          v26 = [objc_opt_class() _errorWithErrorCode:14 userInfo:0];
          goto LABEL_11;
        }

LABEL_17:
        v27 = 0;
        goto LABEL_18;
      }
    }
  }

  if (!lock)
  {
    v24 = [(__CFString *)v15 stringByAppendingString:@"?nolock=1"];

    v15 = v24;
  }

  v25 = sqlite3_open_v2(-[__CFString UTF8String](v15, "UTF8String"), &self->_handle, flags, [vfsCopy UTF8String]);
  if (!v25)
  {
    v27 = 1;
    goto LABEL_18;
  }

  sqlite3_close_v2(self->_handle);
  self->_handle = 0;
  if (!error)
  {
    goto LABEL_17;
  }

  v26 = [objc_opt_class() _errorWithErrorCode:v25 userInfo:0];
LABEL_11:
  v27 = 0;
  *error = v26;
LABEL_18:

  return v27;
}

+ (id)_errorWithErrorCode:(int)code userInfo:(id)info
{
  infoCopy = info;
  if (code)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(code)];
    v7 = [infoCopy mutableCopy];
    [v7 setObject:v6 forKeyedSubscript:@"Message"];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Safari.SQLite" code:code userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)writeAheadLogURLForDatabaseURL:(id)l
{
  v3 = MEMORY[0x1E695DFF8];
  absoluteString = [l absoluteString];
  v5 = [absoluteString stringByAppendingString:@"-wal"];
  v6 = [v3 URLWithString:v5];

  return v6;
}

+ (id)writeAheadLogSharedMemoryURLForDatabaseURL:(id)l
{
  v3 = MEMORY[0x1E695DFF8];
  absoluteString = [l absoluteString];
  v5 = [absoluteString stringByAppendingString:@"-shm"];
  v6 = [v3 URLWithString:v5];

  return v6;
}

- (WBSSQLiteDatabaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)tryToPerformTransactionInBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(WBSSQLiteDatabase *)self handle])
  {
    v19 = 0;
    v5 = [(WBSSQLiteDatabase *)self executeQuery:@"BEGIN TRANSACTION" error:&v19];
    v6 = v19;
    if (v5)
    {
      if (blockCopy[2](blockCopy))
      {
        v17 = v6;
        v7 = [(WBSSQLiteDatabase *)self executeQuery:@"COMMIT TRANSACTION" error:&v17];
        v8 = v17;

        if (v7)
        {
          v9 = 1;
LABEL_17:

          goto LABEL_18;
        }

        v10 = WBS_LOG_CHANNEL_PREFIXSQLite();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          safari_privacyPreservingDescription = [v8 safari_privacyPreservingDescription];
          [(WBSSQLiteDatabase(Extras) *)safari_privacyPreservingDescription tryToPerformTransactionInBlock:v20, v10];
        }
      }

      else
      {
        v18 = v6;
        v12 = [(WBSSQLiteDatabase *)self executeQuery:@"ROLLBACK TRANSACTION" error:&v18];
        v8 = v18;

        if (v12)
        {
          v9 = 0;
          goto LABEL_17;
        }

        v10 = WBS_LOG_CHANNEL_PREFIXSQLite();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          safari_privacyPreservingDescription2 = [v8 safari_privacyPreservingDescription];
          [(WBSSQLiteDatabase(Extras) *)safari_privacyPreservingDescription2 tryToPerformTransactionInBlock:v20, v10];
        }
      }

      v6 = v8;
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXSQLite();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        safari_privacyPreservingDescription3 = [v6 safari_privacyPreservingDescription];
        [(WBSSQLiteDatabase(Extras) *)safari_privacyPreservingDescription3 tryToPerformTransactionInBlock:v20, v10];
      }
    }

    v9 = 0;
    v8 = v6;
    goto LABEL_17;
  }

  v9 = 0;
LABEL_18:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)close
{
  OUTLINED_FUNCTION_0_9(self, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_1B8447000, v5, OS_LOG_TYPE_ERROR, "Failed to close database: %{public}@ (%d)", v4, 0x12u);
}

- (void)reportErrorWithCode:(void *)a1 query:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Unhandled SQLite error: %{public}@", buf, 0xCu);
}

- (void)checkpointWriteAheadLogWithLogFrameCount:(int)a3 checkpointedFrameCount:.cold.1(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_9(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_1B8447000, v5, OS_LOG_TYPE_ERROR, "Failed to checkpoint database write ahead log: %{public}@ (%d)", v4, 0x12u);
}

- (void)_openWithFlags:(uint64_t *)a1 useLock:(NSObject *)a2 vfs:error:.cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138477827;
  v5 = v2;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Unable to create parent folder for database at path: %{private}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end