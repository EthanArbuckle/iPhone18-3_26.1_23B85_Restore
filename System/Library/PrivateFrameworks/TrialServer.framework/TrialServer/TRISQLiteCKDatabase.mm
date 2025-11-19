@interface TRISQLiteCKDatabase
+ (id)mockContainerWithIdentifier:(id)a3 database:(id)a4;
- (BOOL)_evalQueryOperationWithRecordType:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 offset:(unint64_t)a6 resultsLimit:(unint64_t)a7 desiredKeys:(id)a8 txn:(id)a9 error:(id *)a10 recordMatchedBlock:(id)a11;
- (BOOL)_parseArrayExpression:(id)a3 forRecordType:(id)a4 usingCTEName:(id)a5 toSQLCommonTableExpression:(id *)a6 paramBindings:(id *)a7 error:(id *)a8;
- (BOOL)_parseDecimalString:(id)a3 value:(unint64_t *)a4;
- (BOOL)_parseDesiredKeys:(id)a3 recordType:(id)a4 unindexedFields:(id *)a5 indexedFields:(id *)a6 error:(id *)a7;
- (BOOL)_parseScalarExpression:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_replaceArrayFieldWithKey:(id)a3 recordType:(id)a4 recordId:(id)a5 values:(id)a6 txn:(id)a7 error:(id *)a8;
- (BOOL)_translateAnyModifiedArrayRHSComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_translateAnyModifiedScalarComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_translateArrayRHSComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_translateComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_translateCompoundPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_translateDirectModifiedArrayRHSComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_translateDirectModifiedScalarComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_translatePredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_translateScalarComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7;
- (BOOL)_upsertRecord:(id)a3 txn:(id)a4 error:(id *)a5;
- (CKContainer)container;
- (TRISQLiteCKDatabase)initWithParentDir:(id)a3 assetCacheDir:(id)a4;
- (id)_allRecordTypes;
- (id)_assetForLocallyStoredAssetWithFilename:(id)a3 forRecordId:(id)a4 error:(id *)a5;
- (id)_createRecordFromSelectRow:(id)a3 recordType:(id)a4 unindexedDesiredKeys:(id)a5 indexedDesiredKeys:(id)a6 txn:(id)a7 error:(id *)a8;
- (id)_createTableForArrayFieldWithKey:(id)a3 attachedToRecordType:(id)a4 sqliteContainedType:(id)a5;
- (id)_createTableForRecordType:(id)a3 scalarFields:(id)a4;
- (id)_errorWithCode:(int64_t)a3 message:(id)a4;
- (id)_evalFetchRecordsOperationWithRecordIds:(id)a3 recordType:(id)a4 desiredKeys:(id)a5 txn:(id)a6 error:(id *)a7;
- (id)_filenameForLocallyCopiedAsset:(id)a3 forRecordId:(id)a4 error:(id *)a5;
- (id)_keysForFieldsOfRecordType:(id)a3;
- (id)_loadArrayForRecordType:(id)a3 recordId:(id)a4 fieldKey:(id)a5 indexRange:(_NSRange)a6 txn:(id)a7 error:(id *)a8;
- (id)_parseIndexedFieldKey:(id)a3 indexRange:(_NSRange *)a4;
- (id)_valueTypesForFieldsOfRecordType:(id)a3;
- (id)migrations;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)a3;
- (void)_deleteRecordsWithRecordIds:(id)a3 recordType:(id)a4 txn:(id)a5;
- (void)_processFetchRecordsOperation:(id)a3;
- (void)_processModifyRecordsOperation:(id)a3;
- (void)_processQueryOperation:(id)a3;
- (void)addOperation:(id)a3;
- (void)closePermanently;
- (void)deleteRecordZoneWithID:(id)a3 completionHandler:(id)a4;
- (void)saveRecordZone:(id)a3 completionHandler:(id)a4;
@end

@implementation TRISQLiteCKDatabase

- (TRISQLiteCKDatabase)initWithParentDir:(id)a3 assetCacheDir:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"parentDir"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v38 = [MEMORY[0x277CCA890] currentHandler];
  [v38 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"assetCacheDir"}];

LABEL_3:
  v41.receiver = self;
  v41.super_class = TRISQLiteCKDatabase;
  v11 = [(TRISQLiteCKDatabase *)&v41 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_18;
  }

  objc_storeStrong(&v11->_parentDir, a3);
  objc_storeStrong(&v12->_assetCacheDir, a4);
  v13 = [(NSString *)v12->_parentDir stringByAppendingPathComponent:@"assets"];
  assetDir = v12->_assetDir;
  v12->_assetDir = v13;

  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Device has never been unlocked prior to db initialization.", &buf, 2u);
    }

    goto LABEL_28;
  }

  v16 = [(NSString *)v12->_parentDir stringByAppendingPathComponent:@"TRISQLiteCKDatabase.db"];
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v17 fileExistsAtPath:v16];

  if ((v18 & 1) == 0)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    [v19 createDirectoryAtPath:v12->_parentDir withIntermediateDirectories:1 attributes:0 error:0];
  }

  v20 = MEMORY[0x277D42630];
  v21 = objc_opt_new();
  v40 = 0;
  v22 = [v20 sqliteDatabaseWithFilename:v16 contentProtection:3 errorHandler:v21 error:&v40];
  v23 = v40;
  db = v12->_db;
  v12->_db = v22;

  v25 = v12->_db;
  if (!v25)
  {
    v30 = TRILogCategory_Server();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v23;
      _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Failed to instantiate new database handle: %{public}@", &buf, 0xCu);
    }

    goto LABEL_27;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  v48 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__TRISQLiteCKDatabase_initWithParentDir_assetCacheDir___block_invoke;
  v39[3] = &unk_279DDF778;
  v39[4] = &buf;
  if (([(_PASSqliteDatabase *)v25 prepAndRunNonDataQueries:&unk_287FC4ED0 onError:v39]& 1) == 0)
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v36 = *(*(&buf + 1) + 40);
      *v42 = 138543362;
      v43 = v36;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to run initial database pragmas: %{public}@", v42, 0xCu);
    }

    [(_PASSqliteDatabase *)v12->_db closePermanently];
    v32 = v12->_db;
    v12->_db = 0;

    if ((v18 & 1) == 0)
    {
      [MEMORY[0x277D42630] truncateDatabaseAtPath:v16];
    }

    _Block_object_dispose(&buf, 8);

LABEL_27:
LABEL_28:
    v29 = 0;
    goto LABEL_29;
  }

  _Block_object_dispose(&buf, 8);

  if ((v18 & 1) == 0)
  {
    v26 = TRILogCategory_Server();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "Created new database: %{public}@", &buf, 0xCu);
    }
  }

  if (![(TRISQLiteCKDatabase *)v12 migrateToVersion:*MEMORY[0x277D426A0]])
  {
    v35 = TRILogCategory_Server();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "TRISQLiteCKDatabase: migrations failed", &buf, 2u);
    }

    goto LABEL_28;
  }

  v27 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.Trial.TRISQLiteCKDatabase.operation" qosClass:17];
  opQueue = v12->_opQueue;
  v12->_opQueue = v27;

LABEL_18:
  v29 = v12;
LABEL_29:

  v33 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)addOperation:(id)a3
{
  v5 = a3;
  v6 = [(TRISQLiteCKDatabase *)self container];
  v7 = [v5 configuration];
  [v7 setContainer:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    opQueue = self->_opQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__TRISQLiteCKDatabase_addOperation___block_invoke;
    block[3] = &unk_279DDF7A0;
    block[4] = self;
    v23 = v8;
    dispatch_async(opQueue, block);
    v10 = v23;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v5;
      v12 = self->_opQueue;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __36__TRISQLiteCKDatabase_addOperation___block_invoke_2;
      v20[3] = &unk_279DDF7A0;
      v20[4] = self;
      v21 = v11;
      dispatch_async(v12, v20);
      v10 = v21;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        [v15 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:208 description:{@"Operation of class %@ is not supported.", v17}];

        goto LABEL_8;
      }

      v13 = v5;
      v14 = self->_opQueue;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __36__TRISQLiteCKDatabase_addOperation___block_invoke_3;
      v18[3] = &unk_279DDF7A0;
      v18[4] = self;
      v19 = v13;
      dispatch_async(v14, v18);
      v10 = v19;
    }
  }

LABEL_8:
}

- (void)saveRecordZone:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  opQueue = self->_opQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__TRISQLiteCKDatabase_saveRecordZone_completionHandler___block_invoke;
  v11[3] = &unk_279DDF7C8;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(opQueue, v11);
}

- (void)deleteRecordZoneWithID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  opQueue = self->_opQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__TRISQLiteCKDatabase_deleteRecordZoneWithID_completionHandler___block_invoke;
  v11[3] = &unk_279DDF7C8;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(opQueue, v11);
}

- (void)closePermanently
{
  opQueue = self->_opQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TRISQLiteCKDatabase_closePermanently__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  dispatch_sync(opQueue, block);
}

void __39__TRISQLiteCKDatabase_closePermanently__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) closePermanently];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

+ (id)mockContainerWithIdentifier:(id)a3 database:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TRISQLiteCKContainer alloc] initWithContainerIdentifier:v6 database:v5];

  return v7;
}

- (void)_processQueryOperation:(id)a3
{
  v5 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  v51 = 0;
  v6 = [v5 query];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v5 cursor];
    v8 = [v9 query];
  }

  v10 = [v5 cursor];
  v11 = [v10 offset];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = v11;
  if (!v8)
  {
    v21 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:@"Query operation must specify a query."];
    v20 = v47[5];
    v47[5] = v21;
    goto LABEL_9;
  }

  v12 = [(TRISQLiteCKDatabase *)self delegate];
  if (!v12 || (-[TRISQLiteCKDatabase delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 shouldProcessQueryOperation:v5 error:v47 + 5], v13, v12, (v14 & 1) != 0))
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __46__TRISQLiteCKDatabase__processQueryOperation___block_invoke;
    v39[3] = &unk_279DDF7F0;
    v41 = &v42;
    v15 = v5;
    v40 = v15;
    v16 = MEMORY[0x2743948D0](v39);
    v17 = MEMORY[0x277D42640];
    db = self->_db;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__TRISQLiteCKDatabase__processQueryOperation___block_invoke_2;
    v31[3] = &unk_279DDF818;
    v32 = v8;
    v33 = self;
    v37 = a2;
    v38 = v11;
    v34 = v15;
    v36 = &v46;
    v19 = v16;
    v35 = v19;
    [v17 readTransactionWithHandle:db failableBlock:v31];

    v20 = v40;
LABEL_9:

    goto LABEL_10;
  }

  if (!v47[5])
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"error"}];
    goto LABEL_9;
  }

LABEL_10:
  v22 = [v5 queryCompletionBlock];

  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [v5 resultsLimit];
    if (v24 == *MEMORY[0x277CBBFC0] || (v25 = [v5 resultsLimit] + v11, v25 != v43[3]))
    {
      v26 = 0;
    }

    else
    {
      v26 = objc_opt_new();
      [v26 setQuery:v8];
      [v26 setOffset:v43[3]];
    }

    v27 = [v5 queryCompletionBlock];
    (v27)[2](v27, v26, v47[5]);

    objc_autoreleasePoolPop(v23);
  }

  v28 = [v5 completionBlock];

  if (v28)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = [v5 completionBlock];
    v30[2]();

    objc_autoreleasePoolPop(v29);
  }

  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v46, 8);
}

void __46__TRISQLiteCKDatabase__processQueryOperation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v6 recordMatchedBlock];
  v10[2](v10, v9, v8, v7);
}

uint64_t __46__TRISQLiteCKDatabase__processQueryOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"TRISQLiteCKDatabase.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = [v4 recordType];
  v7 = [*(a1 + 32) predicate];
  v8 = [*(a1 + 32) sortDescriptors];
  v9 = *(a1 + 80);
  v10 = [*(a1 + 48) resultsLimit];
  v11 = [*(a1 + 48) desiredKeys];
  v12 = [v5 _evalQueryOperationWithRecordType:v6 predicate:v7 sortDescriptors:v8 offset:v9 resultsLimit:v10 desiredKeys:v11 txn:v3 error:*(*(a1 + 64) + 8) + 40 recordMatchedBlock:*(a1 + 56)];

  v13 = MEMORY[0x277D42670];
  v14 = MEMORY[0x277D42678];

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  return *v15;
}

- (BOOL)_evalQueryOperationWithRecordType:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 offset:(unint64_t)a6 resultsLimit:(unint64_t)a7 desiredKeys:(id)a8 txn:(id)a9 error:(id *)a10 recordMatchedBlock:(id)a11
{
  v88 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v60 = a4;
  v59 = a5;
  v61 = a8;
  v57 = a9;
  v58 = a11;
  v17 = [(TRISQLiteCKDatabase *)self _allRecordTypes];
  LOBYTE(a5) = [v17 containsObject:v16];

  if (a5)
  {
    v56 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v16];
    if (!v56)
    {
      v46 = [MEMORY[0x277CCA890] currentHandler];
      [v46 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"valueTypes"}];
    }

    v85 = 0;
    v86 = 0;
    if ([(TRISQLiteCKDatabase *)self _parseDesiredKeys:v61 recordType:v16 unindexedFields:&v86 indexedFields:&v85 error:a10])
    {
      if (!v86)
      {
        v47 = [MEMORY[0x277CCA890] currentHandler];
        [v47 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"unindexedDesiredKeys"}];
      }

      if (!v85)
      {
        v48 = [MEMORY[0x277CCA890] currentHandler];
        [v48 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"indexedDesiredKeys"}];
      }

      v52 = objc_opt_new();
      v83 = 0;
      v84 = 0;
      if ([(TRISQLiteCKDatabase *)self _translatePredicate:v60 forRecordType:v16 toSQLExpr:&v84 paramBindings:&v83 error:a10])
      {
        if (!v84)
        {
          v49 = [MEMORY[0x277CCA890] currentHandler];
          [v49 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"whereClauseExpr"}];
        }

        if (!v83)
        {
          v50 = [MEMORY[0x277CCA890] currentHandler];
          [v50 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"whereClauseBindings"}];
        }

        [v52 addObjectsFromArray:?];
        if ([v59 count])
        {
          v55 = objc_opt_new();
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          obj = v59;
          v18 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
          if (v18)
          {
            v19 = *v80;
            v20 = &selRef__requireAssetStoreTempDir;
            while (2)
            {
              v21 = 0;
              v22 = v20[355];
              do
              {
                if (*v80 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v23 = *(*(&v79 + 1) + 8 * v21);
                v24 = [v23 key];
                if (!v24 || (v25 = [v23 selector] == v22, v24, !v25))
                {
                  v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported sort descriptor: %@", v23];
                  v37 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v36];
                  v38 = *a10;
                  *a10 = v37;

                  LOBYTE(v36) = 0;
                  v33 = @" ORDER BY rowid ASC";
                  goto LABEL_41;
                }

                v26 = objc_alloc(MEMORY[0x277CCACA8]);
                v27 = [v23 key];
                v28 = [v23 ascending];
                v29 = "DESC";
                if (v28)
                {
                  v29 = "ASC";
                }

                v30 = [v26 initWithFormat:@"%@ %s", v27, v29];
                [v55 addObject:v30];

                ++v21;
              }

              while (v18 != v21);
              v18 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
              v20 = &selRef__requireAssetStoreTempDir;
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v31 = objc_alloc(MEMORY[0x277CCACA8]);
          v32 = [v55 componentsJoinedByString:{@", "}];
          v33 = [v31 initWithFormat:@" ORDER BY %@", v32];
        }

        else
        {
          v33 = @" ORDER BY rowid ASC";
        }

        if (*MEMORY[0x277CBBFC0] == a7)
        {
          v39 = &stru_287FA0430;
        }

        else
        {
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke;
          v78[3] = &__block_descriptor_40_e32_v20__0___PASSqliteStatement_8i16l;
          v78[4] = a7;
          v40 = MEMORY[0x2743948D0](v78);
          [v52 addObject:v40];

          v39 = @" LIMIT ?";
        }

        if (a6)
        {
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke_2;
          v77[3] = &__block_descriptor_40_e32_v20__0___PASSqliteStatement_8i16l;
          v77[4] = a6;
          v41 = MEMORY[0x2743948D0](v77);
          [v52 addObject:v41];

          v36 = @" OFFSET ?";
        }

        else
        {
          v36 = &stru_287FA0430;
        }

        v42 = objc_alloc(MEMORY[0x277CCACA8]);
        v55 = [v42 initWithFormat:@"SELECT *, trisql_recordId AS trisql_outer_recordId FROM %@ WHERE %@%@%@%@", v16, v84, v33, v39, v36];
        v73 = 0;
        v74 = &v73;
        v75 = 0x2020000000;
        v76 = 1;
        v43 = [v57 db];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke_3;
        v71[3] = &unk_279DDF860;
        v72 = v52;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke_4;
        v63[3] = &unk_279DDF888;
        v63[4] = self;
        v64 = v16;
        v65 = v86;
        v66 = v85;
        v69 = &v73;
        v70 = a10;
        v67 = v57;
        v68 = v58;
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke_5;
        v62[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
        v62[4] = a10;
        LODWORD(v36) = [v43 prepAndRunQuery:v55 onPrep:v71 onRow:v63 onError:v62];

        if (v36)
        {
          LOBYTE(v36) = *(v74 + 24);
        }

        _Block_object_dispose(&v73, 8);
LABEL_41:
      }

      else
      {
        LOBYTE(v36) = 0;
      }
    }

    else
    {
      LOBYTE(v36) = 0;
    }
  }

  else
  {
    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unrecognized record type: %@", v16];
    v34 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v36];
    v35 = *a10;
    *a10 = v34;

    LOBYTE(v36) = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

uint64_t __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32) >= 0x7FFFFFFFFFFFFFFFuLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return [a2 bindParam:a3 toInt64:v3];
}

uint64_t __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32) >= 0x7FFFFFFFFFFFFFFFuLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return [a2 bindParam:a3 toInt64:v3];
}

void __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v11 + 1) + 8 * i) + 16))(*(*(&v11 + 1) + 8 * i));
        ++v8;
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __144__TRISQLiteCKDatabase__evalQueryOperationWithRecordType_predicate_sortDescriptors_offset_resultsLimit_desiredKeys_txn_error_recordMatchedBlock___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createRecordFromSelectRow:a2 recordType:*(a1 + 40) unindexedDesiredKeys:*(a1 + 48) indexedDesiredKeys:*(a1 + 56) txn:*(a1 + 64) error:*(a1 + 88)];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      v6 = [v3 recordID];
      (*(v5 + 16))(v5, v6, v4, 0);
    }

    v7 = MEMORY[0x277D42690];
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    v7 = MEMORY[0x277D42698];
  }

  return *v7;
}

- (BOOL)_parseDesiredKeys:(id)a3 recordType:(id)a4 unindexedFields:(id *)a5 indexedFields:(id *)a6 error:(id *)a7
{
  v71 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v59 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v14];
  if (!v59)
  {
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"valueTypes"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_33:
    v46 = [(TRISQLiteCKDatabase *)self _keysForFieldsOfRecordType:v14];
    v47 = *a5;
    *a5 = v46;

    if (!*a5)
    {
      v51 = [MEMORY[0x277CCA890] currentHandler];
      [v51 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:438 description:{@"Invalid parameter not satisfying: %@", @"*unindexedFields"}];
    }

    v48 = *a6;
    *a6 = MEMORY[0x277CBEC10];

    v38 = 1;
    goto LABEL_36;
  }

  if (!v13)
  {
    goto LABEL_33;
  }

LABEL_3:
  v53 = a5;
  v54 = a7;
  location = a6;
  v55 = v14;
  v58 = objc_opt_new();
  v56 = v13;
  obj = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v66;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v65 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v64 = xmmword_26F6C75C0;
        v22 = [(TRISQLiteCKDatabase *)self _parseIndexedFieldKey:v20 indexRange:&v64];
        if (!v22)
        {
          v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Can't parse indexed field key: %@", v20];
          v40 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v39];
          v41 = *v54;
          *v54 = v40;

          objc_autoreleasePoolPop(v21);
LABEL_30:
          v38 = 0;
          goto LABEL_31;
        }

        v23 = v22;
        v24 = v64;
        v25 = [v59 objectForKeyedSubscript:v22];

        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v25)
          {
            [obj addObject:v23];
          }
        }

        else if (v25)
        {
          v26 = [v58 objectForKeyedSubscript:v23];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = objc_opt_new();
          }

          v29 = v28;

          v30 = [MEMORY[0x277CCAE60] valueWithRange:v64];
          [v29 addObject:v30];

          [v58 setObject:v29 forKeyedSubscript:v23];
        }

        objc_autoreleasePoolPop(v21);
      }

      v17 = [v15 countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v31 = obj;
  v32 = [v31 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v61;
    while (2)
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v61 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v60 + 1) + 8 * j);
        v37 = [v58 objectForKeyedSubscript:v36];

        if (v37)
        {
          v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"desiredKeys specifies field key %@ simultaneously in both indexed and unindexed form.", v36];
          v43 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v42];
          v44 = *v54;
          *v54 = v43;

          goto LABEL_30;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  objc_storeStrong(v53, obj);
  objc_storeStrong(location, v58);
  v38 = 1;
LABEL_31:

  v14 = v55;
  v13 = v56;
LABEL_36:

  v49 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)_createRecordFromSelectRow:(id)a3 recordType:(id)a4 unindexedDesiredKeys:(id)a5 indexedDesiredKeys:(id)a6 txn:(id)a7 error:(id *)a8
{
  v119 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v100 = a7;
  v102 = self;
  v103 = v14;
  v17 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v14];
  if (!v17)
  {
    v86 = [MEMORY[0x277CCA890] currentHandler];
    [v86 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"valueTypes"}];
  }

  v18 = [v13 getNSStringForColumnName:"trisql_recordId" table:0];
  if (!v18)
  {
    v87 = [MEMORY[0x277CCA890] currentHandler];
    [v87 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:502 description:@"NULL read from NOT NULL column trisql_recordId"];
  }

  v19 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v18];
  v20 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:v14 recordID:v19];
  [v13 getDoubleForColumnName:"modificationDate" table:0];
  v22 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v21];
  [v20 setModificationDate:v22];

  [v13 getDoubleForColumnName:"creationDate" table:0];
  v24 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v23];
  [v20 setCreationDate:v24];

  v25 = [v16 allKeys];
  v26 = [v15 arrayByAddingObjectsFromArray:v25];

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v27 = v26;
  v106 = [v27 countByEnumeratingWithState:&v113 objects:v118 count:16];
  if (!v106)
  {
    goto LABEL_62;
  }

  v104 = v20;
  v105 = *v114;
  v94 = v27;
  v92 = v17;
  do
  {
    v28 = 0;
    do
    {
      if (*v114 != v105)
      {
        objc_enumerationMutation(v27);
      }

      v29 = *(*(&v113 + 1) + 8 * v28);
      v30 = objc_autoreleasePoolPush();
      v31 = [v29 UTF8String];
      if (!v31)
      {
        [MEMORY[0x277CCA890] currentHandler];
        v66 = v108 = v30;
        [v66 handleFailureInMethod:a2 object:v102 file:@"TRISQLiteCKDatabase.m" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"columnName"}];

        v30 = v108;
      }

      if (([v13 isNullForColumnName:v31 table:0] & 1) == 0)
      {
        v107 = v30;
        v32 = [v17 objectForKeyedSubscript:v29];
        v33 = [v32 firstObject];

        if (!v33)
        {
          v67 = [MEMORY[0x277CCA890] currentHandler];
          [v67 handleFailureInMethod:a2 object:v102 file:@"TRISQLiteCKDatabase.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
        }

        if (v33 != objc_opt_class())
        {
          if (v33 == objc_opt_class())
          {
            if (sqlite3_column_count([v13 stmt]) < 1)
            {
              v53 = 0;
              v20 = v104;
            }

            else
            {
              v53 = 0;
              v20 = v104;
              do
              {
                v54 = sqlite3_column_name([v13 stmt], v53);
                if (v54 && !strcmp(v54, v31))
                {
                  break;
                }

                v53 = (v53 + 1);
              }

              while (v53 < sqlite3_column_count([v13 stmt]));
            }

            if (v53 >= sqlite3_column_count([v13 stmt]))
            {
              v68 = [MEMORY[0x277CCA890] currentHandler];
              [v68 handleFailureInMethod:a2 object:v102 file:@"TRISQLiteCKDatabase.m" lineNumber:538 description:{@"Invalid parameter not satisfying: %@", @"paramIndex >= 0 && paramIndex < sqlite3_column_count(row.stmt)"}];
            }

            v56 = sqlite3_column_type([v13 stmt], v53);
            v57 = objc_alloc(MEMORY[0x277CCABB0]);
            if (v56 == 2)
            {
              [v13 getDoubleForColumn:v53];
              v58 = [v57 initWithDouble:?];
            }

            else
            {
              v58 = [v57 initWithLongLong:{objc_msgSend(v13, "getInt64ForColumn:", v53)}];
            }

            v37 = v58;
            [v20 setObject:v58 forKeyedSubscript:v29];
            v27 = v94;
          }

          else
          {
            if (v33 == objc_opt_class())
            {
              v55 = objc_alloc(MEMORY[0x277CBEAA8]);
              [v13 getDoubleForColumnName:v31 table:0];
              v52 = [v55 initWithTimeIntervalSinceReferenceDate:?];
            }

            else
            {
              if (v33 != objc_opt_class())
              {
                v30 = v107;
                if (v33 == objc_opt_class())
                {
                  v59 = [v13 getNSStringForColumnName:v31 table:0];
                  if (!v59)
                  {
                    v82 = objc_alloc(MEMORY[0x277CCACA8]);
                    v20 = v104;
                    v93 = [v104 recordID];
                    objb = [v93 recordName];
                    v83 = [v82 initWithFormat:@"CKAsset column on record %@ has empty file path.", objb];
                    v84 = [(TRISQLiteCKDatabase *)v102 _errorWithCode:1 message:v83];
                    v85 = *a8;
                    *a8 = v84;

                    goto LABEL_65;
                  }

                  v60 = v59;
                  v20 = v104;
                  v61 = [v104 recordID];
                  v93 = v60;
                  v62 = [(TRISQLiteCKDatabase *)v102 _assetForLocallyStoredAssetWithFilename:v60 forRecordId:v61 error:a8];

                  if (!v62)
                  {
                    v30 = v107;
                    goto LABEL_65;
                  }

                  [v104 setObject:v62 forKeyedSubscript:v29];

                  v30 = v107;
                  v37 = v93;
                }

                else
                {
                  if (v33 != objc_opt_class())
                  {
                    v79 = objc_alloc(MEMORY[0x277CCACA8]);
                    v93 = NSStringFromClass(v33);
                    obja = [v79 initWithFormat:@"loading of scalar fields with type %@ is not implemented.", v93];
                    v80 = [(TRISQLiteCKDatabase *)v102 _errorWithCode:1 message:?];
                    v81 = *a8;
                    *a8 = v80;

                    v20 = v104;
LABEL_65:

                    objc_autoreleasePoolPop(v30);
                    v70 = 0;
                    goto LABEL_66;
                  }

                  v34 = [v13 getInt64ForColumnName:v31 table:0];
                  v35 = v34 & ~(v34 >> 63);
                  v36 = [v16 objectForKeyedSubscript:v29];
                  v37 = v36;
                  if (v36)
                  {
                    v111 = 0u;
                    v112 = 0u;
                    v109 = 0u;
                    v110 = 0u;
                    obj = v36;
                    v99 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
                    if (v99)
                    {
                      v93 = v37;
                      v88 = v16;
                      v89 = v15;
                      v98 = *v110;
                      v91 = v13;
                      while (2)
                      {
                        for (i = 0; i != v99; ++i)
                        {
                          if (*v110 != v98)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v39 = *(*(&v109 + 1) + 8 * i);
                          v40 = objc_autoreleasePoolPush();
                          v41 = [v39 rangeValue];
                          v43 = v41 + v42;
                          v44 = v35;
                          if (v41 + v42 > v35)
                          {
                            v71 = objc_alloc(MEMORY[0x277CCACA8]);
                            v20 = v104;
                            v72 = [v104 recordID];
                            v73 = [v72 recordName];
                            v74 = [v71 initWithFormat:@"desiredKeys specifies range max %tu in array field %@[%@] for record %@, which exceeds maximum array count %tu.", v43, v103, v29, v73, v44];
                            v75 = [(TRISQLiteCKDatabase *)v102 _errorWithCode:12 message:v74];
                            v76 = *a8;
                            *a8 = v75;

LABEL_64:
                            objc_autoreleasePoolPop(v40);
                            v16 = v88;
                            v15 = v89;
                            v13 = v91;
                            v17 = v92;
                            v27 = v94;
                            v30 = v107;

                            goto LABEL_65;
                          }

                          v45 = v41;
                          v46 = v42;
                          v20 = v104;
                          v47 = [v104 recordID];
                          v48 = [(TRISQLiteCKDatabase *)v102 _loadArrayForRecordType:v103 recordId:v47 fieldKey:v29 indexRange:v45 txn:v46 error:v100, a8];

                          if (!v48)
                          {
                            goto LABEL_64;
                          }

                          v49 = [MEMORY[0x277CBC5A0] keyForListField:v29 withIndexRange:{v45, v46}];
                          [v104 setObject:v48 forKeyedSubscript:v49];

                          objc_autoreleasePoolPop(v40);
                          v35 = v44;
                        }

                        v13 = v91;
                        v99 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
                        if (v99)
                        {
                          continue;
                        }

                        break;
                      }

                      v51 = v88;
                      v50 = v89;
                      v20 = v104;
                      v37 = v93;
                      v27 = v94;
                      v30 = v107;
                    }

                    else
                    {
                      v51 = v16;
                      v50 = v15;
                      v20 = v104;
                    }

                    v65 = obj;
                  }

                  else
                  {
                    v51 = v16;
                    v50 = v15;
                    v93 = 0;
                    v63 = v35;
                    v20 = v104;
                    v64 = [v104 recordID];
                    v65 = [(TRISQLiteCKDatabase *)v102 _loadArrayForRecordType:v103 recordId:v64 fieldKey:v29 indexRange:0 txn:v63 error:v100, a8];

                    if (!v65)
                    {
                      v15 = v50;
                      v16 = v51;
                      v17 = v92;
                      goto LABEL_65;
                    }

                    [v104 setObject:v65 forKeyedSubscript:v29];
                    v37 = 0;
                  }

                  v15 = v50;
                  v16 = v51;
                  v17 = v92;
                }

                goto LABEL_50;
              }

              v52 = [v13 getNSDataForColumnName:v31 table:0];
            }

LABEL_41:
            v37 = v52;
            v20 = v104;
            [v104 setObject:v52 forKeyedSubscript:v29];
          }

          v30 = v107;
LABEL_50:

          goto LABEL_51;
        }

        v52 = [v13 getNSStringForColumnName:v31 table:0];
        goto LABEL_41;
      }

LABEL_51:
      objc_autoreleasePoolPop(v30);
      ++v28;
    }

    while (v28 != v106);
    v69 = [v27 countByEnumeratingWithState:&v113 objects:v118 count:16];
    v106 = v69;
  }

  while (v69);
LABEL_62:

  v70 = v20;
LABEL_66:

  v77 = *MEMORY[0x277D85DE8];

  return v70;
}

- (id)_loadArrayForRecordType:(id)a3 recordId:(id)a4 fieldKey:(id)a5 indexRange:(_NSRange)a6 txn:(id)a7 error:(id *)a8
{
  length = a6.length;
  location = a6.location;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (!length)
  {
    v31 = MEMORY[0x277CBEBF8];
    goto LABEL_20;
  }

  v44 = v18;
  v45 = v16;
  v19 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v15];
  if (!v19)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:634 description:{@"Invalid parameter not satisfying: %@", @"valueTypes"}];
  }

  v43 = location;
  v20 = [v19 objectForKeyedSubscript:v17];
  if ([v20 count] < 2 || (v21 = objc_msgSend(v20, "objectAtIndexedSubscript:", 0), v21 != objc_opt_class()))
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:636 description:{@"Invalid parameter not satisfying: %@", @"resolvedType.count >= 2 && resolvedType[0] == [NSArray class]"}];
  }

  v22 = [v20 objectAtIndexedSubscript:1];

  v23 = objc_opt_new();
  if (v22 == objc_opt_class() || v22 == objc_opt_class())
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke;
    v58[3] = &unk_279DDF8D0;
    v60 = a2;
    v58[4] = self;
    v59 = v23;
    v25 = MEMORY[0x2743948D0](v58);
    v26 = v59;
  }

  else if (v22 == objc_opt_class())
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke_2;
    v55[3] = &unk_279DDF8D0;
    v57 = a2;
    v55[4] = self;
    v56 = v23;
    v25 = MEMORY[0x2743948D0](v55);
    v26 = v56;
  }

  else
  {
    if (v22 != objc_opt_class())
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:668 description:{@"Loading arrays of type %@ is unsupported.", v22}];

      v25 = 0;
      goto LABEL_13;
    }

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke_3;
    v52[3] = &unk_279DDF8D0;
    v54 = a2;
    v52[4] = self;
    v53 = v23;
    v25 = MEMORY[0x2743948D0](v52);
    v26 = v53;
  }

LABEL_13:
  v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" SELECT value FROM     %@_%@ WHERE         recordId = :record_id     AND idx >= :lower     AND idx < :upper ORDER BY idx ASC;", v15, v17];
  v28 = [v44 db];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke_4;
  v48[3] = &unk_279DDF8F8;
  v29 = v45;
  v49 = v29;
  v50 = v43;
  v51 = length;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke_5;
  v46[3] = &unk_279DDF920;
  v30 = v25;
  v47 = v30;
  [v28 prepAndRunQuery:v27 onPrep:v48 onRow:v46 onError:0];

  if ([v23 count] != length)
  {
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = [v29 recordName];
    v34 = [v32 initWithFormat:@"Retrieval from array field %@[%@] on record %@ geerated wrong item count (exp %tu, act %tu).", v15, v17, v33, length, objc_msgSend(v23, "count")];
    v35 = [(TRISQLiteCKDatabase *)self _errorWithCode:1 message:v34];
    v36 = *a8;
    *a8 = v35;

LABEL_18:
    v31 = 0;
    goto LABEL_19;
  }

  if (v22 == objc_opt_class() && [v23 count])
  {
    v38 = 0;
    do
    {
      v39 = [v23 objectAtIndexedSubscript:v38];
      v40 = [(TRISQLiteCKDatabase *)self _assetForLocallyStoredAssetWithFilename:v39 forRecordId:v29 error:a8];

      if (!v40)
      {
        goto LABEL_18;
      }

      [v23 setObject:v40 atIndexedSubscript:v38];
    }

    while (++v38 < [v23 count]);
  }

  v31 = v23;
LABEL_19:

  v18 = v44;
  v16 = v45;
LABEL_20:

  return v31;
}

void __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"value" table:0];
  v5 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRISQLiteCKDatabase.m" lineNumber:645 description:@"NULL loaded from NOT NULL column for array value"];

    v3 = 0;
  }

  [*(a1 + 40) addObject:v3];
}

void __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke_2(void *a1, void *a2)
{
  v10 = a2;
  v3 = sqlite3_column_type([v10 stmt], 0);
  if (v3 == 2)
  {
    v4 = a1[5];
    v6 = objc_alloc(MEMORY[0x277CCABB0]);
    [v10 getDoubleForColumn:0];
    v5 = [v6 initWithDouble:?];
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 5)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"TRISQLiteCKDatabase.m" lineNumber:653 description:@"NULL loaded from NOT NULL array value column"];
      }

      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a1[6] object:a1[4] file:@"TRISQLiteCKDatabase.m" lineNumber:657 description:{@"Invalid parameter not satisfying: %@", @"actType == SQLITE_INTEGER"}];
    }

    v4 = a1[5];
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v10, "getInt64ForColumn:", 0)}];
  }

  v7 = v5;
  [v4 addObject:v5];
}

void __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumnName:"value" table:0];
  v5 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRISQLiteCKDatabase.m" lineNumber:664 description:@"NULL loaded from NOT NULL column for array value"];

    v3 = 0;
  }

  [*(a1 + 40) addObject:v3];
}

void __86__TRISQLiteCKDatabase__loadArrayForRecordType_recordId_fieldKey_indexRange_txn_error___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[4];
  v8 = a2;
  v4 = [v3 recordName];
  [v8 bindNamedParam:":record_id" toNSString:v4];

  if (a1[5] >= 0x7FFFFFFFFFFFFFFFuLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = a1[5];
  }

  [v8 bindNamedParam:":lower" toInt64:v5];
  v6 = a1[6];
  if ((v6 + a1[5]) >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6 + a1[5];
  }

  [v8 bindNamedParam:":upper" toInt64:v7];
}

- (id)_parseIndexedFieldKey:(id)a3 indexRange:(_NSRange *)a4
{
  v7 = a3;
  *a4 = xmmword_26F6C75C0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TRISQLiteCKDatabase__parseIndexedFieldKey_indexRange___block_invoke;
  block[3] = &unk_279DDEE68;
  block[4] = self;
  block[5] = a2;
  if (qword_281597650 != -1)
  {
    dispatch_once(&qword_281597650, block);
  }

  v8 = _MergedGlobals_29;
  v9 = [v8 firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
  v10 = v9;
  if (!v9)
  {
    v21 = v7;
    goto LABEL_11;
  }

  if ([v9 numberOfRanges] <= 3)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:738 description:{@"Invalid parameter not satisfying: %@", @"match.numberOfRanges >= 4"}];
  }

  v25 = 0;
  v26 = 0;
  v11 = [v10 rangeAtIndex:2];
  v13 = [v7 substringWithRange:{v11, v12}];
  if ([(TRISQLiteCKDatabase *)self _parseDecimalString:v13 value:&v26])
  {
    v14 = [v10 rangeAtIndex:3];
    v16 = [v7 substringWithRange:{v14, v15}];
    v17 = [(TRISQLiteCKDatabase *)self _parseDecimalString:v16 value:&v25];

    if (v17)
    {
      v18 = v25 - v26;
      if (v25 > v26)
      {
        a4->location = v26;
        a4->length = v18;
        v19 = [v10 rangeAtIndex:1];
        v21 = [v7 substringWithRange:{v19, v20}];
LABEL_11:
        v22 = v21;
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

  v22 = 0;
LABEL_14:

  return v22;
}

void __56__TRISQLiteCKDatabase__parseIndexedFieldKey_indexRange___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = 0;
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^([^\\[]+)\\[([0-9]+)\\.\\.<([0-9]+)\\]$" options:0 error:&v7];
  v4 = v7;
  if (!v3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"TRISQLiteCKDatabase.m" lineNumber:727 description:{@"Failed to create regex: %@", v4}];
  }

  v5 = _MergedGlobals_29;
  _MergedGlobals_29 = v3;

  objc_autoreleasePoolPop(v2);
}

- (BOOL)_parseDecimalString:(id)a3 value:(unint64_t *)a4
{
  v7 = 0;
  v5 = [MEMORY[0x277D73748] convertFromString:a3 usingBase:10 toU64:&v7];
  if (v5)
  {
    *a4 = v7;
  }

  return v5;
}

- (BOOL)_translatePredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(TRISQLiteCKDatabase *)self _translateCompoundPredicate:v12 forRecordType:v13 toSQLExpr:a5 paramBindings:a6 error:a7];
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(TRISQLiteCKDatabase *)self _translateComparisonPredicate:v12 forRecordType:v13 toSQLExpr:a5 paramBindings:a6 error:a7];
    goto LABEL_5;
  }

  v17 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v18 = [v12 isEqual:v17];

  if (v18)
  {
    v19 = *a5;
    v20 = @"1";
  }

  else
  {
    v21 = [MEMORY[0x277CCAC30] predicateWithValue:0];
    v22 = [v12 isEqual:v21];

    if (!v22)
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v24 initWithFormat:@"Unable to translate predicate of unsupported type: %@", v26];
      v28 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v27];
      v29 = *a7;
      *a7 = v28;

      v15 = 0;
      goto LABEL_6;
    }

    v19 = *a5;
    v20 = @"0";
  }

  *a5 = v20;

  v23 = *a6;
  *a6 = MEMORY[0x277CBEBF8];

  v15 = 1;
LABEL_6:

  return v15;
}

- (BOOL)_translateCompoundPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v58 = a4;
  v14 = [v13 compoundPredicateType];
  if ((v14 - 1) >= 2)
  {
    if (v14)
    {
      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unrecognized compound predicate type: %tu", objc_msgSend(v13, "compoundPredicateType")];
      v42 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v41];
      v43 = *a7;
      *a7 = v42;
    }

    else
    {
      v34 = [v13 subpredicates];
      v35 = [v34 count];

      if (v35 == 1)
      {
        v64 = 0;
        v36 = [v13 subpredicates];
        v37 = [v36 objectAtIndexedSubscript:0];
        v33 = [(TRISQLiteCKDatabase *)self _translatePredicate:v37 forRecordType:v58 toSQLExpr:&v64 paramBindings:a6 error:a7];

        if (v33)
        {
          if (!v64)
          {
            v53 = [MEMORY[0x277CCA890] currentHandler];
            [v53 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:824 description:{@"Invalid parameter not satisfying: %@", @"subSQLExpr"}];
          }

          v38 = objc_alloc(MEMORY[0x277CCACA8]);
          v39 = [v38 initWithFormat:@"NOT (%@)", v64];
          v40 = *a5;
          *a5 = v39;
        }

        goto LABEL_35;
      }

      v46 = objc_alloc(MEMORY[0x277CCACA8]);
      v47 = [v13 subpredicates];
      v48 = [v46 initWithFormat:@"NOT predicate contains %tu subpredicates where exactly one was expected.", objc_msgSend(v47, "count")];
      v49 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v48];
      v50 = *a7;
      *a7 = v49;
    }

    LOBYTE(v33) = 0;
    goto LABEL_35;
  }

  v15 = [v13 subpredicates];
  v16 = [v15 count];

  if (v16)
  {
    v54 = a2;
    v55 = a6;
    v56 = a5;
    v17 = objc_opt_new();
    v18 = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v57 = v13;
    v19 = [v13 subpredicates];
    v20 = [v19 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v61;
      while (2)
      {
        v23 = 0;
        do
        {
          if (*v61 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v60 + 1) + 8 * v23);
          v64 = 0;
          v59 = 0;
          if (![(TRISQLiteCKDatabase *)self _translatePredicate:v24 forRecordType:v58 toSQLExpr:&v64 paramBindings:&v59 error:a7])
          {

            LOBYTE(v33) = 0;
            goto LABEL_28;
          }

          if (!v64)
          {
            v27 = [MEMORY[0x277CCA890] currentHandler];
            [v27 handleFailureInMethod:v54 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:854 description:{@"Invalid parameter not satisfying: %@", @"subSQLExpr"}];
          }

          if (!v59)
          {
            v28 = [MEMORY[0x277CCA890] currentHandler];
            [v28 handleFailureInMethod:v54 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:855 description:{@"Invalid parameter not satisfying: %@", @"subBindings"}];
          }

          v25 = objc_alloc(MEMORY[0x277CCACA8]);
          v26 = [v25 initWithFormat:@"(%@)", v64];
          [v17 addObject:v26];

          [v18 addObjectsFromArray:v59];
          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v60 objects:v65 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    if ([v57 compoundPredicateType] == 1)
    {
      v29 = @" AND ";
    }

    else
    {
      v29 = @" OR ";
    }

    v30 = [v17 componentsJoinedByString:v29];
    v31 = *v56;
    *v56 = v30;

    v32 = v18;
    v19 = *v55;
    *v55 = v32;
    LOBYTE(v33) = 1;
LABEL_28:

    v13 = v57;
  }

  else
  {
    if ([v13 compoundPredicateType] == 1)
    {
      v44 = @"1";
    }

    else
    {
      v44 = @"0";
    }

    objc_storeStrong(a5, v44);
    v45 = *a6;
    *a6 = MEMORY[0x277CBEBF8];

    LOBYTE(v33) = 1;
  }

LABEL_35:

  v51 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)_translateComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [v12 predicateOperatorType];
  if (v14 >= 6)
  {
    if (v14 != 10)
    {
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported comparison predicate: %tu", objc_msgSend(v12, "predicateOperatorType")];
      v19 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v18];
      v20 = *a7;
      *a7 = v19;

      v16 = 0;
      goto LABEL_4;
    }

    v15 = [(TRISQLiteCKDatabase *)self _translateArrayRHSComparisonPredicate:v12 forRecordType:v13 toSQLExpr:a5 paramBindings:a6 error:a7];
  }

  else
  {
    v15 = [(TRISQLiteCKDatabase *)self _translateScalarComparisonPredicate:v12 forRecordType:v13 toSQLExpr:a5 paramBindings:a6 error:a7];
  }

  v16 = v15;
LABEL_4:

  return v16;
}

- (BOOL)_translateScalarComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [v12 comparisonPredicateModifier];
  if (v14 == 2)
  {
    v15 = [(TRISQLiteCKDatabase *)self _translateAnyModifiedScalarComparisonPredicate:v12 forRecordType:v13 toSQLExpr:a5 paramBindings:a6 error:a7];
  }

  else
  {
    if (v14)
    {
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported comparison predicate modifier: %tu", objc_msgSend(v12, "comparisonPredicateModifier")];
      v18 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v17];
      v19 = *a7;
      *a7 = v18;

      v16 = 0;
      goto LABEL_7;
    }

    v15 = [(TRISQLiteCKDatabase *)self _translateDirectModifiedScalarComparisonPredicate:v12 forRecordType:v13 toSQLExpr:a5 paramBindings:a6 error:a7];
  }

  v16 = v15;
LABEL_7:

  return v16;
}

- (BOOL)_parseScalarExpression:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v70[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v14];
  if (!v15)
  {
    v56 = [MEMORY[0x277CCA890] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:945 description:{@"Invalid parameter not satisfying: %@", @"valueTypes"}];
  }

  if ([v13 expressionType] == 3)
  {
    v16 = [v13 keyPath];
    if ([v16 isEqualToString:*MEMORY[0x277D739E0]])
    {
      v17 = @"modificationDate";
    }

    else
    {
      v17 = [v13 keyPath];
    }

    v22 = [v15 objectForKeyedSubscript:v17];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 firstObject];
      if (v24 != objc_opt_class())
      {
        objc_storeStrong(a5, v17);
        v25 = *a6;
        *a6 = MEMORY[0x277CBEBF8];
        v21 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v33 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [v13 keyPath];
      v32 = [v33 initWithFormat:@"Field with key %@ is array-typed but is used in an expression where a scalar was expected.", v25, v58];
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [v13 keyPath];
      v32 = [v31 initWithFormat:@"Unrecognized field key %@ on record type %@.", v25, v14];
    }

    v34 = v32;
    v35 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v32];
    v36 = *a7;
    *a7 = v35;

    v21 = 0;
    goto LABEL_20;
  }

  if (![v13 expressionType])
  {
    v17 = [v13 constantValue];
    if (!v17)
    {
      v57 = [MEMORY[0x277CCA890] currentHandler];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = *a5;
      *a5 = @"?";

      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __90__TRISQLiteCKDatabase__parseScalarExpression_forRecordType_toSQLExpr_paramBindings_error___block_invoke;
      v65[3] = &unk_279DDF948;
      v66 = v17;
      v27 = MEMORY[0x2743948D0](v65);
      v70[0] = v27;
      v21 = 1;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
      v29 = *a6;
      *a6 = v28;

      v30 = v66;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = v17;
        v40 = *a5;
        *a5 = @"?";

        if (CFNumberIsFloatType(v39))
        {
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __90__TRISQLiteCKDatabase__parseScalarExpression_forRecordType_toSQLExpr_paramBindings_error___block_invoke_2;
          v63[3] = &unk_279DDF948;
          v41 = &v64;
          v64 = v39;
          v42 = MEMORY[0x2743948D0](v63);
          v69 = v42;
          v43 = &v69;
        }

        else
        {
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __90__TRISQLiteCKDatabase__parseScalarExpression_forRecordType_toSQLExpr_paramBindings_error___block_invoke_3;
          v61[3] = &unk_279DDF948;
          v41 = &v62;
          v62 = v39;
          v42 = MEMORY[0x2743948D0](v61);
          v68 = v42;
          v43 = &v68;
        }

        v21 = 1;
        v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
        v55 = *a6;
        *a6 = v54;

        goto LABEL_21;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v48 = objc_alloc(MEMORY[0x277CCACA8]);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = [v48 initWithFormat:@"Constant-valued expression of class %@ is not supported in context where a scalar expression is expected.", v50];
        v52 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v51];
        v53 = *a7;
        *a7 = v52;

        v21 = 0;
        goto LABEL_21;
      }

      v44 = *a5;
      *a5 = @"?";

      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __90__TRISQLiteCKDatabase__parseScalarExpression_forRecordType_toSQLExpr_paramBindings_error___block_invoke_4;
      v59[3] = &unk_279DDF948;
      v60 = v17;
      v45 = MEMORY[0x2743948D0](v59);
      v67 = v45;
      v21 = 1;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
      v47 = *a6;
      *a6 = v46;

      v30 = v60;
    }

LABEL_21:
    goto LABEL_22;
  }

  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Expression of type %tu is not supported in context where a scalar expression is expected.", objc_msgSend(v13, "expressionType")];
  v19 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v18];
  v20 = *a7;
  *a7 = v19;

  v21 = 0;
LABEL_22:

  v37 = *MEMORY[0x277D85DE8];
  return v21;
}

void __90__TRISQLiteCKDatabase__parseScalarExpression_forRecordType_toSQLExpr_paramBindings_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 doubleValue];
  [v5 bindParam:a3 toDouble:?];
}

void __90__TRISQLiteCKDatabase__parseScalarExpression_forRecordType_toSQLExpr_paramBindings_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 bindParam:a3 toInt64:{objc_msgSend(v4, "longLongValue")}];
}

void __90__TRISQLiteCKDatabase__parseScalarExpression_forRecordType_toSQLExpr_paramBindings_error___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 timeIntervalSinceReferenceDate];
  [v5 bindParam:a3 toDouble:?];
}

- (BOOL)_translateDirectModifiedScalarComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v14];
  if (!v15)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1025 description:{@"Invalid parameter not satisfying: %@", @"valueTypes"}];
  }

  v40 = 0;
  v41 = 0;
  v16 = [v13 leftExpression];
  v17 = [(TRISQLiteCKDatabase *)self _parseScalarExpression:v16 forRecordType:v14 toSQLExpr:&v41 paramBindings:&v40 error:a7];

  if (v17)
  {
    if (!v41)
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1036 description:{@"Invalid parameter not satisfying: %@", @"leftSQL"}];
    }

    if (!v40)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1037 description:{@"Invalid parameter not satisfying: %@", @"leftParamBindings"}];
    }

    v38 = 0;
    v39 = 0;
    v18 = [v13 rightExpression];
    v19 = [(TRISQLiteCKDatabase *)self _parseScalarExpression:v18 forRecordType:v14 toSQLExpr:&v39 paramBindings:&v38 error:a7];

    if (!v19)
    {
      v25 = 0;
LABEL_31:

      goto LABEL_32;
    }

    if (!v39)
    {
      v36 = [MEMORY[0x277CCA890] currentHandler];
      [v36 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1048 description:{@"Invalid parameter not satisfying: %@", @"rightSQL"}];
    }

    if (!v38)
    {
      v37 = [MEMORY[0x277CCA890] currentHandler];
      [v37 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1049 description:{@"Invalid parameter not satisfying: %@", @"rightParamBindings"}];
    }

    v20 = [v40 arrayByAddingObjectsFromArray:?];
    v21 = *a6;
    *a6 = v20;

    v22 = [v13 predicateOperatorType];
    if (v22 > 2)
    {
      switch(v22)
      {
        case 3:
          v28 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [v28 initWithFormat:@"%@ >= %@", v41, v39];
          goto LABEL_29;
        case 4:
          v31 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [v31 initWithFormat:@"%@ = %@", v41, v39];
          goto LABEL_29;
        case 5:
          v26 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [v26 initWithFormat:@"%@ != %@", v41, v39];
          goto LABEL_29;
      }
    }

    else
    {
      switch(v22)
      {
        case 0:
          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [v27 initWithFormat:@"%@ < %@", v41, v39];
          goto LABEL_29;
        case 1:
          v30 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [v30 initWithFormat:@"%@ <= %@", v41, v39];
          goto LABEL_29;
        case 2:
          v23 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [v23 initWithFormat:@"%@ > %@", v41, v39];
LABEL_29:
          v29 = *a5;
          *a5 = v24;
          v25 = 1;
          goto LABEL_30;
      }
    }

    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1078 description:{@"Unexpected scalar comparison predicate operator: %tu", objc_msgSend(v13, "predicateOperatorType")}];
    v25 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v25 = 0;
LABEL_32:

  return v25;
}

- (BOOL)_translateAnyModifiedScalarComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v8 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:@"Use of ANY is only supported in conjunction with predicate operator IN.", a5, a6];
  v9 = *a7;
  *a7 = v8;

  return 0;
}

- (BOOL)_translateArrayRHSComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [v12 comparisonPredicateModifier];
  if (v14 == 2)
  {
    v15 = [(TRISQLiteCKDatabase *)self _translateAnyModifiedArrayRHSComparisonPredicate:v12 forRecordType:v13 toSQLExpr:a5 paramBindings:a6 error:a7];
  }

  else
  {
    if (v14)
    {
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported comparison predicate modifier: %tu", objc_msgSend(v12, "comparisonPredicateModifier")];
      v18 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v17];
      v19 = *a7;
      *a7 = v18;

      v16 = 0;
      goto LABEL_7;
    }

    v15 = [(TRISQLiteCKDatabase *)self _translateDirectModifiedArrayRHSComparisonPredicate:v12 forRecordType:v13 toSQLExpr:a5 paramBindings:a6 error:a7];
  }

  v16 = v15;
LABEL_7:

  return v16;
}

- (BOOL)_translateDirectModifiedArrayRHSComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  if ([v13 predicateOperatorType] != 10)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1140 description:{@"Expected IN operator, found %tu", objc_msgSend(v13, "predicateOperatorType")}];
  }

  v32 = 0;
  v33 = 0;
  v15 = [v13 leftExpression];
  v16 = [(TRISQLiteCKDatabase *)self _parseScalarExpression:v15 forRecordType:v14 toSQLExpr:&v33 paramBindings:&v32 error:a7];

  if (v16)
  {
    if (!v33)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1151 description:{@"Invalid parameter not satisfying: %@", @"leftSQL"}];
    }

    if (!v32)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1152 description:{@"Invalid parameter not satisfying: %@", @"leftParamBindings"}];
    }

    v30 = 0;
    v31 = 0;
    v17 = [v13 rightExpression];
    v18 = [(TRISQLiteCKDatabase *)self _parseArrayExpression:v17 forRecordType:v14 usingCTEName:@"trisql_cte_rhs" toSQLCommonTableExpression:&v31 paramBindings:&v30 error:a7];

    if (v18)
    {
      if (!v31)
      {
        v28 = [MEMORY[0x277CCA890] currentHandler];
        [v28 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1165 description:{@"Invalid parameter not satisfying: %@", @"rhsWithClause"}];
      }

      if (!v30)
      {
        v29 = [MEMORY[0x277CCA890] currentHandler];
        [v29 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1166 description:{@"Invalid parameter not satisfying: %@", @"rhsWithClauseBindings"}];
      }

      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = [v19 initWithFormat:@"%@ IN (WITH %@ SELECT value FROM %@)", v33, v31, @"trisql_cte_rhs"];
      v21 = *a5;
      *a5 = v20;

      v22 = [v32 arrayByAddingObjectsFromArray:v30];
      v23 = *a6;
      *a6 = v22;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)_translateAnyModifiedArrayRHSComparisonPredicate:(id)a3 forRecordType:(id)a4 toSQLExpr:(id *)a5 paramBindings:(id *)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  if ([v13 predicateOperatorType] != 10)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1184 description:{@"Expected IN operator, found %tu", objc_msgSend(v13, "predicateOperatorType")}];
  }

  v32 = 0;
  v33 = 0;
  v15 = [v13 leftExpression];
  v16 = [(TRISQLiteCKDatabase *)self _parseArrayExpression:v15 forRecordType:v14 usingCTEName:@"trisql_cte_lhs" toSQLCommonTableExpression:&v33 paramBindings:&v32 error:a7];

  if (v16)
  {
    if (!v33)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1199 description:{@"Invalid parameter not satisfying: %@", @"lhsWithClause"}];
    }

    if (!v32)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1200 description:{@"Invalid parameter not satisfying: %@", @"lhsWithClauseBindings"}];
    }

    v30 = 0;
    v31 = 0;
    v17 = [v13 rightExpression];
    v18 = [(TRISQLiteCKDatabase *)self _parseArrayExpression:v17 forRecordType:v14 usingCTEName:@"trisql_cte_rhs" toSQLCommonTableExpression:&v31 paramBindings:&v30 error:a7];

    if (v18)
    {
      if (!v31)
      {
        v28 = [MEMORY[0x277CCA890] currentHandler];
        [v28 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1212 description:{@"Invalid parameter not satisfying: %@", @"rhsWithClause"}];
      }

      if (!v30)
      {
        v29 = [MEMORY[0x277CCA890] currentHandler];
        [v29 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1213 description:{@"Invalid parameter not satisfying: %@", @"rhsWithClauseBindings"}];
      }

      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = [v19 initWithFormat:@"EXISTS (WITH %@, %@ SELECT 1 FROM %@ WHERE value IN %@ LIMIT 1)", v33, v31, @"trisql_cte_lhs", @"trisql_cte_rhs"];
      v21 = *a5;
      *a5 = v20;

      v22 = [v32 arrayByAddingObjectsFromArray:v30];
      v23 = *a6;
      *a6 = v22;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)_parseArrayExpression:(id)a3 forRecordType:(id)a4 usingCTEName:(id)a5 toSQLCommonTableExpression:(id *)a6 paramBindings:(id *)a7 error:(id *)a8
{
  v104 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v16];
  if (!v18)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v82 = v81 = v17;
    [v82 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1234 description:{@"Invalid parameter not satisfying: %@", @"valueTypes"}];

    v17 = v81;
  }

  if ([v15 expressionType] == 3)
  {
    v92 = v17;
    v19 = [v15 keyPath];
    v20 = [v18 objectForKeyedSubscript:v19];

    if (v20)
    {
      v21 = self;
      v88 = a7;
      v90 = v18;
      v22 = [v20 firstObject];
      v23 = objc_opt_class();
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [v15 keyPath];
      v26 = v25;
      if (v22 == v23)
      {
        v60 = [v24 initWithFormat:@"%@ (value) AS (SELECT value FROM %@_%@ WHERE recordId = trisql_outer_recordId)", v92, v16, v25];
        v61 = *a6;
        *a6 = v60;

        v26 = *v88;
        *v88 = MEMORY[0x277CBEBF8];
        v30 = 1;
      }

      else
      {
        v27 = [v24 initWithFormat:@"Field with key %@ is scalar-valued, but was used in a predicate where an array was expected.", v25];
        v28 = [(TRISQLiteCKDatabase *)v21 _errorWithCode:12 message:v27];
        v29 = *a8;
        *a8 = v28;

        v30 = 0;
      }

      v18 = v90;
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x277CCACA8]);
      v26 = [v15 keyPath];
      v35 = [v34 initWithFormat:@"Unrecognized field key %@ on record type %@.", v26, v16];
      v36 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v35];
      v37 = *a8;
      *a8 = v36;

      v30 = 0;
    }

    v17 = v92;
  }

  else if ([v15 expressionType])
  {
    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Comparison predicate with expression of type %tu is not supported.", objc_msgSend(v15, "expressionType")];
    v32 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v31];
    v33 = *a8;
    *a8 = v32;

    v30 = 0;
  }

  else
  {
    v38 = [v15 constantValue];
    if (!v38)
    {
      [MEMORY[0x277CCA890] currentHandler];
      v83 = v94 = v17;

      v17 = v94;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = self;
      v87 = v15;
      v89 = a7;
      v85 = v38;
      v91 = v18;
      v93 = v17;
      v86 = v16;
      v39 = v38;
      v40 = objc_opt_new();
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v41 = v39;
      v42 = [v41 countByEnumeratingWithState:&v99 objects:v103 count:16];
      v95 = v41;
      if (v42)
      {
        v43 = v42;
        v44 = *v100;
        while (2)
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v100 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v99 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v98[0] = MEMORY[0x277D85DD0];
              v98[1] = 3221225472;
              v98[2] = __119__TRISQLiteCKDatabase__parseArrayExpression_forRecordType_usingCTEName_toSQLCommonTableExpression_paramBindings_error___block_invoke;
              v98[3] = &unk_279DDF948;
              v98[4] = v46;
              v47 = MEMORY[0x2743948D0](v98);
              [v40 addObject:v47];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v69 = v41;
                v70 = objc_alloc(MEMORY[0x277CCACA8]);
                v71 = objc_opt_class();
                v72 = NSStringFromClass(v71);
                v73 = [v70 initWithFormat:@"An NSArray containing a value of class %@ was used in a predicate which only supports arrays of NSString and NSNumber.", v72];
                v74 = [(TRISQLiteCKDatabase *)v84 _errorWithCode:12 message:v73];
                v75 = *a8;
                *a8 = v74;

                v30 = 0;
                v76 = v69;
                v16 = v86;
                v17 = v93;
                v38 = v85;
                goto LABEL_39;
              }

              v48 = v46;
              if (CFNumberIsFloatType(v48))
              {
                v49 = v97;
                v97[0] = MEMORY[0x277D85DD0];
                v97[1] = 3221225472;
                v50 = __119__TRISQLiteCKDatabase__parseArrayExpression_forRecordType_usingCTEName_toSQLCommonTableExpression_paramBindings_error___block_invoke_2;
              }

              else
              {
                v49 = v96;
                v96[0] = MEMORY[0x277D85DD0];
                v96[1] = 3221225472;
                v50 = __119__TRISQLiteCKDatabase__parseArrayExpression_forRecordType_usingCTEName_toSQLCommonTableExpression_paramBindings_error___block_invoke_3;
              }

              v49[2] = v50;
              v49[3] = &unk_279DDF948;
              v49[4] = v48;
              v51 = v48;
              v52 = MEMORY[0x2743948D0](v49);
              [v40 addObject:v52];

              v41 = v95;
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v99 objects:v103 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }
      }

      if ([v41 count])
      {
        v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v41, "count")}];
        v54 = v89;
        if ([v41 count])
        {
          v55 = 0;
          do
          {
            [v53 addObject:@"(?)"];
            ++v55;
          }

          while (v55 < [v41 count]);
        }

        v56 = objc_alloc(MEMORY[0x277CCACA8]);
        v57 = [v53 componentsJoinedByString:{@", "}];
        v58 = [v56 initWithFormat:@"%@ (value) AS (VALUES %@)", v93, v57];
        v59 = *a6;
        *a6 = v58;

        v17 = v93;
        v16 = v86;
        v15 = v87;
      }

      else
      {
        v17 = v93;
        v77 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ (value) AS (SELECT 1 WHERE 0)", v93];
        v53 = *a6;
        *a6 = v77;
        v16 = v86;
        v54 = v89;
      }

      v78 = v40;
      v76 = *v54;
      *v54 = v78;
      v30 = 1;
      v38 = v85;
      v69 = v95;
LABEL_39:

      v18 = v91;
    }

    else
    {
      v62 = v17;
      v63 = objc_alloc(MEMORY[0x277CCACA8]);
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = [v63 initWithFormat:@"Value of class %@ was used in a predicate where an array type was expected.", v65];
      v67 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v66];
      v68 = *a8;
      *a8 = v67;

      v17 = v62;
      v30 = 0;
    }
  }

  v79 = *MEMORY[0x277D85DE8];
  return v30;
}

void __119__TRISQLiteCKDatabase__parseArrayExpression_forRecordType_usingCTEName_toSQLCommonTableExpression_paramBindings_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 doubleValue];
  [v5 bindParam:a3 toDouble:?];
}

void __119__TRISQLiteCKDatabase__parseArrayExpression_forRecordType_usingCTEName_toSQLCommonTableExpression_paramBindings_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 bindParam:a3 toInt64:{objc_msgSend(v4, "longLongValue")}];
}

- (void)_processFetchRecordsOperation:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__2;
  v57 = __Block_byref_object_dispose__2;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__2;
  v51 = __Block_byref_object_dispose__2;
  v52 = 0;
  v36 = a3;
  v4 = [v36 recordIDs];
  v5 = v4 == 0;

  if (v5)
  {
    v12 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:@"CKFetchRecordsOperation with nil recordIDs is not supported."];
    v11 = v48[5];
    v48[5] = v12;
  }

  else
  {
    v6 = [(TRISQLiteCKDatabase *)self delegate];
    if (v6 && (-[TRISQLiteCKDatabase delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 shouldProcessFetchOperation:v36 error:v48 + 5], v7, v6, (v8 & 1) == 0))
    {
      if (v48[5])
      {
        goto LABEL_7;
      }

      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1331 description:{@"Invalid parameter not satisfying: %@", @"error"}];
    }

    else
    {
      v9 = MEMORY[0x277D42640];
      db = self->_db;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __53__TRISQLiteCKDatabase__processFetchRecordsOperation___block_invoke;
      v41[3] = &unk_279DDF970;
      v42 = v36;
      v43 = self;
      v44 = &v47;
      v45 = &v53;
      v46 = a2;
      [v9 readTransactionWithHandle:db failableBlock:v41];
      v11 = v42;
    }
  }

LABEL_7:
  v13 = [v36 perRecordCompletionBlock];

  if (!v13)
  {
    goto LABEL_22;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = [v36 recordIDs];
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v59 count:16];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *v38;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v38 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v37 + 1) + 8 * i);
      v19 = objc_autoreleasePoolPush();
      v20 = [v54[5] objectForKeyedSubscript:v18];
      v21 = v20;
      if (!v54[5])
      {
        v22 = v48[5];
        goto LABEL_17;
      }

      if (v20)
      {
        v22 = 0;
LABEL_17:
        v23 = v22;
        goto LABEL_19;
      }

      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [v18 recordName];
      v26 = [v24 initWithFormat:@"RecordID not found: %@", v25];
      v23 = [(TRISQLiteCKDatabase *)self _errorWithCode:11 message:v26];

LABEL_19:
      v27 = [v36 perRecordCompletionBlock];
      (v27)[2](v27, v21, v18, v23);

      objc_autoreleasePoolPop(v19);
    }

    v15 = [v14 countByEnumeratingWithState:&v37 objects:v59 count:16];
  }

  while (v15);
LABEL_21:

LABEL_22:
  v28 = [v36 fetchRecordsCompletionBlock];

  if (v28)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = [v36 fetchRecordsCompletionBlock];
    v30[2](v30, v54[5], v48[5]);

    objc_autoreleasePoolPop(v29);
  }

  v31 = [v36 completionBlock];

  if (v31)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = [v36 completionBlock];
    v33[2]();

    objc_autoreleasePoolPop(v32);
  }

  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __53__TRISQLiteCKDatabase__processFetchRecordsOperation___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v3 = [*(a1 + 32) recordIDs];

  if (!v3)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"TRISQLiteCKDatabase.m" lineNumber:1339 description:{@"Invalid parameter not satisfying: %@", @"operation.recordIDs"}];
  }

  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(a1 + 40) _allRecordTypes];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = [*(a1 + 32) recordIDs];
        v13 = [*(a1 + 32) desiredKeys];
        v14 = [v11 _evalFetchRecordsOperationWithRecordIds:v12 recordType:v9 desiredKeys:v13 txn:v20 error:*(*(a1 + 48) + 8) + 40];

        if (!v14)
        {
          v15 = *MEMORY[0x277D42678];
          objc_autoreleasePoolPop(v10);

          goto LABEL_13;
        }

        [v4 addEntriesFromDictionary:v14];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  v15 = *MEMORY[0x277D42670];
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_evalFetchRecordsOperationWithRecordIds:(id)a3 recordType:(id)a4 desiredKeys:(id)a5 txn:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v14];
  if (!v17)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1399 description:{@"Invalid parameter not satisfying: %@", @"valueTypes"}];
  }

  v46 = 0;
  v47[0] = 0;
  v18 = 0;
  if ([(TRISQLiteCKDatabase *)self _parseDesiredKeys:v15 recordType:v14 unindexedFields:v47 indexedFields:&v46 error:a7])
  {
    if (!v47[0])
    {
      v29 = [MEMORY[0x277CCA890] currentHandler];
      [v29 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1413 description:{@"Invalid parameter not satisfying: %@", @"unindexedDesiredKeys"}];
    }

    if (!v46)
    {
      v30 = [MEMORY[0x277CCA890] currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1414 description:{@"Invalid parameter not satisfying: %@", @"indexedDesiredKeys"}];
    }

    if ([v13 count])
    {
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      [v13 count];
      v20 = _PASQMarksSeparatedByCommas();
      v21 = [v19 initWithFormat:@" SELECT * FROM     %@ WHERE trisql_recordId IN (%@);", v14, v20];

      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 1;
      v22 = objc_opt_new();
      v23 = [v16 db];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __96__TRISQLiteCKDatabase__evalFetchRecordsOperationWithRecordIds_recordType_desiredKeys_txn_error___block_invoke;
      v40[3] = &unk_279DDF860;
      v41 = v13;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __96__TRISQLiteCKDatabase__evalFetchRecordsOperationWithRecordIds_recordType_desiredKeys_txn_error___block_invoke_2;
      v32[3] = &unk_279DDF998;
      v32[4] = self;
      v33 = v14;
      v34 = v47[0];
      v35 = v46;
      v36 = v16;
      v38 = &v42;
      v39 = a7;
      v24 = v22;
      v37 = v24;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __96__TRISQLiteCKDatabase__evalFetchRecordsOperationWithRecordIds_recordType_desiredKeys_txn_error___block_invoke_3;
      v31[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
      v31[4] = a7;
      v25 = [v23 prepAndRunQuery:v21 onPrep:v40 onRow:v32 onError:v31];

      if (v25)
      {
        if (*(v43 + 24))
        {
          v26 = v24;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v18 = v26;

      _Block_object_dispose(&v42, 8);
    }

    else
    {
      v18 = MEMORY[0x277CBEC10];
    }
  }

  return v18;
}

void __96__TRISQLiteCKDatabase__evalFetchRecordsOperationWithRecordIds_recordType_desiredKeys_txn_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      v5 = [*(a1 + 32) objectAtIndexedSubscript:?];
      v6 = [v5 recordName];
      [v8 bindParam:v4 toNSString:v6];

      v7 = [*(a1 + 32) count];
      v3 = v4;
    }

    while (v7 > v4);
  }
}

uint64_t __96__TRISQLiteCKDatabase__evalFetchRecordsOperationWithRecordIds_recordType_desiredKeys_txn_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createRecordFromSelectRow:a2 recordType:*(a1 + 40) unindexedDesiredKeys:*(a1 + 48) indexedDesiredKeys:*(a1 + 56) txn:*(a1 + 64) error:*(a1 + 88)];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 72);
    v6 = [v3 recordID];
    [v5 setObject:v4 forKeyedSubscript:v6];

    v7 = MEMORY[0x277D42690];
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    v7 = MEMORY[0x277D42698];
  }

  return *v7;
}

- (void)_processModifyRecordsOperation:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__2;
  v64 = __Block_byref_object_dispose__2;
  v65 = 0;
  v5 = MEMORY[0x277D42640];
  db = self->_db;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __54__TRISQLiteCKDatabase__processModifyRecordsOperation___block_invoke;
  v56[3] = &unk_279DDF9C0;
  v7 = v4;
  v57 = v7;
  v58 = self;
  v59 = &v60;
  [v5 writeTransactionWithHandle:db failableBlock:v56];
  if (!v61[5])
  {
    v8 = [v7 recordIDsToDelete];
    v9 = [v8 count] == 0;

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x277CBEB58]);
      v11 = [v7 recordIDsToDelete];
      v12 = [v10 initWithArray:v11];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v13 = [v7 recordsToSave];
      v14 = [v13 countByEnumeratingWithState:&v52 objects:v68 count:16];
      if (v14)
      {
        v15 = *v53;
        do
        {
          v16 = 0;
          do
          {
            if (*v53 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [*(*(&v52 + 1) + 8 * v16) recordID];
            [v12 removeObject:v17];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v52 objects:v68 count:16];
        }

        while (v14);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v48 objects:v67 count:16];
      if (v19)
      {
        v20 = *v49;
        do
        {
          v21 = 0;
          do
          {
            if (*v49 != v20)
            {
              objc_enumerationMutation(v18);
            }

            assetDir = self->_assetDir;
            v23 = [*(*(&v48 + 1) + 8 * v21) recordName];
            v24 = [(NSString *)assetDir stringByAppendingPathComponent:v23];

            v25 = [MEMORY[0x277CCAA00] defaultManager];
            [v25 removeItemAtPath:v24 error:0];

            ++v21;
          }

          while (v19 != v21);
          v19 = [v18 countByEnumeratingWithState:&v48 objects:v67 count:16];
        }

        while (v19);
      }
    }
  }

  v26 = [v7 perRecordSaveBlock];

  if (v26)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = [v7 recordsToSave];
    v28 = [v27 countByEnumeratingWithState:&v44 objects:v66 count:16];
    if (v28)
    {
      v29 = *v45;
      do
      {
        v30 = 0;
        do
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v44 + 1) + 8 * v30);
          v32 = objc_autoreleasePoolPush();
          v33 = [v7 perRecordSaveBlock];
          v34 = [v31 recordID];
          (v33)[2](v33, v34, v31, 0);

          objc_autoreleasePoolPop(v32);
          ++v30;
        }

        while (v28 != v30);
        v28 = [v27 countByEnumeratingWithState:&v44 objects:v66 count:16];
      }

      while (v28);
    }
  }

  v35 = [v7 modifyRecordsCompletionBlock];

  if (v35)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = [v7 modifyRecordsCompletionBlock];
    v38 = [v7 recordsToSave];
    v39 = [v7 recordIDsToDelete];
    (v37)[2](v37, v38, v39, v61[5]);

    objc_autoreleasePoolPop(v36);
  }

  v40 = [v7 completionBlock];

  if (v40)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = [v7 completionBlock];
    v42[2]();

    objc_autoreleasePoolPop(v41);
  }

  _Block_object_dispose(&v60, 8);
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __54__TRISQLiteCKDatabase__processModifyRecordsOperation___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) recordIDsToDelete];

  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [*(a1 + 40) _allRecordTypes];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        v9 = 0;
        do
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          v12 = *(a1 + 40);
          v13 = [*(a1 + 32) recordIDsToDelete];
          [v12 _deleteRecordsWithRecordIds:v13 recordType:v10 txn:v3];

          objc_autoreleasePoolPop(v11);
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [*(a1 + 32) recordsToSave];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![*(a1 + 40) _upsertRecord:*(*(&v22 + 1) + 8 * v18) txn:v3 error:*(*(a1 + 48) + 8) + 40])
        {
          v19 = *MEMORY[0x277D42678];

          goto LABEL_20;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = *MEMORY[0x277D42670];
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_deleteRecordsWithRecordIds:(id)a3 recordType:(id)a4 txn:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count])
  {
    v12 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v10];
    if (!v12)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1522 description:{@"Bad record type: %@", v10}];
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__TRISQLiteCKDatabase__deleteRecordsWithRecordIds_recordType_txn___block_invoke;
    v23[3] = &unk_279DDF9E8;
    v13 = v10;
    v24 = v13;
    v14 = v9;
    v25 = v14;
    v15 = v11;
    v26 = v15;
    [v12 enumerateKeysAndObjectsUsingBlock:v23];
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    [v14 count];
    v17 = _PASQMarksSeparatedByCommas();
    v18 = [v16 initWithFormat:@" DELETE FROM     %@ WHERE     trisql_recordId IN (%@);", v13, v17];

    v19 = [v15 db];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__TRISQLiteCKDatabase__deleteRecordsWithRecordIds_recordType_txn___block_invoke_3;
    v21[3] = &unk_279DDF860;
    v22 = v14;
    [v19 prepAndRunQuery:v18 onPrep:v21 onRow:0 onError:0];
  }
}

void __66__TRISQLiteCKDatabase__deleteRecordsWithRecordIds_recordType_txn___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 firstObject];
  if (v6 == objc_opt_class())
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = *(a1 + 32);
    [*(a1 + 40) count];
    v9 = _PASQMarksSeparatedByCommas();
    v10 = [v7 initWithFormat:@" DELETE FROM      %@_%@ WHERE     recordId IN (%@);", v8, v5, v9];

    v11 = [*(a1 + 48) db];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__TRISQLiteCKDatabase__deleteRecordsWithRecordIds_recordType_txn___block_invoke_2;
    v12[3] = &unk_279DDF860;
    v13 = *(a1 + 40);
    [v11 prepAndRunQuery:v10 onPrep:v12 onRow:0 onError:0];
  }
}

void __66__TRISQLiteCKDatabase__deleteRecordsWithRecordIds_recordType_txn___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      v5 = [*(a1 + 32) objectAtIndexedSubscript:?];
      v6 = [v5 recordName];
      [v8 bindParam:v4 toNSString:v6];

      v7 = [*(a1 + 32) count];
      v3 = v4;
    }

    while (v7 > v4);
  }
}

void __66__TRISQLiteCKDatabase__deleteRecordsWithRecordIds_recordType_txn___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      v5 = [*(a1 + 32) objectAtIndexedSubscript:?];
      v6 = [v5 recordName];
      [v8 bindParam:v4 toNSString:v6];

      v7 = [*(a1 + 32) count];
      v3 = v4;
    }

    while (v7 > v4);
  }
}

- (BOOL)_upsertRecord:(id)a3 txn:(id)a4 error:(id *)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v62 = a4;
  v67 = v6;
  v7 = [v6 recordType];
  v66 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v7];

  if (v66)
  {
    v65 = objc_opt_new();
    v64 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v8 = [v6 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v94 objects:v98 count:16];
    if (v9)
    {
      v10 = *v95;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v95 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v94 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v67 objectForKeyedSubscript:v12];
        if (!v14)
        {
          v18 = [MEMORY[0x277CCA890] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1581 description:{@"Invalid parameter not satisfying: %@", @"fieldValue"}];
        }

        v15 = [v66 objectForKeyedSubscript:v12];
        v16 = [v15 firstObject];

        if (!v16)
        {
          break;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v54 = objc_alloc(MEMORY[0x277CCACA8]);
          v55 = objc_opt_class();
          v50 = NSStringFromClass(v55);
          v51 = [v67 recordType];
          v53 = [v54 initWithFormat:@"Can't modify record with unexpected type %@ for field %@ on record type %@.", v50, v12, v51];
          v56 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v53];
          v57 = *a5;
          *a5 = v56;

          goto LABEL_20;
        }

        if (v16 == objc_opt_class())
        {
          v17 = v64;
        }

        else
        {
          v17 = v65;
        }

        [v17 setObject:v14 forKeyedSubscript:v12];

        objc_autoreleasePoolPop(v13);
        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v94 objects:v98 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

      v49 = objc_alloc(MEMORY[0x277CCACA8]);
      v50 = [v67 recordType];
      v51 = [v49 initWithFormat:@"Can't modify record using unknown field %@ for record type %@.", v12, v50];
      v52 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v51];
      v53 = *a5;
      *a5 = v52;
LABEL_20:

      objc_autoreleasePoolPop(v13);
      v43 = 0;
      goto LABEL_21;
    }

LABEL_16:

    v19 = objc_opt_new();
    v20 = objc_opt_new();
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;

    v23 = objc_alloc(MEMORY[0x277CCAB68]);
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v25 = [v67 recordType];
    v26 = objc_msgSend(v24, "initWithFormat:", @" INSERT INTO %@(    trisql_recordId,     modificationDate,     creationDate"), v25;
    v27 = [v23 initWithString:v26];

    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke;
    v92[3] = &unk_279DDF948;
    v28 = v67;
    v93 = v28;
    v29 = MEMORY[0x2743948D0](v92);
    [v19 addObject:v29];

    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_2;
    v91[3] = &__block_descriptor_40_e32_v20__0___PASSqliteStatement_8i16l;
    v91[4] = v22;
    v30 = MEMORY[0x2743948D0](v91);
    [v19 addObject:v30];

    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_3;
    v90[3] = &__block_descriptor_40_e32_v20__0___PASSqliteStatement_8i16l;
    v90[4] = v22;
    v31 = MEMORY[0x2743948D0](v90);
    [v19 addObject:v31];

    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_4;
    v85[3] = &unk_279DDFA38;
    v32 = v27;
    v86 = v32;
    v33 = v19;
    v87 = v33;
    v88 = self;
    v34 = v28;
    v89 = v34;
    [v65 enumerateKeysAndObjectsUsingBlock:v85];
    [v65 count];
    v35 = _PASQMarksSeparatedByCommas();
    [v32 appendFormat:@" VALUES (%@) ON CONFLICT (trisql_recordId) DO "], v35);

    v36 = objc_opt_new();
    [v36 addObject:@"modificationDate = ?"];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_6;
    v84[3] = &__block_descriptor_40_e32_v20__0___PASSqliteStatement_8i16l;
    v84[4] = v22;
    v37 = MEMORY[0x2743948D0](v84);
    [v33 addObject:v37];

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_7;
    v79[3] = &unk_279DDFA38;
    v80 = v36;
    v38 = v33;
    v81 = v38;
    v82 = self;
    v39 = v34;
    v83 = v39;
    v40 = v36;
    [v65 enumerateKeysAndObjectsUsingBlock:v79];
    [v32 appendString:@"UPDATE SET "];
    v41 = [v40 componentsJoinedByString:{@", "}];
    [v32 appendString:v41];

    [v32 appendString:@";"];
    v42 = [v62 db];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_9;
    v77[3] = &unk_279DDF860;
    v8 = v38;
    v78 = v8;
    [v42 prepAndRunQuery:v32 onPrep:v77 onRow:0 onError:0];

    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 1;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_10;
    v68[3] = &unk_279DDFA60;
    v68[4] = self;
    v69 = v39;
    v71 = &v73;
    v72 = a5;
    v70 = v62;
    [v64 enumerateKeysAndObjectsUsingBlock:v68];
    v43 = *(v74 + 24);

    _Block_object_dispose(&v73, 8);
LABEL_21:
  }

  else
  {
    v44 = objc_alloc(MEMORY[0x277CCACA8]);
    v45 = [v6 recordType];
    v46 = [v44 initWithFormat:@"Can't modify record with unknown record type: %@", v45];
    v47 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v46];
    v48 = *a5;
    *a5 = v47;

    v43 = 0;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v43 & 1;
}

void __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 recordID];
  v6 = [v7 recordName];
  [v5 bindParam:a3 toNSString:v6];
}

void __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) appendFormat:@", %@", a2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_5;
  v10[3] = &unk_279DDFA10;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v10[4] = *(a1 + 48);
  v11 = v5;
  v12 = v7;
  v8 = v5;
  v9 = MEMORY[0x2743948D0](v10);
  [v6 addObject:v9];
}

void __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_5(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2;
  v8 = [v6 recordID];
  [v4 _bindParam:a3 toScalarValue:v5 forStatement:v7 recordId:v8];
}

void __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_7(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = MEMORY[0x277CCACA8];
  v8 = a2;
  v9 = [[v7 alloc] initWithFormat:@"%@ = ?", v8];

  [v6 addObject:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_8;
  v14[3] = &unk_279DDFA10;
  v10 = a1[5];
  v11 = a1[7];
  v14[4] = a1[6];
  v15 = v5;
  v16 = v11;
  v12 = v5;
  v13 = MEMORY[0x2743948D0](v14);
  [v10 addObject:v13];
}

void __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_8(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2;
  v8 = [v6 recordID];
  [v4 _bindParam:a3 toScalarValue:v5 forStatement:v7 recordId:v8];
}

void __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_9(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v11 + 1) + 8 * i) + 16))(*(*(&v11 + 1) + 8 * i));
        ++v8;
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __47__TRISQLiteCKDatabase__upsertRecord_txn_error___block_invoke_10(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a3;
  v10 = a2;
  v11 = [v8 recordType];
  v12 = [*(a1 + 40) recordID];
  LOBYTE(v7) = [v7 _replaceArrayFieldWithKey:v10 recordType:v11 recordId:v12 values:v9 txn:*(a1 + 48) error:*(a1 + 64)];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (id)_filenameForLocallyCopiedAsset:(id)a3 forRecordId:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [v8 assetContent];
  if (v11)
  {
    goto LABEL_2;
  }

  v29 = [v8 fileURL];

  if (!v29)
  {
    v33 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:@"CKAsset is missing a fileURL."];
    v34 = *a5;
    *a5 = v33;

LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

  v30 = objc_alloc(MEMORY[0x277CBEA90]);
  v31 = [v8 fileURL];
  v43 = 0;
  v11 = [v30 initWithContentsOfURL:v31 options:1 error:&v43];
  v32 = v43;

  if (!v11)
  {
    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to read CKAsset file content: %@", v32];
    v36 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v35];
    v37 = *a5;
    *a5 = v36;

    goto LABEL_15;
  }

LABEL_2:
  v40 = v10;
  assetDir = self->_assetDir;
  v13 = [v9 recordName];
  v14 = [(NSString *)assetDir stringByAppendingPathComponent:v13];

  v15 = objc_opt_new();
  v16 = [v15 UUIDString];

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  v18 = [v17 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v42];
  v19 = v42;

  if ((v18 & 1) == 0)
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = v19;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to create directory for asset: %{public}@", buf, 0xCu);
    }
  }

  v21 = [v14 stringByAppendingPathComponent:v16];
  v41 = 0;
  v22 = [v11 writeToFile:v21 options:0 error:&v41];
  v23 = v41;
  v24 = v23;
  if (v22)
  {

    v25 = v16;
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to save CKAsset to database storage: %@", v23];
    v27 = [(TRISQLiteCKDatabase *)self _errorWithCode:1 message:v26];
    v28 = *a5;
    *a5 = v27;

    v25 = 0;
  }

  v10 = v40;

LABEL_16:
  objc_autoreleasePoolPop(v10);

  v38 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_assetForLocallyStoredAssetWithFilename:(id)a3 forRecordId:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  context = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CBEBC0];
  assetDir = self->_assetDir;
  v11 = [v8 recordName];
  v12 = [(NSString *)assetDir stringByAppendingPathComponent:v11];
  v13 = [v9 fileURLWithPath:v12 isDirectory:1];

  v14 = MEMORY[0x277CBEBC0];
  assetCacheDir = self->_assetCacheDir;
  v16 = [v8 recordName];
  v17 = [(NSString *)assetCacheDir stringByAppendingPathComponent:v16];
  v18 = [v14 fileURLWithPath:v17 isDirectory:1];

  v19 = [MEMORY[0x277CCAA00] defaultManager];
  [v19 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:0];

  v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 relativeToURL:v13];
  v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 relativeToURL:v18];
  v22 = [MEMORY[0x277CCAA00] defaultManager];
  [v22 removeItemAtURL:v21 error:0];

  v23 = [MEMORY[0x277CCAA00] defaultManager];
  v33 = 0;
  v24 = [v23 copyItemAtURL:v20 toURL:v21 error:&v33];
  v25 = v33;

  if (v24)
  {
    v26 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v21];
  }

  else
  {
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to copy asset into cache: %@", v25];
    v28 = [(TRISQLiteCKDatabase *)self _errorWithCode:1 message:v27];
    v29 = *a5;
    *a5 = v28;

    v26 = 0;
  }

  objc_autoreleasePoolPop(context);

  return v26;
}

- (BOOL)_replaceArrayFieldWithKey:(id)a3 recordType:(id)a4 recordId:(id)a5 values:(id)a6 txn:(id)a7 error:(id *)a8
{
  v87 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v66 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:v16];
  v20 = v19;
  if (!v19)
  {
    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Can't modify record with unknown record type: %@", v16];
    v37 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v36];
    v38 = *a8;
    *a8 = v37;

    v39 = 0;
    goto LABEL_29;
  }

  v65 = v18;
  v62 = v16;
  v60 = v19;
  v21 = [v19 objectForKeyedSubscript:v15];
  v22 = [v21 firstObject];
  if (v22 != objc_opt_class() || [v21 count] <= 1)
  {
    v57 = [MEMORY[0x277CCA890] currentHandler];
    [v57 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1797 description:{@"Expected array type for %@", v15}];
  }

  v58 = a2;
  v59 = v21;
  v63 = v15;
  v23 = [v21 objectAtIndexedSubscript:1];
  v24 = objc_opt_new();
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v61 = v17;
  v25 = v17;
  v26 = [v25 countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v83;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v83 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v82 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v40 = objc_alloc(MEMORY[0x277CCACA8]);
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v16 = v62;
          v15 = v63;
          v43 = [v40 initWithFormat:@"Can't modify record of type %@ with unexpected contained type %@ for array field %@.", v62, v42, v63];
          v44 = [(TRISQLiteCKDatabase *)self _errorWithCode:12 message:v43];
          v45 = *a8;
          *a8 = v44;

          v39 = 0;
          v17 = v61;
          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [(TRISQLiteCKDatabase *)self _filenameForLocallyCopiedAsset:v30 forRecordId:v66 error:a8];
          if (!v31)
          {
            v39 = 0;
            v16 = v62;
            v15 = v63;
            v17 = v61;
            goto LABEL_28;
          }

          v32 = v31;
          [v24 addObject:v31];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v82 objects:v86 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  if (v23 == objc_opt_class())
  {
    v35 = &__block_literal_global_2;
    v16 = v62;
    v15 = v63;
  }

  else
  {
    v16 = v62;
    v15 = v63;
    if (v23 != objc_opt_class())
    {
      v17 = v61;
      if (v23 == objc_opt_class())
      {
        v81[0] = 0;
        v81[1] = v81;
        v81[2] = 0x2020000000;
        v81[3] = 0;
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_3;
        v78[3] = &unk_279DDFAA8;
        v79 = v24;
        v80 = v81;
        v35 = MEMORY[0x2743948D0](v78);

        _Block_object_dispose(v81, 8);
      }

      else if (v23 == objc_opt_class())
      {
        v35 = &__block_literal_global_477;
      }

      else
      {
        v33 = [MEMORY[0x277CCA890] currentHandler];
        v34 = NSStringFromClass(v23);
        [v33 handleFailureInMethod:v58 object:self file:@"TRISQLiteCKDatabase.m" lineNumber:1846 description:{@"No support for binding array contained type %@", v34}];

        v35 = 0;
      }

      goto LABEL_26;
    }

    v35 = &__block_literal_global_475;
  }

  v17 = v61;
LABEL_26:
  v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" DELETE FROM     %@_%@ WHERE     recordId = :record_id;", v16, v15];
  v47 = [v65 db];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_5;
  v76[3] = &unk_279DDF860;
  v48 = v66;
  v77 = v48;
  [v47 prepAndRunQuery:v46 onPrep:v76 onRow:0 onError:0];

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_6;
  v70[3] = &unk_279DDFAF8;
  v49 = v16;
  v71 = v49;
  v50 = v15;
  v72 = v50;
  v51 = v65;
  v73 = v51;
  v52 = v48;
  v74 = v52;
  v75 = v35;
  v64 = v35;
  [v25 enumerateObjectsUsingBlock:v70];
  v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" UPDATE %@ SET     %@ = :count WHERE trisql_recordId = :record_id", v49, v50];
  v54 = [v51 db];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_8;
  v67[3] = &unk_279DDFB20;
  v68 = v25;
  v69 = v52;
  [v54 prepAndRunQuery:v53 onPrep:v67 onRow:0 onError:0];

  v39 = 1;
  v42 = v71;
  v25 = v64;
LABEL_27:

LABEL_28:
  v20 = v60;

  v18 = v65;
LABEL_29:

  v55 = *MEMORY[0x277D85DE8];
  return v39;
}

void __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  number = a3;
  v4 = a2;
  if (CFNumberIsFloatType(number))
  {
    [(__CFNumber *)number doubleValue];
    [v4 bindNamedParam:":value" toDouble:?];
  }

  else
  {
    [v4 bindNamedParam:":value" toInt64:{-[__CFNumber longLongValue](number, "longLongValue")}];
  }
}

void __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = a2;
  v6 = [v3 objectAtIndexedSubscript:v4];
  [v5 bindNamedParam:":value" toNSString:v6];

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordName];
  [v3 bindNamedParam:":record_id" toNSString:v4];
}

void __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" INSERT INTO %@_%@(    recordId, idx, value) VALUES(    :record_id, :index, :value);", *(a1 + 32), *(a1 + 40)];
  v7 = [*(a1 + 48) db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_7;
  v10[3] = &unk_279DDFAD0;
  v11 = *(a1 + 56);
  v14 = a3;
  v8 = *(a1 + 64);
  v12 = v5;
  v13 = v8;
  v9 = v5;
  [v7 prepAndRunQuery:v6 onPrep:v10 onRow:0 onError:0];
}

void __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_7(void *a1, void *a2)
{
  v3 = a1[4];
  v7 = a2;
  v4 = [v3 recordName];
  [v7 bindNamedParam:":record_id" toNSString:v4];

  if (a1[7] >= 0x7FFFFFFFFFFFFFFFuLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = a1[7];
  }

  [v7 bindNamedParam:":index" toInt64:v5];
  v6 = a1[5];
  (*(a1[6] + 16))();
}

void __86__TRISQLiteCKDatabase__replaceArrayFieldWithKey_recordType_recordId_values_txn_error___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 count];
  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
  }

  [v4 bindNamedParam:":count" toInt64:v6];
  v7 = [*(a1 + 40) recordName];
  [v4 bindNamedParam:":record_id" toNSString:v7];
}

- (id)_allRecordTypes
{
  if (qword_281597660 != -1)
  {
    dispatch_once(&qword_281597660, &__block_literal_global_494);
  }

  v3 = qword_281597658;

  return v3;
}

void __38__TRISQLiteCKDatabase__allRecordTypes__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = *MEMORY[0x277D739A8];
  v4 = [v2 initWithObjects:{*MEMORY[0x277D738A0], *MEMORY[0x277D739A8], *MEMORY[0x277D73840], *MEMORY[0x277D73930], *MEMORY[0x277D73958], *MEMORY[0x277D73848], 0}];
  objc_autoreleasePoolPop(v1);
  v5 = qword_281597658;
  qword_281597658 = v4;

  objc_autoreleasePoolPop(v0);
}

- (id)_valueTypesForFieldsOfRecordType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D738A0]])
  {
    if (qword_281597670 == -1)
    {
      v4 = &qword_281597668;
LABEL_19:
      v5 = *v4;
      goto LABEL_20;
    }

    v4 = &qword_281597668;
    v7 = &__block_literal_global_497;
    goto LABEL_30;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D739A8]])
  {
    if (qword_281597680 == -1)
    {
      v4 = &qword_281597678;
      goto LABEL_19;
    }

    v4 = &qword_281597678;
    v7 = &__block_literal_global_504;
LABEL_30:
    dispatch_once(v4 + 1, v7);
    goto LABEL_19;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D73840]])
  {
    if (qword_281597690 == -1)
    {
      v4 = &qword_281597688;
      goto LABEL_19;
    }

    v4 = &qword_281597688;
    v7 = &__block_literal_global_507;
    goto LABEL_30;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D73930]])
  {
    if (qword_2815976A0 == -1)
    {
      v4 = &qword_281597698;
      goto LABEL_19;
    }

    v4 = &qword_281597698;
    v7 = &__block_literal_global_510;
    goto LABEL_30;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D73958]])
  {
    if (qword_2815976B0 == -1)
    {
      v4 = &qword_2815976A8;
      goto LABEL_19;
    }

    v4 = &qword_2815976A8;
    v7 = &__block_literal_global_513;
    goto LABEL_30;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D73848]])
  {
    if (qword_2815976C0 == -1)
    {
      v4 = &qword_2815976B8;
      goto LABEL_19;
    }

    v4 = &qword_2815976B8;
    v7 = &__block_literal_global_516;
    goto LABEL_30;
  }

  v5 = 0;
LABEL_20:

  return v5;
}

void __56__TRISQLiteCKDatabase__valueTypesForFieldsOfRecordType___block_invoke()
{
  v43[19] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v42[0] = @"modificationDate";
  v41 = objc_opt_class();
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v43[0] = v21;
  v42[1] = @"creationDate";
  v40 = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v43[1] = v20;
  v42[2] = *MEMORY[0x277D738A8];
  v39 = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v43[2] = v19;
  v42[3] = *MEMORY[0x277D738E0];
  v38 = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v43[3] = v18;
  v42[4] = *MEMORY[0x277D738B8];
  v37 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v43[4] = v17;
  v42[5] = *MEMORY[0x277D738B0];
  v36 = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v43[5] = v16;
  v42[6] = *MEMORY[0x277D738D0];
  v35 = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v43[6] = v15;
  v42[7] = *MEMORY[0x277D738D8];
  v34 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v43[7] = v14;
  v42[8] = *MEMORY[0x277D73928];
  v33 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v43[8] = v13;
  v42[9] = *MEMORY[0x277D738F0];
  v32 = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v43[9] = v12;
  v42[10] = *MEMORY[0x277D738F8];
  v31 = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v43[10] = v0;
  v42[11] = *MEMORY[0x277D738E8];
  v30 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v43[11] = v1;
  v42[12] = *MEMORY[0x277D73908];
  v29 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v43[12] = v2;
  v42[13] = *MEMORY[0x277D738C0];
  v28 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v43[13] = v3;
  v42[14] = *MEMORY[0x277D738C8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v43[14] = v4;
  v42[15] = *MEMORY[0x277D73910];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v43[15] = v5;
  v42[16] = *MEMORY[0x277D73920];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v43[16] = v6;
  v42[17] = *MEMORY[0x277D73918];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v43[17] = v7;
  v42[18] = *MEMORY[0x277D73900];
  v23 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v43[18] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:19];
  v10 = qword_281597668;
  qword_281597668 = v9;

  objc_autoreleasePoolPop(context);
  v11 = *MEMORY[0x277D85DE8];
}

void __56__TRISQLiteCKDatabase__valueTypesForFieldsOfRecordType___block_invoke_2()
{
  v21[8] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v20[0] = @"modificationDate";
  v19 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v21[0] = v1;
  v20[1] = @"creationDate";
  v18 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v21[1] = v2;
  v20[2] = *MEMORY[0x277D739D8];
  v17 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v21[2] = v3;
  v20[3] = *MEMORY[0x277D739C8];
  v16 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v21[3] = v4;
  v20[4] = *MEMORY[0x277D739D0];
  v15 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v21[4] = v5;
  v20[5] = *MEMORY[0x277D739C0];
  v14 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v21[5] = v6;
  v20[6] = *MEMORY[0x277D739B8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v21[6] = v7;
  v20[7] = *MEMORY[0x277D739B0];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v21[7] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:{8, v12[0]}];
  v10 = qword_281597678;
  qword_281597678 = v9;

  objc_autoreleasePoolPop(v0);
  v11 = *MEMORY[0x277D85DE8];
}

void __56__TRISQLiteCKDatabase__valueTypesForFieldsOfRecordType___block_invoke_3()
{
  v17[6] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v16[0] = @"modificationDate";
  v15 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v17[0] = v1;
  v16[1] = @"creationDate";
  v14 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v17[1] = v2;
  v16[2] = *MEMORY[0x277D73888];
  v13 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v17[2] = v3;
  v16[3] = *MEMORY[0x277D73880];
  v12 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v17[3] = v4;
  v16[4] = *MEMORY[0x277D73890];
  v11 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v17[4] = v5;
  v16[5] = *MEMORY[0x277D73898];
  v10 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v17[5] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];
  v8 = qword_281597688;
  qword_281597688 = v7;

  objc_autoreleasePoolPop(v0);
  v9 = *MEMORY[0x277D85DE8];
}

void __56__TRISQLiteCKDatabase__valueTypesForFieldsOfRecordType___block_invoke_4()
{
  v17[6] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v16[0] = @"modificationDate";
  v15 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v17[0] = v1;
  v16[1] = @"creationDate";
  v14 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v17[1] = v2;
  v16[2] = *MEMORY[0x277D73948];
  v13 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v17[2] = v3;
  v16[3] = *MEMORY[0x277D73940];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v17[3] = v4;
  v16[4] = *MEMORY[0x277D73938];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v17[4] = v5;
  v16[5] = *MEMORY[0x277D73950];
  v10 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v17[5] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];
  v8 = qword_281597698;
  qword_281597698 = v7;

  objc_autoreleasePoolPop(v0);
  v9 = *MEMORY[0x277D85DE8];
}

void __56__TRISQLiteCKDatabase__valueTypesForFieldsOfRecordType___block_invoke_5()
{
  v27[11] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v26[0] = @"modificationDate";
  v25 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v27[0] = v13;
  v26[1] = @"creationDate";
  v24 = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v27[1] = v12;
  v26[2] = *MEMORY[0x277D73960];
  v23 = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v27[2] = v0;
  v26[3] = *MEMORY[0x277D739A0];
  v22 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v27[3] = v1;
  v26[4] = *MEMORY[0x277D73968];
  v21 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v27[4] = v2;
  v26[5] = *MEMORY[0x277D73990];
  v20 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v27[5] = v3;
  v26[6] = *MEMORY[0x277D73998];
  v19 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v27[6] = v4;
  v26[7] = *MEMORY[0x277D73988];
  v18 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v27[7] = v5;
  v26[8] = *MEMORY[0x277D73978];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v27[8] = v6;
  v26[9] = *MEMORY[0x277D73980];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v27[9] = v7;
  v26[10] = *MEMORY[0x277D73970];
  v15 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v27[10] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:11];
  v10 = qword_2815976A8;
  qword_2815976A8 = v9;

  objc_autoreleasePoolPop(context);
  v11 = *MEMORY[0x277D85DE8];
}

void __56__TRISQLiteCKDatabase__valueTypesForFieldsOfRecordType___block_invoke_6()
{
  v21[8] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v20[0] = @"modificationDate";
  v19 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v21[0] = v1;
  v20[1] = @"creationDate";
  v18 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v21[1] = v2;
  v20[2] = *MEMORY[0x277D73870];
  v17 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v21[2] = v3;
  v20[3] = *MEMORY[0x277D73868];
  v16 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v21[3] = v4;
  v20[4] = *MEMORY[0x277D73858];
  v15 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v21[4] = v5;
  v20[5] = *MEMORY[0x277D73850];
  v14 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v21[5] = v6;
  v20[6] = *MEMORY[0x277D73860];
  v13 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v21[6] = v7;
  v20[7] = *MEMORY[0x277D73878];
  v12 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v21[7] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:8];
  v10 = qword_2815976B8;
  qword_2815976B8 = v9;

  objc_autoreleasePoolPop(v0);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_keysForFieldsOfRecordType:(id)a3
{
  v3 = [(TRISQLiteCKDatabase *)self _valueTypesForFieldsOfRecordType:a3];
  v4 = [v3 allKeys];
  v5 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_519];

  return v5;
}

- (id)_errorWithCode:(int64_t)a3 message:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = *MEMORY[0x277CBBF50];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [v7 initWithDomain:v8 code:a3 userInfo:v9];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_createTableForRecordType:(id)a3 scalarFields:(id)a4
{
  v5 = MEMORY[0x277CCAB68];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithFormat:", @" CREATE TABLE %@(    trisql_recordId TEXT PRIMARY KEY,     modificationDate REAL NOT NULL,     creationDate REAL NOT NULL"), v7;

  v10 = [v8 initWithString:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__TRISQLiteCKDatabase__createTableForRecordType_scalarFields___block_invoke;
  v13[3] = &unk_279DDF658;
  v11 = v10;
  v14 = v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];

  [v11 appendString:@";"]);

  return v11;
}

- (id)_createTableForArrayFieldWithKey:(id)a3 attachedToRecordType:(id)a4 sqliteContainedType:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithFormat:@" CREATE TABLE %@_%@(     rowid INTEGER PRIMARY KEY AUTOINCREMENT, recordId TEXT NOT NULL, idx INTEGER NOT NULL, value %@ NOT NULL, FOREIGN KEY (recordId) REFERENCES %@ (trisql_recordId), UNIQUE (recordId, idx));", v9, v10, v8, v9];

  return v11;
}

- (id)migrations
{
  v88[3] = *MEMORY[0x277D85DE8];
  v87[0] = &unk_287FC45D0;
  v3 = *MEMORY[0x277D738A0];
  v4 = *MEMORY[0x277D738E0];
  v81[0] = *MEMORY[0x277D738A8];
  v81[1] = v4;
  v85[0] = @"REAL";
  v85[1] = @"TEXT";
  v5 = *MEMORY[0x277D738B0];
  v81[2] = *MEMORY[0x277D738B8];
  v81[3] = v5;
  v85[2] = @"INTEGER";
  v85[3] = @"INTEGER";
  v6 = *MEMORY[0x277D738D8];
  v81[4] = *MEMORY[0x277D738D0];
  v81[5] = v6;
  v85[4] = @"BLOB";
  v85[5] = @"TEXT";
  v7 = *MEMORY[0x277D738F0];
  v81[6] = *MEMORY[0x277D73928];
  v81[7] = v7;
  v85[6] = @"BLOB";
  v85[7] = @"INTEGER";
  v8 = *MEMORY[0x277D738E8];
  v81[8] = *MEMORY[0x277D738F8];
  v81[9] = v8;
  v85[8] = @"INTEGER";
  v85[9] = @"INTEGER";
  v9 = *MEMORY[0x277D738C0];
  v81[10] = *MEMORY[0x277D73908];
  v81[11] = v9;
  v85[10] = @"INTEGER";
  v85[11] = @"INTEGER";
  v10 = *MEMORY[0x277D738C8];
  v81[12] = *MEMORY[0x277D73900];
  v81[13] = v10;
  v85[12] = @"INTEGER";
  v85[13] = @"INTEGER";
  v12 = *MEMORY[0x277D73920];
  v82 = *MEMORY[0x277D73910];
  v11 = v82;
  v83 = v12;
  v85[14] = @"INTEGER";
  v85[15] = @"INTEGER";
  v84 = *MEMORY[0x277D73918];
  v13 = v84;
  v85[16] = @"INTEGER";
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v81 count:17];
  v62 = [(TRISQLiteCKDatabase *)self _createTableForRecordType:v3 scalarFields:v63];
  v86[0] = v62;
  v61 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v10 attachedToRecordType:v3 sqliteContainedType:@"INTEGER"];
  v86[1] = v61;
  v60 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v11 attachedToRecordType:v3 sqliteContainedType:@"INTEGER"];
  v86[2] = v60;
  v59 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v12 attachedToRecordType:v3 sqliteContainedType:@"INTEGER"];
  v86[3] = v59;
  v58 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v13 attachedToRecordType:v3 sqliteContainedType:@"TEXT"];
  v86[4] = v58;
  v14 = *MEMORY[0x277D739A8];
  v15 = *MEMORY[0x277D739C8];
  v77[0] = *MEMORY[0x277D739D8];
  v77[1] = v15;
  v80[0] = @"TEXT";
  v80[1] = @"BLOB";
  v16 = *MEMORY[0x277D739C0];
  v77[2] = *MEMORY[0x277D739D0];
  v77[3] = v16;
  v80[2] = @"TEXT";
  v80[3] = @"BLOB";
  v18 = *MEMORY[0x277D739B0];
  v78 = *MEMORY[0x277D739B8];
  v17 = v78;
  v79 = v18;
  v80[4] = @"INTEGER";
  v80[5] = @"INTEGER";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v77 count:6];
  v56 = [(TRISQLiteCKDatabase *)self _createTableForRecordType:v14 scalarFields:v57];
  v86[5] = v56;
  v55 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v17 attachedToRecordType:v14 sqliteContainedType:@"TEXT"];
  v86[6] = v55;
  v54 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v18 attachedToRecordType:v14 sqliteContainedType:@"TEXT"];
  v86[7] = v54;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:8];
  v88[0] = v53;
  v87[1] = &unk_287FC45E8;
  v19 = *MEMORY[0x277D73840];
  v20 = *MEMORY[0x277D73880];
  v74[0] = *MEMORY[0x277D73888];
  v74[1] = v20;
  v75[0] = @"TEXT";
  v75[1] = @"TEXT";
  v21 = *MEMORY[0x277D73898];
  v74[2] = *MEMORY[0x277D73890];
  v74[3] = v21;
  v75[2] = @"TEXT";
  v75[3] = @"BLOB";
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:4];
  v51 = [(TRISQLiteCKDatabase *)self _createTableForRecordType:v19 scalarFields:v52];
  v76[0] = v51;
  v22 = *MEMORY[0x277D73930];
  v23 = *MEMORY[0x277D73950];
  v70[0] = *MEMORY[0x277D73948];
  v70[1] = v23;
  v73[0] = @"TEXT";
  v73[1] = @"BLOB";
  v25 = *MEMORY[0x277D73938];
  v71 = *MEMORY[0x277D73940];
  v24 = v71;
  v72 = v25;
  v73[2] = @"INTEGER";
  v73[3] = @"INTEGER";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v70 count:4];
  v49 = [(TRISQLiteCKDatabase *)self _createTableForRecordType:v22 scalarFields:v50];
  v76[1] = v49;
  v48 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v24 attachedToRecordType:v22 sqliteContainedType:@"BLOB"];
  v76[2] = v48;
  v47 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v25 attachedToRecordType:v22 sqliteContainedType:@"TEXT"];
  v76[3] = v47;
  v26 = *MEMORY[0x277D73958];
  v27 = *MEMORY[0x277D739A0];
  v67[0] = *MEMORY[0x277D73960];
  v67[1] = v27;
  v69[0] = @"REAL";
  v69[1] = @"TEXT";
  v28 = *MEMORY[0x277D73990];
  v67[2] = *MEMORY[0x277D73968];
  v67[3] = v28;
  v69[2] = @"INTEGER";
  v69[3] = @"BLOB";
  v29 = *MEMORY[0x277D73988];
  v67[4] = *MEMORY[0x277D73998];
  v67[5] = v29;
  v69[4] = @"TEXT";
  v69[5] = @"BLOB";
  v30 = *MEMORY[0x277D73978];
  v67[6] = *MEMORY[0x277D73970];
  v67[7] = v30;
  v69[6] = @"INTEGER";
  v69[7] = @"INTEGER";
  v68 = *MEMORY[0x277D73980];
  v31 = v68;
  v69[8] = @"INTEGER";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v67 count:9];
  v33 = [(TRISQLiteCKDatabase *)self _createTableForRecordType:v26 scalarFields:v32];
  v76[4] = v33;
  v34 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v30 attachedToRecordType:v26 sqliteContainedType:@"TEXT"];
  v76[5] = v34;
  v35 = [(TRISQLiteCKDatabase *)self _createTableForArrayFieldWithKey:v31 attachedToRecordType:v26 sqliteContainedType:@"INTEGER"];
  v76[6] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:7];
  v88[1] = v36;
  v87[2] = &unk_287FC4600;
  v37 = *MEMORY[0x277D73848];
  v38 = *MEMORY[0x277D73868];
  v64[0] = *MEMORY[0x277D73870];
  v64[1] = v38;
  v65[0] = @"TEXT";
  v65[1] = @"TEXT";
  v39 = *MEMORY[0x277D73850];
  v64[2] = *MEMORY[0x277D73858];
  v64[3] = v39;
  v65[2] = @"TEXT";
  v65[3] = @"TEXT";
  v40 = *MEMORY[0x277D73878];
  v64[4] = *MEMORY[0x277D73860];
  v64[5] = v40;
  v65[4] = @"INTEGER";
  v65[5] = @"BLOB";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:6];
  v42 = [(TRISQLiteCKDatabase *)self _createTableForRecordType:v37 scalarFields:v41];
  v66 = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
  v88[2] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return MEMORY[0x277CBEBF8];
}

- (CKContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end