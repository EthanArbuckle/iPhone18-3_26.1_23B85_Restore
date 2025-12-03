@interface TRIDownloadLatencyTaskResultTelemetryBuilder
- (TRIDownloadLatencyTaskResultTelemetryBuilder)initWithTelemetryValidator:(id)validator;
- (id)builtTelemetry;
- (void)_handleActivationTask:(id)task runResult:(id)result;
- (void)_handleFetchTask:(id)task runResult:(id)result;
- (void)updateWithTask:(id)task runResult:(id)result;
@end

@implementation TRIDownloadLatencyTaskResultTelemetryBuilder

- (TRIDownloadLatencyTaskResultTelemetryBuilder)initWithTelemetryValidator:(id)validator
{
  validatorCopy = validator;
  v11.receiver = self;
  v11.super_class = TRIDownloadLatencyTaskResultTelemetryBuilder;
  v6 = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, validator);
    v8 = objc_opt_new();
    telemetryForDeployment = v7->_telemetryForDeployment;
    v7->_telemetryForDeployment = v8;
  }

  return v7;
}

- (void)updateWithTask:(id)task runResult:(id)result
{
  taskCopy = task;
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _handleActivationTask:taskCopy runResult:resultCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _handleFetchTask:taskCopy runResult:resultCopy];
    }
  }
}

- (void)_handleActivationTask:(id)task runResult:(id)result
{
  v18 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  resultCopy = result;
  deployment = [taskCopy deployment];
  validator = self->_validator;
  deployment2 = [taskCopy deployment];
  factorPackSetId = [taskCopy factorPackSetId];
  v12 = [(TRILatencyMetricTelemetryValidating *)validator validateAndReturnTelemetryForDeployment:deployment2 factorPackSetId:factorPackSetId];

  if (v12)
  {
    if ([resultCopy reportResultToServer])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _updateBuiltTelemetryWithDeployment:deployment rolloutFields:v12 downloadStatus:v13];
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138543362;
      v17 = taskCopy;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, "Skipping immediate download telemetry for task %{public}@ (likely because the namespace descriptor has not opted in)", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchTask:(id)task runResult:(id)result
{
  v18 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  resultCopy = result;
  rolloutDeployment = [taskCopy rolloutDeployment];
  if (rolloutDeployment)
  {
    validator = self->_validator;
    rolloutDeployment2 = [taskCopy rolloutDeployment];
    factorPackSetId = [taskCopy factorPackSetId];
    v12 = [(TRILatencyMetricTelemetryValidating *)validator validateAndReturnTelemetryForDeployment:rolloutDeployment2 factorPackSetId:factorPackSetId];

    if (v12)
    {
      if ([resultCopy runStatus] == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = 3;
      }

      [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _updateBuiltTelemetryWithDeployment:rolloutDeployment rolloutFields:v12 downloadStatus:v13];
    }

    else
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 138543362;
        v17 = taskCopy;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, "Skipping immediate download telemetry for task %{public}@ (likely because the namespace descriptor has not opted in)", &v16, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)builtTelemetry
{
  telemetryForDeployment = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self telemetryForDeployment];
  allValues = [telemetryForDeployment allValues];

  return allValues;
}

@end