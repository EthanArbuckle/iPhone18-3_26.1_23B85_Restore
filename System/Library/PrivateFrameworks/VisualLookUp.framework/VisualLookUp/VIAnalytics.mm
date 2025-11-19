@interface VIAnalytics
+ (void)logEvent:(id)a3;
- (VIAnalytics)initWithFeedbackSubmitter:(id)a3;
- (VIAnalyticsTestingDelegate)testingDelegate;
- (void)_logEvent:(id)a3;
- (void)_performLogEvent:(id)a3;
- (void)setTestingDelegate:(id)a3;
@end

@implementation VIAnalytics

- (VIAnalytics)initWithFeedbackSubmitter:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v38.receiver = self;
  v38.super_class = VIAnalytics;
  v6 = [(VIAnalytics *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedbackSubmitter, a3);
    v8 = dispatch_queue_create("com.apple.argos.analytics", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;

    v10 = [[VIAEventCache alloc] initWithQueue:v7->_serialQueue];
    eventCache = v7->_eventCache;
    v7->_eventCache = v10;

    v12 = [[VIAEntryPointLogger alloc] initWithQueue:v7->_serialQueue feedbackSubmitter:v5 eventCache:v7->_eventCache];
    v33 = v5;
    v30 = [[VIACacheHitLogger alloc] initWithQueue:v7->_serialQueue feedbackSubmitter:v5];
    v31 = v12;
    v48[0] = v12;
    v48[1] = v30;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    loggers = v7->_loggers;
    v7->_loggers = v13;

    v32 = v7;
    v15 = v7->_loggers;
    v16 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v15;
    v36 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v36)
    {
      v35 = *v45;
      do
      {
        v17 = 0;
        do
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v17;
          v18 = *(*(&v44 + 1) + 8 * v17);
          v19 = [objc_opt_class() feedbackNamesToLog];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v20 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v41;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v41 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v40 + 1) + 8 * i);
                v25 = [v16 objectForKeyedSubscript:v24];

                if (v25)
                {
                  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
                  {
                    v26 = +[_TtC12VisualLookUp8VILogger log];
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1D9962000, v26, OS_LOG_TYPE_ERROR, "Cannot have two loggers register the same feedback", buf, 2u);
                    }
                  }
                }

                else
                {
                  [v16 setObject:v18 forKeyedSubscript:v24];
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v21);
          }

          v17 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v36);
    }

    v27 = [v16 copy];
    v7 = v32;
    feedbackNameToLoggerMap = v32->_feedbackNameToLoggerMap;
    v32->_feedbackNameToLoggerMap = v27;

    v5 = v33;
  }

  return v7;
}

+ (void)logEvent:(id)a3
{
  v5 = a3;
  v3 = [v5 feedback];
  if (v3)
  {
    v4 = _VISharedAnalytics();
    [v4 _logEvent:v5];
  }
}

- (void)_logEvent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__VIAnalytics__logEvent___block_invoke;
  block[3] = &unk_1E858A9D8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __25__VIAnalytics__logEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performLogEvent:*(a1 + 32)];
}

- (void)_performLogEvent:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_loggers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v18 + 1) + 8 * v9++) didObserveEvent:{v4, v18}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v10 = [v4 feedback];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);

  v13 = [(NSDictionary *)self->_feedbackNameToLoggerMap objectForKeyedSubscript:v12];
  if (v13 && (v14 = v13, v15 = [v4 shouldReportDirectly], v14, (v15 & 1) == 0))
  {
    v17 = [(NSDictionary *)self->_feedbackNameToLoggerMap objectForKeyedSubscript:v12];
    [v17 logEvent:v4];
  }

  else
  {
    feedbackSubmitter = self->_feedbackSubmitter;
    v17 = [v4 feedback];
    -[VIAFeedbackSubmitter reportFeedback:queryId:](feedbackSubmitter, "reportFeedback:queryId:", v17, [v4 queryID]);
  }
}

- (void)setTestingDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_testingDelegate, v4);
  [(VIAEventCache *)self->_eventCache setTestingDelegate:v4];
  [(VIAFeedbackSubmitter *)self->_feedbackSubmitter setTestingDelegate:v4];
}

- (VIAnalyticsTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

@end