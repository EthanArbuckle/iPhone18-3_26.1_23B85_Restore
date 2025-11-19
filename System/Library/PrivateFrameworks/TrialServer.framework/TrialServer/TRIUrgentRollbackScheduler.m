@interface TRIUrgentRollbackScheduler
- (BOOL)_experimentRecord:(id)a3 matchesExperimentId:(id)a4 oneOfDeploymentIds:(id)a5;
- (TRIUrgentRollbackScheduler)initWithExperimentDatabase:(id)a3 taskQueue:(id)a4;
- (id)_activeExperimentDeploymentsForRollbackExperiment:(id)a3 deploymentIds:(id)a4;
- (id)_ineligibleExperimentDeploymentsForRollbackExperiment:(id)a3 deploymentIds:(id)a4;
- (void)scheduleUrgentRollbackForExperiment:(id)a3 deploymentIds:(id)a4;
@end

@implementation TRIUrgentRollbackScheduler

- (TRIUrgentRollbackScheduler)initWithExperimentDatabase:(id)a3 taskQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRIUrgentRollbackScheduler;
  v9 = [(TRIUrgentRollbackScheduler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_experimentDatabase, a3);
  }

  return v10;
}

- (BOOL)_experimentRecord:(id)a3 matchesExperimentId:(id)a4 oneOfDeploymentIds:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 experimentDeployment];
  v11 = [v10 experimentId];
  v12 = [v11 isEqual:v8];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v9 experimentDeployment];

  v15 = [v13 numberWithInt:{objc_msgSend(v14, "deploymentId")}];
  LOBYTE(v9) = [v7 containsObject:v15];

  return v12 & v9;
}

- (id)_activeExperimentDeploymentsForRollbackExperiment:(id)a3 deploymentIds:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __94__TRIUrgentRollbackScheduler__activeExperimentDeploymentsForRollbackExperiment_deploymentIds___block_invoke;
  v19 = &unk_279DE2348;
  v20 = self;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = MEMORY[0x2743948D0](&v16);
  v13 = [(TRIUrgentRollbackScheduler *)self experimentDatabase:v16];
  [v13 enumerateActiveExperimentRecordsWithBlock:v12];

  v14 = [v9 copy];

  return v14;
}

void __94__TRIUrgentRollbackScheduler__activeExperimentDeploymentsForRollbackExperiment_deploymentIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v3;
  if ([*(a1 + 32) _experimentRecord:? matchesExperimentId:? oneOfDeploymentIds:?])
  {
    v6 = *(a1 + 56);
    v7 = MEMORY[0x277CCABB0];
    v8 = [v10 experimentDeployment];
    v9 = [v7 numberWithInt:{objc_msgSend(v8, "deploymentId")}];
    [v6 addObject:v9];
  }
}

- (id)_ineligibleExperimentDeploymentsForRollbackExperiment:(id)a3 deploymentIds:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_287FC5038];
  v10 = [(TRIUrgentRollbackScheduler *)self experimentDatabase];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __98__TRIUrgentRollbackScheduler__ineligibleExperimentDeploymentsForRollbackExperiment_deploymentIds___block_invoke;
  v19 = &unk_279DE2348;
  v20 = self;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  [v10 enumerateExperimentRecordsMatchingStatuses:v9 block:&v16];

  v14 = [v11 copy];

  return v14;
}

void __98__TRIUrgentRollbackScheduler__ineligibleExperimentDeploymentsForRollbackExperiment_deploymentIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  if ([*(a1 + 32) _experimentRecord:? matchesExperimentId:? oneOfDeploymentIds:?])
  {
    v6 = *(a1 + 56);
    v7 = [v8 experimentDeployment];
    [v6 addObject:v7];
  }
}

- (void)scheduleUrgentRollbackForExperiment:(id)a3 deploymentIds:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"TRIUrgentRollbackScheduler.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"experimentId"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"TRIUrgentRollbackScheduler.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"deploymentIds"}];

LABEL_3:
  v10 = [(TRIUrgentRollbackScheduler *)self _ineligibleExperimentDeploymentsForRollbackExperiment:v7 deploymentIds:v9];
  experimentDatabase = self->_experimentDatabase;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __80__TRIUrgentRollbackScheduler_scheduleUrgentRollbackForExperiment_deploymentIds___block_invoke;
  v32[3] = &unk_279DE1A98;
  v26 = v10;
  v33 = v26;
  v34 = self;
  [(TRIExperimentDatabase *)experimentDatabase writeTransactionWithFailableBlock:v32];
  [(TRIUrgentRollbackScheduler *)self _activeExperimentDeploymentsForRollbackExperiment:v7 deploymentIds:v9];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v12 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:startTime:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:startTime:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", v7, [v16 intValue], 0, 0, 1, 0);
        v18 = [(TRIUrgentRollbackScheduler *)self queue];
        v19 = [MEMORY[0x277D736C0] deploymentWithExperimentId:v7 deploymentId:{objc_msgSend(v16, "intValue")}];
        v20 = [v19 taskTag];
        [v18 cancelTasksWithTag:v20];

        v21 = [(TRIUrgentRollbackScheduler *)self queue];
        v22 = [TRITaskQueuingOptions optionsWithDuplicateTaskResolution:1];
        [v21 addTask:v17 options:v22];
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TRIUrgentRollbackScheduler_scheduleUrgentRollbackForExperiment_deploymentIds___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v23;
    *&v6 = 138412546;
    v21 = v6;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [*(*(a1 + 40) + 16) setStatus:3 forExperimentDeployment:v10 usingTransaction:{v3, v21, v22}];
        v12 = TRILogCategory_Server();
        v13 = v12;
        if (!v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v19 = [v10 experimentId];
            v20 = [v10 deploymentId];
            *buf = v21;
            v27 = v19;
            v28 = 1024;
            v29 = v20;
            _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to move ineligible experiment %@.%u to finished after emergency rollback", buf, 0x12u);
          }

          v16 = *MEMORY[0x277D42678];
          goto LABEL_15;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v10 experimentId];
          v15 = [v10 deploymentId];
          *buf = v21;
          v27 = v14;
          v28 = 1024;
          v29 = v15;
          _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Moving inactive experiment %@.%u to finished after emergency rollback", buf, 0x12u);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = *MEMORY[0x277D42670];
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end