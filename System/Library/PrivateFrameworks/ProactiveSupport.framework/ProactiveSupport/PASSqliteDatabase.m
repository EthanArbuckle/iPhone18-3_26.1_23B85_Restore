@interface PASSqliteDatabase
@end

@implementation PASSqliteDatabase

uint64_t __33___PASSqliteDatabase_userVersion__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sqlite3_column_int([v3 stmt], 0);
  if (v4 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "_PASSqliteDatabase read negative pragma user_version: %d", v7, 8u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __45___PASSqliteDatabase_disableQueryPlanLogging__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 136))
  {
    v2 = result;
    v3 = *(v1 + 120);
    *(v1 + 120) = 0;

    v4 = *(v2 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = 0;

    result = fclose(*(*(v2 + 32) + 136));
    *(*(v2 + 32) + 136) = 0;
  }

  return result;
}

void __53___PASSqliteDatabase_enableQueryPlanLoggingWithPath___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) disableQueryPlanLogging];
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  v4 = [v3 UUIDString];
  v5 = [v2 stringByAppendingPathExtension:v4];

  v6 = [*(a1 + 40) fileSystemRepresentation];
  v7 = [v5 fileSystemRepresentation];
  rename(v6, v7, v8);
  if (v9)
  {
    if (*__error() != 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = __error();
      v12 = strerror(*v11);
      v13 = *__error();
      v28 = 138413058;
      v29 = v10;
      v30 = 2112;
      v31 = v5;
      v32 = 2080;
      v33 = v12;
      v34 = 1024;
      v35 = v13;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to rename stale EXPLAIN QUERY PLAN logfile %@ --> %@: %s (%d)", &v28, 0x26u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v28 = 138412546;
    v29 = v14;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "To avoid overwrite, renaming stale EXPLAIN QUERY PLAN logfile %@ --> %@", &v28, 0x16u);
  }

  *(*(a1 + 32) + 136) = fopen([*(a1 + 40) fileSystemRepresentation], "w");
  v15 = *(*(a1 + 32) + 136);
  if (v15)
  {
    setlinebuf(v15);
    v16 = objc_opt_new();
    v17 = *(a1 + 32);
    v18 = *(v17 + 120);
    *(v17 + 120) = v16;

    v19 = objc_opt_new();
    v20 = *(a1 + 32);
    v21 = *(v20 + 128);
    *(v20 + 128) = v19;

    [*(*(a1 + 32) + 128) setCountLimit:100];
    v22 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v25 = __error();
      v26 = strerror(*v25);
      v27 = *__error();
      v28 = 138412802;
      v29 = v24;
      v30 = 2080;
      v31 = v26;
      v32 = 1024;
      LODWORD(v33) = v27;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to open EXPLAIN QUERY PLAN logfile %@: %s (%d)", &v28, 0x1Cu);
    }

    v22 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v22;

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __42___PASSqliteDatabase_languageForFTSTable___block_invoke_2(uint64_t a1, id a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _PAS_sqlite3_column_nsstring([a2 stmt], 0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = v5;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "languageForFTSTable: sql: %@", &v18, 0xCu);
  }

  v6 = v5;
  v7 = [v6 rangeOfString:@"language=" options:2];
  if (v8 && (v9 = v7 + v8, v10 = [v6 rangeOfString:@" options:2 range:{v9, objc_msgSend(v6, "length"") - v9}], v11))
  {
    v12 = [v6 substringWithRange:{v9, v10 - v9}];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(*(*(a1 + 32) + 8) + 40);
    v18 = 138412290;
    v19 = v17;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "languageForFTSTable: language: %@", &v18, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __42___PASSqliteDatabase_languageForFTSTable___block_invoke_278(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error during languageForFTSTable: %@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __42___PASSqliteDatabase_numberOfRowsInTable___block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_int64([a2 stmt], 0);
  return 1;
}

uint64_t __42___PASSqliteDatabase_numberOfRowsInTable___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = a2;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASSqliteDatabase unable to count rows in table %@: %@", &v7, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __45___PASSqliteDatabase_hasColumnOnTable_named___block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 stmt];
  v6 = 1;
  v7 = _PAS_sqlite3_column_nsstring(v5, 1);
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __44___PASSqliteDatabase_tablesWithColumnNamed___block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = a2;
  v6 = [v5 stmt];
  v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithFormat:", @"%%(%@ %%"), *(a1 + 32);
  _PAS_sqlite3_bind_nsstring(v6, 1, v7);

  v8 = [v5 stmt];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%%, %@ %%", *(a1 + 32)];
  _PAS_sqlite3_bind_nsstring(v8, 2, v9);
}

uint64_t __44___PASSqliteDatabase_tablesWithColumnNamed___block_invoke_2(uint64_t a1, id a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _PAS_sqlite3_column_nsstring([a2 stmt], 0);
  if (v5)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get table name containing column '%@'", &v9, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __37___PASSqliteDatabase_setUserVersion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 40);
    v7[0] = 67109378;
    v7[1] = v6;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASSqliteDatabase unable to set pragma user_version to %u: %@", v7, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __33___PASSqliteDatabase_userVersion__block_invoke_241(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASSqliteDatabase unable to read pragma user_version: %@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 1;
}

void __37___PASSqliteDatabase_createSnapshot___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = sqlite3_backup_init(*(a1 + 64), "main", *(*(a1 + 32) + 8), "main");
  if (v2)
  {
    v3 = v2;
    do
    {
      *(*(*(a1 + 56) + 8) + 24) = sqlite3_backup_step(v3, -1);
      v4 = *(*(*(a1 + 56) + 8) + 24);
    }

    while (v4 <= 6 && ((1 << v4) & 0x61) != 0);
    if (v4 != 101)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Sqlite3 backup failed.", &v9, 2u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = sqlite3_backup_finish(v3);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v6 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Sqlite3 backup finish failed.", &v9, 2u);
        v6 = 0;
      }
    }

    else
    {
      v6 = 1;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Sqlite3 backup saved to %@.", &v9, 0xCu);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = v6;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to initialize sqlite3 backup.", &v9, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __62___PASSqliteDatabase__transactionWithExclusivity_transaction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(a1 + 64);
  if (v3 <= 0)
  {
    if (*(a1 + 64))
    {
      [v2 _txnBeginExclusive];
      v6 = 1;
    }

    else
    {
      [v2 _txnBegin];
      v6 = 0;
    }

    *(*(a1 + 32) + 112) = v6;
    *(*(a1 + 32) + 20) = 0;
  }

  else if (*(a1 + 64) && (*(v2 + 112) & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"_PASSqliteDatabase.m" lineNumber:1506 description:@"Read transaction now wants to write"];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62___PASSqliteDatabase__transactionWithExclusivity_transaction___block_invoke_2;
  v11[3] = &unk_1E77F2DA0;
  v11[4] = *(a1 + 32);
  v7 = MEMORY[0x1AC566DD0](v11);
  ++*(*(a1 + 32) + 16);
  v8 = objc_autoreleasePoolPush();
  v9 = (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v8);
  *(*(*(a1 + 48) + 8) + 32) = v9;
  if (*(*(*(a1 + 48) + 8) + 32) == 1)
  {
    v7[2](v7);
  }

  v10 = *(a1 + 32);
  if (v3 <= 0 && (*(v10 + 20) & 1) == 0)
  {
    [v10 _txnEnd];
    v10 = *(a1 + 32);
  }

  --*(v10 + 16);
}

_BYTE *__62___PASSqliteDatabase__transactionWithExclusivity_transaction___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[20] & 1) == 0)
  {
    result = [result _txnRollback];
    *(*(a1 + 32) + 20) = 1;
  }

  return result;
}

uint64_t __73___PASSqliteDatabase_selectColumns_fromTable_whereClause_onPrep_onError___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    v20 = *MEMORY[0x1E695D930];
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = sqlite3_column_type([v3 stmt], v8);
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(objc_msgSend(v3, "stmt"), v8)}];
            goto LABEL_17;
          }

          if (v12 == 2)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(objc_msgSend(v3, "stmt"), v8)}];
            goto LABEL_17;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v13 = _PAS_sqlite3_column_nsstring([v3 stmt], v8);
              goto LABEL_17;
            case 4:
              v13 = _PAS_sqlite3_column_nsdata([v3 stmt], v8);
              goto LABEL_17;
            case 5:
              v13 = [MEMORY[0x1E695DFB0] null];
LABEL_17:
              v14 = v13;
              [v4 setObject:v13 forKeyedSubscript:v11];

              goto LABEL_18;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = sqlite3_column_type([v3 stmt], v8);
          *buf = 67109120;
          v26 = v15;
          _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unexpected sqlite data type: %d", buf, 8u);
        }

        [MEMORY[0x1E695DF30] raise:v20 format:{@"Unexpected sqlite data type: %d", sqlite3_column_type(objc_msgSend(v3, "stmt"), v8)}];
LABEL_18:
        ++v8;
        ++v10;
      }

      while (v7 != v10);
      v16 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      v7 = v16;
    }

    while (v16);
  }

  [*(v19 + 40) addObject:v4];
  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

void __66___PASSqliteDatabase__prepAndRunQuery_columns_dictionary_onError___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
      v7 = [MEMORY[0x1E695DFB0] null];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        sqlite3_bind_null([v15 stmt], ++v3);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _PAS_sqlite3_bind_nsstring([v15 stmt], ++v3, v6);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _PAS_sqlite3_bind_nsdata([v15 stmt], ++v3, v6);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 bindParam:++v3 toNSNumber:v6];
            }

            else
            {
              if (![v6 conformsToProtocol:&unk_1F1B32AE8])
              {
                v10 = MEMORY[0x1E695DF30];
                v16 = @"type";
                v11 = [objc_opt_class() description];
                v17[0] = v11;
                v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
                v13 = [v10 exceptionWithName:@"TypeError" reason:@"Could not insert this type into sqlite" userInfo:v12];
                v14 = v13;

                objc_exception_throw(v13);
              }

              _PAS_sqlite3_bind_nssecurecoding([v15 stmt], ++v3, v6);
            }
          }
        }
      }

      objc_autoreleasePoolPop(v4);
    }

    while ([*(a1 + 32) count] > v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __59___PASSqliteDatabase_prepAndRunQuery_onPrep_onRow_onError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))();
    v3 = v5;
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) runQuery:v3 onRow:*(a1 + 48) onError:*(a1 + 56)];
}

void __47___PASSqliteDatabase_prepQuery_onPrep_onError___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _prepareForFirstQuery];
  [*(a1 + 32) _logQueryPlanForQuery:*(a1 + 40)];
  v46 = 0;
  ppStmt = 0;
  v2 = [*(a1 + 40) UTF8String];
  if (v2)
  {
    if (([(_PASSqliteStatementCache *)*(*(a1 + 32) + 144) checkOutStatement:&v46 associatedObject:v2 withSQL:?]& 1) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"_PASSqliteDatabase.m" lineNumber:1230 description:{@"query string %@ is not Unicode", *(a1 + 40)}];
  }

  *pzTail = 0;
  v3 = *(*(a1 + 32) + 8);
  if (!v3)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int sqlite3_prepare_v2_nolock(sqlite3 *, const char *, int, sqlite3_stmt **, const char **)"}];
    [v41 handleFailureInFunction:v42 file:@"_PASSqliteDatabase.m" lineNumber:1167 description:{@"Invalid parameter not satisfying: %@", @"db"}];
  }

  v4 = 10;
  v5 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v6 = sqlite3_prepare_v2(v3, v2, -1, &ppStmt, pzTail);
    if (v6 != 6)
    {
      break;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1A7F47000, v5, OS_LOG_TYPE_DEBUG, "Sqlite database locked. Backing off and retrying prepare statement.", buf, 2u);
    }

    v7 = arc4random_uniform(v4);
    usleep(v7);
    v4 <<= v4 >> 5 < 0x271;
  }

  if (v6)
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) handleError:3 sqliteError:v6 forQuery:*(a1 + 40) onError:*(a1 + 48)];
  }

  else
  {
    v8 = [[_PASSQLTelemetryContext alloc] initWithConnection:*(*(a1 + 32) + 8) sqlQuery:*(a1 + 40) filterPii:1 bloomFilter:*(*(a1 + 32) + 168) bloomHashes:*(*(a1 + 32) + 176)];
    v9 = [[_PASSQLTelemetryApi alloc] initWithTelemetryContext:v8];
    v10 = *(*(a1 + 32) + 160);
    *(*(a1 + 32) + 160) = v9;

    [*(*(a1 + 32) + 160) applyCallbackWithCompletion:0];
    if ([*(a1 + 32) _isLikelySQLStatementContainedInString:*pzTail])
    {
      if (ppStmt)
      {
        sqlite3_finalize(ppStmt);
        ppStmt = 0;
      }

      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_PASSqliteDatabase rejected query containing multiple statements: %@", *(a1 + 40)];
      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) handleError:3 sqliteError:21 forQuery:v11 onError:*(a1 + 48)];
    }
  }

LABEL_17:
  if (ppStmt)
  {
    v12 = [_PASSqliteStatement alloc];
    v13 = [(_PASSqliteStatement *)v12 initWithStatementPointer:ppStmt columnMapping:v46];
    v14 = objc_autoreleasePoolPush();
    (*(*(a1 + 56) + 16))();
    objc_autoreleasePoolPop(v14);
    v15 = *(*(a1 + 32) + 144);
    v16 = ppStmt;
    v45 = [(_PASSqliteStatement *)v13 columnMapping];
    if (!v15)
    {
      goto LABEL_43;
    }

    v17 = [_PASSqliteStatementCache crc32ForStatement:v16];
    v18 = v13;
    v19 = 0;
    v20 = 0;
    v21 = v15 + 8;
    v22 = (v15 + 12);
    v23 = -1;
    do
    {
      v24 = *v22;
      if (*(v22 - 1) == v17)
      {
        if (v24 <= 0xF7)
        {
          v25 = -9;
        }

        else
        {
          v25 = *v22;
        }

        *v22 = v24 + ~v25;
        v23 = v19;
      }

      else
      {
        if (*v22)
        {
          if (v24 == 9)
          {
            [(_PASSqliteStatementCache *)v15 evictCachedStatementForScoreSlot:v19];
            LOBYTE(v24) = *v22;
          }

          LOBYTE(v24) = v24 - 1;
          *v22 = v24;
        }

        if (*(v21 + 8 * v20 + 4) > v24)
        {
          v20 = v19;
        }
      }

      ++v19;
      v22 += 8;
    }

    while (v19 != 32);
    if (v23 == -1)
    {
      [(_PASSqliteStatementCache *)v15 evictCachedStatementForScoreSlot:v20];
      v13 = v18;
      v26 = v20;
      v27 = v21 + 8 * v20;
      *v27 = v17;
      *(v27 + 4) = 8;
    }

    else
    {
      v26 = v23;
      v13 = v18;
    }

    if (*(v21 + 8 * v26 + 4) >= 9u)
    {
      v28 = 0;
      v29 = *(v21 + 8 * v26);
      v30 = v15 + 264;
      while (1)
      {
        v31 = *(v30 + 8 * v28);
        if (v31)
        {
          if ([_PASSqliteStatementCache crc32ForStatement:v31]== v29)
          {
            break;
          }
        }

        if (++v28 == 8)
        {
          goto LABEL_40;
        }
      }

      if (v28 != -1)
      {
        sqlite3_finalize(*(v30 + 8 * v28));
        v33 = v15 + 8 * v28;
        v34 = *(v33 + 328);
        if (v34)
        {
          CFRelease(v34);
        }

        sqlite3_reset(v16);
        sqlite3_clear_bindings(v16);
        v35 = (v33 + 328);
        *(v30 + 8 * v28) = v16;
        v36 = v45;
        v37 = v45;
        goto LABEL_49;
      }

LABEL_40:
      v32 = 0;
      while (*(v30 + 8 * v32))
      {
        if (++v32 == 8)
        {
          goto LABEL_43;
        }
      }

      sqlite3_reset(v16);
      sqlite3_clear_bindings(v16);
      *(v30 + 8 * v32) = v16;
      v36 = v45;
      v38 = v45;
      v35 = (v15 + 8 * v32 + 328);
LABEL_49:
      *v35 = v36;
    }

    else
    {
LABEL_43:

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = *(a1 + 40);
      v44 = sqlite3_errmsg(*(*(a1 + 32) + 8));
      *pzTail = 138412546;
      *&pzTail[4] = v43;
      v50 = 2080;
      v51 = v44;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prepare sql statement '%@': %s", pzTail, 0x16u);
    }

    v13 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __44___PASSqliteDatabase__logQueryPlanForQuery___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 136))
  {
    v3 = [*(v1 + 128) objectForKey:*(a1 + 40)];

    if (!v3)
    {
      [*(*(a1 + 32) + 128) setObject:MEMORY[0x1E695E118] forKey:*(a1 + 40)];
      v12 = getQueryPlan(*(*(a1 + 32) + 8), *(a1 + 40));
      v4 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:v12];

      if (!v4)
      {
        [*(*(a1 + 32) + 120) setObject:*(a1 + 40) forKeyedSubscript:v12];
        v5 = *(*(a1 + 32) + 136);
        v6 = [*(a1 + 40) UTF8String];
        v7 = v12;
        fprintf(v5, "EXPLAIN QUERY PLAN\n%s\n\n%s\n\n", v6, [v12 UTF8String]);
        v8 = [MEMORY[0x1E696AF00] callStackSymbols];
        if ([v8 count])
        {
          v9 = 0;
          do
          {
            v10 = *(*(a1 + 32) + 136);
            v11 = [v8 objectAtIndexedSubscript:v9];
            fprintf(v10, "%s\n", [v11 UTF8String]);

            ++v9;
          }

          while ([v8 count] > v9);
        }

        fwrite("\n\n----------\n\n", 0xEuLL, 1uLL, *(*(a1 + 32) + 136));
      }

      MEMORY[0x1EEE66BB8]();
    }
  }
}

void __45___PASSqliteDatabase_runQuery_onRow_onError___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __45___PASSqliteDatabase_runQuery_onRow_onError___block_invoke_2;
  v26[3] = &unk_1E77F2DA0;
  v26[4] = *(a1 + 32);
  v2 = MEMORY[0x1AC566DD0](v26);
  v3 = objc_opt_new();
  v4 = 0;
  v5 = 50;
LABEL_2:
  v6 = v5;
  while (1)
  {
    while (1)
    {
      v7 = sqlite3_step([*(a1 + 40) stmt]);
      if ((v4 & 1) == 0)
      {
        [*(a1 + 40) prepareToRunQuery];
      }

      v8 = v7;
      if (v7 <= 0x63u)
      {
        if (v7 == 5)
        {
          v5 = v6 - 1;
          v4 = 1;
          if ((v6 & 0x80000000) == 0)
          {
            goto LABEL_2;
          }
        }

        else
        {
          if (v7 != 6)
          {
            goto LABEL_16;
          }

          v5 = v6 - 1;
          if (v6 >= 1)
          {
            v4 = 1;
            usleep(0x186A0u);
            goto LABEL_2;
          }
        }

        v14 = *(a1 + 32);
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_sql(objc_msgSend(*(a1 + 40), "stmt"))}];
        *(*(*(a1 + 64) + 8) + 24) = [v14 handleError:4 sqliteError:v7 forQuery:v15 onError:0];

        v4 = 1;
        goto LABEL_2;
      }

      if (v7 != 100)
      {
        break;
      }

      v4 = 1;
      if (*(a1 + 48))
      {
        v9 = objc_autoreleasePoolPush();
        [*(a1 + 40) prepareForRowDeserialization];
        v10 = *(a1 + 40);
        v11 = (*(*(a1 + 48) + 16))();
        if (v11)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
        }

        objc_autoreleasePoolPop(v9);
        if (v11)
        {
          goto LABEL_27;
        }
      }
    }

    if (v7 == 101)
    {
      goto LABEL_26;
    }

LABEL_16:
    v12 = sqlite3_sql([*(a1 + 40) stmt]);
    if (v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v12];
    }

    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) handleError:4 sqliteError:v7 forQuery:v12 onError:*(a1 + 56)];
    v13 = *(*(*(a1 + 64) + 8) + 24);

    if ((v13 & 1) == 0)
    {
      break;
    }

    v4 = 1;
    if ((v8 - 5) >= 2)
    {
LABEL_26:
      [v3 timeIntervalSinceNow];
      v17 = -v16;
      v18 = 1;
      goto LABEL_28;
    }
  }

LABEL_27:
  v18 = 0;
  v17 = 0.0;
LABEL_28:

  if (v2)
  {
    v2[2](v2);
  }

  if (v17 > 0.5)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == 1 && os_variant_has_internal_diagnostics())
  {
    v20 = sqlite3_sql([*(a1 + 40) stmt]);
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v21)
      {
        v22 = *(*(a1 + 32) + 8);
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
        v24 = getQueryPlan(v22, v23);
        *buf = 134218498;
        v28 = v17 * 1000.0;
        v29 = 2080;
        v30 = v20;
        v31 = 2112;
        v32 = v24;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Slow query (%0.2f ms): %s\n%@", buf, 0x20u);
      }
    }

    else if (v21)
    {
      *buf = 134217984;
      v28 = v17 * 1000.0;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Slow query (%0.2f ms) -- unknown SQL", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __45___PASSqliteDatabase_runQuery_onRow_onError___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 160) sendTelemetry];
  v2 = *(*(a1 + 32) + 160);

  return [v2 removeCallback];
}

uint64_t __41___PASSqliteDatabase_valueForPragmaName___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASSqliteDatabase: unable to fetch %@: %@", &v7, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

sqlite3_int64 __37___PASSqliteDatabase_lastInsertRowId__block_invoke(uint64_t a1)
{
  result = sqlite3_last_insert_rowid(*(*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __43___PASSqliteDatabase__prepareForFirstQuery__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to set temp_store to MEMORY: %@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __64___PASSqliteDatabase_initWithFilename_flags_error_errorHandler___block_invoke(uint64_t a1)
{
  sqlite3_close(*(*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 8);

  return ITSCollationContextFreeContextForDatabaseHandle();
}

@end