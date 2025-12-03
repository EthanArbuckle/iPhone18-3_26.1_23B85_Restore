@interface VIACacheHitLogger
+ (id)feedbackNamesToLog;
- (VIACacheHitLogger)initWithQueue:(id)queue feedbackSubmitter:(id)submitter;
- (void)_logEvent:(id)event;
- (void)didObserveEvent:(id)event;
- (void)logEvent:(id)event;
@end

@implementation VIACacheHitLogger

- (VIACacheHitLogger)initWithQueue:(id)queue feedbackSubmitter:(id)submitter
{
  queueCopy = queue;
  submitterCopy = submitter;
  v16.receiver = self;
  v16.super_class = VIACacheHitLogger;
  v9 = [(VIACacheHitLogger *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_feedbackSubmitter, submitter);
    v11 = [[VIAEventCache alloc] initWithQueue:queueCopy];
    engagementEventCache = v10->_engagementEventCache;
    v10->_engagementEventCache = v11;

    v13 = [[VIAEventCache alloc] initWithQueue:queueCopy];
    rankingEventCache = v10->_rankingEventCache;
    v10->_rankingEventCache = v13;
  }

  return v10;
}

- (void)didObserveEvent:(id)event
{
  eventCopy = event;
  feedback = [eventCopy feedback];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(VIAEventCache *)self->_engagementEventCache cacheEvent:eventCopy];
  }

  feedback2 = [eventCopy feedback];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v7)
  {
    [(VIAEventCache *)self->_rankingEventCache cacheEvent:eventCopy];
  }
}

- (void)logEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = eventCopy;
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

- (void)_logEvent:(id)event
{
  v55 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  engagementSuggestionType = [eventCopy engagementSuggestionType];
  engagementEventCache = self->_engagementEventCache;
  originatingApplication = [eventCopy originatingApplication];
  v7 = -[VIAEventCache cachedEventForBundleID:queryID:](engagementEventCache, "cachedEventForBundleID:queryID:", originatingApplication, [eventCopy cachedResultQueryID]);

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
        feedback = [v13 feedback];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          feedback2 = 0;
          goto LABEL_13;
        }

        feedback2 = [v13 feedback];

        if (v13)
        {
          v16 = feedback2 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          feedback = [feedback2 VI_searchSuggestionForSuggestionType:engagementSuggestionType];
          v17 = [objc_alloc(MEMORY[0x1E69CA4C0]) initWithSuggestion:feedback];
          [v17 setQueryId:{objc_msgSend(eventCopy, "queryID")}];
          feedbackSubmitter = self->_feedbackSubmitter;
          queryID = [eventCopy queryID];
          v20 = feedbackSubmitter;
          v8 = v38;
          [(VIAFeedbackSubmitter *)v20 reportFeedback:v17 queryId:queryID];

LABEL_13:
        }

        -[VIAFeedbackSubmitter didHitCacheForQueryId:](self->_feedbackSubmitter, "didHitCacheForQueryId:", [eventCopy queryID]);
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v10);
  }

  rankingEventCache = self->_rankingEventCache;
  originatingApplication2 = [eventCopy originatingApplication];
  v23 = -[VIAEventCache cachedEventForBundleID:queryID:](rankingEventCache, "cachedEventForBundleID:queryID:", originatingApplication2, [eventCopy cachedResultQueryID]);

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
        feedback3 = [v29 feedback];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          feedback4 = [v29 feedback];

          if (feedback4)
          {
            v32 = objc_alloc(MEMORY[0x1E69CA340]);
            sections = [feedback4 sections];
            [feedback4 blendingDuration];
            v34 = [v32 initWithSections:sections blendingDuration:?];

            -[VIAFeedbackSubmitter reportFeedback:queryId:](self->_feedbackSubmitter, "reportFeedback:queryId:", v34, [eventCopy cachedResultQueryID]);
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

        feedback4 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(feedback4, OS_LOG_TYPE_ERROR))
        {
          originatingApplication3 = [eventCopy originatingApplication];
          cachedResultQueryID = [eventCopy cachedResultQueryID];
          *buf = v37;
          v50 = originatingApplication3;
          v51 = 2048;
          v52 = cachedResultQueryID;
          _os_log_impl(&dword_1D9962000, feedback4, OS_LOG_TYPE_ERROR, "Expected ranking event missing from cache for application=%{public}@, queryID=%llu", buf, 0x16u);
        }

LABEL_28:
      }

      v26 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v26);
  }
}

@end