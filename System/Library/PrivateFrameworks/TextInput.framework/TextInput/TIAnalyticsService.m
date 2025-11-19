@interface TIAnalyticsService
+ (id)sharedInstance;
+ (void)setMockInstance:(id)a3;
- (BOOL)dispatchEventWithName:(id)a3 error:(id *)a4;
- (BOOL)dispatchEventWithName:(id)a3 inputMode:(id)a4 error:(id *)a5;
- (BOOL)dispatchEventWithName:(id)a3 payload:(id)a4 testingParameters:(id)a5 allowSparsePayload:(BOOL)a6 error:(id *)a7;
- (BOOL)dispatchEventWithName:(id)a3 values:(id)a4 error:(id *)a5;
- (BOOL)dispatchEventWithName:(id)a3 values:(id)a4 inputMode:(id)a5 error:(id *)a6;
- (TIAnalyticsService)init;
- (TIAnalyticsService)initWithProvider:(id)a3;
- (id)settingsFromInputMode:(id)a3 eventSpec:(id)a4 errors:(id)a5;
- (id)settingsFromPayload:(id)a3 andValues:(id)a4 eventSpec:(id)a5 allowSparsePayload:(BOOL)a6 errors:(id)a7;
- (void)_dispatchEventToDomain:(id)a3 withName:(id)a4 payload:(id)a5 values:(id)a6 inputMode:(id)a7 testingParameters:(id)a8 allowSparsePayload:(BOOL)a9 withCompletionHandler:(id)a10;
- (void)_registerEventSpec:(id)a3 withCompletionHandler:(id)a4;
- (void)addSettings:(id)a3 toPayload:(id)a4 errors:(id)a5;
- (void)appendToErrors:(id)a3 code:(int64_t)a4 message:(id)a5;
- (void)sendCoreAnalyticsEventToDomain:(id)a3 withName:(id)a4 payload:(id)a5;
@end

@implementation TIAnalyticsService

+ (id)sharedInstance
{
  v2 = __mockInstance;
  if (!__mockInstance)
  {
    if (sharedInstance_onceToken_251 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_251, &__block_literal_global_253);
    }

    v2 = sharedInstance_instance_250;
  }

  v3 = v2;

  return v3;
}

uint64_t __36__TIAnalyticsService_sharedInstance__block_invoke()
{
  sharedInstance_instance_250 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (TIAnalyticsService)init
{
  v3 = objc_opt_new();
  v4 = [(TIAnalyticsService *)self initWithProvider:v3];

  return v4;
}

- (void)sendCoreAnalyticsEventToDomain:(id)a3 withName:(id)a4 payload:(id)a5
{
  v8 = a5;
  v10 = [a3 stringByAppendingFormat:@".%@", a4];
  v9 = [(TIAnalyticsService *)self provider];
  [v9 dispatchEventWithName:v10 payload:v8];
}

- (void)appendToErrors:(id)a3 code:(int64_t)a4 message:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AEC0];
  v8 = a5;
  v9 = a3;
  v10 = [[v7 alloc] initWithFormat:v8 arguments:&v16];

  v11 = MEMORY[0x1E696ABC0];
  v14 = @"message";
  v15[0] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v11 errorWithDomain:@"TIAnalyticsErrorDomain" code:a4 userInfo:v12];
  [v9 addObject:v13];
}

- (id)settingsFromPayload:(id)a3 andValues:(id)a4 eventSpec:(id)a5 allowSparsePayload:(BOOL)a6 errors:(id)a7
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = v13;
  if (v10 && v11)
  {
    v15 = @"Either the 'payload' or the 'values' argument must be nil.";
    v16 = self;
    v17 = v14;
    v18 = 6;
LABEL_11:
    [(TIAnalyticsService *)v16 appendToErrors:v17 code:v18 message:v15];
    v24 = 0;
    goto LABEL_37;
  }

  if (!v11)
  {
    if (!v10)
    {
      v49 = v13;
      v46 = 0;
      v47 = 0;
      v25 = objc_opt_new();
      goto LABEL_13;
    }

LABEL_9:
    v49 = v14;
    v46 = v11;
    v47 = v10;
    v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
LABEL_13:
    v24 = v25;
    goto LABEL_14;
  }

  v19 = [v11 count];
  v20 = [v12 fieldSpecs];
  v21 = [v20 count];

  if (v19 != v21)
  {
    v15 = @"The value count must match the field count.";
    v16 = self;
    v17 = v14;
    v18 = 7;
    goto LABEL_11;
  }

  if (v10)
  {
    goto LABEL_9;
  }

  v49 = v14;
  v47 = 0;
  v22 = [MEMORY[0x1E695DF90] dictionary];
  v23 = [v12 fieldSpecs];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __88__TIAnalyticsService_settingsFromPayload_andValues_eventSpec_allowSparsePayload_errors___block_invoke;
  v60[3] = &unk_1E6F4CCF0;
  v24 = v22;
  v61 = v24;
  v46 = v11;
  v62 = v11;
  [v23 enumerateObjectsUsingBlock:v60];

LABEL_14:
  v26 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v45 = v12;
  v27 = [v12 fieldSpecs];
  v28 = [v27 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (!v28)
  {
    goto LABEL_27;
  }

  v29 = v28;
  v30 = *v57;
  do
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v57 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v56 + 1) + 8 * i);
      v33 = [v32 name];
      v34 = [v24 objectForKey:v33];

      if (v34)
      {
        v55 = 0;
        v35 = [v32 validate:v34 error:&v55];
        v36 = v55;
        if ((v35 & 1) == 0)
        {
          [v49 addObject:v36];
        }
      }

      else
      {
        if (a6)
        {
          goto LABEL_25;
        }

        v36 = [v32 name];
        [(TIAnalyticsService *)self appendToErrors:v49 code:8 message:@"The value for field '%@' is missing.", v36];
      }

LABEL_25:
      v37 = [v32 name];
      [v26 addObject:v37];
    }

    v29 = [v27 countByEnumeratingWithState:&v56 objects:v64 count:16];
  }

  while (v29);
LABEL_27:

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = [v24 allKeys];
  v39 = [v38 countByEnumeratingWithState:&v51 objects:v63 count:16];
  v12 = v45;
  v14 = v49;
  if (v39)
  {
    v40 = v39;
    v41 = *v52;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v51 + 1) + 8 * j);
        if (([v26 containsObject:v43] & 1) == 0)
        {
          [(TIAnalyticsService *)self appendToErrors:v49 code:9 message:@"The field '%@' is not defined in the event.", v43];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v40);
  }

  v11 = v46;
  v10 = v47;
LABEL_37:

  return v24;
}

void __88__TIAnalyticsService_settingsFromPayload_andValues_eventSpec_allowSparsePayload_errors___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  v7 = [v6 name];

  [v4 setObject:v8 forKey:v7];
}

- (id)settingsFromInputMode:(id)a3 eventSpec:(id)a4 errors:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 isInputModeRequired])
  {
    if (v8 && [v8 length])
    {
      v10 = +[TIInputModeParser sharedInstance];
      v11 = [v10 parseInputMode:v8];

      goto LABEL_11;
    }

    v12 = @"The input mode is required.";
    v13 = self;
    v14 = v9;
    v15 = 4;
  }

  else
  {
    if (!v8 || ![v8 length])
    {
      goto LABEL_10;
    }

    v12 = @"The input mode is not required and should not be provided.";
    v13 = self;
    v14 = v9;
    v15 = 5;
  }

  [(TIAnalyticsService *)v13 appendToErrors:v14 code:v15 message:v12];
LABEL_10:
  v11 = 0;
LABEL_11:

  return v11;
}

- (void)addSettings:(id)a3 toPayload:(id)a4 errors:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v8;
    v11 = [v8 allKeys];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          v17 = [v9 objectForKeyedSubscript:v16];

          if (v17)
          {
            [(TIAnalyticsService *)self appendToErrors:v10 code:3 message:@"The event payload already includes the '%@' key.", v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v8 = v18;
    [v9 addEntriesFromDictionary:v18];
  }
}

- (void)_dispatchEventToDomain:(id)a3 withName:(id)a4 payload:(id)a5 values:(id)a6 inputMode:(id)a7 testingParameters:(id)a8 allowSparsePayload:(BOOL)a9 withCompletionHandler:(id)a10
{
  v16 = a3;
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = [a4 copy];
  v23 = [v21 copy];

  v24 = [v20 copy];
  v25 = [v19 copy];

  v26 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v18 copyItems:1];
  queue = self->_queue;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __138__TIAnalyticsService__dispatchEventToDomain_withName_payload_values_inputMode_testingParameters_allowSparsePayload_withCompletionHandler___block_invoke;
  v35[3] = &unk_1E6F4CCC8;
  v35[4] = self;
  v36 = v22;
  v37 = v25;
  v38 = v23;
  v43 = a9;
  v39 = v24;
  v40 = v26;
  v41 = v16;
  v42 = v17;
  v28 = v17;
  v29 = v16;
  v30 = v26;
  v31 = v24;
  v32 = v23;
  v33 = v25;
  v34 = v22;
  TIDispatchAsync(queue, v35);
}

void __138__TIAnalyticsService__dispatchEventToDomain_withName_payload_values_inputMode_testingParameters_allowSparsePayload_withCompletionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) eventSpecs];
  v4 = [v3 objectForKey:*(a1 + 40)];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = *(a1 + 32);
    v7 = [v6 settingsFromInputMode:*(a1 + 48) eventSpec:v4 errors:v2];
    [v6 addSettings:v7 toPayload:v5 errors:v2];

    v8 = *(a1 + 32);
    v9 = [v8 settingsFromPayload:*(a1 + 56) andValues:*(a1 + 64) eventSpec:v4 allowSparsePayload:*(a1 + 96) errors:v2];
    [v8 addSettings:v9 toPayload:v5 errors:v2];

    [*(a1 + 32) addSettings:*(a1 + 72) toPayload:v5 errors:v2];
    if ([v2 count])
    {
      v10 = IXADefaultLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Unable to dispatch event '%@' because of the following errors:", "-[TIAnalyticsService _dispatchEventToDomain:withName:payload:values:inputMode:testingParameters:allowSparsePayload:withCompletionHandler:]_block_invoke", *(a1 + 40)];
        *buf = 138412290;
        v21 = v17;
        _os_log_error_impl(&dword_1863F7000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      [v2 enumerateObjectsUsingBlock:&__block_literal_global_271];
    }

    else
    {
      [*(a1 + 32) sendCoreAnalyticsEventToDomain:*(a1 + 80) withName:*(a1 + 40) payload:v5];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to dispatch event '%@' because it's not registered.", *(a1 + 40)];
    v11 = IXADefaultLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %@", "-[TIAnalyticsService _dispatchEventToDomain:withName:payload:values:inputMode:testingParameters:allowSparsePayload:withCompletionHandler:]_block_invoke", v5];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1863F7000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E696ABC0];
    v18 = @"message";
    v19 = v5;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v15 = [v13 errorWithDomain:@"TIAnalyticsErrorDomain" code:0 userInfo:v14];
    [v2 addObject:v15];
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    (*(v16 + 16))(v16, v2);
  }
}

void __138__TIAnalyticsService__dispatchEventToDomain_withName_payload_values_inputMode_testingParameters_allowSparsePayload_withCompletionHandler___block_invoke_268(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXADefaultLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v2 userInfo];
    v6 = [v5 objectForKey:@"message"];
    v7 = [v4 stringWithFormat:@"%s   %@", "-[TIAnalyticsService _dispatchEventToDomain:withName:payload:values:inputMode:testingParameters:allowSparsePayload:withCompletionHandler:]_block_invoke", v6];
    *buf = 138412290;
    v9 = v7;
    _os_log_error_impl(&dword_1863F7000, v3, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }
}

- (BOOL)dispatchEventWithName:(id)a3 payload:(id)a4 testingParameters:(id)a5 allowSparsePayload:(BOOL)a6 error:(id *)a7
{
  LOBYTE(v8) = a6;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:a3 payload:a4 values:0 inputMode:0 testingParameters:a5 allowSparsePayload:v8 withCompletionHandler:0];
  return 1;
}

- (BOOL)dispatchEventWithName:(id)a3 values:(id)a4 inputMode:(id)a5 error:(id *)a6
{
  LOBYTE(v7) = 0;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:a3 payload:0 values:a4 inputMode:a5 testingParameters:0 allowSparsePayload:v7 withCompletionHandler:0];
  return 1;
}

- (BOOL)dispatchEventWithName:(id)a3 values:(id)a4 error:(id *)a5
{
  LOBYTE(v6) = 0;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:a3 payload:0 values:a4 inputMode:0 testingParameters:0 allowSparsePayload:v6 withCompletionHandler:0];
  return 1;
}

- (BOOL)dispatchEventWithName:(id)a3 inputMode:(id)a4 error:(id *)a5
{
  LOBYTE(v6) = 0;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:a3 payload:0 values:0 inputMode:a4 testingParameters:0 allowSparsePayload:v6 withCompletionHandler:0];
  return 1;
}

- (BOOL)dispatchEventWithName:(id)a3 error:(id *)a4
{
  LOBYTE(v5) = 0;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:a3 payload:0 values:0 inputMode:0 testingParameters:0 allowSparsePayload:v5 withCompletionHandler:0];
  return 1;
}

- (void)_registerEventSpec:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__TIAnalyticsService__registerEventSpec_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E6F4CC80;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  TIDispatchAsync(queue, v11);
}

void __63__TIAnalyticsService__registerEventSpec_withCompletionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) eventSpecs];
  v3 = [*(a1 + 40) name];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [*(a1 + 40) name];
    v7 = [v5 stringWithFormat:@"TIAnalyticsEventSpec with name '%@' is already registered.", v6];

    v8 = IXADefaultLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %@", "-[TIAnalyticsService _registerEventSpec:withCompletionHandler:]_block_invoke", v7];
      *buf = 138412290;
      v20 = v16;
      _os_log_debug_impl(&dword_1863F7000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E696ABC0];
    v17 = @"message";
    v18 = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [v9 errorWithDomain:@"TIAnalyticsErrorDomain" code:1 userInfo:v10];
  }

  else
  {
    v12 = [*(a1 + 32) eventSpecs];
    v13 = *(a1 + 40);
    v14 = [v13 name];
    [v12 setObject:v13 forKey:v14];

    v11 = 0;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v11);
  }
}

- (TIAnalyticsService)initWithProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TIAnalyticsService;
  v6 = [(TIAnalyticsService *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("com.apple.keyboard.analytics.inputModeParserQueue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_provider, a3);
    v10 = objc_opt_new();
    eventSpecs = v6->_eventSpecs;
    v6->_eventSpecs = v10;
  }

  return v6;
}

+ (void)setMockInstance:(id)a3
{
  v4 = a3;
  if (__mockInstance != v4)
  {
    v5 = v4;
    objc_storeStrong(&__mockInstance, a3);
    v4 = v5;
  }
}

@end