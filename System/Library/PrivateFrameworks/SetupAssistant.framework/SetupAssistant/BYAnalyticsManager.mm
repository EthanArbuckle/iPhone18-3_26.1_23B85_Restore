@interface BYAnalyticsManager
- (BOOL)sendStashedEventWithName:(id)a3 payload:(id)a4;
- (BYAnalyticsManager)init;
- (id)_stashablePayloadForBiomeEvent:(id)a3;
- (void)_gatherDataFromProducers;
- (void)_sendCombinedAnalyticsRepromptCompletedEventIfNecessary;
- (void)_sendCombinedAnalyticsRepromptNecessaryEventWithRTCReporting:(id)a3;
- (void)addDidProduceLazyEventsBlock:(id)a3;
- (void)addEvent:(id)a3;
- (void)addPowerLogEvent:(unint64_t)a3 withPayload:(id)a4;
- (void)commit;
- (void)commitThenUpload;
- (void)prepareForCombinedAnalyticsRepromptWithCompletion:(id)a3;
- (void)removeEventsUsingBlock:(id)a3;
- (void)removeNonPersistentEvents;
- (void)reset;
- (void)stash:(id)a3;
@end

@implementation BYAnalyticsManager

- (BYAnalyticsManager)init
{
  v14.receiver = self;
  v14.super_class = BYAnalyticsManager;
  v2 = [(BYAnalyticsManager *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    events = v2->_events;
    v2->_events = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lazyEvents = v2->_lazyEvents;
    v2->_lazyEvents = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    didProduceLazyEventsBlocks = v2->_didProduceLazyEventsBlocks;
    v2->_didProduceLazyEventsBlocks = v7;

    v9 = [BYPowerLogAnalyticsManager alloc];
    v10 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
    v11 = [(BYPowerLogAnalyticsManager *)v9 initWithPreferences:v10];
    buddyPowerLogManager = v2->_buddyPowerLogManager;
    v2->_buddyPowerLogManager = v11;
  }

  return v2;
}

- (void)addEvent:(id)a3
{
  v4 = a3;
  v5 = [(BYAnalyticsManager *)self events];
  [v5 addObject:v4];
}

- (void)addPowerLogEvent:(unint64_t)a3 withPayload:(id)a4
{
  v6 = a4;
  v8 = [[BYPowerLogEvent alloc] initWithType:a3 andPayload:v6];

  if (v8)
  {
    v7 = [(BYAnalyticsManager *)self buddyPowerLogManager];
    [v7 addEvent:v8];
  }
}

- (void)removeEventsUsingBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(BYAnalyticsManager *)self events];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v10 payload];
        v13 = v4[2](v4, v11, v12);

        if (v13)
        {
          [v16 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [(BYAnalyticsManager *)self events];
  [v14 removeObjectsInArray:v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addDidProduceLazyEventsBlock:(id)a3
{
  v4 = a3;
  v6 = [(BYAnalyticsManager *)self didProduceLazyEventsBlocks];
  v5 = MEMORY[0x1B8CC28E0](v4);

  [v6 addObject:v5];
}

- (void)prepareForCombinedAnalyticsRepromptWithCompletion:(id)a3
{
  v25[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(BYAnalyticsManager *)v5 rtcReporting];

  if (v6)
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Analytics reporting configuration already started", buf, 2u);
    }

    v4[2](v4);
    objc_sync_exit(v5);
  }

  else
  {
    objc_sync_exit(v5);

    v8 = arc4random();
    v9 = *MEMORY[0x1E69C6AB8];
    v24[0] = *MEMORY[0x1E69C6AB0];
    v24[1] = v9;
    v25[0] = &unk_1F30A7850;
    v25[1] = &unk_1F30A7868;
    v24[2] = *MEMORY[0x1E69C6AD8];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    v25[2] = v10;
    v11 = *MEMORY[0x1E69C6AC0];
    v24[3] = *MEMORY[0x1E69C6AA0];
    v24[4] = v11;
    v25[3] = MEMORY[0x1E695E110];
    v25[4] = MEMORY[0x1E695E118];
    v24[5] = *MEMORY[0x1E69C6AA8];
    v25[5] = @"com.apple.purplebuddy";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:6];

    v13 = *MEMORY[0x1E69C6AE8];
    v22[0] = *MEMORY[0x1E69C6AE0];
    v22[1] = v13;
    v23[0] = @"Setup";
    v23[1] = @"com.apple.purplebuddy";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v15 = [objc_alloc(MEMORY[0x1E69C6A80]) initWithSessionInfo:v12 userInfo:v14 frameworksToCheck:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__BYAnalyticsManager_prepareForCombinedAnalyticsRepromptWithCompletion___block_invoke;
    v18[3] = &unk_1E7D03D70;
    v18[4] = v5;
    v19 = v15;
    v20 = v4;
    v16 = v15;
    [v16 startConfigurationWithCompletionHandler:v18];

    v5 = v12;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __72__BYAnalyticsManager_prepareForCombinedAnalyticsRepromptWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v3 != 0;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Analytics reporting configuration started with success %d", v10, 8u);
  }

  if (CFPreferencesGetAppBooleanValue(@"ForceRTCStartConfigurationSuccess", @"com.apple.purplebuddy", 0))
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Analytics reporting configuration forcing success", v10, 2u);
    }
  }

  else if (!v3)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = [*(a1 + 32) rtcReporting];
  v8 = v7 == 0;

  if (v8)
  {
    [*(a1 + 32) setRtcReporting:*(a1 + 40)];
    objc_sync_exit(v6);

    [*(a1 + 32) _sendCombinedAnalyticsRepromptNecessaryEventWithRTCReporting:*(a1 + 40)];
  }

  else
  {
    objc_sync_exit(v6);
  }

LABEL_11:
  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stash:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(BYAnalyticsManager *)self _gatherDataFromProducers];
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Stashing analytics...", buf, 2u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(BYAnalyticsManager *)self events];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v11 payload];
        [v4 stashAnalyticEvent:v12 payload:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v14 = [(BYAnalyticsManager *)self appearanceSetupEvent];

  if (v14)
  {
    v15 = [(BYAnalyticsManager *)self appearanceSetupEvent];
    v16 = [(BYAnalyticsManager *)self _stashablePayloadForBiomeEvent:v15];

    if (v16)
    {
      [v4 stashAnalyticEvent:@"biome.appearanceSetup" payload:v16];
    }

    else
    {
      v17 = _BYLoggingFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [BYAnalyticsManager stash:];
      }
    }
  }

  v18 = [(BYAnalyticsManager *)self childMultitaskingSetupEvent];

  if (v18)
  {
    v19 = [(BYAnalyticsManager *)self childMultitaskingSetupEvent];
    v20 = [(BYAnalyticsManager *)self _stashablePayloadForBiomeEvent:v19];

    if (v20)
    {
      [v4 stashAnalyticEvent:@"biome.childMultitaskingSetup" payload:v20];
    }

    else
    {
      v21 = _BYLoggingFacility();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [BYAnalyticsManager stash:];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)commit
{
  v52 = *MEMORY[0x1E69E9840];
  [(BYAnalyticsManager *)self _gatherDataFromProducers];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Committing analytics...", buf, 2u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [(BYAnalyticsManager *)self events];
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v43;
    *&v6 = 138412546;
    v37 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        v11 = _BYLoggingFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v10 name];
          v15 = [v10 payload];
          *buf = v37;
          v48 = v14;
          v49 = 2112;
          v50 = v15;
          _os_log_debug_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEBUG, "Sending event %@ with payload: %@", buf, 0x16u);
        }

        v12 = [v10 name];
        v13 = [v10 payload];
        [(BYAnalyticsManager *)self _sendEvent:v12 payload:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v7);
  }

  v16 = [(BYAnalyticsManager *)self buddyPowerLogManager];
  [v16 commit];

  v17 = [(BYAnalyticsManager *)self appearanceSetupEvent];

  if (v17)
  {
    v18 = _BYLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [BYAnalyticsManager commit];
    }

    v19 = BiomeLibrary();
    v20 = [v19 SystemSettings];
    v21 = [v20 AppearanceSetup];
    v22 = [v21 source];
    v23 = [(BYAnalyticsManager *)self appearanceSetupEvent];
    [v22 sendEvent:v23];
  }

  v24 = [(BYAnalyticsManager *)self childMultitaskingSetupEvent];

  if (v24)
  {
    v25 = _BYLoggingFacility();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [BYAnalyticsManager commit];
    }

    v26 = BiomeLibrary();
    v27 = [v26 SystemSettings];
    v28 = [v27 ChildMultitaskingSetup];
    v29 = [v28 source];
    v30 = [(BYAnalyticsManager *)self childMultitaskingSetupEvent];
    [v29 sendEvent:v30];
  }

  [(BYAnalyticsManager *)self _sendCombinedAnalyticsRepromptCompletedEventIfNecessary];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = [(BYAnalyticsManager *)self didProduceLazyEventsBlocks];
  v32 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v39;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(v31);
        }

        (*(*(*(&v38 + 1) + 8 * i) + 16))();
      }

      v33 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v33);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)commitThenUpload
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__BYAnalyticsManager_commitThenUpload__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__BYAnalyticsManager_commitThenUpload__block_invoke_cold_1();
  }
}

- (void)removeNonPersistentEvents
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Removing non-persistent events...", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(BYAnalyticsManager *)self events];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        if (([v10 persist] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v11 = [(BYAnalyticsManager *)self events];
  [v11 removeObjectsInArray:v4];

  v12 = [(BYAnalyticsManager *)self lazyEvents];
  v13 = [v12 copy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        v20 = [(BYAnalyticsManager *)self lazyEvents];
        v21 = [v20 objectForKeyedSubscript:v19];

        if (([v21 persist] & 1) == 0)
        {
          v22 = [(BYAnalyticsManager *)self lazyEvents];
          v23 = [v21 name];
          [v22 removeObjectForKey:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v16);
  }

  [(BYAnalyticsManager *)self setAppearanceSetupEvent:0];
  [(BYAnalyticsManager *)self setAppearanceSetupEventBlock:0];
  [(BYAnalyticsManager *)self setChildMultitaskingSetupEvent:0];
  [(BYAnalyticsManager *)self setChildMultitaskingSetupEventBlock:0];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting all analytics...", v6, 2u);
  }

  v4 = [(BYAnalyticsManager *)self events];
  [v4 removeAllObjects];

  v5 = [(BYAnalyticsManager *)self lazyEvents];
  [v5 removeAllObjects];

  [(BYAnalyticsManager *)self setAppearanceSetupEvent:0];
  [(BYAnalyticsManager *)self setAppearanceSetupEventBlock:0];
  [(BYAnalyticsManager *)self setChildMultitaskingSetupEvent:0];
  [(BYAnalyticsManager *)self setChildMultitaskingSetupEventBlock:0];
}

- (BOOL)sendStashedEventWithName:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasPrefix:@"biome."];
  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v9)
      {
        v10 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v11 = _BYLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BYAnalyticsManager sendStashedEventWithName:payload:];
    }

    v10 = 0;
    v9 = 0;
LABEL_9:
    v12 = [v7 objectForKeyedSubscript:@"dataVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v12)
      {
        if (v10)
        {
          if ([v6 isEqualToString:@"biome.appearanceSetup"])
          {
            -[BYAnalyticsManager _sendAppearanceSetupEventWithData:dataVersion:](self, "_sendAppearanceSetupEventWithData:dataVersion:", v9, [v12 unsignedIntValue]);
          }

          else if ([v6 isEqualToString:@"biome.childMultitaskingSetup"])
          {
            -[BYAnalyticsManager _sendChildMultitaskingSetupEventWithData:dataVersion:](self, "_sendChildMultitaskingSetupEventWithData:dataVersion:", v9, [v12 unsignedIntValue]);
          }

          else
          {
            v15 = _BYLoggingFacility();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [BYAnalyticsManager sendStashedEventWithName:payload:];
            }
          }
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    v13 = _BYLoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BYAnalyticsManager sendStashedEventWithName:payload:];
    }

    v12 = 0;
    goto LABEL_18;
  }

LABEL_19:

  return v8;
}

- (void)_gatherDataFromProducers
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Gathering data from event producers...", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(BYAnalyticsManager *)self lazyEvents];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 138412290;
    v24 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [(BYAnalyticsManager *)self lazyEvents];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [v13 payloadBlock];
        v15 = v14[2]();

        if (v15)
        {
          v16 = [BYAnalyticsEvent eventWithName:v11 withPayload:v15 persist:0];
          [(BYAnalyticsManager *)self addEvent:v16];
        }

        else
        {
          v16 = _BYLoggingFacility();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v24;
            v30 = v11;
            _os_log_debug_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEBUG, "No payload returned for %@; skipping...", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  v17 = [(BYAnalyticsManager *)self appearanceSetupEventBlock];

  if (v17)
  {
    v18 = [(BYAnalyticsManager *)self appearanceSetupEventBlock];
    v19 = v18[2]();
    [(BYAnalyticsManager *)self setAppearanceSetupEvent:v19];
  }

  v20 = [(BYAnalyticsManager *)self childMultitaskingSetupEventBlock];

  if (v20)
  {
    v21 = [(BYAnalyticsManager *)self childMultitaskingSetupEventBlock];
    v22 = v21[2]();
    [(BYAnalyticsManager *)self setChildMultitaskingSetupEvent:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_stashablePayloadForBiomeEvent:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 serialize];
  v5 = v4;
  if (v4)
  {
    v10[0] = @"data";
    v10[1] = @"dataVersion";
    v11[0] = v4;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "dataVersion")}];
    v11[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_sendCombinedAnalyticsRepromptNecessaryEventWithRTCReporting:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [a3 sendMessageWithCategory:1 type:1 payload:0 error:&v7];
  v4 = v7;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Analytics did send combined analytics reprompt necessary event with success %d error %@", buf, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sendCombinedAnalyticsRepromptCompletedEventIfNecessary
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BYAnalyticsManager *)v2 rtcReporting];
  v4 = [(BYAnalyticsManager *)v2 combinedAnalyticsRepromptChoiceNumber];
  objc_sync_exit(v2);

  if (v3 && v4)
  {
    v17 = @"enabled";
    v18[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = 0;
    v6 = [v3 sendMessageWithCategory:1 type:2 payload:v5 error:&v10];
    v7 = v10;
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v12 = v4;
      v13 = 1024;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Analytics did send combined analytics reprompt completed event (choice %@) with success %d error %@", buf, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stash:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stash:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__BYAnalyticsManager_commitThenUpload__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendStashedEventWithName:payload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendStashedEventWithName:payload:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendStashedEventWithName:payload:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_sendAppearanceSetupEventWithData:dataVersion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendChildMultitaskingSetupEventWithData:dataVersion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end