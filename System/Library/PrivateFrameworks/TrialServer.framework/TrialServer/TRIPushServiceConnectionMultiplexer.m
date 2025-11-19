@interface TRIPushServiceConnectionMultiplexer
- (TRIPushServiceConnectionMultiplexer)initWithConnectionCreator:(id)a3 connectionDelegate:(id)a4 serverContext:(id)a5;
- (TRIPushServiceConnectionMultiplexer)initWithServerContext:(id)a3 taskQueue:(id)a4;
- (double)_debounceTime;
- (id)_channelIdFromExperimentId:(id)a3;
- (id)_channelIdFromRolloutDeployment:(id)a3;
- (id)_expectedChannelsForRolloutDeployments:(id)a3 experimentIds:(id)a4 maxChannelsAllowed:(unint64_t)a5;
- (void)_debouncedSubscribeToChannel:(id)a3;
- (void)_logFaultIfNotTestingIdentifier:(id)a3;
- (void)_setupDebounceTimerIfNeededWithGuardedData:(id)a3;
- (void)ensureSubscriptionsExistOnlyForRolloutDeployments:(id)a3 experimentIds:(id)a4 maxChannelsAllowed:(unint64_t)a5;
- (void)performQueuedSubscriptions;
- (void)subscribeForExperimentId:(id)a3;
- (void)subscribeForRolloutDeployment:(id)a3;
- (void)unsubscribeForExperimentId:(id)a3;
@end

@implementation TRIPushServiceConnectionMultiplexer

- (TRIPushServiceConnectionMultiplexer)initWithConnectionCreator:(id)a3 connectionDelegate:(id)a4 serverContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = TRIPushServiceConnectionMultiplexer;
  v12 = [(TRIPushServiceConnectionMultiplexer *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connectionCreator, a3);
    objc_storeStrong(&v13->_delegate, a4);
    v14 = [v9 connectionWithDelegate:v10 environment:0];
    currentConnection = v13->_currentConnection;
    v13->_currentConnection = v14;

    objc_storeStrong(&v13->_context, a5);
    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v18 = v16[2];
    v16[2] = v17;

    v19 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v16];
    lock = v13->_lock;
    v13->_lock = v19;

    v21 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.push-service-muxer-subscriptions"];
    subscriptionQueue = v13->_subscriptionQueue;
    v13->_subscriptionQueue = v21;
  }

  return v13;
}

- (void)_logFaultIfNotTestingIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(TRIPushServiceConnectionMultiplexer *)self _isTestingIdentifier:v4])
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Failed to create channel id for identifier %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscribeForRolloutDeployment:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TRICKServerEnvironmentReader currentEnvironment];
  v6 = +[TRISystemConfiguration sharedInstance];
  v7 = [v6 populationType];

  if (v7 == 3 && v5 == 3)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Skipping subscribing to cloud channel for rollout deployment: %@", &v13, 0xCu);
    }
  }

  else
  {
    v9 = [(TRIPushServiceConnectionMultiplexer *)self _channelIdFromRolloutDeployment:v4];
    if (v9)
    {
      [(TRIPushServiceConnectionMultiplexer *)self _debouncedSubscribeToChannel:v9];
    }

    else
    {
      v11 = [v4 rolloutId];
      [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)subscribeForExperimentId:(id)a3
{
  v5 = a3;
  v4 = [(TRIPushServiceConnectionMultiplexer *)self _channelIdFromExperimentId:?];
  if (v4)
  {
    [(TRIPushServiceConnectionMultiplexer *)self _debouncedSubscribeToChannel:v4];
  }

  else
  {
    [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:v5];
  }
}

- (void)_debouncedSubscribeToChannel:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__TRIPushServiceConnectionMultiplexer__debouncedSubscribeToChannel___block_invoke;
  v7[3] = &unk_279DE2258;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __68__TRIPushServiceConnectionMultiplexer__debouncedSubscribeToChannel___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _setupDebounceTimerIfNeededWithGuardedData:v4];
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Received request to subscribe %@. Queueing for later subscription", &v10, 0xCu);
  }

  v7 = v4[2];
  result = [v7 addObject:*(a1 + 40)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)_debounceTime
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"com.apple.triald.override.subscription-skip-debounce"];

  result = 10.0;
  if (v3)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Debouncing will be skipped because the defaults were set", v6, 2u);
    }

    return 0.0;
  }

  return result;
}

- (void)_setupDebounceTimerIfNeededWithGuardedData:(id)a3
{
  if (!*(a3 + 1))
  {
    v19 = v3;
    v20 = v4;
    v7 = a3;
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Setting up debounce timer for push channel subscriptions", buf, 2u);
    }

    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_subscriptionQueue);
    v10 = *(a3 + 1);
    *(a3 + 1) = v9;

    v11 = *(a3 + 1);
    [(TRIPushServiceConnectionMultiplexer *)self _debounceTime];
    v13 = dispatch_time(0, (v12 * 1000000000.0));
    dispatch_source_set_timer(v11, v13, 0xFFFFFFFFFFFFFFFFLL, 0x1312D00uLL);
    objc_initWeak(buf, self);
    v14 = *(a3 + 1);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __82__TRIPushServiceConnectionMultiplexer__setupDebounceTimerIfNeededWithGuardedData___block_invoke;
    handler[3] = &unk_279DE2280;
    objc_copyWeak(&v17, buf);
    dispatch_source_set_event_handler(v14, handler);
    v15 = *(a3 + 1);

    dispatch_activate(v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __82__TRIPushServiceConnectionMultiplexer__setupDebounceTimerIfNeededWithGuardedData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performQueuedSubscriptions];
}

- (void)performQueuedSubscriptions
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__TRIPushServiceConnectionMultiplexer_performQueuedSubscriptions__block_invoke;
  v3[3] = &unk_279DE22A8;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __65__TRIPushServiceConnectionMultiplexer_performQueuedSubscriptions__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(v3 + 2) allObjects];
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v4 count];
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Subscribing %lu queued channels", &v12, 0xCu);
  }

  v6 = [*(a1 + 32) currentConnection];
  [v6 subscribeToChannels:v4];

  v7 = *(v3 + 1);
  if (v7)
  {
    dispatch_source_cancel(v7);
  }

  v8 = objc_opt_new();
  v9 = *(v3 + 2);
  *(v3 + 2) = v8;

  v10 = *(v3 + 1);
  *(v3 + 1) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeForExperimentId:(id)a3
{
  v4 = a3;
  v5 = [(TRIPushServiceConnectionMultiplexer *)self _channelIdFromExperimentId:v4];
  v6 = v5;
  if (v5)
  {
    lock = self->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__TRIPushServiceConnectionMultiplexer_unsubscribeForExperimentId___block_invoke;
    v8[3] = &unk_279DE2258;
    v9 = v5;
    v10 = self;
    [(_PASLock *)lock runWithLockAcquired:v8];
  }

  else
  {
    [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:v4];
  }
}

void __66__TRIPushServiceConnectionMultiplexer_unsubscribeForExperimentId___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4[2] containsObject:*(a1 + 32)])
  {
    [v4[2] removeObject:*(a1 + 32)];
  }

  else
  {
    v3 = [*(a1 + 40) currentConnection];
    [v3 unsubscribeFromChannel:*(a1 + 32)];
  }
}

- (id)_channelIdFromRolloutDeployment:(id)a3
{
  v4 = a3;
  v5 = [(TRIServerContext *)self->_context rolloutDatabase];
  v6 = [v5 recordWithDeployment:v4 usingTransaction:0];

  v7 = [v6 artifact];
  v8 = [v7 rollout];
  v9 = [v8 hasChannelId];

  v10 = [TRIPushChannelId alloc];
  v11 = v10;
  if (v9)
  {
    v12 = [v6 artifact];
    v13 = [v12 rollout];
    v14 = [v13 channelId];
    v15 = [(TRIPushChannelId *)v11 initWithPushChannelId:v14];

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = [(TRIPushChannelId *)v10 initWithRolloutDeployment:v4];
    if (v15)
    {
      goto LABEL_6;
    }
  }

  v16 = [v4 rolloutId];
  [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:v16];

LABEL_6:

  return v15;
}

- (id)_channelIdFromExperimentId:(id)a3
{
  v5 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__26;
  v22 = __Block_byref_object_dispose__26;
  v23 = 0;
  v6 = [(TRIServerContext *)self->_context experimentDatabase];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__TRIPushServiceConnectionMultiplexer__channelIdFromExperimentId___block_invoke;
  v17[3] = &unk_279DE18E8;
  v17[4] = &v18;
  [v6 enumerateExperimentRecordsMatchingExperimentId:v5 block:v17];

  v7 = v19[5];
  if (!v7 || ([v7 artifact], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "experiment"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasChannelId"), v9, v8, !v10))
  {
    v14 = [[TRIPushChannelId alloc] initWithExperimentId:v5];
    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = [v19[5] artifact];
  v12 = [v11 experiment];
  v13 = [v12 channelId];

  if (!v13)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIPushServiceConnectionMultiplexer.m" lineNumber:215 description:{@"Expression was unexpectedly nil/false: %@", @"experimentRecord.artifact.experiment.channelId"}];
  }

  v14 = [[TRIPushChannelId alloc] initWithPushChannelId:v13];

  if (!v14)
  {
LABEL_8:
    [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:v5];
  }

LABEL_9:
  _Block_object_dispose(&v18, 8);

  return v14;
}

void __66__TRIPushServiceConnectionMultiplexer__channelIdFromExperimentId___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 status] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)_expectedChannelsForRolloutDeployments:(id)a3 experimentIds:(id)a4 maxChannelsAllowed:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __111__TRIPushServiceConnectionMultiplexer__expectedChannelsForRolloutDeployments_experimentIds_maxChannelsAllowed___block_invoke;
  v19[3] = &unk_279DE22D0;
  v19[4] = self;
  v8 = a4;
  v9 = [a3 _pas_mappedArrayWithTransform:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__TRIPushServiceConnectionMultiplexer__expectedChannelsForRolloutDeployments_experimentIds_maxChannelsAllowed___block_invoke_2;
  v18[3] = &unk_279DE22F8;
  v18[4] = self;
  v10 = [v8 _pas_mappedArrayWithTransform:v18];

  v11 = [v9 arrayByAddingObjectsFromArray:v10];
  if ([v11 count] > a5)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 count];
      *buf = 134218240;
      v21 = v13;
      v22 = 2048;
      v23 = a5;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Number of expected channels (%tu) exceeded the max channels allowed (%tu)", buf, 0x16u);
    }

    v14 = [v11 subarrayWithRange:{0, a5}];

    v11 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)ensureSubscriptionsExistOnlyForRolloutDeployments:(id)a3 experimentIds:(id)a4 maxChannelsAllowed:(unint64_t)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(TRIPushServiceConnectionMultiplexer *)self performQueuedSubscriptions];
  v10 = [(TRIPushServiceConnectionMultiplexer *)self currentConnection];
  v11 = [v10 subscribedChannelIds];

  if (v11)
  {
    v12 = [(TRIPushServiceConnectionMultiplexer *)self _expectedChannelsForRolloutDeployments:v8 experimentIds:v9 maxChannelsAllowed:a5];
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v51 = [v8 count];
      v52 = 2048;
      v53 = [v9 count];
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Keeping channels for %tu rollouts + %tu experiments", buf, 0x16u);
    }

    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 count];
      v16 = [v12 count];
      *buf = 134218240;
      v51 = v15;
      v52 = 2048;
      v53 = v16;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Reconciling %tu actual subscriptions with %tu expected subscriptions", buf, 0x16u);
    }

    v40 = v8;

    v39 = v12;
    v17 = [v12 _pas_mappedSetWithTransform:&__block_literal_global_28];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __122__TRIPushServiceConnectionMultiplexer_ensureSubscriptionsExistOnlyForRolloutDeployments_experimentIds_maxChannelsAllowed___block_invoke_2;
    v47[3] = &unk_279DE2048;
    v18 = v17;
    v48 = v18;
    v19 = [v11 _pas_filteredArrayWithTest:v47];
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v36 = [v19 count];
      *buf = 134218242;
      v51 = v36;
      v52 = 2112;
      v53 = v19;
      _os_log_debug_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEBUG, "Unsubscribing %ld channels: %@", buf, 0x16u);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v44;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [[TRIPushChannelId alloc] initWithPushChannelId:*(*(&v43 + 1) + 8 * i)];
          if (v26)
          {
            v27 = [(TRIPushServiceConnectionMultiplexer *)self currentConnection];
            [v27 unsubscribeFromChannel:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v23);
    }

    v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __122__TRIPushServiceConnectionMultiplexer_ensureSubscriptionsExistOnlyForRolloutDeployments_experimentIds_maxChannelsAllowed___block_invoke_67;
    v41[3] = &unk_279DE2320;
    v42 = v28;
    v29 = v28;
    v30 = v39;
    v31 = [v39 _pas_filteredSetWithTest:v41];
    v32 = TRILogCategory_Server();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v11 count];
      v38 = [v31 allObjects];
      *buf = 134218242;
      v51 = v37;
      v52 = 2112;
      v53 = v38;
      _os_log_debug_impl(&dword_26F567000, v32, OS_LOG_TYPE_DEBUG, "Adding %ld subscriptions for the following channels: %@", buf, 0x16u);
    }

    v33 = [(TRIPushServiceConnectionMultiplexer *)self currentConnection];
    v34 = [v31 allObjects];
    [v33 subscribeToChannels:v34];

    v8 = v40;
  }

  else
  {
    v30 = TRILogCategory_Server();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Couldn't resolve subscriptions since channel list is nil", buf, 2u);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __122__TRIPushServiceConnectionMultiplexer_ensureSubscriptionsExistOnlyForRolloutDeployments_experimentIds_maxChannelsAllowed___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 identifier];
    v4 = [v5 containsObject:v6] ^ 1;
  }

  return v4;
}

- (TRIPushServiceConnectionMultiplexer)initWithServerContext:(id)a3 taskQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 keyValueStore];
  v9 = [TRIFetchDateManager managerWithKeyValueStore:v8];

  v10 = [TRINotificationReactionChecker alloc];
  v11 = [v7 rolloutDatabase];
  v12 = [v7 experimentDatabase];
  v13 = [(TRINotificationReactionChecker *)v10 initWithDateProvider:v9 rolloutDatabase:v11 experimentDatabase:v12];

  v14 = [[TRIHotfixRolloutTargetingScheduler alloc] initWithTaskQueue:v6];
  v15 = [TRIUrgentRollbackScheduler alloc];
  v16 = [v7 experimentDatabase];
  v17 = [(TRIUrgentRollbackScheduler *)v15 initWithExperimentDatabase:v16 taskQueue:v6];

  v18 = [TRIExperimentUpdateScheduler alloc];
  v19 = [v7 experimentDatabase];
  v20 = [(TRIExperimentUpdateScheduler *)v18 initWithExperimentDatabase:v19 taskQueue:v6];

  v21 = [[TRIPushNotificationHandler alloc] initWithNotificationChecker:v13 hotfixScheduler:v14 rollbackScheduler:v17 experimentUpdateScheduler:v20];
  v22 = objc_opt_new();
  v23 = [(TRIPushServiceConnectionMultiplexer *)self initWithConnectionCreator:v22 connectionDelegate:v21 serverContext:v7];

  return v23;
}

@end