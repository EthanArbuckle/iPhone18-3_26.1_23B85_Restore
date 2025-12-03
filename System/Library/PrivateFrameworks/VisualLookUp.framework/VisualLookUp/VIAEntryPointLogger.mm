@interface VIAEntryPointLogger
+ (id)feedbackNamesToLog;
- (BOOL)_preconditionCheckEvent:(id)event;
- (VIAEntryPointLogger)initWithQueue:(id)queue feedbackSubmitter:(id)submitter eventCache:(id)cache;
- (id)_visibleSuggestionsFeedbackFromPendingFeeedback:(id)feeedback forViewAppearEvent:(unint64_t)event;
- (void)_logClientTimeingFeedback:(id)feedback queryID:(unint64_t)d;
- (void)_logDependentEvent:(id)event;
- (void)_logEndEvent:(id)event;
- (void)_logEvent:(id)event;
- (void)_logStartEvent:(id)event;
- (void)_logVisibleSuggestionsFeedback:(id)feedback forViewAppearEvent:(unint64_t)event queryID:(unint64_t)d;
- (void)logEvent:(id)event;
@end

@implementation VIAEntryPointLogger

- (VIAEntryPointLogger)initWithQueue:(id)queue feedbackSubmitter:(id)submitter eventCache:(id)cache
{
  queueCopy = queue;
  submitterCopy = submitter;
  cacheCopy = cache;
  v19.receiver = self;
  v19.super_class = VIAEntryPointLogger;
  v12 = [(VIAEntryPointLogger *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = objc_opt_new();
    appToQueryIDMap = v13->_appToQueryIDMap;
    v13->_appToQueryIDMap = v14;

    v16 = objc_opt_new();
    appToViewAppearEventMap = v13->_appToViewAppearEventMap;
    v13->_appToViewAppearEventMap = v16;

    objc_storeStrong(&v13->_eventCache, cache);
    objc_storeStrong(&v13->_feedbackSubmitter, submitter);
  }

  return v13;
}

- (void)logEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VIAEntryPointLogger *)self _logEvent:eventCopy];
    goto LABEL_7;
  }

  feedback = [eventCopy feedback];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    feedback2 = [eventCopy feedback];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  [(VIAEntryPointLogger *)self _logDependentEvent:eventCopy];
LABEL_7:
}

+ (id)feedbackNamesToLog
{
  v14[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v14[0] = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v14[1] = v6;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v14[2] = v8;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v14[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v12 = [v2 setWithArray:v11];

  return v12;
}

- (void)_logEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  type = [(VIAEntryPointLogger *)self _preconditionCheckEvent:eventCopy];
  v5 = eventCopy;
  if (type)
  {
    type = [eventCopy type];
    if (type == 2)
    {
      type = [(VIAEntryPointLogger *)self _logEndEvent:eventCopy];
    }

    else
    {
      v5 = eventCopy;
      if (type != 1)
      {
        goto LABEL_7;
      }

      type = [(VIAEntryPointLogger *)self _logStartEvent:eventCopy];
    }

    v5 = eventCopy;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](type, v5);
}

- (void)_logDependentEvent:(id)event
{
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  if ([(VIAEntryPointLogger *)self _preconditionCheckEvent:eventCopy])
  {
    appToQueryIDMap = self->_appToQueryIDMap;
    originatingApplication = [eventCopy originatingApplication];
    v7 = [(NSMutableDictionary *)appToQueryIDMap objectForKeyedSubscript:originatingApplication];

    appToViewAppearEventMap = self->_appToViewAppearEventMap;
    originatingApplication2 = [eventCopy originatingApplication];
    v10 = [(NSMutableDictionary *)appToViewAppearEventMap objectForKeyedSubscript:originatingApplication2];

    if (!v7 || (v11 = [v7 unsignedLongLongValue], v11 != objc_msgSend(eventCopy, "queryID")))
    {
      [(VIAEventCache *)self->_eventCache cacheEvent:eventCopy];
      goto LABEL_20;
    }

    if (v10)
    {
      intValue = [v10 intValue];
    }

    else
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v13 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          originatingApplication3 = [eventCopy originatingApplication];
          v19 = 138543618;
          v20 = originatingApplication3;
          v21 = 2048;
          queryID = [eventCopy queryID];
          _os_log_impl(&dword_1D9962000, v13, OS_LOG_TYPE_ERROR, "_appToViewAppearEventMap missing invocation method for application=%{public}@, queryID=%llu", &v19, 0x16u);
        }
      }

      intValue = 28;
    }

    feedback = [eventCopy feedback];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      feedback2 = [eventCopy feedback];

      if (!feedback2)
      {
LABEL_16:
        feedback3 = [eventCopy feedback];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_19:

          goto LABEL_20;
        }

        feedback4 = [eventCopy feedback];

        if (feedback4)
        {
          -[VIAEntryPointLogger _logClientTimeingFeedback:queryID:](self, "_logClientTimeingFeedback:queryID:", feedback4, [eventCopy queryID]);
          feedback3 = feedback4;
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      -[VIAEntryPointLogger _logVisibleSuggestionsFeedback:forViewAppearEvent:queryID:](self, "_logVisibleSuggestionsFeedback:forViewAppearEvent:queryID:", feedback2, intValue, [eventCopy queryID]);
      feedback = feedback2;
    }

    goto LABEL_16;
  }

LABEL_21:
}

- (void)_logStartEvent:(id)event
{
  v38 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  appToQueryIDMap = self->_appToQueryIDMap;
  originatingApplication = [eventCopy originatingApplication];
  v7 = [(NSMutableDictionary *)appToQueryIDMap objectForKeyedSubscript:originatingApplication];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(eventCopy, "queryID")}];
    v11 = self->_appToQueryIDMap;
    originatingApplication2 = [eventCopy originatingApplication];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:originatingApplication2];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "viewAppearEvent")}];
    appToViewAppearEventMap = self->_appToViewAppearEventMap;
    originatingApplication3 = [eventCopy originatingApplication];
    [(NSMutableDictionary *)appToViewAppearEventMap setObject:v13 forKeyedSubscript:originatingApplication3];

    feedback = [eventCopy feedback];
    -[VIAEntryPointLogger _logFeedback:queryID:](self, "_logFeedback:queryID:", feedback, [eventCopy queryID]);

    eventCache = self->_eventCache;
    originatingApplication4 = [eventCopy originatingApplication];
    v8 = -[VIAEventCache cachedEventForBundleID:queryID:](eventCache, "cachedEventForBundleID:queryID:", originatingApplication4, [eventCopy queryID]);

    if (!v8)
    {
      goto LABEL_22;
    }

    v28 = eventCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v8;
    v19 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v19)
    {
      goto LABEL_21;
    }

    v20 = v19;
    v21 = *v30;
    while (1)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v8);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        feedback2 = [v23 feedback];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          feedback3 = [v23 feedback];

          if (!feedback3)
          {
            goto LABEL_15;
          }

          -[VIAEntryPointLogger _logVisibleSuggestionsFeedback:forViewAppearEvent:queryID:](self, "_logVisibleSuggestionsFeedback:forViewAppearEvent:queryID:", feedback3, [v28 viewAppearEvent], objc_msgSend(v23, "queryID"));
          feedback2 = feedback3;
        }

LABEL_15:
        feedback4 = [v23 feedback];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          feedback5 = [v23 feedback];

          if (!feedback5)
          {
            continue;
          }

          -[VIAEntryPointLogger _logClientTimeingFeedback:queryID:](self, "_logClientTimeingFeedback:queryID:", feedback5, [v23 queryID]);
          feedback4 = feedback5;
        }
      }

      v20 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v20)
      {
LABEL_21:

        eventCopy = v28;
        goto LABEL_22;
      }
    }
  }

  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v8 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      originatingApplication5 = [eventCopy originatingApplication];
      *buf = 138543618;
      v35 = originatingApplication5;
      v36 = 2048;
      queryID = [eventCopy queryID];
      _os_log_impl(&dword_1D9962000, v8, OS_LOG_TYPE_ERROR, "Starting an event without previous ending. App: %{public}@, queryID: %llu", buf, 0x16u);
    }

LABEL_22:
  }
}

- (void)_logEndEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  appToQueryIDMap = self->_appToQueryIDMap;
  originatingApplication = [eventCopy originatingApplication];
  v7 = [(NSMutableDictionary *)appToQueryIDMap objectForKeyedSubscript:originatingApplication];

  if (v7)
  {
    v8 = self->_appToQueryIDMap;
    originatingApplication2 = [eventCopy originatingApplication];
    [(NSMutableDictionary *)v8 removeObjectForKey:originatingApplication2];

    appToViewAppearEventMap = self->_appToViewAppearEventMap;
    originatingApplication3 = [eventCopy originatingApplication];
    [(NSMutableDictionary *)appToViewAppearEventMap removeObjectForKey:originatingApplication3];

    feedback = [eventCopy feedback];
    -[VIAEntryPointLogger _logFeedback:queryID:](self, "_logFeedback:queryID:", feedback, [v7 unsignedLongLongValue]);
  }

  else if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v13 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      originatingApplication4 = [eventCopy originatingApplication];
      v15 = 138543618;
      v16 = originatingApplication4;
      v17 = 2048;
      queryID = [eventCopy queryID];
      _os_log_impl(&dword_1D9962000, v13, OS_LOG_TYPE_ERROR, "Ending an event without previous start. App: %{public}@, queryID: %llu", &v15, 0x16u);
    }
  }
}

- (BOOL)_preconditionCheckEvent:(id)event
{
  v12 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  originatingApplication = [eventCopy originatingApplication];
  v5 = [originatingApplication length];

  if (!v5 && +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v6 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1D9962000, v6, OS_LOG_TYPE_INFO, "Empty application bundleID for event %{public}@", &v10, 0xCu);
    }
  }

  return v5 != 0;
}

- (void)_logVisibleSuggestionsFeedback:(id)feedback forViewAppearEvent:(unint64_t)event queryID:(unint64_t)d
{
  v7 = [(VIAEntryPointLogger *)self _visibleSuggestionsFeedbackFromPendingFeeedback:feedback forViewAppearEvent:event];
  [(VIAEntryPointLogger *)self _logFeedback:v7 queryID:d];
}

- (void)_logClientTimeingFeedback:(id)feedback queryID:(unint64_t)d
{
  v6 = MEMORY[0x1E69C9F40];
  feedbackCopy = feedback;
  v8 = [v6 alloc];
  eventName = [feedbackCopy eventName];
  nanosecondInterval = [feedbackCopy nanosecondInterval];
  queryId = [feedbackCopy queryId];

  v12 = [v8 initWithEvent:eventName timeInterval:nanosecondInterval queryId:queryId];
  [(VIAEntryPointLogger *)self _logFeedback:v12 queryID:d];
}

- (id)_visibleSuggestionsFeedbackFromPendingFeeedback:(id)feeedback forViewAppearEvent:(unint64_t)event
{
  if (event == 28)
  {
    v4 = MEMORY[0x1E69CA598];
    feeedbackCopy = feeedback;
    v6 = [v4 alloc];
    suggestions = [feeedbackCopy suggestions];

    v8 = [v6 initWithSuggestions:suggestions];
  }

  else
  {
    v9 = MEMORY[0x1E696AE18];
    feeedbackCopy2 = feeedback;
    suggestions = [v9 predicateWithBlock:&__block_literal_global_3];
    suggestions2 = [feeedbackCopy2 suggestions];

    v12 = [suggestions2 filteredArrayUsingPredicate:suggestions];

    v8 = [objc_alloc(MEMORY[0x1E69CA598]) initWithSuggestions:v12];
  }

  return v8;
}

uint64_t __90__VIAEntryPointLogger__visibleSuggestionsFeedbackFromPendingFeeedback_forViewAppearEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:", @"infoPanel"];
  v4 = [v2 suggestion];
  if ([v4 isEqualToString:@"infoPanel"])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 suggestion];
    v5 = [v6 hasPrefix:v3] ^ 1;
  }

  return v5;
}

@end