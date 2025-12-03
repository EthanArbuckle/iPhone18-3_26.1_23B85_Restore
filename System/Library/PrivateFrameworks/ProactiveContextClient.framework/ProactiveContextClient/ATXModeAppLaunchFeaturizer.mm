@interface ATXModeAppLaunchFeaturizer
- (ATXModeAppLaunchFeaturizer)init;
- (ATXModeFeaturizerDelegate)delegate;
- (id)_latestAppLaunchBundleIds;
- (id)_provideFeaturesWithBundleIds:(id)ids;
- (id)additionalAllowedBundleIds;
- (id)provideFeatures;
- (id)registrationId;
- (int)modeFeatureType;
- (unint64_t)expectedGenreId;
- (void)_actuallyEndMode;
- (void)_actuallyStartMode;
- (void)_processActiveApps:(id)apps;
- (void)beginListening;
- (void)stopListening;
@end

@implementation ATXModeAppLaunchFeaturizer

void __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke_32(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 eventBody];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (!WeakRetained)
    {
LABEL_9:

      goto LABEL_10;
    }

    v5 = [v14 eventBody];
    if ([v5 starting])
    {
      v6 = [v14 eventBody];
      v7 = [v6 bundleID];
      v8 = [v7 length];

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = objc_alloc(MEMORY[0x277CBEB98]);
        v11 = [v14 eventBody];
        v12 = [v11 bundleID];
        v13 = [v10 initWithObjects:{v12, 0}];

        objc_autoreleasePoolPop(v9);
LABEL_8:
        [WeakRetained _processActiveApps:v13];

        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = objc_opt_new();
    goto LABEL_8;
  }

LABEL_10:
}

- (id)additionalAllowedBundleIds
{
  v2 = objc_opt_new();

  return v2;
}

- (ATXModeAppLaunchFeaturizer)init
{
  v10.receiver = self;
  v10.super_class = ATXModeAppLaunchFeaturizer;
  v2 = [(ATXModeAppLaunchFeaturizer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_cooldownTimerIsEnabled = 1;
    isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
    v5 = MEMORY[0x277CEBD00];
    if (isInternalBuild)
    {
      keyExistsAndHasValidFormat = 0;
      if (CFPreferencesGetAppBooleanValue(@"RemoveModeSwitchCooldown", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat))
      {
        v3->_cooldownTimerIsEnabled = 0;
      }
    }

    v3->_easeInTimerIsEnabled = 1;
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      keyExistsAndHasValidFormat = 0;
      if (CFPreferencesGetAppBooleanValue(@"RemoveModeSwitchEaseIn", *v5, &keyExistsAndHasValidFormat))
      {
        v3->_easeInTimerIsEnabled = 0;
      }
    }

    v6 = objc_alloc_init(MEMORY[0x277CEBC60]);
    frontBoardLayoutAggregator = v3->_frontBoardLayoutAggregator;
    v3->_frontBoardLayoutAggregator = v6;

    v8 = v3;
  }

  return v3;
}

- (id)_latestAppLaunchBundleIds
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = objc_opt_new();
  v2 = BiomeLibrary();
  v3 = [v2 App];
  inFocus = [v3 InFocus];
  v5 = [inFocus atx_publisherFromStartDate:0];
  last = [v5 last];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ATXModeAppLaunchFeaturizer__latestAppLaunchBundleIds__block_invoke_13;
  v10[3] = &unk_279AB7CD0;
  v10[4] = &v11;
  v7 = [last sinkWithCompletion:&__block_literal_global_3 receiveInput:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __55__ATXModeAppLaunchFeaturizer__latestAppLaunchBundleIds__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__ATXModeAppLaunchFeaturizer__latestAppLaunchBundleIds__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: done fetching last app launch event", v6, 2u);
  }
}

void __55__ATXModeAppLaunchFeaturizer__latestAppLaunchBundleIds__block_invoke_13(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 eventBody];
  if ([v3 starting])
  {
    v4 = [v13 eventBody];
    v5 = [v4 bundleID];
    v6 = [v5 length];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = [v13 eventBody];
    v10 = [v9 bundleID];
    v11 = [v8 initWithObjects:{v10, 0}];

    objc_autoreleasePoolPop(v7);
    v12 = *(*(a1 + 32) + 8);
    v3 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

LABEL_5:
}

- (id)provideFeatures
{
  _latestAppLaunchBundleIds = [(ATXModeAppLaunchFeaturizer *)self _latestAppLaunchBundleIds];
  v4 = [(ATXModeAppLaunchFeaturizer *)self _provideFeaturesWithBundleIds:_latestAppLaunchBundleIds];

  return v4;
}

- (id)_provideFeaturesWithBundleIds:(id)ids
{
  v17 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v5 = objc_alloc_init(ATXModeFeatureSet);
  state = [(ATXModeAppLaunchFeaturizer *)self state];
  if (state == 4 || state == 3)
  {
    v9 = 0;
    v10 = 1;
  }

  else if (state)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    expectedGenreId = [(ATXModeAppLaunchFeaturizer *)self expectedGenreId];
    additionalAllowedBundleIds = [(ATXModeAppLaunchFeaturizer *)self additionalAllowedBundleIds];
    v9 = activeBundleForBundleIds(idsCopy, expectedGenreId, additionalAllowedBundleIds);

    v10 = v9 != 0;
    if (v9)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    [(ATXModeAppLaunchFeaturizer *)self setState:v11];
    v12 = __atxlog_handle_modes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      state2 = [(ATXModeAppLaunchFeaturizer *)self state];
      _os_log_impl(&dword_260C9F000, v12, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: Initial state: %ld", &v15, 0xCu);
    }
  }

  [(ATXModeFeatureSet *)v5 setValue:v10 forBinaryFeatureOfType:[(ATXModeAppLaunchFeaturizer *)self modeFeatureType]];
  if (v10 && v9)
  {
    [(ATXModeFeatureSet *)v5 setString:v9 forFeatureType:16];
  }

  else
  {
    [(ATXModeFeatureSet *)v5 setNullForFeatureType:16];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_actuallyEndMode
{
  if ([(ATXModeAppLaunchFeaturizer *)self state]== 4)
  {
    [(ATXModeAppLaunchFeaturizer *)self setState:1];
    v3 = __atxlog_handle_modes();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_260C9F000, v3, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: State after cooldown: not active", v7, 2u);
    }

    delegate = [(ATXModeAppLaunchFeaturizer *)self delegate];
    v5 = objc_opt_new();
    v6 = [(ATXModeAppLaunchFeaturizer *)self _provideFeaturesWithBundleIds:v5];
    [delegate featurizer:self didUpdateFeatures:v6];
  }
}

- (void)_actuallyStartMode
{
  if ([(ATXModeAppLaunchFeaturizer *)self state]== 2)
  {
    [(ATXModeAppLaunchFeaturizer *)self setState:3];
    v3 = __atxlog_handle_modes();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_260C9F000, v3, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: State after ease-in: active", v7, 2u);
    }

    delegate = [(ATXModeAppLaunchFeaturizer *)self delegate];
    _latestAppLaunchBundleIds = [(ATXModeAppLaunchFeaturizer *)self _latestAppLaunchBundleIds];
    v6 = [(ATXModeAppLaunchFeaturizer *)self _provideFeaturesWithBundleIds:_latestAppLaunchBundleIds];
    [delegate featurizer:self didUpdateFeatures:v6];
  }
}

- (unint64_t)expectedGenreId
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Subclasses should implement -[ATXModeAppLaunchFeaturizer expectedGenreId]" userInfo:0];
  objc_exception_throw(v2);
}

- (int)modeFeatureType
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Subclasses should implement -[ATXModeAppLaunchFeaturizer modeFeatureType]" userInfo:0];
  objc_exception_throw(v2);
}

- (id)registrationId
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Subclasses should implement -[ATXModeAppLaunchFeaturizer registrationId]" userInfo:0];
  objc_exception_throw(v2);
}

- (void)_processActiveApps:(id)apps
{
  appsCopy = apps;
  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXModeAppLaunchFeaturizer _processActiveApps:];
  }

  state = [(ATXModeAppLaunchFeaturizer *)self state];
  if ([appsCopy count])
  {
    expectedGenreId = [(ATXModeAppLaunchFeaturizer *)self expectedGenreId];
    additionalAllowedBundleIds = [(ATXModeAppLaunchFeaturizer *)self additionalAllowedBundleIds];
    v9 = activeBundleForBundleIds(appsCopy, expectedGenreId, additionalAllowedBundleIds);
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  if (state != v10)
  {
    if (state <= 1)
    {
      if (!state)
      {
        goto LABEL_45;
      }

      if (state != 1 || v10 != 3)
      {
        goto LABEL_34;
      }

      v14 = __atxlog_handle_modes();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_260C9F000, v14, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: Entering ease in period before entering state", v28, 2u);
      }

      [(ATXModeAppLaunchFeaturizer *)self setState:2];
      easeInTimer = self->_easeInTimer;
      easeInTimerIsEnabled = self->_easeInTimerIsEnabled;
    }

    else
    {
      if (state == 2)
      {
        v11 = __atxlog_handle_modes();
        v17 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (v10 != 3)
        {
          if (v17)
          {
            *v26 = 0;
            _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: Going back to inactive state since user quit prematurely", v26, 2u);
          }

          [(ATXModeAppLaunchFeaturizer *)self setState:1];
          cooldownTimer = self->_easeInTimer;
          goto LABEL_40;
        }

        if (v17)
        {
          v27 = 0;
          v18 = "ATXModeAppLaunchFeaturizer: Already easing in and still not in state";
          v19 = &v27;
LABEL_43:
          _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
        }

LABEL_44:

        goto LABEL_45;
      }

      if (state != 3)
      {
        if (state == 4)
        {
          v11 = __atxlog_handle_modes();
          v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          if (v10 == 3)
          {
            if (v12)
            {
              *buf = 0;
              _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: Going back to proper state", buf, 2u);
            }

            [(ATXModeAppLaunchFeaturizer *)self setState:3];
            cooldownTimer = self->_cooldownTimer;
LABEL_40:
            [(_PASSimpleCoalescingTimer *)cooldownTimer cancelPendingOperations];
            goto LABEL_45;
          }

          if (v12)
          {
            v23 = 0;
            v18 = "ATXModeAppLaunchFeaturizer: Already cooling down and still not in state";
            v19 = &v23;
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        goto LABEL_34;
      }

      if (v10 != 1)
      {
LABEL_34:
        v22 = __atxlog_handle_modes();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [ATXModeAppLaunchFeaturizer _processActiveApps:];
        }

        goto LABEL_45;
      }

      v20 = __atxlog_handle_modes();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_260C9F000, v20, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: Entering cool down period before exiting state", v25, 2u);
      }

      [(ATXModeAppLaunchFeaturizer *)self setState:4];
      easeInTimer = self->_cooldownTimer;
      easeInTimerIsEnabled = self->_cooldownTimerIsEnabled;
    }

    v21 = 300.0;
    if (!easeInTimerIsEnabled)
    {
      v21 = 0.0;
    }

    [(_PASSimpleCoalescingTimer *)easeInTimer runAfterDelaySeconds:1 coalescingBehavior:v21];
  }

LABEL_45:
}

- (void)beginListening
{
  objc_initWeak(&location, self);
  if (!self->_cooldownTimer)
  {
    v3 = objc_alloc(MEMORY[0x277D42628]);
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke;
    v31[3] = &unk_279AB7B90;
    objc_copyWeak(&v32, &location);
    v6 = [v3 initWithQueue:v4 operation:v31];
    cooldownTimer = self->_cooldownTimer;
    self->_cooldownTimer = v6;

    objc_destroyWeak(&v32);
  }

  if (!self->_easeInTimer)
  {
    v8 = objc_alloc(MEMORY[0x277D42628]);
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke_2;
    v29[3] = &unk_279AB7B90;
    objc_copyWeak(&v30, &location);
    v11 = [v8 initWithQueue:v9 operation:v29];
    easeInTimer = self->_easeInTimer;
    self->_easeInTimer = v11;

    objc_destroyWeak(&v30);
  }

  if (!self->_queue)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.BiomeAppLaunch.queue", v13);
    queue = self->_queue;
    self->_queue = v14;
  }

  v16 = objc_alloc(MEMORY[0x277CF1918]);
  registrationId = [(ATXModeAppLaunchFeaturizer *)self registrationId];
  v18 = [v16 initWithIdentifier:registrationId targetQueue:self->_queue];
  scheduler = self->_scheduler;
  self->_scheduler = v18;

  v20 = BiomeLibrary();
  v21 = [v20 App];
  inFocus = [v21 InFocus];
  atx_DSLPublisher = [inFocus atx_DSLPublisher];
  v24 = [atx_DSLPublisher subscribeOn:self->_scheduler];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke_32;
  v27[3] = &unk_279AB7CF8;
  objc_copyWeak(&v28, &location);
  v25 = [v24 sinkWithCompletion:&__block_literal_global_31_0 receiveInput:v27];
  sink = self->_sink;
  self->_sink = v25;

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _actuallyEndMode];
}

void __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _actuallyStartMode];
}

void __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke_3_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeAppLaunchFeaturizer: done listening to app launch events", v6, 2u);
  }
}

- (void)stopListening
{
  [(BPSSink *)self->_sink cancel];
  sink = self->_sink;
  self->_sink = 0;

  scheduler = self->_scheduler;
  self->_scheduler = 0;
}

- (ATXModeFeaturizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__ATXModeAppLaunchFeaturizer__latestAppLaunchBundleIds__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeAppLaunchFeaturizer: error fetching last app launch event: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processActiveApps:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_260C9F000, v0, OS_LOG_TYPE_DEBUG, "ATXModeAppLaunchFeaturizer: Processing active apps: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_processActiveApps:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v4 = 2048;
  v5 = v0;
  _os_log_fault_impl(&dword_260C9F000, v1, OS_LOG_TYPE_FAULT, "ATXModeAppLaunchFeaturizer: Unexpected state %ld %ld", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __44__ATXModeAppLaunchFeaturizer_beginListening__block_invoke_3_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeAppLaunchFeaturizer: error listening to app launch events: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end