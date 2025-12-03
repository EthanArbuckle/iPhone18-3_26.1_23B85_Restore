@interface PLSQLStatement
- (PLSQLStatement)initWithSQLQuery:(id)query forDatabase:(sqlite3 *)database withDBSem:(id)sem result:(int *)result;
- (id)perform;
- (void)dealloc;
- (void)finalize;
- (void)reset;
@end

@implementation PLSQLStatement

- (id)perform
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  dbSem = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  statement = [(PLSQLStatement *)self statement];
  if (!statement)
  {
    if (+[PLDefaults debugEnabled])
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** invalid statement ***"];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
      lastPathComponent = [v40 lastPathComponent];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLStatement perform]"];
      [PLCoreStorage logMessage:v39 fromFile:lastPathComponent fromFunction:v42 fromLineNumber:95];

      v43 = PLLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    dbSem2 = [(PLSQLStatement *)self dbSem];
    dispatch_semaphore_signal(dbSem2);

    v45 = MEMORY[0x1E695E0F0];
    goto LABEL_59;
  }

  v7 = statement;
  selfCopy = self;
  v8 = sqlite3_column_count(statement);
  v9 = 0;
  v59 = v8;
  v60 = v8;
  v10 = 0x1E8518000uLL;
  v11 = 0x1E696A000uLL;
  v58 = v3;
  while (1)
  {
    while (1)
    {
      v12 = sqlite3_step(v7);
      if (v12 != 5)
      {
        break;
      }

      if (v9 >= 5)
      {
        ++v9;
        goto LABEL_53;
      }

      sqlite3_sleep(10);
      ++v9;
    }

    v13 = v12;
    if (v12 != 100)
    {
      break;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v20 = v59;
    if (v60 >= 1)
    {
      for (i = 0; v20 != i; ++i)
      {
        if ([v4 count] == v60)
        {
          v22 = [v4 objectAtIndex:i];
        }

        else
        {
          v22 = [*(v11 + 3776) stringWithUTF8String:{sqlite3_column_name(v7, i)}];
          [v4 addObject:v22];
        }

        v23 = sqlite3_column_type(v7, i);
        v24 = v23;
        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            null2 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(v7, i)}];
          }

          else
          {
            if (v23 != 2)
            {
              goto LABEL_29;
            }

            null2 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(v7, i)}];
          }
        }

        else
        {
          if (v23 == 5)
          {
            goto LABEL_33;
          }

          if (v23 != 4)
          {
            if (v23 == 3)
            {
              v25 = sqlite3_column_text(v7, i);
              if (v25)
              {
                v26 = [*(v11 + 3776) stringWithUTF8String:v25];
                v27 = v26;
                if (v26)
                {
                  null = v26;
                }

                else
                {
                  null = [MEMORY[0x1E695DFB0] null];
                }

                v38 = null;

                goto LABEL_35;
              }
            }

            else
            {
LABEL_29:
              if ([*(v10 + 2224) debugEnabled])
              {
                v31 = [*(v11 + 3776) stringWithFormat:@"[SQLITE] UNKNOWN DATATYPE colType=%d", v24];
                v32 = [*(v11 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
                lastPathComponent2 = [v32 lastPathComponent];
                v34 = v11;
                v35 = lastPathComponent2;
                v36 = [*(v34 + 3776) stringWithUTF8String:"-[PLSQLStatement perform]"];
                [PLCoreStorage logMessage:v31 fromFile:v35 fromFunction:v36 fromLineNumber:140];

                v37 = PLLogCommon();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v62 = v31;
                  _os_log_debug_impl(&dword_1D8611000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v11 = 0x1E696A000;
                v10 = 0x1E8518000;
                v20 = v59;
              }
            }

LABEL_33:
            null2 = [MEMORY[0x1E695DFB0] null];
            goto LABEL_34;
          }

          v30 = sqlite3_column_blob(v7, i);
          null2 = [MEMORY[0x1E695DEF0] dataWithBytes:v30 length:{sqlite3_column_bytes(v7, i)}];
        }

LABEL_34:
        v38 = null2;
LABEL_35:
        [dictionary setObject:v38 forKey:v22];
      }
    }

    v3 = v58;
    [v58 addObject:dictionary];

    v9 = 0;
    LODWORD(v13) = 100;
LABEL_40:
    if (v13 != 100)
    {
      goto LABEL_53;
    }
  }

  if (v12 == 101)
  {
    goto LABEL_53;
  }

  if ([*(v10 + 2224) debugEnabled])
  {
    v14 = [*(v11 + 3776) stringWithFormat:@"ERROR: sqlite3_step error=%d", v13];
    v15 = [*(v11 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
    lastPathComponent3 = [v15 lastPathComponent];
    v17 = [*(v11 + 3776) stringWithUTF8String:"-[PLSQLStatement perform]"];
    [PLCoreStorage logMessage:v14 fromFile:lastPathComponent3 fromFunction:v17 fromLineNumber:155];

    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v62 = v14;
      _os_log_debug_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v11 = 0x1E696A000;
    v10 = 0x1E8518000;
  }

  if (v13 != 11)
  {
    goto LABEL_40;
  }

  v46 = PLLogSQLiteConnection();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [(PLSQLStatement *)v46 perform];
  }

  v48 = +[PLSQLiteConnection sharedSQLiteConnection];
  [PLUtilities exitWithReason:1001 connection:v48];

LABEL_53:
  dbSem3 = [(PLSQLStatement *)selfCopy dbSem];
  dispatch_semaphore_signal(dbSem3);

  if (v9 > 5 && [*(v10 + 2224) debugEnabled])
  {
    v50 = [*(v11 + 3776) stringWithFormat:@"WARNING: SQLITE_BUSY for too long"];
    v51 = [*(v11 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
    lastPathComponent4 = [v51 lastPathComponent];
    v53 = [*(v11 + 3776) stringWithUTF8String:"-[PLSQLStatement perform]"];
    [PLCoreStorage logMessage:v50 fromFile:lastPathComponent4 fromFunction:v53 fromLineNumber:166];

    v54 = PLLogCommon();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v45 = v3;
LABEL_59:

  v55 = *MEMORY[0x1E69E9840];

  return v45;
}

- (void)reset
{
  dbSem = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  sqlite3_clear_bindings([(PLSQLStatement *)self statement]);
  sqlite3_reset([(PLSQLStatement *)self statement]);
  dbSem2 = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_signal(dbSem2);
}

- (void)dealloc
{
  [(PLSQLStatement *)self finalize];
  v3.receiver = self;
  v3.super_class = PLSQLStatement;
  [(PLSQLStatement *)&v3 dealloc];
}

- (void)finalize
{
  dbSem = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  sqlite3_clear_bindings([(PLSQLStatement *)self statement]);
  sqlite3_reset([(PLSQLStatement *)self statement]);
  sqlite3_finalize([(PLSQLStatement *)self statement]);
  dbSem2 = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_signal(dbSem2);
}

- (PLSQLStatement)initWithSQLQuery:(id)query forDatabase:(sqlite3 *)database withDBSem:(id)sem result:(int *)result
{
  queryCopy = query;
  semCopy = sem;
  v26.receiver = self;
  v26.super_class = PLSQLStatement;
  v12 = [(PLSQLStatement *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dbSem, sem);
    v13->_isInsert = [queryCopy hasPrefix:@"INSERT INTO "];
    v13->_isDelete = [queryCopy hasPrefix:@"DELETE FROM "];
    dbSem = [(PLSQLStatement *)v13 dbSem];
    dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

    if (database)
    {
      v15 = 5;
      do
      {
        v16 = sqlite3_prepare_v2(database, [queryCopy UTF8String], -1, &v13->_statement, 0);
        *result = v16;
        if (!v16)
        {
          dbSem2 = [(PLSQLStatement *)v13 dbSem];
          dispatch_semaphore_signal(dbSem2);

          goto LABEL_12;
        }

        --v15;
      }

      while (v15);
      if (+[PLDefaults debugEnabled])
      {
        queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to prepare statement (error=%d, msg=%s) %@", *result, sqlite3_errmsg(database), queryCopy];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLStatement initWithSQLQuery:forDatabase:withDBSem:result:]"];
        [PLCoreStorage logMessage:queryCopy fromFile:lastPathComponent fromFunction:v20 fromLineNumber:38];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    dbSem3 = [(PLSQLStatement *)v13 dbSem];
    dispatch_semaphore_signal(dbSem3);

    v23 = 0;
  }

  else
  {
LABEL_12:
    v23 = v13;
  }

  return v23;
}

@end