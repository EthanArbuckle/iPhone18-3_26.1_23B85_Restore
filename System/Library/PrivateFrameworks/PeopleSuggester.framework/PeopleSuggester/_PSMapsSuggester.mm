@interface _PSMapsSuggester
- (id)suggestionsFromContext:(id)context maxSuggestions:(unint64_t)suggestions;
- (void)deleteMapsFeedbackEventsMatchingHandle:(id)handle contactId:(id)id startLocationId:(id)locationId endLocationId:(id)endLocationId;
- (void)provideMapsFeedback:(id)feedback;
@end

@implementation _PSMapsSuggester

- (id)suggestionsFromContext:(id)context maxSuggestions:(unint64_t)suggestions
{
  contextCopy = context;
  v6 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSMapsSuggesterTotalTime", &unk_1B5FD970D, buf, 2u);
  }

  v7 = objc_alloc_init(_PSEnsembleModel);
  v8 = [(_PSEnsembleModel *)v7 predictWithMapsPredictionContext:contextCopy maxSuggestions:suggestions];

  v9 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSMapsSuggesterTotalTime", &unk_1B5FD970D, v11, 2u);
  }

  return v8;
}

- (void)provideMapsFeedback:(id)feedback
{
  v20 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  action = [feedbackCopy action];
  type = [action type];

  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
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
    indexOfEngagedSuggestion = [feedbackCopy indexOfEngagedSuggestion];
    v9 = +[_PSLogging feedbackChannel];
    v6 = v9;
    if (indexOfEngagedSuggestion == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_PSMapsSuggester provideMapsFeedback:v6];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexOfEngagedSuggestion];
      action2 = [feedbackCopy action];
      transportBundleID = [action2 transportBundleID];
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = transportBundleID;
      _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_INFO, "Feedback for maps suggestions: Engagement with suggestion at index %@, transport: %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (type != 2)
  {
    if (type != 4)
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

  [feedbackCopy donateToBiome];
  v15 = feedbackCopy;
  v13 = feedbackCopy;
  AnalyticsSendEventLazy();

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deleteMapsFeedbackEventsMatchingHandle:(id)handle contactId:(id)id startLocationId:(id)locationId endLocationId:(id)endLocationId
{
  handleCopy = handle;
  idCopy = id;
  locationIdCopy = locationId;
  endLocationIdCopy = endLocationId;
  v13 = BiomeLibrary();
  mapsShare = [v13 MapsShare];
  eTAFeedback = [mapsShare ETAFeedback];

  pruner = [eTAFeedback pruner];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99___PSMapsSuggester_deleteMapsFeedbackEventsMatchingHandle_contactId_startLocationId_endLocationId___block_invoke;
  v21[3] = &unk_1E7C256C0;
  v22 = handleCopy;
  v23 = locationIdCopy;
  v24 = endLocationIdCopy;
  v25 = idCopy;
  v17 = idCopy;
  v18 = endLocationIdCopy;
  v19 = locationIdCopy;
  v20 = handleCopy;
  [pruner deleteWithPolicy:@"delete-maps-feedback" eventsPassingTest:v21];
}

@end