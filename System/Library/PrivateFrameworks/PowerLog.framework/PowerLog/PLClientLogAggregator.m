@interface PLClientLogAggregator
+ (id)sharedInstance;
- (BOOL)_aggregateForClientID:(id)a3 eventName:(id)a4 eventDictionary:(id)a5 configuration:(id)a6;
- (BOOL)_isEventInputValid:(id)a3 configuration:(id)a4;
- (BOOL)_setEventAggregate:(id)a3 eventName:(id)a4 aggregateKey:(id)a5 valueLabel:(id)a6 value:(id)a7;
- (BOOL)aggregateForClientID_async:(signed __int16)a3 eventName:(id)a4 eventDictionary:(id)a5 configuration:(id)a6;
- (PLClientLogAggregator)init;
- (id)_eventAggregate:(id)a3 eventName:(id)a4 aggregateKey:(id)a5 valueLabel:(id)a6;
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
  v3 = [(PLClientLogAggregator *)self flushTimer];

  if (!v3)
  {
    v4 = [(PLClientLogAggregator *)self executionQueue];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
    [(PLClientLogAggregator *)self setFlushTimer:v5];

    v6 = [(PLClientLogAggregator *)self flushTimer];
    v7 = dispatch_walltime(0, 900000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x14F46B0400uLL);

    v8 = [(PLClientLogAggregator *)self flushTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__PLClientLogAggregator__scheduleFlushTimer__block_invoke;
    handler[3] = &unk_1E7F187A0;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);

    v9 = [(PLClientLogAggregator *)self flushTimer];
    dispatch_resume(v9);
  }
}

- (BOOL)aggregateForClientID_async:(signed __int16)a3 eventName:(id)a4 eventDictionary:(id)a5 configuration:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v13 = [(PLClientLogAggregator *)self executionQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__PLClientLogAggregator_aggregateForClientID_async_eventName_eventDictionary_configuration___block_invoke;
  v18[3] = &unk_1E7F18B50;
  v21 = v12;
  v22 = &v24;
  v23 = a3;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v18);

  LOBYTE(a3) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return a3;
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

- (BOOL)_aggregateForClientID:(id)a3 eventName:(id)a4 eventDictionary:(id)a5 configuration:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v44 = a5;
  v12 = a6;
  v13 = v12;
  v14 = 0;
  v41 = v10;
  if (v10 && v11 && v44 && v12)
  {
    v15 = [(PLClientLogAggregator *)self logHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v52 = v10;
      v53 = 2112;
      v54 = v11;
      v55 = 2112;
      v56 = v44;
      v57 = 2112;
      v58 = v13;
      _os_log_debug_impl(&dword_1BACB7000, v15, OS_LOG_TYPE_DEBUG, "Received (clientID:%@, eventName:%@, eventDictionary:%@) for aggregation with configuration:%@", buf, 0x2Au);
    }

    if ([(PLClientLogAggregator *)self _isEventInputValid:v44 configuration:v13])
    {
      v16 = [v13 allKeysForObject:&unk_1F38E3260];
      if ([v16 count])
      {
        v17 = [MEMORY[0x1E695DFB0] null];
        v18 = [v44 objectsForKeys:v16 notFoundMarker:v17];

        v19 = [MEMORY[0x1E695DFB0] null];
        v20 = v16;
        v21 = [v18 indexOfObject:v19];

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
        v38 = self;
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
              v28 = [v44 objectForKeyedSubscript:v24];

              if (v28)
              {
                v29 = [(PLClientLogAggregator *)self _eventAggregate:v41 eventName:v11 aggregateKey:v40 valueLabel:v24];
                v30 = [v44 objectForKeyedSubscript:v24];
                v31 = (*(v27 + 16))(v27, v29, v30);

                v22 = v39;
                self = v38;
                [(PLClientLogAggregator *)v38 _setEventAggregate:v41 eventName:v11 aggregateKey:v40 valueLabel:v24 value:v31];
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

      v32 = [(PLClientLogAggregator *)self numAggregations];
      v20 = v36;
      if (v32 >= 0x14)
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

- (BOOL)_isEventInputValid:(id)a3 configuration:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 == [v7 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = v6;
      v26 = 0;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = [(PLClientLogAggregator *)self logHandle];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              [PLClientLogAggregator _isEventInputValid:v14 configuration:v19];
            }

            goto LABEL_31;
          }

          v15 = [v7 objectForKey:v14];
          if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v15 unsignedIntegerValue] >= 5)
          {
            v18 = [(PLClientLogAggregator *)self logHandle];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              [PLClientLogAggregator _isEventInputValid:configuration:];
            }

LABEL_31:
            v6 = v25;
            goto LABEL_32;
          }

          v16 = [v9 objectForKey:v14];
          if ([v15 unsignedIntegerValue])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v22 = [(PLClientLogAggregator *)self logHandle];
              if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_39;
              }

              v23 = [v15 unsignedIntegerValue];
              v6 = v25;
              if (v23 > 4)
              {
                v24 = @"(null)";
              }

              else
              {
                v24 = off_1E7F18BB0[v23 & 7];
              }

              *buf = 138412802;
              v32 = v14;
              v33 = 2112;
              v34 = v16;
              v35 = 2112;
              v36 = v24;
              _os_log_debug_impl(&dword_1BACB7000, v22, OS_LOG_TYPE_DEBUG, "Invalid event data -- value for %@: %@ (according to configuration, %@ expects NSNumber)", buf, 0x20u);
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
                v22 = [(PLClientLogAggregator *)self logHandle];
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  [PLClientLogAggregator _isEventInputValid:configuration:];
                }

LABEL_39:
                v6 = v25;
LABEL_40:

                goto LABEL_32;
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v6 = v25;
      if (v26)
      {
        v17 = 1;
        goto LABEL_33;
      }
    }

    else
    {
    }

    v9 = [(PLClientLogAggregator *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogAggregator _isEventInputValid:v9 configuration:?];
    }
  }

  else
  {
    v9 = [(PLClientLogAggregator *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(PLClientLogAggregator *)v6 _isEventInputValid:v7 configuration:v9];
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
  v7 = [a2 numAggregations];
  *a1 = 67109120;
  *a3 = v7;
  _os_log_debug_impl(&dword_1BACB7000, a4, OS_LOG_TYPE_DEBUG, "# of aggregations before flush: %d", a1, 8u);
}

- (void)cleanCache
{
  v3 = [(PLClientLogAggregator *)self aggregatesCache];
  [v3 removeAllObjects];

  [(PLClientLogAggregator *)self setNumAggregates:0];

  [(PLClientLogAggregator *)self setNumAggregations:0];
}

- (id)_eventAggregate:(id)a3 eventName:(id)a4 aggregateKey:(id)a5 valueLabel:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PLClientLogAggregator *)self aggregatesCache];
  v15 = [v14 objectForKeyedSubscript:v13];

  v16 = [v15 objectForKeyedSubscript:v12];

  v17 = [v16 objectForKeyedSubscript:v11];

  v18 = [v17 objectForKeyedSubscript:v10];

  return v18;
}

- (BOOL)_setEventAggregate:(id)a3 eventName:(id)a4 aggregateKey:(id)a5 valueLabel:(id)a6 value:(id)a7
{
  v70 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PLClientLogAggregator *)self aggregatesCache];
  v18 = [v17 objectForKeyedSubscript:v12];

  if (!v18)
  {
    v19 = objc_opt_new();
    v20 = [(PLClientLogAggregator *)self aggregatesCache];
    [v20 setObject:v19 forKeyedSubscript:v12];
  }

  v65 = v15;
  v21 = [(PLClientLogAggregator *)self aggregatesCache];
  v22 = [v21 objectForKeyedSubscript:v12];
  v23 = [v22 objectForKeyedSubscript:v13];

  if (!v23)
  {
    v24 = objc_opt_new();
    v25 = [(PLClientLogAggregator *)self aggregatesCache];
    v26 = [v25 objectForKeyedSubscript:v12];
    [v26 setObject:v24 forKeyedSubscript:v13];
  }

  v27 = [MEMORY[0x1E695DF00] date];
  [v27 timeIntervalSince1970];
  v29 = v28;

  v30 = [(PLClientLogAggregator *)self aggregatesCache];
  v31 = [v30 objectForKeyedSubscript:v12];
  v32 = [v31 objectForKeyedSubscript:v13];
  v33 = [v32 objectForKeyedSubscript:v14];

  if (!v33)
  {
    v34 = objc_opt_new();
    v35 = [(PLClientLogAggregator *)self aggregatesCache];
    v36 = [v35 objectForKeyedSubscript:v12];
    v37 = [v36 objectForKeyedSubscript:v13];
    [v37 setObject:v34 forKeyedSubscript:v14];

    v38 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    v39 = [(PLClientLogAggregator *)self aggregatesCache];
    v40 = [v39 objectForKeyedSubscript:v12];
    v41 = [v40 objectForKeyedSubscript:v13];
    v42 = [v41 objectForKeyedSubscript:v14];
    [v42 setObject:v38 forKeyedSubscript:@"__firstTimestamp"];

    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[PLClientLogAggregator numAggregates](self, "numAggregates")}];
    v44 = [(PLClientLogAggregator *)self aggregatesCache];
    v45 = [v44 objectForKeyedSubscript:v12];
    v46 = [v45 objectForKeyedSubscript:v13];
    v47 = [v46 objectForKeyedSubscript:v14];
    [v47 setObject:v43 forKeyedSubscript:@"__number"];

    [(PLClientLogAggregator *)self setNumAggregates:([(PLClientLogAggregator *)self numAggregates]+ 1)];
  }

  v48 = [(PLClientLogAggregator *)self aggregatesCache];
  v49 = [v48 objectForKeyedSubscript:v12];
  v50 = [v49 objectForKeyedSubscript:v13];
  v51 = [v50 objectForKeyedSubscript:v14];
  [v51 setObject:v16 forKeyedSubscript:v65];

  v52 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
  v53 = [(PLClientLogAggregator *)self aggregatesCache];
  v54 = [v53 objectForKeyedSubscript:v12];
  v55 = [v54 objectForKeyedSubscript:v13];
  v56 = [v55 objectForKeyedSubscript:v14];
  [v56 setObject:v52 forKeyedSubscript:@"__lastTimestamp"];

  v57 = [(PLClientLogAggregator *)self logHandle];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    v60 = [(PLClientLogAggregator *)self aggregatesCache];
    v61 = [v60 objectForKeyedSubscript:v12];
    v62 = [v61 objectForKeyedSubscript:v13];
    v63 = [v62 objectForKeyedSubscript:v14];
    v64 = [v63 objectForKeyedSubscript:@"__number"];
    *buf = 138412546;
    v67 = v64;
    v68 = 2112;
    v69 = v65;
    _os_log_debug_impl(&dword_1BACB7000, v57, OS_LOG_TYPE_DEBUG, "-- Updated aggregated event #%@ (key: %@)", buf, 0x16u);
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