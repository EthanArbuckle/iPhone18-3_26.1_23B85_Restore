@interface TIUserModelDataStore
+ (id)initializeDataStoreAtPath:(id)path;
- (BOOL)_updateDurableValue:(id)value forKey:(id)key forDate:(id)date withUpdateQuery:(const char *)query;
- (BOOL)addValue:(id)value andSecondaryValue:(id)secondaryValue andRealValue:(id)realValue andProperties:(id)properties forKey:(id)key forInputMode:(id)mode forDate:(id)date;
- (BOOL)closeDatabase;
- (BOOL)createOrOpenDatabase;
- (BOOL)isDatabaseValid;
- (BOOL)isValid;
- (BOOL)purgeDataForKey:(id)key forInputMode:(id)mode beforeDate:(id)date;
- (BOOL)purgeDataForKeyPrefix:(id)prefix forInputMode:(id)mode beforeDate:(id)date;
- (BOOL)purgeDurableDataForKeyPrefix:(id)prefix;
- (NSDate)durableLastMigrationDate;
- (NSDate)propertiesLastMigrationDate;
- (NSDate)transientLastMigrationDate;
- (TIUserModelDataStore)initWithPath:(id)path;
- (id)durableCreationSchema;
- (id)durableMigrationFromV2Schema;
- (id)durableMigrationFromV3Schema;
- (id)durableMigrationSchemaForDatabase:(sqlite3 *)database;
- (id)getAllKnownInputModesSinceDate:(id)date;
- (id)getAllValuesForKey:(id)key forInputMode:(id)mode fromDate:(id)date toDate:(id)toDate;
- (id)getAllValuesForKey:(id)key forInputMode:(id)mode sinceDate:(id)date;
- (id)getAllValuesForKeyPrefix:(id)prefix forInputMode:(id)mode sinceDate:(id)date;
- (id)getDailyAndWeeklyValuesForKeyPrefix:(id)prefix forInputMode:(id)mode weeklyKeySuffixes:(id)suffixes endDate:(id)date;
- (id)getDurableValueForKey:(id)key;
- (id)getInputModesForKey:(id)key;
- (id)lastMigrationDateForKey:(id)key fromDatabase:(sqlite3 *)database;
- (id)propertiesCreationSchema;
- (id)propertiesMigrationFromV1Schema;
- (id)propertiesMigrationSchemaForDatabase:(sqlite3 *)database;
- (id)transientCreationSchema;
- (id)transientMigrationSchemaForDatabase:(sqlite3 *)database;
- (int)durableVersion;
- (int)durableVersionFromDatabase:(sqlite3 *)database;
- (int)propertiesVersion;
- (int)propertiesVersionFromDatabase:(sqlite3 *)database;
- (int)transientVersion;
- (int)transientVersionFromDatabase:(sqlite3 *)database;
- (int)versionForKey:(id)key fromDatabase:(sqlite3 *)database;
- (void)dealloc;
@end

@implementation TIUserModelDataStore

- (BOOL)purgeDataForKeyPrefix:(id)prefix forInputMode:(id)mode beforeDate:(id)date
{
  modeCopy = mode;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__13059;
  v20[4] = __Block_byref_object_dispose__13060;
  dateCopy = date;
  v9 = dateCopy;
  v10 = [prefix stringByAppendingString:@"%"];
  database_queue = self->_database_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__TIUserModelDataStore_purgeDataForKeyPrefix_forInputMode_beforeDate___block_invoke;
  v15[3] = &unk_1E6F4DAA0;
  v15[4] = self;
  v16 = modeCopy;
  v17 = v10;
  v18 = v20;
  v19 = &v22;
  v12 = v10;
  v13 = modeCopy;
  TIDispatchSync(database_queue, v15);
  LOBYTE(database_queue) = *(v23 + 24);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
  return database_queue;
}

void __70__TIUserModelDataStore_purgeDataForKeyPrefix_forInputMode_beforeDate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v2 = [MEMORY[0x1E695DF00] distantFuture];
      v3 = *(*(a1 + 56) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    v5 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v6 = "DELETE FROM usermodeltransientrecords WHERE key LIKE ? AND input_mode = ? AND last_update_date < ?";
    }

    else
    {
      v6 = "DELETE FROM usermodeltransientrecords WHERE key LIKE ?  AND last_update_date < ?";
    }

    *ppStmt = 0;
    v7 = sqlite3_prepare_v2(*(v5 + 16), v6, -1, ppStmt, 0);
    if (!*ppStmt || v7)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    else
    {
      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 48) UTF8String], -1, 0);
      v8 = *(a1 + 40);
      if (v8)
      {
        sqlite3_bind_text(*ppStmt, 2, [v8 UTF8String], -1, 0);
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v11 = *ppStmt;
      [*(*(*(a1 + 56) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v11, v9, v12);
      v13 = sqlite3_step(*ppStmt);
      v15 = v13 == 101 || v13 == 0;
      *(*(*(a1 + 64) + 8) + 24) = v15;
      sqlite3_finalize(*ppStmt);
    }
  }

  else
  {
    v10 = IXADefaultLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't purge data because the database is invalid.", "-[TIUserModelDataStore purgeDataForKeyPrefix:forInputMode:beforeDate:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v16;
      _os_log_error_impl(&dword_1863F7000, v10, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (BOOL)purgeDataForKey:(id)key forInputMode:(id)mode beforeDate:(id)date
{
  keyCopy = key;
  modeCopy = mode;
  dateCopy = date;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__13059;
  v21[4] = __Block_byref_object_dispose__13060;
  v22 = dateCopy;
  database_queue = self->_database_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__TIUserModelDataStore_purgeDataForKey_forInputMode_beforeDate___block_invoke;
  v16[3] = &unk_1E6F4DAA0;
  v16[4] = self;
  v17 = keyCopy;
  v18 = modeCopy;
  v19 = v21;
  v20 = &v23;
  v12 = modeCopy;
  v13 = keyCopy;
  v14 = dateCopy;
  TIDispatchSync(database_queue, v16);
  LOBYTE(modeCopy) = *(v24 + 24);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);
  return modeCopy;
}

void __64__TIUserModelDataStore_purgeDataForKey_forInputMode_beforeDate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v2 = [MEMORY[0x1E695DF00] distantFuture];
      v3 = *(*(a1 + 56) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    *ppStmt = 0;
    v5 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), "DELETE FROM usermodeltransientrecords WHERE key = ? AND input_mode = ? AND last_update_date < ?", -1, ppStmt, 0);
    if (!*ppStmt || v5)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    else
    {
      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
      sqlite3_bind_text(*ppStmt, 2, [*(a1 + 48) UTF8String], -1, 0);
      v6 = *ppStmt;
      [*(*(*(a1 + 56) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v6, 3, v7);
      v8 = sqlite3_step(*ppStmt);
      v10 = v8 == 101 || v8 == 0;
      *(*(*(a1 + 64) + 8) + 24) = v10;
      sqlite3_finalize(*ppStmt);
    }
  }

  else
  {
    v11 = IXADefaultLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't purge data because the database is invalid.", "-[TIUserModelDataStore purgeDataForKey:forInputMode:beforeDate:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v12;
      _os_log_error_impl(&dword_1863F7000, v11, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (id)getAllKnownInputModesSinceDate:(id)date
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13059;
  v16 = __Block_byref_object_dispose__13060;
  v17 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__13059;
  v10[4] = __Block_byref_object_dispose__13060;
  dateCopy = date;
  v11 = dateCopy;
  database_queue = self->_database_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__TIUserModelDataStore_getAllKnownInputModesSinceDate___block_invoke;
  v9[3] = &unk_1E6F4DA78;
  v9[4] = self;
  v9[5] = v10;
  v9[6] = &v12;
  TIDispatchSync(database_queue, v9);
  if ([v13[5] count])
  {
    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(v10, 8);

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__TIUserModelDataStore_getAllKnownInputModesSinceDate___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v2 = [MEMORY[0x1E695DF00] distantPast];
      v3 = *(*(a1 + 40) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    *ppStmt = 0;
    v5 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), " SELECT DISTINCT input_mode FROM usermodeltransientrecords WHERE last_update_date > ?", -1, ppStmt, 0);
    if (*ppStmt && !v5)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *ppStmt;
      [*(*(*(a1 + 40) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v9, 1, v10);
      while (1)
      {
        v11 = sqlite3_step(*ppStmt);
        if (v11 != 100)
        {
          break;
        }

        v12 = sqlite3_column_text(*ppStmt, 0);
        v13 = *(*(*(a1 + 48) + 8) + 40);
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
        [v13 addObject:v14];
      }

      if (v11 != 101)
      {
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = 0;
      }

      sqlite3_finalize(*ppStmt);
    }
  }

  else
  {
    v15 = IXADefaultLogFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get all known input modes because the database is invalid.", "-[TIUserModelDataStore getAllKnownInputModesSinceDate:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v18;
      _os_log_error_impl(&dword_1863F7000, v15, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (id)getInputModesForKey:(id)key
{
  keyCopy = key;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__13059;
  v17 = __Block_byref_object_dispose__13060;
  v18 = 0;
  database_queue = self->_database_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__TIUserModelDataStore_getInputModesForKey___block_invoke;
  v10[3] = &unk_1E6F4DA50;
  v10[4] = self;
  v6 = keyCopy;
  v11 = v6;
  v12 = &v13;
  TIDispatchSync(database_queue, v10);
  if ([v14[5] count])
  {
    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __44__TIUserModelDataStore_getInputModesForKey___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    *ppStmt = 0;
    v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), " SELECT DISTINCT input_mode FROM usermodeltransientrecords WHERE key = ?", -1, ppStmt, 0);
    if (*ppStmt)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
      v4 = [MEMORY[0x1E695DF70] array];
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
      while (1)
      {

        v7 = sqlite3_step(*ppStmt);
        if (v7 != 100)
        {
          break;
        }

        v8 = sqlite3_column_text(*ppStmt, 0);
        v9 = *(*(*(a1 + 48) + 8) + 40);
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
        [v9 addObject:v6];
      }

      if (v7 != 101)
      {
        v11 = *(*(a1 + 48) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = 0;
      }

      sqlite3_finalize(*ppStmt);
    }
  }

  else
  {
    v10 = IXADefaultLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get input modes because the database is invalid.", "-[TIUserModelDataStore getInputModesForKey:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v13;
      _os_log_error_impl(&dword_1863F7000, v10, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (id)getDurableValueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13059;
  v16 = __Block_byref_object_dispose__13060;
  v17 = 0;
  database_queue = self->_database_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__TIUserModelDataStore_getDurableValueForKey___block_invoke;
  v9[3] = &unk_1E6F4DA50;
  v9[4] = self;
  v11 = &v12;
  v6 = keyCopy;
  v10 = v6;
  TIDispatchSync(database_queue, v9);
  if ([v13[5] count])
  {
    v7 = [v13[5] objectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__TIUserModelDataStore_getDurableValueForKey___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    *ppStmt = 0;
    v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), "SELECT value, creation_date, last_update_date FROM usermodeldurablerecords WHERE key = ?", -1, ppStmt, 0);
    if (*ppStmt)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
      while (1)
      {
        v7 = sqlite3_step(*ppStmt);
        if (v7 != 100)
        {
          break;
        }

        v8 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*ppStmt, 0)}];
        v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{sqlite3_column_double(*ppStmt, 1)}];
        v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{sqlite3_column_double(*ppStmt, 2)}];
        v11 = [[TIUserModelDataStoreDurableEntry alloc] initWithCreationDate:v9 withLastUpdateDate:v10 withKey:*(a1 + 40) withValue:v8];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v11];
      }

      if (v7 != 101)
      {
        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;
      }

      sqlite3_finalize(*ppStmt);
    }
  }

  else
  {
    v12 = IXADefaultLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get durable value because the database is invalid.", "-[TIUserModelDataStore getDurableValueForKey:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v15;
      _os_log_error_impl(&dword_1863F7000, v12, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (id)getAllValuesForKey:(id)key forInputMode:(id)mode fromDate:(id)date toDate:(id)toDate
{
  keyCopy = key;
  modeCopy = mode;
  dateCopy = date;
  toDateCopy = toDate;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__13059;
  v40 = __Block_byref_object_dispose__13060;
  v41 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__13059;
  v34[4] = __Block_byref_object_dispose__13060;
  v14 = dateCopy;
  v35 = v14;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__13059;
  v32[4] = __Block_byref_object_dispose__13060;
  v15 = toDateCopy;
  v33 = v15;
  database_queue = self->_database_queue;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __72__TIUserModelDataStore_getAllValuesForKey_forInputMode_fromDate_toDate___block_invoke;
  v25 = &unk_1E6F4DA28;
  selfCopy = self;
  v29 = v34;
  v30 = v32;
  v31 = &v36;
  v17 = keyCopy;
  v27 = v17;
  v18 = modeCopy;
  v28 = v18;
  TIDispatchSync(database_queue, &v22);
  if ([v37[5] count])
  {
    v19 = v37[5];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(&v36, 8);

  return v20;
}

void __72__TIUserModelDataStore_getAllValuesForKey_forInputMode_fromDate_toDate___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v2 = [MEMORY[0x1E695DF00] distantPast];
      v3 = *(*(a1 + 56) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v5 = [MEMORY[0x1E695DF00] distantFuture];
      v6 = *(*(a1 + 64) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    *ppStmt = 0;
    v8 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), "SELECT key, value, secondary_value, real_value, properties, last_update_date FROM usermodeltransientrecords WHERE key = ? AND input_mode = ? AND last_update_date > ? AND last_update_date <= ?", -1, ppStmt, 0);
    if (*ppStmt && !v8)
    {
      v9 = [MEMORY[0x1E695DF70] array];
      v10 = *(*(a1 + 72) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
      sqlite3_bind_text(*ppStmt, 2, [*(a1 + 48) UTF8String], -1, 0);
      v12 = *ppStmt;
      [*(*(*(a1 + 56) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v12, 3, v13);
      v14 = *ppStmt;
      [*(*(*(a1 + 64) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v14, 4, v15);
      while (1)
      {
        v16 = sqlite3_step(*ppStmt);
        if (v16 != 100)
        {
          break;
        }

        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(*ppStmt, 0)}];
        v18 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*ppStmt, 1)}];
        v19 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*ppStmt, 2)}];
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(*ppStmt, 3)}];
        v21 = sqlite3_column_bytes(*ppStmt, 4);
        v22 = sqlite3_column_blob(*ppStmt, 4);
        if (v21)
        {
          v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v22 length:v21];
        }

        else
        {
          v23 = 0;
        }

        v24 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{sqlite3_column_double(*ppStmt, 5)}];
        v25 = [[TIUserModelDataStoreEntry alloc] initWithTimestamp:v24 withKey:v17 withInputMode:*(a1 + 48) withValue:v18 withSecondaryValue:v19 withRealValue:v20 withProperties:v23];
        [*(*(*(a1 + 72) + 8) + 40) addObject:v25];
      }

      if (v16 != 101)
      {
        v27 = *(*(a1 + 72) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = 0;
      }

      sqlite3_finalize(*ppStmt);
    }
  }

  else
  {
    v26 = IXADefaultLogFacility();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get values because the database is invalid.", "-[TIUserModelDataStore getAllValuesForKey:forInputMode:fromDate:toDate:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v29;
      _os_log_error_impl(&dword_1863F7000, v26, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (id)getDailyAndWeeklyValuesForKeyPrefix:(id)prefix forInputMode:(id)mode weeklyKeySuffixes:(id)suffixes endDate:(id)date
{
  prefixCopy = prefix;
  modeCopy = mode;
  suffixesCopy = suffixes;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__13059;
  v42 = __Block_byref_object_dispose__13060;
  v43 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__13059;
  v36[4] = __Block_byref_object_dispose__13060;
  dateCopy = date;
  v37 = dateCopy;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__13059;
  v34[4] = __Block_byref_object_dispose__13060;
  v35 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:kCommonMetricQueryTimeFrame * -86400.0];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__13059;
  v32[4] = __Block_byref_object_dispose__13060;
  v33 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:kFeatureUsageQueryTimeFrame * -86400.0];
  v13 = [prefixCopy stringByAppendingString:@"%"];
  database_queue = self->_database_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __99__TIUserModelDataStore_getDailyAndWeeklyValuesForKeyPrefix_forInputMode_weeklyKeySuffixes_endDate___block_invoke;
  v23[3] = &unk_1E6F4DA00;
  v23[4] = self;
  v15 = suffixesCopy;
  v24 = v15;
  v16 = prefixCopy;
  v25 = v16;
  v28 = &v38;
  v17 = v13;
  v26 = v17;
  v18 = modeCopy;
  v27 = v18;
  v29 = v36;
  v30 = v34;
  v31 = v32;
  TIDispatchSync(database_queue, v23);
  if ([v39[5] count])
  {
    v19 = v39[5];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);

  return v20;
}

void __99__TIUserModelDataStore_getDailyAndWeeklyValuesForKeyPrefix_forInputMode_weeklyKeySuffixes_endDate___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v51;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v51 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(a1 + 48) stringByAppendingString:*(*(&v50 + 1) + 8 * i)];
          [v2 addObject:v9];

          [v3 addObject:@"?"];
        }

        v6 = [v4 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v6);
    }

    if ([v2 count])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v3 componentsJoinedByString:{@", "}];
      v12 = [v10 stringWithFormat:@"(last_update_date > ? OR (last_update_date > ? AND key IN (%@)))", v11];
      v13 = [CFSTR(""SELECT key value];

      v14 = v13;
    }

    else
    {
      v14 = [CFSTR(""SELECT key value];
    }

    *buf = 0;
    v16 = *(*(a1 + 32) + 16);
    v45 = v14;
    v17 = sqlite3_prepare_v2(v16, [v45 UTF8String], -1, buf, 0);
    if (*buf && !v17)
    {
      v18 = [MEMORY[0x1E695DF70] array];
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      sqlite3_bind_text(*buf, 1, [*(a1 + 56) UTF8String], -1, 0);
      sqlite3_bind_text(*buf, 2, [*(a1 + 64) UTF8String], -1, 0);
      v21 = *buf;
      [*(*(*(a1 + 80) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v21, 3, v22);
      v23 = *buf;
      [*(*(*(a1 + 88) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v23, 4, v24);
      if (![v2 count])
      {
        goto LABEL_25;
      }

      v25 = *buf;
      [*(*(*(a1 + 96) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v25, 5, v26);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v27 = v2;
      v28 = [v27 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v47;
        v31 = 6;
        do
        {
          v32 = 0;
          v33 = v31;
          do
          {
            if (*v47 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v31 = v33 + 1;
            sqlite3_bind_text(*buf, v33++, [*(*(&v46 + 1) + 8 * v32++) UTF8String], -1, 0);
          }

          while (v29 != v32);
          v29 = [v27 countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v29);
      }

      while (1)
      {

LABEL_25:
        v34 = sqlite3_step(*buf);
        if (v34 != 100)
        {
          break;
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(*buf, 0)}];
        v35 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*buf, 1)}];
        v36 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*buf, 2)}];
        v37 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(*buf, 3)}];
        v38 = sqlite3_column_bytes(*buf, 4);
        v39 = sqlite3_column_blob(*buf, 4);
        v40 = 0;
        if (v38)
        {
          v40 = [MEMORY[0x1E695DEF0] dataWithBytes:v39 length:v38];
        }

        v41 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{sqlite3_column_double(*buf, 5)}];
        v42 = [[TIUserModelDataStoreEntry alloc] initWithTimestamp:v41 withKey:v27 withInputMode:*(a1 + 64) withValue:v35 withSecondaryValue:v36 withRealValue:v37 withProperties:v40];
        [*(*(*(a1 + 72) + 8) + 40) addObject:v42];
      }

      if (v34 != 101)
      {
        v43 = *(*(a1 + 72) + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = 0;
      }

      sqlite3_finalize(*buf);
    }
  }

  else
  {
    v2 = IXADefaultLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get values because the database is invalid.", "-[TIUserModelDataStore getDailyAndWeeklyValuesForKeyPrefix:forInputMode:weeklyKeySuffixes:endDate:]_block_invoke"];
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1863F7000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (id)getAllValuesForKeyPrefix:(id)prefix forInputMode:(id)mode sinceDate:(id)date
{
  modeCopy = mode;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__13059;
  v28 = __Block_byref_object_dispose__13060;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__13059;
  v22[4] = __Block_byref_object_dispose__13060;
  dateCopy = date;
  v23 = dateCopy;
  v10 = [prefix stringByAppendingString:@"%"];
  database_queue = self->_database_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__TIUserModelDataStore_getAllValuesForKeyPrefix_forInputMode_sinceDate___block_invoke;
  v17[3] = &unk_1E6F4DAA0;
  v17[4] = self;
  v20 = v22;
  v21 = &v24;
  v12 = v10;
  v18 = v12;
  v13 = modeCopy;
  v19 = v13;
  TIDispatchSync(database_queue, v17);
  if ([v25[5] count])
  {
    v14 = v25[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  return v15;
}

void __72__TIUserModelDataStore_getAllValuesForKeyPrefix_forInputMode_sinceDate___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v2 = [MEMORY[0x1E695DF00] distantPast];
      v3 = *(*(a1 + 56) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    *ppStmt = 0;
    v5 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), "SELECT key, value, secondary_value, real_value, properties, last_update_date FROM usermodeltransientrecords WHERE key LIKE ? AND input_mode = ? AND last_update_date > ?", -1, ppStmt, 0);
    if (*ppStmt && !v5)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
      sqlite3_bind_text(*ppStmt, 2, [*(a1 + 48) UTF8String], -1, 0);
      v9 = *ppStmt;
      [*(*(*(a1 + 56) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v9, 3, v10);
      while (1)
      {
        v11 = sqlite3_step(*ppStmt);
        if (v11 != 100)
        {
          break;
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(*ppStmt, 0)}];
        v13 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*ppStmt, 1)}];
        v14 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*ppStmt, 2)}];
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(*ppStmt, 3)}];
        v16 = sqlite3_column_bytes(*ppStmt, 4);
        v17 = sqlite3_column_blob(*ppStmt, 4);
        if (v16)
        {
          v18 = [MEMORY[0x1E695DEF0] dataWithBytes:v17 length:v16];
        }

        else
        {
          v18 = 0;
        }

        v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{sqlite3_column_double(*ppStmt, 5)}];
        v20 = [[TIUserModelDataStoreEntry alloc] initWithTimestamp:v19 withKey:v12 withInputMode:*(a1 + 48) withValue:v13 withSecondaryValue:v14 withRealValue:v15 withProperties:v18];
        [*(*(*(a1 + 64) + 8) + 40) addObject:v20];
      }

      if (v11 != 101)
      {
        v22 = *(*(a1 + 64) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = 0;
      }

      sqlite3_finalize(*ppStmt);
    }
  }

  else
  {
    v21 = IXADefaultLogFacility();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get values because the database is invalid.", "-[TIUserModelDataStore getAllValuesForKeyPrefix:forInputMode:sinceDate:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v24;
      _os_log_error_impl(&dword_1863F7000, v21, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (id)getAllValuesForKey:(id)key forInputMode:(id)mode sinceDate:(id)date
{
  keyCopy = key;
  modeCopy = mode;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__13059;
  v28 = __Block_byref_object_dispose__13060;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__13059;
  v22[4] = __Block_byref_object_dispose__13060;
  dateCopy = date;
  v23 = dateCopy;
  database_queue = self->_database_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__TIUserModelDataStore_getAllValuesForKey_forInputMode_sinceDate___block_invoke;
  v17[3] = &unk_1E6F4DAA0;
  v17[4] = self;
  v20 = v22;
  v21 = &v24;
  v12 = keyCopy;
  v18 = v12;
  v13 = modeCopy;
  v19 = v13;
  TIDispatchSync(database_queue, v17);
  if ([v25[5] count])
  {
    v14 = v25[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  return v15;
}

void __66__TIUserModelDataStore_getAllValuesForKey_forInputMode_sinceDate___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v2 = [MEMORY[0x1E695DF00] distantPast];
      v3 = *(*(a1 + 56) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    *ppStmt = 0;
    v5 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), "SELECT value, secondary_value, real_value, properties, last_update_date FROM usermodeltransientrecords WHERE key = ? AND input_mode = ? AND last_update_date > ? ORDER BY last_update_date ASC", -1, ppStmt, 0);
    if (*ppStmt && !v5)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
      sqlite3_bind_text(*ppStmt, 2, [*(a1 + 48) UTF8String], -1, 0);
      v9 = *ppStmt;
      [*(*(*(a1 + 56) + 8) + 40) timeIntervalSince1970];
      sqlite3_bind_double(v9, 3, v10);
      while (1)
      {
        v11 = sqlite3_step(*ppStmt);
        if (v11 != 100)
        {
          break;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*ppStmt, 0)}];
        v13 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*ppStmt, 1)}];
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(*ppStmt, 2)}];
        v15 = sqlite3_column_bytes(*ppStmt, 3);
        v16 = sqlite3_column_blob(*ppStmt, 3);
        if (v15)
        {
          v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v16 length:v15];
        }

        else
        {
          v17 = 0;
        }

        v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{sqlite3_column_double(*ppStmt, 4)}];
        v19 = [[TIUserModelDataStoreEntry alloc] initWithTimestamp:v18 withKey:*(a1 + 40) withInputMode:*(a1 + 48) withValue:v12 withSecondaryValue:v13 withRealValue:v14 withProperties:v17];
        [*(*(*(a1 + 64) + 8) + 40) addObject:v19];
      }

      if (v11 != 101)
      {
        v21 = *(*(a1 + 64) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = 0;
      }

      sqlite3_finalize(*ppStmt);
    }
  }

  else
  {
    v20 = IXADefaultLogFacility();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get values because the database is invalid.", "-[TIUserModelDataStore getAllValuesForKey:forInputMode:sinceDate:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v23;
      _os_log_error_impl(&dword_1863F7000, v20, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (BOOL)_updateDurableValue:(id)value forKey:(id)key forDate:(id)date withUpdateQuery:(const char *)query
{
  valueCopy = value;
  keyCopy = key;
  dateCopy = date;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  database_queue = self->_database_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__TIUserModelDataStore__updateDurableValue_forKey_forDate_withUpdateQuery___block_invoke;
  v18[3] = &unk_1E6F4D9D8;
  v18[4] = self;
  v19 = keyCopy;
  v22 = &v24;
  queryCopy = query;
  v20 = valueCopy;
  v21 = dateCopy;
  v14 = dateCopy;
  v15 = valueCopy;
  v16 = keyCopy;
  TIDispatchSync(database_queue, v18);
  LOBYTE(database_queue) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return database_queue;
}

void __75__TIUserModelDataStore__updateDurableValue_forKey_forDate_withUpdateQuery___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    *ppStmt = 0;
    v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), "SELECT value FROM usermodeldurablerecords WHERE key = ? ", -1, ppStmt, 0);
    if (*ppStmt)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = 1;
      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
      do
      {
        v5 = v4;
        v6 = sqlite3_step(*ppStmt);
        v4 = 0;
      }

      while (v6 == 100);
      if (v6 == 101)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      sqlite3_finalize(*ppStmt);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        v7 = (v5 & 1) != 0 ? "INSERT INTO usermodeldurablerecords (key,  value,  creation_date, last_update_date) VALUES (:key, :value, :creation_date, :last_update_date)" : *(a1 + 72);
        pStmt = 0;
        v9 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), v7, -1, &pStmt, 0);
        v10 = pStmt;
        if (pStmt)
        {
          if (!v9)
          {
            v11 = sqlite3_bind_parameter_index(pStmt, ":key");
            sqlite3_bind_text(v10, v11, [*(a1 + 40) UTF8String], -1, 0);
            v12 = pStmt;
            v13 = sqlite3_bind_parameter_index(pStmt, ":value");
            sqlite3_bind_int(v12, v13, [*(a1 + 48) intValue]);
            if (v5)
            {
              v14 = pStmt;
              v15 = sqlite3_bind_parameter_index(pStmt, ":creation_date");
              [*(a1 + 56) timeIntervalSince1970];
              sqlite3_bind_double(v14, v15, v16);
            }

            v17 = pStmt;
            v18 = sqlite3_bind_parameter_index(pStmt, ":last_update_date");
            [*(a1 + 56) timeIntervalSince1970];
            sqlite3_bind_double(v17, v18, v19);
            v20 = sqlite3_step(pStmt);
            v22 = v20 == 101 || v20 == 0;
            *(*(*(a1 + 64) + 8) + 24) = v22;
            sqlite3_finalize(pStmt);
          }
        }
      }
    }
  }

  else
  {
    v8 = IXADefaultLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't update durable value because the database is invalid.", "-[TIUserModelDataStore _updateDurableValue:forKey:forDate:withUpdateQuery:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v23;
      _os_log_error_impl(&dword_1863F7000, v8, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

- (BOOL)addValue:(id)value andSecondaryValue:(id)secondaryValue andRealValue:(id)realValue andProperties:(id)properties forKey:(id)key forInputMode:(id)mode forDate:(id)date
{
  valueCopy = value;
  secondaryValueCopy = secondaryValue;
  realValueCopy = realValue;
  propertiesCopy = properties;
  keyCopy = key;
  modeCopy = mode;
  dateCopy = date;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  database_queue = self->_database_queue;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __106__TIUserModelDataStore_addValue_andSecondaryValue_andRealValue_andProperties_forKey_forInputMode_forDate___block_invoke;
  v31[3] = &unk_1E6F4D9B0;
  v32 = keyCopy;
  v33 = modeCopy;
  selfCopy = self;
  v35 = valueCopy;
  v36 = secondaryValueCopy;
  v37 = realValueCopy;
  v38 = propertiesCopy;
  v39 = dateCopy;
  v40 = &v41;
  v23 = dateCopy;
  v24 = propertiesCopy;
  v25 = realValueCopy;
  v26 = secondaryValueCopy;
  v27 = valueCopy;
  v28 = modeCopy;
  v29 = keyCopy;
  TIDispatchSync(database_queue, v31);
  LOBYTE(database_queue) = *(v42 + 24);

  _Block_object_dispose(&v41, 8);
  return database_queue;
}

void __106__TIUserModelDataStore_addValue_andSecondaryValue_andRealValue_andProperties_forKey_forInputMode_forDate___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v17 = IXADefaultLogFacility();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Required field 'key' is nil. Ignoring value for key.", "-[TIUserModelDataStore addValue:andSecondaryValue:andRealValue:andProperties:forKey:forInputMode:forDate:]_block_invoke"];
    *ppStmt = 138412290;
    *&ppStmt[4] = v18;
LABEL_14:
    _os_log_error_impl(&dword_1863F7000, v17, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);

    goto LABEL_15;
  }

  if (!*(a1 + 40))
  {
    v17 = IXADefaultLogFacility();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Required field 'inputMode' is nil. Ignoring value for inputMode.", "-[TIUserModelDataStore addValue:andSecondaryValue:andRealValue:andProperties:forKey:forInputMode:forDate:]_block_invoke"];
    *ppStmt = 138412290;
    *&ppStmt[4] = v18;
    goto LABEL_14;
  }

  if (![*(a1 + 48) isDatabaseValid])
  {
    v17 = IXADefaultLogFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't add value because the database is invalid.", "-[TIUserModelDataStore addValue:andSecondaryValue:andRealValue:andProperties:forKey:forInputMode:forDate:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v18;
      goto LABEL_14;
    }

LABEL_15:

    return;
  }

  *ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 48) + 16), "INSERT INTO usermodeltransientrecords (key, input_mode, value,  secondary_value, real_value, properties, last_update_date) VALUES (:key, :input_mode, :value, :secondary_value, :real_value, :properties, :last_update_date)", -1, ppStmt, 0);
  v3 = *ppStmt;
  if (!*ppStmt || v2)
  {
    *(*(*(a1 + 96) + 8) + 24) = 0;
  }

  else
  {
    v4 = sqlite3_bind_parameter_index(*ppStmt, ":key");
    sqlite3_bind_text(v3, v4, [*(a1 + 32) UTF8String], -1, 0);
    v5 = *ppStmt;
    v6 = sqlite3_bind_parameter_index(*ppStmt, ":input_mode");
    sqlite3_bind_text(v5, v6, [*(a1 + 40) UTF8String], -1, 0);
    v7 = *ppStmt;
    v8 = sqlite3_bind_parameter_index(*ppStmt, ":value");
    sqlite3_bind_int(v7, v8, [*(a1 + 56) intValue]);
    v9 = *ppStmt;
    v10 = sqlite3_bind_parameter_index(*ppStmt, ":secondary_value");
    sqlite3_bind_int(v9, v10, [*(a1 + 64) intValue]);
    v11 = *ppStmt;
    v12 = sqlite3_bind_parameter_index(*ppStmt, ":real_value");
    [*(a1 + 72) doubleValue];
    sqlite3_bind_double(v11, v12, v13);
    v14 = *(a1 + 80);
    v15 = *ppStmt;
    v16 = sqlite3_bind_parameter_index(*ppStmt, ":properties");
    if (v14)
    {
      sqlite3_bind_blob(v15, v16, [*(a1 + 80) bytes], objc_msgSend(*(a1 + 80), "length"), 0);
    }

    else
    {
      sqlite3_bind_null(v15, v16);
    }

    v19 = *ppStmt;
    v20 = sqlite3_bind_parameter_index(*ppStmt, ":last_update_date");
    [*(a1 + 88) timeIntervalSince1970];
    sqlite3_bind_double(v19, v20, v21);
    v22 = sqlite3_step(*ppStmt);
    v24 = v22 == 101 || v22 == 0;
    *(*(*(a1 + 96) + 8) + 24) = v24;
    sqlite3_finalize(*ppStmt);
  }
}

- (id)transientMigrationSchemaForDatabase:(sqlite3 *)database
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(TIUserModelDataStore *)self transientVersionFromDatabase:database];
  if (v4 == 7)
  {
    transientCreationSchema2 = &stru_1EF56D550;
  }

  else
  {
    v5 = v4;
    if (v4)
    {
      v8 = IXADefaultLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Transient table to be reset from version %d to %d", "-[TIUserModelDataStore transientMigrationSchemaForDatabase:]", v5, 7];
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&dword_1863F7000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      transientResetSchema = [(TIUserModelDataStore *)self transientResetSchema];
      transientCreationSchema = [(TIUserModelDataStore *)self transientCreationSchema];
      transientCreationSchema2 = [transientResetSchema stringByAppendingString:transientCreationSchema];
    }

    else
    {
      v6 = IXADefaultLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Transient table to be created with version %d", "-[TIUserModelDataStore transientMigrationSchemaForDatabase:]", 7];
        *buf = 138412290;
        v15 = v13;
        _os_log_debug_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      transientCreationSchema2 = [(TIUserModelDataStore *)self transientCreationSchema];
    }
  }

  return transientCreationSchema2;
}

- (id)durableMigrationSchemaForDatabase:(sqlite3 *)database
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(TIUserModelDataStore *)self durableVersionFromDatabase:database];
  v5 = &stru_1EF56D550;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v14 = IXADefaultLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Durable table to be migrated from version %d to %d", "-[TIUserModelDataStore durableMigrationSchemaForDatabase:]", 2, 4];
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&dword_1863F7000, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      durableMigrationFromV2Schema = [(TIUserModelDataStore *)self durableMigrationFromV2Schema];
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_19;
      }

      v10 = IXADefaultLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Durable table to be migrated from version %d to %d", "-[TIUserModelDataStore durableMigrationSchemaForDatabase:]", 3, 4];
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_1863F7000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      durableMigrationFromV2Schema = [(TIUserModelDataStore *)self durableMigrationFromV3Schema];
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    v13 = IXADefaultLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Durable table to be created with version %d", "-[TIUserModelDataStore durableMigrationSchemaForDatabase:]", 4];
      *buf = 138412290;
      v19 = v17;
      _os_log_debug_impl(&dword_1863F7000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    durableMigrationFromV2Schema = [(TIUserModelDataStore *)self durableCreationSchema];
LABEL_18:
    v5 = durableMigrationFromV2Schema;
    goto LABEL_19;
  }

  if (v4 == 1)
  {
    v6 = IXADefaultLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Durable table to be reset from version %d to %d", "-[TIUserModelDataStore durableMigrationSchemaForDatabase:]", 1, 4];
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1863F7000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    durableResetSchema = [(TIUserModelDataStore *)self durableResetSchema];
    durableCreationSchema = [(TIUserModelDataStore *)self durableCreationSchema];
    v5 = [durableResetSchema stringByAppendingString:durableCreationSchema];
  }

LABEL_19:

  return v5;
}

- (id)propertiesMigrationSchemaForDatabase:(sqlite3 *)database
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [(TIUserModelDataStore *)self propertiesVersionFromDatabase:database];
  if (v4 == 1)
  {
    v7 = IXADefaultLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Properties table to be migrated from version %d to %d", "-[TIUserModelDataStore propertiesMigrationSchemaForDatabase:]", 1, 4];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1863F7000, v7, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    propertiesMigrationFromV1Schema = [(TIUserModelDataStore *)self propertiesMigrationFromV1Schema];
  }

  else if (v4)
  {
    propertiesMigrationFromV1Schema = &stru_1EF56D550;
  }

  else
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Properties table to be created with version %d", "-[TIUserModelDataStore propertiesMigrationSchemaForDatabase:]", 2];
      *buf = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_1863F7000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    propertiesMigrationFromV1Schema = [(TIUserModelDataStore *)self propertiesCreationSchema];
  }

  return propertiesMigrationFromV1Schema;
}

- (id)lastMigrationDateForKey:(id)key fromDatabase:(sqlite3 *)database
{
  keyCopy = key;
  if (database)
  {
    ppStmt = 0;
    v6 = sqlite3_prepare_v2(database, "SELECT value FROM properties WHERE key = ?", -1, &ppStmt, 0);
    database = 0;
    if (ppStmt && v6 == 0)
    {
      sqlite3_bind_text(ppStmt, 1, [keyCopy UTF8String], -1, 0);
      database = 0;
      if (sqlite3_step(ppStmt) == 100)
      {
        database = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{sqlite3_column_double(ppStmt, 0)}];
      }

      sqlite3_finalize(ppStmt);
    }
  }

  return database;
}

- (int)versionForKey:(id)key fromDatabase:(sqlite3 *)database
{
  keyCopy = key;
  if (database)
  {
    ppStmt = 0;
    v6 = sqlite3_prepare_v2(database, "SELECT value FROM properties WHERE key = ?", -1, &ppStmt, 0);
    if (ppStmt)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      sqlite3_bind_text(ppStmt, 1, [keyCopy UTF8String], -1, 0);
      if (sqlite3_step(ppStmt) == 100)
      {
        LODWORD(database) = sqlite3_column_int(ppStmt, 0);
      }

      else
      {
        LODWORD(database) = 0;
      }

      sqlite3_finalize(ppStmt);
    }

    else
    {
      LODWORD(database) = 0;
    }
  }

  return database;
}

- (NSDate)transientLastMigrationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13059;
  v10 = __Block_byref_object_dispose__13060;
  v11 = 0;
  database_queue = self->_database_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__TIUserModelDataStore_transientLastMigrationDate__block_invoke;
  v5[3] = &unk_1E6F4D988;
  v5[4] = self;
  v5[5] = &v6;
  TIDispatchSync(database_queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__TIUserModelDataStore_transientLastMigrationDate__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    v2 = [*(a1 + 32) transientLastMigrationDateFromDatabase:*(*(a1 + 32) + 16)];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    MEMORY[0x1EEE66BB8](v2, v4);
  }

  else
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get transient last migration date because the database is invalid.", "-[TIUserModelDataStore transientLastMigrationDate]_block_invoke"];
      *buf = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_1863F7000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (int)transientVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database_queue = self->_database_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__TIUserModelDataStore_transientVersion__block_invoke;
  v5[3] = &unk_1E6F4D988;
  v5[4] = self;
  v5[5] = &v6;
  TIDispatchSync(database_queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __40__TIUserModelDataStore_transientVersion__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) transientVersionFromDatabase:*(*(a1 + 32) + 16)];
  }

  else
  {
    v2 = IXADefaultLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get transient version because the database is invalid.", "-[TIUserModelDataStore transientVersion]_block_invoke"];
      *buf = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1863F7000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (int)transientVersionFromDatabase:(sqlite3 *)database
{
  result = [(TIUserModelDataStore *)self versionForKey:@"transient_version" fromDatabase:database];
  if (!result)
  {

    return [(TIUserModelDataStore *)self versionForKey:@"version" fromDatabase:database];
  }

  return result;
}

- (NSDate)durableLastMigrationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13059;
  v10 = __Block_byref_object_dispose__13060;
  v11 = 0;
  database_queue = self->_database_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__TIUserModelDataStore_durableLastMigrationDate__block_invoke;
  v5[3] = &unk_1E6F4D988;
  v5[4] = self;
  v5[5] = &v6;
  TIDispatchSync(database_queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__TIUserModelDataStore_durableLastMigrationDate__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    v2 = [*(a1 + 32) durableLastMigrationDateFromDatabase:*(*(a1 + 32) + 16)];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    MEMORY[0x1EEE66BB8](v2, v4);
  }

  else
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get durable last migration date because the database is invalid.", "-[TIUserModelDataStore durableLastMigrationDate]_block_invoke"];
      *buf = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_1863F7000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (int)durableVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database_queue = self->_database_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__TIUserModelDataStore_durableVersion__block_invoke;
  v5[3] = &unk_1E6F4D988;
  v5[4] = self;
  v5[5] = &v6;
  TIDispatchSync(database_queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __38__TIUserModelDataStore_durableVersion__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) durableVersionFromDatabase:*(*(a1 + 32) + 16)];
  }

  else
  {
    v2 = IXADefaultLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get durable version because the database is invalid.", "-[TIUserModelDataStore durableVersion]_block_invoke"];
      *buf = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1863F7000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (int)durableVersionFromDatabase:(sqlite3 *)database
{
  result = [(TIUserModelDataStore *)self versionForKey:@"durable_version" fromDatabase:database];
  if (!result)
  {
    result = [(TIUserModelDataStore *)self versionForKey:@"version" fromDatabase:database];
    if (result >= 2)
    {
      return 2;
    }
  }

  return result;
}

- (NSDate)propertiesLastMigrationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13059;
  v10 = __Block_byref_object_dispose__13060;
  v11 = 0;
  database_queue = self->_database_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__TIUserModelDataStore_propertiesLastMigrationDate__block_invoke;
  v5[3] = &unk_1E6F4D988;
  v5[4] = self;
  v5[5] = &v6;
  TIDispatchSync(database_queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__TIUserModelDataStore_propertiesLastMigrationDate__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    v2 = [*(a1 + 32) propertiesLastMigrationDateFromDatabase:*(*(a1 + 32) + 16)];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    MEMORY[0x1EEE66BB8](v2, v4);
  }

  else
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get properties last migration date because the database is invalid.", "-[TIUserModelDataStore propertiesLastMigrationDate]_block_invoke"];
      *buf = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_1863F7000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (int)propertiesVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database_queue = self->_database_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__TIUserModelDataStore_propertiesVersion__block_invoke;
  v5[3] = &unk_1E6F4D988;
  v5[4] = self;
  v5[5] = &v6;
  TIDispatchSync(database_queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__TIUserModelDataStore_propertiesVersion__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) propertiesVersionFromDatabase:*(*(a1 + 32) + 16)];
  }

  else
  {
    v2 = IXADefaultLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't get properties version because the database is invalid.", "-[TIUserModelDataStore propertiesVersion]_block_invoke"];
      *buf = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1863F7000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (int)propertiesVersionFromDatabase:(sqlite3 *)database
{
  result = [(TIUserModelDataStore *)self versionForKey:@"properties_version" fromDatabase:database];
  if (!result)
  {
    return [(TIUserModelDataStore *)self versionForKey:@"version" fromDatabase:database]> 0 || [(TIUserModelDataStore *)self versionForKey:@"durable_version" fromDatabase:database]>= 1;
  }

  return result;
}

- (id)transientCreationSchema
{
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE usermodeltransientrecords(   ROWID INTEGER PRIMARY KEY AUTOINCREMENT, key    TEXT  NOT NULL, input_mode      TEXT NOT NULL, value           INTEGER DEFAULT 0, secondary_value INTEGER DEFAULT 0, real_value       REAL DEFAULT 0, properties            BLOB, last_update_date       REAL DEFAULT 0, journaled);CREATE INDEX transient_key_index ON usermodeltransientrecords(key);CREATE INDEX transient_input_mode_index ON usermodeltransientrecords(input_mode);CREATE INDEX transient_last_update_date_index ON usermodeltransientrecords(last_update_date);INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %d);INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %f);", @"transient_version", 7, @"transient_last_migration_date", v4];
}

- (id)durableMigrationFromV3Schema
{
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %d);INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %f);", @"durable_version", 4, @"durable_last_migration_date", v4];
}

- (id)durableMigrationFromV2Schema
{
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %d);INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %f);", @"durable_version", 4, @"durable_last_migration_date", v4];
}

- (id)durableCreationSchema
{
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE usermodeldurablerecords(   ROWID INTEGER PRIMARY KEY AUTOINCREMENT, key    TEXT  NOT NULL, value           INTEGER DEFAULT 0, creation_date       REAL DEFAULT 0, last_update_date       REAL DEFAULT 0, journaled);CREATE INDEX durable_key_index ON usermodeldurablerecords(key);INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %d);INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %f);", @"durable_version", 4, @"durable_last_migration_date", v4];
}

- (id)propertiesMigrationFromV1Schema
{
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM properties WHERE key = '%@';INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %d);INSERT OR REPLACE INTO properties (key, value) VALUES ('%@', %f);", @"version", @"properties_version", 2, @"properties_last_migration_date", v4];
}

- (id)propertiesCreationSchema
{
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE properties( ROWID INTEGER PRIMARY KEY, key, value, UNIQUE (key));INSERT INTO properties (key, value) VALUES ('%@', %d);INSERT INTO properties (key, value) VALUES ('%@', %f);", @"properties_version", 2, @"properties_last_migration_date", v4];
}

- (BOOL)closeDatabase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  database_queue = self->_database_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__TIUserModelDataStore_closeDatabase__block_invoke;
  v5[3] = &unk_1E6F4D988;
  v5[4] = self;
  v5[5] = &v6;
  TIDispatchSync(database_queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __37__TIUserModelDataStore_closeDatabase__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = IXADefaultLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Closing database.", "-[TIUserModelDataStore closeDatabase]_block_invoke"];
      *buf = 138412290;
      v10 = v6;
      _os_log_debug_impl(&dword_1863F7000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v3 = sqlite3_close(*(*(a1 + 32) + 16));
    v4 = IXADefaultLogFacility();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Error closing database: %d %s", "-[TIUserModelDataStore closeDatabase]_block_invoke", v3, sqlite3_errmsg(*(*(a1 + 32) + 16))];
        *buf = 138412290;
        v10 = v7;
        _os_log_error_impl(&dword_1863F7000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Database closed.", "-[TIUserModelDataStore closeDatabase]_block_invoke"];
        *buf = 138412290;
        v10 = v8;
        _os_log_debug_impl(&dword_1863F7000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  *(*(a1 + 32) + 16) = 0;
}

- (BOOL)createOrOpenDatabase
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = IXADefaultLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Opening database.", "-[TIUserModelDataStore createOrOpenDatabase]"];
    *buf = 138412290;
    v34 = v25;
    _os_log_debug_impl(&dword_1863F7000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  uTF8String = [(NSString *)self->_path UTF8String];
  ppDb = 0;
  if (sqlite3_open_v2(uTF8String, &ppDb, 3145734, 0))
  {
    v5 = sqlite3_extended_errcode(ppDb);
    v6 = IXADefaultLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Couldn't open or create database at path %s: %d %s", "-[TIUserModelDataStore createOrOpenDatabase]", uTF8String, v5, sqlite3_errmsg(ppDb)];
      *buf = 138412290;
      v34 = v26;
      _os_log_error_impl(&dword_1863F7000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if ((TI_IS_FILE_CLASS_C(uTF8String) & 1) != 0 || TI_SET_PROTECTION_CLASS_C(uTF8String))
  {
    v8 = sqlite3_extended_result_codes(ppDb, 1);
    if (v8)
    {
      v9 = v8;
      v10 = IXADefaultLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Couldn't enable the extended result codes: %d %s", "-[TIUserModelDataStore createOrOpenDatabase]", v9, sqlite3_errmsg(ppDb)];
        *buf = 138412290;
        v34 = v27;
        _os_log_error_impl(&dword_1863F7000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    errmsg = 0;
    v11 = sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL", 0, 0, &errmsg);
    if (v11)
    {
      v12 = v11;
      v13 = IXADefaultLogFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Couldn't switch database to wal mode: %s %d %s", "-[TIUserModelDataStore createOrOpenDatabase]", errmsg, v12, sqlite3_errmsg(ppDb)];
        *buf = 138412290;
        v34 = v28;
        _os_log_error_impl(&dword_1863F7000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    sqlite3_free(errmsg);
    v14 = [(TIUserModelDataStore *)self propertiesMigrationSchemaForDatabase:ppDb];
    v15 = [(TIUserModelDataStore *)self durableMigrationSchemaForDatabase:ppDb];
    v16 = [(TIUserModelDataStore *)self transientMigrationSchemaForDatabase:ppDb];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v14, v15, v16];
    if ([v17 length])
    {
      v18 = sqlite3_exec(ppDb, "BEGIN", 0, 0, 0);
      v19 = v18;
      v20 = v18;
      if (v18)
      {
LABEL_23:
        v22 = IXADefaultLogFacility();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: The schema migration failed: %d %s", "-[TIUserModelDataStore createOrOpenDatabase]", v20, sqlite3_errmsg(ppDb)];
          *buf = 138412290;
          v34 = v29;
          _os_log_error_impl(&dword_1863F7000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        if (!v19)
        {
          sqlite3_exec(ppDb, "ROLLBACK", 0, 0, 0);
        }

        sqlite3_close(ppDb);
        v7 = 0;
        self->_user_model_db_failed = 1;
LABEL_31:

        return v7;
      }

      v21 = sqlite3_exec(ppDb, [v17 UTF8String], 0, 0, 0);
      if (v21 || (v21 = sqlite3_exec(ppDb, "COMMIT", 0, 0, 0), v21))
      {
        v20 = v21;
        goto LABEL_23;
      }
    }

    v23 = IXADefaultLogFacility();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Database opened.", "-[TIUserModelDataStore createOrOpenDatabase]"];
      *buf = 138412290;
      v34 = v30;
      _os_log_debug_impl(&dword_1863F7000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    self->_user_model_db = ppDb;
    v7 = 1;
    goto LABEL_31;
  }

LABEL_7:
  sqlite3_close(ppDb);
  v7 = 0;
  self->_user_model_db_failed = 1;
  return v7;
}

- (BOOL)isDatabaseValid
{
  if (self->_user_model_db)
  {
    return 1;
  }

  if (self->_user_model_db_failed)
  {
    return 0;
  }

  return [(TIUserModelDataStore *)self createOrOpenDatabase];
}

- (BOOL)isValid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database_queue = self->_database_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__TIUserModelDataStore_isValid__block_invoke;
  v5[3] = &unk_1E6F4D988;
  v5[4] = self;
  v5[5] = &v6;
  TIDispatchSync(database_queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __31__TIUserModelDataStore_isValid__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDatabaseValid];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  [(TIUserModelDataStore *)self closeDatabase];
  v3.receiver = self;
  v3.super_class = TIUserModelDataStore;
  [(TIUserModelDataStore *)&v3 dealloc];
}

- (TIUserModelDataStore)initWithPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = TIUserModelDataStore;
  v6 = [(TIUserModelDataStore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    v7->_user_model_db = 0;
    v7->_user_model_db_failed = 0;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

    v10 = dispatch_queue_create("com.apple.textInput.usermodeldatastorequeue", v9);
    database_queue = v7->_database_queue;
    v7->_database_queue = v10;
  }

  return v7;
}

+ (id)initializeDataStoreAtPath:(id)path
{
  pathCopy = path;
  TI_DEVICE_UNLOCKED_SINCE_BOOT();
  if (v4)
  {
    v5 = [[TIUserModelDataStore alloc] initWithPath:pathCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)purgeDurableDataForKeyPrefix:(id)prefix
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = [prefix stringByAppendingString:@"%"];
  database_queue = self->_database_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__TIUserModelDataStore_TestingSupport__purgeDurableDataForKeyPrefix___block_invoke;
  v8[3] = &unk_1E6F4DA50;
  v8[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  TIDispatchSync(database_queue, v8);
  LOBYTE(database_queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database_queue;
}

void __69__TIUserModelDataStore_TestingSupport__purgeDurableDataForKeyPrefix___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isDatabaseValid])
  {
    *ppStmt = 0;
    v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), "DELETE FROM usermodeldurablerecords WHERE key LIKE ?", -1, ppStmt, 0);
    if (*ppStmt)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      sqlite3_bind_text(*ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
      v5 = sqlite3_step(*ppStmt);
      v7 = v5 == 101 || v5 == 0;
      *(*(*(a1 + 48) + 8) + 24) = v7;
      sqlite3_finalize(*ppStmt);
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    v4 = IXADefaultLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s TIUserModelDataStore: Can't purge durable data because the database is invalid.", "-[TIUserModelDataStore(TestingSupport) purgeDurableDataForKeyPrefix:]_block_invoke"];
      *ppStmt = 138412290;
      *&ppStmt[4] = v8;
      _os_log_error_impl(&dword_1863F7000, v4, OS_LOG_TYPE_ERROR, "%@", ppStmt, 0xCu);
    }
  }
}

@end