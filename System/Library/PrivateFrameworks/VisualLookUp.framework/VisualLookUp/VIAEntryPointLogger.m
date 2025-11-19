@interface VIAEntryPointLogger
+ (id)feedbackNamesToLog;
- (BOOL)_preconditionCheckEvent:(id)a3;
- (VIAEntryPointLogger)initWithQueue:(id)a3 feedbackSubmitter:(id)a4 eventCache:(id)a5;
- (id)_visibleSuggestionsFeedbackFromPendingFeeedback:(id)a3 forViewAppearEvent:(unint64_t)a4;
- (void)_logClientTimeingFeedback:(id)a3 queryID:(unint64_t)a4;
- (void)_logDependentEvent:(id)a3;
- (void)_logEndEvent:(id)a3;
- (void)_logEvent:(id)a3;
- (void)_logStartEvent:(id)a3;
- (void)_logVisibleSuggestionsFeedback:(id)a3 forViewAppearEvent:(unint64_t)a4 queryID:(unint64_t)a5;
- (void)logEvent:(id)a3;
@end

@implementation VIAEntryPointLogger

- (VIAEntryPointLogger)initWithQueue:(id)a3 feedbackSubmitter:(id)a4 eventCache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = VIAEntryPointLogger;
  v12 = [(VIAEntryPointLogger *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    v14 = objc_opt_new();
    appToQueryIDMap = v13->_appToQueryIDMap;
    v13->_appToQueryIDMap = v14;

    v16 = objc_opt_new();
    appToViewAppearEventMap = v13->_appToViewAppearEventMap;
    v13->_appToViewAppearEventMap = v16;

    objc_storeStrong(&v13->_eventCache, a5);
    objc_storeStrong(&v13->_feedbackSubmitter, a4);
  }

  return v13;
}

- (void)logEvent:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VIAEntryPointLogger *)self _logEvent:v7];
    goto LABEL_7;
  }

  v4 = [v7 feedback];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v5 = [v7 feedback];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  [(VIAEntryPointLogger *)self _logDependentEvent:v7];
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

- (void)_logEvent:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(VIAEntryPointLogger *)self _preconditionCheckEvent:v6];
  v5 = v6;
  if (v4)
  {
    v4 = [v6 type];
    if (v4 == 2)
    {
      v4 = [(VIAEntryPointLogger *)self _logEndEvent:v6];
    }

    else
    {
      v5 = v6;
      if (v4 != 1)
      {
        goto LABEL_7;
      }

      v4 = [(VIAEntryPointLogger *)self _logStartEvent:v6];
    }

    v5 = v6;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_logDependentEvent:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([(VIAEntryPointLogger *)self _preconditionCheckEvent:v4])
  {
    appToQueryIDMap = self->_appToQueryIDMap;
    v6 = [v4 originatingApplication];
    v7 = [(NSMutableDictionary *)appToQueryIDMap objectForKeyedSubscript:v6];

    appToViewAppearEventMap = self->_appToViewAppearEventMap;
    v9 = [v4 originatingApplication];
    v10 = [(NSMutableDictionary *)appToViewAppearEventMap objectForKeyedSubscript:v9];

    if (!v7 || (v11 = [v7 unsignedLongLongValue], v11 != objc_msgSend(v4, "queryID")))
    {
      [(VIAEventCache *)self->_eventCache cacheEvent:v4];
      goto LABEL_20;
    }

    if (v10)
    {
      v12 = [v10 intValue];
    }

    else
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v13 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v4 originatingApplication];
          v19 = 138543618;
          v20 = v14;
          v21 = 2048;
          v22 = [v4 queryID];
          _os_log_impl(&dword_1D9962000, v13, OS_LOG_TYPE_ERROR, "_appToViewAppearEventMap missing invocation method for application=%{public}@, queryID=%llu", &v19, 0x16u);
        }
      }

      v12 = 28;
    }

    v15 = [v4 feedback];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v4 feedback];

      if (!v16)
      {
LABEL_16:
        v17 = [v4 feedback];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_19:

          goto LABEL_20;
        }

        v18 = [v4 feedback];

        if (v18)
        {
          -[VIAEntryPointLogger _logClientTimeingFeedback:queryID:](self, "_logClientTimeingFeedback:queryID:", v18, [v4 queryID]);
          v17 = v18;
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      -[VIAEntryPointLogger _logVisibleSuggestionsFeedback:forViewAppearEvent:queryID:](self, "_logVisibleSuggestionsFeedback:forViewAppearEvent:queryID:", v16, v12, [v4 queryID]);
      v15 = v16;
    }

    goto LABEL_16;
  }

LABEL_21:
}

- (void)_logStartEvent:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  appToQueryIDMap = self->_appToQueryIDMap;
  v6 = [v4 originatingApplication];
  v7 = [(NSMutableDictionary *)appToQueryIDMap objectForKeyedSubscript:v6];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "queryID")}];
    v11 = self->_appToQueryIDMap;
    v12 = [v4 originatingApplication];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "viewAppearEvent")}];
    appToViewAppearEventMap = self->_appToViewAppearEventMap;
    v15 = [v4 originatingApplication];
    [(NSMutableDictionary *)appToViewAppearEventMap setObject:v13 forKeyedSubscript:v15];

    v16 = [v4 feedback];
    -[VIAEntryPointLogger _logFeedback:queryID:](self, "_logFeedback:queryID:", v16, [v4 queryID]);

    eventCache = self->_eventCache;
    v18 = [v4 originatingApplication];
    v8 = -[VIAEventCache cachedEventForBundleID:queryID:](eventCache, "cachedEventForBundleID:queryID:", v18, [v4 queryID]);

    if (!v8)
    {
      goto LABEL_22;
    }

    v28 = v4;
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
        v24 = [v23 feedback];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [v23 feedback];

          if (!v25)
          {
            goto LABEL_15;
          }

          -[VIAEntryPointLogger _logVisibleSuggestionsFeedback:forViewAppearEvent:queryID:](self, "_logVisibleSuggestionsFeedback:forViewAppearEvent:queryID:", v25, [v28 viewAppearEvent], objc_msgSend(v23, "queryID"));
          v24 = v25;
        }

LABEL_15:
        v26 = [v23 feedback];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = [v23 feedback];

          if (!v27)
          {
            continue;
          }

          -[VIAEntryPointLogger _logClientTimeingFeedback:queryID:](self, "_logClientTimeingFeedback:queryID:", v27, [v23 queryID]);
          v26 = v27;
        }
      }

      v20 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v20)
      {
LABEL_21:

        v4 = v28;
        goto LABEL_22;
      }
    }
  }

  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v8 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 originatingApplication];
      *buf = 138543618;
      v35 = v9;
      v36 = 2048;
      v37 = [v4 queryID];
      _os_log_impl(&dword_1D9962000, v8, OS_LOG_TYPE_ERROR, "Starting an event without previous ending. App: %{public}@, queryID: %llu", buf, 0x16u);
    }

LABEL_22:
  }
}

- (void)_logEndEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  appToQueryIDMap = self->_appToQueryIDMap;
  v6 = [v4 originatingApplication];
  v7 = [(NSMutableDictionary *)appToQueryIDMap objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_appToQueryIDMap;
    v9 = [v4 originatingApplication];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];

    appToViewAppearEventMap = self->_appToViewAppearEventMap;
    v11 = [v4 originatingApplication];
    [(NSMutableDictionary *)appToViewAppearEventMap removeObjectForKey:v11];

    v12 = [v4 feedback];
    -[VIAEntryPointLogger _logFeedback:queryID:](self, "_logFeedback:queryID:", v12, [v7 unsignedLongLongValue]);
  }

  else if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v13 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v4 originatingApplication];
      v15 = 138543618;
      v16 = v14;
      v17 = 2048;
      v18 = [v4 queryID];
      _os_log_impl(&dword_1D9962000, v13, OS_LOG_TYPE_ERROR, "Ending an event without previous start. App: %{public}@, queryID: %llu", &v15, 0x16u);
    }
  }
}

- (BOOL)_preconditionCheckEvent:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 originatingApplication];
  v5 = [v4 length];

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

- (void)_logVisibleSuggestionsFeedback:(id)a3 forViewAppearEvent:(unint64_t)a4 queryID:(unint64_t)a5
{
  v7 = [(VIAEntryPointLogger *)self _visibleSuggestionsFeedbackFromPendingFeeedback:a3 forViewAppearEvent:a4];
  [(VIAEntryPointLogger *)self _logFeedback:v7 queryID:a5];
}

- (void)_logClientTimeingFeedback:(id)a3 queryID:(unint64_t)a4
{
  v6 = MEMORY[0x1E69C9F40];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 eventName];
  v10 = [v7 nanosecondInterval];
  v11 = [v7 queryId];

  v12 = [v8 initWithEvent:v9 timeInterval:v10 queryId:v11];
  [(VIAEntryPointLogger *)self _logFeedback:v12 queryID:a4];
}

- (id)_visibleSuggestionsFeedbackFromPendingFeeedback:(id)a3 forViewAppearEvent:(unint64_t)a4
{
  if (a4 == 28)
  {
    v4 = MEMORY[0x1E69CA598];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v5 suggestions];

    v8 = [v6 initWithSuggestions:v7];
  }

  else
  {
    v9 = MEMORY[0x1E696AE18];
    v10 = a3;
    v7 = [v9 predicateWithBlock:&__block_literal_global_3];
    v11 = [v10 suggestions];

    v12 = [v11 filteredArrayUsingPredicate:v7];

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