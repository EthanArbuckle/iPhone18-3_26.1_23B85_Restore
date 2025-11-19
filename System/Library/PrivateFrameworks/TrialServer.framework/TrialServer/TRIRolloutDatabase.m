@interface TRIRolloutDatabase
- ($61A80719B04F7407D3E47539F1B23CAA)removeRecordWithDeployment:(id)a3 usingRefCounting:(BOOL)a4;
- (BOOL)_enumerateRecordsMatchingWhereClause:(id)a3 bind:(id)a4 prependingWithClause:(id)a5 usingTransaction:(id)a6 block:(id)a7;
- (BOOL)activateDeployment:(id)a3 withFactorPackSetId:(id)a4 targetingRuleIndex:(id)a5 deactivatedDeployments:(id)a6 deactivatedFactorPackSetIds:(id)a7 deactivationStateTransitions:(id)a8 usingTransaction:(id)a9;
- (BOOL)addNewRolloutWithRecord:(id)a3;
- (BOOL)deactivateDeployment:(id)a3 usingTransaction:(id)a4;
- (BOOL)deactivateDeploymentsWithRolloutId:(id)a3 deactivatedDeployment:(id *)a4 deactivatedFactorPackSetId:(id *)a5 deactivatedRampId:(id *)a6 deactivationStateTransitions:(id)a7 usingTransaction:(id)a8;
- (BOOL)enumerateRecordsOverlappingNamespaces:(id)a3 usingTransaction:(id)a4 block:(id)a5;
- (BOOL)enumerateRecordsWithRolloutId:(id)a3 usingTransaction:(id)a4 block:(id)a5;
- (BOOL)hasRecordReferencingFactorPackSetId:(id)a3 withReferenceType:(unsigned int)a4;
- (BOOL)setActiveFactorPackSetId:(id)a3 activeTargetingRuleIndex:(id)a4 forDeployment:(id)a5 usingTransaction:(id)a6;
- (BOOL)setStatus:(int64_t)a3 forDeployment:(id)a4 usingTransaction:(id)a5;
- (BOOL)setTargetedFactorPackSetId:(id)a3 targetedTargetingRuleIndex:(id)a4 forDeployment:(id)a5 usingTransaction:(id)a6;
- (BOOL)targetDeployment:(id)a3 toFactorPackSetId:(id)a4 targetingRuleIndex:(id)a5 deallocatedDeployments:(id)a6 usingTransaction:(id)a7;
- (TRIRolloutDatabase)initWithDatabase:(id)a3;
- (id)_dataNoCopyFromStmt:(id)a3 columnName:(const char *)a4;
- (id)recordWithDeployment:(id)a3 usingTransaction:(id)a4;
@end

@implementation TRIRolloutDatabase

- (TRIRolloutDatabase)initWithDatabase:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v11.receiver = self;
  v11.super_class = TRIRolloutDatabase;
  v7 = [(TRIRolloutDatabase *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, a3);
  }

  return v8;
}

- (BOOL)addNewRolloutWithRecord:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v6 = [v5 namespaces];
  v7 = objc_opt_new();
  v8 = [v6 _pas_leftFoldWithInitialObject:v7 accumulate:&__block_literal_global_20];

  v9 = [v8 count];
  v10 = [v5 namespaces];
  v11 = [v10 count];

  if (v9 == v11)
  {

    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __46__TRIRolloutDatabase_addNewRolloutWithRecord___block_invoke_48;
    v19[3] = &unk_279DDF9C0;
    v19[4] = self;
    v20 = v5;
    p_buf = &buf;
    [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v19];
    v12 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 deployment];
      v17 = [v16 shortDesc];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Namespace names in rollout %{public}@ are not unique.", &buf, 0xCu);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

id __46__TRIRolloutDatabase_addNewRolloutWithRecord___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  [v4 addObject:a3];

  return v4;
}

uint64_t __46__TRIRolloutDatabase_addNewRolloutWithRecord___block_invoke_48(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) deployment];
  v6 = [v4 recordWithDeployment:v5 usingTransaction:v3];

  if (v6)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) deployment];
      v9 = [v8 shortDesc];
      *buf = 138543362;
      v38 = v9;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Unable to add new rollout deployment %{public}@: already present in database.", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v10 = *MEMORY[0x277D42678];
  }

  else
  {
    v11 = [v3 db];
    sqlite3_set_last_insert_rowid([v11 handle], 0x8000000000000000);

    v12 = [v3 db];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __46__TRIRolloutDatabase_addNewRolloutWithRecord___block_invoke_52;
    v34[3] = &unk_279DDF860;
    v35 = *(a1 + 40);
    v13 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
    v14 = [v12 prepAndRunQuery:@" INSERT INTO rolloutsV2(    rolloutId onPrep:deploymentId onRow:rampId onError:{status, activeFactorPackSetId, activeTargetingRuleIndex, targetedFactorPackSetId, targetedTargetingRuleIndex, artifact) VALUES(    :rollout_id, :deployment_id, :ramp_id, :status, :active_fp_set_id, :active_targeting_rule_index, :targeted_fp_set_id, :targeted_targeting_rule_index, :artifact);", v34, 0, v13}];

    if ((v14 & 1) != 0 && ([v3 db], v15 = objc_claimAutoreleasedReturnValue(), insert_rowid = sqlite3_last_insert_rowid(objc_msgSend(v15, "handle")), v15, v28 = insert_rowid, insert_rowid != 0x8000000000000000))
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = [*(a1 + 40) namespaces];
      v17 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v30 + 1) + 8 * i);
            v22 = objc_autoreleasePoolPush();
            v23 = [v3 db];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __46__TRIRolloutDatabase_addNewRolloutWithRecord___block_invoke_2;
            v29[3] = &unk_279DE1538;
            v29[4] = v21;
            v29[5] = v28;
            v24 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
            LODWORD(v21) = [v23 prepAndRunQuery:@" INSERT INTO rolloutV2Namespaces(    rolloutsV2_rowid onPrep:name) VALUES(    :rolloutsV2_rowid onRow::name);" onError:{v29, 0, v24}];

            if (!v21)
            {
              *(*(*(a1 + 48) + 8) + 24) = 0;
              v10 = *MEMORY[0x277D42678];
              objc_autoreleasePoolPop(v22);

              goto LABEL_18;
            }

            objc_autoreleasePoolPop(v22);
          }

          v18 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      v10 = *MEMORY[0x277D42670];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v10 = *MEMORY[0x277D42678];
    }

LABEL_18:
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

void __46__TRIRolloutDatabase_addNewRolloutWithRecord___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 deployment];
  v6 = [v5 rolloutId];
  [v4 bindNamedParam:":rollout_id" toNSString:v6];

  v7 = [*(a1 + 32) deployment];
  [v4 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(v7, "deploymentId")}];

  v8 = [*(a1 + 32) rampId];
  [v4 bindNamedParam:":ramp_id" toNSString:v8];

  [v4 bindNamedParam:":status" toInt64:{objc_msgSend(*(a1 + 32), "status")}];
  v9 = [*(a1 + 32) activeFactorPackSetId];
  [v4 bindNamedParam:":active_fp_set_id" toNSString:v9];

  v10 = [*(a1 + 32) activeTargetingRuleIndex];
  [v4 bindNamedParam:":active_targeting_rule_index" toInt64AsNSNumber:v10];

  v11 = [*(a1 + 32) targetedFactorPackSetId];
  [v4 bindNamedParam:":targeted_fp_set_id" toNSString:v11];

  v12 = [*(a1 + 32) targetedTargetingRuleIndex];
  [v4 bindNamedParam:":targeted_targeting_rule_index" toInt64AsNSNumber:v12];

  v14 = [*(a1 + 32) artifact];
  v13 = [v14 data];
  [v4 bindNamedParam:":artifact" toNSData:v13];
}

void __46__TRIRolloutDatabase_addNewRolloutWithRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":rolloutsV2_rowid" toInt64:v3];
  [v4 bindNamedParam:":name" toNSString:*(a1 + 32)];
}

- (BOOL)setStatus:(int64_t)a3 forDeployment:(id)a4 usingTransaction:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __63__TRIRolloutDatabase_setStatus_forDeployment_usingTransaction___block_invoke;
  v18 = &unk_279DE1560;
  v22 = a3;
  v10 = v8;
  v19 = v10;
  v20 = self;
  v21 = &v23;
  v11 = MEMORY[0x2743948D0](&v15);
  v12 = v11;
  if (v9)
  {
    (*(v11 + 16))(v11, v9);
  }

  else
  {
    [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v11, v15, v16, v17, v18];
  }

  v13 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v13;
}

uint64_t __63__TRIRolloutDatabase_setStatus_forDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__TRIRolloutDatabase_setStatus_forDeployment_usingTransaction___block_invoke_2;
  v12[3] = &unk_279DE1538;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:{0, v12[0], 3221225472, __63__TRIRolloutDatabase_setStatus_forDeployment_usingTransaction___block_invoke_2, &unk_279DE1538}];
  v6 = [v4 prepAndRunQuery:@" UPDATE rolloutsV2 SET         status = :status WHERE         rolloutId = :rollout_id     AND deploymentId = :deployment_id;" onPrep:v12 onRow:0 onError:v5];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);

    v9 = *(*(a1 + 48) + 8);
    if (v8)
    {
      *(v9 + 24) = 1;
    }

    else
    {
      *(v9 + 24) = 0;
    }

    v10 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v10 = MEMORY[0x277D42678];
  }

  return *v10;
}

void __63__TRIRolloutDatabase_setStatus_forDeployment_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  [v5 bindNamedParam:":status" toInt64:v3];
  v4 = [*(a1 + 32) rolloutId];
  [v5 bindNamedParam:":rollout_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
}

- (BOOL)setActiveFactorPackSetId:(id)a3 activeTargetingRuleIndex:(id)a4 forDeployment:(id)a5 usingTransaction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __103__TRIRolloutDatabase_setActiveFactorPackSetId_activeTargetingRuleIndex_forDeployment_usingTransaction___block_invoke;
  v21[3] = &unk_279DE17A8;
  v14 = v10;
  v22 = v14;
  v15 = v11;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v25 = self;
  v26 = &v27;
  v17 = MEMORY[0x2743948D0](v21);
  v18 = v17;
  if (v13)
  {
    (*(v17 + 16))(v17, v13);
  }

  else
  {
    [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v17];
  }

  v19 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return v19;
}

uint64_t __103__TRIRolloutDatabase_setActiveFactorPackSetId_activeTargetingRuleIndex_forDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__TRIRolloutDatabase_setActiveFactorPackSetId_activeTargetingRuleIndex_forDeployment_usingTransaction___block_invoke_2;
  v12[3] = &unk_279DE1780;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v5 = [*(*(a1 + 56) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" UPDATE rolloutsV2 SET         activeFactorPackSetId = :set_id onPrep:activeTargetingRuleIndex = :rule_index WHERE         rolloutId = :rollout_id     AND deploymentId = :deployment_id;" onRow:v12 onError:{0, v5}];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);

    v9 = *(*(a1 + 64) + 8);
    if (v8)
    {
      *(v9 + 24) = 1;
    }

    else
    {
      *(v9 + 24) = 0;
    }

    v10 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v10 = MEMORY[0x277D42678];
  }

  return *v10;
}

void __103__TRIRolloutDatabase_setActiveFactorPackSetId_activeTargetingRuleIndex_forDeployment_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":set_id" toNSString:v3];
  [v5 bindNamedParam:":rule_index" toInt64AsNSNumber:*(a1 + 40)];
  v4 = [*(a1 + 48) rolloutId];
  [v5 bindNamedParam:":rollout_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 48), "deploymentId")}];
}

- (BOOL)setTargetedFactorPackSetId:(id)a3 targetedTargetingRuleIndex:(id)a4 forDeployment:(id)a5 usingTransaction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __107__TRIRolloutDatabase_setTargetedFactorPackSetId_targetedTargetingRuleIndex_forDeployment_usingTransaction___block_invoke;
  v21[3] = &unk_279DE17A8;
  v14 = v10;
  v22 = v14;
  v15 = v11;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v25 = self;
  v26 = &v27;
  v17 = MEMORY[0x2743948D0](v21);
  v18 = v17;
  if (v13)
  {
    (*(v17 + 16))(v17, v13);
  }

  else
  {
    [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v17];
  }

  v19 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return v19;
}

uint64_t __107__TRIRolloutDatabase_setTargetedFactorPackSetId_targetedTargetingRuleIndex_forDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__TRIRolloutDatabase_setTargetedFactorPackSetId_targetedTargetingRuleIndex_forDeployment_usingTransaction___block_invoke_2;
  v12[3] = &unk_279DE1780;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v5 = [*(*(a1 + 56) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" UPDATE rolloutsV2 SET         targetedFactorPackSetId = :set_id onPrep:targetedTargetingRuleIndex = :rule_index WHERE         rolloutId = :rollout_id     AND deploymentId = :deployment_id;" onRow:v12 onError:{0, v5}];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);

    v9 = *(*(a1 + 64) + 8);
    if (v8)
    {
      *(v9 + 24) = 1;
    }

    else
    {
      *(v9 + 24) = 0;
    }

    v10 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v10 = MEMORY[0x277D42678];
  }

  return *v10;
}

void __107__TRIRolloutDatabase_setTargetedFactorPackSetId_targetedTargetingRuleIndex_forDeployment_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":set_id" toNSString:v3];
  [v5 bindNamedParam:":rule_index" toInt64AsNSNumber:*(a1 + 40)];
  v4 = [*(a1 + 48) rolloutId];
  [v5 bindNamedParam:":rollout_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 48), "deploymentId")}];
}

- (id)_dataNoCopyFromStmt:(id)a3 columnName:(const char *)a4
{
  v5 = a3;
  v6 = sqlite3_column_count([v5 stmt]);
  if (v6 < 1)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    v9 = sqlite3_column_name([v5 stmt], v8);
    if (v9)
    {
      if (!strcmp(a4, v9))
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      goto LABEL_6;
    }
  }

  v12 = sqlite3_column_blob([v5 stmt], v8);
  if (v12)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v12 length:sqlite3_column_bytes(objc_msgSend(v5 freeWhenDone:{"stmt"), v8), 0}];
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

- (BOOL)_enumerateRecordsMatchingWhereClause:(id)a3 bind:(id)a4 prependingWithClause:(id)a5 usingTransaction:(id)a6 block:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if ((v14 != 0) == ((v13 | v15) != 0))
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"((whereClause != nil) || (withClause != nil)) == (bind != nil)"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v29 = [MEMORY[0x277CCA890] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  v19 = objc_autoreleasePoolPush();
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __108__TRIRolloutDatabase__enumerateRecordsMatchingWhereClause_bind_prependingWithClause_usingTransaction_block___block_invoke;
  v30[3] = &unk_279DE1C90;
  v20 = v15;
  v31 = v20;
  v21 = v13;
  v32 = v21;
  v22 = v14;
  v37 = a2;
  v33 = self;
  v34 = v22;
  v23 = v18;
  v35 = v23;
  v36 = &v38;
  v24 = MEMORY[0x2743948D0](v30);
  v25 = v24;
  if (v16)
  {
    (*(v24 + 16))(v24, v16);
  }

  else
  {
    [(TRIRolloutDatabase *)self readTransactionWithFailableBlock:v24];
  }

  v26 = *(v39 + 24);

  _Block_object_dispose(&v38, 8);
  objc_autoreleasePoolPop(v19);

  return v26;
}

uint64_t __108__TRIRolloutDatabase__enumerateRecordsMatchingWhereClause_bind_prependingWithClause_usingTransaction_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = &stru_287FA0430;
  v7 = *(a1 + 32);
  if (!v7)
  {
    v7 = &stru_287FA0430;
  }

  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v8 = [v5 initWithFormat:@" %@ SELECT * FROM     rolloutsV2 as r %@", v7, v6];
  v9 = [v3 db];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __108__TRIRolloutDatabase__enumerateRecordsMatchingWhereClause_bind_prependingWithClause_usingTransaction_block___block_invoke_2;
  v36[3] = &unk_279DE1698;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v38 = *(a1 + 80);
  v36[4] = v10;
  v12 = v4;
  v37 = v12;
  v13 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
  v14 = [v9 prepAndRunQuery:v8 onPrep:v11 onRow:v36 onError:v13];

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [v3 db];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __108__TRIRolloutDatabase__enumerateRecordsMatchingWhereClause_bind_prependingWithClause_usingTransaction_block___block_invoke_3;
  v33[3] = &unk_279DE1C40;
  v17 = v12;
  v34 = v17;
  v18 = v15;
  v35 = v18;
  v19 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
  LODWORD(v12) = [v16 prepAndRunQuery:@" SELECT * FROM     rolloutV2Namespaces as n" onPrep:0 onRow:v33 onError:v19];

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v20 = [v17 allKeys];
  v21 = [v20 sortedArrayUsingSelector:sel_compare_];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __108__TRIRolloutDatabase__enumerateRecordsMatchingWhereClause_bind_prependingWithClause_usingTransaction_block___block_invoke_4;
  v26[3] = &unk_279DE1C68;
  v22 = v17;
  v27 = v22;
  v30 = v31;
  v23 = v18;
  v28 = v23;
  v29 = *(a1 + 64);
  [v21 enumerateObjectsUsingBlock:v26];

  *(*(*(a1 + 72) + 8) + 24) = v14 & v12;
  if ((v14 & v12) != 0)
  {
    v24 = MEMORY[0x277D42670];
  }

  else
  {
    v24 = MEMORY[0x277D42678];
  }

  _Block_object_dispose(v31, 8);
  return *v24;
}

uint64_t __108__TRIRolloutDatabase__enumerateRecordsMatchingWhereClause_bind_prependingWithClause_usingTransaction_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v41 = [v3 getInt64ForColumnName:"rowid" table:0];
  v5 = [v3 getNSStringForColumnName:"rolloutId" table:0];
  v37 = [v3 getInt64ForColumnName:"deploymentId" table:0];
  v6 = [v3 getNSStringForColumnName:"rampId" table:0];
  v39 = [v3 getInt64ForColumnName:"status" table:0];
  v7 = [v3 getNSStringForColumnName:"activeFactorPackSetId" table:0];
  v8 = [v3 getInt64AsNSNumberForColumnName:"activeTargetingRuleIndex" table:0];
  v9 = [v3 getNSStringForColumnName:"targetedFactorPackSetId" table:0];
  v43 = [v3 getInt64AsNSNumberForColumnName:"targetedTargetingRuleIndex" table:0];
  v10 = [v3 getNSDataForColumnName:"artifact" table:0];
  v11 = v10;
  if (v5)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    [MEMORY[0x277CCA890] currentHandler];
    v15 = v14 = v8;
    [v15 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIRolloutDatabase.m" lineNumber:355 description:@"unexpected NULL artifact"];

    v8 = v14;
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  [MEMORY[0x277CCA890] currentHandler];
  v13 = v12 = v8;
  [v13 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIRolloutDatabase.m" lineNumber:354 description:@"unexpected NULL rolloutId"];

  v8 = v12;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7)
  {
LABEL_4:
    v45 = TRIValidateFactorPackSetId();
    goto LABEL_8;
  }

LABEL_7:
  v45 = 0;
LABEL_8:
  v44 = v9;
  if (v9)
  {
    v9 = TRIValidateFactorPackSetId();
  }

  if (v6)
  {
    v16 = TRIValidateRampId();
  }

  else
  {
    v16 = 0;
  }

  v42 = v11;
  v17 = [TRIClientRolloutArtifact artifactWithTransientData:v11];
  v18 = v17;
  if (v44)
  {
    v19 = v9 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if (v6)
  {
    v21 = v16 == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  if (v45)
  {
    v23 = 1;
  }

  else
  {
    v23 = v7 == 0;
  }

  if (v23 && (v20 & 1) == 0 && (v22 & 1) == 0 && v17)
  {
    v36 = [objc_alloc(MEMORY[0x277D737C8]) initWithRolloutId:v5 deploymentId:v37];
    v38 = v4;
    v24 = [TRIRolloutRecord alloc];
    v25 = [(TRIRolloutRecord *)v24 initWithDeployment:v36 rampId:v16 activeFactorPackSetId:v45 activeTargetingRuleIndex:v8 targetedFactorPackSetId:v9 targetedTargetingRuleIndex:v43 status:v39 namespaces:MEMORY[0x277CBEBF8] artifact:v18];
    v26 = a1;
    v40 = v5;
    v27 = v25;
    v28 = v8;
    v29 = v6;
    v30 = *(v26 + 40);
    [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v41];
    v32 = v31 = v7;
    v33 = v30;
    v6 = v29;
    v8 = v28;
    [v33 setObject:v27 forKey:v32];

    v7 = v31;
    v5 = v40;

    v4 = v38;
  }

  objc_autoreleasePoolPop(v4);
  v34 = MEMORY[0x277D42690];

  return *v34;
}

uint64_t __108__TRIRolloutDatabase__enumerateRecordsMatchingWhereClause_bind_prependingWithClause_usingTransaction_block___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "getInt64ForColumnName:table:", "rolloutsV2_rowid", 0)}];
  v6 = [*(a1 + 32) objectForKey:v5];
  if (v6)
  {
    v7 = [v3 getNSStringForColumnName:"name" table:0];
    v8 = [*(a1 + 40) objectForKey:v5];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [*(a1 + 40) setObject:v8 forKey:v5];
    }

    if (v7)
    {
      [v8 addObject:v7];
    }
  }

  objc_autoreleasePoolPop(v4);
  v9 = MEMORY[0x277D42690];

  return *v9;
}

void __108__TRIRolloutDatabase__enumerateRecordsMatchingWhereClause_bind_prependingWithClause_usingTransaction_block___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) objectForKey:v15];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  v8 = [*(a1 + 40) objectForKey:v15];
  v9 = v8;
  v10 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v11 copy];
  v13 = [v7 copyWithReplacementNamespaces:v12];

  v14 = *(*(a1 + 56) + 8);
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v6);
}

- (id)recordWithDeployment:(id)a3 usingTransaction:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:449 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__TRIRolloutDatabase_recordWithDeployment_usingTransaction___block_invoke;
  v21[3] = &unk_279DDF860;
  v9 = v7;
  v22 = v9;
  v10 = MEMORY[0x2743948D0](v21);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__TRIRolloutDatabase_recordWithDeployment_usingTransaction___block_invoke_132;
  v14[3] = &unk_279DE0818;
  v14[4] = &v15;
  if ([(TRIRolloutDatabase *)self _enumerateRecordsMatchingWhereClause:@" WHERE   rolloutId = :rollout_id     AND deploymentId = :deployment_id" bind:v10 prependingWithClause:0 usingTransaction:v8 block:v14])
  {
    v11 = v16[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v11;
}

void __60__TRIRolloutDatabase_recordWithDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 rolloutId];
  [v5 bindNamedParam:":rollout_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
}

- (BOOL)enumerateRecordsWithRolloutId:(id)a3 usingTransaction:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"rolloutId"}];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__TRIRolloutDatabase_enumerateRecordsWithRolloutId_usingTransaction_block___block_invoke;
  v17[3] = &unk_279DDF860;
  v18 = v9;
  v12 = v9;
  v13 = MEMORY[0x2743948D0](v17);
  v14 = [(TRIRolloutDatabase *)self _enumerateRecordsMatchingWhereClause:@"WHERE rolloutId = :rollout_id" bind:v13 prependingWithClause:0 usingTransaction:v10 block:v11];

  return v14;
}

- (BOOL)enumerateRecordsOverlappingNamespaces:(id)a3 usingTransaction:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:506 description:{@"Invalid parameter not satisfying: %@", @"namespaces"}];
  }

  if ([v9 count])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__TRIRolloutDatabase_enumerateRecordsOverlappingNamespaces_usingTransaction_block___block_invoke;
    v16[3] = &unk_279DDF860;
    v17 = v9;
    v12 = MEMORY[0x2743948D0](v16);
    v13 = [(TRIRolloutDatabase *)self _enumerateRecordsMatchingWhereClause:@" WHERE r.rowid IN selectedRowIds" bind:v12 prependingWithClause:@" WITH selectedRowIds AS(    SELECT rolloutsV2_rowid FROM rolloutV2Namespaces     WHERE name IN _pas_nsset(:name_set))" usingTransaction:v10 block:v11];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- ($61A80719B04F7407D3E47539F1B23CAA)removeRecordWithDeployment:(id)a3 usingRefCounting:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:545 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2810000000;
  v19 = &unk_26F7089E2;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__TRIRolloutDatabase_removeRecordWithDeployment_usingRefCounting___block_invoke;
  v12[3] = &unk_279DE17F8;
  v15 = a4;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  v14 = &v16;
  [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v12];
  v9.var0 = v17[4];

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __66__TRIRolloutDatabase_removeRecordWithDeployment_usingRefCounting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 appendString:@" SELECT rowid FROM         rolloutsV2 WHERE         rolloutId = :rollout_id     AND deploymentId = :deployment_id"];
  if (*(a1 + 56) == 1)
  {
    [v4 appendString:@"     AND respectRefCount = 1"];
  }

  v5 = *(*(a1 + 32) + 8);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __66__TRIRolloutDatabase_removeRecordWithDeployment_usingRefCounting___block_invoke_2;
  v25 = &unk_279DDF860;
  v26 = *(a1 + 40);
  v6 = [v5 createTempTableContainingRowsFromQuery:v4 bind:&v22 namePrefix:@"remove_rollout_rowids" transaction:v3];

  if (!v6)
  {
    *(*(*(a1 + 48) + 8) + 32) = 0;
    v19 = MEMORY[0x277D42678];
LABEL_14:
    v20 = *v19;
    goto LABEL_15;
  }

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v7 initWithFormat:@" DELETE FROM     rolloutV2Namespaces WHERE     rolloutsV2_rowid IN %@;", v6, v22, v23, v24, v25];
  v9 = [v3 db];
  v10 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
  v11 = [v9 prepAndRunQuery:v8 onPrep:0 onRow:0 onError:v10];

  if (v11)
  {

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" DELETE FROM     rolloutsV2 WHERE     rowid IN %@;", v6];
    v12 = [v3 db];
    v13 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
    v14 = [v12 prepAndRunQuery:v8 onPrep:0 onRow:0 onError:v13];

    if (v14)
    {

      v15 = [v3 db];
      v16 = sqlite3_changes([v15 handle]);

      v17 = [*(*(a1 + 32) + 8) dropTableWithName:v6 transaction:v3];
      v18 = 1;
      if (v16 <= 0)
      {
        v18 = 2;
      }

      if (!v17)
      {
        v18 = 0;
      }

      *(*(*(a1 + 48) + 8) + 32) = v18;
      v19 = MEMORY[0x277D42670];
      if (!v17)
      {
        v19 = MEMORY[0x277D42678];
      }

      goto LABEL_14;
    }
  }

  *(*(*(a1 + 48) + 8) + 32) = 0;
  v20 = *MEMORY[0x277D42678];

LABEL_15:
  return v20;
}

void __66__TRIRolloutDatabase_removeRecordWithDeployment_usingRefCounting___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 rolloutId];
  [v5 bindNamedParam:":rollout_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
}

- (BOOL)targetDeployment:(id)a3 toFactorPackSetId:(id)a4 targetingRuleIndex:(id)a5 deallocatedDeployments:(id)a6 usingTransaction:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:631 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:632 description:{@"Invalid parameter not satisfying: %@", @"deallocatedDeployments"}];

LABEL_3:
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __116__TRIRolloutDatabase_targetDeployment_toFactorPackSetId_targetingRuleIndex_deallocatedDeployments_usingTransaction___block_invoke;
  v30[3] = &unk_279DE1CB8;
  v30[4] = self;
  v18 = v13;
  v31 = v18;
  v19 = v14;
  v32 = v19;
  v20 = v15;
  v33 = v20;
  v21 = v16;
  v34 = v21;
  v35 = &v36;
  v22 = MEMORY[0x2743948D0](v30);
  v23 = v22;
  if (v17)
  {
    (v22)[2](v22, v17);
  }

  else
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __116__TRIRolloutDatabase_targetDeployment_toFactorPackSetId_targetingRuleIndex_deallocatedDeployments_usingTransaction___block_invoke_175;
    v28[3] = &unk_279DE1CE0;
    v29 = v22;
    [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v28];
  }

  v24 = *(v37 + 24);

  _Block_object_dispose(&v36, 8);
  return v24;
}

uint64_t __116__TRIRolloutDatabase_targetDeployment_toFactorPackSetId_targetingRuleIndex_deallocatedDeployments_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) rolloutId];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __116__TRIRolloutDatabase_targetDeployment_toFactorPackSetId_targetingRuleIndex_deallocatedDeployments_usingTransaction___block_invoke_2;
  v45[3] = &unk_279DE0700;
  v7 = v4;
  v46 = v7;
  LOBYTE(v5) = [v5 enumerateRecordsWithRolloutId:v6 usingTransaction:v3 block:v45];

  if (v5)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = v7;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v38 = 0;
      v40 = *v42;
      obj = v8;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [v12 deployment];
          v15 = [v14 isEqualToDeployment:*(a1 + 40)];

          if (v15)
          {
            if (*(a1 + 48))
            {
              if ([v12 status] != 1)
              {
                v16 = *(a1 + 32);
                v17 = [v12 deployment];
                LODWORD(v16) = [v16 setStatus:2 forDeployment:v17 usingTransaction:v3];

                if (!v16)
                {
                  goto LABEL_31;
                }
              }
            }

            v18 = *(a1 + 32);
            v20 = *(a1 + 48);
            v19 = *(a1 + 56);
            v21 = [v12 deployment];
            LOBYTE(v18) = [v18 setTargetedFactorPackSetId:v20 targetedTargetingRuleIndex:v19 forDeployment:v21 usingTransaction:v3];

            objc_autoreleasePoolPop(v13);
            if ((v18 & 1) == 0)
            {
              goto LABEL_25;
            }

            v38 = 1;
          }

          else
          {
            if ([v12 status] == 2)
            {
              v22 = *(a1 + 32);
              v23 = [v12 deployment];
              LODWORD(v22) = [v22 setStatus:0 forDeployment:v23 usingTransaction:v3];

              if (!v22)
              {
LABEL_31:
                v32 = *MEMORY[0x277D42678];
                objc_autoreleasePoolPop(v13);
                goto LABEL_32;
              }
            }

            v24 = [v12 targetedFactorPackSetId];

            if (v24)
            {
              v25 = TRILogCategory_Server();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [*(a1 + 40) shortDesc];
                v27 = [v12 deployment];
                v28 = [v27 shortDesc];
                *buf = 138543618;
                v48 = v26;
                v49 = 2114;
                v50 = v28;
                _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "Completion of targeting for rollout deployment %{public}@ invalidated targeted rollout deployment: %{public}@", buf, 0x16u);
              }

              [*(a1 + 64) addObject:v12];
            }

            v29 = *(a1 + 32);
            v30 = [v12 deployment];
            LODWORD(v29) = [v29 setTargetedFactorPackSetId:0 targetedTargetingRuleIndex:0 forDeployment:v30 usingTransaction:v3];

            objc_autoreleasePoolPop(v13);
            if (!v29)
            {
LABEL_25:
              v32 = *MEMORY[0x277D42678];
LABEL_32:

              goto LABEL_33;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      if (v38)
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
        v31 = MEMORY[0x277D42670];
        goto LABEL_30;
      }
    }

    else
    {
    }

    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v36 = [*(a1 + 40) shortDesc];
      *buf = 138543362;
      v48 = v36;
      _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "TRIRolloutDatabase unable to target rollout deployment %{public}@; not found.", buf, 0xCu);
    }

    v31 = MEMORY[0x277D42678];
LABEL_30:
    v32 = *v31;
LABEL_33:
    v7 = v37;
  }

  else
  {
    v32 = *MEMORY[0x277D42678];
  }

  v34 = *MEMORY[0x277D85DE8];
  return v32;
}

void __116__TRIRolloutDatabase_targetDeployment_toFactorPackSetId_targetingRuleIndex_deallocatedDeployments_usingTransaction___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D737A0] partialRecordWithFullRecord:a2];
  [*(a1 + 32) addObject:v3];
}

- (BOOL)activateDeployment:(id)a3 withFactorPackSetId:(id)a4 targetingRuleIndex:(id)a5 deactivatedDeployments:(id)a6 deactivatedFactorPackSetIds:(id)a7 deactivationStateTransitions:(id)a8 usingTransaction:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_9:
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:717 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:716 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];

  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v19)
  {
    goto LABEL_4;
  }

LABEL_10:
  v35 = [MEMORY[0x277CCA890] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:718 description:{@"Invalid parameter not satisfying: %@", @"deactivatedDeployments"}];

LABEL_4:
  [v19 removeAllObjects];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __177__TRIRolloutDatabase_activateDeployment_withFactorPackSetId_targetingRuleIndex_deactivatedDeployments_deactivatedFactorPackSetIds_deactivationStateTransitions_usingTransaction___block_invoke;
  v38[3] = &unk_279DE1D08;
  v38[4] = self;
  v23 = v16;
  v39 = v23;
  v24 = v17;
  v40 = v24;
  v25 = v18;
  v41 = v25;
  v26 = v21;
  v42 = v26;
  v27 = v19;
  v43 = v27;
  v28 = v20;
  v44 = v28;
  v45 = &v46;
  v29 = MEMORY[0x2743948D0](v38);
  v30 = v29;
  if (v22)
  {
    (v29)[2](v29, v22);
  }

  else
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __177__TRIRolloutDatabase_activateDeployment_withFactorPackSetId_targetingRuleIndex_deactivatedDeployments_deactivatedFactorPackSetIds_deactivationStateTransitions_usingTransaction___block_invoke_183;
    v36[3] = &unk_279DE1CE0;
    v37 = v29;
    [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v36];
  }

  v31 = *(v47 + 24);

  _Block_object_dispose(&v46, 8);
  return v31;
}

uint64_t __177__TRIRolloutDatabase_activateDeployment_withFactorPackSetId_targetingRuleIndex_deactivatedDeployments_deactivatedFactorPackSetIds_deactivationStateTransitions_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) recordWithDeployment:*(a1 + 40) usingTransaction:0];
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CBEB98];
  v8 = [v5 namespaces];
  v9 = [v7 setWithArray:v8];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __177__TRIRolloutDatabase_activateDeployment_withFactorPackSetId_targetingRuleIndex_deactivatedDeployments_deactivatedFactorPackSetIds_deactivationStateTransitions_usingTransaction___block_invoke_2;
  v67[3] = &unk_279DE0700;
  v10 = v4;
  v68 = v10;
  LOBYTE(v4) = [v6 enumerateRecordsOverlappingNamespaces:v9 usingTransaction:v3 block:v67];

  if ((v4 & 1) == 0)
  {
    goto LABEL_45;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v10;
  v62 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (!v62)
  {

    goto LABEL_42;
  }

  v55 = v10;
  v56 = v5;
  v59 = 0;
  v11 = *v64;
  v57 = *v64;
  while (2)
  {
    for (i = 0; i != v62; ++i)
    {
      if (*v64 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v63 + 1) + 8 * i);
      v14 = objc_autoreleasePoolPush();
      v15 = [v13 deployment];
      v16 = [v15 isEqualToDeployment:*(a1 + 40)];

      if (v16)
      {
        v17 = *(a1 + 32);
        v18 = [v13 deployment];
        LODWORD(v17) = [v17 setStatus:1 forDeployment:v18 usingTransaction:v3];

        if (!v17)
        {
          goto LABEL_40;
        }

        v19 = *(a1 + 32);
        v20 = *(a1 + 48);
        v21 = *(a1 + 56);
        v22 = [v13 deployment];
        LODWORD(v19) = [v19 setActiveFactorPackSetId:v20 activeTargetingRuleIndex:v21 forDeployment:v22 usingTransaction:v3];

        if (!v19)
        {
          goto LABEL_40;
        }

        v23 = *(a1 + 32);
        v24 = [v13 deployment];
        LOBYTE(v23) = [v23 setTargetedFactorPackSetId:0 targetedTargetingRuleIndex:0 forDeployment:v24 usingTransaction:v3];

        objc_autoreleasePoolPop(v14);
        if ((v23 & 1) == 0)
        {
          goto LABEL_47;
        }

        v59 = 1;
        continue;
      }

      if ([v13 status])
      {
        if (*(a1 + 64))
        {
          v26 = [v13 status];
          v25 = @"roll_st_DE";
          if (v26 == 1 || *(a1 + 64) && (v27 = [v13 status], v25 = @"obsoleted-unknown-previous-state", v27 == 2))
          {
            [*(a1 + 64) setObject:v25 forKeyedSubscript:{v13, v55, v56}];
          }
        }

        v28 = *(a1 + 32);
        v29 = [v13 deployment];
        LODWORD(v28) = [v28 setStatus:3 forDeployment:v29 usingTransaction:v3];

        if (!v28)
        {
LABEL_40:
          v50 = *MEMORY[0x277D42678];
          objc_autoreleasePoolPop(v14);
LABEL_48:

          v10 = v55;
          v5 = v56;
          goto LABEL_49;
        }
      }

      v30 = [v13 activeFactorPackSetId];
      if (v30)
      {
      }

      else
      {
        v31 = [v13 targetedFactorPackSetId];

        if (!v31)
        {
          goto LABEL_34;
        }
      }

      v61 = v14;
      v32 = TRILogCategory_Server();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [*(a1 + 40) shortDesc];
        v34 = [v13 deployment];
        v35 = [v34 shortDesc];
        *buf = 138543618;
        v70 = v33;
        v71 = 2114;
        v72 = v35;
        _os_log_impl(&dword_26F567000, v32, OS_LOG_TYPE_DEFAULT, "Activating rollout deployment %{public}@ obsoleted rollout deployment: %{public}@", buf, 0x16u);
      }

      v36 = [*(a1 + 40) rolloutId];
      v37 = [v13 deployment];
      v38 = [v37 rolloutId];
      if (([v36 isEqualToString:v38]& 1) != 0)
      {
        v58 = [*(a1 + 40) deploymentId];
        v39 = [v13 deployment];
        v40 = [v39 deploymentId];

        v41 = v58 < v40;
        v11 = v57;
        if (!v41)
        {
          goto LABEL_31;
        }

        v36 = TRILogCategory_Server();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Accidentally obsoleted a newer rollout deployment by activating an old deployment.", buf, 2u);
        }
      }

      else
      {
      }

LABEL_31:
      v42 = *(a1 + 72);
      v43 = [v13 deployment];
      [v42 addObject:v43];

      v44 = [v13 activeFactorPackSetId];
      if (v44)
      {
        [*(a1 + 80) setObject:v44 forKeyedSubscript:*(a1 + 40)];
      }

      v14 = v61;
LABEL_34:
      v45 = *(a1 + 32);
      v46 = [v13 deployment];
      LOBYTE(v45) = [v45 setActiveFactorPackSetId:0 activeTargetingRuleIndex:0 forDeployment:v46 usingTransaction:v3];

      if ((v45 & 1) == 0)
      {
        goto LABEL_40;
      }

      v47 = *(a1 + 32);
      v48 = [v13 deployment];
      LODWORD(v47) = [v47 setTargetedFactorPackSetId:0 targetedTargetingRuleIndex:0 forDeployment:v48 usingTransaction:v3];

      objc_autoreleasePoolPop(v14);
      if (!v47)
      {
LABEL_47:
        v50 = *MEMORY[0x277D42678];
        goto LABEL_48;
      }
    }

    v62 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v62)
    {
      continue;
    }

    break;
  }

  v10 = v55;
  v5 = v56;
  if (v59)
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
    v49 = MEMORY[0x277D42670];
    goto LABEL_46;
  }

LABEL_42:
  v51 = TRILogCategory_Server();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v54 = [*(a1 + 40) shortDesc];
    *buf = 138543362;
    v70 = v54;
    _os_log_error_impl(&dword_26F567000, v51, OS_LOG_TYPE_ERROR, "TRIRolloutDatabase unable to activate rollout deployment %{public}@; not found.", buf, 0xCu);
  }

LABEL_45:
  v49 = MEMORY[0x277D42678];
LABEL_46:
  v50 = *v49;
LABEL_49:

  v52 = *MEMORY[0x277D85DE8];
  return v50;
}

void __177__TRIRolloutDatabase_activateDeployment_withFactorPackSetId_targetingRuleIndex_deactivatedDeployments_deactivatedFactorPackSetIds_deactivationStateTransitions_usingTransaction___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D737A0] partialRecordWithFullRecord:a2];
  [*(a1 + 32) addObject:v3];
}

- (BOOL)deactivateDeployment:(id)a3 usingTransaction:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:831 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__TRIRolloutDatabase_deactivateDeployment_usingTransaction___block_invoke;
  v17[3] = &unk_279DE15D0;
  v19 = &v20;
  v17[4] = self;
  v9 = v7;
  v18 = v9;
  v10 = MEMORY[0x2743948D0](v17);
  v11 = v10;
  if (v8)
  {
    (v10)[2](v10, v8);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__TRIRolloutDatabase_deactivateDeployment_usingTransaction___block_invoke_2;
    v15[3] = &unk_279DE1CE0;
    v16 = v10;
    [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v15];
  }

  v12 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v12;
}

uint64_t __60__TRIRolloutDatabase_deactivateDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  *(*(*(a1 + 48) + 8) + 24) &= [v3 setStatus:3 forDeployment:v4 usingTransaction:v5];
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) setActiveFactorPackSetId:0 activeTargetingRuleIndex:0 forDeployment:*(a1 + 40) usingTransaction:v5];
  LOBYTE(v3) = [*(a1 + 32) setTargetedFactorPackSetId:0 targetedTargetingRuleIndex:0 forDeployment:*(a1 + 40) usingTransaction:v5];

  *(*(*(a1 + 48) + 8) + 24) &= v3;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v6 = MEMORY[0x277D42670];
  }

  else
  {
    v6 = MEMORY[0x277D42678];
  }

  return *v6;
}

- (BOOL)deactivateDeploymentsWithRolloutId:(id)a3 deactivatedDeployment:(id *)a4 deactivatedFactorPackSetId:(id *)a5 deactivatedRampId:(id *)a6 deactivationStateTransitions:(id)a7 usingTransaction:(id)a8
{
  v15 = a3;
  v16 = a7;
  v17 = a8;
  if (v15)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:859 description:{@"Invalid parameter not satisfying: %@", @"rolloutId"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:860 description:{@"Invalid parameter not satisfying: %@", @"deactivatedDeployment"}];

LABEL_3:
  v18 = *a4;
  *a4 = 0;

  if (!a5)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"deactivatedFactorPackSetId"}];
  }

  v19 = *a5;
  *a5 = 0;

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 1;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __170__TRIRolloutDatabase_deactivateDeploymentsWithRolloutId_deactivatedDeployment_deactivatedFactorPackSetId_deactivatedRampId_deactivationStateTransitions_usingTransaction___block_invoke;
  v31[3] = &unk_279DE1D58;
  v34 = &v38;
  v31[4] = self;
  v20 = v15;
  v32 = v20;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v21 = v16;
  v33 = v21;
  v22 = MEMORY[0x2743948D0](v31);
  v23 = v22;
  if (v17)
  {
    (v22)[2](v22, v17);
  }

  else
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __170__TRIRolloutDatabase_deactivateDeploymentsWithRolloutId_deactivatedDeployment_deactivatedFactorPackSetId_deactivatedRampId_deactivationStateTransitions_usingTransaction___block_invoke_190;
    v29[3] = &unk_279DE1CE0;
    v30 = v22;
    [(TRIRolloutDatabase *)self writeTransactionWithFailableBlock:v29];
  }

  v24 = *(v39 + 24);

  _Block_object_dispose(&v38, 8);
  return v24;
}

uint64_t __170__TRIRolloutDatabase_deactivateDeploymentsWithRolloutId_deactivatedDeployment_deactivatedFactorPackSetId_deactivatedRampId_deactivationStateTransitions_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __170__TRIRolloutDatabase_deactivateDeploymentsWithRolloutId_deactivatedDeployment_deactivatedFactorPackSetId_deactivatedRampId_deactivationStateTransitions_usingTransaction___block_invoke_2;
  v20[3] = &unk_279DE1D30;
  v21 = v5;
  v7 = v4;
  v22 = v7;
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v23 = *(a1 + 48);
  *(*(*(a1 + 56) + 8) + 24) = [v6 enumerateRecordsWithRolloutId:v21 usingTransaction:v3 block:v20];
  v8 = MEMORY[0x277D42678];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          *(*(*(a1 + 56) + 8) + 24) &= [*(a1 + 32) deactivateDeployment:*(*(&v16 + 1) + 8 * v13++) usingTransaction:{v3, v16}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v11);
    }

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v8 = MEMORY[0x277D42670];
    }
  }

  result = *v8;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void __170__TRIRolloutDatabase_deactivateDeploymentsWithRolloutId_deactivatedDeployment_deactivatedFactorPackSetId_deactivatedRampId_deactivationStateTransitions_usingTransaction___block_invoke_2(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 activeFactorPackSetId];
  if (v4)
  {
  }

  else
  {
    v5 = [v3 targetedFactorPackSetId];

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = [v3 deployment];
    v33 = 138543618;
    v34 = v7;
    v35 = 1024;
    v36 = [v8 deploymentId];
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Deactivating rollout deployments matching %{public}@: %d", &v33, 0x12u);
  }

  v9 = a1[5];
  v10 = [v3 deployment];
  [v9 addObject:v10];

  v11 = [v3 activeFactorPackSetId];

  if (v11)
  {
    v12 = [v3 deployment];
    v13 = a1[7];
    v14 = *v13;
    *v13 = v12;

    v15 = [v3 activeFactorPackSetId];
    v16 = a1[8];
    v17 = *v16;
    *v16 = v15;

    v18 = [v3 rampId];
    v19 = a1[9];
    v20 = *v19;
    *v19 = v18;

    v21 = a1[6];
    if (v21)
    {
      v22 = @"roll_st_DE";
LABEL_9:
      [v21 setObject:v22 forKeyedSubscript:v3];
    }
  }

  else if (!*a1[7])
  {
    v24 = [v3 deployment];
    v25 = a1[7];
    v26 = *v25;
    *v25 = v24;

    v27 = [v3 targetedFactorPackSetId];
    v28 = a1[8];
    v29 = *v28;
    *v28 = v27;

    v30 = [v3 rampId];
    v31 = a1[9];
    v32 = *v31;
    *v31 = v30;

    v21 = a1[6];
    if (v21)
    {
      v22 = @"obsoleted-unknown-previous-state";
      goto LABEL_9;
    }
  }

LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasRecordReferencingFactorPackSetId:(id)a3 withReferenceType:(unsigned int)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRIRolloutDatabase.m" lineNumber:915 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__TRIRolloutDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke;
  v12[3] = &unk_279DE1D80;
  v16 = a4;
  v15 = a2;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  v14 = &v17;
  [(TRIRolloutDatabase *)self readTransactionWithFailableBlock:v12];
  v9 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v9;
}

uint64_t __76__TRIRolloutDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64) - 1;
  if (v4 >= 3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIRolloutDatabase.m" lineNumber:931 description:{@"Invalid parameter not satisfying: %@", @"whereClause"}];

    v5 = 0;
  }

  else
  {
    v5 = off_279DE1DA0[v4];
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" SELECT * FROM     rolloutsV2 WHERE %@ LIMIT 1", v5];
  v8 = [v3 db];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__TRIRolloutDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke_2;
  v16[3] = &unk_279DDF860;
  v17 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__TRIRolloutDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke_3;
  v15[3] = &unk_279DDFC98;
  v15[4] = *(a1 + 48);
  v9 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
  v10 = [v8 prepAndRunQuery:v7 onPrep:v16 onRow:v15 onError:v9];

  v11 = MEMORY[0x277D42670];
  v12 = MEMORY[0x277D42678];

  if (v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return *v13;
}

@end