@interface TRIExperimentUpdateProcessor
- (TRIExperimentUpdateProcessor)initWithExperimentDatabase:(id)a3;
- (id)_updateExperimentEndDateWithDeployment:(id)a3 withNewEndDate:(id)a4 scheduleDeactivationTask:(BOOL)a5 scheduleDeactivationNow:(BOOL)a6;
- (id)processUpdateOperationForExistingExperimentWithEndDate:(id)a3 withExperimentDeployment:(id)a4;
@end

@implementation TRIExperimentUpdateProcessor

- (TRIExperimentUpdateProcessor)initWithExperimentDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIExperimentUpdateProcessor;
  v6 = [(TRIExperimentUpdateProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentDatabase, a3);
  }

  return v7;
}

- (id)processUpdateOperationForExistingExperimentWithEndDate:(id)a3 withExperimentDeployment:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TRIExperimentDatabase *)self->_experimentDatabase experimentRecordWithExperimentDeployment:v7];
  if (v8)
  {
    v9 = v6;
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = v10;
    if (v9 && [v10 compare:v9] == 1)
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v7 experimentId];
        v24 = 138543362;
        v25 = v13;
        _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_INFO, "Experiment update end date occurs in the past, will schedule task for now if relevant. ID: %{public}@", &v24, 0xCu);
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v8 status];
    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 == 1)
        {
          v16 = [(TRIExperimentUpdateProcessor *)self _updateExperimentEndDateWithDeployment:v7 withNewEndDate:v9 scheduleDeactivationTask:1 scheduleDeactivationNow:v14];
LABEL_26:

          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (v15 != 4)
    {
      if (v15 == 3)
      {
        v18 = TRILogCategory_Server();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
LABEL_24:

          goto LABEL_25;
        }

        v19 = [v7 experimentId];
        v20 = [v8 status];
        v24 = 138543618;
        v25 = v19;
        v26 = 2048;
        v27 = v20;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_INFO, "Experiment update for an experiment in finished state, ignoring. ID: %{public}@, state:%ld", &v24, 0x16u);
LABEL_22:

        goto LABEL_24;
      }

      if (v15 != 2)
      {
LABEL_23:
        v18 = TRILogCategory_Server();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        v19 = [v7 experimentId];
        v23 = [v8 status];
        v24 = 138543618;
        v25 = v19;
        v26 = 2048;
        v27 = v23;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Experiment update for an experiment in unknown experiment state, ignoring. ID: %{public}@, state:%ld", &v24, 0x16u);
        goto LABEL_22;
      }
    }

    v17 = [(TRIExperimentUpdateProcessor *)self _updateExperimentEndDateWithDeployment:v7 withNewEndDate:v9 scheduleDeactivationTask:0 scheduleDeactivationNow:0];
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

- (id)_updateExperimentEndDateWithDeployment:(id)a3 withNewEndDate:(id)a4 scheduleDeactivationTask:(BOOL)a5 scheduleDeactivationNow:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  experimentDatabase = self->_experimentDatabase;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __135__TRIExperimentUpdateProcessor__updateExperimentEndDateWithDeployment_withNewEndDate_scheduleDeactivationTask_scheduleDeactivationNow___block_invoke;
  v20[3] = &unk_279DE54F0;
  v20[4] = self;
  v13 = v11;
  v21 = v13;
  v14 = v10;
  v22 = v14;
  v15 = 0;
  if (([(TRIExperimentDatabase *)experimentDatabase writeTransactionWithFailableBlock:v20]& 1) == 0 && v7)
  {
    v16 = [v14 experimentId];
    v17 = [v14 deploymentId];
    if (v6)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    v15 = [TRIDeactivateTreatmentTask taskWithExperimentId:v16 deploymentId:v17 startTime:v18 failOnUnrecognizedExperiment:0 triggerEvent:25 taskAttribution:0];
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