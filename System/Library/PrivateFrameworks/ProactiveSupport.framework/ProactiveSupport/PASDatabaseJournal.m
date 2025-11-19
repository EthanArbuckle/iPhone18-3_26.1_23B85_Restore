@interface PASDatabaseJournal
@end

@implementation PASDatabaseJournal

uint64_t __37___PASDatabaseJournal_stopJournaling__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 40);
  *(*(result + 32) + 40) = 0;
  return result;
}

uint64_t __38___PASDatabaseJournal_startJournaling__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 40) ^ 1;
  *(*(result + 32) + 40) = 1;
  return result;
}

void __48___PASDatabaseJournal_deleteAllJournaledQueries__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v13 = v9;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Removing all journal files at %@", buf, 0xCu);
  }

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(*(a1 + 32) + 16);
  v11 = 0;
  [v2 removeItemAtPath:v3 error:&v11];
  v4 = v11;

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal unable to remove journal directory: %@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = *(*(a1 + 32) + 16);
  v10 = v4;
  [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v10];
  v7 = v10;

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal unable to re-create directory for storing journals: %@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __48___PASDatabaseJournal_executeQueriesOnDatabase___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _closeCurrentFile];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(a1 + 40) filename];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Executing queries from journals to %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x2020000000;
  v30 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  sel_getName(*(a1 + 56));
  v2 = os_transaction_create();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48___PASDatabaseJournal_executeQueriesOnDatabase___block_invoke_67;
  v9[3] = &unk_1E77F1D98;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = &v20;
  v9[4] = v4;
  v5 = *(a1 + 48);
  v12 = &v16;
  v13 = v5;
  v14 = &v24;
  v10 = v3;
  p_buf = &buf;
  [v10 writeTransaction:v9];

  while (1)
  {
    v7 = *(v25 + 6) + 1;
    *(v25 + 6) = v7;
    if (v7 >= *(v21 + 6))
    {
      break;
    }

    free(*(v17[3] + 8 * v7));
  }

  free(v17[3]);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x1E69E9840];
}

void __48___PASDatabaseJournal_executeQueriesOnDatabase___block_invoke_67(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) UTF8String];
  *(*(*(a1 + 48) + 8) + 24) = scandir(v2, (*(*(a1 + 56) + 8) + 24), 0, MEMORY[0x1E69E9860]);
  if ((*(*(*(a1 + 48) + 8) + 24) & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 67109378;
      v19 = v14;
      v20 = 2080;
      v21 = v16;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal unable to open journal directory: errno(%i): %s", buf, 0x12u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    goto LABEL_21;
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
  v4 = *(*(*(a1 + 72) + 8) + 24);
  if (v4 >= *(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_21;
  }

  v5 = MEMORY[0x1E69E9C10];
  *&v3 = 67109120;
  v17 = v3;
  while (1)
  {
    v6 = *(*(*(*(a1 + 56) + 8) + 24) + 8 * v4);
    if (v6[20] != 8)
    {
      free(v6);
      goto LABEL_14;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6 + 21];
    free(v6);
    v8 = objc_autoreleasePoolPush();
    buf[0] = 0;
    if (([*(a1 + 32) _executeFile:v7 onDb:*(a1 + 40) becameLocked:buf] & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    if (buf[0] == 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      objc_autoreleasePoolPop(v8);
      goto LABEL_20;
    }

    objc_autoreleasePoolPop(v8);
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 24);
    *(v9 + 24) = v10 + 1;
    if (v10)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(*(*(a1 + 80) + 8) + 24);
        *buf = v17;
        v19 = v11;
        _os_log_debug_impl(&dword_1A7F47000, v5, OS_LOG_TYPE_DEBUG, "journal execution checking lock state after %u files", buf, 8u);
      }

      if (!+[_PASDeviceState isUnlocked])
      {
        break;
      }
    }

LABEL_14:
    v4 = ++*(*(*(a1 + 72) + 8) + 24);
    if (v4 >= *(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_21;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v13 = *(*(*(a1 + 80) + 8) + 24);
    *buf = v17;
    v19 = v13;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "journal execution exiting early after %u files because device is locked", buf, 8u);
  }

LABEL_20:

LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __79___PASDatabaseJournal__executeNextRecordFromFile_onDb_becameLocked_deleteFile___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"__query"];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal error when replaying query: %@: %@", &v8, 0x16u);
  }

  if (_sqliteErrorIndicatesDeviceBecameLocked(v3))
  {
    v4 = *(a1 + 48);
    **(a1 + 40) = 0;
    if (v4)
    {
      *v4 = 1;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

void __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) substringToIndex:6];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"select"];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "skipping select query", &buf, 2u);
    }
  }

  else
  {
    v5 = [*(a1 + 40) mutableCopy];
    [v5 setObject:*(a1 + 32) forKeyedSubscript:@"__query"];
    v6 = objc_autoreleasePoolPush();
    v18 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v18];
    v8 = v18;
    if (v7)
    {
      v9 = [*(a1 + 48) _getCurrentFile];
      [v9 write:v7];

      objc_autoreleasePoolPop(v6);
      if (*(*(a1 + 48) + 40))
      {
        [*(a1 + 48) _addCurrentFileToLog];
      }

      else
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v20 = 0x2020000000;
        v21 = 1;
        v10 = *(a1 + 56);
        v11 = *(a1 + 32);
        v12 = [_PASDatabaseJournal _binderForDictionary:*(a1 + 40)];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke_36;
        v15[3] = &unk_1E77F2638;
        v16 = *(a1 + 32);
        p_buf = &buf;
        [v10 prepAndRunQuery:v11 onPrep:v12 onRow:0 onError:v15];

        v13 = *(a1 + 48);
        if (*(*(&buf + 1) + 24) == 1)
        {
          [v13 _clearCurrentFile];
        }

        else
        {
          [v13 _addCurrentFileToLog];
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error archiving: %@", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke_39(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = a2;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal error when immediately running query: %@: %@", &v7, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke_36(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal error when immediately running query: %@: %@", &v7, 0x16u);
  }

  if (_sqliteErrorIndicatesDeviceBecameLocked(v3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void __44___PASDatabaseJournal__binderForDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___PASDatabaseJournal__binderForDictionary___block_invoke_2;
  v6[3] = &unk_1E77F1D20;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __44___PASDatabaseJournal__binderForDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"__query"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"qmarksSeparatedByCommas"])
    {
      v20 = v6;
      v21 = v5;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = v8;
      v10 = *v23;
      v11 = 1;
      while (1)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v11 + 1;
            sqlite3_bind_int64([*(a1 + 32) stmt], v11, objc_msgSend(v13, "longLongValue"));
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v14 = v11 + 1;
            _PAS_sqlite3_bind_nsstring([*(a1 + 32) stmt], v11, v13);
          }

          v11 = v14;
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (!v9)
        {
LABEL_15:

          v6 = v20;
          v5 = v21;
          goto LABEL_21;
        }
      }
    }

    v15 = [MEMORY[0x1E695DFB0] null];

    if (v15 == v6)
    {
      [*(a1 + 32) bindNamedParamToNull:{objc_msgSend(v5, "UTF8String")}];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v17 = *(a1 + 32);
      v18 = [v5 UTF8String];
      if (isKindOfClass)
      {
        [v17 bindNamedParam:v18 toInteger:{objc_msgSend(v6, "longValue")}];
      }

      else
      {
        [v17 bindNamedParam:v18 toNSString:v6];
      }
    }
  }

LABEL_21:

  v19 = *MEMORY[0x1E69E9840];
}

@end