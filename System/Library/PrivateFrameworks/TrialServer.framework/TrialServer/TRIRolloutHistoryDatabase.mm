@interface TRIRolloutHistoryDatabase
- (BOOL)_enumerateRecordsMatchingWhereClause:(id)clause bind:(id)bind block:(id)block;
- (BOOL)addRecord:(id)record;
- (BOOL)enumerateRecordsNewerThanDate:(id)date block:(id)block;
- (BOOL)expireRecordsOlderThanDate:(id)date deletedCount:(unint64_t *)count;
- (TRIRolloutHistoryDatabase)initWithDatabase:(id)database;
- (id)getAllAllocationStatusesForRolloutId:(id)id rampId:(id)rampId deploymentId:(int)deploymentId factorPackSetId:(id)setId;
@end

@implementation TRIRolloutHistoryDatabase

- (TRIRolloutHistoryDatabase)initWithDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutHistoryDatabase.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v11.receiver = self;
  v11.super_class = TRIRolloutHistoryDatabase;
  v7 = [(TRIRolloutHistoryDatabase *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, database);
  }

  return v8;
}

- (BOOL)addRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutHistoryDatabase.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__TRIRolloutHistoryDatabase_addRecord___block_invoke;
  v10[3] = &unk_279DE1758;
  v11 = @" INSERT INTO rolloutHistory(    eventLogTime,     eventType,     rolloutId,     rampId,     deploymentId,     factorPackSetId) VALUES(    :event_log_time,     :event_type,     :rollout_id,     :ramp_id,     :dep_id,     :fps_id);";
  v6 = recordCopy;
  v12 = v6;
  selfCopy = self;
  v14 = &v15;
  [(TRIRolloutHistoryDatabase *)self writeTransactionWithFailableBlock:v10];
  v7 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v7;
}

uint64_t __39__TRIRolloutHistoryDatabase_addRecord___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 db];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__TRIRolloutHistoryDatabase_addRecord___block_invoke_2;
  v31[3] = &unk_279DDF860;
  v5 = *(a1 + 32);
  v32 = *(a1 + 40);
  v6 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
  LOBYTE(v5) = [v4 prepAndRunQuery:v5 onPrep:v31 onRow:0 onError:v6];

  if (v5)
  {
    v7 = [v3 db];
    v25 = [v7 lastInsertRowId];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [*(a1 + 40) namespaces];
    v8 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v24 = *v28;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v27 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = v3;
          v14 = [v3 db];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __39__TRIRolloutHistoryDatabase_addRecord___block_invoke_3;
          v26[3] = &unk_279DE1538;
          v26[4] = v11;
          v26[5] = v25;
          v15 = a1;
          v16 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
          v17 = [v14 prepAndRunQuery:@" INSERT INTO rolloutHistoryNamespaces(    rolloutHistory_rowid onPrep:name) VALUES(    :rollout_rowid onRow::name);" onError:{v26, 0, v16}];

          if ((v17 & 1) == 0)
          {
            v20 = TRILogCategory_Server();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 134218243;
              v34 = v25;
              v35 = 2113;
              v36 = v11;
              _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_INFO, "TRIRolloutHistoryDatabase failed to insert rowId: %lld, namespace name:%{private}@", buf, 0x16u);
            }

            v19 = *MEMORY[0x277D42678];
            objc_autoreleasePoolPop(v12);

            v3 = v13;
            goto LABEL_16;
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
          v3 = v13;
          a1 = v15;
        }

        while (v9 != v10);
        v9 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v18 = MEMORY[0x277D42670];
  }

  else
  {
    v18 = MEMORY[0x277D42678];
  }

  v19 = *v18;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void __39__TRIRolloutHistoryDatabase_addRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 eventLogTime];
  [v5 timeIntervalSince1970];
  [v4 bindNamedParam:":event_log_time" toDouble:?];

  [v4 bindNamedParam:":event_type" toInt64:{objc_msgSend(*(a1 + 32), "eventType")}];
  v6 = [*(a1 + 32) rolloutId];
  [v4 bindNamedParam:":rollout_id" toNSString:v6];

  v7 = [*(a1 + 32) rampId];
  [v4 bindNamedParam:":ramp_id" toNSString:v7];

  [v4 bindNamedParam:":dep_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
  v8 = [*(a1 + 32) factorPackSetId];
  [v4 bindNamedParam:":fps_id" toNSString:v8];
}

void __39__TRIRolloutHistoryDatabase_addRecord___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":rollout_rowid" toInt64:v3];
  [v4 bindNamedParam:":name" toNSString:*(a1 + 32)];
}

- (BOOL)_enumerateRecordsMatchingWhereClause:(id)clause bind:(id)bind block:(id)block
{
  clauseCopy = clause;
  bindCopy = bind;
  blockCopy = block;
  v12 = blockCopy;
  if ((clauseCopy == 0) != (bindCopy == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutHistoryDatabase.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"(whereClause == nil) == (bind == nil)"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIRolloutHistoryDatabase.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  context = objc_autoreleasePoolPush();
  v13 = objc_opt_new();
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__24;
  v63 = __Block_byref_object_dispose__24;
  v64 = 0;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __77__TRIRolloutHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke;
  v58[3] = &unk_279DE1DC0;
  v58[4] = &v59;
  v14 = MEMORY[0x2743948D0](v58);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __77__TRIRolloutHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_2;
  v54[3] = &unk_279DE1848;
  v57 = &v59;
  v15 = v13;
  v55 = v15;
  v16 = v12;
  v56 = v16;
  v17 = MEMORY[0x2743948D0](v54);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __77__TRIRolloutHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_3;
  v52[3] = &unk_279DDEF30;
  v53 = v15;
  v18 = v15;
  v19 = MEMORY[0x2743948D0](v52);

  _Block_object_dispose(&v59, 8);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  LOBYTE(v62) = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0x8000000000000000;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __77__TRIRolloutHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_4;
  v41[3] = &unk_279DE1898;
  v45 = &v48;
  v20 = v17;
  v46 = &v59;
  v47 = a2;
  v41[4] = self;
  v42 = v20;
  v21 = v14;
  v43 = v21;
  v22 = v19;
  v44 = v22;
  v23 = MEMORY[0x2743948D0](v41);

  _Block_object_dispose(&v48, 8);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  LOBYTE(v51) = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __77__TRIRolloutHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_5;
  v33[3] = &unk_279DE18C0;
  v24 = clauseCopy;
  v34 = v24;
  v25 = bindCopy;
  v36 = v25;
  v26 = v23;
  v37 = v26;
  selfCopy = self;
  v27 = v20;
  v38 = v27;
  v39 = &v59;
  v40 = &v48;
  [(TRIRolloutHistoryDatabase *)self readTransactionWithFailableBlock:v33];
  v28 = *(v49 + 24);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v59, 8);

  objc_autoreleasePoolPop(context);
  return v28;
}

uint64_t __77__TRIRolloutHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    v5 = [*(a1 + 32) copy];
    v6 = [v3 copyWithReplacementNamespaces:v5];

    if ((*a2 & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();
    }

    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  v9 = *(a1 + 32);

  return [v9 removeAllObjects];
}

uint64_t __77__TRIRolloutHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"rowid" table:"rolloutHistory"];
  if (v4 != *(*(a1[8] + 8) + 24))
  {
    v5 = *(a1[9] + 8);
    (*(a1[5] + 16))();
    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v6 = *MEMORY[0x277D42698];
      goto LABEL_12;
    }

    v7 = [v3 getDoubleAsNSNumberForColumnName:"eventLogTime" table:"rolloutHistory"];
    if (!v7)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:a1[10] object:a1[4] file:@"TRIRolloutHistoryDatabase.m" lineNumber:176 description:@"nil eventLogTime read from NOT NULL column"];
    }

    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v7 doubleValue];
    v9 = [v8 initWithTimeIntervalSince1970:?];

    v10 = [v3 getInt64ForColumnName:"eventType" table:"rolloutHistory"];
    v11 = [v3 getNSStringForColumnName:"rolloutId" table:"rolloutHistory"];
    if (!v11)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a1[10] object:a1[4] file:@"TRIRolloutHistoryDatabase.m" lineNumber:181 description:@"nil rolloutId read from NOT NULL column"];
    }

    v12 = [v3 getNSStringForColumnName:"rampId" table:"rolloutHistory"];
    v13 = [v3 getInt64ForColumnName:"deploymentId" table:"rolloutHistory"];
    v14 = [v3 getNSStringForColumnName:"factorPackSetId" table:"rolloutHistory"];
    v15 = objc_alloc(MEMORY[0x277D737D0]);
    v16 = [v15 initWithEventLogTime:v9 eventType:v10 rolloutId:v11 rampId:v12 factorPackSetId:v14 deploymentId:v13 namespaces:MEMORY[0x277CBEBF8]];
    (*(a1[6] + 16))();
  }

  v17 = [v3 getNSStringForColumnName:"name" table:"rolloutHistoryNamespaces"];
  if (v17)
  {
    (*(a1[7] + 16))();
  }

  *(*(a1[8] + 8) + 24) = v4;
  v6 = *MEMORY[0x277D42690];

LABEL_12:
  return v6;
}

uint64_t __77__TRIRolloutHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_5(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = a1[4];
  if (!v6)
  {
    v6 = &stru_287FA0430;
  }

  v7 = [v5 initWithFormat:@" SELECT * FROM     rolloutHistory AS rh LEFT JOIN     rolloutHistoryNamespaces AS n ON     rh.rowid = n.rolloutHistory_rowid %@ ORDER BY     rh.eventLogTime ASC, n.rowid ASC;", v6];
  v8 = [v4 db];

  v10 = a1[6];
  v9 = a1[7];
  v11 = [*(a1[5] + 8) generalErrorHandlerWithOutError:0];
  LODWORD(v9) = [v8 prepAndRunQuery:v7 onPrep:v10 onRow:v9 onError:v11];

  if (v9)
  {
    v12 = *(a1[9] + 8);
    (*(a1[8] + 16))();
    *(*(a1[10] + 8) + 24) = 1;
    v13 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(a1[10] + 8) + 24) = 0;
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, "TRIRolloutHistoryDatabase failed to enumerate records", buf, 2u);
    }

    v13 = MEMORY[0x277D42678];
  }

  return *v13;
}

- (BOOL)enumerateRecordsNewerThanDate:(id)date block:(id)block
{
  dateCopy = date;
  blockCopy = block;
  v9 = blockCopy;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutHistoryDatabase.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"date"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIRolloutHistoryDatabase.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__TRIRolloutHistoryDatabase_enumerateRecordsNewerThanDate_block___block_invoke;
  v15[3] = &unk_279DDF860;
  v16 = dateCopy;
  v10 = dateCopy;
  v11 = [(TRIRolloutHistoryDatabase *)self _enumerateRecordsMatchingWhereClause:@" WHERE rh.eventLogTime > :threshold" bind:v15 block:v9];

  return v11;
}

void __65__TRIRolloutHistoryDatabase_enumerateRecordsNewerThanDate_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":threshold" toDouble:?];
}

- (id)getAllAllocationStatusesForRolloutId:(id)id rampId:(id)rampId deploymentId:(int)deploymentId factorPackSetId:(id)setId
{
  idCopy = id;
  rampIdCopy = rampId;
  setIdCopy = setId;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutHistoryDatabase.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"rolloutId"}];
  }

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = "rolloutHistory";
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__24;
  v33 = __Block_byref_object_dispose__24;
  v34 = objc_opt_new();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__TRIRolloutHistoryDatabase_getAllAllocationStatusesForRolloutId_rampId_deploymentId_factorPackSetId___block_invoke;
  v20[3] = &unk_279DE1E10;
  v25 = v36;
  v14 = idCopy;
  v21 = v14;
  v15 = rampIdCopy;
  v22 = v15;
  deploymentIdCopy = deploymentId;
  v16 = setIdCopy;
  v26 = v35;
  v27 = &v29;
  v23 = v16;
  selfCopy = self;
  [(TRIRolloutHistoryDatabase *)self readTransactionWithFailableBlock:v20];
  v17 = v30[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);

  return v17;
}

uint64_t __102__TRIRolloutHistoryDatabase_getAllAllocationStatusesForRolloutId_rampId_deploymentId_factorPackSetId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__TRIRolloutHistoryDatabase_getAllAllocationStatusesForRolloutId_rampId_deploymentId_factorPackSetId___block_invoke_2;
  v10[3] = &unk_279DE1DE8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = *(a1 + 88);
  v13 = *(a1 + 48);
  v4 = [*(*(a1 + 56) + 8) generalErrorHandlerWithOutError:{0, MEMORY[0x277D85DD0], 3221225472, __102__TRIRolloutHistoryDatabase_getAllAllocationStatusesForRolloutId_rampId_deploymentId_factorPackSetId___block_invoke_3, &unk_279DE1A48, *(a1 + 72), *(a1 + 80), v10[0], 3221225472, __102__TRIRolloutHistoryDatabase_getAllAllocationStatusesForRolloutId_rampId_deploymentId_factorPackSetId___block_invoke_2, &unk_279DE1DE8}];
  *(*(*(a1 + 64) + 8) + 24) = [v3 prepAndRunQuery:@"SELECT * FROM rolloutHistory WHERE         rolloutId = :rollout_id    AND rampId = :ramp_id    AND deploymentId = :deployment_id    AND factorPackSetId = :factor_pack_set_id ORDER BY rowid DESC" onPrep:v10 onRow:&v9 onError:v4];

  LODWORD(a1) = *(*(*(a1 + 64) + 8) + 24);
  v5 = MEMORY[0x277D42670];
  v6 = MEMORY[0x277D42678];

  if (a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return *v7;
}

void __102__TRIRolloutHistoryDatabase_getAllAllocationStatusesForRolloutId_rampId_deploymentId_factorPackSetId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":rollout_id" toNSString:v3];
  [v4 bindNamedParam:":ramp_id" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":deployment_id" toInt64:*(a1 + 56)];
  [v4 bindNamedParam:":factor_pack_set_id" toNSString:*(a1 + 48)];
}

uint64_t __102__TRIRolloutHistoryDatabase_getAllAllocationStatusesForRolloutId_rampId_deploymentId_factorPackSetId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64ForColumnName:"eventType" table:"rolloutHistory"];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
  [v4 addObject:v5];

  return *MEMORY[0x277D42690];
}

- (BOOL)expireRecordsOlderThanDate:(id)date deletedCount:(unint64_t *)count
{
  dateCopy = date;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutHistoryDatabase.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__TRIRolloutHistoryDatabase_expireRecordsOlderThanDate_deletedCount___block_invoke;
  v12[3] = &unk_279DE1560;
  v12[4] = self;
  v8 = dateCopy;
  v14 = &v16;
  countCopy = count;
  v13 = v8;
  [(TRIRolloutHistoryDatabase *)self writeTransactionWithFailableBlock:v12];
  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __69__TRIRolloutHistoryDatabase_expireRecordsOlderThanDate_deletedCount___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __69__TRIRolloutHistoryDatabase_expireRecordsOlderThanDate_deletedCount___block_invoke_2;
  v28 = &unk_279DDF860;
  v29 = *(a1 + 40);
  v5 = [v4 createTempTableContainingRowsFromQuery:@" SELECT rowid FROM         rolloutHistory WHERE         eventLogTime < :threshold" bind:&v25 namePrefix:@"remove_hist_rowids" transaction:v3];

  if (!v5)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 40) timeIntervalSince1970];
      *buf = 134217984;
      v31 = v19;
      _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_INFO, "TRIRolloutHistoryDatabase: failed to expire records for threshold date: %f", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v6 initWithFormat:@" DELETE FROM     rolloutHistoryNamespaces WHERE     rolloutHistory_rowid IN %@;", v5, v25, v26, v27, v28];
  v8 = [v3 db];
  v9 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
  v10 = [v8 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v9];

  if ((v10 & 1) == 0)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v22 = "TRIRolloutHistoryDatabase: failed to delete row from RolloutHistoryNamespaces";
LABEL_17:
      _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_INFO, v22, buf, 2u);
    }

LABEL_18:

    v20 = *MEMORY[0x277D42678];
    goto LABEL_19;
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" DELETE FROM     rolloutHistory WHERE     rowid IN %@;", v5];
  v11 = [v3 db];
  v12 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
  v13 = [v11 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v12];

  if ((v13 & 1) == 0)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v22 = "RolloutHistoryDatabase: Failed to delete row from rolloutHistory";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v14 = [v3 db];
  v15 = sqlite3_changes([v14 handle]);

  if ([*(*(a1 + 32) + 8) dropTableWithName:v5 transaction:v3])
  {
    v16 = *(a1 + 56);
    if (v16)
    {
      *v16 = v15;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v17 = MEMORY[0x277D42670];
    goto LABEL_12;
  }

LABEL_11:
  v17 = MEMORY[0x277D42678];
LABEL_12:
  v20 = *v17;
LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

void __69__TRIRolloutHistoryDatabase_expireRecordsOlderThanDate_deletedCount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":threshold" toDouble:?];
}

@end