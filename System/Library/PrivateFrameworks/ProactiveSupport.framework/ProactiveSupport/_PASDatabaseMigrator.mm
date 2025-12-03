@interface _PASDatabaseMigrator
- (BOOL)_allContextsAtVersionZeroWithContexts:(id)contexts;
- (BOOL)_anyContextHasFutureVersionWithContexts:(id)contexts;
- (BOOL)_anyContextHasMismatchedVersionWithContexts:(id)contexts;
- (BOOL)_canContinueMigratingWithContexts:(id)contexts;
- (BOOL)_migrationNeededWithContexts:(id)contexts toVersion:(unsigned int)version;
- (BOOL)migrationNeeded;
- (_PASDatabaseMigrator)initWithMigrationObjects:(id)objects;
- (id)_contextForMigrationObject:(id)object;
- (id)description;
- (unsigned)_clearDatabase:(id)database;
- (unsigned)_runQueries:(id)queries nextVersion:(unsigned int)version context:(id)context;
- (unsigned)_runQuery:(id)query context:(id)context database:(id)database;
- (unsigned)_skipFromZeroSchemaWithContexts:(id)contexts;
- (unsigned)_unmigrateDatabasesWithContexts:(id)contexts;
- (unsigned)migrateDatabasesToVersion:(unsigned int)version;
- (unsigned)unmigrateDatabases;
- (void)_prepareContexts:(id)contexts;
@end

@implementation _PASDatabaseMigrator

- (unsigned)_clearDatabase:(id)database
{
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39___PASDatabaseMigrator__clearDatabase___block_invoke;
  v8[3] = &unk_1E77F1DC0;
  v6 = databaseCopy;
  v11 = &v13;
  v12 = a2;
  v9 = v6;
  selfCopy = self;
  [v6 writeTransaction:v8];
  LOBYTE(a2) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return a2;
}

- (void)_prepareContexts:(id)contexts
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contextsCopy = contexts;
  v4 = [contextsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(contextsCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        *(v8 + 24) = [*(v8 + 16) userVersion];
        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [contextsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unsigned)_runQuery:(id)query context:(id)context database:(id)database
{
  v29 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  contextCopy = context;
  databaseCopy = database;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 4;
  v10 = MEMORY[0x1E69E9C10];
  v11 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    filename = [databaseCopy filename];
    *buf = 138412546;
    v26 = filename;
    v27 = 2112;
    v28 = queryCopy;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "migrator for %@ running query: %@", buf, 0x16u);
  }

  v12 = NSSelectorFromString(queryCopy);
  if (v12)
  {
    v13 = contextCopy[1];
    if (objc_opt_respondsToSelector())
    {
      LOBYTE(v12) = ([contextCopy[1] methodForSelector:v12])(contextCopy[1], v12);
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51___PASDatabaseMigrator__runQuery_context_database___block_invoke;
      v17[3] = &unk_1E77F1B18;
      v18 = databaseCopy;
      v19 = queryCopy;
      v20 = &v21;
      [v18 prepAndRunQuery:v19 onPrep:0 onRow:0 onError:v17];
      LOBYTE(v12) = *(v22 + 24);
    }
  }

  _Block_object_dispose(&v21, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (unsigned)_runQueries:(id)queries nextVersion:(unsigned int)version context:(id)context
{
  queriesCopy = queries;
  contextCopy = context;
  v10 = contextCopy[2];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56___PASDatabaseMigrator__runQueries_nextVersion_context___block_invoke;
  v14[3] = &unk_1E77F1AF0;
  v15 = queriesCopy;
  selfCopy = self;
  v17 = contextCopy;
  versionCopy = version;
  v11 = contextCopy;
  v12 = queriesCopy;
  LODWORD(v10) = [v10 frailWriteTransaction:v14];

  if (v10)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (BOOL)_allContextsAtVersionZeroWithContexts:(id)contexts
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  contextsCopy = contexts;
  v4 = [contextsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(contextsCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        LODWORD(v8) = *(v8 + 24);
        objc_autoreleasePoolPop(v9);
        if (v8)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [contextsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_anyContextHasMismatchedVersionWithContexts:(id)contexts
{
  v28 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  v4 = [contextsCopy objectAtIndexedSubscript:0];
  v5 = v4[6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = contextsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = v11;
        v13 = *(v10 + 24);
        if (v13 != v5)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v14 = *(v10 + 16);
            *buf = 67109634;
            v22 = v5;
            v23 = 1024;
            v24 = v13;
            v25 = 2112;
            v26 = v14;
            _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "mismatched version (%u != %u) detected on %@", buf, 0x18u);
          }

          objc_autoreleasePoolPop(v12);
          LOBYTE(v7) = 1;
          goto LABEL_13;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_anyContextHasFutureVersionWithContexts:(id)contexts
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contextsCopy = contexts;
  v4 = [contextsCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(contextsCopy);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = *(v7 + 24);
        if ([*(v7 + 32) count] < v9)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v10 = *(v7 + 24);
            v11 = *(v7 + 16);
            *buf = 67109378;
            v19 = v10;
            v20 = 2112;
            v21 = v11;
            _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "future version (%u) detected on %@", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v8);
          LOBYTE(v4) = 1;
          goto LABEL_13;
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [contextsCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unsigned)_skipFromZeroSchemaWithContexts:(id)contexts
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  contextsCopy = contexts;
  v6 = [contextsCopy countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = a2;
    v8 = *v22;
    v9 = MEMORY[0x1E69E9C10];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(contextsCopy);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v20 = 0;
        v13 = [*(v11 + 8) queriesToSkipFromEmptyToVersion:&v20];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v14 = [v13 count];
          *buf = 134218498;
          v26 = v14;
          v27 = 2112;
          v28 = v11;
          v29 = 1024;
          v30 = v20;
          _os_log_impl(&dword_1A7F47000, v9, OS_LOG_TYPE_INFO, "%tu skip queries for %@ jump to version %u", buf, 0x1Cu);
        }

        if (v20 && [_PASDatabaseMigrator _runQueries:"_runQueries:nextVersion:context:" nextVersion:v13 context:?]== 2)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v26 = v11;
            _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failed to migrate using skip queries: %@", buf, 0xCu);
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v19 object:self file:@"_PASDatabaseMigrator.m" lineNumber:275 description:{@"failed to migrate using skip queries: %@", v11}];

          objc_autoreleasePoolPop(v12);
          v15 = 2;
          goto LABEL_16;
        }

        objc_autoreleasePoolPop(v12);
      }

      v7 = [contextsCopy countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 4;
LABEL_16:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_canContinueMigratingWithContexts:(id)contexts
{
  v35 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  if (!+[_PASDeviceState isUnlocked])
  {
    if (+[_PASDeviceState isClassCLocked])
    {
      v25 = 0uLL;
      v26 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v5 = contextsCopy;
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v24;
LABEL_6:
        v9 = 0;
        while (1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * v9);
          if (+[_PASSqliteDatabase contentProtectionTypeRequiresDeviceToHaveBeenUnlockedOnce:](_PASSqliteDatabase, "contentProtectionTypeRequiresDeviceToHaveBeenUnlockedOnce:", [*(v10 + 16) contentProtectionType]))
          {
            break;
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
            v4 = 1;
            if (v7)
            {
              goto LABEL_6;
            }

            goto LABEL_29;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v17 = *(v10 + 16);
        *buf = 138412290;
        v33 = v17;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "Migrations cannot continue due to content protection of %@ and device having never been unlocked.";
LABEL_27:
        _os_log_impl(&dword_1A7F47000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
LABEL_28:
        v4 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v29 = 0uLL;
      v30 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v11 = contextsCopy;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
LABEL_15:
        v15 = 0;
        while (1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * v15);
          if (+[_PASSqliteDatabase contentProtectionTypeRequiresDeviceToBeUnlocked:](_PASSqliteDatabase, "contentProtectionTypeRequiresDeviceToBeUnlocked:", [*(v16 + 16) contentProtectionType]))
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
            v4 = 1;
            if (v13)
            {
              goto LABEL_15;
            }

            goto LABEL_29;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v20 = *(v16 + 16);
        *buf = 138412290;
        v33 = v20;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "Migrations cannot continue due to content protection of %@ and device being locked.";
        goto LABEL_27;
      }
    }

    v4 = 1;
LABEL_29:

    goto LABEL_30;
  }

  v4 = 1;
LABEL_30:

  v21 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_migrationNeededWithContexts:(id)contexts toVersion:(unsigned int)version
{
  v26 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  [(_PASDatabaseMigrator *)self _prepareContexts:contextsCopy];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = contextsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = *(v12 + 24);
        versionCopy = version;
        if (version == -1)
        {
          versionCopy = [*(v12 + 32) count];
        }

        if (versionCopy != v14)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "migration needed: %@", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v13);
          v16 = 1;
          goto LABEL_15;
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (unsigned)_unmigrateDatabasesWithContexts:(id)contexts
{
  v22 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  [(_PASDatabaseMigrator *)self _prepareContexts:contextsCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = contextsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([(_PASDatabaseMigrator *)self _clearDatabase:*(v10 + 16), v15]== 2)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v20 = v10;
            _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failed to clear db: %@", buf, 0xCu);
          }

          if (_PASEvaluateLogFaultAndProbCrashCriteria())
          {
            abort();
          }

          objc_autoreleasePoolPop(v11);
          v12 = 2;
          goto LABEL_14;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_contextForMigrationObject:(id)object
{
  v18 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v7 = objc_opt_new();
  objc_storeStrong((v7 + 8), object);
  databaseHandle = [objectCopy databaseHandle];
  v9 = *(v7 + 16);
  *(v7 + 16) = databaseHandle;

  if (!*(v7 + 16))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v17 = objectCopy;
      _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failed to get database handle from %@", buf, 0xCu);
      if (*(v7 + 16))
      {
        goto LABEL_9;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASDatabaseMigrator.m" lineNumber:126 description:{@"failed to get database handle from %@", objectCopy}];
    goto LABEL_8;
  }

  migrations = [objectCopy migrations];
  v11 = *(v7 + 32);
  *(v7 + 32) = migrations;

  if (*(v7 + 32))
  {
    *(v7 + 24) = [*(v7 + 16) userVersion];
    v12 = v7;
    goto LABEL_10;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT) || (*buf = 138412290, v17 = objectCopy, _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failed to get migrations from %@", buf, 0xCu), !*(v7 + 32)))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASDatabaseMigrator.m" lineNumber:133 description:{@"failed to get migrations from %@", objectCopy}];
LABEL_8:
  }

LABEL_9:
  v12 = 0;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"<_PASDatabaseMigrator: "];
  contexts = self->_contexts;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35___PASDatabaseMigrator_description__block_invoke;
  v8[3] = &unk_1E77F1AC8;
  v9 = v3;
  v5 = v3;
  [(_PASLock *)contexts runWithLockAcquired:v8];
  v6 = [v5 stringByAppendingString:@">"];

  return v6;
}

- (BOOL)migrationNeeded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  contexts = self->_contexts;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39___PASDatabaseMigrator_migrationNeeded__block_invoke;
  v5[3] = &unk_1E77F1AA0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)contexts runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)unmigrateDatabases
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  contexts = self->_contexts;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42___PASDatabaseMigrator_unmigrateDatabases__block_invoke;
  v5[3] = &unk_1E77F1AA0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)contexts runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)migrateDatabasesToVersion:(unsigned int)version
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  contexts = self->_contexts;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50___PASDatabaseMigrator_migrateDatabasesToVersion___block_invoke;
  v6[3] = &unk_1E77F1A78;
  v6[4] = self;
  v6[5] = &v8;
  versionCopy = version;
  [(_PASLock *)contexts runWithLockAcquired:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (_PASDatabaseMigrator)initWithMigrationObjects:(id)objects
{
  v29 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v25.receiver = self;
  v25.super_class = _PASDatabaseMigrator;
  v5 = [(_PASDatabaseMigrator *)&v25 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = objectsCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [(_PASDatabaseMigrator *)v5 _contextForMigrationObject:v12, v21];
          if (!v14)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v27 = v12;
              _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "could not create context for migration %@", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v13);

            v18 = 0;
            goto LABEL_15;
          }

          v15 = v14;
          [v6 addObject:v14];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = [[_PASLock alloc] initWithGuardedData:v6];
    contexts = v5->_contexts;
    v5->_contexts = v16;
  }

  v18 = v5;
LABEL_15:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end