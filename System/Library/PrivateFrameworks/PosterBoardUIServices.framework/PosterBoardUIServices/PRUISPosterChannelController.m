@interface PRUISPosterChannelController
- (NSSet)channels;
- (PRUISPosterChannelController)init;
- (PRUISPosterChannelController)initWithConfiguration:(id)a3;
- (id)channelForIdentifier:(id)a3;
- (id)channelForIdentifierIfImmediatelyAvailable:(id)a3;
- (id)channelForIdentifierIfImmediatelyAvailable:(id)a3 error:(id *)a4;
- (id)channelFutureForIdentifier:(id)a3;
- (id)channelsFuture;
- (id)channelsIfImmediatelyAvailableWithError:(id *)a3;
- (id)createChannelWithIdentifier:(id)a3 updater:(id)a4;
- (id)reapEverythingForChannel:(id)a3;
- (id)reapStaleSnapshotsForChannel:(id)a3;
- (id)reapStaleStateForChannel:(id)a3 omittingLast:(unint64_t)a4;
- (id)removeChannelWithFuture:(id)a3;
- (id)updateChannel:(id)a3 updater:(id)a4;
- (void)_fireObserversRespondingToSelector:(SEL)a3 handler:(id)a4;
- (void)addChannelControllerObserver:(id)a3;
- (void)channel:(id)a3 didUpdateGallery:(id)a4;
- (void)channelForIdentifier:(id)a3 completion:(id)a4;
- (void)channelsWithCompletion:(id)a3;
- (void)createChannelWithIdentifier:(id)a3 updater:(id)a4 completion:(id)a5;
- (void)handleDidAddChannel:(id)a3;
- (void)handleDidRemoveChannel:(id)a3;
- (void)handleDidUpdateChannel:(id)a3;
- (void)handleWillAddChannel:(id)a3;
- (void)handleWillRemoveChannel:(id)a3;
- (void)handleWillUpdateChannel:(id)a3;
- (void)reapEverythingForChannel:(id)a3 completion:(id)a4;
- (void)reapStaleSnapshotsForChannel:(id)a3 completion:(id)a4;
- (void)reapStaleStateForChannel:(id)a3 omittingLast:(unint64_t)a4 completion:(id)a5;
- (void)removeChannel:(id)a3 completion:(id)a4;
- (void)removeChannelControllerObserver:(id)a3;
- (void)updateChannel:(id)a3 updater:(id)a4 completion:(id)a5;
@end

@implementation PRUISPosterChannelController

- (PRUISPosterChannelController)initWithConfiguration:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [PRUISPosterChannelController initWithConfiguration:a2];
  }

  v7 = v6;
  v62.receiver = self;
  v62.super_class = PRUISPosterChannelController;
  v8 = [(PRUISPosterChannelController *)&v62 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a3);
    v10 = objc_alloc(MEMORY[0x1E69C5170]);
    v11 = MEMORY[0x1E696AFB0];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v7 role];
    v16 = [v12 stringWithFormat:@"%@-%@", v14, v15];
    v17 = [v11 pf_UUIDFromArbitraryString:v16];
    v18 = [v10 initWithDefaultInstanceIdentifier:v17];

    v19 = [[PRUISPosterChannelModelCoordinator alloc] initWithChannelConfiguration:v7 extensionProvider:v18];
    modelCoordinator = v9->_modelCoordinator;
    v9->_modelCoordinator = v19;

    v21 = MEMORY[0x1E69C5268];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-ModelCoordinatorQueue", objc_opt_class()];
    v23 = [v21 serialDispatchQueueSchedulerWithName:v22 qualityOfService:25];
    modelCoordinatorScheduler = v9->_modelCoordinatorScheduler;
    v9->_modelCoordinatorScheduler = v23;

    objc_storeStrong(&v9->_extensionProvider, v18);
    v25 = MEMORY[0x1E69C5268];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-ReapQueue", objc_opt_class()];
    v27 = [v25 operationQueueSchedulerWithMaxConcurrentOperationCount:1 qualityOfService:3 name:v26];
    reapScheduler = v9->_reapScheduler;
    v9->_reapScheduler = v27;

    v29 = MEMORY[0x1E69C5268];
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-CompletionQueue", objc_opt_class()];
    v31 = [v29 serialDispatchQueueSchedulerWithName:v30 qualityOfService:25];
    completionScheduler = v9->_completionScheduler;
    v9->_completionScheduler = v31;

    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-ObserverQueue", objc_opt_class()];
    Serial = BSDispatchQueueCreateSerial();
    observerQueue = v9->_observerQueue;
    v9->_observerQueue = Serial;

    v36 = objc_alloc(MEMORY[0x1E69C5140]);
    v37 = [(PRUISPosterChannelModelCoordinator *)v9->_modelCoordinator logPrefix];
    v38 = [v36 initWithLockIdentifier:v37];
    lock = v9->_lock;
    v9->_lock = v38;

    v40 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v9->_lock_observers;
    v9->_lock_observers = v40;

    v9->_reapOptions = [v7 reapOptions];
    v42 = v9->_modelCoordinator;
    objc_initWeak(&location, v9);
    v43 = MEMORY[0x1E69C5258];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __54__PRUISPosterChannelController_initWithConfiguration___block_invoke;
    v57[3] = &unk_1E83A8240;
    objc_copyWeak(&v60, &location);
    v44 = v42;
    v58 = v44;
    v45 = v9;
    v59 = v45;
    v46 = [v43 futureWithBlock:v57 scheduler:v9->_modelCoordinatorScheduler];
    channelForUUIDFuture = v45->_channelForUUIDFuture;
    v45->_channelForUUIDFuture = v46;

    v48 = v9->_modelCoordinatorScheduler;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __54__PRUISPosterChannelController_initWithConfiguration___block_invoke_2;
    v55[3] = &unk_1E83A72F8;
    v49 = v18;
    v56 = v49;
    [(PFTScheduler *)v48 performBlock:v55];
    if ((v9->_reapOptions & 2) != 0)
    {
      v50 = [(PRUISPosterChannelController *)v45 channelForUUIDFuture];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __54__PRUISPosterChannelController_initWithConfiguration___block_invoke_3;
      v53[3] = &unk_1E83A8290;
      v54 = v45;
      v51 = [v50 flatMap:v53 continuationScheduler:v9->_reapScheduler];
    }

    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __54__PRUISPosterChannelController_initWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!WeakRetained[7])
    {
      v6 = objc_opt_new();
      v7 = v5[7];
      v5[7] = v6;

      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__3;
      v35 = __Block_byref_object_dispose__3;
      v36 = 0;
      v8 = *(a1 + 32);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __54__PRUISPosterChannelController_initWithConfiguration___block_invoke_100;
      v30[3] = &unk_1E83A8218;
      v30[4] = &v31;
      [v8 accessModel:v30 reason:@"channelStatesWithError" error:a2];
      v24 = v5;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = v32[5];
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v37 count:16];
      if (v10)
      {
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v14 = [PRUISPosterChannel alloc];
            v15 = *(a1 + 32);
            v25 = 0;
            v16 = [(PRUISPosterChannel *)v14 initWithModelCoordinator:v15 state:v13 error:&v25];
            v17 = v25;
            if (v16)
            {
              v18 = v24[7];
              v19 = [v13 channelIdentifier];
              [v18 setObject:v16 forKey:v19];

              [(PRUISPosterChannel *)v16 addChannelObserver:*(a1 + 40)];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v26 objects:v37 count:16];
        }

        while (v10);
      }

      _Block_object_dispose(&v31, 8);
      v5 = v24;
    }

    v20 = *(*(a1 + 40) + 56);
  }

  else
  {
    v21 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v39[0] = @"PRUISPosterChannelController is invalid";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    *a2 = [v21 errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:v22];

    v20 = 0;
  }

  return v20;
}

uint64_t __54__PRUISPosterChannelController_initWithConfiguration___block_invoke_100(uint64_t a1, void *a2)
{
  v3 = [a2 knownChannelStatesWithError:?];
  *(*(*(a1 + 32) + 8) + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3);
}

id __54__PRUISPosterChannelController_initWithConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 allValues];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PRUISPosterChannelController_initWithConfiguration___block_invoke_4;
  v8[3] = &unk_1E83A8268;
  v9 = *(a1 + 32);
  [v3 bs_each:v8];

  v4 = MEMORY[0x1E69C5258];
  v5 = [MEMORY[0x1E695DFB0] null];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

void __54__PRUISPosterChannelController_initWithConfiguration___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRUISLogChannels();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 channelIdentifier];
    v6 = [v5 UUIDString];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "[ReapOnStartup] Reaping stale data from channel identifier %{public}@", &v8, 0xCu);
  }

  v7 = [*(a1 + 32) reapEverythingForChannel:v3];
}

- (PRUISPosterChannelController)init
{
  [(PRUISPosterChannelController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSSet)channels
{
  v2 = [(PRUISPosterChannelController *)self channelsFuture];
  v3 = [v2 result:0];

  return v3;
}

- (id)channelsIfImmediatelyAvailableWithError:(id *)a3
{
  v4 = [(PRUISPosterChannelController *)self channelsFuture];
  if (![v4 isFinished])
  {
    v5 = 0;
    v6 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v5 = [v4 result:&v9];
  v6 = v9;
  if (a3)
  {
LABEL_5:
    v7 = v6;
    *a3 = v6;
  }

LABEL_6:

  return v5;
}

- (void)channelsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PRUISPosterChannelController *)self channelsFuture];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__PRUISPosterChannelController_channelsWithCompletion___block_invoke;
    v6[3] = &unk_1E83A82B8;
    v7 = v4;
    [v5 addCompletionBlock:v6 scheduler:self->_completionScheduler];
  }
}

- (id)channelForIdentifier:(id)a3
{
  v3 = [(PRUISPosterChannelController *)self channelFutureForIdentifier:a3];
  v4 = [v3 result:0];

  return v4;
}

- (id)channelForIdentifierIfImmediatelyAvailable:(id)a3
{
  v3 = [(PRUISPosterChannelController *)self channelFutureForIdentifier:a3];
  if ([v3 isFinished])
  {
    v4 = [v3 result:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)channelForIdentifierIfImmediatelyAvailable:(id)a3 error:(id *)a4
{
  v5 = [(PRUISPosterChannelController *)self channelFutureForIdentifier:a3];
  if (![v5 isFinished])
  {
    v6 = 0;
    v7 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  v6 = [v5 result:&v10];
  v7 = v10;
  if (a4)
  {
LABEL_5:
    v8 = v7;
    *a4 = v7;
  }

LABEL_6:

  return v6;
}

- (void)channelForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(PRUISPosterChannelController *)self channelFutureForIdentifier:a3];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PRUISPosterChannelController_channelForIdentifier_completion___block_invoke;
    v8[3] = &unk_1E83A82E0;
    v9 = v6;
    [v7 addCompletionBlock:v8 scheduler:self->_completionScheduler];
  }
}

- (void)createChannelWithIdentifier:(id)a3 updater:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(PRUISPosterChannelController *)self createChannelWithIdentifier:a3 updater:a4];
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__PRUISPosterChannelController_createChannelWithIdentifier_updater_completion___block_invoke;
    v10[3] = &unk_1E83A82E0;
    v11 = v8;
    [v9 addCompletionBlock:v10 scheduler:self->_completionScheduler];
  }
}

- (void)removeChannel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PRUISPosterChannelController *)self removeChannelWithFuture:a3];
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PRUISPosterChannelController_removeChannel_completion___block_invoke;
    v8[3] = &unk_1E83A8308;
    v9 = v6;
    [v7 addCompletionBlock:v8 scheduler:self->_completionScheduler];
  }
}

- (void)updateChannel:(id)a3 updater:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(PRUISPosterChannelController *)self updateChannel:a3 updater:a4];
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PRUISPosterChannelController_updateChannel_updater_completion___block_invoke;
    v10[3] = &unk_1E83A82E0;
    v11 = v8;
    [v9 addCompletionBlock:v10 scheduler:self->_completionScheduler];
  }
}

- (void)reapStaleStateForChannel:(id)a3 omittingLast:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(PRUISPosterChannelController *)self reapStaleStateForChannel:a3 omittingLast:a4];
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PRUISPosterChannelController_reapStaleStateForChannel_omittingLast_completion___block_invoke;
    v10[3] = &unk_1E83A8308;
    v11 = v8;
    [v9 addCompletionBlock:v10 scheduler:self->_completionScheduler];
  }
}

- (void)reapStaleSnapshotsForChannel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PRUISPosterChannelController *)self reapStaleSnapshotsForChannel:a3];
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__PRUISPosterChannelController_reapStaleSnapshotsForChannel_completion___block_invoke;
    v8[3] = &unk_1E83A8308;
    v9 = v6;
    [v7 addCompletionBlock:v8 scheduler:self->_completionScheduler];
  }
}

- (void)reapEverythingForChannel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PRUISPosterChannelController *)self reapEverythingForChannel:a3];
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PRUISPosterChannelController_reapEverythingForChannel_completion___block_invoke;
    v8[3] = &unk_1E83A8308;
    v9 = v6;
    [v7 addCompletionBlock:v8 scheduler:self->_completionScheduler];
  }
}

- (id)channelFutureForIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannelController channelFutureForIdentifier:a2];
  }

  v6 = v5;
  v7 = [(PRUISPosterChannelController *)self channelForUUIDFuture];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PRUISPosterChannelController_channelFutureForIdentifier___block_invoke;
  v11[3] = &unk_1E83A8330;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __59__PRUISPosterChannelController_channelFutureForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = MEMORY[0x1E69C5258];
  if (v3)
  {
    v5 = [MEMORY[0x1E69C5258] futureWithResult:v3];
  }

  else
  {
    v6 = PFFunctionNameForAddress();
    v9 = *(a1 + 32);
    v7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v5 = [v4 futureWithError:{v7, v9}];
  }

  return v5;
}

- (id)channelsFuture
{
  v2 = [(PRUISPosterChannelController *)self channelForUUIDFuture];
  v3 = [v2 flatMap:&__block_literal_global_17];

  return v3;
}

id __46__PRUISPosterChannelController_channelsFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C5258];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a2 allValues];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

- (id)createChannelWithIdentifier:(id)a3 updater:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PRUISPosterChannelController createChannelWithIdentifier:a2 updater:?];
  }

  v9 = v8;
  v10 = self->_modelCoordinator;
  v11 = [(PRUISPosterChannelModelCoordinator *)v10 fileSystemEndpointForChannelIdentifier:v7];
  v12 = [(PRUISPosterChannelController *)self channelForUUIDFuture];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__PRUISPosterChannelController_createChannelWithIdentifier_updater___block_invoke;
  v20[3] = &unk_1E83A8378;
  v20[4] = self;
  v21 = v7;
  v23 = v11;
  v24 = v9;
  v22 = v10;
  modelCoordinatorScheduler = self->_modelCoordinatorScheduler;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v7;
  v18 = [v12 flatMap:v20 continuationScheduler:modelCoordinatorScheduler];

  return v18;
}

id __68__PRUISPosterChannelController_createChannelWithIdentifier_updater___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v5 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  if (v5)
  {
    v6 = MEMORY[0x1E69C5258];
    v7 = PFFunctionNameForAddress();
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v9 = [v6 futureWithError:{v8, 0}];
  }

  else
  {
    v10 = objc_opt_new();
    v11 = *(a1 + 64);
    if (v11)
    {
      (*(v11 + 16))(v11, v10);
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__3;
    v29 = __Block_byref_object_dispose__3;
    v30 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__PRUISPosterChannelController_createChannelWithIdentifier_updater___block_invoke_2;
    v21[3] = &unk_1E83A8178;
    v24 = &v25;
    v12 = *(a1 + 48);
    v22 = *(a1 + 40);
    v13 = v10;
    v23 = v13;
    v20 = 0;
    [v12 mutateModel:v21 reason:@"createChannelWithIdentifier" error:&v20];
    v14 = v20;
    if (v14 || !v26[5])
    {
      v15 = [*(a1 + 48) schemaManager];
      [v15 deleteEndpoint:*(a1 + 56) error:0];

      v16 = MEMORY[0x1E69C5258];
      v17 = v14;
      if (!v14)
      {
        v15 = PFFunctionNameForAddress();
        v19 = *(a1 + 40);
        v17 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      }

      v9 = [v16 futureWithError:{v17, v19}];
      if (!v14)
      {
      }
    }

    else
    {
      [*(a1 + 32) handleWillAddChannel:?];
      [v4 setObject:v26[5] forKeyedSubscript:*(a1 + 40)];
      [*(a1 + 32) handleDidAddChannel:v26[5]];
      v9 = [MEMORY[0x1E69C5258] futureWithResult:v26[5]];
    }

    _Block_object_dispose(&v25, 8);
  }

  return v9;
}

uint64_t __68__PRUISPosterChannelController_createChannelWithIdentifier_updater___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v4 = [a2 createChannelWithIdentifier:a1[4] updater:a1[5] error:a3];
  *(*(a1[6] + 8) + 40) = v4;

  return MEMORY[0x1EEE66BB8](v4);
}

- (id)removeChannelWithFuture:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannelController removeChannelWithFuture:a2];
  }

  v6 = v5;
  v7 = self->_modelCoordinatorScheduler_channelForUUID;
  v8 = self->_modelCoordinator;
  v9 = [v6 channelIdentifier];
  v10 = [(PRUISPosterChannelController *)self channelForUUIDFuture];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__PRUISPosterChannelController_removeChannelWithFuture___block_invoke;
  v18[3] = &unk_1E83A83F0;
  v19 = v9;
  v20 = v6;
  v21 = self;
  v22 = v8;
  v23 = v7;
  modelCoordinatorScheduler = self->_modelCoordinatorScheduler;
  v12 = v7;
  v13 = v8;
  v14 = v6;
  v15 = v9;
  v16 = [v10 flatMap:v18 continuationScheduler:modelCoordinatorScheduler];

  return v16;
}

id __56__PRUISPosterChannelController_removeChannelWithFuture___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v3 == v4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PRUISPosterChannelController_removeChannelWithFuture___block_invoke_2;
    v13[3] = &unk_1E83A83C8;
    v14 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v15 = v9;
    v16 = v10;
    v17 = v3;
    v18 = *(a1 + 64);
    v8 = [v4 coordinateWithRemoveChannelBlock:v13];
  }

  else
  {
    v5 = MEMORY[0x1E69C5258];
    v6 = PFFunctionNameForAddress();
    v12 = *(a1 + 32);
    v7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v8 = [v5 futureWithError:{v7, v12}];
  }

  return v8;
}

id __56__PRUISPosterChannelController_removeChannelWithFuture___block_invoke_2(uint64_t a1)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PRUISPosterChannelController_removeChannelWithFuture___block_invoke_3;
  v12[3] = &unk_1E83A83A0;
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v11 = 0;
  [v2 mutateModel:v12 reason:@"removeChannel" error:&v11];
  v3 = v11;
  if (v11)
  {
    v4 = [MEMORY[0x1E69C5258] futureWithError:v11];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = 0;
    [v5 handleWillRemoveChannel:v6];
    [*(a1 + 56) invalidate];
    [*(a1 + 64) removeObjectForKey:*(a1 + 40)];
    [*(a1 + 48) handleDidRemoveChannel:*(a1 + 56)];
    v8 = MEMORY[0x1E69C5258];
    v9 = [MEMORY[0x1E695DFB0] null];
    v4 = [v8 futureWithResult:v9];
  }

  return v4;
}

- (id)updateChannel:(id)a3 updater:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRUISPosterChannelController updateChannel:a2 updater:?];
  }

  if (!v7)
  {
    [PRUISPosterChannelController updateChannel:a2 updater:?];
  }

  v9 = v8;
  v10 = [(PRUISPosterChannelController *)self channelForUUIDFuture];
  v11 = [v7 channelIdentifier];
  v12 = self->_modelCoordinator;
  v13 = objc_opt_new();
  v14 = [v7 posterConfiguration];
  [v13 setPosterConfiguration:v14];

  v15 = [v7 channelContext];
  [v13 setChannelContext:v15];

  (v9)[2](v9, v13);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__PRUISPosterChannelController_updateChannel_updater___block_invoke;
  v23[3] = &unk_1E83A83F0;
  v24 = v11;
  v25 = v7;
  v26 = self;
  v27 = v12;
  v28 = v13;
  modelCoordinatorScheduler = self->_modelCoordinatorScheduler;
  v17 = v13;
  v18 = v12;
  v19 = v7;
  v20 = v11;
  v21 = [v10 flatMap:v23 continuationScheduler:modelCoordinatorScheduler];

  return v21;
}

id __54__PRUISPosterChannelController_updateChannel_updater___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v3 == *(a1 + 40))
  {
    [*(a1 + 48) handleWillUpdateChannel:v3];
    v8 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__PRUISPosterChannelController_updateChannel_updater___block_invoke_2;
    v13[3] = &unk_1E83A8418;
    v9 = v3;
    v14 = v9;
    v15 = *(a1 + 64);
    v12 = 0;
    [v8 mutateModel:v13 reason:@"updateChannel" error:&v12];
    v5 = v12;
    if (v5)
    {
      [MEMORY[0x1E69C5258] futureWithError:v5];
    }

    else
    {
      [*(a1 + 48) handleDidUpdateChannel:v9];
      [MEMORY[0x1E69C5258] futureWithResult:v9];
    }
    v7 = ;
  }

  else
  {
    v4 = MEMORY[0x1E69C5258];
    v5 = PFFunctionNameForAddress();
    v11 = *(a1 + 32);
    v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v7 = [v4 futureWithError:{v6, v11}];
  }

  return v7;
}

- (id)reapStaleStateForChannel:(id)a3 omittingLast:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [PRUISPosterChannelController reapStaleStateForChannel:a2 omittingLast:?];
  }

  v8 = v7;
  v9 = self->_modelCoordinator;
  v10 = [v8 channelIdentifier];
  v11 = [(PRUISPosterChannelController *)self channelForUUIDFuture];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__PRUISPosterChannelController_reapStaleStateForChannel_omittingLast___block_invoke;
  v18[3] = &unk_1E83A8468;
  v19 = v10;
  v20 = v8;
  v21 = self;
  v22 = v9;
  v23 = a4;
  reapScheduler = self->_reapScheduler;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  v16 = [v11 flatMap:v18 continuationScheduler:reapScheduler];

  return v16;
}

id __70__PRUISPosterChannelController_reapStaleStateForChannel_omittingLast___block_invoke(void *a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:a1[4]];
  v4 = a1[5];
  if (v3 == v4)
  {
    v9 = a1[7];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__PRUISPosterChannelController_reapStaleStateForChannel_omittingLast___block_invoke_2;
    v20[3] = &unk_1E83A8440;
    v10 = v4;
    v11 = a1[8];
    v21 = v10;
    v22 = v11;
    v19 = 0;
    [v9 mutateModel:v20 reason:@"reapStaleState" error:&v19];
    v12 = v19;
    v13 = MEMORY[0x1E69C5258];
    if (v19)
    {
      v8 = [MEMORY[0x1E69C5258] futureWithError:v19];
    }

    else
    {
      v14 = MEMORY[0x1E695DFB0];
      v15 = 0;
      v16 = [v14 null];
      v8 = [v13 futureWithResult:v16];
    }
  }

  else
  {
    v5 = MEMORY[0x1E69C5258];
    v6 = PFFunctionNameForAddress();
    v18 = a1[4];
    v7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v8 = [v5 futureWithError:{v7, v18}];
  }

  return v8;
}

- (id)reapStaleSnapshotsForChannel:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannelController reapStaleSnapshotsForChannel:a2];
  }

  v6 = v5;
  v7 = self->_modelCoordinator;
  v8 = [v6 channelIdentifier];
  v9 = [(PRUISPosterChannelController *)self channelForUUIDFuture];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__PRUISPosterChannelController_reapStaleSnapshotsForChannel___block_invoke;
  v16[3] = &unk_1E83A84B8;
  v17 = v8;
  v18 = v6;
  v19 = self;
  v20 = v7;
  reapScheduler = self->_reapScheduler;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  v14 = [v9 flatMap:v16 continuationScheduler:reapScheduler];

  return v14;
}

id __61__PRUISPosterChannelController_reapStaleSnapshotsForChannel___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:a1[4]];
  v5 = a1[5];
  if (v4 == v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__3;
    v22 = __Block_byref_object_dispose__3;
    v23 = 0;
    v10 = a1[7];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__PRUISPosterChannelController_reapStaleSnapshotsForChannel___block_invoke_2;
    v15[3] = &unk_1E83A8490;
    v17 = &v18;
    v16 = v5;
    v14 = 0;
    [v10 mutateModel:v15 reason:@"reapStaleSnapshots" error:&v14];
    v7 = v14;
    if (v7)
    {
      v11 = [MEMORY[0x1E69C5258] futureWithError:v7];
    }

    else
    {
      v11 = v19[5];
    }

    v9 = v11;

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v6 = MEMORY[0x1E69C5258];
    v7 = PFFunctionNameForAddress();
    v13 = a1[4];
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v9 = [v6 futureWithError:{v8, v13}];
  }

  return v9;
}

uint64_t __61__PRUISPosterChannelController_reapStaleSnapshotsForChannel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 reapStaleSnapshotsForChannel:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3);
}

- (id)reapEverythingForChannel:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannelController reapEverythingForChannel:a2];
  }

  v6 = v5;
  v7 = self->_modelCoordinator;
  v8 = [v6 channelIdentifier];
  v9 = [(PRUISPosterChannelController *)self channelForUUIDFuture];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__PRUISPosterChannelController_reapEverythingForChannel___block_invoke;
  v16[3] = &unk_1E83A84B8;
  v17 = v8;
  v18 = v6;
  v19 = self;
  v20 = v7;
  reapScheduler = self->_reapScheduler;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  v14 = [v9 flatMap:v16 continuationScheduler:reapScheduler];

  return v14;
}

id __57__PRUISPosterChannelController_reapEverythingForChannel___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:a1[4]];
  v5 = a1[5];
  if (v4 == v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__3;
    v22 = __Block_byref_object_dispose__3;
    v23 = 0;
    v10 = a1[7];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PRUISPosterChannelController_reapEverythingForChannel___block_invoke_2;
    v15[3] = &unk_1E83A8490;
    v17 = &v18;
    v16 = v5;
    v14 = 0;
    [v10 mutateModel:v15 reason:@"reapEverything" error:&v14];
    v7 = v14;
    if (v7)
    {
      v11 = [MEMORY[0x1E69C5258] futureWithError:v7];
    }

    else
    {
      v11 = v19[5];
    }

    v9 = v11;

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v6 = MEMORY[0x1E69C5258];
    v7 = PFFunctionNameForAddress();
    v13 = a1[4];
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v9 = [v6 futureWithError:{v8, v13}];
  }

  return v9;
}

uint64_t __57__PRUISPosterChannelController_reapEverythingForChannel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 reapEverythingForChannel:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3);
}

- (void)addChannelControllerObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannelController addChannelControllerObserver:a2];
  }

  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PRUISPosterChannelController_addChannelControllerObserver___block_invoke;
  v8[3] = &unk_1E83A84E0;
  v9 = v5;
  v7 = v5;
  [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v8];
}

- (void)removeChannelControllerObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannelController removeChannelControllerObserver:a2];
  }

  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PRUISPosterChannelController_removeChannelControllerObserver___block_invoke;
  v8[3] = &unk_1E83A84E0;
  v9 = v5;
  v7 = v5;
  [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v8];
}

- (void)handleWillAddChannel:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PRUISPosterChannelController_handleWillAddChannel___block_invoke;
  v6[3] = &unk_1E83A8508;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PRUISPosterChannelController *)self _fireObserversRespondingToSelector:sel_channelController_willAddChannel_ handler:v6];
}

- (void)handleDidAddChannel:(id)a3
{
  v4 = a3;
  [v4 addChannelObserver:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PRUISPosterChannelController_handleDidAddChannel___block_invoke;
  v6[3] = &unk_1E83A8508;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PRUISPosterChannelController *)self _fireObserversRespondingToSelector:sel_channelController_didAddChannel_ handler:v6];
}

- (void)handleWillUpdateChannel:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PRUISPosterChannelController_handleWillUpdateChannel___block_invoke;
  v6[3] = &unk_1E83A8508;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PRUISPosterChannelController *)self _fireObserversRespondingToSelector:sel_channelController_willUpdateChannel_ handler:v6];
}

- (void)handleDidUpdateChannel:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((self->_reapOptions & 4) != 0)
  {
    v5 = PRUISLogChannels();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 channelIdentifier];
      v7 = [v6 UUIDString];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "[ReapOnChannelUpdate][StateUpdate] Reaping stale data from channel identifier %{public}@", buf, 0xCu);
    }

    v8 = [(PRUISPosterChannelController *)self reapEverythingForChannel:v4];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PRUISPosterChannelController_handleDidUpdateChannel___block_invoke;
  v10[3] = &unk_1E83A8508;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [(PRUISPosterChannelController *)self _fireObserversRespondingToSelector:sel_channelController_didUpdateChannel_ handler:v10];
}

- (void)handleWillRemoveChannel:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PRUISPosterChannelController_handleWillRemoveChannel___block_invoke;
  v6[3] = &unk_1E83A8508;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PRUISPosterChannelController *)self _fireObserversRespondingToSelector:sel_channelController_willRemoveChannel_ handler:v6];
}

- (void)handleDidRemoveChannel:(id)a3
{
  v4 = a3;
  [v4 removeChannelObserver:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PRUISPosterChannelController_handleDidRemoveChannel___block_invoke;
  v6[3] = &unk_1E83A8508;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PRUISPosterChannelController *)self _fireObserversRespondingToSelector:sel_channelController_didRemoveChannel_ handler:v6];
}

- (void)_fireObserversRespondingToSelector:(SEL)a3 handler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = objc_opt_new();
    lock = self->_lock;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__PRUISPosterChannelController__fireObserversRespondingToSelector_handler___block_invoke;
    v24[3] = &unk_1E83A8530;
    v26 = a3;
    v9 = v7;
    v25 = v9;
    [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v24];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          observerQueue = self->_observerQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __75__PRUISPosterChannelController__fireObserversRespondingToSelector_handler___block_invoke_2;
          block[3] = &unk_1E83A8558;
          v16 = v6;
          block[4] = v14;
          v19 = v16;
          dispatch_async(observerQueue, block);

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v11);
    }
  }
}

void __75__PRUISPosterChannelController__fireObserversRespondingToSelector_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a2 + 48);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 32) addObject:{v8, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)channel:(id)a3 didUpdateGallery:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((self->_reapOptions & 4) != 0)
  {
    v6 = PRUISLogChannels();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 channelIdentifier];
      v8 = [v7 UUIDString];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "[ReapOnChannelUpdate][GalleryUpdate] Reaping stale data from channel identifier %{public}@", &v10, 0xCu);
    }

    v9 = [(PRUISPosterChannelController *)self reapEverythingForChannel:v5];
  }
}

- (void)initWithConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"configuration", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)channelFutureForIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"channelIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createChannelWithIdentifier:(char *)a1 updater:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"channelIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeChannelWithFuture:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"channel", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateChannel:(char *)a1 updater:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"channel", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateChannel:(char *)a1 updater:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"updater", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)reapStaleStateForChannel:(char *)a1 omittingLast:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"channel", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)reapStaleSnapshotsForChannel:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"channel", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)reapEverythingForChannel:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"channel", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addChannelControllerObserver:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"observer", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeChannelControllerObserver:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"observer", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end