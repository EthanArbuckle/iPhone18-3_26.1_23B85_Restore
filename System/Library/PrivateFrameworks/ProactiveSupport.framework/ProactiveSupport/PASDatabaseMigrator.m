@interface PASDatabaseMigrator
@end

@implementation PASDatabaseMigrator

void __39___PASDatabaseMigrator__clearDatabase___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __39___PASDatabaseMigrator__clearDatabase___block_invoke_2;
  v41[3] = &unk_1E77F1B40;
  v4 = v2;
  v42 = v4;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __39___PASDatabaseMigrator__clearDatabase___block_invoke_54;
  v38[3] = &unk_1E77F1B68;
  obja = *(a1 + 48);
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 40);
  *&v6 = obja;
  *(&v6 + 1) = *(a1 + 56);
  v39 = v5;
  v40 = v6;
  [v3 prepAndRunQuery:@"SELECT name FROM sqlite_schema WHERE type='table' AND NOT name LIKE 'sqlite_%'" onPrep:0 onRow:v41 onError:v38];
  v7 = *(a1 + 32);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __39___PASDatabaseMigrator__clearDatabase___block_invoke_61;
  v36[3] = &unk_1E77F1B40;
  v8 = v4;
  v37 = v8;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __39___PASDatabaseMigrator__clearDatabase___block_invoke_66;
  v33[3] = &unk_1E77F1B68;
  objb = *(a1 + 48);
  *&v9 = *(a1 + 32);
  *(&v9 + 1) = *(a1 + 40);
  *&v10 = objb;
  *(&v10 + 1) = *(a1 + 56);
  v35 = v10;
  v34 = v9;
  [v7 prepAndRunQuery:@"PRAGMA table_list" onPrep:0 onRow:v36 onError:v33];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = *(a1 + 32);
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TABLE IF EXISTS %@", v15];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __39___PASDatabaseMigrator__clearDatabase___block_invoke_70;
        v24[3] = &unk_1E77F1B90;
        v27 = *(a1 + 48);
        v24[4] = v15;
        v18 = *(a1 + 32);
        v28 = *(a1 + 56);
        v19 = *(a1 + 40);
        v25 = v18;
        v26 = v19;
        [v16 prepAndRunQuery:v17 onPrep:0 onRow:0 onError:v24];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v12);
  }

  [*(a1 + 32) setUserVersion:0];
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __39___PASDatabaseMigrator__clearDatabase___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"name" table:0];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "sqlite_schema had a table with a NULL name", v6, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  return 0;
}

uint64_t __39___PASDatabaseMigrator__clearDatabase___block_invoke_54(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(a1[6] + 8) + 24) = 2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v7 = a1[4];
    *buf = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failed to clear database: %@ error: %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1[7] object:a1[5] file:@"_PASDatabaseMigrator.m" lineNumber:432 description:{@"failed to clear database: %@ error: %@", a1[4], v3}];

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __39___PASDatabaseMigrator__clearDatabase___block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"type"];
  v5 = [@"shadow" isEqual:v4];

  if (v5)
  {
    v6 = [v3 getNSStringForColumnAlias:"name"];
    if (v6)
    {
      [*(a1 + 32) removeObject:v6];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "shadow table has nil table name in PRAGMA table_list", v8, 2u);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }
    }
  }

  return 0;
}

uint64_t __39___PASDatabaseMigrator__clearDatabase___block_invoke_66(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(a1[6] + 8) + 24) = 2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v7 = a1[4];
    *buf = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failed to clear database: %@ error: %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1[7] object:a1[5] file:@"_PASDatabaseMigrator.m" lineNumber:451 description:{@"failed to clear database: %@ error: %@", a1[4], v3}];

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __39___PASDatabaseMigrator__clearDatabase___block_invoke_70(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(a1[7] + 8) + 24) = 2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    *buf = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failed to drop table '%@' from database: %@ error: %@", buf, 0x20u);
  }

  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1[8] object:a1[6] file:@"_PASDatabaseMigrator.m" lineNumber:463 description:{@"failed to drop table '%@' from database: %@ error: %@", a1[4], a1[5], v3}];

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __51___PASDatabaseMigrator__runQuery_context_database___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) filename];
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseMigrator encountered error during migration of db: %@ query: %@ error: %@", &v8, 0x20u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 2;

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __56___PASDatabaseMigrator__runQueries_nextVersion_context___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        LODWORD(v7) = [*(a1 + 40) _runQuery:v7 context:*(a1 + 48) database:{*(*(a1 + 48) + 16), v11}];
        objc_autoreleasePoolPop(v8);
        if (v7 != 4)
        {

          result = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 48) + 16) setUserVersion:*(a1 + 56)];
  *(*(a1 + 48) + 24) = *(a1 + 56);
  result = 1;
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __35___PASDatabaseMigrator_description__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = [v8 description];
        [v10 appendString:v11];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __39___PASDatabaseMigrator_migrationNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _migrationNeededWithContexts:a2 toVersion:0xFFFFFFFFLL];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __42___PASDatabaseMigrator_unmigrateDatabases__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _unmigrateDatabasesWithContexts:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __50___PASDatabaseMigrator_migrateDatabasesToVersion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _migrateDatabasesWithContexts:a2 toVersion:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end