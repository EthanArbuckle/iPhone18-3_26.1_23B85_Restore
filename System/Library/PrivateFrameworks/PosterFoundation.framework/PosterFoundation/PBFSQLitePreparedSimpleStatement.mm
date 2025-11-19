@interface PBFSQLitePreparedSimpleStatement
@end

@implementation PBFSQLitePreparedSimpleStatement

void __80___PBFSQLitePreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a1 + 32;
  *(*(*(v4 + 24) + 8) + 24) = sqlite3_clear_bindings(*(*(a1 + 32) + 24));
  if (!*(*(*(v4 + 24) + 8) + 24))
  {
    v16 = a2;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = *(a1 + 32);
        v12 = [*(a1 + 40) objectForKeyedSubscript:v10];
        *(*(*(a1 + 56) + 8) + 24) = [(_PBFSQLitePreparedSimpleStatement *)v11 _bindKey:v10 value:v12];

        if (*(*(*(a1 + 56) + 8) + 24))
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    a2 = v16;
  }

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    do
    {
      *(*(*(a1 + 56) + 8) + 24) = sqlite3_step(*(*(a1 + 32) + 24));
      v13 = *(*(*(a1 + 56) + 8) + 24);
      if (v13 == 100)
      {
        if (*(a1 + 48))
        {
          v14 = [PFSQLiteResultRow resultRowWithStatement:?];
          (*(*(a1 + 48) + 16))();
          [v14 invalidate];

          v13 = *(*(*(a1 + 56) + 8) + 24);
        }

        else
        {
          v13 = 100;
        }
      }
    }

    while (v13 == 100);
    if (v13 != 101)
    {
      __80___PBFSQLitePreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke_cold_1(a2, v4, 24);
    }

    *(*(*(a1 + 56) + 8) + 24) = sqlite3_reset(*(*(a1 + 32) + 24));
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __80___PBFSQLitePreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke_cold_1(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = sqlite3_extended_errcode(a1);
  if (*a2)
  {
    v6 = *(*a2 + 16);
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = v6;
    v9 = sqlite3_errstr(v5);
    v10 = sqlite3_sql(*(*a2 + a3));
    v11 = 136315906;
    v12 = "[_PBFSQLitePreparedSimpleStatement executeWithBindings:resultRowHandler:error:]_block_invoke";
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_error_impl(&dword_1C269D000, v8, OS_LOG_TYPE_ERROR, "%s: received extended error %d (%s) executing statement '%s'", &v11, 0x26u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end