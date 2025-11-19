@interface AssistantSiriAnalyticsClockWatcher
- (AssistantSiriAnalyticsClockWatcher)initWithInternalTelemetry:(id)a3 sensitiveConditionsObservers:(id)a4 messageResolution:(id)a5 preprocessor:(id)a6 logicalClocks:(id)a7 scheduler:(id)a8 dataPolicyObserver:(id)a9;
- (void)_triggerDeviceFixedContextOnStreamUUID:(id)a3;
- (void)_triggerSiriAccountInformation;
- (void)whiteRose:(id)a3 derivativeClockCreated:(id)a4 rootClock:(id)a5;
- (void)whiteRose:(id)a3 rootClockCreated:(id)a4;
- (void)whiteRose:(id)a3 rootClockDestroyed:(id)a4 reason:(unint64_t)a5 completion:(id)a6;
- (void)whiteRose:(id)a3 willCreateRootClock:(id)a4 completion:(id)a5;
@end

@implementation AssistantSiriAnalyticsClockWatcher

- (void)_triggerSiriAccountInformation
{
  v4 = objc_alloc_init(MEMORY[0x1E69CEAA8]);
  v3 = objc_alloc_init(MEMORY[0x1E69CEAB8]);
  [v4 setSiriAccountInformation:v3];

  [(SiriAnalyticsMessageResolutionPipeline *)self->_messageResolution resolveAndEmitMessage:v4 isolatedStreamUUID:0];
}

- (void)_triggerDeviceFixedContextOnStreamUUID:(id)a3
{
  v4 = MEMORY[0x1E69CEAA8];
  v5 = a3;
  v12 = objc_alloc_init(v4);
  v6 = objc_alloc_init(MEMORY[0x1E69CEAB0]);
  [v12 setDeviceFixedContext:v6];

  v7 = [v12 deviceFixedContext];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSince1970];
  [v7 setTimeIntervalSince1970:?];

  v9 = [v12 deviceFixedContext];
  v10 = [MEMORY[0x1E696AE30] processInfo];
  [v9 setIsLowPowerModeEnabled:{objc_msgSend(v10, "isLowPowerModeEnabled")}];

  v11 = [v12 deviceFixedContext];
  [v11 setProgramCode:1];

  [(SiriAnalyticsMessageResolutionPipeline *)self->_messageResolution resolveAndEmitMessage:v12 isolatedStreamUUID:v5];
}

- (void)whiteRose:(id)a3 derivativeClockCreated:(id)a4 rootClock:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v9 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "[AssistantSiriAnalyticsClockWatcher whiteRose:derivativeClockCreated:rootClock:]";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s Derivative clock created: %@ from parent: %@, triggering partial global dimension logging", &v16, 0x20u);
  }

  v10 = [v7 isolatedStreamUUID];
  [(AssistantSiriAnalyticsClockWatcher *)self _triggerDeviceFixedContextOnStreamUUID:v10];

  logicalClocks = self->_logicalClocks;
  v12 = [v7 clockIdentifier];
  v13 = [v8 clockIdentifier];
  v14 = [v7 clockStatistics];
  -[SiriAnalyticsLogicalClocksProvider createClock:rootClockIdentifier:startedOn:](logicalClocks, "createClock:rootClockIdentifier:startedOn:", v12, v13, [v14 startedOn]);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)whiteRose:(id)a3 rootClockDestroyed:(id)a4 reason:(unint64_t)a5 completion:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v26 = v10;
  v11 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[AssistantSiriAnalyticsClockWatcher whiteRose:rootClockDestroyed:reason:completion:]";
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_1D9863000, v11, OS_LOG_TYPE_INFO, "%s Clock destroyed: %@", buf, 0x16u);
  }

  [(SiriAnalyticsInternalTelemetry *)self->_internalTelemetry trackLogicalClock:v9];
  logicalClocks = self->_logicalClocks;
  v13 = [v9 clockIdentifier];
  v14 = [v9 clockStatistics];
  -[SiriAnalyticsLogicalClocksProvider endClock:endedOn:endedReason:](logicalClocks, "endClock:endedOn:endedReason:", v13, [v14 endedOn], a5);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [v9 derivativeClocks];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = self->_logicalClocks;
        v21 = [*(*(&v27 + 1) + 8 * i) clockIdentifier];
        v22 = [v9 clockStatistics];
        -[SiriAnalyticsLogicalClocksProvider endClock:endedOn:endedReason:](v20, "endClock:endedOn:endedReason:", v21, [v22 endedOn], a5);
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  [(SiriAnalyticsLogicalClocksProvider *)self->_logicalClocks checkpoint];
  inactivityScheduler = self->_inactivityScheduler;
  if (inactivityScheduler)
  {
    v24 = v26;
    if (a5 == 3)
    {
      [(SiriAnalyticsClockInactivityScheduler *)inactivityScheduler destroyInactivityTimer];
      [(SiriAnalyticsPreprocessor *)self->_preprocessor triggerWithReason:2 completion:v26];
    }

    else
    {
      [(SiriAnalyticsClockInactivityScheduler *)inactivityScheduler clockExpiredWithCompletion:v26];
    }
  }

  else
  {
    v24 = v26;
    v26[2](v26);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)whiteRose:(id)a3 rootClockCreated:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[AssistantSiriAnalyticsClockWatcher whiteRose:rootClockCreated:]";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1D9863000, v6, OS_LOG_TYPE_INFO, "%s Clock created: %@, triggering global dimension logging", buf, 0x16u);
  }

  [(SiriAnalyticsClockInactivityScheduler *)self->_inactivityScheduler clockCreated];
  [(AssistantSiriAnalyticsClockWatcher *)self _triggerDeviceFixedContextOnStreamUUID:0];
  [(AssistantSiriAnalyticsClockWatcher *)self _triggerSiriAccountInformation];
  if (v5)
  {
    logicalClocks = self->_logicalClocks;
    v8 = [v5 clockIdentifier];
    v9 = [v5 clockStatistics];
    -[SiriAnalyticsLogicalClocksProvider createClock:rootClockIdentifier:startedOn:](logicalClocks, "createClock:rootClockIdentifier:startedOn:", v8, 0, [v9 startedOn]);
  }

  dataPolicyObserver = self->_dataPolicyObserver;
  v11 = [v5 clockIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__AssistantSiriAnalyticsClockWatcher_whiteRose_rootClockCreated___block_invoke;
  v14[3] = &unk_1E8587918;
  v15 = v5;
  v12 = v5;
  [(SiriAnalyticsDataCollectionPolicyClockObserver *)dataPolicyObserver rootClockCreatedWithClockIdentifier:v11 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __65__AssistantSiriAnalyticsClockWatcher_whiteRose_rootClockCreated___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 clockIdentifier];
    v7 = 136315394;
    v8 = "[AssistantSiriAnalyticsClockWatcher whiteRose:rootClockCreated:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1D9863000, v4, OS_LOG_TYPE_INFO, "%s Finished checking data policy for: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)whiteRose:(id)a3 willCreateRootClock:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__AssistantSiriAnalyticsClockWatcher_whiteRose_willCreateRootClock_completion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v9 = v8;
  v16 = v9;
  v10 = _Block_copy(aBlock);
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v11 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    sensitiveConditionsObservers = self->_sensitiveConditionsObservers;
    *buf = 136315650;
    v18 = "[AssistantSiriAnalyticsClockWatcher whiteRose:willCreateRootClock:completion:]";
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = sensitiveConditionsObservers;
    _os_log_impl(&dword_1D9863000, v11, OS_LOG_TYPE_INFO, "%s Will create: %@, fetching sensitive conditions from %@", buf, 0x20u);
  }

  v13 = self->_sensitiveConditionsObservers;
  if (v13)
  {
    [(SiriAnalyticsSensitiveConditionsObservers *)v13 pollAllObserversWithCompletion:v10];
  }

  else
  {
    v10[2](v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __79__AssistantSiriAnalyticsClockWatcher_whiteRose_willCreateRootClock_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (AssistantSiriAnalyticsClockWatcher)initWithInternalTelemetry:(id)a3 sensitiveConditionsObservers:(id)a4 messageResolution:(id)a5 preprocessor:(id)a6 logicalClocks:(id)a7 scheduler:(id)a8 dataPolicyObserver:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = AssistantSiriAnalyticsClockWatcher;
  v18 = [(AssistantSiriAnalyticsClockWatcher *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_internalTelemetry, a3);
    objc_storeStrong(&v19->_sensitiveConditionsObservers, a4);
    objc_storeStrong(&v19->_messageResolution, a5);
    objc_storeStrong(&v19->_preprocessor, a6);
    objc_storeStrong(&v19->_logicalClocks, a7);
    objc_storeStrong(&v19->_inactivityScheduler, a8);
    objc_storeStrong(&v19->_dataPolicyObserver, a9);
  }

  return v19;
}

@end