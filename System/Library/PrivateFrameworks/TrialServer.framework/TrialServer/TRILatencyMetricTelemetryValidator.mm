@interface TRILatencyMetricTelemetryValidator
- (BOOL)_isRecordContainingAllowedLoggingNamespace:(id)namespace;
- (TRILatencyMetricTelemetryValidator)initWithRolloutDatabase:(id)database paths:(id)paths;
- (id)createRolloutFieldForDeployment:(id)deployment factorPackSetId:(id)id record:(id)record;
- (id)validateAndReturnTelemetryForDeployment:(id)deployment factorPackSetId:(id)id;
@end

@implementation TRILatencyMetricTelemetryValidator

- (TRILatencyMetricTelemetryValidator)initWithRolloutDatabase:(id)database paths:(id)paths
{
  databaseCopy = database;
  pathsCopy = paths;
  v16.receiver = self;
  v16.super_class = TRILatencyMetricTelemetryValidator;
  v9 = [(TRILatencyMetricTelemetryValidator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rolloutDb, database);
    v11 = [TRISetupAssistantFetchUtils getNamespaceNamesWithFetchDuringSetupAssistantEnabledWithTRIPaths:pathsCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    namespacesAllowedForLogging = v10->_namespacesAllowedForLogging;
    v10->_namespacesAllowedForLogging = v13;
  }

  return v10;
}

- (BOOL)_isRecordContainingAllowedLoggingNamespace:(id)namespace
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  artifact = [namespace artifact];
  namespaceNames = [artifact namespaceNames];
  v7 = [v4 setWithArray:namespaceNames];

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    namespacesAllowedForLogging = [(TRILatencyMetricTelemetryValidator *)self namespacesAllowedForLogging];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = namespacesAllowedForLogging;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Intersecting artifact namespaces: %@ with relevant namespaces: %@ for telemetry", &v13, 0x16u);
  }

  namespacesAllowedForLogging2 = [(TRILatencyMetricTelemetryValidator *)self namespacesAllowedForLogging];
  [v7 intersectSet:namespacesAllowedForLogging2];

  LOBYTE(namespacesAllowedForLogging2) = [v7 count] != 0;
  v11 = *MEMORY[0x277D85DE8];
  return namespacesAllowedForLogging2;
}

- (id)createRolloutFieldForDeployment:(id)deployment factorPackSetId:(id)id record:(id)record
{
  idCopy = id;
  recordCopy = record;
  deploymentCopy = deployment;
  v10 = objc_opt_new();
  rolloutId = [deploymentCopy rolloutId];

  [v10 setClientRolloutId:rolloutId];
  v12 = loggableFactorPackSetIdFromFactorPackSetId(idCopy);
  [v10 setClientFactorPackSetId:v12];

  rampId = [recordCopy rampId];

  if (rampId)
  {
    rampId2 = [recordCopy rampId];
    [v10 setClientRampId:rampId2];
  }

  activeFactorPackSetId = [recordCopy activeFactorPackSetId];
  if ([idCopy isEqual:activeFactorPackSetId])
  {
    activeTargetingRuleIndex = [recordCopy activeTargetingRuleIndex];

    if (!activeTargetingRuleIndex)
    {
      goto LABEL_7;
    }

    activeFactorPackSetId = [recordCopy targetedTargetingRuleIndex];
    [v10 setClientTargetingRuleGroupOrdinal:{objc_msgSend(activeFactorPackSetId, "intValue")}];
  }

LABEL_7:

  return v10;
}

- (id)validateAndReturnTelemetryForDeployment:(id)deployment factorPackSetId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  deploymentCopy = deployment;
  idCopy = id;
  rolloutDb = [(TRILatencyMetricTelemetryValidator *)self rolloutDb];
  v9 = [rolloutDb recordWithDeployment:deploymentCopy usingTransaction:0];

  if (v9)
  {
    if ([(TRILatencyMetricTelemetryValidator *)self _isRecordContainingAllowedLoggingNamespace:v9])
    {
      v10 = [(TRILatencyMetricTelemetryValidator *)self createRolloutFieldForDeployment:deploymentCopy factorPackSetId:idCopy record:v9];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = deploymentCopy;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unexpected failure to find record for rollout deployment %{public}@.", &v14, 0xCu);
    }
  }

  v10 = 0;
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end