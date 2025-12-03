@interface TIAnalyticsService
+ (id)sharedInstance;
+ (void)setMockInstance:(id)instance;
- (BOOL)dispatchEventWithName:(id)name error:(id *)error;
- (BOOL)dispatchEventWithName:(id)name inputMode:(id)mode error:(id *)error;
- (BOOL)dispatchEventWithName:(id)name payload:(id)payload testingParameters:(id)parameters allowSparsePayload:(BOOL)sparsePayload error:(id *)error;
- (BOOL)dispatchEventWithName:(id)name values:(id)values error:(id *)error;
- (BOOL)dispatchEventWithName:(id)name values:(id)values inputMode:(id)mode error:(id *)error;
- (TIAnalyticsService)init;
- (TIAnalyticsService)initWithProvider:(id)provider;
- (id)settingsFromInputMode:(id)mode eventSpec:(id)spec errors:(id)errors;
- (id)settingsFromPayload:(id)payload andValues:(id)values eventSpec:(id)spec allowSparsePayload:(BOOL)sparsePayload errors:(id)errors;
- (void)_dispatchEventToDomain:(id)domain withName:(id)name payload:(id)payload values:(id)values inputMode:(id)mode testingParameters:(id)parameters allowSparsePayload:(BOOL)sparsePayload withCompletionHandler:(id)self0;
- (void)_registerEventSpec:(id)spec withCompletionHandler:(id)handler;
- (void)addSettings:(id)settings toPayload:(id)payload errors:(id)errors;
- (void)appendToErrors:(id)errors code:(int64_t)code message:(id)message;
- (void)sendCoreAnalyticsEventToDomain:(id)domain withName:(id)name payload:(id)payload;
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

- (void)sendCoreAnalyticsEventToDomain:(id)domain withName:(id)name payload:(id)payload
{
  payloadCopy = payload;
  name = [domain stringByAppendingFormat:@".%@", name];
  provider = [(TIAnalyticsService *)self provider];
  [provider dispatchEventWithName:name payload:payloadCopy];
}

- (void)appendToErrors:(id)errors code:(int64_t)code message:(id)message
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AEC0];
  messageCopy = message;
  errorsCopy = errors;
  v10 = [[v7 alloc] initWithFormat:messageCopy arguments:&v16];

  v11 = MEMORY[0x1E696ABC0];
  v14 = @"message";
  v15[0] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v11 errorWithDomain:@"TIAnalyticsErrorDomain" code:code userInfo:v12];
  [errorsCopy addObject:v13];
}

- (id)settingsFromPayload:(id)payload andValues:(id)values eventSpec:(id)spec allowSparsePayload:(BOOL)sparsePayload errors:(id)errors
{
  v65 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  valuesCopy = values;
  specCopy = spec;
  errorsCopy = errors;
  v14 = errorsCopy;
  if (payloadCopy && valuesCopy)
  {
    v15 = @"Either the 'payload' or the 'values' argument must be nil.";
    selfCopy2 = self;
    v17 = v14;
    v18 = 6;
LABEL_11:
    [(TIAnalyticsService *)selfCopy2 appendToErrors:v17 code:v18 message:v15];
    v24 = 0;
    goto LABEL_37;
  }

  if (!valuesCopy)
  {
    if (!payloadCopy)
    {
      v49 = errorsCopy;
      v46 = 0;
      v47 = 0;
      v25 = objc_opt_new();
      goto LABEL_13;
    }

LABEL_9:
    v49 = v14;
    v46 = valuesCopy;
    v47 = payloadCopy;
    v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:payloadCopy];
LABEL_13:
    v24 = v25;
    goto LABEL_14;
  }

  v19 = [valuesCopy count];
  fieldSpecs = [specCopy fieldSpecs];
  v21 = [fieldSpecs count];

  if (v19 != v21)
  {
    v15 = @"The value count must match the field count.";
    selfCopy2 = self;
    v17 = v14;
    v18 = 7;
    goto LABEL_11;
  }

  if (payloadCopy)
  {
    goto LABEL_9;
  }

  v49 = v14;
  v47 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  fieldSpecs2 = [specCopy fieldSpecs];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __88__TIAnalyticsService_settingsFromPayload_andValues_eventSpec_allowSparsePayload_errors___block_invoke;
  v60[3] = &unk_1E6F4CCF0;
  v24 = dictionary;
  v61 = v24;
  v46 = valuesCopy;
  v62 = valuesCopy;
  [fieldSpecs2 enumerateObjectsUsingBlock:v60];

LABEL_14:
  v26 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v45 = specCopy;
  fieldSpecs3 = [specCopy fieldSpecs];
  v28 = [fieldSpecs3 countByEnumeratingWithState:&v56 objects:v64 count:16];
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
        objc_enumerationMutation(fieldSpecs3);
      }

      v32 = *(*(&v56 + 1) + 8 * i);
      name = [v32 name];
      v34 = [v24 objectForKey:name];

      if (v34)
      {
        v55 = 0;
        v35 = [v32 validate:v34 error:&v55];
        name2 = v55;
        if ((v35 & 1) == 0)
        {
          [v49 addObject:name2];
        }
      }

      else
      {
        if (sparsePayload)
        {
          goto LABEL_25;
        }

        name2 = [v32 name];
        [(TIAnalyticsService *)self appendToErrors:v49 code:8 message:@"The value for field '%@' is missing.", name2];
      }

LABEL_25:
      name3 = [v32 name];
      [v26 addObject:name3];
    }

    v29 = [fieldSpecs3 countByEnumeratingWithState:&v56 objects:v64 count:16];
  }

  while (v29);
LABEL_27:

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  allKeys = [v24 allKeys];
  v39 = [allKeys countByEnumeratingWithState:&v51 objects:v63 count:16];
  specCopy = v45;
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
          objc_enumerationMutation(allKeys);
        }

        v43 = *(*(&v51 + 1) + 8 * j);
        if (([v26 containsObject:v43] & 1) == 0)
        {
          [(TIAnalyticsService *)self appendToErrors:v49 code:9 message:@"The field '%@' is not defined in the event.", v43];
        }
      }

      v40 = [allKeys countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v40);
  }

  valuesCopy = v46;
  payloadCopy = v47;
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

- (id)settingsFromInputMode:(id)mode eventSpec:(id)spec errors:(id)errors
{
  modeCopy = mode;
  errorsCopy = errors;
  if ([spec isInputModeRequired])
  {
    if (modeCopy && [modeCopy length])
    {
      v10 = +[TIInputModeParser sharedInstance];
      v11 = [v10 parseInputMode:modeCopy];

      goto LABEL_11;
    }

    v12 = @"The input mode is required.";
    selfCopy2 = self;
    v14 = errorsCopy;
    v15 = 4;
  }

  else
  {
    if (!modeCopy || ![modeCopy length])
    {
      goto LABEL_10;
    }

    v12 = @"The input mode is not required and should not be provided.";
    selfCopy2 = self;
    v14 = errorsCopy;
    v15 = 5;
  }

  [(TIAnalyticsService *)selfCopy2 appendToErrors:v14 code:v15 message:v12];
LABEL_10:
  v11 = 0;
LABEL_11:

  return v11;
}

- (void)addSettings:(id)settings toPayload:(id)payload errors:(id)errors
{
  v24 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  payloadCopy = payload;
  errorsCopy = errors;
  if (settingsCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = settingsCopy;
    allKeys = [settingsCopy allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          v17 = [payloadCopy objectForKeyedSubscript:v16];

          if (v17)
          {
            [(TIAnalyticsService *)self appendToErrors:errorsCopy code:3 message:@"The event payload already includes the '%@' key.", v16];
          }
        }

        v13 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    settingsCopy = v18;
    [payloadCopy addEntriesFromDictionary:v18];
  }
}

- (void)_dispatchEventToDomain:(id)domain withName:(id)name payload:(id)payload values:(id)values inputMode:(id)mode testingParameters:(id)parameters allowSparsePayload:(BOOL)sparsePayload withCompletionHandler:(id)self0
{
  domainCopy = domain;
  handlerCopy = handler;
  parametersCopy = parameters;
  modeCopy = mode;
  valuesCopy = values;
  payloadCopy = payload;
  v22 = [name copy];
  v23 = [payloadCopy copy];

  v24 = [valuesCopy copy];
  v25 = [modeCopy copy];

  v26 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:parametersCopy copyItems:1];
  queue = self->_queue;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __138__TIAnalyticsService__dispatchEventToDomain_withName_payload_values_inputMode_testingParameters_allowSparsePayload_withCompletionHandler___block_invoke;
  v35[3] = &unk_1E6F4CCC8;
  v35[4] = self;
  v36 = v22;
  v37 = v25;
  v38 = v23;
  sparsePayloadCopy = sparsePayload;
  v39 = v24;
  v40 = v26;
  v41 = domainCopy;
  v42 = handlerCopy;
  v28 = handlerCopy;
  v29 = domainCopy;
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

- (BOOL)dispatchEventWithName:(id)name payload:(id)payload testingParameters:(id)parameters allowSparsePayload:(BOOL)sparsePayload error:(id *)error
{
  LOBYTE(v8) = sparsePayload;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:name payload:payload values:0 inputMode:0 testingParameters:parameters allowSparsePayload:v8 withCompletionHandler:0];
  return 1;
}

- (BOOL)dispatchEventWithName:(id)name values:(id)values inputMode:(id)mode error:(id *)error
{
  LOBYTE(v7) = 0;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:name payload:0 values:values inputMode:mode testingParameters:0 allowSparsePayload:v7 withCompletionHandler:0];
  return 1;
}

- (BOOL)dispatchEventWithName:(id)name values:(id)values error:(id *)error
{
  LOBYTE(v6) = 0;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:name payload:0 values:values inputMode:0 testingParameters:0 allowSparsePayload:v6 withCompletionHandler:0];
  return 1;
}

- (BOOL)dispatchEventWithName:(id)name inputMode:(id)mode error:(id *)error
{
  LOBYTE(v6) = 0;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:name payload:0 values:0 inputMode:mode testingParameters:0 allowSparsePayload:v6 withCompletionHandler:0];
  return 1;
}

- (BOOL)dispatchEventWithName:(id)name error:(id *)error
{
  LOBYTE(v5) = 0;
  [(TIAnalyticsService *)self _dispatchEventToDomain:@"com.apple.keyboard" withName:name payload:0 values:0 inputMode:0 testingParameters:0 allowSparsePayload:v5 withCompletionHandler:0];
  return 1;
}

- (void)_registerEventSpec:(id)spec withCompletionHandler:(id)handler
{
  specCopy = spec;
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__TIAnalyticsService__registerEventSpec_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E6F4CC80;
  v11[4] = self;
  v12 = specCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = specCopy;
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

- (TIAnalyticsService)initWithProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = TIAnalyticsService;
  v6 = [(TIAnalyticsService *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("com.apple.keyboard.analytics.inputModeParserQueue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_provider, provider);
    v10 = objc_opt_new();
    eventSpecs = v6->_eventSpecs;
    v6->_eventSpecs = v10;
  }

  return v6;
}

+ (void)setMockInstance:(id)instance
{
  instanceCopy = instance;
  if (__mockInstance != instanceCopy)
  {
    v5 = instanceCopy;
    objc_storeStrong(&__mockInstance, instance);
    instanceCopy = v5;
  }
}

@end