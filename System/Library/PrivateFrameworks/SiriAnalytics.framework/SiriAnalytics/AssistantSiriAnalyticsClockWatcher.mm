@interface AssistantSiriAnalyticsClockWatcher
- (AssistantSiriAnalyticsClockWatcher)initWithInternalTelemetry:(id)telemetry sensitiveConditionsObservers:(id)observers messageResolution:(id)resolution preprocessor:(id)preprocessor logicalClocks:(id)clocks scheduler:(id)scheduler dataPolicyObserver:(id)observer;
- (void)_triggerDeviceFixedContextOnStreamUUID:(id)d;
- (void)_triggerSiriAccountInformation;
- (void)whiteRose:(id)rose derivativeClockCreated:(id)created rootClock:(id)clock;
- (void)whiteRose:(id)rose rootClockCreated:(id)created;
- (void)whiteRose:(id)rose rootClockDestroyed:(id)destroyed reason:(unint64_t)reason completion:(id)completion;
- (void)whiteRose:(id)rose willCreateRootClock:(id)clock completion:(id)completion;
@end

@implementation AssistantSiriAnalyticsClockWatcher

- (void)_triggerSiriAccountInformation
{
  v4 = objc_alloc_init(MEMORY[0x1E69CEAA8]);
  v3 = objc_alloc_init(MEMORY[0x1E69CEAB8]);
  [v4 setSiriAccountInformation:v3];

  [(SiriAnalyticsMessageResolutionPipeline *)self->_messageResolution resolveAndEmitMessage:v4 isolatedStreamUUID:0];
}

- (void)_triggerDeviceFixedContextOnStreamUUID:(id)d
{
  v4 = MEMORY[0x1E69CEAA8];
  dCopy = d;
  v12 = objc_alloc_init(v4);
  v6 = objc_alloc_init(MEMORY[0x1E69CEAB0]);
  [v12 setDeviceFixedContext:v6];

  deviceFixedContext = [v12 deviceFixedContext];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  [deviceFixedContext setTimeIntervalSince1970:?];

  deviceFixedContext2 = [v12 deviceFixedContext];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [deviceFixedContext2 setIsLowPowerModeEnabled:{objc_msgSend(processInfo, "isLowPowerModeEnabled")}];

  deviceFixedContext3 = [v12 deviceFixedContext];
  [deviceFixedContext3 setProgramCode:1];

  [(SiriAnalyticsMessageResolutionPipeline *)self->_messageResolution resolveAndEmitMessage:v12 isolatedStreamUUID:dCopy];
}

- (void)whiteRose:(id)rose derivativeClockCreated:(id)created rootClock:(id)clock
{
  v22 = *MEMORY[0x1E69E9840];
  createdCopy = created;
  clockCopy = clock;
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
    v19 = createdCopy;
    v20 = 2112;
    v21 = clockCopy;
    _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s Derivative clock created: %@ from parent: %@, triggering partial global dimension logging", &v16, 0x20u);
  }

  isolatedStreamUUID = [createdCopy isolatedStreamUUID];
  [(AssistantSiriAnalyticsClockWatcher *)self _triggerDeviceFixedContextOnStreamUUID:isolatedStreamUUID];

  logicalClocks = self->_logicalClocks;
  clockIdentifier = [createdCopy clockIdentifier];
  clockIdentifier2 = [clockCopy clockIdentifier];
  clockStatistics = [createdCopy clockStatistics];
  -[SiriAnalyticsLogicalClocksProvider createClock:rootClockIdentifier:startedOn:](logicalClocks, "createClock:rootClockIdentifier:startedOn:", clockIdentifier, clockIdentifier2, [clockStatistics startedOn]);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)whiteRose:(id)rose rootClockDestroyed:(id)destroyed reason:(unint64_t)reason completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  destroyedCopy = destroyed;
  completionCopy = completion;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v26 = completionCopy;
  v11 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[AssistantSiriAnalyticsClockWatcher whiteRose:rootClockDestroyed:reason:completion:]";
    v34 = 2112;
    v35 = destroyedCopy;
    _os_log_impl(&dword_1D9863000, v11, OS_LOG_TYPE_INFO, "%s Clock destroyed: %@", buf, 0x16u);
  }

  [(SiriAnalyticsInternalTelemetry *)self->_internalTelemetry trackLogicalClock:destroyedCopy];
  logicalClocks = self->_logicalClocks;
  clockIdentifier = [destroyedCopy clockIdentifier];
  clockStatistics = [destroyedCopy clockStatistics];
  -[SiriAnalyticsLogicalClocksProvider endClock:endedOn:endedReason:](logicalClocks, "endClock:endedOn:endedReason:", clockIdentifier, [clockStatistics endedOn], reason);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  derivativeClocks = [destroyedCopy derivativeClocks];
  v16 = [derivativeClocks countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(derivativeClocks);
        }

        v20 = self->_logicalClocks;
        clockIdentifier2 = [*(*(&v27 + 1) + 8 * i) clockIdentifier];
        clockStatistics2 = [destroyedCopy clockStatistics];
        -[SiriAnalyticsLogicalClocksProvider endClock:endedOn:endedReason:](v20, "endClock:endedOn:endedReason:", clockIdentifier2, [clockStatistics2 endedOn], reason);
      }

      v17 = [derivativeClocks countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  [(SiriAnalyticsLogicalClocksProvider *)self->_logicalClocks checkpoint];
  inactivityScheduler = self->_inactivityScheduler;
  if (inactivityScheduler)
  {
    v24 = v26;
    if (reason == 3)
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

- (void)whiteRose:(id)rose rootClockCreated:(id)created
{
  v20 = *MEMORY[0x1E69E9840];
  createdCopy = created;
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
    v19 = createdCopy;
    _os_log_impl(&dword_1D9863000, v6, OS_LOG_TYPE_INFO, "%s Clock created: %@, triggering global dimension logging", buf, 0x16u);
  }

  [(SiriAnalyticsClockInactivityScheduler *)self->_inactivityScheduler clockCreated];
  [(AssistantSiriAnalyticsClockWatcher *)self _triggerDeviceFixedContextOnStreamUUID:0];
  [(AssistantSiriAnalyticsClockWatcher *)self _triggerSiriAccountInformation];
  if (createdCopy)
  {
    logicalClocks = self->_logicalClocks;
    clockIdentifier = [createdCopy clockIdentifier];
    clockStatistics = [createdCopy clockStatistics];
    -[SiriAnalyticsLogicalClocksProvider createClock:rootClockIdentifier:startedOn:](logicalClocks, "createClock:rootClockIdentifier:startedOn:", clockIdentifier, 0, [clockStatistics startedOn]);
  }

  dataPolicyObserver = self->_dataPolicyObserver;
  clockIdentifier2 = [createdCopy clockIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__AssistantSiriAnalyticsClockWatcher_whiteRose_rootClockCreated___block_invoke;
  v14[3] = &unk_1E8587918;
  v15 = createdCopy;
  v12 = createdCopy;
  [(SiriAnalyticsDataCollectionPolicyClockObserver *)dataPolicyObserver rootClockCreatedWithClockIdentifier:clockIdentifier2 completion:v14];

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

- (void)whiteRose:(id)rose willCreateRootClock:(id)clock completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  clockCopy = clock;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__AssistantSiriAnalyticsClockWatcher_whiteRose_willCreateRootClock_completion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v9 = completionCopy;
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
    v20 = clockCopy;
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

- (AssistantSiriAnalyticsClockWatcher)initWithInternalTelemetry:(id)telemetry sensitiveConditionsObservers:(id)observers messageResolution:(id)resolution preprocessor:(id)preprocessor logicalClocks:(id)clocks scheduler:(id)scheduler dataPolicyObserver:(id)observer
{
  telemetryCopy = telemetry;
  observersCopy = observers;
  resolutionCopy = resolution;
  preprocessorCopy = preprocessor;
  clocksCopy = clocks;
  schedulerCopy = scheduler;
  observerCopy = observer;
  v26.receiver = self;
  v26.super_class = AssistantSiriAnalyticsClockWatcher;
  v18 = [(AssistantSiriAnalyticsClockWatcher *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_internalTelemetry, telemetry);
    objc_storeStrong(&v19->_sensitiveConditionsObservers, observers);
    objc_storeStrong(&v19->_messageResolution, resolution);
    objc_storeStrong(&v19->_preprocessor, preprocessor);
    objc_storeStrong(&v19->_logicalClocks, clocks);
    objc_storeStrong(&v19->_inactivityScheduler, scheduler);
    objc_storeStrong(&v19->_dataPolicyObserver, observer);
  }

  return v19;
}

@end