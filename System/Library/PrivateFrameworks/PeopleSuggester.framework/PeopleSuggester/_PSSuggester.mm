@interface _PSSuggester
+ (id)suggesterWithDaemon;
+ (id)suggesterWithDaemonUsingMaxSuggestionCount:(int64_t)a3;
+ (void)initializePSSuggesterCacheWithMaxSuggestionCount:(id)a3;
- (BOOL)interactionAvailableForHandle:(id)a3 interactionStoreDB:(id)a4;
- (BOOL)isTransportBundleIDSupported:(id)a3;
- (BOOL)reportShareSheetTimeoutWithError:(id *)a3;
- (_PSSuggester)init;
- (_PSSuggester)initWithConfiguration:(id)a3 feedbackRecording:(BOOL)a4;
- (_PSSuggester)initWithDaemonUsingConfiguration:(id)a3;
- (id)_dateFormatter;
- (id)_getUserDaemonXPCConnection;
- (id)_stringFromValue:(id)a3;
- (id)appExtensionSuggestionsFromContext:(id)a3;
- (id)autocompleteSearchResultsWithPredictionContext:(id)a3;
- (id)buildFilteringPredicateMatchingSuggestLessFeedback:(id)a3;
- (id)candidatesForShareSheetRanking;
- (id)candidatesForShareSheetRankingCompute;
- (id)contactStore;
- (id)convertCoreAnalyticsEvent2BiomeEvent:(id)a3;
- (id)familyRecommendationSuggestionsWithPredictionContext:(id)a3;
- (id)generatePSRTelemetry:(id)a3;
- (id)getCachedSuggestionsFetchingIfNeeded:(BOOL)a3;
- (id)hourOfDayProbabilitiesToInteractWithContact:(id)a3;
- (id)hourOfDayProbabilitiesToInteractWithContacts:(id)a3;
- (id)interactionCountForHandle:(id)a3 fetchLimit:(unint64_t)a4 interactionStoreDB:(id)a5;
- (id)photosContactInferencesSuggestionsWithPredictionContext:(id)a3;
- (id)photosRelationshipSuggestionsWithPredictionContext:(id)a3;
- (id)rankedAutocompleteSuggestionsFromContext:(id)a3 candidates:(id)a4;
- (id)rankedFamilySuggestions;
- (id)rankedNameSuggestionsFromContext:(id)a3 name:(id)a4;
- (id)rankedSiriNLContactSuggestionsFromContext:(id)a3 maxSuggestions:(id)a4 interactionId:(id)a5;
- (id)rankedZKWSuggestionsFromContext:(id)a3;
- (id)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)a3 daysAgo:(int64_t)a4;
- (id)shareExtensionSuggestionsFromContext:(id)a3;
- (id)shareInformationForPhotoId:(id)a3 dateInterval:(id)a4 interactionStoreDB:(id)a5;
- (id)shareSheetInteractionsFromContext:(id)a3;
- (id)shareSheetInteractionsFromContext:(id)a3 maximumNumberOfSuggestions:(int64_t)a4;
- (id)suggestInteractionsFromContext:(id)a3;
- (void)_recordFeedbackToInteractionStoreWithFeedback:(id)a3 mechanism:(int64_t)a4;
- (void)asyncShareExtensionSuggestionsFromContext:(id)a3 completionHandler:(id)a4;
- (void)asyncShareExtensionSuggestionsFromContext:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)asyncSuggestInteractionsFromContext:(id)a3 completionHandler:(id)a4;
- (void)asyncSuggestInteractionsFromContext:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)candidatesForShareSheetRanking;
- (void)dealloc;
- (void)deleteInteractionsMatchingSuggestLessFeedback:(id)a3;
- (void)deleteUIInteractionsMatchingSuggestLessFeedback:(id)a3;
- (void)donateCA2Biome:(id)a3;
- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)a3;
- (void)provideFeedbackForMessagesZkwSuggestions:(id)a3;
- (void)provideFeedbackForSuggestions:(id)a3;
- (void)provideSuggestLessFeedbackForShareSheetSuggestion:(id)a3;
- (void)rankedFamilySuggestions;
- (void)showNotificationToFileARadarForUserStudyParticipants;
- (void)writeFeedbackForContactsAutocompleteSuggestions:(id)a3;
@end

@implementation _PSSuggester

- (_PSSuggester)init
{
  v3 = +[_PSSuggesterConfiguration defaultConfiguration];
  v4 = [(_PSSuggester *)self initWithConfiguration:v3];

  return v4;
}

- (id)_getUserDaemonXPCConnection
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_connection)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = self->_connection;
    self->_connection = v4;

    v6 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection resume];
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_connection;

  return v7;
}

+ (id)suggesterWithDaemon
{
  v2 = [a1 alloc];
  v3 = +[_PSSuggesterConfiguration defaultConfiguration];
  v4 = [v2 initWithDaemonUsingConfiguration:v3];

  return v4;
}

+ (id)suggesterWithDaemonUsingMaxSuggestionCount:(int64_t)a3
{
  v5 = +[_PSSuggesterConfiguration defaultConfiguration];
  [v5 setMaximumNumberOfSuggestions:a3];
  v6 = [[a1 alloc] initWithDaemonUsingConfiguration:v5];

  return v6;
}

+ (void)initializePSSuggesterCacheWithMaxSuggestionCount:(id)a3
{
  v3 = [_PSSuggesterCache defaultServiceWithMaxSuggestionCount:a3];
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Initialized _PSSuggesterCache", v5, 2u);
  }
}

- (_PSSuggester)initWithDaemonUsingConfiguration:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = _PSSuggester;
  v6 = [(_PSSuggester *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc(MEMORY[0x1E696B0B8]);
    v9 = [v8 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = v7->_connection;
    v7->_connection = v9;

    v11 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v11];

    v12 = _PSShareSheetSuggestionBundleIDMapping(0);
    appBundleIdToShareExtensionMapping = v7->_appBundleIdToShareExtensionMapping;
    v7->_appBundleIdToShareExtensionMapping = v12;

    v14 = MEMORY[0x1E69E96A8];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.peopleSuggestionQueue", v15);
    peopleSuggestionQueue = v7->_peopleSuggestionQueue;
    v7->_peopleSuggestionQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.appExtensionQueue", v18);
    appExtensionQueue = v7->_appExtensionQueue;
    v7->_appExtensionQueue = v19;

    [(NSXPCConnection *)v7->_connection resume];
  }

  return v7;
}

- (_PSSuggester)initWithConfiguration:(id)a3 feedbackRecording:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v17.receiver = self;
  v17.super_class = _PSSuggester;
  v8 = [(_PSSuggester *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a3);
    v9->_lock._os_unfair_lock_opaque = 0;
    if (v4)
    {
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("_ps_suggester_feedback", v10);
      feedbackQueue = v9->_feedbackQueue;
      v9->_feedbackQueue = v11;

      v13 = v9->_feedbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56___PSSuggester_initWithConfiguration_feedbackRecording___block_invoke;
      block[3] = &unk_1E7C24268;
      v16 = v9;
      dispatch_async(v13, block);
    }
  }

  return v9;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_userConnection invalidate];
  v3.receiver = self;
  v3.super_class = _PSSuggester;
  [(_PSSuggester *)&v3 dealloc];
}

- (id)contactStore
{
  os_unfair_lock_lock(&self->_lock);
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = getCNContactStoreClass_softClass_2;
    v14 = getCNContactStoreClass_softClass_2;
    if (!getCNContactStoreClass_softClass_2)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getCNContactStoreClass_block_invoke_2;
      v10[3] = &unk_1E7C23BF0;
      v10[4] = &v11;
      __getCNContactStoreClass_block_invoke_2(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_contactStore;
    self->_contactStore = v6;

    contactStore = self->_contactStore;
  }

  v8 = contactStore;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)shareSheetInteractionsFromContext:(id)a3
{
  v4 = a3;
  v5 = [(_PSSuggester *)self configuration];
  v6 = -[_PSSuggester shareSheetInteractionsFromContext:maximumNumberOfSuggestions:](self, "shareSheetInteractionsFromContext:maximumNumberOfSuggestions:", v4, [v5 maximumNumberOfSuggestions]);

  return v6;
}

- (id)shareSheetInteractionsFromContext:(id)a3 maximumNumberOfSuggestions:(int64_t)a4
{
  v6 = a3;
  v7 = _os_activity_create(&dword_1B5ED1000, "CoreDuet: Share Sheet Suggestions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v7, &v14);
  os_activity_scope_leave(&v14);

  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    LOWORD(v14.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleSuggestionsTotalTime", " enableTelemetry=YES ", &v14, 2u);
  }

  v9 = [(_PSSuggester *)self configuration];
  v10 = [v9 suggestionModel];
  v11 = [v10 predictWithPredictionContext:v6 maxSuggestions:a4];

  v12 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v12))
  {
    LOWORD(v14.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleSuggestionsTotalTime", &unk_1B5FD970D, &v14, 2u);
  }

  return v11;
}

- (BOOL)reportShareSheetTimeoutWithError:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696B0B8] currentConnection];
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "reporting share sheet timeout (requested by pid %{public}@)", buf, 0xCu);
  }

  v7 = DRTailspinRequest();
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)appExtensionSuggestionsFromContext:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1B5ED1000, "CoreDuet: App Suggestions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v5, &v12);
  os_activity_scope_leave(&v12);

  v6 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v6))
  {
    LOWORD(v12.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetAppSuggestionsTotalTime", " enableTelemetry=YES ", &v12, 2u);
  }

  v7 = [(_PSSuggester *)self configuration];
  v8 = [v7 suggestionModel];
  v9 = [v8 appExtensionSuggestionsFromContext:v4];

  v10 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v10))
  {
    LOWORD(v12.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetAppSuggestionsTotalTime", &unk_1B5FD970D, &v12, 2u);
  }

  return v9;
}

- (id)candidatesForShareSheetRankingCompute
{
  v3 = _os_activity_create(&dword_1B5ED1000, "CoreDuet: Candidates for Share Sheet Ranking", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v3, &v11);
  os_activity_scope_leave(&v11);

  v4 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v4))
  {
    LOWORD(v11.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSCandidatesForShareSheetRankingTotalTime", " enableTelemetry=YES ", &v11, 2u);
  }

  v5 = [(_PSSuggester *)self configuration];
  v6 = [v5 suggestionModel];
  v7 = [v6 candidatesForShareSheetRanking];

  v8 = [v7 _pas_mappedSetWithTransform:&__block_literal_global_12];
  v9 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v9))
  {
    LOWORD(v11.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSCandidatesForShareSheetRankingTotalTime", &unk_1B5FD970D, &v11, 2u);
  }

  return v8;
}

- (id)candidatesForShareSheetRanking
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "Fetching candidates for Share Sheet ranking", buf, 2u);
  }

  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Checking cache for initialized candidates", buf, 2u);
  }

  v5 = [(_PSSuggester *)self getCachedSuggestionsFetchingIfNeeded:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_69];
    if ([v7 count])
    {
      v8 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "Returning candidates array from cache", buf, 2u);
      }

      goto LABEL_20;
    }
  }

  v9 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "Requesting candidates over XPC", buf, 2u);
  }

  v10 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v8 = v10;
  if (v10)
  {
    v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_73];
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46___PSSuggester_candidatesForShareSheetRanking__block_invoke_74;
    v17[3] = &unk_1E7C251F0;
    v17[4] = buf;
    [v11 candidatesForShareSheetRanking:v17];
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(v19 + 5);
      *v24 = 138477827;
      v25 = v13;
      _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "Fetched candidates %{private}@", v24, 0xCu);
    }

    v7 = *(v19 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester candidatesForShareSheetRanking];
    }

    v11 = [(_PSSuggester *)self candidatesForShareSheetRankingCompute];
    v7 = [v11 allObjects];
  }

LABEL_20:
  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)suggestInteractionsFromContext:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [AeroMLTracerSession alloc];
  v6 = [v4 sessionID];
  v7 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v8 = [(AeroMLTracerSession *)v5 initWithTraceId:v6 projectName:v7];

  v9 = [(AeroMLTracerSession *)v8 createRootSpanWithName:@"syncsuggestInteractionsFromContext_End2End"];
  v10 = [MEMORY[0x1E695DF00] date];
  [v4 setQueryStartDate:v10];

  v11 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Sharing"];
  if ([v11 integerForKey:@"SharingPeopleSuggestionsDisabled"] == 1)
  {
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_DEFAULT, "Share Sheet People Suggestions disabled in Settings Switch", &buf, 2u);
    }

    v13 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v14 = [v4 locationUUIDs];

    if (!v14)
    {
      v15 = [MEMORY[0x1E6997A60] userContext];
      v16 = [MEMORY[0x1E6997A68] keyPathForNearbyLOIIdentifiers];
      v17 = [v15 objectForKeyedSubscript:v16];
      [v4 setLocationUUIDs:v17];
    }

    v18 = +[_PSLogging coreBehaviorChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v4 locationUUIDs];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "Prediction Context - LocationUUIDs: %@", &buf, 0xCu);
    }

    v20 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
    v12 = v20;
    if (v20)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__4;
      v39 = __Block_byref_object_dispose__4;
      v40 = 0;
      v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_86];
      v22 = +[_PSLogging coreBehaviorChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_DEFAULT, "_PSSuggester: calling suggestInteractionsFromContext", v35, 2u);
      }

      v23 = MEMORY[0x1E696AD98];
      v24 = [(_PSSuggester *)self configuration];
      v25 = [v23 numberWithInteger:{objc_msgSend(v24, "maximumNumberOfSuggestions")}];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __47___PSSuggester_suggestInteractionsFromContext___block_invoke_87;
      v32 = &unk_1E7C25218;
      p_buf = &buf;
      v33 = v4;
      [v21 suggestInteractionsFromContext:v33 maxSuggestions:v25 reply:&v29];

      [v9 end];
      v13 = *(*(&buf + 1) + 40);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v26 = +[_PSLogging suggestionSignpost];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_PSSuggester suggestInteractionsFromContext:];
      }

      v13 = [(_PSSuggester *)self shareSheetInteractionsFromContext:v4];
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)asyncSuggestInteractionsFromContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70___PSSuggester_asyncSuggestInteractionsFromContext_completionHandler___block_invoke;
  v10[3] = &unk_1E7C25240;
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  [(_PSSuggester *)self asyncSuggestInteractionsFromContext:v8 timeout:v10 completionHandler:978307200.0];
}

- (id)getCachedSuggestionsFetchingIfNeeded:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Getting cached suggestions", buf, 2u);
  }

  v5 = +[_PSSuggesterCache defaultService];
  v6 = v5;
  if (v3)
  {
    [v5 performInitialFetchIfNeeded];
  }

  v16 = 0;
  v7 = [v6 getCachedSuggestionsAndSessionID:&v16];
  v8 = +[_PSLogging generalChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [v7 count];
    *buf = 134218499;
    v18 = v10;
    v19 = 1024;
    v20 = v3;
    v21 = 2113;
    v22 = v7;
    v11 = "Retrieved %tu cached suggestions (fetchIfNeeded=%d): %{private}@";
    v12 = v8;
    v13 = 28;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    *buf = 67109120;
    LODWORD(v18) = v3;
    v11 = "Retrieved NULL cached suggestions (fetchIfNeeded=%d)";
    v12 = v8;
    v13 = 8;
  }

  _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)showNotificationToFileARadarForUserStudyParticipants
{
  if (_PASIsInternalDevice())
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreduet.logging"];
    v3 = [v2 BOOLForKey:@"shareSheetUserStudyParticipant"];

    if (v3)
    {
      v4 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68___PSSuggester_showNotificationToFileARadarForUserStudyParticipants__block_invoke_153;
      block[3] = &unk_1E7C25268;
      v6 = &__block_literal_global_97;
      dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)asyncSuggestInteractionsFromContext:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v104[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v60 = a5;
  v9 = [MEMORY[0x1E695DF00] date];
  [v8 setQueryStartDate:v9];

  v10 = [AeroMLTracerSession alloc];
  v11 = [v8 sessionID];
  v12 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v13 = [(AeroMLTracerSession *)v10 initWithTraceId:v11 projectName:v12];

  v58 = v13;
  v62 = [(AeroMLTracerSession *)v13 createRootSpanWithName:@"asyncSuggestInteractionsFromContext_End2End"];
  [v62 start];
  v59 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Sharing"];
  if ([v59 integerForKey:@"SharingPeopleSuggestionsDisabled"] == 1)
  {
    v14 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "Share Sheet People Suggestions disabled in Settings Switch", &buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v103 = *MEMORY[0x1E696A578];
    v104[0] = @"Share Sheet People Suggestions disabled in Settings Switch";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
    v61 = [v15 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v16];

    v101 = @"SharingPeopleSuggestionsDisabled";
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", 1];
    v102 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    [v62 logErrorEventWithName:@"PSShareSheetPeopleSuggestionsDisabled" details:@"Share Sheet People Suggestions disabled in Settings Switch attributes:{return empty suggestion list", v18}];

    (*(v60 + 2))(v60, MEMORY[0x1E695E0F0], 0, v61);
  }

  else
  {
    v19 = [v8 locationUUIDs];

    if (!v19)
    {
      v20 = [MEMORY[0x1E6997A60] userContext];
      v21 = [MEMORY[0x1E6997A68] keyPathForNearbyLOIIdentifiers];
      v22 = [v20 objectForKeyedSubscript:v21];
      [v8 setLocationUUIDs:v22];
    }

    v23 = +[_PSLogging coreBehaviorChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v8 locationUUIDs];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v24;
      _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_INFO, "Prediction Context - LocationUUIDs: %@", &buf, 0xCu);
    }

    v61 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
    v25 = +[_PSLogging suggestionSignpost];
    v26 = v25;
    if (v61)
    {
      if (os_signpost_enabled(v25))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v26, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSSuggestionAsyncTotalTime", " enableTelemetry=YES ", &buf, 2u);
      }

      v27 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v27))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v27, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSSuggestionAsyncFallbackTotalTime", " enableTelemetry=YES ", &buf, 2u);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v95 = 0x3032000000;
      v96 = __Block_byref_object_copy__4;
      v97 = __Block_byref_object_dispose__4;
      v98 = 0;
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke;
      v90[3] = &unk_1E7C25290;
      v28 = v8;
      v91 = v28;
      v29 = v62;
      v92 = v29;
      v30 = v60;
      v93 = v30;
      v57 = MEMORY[0x1B8C8C060](v90);
      v31 = [v61 synchronousRemoteObjectProxyWithErrorHandler:v57];
      v32 = [v61 remoteObjectProxyWithErrorHandler:v57];
      v88[0] = 0;
      v88[1] = v88;
      v88[2] = 0x3032000000;
      v88[3] = __Block_byref_object_copy__202;
      v88[4] = __Block_byref_object_dispose__203;
      v89 = MEMORY[0x1B8C8C060](v30);
      v86[0] = 0;
      v86[1] = v86;
      v86[2] = 0x2020000000;
      v87 = 0;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_204;
      v85[3] = &unk_1E7C252B8;
      v85[4] = self;
      v85[5] = v88;
      v33 = MEMORY[0x1B8C8C060](v85);
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_2;
      v79[3] = &unk_1E7C252E0;
      p_buf = &buf;
      v79[4] = self;
      v83 = v88;
      v34 = v28;
      v80 = v34;
      v84 = v86;
      v35 = v29;
      v81 = v35;
      v36 = MEMORY[0x1B8C8C060](v79);
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_221;
      v71[3] = &unk_1E7C25308;
      v37 = v35;
      v72 = v37;
      v38 = v33;
      v76 = v38;
      v73 = self;
      v78 = v86;
      v56 = v32;
      v74 = v56;
      v39 = v34;
      v75 = v39;
      v40 = v36;
      v77 = v40;
      v41 = MEMORY[0x1B8C8C060](v71);
      v42 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreduet.logging"];
      LODWORD(v34) = [v42 BOOLForKey:@"addCacheDelay"];

      peopleSuggestionQueue = self->_peopleSuggestionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78___PSSuggester_asyncSuggestInteractionsFromContext_timeout_completionHandler___block_invoke_235;
      block[3] = &unk_1E7C25330;
      v64 = v39;
      v70 = v34;
      v65 = v37;
      v66 = v31;
      v67 = self;
      v68 = v38;
      v69 = v40;
      v44 = v40;
      v45 = v31;
      v46 = v38;
      dispatch_async(peopleSuggestionQueue, block);
      v47 = a4 + 2.0;
      if (!v34)
      {
        v47 = a4;
      }

      v48 = dispatch_time(0, (v47 * 1000000000.0));
      dispatch_after(v48, self->_peopleSuggestionQueue, v41);

      _Block_object_dispose(v86, 8);
      _Block_object_dispose(v88, 8);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_PSSuggester suggestInteractionsFromContext:];
      }

      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v99 = *MEMORY[0x1E696A578];
      v100 = @"Unable to get xpc connection for share sheet suggestions";
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v51 = [v49 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v50];

      v52 = +[_PSConstants suggestionPathXPCConnectionFailure];
      [v8 setSuggestionPath:v52];

      [v62 logErrorEventWithName:@"getUserDaemonXPCConnectionFailed" details:@"Unable to get xpc connection for share sheet suggestions" attributes:MEMORY[0x1E695E0F8]];
      v53 = [v62 createSubSpanWithName:@"FallbackToInProcessSuggestion"];
      [v53 start];
      v54 = [(_PSSuggester *)self shareSheetInteractionsFromContext:v8];
      (*(v60 + 2))(v60, v54, 0, v51);

      [v53 end];
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (id)shareExtensionSuggestionsFromContext:(id)a3
{
  v4 = a3;
  if (self->_connection)
  {
    v5 = _os_activity_create(&dword_1B5ED1000, "CoreDuet: Share Sheet Suggestions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    os_activity_scope_leave(&state);

    state.opaque[0] = 0;
    state.opaque[1] = &state;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__4;
    v13 = __Block_byref_object_dispose__4;
    v14 = 0;
    v6 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_247];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53___PSSuggester_shareExtensionSuggestionsFromContext___block_invoke_248;
    v9[3] = &unk_1E7C243A0;
    v9[4] = &state;
    [v6 shareExtensionSuggestionsFromContext:v4 reply:v9];
    v7 = *(state.opaque[1] + 40);

    _Block_object_dispose(&state, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)asyncShareExtensionSuggestionsFromContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___PSSuggester_asyncShareExtensionSuggestionsFromContext_completionHandler___block_invoke;
  v8[3] = &unk_1E7C25358;
  v9 = v6;
  v7 = v6;
  [(_PSSuggester *)self asyncShareExtensionSuggestionsFromContext:a3 timeout:v8 completionHandler:978307200.0];
}

- (void)asyncShareExtensionSuggestionsFromContext:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v48[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  if (v10)
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy__4;
    v45[4] = __Block_byref_object_dispose__4;
    v46 = 0;
    v11 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_251];
    if (asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___pasOnceToken73 != -1)
    {
      [_PSSuggester asyncShareExtensionSuggestionsFromContext:timeout:completionHandler:];
    }

    v12 = asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___pasExprOnceResult;
    if (dispatch_semaphore_wait(v12, 0))
    {
      v13 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_DEFAULT, "Too many requests in progress, your request was cancelled", buf, 2u);
      }
    }

    else
    {
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x2020000000;
      v44 = 0;
      *buf = 0;
      v38 = buf;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__202;
      v41 = __Block_byref_object_dispose__203;
      v42 = MEMORY[0x1B8C8C060](v9);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_255;
      v36[3] = &unk_1E7C25380;
      v36[4] = self;
      v36[5] = v45;
      v36[6] = v43;
      v36[7] = buf;
      v19 = MEMORY[0x1B8C8C060](v36);
      v20 = dispatch_time(0, (a4 * 1000000000.0));
      appExtensionQueue = self->_appExtensionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_256;
      block[3] = &unk_1E7C253A8;
      block[4] = self;
      v22 = v8;
      v33 = v22;
      v35 = v43;
      v23 = v19;
      v34 = v23;
      dispatch_after(v20, appExtensionQueue, block);
      v24 = self->_appExtensionQueue;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_257;
      v27[3] = &unk_1E7C253D0;
      v28 = v11;
      v29 = v22;
      v31 = v23;
      v30 = v12;
      v25 = v23;
      dispatch_async(v24, v27);

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v43, 8);
    }

    _Block_object_dispose(v45, 8);
  }

  else
  {
    v14 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester suggestInteractionsFromContext:];
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v47 = *MEMORY[0x1E696A578];
    v48[0] = @"Unable to get xpc connection for share sheet suggestions";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v17 = [v15 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v16];

    v18 = [(_PSSuggester *)self shareSheetInteractionsFromContext:v8];
    v9[2](v9, v18, 0, v17);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)rankedNameSuggestionsFromContext:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSRankedNameSuggestionsTotalTime", " enableTelemetry=YES ", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_connection)
  {
    v9 = objc_alloc(MEMORY[0x1E696B0B8]);
    v10 = [v9 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = self->_connection;
    self->_connection = v10;

    v12 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v12];

    [(NSXPCConnection *)self->_connection resume];
  }

  os_unfair_lock_unlock(&self->_lock);
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v13 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_259];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54___PSSuggester_rankedNameSuggestionsFromContext_name___block_invoke_260;
  v18[3] = &unk_1E7C243A0;
  v18[4] = buf;
  [v13 rankedNameSuggestionsFromContext:v6 name:v7 reply:v18];
  v14 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSRankedNameSuggestionsTotalTime", &unk_1B5FD970D, v17, 2u);
  }

  v15 = *(v20 + 5);
  _Block_object_dispose(buf, 8);

  return v15;
}

- (id)rankedSiriNLContactSuggestionsFromContext:(id)a3 maxSuggestions:(id)a4 interactionId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSRankedSiriNLSuggestionsTotalTime", &unk_1B5FD970D, buf, 2u);
  }

  v12 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v13 = v12;
  if (v12)
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_265];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87___PSSuggester_rankedSiriNLContactSuggestionsFromContext_maxSuggestions_interactionId___block_invoke_266;
    v20[3] = &unk_1E7C243A0;
    v20[4] = buf;
    [v14 rankedSiriNLContactSuggestionsFromContext:v8 maxSuggestions:v9 interactionId:v10 reply:v20];
    v15 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v15))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSRankedSiriNLSuggestionsTotalTime", &unk_1B5FD970D, v19, 2u);
    }

    v16 = *(v22 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester rankedSiriNLContactSuggestionsFromContext:maxSuggestions:interactionId:];
    }

    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

- (id)rankedZKWSuggestionsFromContext:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 bundleID];
    v7 = [v4 seedRecipients];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "[rankedZKWSuggestionsFromContext] Serving request from bundle %@, seed: %@", buf, 0x16u);
  }

  if ([v4 supportsZKWSuggestions])
  {
    v8 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
    v9 = +[_PSLogging suggestionSignpost];
    v10 = v9;
    if (v8)
    {
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSZkwSuggestionsTotalTime", " enableTelemetry=YES ", buf, 2u);
      }

      v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_268];
      v11 = [(_PSSuggester *)self configuration];
      v12 = [v11 maximumNumberOfSuggestions];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v33 = __Block_byref_object_copy__4;
      v34 = __Block_byref_object_dispose__4;
      v35 = 0;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __48___PSSuggester_rankedZKWSuggestionsFromContext___block_invoke_269;
      v29[3] = &unk_1E7C243A0;
      v29[4] = buf;
      [v10 zkwSuggestionsFromContext:v4 maxSuggestions:v13 reply:v29];

      v14 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v14))
      {
        *v30 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSZkwSuggestionsTotalTime", &unk_1B5FD970D, v30, 2u);
      }

      v15 = [v4 bundleID];
      v16 = +[_PSConstants mobileFacetimeBundleId];
      if ([v15 isEqualToString:v16])
      {
        v17 = 1;
      }

      else
      {
        v19 = [v4 bundleID];
        v20 = +[_PSConstants macFacetimeBundleId];
        v17 = [v19 isEqualToString:v20];
      }

      if (rankedZKWSuggestionsFromContext___pasOnceToken104 != -1)
      {
        [_PSSuggester rankedZKWSuggestionsFromContext:];
      }

      v21 = rankedZKWSuggestionsFromContext___pasExprOnceResult;
      v22 = v21;
      if (v17 && ([v21 isEqualToString:@"pstool"] & 1) == 0)
      {
        v23 = [v4 bundleID];
        v24 = [_PSCNAutocompleteFeedback createVendedSuggestionsFeedbackWithBundleIdentifier:v23 suggestions:*(*&buf[8] + 40) isImplicit:1];
        [(_PSSuggester *)self provideFeedbackForContactsAutocompleteSuggestions:v24];
      }

      v25 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [*(*&buf[8] + 40) count];
        *v30 = 134217984;
        v31 = v26;
        _os_log_impl(&dword_1B5ED1000, v25, OS_LOG_TYPE_DEFAULT, "[rankedZKWSuggestionsFromContext] returning %tu suggestion(s).", v30, 0xCu);
      }

      v18 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_PSSuggester rankedZKWSuggestionsFromContext:];
      }

      v18 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v8 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester rankedZKWSuggestionsFromContext:v4];
    }

    v18 = MEMORY[0x1E695E0F0];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)autocompleteSearchResultsWithPredictionContext:(id)a3
{
  v4 = a3;
  if (autocompleteSearchResultsWithPredictionContext___pasOnceToken106 != -1)
  {
    [_PSSuggester autocompleteSearchResultsWithPredictionContext:];
  }

  v5 = autocompleteSearchResultsWithPredictionContext___pasExprOnceResult;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___PSSuggester_autocompleteSearchResultsWithPredictionContext___block_invoke_2;
  v9[3] = &unk_1E7C253F8;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [v5 runWithLockAcquired:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)rankedAutocompleteSuggestionsFromContext:(id)a3 candidates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v9 = +[_PSLogging suggestionSignpost];
  v10 = v9;
  if (v8)
  {
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSAutocompleteSuggestionsTotalTime", " enableTelemetry=YES ", buf, 2u);
    }

    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__4;
    v21 = __Block_byref_object_dispose__4;
    v22 = 0;
    v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_286];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68___PSSuggester_rankedAutocompleteSuggestionsFromContext_candidates___block_invoke_287;
    v16[3] = &unk_1E7C243A0;
    v16[4] = buf;
    [v11 rankedAutocompleteSuggestionsFromContext:v6 candidates:v7 reply:v16];
    v12 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSAutocompleteSuggestionsTotalTime", &unk_1B5FD970D, v15, 2u);
    }

    v13 = *(v18 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester rankedAutocompleteSuggestionsFromContext:candidates:];
    }

    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (id)rankedFamilySuggestions
{
  v2 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v3 = v2;
  if (v2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__4;
    v13 = __Block_byref_object_dispose__4;
    v14 = 0;
    v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_289];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39___PSSuggester_rankedFamilySuggestions__block_invoke_290;
    v8[3] = &unk_1E7C243A0;
    v8[4] = &v9;
    [v4 rankedFamilySuggestionsWithReply:v8];
    v5 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester rankedFamilySuggestions];
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)familyRecommendationSuggestionsWithPredictionContext:(id)a3
{
  v4 = a3;
  v5 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v6 = v5;
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_292_0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69___PSSuggester_familyRecommendationSuggestionsWithPredictionContext___block_invoke_293;
    v11[3] = &unk_1E7C243A0;
    v11[4] = &v12;
    [v7 familyRecommendedSuggestionsWithPredictionContext:v4 reply:v11];
    v8 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester familyRecommendationSuggestionsWithPredictionContext:];
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)photosRelationshipSuggestionsWithPredictionContext:(id)a3
{
  v4 = a3;
  v5 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v6 = v5;
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_295];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67___PSSuggester_photosRelationshipSuggestionsWithPredictionContext___block_invoke_296;
    v11[3] = &unk_1E7C243A0;
    v11[4] = &v12;
    [v7 photosRelationshipSuggestionsWithPredictionContext:v4 reply:v11];
    v8 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester photosRelationshipSuggestionsWithPredictionContext:];
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)photosContactInferencesSuggestionsWithPredictionContext:(id)a3
{
  v4 = a3;
  v5 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v6 = v5;
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_298];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72___PSSuggester_photosContactInferencesSuggestionsWithPredictionContext___block_invoke_299;
    v11[3] = &unk_1E7C243A0;
    v11[4] = &v12;
    [v7 photosContactInferencesSuggestionsWithPredictionContext:v4 reply:v11];
    v8 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester photosContactInferencesSuggestionsWithPredictionContext:];
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)hourOfDayProbabilitiesToInteractWithContact:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [_PSHeuristics alloc];
  v5 = MEMORY[0x1E69978F8];
  v6 = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
  v7 = [v5 storeWithDirectory:v6 readOnly:1];
  v8 = [(_PSHeuristics *)v4 initWithKnowledgeStore:0 interactionStore:v7 contactResolver:0 messageInteractionCache:0];

  if (v3)
  {
    v15[0] = v3;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v10 = [(_PSHeuristics *)v8 hourOfDayProbabilitiesToInteractWithContacts:v9];
    v11 = [v10 allValues];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)hourOfDayProbabilitiesToInteractWithContacts:(id)a3
{
  v3 = a3;
  v4 = [_PSHeuristics alloc];
  v5 = MEMORY[0x1E69978F8];
  v6 = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
  v7 = [v5 storeWithDirectory:v6 readOnly:1];
  v8 = [(_PSHeuristics *)v4 initWithKnowledgeStore:0 interactionStore:v7 contactResolver:0 messageInteractionCache:0];

  v9 = [(_PSHeuristics *)v8 hourOfDayProbabilitiesToInteractWithContacts:v3];

  return v9;
}

- (id)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)a3 daysAgo:(int64_t)a4
{
  v6 = a3;
  v7 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v8 = v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  if (v7)
  {
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_304];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75___PSSuggester_relativeAppUsageProbabilitiesForCandidateBundleIds_daysAgo___block_invoke_305;
    v14[3] = &unk_1E7C25420;
    v14[4] = &v15;
    [v9 relativeAppUsageProbabilitiesForCandidateBundleIds:v6 daysAgo:v10 reply:v14];

    v11 = v16[5];
  }

  else
  {
    v12 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester relativeAppUsageProbabilitiesForCandidateBundleIds:daysAgo:];
    }

    v11 = v16[5];
  }

  _Block_object_dispose(&v15, 8);

  return v11;
}

- (BOOL)isTransportBundleIDSupported:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = [v4 transportBundleID];

  if (v5)
  {
    v6 = [v3 suggestions];
    v7 = [v6 firstObject];

    if (v7)
    {
      v5 = [v7 supportedBundleIDs];
      v8 = [v5 componentsSeparatedByString:{@", "}];

      v9 = [v3 action];
      v10 = [v9 transportBundleID];
      LOBYTE(v5) = [v8 containsObject:v10];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)generatePSRTelemetry:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 action];
  v6 = [v5 type];

  v7 = &unk_1F2D8B490;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = &unk_1F2D8B490;
  }

  else
  {
    if ([v3 indexOfEngagedSuggestion])
    {
      v9 = 0;
    }

    else
    {
      v11 = [v3 action];
      v12 = [v11 transportBundleID];
      v9 = [v12 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];
    }

    v13 = +[_PSConstants shareplayBundleIds];
    v14 = [v3 action];
    v15 = [v14 transportBundleID];
    v8 = [v13 containsObject:v15];

    v16 = [v3 action];
    v17 = [v16 suggestion];
    v18 = [v17 reasonType];
    v19 = [v18 isEqualToString:@"assistant"];

    if (v19)
    {
      v10 = &unk_1F2D8B4A8;
    }

    else
    {
      v10 = &unk_1F2D8B490;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "indexOfEngagedSuggestion")}];
    [v4 setObject:v20 forKeyedSubscript:@"indexSelected"];

    v21 = [v3 action];
    v22 = [v21 suggestion];
    v23 = [v22 reason];
    [v4 setObject:v23 forKeyedSubscript:@"engagedSuggestionProxyReason"];

    v24 = [v3 action];
    v25 = [v24 suggestion];
    v26 = [v25 reasonType];
    v27 = [v26 isEqualToString:@"_PSHeuristics"];

    if ((v27 & 1) == 0)
    {
      v28 = [v3 action];
      v29 = [v28 suggestion];
      v30 = [v29 reasonType];
      v31 = [v30 isEqualToString:@"suggestionsProxiesFromStats"];

      if (v31)
      {
        v7 = &unk_1F2D8B4A8;
      }

      else
      {
        v7 = &unk_1F2D8B4C0;
      }
    }

    [v4 setObject:v7 forKeyedSubscript:@"engagedSuggestionProxy"];
    v32 = [v3 action];
    v33 = [v32 suggestion];
    v34 = [v33 reasonType];
    [v4 setObject:v34 forKeyedSubscript:@"engagedSuggestionProxy_debug"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "wasAirDropShown")}];
  [v4 setObject:v35 forKeyedSubscript:@"airdropShown"];

  v36 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v4 setObject:v36 forKeyedSubscript:@"airdropEngaged"];

  v37 = MEMORY[0x1E696AD98];
  v38 = [v3 context];
  v39 = [v37 numberWithBool:{objc_msgSend(v38, "isSharePlayAvailable")}];
  [v4 setObject:v39 forKeyedSubscript:@"sharePlayAvailable"];

  v40 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  [v4 setObject:v40 forKeyedSubscript:@"sharePlayEngaged"];

  v41 = MEMORY[0x1E696AD98];
  v42 = [v3 context];
  v43 = [v42 supportedBundleIds];
  v44 = [v3 action];
  v45 = [v44 transportBundleID];
  v46 = [v41 numberWithBool:{objc_msgSend(v43, "containsObject:", v45)}];
  [v4 setObject:v46 forKeyedSubscript:@"appSharingIntent"];

  v47 = MEMORY[0x1E696AD98];
  v48 = [v3 action];
  v49 = [v47 numberWithInteger:{objc_msgSend(v48, "type")}];
  [v4 setObject:v49 forKeyedSubscript:@"engagementType"];

  v50 = [v3 suggestions];
  if (v50)
  {
    v51 = [v3 suggestions];
    v52 = [v51 count] != 0;
  }

  else
  {
    v52 = 0;
  }

  v53 = [MEMORY[0x1E696AD98] numberWithBool:v52];
  [v4 setObject:v53 forKeyedSubscript:@"suggestionAvailable"];

  v54 = MEMORY[0x1E696AD98];
  v55 = [v3 suggestions];
  v56 = [v54 numberWithUnsignedInteger:{objc_msgSend(v55, "count")}];
  [v4 setObject:v56 forKeyedSubscript:@"suggestionNumber"];

  v57 = MEMORY[0x1E696AD98];
  [v3 numberOfVisibleSuggestions];
  v58 = [v57 numberWithFloat:?];
  [v4 setObject:v58 forKeyedSubscript:@"numberOfVisibleSuggestions"];

  v59 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Sharing"];
  v60 = [v59 integerForKey:@"SharingPeopleSuggestionsDisabled"] == 1;
  v61 = [MEMORY[0x1E696AD98] numberWithBool:v60];
  [v4 setObject:v61 forKeyedSubscript:@"peopleSuggestionsSetting"];

  v62 = [v3 action];
  v63 = [v62 transportBundleID];
  [v4 setObject:v63 forKeyedSubscript:@"transportApp"];

  v64 = [v3 context];
  v65 = [v64 bundleID];
  [v4 setObject:v65 forKeyedSubscript:@"sourceApp"];

  v66 = [v3 suggestions];
  v67 = [v66 firstObject];
  v68 = [v67 utiList];
  [v4 setObject:v68 forKeyedSubscript:@"contentShared"];

  v69 = [v3 context];
  v70 = [v69 sessionID];
  [v4 setObject:v70 forKeyedSubscript:@"sessionId"];

  [v4 setObject:v10 forKeyedSubscript:@"userExperienceFlow"];
  v71 = MEMORY[0x1E696AD98];
  v72 = [v3 context];
  v73 = [v72 suggestionCompletionDate];
  v74 = [v3 context];
  v75 = [v74 suggestionDate];
  [v73 timeIntervalSinceDate:v75];
  v77 = [v71 numberWithInt:(v76 * 1000.0)];
  [v4 setObject:v77 forKeyedSubscript:@"sessionLatency"];

  v78 = MEMORY[0x1E696AD98];
  v79 = [v3 context];
  v80 = [v78 numberWithBool:{objc_msgSend(v79, "timedOut")}];
  [v4 setObject:v80 forKeyedSubscript:@"modelTimeout"];

  v81 = [v3 context];
  v82 = [v81 suggestionPath];
  v83 = +[_PSConstants suggestionPathNormal];
  LOBYTE(v74) = [v82 isEqualToString:v83];

  if (v74)
  {
    v84 = &unk_1F2D8B490;
  }

  else
  {
    v85 = [v3 context];
    v86 = [v85 suggestionPath];
    v87 = +[_PSConstants suggestionPathBestEffort];
    v88 = [v86 isEqualToString:v87];

    if (v88)
    {
      v84 = &unk_1F2D8B4A8;
    }

    else
    {
      v89 = [v3 context];
      v90 = [v89 suggestionPath];
      v91 = +[_PSConstants suggestionPathCachedSuggestion];
      v92 = [v90 isEqualToString:v91];

      if (v92)
      {
        v84 = &unk_1F2D8B4D8;
      }

      else
      {
        v84 = &unk_1F2D8B4C0;
      }
    }
  }

  [v4 setObject:v84 forKeyedSubscript:@"suggestionPath"];
  v93 = [v3 context];
  v94 = [v93 suggestionPath];
  [v4 setObject:v94 forKeyedSubscript:@"suggestionPath_debug"];

  v95 = [v3 context];
  v96 = [v95 trialDeploymentId];
  if (v96)
  {
    [v4 setObject:v96 forKeyedSubscript:@"trialDeploymentId"];
  }

  else
  {
    v97 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:v97 forKeyedSubscript:@"trialDeploymentId"];
  }

  v98 = [v3 context];
  v99 = [v98 trialExperimentId];
  if (v99)
  {
    [v4 setObject:v99 forKeyedSubscript:@"trialExperimentId"];
  }

  else
  {
    v100 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:v100 forKeyedSubscript:@"trialExperimentId"];
  }

  v101 = [v3 context];
  v102 = [v101 trialTreatmentId];
  if (v102)
  {
    [v4 setObject:v102 forKeyedSubscript:@"trialTreatmentId"];
  }

  else
  {
    v103 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:v103 forKeyedSubscript:@"trialTreatmentId"];
  }

  v104 = [v3 context];
  v105 = [v104 bundleID];
  v106 = [&unk_1F2D8C240 containsObject:v105];

  v107 = [MEMORY[0x1E696AD98] numberWithBool:v106];
  [v4 setObject:v107 forKeyedSubscript:@"isPhotos"];

  v108 = MEMORY[0x1E696AD98];
  v109 = [v3 context];
  v110 = [v108 numberWithBool:{objc_msgSend(v109, "isPSRActive")}];
  [v4 setObject:v110 forKeyedSubscript:@"PSRActive"];

  v111 = MEMORY[0x1E696AD98];
  [v3 delay];
  v113 = [v111 numberWithInt:(v112 * 1000.0)];
  [v4 setObject:v113 forKeyedSubscript:@"sessionDelayInMilliseconds"];

  v115 = v4;
  AnalyticsSendEventLazy();

  return v115;
}

- (void)provideFeedbackForSuggestions:(id)a3
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = a3;
  connection = self->_connection;
  if (!connection)
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = objc_alloc(MEMORY[0x1E696B0B8]);
    v7 = [v6 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    v8 = self->_connection;
    self->_connection = v7;

    v9 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection resume];
    os_unfair_lock_unlock(&self->_lock);
    connection = self->_connection;
  }

  v87 = self;
  v97 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_432];
  v95 = [v4 action];
  v93 = [v95 suggestion];
  v10 = [v93 conversationIdentifier];
  v11 = v10;
  if (!v10)
  {
    v92 = [v4 action];
    v90 = [v92 suggestion];
    v11 = [v90 derivedIntentIdentifier];
  }

  v12 = [v4 context];
  v13 = [v12 sessionID];
  v14 = [v4 action];
  v15 = [v14 type];
  v16 = [v4 action];
  v17 = [v16 transportBundleID];
  v18 = [v4 context];
  [v97 saveFeedbackInCoreDuetd:v11 forSessionId:v13 feedbackActionType:v15 transportBundleId:v17 isFallbackFetch:objc_msgSend(v18 reply:{"isFallbackFetch"), &__block_literal_global_436}];

  if (!v10)
  {
  }

  v19 = [v4 action];
  v20 = [v19 type];

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v22 = "Feedback for people suggestions: Abandonment";
        goto LABEL_23;
      }

LABEL_24:

      goto LABEL_25;
    }

    if (v20 == 4)
    {
      v21 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = [v4 action];
        v24 = [v23 transportBundleID];
        *buf = 138412290;
        v99 = v24;
        _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_INFO, "Feedback for app suggestions: Engagement with transport: %@", buf, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_16:
    v21 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester provideFeedbackForSuggestions:];
    }

    goto LABEL_24;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      v21 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v22 = "Feedback for people suggestions: Engagement with non-suggestion";
LABEL_23:
        _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_INFO, v22, buf, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v25 = [v4 indexOfEngagedSuggestion];
  v26 = +[_PSLogging feedbackChannel];
  v21 = v26;
  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester provideFeedbackForSuggestions:];
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
    v85 = [v4 action];
    v86 = [v85 transportBundleID];
    *buf = 138412546;
    v99 = v84;
    v100 = 2112;
    v101 = v86;
    _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_INFO, "Feedback for people suggestions: Engagement with suggestion at index %@, transport: %@", buf, 0x16u);
  }

  [(_PSSuggester *)v87 _recordFeedbackToInteractionStoreWithFeedback:v4 mechanism:20];
LABEL_25:
  v27 = [v4 suggestions];
  v28 = [v27 firstObject];
  v96 = [v28 familySuggestion];

  v29 = [v4 action];
  v30 = [v29 suggestion];

  v31 = [v30 bundleID];
  v91 = v30;
  v32 = [v30 derivedIntentIdentifier];
  if (v31)
  {
    v33 = [MEMORY[0x1E6997A60] userContext];
    v34 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/sharesheet/selectedSuggestion"];
    v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v35 setObject:v31 forKeyedSubscript:@"bundleID"];
    if (v32)
    {
      v36 = +[_PSConstants mobileMessagesBundleId];
      v37 = [v31 isEqualToString:v36];

      if ((v37 & 1) == 0)
      {
        [v35 setObject:v32 forKeyedSubscript:@"derivedIntentIdentifier"];
      }
    }

    v38 = [v35 copy];
    [v33 setObject:v38 forKeyedSubscript:v34];

    v39 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v99 = v31;
      _os_log_impl(&dword_1B5ED1000, v39, OS_LOG_TYPE_INFO, "Set selected suggestion in context store for bundleID %@", buf, 0xCu);
    }
  }

  v88 = v32;
  v89 = v31;
  v40 = [v4 suggestions];
  v41 = [v40 firstObject];
  v42 = v4;
  v43 = [v41 isAdaptedModelCreated];

  v44 = [v42 suggestions];
  v45 = [v44 firstObject];
  v46 = [v45 isAdaptedModelUsed];

  v47 = [v42 suggestions];
  v48 = [v47 firstObject];
  v49 = [v48 adaptedModelRecipeID];

  v50 = [v42 suggestions];
  v51 = [v50 firstObject];
  v52 = [v51 supportedBundleIDs];

  v53 = [v42 suggestions];
  v54 = [v53 firstObject];
  v55 = [v54 utiList];

  v56 = [MEMORY[0x1E696AD98] numberWithBool:v96];
  v94 = v42;
  v57 = [v42 feedbackPayloadShowFamily:v56];
  v58 = [v57 mutableCopy];

  v59 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Sharing"];
  v60 = [v59 integerForKey:@"SharingPeopleSuggestionsDisabled"];
  v61 = [MEMORY[0x1E696AD98] numberWithInteger:v60];
  [v58 setObject:v61 forKeyedSubscript:@"peopleSuggestionsDisabled"];

  v62 = [MEMORY[0x1E696AD98] numberWithBool:v43];
  [v58 setObject:v62 forKeyedSubscript:@"isAdaptedModelCreated"];

  v63 = [MEMORY[0x1E696AD98] numberWithBool:v46];
  [v58 setObject:v63 forKeyedSubscript:@"isAdaptedModelUsed"];

  [v58 setObject:v49 forKeyedSubscript:@"adaptedModelRecipeID"];
  v64 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:v43];
    v66 = [MEMORY[0x1E696AD98] numberWithBool:v46];
    *buf = 138412802;
    v99 = v65;
    v100 = 2112;
    v101 = v66;
    v102 = 2112;
    v103 = v49;
    _os_log_impl(&dword_1B5ED1000, v64, OS_LOG_TYPE_INFO, "Adapted model use and availability indicators are set as isAdaptedModelCreated:%@, isAdaptedModelUsed:%@, adaptedModelRecipeID:%@", buf, 0x20u);
  }

  [v58 setObject:v52 forKeyedSubscript:@"supportedBundleIds"];
  v67 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v99 = v52;
    _os_log_impl(&dword_1B5ED1000, v67, OS_LOG_TYPE_INFO, "Comma seperated supported bundleID list:%@", buf, 0xCu);
  }

  [v58 setObject:v55 forKeyedSubscript:@"uti"];
  v68 = +[_PSLogging feedbackChannel];
  v69 = v94;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v99 = v55;
    _os_log_impl(&dword_1B5ED1000, v68, OS_LOG_TYPE_INFO, "Comma seperated UTI list:%@", buf, 0xCu);
  }

  v70 = MEMORY[0x1E696AD98];
  v71 = [v94 context];
  v72 = [v70 numberWithInteger:{objc_msgSend(v71, "suggestionPurpose")}];
  [v58 setObject:v72 forKeyedSubscript:@"suggestionPurpose"];

  v73 = [v94 action];
  v74 = [v73 suggestion];
  v75 = [v74 recipients];

  if (v75)
  {
    v76 = MEMORY[0x1E696AD98];
    v77 = [v94 action];
    v78 = [v77 suggestion];
    v79 = [v78 recipients];
    v80 = [v76 numberWithUnsignedInteger:{objc_msgSend(v79, "count")}];
    [v58 setObject:v80 forKeyedSubscript:@"recipientCount"];

    v69 = v94;
  }

  if ((v96 & 1) == 0)
  {
    v81 = [(_PSSuggester *)v87 generatePSRTelemetry:v69];
    [(_PSSuggester *)v87 donateCA2Biome:v81];
  }

  v82 = v58;
  AnalyticsSendEventLazy();
  [v69 donateToBiome];

  v83 = *MEMORY[0x1E69E9840];
}

- (void)donateCA2Biome:(id)a3
{
  v4 = a3;
  v5 = [(_PSSuggester *)self convertCoreAnalyticsEvent2BiomeEvent:v4];
  v6 = BiomeLibrary();
  v7 = [v6 MLSE];
  v8 = [v7 ShareSheet];
  v9 = [v8 Feedback];

  v10 = [v9 source];
  v11 = objc_alloc(MEMORY[0x1E698EC98]);
  LODWORD(v15) = 0;
  v12 = [v11 initWithIdentifier:0 engagementType:0 engagementIdentifier:0 visiblePeopleSuggestionCount:0 visibleAppSuggestionCount:0 airdropPeopleSuggestionShown:0 inferenceSource:v15 trialIdentifier:0 timeouts:MEMORY[0x1E695E0F0] productInsights:v5];
  v13 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_INFO, "Attempting to send BMMLSEShareSheetFeedback event...", buf, 2u);
  }

  [v10 sendEvent:v12];
  v14 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "Successfully sent BMMLSEShareSheetFeedback event.", v16, 2u);
  }
}

- (id)_stringFromValue:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 || ([MEMORY[0x1E695DFB0] null], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v3))
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v3 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [v3 componentsJoinedByString:{@", "}];
        }

        else
        {
          v7 = +[_PSLogging feedbackChannel];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v11 = 138412290;
            v12 = objc_opt_class();
            v8 = v12;
            _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_INFO, "Unexpected type for value of class %@. Converting to string via -description.", &v11, 0xCu);
          }

          v5 = [v3 description];
        }
      }
    }

    v6 = v5;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)convertCoreAnalyticsEvent2BiomeEvent:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = [a3 mutableCopy];
  v5 = [v4 objectForKeyedSubscript:@"indexSelected"];
  v6 = [(_PSSuggester *)self _stringFromValue:v5];
  [v4 setObject:v6 forKeyedSubscript:@"indexSelected"];

  v7 = [v4 objectForKeyedSubscript:@"engagedSuggestionProxy"];
  v8 = [(_PSSuggester *)self _stringFromValue:v7];
  [v4 setObject:v8 forKeyedSubscript:@"engagedSuggestionProxy"];

  v9 = [v4 objectForKeyedSubscript:@"engagementType"];
  v10 = [(_PSSuggester *)self _stringFromValue:v9];
  [v4 setObject:v10 forKeyedSubscript:@"engagementType"];

  v11 = [v4 objectForKeyedSubscript:@"suggestionNumber"];
  v12 = [(_PSSuggester *)self _stringFromValue:v11];
  [v4 setObject:v12 forKeyedSubscript:@"suggestionNumber"];

  v13 = [v4 objectForKeyedSubscript:@"suggestionPath"];
  v14 = [(_PSSuggester *)self _stringFromValue:v13];
  [v4 setObject:v14 forKeyedSubscript:@"suggestionPath"];

  v15 = [v4 objectForKeyedSubscript:@"userExperienceFlow"];
  v16 = [(_PSSuggester *)self _stringFromValue:v15];
  [v4 setObject:v16 forKeyedSubscript:@"userExperienceFlow"];

  v17 = [v4 objectForKeyedSubscript:@"trialDeploymentId"];
  v18 = [(_PSSuggester *)self _stringFromValue:v17];
  [v4 setObject:v18 forKeyedSubscript:@"trialDeploymentId"];

  v19 = [v4 objectForKeyedSubscript:@"numberOfVisibleSuggestions"];
  v20 = [(_PSSuggester *)self _stringFromValue:v19];
  [v4 setObject:v20 forKeyedSubscript:@"numberOfVisibleSuggestions"];

  v21 = [v4 objectForKeyedSubscript:@"engagedSuggestionProxyReason"];
  v22 = [(_PSSuggester *)self _stringFromValue:v21];
  [v4 setObject:v22 forKeyedSubscript:@"engagedSuggestionProxyReason"];

  v23 = [v4 objectForKeyedSubscript:@"engagedSuggestionProxy_debug"];
  v24 = [(_PSSuggester *)self _stringFromValue:v23];
  [v4 setObject:v24 forKeyedSubscript:@"engagedSuggestionProxyDebug"];

  v25 = [v4 objectForKeyedSubscript:@"transportApp"];
  v26 = [(_PSSuggester *)self _stringFromValue:v25];
  [v4 setObject:v26 forKeyedSubscript:@"transportApp"];

  v27 = [v4 objectForKeyedSubscript:@"sourceApp"];
  v28 = [(_PSSuggester *)self _stringFromValue:v27];
  [v4 setObject:v28 forKeyedSubscript:@"sourceApp"];

  v29 = [v4 objectForKeyedSubscript:@"contentShared"];
  v30 = [(_PSSuggester *)self _stringFromValue:v29];
  [v4 setObject:v30 forKeyedSubscript:@"contentShared"];

  v31 = [v4 objectForKeyedSubscript:@"sessionId"];
  v32 = [(_PSSuggester *)self _stringFromValue:v31];
  [v4 setObject:v32 forKeyedSubscript:@"sessionId"];

  v33 = [v4 objectForKeyedSubscript:@"suggestionPath_debug"];
  v34 = [(_PSSuggester *)self _stringFromValue:v33];
  [v4 setObject:v34 forKeyedSubscript:@"suggestionPathDebug"];

  v35 = [v4 objectForKeyedSubscript:@"trialExperimentId"];
  v36 = [(_PSSuggester *)self _stringFromValue:v35];
  [v4 setObject:v36 forKeyedSubscript:@"trialExperimentId"];

  v37 = [v4 objectForKeyedSubscript:@"trialTreatmentId"];
  v38 = [(_PSSuggester *)self _stringFromValue:v37];
  [v4 setObject:v38 forKeyedSubscript:@"trialTreatmentId"];

  v39 = [MEMORY[0x1E695DF00] date];
  v40 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v40 setDateFormat:@"MM/dd/yyyy"];
  v72 = v40;
  v73 = v39;
  v41 = [v40 stringFromDate:v39];
  v42 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v97 = v41;
    _os_log_impl(&dword_1B5ED1000, v42, OS_LOG_TYPE_INFO, "Datestamp string generated: %@", buf, 0xCu);
  }

  v71 = v41;
  [v4 setObject:v41 forKeyedSubscript:@"datestamp"];
  v43 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v43, OS_LOG_TYPE_INFO, "--- Converted Data Contents and Types for BMPeopleSuggesterEventLevelMetrics Init ---", buf, 2u);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v44 = v4;
  v45 = [v44 countByEnumeratingWithState:&v92 objects:v102 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v93;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v93 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v92 + 1) + 8 * i);
        v50 = [v44 objectForKeyedSubscript:v49];
        v51 = +[_PSLogging feedbackChannel];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = objc_opt_class();
          *buf = 138412802;
          v97 = v49;
          v98 = 2112;
          v99 = v50;
          v100 = 2112;
          v101 = v52;
          v53 = v52;
          _os_log_impl(&dword_1B5ED1000, v51, OS_LOG_TYPE_INFO, "Key: %@, Value: %@, Class: %@", buf, 0x20u);
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v92 objects:v102 count:16];
    }

    while (v46);
  }

  v54 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v54, OS_LOG_TYPE_INFO, "----------------------------------------------------------------------------------", buf, 2u);
  }

  v69 = objc_alloc(MEMORY[0x1E698EDB0]);
  v91 = [v44 objectForKeyedSubscript:@"indexSelected"];
  v90 = [v44 objectForKeyedSubscript:@"engagedSuggestionProxyReason"];
  v89 = [v44 objectForKeyedSubscript:@"engagedSuggestionProxy"];
  v88 = [v44 objectForKeyedSubscript:@"engagedSuggestionProxyDebug"];
  v85 = [v44 objectForKeyedSubscript:@"airdropShown"];
  v82 = [v44 objectForKeyedSubscript:@"airdropEngaged"];
  v87 = [v44 objectForKeyedSubscript:@"sharePlayAvailable"];
  v86 = [v44 objectForKeyedSubscript:@"sharePlayEngaged"];
  v84 = [v44 objectForKeyedSubscript:@"appSharingIntent"];
  v79 = [v44 objectForKeyedSubscript:@"engagementType"];
  v83 = [v44 objectForKeyedSubscript:@"suggestionAvailable"];
  v68 = [v44 objectForKeyedSubscript:@"suggestionNumber"];
  v81 = [v44 objectForKeyedSubscript:@"numberOfVisibleSuggestions"];
  v80 = [v44 objectForKeyedSubscript:@"peopleSuggestionsSetting"];
  v78 = [v44 objectForKeyedSubscript:@"transportApp"];
  v67 = [v44 objectForKeyedSubscript:@"sourceApp"];
  v77 = [v44 objectForKeyedSubscript:@"contentShared"];
  v66 = [v44 objectForKeyedSubscript:@"sessionId"];
  v76 = [v44 objectForKeyedSubscript:@"userExperienceFlow"];
  v75 = [v44 objectForKeyedSubscript:@"sessionLatency"];
  v74 = [v44 objectForKeyedSubscript:@"modelTimeout"];
  v55 = [v44 objectForKeyedSubscript:@"suggestionPath"];
  v65 = [v44 objectForKeyedSubscript:@"suggestionPathDebug"];
  v64 = [v44 objectForKeyedSubscript:@"trialDeploymentId"];
  v56 = [v44 objectForKeyedSubscript:@"trialExperimentId"];
  v63 = [v44 objectForKeyedSubscript:@"trialTreatmentId"];
  v57 = [v44 objectForKeyedSubscript:@"isPhotos"];
  v58 = [v44 objectForKeyedSubscript:@"PSRActive"];
  v59 = [v44 objectForKeyedSubscript:@"sessionDelayInMilliseconds"];
  v60 = [v44 objectForKeyedSubscript:@"datestamp"];
  v70 = [v69 initWithIndexSelected:v91 engagedSuggestionProxyReason:v90 engagedSuggestionProxy:v89 engagedSuggestionProxyDebug:v88 airdropShown:v85 airdropEngaged:v82 sharePlayAvailable:v87 sharePlayEngaged:v86 appSharingIntent:v84 engagementType:v79 suggestionAvailable:v83 suggestionNumber:v68 numberOfVisibleSuggestions:v81 peopleSuggestionsSetting:v80 transportApp:v78 sourceApp:v67 contentShared:v77 sessionId:v66 userExperienceFlow:v76 sessionLatency:v75 modelTimeout:v74 suggestionPath:v55 suggestionPathDebug:v65 trialDeploymentId:v64 trialExperimentId:v56 trialTreatmentId:v63 isPhotos:v57 PSRActive:v58 sessionDelayInMilliseconds:v59 datestamp:v60];

  v61 = *MEMORY[0x1E69E9840];

  return v70;
}

- (void)_recordFeedbackToInteractionStoreWithFeedback:(id)a3 mechanism:(int64_t)a4
{
  v106 = *MEMORY[0x1E69E9840];
  v6 = a3;
  connection = self->_connection;
  if (!connection)
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = objc_alloc(MEMORY[0x1E696B0B8]);
    v9 = [v8 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    v10 = self->_connection;
    self->_connection = v9;

    _CDInteractionNSXPCInterface();
    v12 = v11 = v6;
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v12];

    v6 = v11;
    [(NSXPCConnection *)self->_connection resume];
    os_unfair_lock_unlock(&self->_lock);
    connection = self->_connection;
  }

  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_488];
  v14 = objc_opt_new();
  appBundleIdToShareExtensionMapping = self->_appBundleIdToShareExtensionMapping;
  v16 = [v6 action];
  v17 = [v16 transportBundleID];
  v18 = [(NSDictionary *)appBundleIdToShareExtensionMapping objectForKey:v17];
  v19 = [v18 firstObject];

  if (!v19)
  {
    v20 = [v6 action];
    v19 = [v20 transportBundleID];
  }

  v84 = v13;
  v21 = [v6 action];
  v22 = [v21 suggestion];
  v23 = [v22 groupName];
  [v14 setGroupName:v23];

  v82 = v19;
  [v14 setTargetBundleId:v19];
  v24 = [v6 context];
  v25 = [v24 bundleID];
  [v14 setBundleId:v25];

  [v14 setMechanism:a4];
  v26 = [v6 action];
  v27 = [v26 suggestion];
  v28 = [v27 derivedIntentIdentifier];
  [v14 setDerivedIntentIdentifier:v28];

  v29 = [v6 action];
  v30 = [v29 suggestion];
  v31 = [v30 image];
  v32 = [v31 _uri];
  v83 = v14;
  if (v32)
  {
    [v14 setContentURL:v32];
  }

  else
  {
    v33 = MEMORY[0x1E695DFF8];
    obja = [v6 action];
    v34 = [obja suggestion];
    v35 = [v34 image];
    v36 = [v35 _identifier];
    v37 = [v33 URLWithString:v36];
    [v14 setContentURL:v37];
  }

  v38 = objc_opt_new();
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __72___PSSuggester__recordFeedbackToInteractionStoreWithFeedback_mechanism___block_invoke_490;
  v100[3] = &unk_1E7C25490;
  v81 = v38;
  v101 = v81;
  v39 = MEMORY[0x1B8C8C060](v100);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v40 = [v6 context];
  v41 = [v40 attachments];

  obj = v41;
  v42 = [v41 countByEnumeratingWithState:&v96 objects:v105 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v97;
    v45 = "PeopleSuggester";
    do
    {
      v46 = 0;
      v85 = v43;
      do
      {
        if (*v97 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v96 + 1) + 8 * v46);
        (v39)[2](v39, v47, 0, 0);
        if (_os_feature_enabled_impl())
        {
          v48 = v45;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v49 = [v47 photoSceneDescriptors];
          v50 = [v49 countByEnumeratingWithState:&v92 objects:v104 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v93;
            do
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v93 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                (v39)[2](v39, v47, *(*(&v92 + 1) + 8 * i), 0);
              }

              v51 = [v49 countByEnumeratingWithState:&v92 objects:v104 count:16];
            }

            while (v51);
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v54 = [v47 peopleInPhoto];
          v55 = [v54 countByEnumeratingWithState:&v88 objects:v103 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v89;
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v89 != v57)
                {
                  objc_enumerationMutation(v54);
                }

                (v39)[2](v39, v47, 0, *(*(&v88 + 1) + 8 * j));
              }

              v56 = [v54 countByEnumeratingWithState:&v88 objects:v103 count:16];
            }

            while (v56);
          }

          v45 = v48;
          v43 = v85;
        }

        ++v46;
      }

      while (v46 != v43);
      v43 = [obj countByEnumeratingWithState:&v96 objects:v105 count:16];
    }

    while (v43);
  }

  [v83 setAttachments:v81];
  v59 = [v6 action];
  v60 = [v59 suggestion];
  v61 = [v60 conversationIdentifier];

  if (v61)
  {
    v62 = [v6 action];
    v63 = [v62 suggestion];
    v64 = [v63 conversationIdentifier];
    [v83 setDomainIdentifier:v64];

    v65 = v84;
  }

  else
  {
    v66 = [v83 derivedIntentIdentifier];
    v67 = [v66 stringByReplacingOccurrencesOfString:@"conversationIdentifier" withString:&stru_1F2D6CE98];

    v62 = [v67 substringWithRange:{1, objc_msgSend(v67, "length") - 2}];

    v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", @"conversationIdentifier", v62];
    v69 = [v83 derivedIntentIdentifier];
    LODWORD(v67) = [v68 isEqualToString:v69];

    v65 = v84;
    if (v67)
    {
      v63 = [v62 stringByRemovingPercentEncoding];
      [v83 setDomainIdentifier:v63];
    }

    else
    {
      v63 = [v83 derivedIntentIdentifier];
      v70 = [v63 stringByRemovingPercentEncoding];
      [v83 setDomainIdentifier:v70];
    }
  }

  v71 = [v6 action];
  v72 = [v71 suggestion];
  v73 = [v72 recipients];
  v74 = [v73 _pas_mappedArrayWithTransform:&__block_literal_global_500];
  [v83 setRecipients:v74];

  v75 = [v83 targetBundleId];
  v76 = +[_PSConstants sharePlayBundleId];
  LODWORD(v73) = [v75 isEqualToString:v76];

  if (v73)
  {
    v77 = 2;
  }

  else
  {
    v77 = 1;
  }

  [v83 setDirection:v77];
  v78 = NSUserName();
  [v83 setNsUserName:v78];

  v102 = v83;
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  [v65 recordInteractions:v79 enforceDataLimits:1 enforcePrivacy:1 reply:&__block_literal_global_503];

  v80 = *MEMORY[0x1E69E9840];
}

- (void)provideSuggestLessFeedbackForShareSheetSuggestion:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = getBMPeopleSuggesterSuggestLessFeedbackClass_softClass;
  v22 = getBMPeopleSuggesterSuggestLessFeedbackClass_softClass;
  if (!getBMPeopleSuggesterSuggestLessFeedbackClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getBMPeopleSuggesterSuggestLessFeedbackClass_block_invoke;
    v18[3] = &unk_1E7C23BF0;
    v18[4] = &v19;
    __getBMPeopleSuggesterSuggestLessFeedbackClass_block_invoke(v18);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  v7 = [v5 alloc];
  v8 = [v4 bundleId];
  v9 = [v4 derivedIntentId];
  v10 = [v4 conversationId];
  v11 = [v4 handle];
  v12 = [v4 contactId];
  v13 = [v7 initWithIdentifier:@"shareSheetSuggestLessFeedback" bundleId:v8 derivedIdentifier:v9 conversationIdentifier:v10 handle:v11 contactIdentifier:v12 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];

  v14 = BiomeLibrary();
  v15 = [v14 PeopleSuggester];
  v16 = [v15 SuggestLessFeedback];

  v17 = [v16 source];
  [v17 sendEvent:v13];

  [(_PSSuggester *)self deleteInteractionsMatchingSuggestLessFeedback:v4];
  [(_PSSuggester *)self deleteUIInteractionsMatchingSuggestLessFeedback:v4];
}

- (id)buildFilteringPredicateMatchingSuggestLessFeedback:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 derivedIntentId];
  if (v5)
  {
LABEL_2:

    goto LABEL_3;
  }

  v16 = [v3 conversationId];

  if (v16)
  {
    v17 = MEMORY[0x1E696AE18];
    v18 = [v3 conversationId];
    v5 = [v17 predicateWithFormat:@"domainIdentifier == %@", v18];

    if (v5)
    {
      [v4 addObject:v5];
    }

    goto LABEL_2;
  }

LABEL_3:
  v6 = [v3 derivedIntentId];

  if (v6)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = [v3 derivedIntentId];
    v9 = [v7 predicateWithFormat:@"derivedIntentIdentifier == %@", v8];

    if (v9)
    {
      [v4 addObject:v9];
    }
  }

  if (![v4 count])
  {
    v10 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester buildFilteringPredicateMatchingSuggestLessFeedback:];
    }

    v11 = [v3 handle];

    v12 = MEMORY[0x1E696AE18];
    if (v11)
    {
      v13 = [v3 handle];
      v27[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v15 = [v12 predicateWithFormat:@"ANY recipients.identifier IN %@", v14];

      if (v15)
      {
        [v4 addObject:v15];
      }
    }

    else
    {
      v19 = [MEMORY[0x1E696AE18] predicateWithValue:0];
      [v4 addObject:v19];

      v15 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "SuggestLess: Feedback handle is nil. Falling back to NO predicate", buf, 2u);
      }
    }
  }

  v20 = MEMORY[0x1E696AE18];
  v21 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2D8B4F0, &unk_1F2D8B508, 0}];
  v22 = [v20 predicateWithFormat:@"direction IN %@", v21];

  if (v22)
  {
    [v4 addObject:v22];
  }

  v23 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)deleteInteractionsMatchingSuggestLessFeedback:(id)a3
{
  v4 = a3;
  v5 = [(_PSSuggester *)self buildFilteringPredicateMatchingSuggestLessFeedback:v4];
  connection = self->_connection;
  if (connection)
  {
    v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_528];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62___PSSuggester_deleteInteractionsMatchingSuggestLessFeedback___block_invoke_529;
    v16[3] = &unk_1E7C254D8;
    v17 = v4;
    [v7 deleteInteractionsMatchingPredicate:v5 sortDescriptors:0 limit:0 reply:v16];
  }

  v8 = [(_PSSuggester *)self configuration];
  v9 = [v8 suggestionModel];

  if (v9)
  {
    v10 = [(_PSSuggester *)self configuration];
    v11 = [v10 suggestionModel];
    [v11 setMessageInteractionCache:0];

    v12 = [(_PSSuggester *)self configuration];
    v13 = [v12 suggestionModel];
    [v13 setShareInteractionCache:0];

    v14 = [(_PSSuggester *)self configuration];
    v15 = [v14 suggestionModel];
    [v15 populateCaches];
  }
}

- (void)deleteUIInteractionsMatchingSuggestLessFeedback:(id)a3
{
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 MLSE];
  v6 = [v5 ShareSheet];
  v7 = [v6 ConversationUserInteraction];

  v8 = [v7 pruner];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64___PSSuggester_deleteUIInteractionsMatchingSuggestLessFeedback___block_invoke;
  v10[3] = &unk_1E7C25500;
  v11 = v3;
  v9 = v3;
  [v8 deleteWithPolicy:@"suggest-less-feedback" eventsPassingTest:v10];
}

- (void)provideFeedbackForMessagesZkwSuggestions:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)a3
{
  v4 = a3;
  v5 = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_537];
    [v7 provideFeedbackForContactsAutocompleteSuggestions:v4];
  }

  else
  {
    v7 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester provideFeedbackForContactsAutocompleteSuggestions:];
    }
  }
}

- (void)writeFeedbackForContactsAutocompleteSuggestions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_feedbackQueue)
  {
    v6 = [v4 feedbackType];
    v7 = +[_PSLogging feedbackChannel];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6 > 2)
    {
      switch(v6)
      {
        case 3:
          if (v8)
          {
            [_PSSuggester writeFeedbackForContactsAutocompleteSuggestions:];
          }

          goto LABEL_26;
        case 4:
          if (v8)
          {
            [_PSSuggester writeFeedbackForContactsAutocompleteSuggestions:];
          }

          goto LABEL_26;
        case 5:
          if (v8)
          {
            [_PSSuggester writeFeedbackForContactsAutocompleteSuggestions:];
          }

          goto LABEL_26;
      }
    }

    else
    {
      switch(v6)
      {
        case 0:
          if (v8)
          {
            [_PSSuggester writeFeedbackForContactsAutocompleteSuggestions:];
          }

          goto LABEL_26;
        case 1:
          if (v8)
          {
            [_PSSuggester writeFeedbackForContactsAutocompleteSuggestions:];
          }

          goto LABEL_26;
        case 2:
          if (v8)
          {
            [_PSSuggester writeFeedbackForContactsAutocompleteSuggestions:];
          }

LABEL_26:

          feedbackQueue = self->_feedbackQueue;
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __64___PSSuggester_writeFeedbackForContactsAutocompleteSuggestions___block_invoke;
          v11[3] = &unk_1E7C25528;
          v11[4] = self;
          v12 = v5;
          dispatch_async(feedbackQueue, v11);

          goto LABEL_27;
      }
    }

    if (v8)
    {
      [_PSSuggester writeFeedbackForContactsAutocompleteSuggestions:];
    }

    goto LABEL_26;
  }

  v9 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_PSSuggester writeFeedbackForContactsAutocompleteSuggestions:];
  }

LABEL_27:
}

- (id)shareInformationForPhotoId:(id)a3 dateInterval:(id)a4 interactionStoreDB:(id)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v56 = v7;
  if (v7)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    }

    v50 = v10;
    v11 = [MEMORY[0x1E69978F8] storeWithDirectory:v10 readOnly:1];
    v12 = [v8 startDate];
    v51 = v8;
    v13 = [v8 endDate];
    v14 = objc_autoreleasePoolPush();
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F2D8B520, &unk_1F2D8B538, 0}];
    objc_autoreleasePoolPop(v14);
    v16 = objc_autoreleasePoolPush();
    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F2D8B550, 0}];
    objc_autoreleasePoolPop(v16);
    v49 = v11;
    LOBYTE(v48) = 0;
    v18 = [_PSInteractionStoreUtils interactionsFromStore:v11 startDate:v12 tillDate:v13 withMechanisms:v15 withAccount:0 withBundleIds:0 withTargetBundleIds:0 withDirections:v17 singleRecipient:v48 fetchLimit:10000];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v18;
    v54 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v54)
    {
      v55 = 0;
      v53 = *v70;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v70 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [*(*(&v69 + 1) + 8 * i) attachments];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v65 objects:v81 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v66;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v66 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [*(*(&v65 + 1) + 8 * j) photoLocalIdentifier];
                v27 = v26;
                if (v26)
                {
                  v28 = [v26 rangeOfString:@"/"];
                  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if ([v27 isEqualToString:v56])
                    {
                      goto LABEL_22;
                    }
                  }

                  else
                  {
                    v29 = [v27 substringToIndex:v28];
                    v30 = [v29 isEqualToString:v56];

                    if (v30)
                    {
LABEL_22:
                      ++v55;

                      goto LABEL_23;
                    }
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v65 objects:v81 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_23:
        }

        v54 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v54);
    }

    else
    {
      v55 = 0;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v33 = obj;
    v34 = [v33 countByEnumeratingWithState:&v61 objects:v80 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v62;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v62 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = [*(*(&v61 + 1) + 8 * k) attachments];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v40 = [v39 countByEnumeratingWithState:&v57 objects:v79 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v58;
            do
            {
              for (m = 0; m != v41; ++m)
              {
                if (*v58 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = [*(*(&v57 + 1) + 8 * m) photoLocalIdentifier];
                if (v44)
                {
                  ++v36;
                }
              }

              v41 = [v39 countByEnumeratingWithState:&v57 objects:v79 count:16];
            }

            while (v41);
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v61 objects:v80 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
    }

    v45 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v74 = v56;
      v75 = 1024;
      v76 = v55;
      v77 = 2048;
      v78 = v55 / v36;
      _os_log_debug_impl(&dword_1B5ED1000, v45, OS_LOG_TYPE_DEBUG, "Number of interactions for photoId: %@: %d (Normalized: %lf)", buf, 0x1Cu);
    }

    v32 = [[_PSPhotosShareInformation alloc] initWithInteractionCount:v55 totalInteractionCount:v36];
    v10 = v50;
    v8 = v51;
    v31 = v49;
  }

  else
  {
    v31 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester(PhotosShareCount) shareInformationForPhotoId:v31 dateInterval:? interactionStoreDB:?];
    }

    v32 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)interactionCountForHandle:(id)a3 fetchLimit:(unint64_t)a4 interactionStoreDB:(id)a5
{
  v126[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    }

    v126[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:1];
    v11 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:v10];

    v12 = MEMORY[0x1E695DFD8];
    v110 = v11;
    v13 = [v11 allValues];
    v14 = [v12 setWithArray:v13];
    v15 = [v14 mutableCopy];

    v16 = objc_opt_new();
    v111 = v9;
    v17 = [MEMORY[0x1E69978F8] storeWithDirectory:v9 readOnly:1];
    v18 = [v15 allObjects];
    v19 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:v18 account:0 directions:&unk_1F2D8C2E8 mechanisms:0 bundleIds:0 store:v17 fetchLimit:a4 messageInteractionCache:0];

    [v16 addObjectsFromArray:v19];
    v20 = [v15 allObjects];
    [_PSInteractionStoreUtils interactionsMatchingAnySender:v20 store:v17 fetchLimit:a4 messageInteractionCache:0];
    v22 = v21 = v7;

    [v16 addObjectsFromArray:v22];
    v109 = v15;
    v23 = [v15 allObjects];
    v108 = v17;
    v24 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:v23 account:0 directions:&unk_1F2D8C300 mechanisms:0 bundleIds:0 store:v17 fetchLimit:a4 messageInteractionCache:0];

    v25 = objc_opt_new();
    v26 = objc_opt_new();
    v112 = v22;
    v113 = v16;
    v107 = v26;
    if ([v22 count])
    {
      v115[0] = MEMORY[0x1E69E9820];
      v115[1] = 3221225472;
      v115[2] = __96___PSSuggester_InteractionInformation__interactionCountForHandle_fetchLimit_interactionStoreDB___block_invoke;
      v115[3] = &unk_1E7C25A00;
      v116 = v21;
      v27 = v26;
      v117 = v27;
      v28 = [v16 _pas_filteredArrayWithTest:v115];
      v29 = [v28 firstObject];
      v30 = [v29 startDate];

      v7 = v21;
      if (v30)
      {
        v31 = [(_PSSuggester *)self _dateFormatter];
        v32 = [v29 startDate];
        v33 = [v31 stringFromDate:v32];
        [v25 setObject:v33 forKeyedSubscript:@"recentIncomingStartDate"];
      }

      v34 = [v29 endDate];

      if (v34)
      {
        v35 = [(_PSSuggester *)self _dateFormatter];
        v36 = [v29 endDate];
        v37 = [v35 stringFromDate:v36];
        [v25 setObject:v37 forKeyedSubscript:@"recentIncomingEndDate"];
      }

      v38 = [v29 bundleId];
      [v25 setObject:v38 forKeyedSubscript:@"recentIncomingBundleId"];

      v39 = [v29 domainIdentifier];
      [v25 setObject:v39 forKeyedSubscript:@"recentIncomingDomainId"];

      v40 = [v29 account];
      [v25 setObject:v40 forKeyedSubscript:@"recentIncomingAccount"];

      v41 = [v29 recipients];
      v42 = [v41 count];

      if (v42)
      {
        v43 = [v29 recipients];
        v44 = [v43 firstObject];

        v45 = [v44 identifier];
        [v25 setObject:v45 forKeyedSubscript:@"recentIncomingRecipientContactId"];

        v46 = [v44 displayName];

        if (v46)
        {
          v47 = [v44 displayName];
          [v25 setObject:v47 forKeyedSubscript:@"recentIncomingRecipientDisplayName"];
        }
      }

      if ([v27 count])
      {
        v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
        v49 = [v48 stringValue];
        [v25 setObject:v49 forKeyedSubscript:@"incomingCalls"];

        v50 = [v27 firstObject];
        v51 = [v50 startDate];
        [v25 setObject:v51 forKeyedSubscript:@"recentIncomingCallStartDate"];

        v52 = [v50 endDate];
        [v25 setObject:v52 forKeyedSubscript:@"recentIncomingCallEndDate"];

        v53 = [v50 bundleId];
        [v25 setObject:v53 forKeyedSubscript:@"recentIncomingCallBundleId"];

        v54 = [v50 domainIdentifier];
        [v25 setObject:v54 forKeyedSubscript:@"recentIncomingCallDomainId"];

        v55 = [v50 account];
        [v25 setObject:v55 forKeyedSubscript:@"recentIncomingCallAccount"];

        v56 = [v29 recipients];
        v57 = [v56 count];

        if (v57)
        {
          v58 = [v50 recipients];
          v59 = [v58 firstObject];

          v60 = [v59 identifier];
          [v25 setObject:v60 forKeyedSubscript:@"recentIncomingCallRecipientContactId"];

          v61 = [v59 displayName];
          [v25 setObject:v61 forKeyedSubscript:@"recentIncomingCallRecipientDisplayName"];
        }
      }

      v16 = v113;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
      v7 = v21;
    }

    if ([v24 count])
    {
      v106 = v28;
      v64 = [v24 _pas_filteredArrayWithTest:&__block_literal_global_19];
      v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v64, "count")}];
      v66 = [v65 stringValue];
      [v25 setObject:v66 forKeyedSubscript:@"outgoingCalls"];

      v67 = [v24 firstObject];
      v68 = [v67 startDate];
      if (v68)
      {
        v69 = [(_PSSuggester *)self _dateFormatter];
        v70 = [v69 stringFromDate:v68];
        [v25 setObject:v70 forKeyedSubscript:@"recentOutgoingStartDate"];
      }

      v71 = [v67 endDate];
      if (v71)
      {
        v72 = [(_PSSuggester *)self _dateFormatter];
        v73 = [v72 stringFromDate:v71];
        [v25 setObject:v73 forKeyedSubscript:@"recentOutgoingEndDate"];
      }

      v74 = [v67 bundleId];
      [v25 setObject:v74 forKeyedSubscript:@"recentOutgoingBundleId"];

      v75 = [v67 domainIdentifier];
      [v25 setObject:v75 forKeyedSubscript:@"recentOutgoingDomainId"];

      v76 = [v67 account];
      [v25 setObject:v76 forKeyedSubscript:@"recentOutgoingAccount"];

      v77 = [v67 recipients];
      v78 = [v77 count];

      if (v78)
      {
        v79 = [v67 recipients];
        v80 = [v79 firstObject];

        v81 = [v80 identifier];
        [v25 setObject:v81 forKeyedSubscript:@"recentOutgoingRecipientContactId"];

        v82 = [v80 displayName];

        if (v82)
        {
          v83 = [v80 displayName];
          [v25 setObject:v83 forKeyedSubscript:@"recentOutgoingRecipientDisplayName"];
        }
      }

      if ([v64 count])
      {
        v84 = [v64 firstObject];
        v85 = [v84 startDate];
        [v25 setObject:v85 forKeyedSubscript:@"recentOutgoingCallStartDate"];

        v86 = [v84 endDate];
        [v25 setObject:v86 forKeyedSubscript:@"recentOutgoingCallEndDate"];

        v87 = [v84 bundleId];
        [v25 setObject:v87 forKeyedSubscript:@"recentOutgoingCallBundleId"];

        v88 = [v84 domainIdentifier];
        [v25 setObject:v88 forKeyedSubscript:@"recentOutgoingCallDomainId"];

        v89 = [v84 account];
        [v25 setObject:v89 forKeyedSubscript:@"recentOutgoingCallAccount"];

        v90 = [v84 recipients];
        v91 = [v90 count];

        if (v91)
        {
          v92 = [v84 recipients];
          v93 = [v92 firstObject];

          v94 = [v93 identifier];
          [v25 setObject:v94 forKeyedSubscript:@"recentOutgoingCallRecipientContactId"];

          v95 = [v93 displayName];
          [v25 setObject:v95 forKeyedSubscript:@"recentOutgoingCallRecipientDisplayName"];
        }
      }

      v16 = v113;
      v28 = v106;
    }

    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    v97 = [v96 stringValue];
    [v25 setObject:v97 forKeyedSubscript:@"incoming"];

    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
    v99 = [v98 stringValue];
    [v25 setObject:v99 forKeyedSubscript:@"outgoing"];

    v100 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      v103 = [v28 count];
      v104 = [v112 count];
      v105 = [v24 count];
      *buf = 138413058;
      v119 = v7;
      v120 = 2048;
      v121 = v103;
      v122 = 2048;
      v123 = v104;
      v124 = 2048;
      v125 = v105;
      _os_log_debug_impl(&dword_1B5ED1000, v100, OS_LOG_TYPE_DEBUG, "_PSSuggester: For handle %@, interaction count: incoming %tu (%tu), outgoing %tu", buf, 0x2Au);
    }

    v63 = [[_PSInteractionInformation alloc] initWithHandle:v7 interactionInformation:v25];
    v62 = v110;
    v9 = v111;
  }

  else
  {
    v62 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester(InteractionInformation) interactionCountForHandle:v62 fetchLimit:? interactionStoreDB:?];
    }

    v63 = 0;
  }

  v101 = *MEMORY[0x1E69E9840];

  return v63;
}

- (id)_dateFormatter
{
  if (_dateFormatter_onceToken != -1)
  {
    [_PSSuggester(InteractionInformation) _dateFormatter];
  }

  v3 = _dateFormatter_dateFormatter;

  return v3;
}

- (BOOL)interactionAvailableForHandle:(id)a3 interactionStoreDB:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    }

    v8 = [MEMORY[0x1E69978F8] storeWithDirectory:v7 readOnly:1];
    v19[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v10 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:v9 directions:&unk_1F2D8C528 mechanisms:&unk_1F2D8C510 interactionDuration:v8 store:10 fetchLimit:0.0];

    if ([v10 count])
    {
      v11 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [_PSSuggester(InteractionAvailable) interactionAvailableForHandle:v5 interactionStoreDB:v10];
      }
    }

    else
    {
      v18 = v5;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v11 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:v13 directions:&unk_1F2D8C540 mechanisms:&unk_1F2D8C510 interactionDuration:v8 store:10 fetchLimit:30.0];

      v14 = [v11 count];
      v12 = v14 != 0;
      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      v15 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_PSSuggester(InteractionAvailable) interactionAvailableForHandle:v5 interactionStoreDB:v11];
      }
    }

    v12 = 1;
    goto LABEL_15;
  }

  v8 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_PSSuggester(InteractionInformation) interactionCountForHandle:v8 fetchLimit:? interactionStoreDB:?];
  }

  v12 = 0;
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)candidatesForShareSheetRanking
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)suggestInteractionsFromContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rankedGlobalSuggestionsFromContext:contactsOnly:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rankedSiriNLContactSuggestionsFromContext:maxSuggestions:interactionId:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rankedZKWSuggestionsFromContext:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 bundleID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)rankedZKWSuggestionsFromContext:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rankedAutocompleteSuggestionsFromContext:candidates:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rankedFamilySuggestions
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)familyRecommendationSuggestionsWithPredictionContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)photosRelationshipSuggestionsWithPredictionContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)photosContactInferencesSuggestionsWithPredictionContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)relativeAppUsageProbabilitiesForCandidateBundleIds:daysAgo:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)provideFeedbackForSuggestions:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)provideFeedbackForSuggestions:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)donateCA2Biome:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)buildFilteringPredicateMatchingSuggestLessFeedback:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)provideFeedbackForContactsAutocompleteSuggestions:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFeedbackForContactsAutocompleteSuggestions:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end