@interface VIACacheHitLogger
+ (id)feedbackNamesToLog;
- (VIACacheHitLogger)initWithQueue:(id)a3 feedbackSubmitter:(id)a4;
- (void)_logEvent:(id)a3;
- (void)didObserveEvent:(id)a3;
- (void)logEvent:(id)a3;
@end

@implementation VIACacheHitLogger

- (VIACacheHitLogger)initWithQueue:(id)a3 feedbackSubmitter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = VIACacheHitLogger;
  v9 = [(VIACacheHitLogger *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_feedbackSubmitter, a4);
    v11 = [[VIAEventCache alloc] initWithQueue:v7];
    engagementEventCache = v10->_engagementEventCache;
    v10->_engagementEventCache = v11;

    v13 = [[VIAEventCache alloc] initWithQueue:v7];
    rankingEventCache = v10->_rankingEventCache;
    v10->_rankingEventCache = v13;
  }

  return v10;
}

- (void)didObserveEvent:(id)a3
{
  v8 = a3;
  v4 = [v8 feedback];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(VIAEventCache *)self->_engagementEventCache cacheEvent:v8];
  }

  v6 = [v8 feedback];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v7)
  {
    [(VIAEventCache *)self->_rankingEventCache cacheEvent:v8];
  }
}

- (void)logEvent:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }

    [(VIACacheHitLogger *)self _logEvent:v4];
  }
}

+ (id)feedbackNamesToLog
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 setWithObject:v4];

  return v5;
}

- (void)_logEvent:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39 = [v4 engagementSuggestionType];
  engagementEventCache = self->_engagementEventCache;
  v6 = [v4 originatingApplication];
  v7 = -[VIAEventCache cachedEventForBundleID:queryID:](engagementEventCache, "cachedEventForBundleID:queryID:", v6, [v4 cachedResultQueryID]);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v54 count:16];
  v38 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [v13 feedback];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = 0;
          goto LABEL_13;
        }

        v15 = [v13 feedback];

        if (v13)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v14 = [v15 VI_searchSuggestionForSuggestionType:v39];
          v17 = [objc_alloc(MEMORY[0x1E69CA4C0]) initWithSuggestion:v14];
          [v17 setQueryId:{objc_msgSend(v4, "queryID")}];
          feedbackSubmitter = self->_feedbackSubmitter;
          v19 = [v4 queryID];
          v20 = feedbackSubmitter;
          v8 = v38;
          [(VIAFeedbackSubmitter *)v20 reportFeedback:v17 queryId:v19];

LABEL_13:
        }

        -[VIAFeedbackSubmitter didHitCacheForQueryId:](self->_feedbackSubmitter, "didHitCacheForQueryId:", [v4 queryID]);
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v10);
  }

  rankingEventCache = self->_rankingEventCache;
  v22 = [v4 originatingApplication];
  v23 = -[VIAEventCache cachedEventForBundleID:queryID:](rankingEventCache, "cachedEventForBundleID:queryID:", v22, [v4 cachedResultQueryID]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v23;
  v24 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v24)
  {
    v26 = v24;
    v27 = *v42;
    *&v25 = 138543618;
    v37 = v25;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v41 + 1) + 8 * j);
        v30 = [v29 feedback];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [v29 feedback];

          if (v31)
          {
            v32 = objc_alloc(MEMORY[0x1E69CA340]);
            v33 = [v31 sections];
            [v31 blendingDuration];
            v34 = [v32 initWithSections:v33 blendingDuration:?];

            -[VIAFeedbackSubmitter reportFeedback:queryId:](self->_feedbackSubmitter, "reportFeedback:queryId:", v34, [v4 cachedResultQueryID]);
            goto LABEL_28;
          }
        }

        else
        {
        }

        if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          continue;
        }

        v31 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v35 = [v4 originatingApplication];
          v36 = [v4 cachedResultQueryID];
          *buf = v37;
          v50 = v35;
          v51 = 2048;
          v52 = v36;
          _os_log_impl(&dword_1D9962000, v31, OS_LOG_TYPE_ERROR, "Expected ranking event missing from cache for application=%{public}@, queryID=%llu", buf, 0x16u);
        }

LABEL_28:
      }

      v26 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v26);
  }
}

@end