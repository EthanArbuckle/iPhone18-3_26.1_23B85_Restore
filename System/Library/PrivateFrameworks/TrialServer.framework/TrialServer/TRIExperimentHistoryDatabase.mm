@interface TRIExperimentHistoryDatabase
- (BOOL)_enumerateRecordsMatchingWhereClause:(id)a3 bind:(id)a4 block:(id)a5;
- (BOOL)_isValidNextStateForEvent:(id)a3;
- (BOOL)addRecord:(id)a3;
- (BOOL)enumerateRecordsNewerThanDate:(id)a3 matchingDeploymentEnvironments:(id)a4 block:(id)a5;
- (BOOL)expireRecordsOlderThanDate:(id)a3 deletedCount:(unint64_t *)a4;
- (BOOL)storeExperimentEvent:(id)a3 isValidTransition:(BOOL *)a4;
- (TRIExperimentHistoryDatabase)initWithDatabase:(id)a3;
- (id)getAllAllocationStatusesForExperimentId:(id)a3 deploymentId:(int)a4 treatmentId:(id)a5;
- (unsigned)previousExperimentStateForTriple:(id)a3;
@end

@implementation TRIExperimentHistoryDatabase

- (TRIExperimentHistoryDatabase)initWithDatabase:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v11.receiver = self;
  v11.super_class = TRIExperimentHistoryDatabase;
  v7 = [(TRIExperimentHistoryDatabase *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, a3);
  }

  return v8;
}

- (BOOL)addRecord:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__TRIExperimentHistoryDatabase_addRecord___block_invoke;
  v15[3] = &unk_279DE1758;
  v16 = @" INSERT INTO experimentHistory(    eventSecondsFromEpoch,     eventType,     deploymentEnvironment,     experimentId,     deploymentId,     treatmentId,     errorOrDeactivationReason) VALUES(    :timestamp,     :event_type,     :environment,     :exp_id,     :dep_id,     :trt_id,     :reason);";
  v6 = v5;
  v17 = v6;
  v18 = self;
  v19 = &v20;
  [(TRIExperimentHistoryDatabase *)self writeTransactionWithFailableBlock:v15];
  if (*(v21 + 24) == 1)
  {
    v7 = [MEMORY[0x277D73648] internalToExternalStatusMapping];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v6, "eventType")}];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [MEMORY[0x277D73648] notificationNameForDeploymentEnvironment:{objc_msgSend(v6, "deploymentEnvironment")}];
      v11 = v10;
      if (v10)
      {
        notify_post([v10 UTF8String]);
      }
    }
  }

  v12 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v12;
}

uint64_t __42__TRIExperimentHistoryDatabase_addRecord___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 db];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42__TRIExperimentHistoryDatabase_addRecord___block_invoke_2;
  v30[3] = &unk_279DDF860;
  v5 = *(a1 + 32);
  v31 = *(a1 + 40);
  v6 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
  LOBYTE(v5) = [v4 prepAndRunQuery:v5 onPrep:v30 onRow:0 onError:v6];

  if (v5)
  {
    v7 = [v3 db];
    v24 = [v7 lastInsertRowId];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [*(a1 + 40) namespaces];
    v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = v3;
          v15 = [v3 db];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __42__TRIExperimentHistoryDatabase_addRecord___block_invoke_3;
          v25[3] = &unk_279DE1538;
          v25[4] = v12;
          v25[5] = v24;
          v16 = a1;
          v17 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
          v18 = [v15 prepAndRunQuery:@" INSERT INTO experimentHistoryNamespaces(    experimentHistory_rowid onPrep:name onRow:compatibilityVersion) VALUES(    :exp_rowid onError:{:name, :cv);", v25, 0, v17}];

          objc_autoreleasePoolPop(v13);
          if (!v18)
          {
            v20 = *MEMORY[0x277D42678];

            v3 = v14;
            goto LABEL_14;
          }

          ++v11;
          v3 = v14;
          a1 = v16;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v19 = MEMORY[0x277D42670];
  }

  else
  {
    v19 = MEMORY[0x277D42678];
  }

  v20 = *v19;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void __42__TRIExperimentHistoryDatabase_addRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 eventDate];
  [v5 timeIntervalSince1970];
  [v4 bindNamedParam:":timestamp" toDouble:?];

  [v4 bindNamedParam:":event_type" toInt64:{objc_msgSend(*(a1 + 32), "eventType")}];
  [v4 bindNamedParam:":environment" toInt64:{objc_msgSend(*(a1 + 32), "deploymentEnvironment")}];
  v6 = [*(a1 + 32) experimentId];
  [v4 bindNamedParam:":exp_id" toNSString:v6];

  [v4 bindNamedParam:":dep_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
  v7 = [*(a1 + 32) treatmentId];
  [v4 bindNamedParam:":trt_id" toNSString:v7];

  v8 = [*(a1 + 32) errorOrDeactivationReason];
  [v4 bindNamedParam:":reason" toNSString:v8];
}

void __42__TRIExperimentHistoryDatabase_addRecord___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  [v5 bindNamedParam:":exp_rowid" toInt64:v3];
  v4 = [*(a1 + 32) name];
  [v5 bindNamedParam:":name" toNSString:v4];

  [v5 bindNamedParam:":cv" toInt64:{objc_msgSend(*(a1 + 32), "compatibilityVersion")}];
}

- (BOOL)_enumerateRecordsMatchingWhereClause:(id)a3 bind:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if ((v9 == 0) != (v10 == 0))
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"(whereClause == nil) == (bind == nil)"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  context = objc_autoreleasePoolPush();
  v13 = objc_opt_new();
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__20;
  v63 = __Block_byref_object_dispose__20;
  v64 = 0;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __80__TRIExperimentHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke;
  v58[3] = &unk_279DE19F8;
  v58[4] = &v59;
  v14 = MEMORY[0x2743948D0](v58);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __80__TRIExperimentHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_2;
  v54[3] = &unk_279DE1848;
  v57 = &v59;
  v15 = v13;
  v55 = v15;
  v16 = v12;
  v56 = v16;
  v17 = MEMORY[0x2743948D0](v54);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __80__TRIExperimentHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_3;
  v52[3] = &unk_279DE1A20;
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
  v41[2] = __80__TRIExperimentHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_4;
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
  v33[2] = __80__TRIExperimentHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_5;
  v33[3] = &unk_279DE18C0;
  v24 = v9;
  v34 = v24;
  v25 = v10;
  v36 = v25;
  v26 = v23;
  v37 = v26;
  v35 = self;
  v27 = v20;
  v38 = v27;
  v39 = &v59;
  v40 = &v48;
  [(TRIExperimentHistoryDatabase *)self readTransactionWithFailableBlock:v33];
  v28 = *(v49 + 24);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v59, 8);

  objc_autoreleasePoolPop(context);
  return v28;
}

uint64_t __80__TRIExperimentHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_2(uint64_t a1, _BYTE *a2)
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

uint64_t __80__TRIExperimentHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"rowid" table:"experimentHistory"];
  if (v4 != *(*(a1[8] + 8) + 24))
  {
    v5 = *(a1[9] + 8);
    (*(a1[5] + 16))();
    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v6 = *MEMORY[0x277D42698];
      goto LABEL_14;
    }

    v7 = [v3 getDoubleAsNSNumberForColumnName:"eventSecondsFromEpoch" table:"experimentHistory"];
    if (!v7)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      [v22 handleFailureInMethod:a1[10] object:a1[4] file:@"TRIExperimentHistoryDatabase.m" lineNumber:187 description:@"nil eventSecondsFromEpoch read from NOT NULL column"];
    }

    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v7 doubleValue];
    v9 = [v8 initWithTimeIntervalSince1970:?];

    v10 = [v3 getInt64ForColumnName:"eventType" table:"experimentHistory"];
    v11 = [v3 getInt64ForColumnName:"deploymentEnvironment" table:"experimentHistory"];
    v12 = [v3 getNSStringForColumnName:"experimentId" table:"experimentHistory"];
    if (!v12)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:a1[10] object:a1[4] file:@"TRIExperimentHistoryDatabase.m" lineNumber:193 description:@"nil experimentId read from NOT NULL column"];
    }

    v13 = [v3 getInt64ForColumnName:"deploymentId" table:"experimentHistory"];
    v14 = [v3 getNSStringForColumnName:"treatmentId" table:"experimentHistory"];
    if (!v14)
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a1[10] object:a1[4] file:@"TRIExperimentHistoryDatabase.m" lineNumber:196 description:@"nil treatmentId read from NOT NULL column"];
    }

    v15 = [v3 getNSStringForColumnName:"errorOrDeactivationReason" table:"experimentHistory"];
    v16 = objc_alloc(MEMORY[0x277D736C8]);
    v17 = [v16 initWithEventDate:v9 eventType:v10 deploymentEnvironment:v11 experimentId:v12 deploymentId:v13 treatmentId:v14 errorOrDeactivationReason:v15 namespaces:MEMORY[0x277CBEBF8]];
    (*(a1[6] + 16))();
  }

  v18 = [v3 getNSStringForColumnName:"name" table:"experimentHistoryNamespaces"];
  if (v18)
  {
    v19 = [v3 getInt64ForColumnName:"compatibilityVersion" table:"experimentHistoryNamespaces"];
    v20 = [objc_alloc(MEMORY[0x277D73808]) initWithName:v18 compatibilityVersion:v19];
    (*(a1[7] + 16))();
  }

  *(*(a1[8] + 8) + 24) = v4;
  v6 = *MEMORY[0x277D42690];

LABEL_14:
  return v6;
}

uint64_t __80__TRIExperimentHistoryDatabase__enumerateRecordsMatchingWhereClause_bind_block___block_invoke_5(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = a1[4];
  if (!v6)
  {
    v6 = &stru_287FA0430;
  }

  v7 = [v5 initWithFormat:@" SELECT * FROM     experimentHistory AS e LEFT JOIN     experimentHistoryNamespaces AS n ON     e.rowid = n.experimentHistory_rowid %@ ORDER BY     e.eventSecondsFromEpoch ASC, n.rowid ASC;", v6];
  v8 = [v4 db];

  v10 = a1[6];
  v9 = a1[7];
  v11 = [*(a1[5] + 8) generalErrorHandlerWithOutError:0];
  LODWORD(v9) = [v8 prepAndRunQuery:v7 onPrep:v10 onRow:v9 onError:v11];

  if (v9)
  {
    v12 = *(a1[9] + 8);
    (*(a1[8] + 16))();
    v13 = MEMORY[0x277D42670];
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = MEMORY[0x277D42678];
  }

  *(*(a1[10] + 8) + 24) = v14;

  return *v13;
}

- (BOOL)enumerateRecordsNewerThanDate:(id)a3 matchingDeploymentEnvironments:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"deploymentEnvironments"}];

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_4;
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"date"}];

  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_4:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__TRIExperimentHistoryDatabase_enumerateRecordsNewerThanDate_matchingDeploymentEnvironments_block___block_invoke;
  v19[3] = &unk_279DDFB20;
  v20 = v10;
  v21 = v9;
  v12 = v9;
  v13 = v10;
  v14 = [(TRIExperimentHistoryDatabase *)self _enumerateRecordsMatchingWhereClause:@" WHERE         e.deploymentEnvironment IN _pas_nsset(:matching_envs)     AND e.eventSecondsFromEpoch > :threshold" bind:v19 block:v11];

  return v14;
}

void __99__TRIExperimentHistoryDatabase_enumerateRecordsNewerThanDate_matchingDeploymentEnvironments_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":matching_envs" toNSSet:v3];
  [*(a1 + 40) timeIntervalSince1970];
  [v4 bindNamedParam:":threshold" toDouble:?];
}

- (BOOL)expireRecordsOlderThanDate:(id)a3 deletedCount:(unint64_t *)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__TRIExperimentHistoryDatabase_expireRecordsOlderThanDate_deletedCount___block_invoke;
  v12[3] = &unk_279DE1560;
  v12[4] = self;
  v8 = v7;
  v14 = &v16;
  v15 = a4;
  v13 = v8;
  [(TRIExperimentHistoryDatabase *)self writeTransactionWithFailableBlock:v12];
  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __72__TRIExperimentHistoryDatabase_expireRecordsOlderThanDate_deletedCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __72__TRIExperimentHistoryDatabase_expireRecordsOlderThanDate_deletedCount___block_invoke_2;
  v24 = &unk_279DDF860;
  v25 = *(a1 + 40);
  v5 = [v4 createTempTableContainingRowsFromQuery:@" SELECT rowid FROM         experimentHistory WHERE         eventSecondsFromEpoch < :threshold" bind:&v21 namePrefix:@"remove_hist_rowids" transaction:v3];

  if (!v5)
  {
    v19 = MEMORY[0x277D42678];
LABEL_9:
    v11 = *v19;
    goto LABEL_10;
  }

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v6 initWithFormat:@" DELETE FROM     experimentHistoryNamespaces WHERE     experimentHistory_rowid IN %@;", v5, v21, v22, v23, v24];
  v8 = [v3 db];
  v9 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
  v10 = [v8 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v9];

  v11 = *MEMORY[0x277D42678];
  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" DELETE FROM     experimentHistory WHERE     rowid IN %@;", v5];
    v13 = [v3 db];
    v14 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
    v15 = [v13 prepAndRunQuery:v12 onPrep:0 onRow:0 onError:v14];

    if (v15)
    {
      v16 = [v3 db];
      v17 = sqlite3_changes([v16 handle]);

      if ([*(*(a1 + 32) + 8) dropTableWithName:v5 transaction:v3])
      {
        v18 = *(a1 + 56);
        if (v18)
        {
          *v18 = v17;
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
        v19 = MEMORY[0x277D42670];
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  return v11;
}

void __72__TRIExperimentHistoryDatabase_expireRecordsOlderThanDate_deletedCount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":threshold" toDouble:?];
}

- (id)getAllAllocationStatusesForExperimentId:(id)a3 deploymentId:(int)a4 treatmentId:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"deploymentId"}];

    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"experimentId"}];

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_9:
  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"TRIExperimentHistoryDatabase.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"treatmentId"}];

LABEL_4:
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = "experimentHistory";
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__20;
  v30 = __Block_byref_object_dispose__20;
  v31 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__TRIExperimentHistoryDatabase_getAllAllocationStatusesForExperimentId_deploymentId_treatmentId___block_invoke;
  v18[3] = &unk_279DE1A70;
  v22 = v33;
  v11 = v9;
  v19 = v11;
  v25 = a4;
  v12 = v10;
  v23 = v32;
  v24 = &v26;
  v20 = v12;
  v21 = self;
  [(TRIExperimentHistoryDatabase *)self readTransactionWithFailableBlock:v18];
  v13 = v27[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);

  return v13;
}

uint64_t __97__TRIExperimentHistoryDatabase_getAllAllocationStatusesForExperimentId_deploymentId_treatmentId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__TRIExperimentHistoryDatabase_getAllAllocationStatusesForExperimentId_deploymentId_treatmentId___block_invoke_2;
  v11[3] = &unk_279DE1498;
  v12 = *(a1 + 32);
  v14 = *(a1 + 80);
  v13 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__TRIExperimentHistoryDatabase_getAllAllocationStatusesForExperimentId_deploymentId_treatmentId___block_invoke_3;
  v9[3] = &unk_279DE1A48;
  v10 = *(a1 + 64);
  v4 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
  *(*(*(a1 + 56) + 8) + 24) = [v3 prepAndRunQuery:@"SELECT * FROM experimentHistory WHERE         experimentId = :experiment_id    AND deploymentId = :deployment_id    AND treatmentId = :treatment_id ORDER BY rowid DESC" onPrep:v11 onRow:v9 onError:v4];

  LODWORD(a1) = *(*(*(a1 + 56) + 8) + 24);
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

void __97__TRIExperimentHistoryDatabase_getAllAllocationStatusesForExperimentId_deploymentId_treatmentId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":experiment_id" toNSString:v3];
  [v4 bindNamedParam:":deployment_id" toInt64:*(a1 + 48)];
  [v4 bindNamedParam:":treatment_id" toNSString:*(a1 + 40)];
}

uint64_t __97__TRIExperimentHistoryDatabase_getAllAllocationStatusesForExperimentId_deploymentId_treatmentId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64ForColumnName:"eventType" table:"experimentHistory"];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
  [v4 addObject:v5];

  return *MEMORY[0x277D42690];
}

- (BOOL)storeExperimentEvent:(id)a3 isValidTransition:(BOOL *)a4
{
  v6 = a3;
  v7 = [(TRIExperimentHistoryDatabase *)self _isValidNextStateForEvent:v6];
  if (a4)
  {
    *a4 = v7;
  }

  v8 = [v6 experimentRecord];

  v9 = [(TRIExperimentHistoryDatabase *)self addRecord:v8];
  return v9;
}

- (BOOL)_isValidNextStateForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 treatmentTriple];
  v6 = [v5 experimentId];
  v7 = [v4 treatmentTriple];
  v8 = [v7 deploymentId];
  v9 = [v4 treatmentTriple];
  v10 = [v9 treatmentId];
  v11 = [(TRIExperimentHistoryDatabase *)self getAllAllocationStatusesForExperimentId:v6 deploymentId:v8 treatmentId:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v4, "eventType")}];
  LOBYTE(v6) = [v11 containsObject:v12];

  if (v6)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v4 experimentStateName];
    v15 = [v14 isEqualToString:@"exp_st_DE"];

    if (v15)
    {
      v13 = [v11 containsObject:&unk_287FC4AC8];
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (unsigned)previousExperimentStateForTriple:(id)a3
{
  v4 = a3;
  v5 = [v4 experimentId];
  v6 = [v4 deploymentId];
  v7 = [v4 treatmentId];

  v8 = [(TRIExperimentHistoryDatabase *)self getAllAllocationStatusesForExperimentId:v5 deploymentId:v6 treatmentId:v7];

  v9 = [v8 firstObject];
  LOBYTE(v5) = [v9 intValue];

  return v5;
}

@end