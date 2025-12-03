@interface TRIPushServiceConnectionMultiplexer
- (TRIPushServiceConnectionMultiplexer)initWithConnectionCreator:(id)creator connectionDelegate:(id)delegate serverContext:(id)context;
- (TRIPushServiceConnectionMultiplexer)initWithServerContext:(id)context taskQueue:(id)queue;
- (double)_debounceTime;
- (id)_channelIdFromExperimentId:(id)id;
- (id)_channelIdFromRolloutDeployment:(id)deployment;
- (id)_expectedChannelsForRolloutDeployments:(id)deployments experimentIds:(id)ids maxChannelsAllowed:(unint64_t)allowed;
- (void)_debouncedSubscribeToChannel:(id)channel;
- (void)_logFaultIfNotTestingIdentifier:(id)identifier;
- (void)_setupDebounceTimerIfNeededWithGuardedData:(id)data;
- (void)ensureSubscriptionsExistOnlyForRolloutDeployments:(id)deployments experimentIds:(id)ids maxChannelsAllowed:(unint64_t)allowed;
- (void)performQueuedSubscriptions;
- (void)subscribeForExperimentId:(id)id;
- (void)subscribeForRolloutDeployment:(id)deployment;
- (void)unsubscribeForExperimentId:(id)id;
@end

@implementation TRIPushServiceConnectionMultiplexer

- (TRIPushServiceConnectionMultiplexer)initWithConnectionCreator:(id)creator connectionDelegate:(id)delegate serverContext:(id)context
{
  creatorCopy = creator;
  delegateCopy = delegate;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = TRIPushServiceConnectionMultiplexer;
  v12 = [(TRIPushServiceConnectionMultiplexer *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connectionCreator, creator);
    objc_storeStrong(&v13->_delegate, delegate);
    v14 = [creatorCopy connectionWithDelegate:delegateCopy environment:0];
    currentConnection = v13->_currentConnection;
    v13->_currentConnection = v14;

    objc_storeStrong(&v13->_context, context);
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

- (void)_logFaultIfNotTestingIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (![(TRIPushServiceConnectionMultiplexer *)self _isTestingIdentifier:identifierCopy])
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = identifierCopy;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Failed to create channel id for identifier %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscribeForRolloutDeployment:(id)deployment
{
  v15 = *MEMORY[0x277D85DE8];
  deploymentCopy = deployment;
  v5 = +[TRICKServerEnvironmentReader currentEnvironment];
  v6 = +[TRISystemConfiguration sharedInstance];
  populationType = [v6 populationType];

  if (populationType == 3 && v5 == 3)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = deploymentCopy;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Skipping subscribing to cloud channel for rollout deployment: %@", &v13, 0xCu);
    }
  }

  else
  {
    v9 = [(TRIPushServiceConnectionMultiplexer *)self _channelIdFromRolloutDeployment:deploymentCopy];
    if (v9)
    {
      [(TRIPushServiceConnectionMultiplexer *)self _debouncedSubscribeToChannel:v9];
    }

    else
    {
      rolloutId = [deploymentCopy rolloutId];
      [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:rolloutId];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)subscribeForExperimentId:(id)id
{
  idCopy = id;
  v4 = [(TRIPushServiceConnectionMultiplexer *)self _channelIdFromExperimentId:?];
  if (v4)
  {
    [(TRIPushServiceConnectionMultiplexer *)self _debouncedSubscribeToChannel:v4];
  }

  else
  {
    [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:idCopy];
  }
}

- (void)_debouncedSubscribeToChannel:(id)channel
{
  channelCopy = channel;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__TRIPushServiceConnectionMultiplexer__debouncedSubscribeToChannel___block_invoke;
  v7[3] = &unk_279DE2258;
  v7[4] = self;
  v8 = channelCopy;
  v6 = channelCopy;
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"com.apple.triald.override.subscription-skip-debounce"];

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

- (void)_setupDebounceTimerIfNeededWithGuardedData:(id)data
{
  if (!*(data + 1))
  {
    v19 = v3;
    v20 = v4;
    dataCopy = data;
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Setting up debounce timer for push channel subscriptions", buf, 2u);
    }

    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_subscriptionQueue);
    v10 = *(data + 1);
    *(data + 1) = v9;

    v11 = *(data + 1);
    [(TRIPushServiceConnectionMultiplexer *)self _debounceTime];
    v13 = dispatch_time(0, (v12 * 1000000000.0));
    dispatch_source_set_timer(v11, v13, 0xFFFFFFFFFFFFFFFFLL, 0x1312D00uLL);
    objc_initWeak(buf, self);
    v14 = *(data + 1);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __82__TRIPushServiceConnectionMultiplexer__setupDebounceTimerIfNeededWithGuardedData___block_invoke;
    handler[3] = &unk_279DE2280;
    objc_copyWeak(&v17, buf);
    dispatch_source_set_event_handler(v14, handler);
    v15 = *(data + 1);

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

- (void)unsubscribeForExperimentId:(id)id
{
  idCopy = id;
  v5 = [(TRIPushServiceConnectionMultiplexer *)self _channelIdFromExperimentId:idCopy];
  v6 = v5;
  if (v5)
  {
    lock = self->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__TRIPushServiceConnectionMultiplexer_unsubscribeForExperimentId___block_invoke;
    v8[3] = &unk_279DE2258;
    v9 = v5;
    selfCopy = self;
    [(_PASLock *)lock runWithLockAcquired:v8];
  }

  else
  {
    [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:idCopy];
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

- (id)_channelIdFromRolloutDeployment:(id)deployment
{
  deploymentCopy = deployment;
  rolloutDatabase = [(TRIServerContext *)self->_context rolloutDatabase];
  v6 = [rolloutDatabase recordWithDeployment:deploymentCopy usingTransaction:0];

  artifact = [v6 artifact];
  rollout = [artifact rollout];
  hasChannelId = [rollout hasChannelId];

  v10 = [TRIPushChannelId alloc];
  v11 = v10;
  if (hasChannelId)
  {
    artifact2 = [v6 artifact];
    rollout2 = [artifact2 rollout];
    channelId = [rollout2 channelId];
    v15 = [(TRIPushChannelId *)v11 initWithPushChannelId:channelId];

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = [(TRIPushChannelId *)v10 initWithRolloutDeployment:deploymentCopy];
    if (v15)
    {
      goto LABEL_6;
    }
  }

  rolloutId = [deploymentCopy rolloutId];
  [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:rolloutId];

LABEL_6:

  return v15;
}

- (id)_channelIdFromExperimentId:(id)id
{
  idCopy = id;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__26;
  v22 = __Block_byref_object_dispose__26;
  v23 = 0;
  experimentDatabase = [(TRIServerContext *)self->_context experimentDatabase];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__TRIPushServiceConnectionMultiplexer__channelIdFromExperimentId___block_invoke;
  v17[3] = &unk_279DE18E8;
  v17[4] = &v18;
  [experimentDatabase enumerateExperimentRecordsMatchingExperimentId:idCopy block:v17];

  v7 = v19[5];
  if (!v7 || ([v7 artifact], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "experiment"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasChannelId"), v9, v8, !v10))
  {
    v14 = [[TRIPushChannelId alloc] initWithExperimentId:idCopy];
    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  artifact = [v19[5] artifact];
  experiment = [artifact experiment];
  channelId = [experiment channelId];

  if (!channelId)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPushServiceConnectionMultiplexer.m" lineNumber:215 description:{@"Expression was unexpectedly nil/false: %@", @"experimentRecord.artifact.experiment.channelId"}];
  }

  v14 = [[TRIPushChannelId alloc] initWithPushChannelId:channelId];

  if (!v14)
  {
LABEL_8:
    [(TRIPushServiceConnectionMultiplexer *)self _logFaultIfNotTestingIdentifier:idCopy];
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

- (id)_expectedChannelsForRolloutDeployments:(id)deployments experimentIds:(id)ids maxChannelsAllowed:(unint64_t)allowed
{
  v24 = *MEMORY[0x277D85DE8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __111__TRIPushServiceConnectionMultiplexer__expectedChannelsForRolloutDeployments_experimentIds_maxChannelsAllowed___block_invoke;
  v19[3] = &unk_279DE22D0;
  v19[4] = self;
  idsCopy = ids;
  v9 = [deployments _pas_mappedArrayWithTransform:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__TRIPushServiceConnectionMultiplexer__expectedChannelsForRolloutDeployments_experimentIds_maxChannelsAllowed___block_invoke_2;
  v18[3] = &unk_279DE22F8;
  v18[4] = self;
  v10 = [idsCopy _pas_mappedArrayWithTransform:v18];

  v11 = [v9 arrayByAddingObjectsFromArray:v10];
  if ([v11 count] > allowed)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 count];
      *buf = 134218240;
      v21 = v13;
      v22 = 2048;
      allowedCopy = allowed;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Number of expected channels (%tu) exceeded the max channels allowed (%tu)", buf, 0x16u);
    }

    v14 = [v11 subarrayWithRange:{0, allowed}];

    v11 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)ensureSubscriptionsExistOnlyForRolloutDeployments:(id)deployments experimentIds:(id)ids maxChannelsAllowed:(unint64_t)allowed
{
  v54 = *MEMORY[0x277D85DE8];
  deploymentsCopy = deployments;
  idsCopy = ids;
  [(TRIPushServiceConnectionMultiplexer *)self performQueuedSubscriptions];
  currentConnection = [(TRIPushServiceConnectionMultiplexer *)self currentConnection];
  subscribedChannelIds = [currentConnection subscribedChannelIds];

  if (subscribedChannelIds)
  {
    v12 = [(TRIPushServiceConnectionMultiplexer *)self _expectedChannelsForRolloutDeployments:deploymentsCopy experimentIds:idsCopy maxChannelsAllowed:allowed];
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v51 = [deploymentsCopy count];
      v52 = 2048;
      v53 = [idsCopy count];
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Keeping channels for %tu rollouts + %tu experiments", buf, 0x16u);
    }

    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [subscribedChannelIds count];
      v16 = [v12 count];
      *buf = 134218240;
      v51 = v15;
      v52 = 2048;
      v53 = v16;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Reconciling %tu actual subscriptions with %tu expected subscriptions", buf, 0x16u);
    }

    v40 = deploymentsCopy;

    v39 = v12;
    v17 = [v12 _pas_mappedSetWithTransform:&__block_literal_global_28];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __122__TRIPushServiceConnectionMultiplexer_ensureSubscriptionsExistOnlyForRolloutDeployments_experimentIds_maxChannelsAllowed___block_invoke_2;
    v47[3] = &unk_279DE2048;
    v18 = v17;
    v48 = v18;
    v19 = [subscribedChannelIds _pas_filteredArrayWithTest:v47];
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
            currentConnection2 = [(TRIPushServiceConnectionMultiplexer *)self currentConnection];
            [currentConnection2 unsubscribeFromChannel:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v23);
    }

    v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:subscribedChannelIds];
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
      v37 = [subscribedChannelIds count];
      allObjects = [v31 allObjects];
      *buf = 134218242;
      v51 = v37;
      v52 = 2112;
      v53 = allObjects;
      _os_log_debug_impl(&dword_26F567000, v32, OS_LOG_TYPE_DEBUG, "Adding %ld subscriptions for the following channels: %@", buf, 0x16u);
    }

    currentConnection3 = [(TRIPushServiceConnectionMultiplexer *)self currentConnection];
    allObjects2 = [v31 allObjects];
    [currentConnection3 subscribeToChannels:allObjects2];

    deploymentsCopy = v40;
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

- (TRIPushServiceConnectionMultiplexer)initWithServerContext:(id)context taskQueue:(id)queue
{
  queueCopy = queue;
  contextCopy = context;
  keyValueStore = [contextCopy keyValueStore];
  v9 = [TRIFetchDateManager managerWithKeyValueStore:keyValueStore];

  v10 = [TRINotificationReactionChecker alloc];
  rolloutDatabase = [contextCopy rolloutDatabase];
  experimentDatabase = [contextCopy experimentDatabase];
  v13 = [(TRINotificationReactionChecker *)v10 initWithDateProvider:v9 rolloutDatabase:rolloutDatabase experimentDatabase:experimentDatabase];

  v14 = [[TRIHotfixRolloutTargetingScheduler alloc] initWithTaskQueue:queueCopy];
  v15 = [TRIUrgentRollbackScheduler alloc];
  experimentDatabase2 = [contextCopy experimentDatabase];
  v17 = [(TRIUrgentRollbackScheduler *)v15 initWithExperimentDatabase:experimentDatabase2 taskQueue:queueCopy];

  v18 = [TRIExperimentUpdateScheduler alloc];
  experimentDatabase3 = [contextCopy experimentDatabase];
  v20 = [(TRIExperimentUpdateScheduler *)v18 initWithExperimentDatabase:experimentDatabase3 taskQueue:queueCopy];

  v21 = [[TRIPushNotificationHandler alloc] initWithNotificationChecker:v13 hotfixScheduler:v14 rollbackScheduler:v17 experimentUpdateScheduler:v20];
  v22 = objc_opt_new();
  v23 = [(TRIPushServiceConnectionMultiplexer *)self initWithConnectionCreator:v22 connectionDelegate:v21 serverContext:contextCopy];

  return v23;
}

@end