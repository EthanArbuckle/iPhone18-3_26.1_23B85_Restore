@interface _PSMapsSuggester
- (id)suggestionsFromContext:(id)a3 maxSuggestions:(unint64_t)a4;
- (void)deleteMapsFeedbackEventsMatchingHandle:(id)a3 contactId:(id)a4 startLocationId:(id)a5 endLocationId:(id)a6;
- (void)provideMapsFeedback:(id)a3;
@end

@implementation _PSMapsSuggester

- (id)suggestionsFromContext:(id)a3 maxSuggestions:(unint64_t)a4
{
  v5 = a3;
  v6 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSMapsSuggesterTotalTime", &unk_1B5FD970D, buf, 2u);
  }

  v7 = objc_alloc_init(_PSEnsembleModel);
  v8 = [(_PSEnsembleModel *)v7 predictWithMapsPredictionContext:v5 maxSuggestions:a4];

  v9 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSMapsSuggesterTotalTime", &unk_1B5FD970D, v11, 2u);
  }

  return v8;
}

- (void)provideMapsFeedback:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 action];
  v5 = [v4 type];

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = +[_PSLogging feedbackChannel];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v7 = "Feedback for maps suggestions: Engagement with non-suggestion";
LABEL_17:
          _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

LABEL_11:
      v6 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [_PSMapsSuggester provideMapsFeedback:v6];
      }

      goto LABEL_18;
    }

LABEL_8:
    v8 = [v3 indexOfEngagedSuggestion];
    v9 = +[_PSLogging feedbackChannel];
    v6 = v9;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_PSMapsSuggester provideMapsFeedback:v6];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      v11 = [v3 action];
      v12 = [v11 transportBundleID];
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_INFO, "Feedback for maps suggestions: Engagement with suggestion at index %@, transport: %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (v5 != 2)
  {
    if (v5 != 4)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v6 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v7 = "Feedback for maps suggestions: Abandonment";
    goto LABEL_17;
  }

LABEL_18:

  [v3 donateToBiome];
  v15 = v3;
  v13 = v3;
  AnalyticsSendEventLazy();

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deleteMapsFeedbackEventsMatchingHandle:(id)a3 contactId:(id)a4 startLocationId:(id)a5 endLocationId:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = BiomeLibrary();
  v14 = [v13 MapsShare];
  v15 = [v14 ETAFeedback];

  v16 = [v15 pruner];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99___PSMapsSuggester_deleteMapsFeedbackEventsMatchingHandle_contactId_startLocationId_endLocationId___block_invoke;
  v21[3] = &unk_1E7C256C0;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v10;
  v17 = v10;
  v18 = v12;
  v19 = v11;
  v20 = v9;
  [v16 deleteWithPolicy:@"delete-maps-feedback" eventsPassingTest:v21];
}

@end