@interface SafeguardsManagingClient
- (BOOL)clearMitigationRecordsWithError:(id *)error;
- (BOOL)clearTargetProcessWithError:(id *)error;
- (BOOL)forceCPUViolationForProcess:(id)process error:(id *)error;
- (BOOL)forceDetectionWithStartTime:(id)time endTime:(id)endTime error:(id *)error;
- (BOOL)forceDetectorViolationForProcess:(id)process error:(id *)error;
- (BOOL)forceMidnightRoutine:(id *)routine;
- (BOOL)forceMitigation:(id)mitigation forProcess:(id)process withPercentage:(id)percentage withSeconds:(id)seconds withPenaltyBoxDuration:(id)duration error:(id *)error;
- (BOOL)getCpuPercentageTriggerForWindowEndDate:(id)date windowStartDate:(id)startDate crossedThreshold:(BOOL *)threshold score:(double *)score error:(id *)error;
- (BOOL)resetRuleParameters:(id)parameters error:(id *)error;
- (BOOL)sendCoalitionEntries:(id)entries error:(id *)error;
- (BOOL)setContextForIdentifier:(id)identifier withState:(id)state error:(id *)error;
- (BOOL)setDefaultsWithMaxFatalCount:(id)count withMaxNonFatal:(id)fatal withEnableMitigations:(id)mitigations withEnablePenaltyBox:(id)box withPercentage:(id)percentage withSeconds:(id)seconds withPenaltyBoxDuration:(id)duration withMitigationsPluggedIn:(id)self0 withMitigateXPCServices:(id)self1 error:(id *)self2;
- (BOOL)setInfoForProcess:(id)process withFatalCount:(id)count withNonFatalCount:(id)fatalCount withExitCount:(id)exitCount withPenaltyCount:(id)penaltyCount withPolicyMask:(id)mask error:(id *)error;
- (BOOL)setMaxRelaunchPollingInterval:(id)interval error:(id *)error;
- (BOOL)setPollingInterval:(id)interval error:(id *)error;
- (BOOL)setRelaunchPollingInterval:(id)interval error:(id *)error;
- (BOOL)setRestrictionsByProcessPerScenario:(id)scenario error:(id *)error;
- (BOOL)setRuleParameters:(id)parameters withWindowSize:(id)size withStepSize:(id)stepSize withMaxLookback:(id)lookback withDaemonOnly:(id)only error:(id *)error;
- (BOOL)setScenarioRefreshInterval:(id)interval error:(id *)error;
- (BOOL)setTargetProcessMitigationRecords:(id)records withError:(id *)error;
- (BOOL)setTargetProcessTo:(id)to withPercentage:(id)percentage withSeconds:(id)seconds withPenaltyBoxDuration:(id)duration error:(id *)error;
- (BOOL)setTriggerInterval:(id)interval error:(id *)error;
- (SafeguardsManagingClient)init;
- (id)getActiveScenarios:(id *)scenarios;
- (id)getDefaults:(id *)defaults;
- (id)getInfoForProcess:(id)process error:(id *)error;
- (id)getMaxRelaunchPollingInterval:(id *)interval;
- (id)getMitigationPolicy:(id *)policy;
- (id)getMonitoredList:(id *)list;
- (id)getPenaltyList:(id *)list;
- (id)getPollingInterval:(id *)interval;
- (id)getProcessesAffectedByScenarioMapWithError:(id *)error;
- (id)getRelaunchPollingInterval:(id *)interval;
- (id)getRestrictionsForProcess:(id)process forScenario:(id)scenario withError:(id *)error;
- (id)getScenarioRefreshInterval:(id *)interval;
- (id)getScenarios:(id *)scenarios;
- (id)getTargetProcess:(id *)process;
- (id)getTargetProcessMitigationRecords:(id *)records;
- (id)getTriggerInterval:(id *)interval;
- (void)init;
- (void)reportScheduledIntensiveWorkByProcesses:(id)processes;
@end

@implementation SafeguardsManagingClient

- (SafeguardsManagingClient)init
{
  v23.receiver = self;
  v23.super_class = SafeguardsManagingClient;
  v2 = [(SafeguardsManagingClient *)&v23 init];
  v3 = os_log_create("com.apple.computesafeguards", "safeguardsmanagingclient");
  logger = v2->_logger;
  v2->_logger = v3;

  v5 = _os_feature_enabled_impl();
  v2->_featureEnabled = v5;
  if (v5)
  {
    v6 = xpc_user_sessions_enabled();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4096;
    }

    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.computesafeguards.managing" options:v7];
    connection = v2->_connection;
    v2->_connection = v8;

    v10 = v2->_connection;
    if (managingClientInterface_onceToken != -1)
    {
      [SafeguardsManagingClient init];
    }

    [(NSXPCConnection *)v10 setRemoteObjectInterface:managingClientInterface_interface];
    if (v6)
    {
      LODWORD(location[0]) = 0;
      xpc_user_sessions_get_foreground_uid();
      _xpcConnection = [(NSXPCConnection *)v2->_connection _xpcConnection];
      xpc_connection_set_target_user_session_uid();
    }

    objc_initWeak(location, v2);
    v12 = v2->_connection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __32__SafeguardsManagingClient_init__block_invoke;
    v20[3] = &unk_1E7F18910;
    objc_copyWeak(&v21, location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v20];
    v13 = v2->_connection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __32__SafeguardsManagingClient_init__block_invoke_47;
    v18[3] = &unk_1E7F18910;
    objc_copyWeak(&v19, location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v18];
    [(NSXPCConnection *)v2->_connection resume];
    v14 = v2->_logger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BACB7000, v14, OS_LOG_TYPE_INFO, "Initialized connection", v17, 2u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = v2->_logger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BACB7000, v15, OS_LOG_TYPE_INFO, "Not setting up connection as feature is not enabled.", location, 2u);
    }
  }

  return v2;
}

void __32__SafeguardsManagingClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 logger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_INFO, "Connection to service interrupted", v5, 2u);
    }

    [WeakRetained setInterrupted:1];
  }
}

void __32__SafeguardsManagingClient_init__block_invoke_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 logger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_INFO, "Connection to service invalidated", v5, 2u);
    }
  }
}

- (void)reportScheduledIntensiveWorkByProcesses:(id)processes
{
  v12 = *MEMORY[0x1E69E9840];
  processesCopy = processes;
  if (self->_featureEnabled)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = processesCopy;
      _os_log_impl(&dword_1BACB7000, logger, OS_LOG_TYPE_DEFAULT, "Reporting %@ as now running intensive workloads", buf, 0xCu);
    }

    connection = self->_connection;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__SafeguardsManagingClient_reportScheduledIntensiveWorkByProcesses___block_invoke;
    v9[3] = &unk_1E7F18938;
    v9[4] = self;
    v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
    [v7 reportScheduledIntensiveWorkByProcesses:processesCopy];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68__SafeguardsManagingClient_reportScheduledIntensiveWorkByProcesses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__SafeguardsManagingClient_reportScheduledIntensiveWorkByProcesses___block_invoke_cold_1();
  }
}

- (id)getActiveScenarios:(id *)scenarios
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__SafeguardsManagingClient_getActiveScenarios___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__SafeguardsManagingClient_getActiveScenarios___block_invoke_48;
    v9[3] = &unk_1E7F18988;
    v9[4] = &v17;
    [v5 getActiveScenariosWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *scenarios = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__SafeguardsManagingClient_getActiveScenarios___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__SafeguardsManagingClient_getActiveScenarios___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getScenarios:(id *)scenarios
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__SafeguardsManagingClient_getScenarios___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__SafeguardsManagingClient_getScenarios___block_invoke_50;
    v9[3] = &unk_1E7F18988;
    v9[4] = &v17;
    [v5 getScenariosWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *scenarios = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __41__SafeguardsManagingClient_getScenarios___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __41__SafeguardsManagingClient_getScenarios___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getMitigationPolicy:(id *)policy
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SafeguardsManagingClient_getMitigationPolicy___block_invoke;
  v9[3] = &unk_1E7F18960;
  v9[4] = self;
  v9[5] = &v10;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SafeguardsManagingClient_getMitigationPolicy___block_invoke_51;
  v8[3] = &unk_1E7F189B0;
  v8[4] = &v16;
  [v5 getMitigationPolicyWithHandler:v8];

  if (policy)
  {
    *policy = v11[5];
  }

  v6 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __48__SafeguardsManagingClient_getMitigationPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__SafeguardsManagingClient_getMitigationPolicy___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getProcessesAffectedByScenarioMapWithError:(id *)error
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__SafeguardsManagingClient_getProcessesAffectedByScenarioMapWithError___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__SafeguardsManagingClient_getProcessesAffectedByScenarioMapWithError___block_invoke_53;
    v9[3] = &unk_1E7F189D8;
    v9[4] = &v17;
    [v5 getProcessesAffectedByScenarioMapWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *error = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __71__SafeguardsManagingClient_getProcessesAffectedByScenarioMapWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__SafeguardsManagingClient_getProcessesAffectedByScenarioMapWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getRestrictionsForProcess:(id)process forScenario:(id)scenario withError:(id *)error
{
  processCopy = process;
  scenarioCopy = scenario;
  if (self->_featureEnabled)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__0;
    v27 = __Block_byref_object_dispose__0;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    connection = self->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__SafeguardsManagingClient_getRestrictionsForProcess_forScenario_withError___block_invoke;
    v16[3] = &unk_1E7F18960;
    v16[4] = self;
    v16[5] = &v17;
    v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__SafeguardsManagingClient_getRestrictionsForProcess_forScenario_withError___block_invoke_55;
    v15[3] = &unk_1E7F18A00;
    v15[4] = &v23;
    [v11 getRestrictionsForProcess:processCopy forScenario:scenarioCopy withHandler:v15];

    v12 = v18[5];
    if (v12)
    {
      *error = v12;
    }

    v13 = v24[5];
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __76__SafeguardsManagingClient_getRestrictionsForProcess_forScenario_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SafeguardsManagingClient_getRestrictionsForProcess_forScenario_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getPollingInterval:(id *)interval
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__SafeguardsManagingClient_getPollingInterval___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__SafeguardsManagingClient_getPollingInterval___block_invoke_57;
    v9[3] = &unk_1E7F189B0;
    v9[4] = &v17;
    [v5 getPollingIntervalWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *interval = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__SafeguardsManagingClient_getPollingInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__SafeguardsManagingClient_getPollingInterval___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getRelaunchPollingInterval:(id *)interval
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__SafeguardsManagingClient_getRelaunchPollingInterval___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__SafeguardsManagingClient_getRelaunchPollingInterval___block_invoke_58;
    v9[3] = &unk_1E7F189B0;
    v9[4] = &v17;
    [v5 getRelaunchPollingIntervalWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *interval = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __55__SafeguardsManagingClient_getRelaunchPollingInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__SafeguardsManagingClient_getRelaunchPollingInterval___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getMaxRelaunchPollingInterval:(id *)interval
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__SafeguardsManagingClient_getMaxRelaunchPollingInterval___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__SafeguardsManagingClient_getMaxRelaunchPollingInterval___block_invoke_59;
    v9[3] = &unk_1E7F189B0;
    v9[4] = &v17;
    [v5 getMaxRelaunchPollingIntervalWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *interval = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __58__SafeguardsManagingClient_getMaxRelaunchPollingInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__SafeguardsManagingClient_getMaxRelaunchPollingInterval___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getTriggerInterval:(id *)interval
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__SafeguardsManagingClient_getTriggerInterval___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__SafeguardsManagingClient_getTriggerInterval___block_invoke_60;
    v9[3] = &unk_1E7F189B0;
    v9[4] = &v17;
    [v5 getTriggerIntervalWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *interval = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__SafeguardsManagingClient_getTriggerInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__SafeguardsManagingClient_getTriggerInterval___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getScenarioRefreshInterval:(id *)interval
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__SafeguardsManagingClient_getScenarioRefreshInterval___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__SafeguardsManagingClient_getScenarioRefreshInterval___block_invoke_61;
    v9[3] = &unk_1E7F189B0;
    v9[4] = &v17;
    [v5 getScenarioRefreshIntervalWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *interval = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __55__SafeguardsManagingClient_getScenarioRefreshInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__SafeguardsManagingClient_getScenarioRefreshInterval___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getTargetProcess:(id *)process
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__SafeguardsManagingClient_getTargetProcess___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__SafeguardsManagingClient_getTargetProcess___block_invoke_62;
    v9[3] = &unk_1E7F189D8;
    v9[4] = &v17;
    [v5 getTargetProcessWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *process = v6;
    }

    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __45__SafeguardsManagingClient_getTargetProcess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__SafeguardsManagingClient_getTargetProcess___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getInfoForProcess:(id)process error:(id *)error
{
  processCopy = process;
  if (self->_featureEnabled)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__SafeguardsManagingClient_getInfoForProcess_error___block_invoke;
    v13[3] = &unk_1E7F18960;
    v13[4] = self;
    v13[5] = &v14;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__SafeguardsManagingClient_getInfoForProcess_error___block_invoke_63;
    v12[3] = &unk_1E7F18A28;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 getInfoForProcess:processCopy withHandler:v12];

    v9 = v15[5];
    if (v9)
    {
      *error = v9;
      v9 = v15[5];
    }

    *error = v9;
    v10 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __52__SafeguardsManagingClient_getInfoForProcess_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__SafeguardsManagingClient_getInfoForProcess_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __52__SafeguardsManagingClient_getInfoForProcess_error___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)getDefaults:(id *)defaults
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__SafeguardsManagingClient_getDefaults___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__SafeguardsManagingClient_getDefaults___block_invoke_65;
    v9[3] = &unk_1E7F18A28;
    v9[4] = &v17;
    v9[5] = &v11;
    [v5 getDefaultsWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *defaults = v6;
      v6 = v12[5];
    }

    *defaults = v6;
    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __40__SafeguardsManagingClient_getDefaults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__SafeguardsManagingClient_getDefaults___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __40__SafeguardsManagingClient_getDefaults___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)getMonitoredList:(id *)list
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__SafeguardsManagingClient_getMonitoredList___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__SafeguardsManagingClient_getMonitoredList___block_invoke_66;
    v9[3] = &unk_1E7F18A28;
    v9[4] = &v17;
    v9[5] = &v11;
    [v5 getMonitoredListWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *list = v6;
      v6 = v12[5];
    }

    *list = v6;
    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __45__SafeguardsManagingClient_getMonitoredList___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__SafeguardsManagingClient_getMonitoredList___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __45__SafeguardsManagingClient_getMonitoredList___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)getPenaltyList:(id *)list
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__SafeguardsManagingClient_getPenaltyList___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__SafeguardsManagingClient_getPenaltyList___block_invoke_67;
    v9[3] = &unk_1E7F18A28;
    v9[4] = &v17;
    v9[5] = &v11;
    [v5 getPenaltyListWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *list = v6;
      v6 = v12[5];
    }

    *list = v6;
    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __43__SafeguardsManagingClient_getPenaltyList___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__SafeguardsManagingClient_getPenaltyList___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __43__SafeguardsManagingClient_getPenaltyList___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)getCpuPercentageTriggerForWindowEndDate:(id)date windowStartDate:(id)startDate crossedThreshold:(BOOL *)threshold score:(double *)score error:(id *)error
{
  if (!self->_featureEnabled)
  {
    return 0;
  }

  v21[6] = v10;
  v21[7] = v9;
  v21[14] = v7;
  v21[15] = v8;
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __113__SafeguardsManagingClient_getCpuPercentageTriggerForWindowEndDate_windowStartDate_crossedThreshold_score_error___block_invoke;
  v21[3] = &unk_1E7F18A50;
  v21[4] = self;
  v21[5] = error;
  startDateCopy = startDate;
  dateCopy = date;
  v18 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __113__SafeguardsManagingClient_getCpuPercentageTriggerForWindowEndDate_windowStartDate_crossedThreshold_score_error___block_invoke_68;
  v20[3] = &__block_descriptor_56_e23_v28__0B8d12__NSError_20l;
  v20[4] = threshold;
  v20[5] = score;
  v20[6] = error;
  [v18 getCpuPercentageTriggerForWindowEndDate:dateCopy windowStartDate:startDateCopy handler:v20];

  return error == 0;
}

void __113__SafeguardsManagingClient_getCpuPercentageTriggerForWindowEndDate_windowStartDate_crossedThreshold_score_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __113__SafeguardsManagingClient_getCpuPercentageTriggerForWindowEndDate_windowStartDate_crossedThreshold_score_error___block_invoke_cold_1();
  }

  v5 = v3;
  **(a1 + 40) = v3;
}

id __113__SafeguardsManagingClient_getCpuPercentageTriggerForWindowEndDate_windowStartDate_crossedThreshold_score_error___block_invoke_68(uint64_t a1, char a2, id a3, double a4)
{
  v6 = *(a1 + 40);
  **(a1 + 32) = a2;
  *v6 = a4;
  result = a3;
  **(a1 + 48) = a3;
  return result;
}

- (id)getTargetProcessMitigationRecords:(id *)records
{
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SafeguardsManagingClient_getTargetProcessMitigationRecords___block_invoke;
    v10[3] = &unk_1E7F18960;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__SafeguardsManagingClient_getTargetProcessMitigationRecords___block_invoke_71;
    v9[3] = &unk_1E7F18A98;
    v9[4] = &v17;
    v9[5] = &v11;
    [v5 getTargetProcessMitigationRecordsWithHandler:v9];

    v6 = v12[5];
    if (v6)
    {
      *records = v6;
      v6 = v12[5];
    }

    *records = v6;
    v7 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __62__SafeguardsManagingClient_getTargetProcessMitigationRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__SafeguardsManagingClient_getTargetProcessMitigationRecords___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __62__SafeguardsManagingClient_getTargetProcessMitigationRecords___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)setRestrictionsByProcessPerScenario:(id)scenario error:(id *)error
{
  scenarioCopy = scenario;
  if (self->_featureEnabled)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__SafeguardsManagingClient_setRestrictionsByProcessPerScenario_error___block_invoke;
    v13[3] = &unk_1E7F18960;
    v13[4] = self;
    v13[5] = &v14;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__SafeguardsManagingClient_setRestrictionsByProcessPerScenario_error___block_invoke_73;
    v12[3] = &unk_1E7F18AC0;
    v12[4] = &v14;
    [v8 modifyRestrictionsByProcessPerScenario:scenarioCopy withHandler:v12];

    v9 = v15[5];
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __70__SafeguardsManagingClient_setRestrictionsByProcessPerScenario_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__SafeguardsManagingClient_setRestrictionsByProcessPerScenario_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setPollingInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  if (self->_featureEnabled)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    connection = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__SafeguardsManagingClient_setPollingInterval_error___block_invoke;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v13;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v8 modifyPollingInterval:intervalCopy];

    v9 = v14[5];
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __53__SafeguardsManagingClient_setPollingInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__SafeguardsManagingClient_setPollingInterval_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setRelaunchPollingInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  if (self->_featureEnabled)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    connection = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SafeguardsManagingClient_setRelaunchPollingInterval_error___block_invoke;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v13;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v8 modifyRelaunchPollingInterval:intervalCopy];

    v9 = v14[5];
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __61__SafeguardsManagingClient_setRelaunchPollingInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SafeguardsManagingClient_setRelaunchPollingInterval_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setMaxRelaunchPollingInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  if (self->_featureEnabled)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    connection = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__SafeguardsManagingClient_setMaxRelaunchPollingInterval_error___block_invoke;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v13;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v8 modifyMaxRelaunchPollingInterval:intervalCopy];

    v9 = v14[5];
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __64__SafeguardsManagingClient_setMaxRelaunchPollingInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__SafeguardsManagingClient_setMaxRelaunchPollingInterval_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setTriggerInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  if (self->_featureEnabled)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    connection = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__SafeguardsManagingClient_setTriggerInterval_error___block_invoke;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v13;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v8 modifyTriggerInterval:intervalCopy];

    v9 = v14[5];
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __53__SafeguardsManagingClient_setTriggerInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__SafeguardsManagingClient_setTriggerInterval_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setScenarioRefreshInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  if (self->_featureEnabled)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    connection = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SafeguardsManagingClient_setScenarioRefreshInterval_error___block_invoke;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v13;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v8 modifyScenarioRefreshInterval:intervalCopy];

    v9 = v14[5];
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __61__SafeguardsManagingClient_setScenarioRefreshInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SafeguardsManagingClient_setScenarioRefreshInterval_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setTargetProcessTo:(id)to withPercentage:(id)percentage withSeconds:(id)seconds withPenaltyBoxDuration:(id)duration error:(id *)error
{
  toCopy = to;
  percentageCopy = percentage;
  secondsCopy = seconds;
  durationCopy = duration;
  if (self->_featureEnabled)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = 0;
    connection = self->_connection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __103__SafeguardsManagingClient_setTargetProcessTo_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke;
    v21[3] = &unk_1E7F18960;
    v21[4] = self;
    v21[5] = &v22;
    v17 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v17 modifyTargetProcess:toCopy withPercentage:percentageCopy withSeconds:secondsCopy withPenaltyBoxDuration:durationCopy];

    v18 = v23[5];
    v19 = v18 == 0;
    if (error && v18)
    {
      *error = v18;
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __103__SafeguardsManagingClient_setTargetProcessTo_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__SafeguardsManagingClient_setPollingInterval_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)clearTargetProcessWithError:(id *)error
{
  if (!self->_featureEnabled)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SafeguardsManagingClient_clearTargetProcessWithError___block_invoke;
  v9[3] = &unk_1E7F18960;
  v9[4] = self;
  v9[5] = &v10;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v5 clearTargetProcess];

  v6 = v11[5];
  v7 = v6 == 0;
  if (error && v6)
  {
    *error = v6;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __56__SafeguardsManagingClient_clearTargetProcessWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SafeguardsManagingClient_clearTargetProcessWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setInfoForProcess:(id)process withFatalCount:(id)count withNonFatalCount:(id)fatalCount withExitCount:(id)exitCount withPenaltyCount:(id)penaltyCount withPolicyMask:(id)mask error:(id *)error
{
  processCopy = process;
  countCopy = count;
  fatalCountCopy = fatalCount;
  exitCountCopy = exitCount;
  penaltyCountCopy = penaltyCount;
  maskCopy = mask;
  if (self->_featureEnabled)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    v33 = 0;
    connection = self->_connection;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __131__SafeguardsManagingClient_setInfoForProcess_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_error___block_invoke;
    v27[3] = &unk_1E7F18960;
    v27[4] = self;
    v27[5] = &v28;
    v22 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v27];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __131__SafeguardsManagingClient_setInfoForProcess_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_error___block_invoke_74;
    v26[3] = &unk_1E7F18AC0;
    v26[4] = &v28;
    [v22 modifyProcessInfoFor:processCopy withFatalCount:countCopy withNonFatalCount:fatalCountCopy withExitCount:exitCountCopy withPenaltyCount:penaltyCountCopy withPolicyMask:maskCopy withHandler:v26];

    v23 = v29[5];
    v24 = v23 == 0;
    if (error && v23)
    {
      *error = v23;
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __131__SafeguardsManagingClient_setInfoForProcess_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __131__SafeguardsManagingClient_setInfoForProcess_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setContextForIdentifier:(id)identifier withState:(id)state error:(id *)error
{
  identifierCopy = identifier;
  stateCopy = state;
  if (self->_featureEnabled)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    connection = self->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__SafeguardsManagingClient_setContextForIdentifier_withState_error___block_invoke;
    v15[3] = &unk_1E7F18960;
    v15[4] = self;
    v15[5] = &v16;
    v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v11 modifyContextForIdentifier:identifierCopy withState:stateCopy];

    v12 = v17[5];
    v13 = v12 == 0;
    if (error && v12)
    {
      *error = v12;
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __68__SafeguardsManagingClient_setContextForIdentifier_withState_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__SafeguardsManagingClient_setContextForIdentifier_withState_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setDefaultsWithMaxFatalCount:(id)count withMaxNonFatal:(id)fatal withEnableMitigations:(id)mitigations withEnablePenaltyBox:(id)box withPercentage:(id)percentage withSeconds:(id)seconds withPenaltyBoxDuration:(id)duration withMitigationsPluggedIn:(id)self0 withMitigateXPCServices:(id)self1 error:(id *)self2
{
  countCopy = count;
  fatalCopy = fatal;
  mitigationsCopy = mitigations;
  boxCopy = box;
  percentageCopy = percentage;
  secondsCopy = seconds;
  durationCopy = duration;
  inCopy = in;
  servicesCopy = services;
  if (self->_featureEnabled)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__0;
    v38 = __Block_byref_object_dispose__0;
    v39 = 0;
    connection = self->_connection;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __221__SafeguardsManagingClient_setDefaultsWithMaxFatalCount_withMaxNonFatal_withEnableMitigations_withEnablePenaltyBox_withPercentage_withSeconds_withPenaltyBoxDuration_withMitigationsPluggedIn_withMitigateXPCServices_error___block_invoke;
    v33[3] = &unk_1E7F18960;
    v33[4] = self;
    v33[5] = &v34;
    v27 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v33];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __221__SafeguardsManagingClient_setDefaultsWithMaxFatalCount_withMaxNonFatal_withEnableMitigations_withEnablePenaltyBox_withPercentage_withSeconds_withPenaltyBoxDuration_withMitigationsPluggedIn_withMitigateXPCServices_error___block_invoke_75;
    v32[3] = &unk_1E7F18AC0;
    v32[4] = &v34;
    [v27 modifyDefaults:countCopy withMaxNonFatal:fatalCopy withEnableMitigations:mitigationsCopy withEnablePenaltyBox:boxCopy withPercentage:percentageCopy withSeconds:secondsCopy withPenaltyBoxDuration:durationCopy withMitigationsPluggedIn:inCopy withMitigateXPCServices:servicesCopy withHandler:v32];

    v28 = v35[5];
    v29 = v28 == 0;
    if (error && v28)
    {
      *error = v28;
    }

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __221__SafeguardsManagingClient_setDefaultsWithMaxFatalCount_withMaxNonFatal_withEnableMitigations_withEnablePenaltyBox_withPercentage_withSeconds_withPenaltyBoxDuration_withMitigationsPluggedIn_withMitigateXPCServices_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __221__SafeguardsManagingClient_setDefaultsWithMaxFatalCount_withMaxNonFatal_withEnableMitigations_withEnablePenaltyBox_withPercentage_withSeconds_withPenaltyBoxDuration_withMitigationsPluggedIn_withMitigateXPCServices_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setTargetProcessMitigationRecords:(id)records withError:(id *)error
{
  recordsCopy = records;
  if (self->_featureEnabled)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SafeguardsManagingClient_setTargetProcessMitigationRecords_withError___block_invoke;
    v13[3] = &unk_1E7F18960;
    v13[4] = self;
    v13[5] = &v14;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__SafeguardsManagingClient_setTargetProcessMitigationRecords_withError___block_invoke_76;
    v12[3] = &unk_1E7F18AC0;
    v12[4] = &v14;
    [v8 modifyTargetProcessMitigationRecords:recordsCopy withHandler:v12];

    v9 = v15[5];
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __72__SafeguardsManagingClient_setTargetProcessMitigationRecords_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__SafeguardsManagingClient_setTargetProcessMitigationRecords_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)clearMitigationRecordsWithError:(id *)error
{
  if (!self->_featureEnabled)
  {
    return 0;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SafeguardsManagingClient_clearMitigationRecordsWithError___block_invoke;
  v10[3] = &unk_1E7F18960;
  v10[4] = self;
  v10[5] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__SafeguardsManagingClient_clearMitigationRecordsWithError___block_invoke_77;
  v9[3] = &unk_1E7F18AC0;
  v9[4] = &v11;
  [v5 clearMitigationRecordsWithHandler:v9];

  v6 = v12[5];
  v7 = v6 == 0;
  if (error && v6)
  {
    *error = v6;
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

void __60__SafeguardsManagingClient_clearMitigationRecordsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__SafeguardsManagingClient_clearMitigationRecordsWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setRuleParameters:(id)parameters withWindowSize:(id)size withStepSize:(id)stepSize withMaxLookback:(id)lookback withDaemonOnly:(id)only error:(id *)error
{
  parametersCopy = parameters;
  sizeCopy = size;
  stepSizeCopy = stepSize;
  lookbackCopy = lookback;
  onlyCopy = only;
  if (self->_featureEnabled)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    connection = self->_connection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __111__SafeguardsManagingClient_setRuleParameters_withWindowSize_withStepSize_withMaxLookback_withDaemonOnly_error___block_invoke;
    v25[3] = &unk_1E7F18960;
    v25[4] = self;
    v25[5] = &v26;
    v20 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __111__SafeguardsManagingClient_setRuleParameters_withWindowSize_withStepSize_withMaxLookback_withDaemonOnly_error___block_invoke_78;
    v24[3] = &unk_1E7F18960;
    v24[4] = self;
    v24[5] = &v26;
    [v20 setRuleParameters:parametersCopy withWindowSize:sizeCopy withStepSize:stepSizeCopy withMaxLookback:lookbackCopy withDaemonOnly:onlyCopy withHandler:v24];

    v21 = v27[5];
    v22 = v21 == 0;
    if (v21)
    {
      *error = v21;
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __111__SafeguardsManagingClient_setRuleParameters_withWindowSize_withStepSize_withMaxLookback_withDaemonOnly_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __111__SafeguardsManagingClient_setRuleParameters_withWindowSize_withStepSize_withMaxLookback_withDaemonOnly_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __111__SafeguardsManagingClient_setRuleParameters_withWindowSize_withStepSize_withMaxLookback_withDaemonOnly_error___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __111__SafeguardsManagingClient_setRuleParameters_withWindowSize_withStepSize_withMaxLookback_withDaemonOnly_error___block_invoke_cold_1();
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)resetRuleParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  if (self->_featureEnabled)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__SafeguardsManagingClient_resetRuleParameters_error___block_invoke;
    v13[3] = &unk_1E7F18960;
    v13[4] = self;
    v13[5] = &v14;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__SafeguardsManagingClient_resetRuleParameters_error___block_invoke_79;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v14;
    [v8 resetRuleParameters:parametersCopy withHandler:v12];

    v9 = v15[5];
    v10 = v9 == 0;
    if (v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __54__SafeguardsManagingClient_resetRuleParameters_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__SafeguardsManagingClient_resetRuleParameters_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __54__SafeguardsManagingClient_resetRuleParameters_error___block_invoke_79(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__SafeguardsManagingClient_resetRuleParameters_error___block_invoke_cold_1();
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)forceMitigation:(id)mitigation forProcess:(id)process withPercentage:(id)percentage withSeconds:(id)seconds withPenaltyBoxDuration:(id)duration error:(id *)error
{
  mitigationCopy = mitigation;
  processCopy = process;
  percentageCopy = percentage;
  secondsCopy = seconds;
  durationCopy = duration;
  if (self->_featureEnabled)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    connection = self->_connection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __111__SafeguardsManagingClient_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke;
    v25[3] = &unk_1E7F18960;
    v25[4] = self;
    v25[5] = &v26;
    v20 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __111__SafeguardsManagingClient_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke_80;
    v24[3] = &unk_1E7F18960;
    v24[4] = self;
    v24[5] = &v26;
    [v20 forceMitigation:mitigationCopy forProcess:processCopy withPercentage:percentageCopy withSeconds:secondsCopy withPenaltyBoxDuration:durationCopy withHandler:v24];

    v21 = v27[5];
    v22 = v21 == 0;
    if (v21)
    {
      *error = v21;
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __111__SafeguardsManagingClient_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __111__SafeguardsManagingClient_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __111__SafeguardsManagingClient_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __111__SafeguardsManagingClient_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke_cold_1();
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)forceMidnightRoutine:(id *)routine
{
  if (!self->_featureEnabled)
  {
    return 0;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__SafeguardsManagingClient_forceMidnightRoutine___block_invoke;
  v10[3] = &unk_1E7F18960;
  v10[4] = self;
  v10[5] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SafeguardsManagingClient_forceMidnightRoutine___block_invoke_81;
  v9[3] = &unk_1E7F18AC0;
  v9[4] = &v11;
  [v5 forceMidnightRoutineWithHandler:v9];

  v6 = v12[5];
  v7 = v6 == 0;
  if (routine && v6)
  {
    *routine = v6;
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

void __49__SafeguardsManagingClient_forceMidnightRoutine___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__SafeguardsManagingClient_forceMidnightRoutine___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)forceCPUViolationForProcess:(id)process error:(id *)error
{
  processCopy = process;
  if (self->_featureEnabled)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__SafeguardsManagingClient_forceCPUViolationForProcess_error___block_invoke;
    v13[3] = &unk_1E7F18960;
    v13[4] = self;
    v13[5] = &v14;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__SafeguardsManagingClient_forceCPUViolationForProcess_error___block_invoke_82;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v14;
    [v8 forceCPUViolationForProcess:processCopy withHandler:v12];

    v9 = v15[5];
    v10 = v9 == 0;
    if (v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __62__SafeguardsManagingClient_forceCPUViolationForProcess_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__SafeguardsManagingClient_forceCPUViolationForProcess_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __62__SafeguardsManagingClient_forceCPUViolationForProcess_error___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__SafeguardsManagingClient_forceCPUViolationForProcess_error___block_invoke_cold_1();
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)forceDetectorViolationForProcess:(id)process error:(id *)error
{
  processCopy = process;
  if (self->_featureEnabled)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__SafeguardsManagingClient_forceDetectorViolationForProcess_error___block_invoke;
    v13[3] = &unk_1E7F18960;
    v13[4] = self;
    v13[5] = &v14;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__SafeguardsManagingClient_forceDetectorViolationForProcess_error___block_invoke_83;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v14;
    [v8 forceDetectorViolationForProcess:processCopy withHandler:v12];

    v9 = v15[5];
    v10 = v9 == 0;
    if (v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __67__SafeguardsManagingClient_forceDetectorViolationForProcess_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__SafeguardsManagingClient_forceDetectorViolationForProcess_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __67__SafeguardsManagingClient_forceDetectorViolationForProcess_error___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__SafeguardsManagingClient_forceDetectorViolationForProcess_error___block_invoke_cold_1();
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)forceDetectionWithStartTime:(id)time endTime:(id)endTime error:(id *)error
{
  timeCopy = time;
  endTimeCopy = endTime;
  if (self->_featureEnabled)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    connection = self->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__SafeguardsManagingClient_forceDetectionWithStartTime_endTime_error___block_invoke;
    v16[3] = &unk_1E7F18960;
    v16[4] = self;
    v16[5] = &v17;
    v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__SafeguardsManagingClient_forceDetectionWithStartTime_endTime_error___block_invoke_84;
    v15[3] = &unk_1E7F18960;
    v15[4] = self;
    v15[5] = &v17;
    [v11 forceDetectionWithStartTime:timeCopy endTime:endTimeCopy withHandler:v15];

    v12 = v18[5];
    v13 = v12 == 0;
    if (v12)
    {
      *error = v12;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __70__SafeguardsManagingClient_forceDetectionWithStartTime_endTime_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__SafeguardsManagingClient_forceDetectionWithStartTime_endTime_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __70__SafeguardsManagingClient_forceDetectionWithStartTime_endTime_error___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__SafeguardsManagingClient_forceDetectionWithStartTime_endTime_error___block_invoke_cold_1();
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)sendCoalitionEntries:(id)entries error:(id *)error
{
  entriesCopy = entries;
  if (self->_featureEnabled)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__SafeguardsManagingClient_sendCoalitionEntries_error___block_invoke;
    v13[3] = &unk_1E7F18960;
    v13[4] = self;
    v13[5] = &v14;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__SafeguardsManagingClient_sendCoalitionEntries_error___block_invoke_85;
    v12[3] = &unk_1E7F18960;
    v12[4] = self;
    v12[5] = &v14;
    [v8 updateCoalitionEntries:entriesCopy withHandler:v12];

    v9 = v15[5];
    v10 = v9 == 0;
    if (v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __55__SafeguardsManagingClient_sendCoalitionEntries_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__SafeguardsManagingClient_sendCoalitionEntries_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __55__SafeguardsManagingClient_sendCoalitionEntries_error___block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__SafeguardsManagingClient_sendCoalitionEntries_error___block_invoke_cold_1();
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)init
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = a2;
  xpc_strerror();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_1BACB7000, v4, v5, "xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __68__SafeguardsManagingClient_reportScheduledIntensiveWorkByProcesses___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to report scheduled intensive work %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__SafeguardsManagingClient_getActiveScenarios___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy active scenarios %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__SafeguardsManagingClient_getScenarios___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy scenarios %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __48__SafeguardsManagingClient_getMitigationPolicy___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to get mitigation information, %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__SafeguardsManagingClient_getProcessesAffectedByScenarioMapWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy scenario map %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__SafeguardsManagingClient_getRestrictionsForProcess_forScenario_withError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy restrictions %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__SafeguardsManagingClient_getPollingInterval___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy polling interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__SafeguardsManagingClient_getRelaunchPollingInterval___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy relaunch polling interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__SafeguardsManagingClient_getMaxRelaunchPollingInterval___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy max relaunch polling interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__SafeguardsManagingClient_getTriggerInterval___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy trigger interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__SafeguardsManagingClient_getScenarioRefreshInterval___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to copy scenario refresh interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__SafeguardsManagingClient_getTargetProcess___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to get target process %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__SafeguardsManagingClient_getInfoForProcess_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to get process info %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __40__SafeguardsManagingClient_getDefaults___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to get defaults %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__SafeguardsManagingClient_getMonitoredList___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to get monitored list %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SafeguardsManagingClient_getPenaltyList___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to get penalty list %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __113__SafeguardsManagingClient_getCpuPercentageTriggerForWindowEndDate_windowStartDate_crossedThreshold_score_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to get cpu percentage trigger %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__SafeguardsManagingClient_getTargetProcessMitigationRecords___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to get mitigation records for target process %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__SafeguardsManagingClient_setRestrictionsByProcessPerScenario_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set restrictions %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__SafeguardsManagingClient_setPollingInterval_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set polling interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__SafeguardsManagingClient_setRelaunchPollingInterval_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set relaunch polling interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__SafeguardsManagingClient_setMaxRelaunchPollingInterval_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set relaunch polling interval max %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__SafeguardsManagingClient_setTriggerInterval_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set trigger interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__SafeguardsManagingClient_setScenarioRefreshInterval_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set scenario refresh interval %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__SafeguardsManagingClient_clearTargetProcessWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to clear target process %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __131__SafeguardsManagingClient_setInfoForProcess_withFatalCount_withNonFatalCount_withExitCount_withPenaltyCount_withPolicyMask_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set process info %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__SafeguardsManagingClient_setContextForIdentifier_withState_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set context %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __221__SafeguardsManagingClient_setDefaultsWithMaxFatalCount_withMaxNonFatal_withEnableMitigations_withEnablePenaltyBox_withPercentage_withSeconds_withPenaltyBoxDuration_withMitigationsPluggedIn_withMitigateXPCServices_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set defaults %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__SafeguardsManagingClient_setTargetProcessMitigationRecords_withError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set mitigation records %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SafeguardsManagingClient_clearMitigationRecordsWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to clear mitigation records %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __111__SafeguardsManagingClient_setRuleParameters_withWindowSize_withStepSize_withMaxLookback_withDaemonOnly_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to set rule parameters %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__SafeguardsManagingClient_resetRuleParameters_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to reset rule parameters %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __111__SafeguardsManagingClient_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to force mitigation %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__SafeguardsManagingClient_forceMidnightRoutine___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to force midnight routine %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__SafeguardsManagingClient_forceCPUViolationForProcess_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to force CPU violation %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__SafeguardsManagingClient_forceDetectorViolationForProcess_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to force detector violation %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__SafeguardsManagingClient_forceDetectionWithStartTime_endTime_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to force detection with startTime and endTime %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__SafeguardsManagingClient_sendCoalitionEntries_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1BACB7000, v0, v1, "Failed to send coalition entries %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end