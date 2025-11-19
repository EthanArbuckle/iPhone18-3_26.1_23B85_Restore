@interface TIAdhocEventDispatcher
+ (id)sharedInstance;
- (id)initFromConfig:(id)a3;
- (id)loadEventSpecMapFromConfig:(id)a3;
- (void)dispatchEventForStatisticWithName:(id)a3 andValue:(int64_t)a4 withCompletionHandler:(id)a5;
@end

@implementation TIAdhocEventDispatcher

- (id)loadEventSpecMapFromConfig:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v4 allKeys];
  v26 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v26)
  {
    v25 = *v38;
    do
    {
      v6 = 0;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v6;
        v7 = *(*(&v37 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v27 = v7;
        v9 = [v4 objectForKey:v7];
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [(TIAdhocEventDispatcher *)self replacePeriodsInString:*(*(&v33 + 1) + 8 * i)];
              v15 = [TIAnalyticsFieldSpec integerFieldSpecWithName:v14];
              [v8 addObject:v15];
            }

            v11 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v11);
        }

        v16 = [TIAnalyticsEventSpec eventSpecWithName:v27 inputModeRequired:0 fieldSpecs:v8];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = v8;
        v18 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v30;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v30 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v29 + 1) + 8 * j) name];
              [v5 setObject:v16 forKey:v22];
            }

            v19 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v19);
        }

        v6 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v26);
  }

  return v5;
}

- (void)dispatchEventForStatisticWithName:(id)a3 andValue:(int64_t)a4 withCompletionHandler:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(TIAdhocEventDispatcher *)self replacePeriodsInString:v8];
  v11 = [(TIAdhocEventDispatcher *)self eventSpecMap];
  v12 = [v11 objectForKey:v10];

  v13 = IXADefaultLogFacility();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [v12 name];
      v22 = [v20 stringWithFormat:@"%s Dispatching adhoc event: %@ %@", "-[TIAdhocEventDispatcher dispatchEventForStatisticWithName:andValue:withCompletionHandler:]", v21, v8];
      *buf = 138412290;
      v30 = v22;
      _os_log_debug_impl(&dword_1863F7000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v27 = v10;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v28 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v17 = +[TIAnalyticsService sharedInstance];
    [v17 registerEventSpec:v12];

    v18 = +[TIAnalyticsService sharedInstance];
    v19 = [v12 name];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __91__TIAdhocEventDispatcher_dispatchEventForStatisticWithName_andValue_withCompletionHandler___block_invoke;
    v24[3] = &unk_1E6F4DB30;
    v25 = v12;
    v26 = v9;
    [v18 dispatchEventWithName:v19 payload:v16 testingParameters:0 allowSparsePayload:1 withCompletionHandler:v24];
  }

  else
  {
    if (v14)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Adhoc event not registered for statistic: %@", "-[TIAdhocEventDispatcher dispatchEventForStatisticWithName:andValue:withCompletionHandler:]", v8];
      *buf = 138412290;
      v30 = v23;
      _os_log_debug_impl(&dword_1863F7000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

void __91__TIAdhocEventDispatcher_dispatchEventForStatisticWithName_andValue_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  v5 = IXADefaultLogFacility();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [*(a1 + 32) name];
    v9 = [v7 stringWithFormat:@"%s Adhoc event dispatch failed: %@", "-[TIAdhocEventDispatcher dispatchEventForStatisticWithName:andValue:withCompletionHandler:]_block_invoke", v8];
    *buf = 138412290;
    v13 = v9;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    v11 = MEMORY[0x1E696AEC0];
    v8 = [*(a1 + 32) name];
    v9 = [v11 stringWithFormat:@"%s Adhoc event dispatched: %@", "-[TIAdhocEventDispatcher dispatchEventForStatisticWithName:andValue:withCompletionHandler:]_block_invoke", v8];
    *buf = 138412290;
    v13 = v9;
  }

  _os_log_debug_impl(&dword_1863F7000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

LABEL_5:
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 1, v3);
  }
}

- (id)initFromConfig:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TIAdhocEventDispatcher;
  v5 = [(TIAdhocEventDispatcher *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(TIAdhocEventDispatcher *)v5 loadEventSpecMapFromConfig:v4];
    eventSpecMap = v6->_eventSpecMap;
    v6->_eventSpecMap = v7;
  }

  return v6;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13352 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_13352, &__block_literal_global_13353);
  }

  v3 = sharedInstance_instance_13354;

  return v3;
}

void __40__TIAdhocEventDispatcher_sharedInstance__block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [TIAdhocEventDispatcher alloc];
  v6 = @"thirdPartyKeyboards";
  v5[0] = @"summonedSystemKeyboard";
  v5[1] = @"3PK.summonedKeyboard";
  v5[2] = @"3PK.switchedToFromSystem";
  v5[3] = @"3PK.switchedBackToSystem";
  v5[4] = @"3PK.crashed";
  v5[5] = @"3PK.primaryLanguageChanged";
  v5[6] = @"3PK.installedOnDevice";
  v5[7] = @"3PK.enabledOnDevice";
  v5[8] = @"3PK.asciiCapableOnDevice";
  v5[9] = @"3PK.requestedOpenAccess";
  v5[10] = @"3PK.grantedOpenAccess";
  v5[11] = @"3PK.usesSettings";
  v5[12] = @"3PK.containedInApp";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:13];
  v7[0] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v2 = [(TIAdhocEventDispatcher *)v0 initFromConfig:v4];
  v3 = sharedInstance_instance_13354;
  sharedInstance_instance_13354 = v2;
}

@end