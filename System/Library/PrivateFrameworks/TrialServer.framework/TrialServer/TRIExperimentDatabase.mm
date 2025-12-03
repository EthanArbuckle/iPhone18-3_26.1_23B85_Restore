@interface TRIExperimentDatabase
+ (id)_singularAndUniqueNamespaceInRecord:(id)record alreadyMapped:(id)mapped;
- ($61A80719B04F7407D3E47539F1B23CAA)addExperimentWithExperimentDeployment:(id)deployment environment:(int)environment type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)endDate namespaces:(id)namespaces artifact:(id)self0;
- ($61A80719B04F7407D3E47539F1B23CAA)removeExperimentRecordWithExperimentDeployment:(id)deployment;
- (BOOL)_enumerateExperimentRecordsMatchingWhereClause:(id)clause bind:(id)bind block:(id)block;
- (BOOL)enumerateExperimentRecordsMatchingExperimentId:(id)id block:(id)block;
- (BOOL)enumerateExperimentRecordsMatchingNamespaceName:(id)name block:(id)block;
- (BOOL)enumerateExperimentRecordsMatchingStatuses:(id)statuses block:(id)block;
- (BOOL)enumerateExperimentRecordsWithBlock:(id)block;
- (BOOL)enumerateNamespaceRecordsForExperimentDeployment:(id)deployment usingTransaction:(id)transaction block:(id)block;
- (BOOL)hasRecordReferencingFactorPackSetId:(id)id withReferenceType:(unsigned int)type;
- (BOOL)hasRecordReferencingTreatmentId:(id)id withReferenceType:(unsigned int)type;
- (BOOL)namespacesAreAvailableForExperiment:(id)experiment startDate:(id)date endDate:(id)endDate namespaces:(id)namespaces;
- (BOOL)setManuallyTargeted:(BOOL)targeted forExperimentDeployment:(id)deployment usingTransaction:(id)transaction;
- (BOOL)setStatus:(int64_t)status forExperimentDeployment:(id)deployment usingTransaction:(id)transaction;
- (BOOL)setTreatmentId:(id)id factorPackSetId:(id)setId forExperimentDeployment:(id)deployment usingTransaction:(id)transaction;
- (BOOL)setTreatmentId:(id)id forExperimentDeployment:(id)deployment usingTransaction:(id)transaction;
- (BOOL)setTreatmentURL:(id)l forExperimentDeployment:(id)deployment namespaceName:(id)name;
- (BOOL)updateEndDate:(id)date forExperimentDeployment:(id)deployment usingTransaction:(id)transaction;
- (TRIExperimentDatabase)initWithDatabase:(id)database;
- (id)activeEnvVarNamespaces;
- (id)activeSysctlNamespaces;
- (id)experimentRecordWithExperimentDeployment:(id)deployment;
- (id)treatmentURLsForExperimentDeployment:(id)deployment usingTransaction:(id)transaction;
- (void)activeCountWithCompletion:(id)completion;
@end

@implementation TRIExperimentDatabase

- (TRIExperimentDatabase)initWithDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v11.receiver = self;
  v11.super_class = TRIExperimentDatabase;
  v7 = [(TRIExperimentDatabase *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, database);
  }

  return v8;
}

- ($61A80719B04F7407D3E47539F1B23CAA)addExperimentWithExperimentDeployment:(id)deployment environment:(int)environment type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)endDate namespaces:(id)namespaces artifact:(id)self0
{
  v53 = *MEMORY[0x277D85DE8];
  deploymentCopy = deployment;
  dateCopy = date;
  endDateCopy = endDate;
  namespacesCopy = namespaces;
  artifactCopy = artifact;
  if (deploymentCopy)
  {
    if (namespacesCopy)
    {
      goto LABEL_3;
    }

LABEL_26:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"namespaces"}];

    if (artifactCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];

  if (!namespacesCopy)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (artifactCopy)
  {
    goto LABEL_4;
  }

LABEL_27:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"artifact"}];

LABEL_4:
  if (type != 1)
  {
    v25 = TRILogCategory_Server();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      shortDesc = [deploymentCopy shortDesc];
      *buf = 67109378;
      *&buf[4] = type;
      *&buf[8] = 2114;
      *&buf[10] = shortDesc;
      _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Refusing to add experiment record of type %d with experiment deployment  %{public}@", buf, 0x12u);
    }

    goto LABEL_22;
  }

  v22 = objc_opt_new();
  v23 = [namespacesCopy _pas_leftFoldWithInitialObject:v22 accumulate:&__block_literal_global_19];

  v24 = [v23 count];
  if (v24 != [namespacesCopy count])
  {
    v26 = TRILogCategory_Server();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      shortDesc2 = [deploymentCopy shortDesc];
      *buf = 138543362;
      *&buf[4] = shortDesc2;
      _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "Namespace names in experiment %{public}@ are not unique.", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (dateCopy && endDateCopy && [dateCopy compare:endDateCopy] != -1)
  {
    v25 = TRILogCategory_Server();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      shortDesc3 = [deploymentCopy shortDesc];
      *buf = 138412802;
      *&buf[4] = dateCopy;
      *&buf[12] = 2112;
      *&buf[14] = endDateCopy;
      *&buf[22] = 2114;
      v51 = shortDesc3;
      _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Start date (%@) does not precede end date (%@) in experiment %{public}@.", buf, 0x20u);
    }

LABEL_22:

LABEL_23:
    v27.var0 = 0;
    goto LABEL_24;
  }

  if (([deploymentCopy hasDeploymentId] & 1) == 0)
  {
    v25 = TRILogCategory_Server();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v32 = TRICloudKitSupport_NotificationType_EnumDescriptor();
      v33 = [v32 textFormatNameForValue:1];
      experimentId = [deploymentCopy experimentId];
      *buf = 138412546;
      *&buf[4] = v33;
      *&buf[12] = 2114;
      *&buf[14] = experimentId;
      _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Refusing to add experiment record of type %@ with id %{public}@ and missing deploymentId", buf, 0x16u);
    }

    goto LABEL_22;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2810000000;
  v51 = &unk_26F7089E2;
  v52 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __125__TRIExperimentDatabase_addExperimentWithExperimentDeployment_environment_type_status_startDate_endDate_namespaces_artifact___block_invoke_48;
  v39[3] = &unk_279DE1730;
  environmentCopy = environment;
  v49 = 1;
  v40 = deploymentCopy;
  statusCopy = status;
  v41 = dateCopy;
  v42 = endDateCopy;
  v43 = artifactCopy;
  selfCopy = self;
  v46 = buf;
  v45 = namespacesCopy;
  [(TRIExperimentDatabase *)self writeTransactionWithFailableBlock:v39];
  v27.var0 = *(*&buf[8] + 32);

  _Block_object_dispose(buf, 8);
LABEL_24:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

id __125__TRIExperimentDatabase_addExperimentWithExperimentDeployment_environment_type_status_startDate_endDate_namespaces_artifact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 name];
  [v4 addObject:v5];

  return v4;
}

uint64_t __125__TRIExperimentDatabase_addExperimentWithExperimentDeployment_environment_type_status_startDate_endDate_namespaces_artifact___block_invoke_48(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 db];
  sqlite3_set_last_insert_rowid([v4 handle], 0x8000000000000000);

  v5 = [v3 db];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __125__TRIExperimentDatabase_addExperimentWithExperimentDeployment_environment_type_status_startDate_endDate_namespaces_artifact___block_invoke_2;
  v38[3] = &unk_279DE1708;
  v42 = *(a1 + 96);
  v6 = *(a1 + 32);
  v43 = *(a1 + 100);
  v41 = *(a1 + 88);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v39 = v11;
  v40 = v10;
  v12 = [*(*(a1 + 64) + 8) generalErrorHandlerWithOutError:0];
  LOBYTE(v7) = [v5 prepAndRunQuery:@" INSERT OR IGNORE INTO experiments(    deploymentEnvironment onPrep:experimentId onRow:deploymentId onError:{type, status, startSecondsFromEpoch, endSecondsFromEpoch, artifact, experimentType) VALUES(    :deployment_env, :experiment_id, :deployment_id, :type, :status, :start_seconds, :end_seconds, :artifact, :experiment_type);", v38, 0, v12}];

  if (v7)
  {
    v13 = [v3 db];
    insert_rowid = sqlite3_last_insert_rowid([v13 handle]);

    v32 = insert_rowid;
    if (insert_rowid == 0x8000000000000000)
    {
      v15 = *(*(a1 + 80) + 8);
      v16 = 2;
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = *(a1 + 72);
      v18 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v34 + 1) + 8 * i);
            v23 = objc_autoreleasePoolPush();
            v24 = v3;
            v25 = [v3 db];
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __125__TRIExperimentDatabase_addExperimentWithExperimentDeployment_environment_type_status_startDate_endDate_namespaces_artifact___block_invoke_3;
            v33[3] = &unk_279DE1538;
            v33[4] = v22;
            v33[5] = v32;
            v26 = [*(*(a1 + 64) + 8) generalErrorHandlerWithOutError:0];
            v27 = [v25 prepAndRunQuery:@" INSERT INTO namespaces(    experiments_rowid onPrep:name onRow:compatibilityVersion) VALUES(    :experiments_rowid onError:{:name, :compatibility_version);", v33, 0, v26}];

            if (!v27)
            {
              *(*(*(a1 + 80) + 8) + 32) = 0;
              v28 = *MEMORY[0x277D42678];
              objc_autoreleasePoolPop(v23);

              v3 = v24;
              goto LABEL_16;
            }

            objc_autoreleasePoolPop(v23);
            v3 = v24;
          }

          v19 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v15 = *(*(a1 + 80) + 8);
      v16 = 1;
    }

    *(v15 + 32) = v16;
    v17 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 32) = 0;
    v17 = MEMORY[0x277D42678];
  }

  v28 = *v17;
LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

void __125__TRIExperimentDatabase_addExperimentWithExperimentDeployment_environment_type_status_startDate_endDate_namespaces_artifact___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  [v12 bindNamedParam:":deployment_env" toInt64:*(a1 + 72)];
  v3 = [*(a1 + 32) experimentId];
  [v12 bindNamedParam:":experiment_id" toNSString:v3];

  [v12 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
  [v12 bindNamedParam:":type" toInt64:*(a1 + 76)];
  [v12 bindNamedParam:":status" toInt64:*(a1 + 64)];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    [v4 timeIntervalSince1970];
    v6 = [v5 numberWithDouble:?];
    [v12 bindNamedParam:":start_seconds" toDoubleAsNSNumber:v6];
  }

  else
  {
    [v12 bindNamedParam:":start_seconds" toDoubleAsNSNumber:0];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    [v7 timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    [v12 bindNamedParam:":end_seconds" toDoubleAsNSNumber:v9];
  }

  else
  {
    [v12 bindNamedParam:":end_seconds" toDoubleAsNSNumber:0];
  }

  v10 = [*(a1 + 56) data];
  [v12 bindNamedParam:":artifact" toNSData:v10];

  v11 = [*(a1 + 56) experiment];
  [v12 bindNamedParam:":experiment_type" toInt64:{objc_msgSend(v11, "experimentType")}];
}

void __125__TRIExperimentDatabase_addExperimentWithExperimentDeployment_environment_type_status_startDate_endDate_namespaces_artifact___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  [v5 bindNamedParam:":experiments_rowid" toInt64:v3];
  v4 = [*(a1 + 32) name];
  [v5 bindNamedParam:":name" toNSString:v4];

  [v5 bindNamedParam:":compatibility_version" toInt64:{objc_msgSend(*(a1 + 32), "compatibilityVersion")}];
}

- (BOOL)setStatus:(int64_t)status forExperimentDeployment:(id)deployment usingTransaction:(id)transaction
{
  deploymentCopy = deployment;
  transactionCopy = transaction;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__TRIExperimentDatabase_setStatus_forExperimentDeployment_usingTransaction___block_invoke;
  v17[3] = &unk_279DE1560;
  statusCopy = status;
  v11 = deploymentCopy;
  v18 = v11;
  selfCopy = self;
  v20 = &v22;
  v12 = MEMORY[0x2743948D0](v17);
  v13 = v12;
  if (transactionCopy)
  {
    (*(v12 + 16))(v12, transactionCopy);
  }

  else
  {
    [(TRIExperimentDatabase *)self writeTransactionWithFailableBlock:v12];
  }

  v14 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v14;
}

uint64_t __76__TRIExperimentDatabase_setStatus_forExperimentDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__TRIExperimentDatabase_setStatus_forExperimentDeployment_usingTransaction___block_invoke_2;
  v12[3] = &unk_279DE1538;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:{0, v12[0], 3221225472, __76__TRIExperimentDatabase_setStatus_forExperimentDeployment_usingTransaction___block_invoke_2, &unk_279DE1538}];
  v6 = [v4 prepAndRunQuery:@" UPDATE experiments SET         status = :status WHERE         experimentId = :experiment_id     AND deploymentId = :deployment_id;" onPrep:v12 onRow:0 onError:v5];

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

void __76__TRIExperimentDatabase_setStatus_forExperimentDeployment_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  [v5 bindNamedParam:":status" toInt64:v3];
  v4 = [*(a1 + 32) experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
}

- (BOOL)setTreatmentId:(id)id forExperimentDeployment:(id)deployment usingTransaction:(id)transaction
{
  idCopy = id;
  deploymentCopy = deployment;
  transactionCopy = transaction;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __81__TRIExperimentDatabase_setTreatmentId_forExperimentDeployment_usingTransaction___block_invoke;
  v20 = &unk_279DE1758;
  v11 = idCopy;
  v21 = v11;
  v12 = deploymentCopy;
  v22 = v12;
  selfCopy = self;
  v24 = &v25;
  v13 = MEMORY[0x2743948D0](&v17);
  v14 = v13;
  if (transactionCopy)
  {
    (*(v13 + 16))(v13, transactionCopy);
  }

  else
  {
    [(TRIExperimentDatabase *)self writeTransactionWithFailableBlock:v13, v17, v18, v19, v20, v21];
  }

  v15 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v15;
}

uint64_t __81__TRIExperimentDatabase_setTreatmentId_forExperimentDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__TRIExperimentDatabase_setTreatmentId_forExperimentDeployment_usingTransaction___block_invoke_2;
  v12[3] = &unk_279DDFB20;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v5 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:{0, v12[0], 3221225472, __81__TRIExperimentDatabase_setTreatmentId_forExperimentDeployment_usingTransaction___block_invoke_2, &unk_279DDFB20}];
  v6 = [v4 prepAndRunQuery:@" UPDATE experiments SET         treatmentId = :treatment_id WHERE         experimentId = :experiment_id     AND deploymentId = :deployment_id;" onPrep:v12 onRow:0 onError:v5];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);

    v9 = *(*(a1 + 56) + 8);
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
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v10 = MEMORY[0x277D42678];
  }

  return *v10;
}

void __81__TRIExperimentDatabase_setTreatmentId_forExperimentDeployment_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":treatment_id" toNSString:v3];
  v4 = [*(a1 + 40) experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 40), "deploymentId")}];
}

- (BOOL)setTreatmentId:(id)id factorPackSetId:(id)setId forExperimentDeployment:(id)deployment usingTransaction:(id)transaction
{
  idCopy = id;
  setIdCopy = setId;
  deploymentCopy = deployment;
  transactionCopy = transaction;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__TRIExperimentDatabase_setTreatmentId_factorPackSetId_forExperimentDeployment_usingTransaction___block_invoke;
  v23[3] = &unk_279DE17A8;
  v15 = idCopy;
  v24 = v15;
  v16 = setIdCopy;
  v25 = v16;
  v17 = deploymentCopy;
  v26 = v17;
  selfCopy = self;
  v28 = &v29;
  v18 = MEMORY[0x2743948D0](v23);
  v19 = v18;
  if (transactionCopy)
  {
    (*(v18 + 16))(v18, transactionCopy);
  }

  else
  {
    [(TRIExperimentDatabase *)self writeTransactionWithFailableBlock:v18];
  }

  v20 = *(v30 + 24);

  _Block_object_dispose(&v29, 8);
  return v20;
}

uint64_t __97__TRIExperimentDatabase_setTreatmentId_factorPackSetId_forExperimentDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__TRIExperimentDatabase_setTreatmentId_factorPackSetId_forExperimentDeployment_usingTransaction___block_invoke_2;
  v12[3] = &unk_279DE1780;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v5 = [*(*(a1 + 56) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" UPDATE experiments SET         treatmentId = :treatment_id onPrep:factorPackSetId = :factor_pack_set_id WHERE         experimentId = :experiment_id     AND deploymentId = :deployment_id;" onRow:v12 onError:{0, v5}];

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

void __97__TRIExperimentDatabase_setTreatmentId_factorPackSetId_forExperimentDeployment_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":treatment_id" toNSString:v3];
  [v5 bindNamedParam:":factor_pack_set_id" toNSString:*(a1 + 40)];
  v4 = [*(a1 + 48) experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 48), "deploymentId")}];
}

- (BOOL)setTreatmentURL:(id)l forExperimentDeployment:(id)deployment namespaceName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  deploymentCopy = deployment;
  nameCopy = name;
  if (lCopy)
  {
    if (deploymentCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];

    if (nameCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"treatmentURL"}];

  if (!deploymentCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (nameCopy)
  {
    goto LABEL_4;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_4:
  triSaveURLToString = [lCopy triSaveURLToString];
  if (triSaveURLToString)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x2020000000;
    v28 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__TRIExperimentDatabase_setTreatmentURL_forExperimentDeployment_namespaceName___block_invoke;
    v20[3] = &unk_279DE17A8;
    v21 = deploymentCopy;
    v22 = triSaveURLToString;
    v23 = nameCopy;
    selfCopy = self;
    p_buf = &buf;
    [(TRIExperimentDatabase *)self writeTransactionWithFailableBlock:v20];
    v13 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = lCopy;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "failed to convert URL to string: %@", &buf, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

uint64_t __79__TRIExperimentDatabase_setTreatmentURL_forExperimentDeployment_namespaceName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__TRIExperimentDatabase_setTreatmentURL_forExperimentDeployment_namespaceName___block_invoke_2;
  v12[3] = &unk_279DE1780;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v5 = [*(*(a1 + 56) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" WITH experiments_rowids AS(    SELECT rowid FROM             experiments     WHERE             experimentId = :experiment_id         AND deploymentId = :deployment_id     LIMIT 1) UPDATE namespaces SET         treatmentPath = :treatment_path WHERE         name = :namespace_name     AND experiments_rowid IN experiments_rowids;" onPrep:v12 onRow:0 onError:v5];

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

void __79__TRIExperimentDatabase_setTreatmentURL_forExperimentDeployment_namespaceName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
  [v5 bindNamedParam:":treatment_path" toNSString:*(a1 + 40)];
  [v5 bindNamedParam:":namespace_name" toNSString:*(a1 + 48)];
}

- (BOOL)setManuallyTargeted:(BOOL)targeted forExperimentDeployment:(id)deployment usingTransaction:(id)transaction
{
  deploymentCopy = deployment;
  transactionCopy = transaction;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__TRIExperimentDatabase_setManuallyTargeted_forExperimentDeployment_usingTransaction___block_invoke;
  v17[3] = &unk_279DE17F8;
  targetedCopy = targeted;
  v11 = deploymentCopy;
  v18 = v11;
  selfCopy = self;
  v20 = &v22;
  v12 = MEMORY[0x2743948D0](v17);
  v13 = v12;
  if (transactionCopy)
  {
    (*(v12 + 16))(v12, transactionCopy);
  }

  else
  {
    [(TRIExperimentDatabase *)self writeTransactionWithFailableBlock:v12];
  }

  v14 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v14;
}

uint64_t __86__TRIExperimentDatabase_setManuallyTargeted_forExperimentDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__TRIExperimentDatabase_setManuallyTargeted_forExperimentDeployment_usingTransaction___block_invoke_2;
  v12[3] = &unk_279DE17D0;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:{0, v12[0], 3221225472, __86__TRIExperimentDatabase_setManuallyTargeted_forExperimentDeployment_usingTransaction___block_invoke_2, &unk_279DE17D0}];
  v6 = [v4 prepAndRunQuery:@" UPDATE experiments SET         isManuallyTargeted = :is_manually_targeted WHERE         experimentId = :experiment_id     AND deploymentId = :deployment_id;" onPrep:v12 onRow:0 onError:v5];

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

void __86__TRIExperimentDatabase_setManuallyTargeted_forExperimentDeployment_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  [v5 bindNamedParam:":is_manually_targeted" toInt64:v3];
  v4 = [*(a1 + 32) experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
}

- (BOOL)updateEndDate:(id)date forExperimentDeployment:(id)deployment usingTransaction:(id)transaction
{
  dateCopy = date;
  deploymentCopy = deployment;
  transactionCopy = transaction;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"updatedEndDate"}];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__TRIExperimentDatabase_updateEndDate_forExperimentDeployment_usingTransaction___block_invoke;
  v19[3] = &unk_279DE1758;
  v12 = dateCopy;
  v20 = v12;
  v13 = deploymentCopy;
  v21 = v13;
  selfCopy = self;
  v23 = &v24;
  v14 = MEMORY[0x2743948D0](v19);
  v15 = v14;
  if (transactionCopy)
  {
    (*(v14 + 16))(v14, transactionCopy);
  }

  else
  {
    [(TRIExperimentDatabase *)self writeTransactionWithFailableBlock:v14];
  }

  v16 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v16;
}

uint64_t __80__TRIExperimentDatabase_updateEndDate_forExperimentDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__TRIExperimentDatabase_updateEndDate_forExperimentDeployment_usingTransaction___block_invoke_2;
  v12[3] = &unk_279DDFB20;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v5 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:{0, v12[0], 3221225472, __80__TRIExperimentDatabase_updateEndDate_forExperimentDeployment_usingTransaction___block_invoke_2, &unk_279DDFB20}];
  v6 = [v4 prepAndRunQuery:@" UPDATE experiments SET         endSecondsFromEpoch = :end_seconds WHERE         experimentId = :experiment_id     AND deploymentId = :deployment_id;" onPrep:v12 onRow:0 onError:v5];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);

    v9 = *(*(a1 + 56) + 8);
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
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v10 = MEMORY[0x277D42678];
  }

  return *v10;
}

void __80__TRIExperimentDatabase_updateEndDate_forExperimentDeployment_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    [v3 timeIntervalSince1970];
    v5 = [v4 numberWithDouble:?];
    [v7 bindNamedParam:":end_seconds" toDoubleAsNSNumber:v5];
  }

  else
  {
    [v7 bindNamedParam:":end_seconds" toDoubleAsNSNumber:0];
  }

  v6 = [*(a1 + 40) experimentId];
  [v7 bindNamedParam:":experiment_id" toNSString:v6];

  [v7 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 40), "deploymentId")}];
}

- (BOOL)_enumerateExperimentRecordsMatchingWhereClause:(id)clause bind:(id)bind block:(id)block
{
  clauseCopy = clause;
  bindCopy = bind;
  blockCopy = block;
  v12 = blockCopy;
  if ((clauseCopy == 0) != (bindCopy == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"(whereClause == nil) == (bind == nil)"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:471 description:{@"Invalid parameter not satisfying: %@", @"block"}];

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
  v62 = __Block_byref_object_copy__19;
  v63 = __Block_byref_object_dispose__19;
  v64 = 0;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __83__TRIExperimentDatabase__enumerateExperimentRecordsMatchingWhereClause_bind_block___block_invoke;
  v58[3] = &unk_279DE1820;
  v58[4] = &v59;
  v14 = MEMORY[0x2743948D0](v58);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __83__TRIExperimentDatabase__enumerateExperimentRecordsMatchingWhereClause_bind_block___block_invoke_2;
  v54[3] = &unk_279DE1848;
  v57 = &v59;
  v15 = v13;
  v55 = v15;
  v16 = v12;
  v56 = v16;
  v17 = MEMORY[0x2743948D0](v54);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __83__TRIExperimentDatabase__enumerateExperimentRecordsMatchingWhereClause_bind_block___block_invoke_3;
  v52[3] = &unk_279DE1870;
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
  v41[2] = __83__TRIExperimentDatabase__enumerateExperimentRecordsMatchingWhereClause_bind_block___block_invoke_4;
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
  v33[2] = __83__TRIExperimentDatabase__enumerateExperimentRecordsMatchingWhereClause_bind_block___block_invoke_146;
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
  [(TRIExperimentDatabase *)self readTransactionWithFailableBlock:v33];
  v28 = *(v49 + 24);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v59, 8);

  objc_autoreleasePoolPop(context);
  return v28;
}

uint64_t __83__TRIExperimentDatabase__enumerateExperimentRecordsMatchingWhereClause_bind_block___block_invoke_2(uint64_t a1, _BYTE *a2)
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

uint64_t __83__TRIExperimentDatabase__enumerateExperimentRecordsMatchingWhereClause_bind_block___block_invoke_4(void *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"rowid" table:"experiments"];
  if (v4 == *(*(a1[8] + 8) + 24))
  {
    goto LABEL_16;
  }

  v5 = *(a1[9] + 8);
  (*(a1[5] + 16))();
  if (*(*(a1[9] + 8) + 24) != 1)
  {
    v7 = [v3 getInt64ForColumnName:"deploymentEnvironment" table:"experiments"];
    v8 = [v3 getNSStringForColumnName:"experimentId" table:"experiments"];
    v9 = [v3 getInt64ForColumnName:"deploymentId" table:"experiments"];
    v40 = [v3 getInt64ForColumnName:"type" table:"experiments"];
    v39 = [v3 getInt64ForColumnName:"status" table:"experiments"];
    v10 = [v3 getDoubleAsNSNumberForColumnName:"startSecondsFromEpoch" table:"experiments"];
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v10 doubleValue];
      v43 = [v11 initWithTimeIntervalSince1970:?];
    }

    else
    {
      v43 = 0;
    }

    v12 = [v3 getDoubleAsNSNumberForColumnName:"endSecondsFromEpoch" table:"experiments"];
    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v12 doubleValue];
      v14 = [v13 initWithTimeIntervalSince1970:?];
    }

    else
    {
      v14 = 0;
    }

    v42 = [v3 getNSStringForColumnName:"treatmentId" table:"experiments"];
    v41 = [v3 getNSStringForColumnName:"factorPackSetId" table:"experiments"];
    v15 = [v3 getInt64ForColumnName:"isManuallyTargeted" table:"experiments"];
    v16 = [v3 getNSDataForColumnName:"artifact" table:"experiments"];
    if (!v16)
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      [v34 handleFailureInMethod:a1[10] object:a1[4] file:@"TRIExperimentDatabase.m" lineNumber:545 description:@"Unexpected NULL artifact"];
    }

    v44 = 0;
    v17 = [TRIClientExperimentArtifact parseFromData:v16 error:&v44];
    if (!v17)
    {
      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v46 = v8;
        v47 = 1024;
        v48 = v9;
        v49 = 2114;
        v50 = v44;
        _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Failed to parse persisted TRIClientExperiment Artifact for %{public}@.%d: %{public}@", buf, 0x1Cu);
      }

      v6 = *MEMORY[0x277D42690];
      goto LABEL_23;
    }

    v18 = v17;
    v38 = v7;
    v19 = v14;

    v20 = [v3 getInt64ForColumnName:"experimentType" table:"experiments"];
    v21 = v8;
    if (!v8)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:a1[10] object:a1[4] file:@"TRIExperimentDatabase.m" lineNumber:557 description:@"Unexpected NULL experimentId"];
    }

    v22 = v15 != 0;
    v23 = [MEMORY[0x277D736C0] deploymentWithExperimentId:v21 deploymentId:v9];
    v24 = [TRIExperimentRecord alloc];
    LODWORD(v37) = v20;
    LOBYTE(v36) = v22;
    v25 = [(TRIExperimentRecord *)v24 initWithDeploymentEnvironment:v38 experimentDeployment:v23 treatmentId:v42 factorPackSetId:v41 type:v40 status:v39 startDate:v43 endDate:v19 namespaces:MEMORY[0x277CBEBF8] isManuallyTargeted:v36 artifact:v18 experimentType:v37];
    (*(a1[6] + 16))();

LABEL_16:
    v8 = [v3 getNSStringForColumnName:"name" table:"namespaces"];
    if (!v8)
    {
LABEL_22:
      *(*(a1[8] + 8) + 24) = v4;
      v6 = *MEMORY[0x277D42690];
LABEL_23:

      goto LABEL_24;
    }

    v26 = [v3 getInt64ForColumnName:"compatibilityVersion" table:"namespaces"];
    v27 = [v3 getNSStringForColumnName:"treatmentPath" table:"namespaces"];
    if (v27)
    {
      v28 = [MEMORY[0x277CBEBC0] triParseURLFromString:v27];
      if (v28)
      {
LABEL_21:
        v30 = [objc_alloc(MEMORY[0x277D73770]) initWithName:v8 compatibilityVersion:v26 treatmentURL:v28];
        (*(a1[7] + 16))();

        goto LABEL_22;
      }

      v29 = [MEMORY[0x277CCA890] currentHandler];
      [v29 handleFailureInMethod:a1[10] object:a1[4] file:@"TRIExperimentDatabase.m" lineNumber:584 description:{@"failed to parse url from %@", v27}];
    }

    v28 = 0;
    goto LABEL_21;
  }

  v6 = *MEMORY[0x277D42698];
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __83__TRIExperimentDatabase__enumerateExperimentRecordsMatchingWhereClause_bind_block___block_invoke_146(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = a1[4];
  if (!v6)
  {
    v6 = &stru_287FA0430;
  }

  v7 = [v5 initWithFormat:@" SELECT * FROM     experiments AS e LEFT JOIN     namespaces AS n ON     e.rowid = n.experiments_rowid %@ ORDER BY     e.rowid ASC, n.rowid ASC;", v6];
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

- (id)experimentRecordWithExperimentDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:636 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
  }

  experimentId = [deploymentCopy experimentId];

  if (!experimentId)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:637 description:{@"Invalid parameter not satisfying: %@", @"experiment.experimentId"}];
  }

  if (([deploymentCopy hasDeploymentId] & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"experiment.hasDeploymentId"}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__19;
  v21 = __Block_byref_object_dispose__19;
  v22 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__TRIExperimentDatabase_experimentRecordWithExperimentDeployment___block_invoke;
  v15[3] = &unk_279DDF860;
  v7 = deploymentCopy;
  v16 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__TRIExperimentDatabase_experimentRecordWithExperimentDeployment___block_invoke_2;
  v14[3] = &unk_279DE18E8;
  v14[4] = &v17;
  if ([(TRIExperimentDatabase *)self _enumerateExperimentRecordsMatchingWhereClause:@" WHERE         e.experimentId = :experiment_id     AND e.deploymentId = :deployment_id" bind:v15 block:v14])
  {
    v8 = v18[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __66__TRIExperimentDatabase_experimentRecordWithExperimentDeployment___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
}

- (BOOL)enumerateExperimentRecordsWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v6 = [(TRIExperimentDatabase *)self _enumerateExperimentRecordsMatchingWhereClause:0 bind:0 block:blockCopy];

  return v6;
}

- (BOOL)enumerateExperimentRecordsMatchingExperimentId:(id)id block:(id)block
{
  idCopy = id;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:667 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__TRIExperimentDatabase_enumerateExperimentRecordsMatchingExperimentId_block___block_invoke;
  v13[3] = &unk_279DDF860;
  v14 = idCopy;
  v9 = idCopy;
  v10 = [(TRIExperimentDatabase *)self _enumerateExperimentRecordsMatchingWhereClause:@" WHERE e.experimentId = :experiment_id" bind:v13 block:blockCopy];

  return v10;
}

- (BOOL)enumerateExperimentRecordsMatchingStatuses:(id)statuses block:(id)block
{
  statusesCopy = statuses;
  blockCopy = block;
  if (!statusesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:679 description:{@"Invalid parameter not satisfying: %@", @"statuses"}];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__TRIExperimentDatabase_enumerateExperimentRecordsMatchingStatuses_block___block_invoke;
  v13[3] = &unk_279DDF860;
  v14 = statusesCopy;
  v9 = statusesCopy;
  v10 = [(TRIExperimentDatabase *)self _enumerateExperimentRecordsMatchingWhereClause:@" WHERE e.status IN _pas_nsset(:status_set)" bind:v13 block:blockCopy];

  return v10;
}

- (BOOL)enumerateExperimentRecordsMatchingNamespaceName:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:691 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__TRIExperimentDatabase_enumerateExperimentRecordsMatchingNamespaceName_block___block_invoke;
  v13[3] = &unk_279DDF860;
  v14 = nameCopy;
  v9 = nameCopy;
  v10 = [(TRIExperimentDatabase *)self _enumerateExperimentRecordsMatchingWhereClause:@" WHERE n.name = :namespace_name" bind:v13 block:blockCopy];

  return v10;
}

- (BOOL)enumerateNamespaceRecordsForExperimentDeployment:(id)deployment usingTransaction:(id)transaction block:(id)block
{
  deploymentCopy = deployment;
  transactionCopy = transaction;
  blockCopy = block;
  v12 = blockCopy;
  if (deploymentCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:705 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__TRIExperimentDatabase_enumerateNamespaceRecordsForExperimentDeployment_usingTransaction_block___block_invoke;
  v21[3] = &unk_279DE1910;
  v13 = deploymentCopy;
  v26 = a2;
  v22 = v13;
  selfCopy = self;
  v14 = v12;
  v24 = v14;
  v25 = &v27;
  v15 = MEMORY[0x2743948D0](v21);
  v16 = v15;
  if (transactionCopy)
  {
    (*(v15 + 16))(v15, transactionCopy);
  }

  else
  {
    [(TRIExperimentDatabase *)self readTransactionWithFailableBlock:v15];
  }

  v17 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return v17;
}

uint64_t __97__TRIExperimentDatabase_enumerateNamespaceRecordsForExperimentDeployment_usingTransaction_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__TRIExperimentDatabase_enumerateNamespaceRecordsForExperimentDeployment_usingTransaction_block___block_invoke_2;
  v16[3] = &unk_279DDF860;
  v17 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__TRIExperimentDatabase_enumerateNamespaceRecordsForExperimentDeployment_usingTransaction_block___block_invoke_3;
  v12[3] = &unk_279DE15F8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v15 = *(a1 + 64);
  v13 = v4;
  v14 = v5;
  v6 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:{0, v12[0], 3221225472, __97__TRIExperimentDatabase_enumerateNamespaceRecordsForExperimentDeployment_usingTransaction_block___block_invoke_3, &unk_279DE15F8, v13}];
  v7 = [v3 prepAndRunQuery:@" WITH experiments_rowids AS(    SELECT rowid FROM             experiments     WHERE             experimentId = :experiment_id         AND deploymentId = :deployment_id     LIMIT 1) SELECT * FROM     namespaces WHERE     experiments_rowid IN experiments_rowids ORDER BY rowid ASC;" onPrep:v16 onRow:v12 onError:v6];

  *(*(*(a1 + 56) + 8) + 24) = v7;
  v8 = MEMORY[0x277D42670];
  v9 = MEMORY[0x277D42678];

  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return *v10;
}

void __97__TRIExperimentDatabase_enumerateNamespaceRecordsForExperimentDeployment_usingTransaction_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
}

uint64_t __97__TRIExperimentDatabase_enumerateNamespaceRecordsForExperimentDeployment_usingTransaction_block___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"name" table:0];
  if (!v4)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIExperimentDatabase.m" lineNumber:729 description:@"NULL namespaceName decoded from NOT NULL column"];
  }

  v5 = [v3 getInt64ForColumnName:"compatibilityVersion" table:0];
  v6 = [v3 getNSStringForColumnName:"treatmentPath" table:0];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] triParseURLFromString:v6];
    if (v7)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIExperimentDatabase.m" lineNumber:736 description:{@"failed to parse url from %@", v6}];
  }

  v7 = 0;
LABEL_7:
  v9 = [objc_alloc(MEMORY[0x277D73770]) initWithName:v4 compatibilityVersion:v5 treatmentURL:v7];
  v16 = 0;
  (*(a1[5] + 16))();
  v10 = v16;
  v11 = MEMORY[0x277D42698];
  v12 = MEMORY[0x277D42690];

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

- (id)treatmentURLsForExperimentDeployment:(id)deployment usingTransaction:(id)transaction
{
  deploymentCopy = deployment;
  transactionCopy = transaction;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:767 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
  }

  v9 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__TRIExperimentDatabase_treatmentURLsForExperimentDeployment_usingTransaction___block_invoke;
  v15[3] = &unk_279DE1938;
  v16 = v9;
  v10 = v9;
  if ([(TRIExperimentDatabase *)self enumerateNamespaceRecordsForExperimentDeployment:deploymentCopy usingTransaction:transactionCopy block:v15])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

void __79__TRIExperimentDatabase_treatmentURLsForExperimentDeployment_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 treatmentURL];
  v4 = *(a1 + 32);
  v5 = [v3 name];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)namespacesAreAvailableForExperiment:(id)experiment startDate:(id)date endDate:(id)endDate namespaces:(id)namespaces
{
  v31 = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  dateCopy = date;
  endDateCopy = endDate;
  namespacesCopy = namespaces;
  v15 = namespacesCopy;
  if (experimentCopy)
  {
    if (namespacesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:782 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];

    if (v15)
    {
LABEL_3:
      if (dateCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      dateCopy = objc_opt_new();
      if (endDateCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:783 description:{@"Invalid parameter not satisfying: %@", @"namespaces"}];

  if (!dateCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (endDateCopy)
  {
    goto LABEL_10;
  }

LABEL_9:
  endDateCopy = [MEMORY[0x277CBEAA8] distantFuture];
LABEL_10:
  if ([dateCopy compare:endDateCopy] == 1)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      experimentId = [experimentCopy experimentId];
      *buf = 138543618;
      *&buf[4] = experimentId;
      *&buf[12] = 1024;
      *&buf[14] = [experimentCopy deploymentId];
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Trying to enumerate records overlapping inverted time range for experiment: %{public}@, deployment:%d.", buf, 0x12u);
    }

    v19 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __90__TRIExperimentDatabase_namespacesAreAvailableForExperiment_startDate_endDate_namespaces___block_invoke;
    v24[3] = &unk_279DE1960;
    v25 = experimentCopy;
    v26 = dateCopy;
    v27 = endDateCopy;
    v28 = v15;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __90__TRIExperimentDatabase_namespacesAreAvailableForExperiment_startDate_endDate_namespaces___block_invoke_2;
    v23[3] = &unk_279DE18E8;
    v23[4] = buf;
    if ([(TRIExperimentDatabase *)self _enumerateExperimentRecordsMatchingWhereClause:@" WHERE         (e.experimentId != :experiment_id OR e.deploymentId != :deployment_id)     AND e.type IN (:type_update)     AND e.status IN (:status_enroll bind::status_active)     AND e.experimentType = 0     AND(            e.startSecondsFromEpoch IS NULL         OR  e.endSecondsFromEpoch IS NULL         OR  max(:start_seconds block:e.startSecondsFromEpoch) < min(:end_seconds, e.endSecondsFromEpoch)    )     AND n.name IN _pas_nsarray(:namespaces)", v24, v23])
    {
      v19 = *(*&buf[8] + 24) ^ 1;
    }

    else
    {
      v19 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __90__TRIExperimentDatabase_namespacesAreAvailableForExperiment_startDate_endDate_namespaces___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
  [v5 bindNamedParam:":type_update" toInt64:1];
  [v5 bindNamedParam:":status_enroll" toInt64:2];
  [v5 bindNamedParam:":status_active" toInt64:1];
  [*(a1 + 40) timeIntervalSince1970];
  [v5 bindNamedParam:":start_seconds" toDouble:?];
  [*(a1 + 48) timeIntervalSince1970];
  [v5 bindNamedParam:":end_seconds" toDouble:?];
  [v5 bindNamedParam:":namespaces" toNSArray:*(a1 + 56)];
}

uint64_t __90__TRIExperimentDatabase_namespacesAreAvailableForExperiment_startDate_endDate_namespaces___block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- ($61A80719B04F7407D3E47539F1B23CAA)removeExperimentRecordWithExperimentDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:832 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2810000000;
  v16 = &unk_26F7089E2;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__TRIExperimentDatabase_removeExperimentRecordWithExperimentDeployment___block_invoke;
  v10[3] = &unk_279DDF9C0;
  v10[4] = self;
  v6 = deploymentCopy;
  v11 = v6;
  v12 = &v13;
  [(TRIExperimentDatabase *)self writeTransactionWithFailableBlock:v10];
  v7.var0 = v14[4];

  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t __72__TRIExperimentDatabase_removeExperimentRecordWithExperimentDeployment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __72__TRIExperimentDatabase_removeExperimentRecordWithExperimentDeployment___block_invoke_2;
  v24 = &unk_279DDF860;
  v25 = *(a1 + 40);
  v5 = [v4 createTempTableContainingRowsFromQuery:@" SELECT rowid FROM         experiments WHERE         experimentId = :experiment_id     AND deploymentId = :deployment_id" bind:&v21 namePrefix:@"remove_exp_rowids" transaction:v3];

  if (!v5)
  {
    *(*(*(a1 + 48) + 8) + 32) = 0;
    v18 = MEMORY[0x277D42678];
LABEL_12:
    v19 = *v18;
    goto LABEL_13;
  }

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v6 initWithFormat:@" DELETE FROM     namespaces WHERE     experiments_rowid IN %@;", v5, v21, v22, v23, v24];
  v8 = [v3 db];
  v9 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
  v10 = [v8 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v9];

  if (v10)
  {

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" DELETE FROM     experiments WHERE     rowid IN %@;", v5];
    v11 = [v3 db];
    v12 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
    v13 = [v11 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v12];

    if (v13)
    {

      v14 = [v3 db];
      v15 = sqlite3_changes([v14 handle]);

      v16 = [*(*(a1 + 32) + 8) dropTableWithName:v5 transaction:v3];
      v17 = 1;
      if (v15 <= 0)
      {
        v17 = 2;
      }

      if (!v16)
      {
        v17 = 0;
      }

      *(*(*(a1 + 48) + 8) + 32) = v17;
      v18 = MEMORY[0x277D42670];
      if (!v16)
      {
        v18 = MEMORY[0x277D42678];
      }

      goto LABEL_12;
    }
  }

  *(*(*(a1 + 48) + 8) + 32) = 0;
  v19 = *MEMORY[0x277D42678];

LABEL_13:
  return v19;
}

void __72__TRIExperimentDatabase_removeExperimentRecordWithExperimentDeployment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 experimentId];
  [v5 bindNamedParam:":experiment_id" toNSString:v4];

  [v5 bindNamedParam:":deployment_id" toInt64:{objc_msgSend(*(a1 + 32), "deploymentId")}];
}

- (BOOL)hasRecordReferencingTreatmentId:(id)id withReferenceType:(unsigned int)type
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:906 description:{@"Invalid parameter not satisfying: %@", @"treatmentId"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__TRIExperimentDatabase_hasRecordReferencingTreatmentId_withReferenceType___block_invoke;
  v12[3] = &unk_279DE1988;
  v12[4] = self;
  typeCopy = type;
  v8 = idCopy;
  v13 = v8;
  v14 = &v16;
  [(TRIExperimentDatabase *)self readTransactionWithFailableBlock:v12];
  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __75__TRIExperimentDatabase_hasRecordReferencingTreatmentId_withReferenceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [v3 _statusTypesForFactorPackSetReferenceType:v4];
  v7 = [v5 db];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__TRIExperimentDatabase_hasRecordReferencingTreatmentId_withReferenceType___block_invoke_2;
  v16[3] = &unk_279DDFB20;
  v17 = *(a1 + 40);
  v18 = v6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__TRIExperimentDatabase_hasRecordReferencingTreatmentId_withReferenceType___block_invoke_3;
  v15[3] = &unk_279DDFC98;
  v15[4] = *(a1 + 48);
  v8 = *(*(a1 + 32) + 8);
  v9 = v6;
  v10 = [v8 generalErrorHandlerWithOutError:0];
  LODWORD(v5) = [v7 prepAndRunQuery:@" SELECT * FROM     experiments WHERE         treatmentId = :treatment_id     AND status IN _pas_nsset(:status_set) LIMIT 1" onPrep:v16 onRow:v15 onError:v10];

  v11 = MEMORY[0x277D42670];
  v12 = MEMORY[0x277D42678];

  if (v5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return *v13;
}

void __75__TRIExperimentDatabase_hasRecordReferencingTreatmentId_withReferenceType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":treatment_id" toNSString:v3];
  [v4 bindNamedParam:":status_set" toNSSet:*(a1 + 40)];
}

- (BOOL)hasRecordReferencingFactorPackSetId:(id)id withReferenceType:(unsigned int)type
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentDatabase.m" lineNumber:940 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__TRIExperimentDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke;
  v12[3] = &unk_279DE1988;
  v12[4] = self;
  typeCopy = type;
  v8 = idCopy;
  v13 = v8;
  v14 = &v16;
  [(TRIExperimentDatabase *)self readTransactionWithFailableBlock:v12];
  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __79__TRIExperimentDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [v3 _statusTypesForFactorPackSetReferenceType:v4];
  v7 = [v5 db];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__TRIExperimentDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke_2;
  v23[3] = &unk_279DDFB20;
  v24 = *(a1 + 40);
  v8 = v6;
  v25 = v8;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__TRIExperimentDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke_3;
  v22[3] = &unk_279DDFC98;
  v22[4] = *(a1 + 48);
  v9 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:0];
  v10 = [v7 prepAndRunQuery:@" SELECT * FROM     experiments WHERE         factorPackSetId = :factor_pack_set_id     AND status IN _pas_nsset(:status_set) LIMIT 1" onPrep:v23 onRow:v22 onError:v9];

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v11 = MEMORY[0x277D42670];
    if (!v10)
    {
      v11 = MEMORY[0x277D42678];
    }

    goto LABEL_10;
  }

  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x277D42678];
LABEL_10:
    v17 = *v11;
    goto LABEL_11;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__TRIExperimentDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke_4;
  v19[3] = &unk_279DE19B0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v20 = v13;
  v21 = v14;
  v15 = [v12 enumerateExperimentRecordsMatchingStatuses:v8 block:v19];
  v16 = MEMORY[0x277D42670];
  if (!v15)
  {
    v16 = MEMORY[0x277D42678];
  }

  v17 = *v16;

LABEL_11:
  return v17;
}

void __79__TRIExperimentDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":factor_pack_set_id" toNSString:v3];
  [v4 bindNamedParam:":status_set" toNSSet:*(a1 + 40)];
}

uint64_t __79__TRIExperimentDatabase_hasRecordReferencingFactorPackSetId_withReferenceType___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 hasCounterfactualTreatmentReferencingFactorPackSetId:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (id)_singularAndUniqueNamespaceInRecord:(id)record alreadyMapped:(id)mapped
{
  recordCopy = record;
  mappedCopy = mapped;
  namespaces = [recordCopy namespaces];
  v8 = [namespaces count];

  if (v8 <= 1)
  {
    namespaces2 = [recordCopy namespaces];
    firstObject = [namespaces2 firstObject];
    name = [firstObject name];

    if (name && ([mappedCopy objectForKeyedSubscript:name], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      v9 = name;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)activeEnvVarNamespaces
{
  v3 = objc_opt_new();
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEBUG, "Looking up active low level namespace", buf, 2u);
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __74__TRIExperimentDatabase_EnvVarNamespacesProviding__activeEnvVarNamespaces__block_invoke;
  v14 = &unk_279DE08A8;
  selfCopy = self;
  v16 = v3;
  v5 = v3;
  v6 = MEMORY[0x2743948D0](&v11);
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = [v7 initWithArray:{&unk_287FC4FD8, v11, v12, v13, v14, selfCopy}];
  [(TRIExperimentDatabase *)self enumerateExperimentRecordsMatchingStatuses:v8 block:v6];
  v9 = [v5 copy];

  return v9;
}

void __74__TRIExperimentDatabase_EnvVarNamespacesProviding__activeEnvVarNamespaces__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 artifact];
  v5 = [v4 encodedExperimentDefinition];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D73AD0]) initWithData:v5 error:0];
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v3 experimentDeployment];
      v17 = 138412290;
      v18 = v15;
      _os_log_debug_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEBUG, "Considering record for %@", &v17, 0xCu);
    }

    if (!v6)
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v3 experimentDeployment];
        v17 = 138412290;
        v18 = v12;
        _os_log_debug_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEBUG, "Skipping low level namespace generation for %@ because we had no experiment definition", &v17, 0xCu);
      }

      goto LABEL_16;
    }

    v8 = *(a1 + 32);
    v9 = [objc_opt_class() _singularAndUniqueNamespaceInRecord:v3 alreadyMapped:*(a1 + 40)];
    if (v9)
    {
      v10 = [v6 lowLevelConfiguration];
      v11 = [v10 targetedBundleIdArray];

      if ([v11 count])
      {
        [*(a1 + 40) setObject:v11 forKeyedSubscript:v9];
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = [v3 experimentDeployment];
        v17 = 138412290;
        v18 = v16;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Skipping low level namespace generation for %@ because it has no targeted bundle ids", &v17, 0xCu);
      }
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v13 = [v3 experimentDeployment];
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = 0;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Skipping low level namespace generation for %@ because we've seen namespace %@ before", &v17, 0x16u);
    }

    goto LABEL_15;
  }

LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)activeSysctlNamespaces
{
  v3 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__TRIExperimentDatabase_SysctlNamespacesProviding__activeSysctlNamespaces__block_invoke;
  v9[3] = &unk_279DE0728;
  v10 = v3;
  v4 = v3;
  v5 = MEMORY[0x2743948D0](v9);
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_287FC4FF0];
  [(TRIExperimentDatabase *)self enumerateExperimentRecordsMatchingStatuses:v6 block:v5];
  v7 = [v4 copy];

  return v7;
}

void __74__TRIExperimentDatabase_SysctlNamespacesProviding__activeSysctlNamespaces__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 artifact];
  v5 = [v4 encodedExperimentDefinition];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D73AD0]) initWithData:v5 error:0];
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v3 experimentDeployment];
      v21 = 138412290;
      v22 = v18;
      _os_log_debug_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEBUG, "Considering potential sysctl record %@", &v21, 0xCu);
    }

    if (v6)
    {
      v8 = [v3 namespaces];
      v9 = [v8 firstObject];
      v10 = [v9 name];

      if (v10 && ([v3 namespaces], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12 == 1))
      {
        v13 = [v6 lowLevelConfiguration];
        v14 = [v13 targetedBundleIdArray];

        if (v14 && (-[NSObject containsObject:](v14, "containsObject:", @"__tri_sysctl_experiment") & 1) != 0 || ([v6 lowLevelConfiguration], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "type"), v15, v16 == 2))
        {
          [*(a1 + 32) addObject:v10];
        }
      }

      else
      {
        v14 = TRILogCategory_Server();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v3 experimentDeployment];
          v21 = 138412290;
          v22 = v19;
          _os_log_debug_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEBUG, "Skipping %@ for sysctl namespace consideration because it doesn't have exactly one namespace", &v21, 0xCu);
        }
      }
    }

    else
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v3 experimentDeployment];
        v21 = 138412290;
        v22 = v20;
        _os_log_debug_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEBUG, "Skipping %@ for sysctl namespace consideration because we had no experiment definition", &v21, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)activeCountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_287FC5008];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__TRIExperimentDatabase_CountProviding__activeCountWithCompletion___block_invoke;
  v9[3] = &unk_279DE2148;
  v9[4] = &v14;
  v9[5] = &v10;
  v6 = MEMORY[0x2743948D0](v9);
  if ([(TRIExperimentDatabase *)self enumerateExperimentRecordsMatchingStatuses:v5 block:v6])
  {
    v7 = v15[3];
    v8 = v11[3];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  completionCopy[2](completionCopy, v7, v8);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __67__TRIExperimentDatabase_CountProviding__activeCountWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (![v5 experimentType])
  {
    v3 = [v5 deploymentEnvironment];
    v4 = 40;
    if (!v3)
    {
      v4 = 32;
    }

    ++*(*(*(a1 + v4) + 8) + 24);
  }
}

@end