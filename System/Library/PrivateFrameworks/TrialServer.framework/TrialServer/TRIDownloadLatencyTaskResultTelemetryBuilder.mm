@interface TRIDownloadLatencyTaskResultTelemetryBuilder
- (TRIDownloadLatencyTaskResultTelemetryBuilder)initWithTelemetryValidator:(id)a3;
- (id)builtTelemetry;
- (void)_handleActivationTask:(id)a3 runResult:(id)a4;
- (void)_handleFetchTask:(id)a3 runResult:(id)a4;
- (void)updateWithTask:(id)a3 runResult:(id)a4;
@end

@implementation TRIDownloadLatencyTaskResultTelemetryBuilder

- (TRIDownloadLatencyTaskResultTelemetryBuilder)initWithTelemetryValidator:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TRIDownloadLatencyTaskResultTelemetryBuilder;
  v6 = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, a3);
    v8 = objc_opt_new();
    telemetryForDeployment = v7->_telemetryForDeployment;
    v7->_telemetryForDeployment = v8;
  }

  return v7;
}

- (void)updateWithTask:(id)a3 runResult:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _handleActivationTask:v7 runResult:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _handleFetchTask:v7 runResult:v6];
    }
  }
}

- (void)_handleActivationTask:(id)a3 runResult:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 deployment];
  validator = self->_validator;
  v10 = [v6 deployment];
  v11 = [v6 factorPackSetId];
  v12 = [(TRILatencyMetricTelemetryValidating *)validator validateAndReturnTelemetryForDeployment:v10 factorPackSetId:v11];

  if (v12)
  {
    if ([v7 reportResultToServer])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _updateBuiltTelemetryWithDeployment:v8 rolloutFields:v12 downloadStatus:v13];
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, "Skipping immediate download telemetry for task %{public}@ (likely because the namespace descriptor has not opted in)", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchTask:(id)a3 runResult:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 rolloutDeployment];
  if (v8)
  {
    validator = self->_validator;
    v10 = [v6 rolloutDeployment];
    v11 = [v6 factorPackSetId];
    v12 = [(TRILatencyMetricTelemetryValidating *)validator validateAndReturnTelemetryForDeployment:v10 factorPackSetId:v11];

    if (v12)
    {
      if ([v7 runStatus] == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = 3;
      }

      [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _updateBuiltTelemetryWithDeployment:v8 rolloutFields:v12 downloadStatus:v13];
    }

    else
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 138543362;
        v17 = v6;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, "Skipping immediate download telemetry for task %{public}@ (likely because the namespace descriptor has not opted in)", &v16, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)builtTelemetry
{
  v2 = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self telemetryForDeployment];
  v3 = [v2 allValues];

  return v3;
}

@end