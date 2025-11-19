@interface STYSignpostStreamingStatistics
- (STYSignpostStreamingStatistics)init;
- (void)_emitTelemetryLockedEndTime:(uint64_t)a1;
- (void)_resetLocked;
- (void)addSignpost:(id)a3;
- (void)dealloc;
- (void)emitTelemetry;
@end

@implementation STYSignpostStreamingStatistics

- (STYSignpostStreamingStatistics)init
{
  v22.receiver = self;
  v22.super_class = STYSignpostStreamingStatistics;
  v2 = [(STYSignpostStreamingStatistics *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("com.apple.sentry.signpostsMonitor.SignpostStreamingStatistics", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2->_queue);
    periodicTimer = v2->_periodicTimer;
    v2->_periodicTimer = v7;

    objc_initWeak(&location, v2);
    v9 = v2->_periodicTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38__STYSignpostStreamingStatistics_init__block_invoke;
    handler[3] = &unk_279B9B550;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_activate(v2->_periodicTimer);
    v10 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, v2->_queue);
    sigtermSource = v2->_sigtermSource;
    v2->_sigtermSource = v10;

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__0;
    v17[4] = __Block_byref_object_dispose__0;
    v18 = os_transaction_create();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__STYSignpostStreamingStatistics_init__block_invoke_61;
    v15[3] = &unk_279B9B578;
    objc_copyWeak(&v16, &location);
    v15[4] = v17;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v15);
    dispatch_source_set_event_handler(v2->_sigtermSource, v12);
    dispatch_activate(v2->_sigtermSource);
    [(STYSignpostStreamingStatistics *)v2 _resetLocked];
    v13 = v2;

    objc_destroyWeak(&v16);
    _Block_object_dispose(v17, 8);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__STYSignpostStreamingStatistics_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = mach_absolute_time();
  [(STYSignpostStreamingStatistics *)WeakRetained _emitTelemetryLockedEndTime:v1];
}

- (void)dealloc
{
  dispatch_source_cancel(self->_periodicTimer);
  dispatch_source_cancel(self->_sigtermSource);
  v3.receiver = self;
  v3.super_class = STYSignpostStreamingStatistics;
  [(STYSignpostStreamingStatistics *)&v3 dealloc];
}

- (void)addSignpost:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__STYSignpostStreamingStatistics_addSignpost___block_invoke;
  v7[3] = &unk_279B9B4C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __46__STYSignpostStreamingStatistics_addSignpost___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) subsystem];
  v16 = [v2 objectForKeyedSubscript:v3];

  if (!v16)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) subsystem];
    [v4 setObject:v16 forKeyedSubscript:v5];
  }

  v6 = [*(a1 + 40) category];
  v7 = [v16 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [*(a1 + 40) category];
    [v16 setObject:v7 forKeyedSubscript:v8];
  }

  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 40) name];
  v11 = [v7 objectForKeyedSubscript:v10];
  v12 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v11, "unsignedLongLongValue") + 1}];
  v13 = [*(a1 + 40) name];
  [v7 setObject:v12 forKeyedSubscript:v13];

  ++*(*(a1 + 32) + 48);
  v14 = *(a1 + 32);
  if (*(v14 + 48) >= 0xF4240uLL)
  {
    v15 = mach_absolute_time();
    [(STYSignpostStreamingStatistics *)v14 _emitTelemetryLockedEndTime:v15];
  }
}

- (void)emitTelemetry
{
  v3 = mach_absolute_time();
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__STYSignpostStreamingStatistics_emitTelemetry__block_invoke;
  v5[3] = &unk_279B9B5A0;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(queue, v5);
}

- (void)_emitTelemetryLockedEndTime:(uint64_t)a1
{
  v81 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v4 = a2 - *(a1 + 40);
    if (_MergedGlobals != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_557);
    }

    v5 = __udivti3() / 1000000000.0;
    if (*(v3 + 48) || v5 >= 60.0)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = *(v3 + 16);
      v51 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
      v9 = 0;
      v10 = 0;
      if (v51)
      {
        v54 = 0;
        v59 = 0;
        v13 = 0;
        v49 = *v73;
        v14 = v5;
        v50 = v3;
        do
        {
          v15 = 0;
          do
          {
            if (*v73 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v53 = v10;
            v52 = v15;
            v56 = *(*(&v72 + 1) + 8 * v15);
            v57 = v9;
            v16 = [*(v3 + 16) objectForKeyedSubscript:?];
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v60 = v16;
            v58 = [v16 countByEnumeratingWithState:&v68 objects:v79 count:16];
            if (v58)
            {
              v55 = *v69;
              do
              {
                v17 = 0;
                do
                {
                  if (*v69 != v55)
                  {
                    objc_enumerationMutation(v60);
                  }

                  v62 = v17;
                  v63 = v13;
                  v61 = *(*(&v68 + 1) + 8 * v17);
                  v18 = [v60 objectForKeyedSubscript:?];
                  v64 = 0u;
                  v65 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v19 = [v18 countByEnumeratingWithState:&v64 objects:v78 count:16];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = 0;
                    v22 = 0;
                    v23 = 0;
                    v24 = *v65;
                    do
                    {
                      for (i = 0; i != v20; ++i)
                      {
                        if (*v65 != v24)
                        {
                          objc_enumerationMutation(v18);
                        }

                        v26 = *(*(&v64 + 1) + 8 * i);
                        v27 = [v18 objectForKeyedSubscript:v26];
                        v2 = [v27 unsignedLongLongValue];

                        if (v22 < v2)
                        {
                          v28 = v26;

                          v21 = v28;
                          v22 = v2;
                        }

                        v23 += v2;
                      }

                      v20 = [v18 countByEnumeratingWithState:&v64 objects:v78 count:16];
                    }

                    while (v20);
                  }

                  else
                  {
                    v21 = 0;
                    v22 = 0;
                    v23 = 0;
                  }

                  v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", v56, v61];
                  v30 = v29;
                  if (v59 < v23)
                  {
                    v2 = v29;

                    v31 = v21;
                    v57 = v31;
                    v53 = v22;
                    v54 = v2;
                    v59 = v23;
                  }

                  v14 = v5;
                  v32 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:7];
                  [v32 setObject:v30 forKeyedSubscript:@"sc"];
                  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_9() setObject:? forKeyedSubscript:?];

                  [MEMORY[0x277CCABB0] numberWithDouble:v23 / v5];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_9() setObject:? forKeyedSubscript:?];

                  [v32 setObject:v21 forKeyedSubscript:@"largest_signpost"];
                  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_9() setObject:? forKeyedSubscript:?];

                  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v22 / v5];
                  [v32 setObject:v33 forKeyedSubscript:@"largest_signpost_rate"];

                  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
                  [v32 setObject:v34 forKeyedSubscript:@"duration"];

                  v35 = +[STYFrameworkHelper sharedHelper];
                  v2 = [v35 logHandle];

                  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v77 = v32;
                    _os_log_impl(&dword_2656CE000, v2, OS_LOG_TYPE_INFO, "Emitting com.apple.Sentry.SignpostStreaming.SubsystemCategory telemetry %@", buf, 0xCu);
                  }

                  v13 = v23 + v63;

                  AnalyticsSendEvent();
                  v17 = v62 + 1;
                }

                while (v62 + 1 != v58);
                v58 = [v60 countByEnumeratingWithState:&v68 objects:v79 count:16];
              }

              while (v58);
            }

            v15 = v52 + 1;
            v3 = v50;
            v9 = v57;
            v10 = v53;
          }

          while (v52 + 1 != v51);
          v51 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
        }

        while (v51);
        v11 = v54;
        v12 = v59;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = v5;
      }

      v36 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
      [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
      v38 = v37 = v13;
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v39 = [MEMORY[0x277CCABB0] numberWithDouble:v37 / v5];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v40 = v11;
      [v36 setObject:v11 forKeyedSubscript:@"largest_sc"];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v12 / v5];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      [v36 setObject:v9 forKeyedSubscript:@"largest_signpost"];
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v44 = [MEMORY[0x277CCABB0] numberWithDouble:v10 / v5];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v46 = +[STYFrameworkHelper sharedHelper];
      v47 = [v46 logHandle];

      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = v36;
        _os_log_impl(&dword_2656CE000, v47, OS_LOG_TYPE_INFO, "Emitting com.apple.Sentry.SignpostStreaming telemetry %@", buf, 0xCu);
      }

      AnalyticsSendEvent();
      [(STYSignpostStreamingStatistics *)v3 _resetLocked];

      v7 = v40;
    }

    else
    {
      v6 = +[STYFrameworkHelper sharedHelper];
      v7 = [v6 logHandle];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2656CE000, v7, OS_LOG_TYPE_DEBUG, "No signposts, and only monitoring for less than a minute, not emitting telemetry", buf, 2u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __38__STYSignpostStreamingStatistics_init__block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = mach_absolute_time();
  [(STYSignpostStreamingStatistics *)WeakRetained _emitTelemetryLockedEndTime:v3];

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)_resetLocked
{
  if (a1)
  {
    a1[5] = mach_absolute_time();
    a1[6] = 0;
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = a1[2];
    a1[2] = v2;

    v4 = a1[3];
    dispatch_time(0, 21600000000000);
    v5 = OUTLINED_FUNCTION_6();

    dispatch_source_set_timer(v5, v6, v7, v8);
  }
}

@end