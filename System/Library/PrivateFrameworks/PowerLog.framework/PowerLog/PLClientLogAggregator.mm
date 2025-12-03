@interface PLClientLogAggregator
+ (id)sharedInstance;
- (BOOL)_aggregateForClientID:(id)d eventName:(id)name eventDictionary:(id)dictionary configuration:(id)configuration;
- (BOOL)_isEventInputValid:(id)valid configuration:(id)configuration;
- (BOOL)_setEventAggregate:(id)aggregate eventName:(id)name aggregateKey:(id)key valueLabel:(id)label value:(id)value;
- (BOOL)aggregateForClientID_async:(signed __int16)d_async eventName:(id)name eventDictionary:(id)dictionary configuration:(id)configuration;
- (PLClientLogAggregator)init;
- (id)_eventAggregate:(id)aggregate eventName:(id)name aggregateKey:(id)key valueLabel:(id)label;
- (void)_flushToPowerLog;
- (void)_scheduleFlushTimer;
- (void)cleanCache;
@end

@implementation PLClientLogAggregator

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PLClientLogAggregator sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __39__PLClientLogAggregator_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(PLClientLogAggregator);

  return MEMORY[0x1EEE66BB8]();
}

- (PLClientLogAggregator)init
{
  v11.receiver = self;
  v11.super_class = PLClientLogAggregator;
  v2 = [(PLClientLogAggregator *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    aggregatesCache = v2->_aggregatesCache;
    v2->_aggregatesCache = v3;

    *&v2->_numAggregates = 0;
    v5 = os_log_create("com.apple.powerlog.clientLogAggregator", "");
    logHandle = v2->_logHandle;
    v2->_logHandle = v5;

    if (!v2->_logHandle)
    {
      objc_storeStrong(&v2->_logHandle, MEMORY[0x1E69E9C10]);
    }

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("PLClientLogAggregator", v7);
    executionQueue = v2->_executionQueue;
    v2->_executionQueue = v8;
  }

  return v2;
}

- (void)_scheduleFlushTimer
{
  flushTimer = [(PLClientLogAggregator *)self flushTimer];

  if (!flushTimer)
  {
    executionQueue = [(PLClientLogAggregator *)self executionQueue];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, executionQueue);
    [(PLClientLogAggregator *)self setFlushTimer:v5];

    flushTimer2 = [(PLClientLogAggregator *)self flushTimer];
    v7 = dispatch_walltime(0, 900000000000);
    dispatch_source_set_timer(flushTimer2, v7, 0xFFFFFFFFFFFFFFFFLL, 0x14F46B0400uLL);

    flushTimer3 = [(PLClientLogAggregator *)self flushTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__PLClientLogAggregator__scheduleFlushTimer__block_invoke;
    handler[3] = &unk_1E7F187A0;
    handler[4] = self;
    dispatch_source_set_event_handler(flushTimer3, handler);

    flushTimer4 = [(PLClientLogAggregator *)self flushTimer];
    dispatch_resume(flushTimer4);
  }
}

- (BOOL)aggregateForClientID_async:(signed __int16)d_async eventName:(id)name eventDictionary:(id)dictionary configuration:(id)configuration
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  configurationCopy = configuration;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  executionQueue = [(PLClientLogAggregator *)self executionQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__PLClientLogAggregator_aggregateForClientID_async_eventName_eventDictionary_configuration___block_invoke;
  v18[3] = &unk_1E7F18B50;
  v21 = configurationCopy;
  v22 = &v24;
  d_asyncCopy = d_async;
  v18[4] = self;
  v19 = nameCopy;
  v20 = dictionaryCopy;
  v14 = configurationCopy;
  v15 = dictionaryCopy;
  v16 = nameCopy;
  dispatch_async(executionQueue, v18);

  LOBYTE(d_async) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return d_async;
}

void __92__PLClientLogAggregator_aggregateForClientID_async_eventName_eventDictionary_configuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithShort:*(a1 + 72)];
  v3 = [*(a1 + 40) copy];
  v4 = [*(a1 + 48) copy];
  v5 = [*(a1 + 56) copy];
  *(*(*(a1 + 64) + 8) + 24) = [v2 _aggregateForClientID:v6 eventName:v3 eventDictionary:v4 configuration:v5];
}

- (BOOL)_aggregateForClientID:(id)d eventName:(id)name eventDictionary:(id)dictionary configuration:(id)configuration
{
  v59 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  dictionaryCopy = dictionary;
  configurationCopy = configuration;
  v13 = configurationCopy;
  v14 = 0;
  v41 = dCopy;
  if (dCopy && nameCopy && dictionaryCopy && configurationCopy)
  {
    logHandle = [(PLClientLogAggregator *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v52 = dCopy;
      v53 = 2112;
      v54 = nameCopy;
      v55 = 2112;
      v56 = dictionaryCopy;
      v57 = 2112;
      v58 = v13;
      _os_log_debug_impl(&dword_1BACB7000, logHandle, OS_LOG_TYPE_DEBUG, "Received (clientID:%@, eventName:%@, eventDictionary:%@) for aggregation with configuration:%@", buf, 0x2Au);
    }

    if ([(PLClientLogAggregator *)self _isEventInputValid:dictionaryCopy configuration:v13])
    {
      v16 = [v13 allKeysForObject:&unk_1F38E3260];
      if ([v16 count])
      {
        null = [MEMORY[0x1E695DFB0] null];
        v18 = [dictionaryCopy objectsForKeys:v16 notFoundMarker:null];

        null2 = [MEMORY[0x1E695DFB0] null];
        v20 = v16;
        v21 = [v18 indexOfObject:null2];

        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {

          v40 = 0;
          v14 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v35 = v20;
        v40 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v18 forKeys:v20];
      }

      else
      {
        v35 = v16;
        v40 = &unk_1F38E3678;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v37 = v13;
      v22 = v13;
      v43 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v43)
      {
        v42 = *v47;
        selfCopy = self;
        v39 = v22;
        while (2)
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v47 != v42)
            {
              objc_enumerationMutation(v22);
            }

            v24 = *(*(&v46 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            v25 = [v22 objectForKeyedSubscript:v24];
            if ([v25 unsignedIntValue])
            {
              v26 = [v25 unsignedIntValue] - 1;
              if (v26 > 3)
              {

                objc_autoreleasePoolPop(context);
                v14 = 0;
                v20 = v35;
                v13 = v37;
                goto LABEL_31;
              }

              v27 = *(&off_1E7F18B90 + v26);
              v28 = [dictionaryCopy objectForKeyedSubscript:v24];

              if (v28)
              {
                v29 = [(PLClientLogAggregator *)self _eventAggregate:v41 eventName:nameCopy aggregateKey:v40 valueLabel:v24];
                v30 = [dictionaryCopy objectForKeyedSubscript:v24];
                v31 = (*(v27 + 16))(v27, v29, v30);

                v22 = v39;
                self = selfCopy;
                [(PLClientLogAggregator *)selfCopy _setEventAggregate:v41 eventName:nameCopy aggregateKey:v40 valueLabel:v24 value:v31];
              }
            }

            objc_autoreleasePoolPop(context);
          }

          v43 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }
      }

      [(PLClientLogAggregator *)self setNumAggregations:([(PLClientLogAggregator *)self numAggregations]+ 1)];
      if ([(PLClientLogAggregator *)self numAggregations]== 1)
      {
        [(PLClientLogAggregator *)self _scheduleFlushTimer];
      }

      numAggregations = [(PLClientLogAggregator *)self numAggregations];
      v20 = v36;
      if (numAggregations >= 0x14)
      {
        [(PLClientLogAggregator *)self _flushToPowerLog];
      }

      v14 = 1;
      v13 = v37;
      goto LABEL_31;
    }

    v14 = 0;
  }

LABEL_32:

  v33 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_isEventInputValid:(id)valid configuration:(id)configuration
{
  v38 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  configurationCopy = configuration;
  v8 = [validCopy count];
  if (v8 == [configurationCopy count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    logHandle4 = validCopy;
    v10 = [logHandle4 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = validCopy;
      v26 = 0;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(logHandle4);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            logHandle = [(PLClientLogAggregator *)self logHandle];
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
            {
              [PLClientLogAggregator _isEventInputValid:v14 configuration:logHandle];
            }

            goto LABEL_31;
          }

          v15 = [configurationCopy objectForKey:v14];
          if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v15 unsignedIntegerValue] >= 5)
          {
            logHandle2 = [(PLClientLogAggregator *)self logHandle];
            if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
            {
              [PLClientLogAggregator _isEventInputValid:configuration:];
            }

LABEL_31:
            validCopy = v25;
            goto LABEL_32;
          }

          v16 = [logHandle4 objectForKey:v14];
          if ([v15 unsignedIntegerValue])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              logHandle3 = [(PLClientLogAggregator *)self logHandle];
              if (!os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_39;
              }

              unsignedIntegerValue = [v15 unsignedIntegerValue];
              validCopy = v25;
              if (unsignedIntegerValue > 4)
              {
                v24 = @"(null)";
              }

              else
              {
                v24 = off_1E7F18BB0[unsignedIntegerValue & 7];
              }

              *buf = 138412802;
              v32 = v14;
              v33 = 2112;
              v34 = v16;
              v35 = 2112;
              v36 = v24;
              _os_log_debug_impl(&dword_1BACB7000, logHandle3, OS_LOG_TYPE_DEBUG, "Invalid event data -- value for %@: %@ (according to configuration, %@ expects NSNumber)", buf, 0x20u);
              goto LABEL_40;
            }

            v26 = 1;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                logHandle3 = [(PLClientLogAggregator *)self logHandle];
                if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEBUG))
                {
                  [PLClientLogAggregator _isEventInputValid:configuration:];
                }

LABEL_39:
                validCopy = v25;
LABEL_40:

                goto LABEL_32;
              }
            }
          }
        }

        v11 = [logHandle4 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      validCopy = v25;
      if (v26)
      {
        v17 = 1;
        goto LABEL_33;
      }
    }

    else
    {
    }

    logHandle4 = [(PLClientLogAggregator *)self logHandle];
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogAggregator _isEventInputValid:logHandle4 configuration:?];
    }
  }

  else
  {
    logHandle4 = [(PLClientLogAggregator *)self logHandle];
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEBUG))
    {
      [(PLClientLogAggregator *)validCopy _isEventInputValid:configurationCopy configuration:logHandle4];
    }
  }

LABEL_32:

  v17 = 0;
LABEL_33:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)_flushToPowerLog
{
  numAggregations = [a2 numAggregations];
  *self = 67109120;
  *a3 = numAggregations;
  _os_log_debug_impl(&dword_1BACB7000, a4, OS_LOG_TYPE_DEBUG, "# of aggregations before flush: %d", self, 8u);
}

- (void)cleanCache
{
  aggregatesCache = [(PLClientLogAggregator *)self aggregatesCache];
  [aggregatesCache removeAllObjects];

  [(PLClientLogAggregator *)self setNumAggregates:0];

  [(PLClientLogAggregator *)self setNumAggregations:0];
}

- (id)_eventAggregate:(id)aggregate eventName:(id)name aggregateKey:(id)key valueLabel:(id)label
{
  labelCopy = label;
  keyCopy = key;
  nameCopy = name;
  aggregateCopy = aggregate;
  aggregatesCache = [(PLClientLogAggregator *)self aggregatesCache];
  v15 = [aggregatesCache objectForKeyedSubscript:aggregateCopy];

  v16 = [v15 objectForKeyedSubscript:nameCopy];

  v17 = [v16 objectForKeyedSubscript:keyCopy];

  v18 = [v17 objectForKeyedSubscript:labelCopy];

  return v18;
}

- (BOOL)_setEventAggregate:(id)aggregate eventName:(id)name aggregateKey:(id)key valueLabel:(id)label value:(id)value
{
  v70 = *MEMORY[0x1E69E9840];
  aggregateCopy = aggregate;
  nameCopy = name;
  keyCopy = key;
  labelCopy = label;
  valueCopy = value;
  aggregatesCache = [(PLClientLogAggregator *)self aggregatesCache];
  v18 = [aggregatesCache objectForKeyedSubscript:aggregateCopy];

  if (!v18)
  {
    v19 = objc_opt_new();
    aggregatesCache2 = [(PLClientLogAggregator *)self aggregatesCache];
    [aggregatesCache2 setObject:v19 forKeyedSubscript:aggregateCopy];
  }

  v65 = labelCopy;
  aggregatesCache3 = [(PLClientLogAggregator *)self aggregatesCache];
  v22 = [aggregatesCache3 objectForKeyedSubscript:aggregateCopy];
  v23 = [v22 objectForKeyedSubscript:nameCopy];

  if (!v23)
  {
    v24 = objc_opt_new();
    aggregatesCache4 = [(PLClientLogAggregator *)self aggregatesCache];
    v26 = [aggregatesCache4 objectForKeyedSubscript:aggregateCopy];
    [v26 setObject:v24 forKeyedSubscript:nameCopy];
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v29 = v28;

  aggregatesCache5 = [(PLClientLogAggregator *)self aggregatesCache];
  v31 = [aggregatesCache5 objectForKeyedSubscript:aggregateCopy];
  v32 = [v31 objectForKeyedSubscript:nameCopy];
  v33 = [v32 objectForKeyedSubscript:keyCopy];

  if (!v33)
  {
    v34 = objc_opt_new();
    aggregatesCache6 = [(PLClientLogAggregator *)self aggregatesCache];
    v36 = [aggregatesCache6 objectForKeyedSubscript:aggregateCopy];
    v37 = [v36 objectForKeyedSubscript:nameCopy];
    [v37 setObject:v34 forKeyedSubscript:keyCopy];

    v38 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    aggregatesCache7 = [(PLClientLogAggregator *)self aggregatesCache];
    v40 = [aggregatesCache7 objectForKeyedSubscript:aggregateCopy];
    v41 = [v40 objectForKeyedSubscript:nameCopy];
    v42 = [v41 objectForKeyedSubscript:keyCopy];
    [v42 setObject:v38 forKeyedSubscript:@"__firstTimestamp"];

    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[PLClientLogAggregator numAggregates](self, "numAggregates")}];
    aggregatesCache8 = [(PLClientLogAggregator *)self aggregatesCache];
    v45 = [aggregatesCache8 objectForKeyedSubscript:aggregateCopy];
    v46 = [v45 objectForKeyedSubscript:nameCopy];
    v47 = [v46 objectForKeyedSubscript:keyCopy];
    [v47 setObject:v43 forKeyedSubscript:@"__number"];

    [(PLClientLogAggregator *)self setNumAggregates:([(PLClientLogAggregator *)self numAggregates]+ 1)];
  }

  aggregatesCache9 = [(PLClientLogAggregator *)self aggregatesCache];
  v49 = [aggregatesCache9 objectForKeyedSubscript:aggregateCopy];
  v50 = [v49 objectForKeyedSubscript:nameCopy];
  v51 = [v50 objectForKeyedSubscript:keyCopy];
  [v51 setObject:valueCopy forKeyedSubscript:v65];

  v52 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
  aggregatesCache10 = [(PLClientLogAggregator *)self aggregatesCache];
  v54 = [aggregatesCache10 objectForKeyedSubscript:aggregateCopy];
  v55 = [v54 objectForKeyedSubscript:nameCopy];
  v56 = [v55 objectForKeyedSubscript:keyCopy];
  [v56 setObject:v52 forKeyedSubscript:@"__lastTimestamp"];

  logHandle = [(PLClientLogAggregator *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    aggregatesCache11 = [(PLClientLogAggregator *)self aggregatesCache];
    v61 = [aggregatesCache11 objectForKeyedSubscript:aggregateCopy];
    v62 = [v61 objectForKeyedSubscript:nameCopy];
    v63 = [v62 objectForKeyedSubscript:keyCopy];
    v64 = [v63 objectForKeyedSubscript:@"__number"];
    *buf = 138412546;
    v67 = v64;
    v68 = 2112;
    v69 = v65;
    _os_log_debug_impl(&dword_1BACB7000, logHandle, OS_LOG_TYPE_DEBUG, "-- Updated aggregated event #%@ (key: %@)", buf, 0x16u);
  }

  v58 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_isEventInputValid:(NSObject *)a3 configuration:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 134218240;
  v7 = [a1 count];
  v8 = 2048;
  v9 = [a2 count];
  _os_log_debug_impl(&dword_1BACB7000, a3, OS_LOG_TYPE_DEBUG, "Invalid configuration -- event data (%lu) and configuration (%lu) should have the same number of keys", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_isEventInputValid:(uint64_t)a1 configuration:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1BACB7000, a2, OS_LOG_TYPE_DEBUG, "Invalid event data -- %@ key (expected NSString)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_isEventInputValid:configuration:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "Invalid event data -- GROUP_BY on %@: %@ (expected NSString or NSNumber)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_isEventInputValid:configuration:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "Invalid configuration -- value for %@: %@ (expected AggregateType)");
  v2 = *MEMORY[0x1E69E9840];
}

@end