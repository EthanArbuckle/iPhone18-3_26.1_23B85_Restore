@interface TRIExperimentUpdateProcessor
- (TRIExperimentUpdateProcessor)initWithExperimentDatabase:(id)database;
- (id)_updateExperimentEndDateWithDeployment:(id)deployment withNewEndDate:(id)date scheduleDeactivationTask:(BOOL)task scheduleDeactivationNow:(BOOL)now;
- (id)processUpdateOperationForExistingExperimentWithEndDate:(id)date withExperimentDeployment:(id)deployment;
@end

@implementation TRIExperimentUpdateProcessor

- (TRIExperimentUpdateProcessor)initWithExperimentDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = TRIExperimentUpdateProcessor;
  v6 = [(TRIExperimentUpdateProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentDatabase, database);
  }

  return v7;
}

- (id)processUpdateOperationForExistingExperimentWithEndDate:(id)date withExperimentDeployment:(id)deployment
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  deploymentCopy = deployment;
  v8 = [(TRIExperimentDatabase *)self->_experimentDatabase experimentRecordWithExperimentDeployment:deploymentCopy];
  if (v8)
  {
    v9 = dateCopy;
    date = [MEMORY[0x277CBEAA8] date];
    v11 = date;
    if (v9 && [date compare:v9] == 1)
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        experimentId = [deploymentCopy experimentId];
        v24 = 138543362;
        v25 = experimentId;
        _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_INFO, "Experiment update end date occurs in the past, will schedule task for now if relevant. ID: %{public}@", &v24, 0xCu);
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    status = [v8 status];
    if (status <= 1)
    {
      if (status)
      {
        if (status == 1)
        {
          v16 = [(TRIExperimentUpdateProcessor *)self _updateExperimentEndDateWithDeployment:deploymentCopy withNewEndDate:v9 scheduleDeactivationTask:1 scheduleDeactivationNow:v14];
LABEL_26:

          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (status != 4)
    {
      if (status == 3)
      {
        v18 = TRILogCategory_Server();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
LABEL_24:

          goto LABEL_25;
        }

        experimentId2 = [deploymentCopy experimentId];
        status2 = [v8 status];
        v24 = 138543618;
        v25 = experimentId2;
        v26 = 2048;
        v27 = status2;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_INFO, "Experiment update for an experiment in finished state, ignoring. ID: %{public}@, state:%ld", &v24, 0x16u);
LABEL_22:

        goto LABEL_24;
      }

      if (status != 2)
      {
LABEL_23:
        v18 = TRILogCategory_Server();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        experimentId2 = [deploymentCopy experimentId];
        status3 = [v8 status];
        v24 = 138543618;
        v25 = experimentId2;
        v26 = 2048;
        v27 = status3;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Experiment update for an experiment in unknown experiment state, ignoring. ID: %{public}@, state:%ld", &v24, 0x16u);
        goto LABEL_22;
      }
    }

    v17 = [(TRIExperimentUpdateProcessor *)self _updateExperimentEndDateWithDeployment:deploymentCopy withNewEndDate:v9 scheduleDeactivationTask:0 scheduleDeactivationNow:0];
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Failed to update experiment end date due to missing existing experiment record.", &v24, 2u);
  }

  v16 = 0;
LABEL_27:

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_updateExperimentEndDateWithDeployment:(id)deployment withNewEndDate:(id)date scheduleDeactivationTask:(BOOL)task scheduleDeactivationNow:(BOOL)now
{
  nowCopy = now;
  taskCopy = task;
  deploymentCopy = deployment;
  dateCopy = date;
  experimentDatabase = self->_experimentDatabase;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __135__TRIExperimentUpdateProcessor__updateExperimentEndDateWithDeployment_withNewEndDate_scheduleDeactivationTask_scheduleDeactivationNow___block_invoke;
  v20[3] = &unk_279DE54F0;
  v20[4] = self;
  v13 = dateCopy;
  v21 = v13;
  v14 = deploymentCopy;
  v22 = v14;
  v15 = 0;
  if (([(TRIExperimentDatabase *)experimentDatabase writeTransactionWithFailableBlock:v20]& 1) == 0 && taskCopy)
  {
    experimentId = [v14 experimentId];
    deploymentId = [v14 deploymentId];
    if (nowCopy)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    v15 = [TRIDeactivateTreatmentTask taskWithExperimentId:experimentId deploymentId:deploymentId startTime:v18 failOnUnrecognizedExperiment:0 triggerEvent:25 taskAttribution:0];
  }

  return v15;
}

uint64_t __135__TRIExperimentUpdateProcessor__updateExperimentEndDateWithDeployment_withNewEndDate_scheduleDeactivationTask_scheduleDeactivationNow___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [*(*(a1 + 32) + 8) updateEndDate:*(a1 + 40) forExperimentDeployment:*(a1 + 48) usingTransaction:a2];
  v4 = TRILogCategory_Server();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 48) experimentId];
      v7 = [*(a1 + 48) deploymentId];
      v8 = *(a1 + 40);
      v14 = 138543874;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Updated experiment end date for experiment id: %{public}@.%d. New End Date: %{public}@", &v14, 0x1Cu);
    }

    v9 = MEMORY[0x277D42670];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 48) experimentId];
      v13 = [*(a1 + 48) deploymentId];
      v14 = 138543618;
      v15 = v12;
      v16 = 1024;
      v17 = v13;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Failed to update experiment end date, ignoring. For experiment: %{public}@.%d", &v14, 0x12u);
    }

    v9 = MEMORY[0x277D42678];
  }

  result = *v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end