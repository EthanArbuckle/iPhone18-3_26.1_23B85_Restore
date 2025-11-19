@interface PMLTrainingStore
+ (BOOL)_runQueries:(id)a3 andUpdateVersionTo:(unsigned int)a4 inTransactionOnDb:(id)a5 forStore:(id)a6;
+ (id)_sessionDataToBatchWithNumberOfColumns:(unint64_t)a3 rowsData:(id)a4 labelsData:(id)a5;
+ (id)getSchema:(unint64_t *)a3;
+ (id)inMemoryStoreForTesting;
+ (int64_t)_migrate:(id)a3 forStore:(id)a4;
+ (int64_t)migrate:(id)a3 to:(id)a4 forStore:(id)a5;
+ (void)setLastUsedTimestampLimit:(double)a3;
- (BOOL)_truncateDbIfCorrupted;
- (PMLTrainingStore)initWithPath:(id)a3 allowSkipSchema:(BOOL)a4;
- (id)getSchema:(unint64_t *)a3;
- (id)lastTrainingFeaturizationForModelName:(id)a3 andLocale:(id)a4;
- (id)sessionDimensionsForModel:(id)a3 startingRowId:(unint64_t)a4 onlyAppleInternal:(BOOL)a5 labelFilter:(id)a6;
- (id)sessionStats;
- (id)sessionStatsForSessionDescriptor:(id)a3;
- (int64_t)_openDbIfUnlocked;
- (int64_t)_unsafeOpenDbIfUnlocked;
- (unint64_t)numberOfRowsInTable:(id)a3;
- (unint64_t)sessionDescriptorIdFor:(id)a3;
- (void)_loadBatchForModel:(id)a3 privacyBudgetRefreshPeriod:(double)a4 labels:(id)a5 batchSize:(unint64_t)a6 block:(id)a7;
- (void)_loadDataForModel:(id)a3 positiveRowId:(unint64_t)a4 negativeRowId:(unint64_t)a5 excludeItemIdsUsedWithin:(double)a6 limit:(unint64_t)a7 onlyAppleInternal:(BOOL)a8 positiveLabel:(unint64_t)a9 skew:(double)a10 block:(id)a11;
- (void)_loadDataForModel:(id)a3 privacyBudgetRefreshPeriod:(double)a4 labelAndStartRows:(id)a5 batchSize:(unint64_t)a6 supportPerLabel:(unint64_t)a7 block:(id)a8;
- (void)_loadDataFromLabelAndTuples:(id)a3 model:(id)a4 numberOfRows:(unint64_t)a5 numberOfColumns:(unint64_t)a6 lastUsedMax:(double)a7 block:(id)a8;
- (void)_registerUnlockHandler;
- (void)_unregisterUnlockHandler;
- (void)closeDbForTesting;
- (void)convertToBagOfIdsVectorForModel:(id)a3;
- (void)dealloc;
- (void)deleteSessionsWithBundleId:(id)a3;
- (void)deleteSessionsWithBundleId:(id)a3 domainId:(id)a4;
- (void)deleteSessionsWithBundleId:(id)a3 itemId:(id)a4;
- (void)enumerateSessionDescriptorsUsingBlock:(id)a3;
- (void)limitSessionsByLastUsedTTL:(double)a3;
- (void)limitSessionsByMaxTimesAccessed;
- (void)limitSessionsForEachLabelWithSessionDescriptor:(id)a3 totalSessionLimit:(unint64_t)a4;
- (void)limitSessionsWithSessionDescriptor:(id)a3 withLabel:(id)a4 limit:(unint64_t)a5;
- (void)loadDataForModel:(id)a3 privacyBudgetRefreshPeriod:(double)a4 labels:(id)a5 batchSize:(unint64_t)a6 block:(id)a7;
- (void)loadSessionsForModel:(id)a3 privacyBudgetRefreshPeriod:(double)a4 labels:(id)a5 batchSize:(unint64_t)a6 block:(id)a7;
- (void)logDbNotOpenEvent;
- (void)setMaxTimesAccessed:(unint64_t)a3;
- (void)storeSession:(id)a3 label:(int64_t)a4 model:(id)a5;
- (void)storeSession:(id)a3 label:(int64_t)a4 model:(id)a5 bundleId:(id)a6 domainId:(id)a7 itemIds:(id)a8 isAppleInternal:(BOOL)a9;
- (void)updateLastTrainingFeaturizationForModel:(id)a3 andData:(id)a4;
- (void)vacuumDbWithDeferralBlock:(id)a3;
@end

@implementation PMLTrainingStore

- (void)closeDbForTesting
{
  [(_PASSqliteDatabase *)self->_db closePermanently];
  db = self->_db;
  self->_db = 0;
}

- (unint64_t)numberOfRowsInTable:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [@"SELECT count(*) FROM " stringByAppendingString:v4];
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__PMLTrainingStore_numberOfRowsInTable___block_invoke;
  v10[3] = &unk_279ABFDD8;
  v10[4] = &v11;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v6 onPrep:0 onRow:v10 onError:0];
  v8 = v12[3];

  _Block_object_dispose(&v11, 8);
  objc_autoreleasePoolPop(v5);

  return v8;
}

- (void)storeSession:(id)a3 label:(int64_t)a4 model:(id)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 stringWithFormat:@"%d", arc4random_uniform(0x2710u)];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  LOBYTE(v14) = 1;
  [(PMLTrainingStore *)self storeSession:v10 label:a4 model:v9 bundleId:@"test" domainId:@"foo" itemIds:v12 isAppleInternal:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)logDbNotOpenEvent
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    db = self->_db;
    v6 = 138412802;
    v7 = db;
    v8 = 1024;
    v9 = [MEMORY[0x277D42598] isUnlocked];
    v10 = 1024;
    v11 = [MEMORY[0x277D42598] isClassCLocked];
    _os_log_impl(&dword_260D68000, v3, OS_LOG_TYPE_DEFAULT, "db: %@, isUnlocked: %d, isClassCLocked: %d", &v6, 0x18u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setMaxTimesAccessed:(unint64_t)a3
{
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_260D68000, v3, OS_LOG_TYPE_FAULT, "setMaxTimesAccessed should only be called for testing.", v4, 2u);
  }
}

- (id)getSchema:(unint64_t *)a3
{
  if (getSchema___pasOnceToken828 != -1)
  {
    dispatch_once(&getSchema___pasOnceToken828, &__block_literal_global_310);
  }

  v5 = getSchema___pasExprOnceResult;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1041;
  v18 = __Block_byref_object_dispose__1042;
  v19 = objc_opt_new();
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __30__PMLTrainingStore_getSchema___block_invoke_2;
  v11[3] = &unk_279AC00E8;
  v7 = v5;
  v12 = v7;
  v13 = &v14;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__PMLTrainingStore_getSchema___block_invoke_3;
  v10[3] = &unk_279AC0110;
  v10[4] = &v14;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT sql FROM sqlite_master WHERE sql IS NOT NULL AND tbl_name NOT LIKE 'sqlite_%' " onPrep:0 onRow:v11 onError:v10];
  if (a3)
  {
    *a3 = [(_PASSqliteDatabase *)self->_db userVersion];
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __30__PMLTrainingStore_getSchema___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  if (([v3 hasPrefix:@"CREATE TABLE integrityCheck"] & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v4 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), @" "}];

      v3 = v5;
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }

  v6 = MEMORY[0x277D42690];

  return *v6;
}

uint64_t __30__PMLTrainingStore_getSchema___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PML_LogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "Error querying schema: %@", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

void __30__PMLTrainingStore_getSchema___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[ ]{2 options:}" error:{0, 0}];
  v2 = getSchema___pasExprOnceResult;
  getSchema___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)convertToBagOfIdsVectorForModel:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__PMLTrainingStore_convertToBagOfIdsVectorForModel___block_invoke;
  v8[3] = &unk_279AC00C0;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [(_PASSqliteDatabase *)db writeTransaction:v8];

  objc_autoreleasePoolPop(v5);
}

void __52__PMLTrainingStore_convertToBagOfIdsVectorForModel___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__PMLTrainingStore_convertToBagOfIdsVectorForModel___block_invoke_2;
  v4[3] = &unk_279ABFDB0;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__PMLTrainingStore_convertToBagOfIdsVectorForModel___block_invoke_3;
  v3[3] = &unk_279AC0280;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT s.id onPrep:s.sessionDescriptorId onRow:s.covariatesIndices onError:{s.covariatesValues FROM sessions s CROSS JOIN sessionsDescriptors sd ON s.sessionDescriptorId = sd.id WHERE sd.name = :name AND sd.locale = :locale", v4, v3, &__block_literal_global_305}];
}

void __52__PMLTrainingStore_convertToBagOfIdsVectorForModel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 name];
  [v4 bindNamedParam:":name" toNSString:v5];

  v6 = [*(a1 + 32) locale];
  [v4 bindNamedParam:":locale" toNSString:v6];
}

uint64_t __52__PMLTrainingStore_convertToBagOfIdsVectorForModel___block_invoke_3(uint64_t a1, void *a2)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getIntegerForColumn:0];
  v5 = [v3 getNSDataForColumn:2];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = [v3 getNSDataForColumn:3];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  v15 = [v9 mutableBytes];
  v16 = [v14 mutableBytes];
  v17 = [v9 length];
  if (v17 >= 4)
  {
    v18 = 0;
    do
    {
      *(v16 + 4 * v18) = *(v15 + 4 * v18);
      *(v15 + 4 * v18) = v18;
      ++v18;
    }

    while (v17 >> 2 != v18);
  }

  v19 = *(*(a1 + 32) + 16);
  v26[0] = @"covariatesIndices";
  v20 = [v9 copy];
  v26[1] = @"covariatesValues";
  v27[0] = v20;
  v21 = [v14 copy];
  v27[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"id = %ld", v4];
  [v19 updateTable:@"sessions" dictionary:v22 whereClause:v23 onError:&__block_literal_global_303];

  v24 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (void)updateLastTrainingFeaturizationForModel:(id)a3 andData:(id)a4
{
  v6 = a3;
  v7 = a4;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__PMLTrainingStore_updateLastTrainingFeaturizationForModel_andData___block_invoke;
  v11[3] = &unk_279AC0098;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASSqliteDatabase *)db writeTransaction:v11];
}

void __68__PMLTrainingStore_updateLastTrainingFeaturizationForModel_andData___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__PMLTrainingStore_updateLastTrainingFeaturizationForModel_andData___block_invoke_2;
  v12[3] = &unk_279ABFDB0;
  v13 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__PMLTrainingStore_updateLastTrainingFeaturizationForModel_andData___block_invoke_3;
  v11[3] = &unk_279ABFDD8;
  v11[4] = &v14;
  [v2 prepAndRunQuery:@"SELECT sd.id FROM sessionsDescriptors sd CROSS JOIN lastFeaturizations lf ON lf.sessionDescriptorId = sd.id WHERE sd.name = :name AND sd.locale = :locale" onPrep:v12 onRow:v11 onError:&__block_literal_global_283];
  v3 = [*(a1 + 32) sessionDescriptorIdFor:*(a1 + 40)];
  v18[0] = @"sessionDescriptorId";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v18[1] = @"transformer";
  v19[0] = v4;
  v19[1] = *(a1 + 48);
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (v15[3])
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [v8 initWithFormat:@"sessionDescriptorId = %lu", v15[3]];
    [v7 updateTable:@"lastFeaturizations" dictionary:v5 whereClause:v9 onError:&__block_literal_global_295];
  }

  else
  {
    [*(v6 + 16) insertIntoTable:@"lastFeaturizations" dictionary:v5];
  }

  _Block_object_dispose(&v14, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __68__PMLTrainingStore_updateLastTrainingFeaturizationForModel_andData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 name];
  [v4 bindNamedParam:":name" toNSString:v5];

  v6 = [*(a1 + 32) locale];
  [v4 bindNamedParam:":locale" toNSString:v6];
}

uint64_t __68__PMLTrainingStore_updateLastTrainingFeaturizationForModel_andData___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "Failed to load last training featurization in db. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (id)lastTrainingFeaturizationForModelName:(id)a3 andLocale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1041;
  v24 = __Block_byref_object_dispose__1042;
  v25 = 0;
  db = self->_db;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__PMLTrainingStore_lastTrainingFeaturizationForModelName_andLocale___block_invoke;
  v17[3] = &unk_279ABFE98;
  v18 = v6;
  v19 = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__PMLTrainingStore_lastTrainingFeaturizationForModelName_andLocale___block_invoke_2;
  v13[3] = &unk_279AC0070;
  v9 = v18;
  v14 = v9;
  v10 = v19;
  v15 = v10;
  v16 = &v20;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT sd.version onPrep:lf.transformer FROM sessionsDescriptors sd CROSS JOIN lastFeaturizations lf ON lf.sessionDescriptorId = sd.id WHERE sd.name = :name AND sd.locale = :locale" onRow:v17 onError:v13, &__block_literal_global_278];
  v11 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __68__PMLTrainingStore_lastTrainingFeaturizationForModelName_andLocale___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":name" toNSString:v3];
  [v4 bindNamedParam:":locale" toNSString:*(a1 + 40)];
}

uint64_t __68__PMLTrainingStore_lastTrainingFeaturizationForModelName_andLocale___block_invoke_2(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 getNSStringForColumn:0];
    if (v5)
    {
      v6 = [PMLSessionDescriptor descriptorForName:a1[4] version:v5 locale:a1[5]];
      v7 = [v4 getNSDataForColumn:1];
      v8 = [MEMORY[0x277D42648] tupleWithFirst:v6 second:v7];
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *MEMORY[0x277D42698];
    }

    else
    {
      v13 = PML_LogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = 0;
        _os_log_error_impl(&dword_260D68000, v13, OS_LOG_TYPE_ERROR, "Row in sessionStats contained unexpected null value, version %@, continuing to iterate as best effort", &v16, 0xCu);
      }

      v11 = *MEMORY[0x277D42690];
    }
  }

  else
  {
    v12 = PML_LogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_260D68000, v12, OS_LOG_TYPE_ERROR, "Row returned in lastTrainingFeaturizationForModelName was null, continuing to iterate as best effort", &v16, 2u);
    }

    v11 = *MEMORY[0x277D42690];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __68__PMLTrainingStore_lastTrainingFeaturizationForModelName_andLocale___block_invoke_276(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "Failed to load last training featurization in db. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)vacuumDbWithDeferralBlock:(id)a3
{
  v4 = a3;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PMLTrainingStore_vacuumDbWithDeferralBlock___block_invoke;
  v7[3] = &unk_279ABFFF8;
  v8 = v4;
  v6 = v4;
  [(_PASSqliteDatabase *)db vacuumWithShouldContinueBlock:v7 error:0];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_debug_impl(&dword_260D68000, v3, OS_LOG_TYPE_DEBUG, "%@ deallocating", buf, 0xCu);
  }

  [(PMLTrainingStore *)self _unregisterUnlockHandler];
  [(_PASSqliteDatabase *)self->_db closePermanently];
  v5.receiver = self;
  v5.super_class = PMLTrainingStore;
  [(PMLTrainingStore *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_truncateDbIfCorrupted
{
  v13 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D42630] isInMemoryPath:self->_dbPath])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D42630] corruptionMarkerPathForPath:self->_dbPath];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v5 fileExistsAtPath:v4];

    if (v3)
    {
      v6 = PML_LogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        dbPath = self->_dbPath;
        v11 = 138412290;
        v12 = dbPath;
        _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEFAULT, "PMLTraining db (%@) corrupted. Flushing.", &v11, 0xCu);
      }

      [MEMORY[0x277D42630] truncateDatabaseAtPath:self->_dbPath];
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      [v8 removeItemAtPath:v4 error:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int64_t)_unsafeOpenDbIfUnlocked
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_db)
  {
    v2 = 0;
  }

  else if ([MEMORY[0x277D42598] isUnlocked])
  {
    [(PMLTrainingStore *)self _truncateDbIfCorrupted];
    for (i = 1; ; i = 0)
    {
      v5 = PML_LogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        dbPath = self->_dbPath;
        *buf = 138412290;
        v16 = dbPath;
        _os_log_debug_impl(&dword_260D68000, v5, OS_LOG_TYPE_DEBUG, "Opening db %@.", buf, 0xCu);
      }

      v6 = [MEMORY[0x277D42630] initializeDatabase:self->_dbPath withContentProtection:2 newDatabaseCreated:0 errorHandler:0];
      if (!v6)
      {
        break;
      }

      v7 = v6;
      v2 = [PMLTrainingStore _migrate:v6 forStore:self];
      if (!v2)
      {
        db = self->_db;
        self->_db = v7;

        [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"PRAGMA foreign_keys = ON" onPrep:0 onRow:0 onError:&__block_literal_global_264];
        [(PMLTrainingStore *)self _unregisterUnlockHandler];
        goto LABEL_22;
      }

      v8 = PML_LogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = self->_dbPath;
        *buf = 138412290;
        v16 = v10;
        _os_log_debug_impl(&dword_260D68000, v8, OS_LOG_TYPE_DEBUG, "Closing db %@.", buf, 0xCu);
      }

      [(_PASSqliteDatabase *)v7 closePermanently];
      if (v2 == 2)
      {
        [(PMLTrainingStore *)self _unregisterUnlockHandler];
        goto LABEL_21;
      }

      if ((i & 1) == 0 || ![(PMLTrainingStore *)self _truncateDbIfCorrupted])
      {
        goto LABEL_21;
      }
    }

    v11 = PML_LogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_260D68000, v11, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to open/initialize db.", buf, 2u);
    }

    v7 = 0;
    v2 = 3;
LABEL_21:
  }

  else
  {
    v2 = 1;
  }

LABEL_22:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __43__PMLTrainingStore__unsafeOpenDbIfUnlocked__block_invoke()
{
  v0 = PML_LogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_260D68000, v0, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to enable foreign keys support.", v2, 2u);
  }

  return *MEMORY[0x277D42698];
}

- (int64_t)_openDbIfUnlocked
{
  pthread_mutex_lock(&_openDbIfUnlocked_openDbMutex);
  v3 = [(PMLTrainingStore *)self _unsafeOpenDbIfUnlocked];
  pthread_mutex_unlock(&_openDbIfUnlocked_openDbMutex);
  return v3;
}

- (void)_unregisterUnlockHandler
{
  if (self->_lockStateNotificationToken)
  {
    [MEMORY[0x277D42598] unregisterForLockStateChangeNotifications:?];
    lockStateNotificationToken = self->_lockStateNotificationToken;
    self->_lockStateNotificationToken = 0;
  }
}

- (void)_registerUnlockHandler
{
  if (self->_lockStateNotificationToken)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PMLTrainingStore.m" lineNumber:1005 description:{@"Invalid parameter not satisfying: %@", @"!_lockStateNotificationToken"}];
  }

  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D42598];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PMLTrainingStore__registerUnlockHandler__block_invoke;
  v8[3] = &unk_279ABFFD0;
  objc_copyWeak(&v9, &location);
  v4 = [v3 registerForLockStateChangeNotifications:v8];
  lockStateNotificationToken = self->_lockStateNotificationToken;
  self->_lockStateNotificationToken = v4;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __42__PMLTrainingStore__registerUnlockHandler__block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = PML_LogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_debug_impl(&dword_260D68000, v4, OS_LOG_TYPE_DEBUG, "PMLTrainingStore notified of device lock state change to %d", v7, 8u);
  }

  if (a2 == 3 || !a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _openDbIfUnlocked];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)sessionDescriptorIdFor:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PMLTrainingStore_sessionDescriptorIdFor___block_invoke;
  v9[3] = &unk_279ABFFA8;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_PASSqliteDatabase *)db writeTransaction:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __43__PMLTrainingStore_sessionDescriptorIdFor___block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__PMLTrainingStore_sessionDescriptorIdFor___block_invoke_2;
  v11[3] = &unk_279ABFDB0;
  v12 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__PMLTrainingStore_sessionDescriptorIdFor___block_invoke_3;
  v10[3] = &unk_279ABFDD8;
  v10[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT id FROM sessionsDescriptors WHERE name = :name AND version = :version AND locale = :locale" onPrep:v11 onRow:v10 onError:0];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);
    v13[0] = @"name";
    v5 = [v3 name];
    v14[0] = v5;
    v13[1] = @"version";
    v6 = [*(a1 + 40) version];
    v14[1] = v6;
    v13[2] = @"locale";
    v7 = [*(a1 + 40) locale];
    v14[2] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    [v4 insertIntoTable:@"sessionsDescriptors" dictionary:v8];

    *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 16) lastInsertRowId];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __43__PMLTrainingStore_sessionDescriptorIdFor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 name];
  [v4 bindNamedParam:":name" toNSString:v5];

  v6 = [*(a1 + 32) version];
  [v4 bindNamedParam:":version" toNSString:v6];

  v7 = [*(a1 + 32) locale];
  [v4 bindNamedParam:":locale" toNSString:v7];
}

- (void)enumerateSessionDescriptorsUsingBlock:(id)a3
{
  v4 = a3;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PMLTrainingStore_enumerateSessionDescriptorsUsingBlock___block_invoke_2;
  v7[3] = &unk_279ABFF80;
  v8 = v4;
  v6 = v4;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT name onPrep:version onRow:locale FROM sessionsDescriptors" onError:&__block_literal_global_237, v7, 0];
}

uint64_t __58__PMLTrainingStore_enumerateSessionDescriptorsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 getNSStringForColumn:0];
    v6 = [v4 getNSStringForColumn:1];
    v7 = [v4 getNSStringForColumn:2];
    v8 = v7;
    if (v5 && v6 && v7)
    {
      v9 = [PMLSessionDescriptor descriptorForName:v5 version:v6 locale:v7];
      LOBYTE(v15) = 0;
      (*(*(a1 + 32) + 16))();
      v10 = *MEMORY[0x277D42690];
    }

    else
    {
      v12 = PML_LogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412802;
        v16 = v5;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v8;
        _os_log_error_impl(&dword_260D68000, v12, OS_LOG_TYPE_ERROR, "Row in enumerateSessionDescriptorsUsingBlock contained unexpected null value, name %@, version %@, locale %@, continuing to iterate as best effort", &v15, 0x20u);
      }

      v10 = *MEMORY[0x277D42690];
    }
  }

  else
  {
    v11 = PML_LogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_260D68000, v11, OS_LOG_TYPE_ERROR, "Row returned in enumerateSessionDescriptorsUsingBlock was null, continuing to iterate as best effort", &v15, 2u);
    }

    v10 = *MEMORY[0x277D42690];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)sessionStatsForSessionDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(PMLTrainingStore *)self sessionStats];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)sessionStats
{
  v3 = objc_opt_new();
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32__PMLTrainingStore_sessionStats__block_invoke;
  v11[3] = &unk_279ABFDB0;
  v11[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__PMLTrainingStore_sessionStats__block_invoke_2;
  v9[3] = &unk_279AC0280;
  v5 = v3;
  v10 = v5;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT mh.name onPrep:mh.version onRow:mh.locale onError:s.label, count(*) FROM sessions s INNER JOIN sessionsDescriptors mh ON s.sessionDescriptorId = mh.id INNER JOIN sessionsItemIds sii ON s.id = sii.sessionId WHERE sii.timesAccessed < :timesUsedMax GROUP BY s.sessionDescriptorId, s.label ORDER BY s.sessionDescriptorId, s.label", v11, v9, &__block_literal_global_232];
  v6 = v10;
  v7 = v5;

  return v5;
}

uint64_t __32__PMLTrainingStore_sessionStats__block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 getNSStringForColumn:0];
    v6 = [v4 getNSStringForColumn:1];
    v7 = [v4 getNSStringForColumn:2];
    v8 = v7;
    if (v5 && v6 && v7)
    {
      v9 = [PMLSessionDescriptor descriptorForName:v5 version:v6 locale:v7];
      v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
      if (!v10)
      {
        v11 = *(a1 + 32);
        v10 = objc_opt_new();
        [v11 setObject:v10 forKeyedSubscript:v9];
      }

      v12 = [v4 getIntegerForColumn:3];
      v13 = [v4 getIntegerForColumn:4];
      v14 = MEMORY[0x277D42648];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v17 = [v14 tupleWithFirst:v15 second:v16];
      [v10 addObject:v17];

      v18 = *MEMORY[0x277D42690];
    }

    else
    {
      v20 = PML_LogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412802;
        v24 = v5;
        v25 = 2112;
        v26 = v6;
        v27 = 2112;
        v28 = v8;
        _os_log_error_impl(&dword_260D68000, v20, OS_LOG_TYPE_ERROR, "Row in sessionStats contained unexpected null value, name %@, version %@, locale %@, continuing to iterate as best effort", &v23, 0x20u);
      }

      v18 = *MEMORY[0x277D42690];
    }
  }

  else
  {
    v19 = PML_LogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_260D68000, v19, OS_LOG_TYPE_ERROR, "Row returned in sessionStats was null, continuing to iterate as best effort", &v23, 2u);
    }

    v18 = *MEMORY[0x277D42690];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __32__PMLTrainingStore_sessionStats__block_invoke_230(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "Failed to load stats about sessions in db. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)deleteSessionsWithBundleId:(id)a3 domainId:(id)a4
{
  v6 = a3;
  v7 = a4;
  db = self->_db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__PMLTrainingStore_deleteSessionsWithBundleId_domainId___block_invoke;
  v14[3] = &unk_279ABFE98;
  v15 = v6;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__PMLTrainingStore_deleteSessionsWithBundleId_domainId___block_invoke_2;
  v11[3] = &unk_279ABFF38;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM sessions WHERE id IN (SELECT sessionId FROM sessionsDomainIds WHERE bundleIdentifier = :bundleIdentifier AND domainIdentifier = :domainIdentifier  UNION ALL SELECT sessionId FROM sessionsDomainIds WHERE bundleIdentifier = :bundleIdentifier AND domainIdentifier >= :domainIdentifier || '.' AND domainIdentifier < :domainIdentifier || '/')" onPrep:v14 onRow:0 onError:v11];
}

void __56__PMLTrainingStore_deleteSessionsWithBundleId_domainId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleIdentifier" toNSString:v3];
  [v4 bindNamedParam:":domainIdentifier" toNSString:*(a1 + 40)];
}

uint64_t __56__PMLTrainingStore_deleteSessionsWithBundleId_domainId___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PML_LogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to delete sessions for bundleId=%@ and domainId=%@. Error: %@", &v9, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)deleteSessionsWithBundleId:(id)a3 itemId:(id)a4
{
  v6 = a3;
  v7 = a4;
  db = self->_db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__PMLTrainingStore_deleteSessionsWithBundleId_itemId___block_invoke;
  v14[3] = &unk_279ABFE98;
  v15 = v6;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__PMLTrainingStore_deleteSessionsWithBundleId_itemId___block_invoke_2;
  v11[3] = &unk_279ABFF38;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM sessions WHERE id IN (SELECT sessionId FROM sessionsItemIds WHERE bundleIdentifier = :bundleIdentifier AND itemIdentifier = :itemIdentifier)" onPrep:v14 onRow:0 onError:v11];
}

void __54__PMLTrainingStore_deleteSessionsWithBundleId_itemId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleIdentifier" toNSString:v3];
  [v4 bindNamedParam:":itemIdentifier" toNSString:*(a1 + 40)];
}

uint64_t __54__PMLTrainingStore_deleteSessionsWithBundleId_itemId___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PML_LogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to delete sessions for for bundleId=%@ and itemId=%@. Error: %@", &v9, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)deleteSessionsWithBundleId:(id)a3
{
  v4 = a3;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PMLTrainingStore_deleteSessionsWithBundleId___block_invoke;
  v9[3] = &unk_279ABFDB0;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PMLTrainingStore_deleteSessionsWithBundleId___block_invoke_2;
  v7[3] = &unk_279ABFC48;
  v8 = v10;
  v6 = v10;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"DELETE FROM sessions WHERE id IN (SELECT sessionId FROM sessionsItemIds WHERE bundleIdentifier = :bundleIdentifier)" onPrep:v9 onRow:0 onError:v7];
}

uint64_t __47__PMLTrainingStore_deleteSessionsWithBundleId___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PML_LogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to delete sessions for bundleId=%@. Error: %@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)limitSessionsWithSessionDescriptor:(id)a3 withLabel:(id)a4 limit:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = @"label = :label AND";
  if (!v9)
  {
    v10 = &stru_28734BC68;
  }

  v11 = v10;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT count(*) FROM sessions WHERE %@ UNLIKELY(sessionDescriptorId = (SELECT id FROM sessionsDescriptors WHERE name = :name AND version = :version AND locale = :locale))", v11];
  db = self->_db;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke;
  v26[3] = &unk_279ABFEC0;
  v26[4] = self;
  v14 = v12;
  v27 = v14;
  v15 = v8;
  v28 = v15;
  v16 = v9;
  v29 = v16;
  v30 = &v31;
  [(_PASSqliteDatabase *)db readTransaction:v26];
  v17 = v32[3];
  v18 = v17 - a5;
  if (v17 >= a5)
  {
    v19 = self->_db;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_206;
    v20[3] = &unk_279ABFF10;
    v21 = v11;
    v22 = self;
    v23 = v15;
    v24 = v16;
    v25 = v18;
    [(_PASSqliteDatabase *)v19 writeTransaction:v20];
  }

  _Block_object_dispose(&v31, 8);
}

void __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_2;
  v5[3] = &unk_279ABFE98;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_3;
  v4[3] = &unk_279ABFDD8;
  v4[4] = *(a1 + 64);
  [v3 prepAndRunQuery:v2 onPrep:v5 onRow:v4 onError:&__block_literal_global_205];
}

void __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_206(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM sessions WHERE id IN(  SELECT id FROM sessions   WHERE %@   UNLIKELY(sessionDescriptorId = (SELECT id FROM sessionsDescriptors WHERE name = :name AND version = :version AND locale = :locale))   ORDER BY RANDOM() LIMIT :limit)", *(a1 + 32)];
  v3 = *(*(a1 + 40) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_2_210;
  v6[3] = &unk_279ABFEE8;
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8 = v4;
  v9 = v5;
  [v3 prepAndRunQuery:v2 onPrep:v6 onRow:0 onError:&__block_literal_global_213];
}

void __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_2_210(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) name];
  [v7 bindNamedParam:":name" toNSString:v3];

  v4 = [*(a1 + 32) version];
  [v7 bindNamedParam:":version" toNSString:v4];

  v5 = [*(a1 + 32) locale];
  [v7 bindNamedParam:":locale" toNSString:v5];

  v6 = *(a1 + 40);
  if (v6)
  {
    [v7 bindNamedParam:":label" toInteger:{objc_msgSend(v6, "integerValue")}];
  }

  [v7 bindNamedParam:":limit" toInteger:*(a1 + 48)];
}

uint64_t __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_3_211(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to delete sessions. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

void __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) name];
  [v7 bindNamedParam:":name" toNSString:v3];

  v4 = [*(a1 + 32) version];
  [v7 bindNamedParam:":version" toNSString:v4];

  v5 = [*(a1 + 32) locale];
  [v7 bindNamedParam:":locale" toNSString:v5];

  v6 = *(a1 + 40);
  if (v6)
  {
    [v7 bindNamedParam:":label" toInteger:{objc_msgSend(v6, "integerValue")}];
  }
}

uint64_t __71__PMLTrainingStore_limitSessionsWithSessionDescriptor_withLabel_limit___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to count labeled sessions. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)limitSessionsByMaxTimesAccessed
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__PMLTrainingStore_limitSessionsByMaxTimesAccessed__block_invoke;
  v3[3] = &unk_279ABFE70;
  v3[4] = self;
  [(_PASSqliteDatabase *)db writeTransaction:v3];
}

uint64_t __51__PMLTrainingStore_limitSessionsByMaxTimesAccessed__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PMLTrainingStore_limitSessionsByMaxTimesAccessed__block_invoke_2;
  v4[3] = &unk_279ABFDB0;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"DELETE FROM sessions WHERE (id in (SELECT sessionId from sessionsItemIds WHERE timesAccessed >= :maxTimesAccessed))" onPrep:v4 onRow:0 onError:&__block_literal_global_196];
}

uint64_t __51__PMLTrainingStore_limitSessionsByMaxTimesAccessed__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to delete over used sessions. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)limitSessionsByLastUsedTTL:(double)a3
{
  v5 = objc_opt_new();
  [v5 timeIntervalSince1970];
  v7 = v6;

  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PMLTrainingStore_limitSessionsByLastUsedTTL___block_invoke;
  v9[3] = &unk_279ABFE48;
  v9[4] = self;
  *&v9[5] = v7 - a3;
  [(_PASSqliteDatabase *)db writeTransaction:v9];
}

uint64_t __47__PMLTrainingStore_limitSessionsByLastUsedTTL___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PMLTrainingStore_limitSessionsByLastUsedTTL___block_invoke_2;
  v3[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v3[4] = *(a1 + 40);
  return [v1 prepAndRunQuery:@"DELETE FROM sessions WHERE creationTimestamp < :lastUsedExpirationDate AND (id in (SELECT sessionId from sessionsItemIds WHERE lastUsed < :lastUsedExpirationDate))" onPrep:v3 onRow:0 onError:&__block_literal_global_190];
}

uint64_t __47__PMLTrainingStore_limitSessionsByLastUsedTTL___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to delete unused sessions. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)limitSessionsForEachLabelWithSessionDescriptor:(id)a3 totalSessionLimit:(unint64_t)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  db = self->_db;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke;
  v34[3] = &unk_279ABFE00;
  v34[4] = self;
  v35 = @"SELECT count(*) FROM sessions WHERE sessionDescriptorId = (SELECT id FROM sessionsDescriptors WHERE name = :name AND version = :version AND locale = :locale) ";
  v8 = v6;
  v36 = v8;
  v37 = &v38;
  [(_PASSqliteDatabase *)db readTransaction:v34];
  if (v39[3] >= a4)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__1041;
    v32 = __Block_byref_object_dispose__1042;
    v33 = objc_opt_new();
    v9 = self->_db;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_178;
    v24[3] = &unk_279ABFE00;
    v24[4] = self;
    v25 = @"SELECT DISTINCT label FROM sessions WHERE UNLIKELY(sessionDescriptorId = (SELECT id FROM sessionsDescriptors WHERE name = :name AND version = :version AND locale = :locale))";
    v10 = v8;
    v26 = v10;
    v27 = &v28;
    [(_PASSqliteDatabase *)v9 readTransaction:v24];
    v11 = a4;
    if ([v29[5] count] >= 2)
    {
      v11 = (a4 / ([v29[5] count] - 1)) >> 1;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v29[5];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v42 count:16];
    if (v13)
    {
      v14 = *v21;
      v15 = a4 >> 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          if ([v17 integerValue])
          {
            v18 = v11;
          }

          else
          {
            v18 = v15;
          }

          [(PMLTrainingStore *)self limitSessionsWithSessionDescriptor:v10 withLabel:v17 limit:v18];
        }

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v42 count:16];
      }

      while (v13);
    }

    _Block_object_dispose(&v28, 8);
  }

  _Block_object_dispose(&v38, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_2;
  v5[3] = &unk_279ABFDB0;
  v6 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_3;
  v4[3] = &unk_279ABFDD8;
  v4[4] = *(a1 + 56);
  [v3 prepAndRunQuery:v2 onPrep:v5 onRow:v4 onError:&__block_literal_global_173];
}

void __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_178(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_2_179;
  v5[3] = &unk_279ABFDB0;
  v6 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_3_180;
  v4[3] = &unk_279ABFDD8;
  v4[4] = *(a1 + 56);
  [v3 prepAndRunQuery:v2 onPrep:v5 onRow:v4 onError:&__block_literal_global_183];
}

void __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_2_179(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 name];
  [v4 bindNamedParam:":name" toNSString:v5];

  v6 = [*(a1 + 32) version];
  [v4 bindNamedParam:":version" toNSString:v6];

  v7 = [*(a1 + 32) locale];
  [v4 bindNamedParam:":locale" toNSString:v7];
}

uint64_t __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_3_180(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "getIntegerForColumn:", 0)}];
  [v2 addObject:v3];

  return *MEMORY[0x277D42690];
}

uint64_t __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_4_181(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to count labeled sessions. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

void __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 name];
  [v4 bindNamedParam:":name" toNSString:v5];

  v6 = [*(a1 + 32) version];
  [v4 bindNamedParam:":version" toNSString:v6];

  v7 = [*(a1 + 32) locale];
  [v4 bindNamedParam:":locale" toNSString:v7];
}

uint64_t __85__PMLTrainingStore_limitSessionsForEachLabelWithSessionDescriptor_totalSessionLimit___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PML_LogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_260D68000, v3, OS_LOG_TYPE_ERROR, "PMLTrainingStore failed to count total sessions. Error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)_loadDataForModel:(id)a3 privacyBudgetRefreshPeriod:(double)a4 labelAndStartRows:(id)a5 batchSize:(unint64_t)a6 supportPerLabel:(unint64_t)a7 block:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  db = self->_db;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __115__PMLTrainingStore__loadDataForModel_privacyBudgetRefreshPeriod_labelAndStartRows_batchSize_supportPerLabel_block___block_invoke;
  v21[3] = &unk_279ABFD88;
  v26 = a4;
  v22 = v15;
  v23 = self;
  v27 = a6;
  v28 = a7;
  v24 = v14;
  v25 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v15;
  [(_PASSqliteDatabase *)db writeTransaction:v21];
}

void __115__PMLTrainingStore__loadDataForModel_privacyBudgetRefreshPeriod_labelAndStartRows_batchSize_supportPerLabel_block___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 timeIntervalSince1970];
  v4 = v3;

  v5 = v4 - *(a1 + 64);
  v6 = objc_opt_new();
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = *(a1 + 72);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __115__PMLTrainingStore__loadDataForModel_privacyBudgetRefreshPeriod_labelAndStartRows_batchSize_supportPerLabel_block___block_invoke_2;
  v20[3] = &unk_279ABFD38;
  v25 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v20[4] = *(a1 + 40);
  v21 = v8;
  v23 = &v31;
  v24 = &v27;
  v26 = *(a1 + 80);
  v9 = v6;
  v22 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v20];
  if (v28[3] || ![v9 count])
  {
    v17 = 1;
    v10 = *(a1 + 56);
    v11 = v32[3];
    v12 = objc_opt_new();
    (*(v10 + 16))(v10, v11, MEMORY[0x277CBEBF8], v12, MEMORY[0x277CBEC10], &v17);
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 72);
    v16 = v32[3];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __115__PMLTrainingStore__loadDataForModel_privacyBudgetRefreshPeriod_labelAndStartRows_batchSize_supportPerLabel_block___block_invoke_3;
    v18[3] = &unk_279ABFD60;
    v19 = *(a1 + 56);
    [v13 _loadDataFromLabelAndTuples:v9 model:v14 numberOfRows:v15 numberOfColumns:v16 lastUsedMax:v18 block:v5];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
}

void __115__PMLTrainingStore__loadDataForModel_privacyBudgetRefreshPeriod_labelAndStartRows_batchSize_supportPerLabel_block___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"AND label = %lu AND sessions.id in (SELECT sessionId from sessionsItemIds WHERE lastUsed < %f AND timesAccessed < %lu) ", objc_msgSend(v19, "unsignedIntegerValue"), *(a1 + 72), *(*(a1 + 32) + 40)];
  v9 = [*(a1 + 32) sessionDimensionsForModel:*(a1 + 40) startingRowId:objc_msgSend(v7 onlyAppleInternal:"unsignedIntegerValue") labelFilter:{0, v8}];
  v10 = [v9 objectForKeyedSubscript:@"numberOfColumns"];
  *(*(*(a1 + 56) + 8) + 24) = [v10 unsignedIntegerValue];

  v11 = [v9 objectForKeyedSubscript:@"numberOfRows"];
  v12 = [v11 unsignedIntegerValue];

  v13 = *(a1 + 80);
  if (v12)
  {
    v14 = v12 >= v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    if (!v13)
    {
      v13 = v12;
    }

    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 24);
    if (v13 >= v16)
    {
      v17 = *(v15 + 24);
    }

    else
    {
      v17 = v13;
    }

    *(v15 + 24) = v16 - v17;
    if (!*(*(*(a1 + 64) + 8) + 24))
    {
      *a4 = 1;
    }

    v18 = +[PMLLabelLimitRowId labelLimitRowIdWithLabel:limit:rowId:](PMLLabelLimitRowId, "labelLimitRowIdWithLabel:limit:rowId:", v8, v17, [v7 unsignedIntegerValue]);
    [*(a1 + 48) setObject:v18 forKeyedSubscript:v19];
  }
}

- (void)_loadBatchForModel:(id)a3 privacyBudgetRefreshPeriod:(double)a4 labels:(id)a5 batchSize:(unint64_t)a6 block:(id)a7
{
  v13 = a3;
  v14 = a5;
  v25 = a7;
  v15 = objc_opt_new();
  [v15 timeIntervalSince1970];
  v17 = v16;

  v52[0] = 0;
  v18 = objc_opt_new();
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__1041;
  v50 = __Block_byref_object_dispose__1042;
  v51 = objc_opt_new();
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1041;
  v43 = __Block_byref_object_dispose__1042;
  v19 = a2;
  v44 = objc_opt_new();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (a6)
  {
    v20 = 0;
    do
    {
      v21 = [MEMORY[0x277CBEB68] null];
      [v18 setObject:v21 atIndexedSubscript:v20];

      ++v20;
    }

    while (a6 != v20);
  }

  db = self->_db;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __89__PMLTrainingStore__loadBatchForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke;
  v29[3] = &unk_279ABFCE8;
  v33 = a6;
  v34 = v17 - a4;
  v30 = v13;
  v31 = self;
  v23 = v14;
  v32 = v23;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __89__PMLTrainingStore__loadBatchForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke_2;
  v28[3] = &unk_279ABFD10;
  v28[4] = self;
  v28[5] = &v35;
  v28[6] = &v46;
  v28[7] = v45;
  v28[8] = &v39;
  v28[9] = v19;
  v28[10] = a6;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__PMLTrainingStore__loadBatchForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke_164;
  v26[3] = &unk_279ABFC48;
  v24 = v30;
  v27 = v24;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT sessions.id onPrep:sessions.label onRow:sessions.covariatesLength onError:sessions.covariatesIndices, sessions.covariatesValues, sessionsItemIds.timesAccessed FROM sessions JOIN sessionsItemIds ON sessions.id = sessionsItemIds.sessionId AND sessions.sessionDescriptorId = (SELECT id FROM sessionsDescriptors WHERE name = :name AND version = :version AND locale = :locale) AND sessionsItemIds.lastUsed <= :lastUsedMax AND sessionsItemIds.timesAccessed < :timesUsedMax AND sessions.label IN _pas_nsarray(:labels) ORDER BY RANDOM() limit :limit", v29, v28, v26];
  v25[2](v25, v36[3], v40[5], v47[5], v52);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v46, 8);
}

void __89__PMLTrainingStore__loadBatchForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 name];
  [v7 bindNamedParam:":name" toNSString:v4];

  v5 = [*(a1 + 32) version];
  [v7 bindNamedParam:":version" toNSString:v5];

  v6 = [*(a1 + 32) locale];
  [v7 bindNamedParam:":locale" toNSString:v6];

  [v7 bindNamedParam:":limit" toInteger:*(a1 + 56)];
  [v7 bindNamedParam:":lastUsedMax" toDouble:*(a1 + 64)];
  [v7 bindNamedParam:":timesUsedMax" toInteger:*(*(a1 + 40) + 40)];
  [v7 bindNamedParam:":labels" toNSArray:*(a1 + 48)];
}

uint64_t __89__PMLTrainingStore__loadBatchForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke_2(void *a1, void *a2)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getIntegerForColumn:0];
  v5 = [v3 getIntegerForColumn:5];
  v6 = *(a1[4] + 16);
  v43[0] = @"lastUsed";
  v7 = MEMORY[0x277CCABB0];
  v8 = objc_opt_new();
  [v8 timeIntervalSince1970];
  v10 = v9;

  v11 = [v7 numberWithDouble:v10];
  v43[1] = @"timesAccessed";
  v44[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 + 1];
  v44[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"sessionId = %ld", v4];
  [v6 updateTable:@"sessionsItemIds" dictionary:v13 whereClause:v14 onError:&__block_literal_global_163];

  v15 = [v3 getIntegerForColumn:1];
  v16 = [v3 getIntegerForColumn:2];
  v17 = [v3 getNSDataForColumn:3];
  v18 = [v3 getNSDataForColumn:4];
  v19 = [v17 length];
  v20 = v19 >> 2;
  if (v19 >> 2 != [v18 length] >> 2)
  {
    v29 = PML_LogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v38 = v4;
      v39 = 2048;
      v40 = [v17 length];
      v41 = 2048;
      v42 = [v18 length];
      _os_log_error_impl(&dword_260D68000, v29, OS_LOG_TYPE_ERROR, "Invalid session from db (row id %lu): covariatesIndices and covariatesValues must contain the same number of elements (expected bytes length in int/float ratio but got %lu and %lu).", buf, 0x20u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid session from db (row id %lu): covariatesIndices and covariatesValues must contain the same number of elements (expected bytes length in int/float ratio but got %lu and %lu).", v4, objc_msgSend(v17, "length"), objc_msgSend(v18, "length")}];
    goto LABEL_15;
  }

  v21 = *(a1[5] + 8);
  v22 = *(v21 + 24);
  if (!v22)
  {
    *(v21 + 24) = v16;
    v22 = *(*(a1[5] + 8) + 24);
  }

  if (v16 != v22)
  {
    v30 = PML_LogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = *(*(a1[5] + 8) + 24);
      *buf = 134218496;
      v38 = v4;
      v39 = 2048;
      v40 = v35;
      v41 = 2048;
      v42 = v16;
      _os_log_error_impl(&dword_260D68000, v30, OS_LOG_TYPE_ERROR, "Invalid session from db (row id %lu), covariatesLength has to be %lu, got %lu.", buf, 0x20u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid session from db (row id %lu), covariatesLength has to be %lu, got %lu.", v4, *(*(a1[5] + 8) + 24), v16}];
LABEL_15:
    v28 = MEMORY[0x277D42698];
    goto LABEL_16;
  }

  if (v19 >= 4)
  {
    v34 = 0;
    do
    {
      *buf = 0;
      [v17 getBytes:buf range:{v34, 4}];
      if ((*buf & 0x80000000) != 0 || v16 <= *buf)
      {
        v36 = [MEMORY[0x277CCA890] currentHandler];
        [v36 handleFailureInMethod:a1[9] object:a1[4] file:@"PMLTrainingStore.m" lineNumber:623 description:{@"Invalid session from db (row id %lu): idx %d out of bounds [0, %lu."}], v4, *buf, v16);
      }

      v34 += 4;
      --v20;
    }

    while (v20);
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  [v23 floatValue];
  v25 = v24;

  *buf = v25;
  [*(*(a1[6] + 8) + 40) appendBytes:buf length:4];
  ++*(*(a1[7] + 8) + 24);
  v26 = *(*(a1[8] + 8) + 40);
  v27 = [MEMORY[0x277D42648] tupleWithFirst:v17 second:v18];
  [v26 addObject:v27];

  if (*(*(a1[7] + 8) + 24) == a1[10])
  {
    v28 = MEMORY[0x277D42698];
  }

  else
  {
    v28 = MEMORY[0x277D42690];
  }

LABEL_16:
  v31 = *v28;

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t __89__PMLTrainingStore__loadBatchForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke_164(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PML_LogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "Failed to load sessions for model %@. Error: %@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)_loadDataForModel:(id)a3 positiveRowId:(unint64_t)a4 negativeRowId:(unint64_t)a5 excludeItemIdsUsedWithin:(double)a6 limit:(unint64_t)a7 onlyAppleInternal:(BOOL)a8 positiveLabel:(unint64_t)a9 skew:(double)a10 block:(id)a11
{
  v18 = a3;
  v19 = a11;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__1041;
  v39[4] = __Block_byref_object_dispose__1042;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  *&v36[3] = a10;
  db = self->_db;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __140__PMLTrainingStore__loadDataForModel_positiveRowId_negativeRowId_excludeItemIdsUsedWithin_limit_onlyAppleInternal_positiveLabel_skew_block___block_invoke;
  v24[3] = &unk_279ABFCC0;
  v30 = a6;
  v31 = a9;
  v24[4] = self;
  v21 = v18;
  v35 = a8;
  v33 = a5;
  v34 = a7;
  v25 = v21;
  v27 = v36;
  v28 = v39;
  v32 = a4;
  v22 = v19;
  v26 = v22;
  v29 = v37;
  [(_PASSqliteDatabase *)db writeTransaction:v24];

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
}

void __140__PMLTrainingStore__loadDataForModel_positiveRowId_negativeRowId_excludeItemIdsUsedWithin_limit_onlyAppleInternal_positiveLabel_skew_block___block_invoke(uint64_t a1)
{
  v51[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 timeIntervalSince1970];
  v4 = v3;

  v5 = v4 - *(a1 + 80);
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"AND sessions.label = %lu AND sessions.id in (SELECT sessionId from sessionsItemIds WHERE lastUsed < %f AND timesAccessed < %lu) ", *(a1 + 88), *&v5, *(*(a1 + 32) + 40)];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"AND sessions.label = 0 AND sessions.id in (SELECT sessionId from sessionsItemIds WHERE lastUsed < %f AND timesAccessed < %lu) ", *&v5, *(*(a1 + 32) + 40)];
  v45 = v6;
  v8 = [*(a1 + 32) sessionDimensionsForModel:*(a1 + 40) startingRowId:*(a1 + 96) onlyAppleInternal:*(a1 + 120) labelFilter:v6];
  v9 = [*(a1 + 32) sessionDimensionsForModel:*(a1 + 40) startingRowId:*(a1 + 104) onlyAppleInternal:*(a1 + 120) labelFilter:v7];
  v10 = [v8 objectForKeyedSubscript:@"numberOfColumns"];
  v11 = [v10 longValue];

  v12 = [v9 objectForKeyedSubscript:@"numberOfColumns"];
  v13 = [v12 longValue];

  if (v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = [v8 objectForKeyedSubscript:@"numberOfRows"];
  v16 = [v15 longValue];

  v17 = [v9 objectForKeyedSubscript:@"numberOfRows"];
  v18 = [v17 longValue];

  v19 = *(a1 + 112);
  if (v19 && v16 >= 3 && v18 + v16 >= v19 && v18 >= 3)
  {
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 24);
    if (v21 == 0.0)
    {
      v21 = (v16 / (v16 + v18));
    }

    *(v20 + 24) = v21;
    v22 = llround(*(*(*(a1 + 56) + 8) + 24) * v19);
    v23 = v19 - v22;
    if (v16 >= v22 && v18 >= v23)
    {
      goto LABEL_21;
    }

    if (v16 >= v22)
    {
      if (v18 + 1 >= v23)
      {
        v22 = v19 - v18;
        v23 = v18;
        goto LABEL_21;
      }
    }

    else if (v16 + 1 >= v22)
    {
      v23 = v19 - v16;
      v22 = v16;
LABEL_21:
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88)];
      v50[0] = &unk_287357ED8;
      v37 = [PMLLabelLimitRowId labelLimitRowIdWithLabel:v7 limit:v23 rowId:*(a1 + 104)];
      v50[1] = v36;
      v51[0] = v37;
      v38 = [PMLLabelLimitRowId labelLimitRowIdWithLabel:v45 limit:v22 rowId:*(a1 + 96)];
      v51[1] = v38;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

      v40 = *(a1 + 32);
      v41 = *(a1 + 40);
      v42 = *(a1 + 112);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __140__PMLTrainingStore__loadDataForModel_positiveRowId_negativeRowId_excludeItemIdsUsedWithin_limit_onlyAppleInternal_positiveLabel_skew_block___block_invoke_2;
      v46[3] = &unk_279ABFC98;
      v47 = v36;
      v48 = &unk_287357ED8;
      v49 = *(a1 + 48);
      v43 = v36;
      [v40 _loadDataFromLabelAndTuples:v39 model:v41 numberOfRows:v42 numberOfColumns:v14 lastUsedMax:v46 block:v5];

      goto LABEL_22;
    }
  }

  v25 = [PMLTrainingStoredSessionBatch alloc];
  v26 = [PMLSparseMatrix sparseMatrixWithNumberOfRows:0 numberOfColumns:v14];
  v27 = [PMLMutableDenseVector alloc];
  v28 = objc_opt_new();
  v29 = [(PMLDenseVector *)v27 initWithData:v28];
  v30 = [PMLModelRegressor modelRegressorFromFloats:v29];
  v31 = [(PMLTrainingStoredSessionBatch *)v25 initWithCovariates:v26 outcomes:v30];
  v32 = *(*(a1 + 64) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  v34 = *(a1 + 48);
  v35 = objc_opt_new();
  (*(v34 + 16))(v34, v14, MEMORY[0x277CBEBF8], v35, *(a1 + 96), *(a1 + 104), *(*(a1 + 72) + 8) + 24);

LABEL_22:
  v44 = *MEMORY[0x277D85DE8];
}

void __140__PMLTrainingStore__loadDataForModel_positiveRowId_negativeRowId_excludeItemIdsUsedWithin_limit_onlyAppleInternal_positiveLabel_skew_block___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a1[4];
  v9 = a5;
  v10 = a4;
  v13 = a3;
  v11 = [v9 objectForKeyedSubscript:v8];
  [v11 unsignedIntegerValue];

  v12 = [v9 objectForKeyedSubscript:a1[5]];

  [v12 unsignedIntegerValue];
  (*(a1[6] + 16))();
}

- (void)_loadDataFromLabelAndTuples:(id)a3 model:(id)a4 numberOfRows:(unint64_t)a5 numberOfColumns:(unint64_t)a6 lastUsedMax:(double)a7 block:(id)a8
{
  v64 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v15 = a4;
  v16 = a8;
  v62 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__1041;
  v60 = __Block_byref_object_dispose__1042;
  v61 = objc_opt_new();
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__1041;
  v53 = __Block_byref_object_dispose__1042;
  v54 = objc_opt_new();
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__1041;
  v47 = __Block_byref_object_dispose__1042;
  v48 = objc_opt_new();
  if (a5)
  {
    v17 = 0;
    do
    {
      v18 = [MEMORY[0x277CBEB68] null];
      [v57[5] setObject:v18 atIndexedSubscript:v17];

      ++v17;
    }

    while (a5 != v17);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __101__PMLTrainingStore__loadDataFromLabelAndTuples_model_numberOfRows_numberOfColumns_lastUsedMax_block___block_invoke;
  v33[3] = &unk_279ABFC70;
  v33[4] = self;
  v19 = v15;
  v39 = a7;
  v34 = v19;
  v35 = &v49;
  v40 = a2;
  v41 = a6;
  v36 = &v56;
  v37 = v55;
  v38 = &v43;
  v42 = a5;
  [v27 enumerateKeysAndObjectsUsingBlock:v33];
  v20 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = v57[5];
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v63 count:16];
  if (v22)
  {
    v23 = *v30;
    do
    {
      v24 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v29 + 1) + 8 * v24) floatValue];
        v28 = v25;
        [v20 appendBytes:&v28 length:4];
        ++v24;
      }

      while (v22 != v24);
      v22 = [v21 countByEnumeratingWithState:&v29 objects:v63 count:16];
    }

    while (v22);
  }

  v16[2](v16, a6, v44[5], v20, v50[5], &v62);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v56, 8);

  v26 = *MEMORY[0x277D85DE8];
}

void __101__PMLTrainingStore__loadDataFromLabelAndTuples_model_numberOfRows_numberOfColumns_lastUsedMax_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 label];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT sessions.id, sessions.label, sessions.covariatesLength, sessions.covariatesIndices, sessions.covariatesValues, sessionsItemIds.timesAccessed FROM sessions JOIN sessionsItemIds ON sessions.id = sessionsItemIds.sessionId AND sessions.sessionDescriptorId = (SELECT id FROM sessionsDescriptors WHERE name = :name AND version = :version AND locale = :locale) AND sessionsItemIds.lastUsed <= :lastUsedMax AND sessionsItemIds.timesAccessed < :timesUsedMax AND sessions.id > :rowId %@ ORDER BY sessions.id limit :limit", v7];
  v9 = *(*(a1 + 32) + 16);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __101__PMLTrainingStore__loadDataFromLabelAndTuples_model_numberOfRows_numberOfColumns_lastUsedMax_block___block_invoke_2;
  v24[3] = &unk_279ABFBF8;
  v25 = v6;
  v10 = *(a1 + 40);
  v28 = *(a1 + 80);
  v11 = *(a1 + 32);
  v26 = v10;
  v27 = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v12 = *(a1 + 64);
  v20 = *(a1 + 48);
  v17[2] = __101__PMLTrainingStore__loadDataFromLabelAndTuples_model_numberOfRows_numberOfColumns_lastUsedMax_block___block_invoke_3;
  v17[3] = &unk_279ABFC20;
  v17[4] = v11;
  v18 = v5;
  v22 = *(a1 + 88);
  v19 = v25;
  v21 = v12;
  v23 = *(a1 + 96);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __101__PMLTrainingStore__loadDataFromLabelAndTuples_model_numberOfRows_numberOfColumns_lastUsedMax_block___block_invoke_146;
  v15[3] = &unk_279ABFC48;
  v16 = *(a1 + 40);
  v13 = v25;
  v14 = v5;
  [v9 prepAndRunQuery:v8 onPrep:v24 onRow:v17 onError:v15];
}

void __101__PMLTrainingStore__loadDataFromLabelAndTuples_model_numberOfRows_numberOfColumns_lastUsedMax_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  [v7 bindNamedParam:":rowId" toInteger:{objc_msgSend(v3, "rowId")}];
  v4 = [*(a1 + 40) name];
  [v7 bindNamedParam:":name" toNSString:v4];

  v5 = [*(a1 + 40) version];
  [v7 bindNamedParam:":version" toNSString:v5];

  v6 = [*(a1 + 40) locale];
  [v7 bindNamedParam:":locale" toNSString:v6];

  [v7 bindNamedParam:":limit" toInteger:{objc_msgSend(*(a1 + 32), "limit")}];
  [v7 bindNamedParam:":lastUsedMax" toDouble:*(a1 + 56)];
  [v7 bindNamedParam:":timesUsedMax" toInteger:*(*(a1 + 48) + 40)];
}

uint64_t __101__PMLTrainingStore__loadDataFromLabelAndTuples_model_numberOfRows_numberOfColumns_lastUsedMax_block___block_invoke_3(uint64_t a1, void *a2)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getIntegerForColumn:0];
  v5 = [v3 getIntegerForColumn:5];
  v6 = *(*(a1 + 32) + 16);
  v43[0] = @"lastUsed";
  v7 = MEMORY[0x277CCABB0];
  v8 = objc_opt_new();
  [v8 timeIntervalSince1970];
  v10 = v9;

  v11 = [v7 numberWithDouble:v10];
  v43[1] = @"timesAccessed";
  v44[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 + 1];
  v44[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"sessionId = %ld", v4];
  [v6 updateTable:@"sessionsItemIds" dictionary:v13 whereClause:v14 onError:&__block_literal_global];

  v15 = [v3 getIntegerForColumn:1];
  if ([*(a1 + 40) integerValue] != v15)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = *(a1 + 88);
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v35 = [*(a1 + 48) label];
    [v31 handleFailureInMethod:v32 object:v33 file:@"PMLTrainingStore.m" lineNumber:396 description:{@"Read label %lu while specified %@. Matcher: %@", v15, v34, v35}];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithLong:v4];
  [*(*(*(a1 + 56) + 8) + 40) setObject:v16 forKeyedSubscript:*(a1 + 40)];

  v17 = [v3 getIntegerForColumn:2];
  v18 = [v3 getNSDataForColumn:3];
  v19 = [v3 getNSDataForColumn:4];
  v20 = [v18 length];
  v21 = v20 >> 2;
  if (v20 >> 2 != [v19 length] >> 2)
  {
    v25 = PML_LogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v38 = v4;
      v39 = 2048;
      v40 = [v18 length];
      v41 = 2048;
      v42 = [v19 length];
      _os_log_error_impl(&dword_260D68000, v25, OS_LOG_TYPE_ERROR, "Invalid session from db (row id %lu): covariatesIndices and covariatesValues must contain the same number of elements (expected bytes length in int/float ratio but got %lu and %lu).", buf, 0x20u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid session from db (row id %lu): covariatesIndices and covariatesValues must contain the same number of elements (expected bytes length in int/float ratio but got %lu and %lu).", v4, objc_msgSend(v18, "length"), objc_msgSend(v19, "length")}];
    goto LABEL_15;
  }

  if (v17 != *(a1 + 96))
  {
    v26 = PML_LogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 96);
      *buf = 134218496;
      v38 = v4;
      v39 = 2048;
      v40 = v30;
      v41 = 2048;
      v42 = v17;
      _os_log_error_impl(&dword_260D68000, v26, OS_LOG_TYPE_ERROR, "Invalid session from db (row id %lu), covariatesLength has to be %lu, got %lu.", buf, 0x20u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid session from db (row id %lu), covariatesLength has to be %lu, got %lu.", v4, *(a1 + 96), v17}];
LABEL_15:
    v24 = MEMORY[0x277D42698];
    goto LABEL_16;
  }

  if (v20 >= 4)
  {
    v29 = 0;
    do
    {
      *buf = 0;
      [v18 getBytes:buf range:{v29, 4}];
      if ((*buf & 0x80000000) != 0 || v17 <= *buf)
      {
        v36 = [MEMORY[0x277CCA890] currentHandler];
        [v36 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"PMLTrainingStore.m" lineNumber:419 description:{@"Invalid session from db (row id %lu): idx %d out of bounds [0, %lu."}], v4, *buf, v17);
      }

      v29 += 4;
      --v21;
    }

    while (v21);
  }

  [*(*(*(a1 + 64) + 8) + 40) setObject:*(a1 + 40) atIndexedSubscript:(*(*(*(a1 + 72) + 8) + 24))++];
  v22 = *(*(*(a1 + 80) + 8) + 40);
  v23 = [MEMORY[0x277D42648] tupleWithFirst:v18 second:v19];
  [v22 addObject:v23];

  if (*(*(*(a1 + 72) + 8) + 24) == *(a1 + 104))
  {
    v24 = MEMORY[0x277D42698];
  }

  else
  {
    v24 = MEMORY[0x277D42690];
  }

LABEL_16:

  result = *v24;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __101__PMLTrainingStore__loadDataFromLabelAndTuples_model_numberOfRows_numberOfColumns_lastUsedMax_block___block_invoke_146(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PML_LogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "Failed to load sessions for model %@. Error: %@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (id)sessionDimensionsForModel:(id)a3 startingRowId:(unint64_t)a4 onlyAppleInternal:(BOOL)a5 labelFilter:(id)a6
{
  v7 = a5;
  v35[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v12 = &stru_28734BC68;
  if (v7)
  {
    v12 = @"AND isAppleInternal = 1 ";
  }

  v13 = v12;
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT covariatesLength, COUNT(*) FROM sessions WHERE sessionDescriptorId = (SELECT id FROM sessionsDescriptors WHERE name = :name AND version = :version AND locale = :locale) AND id > :rowId %@ %@ ORDER BY id", v13, v11];
  db = self->_db;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__PMLTrainingStore_sessionDimensionsForModel_startingRowId_onlyAppleInternal_labelFilter___block_invoke;
  v23[3] = &unk_279ABFBA8;
  v25 = a4;
  v16 = v10;
  v24 = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__PMLTrainingStore_sessionDimensionsForModel_startingRowId_onlyAppleInternal_labelFilter___block_invoke_2;
  v22[3] = &unk_279ABFBD0;
  v22[4] = &v30;
  v22[5] = &v26;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v14 onPrep:v23 onRow:v22 onError:0];
  v34[0] = @"numberOfRows";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27[3]];
  v34[1] = @"numberOfColumns";
  v35[0] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31[3]];
  v35[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __90__PMLTrainingStore_sessionDimensionsForModel_startingRowId_onlyAppleInternal_labelFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":rowId" toInteger:v3];
  v5 = [*(a1 + 32) name];
  [v4 bindNamedParam:":name" toNSString:v5];

  v6 = [*(a1 + 32) version];
  [v4 bindNamedParam:":version" toNSString:v6];

  v7 = [*(a1 + 32) locale];
  [v4 bindNamedParam:":locale" toNSString:v7];
}

uint64_t __90__PMLTrainingStore_sessionDimensionsForModel_startingRowId_onlyAppleInternal_labelFilter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  v5 = [v4 getIntegerForColumn:0];
  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  v7 = [v4 getIntegerForColumn:1];

  *(*(*(a1 + 40) + 8) + 24) += v7;
  return *MEMORY[0x277D42690];
}

- (void)loadSessionsForModel:(id)a3 privacyBudgetRefreshPeriod:(double)a4 labels:(id)a5 batchSize:(unint64_t)a6 block:(id)a7
{
  v12 = a7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__PMLTrainingStore_loadSessionsForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke;
  v14[3] = &unk_279ABFB58;
  v14[4] = self;
  v15 = v12;
  v13 = v12;
  [(PMLTrainingStore *)self loadDataForModel:a3 privacyBudgetRefreshPeriod:a5 labels:a6 batchSize:v14 block:a4];
}

void __91__PMLTrainingStore_loadSessionsForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _sessionDataToBatchWithNumberOfColumns:a2 rowsData:v9 labelsData:v8];

  (*(*(a1 + 40) + 16))();
}

- (void)loadDataForModel:(id)a3 privacyBudgetRefreshPeriod:(double)a4 labels:(id)a5 batchSize:(unint64_t)a6 block:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v15 = MEMORY[0x277D85DD0];
  do
  {
    v17[0] = v15;
    v17[1] = 3221225472;
    v17[2] = __87__PMLTrainingStore_loadDataForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke;
    v17[3] = &unk_279ABFB80;
    v16 = v14;
    v18 = v16;
    v19 = &v20;
    [(PMLTrainingStore *)self _loadBatchForModel:v12 privacyBudgetRefreshPeriod:v13 labels:a6 batchSize:v17 block:a4];
  }

  while ((v21[3] & 1) != 0);
  _Block_object_dispose(&v20, 8);
}

void __87__PMLTrainingStore_loadDataForModel_privacyBudgetRefreshPeriod_labels_batchSize_block___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v11 = a3;
  v10(v9, a2, v11, a4, a5);
  v12 = [v11 count];

  if (!v12 || *a5 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __115__PMLTrainingStore_loadSessionsForModel_excludeItemIdsUsedWithin_limit_onlyAppleInternal_positiveLabel_skew_block___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _sessionDataToBatchWithNumberOfColumns:a2 rowsData:v9 labelsData:v8];

  (*(*(a1 + 40) + 16))();
}

void __111__PMLTrainingStore_loadDataForModel_excludeItemIdsUsedWithin_limit_onlyAppleInternal_positiveLabel_skew_block___block_invoke(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5, unint64_t a6, _BYTE *a7)
{
  v17 = a3;
  v12 = a4;
  if (*(*(a1[5] + 8) + 24) > a5 && *(*(a1[6] + 8) + 24) > a6 || ![v17 count] && (*(*(a1[8] + 8) + 24) & 1) != 0)
  {
    *a7 = 1;
LABEL_11:
    *(*(a1[7] + 8) + 24) = 0;
    goto LABEL_12;
  }

  v13 = *(a1[5] + 8);
  v14 = *(v13 + 24);
  if (v14 <= a5)
  {
    v14 = a5;
  }

  *(v13 + 24) = v14;
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 24);
  if (v16 <= a6)
  {
    v16 = a6;
  }

  *(v15 + 24) = v16;
  (*(a1[4] + 16))();
  if (*a7)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(*(a1[8] + 8) + 24) = 1;
}

- (void)storeSession:(id)a3 label:(int64_t)a4 model:(id)a5 bundleId:(id)a6 domainId:(id)a7 itemIds:(id)a8 isAppleInternal:(BOOL)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (![MEMORY[0x277D42590] isDNUEnabled])
  {
    goto LABEL_8;
  }

  if (v16)
  {
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_10:
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PMLTrainingStore.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"sessionDescriptor"}];

    if (v18)
    {
      goto LABEL_5;
    }

LABEL_11:
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PMLTrainingStore.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    goto LABEL_5;
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PMLTrainingStore.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"covariates"}];

  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!v20)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PMLTrainingStore.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"itemIds"}];
  }

  db = self->_db;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __87__PMLTrainingStore_storeSession_label_model_bundleId_domainId_itemIds_isAppleInternal___block_invoke;
  v26[3] = &unk_279ABFB08;
  v26[4] = self;
  v27 = v17;
  v32 = a4;
  v28 = v16;
  v33 = a9;
  v29 = v19;
  v30 = v18;
  v31 = v20;
  [(_PASSqliteDatabase *)db writeTransaction:v26];

LABEL_8:
}

void __87__PMLTrainingStore_storeSession_label_model_bundleId_domainId_itemIds_isAppleInternal___block_invoke(uint64_t a1)
{
  v45[7] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sessionDescriptorIdFor:*(a1 + 40)];
  obja = *(*(a1 + 32) + 16);
  v44[0] = @"creationTimestamp";
  v3 = MEMORY[0x277CCABB0];
  v4 = objc_opt_new();
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [v3 numberWithDouble:v6];
  v45[0] = v7;
  v44[1] = @"sessionDescriptorId";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  v45[1] = v8;
  v44[2] = @"label";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
  v45[2] = v9;
  v44[3] = @"covariatesLength";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "length")}];
  v45[3] = v10;
  v44[4] = @"covariatesIndices";
  v11 = [*(a1 + 48) indicesData];
  v45[4] = v11;
  v44[5] = @"covariatesValues";
  v12 = [*(a1 + 48) valuesData];
  v45[5] = v12;
  v44[6] = @"isAppleInternal";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 88)];
  v45[6] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:7];
  [obja insertIntoTable:@"sessions" dictionary:v14];

  v15 = [*(*(a1 + 32) + 16) lastInsertRowId];
  v16 = @"sessionId";
  if (*(a1 + 56))
  {
    v17 = *(*(a1 + 32) + 16);
    v42[0] = @"sessionId";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    v20 = *(a1 + 56);
    v19 = *(a1 + 64);
    v43[0] = v18;
    v43[1] = v19;
    v42[1] = @"bundleIdentifier";
    v42[2] = @"domainIdentifier";
    v43[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
    [v17 insertIntoTable:@"sessionsDomainIds" dictionary:v21];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 72);
  v22 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      v25 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v35 + 1) + 8 * v25);
        v27 = *(*(a1 + 32) + 16);
        v39[0] = v16;
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
        v29 = v28 = v16;
        v30 = *(a1 + 64);
        v40[0] = v29;
        v40[1] = v30;
        v39[1] = @"bundleIdentifier";
        v39[2] = @"itemIdentifier";
        v40[2] = v26;
        v40[3] = &unk_287357ED8;
        v39[3] = @"lastUsed";
        v39[4] = @"timesAccessed";
        v40[4] = &unk_287357ED8;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];
        [v27 insertIntoTable:@"sessionsItemIds" dictionary:v31];

        v16 = v28;
        ++v25;
      }

      while (v23 != v25);
      v23 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v23);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (PMLTrainingStore)initWithPath:(id)a3 allowSkipSchema:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PMLTrainingStore;
  v8 = [(PMLTrainingStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dbPath, a3);
    v9->_allowSkipSchema = a4;
    v9->_maxTimesAccessed = 1;
    [(PMLTrainingStore *)v9 _registerUnlockHandler];
    [(PMLTrainingStore *)v9 _openDbIfUnlocked];
  }

  return v9;
}

+ (id)inMemoryStoreForTesting
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277D42630] randomlyNamedInMemoryPathWithBaseName:@"training_sessions"];
  v4 = [v2 initWithPath:v3];

  return v4;
}

+ (void)setLastUsedTimestampLimit:(double)a3
{
  v6 = [MEMORY[0x277CCAC38] processInfo];
  v8 = [v6 processName];

  if (([v8 isEqualToString:@"python"] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PMLTrainingStore.m" lineNumber:1401 description:{@"Process name %@ is not python", v8}];
  }

  kLastUsedTimestampLimit = *&a3;
}

+ (id)getSchema:(unint64_t *)a3
{
  v5 = [MEMORY[0x277D42630] randomlyNamedInMemoryPathWithBaseName:@"training_db_schema"];
  v6 = [[a1 alloc] initWithPath:v5 allowSkipSchema:0];
  v7 = [v6 getSchema:a3];

  return v7;
}

+ (BOOL)_runQueries:(id)a3 andUpdateVersionTo:(unsigned int)a4 inTransactionOnDb:(id)a5 forStore:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__PMLTrainingStore__runQueries_andUpdateVersionTo_inTransactionOnDb_forStore___block_invoke;
  v16[3] = &unk_279AC0048;
  v17 = v9;
  v18 = v11;
  v19 = v10;
  v20 = a4;
  v12 = v10;
  v13 = v11;
  v14 = v9;
  LOBYTE(v9) = [v12 frailWriteTransaction:v16];

  return v9;
}

uint64_t __78__PMLTrainingStore__runQueries_andUpdateVersionTo_inTransactionOnDb_forStore___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v20 + 1) + 8 * v6);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v8 = v7;
      v9 = [v8 objectForKey:@"migrationFunction"];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      ([v9 pointerValue])(*(a1 + 40), *(a1 + 48));

LABEL_11:
      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

LABEL_10:
    v11 = *(a1 + 48);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__PMLTrainingStore__runQueries_andUpdateVersionTo_inTransactionOnDb_forStore___block_invoke_2;
    v16[3] = &unk_279AC0020;
    v12 = v11;
    v19 = *(a1 + 56);
    v17 = v12;
    v18 = v7;
    v13 = [v12 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v16];

    if (!v13)
    {

      result = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_13:

  [*(a1 + 48) setUserVersion:*(a1 + 56)];
  result = 1;
LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __78__PMLTrainingStore__runQueries_andUpdateVersionTo_inTransactionOnDb_forStore___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PML_LogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) filename];
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = 138413058;
    v11 = v7;
    v12 = 2048;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "Migration encountered error during migration of %@: versions %lu, query: %@, error: %@", &v10, 0x2Au);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

+ (int64_t)migrate:(id)a3 to:(id)a4 forStore:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 migrations];
  v11 = [v8 maxVersion];
  v12 = [v7 userVersion];
  if (v11 == v12)
  {
    goto LABEL_2;
  }

  v14 = v12;
  if (v11 < v12)
  {
    v15 = PML_LogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134217984;
      v23 = v14;
      _os_log_impl(&dword_260D68000, v15, OS_LOG_TYPE_DEFAULT, "Future database version detected (%lu). Giving up on migration.", &v22, 0xCu);
    }

    v13 = 2;
LABEL_15:

    goto LABEL_16;
  }

  v16 = v11 - v12;
  if (v11 > v12)
  {
    v17 = v12 + 1;
    while (1)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
      v15 = [v10 objectForKeyedSubscript:v18];

      if (![PMLTrainingStore _runQueries:v15 andUpdateVersionTo:v17 inTransactionOnDb:v7 forStore:v9])
      {
        break;
      }

      v17 = (v17 + 1);
      if (!--v16)
      {
        goto LABEL_2;
      }
    }

    v19 = PML_LogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&dword_260D68000, v19, OS_LOG_TYPE_ERROR, "PMLTrainingStore db failed to migrate but migration is needed.", &v22, 2u);
    }

    v13 = 4;
    goto LABEL_15;
  }

LABEL_2:
  v13 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (int64_t)_migrate:(id)a3 forStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6[32] != 1 || [v5 userVersion])
  {
LABEL_8:
    v10 = objc_opt_new();
    v8 = [PMLTrainingStore migrate:v5 to:v10 forStore:v6];

    goto LABEL_9;
  }

  v13 = 0;
  v7 = [PMLTrainingDatabaseMigrations skipFromZeroSchema:&v13];
  if (![PMLTrainingStore _runQueries:v7 andUpdateVersionTo:v13 inTransactionOnDb:v5 forStore:v6])
  {
    v9 = PML_LogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_260D68000, v9, OS_LOG_TYPE_ERROR, "PMLTrainingStore db failed to create new database with skip queries.", v12, 2u);
    }

    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (id)_sessionDataToBatchWithNumberOfColumns:(unint64_t)a3 rowsData:(id)a4 labelsData:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  v12 = [v10 length] >> 2;
  if (v12 != v11)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PMLTrainingStore.m" lineNumber:108 description:{@"Number of labels %lu does not match number of rows specified %lu", v12, v11}];
  }

  v13 = [PMLSparseMatrix sparseMatrixWithNumberOfRows:v11 numberOfColumns:a3];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v15 = [v9 objectAtIndexedSubscript:i];
      v16 = [v15 first];

      v17 = [v9 objectAtIndexedSubscript:i];
      v18 = [v17 second];

      v19 = [v16 length];
      if (v19 >= 4)
      {
        v20 = 0;
        v21 = 0;
        v22 = v19 >> 2;
        do
        {
          LODWORD(j) = 0;
          [v16 getBytes:&j range:{v20, 4}];
          val = 0.0;
          [v18 getBytes:&val range:{v20, 4}];
          v23 = [v13 matrix];
          sparse_insert_entry_float(v23, val, i, j);
          if ((v21 & 0x1FFF) == 0)
          {
            sparse_commit([v13 matrix]);
          }

          ++v21;
          v20 += 4;
        }

        while (v22 != v21);
      }
    }
  }

  sparse_commit([v13 matrix]);
  v24 = [PMLTrainingStoredSessionBatch alloc];
  v25 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithData:v10];
  v26 = [PMLModelRegressor modelRegressorFromFloats:v25];
  v27 = [(PMLTrainingStoredSessionBatch *)v24 initWithCovariates:v13 outcomes:v26];

  return v27;
}

@end