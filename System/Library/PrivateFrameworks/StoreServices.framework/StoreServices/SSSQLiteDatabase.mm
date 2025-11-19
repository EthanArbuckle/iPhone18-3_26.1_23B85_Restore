@interface SSSQLiteDatabase
+ (BOOL)statementDidFinishAfterStepping:(sqlite3_stmt *)a3;
+ (BOOL)statementHasRowAfterStepping:(sqlite3_stmt *)a3;
+ (void)_stepStatement:(sqlite3_stmt *)a3 hasRow:(BOOL *)a4 didFinish:(BOOL *)a5 isCorrupt:(BOOL *)a6;
- (BOOL)columnName:(id)a3 existsInTable:(id)a4;
- (BOOL)executeSQL:(id)a3;
- (BOOL)setUserVersion:(int64_t)a3 forDatabase:(id)a4;
- (BOOL)statementDidFinishAfterStepping:(sqlite3_stmt *)a3;
- (BOOL)statementHasRowAfterStepping:(sqlite3_stmt *)a3;
- (BOOL)takesTaskCompletionAssertions;
- (SSSQLiteDatabase)initWithDatabaseURL:(id)a3 readOnly:(BOOL)a4 protectionType:(id)a5;
- (id)_openDatabaseIfNotOpen;
- (int)_closeDatabaseIfOpen;
- (int)_openFlags;
- (int)_resetAndReopenDatabaseWithPath:(id)a3;
- (int64_t)countChanges;
- (int64_t)userVersionForDatabase:(id)a3;
- (sqlite3_stmt)_statementForSQL:(id)a3 cache:(BOOL)a4;
- (void)_accessDatabaseUsingBlock:(id)a3;
- (void)_beginTaskCompletionAssertion;
- (void)_endTaskCompletionAssertion;
- (void)_expireBackgroundTask;
- (void)_resetCorruptDatabase;
- (void)_resetDatabaseWithPath:(id)a3;
- (void)accessDatabaseUsingBlock:(id)a3;
- (void)beginTaskCompletionAssertion;
- (void)dealloc;
- (void)dispatchBlockAsync:(id)a3;
- (void)dispatchBlockSync:(id)a3;
- (void)endTaskCompletionAssertion;
- (void)expireBackgroundTask;
- (void)performTransactionWithBlock:(id)a3;
- (void)prepareStatementForSQL:(id)a3 cache:(BOOL)a4 usingBlock:(id)a5;
- (void)setTakesTaskCompletionAssertions:(BOOL)a3;
@end

@implementation SSSQLiteDatabase

- (void)_beginTaskCompletionAssertion
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_takesTaskCompletionAssertions)
  {
    taskAssertionCount = self->_taskAssertionCount;
    if (taskAssertionCount < 1)
    {
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

      if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v20 = 138412290;
        v21 = objc_opt_class();
        LODWORD(v19) = 12;
        v18 = &v20;
        v8 = _os_log_send_and_compose_impl();
        if (v8)
        {
          v9 = v8;
          v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v20, v19}];
          free(v9);
          SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v10);
        }
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.StoreServices.SSSQLiteDatabase.%@", -[NSString lastPathComponent](self->_databasePath, "lastPathComponent", v18)];
      v4 = 1;
      self->_taskAssertion = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:getpid() flags:1 reason:4 name:v17 withHandler:0];
    }

    else
    {
      v4 = taskAssertionCount + 1;
    }

    self->_taskAssertionCount = v4;
  }
}

- (id)_openDatabaseIfNotOpen
{
  v109[1] = *MEMORY[0x1E69E9840];
  p_db = &self->_db;
  if (self->_db)
  {
    return 0;
  }

  protectionType = self->_protectionType;
  if ((!protectionType || ![(NSString *)protectionType isEqualToString:*MEMORY[0x1E696A3A8]]) && !MKBDeviceUnlockedSinceBoot())
  {
    v35 = MEMORY[0x1E696ABC0];
    v108 = @"sqlite_result";
    v109[0] = &unk_1F507A258;
    v36 = MEMORY[0x1E695DF20];
    v37 = v109;
    v38 = &v108;
    return [v35 errorWithDomain:@"SSErrorDomain" code:112 userInfo:{objc_msgSend(v36, "dictionaryWithObjects:forKeys:count:", v37, v38, 1)}];
  }

  v101 = 0;
  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) != 0 || !v101)
  {
    v19 = sqlite3_open_v2([(NSString *)self->_databasePath fileSystemRepresentation], p_db, [(SSSQLiteDatabase *)self _openFlags], 0);
    if (v19)
    {
      v20 = v19;
      if (*p_db)
      {
        sqlite3_close(*p_db);
        *p_db = 0;
      }

      if (v20 == 23)
      {
        v21 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v21)
        {
          v21 = +[SSLogConfig sharedConfig];
        }

        v22 = [v21 shouldLog];
        if ([v21 shouldLogToDisk])
        {
          v22 |= 2u;
        }

        if (os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 2;
        }

        v20 = 23;
        if (v23)
        {
          v24 = objc_opt_class();
          databasePath = self->_databasePath;
          v104 = 138412802;
          v105 = v24;
          v106 = 1024;
          LODWORD(v107[0]) = 23;
          WORD2(v107[0]) = 2112;
          *(v107 + 6) = databasePath;
          LODWORD(v100) = 28;
          v98 = &v104;
          v26 = _os_log_send_and_compose_impl();
          if (v26)
          {
            v27 = v26;
            v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v104, v100}];
            free(v27);
            SSFileLog(v21, @"%@", v29, v30, v31, v32, v33, v34, v28);
            v20 = 23;
          }
        }

        goto LABEL_89;
      }

      readOnly = self->_readOnly;
      v53 = +[SSLogConfig sharedStoreServicesConfig];
      v54 = v53;
      if (readOnly)
      {
        if (!v53)
        {
          v54 = +[SSLogConfig sharedConfig];
        }

        v55 = [v54 shouldLog];
        if ([v54 shouldLogToDisk])
        {
          v56 = v55 | 2;
        }

        else
        {
          v56 = v55;
        }

        if (!os_log_type_enabled([v54 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v56 &= 2u;
        }

        if (v56)
        {
          v57 = objc_opt_class();
          v58 = self->_databasePath;
          v104 = 138412802;
          v105 = v57;
          v106 = 1024;
          LODWORD(v107[0]) = v20;
          WORD2(v107[0]) = 2112;
          *(v107 + 6) = v58;
          LODWORD(v100) = 28;
          v98 = &v104;
          v59 = _os_log_send_and_compose_impl();
          if (v59)
          {
            v60 = v59;
            v61 = [MEMORY[0x1E696AEC0] stringWithCString:v59 encoding:{4, &v104, v100}];
            free(v60);
            SSFileLog(v54, @"%@", v62, v63, v64, v65, v66, v67, v61);
          }
        }

        goto LABEL_89;
      }

      if (!v53)
      {
        v54 = +[SSLogConfig sharedConfig];
      }

      v68 = [v54 shouldLog];
      if ([v54 shouldLogToDisk])
      {
        v69 = v68 | 2;
      }

      else
      {
        v69 = v68;
      }

      if (!os_log_type_enabled([v54 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v69 &= 2u;
      }

      if (v69)
      {
        v70 = objc_opt_class();
        v71 = self->_databasePath;
        v104 = 138412802;
        v105 = v70;
        v106 = 1024;
        LODWORD(v107[0]) = v20;
        WORD2(v107[0]) = 2112;
        *(v107 + 6) = v71;
        LODWORD(v100) = 28;
        v98 = &v104;
        v72 = _os_log_send_and_compose_impl();
        if (v72)
        {
          v73 = v72;
          v74 = [MEMORY[0x1E696AEC0] stringWithCString:v72 encoding:{4, &v104, v100}];
          free(v73);
          SSFileLog(v54, @"%@", v75, v76, v77, v78, v79, v80, v74);
        }
      }

      v20 = [(SSSQLiteDatabase *)self _resetAndReopenDatabaseWithPath:self->_databasePath, v98];
    }

    else
    {
      if (!self->_readOnly && self->_setupBlock)
      {
        v39 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v39)
        {
          v39 = +[SSLogConfig sharedConfig];
        }

        v40 = [v39 shouldLog];
        if ([v39 shouldLogToDisk])
        {
          v41 = v40 | 2;
        }

        else
        {
          v41 = v40;
        }

        if (os_log_type_enabled([v39 OSLogObject], OS_LOG_TYPE_DEBUG))
        {
          v42 = v41;
        }

        else
        {
          v42 = v41 & 2;
        }

        if (v42)
        {
          LOWORD(v104) = 0;
          LODWORD(v100) = 2;
          v98 = &v104;
          v43 = _os_log_send_and_compose_impl();
          if (v43)
          {
            v44 = v43;
            v45 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, &v104, v100}];
            free(v44);
            SSFileLog(v39, @"%@", v46, v47, v48, v49, v50, v51, v45);
          }
        }

        (*(self->_setupBlock + 2))();
      }

      v20 = 0;
    }

    if (self->_readOnly || v20)
    {
      if (v20)
      {
LABEL_89:
        v35 = MEMORY[0x1E696ABC0];
        v102 = @"sqlite_result";
        v103 = [MEMORY[0x1E696AD98] numberWithInt:{v20, v98}];
        v36 = MEMORY[0x1E695DF20];
        v37 = &v103;
        v38 = &v102;
        return [v35 errorWithDomain:@"SSErrorDomain" code:112 userInfo:{objc_msgSend(v36, "dictionaryWithObjects:forKeys:count:", v37, v38, 1)}];
      }
    }

    else
    {
      v81 = sqlite3_exec(*p_db, "PRAGMA cache_size=512;", 0, 0, 0);
      v82 = v81;
      if (v81 == 26 || v81 == 11)
      {
        v83 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v83)
        {
          v83 = +[SSLogConfig sharedConfig];
        }

        v84 = [v83 shouldLog];
        if ([v83 shouldLogToDisk])
        {
          v85 = v84 | 2;
        }

        else
        {
          v85 = v84;
        }

        if (!os_log_type_enabled([v83 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v85 &= 2u;
        }

        if (v85)
        {
          v86 = objc_opt_class();
          v87 = self->_databasePath;
          v104 = 138412802;
          v105 = v86;
          v106 = 1024;
          LODWORD(v107[0]) = v82;
          WORD2(v107[0]) = 2112;
          *(v107 + 6) = v87;
          LODWORD(v100) = 28;
          v99 = &v104;
          v88 = _os_log_send_and_compose_impl();
          if (v88)
          {
            v89 = v88;
            v90 = [MEMORY[0x1E696AEC0] stringWithCString:v88 encoding:{4, &v104, v100}];
            free(v89);
            SSFileLog(v83, @"%@", v91, v92, v93, v94, v95, v96, v90);
          }
        }

        v20 = [(SSSQLiteDatabase *)self _resetAndReopenDatabaseWithPath:self->_databasePath, v99];
        db = self->_db;
        if (v20)
        {
          if (db)
          {
            sqlite3_close(db);
            *p_db = 0;
          }

          goto LABEL_89;
        }

        sqlite3_exec(db, "PRAGMA cache_size=512;", 0, 0, 0);
      }
    }

    sqlite3_busy_timeout(*p_db, 3600000);
    return 0;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    v104 = 138412546;
    v105 = v9;
    v106 = 2112;
    v107[0] = v101;
    LODWORD(v100) = 22;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v104, v100}];
      free(v11);
      SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v12);
    }
  }

  return v101;
}

- (void)_endTaskCompletionAssertion
{
  if (self->_takesTaskCompletionAssertions)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = dispatch_time(0, 5000000000);
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__SSSQLiteDatabase__endTaskCompletionAssertion__block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = self;
    dispatch_after(v5, dispatchQueue, block);
  }
}

- (SSSQLiteDatabase)initWithDatabaseURL:(id)a3 readOnly:(BOOL)a4 protectionType:(id)a5
{
  v6 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v9 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v29 = 138413058;
    v30 = objc_opt_class();
    v31 = 2114;
    v32 = [a3 path];
    v33 = 1024;
    v34 = v6;
    v35 = 2112;
    v36 = a5;
    LODWORD(v27) = 38;
    v26 = &v29;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v29, v27}];
      free(v13);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, v14);
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid database URL"];
    self = 0;
  }

  v28.receiver = self;
  v28.super_class = SSSQLiteDatabase;
  v21 = [(SSSQLiteDatabase *)&v28 init];
  if (v21)
  {
    v22 = NSClassFromString(&cfstr_Uiapplication.isa);
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStore.SSSQLiteDatabase.%p", v21];
    v24 = dispatch_queue_create([v23 UTF8String], 0);
    v21->_dispatchQueue = v24;
    dispatch_queue_set_specific(v24, "_ISSQLiteDispatchQueueTag", 1, 0);

    v21->_databasePath = [a3 path];
    v21->_readOnly = v6;
    v21->_protectionType = a5;
    if (__TakesTaskCompletionAssertions == 1)
    {
      if (!v22)
      {
        v21->_takesTaskCompletionAssertions = 0;
        return v21;
      }

      v21->_takesTaskCompletionAssertions = 1;
      goto LABEL_18;
    }

    if (v21->_takesTaskCompletionAssertions)
    {
LABEL_18:
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }

  return v21;
}

- (void)dealloc
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(SSSQLiteDatabase *)self _closeDatabaseIfOpen];
  if (v3)
  {
    v4 = v3;
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v22 = 138412802;
      v23 = objc_opt_class();
      v24 = 1024;
      v25 = v4;
      v26 = 2080;
      v27 = sqlite3_errstr(v4);
      LODWORD(v20) = 28;
      v19 = &v22;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v22, v20}];
        free(v9);
        SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_queue_set_specific(dispatchQueue, "_ISSQLiteDispatchQueueTag", 0, 0);
    dispatch_release(self->_dispatchQueue);
    self->_dispatchQueue = 0;
  }

  taskAssertion = self->_taskAssertion;
  if (taskAssertion)
  {
    [(BKSProcessAssertion *)taskAssertion invalidate];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];

  v21.receiver = self;
  v21.super_class = SSSQLiteDatabase;
  [(SSSQLiteDatabase *)&v21 dealloc];
}

+ (BOOL)statementDidFinishAfterStepping:(sqlite3_stmt *)a3
{
  v4 = 0;
  [a1 _stepStatement:a3 hasRow:0 didFinish:&v4 isCorrupt:0];
  return v4;
}

+ (BOOL)statementHasRowAfterStepping:(sqlite3_stmt *)a3
{
  v4 = 0;
  [a1 _stepStatement:a3 hasRow:&v4 didFinish:0 isCorrupt:0];
  return v4;
}

- (void)accessDatabaseUsingBlock:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__SSSQLiteDatabase_accessDatabaseUsingBlock___block_invoke;
  v3[3] = &unk_1E84AC738;
  v3[4] = self;
  v3[5] = a3;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v3];
}

- (BOOL)columnName:(id)a3 existsInTable:(id)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA table_info(%@);", a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SSSQLiteDatabase_columnName_existsInTable___block_invoke;
  v8[3] = &unk_1E84B1E40;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = &v9;
  [(SSSQLiteDatabase *)self prepareStatementForSQL:v6 cache:0 usingBlock:v8];
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return self;
}

void __45__SSSQLiteDatabase_columnName_existsInTable___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) statementHasRowAfterStepping:a2])
  {
    while (1)
    {
      if (sqlite3_column_type(a2, 1) == 3)
      {
        v5 = sqlite3_column_text(a2, 1);
        if (v5)
        {
          if (*v5 && [objc_msgSend(MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4), "isEqualToString:", *(a1 + 40)}])
          {
            break;
          }
        }
      }

      if (([*(a1 + 32) statementHasRowAfterStepping:a2] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_7:

  objc_autoreleasePoolPop(v4);
}

- (int64_t)countChanges
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__SSSQLiteDatabase_countChanges__block_invoke;
  v4[3] = &unk_1E84AC698;
  v4[4] = self;
  v4[5] = &v5;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __32__SSSQLiteDatabase_countChanges__block_invoke(uint64_t a1)
{
  result = sqlite3_changes(*(*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dispatchBlockAsync:(id)a3
{
  if (dispatch_get_specific("_ISSQLiteDispatchQueueTag") == 1)
  {
    v6 = *(a3 + 2);

    v6(a3);
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;

    dispatch_async(dispatchQueue, a3);
  }
}

- (void)dispatchBlockSync:(id)a3
{
  if (dispatch_get_specific("_ISSQLiteDispatchQueueTag") == 1)
  {
    v6 = *(a3 + 2);

    v6(a3);
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;

    dispatch_sync(dispatchQueue, a3);
  }
}

- (BOOL)executeSQL:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SSSQLiteDatabase_executeSQL___block_invoke;
  v5[3] = &unk_1E84AC7B0;
  v5[4] = a3;
  v5[5] = self;
  v5[6] = &v6;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__SSSQLiteDatabase_executeSQL___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) UTF8String];
  v3 = 0;
  do
  {
    errmsg = 0;
    v4 = sqlite3_exec(*(*(a1 + 40) + 8), v2, 0, 0, &errmsg);
    if (v4)
    {
      v5 = v4;
      v6 = errmsg;
      if (v4 - 5 > 1)
      {
        if (!errmsg)
        {
          v6 = sqlite3_errmsg(*(*(a1 + 40) + 8));
        }

        v21 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v21)
        {
          v21 = +[SSLogConfig sharedConfig];
        }

        v22 = [v21 shouldLog];
        if ([v21 shouldLogToDisk])
        {
          v22 |= 2u;
        }

        if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v22 &= 2u;
        }

        if (v22)
        {
          v23 = objc_opt_class();
          v24 = *(a1 + 32);
          v25 = *(*(a1 + 40) + 24);
          v40 = 138413314;
          v41 = v23;
          v42 = 2112;
          v43 = v24;
          v44 = 2048;
          v45 = v5;
          v46 = 2080;
          v47 = v6;
          v48 = 2112;
          v49 = v25;
          LODWORD(v38) = 52;
          v36 = &v40;
          v26 = _os_log_send_and_compose_impl();
          if (v26)
          {
            v27 = v26;
            v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v40, v38}];
            free(v27);
            SSFileLog(v21, @"%@", v29, v30, v31, v32, v33, v34, v28);
          }
        }

        if (v5 == 26 || v5 == 11)
        {
          [*(a1 + 40) _resetCorruptDatabase];
        }

        v20 = 0;
      }

      else
      {
        if (!errmsg)
        {
          v6 = sqlite3_errmsg(*(*(a1 + 40) + 8));
        }

        v7 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v8 |= 2u;
        }

        if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
        {
          v8 &= 2u;
        }

        if (v8)
        {
          v9 = objc_opt_class();
          v10 = *(*(a1 + 40) + 24);
          v40 = 138413314;
          v41 = v9;
          v42 = 2048;
          v43 = v5;
          v44 = 2048;
          v45 = v3;
          v46 = 2080;
          v47 = v6;
          v48 = 2112;
          v49 = v10;
          LODWORD(v38) = 52;
          v37 = &v40;
          v11 = _os_log_send_and_compose_impl();
          if (v11)
          {
            v12 = v11;
            v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v40, v38}];
            free(v12);
            SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
          }
        }

        [MEMORY[0x1E696AF00] sleepForTimeInterval:{0.5, v37}];
        ++v3;
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (errmsg)
    {
      sqlite3_free(errmsg);
    }
  }

  while ((v20 & 1) != 0);
}

- (void)performTransactionWithBlock:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__SSSQLiteDatabase_performTransactionWithBlock___block_invoke;
  v3[3] = &unk_1E84AF318;
  v3[4] = self;
  v3[5] = a3;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v3];
}

_BYTE *__48__SSSQLiteDatabase_performTransactionWithBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[34];
  if ((v3 & 1) == 0)
  {
    if (result[32])
    {
      v4 = @"BEGIN DEFERRED TRANSACTION;";
    }

    else
    {
      v4 = @"BEGIN IMMEDIATE TRANSACTION;";
    }

    result = [result executeSQL:v4];
    *(*(a1 + 32) + 34) = result;
  }

  if (*(*(a1 + 32) + 34) == 1)
  {
    result = (*(*(a1 + 40) + 16))();
    if ((v3 & 1) == 0)
    {
      if (result)
      {
        result = [*(a1 + 32) executeSQL:@"COMMIT;"];
      }

      else
      {
        result = [*(a1 + 32) executeSQL:@"ROLLBACK;"];
      }

      *(*(a1 + 32) + 34) = 0;
    }
  }

  return result;
}

- (void)prepareStatementForSQL:(id)a3 cache:(BOOL)a4 usingBlock:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__SSSQLiteDatabase_prepareStatementForSQL_cache_usingBlock___block_invoke;
  v5[3] = &unk_1E84B1E68;
  v5[4] = self;
  v5[5] = a3;
  v6 = a4;
  v5[6] = a5;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v5];
}

uint64_t __60__SSSQLiteDatabase_prepareStatementForSQL_cache_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _statementForSQL:*(a1 + 40) cache:*(a1 + 56)];
  result = (*(*(a1 + 48) + 16))();
  if (v3 == *(*(a1 + 32) + 8))
  {
    sqlite3_clear_bindings(v4);
    result = sqlite3_reset(v4);
    if ((*(a1 + 56) & 1) == 0)
    {
      return sqlite3_finalize(v4);
    }
  }

  return result;
}

- (BOOL)setUserVersion:(int64_t)a3 forDatabase:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@.user_version=%ld;", a4, a3];
  v6 = [(SSSQLiteDatabase *)self executeSQL:v5];

  return v6;
}

- (int64_t)userVersionForDatabase:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@.user_version;", a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SSSQLiteDatabase_userVersionForDatabase___block_invoke;
  v7[3] = &unk_1E84B1E90;
  v7[4] = self;
  v7[5] = &v8;
  [(SSSQLiteDatabase *)self prepareStatementForSQL:v4 cache:0 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __43__SSSQLiteDatabase_userVersionForDatabase___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  if ([*(a1 + 32) statementHasRowAfterStepping:a2])
  {
    v4 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 40) + 8) + 24) = [v4 integerValue];
  }
}

- (void)beginTaskCompletionAssertion
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSSQLiteDatabase_beginTaskCompletionAssertion__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)endTaskCompletionAssertion
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SSSQLiteDatabase_endTaskCompletionAssertion__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)expireBackgroundTask
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSSQLiteDatabase_expireBackgroundTask__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)setTakesTaskCompletionAssertions:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SSSQLiteDatabase_setTakesTaskCompletionAssertions___block_invoke;
  v4[3] = &unk_1E84AD498;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (BOOL)statementDidFinishAfterStepping:(sqlite3_stmt *)a3
{
  v6 = 0;
  [objc_opt_class() _stepStatement:a3 hasRow:0 didFinish:&v6 + 1 isCorrupt:&v6];
  if (v6)
  {
    [(SSSQLiteDatabase *)self _resetCorruptDatabase];
    v4 = 0;
  }

  else
  {
    v4 = HIBYTE(v6);
  }

  return v4 & 1;
}

- (BOOL)statementHasRowAfterStepping:(sqlite3_stmt *)a3
{
  v6 = 0;
  [objc_opt_class() _stepStatement:a3 hasRow:&v6 + 1 didFinish:0 isCorrupt:&v6];
  if (v6)
  {
    [(SSSQLiteDatabase *)self _resetCorruptDatabase];
    v4 = 0;
  }

  else
  {
    v4 = HIBYTE(v6);
  }

  return v4 & 1;
}

- (BOOL)takesTaskCompletionAssertions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SSSQLiteDatabase_takesTaskCompletionAssertions__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (void)_stepStatement:(sqlite3_stmt *)a3 hasRow:(BOOL *)a4 didFinish:(BOOL *)a5 isCorrupt:(BOOL *)a6
{
  v38 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    while (1)
    {
      v10 = sqlite3_step(a3);
      if (v10 == 9)
      {
        break;
      }

      if (v10 == 101)
      {
        if (a5)
        {
          *a5 = 1;
        }

        return;
      }

      if (v10 == 100)
      {
        if (a4)
        {
          *a4 = 1;
        }

        return;
      }

      v11 = v10;
      if (v10 - 7 <= 0xFFFFFFFD)
      {
        v12 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v12)
        {
          v12 = +[SSLogConfig sharedConfig];
        }

        v13 = [v12 shouldLog];
        if ([v12 shouldLogToDisk])
        {
          v14 = v13 | 2;
        }

        else
        {
          v14 = v13;
        }

        if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v14 &= 2u;
        }

        if (v14)
        {
          v15 = objc_opt_class();
          v16 = sqlite3_sql(a3);
          v17 = sqlite3_db_handle(a3);
          v30 = 138413058;
          v31 = v15;
          v32 = 2080;
          v33 = v16;
          v34 = 1024;
          v35 = v11;
          v36 = 2080;
          v37 = sqlite3_errmsg(v17);
          LODWORD(v29) = 38;
          v18 = _os_log_send_and_compose_impl();
          if (v18)
          {
            v19 = v18;
            v20 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v30, v29}];
            free(v19);
            SSFileLog(v12, @"%@", v21, v22, v23, v24, v25, v26, v20);
          }
        }

        if (a6)
        {
          v28 = v11 == 11 || v11 == 26;
          *a6 = v28;
        }

        return;
      }

      if (v10 == 6)
      {
        sqlite3_reset(a3);
      }
    }
  }
}

- (void)_accessDatabaseUsingBlock:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SSSQLiteDatabase__accessDatabaseUsingBlock___block_invoke;
  v4[3] = &unk_1E84AF318;
  v4[4] = self;
  v4[5] = a3;
  if (dispatch_get_specific("_ISSQLiteDispatchQueueTag") == 1)
  {
    __46__SSSQLiteDatabase__accessDatabaseUsingBlock___block_invoke(v4);
  }

  else
  {
    dispatch_sync(self->_dispatchQueue, v4);
  }
}

uint64_t __46__SSSQLiteDatabase__accessDatabaseUsingBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _beginTaskCompletionAssertion];
  if ([*(a1 + 32) _openDatabaseIfNotOpen])
  {
    v2 = *(a1 + 32);

    return [v2 _endTaskCompletionAssertion];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    return [*(a1 + 32) _endTaskCompletionAssertion];
  }
}

- (int)_closeDatabaseIfOpen
{
  db = self->_db;
  if (db)
  {
    if (self->_statementCache)
    {
      CFRelease(self->_statementCache);
      self->_statementCache = 0;
      db = self->_db;
    }

    stmt = sqlite3_next_stmt(db, 0);
    if (stmt)
    {
      v5 = stmt;
      do
      {
        sqlite3_finalize(v5);
        v5 = sqlite3_next_stmt(self->_db, v5);
      }

      while (v5);
    }

    LODWORD(db) = sqlite3_close(self->_db);
    if (!db)
    {
      self->_db = 0;
    }
  }

  return db;
}

void __47__SSSQLiteDatabase__endTaskCompletionAssertion__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 80) = v4;
    if (!*(*(a1 + 32) + 80))
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v20 = 138412290;
        v21 = objc_opt_class();
        LODWORD(v19) = 12;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v20, v19}];
          free(v10);
          SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v11);
        }
      }

      v18 = *(*(a1 + 32) + 72);
      if (v18)
      {
        [v18 invalidate];

        *(*(a1 + 32) + 72) = 0;
      }
    }
  }
}

- (void)_expireBackgroundTask
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_takesTaskCompletionAssertions && self->_taskAssertion)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      LODWORD(v16) = 12;
      v15 = &v17;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v17, v16}];
        free(v7);
        SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, v8);
      }
    }

    self->_taskAssertionCount = 0;
    [(BKSProcessAssertion *)self->_taskAssertion invalidate];

    self->_taskAssertion = 0;
  }
}

- (int)_openFlags
{
  if (self->_readOnly)
  {
    v2 = 1;
  }

  else
  {
    v2 = 6;
  }

  protectionType = self->_protectionType;
  if (protectionType)
  {
    if ([(NSString *)self->_protectionType isEqualToString:*MEMORY[0x1E696A3A8]])
    {
      v4 = 0x400000;
    }

    else if ([(NSString *)protectionType isEqualToString:*MEMORY[0x1E696A378]])
    {
      v4 = 0x100000;
    }

    else if ([(NSString *)protectionType isEqualToString:*MEMORY[0x1E696A380]])
    {
      v4 = 0x200000;
    }

    else if ([(NSString *)protectionType isEqualToString:*MEMORY[0x1E696A388]])
    {
      v4 = 3145728;
    }

    else
    {
      v4 = 0;
    }

    return v4 | v2;
  }

  return v2;
}

- (int)_resetAndReopenDatabaseWithPath:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(SSSQLiteDatabase *)self _closeDatabaseIfOpen];
  if (v5)
  {
    v6 = v5;
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v21 = 138412802;
      v22 = objc_opt_class();
      v23 = 1024;
      v24 = v6;
      v25 = 2080;
      v26 = sqlite3_errstr(v6);
      LODWORD(v20) = 28;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v20}];
        free(v11);
        SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  if (self->_readOnly)
  {
    return 1;
  }

  [(SSSQLiteDatabase *)self _resetDatabaseWithPath:a3];
  return sqlite3_open_v2([a3 fileSystemRepresentation], &self->_db, -[SSSQLiteDatabase _openFlags](self, "_openFlags"), 0);
}

- (void)_resetCorruptDatabase
{
  v36 = *MEMORY[0x1E69E9840];
  if (!self->_readOnly)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v6 = objc_opt_class();
      databasePath = self->_databasePath;
      v32 = 138412546;
      v33 = v6;
      v34 = 2112;
      v35 = databasePath;
      LODWORD(v31) = 22;
      v30 = &v32;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v32, v31}];
        free(v9);
        SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }

    [(SSSQLiteDatabase *)self _resetDatabaseWithPath:self->_databasePath, v30];
    [(SSSQLiteDatabase *)self _openDatabaseIfNotOpen];
    if (self->_setupBlock)
    {
      v17 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v17)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      v18 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        v19 = v18 | 2;
      }

      else
      {
        v19 = v18;
      }

      if (os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 2;
      }

      if (v20)
      {
        LOWORD(v32) = 0;
        LODWORD(v31) = 2;
        v21 = _os_log_send_and_compose_impl();
        if (v21)
        {
          v22 = v21;
          v23 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v32, v31}];
          free(v22);
          SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, v23);
        }
      }

      (*(self->_setupBlock + 2))();
    }
  }
}

- (void)_resetDatabaseWithPath:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self->_db)
  {
    goto LABEL_14;
  }

  v5 = CPSqliteDatabaseDelete();
  v6 = [(SSSQLiteDatabase *)self _closeDatabaseIfOpen];
  if (v6)
  {
    v7 = v6;
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v32 = 138412802;
      v33 = objc_opt_class();
      v34 = 1024;
      v35 = v7;
      v36 = 2080;
      v37 = sqlite3_errstr(v7);
      LODWORD(v26) = 28;
      v25 = &v32;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v32, v26}];
        free(v12);
        SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  if ((v5 & 1) == 0)
  {
LABEL_14:
    v20 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = [&unk_1F507A300 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(&unk_1F507A300);
          }

          [v20 removeItemAtPath:objc_msgSend(a3 error:{"stringByAppendingString:", *(*(&v27 + 1) + 8 * i), v25), 0}];
        }

        v22 = [&unk_1F507A300 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v22);
    }
  }
}

- (sqlite3_stmt)_statementForSQL:(id)a3 cache:(BOOL)a4
{
  v4 = a4;
  v40 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  if (!a4 || (v7 = self->_statementCache) == 0 || (ppStmt = CFDictionaryGetValue(v7, a3)) == 0)
  {
    do
    {
      v8 = sqlite3_prepare_v2(self->_db, [a3 UTF8String], objc_msgSend(a3, "length"), &ppStmt, 0);
    }

    while ((v8 - 5) < 2);
    v9 = v8;
    if (v8)
    {
      v10 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v13 = objc_opt_class();
        v14 = sqlite3_errmsg(self->_db);
        databasePath = self->_databasePath;
        v30 = 138413314;
        v31 = v13;
        v32 = 2112;
        v33 = a3;
        v34 = 1024;
        v35 = v9;
        v36 = 2080;
        v37 = v14;
        v38 = 2112;
        v39 = databasePath;
        LODWORD(v28) = 48;
        v27 = &v30;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v17 = v16;
          v18 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v30, v28}];
          free(v17);
          SSFileLog(v10, @"%@", v19, v20, v21, v22, v23, v24, v18);
        }
      }

      if (v9 == 26 || v9 == 11)
      {
        [(SSSQLiteDatabase *)self _resetCorruptDatabase];
      }
    }

    else if (v4)
    {
      statementCache = self->_statementCache;
      if (!statementCache)
      {
        statementCache = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], &kSqlite3StatementDictionaryValueCallbacks);
        self->_statementCache = statementCache;
      }

      CFDictionarySetValue(statementCache, a3, ppStmt);
    }
  }

  return ppStmt;
}

@end