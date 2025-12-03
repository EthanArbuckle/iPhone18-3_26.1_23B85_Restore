@interface _PSSuggester
+ (id)suggesterWithDaemon;
+ (id)suggesterWithDaemonUsingMaxSuggestionCount:(int64_t)count;
+ (void)initializePSSuggesterCacheWithMaxSuggestionCount:(id)count;
- (BOOL)interactionAvailableForHandle:(id)handle interactionStoreDB:(id)b;
- (BOOL)isTransportBundleIDSupported:(id)supported;
- (BOOL)reportShareSheetTimeoutWithError:(id *)error;
- (_PSSuggester)init;
- (_PSSuggester)initWithConfiguration:(id)configuration feedbackRecording:(BOOL)recording;
- (_PSSuggester)initWithDaemonUsingConfiguration:(id)configuration;
- (id)_dateFormatter;
- (id)_getUserDaemonXPCConnection;
- (id)_stringFromValue:(id)value;
- (id)appExtensionSuggestionsFromContext:(id)context;
- (id)autocompleteSearchResultsWithPredictionContext:(id)context;
- (id)buildFilteringPredicateMatchingSuggestLessFeedback:(id)feedback;
- (id)candidatesForShareSheetRanking;
- (id)candidatesForShareSheetRankingCompute;
- (id)contactStore;
- (id)convertCoreAnalyticsEvent2BiomeEvent:(id)event;
- (id)familyRecommendationSuggestionsWithPredictionContext:(id)context;
- (id)generatePSRTelemetry:(id)telemetry;
- (id)getCachedSuggestionsFetchingIfNeeded:(BOOL)needed;
- (id)hourOfDayProbabilitiesToInteractWithContact:(id)contact;
- (id)hourOfDayProbabilitiesToInteractWithContacts:(id)contacts;
- (id)interactionCountForHandle:(id)handle fetchLimit:(unint64_t)limit interactionStoreDB:(id)b;
- (id)photosContactInferencesSuggestionsWithPredictionContext:(id)context;
- (id)photosRelationshipSuggestionsWithPredictionContext:(id)context;
- (id)rankedAutocompleteSuggestionsFromContext:(id)context candidates:(id)candidates;
- (id)rankedFamilySuggestions;
- (id)rankedNameSuggestionsFromContext:(id)context name:(id)name;
- (id)rankedSiriNLContactSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions interactionId:(id)id;
- (id)rankedZKWSuggestionsFromContext:(id)context;
- (id)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)ids daysAgo:(int64_t)ago;
- (id)shareExtensionSuggestionsFromContext:(id)context;
- (id)shareInformationForPhotoId:(id)id dateInterval:(id)interval interactionStoreDB:(id)b;
- (id)shareSheetInteractionsFromContext:(id)context;
- (id)shareSheetInteractionsFromContext:(id)context maximumNumberOfSuggestions:(int64_t)suggestions;
- (id)suggestInteractionsFromContext:(id)context;
- (void)_recordFeedbackToInteractionStoreWithFeedback:(id)feedback mechanism:(int64_t)mechanism;
- (void)asyncShareExtensionSuggestionsFromContext:(id)context completionHandler:(id)handler;
- (void)asyncShareExtensionSuggestionsFromContext:(id)context timeout:(double)timeout completionHandler:(id)handler;
- (void)asyncSuggestInteractionsFromContext:(id)context completionHandler:(id)handler;
- (void)asyncSuggestInteractionsFromContext:(id)context timeout:(double)timeout completionHandler:(id)handler;
- (void)candidatesForShareSheetRanking;
- (void)dealloc;
- (void)deleteInteractionsMatchingSuggestLessFeedback:(id)feedback;
- (void)deleteUIInteractionsMatchingSuggestLessFeedback:(id)feedback;
- (void)donateCA2Biome:(id)biome;
- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)suggestions;
- (void)provideFeedbackForMessagesZkwSuggestions:(id)suggestions;
- (void)provideFeedbackForSuggestions:(id)suggestions;
- (void)provideSuggestLessFeedbackForShareSheetSuggestion:(id)suggestion;
- (void)rankedFamilySuggestions;
- (void)showNotificationToFileARadarForUserStudyParticipants;
- (void)writeFeedbackForContactsAutocompleteSuggestions:(id)suggestions;
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
  v2 = [self alloc];
  v3 = +[_PSSuggesterConfiguration defaultConfiguration];
  v4 = [v2 initWithDaemonUsingConfiguration:v3];

  return v4;
}

+ (id)suggesterWithDaemonUsingMaxSuggestionCount:(int64_t)count
{
  v5 = +[_PSSuggesterConfiguration defaultConfiguration];
  [v5 setMaximumNumberOfSuggestions:count];
  v6 = [[self alloc] initWithDaemonUsingConfiguration:v5];

  return v6;
}

+ (void)initializePSSuggesterCacheWithMaxSuggestionCount:(id)count
{
  v3 = [_PSSuggesterCache defaultServiceWithMaxSuggestionCount:count];
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Initialized _PSSuggesterCache", v5, 2u);
  }
}

- (_PSSuggester)initWithDaemonUsingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = _PSSuggester;
  v6 = [(_PSSuggester *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
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

- (_PSSuggester)initWithConfiguration:(id)configuration feedbackRecording:(BOOL)recording
{
  recordingCopy = recording;
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = _PSSuggester;
  v8 = [(_PSSuggester *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, configuration);
    v9->_lock._os_unfair_lock_opaque = 0;
    if (recordingCopy)
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

- (id)shareSheetInteractionsFromContext:(id)context
{
  contextCopy = context;
  configuration = [(_PSSuggester *)self configuration];
  v6 = -[_PSSuggester shareSheetInteractionsFromContext:maximumNumberOfSuggestions:](self, "shareSheetInteractionsFromContext:maximumNumberOfSuggestions:", contextCopy, [configuration maximumNumberOfSuggestions]);

  return v6;
}

- (id)shareSheetInteractionsFromContext:(id)context maximumNumberOfSuggestions:(int64_t)suggestions
{
  contextCopy = context;
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

  configuration = [(_PSSuggester *)self configuration];
  suggestionModel = [configuration suggestionModel];
  v11 = [suggestionModel predictWithPredictionContext:contextCopy maxSuggestions:suggestions];

  v12 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v12))
  {
    LOWORD(v14.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleSuggestionsTotalTime", &unk_1B5FD970D, &v14, 2u);
  }

  return v11;
}

- (BOOL)reportShareSheetTimeoutWithError:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v4 = currentConnection;
  if (currentConnection)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(currentConnection, "processIdentifier")}];
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

- (id)appExtensionSuggestionsFromContext:(id)context
{
  contextCopy = context;
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

  configuration = [(_PSSuggester *)self configuration];
  suggestionModel = [configuration suggestionModel];
  v9 = [suggestionModel appExtensionSuggestionsFromContext:contextCopy];

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

  configuration = [(_PSSuggester *)self configuration];
  suggestionModel = [configuration suggestionModel];
  candidatesForShareSheetRanking = [suggestionModel candidatesForShareSheetRanking];

  v8 = [candidatesForShareSheetRanking _pas_mappedSetWithTransform:&__block_literal_global_12];
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
    allObjects = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_69];
    if ([allObjects count])
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

  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v8 = _getUserDaemonXPCConnection;
  if (_getUserDaemonXPCConnection)
  {
    candidatesForShareSheetRankingCompute = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_73];
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
    [candidatesForShareSheetRankingCompute candidatesForShareSheetRanking:v17];
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(v19 + 5);
      *v24 = 138477827;
      v25 = v13;
      _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "Fetched candidates %{private}@", v24, 0xCu);
    }

    allObjects = *(v19 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester candidatesForShareSheetRanking];
    }

    candidatesForShareSheetRankingCompute = [(_PSSuggester *)self candidatesForShareSheetRankingCompute];
    allObjects = [candidatesForShareSheetRankingCompute allObjects];
  }

LABEL_20:
  v15 = *MEMORY[0x1E69E9840];

  return allObjects;
}

- (id)suggestInteractionsFromContext:(id)context
{
  v41 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [AeroMLTracerSession alloc];
  sessionID = [contextCopy sessionID];
  v7 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v8 = [(AeroMLTracerSession *)v5 initWithTraceId:sessionID projectName:v7];

  v9 = [(AeroMLTracerSession *)v8 createRootSpanWithName:@"syncsuggestInteractionsFromContext_End2End"];
  date = [MEMORY[0x1E695DF00] date];
  [contextCopy setQueryStartDate:date];

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
    locationUUIDs = [contextCopy locationUUIDs];

    if (!locationUUIDs)
    {
      userContext = [MEMORY[0x1E6997A60] userContext];
      keyPathForNearbyLOIIdentifiers = [MEMORY[0x1E6997A68] keyPathForNearbyLOIIdentifiers];
      v17 = [userContext objectForKeyedSubscript:keyPathForNearbyLOIIdentifiers];
      [contextCopy setLocationUUIDs:v17];
    }

    v18 = +[_PSLogging coreBehaviorChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      locationUUIDs2 = [contextCopy locationUUIDs];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = locationUUIDs2;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "Prediction Context - LocationUUIDs: %@", &buf, 0xCu);
    }

    _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
    v12 = _getUserDaemonXPCConnection;
    if (_getUserDaemonXPCConnection)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__4;
      v39 = __Block_byref_object_dispose__4;
      v40 = 0;
      v21 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_86];
      v22 = +[_PSLogging coreBehaviorChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_DEFAULT, "_PSSuggester: calling suggestInteractionsFromContext", v35, 2u);
      }

      v23 = MEMORY[0x1E696AD98];
      configuration = [(_PSSuggester *)self configuration];
      v25 = [v23 numberWithInteger:{objc_msgSend(configuration, "maximumNumberOfSuggestions")}];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __47___PSSuggester_suggestInteractionsFromContext___block_invoke_87;
      v32 = &unk_1E7C25218;
      p_buf = &buf;
      v33 = contextCopy;
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

      v13 = [(_PSSuggester *)self shareSheetInteractionsFromContext:contextCopy];
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)asyncSuggestInteractionsFromContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70___PSSuggester_asyncSuggestInteractionsFromContext_completionHandler___block_invoke;
  v10[3] = &unk_1E7C25240;
  v11 = contextCopy;
  v12 = handlerCopy;
  v8 = contextCopy;
  v9 = handlerCopy;
  [(_PSSuggester *)self asyncSuggestInteractionsFromContext:v8 timeout:v10 completionHandler:978307200.0];
}

- (id)getCachedSuggestionsFetchingIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v23 = *MEMORY[0x1E69E9840];
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Getting cached suggestions", buf, 2u);
  }

  v5 = +[_PSSuggesterCache defaultService];
  v6 = v5;
  if (neededCopy)
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
    v20 = neededCopy;
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
    LODWORD(v18) = neededCopy;
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

- (void)asyncSuggestInteractionsFromContext:(id)context timeout:(double)timeout completionHandler:(id)handler
{
  v104[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  date = [MEMORY[0x1E695DF00] date];
  [contextCopy setQueryStartDate:date];

  v10 = [AeroMLTracerSession alloc];
  sessionID = [contextCopy sessionID];
  v12 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v13 = [(AeroMLTracerSession *)v10 initWithTraceId:sessionID projectName:v12];

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
    _getUserDaemonXPCConnection = [v15 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v16];

    v101 = @"SharingPeopleSuggestionsDisabled";
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", 1];
    v102 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    [v62 logErrorEventWithName:@"PSShareSheetPeopleSuggestionsDisabled" details:@"Share Sheet People Suggestions disabled in Settings Switch attributes:{return empty suggestion list", v18}];

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0], 0, _getUserDaemonXPCConnection);
  }

  else
  {
    locationUUIDs = [contextCopy locationUUIDs];

    if (!locationUUIDs)
    {
      userContext = [MEMORY[0x1E6997A60] userContext];
      keyPathForNearbyLOIIdentifiers = [MEMORY[0x1E6997A68] keyPathForNearbyLOIIdentifiers];
      v22 = [userContext objectForKeyedSubscript:keyPathForNearbyLOIIdentifiers];
      [contextCopy setLocationUUIDs:v22];
    }

    v23 = +[_PSLogging coreBehaviorChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      locationUUIDs2 = [contextCopy locationUUIDs];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = locationUUIDs2;
      _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_INFO, "Prediction Context - LocationUUIDs: %@", &buf, 0xCu);
    }

    _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
    v25 = +[_PSLogging suggestionSignpost];
    v26 = v25;
    if (_getUserDaemonXPCConnection)
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
      v28 = contextCopy;
      v91 = v28;
      v29 = v62;
      v92 = v29;
      v30 = handlerCopy;
      v93 = v30;
      v57 = MEMORY[0x1B8C8C060](v90);
      v31 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v57];
      v32 = [_getUserDaemonXPCConnection remoteObjectProxyWithErrorHandler:v57];
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
      selfCopy = self;
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
      selfCopy2 = self;
      v68 = v38;
      v69 = v40;
      v44 = v40;
      v45 = v31;
      v46 = v38;
      dispatch_async(peopleSuggestionQueue, block);
      timeoutCopy = timeout + 2.0;
      if (!v34)
      {
        timeoutCopy = timeout;
      }

      v48 = dispatch_time(0, (timeoutCopy * 1000000000.0));
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
      [contextCopy setSuggestionPath:v52];

      [v62 logErrorEventWithName:@"getUserDaemonXPCConnectionFailed" details:@"Unable to get xpc connection for share sheet suggestions" attributes:MEMORY[0x1E695E0F8]];
      v53 = [v62 createSubSpanWithName:@"FallbackToInProcessSuggestion"];
      [v53 start];
      v54 = [(_PSSuggester *)self shareSheetInteractionsFromContext:contextCopy];
      (*(handlerCopy + 2))(handlerCopy, v54, 0, v51);

      [v53 end];
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (id)shareExtensionSuggestionsFromContext:(id)context
{
  contextCopy = context;
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
    [v6 shareExtensionSuggestionsFromContext:contextCopy reply:v9];
    v7 = *(state.opaque[1] + 40);

    _Block_object_dispose(&state, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)asyncShareExtensionSuggestionsFromContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___PSSuggester_asyncShareExtensionSuggestionsFromContext_completionHandler___block_invoke;
  v8[3] = &unk_1E7C25358;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(_PSSuggester *)self asyncShareExtensionSuggestionsFromContext:context timeout:v8 completionHandler:978307200.0];
}

- (void)asyncShareExtensionSuggestionsFromContext:(id)context timeout:(double)timeout completionHandler:(id)handler
{
  v48[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  if (_getUserDaemonXPCConnection)
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
      v42 = MEMORY[0x1B8C8C060](handlerCopy);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_255;
      v36[3] = &unk_1E7C25380;
      v36[4] = self;
      v36[5] = v45;
      v36[6] = v43;
      v36[7] = buf;
      v19 = MEMORY[0x1B8C8C060](v36);
      v20 = dispatch_time(0, (timeout * 1000000000.0));
      appExtensionQueue = self->_appExtensionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84___PSSuggester_asyncShareExtensionSuggestionsFromContext_timeout_completionHandler___block_invoke_256;
      block[3] = &unk_1E7C253A8;
      block[4] = self;
      v22 = contextCopy;
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

    v18 = [(_PSSuggester *)self shareSheetInteractionsFromContext:contextCopy];
    handlerCopy[2](handlerCopy, v18, 0, v17);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)rankedNameSuggestionsFromContext:(id)context name:(id)name
{
  contextCopy = context;
  nameCopy = name;
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
  [v13 rankedNameSuggestionsFromContext:contextCopy name:nameCopy reply:v18];
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

- (id)rankedSiriNLContactSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions interactionId:(id)id
{
  contextCopy = context;
  suggestionsCopy = suggestions;
  idCopy = id;
  v11 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSRankedSiriNLSuggestionsTotalTime", &unk_1B5FD970D, buf, 2u);
  }

  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v13 = _getUserDaemonXPCConnection;
  if (_getUserDaemonXPCConnection)
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v14 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_265];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87___PSSuggester_rankedSiriNLContactSuggestionsFromContext_maxSuggestions_interactionId___block_invoke_266;
    v20[3] = &unk_1E7C243A0;
    v20[4] = buf;
    [v14 rankedSiriNLContactSuggestionsFromContext:contextCopy maxSuggestions:suggestionsCopy interactionId:idCopy reply:v20];
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

- (id)rankedZKWSuggestionsFromContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [contextCopy bundleID];
    seedRecipients = [contextCopy seedRecipients];
    *buf = 138412546;
    *&buf[4] = bundleID;
    *&buf[12] = 2112;
    *&buf[14] = seedRecipients;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "[rankedZKWSuggestionsFromContext] Serving request from bundle %@, seed: %@", buf, 0x16u);
  }

  if ([contextCopy supportsZKWSuggestions])
  {
    _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
    v9 = +[_PSLogging suggestionSignpost];
    v10 = v9;
    if (_getUserDaemonXPCConnection)
    {
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSZkwSuggestionsTotalTime", " enableTelemetry=YES ", buf, 2u);
      }

      v10 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_268];
      configuration = [(_PSSuggester *)self configuration];
      maximumNumberOfSuggestions = [configuration maximumNumberOfSuggestions];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v33 = __Block_byref_object_copy__4;
      v34 = __Block_byref_object_dispose__4;
      v35 = 0;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maximumNumberOfSuggestions];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __48___PSSuggester_rankedZKWSuggestionsFromContext___block_invoke_269;
      v29[3] = &unk_1E7C243A0;
      v29[4] = buf;
      [v10 zkwSuggestionsFromContext:contextCopy maxSuggestions:v13 reply:v29];

      v14 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v14))
      {
        *v30 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSZkwSuggestionsTotalTime", &unk_1B5FD970D, v30, 2u);
      }

      bundleID2 = [contextCopy bundleID];
      v16 = +[_PSConstants mobileFacetimeBundleId];
      if ([bundleID2 isEqualToString:v16])
      {
        v17 = 1;
      }

      else
      {
        bundleID3 = [contextCopy bundleID];
        v20 = +[_PSConstants macFacetimeBundleId];
        v17 = [bundleID3 isEqualToString:v20];
      }

      if (rankedZKWSuggestionsFromContext___pasOnceToken104 != -1)
      {
        [_PSSuggester rankedZKWSuggestionsFromContext:];
      }

      v21 = rankedZKWSuggestionsFromContext___pasExprOnceResult;
      v22 = v21;
      if (v17 && ([v21 isEqualToString:@"pstool"] & 1) == 0)
      {
        bundleID4 = [contextCopy bundleID];
        v24 = [_PSCNAutocompleteFeedback createVendedSuggestionsFeedbackWithBundleIdentifier:bundleID4 suggestions:*(*&buf[8] + 40) isImplicit:1];
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
    _getUserDaemonXPCConnection = +[_PSLogging suggestionSignpost];
    if (os_log_type_enabled(_getUserDaemonXPCConnection, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester rankedZKWSuggestionsFromContext:contextCopy];
    }

    v18 = MEMORY[0x1E695E0F0];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)autocompleteSearchResultsWithPredictionContext:(id)context
{
  contextCopy = context;
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
  v6 = contextCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  [v5 runWithLockAcquired:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)rankedAutocompleteSuggestionsFromContext:(id)context candidates:(id)candidates
{
  contextCopy = context;
  candidatesCopy = candidates;
  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v9 = +[_PSLogging suggestionSignpost];
  v10 = v9;
  if (_getUserDaemonXPCConnection)
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
    v11 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_286];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68___PSSuggester_rankedAutocompleteSuggestionsFromContext_candidates___block_invoke_287;
    v16[3] = &unk_1E7C243A0;
    v16[4] = buf;
    [v11 rankedAutocompleteSuggestionsFromContext:contextCopy candidates:candidatesCopy reply:v16];
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
  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v3 = _getUserDaemonXPCConnection;
  if (_getUserDaemonXPCConnection)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__4;
    v13 = __Block_byref_object_dispose__4;
    v14 = 0;
    v4 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_289];
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

- (id)familyRecommendationSuggestionsWithPredictionContext:(id)context
{
  contextCopy = context;
  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v6 = _getUserDaemonXPCConnection;
  if (_getUserDaemonXPCConnection)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v7 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_292_0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69___PSSuggester_familyRecommendationSuggestionsWithPredictionContext___block_invoke_293;
    v11[3] = &unk_1E7C243A0;
    v11[4] = &v12;
    [v7 familyRecommendedSuggestionsWithPredictionContext:contextCopy reply:v11];
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

- (id)photosRelationshipSuggestionsWithPredictionContext:(id)context
{
  contextCopy = context;
  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v6 = _getUserDaemonXPCConnection;
  if (_getUserDaemonXPCConnection)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v7 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_295];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67___PSSuggester_photosRelationshipSuggestionsWithPredictionContext___block_invoke_296;
    v11[3] = &unk_1E7C243A0;
    v11[4] = &v12;
    [v7 photosRelationshipSuggestionsWithPredictionContext:contextCopy reply:v11];
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

- (id)photosContactInferencesSuggestionsWithPredictionContext:(id)context
{
  contextCopy = context;
  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v6 = _getUserDaemonXPCConnection;
  if (_getUserDaemonXPCConnection)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v7 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_298];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72___PSSuggester_photosContactInferencesSuggestionsWithPredictionContext___block_invoke_299;
    v11[3] = &unk_1E7C243A0;
    v11[4] = &v12;
    [v7 photosContactInferencesSuggestionsWithPredictionContext:contextCopy reply:v11];
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

- (id)hourOfDayProbabilitiesToInteractWithContact:(id)contact
{
  v15[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = [_PSHeuristics alloc];
  v5 = MEMORY[0x1E69978F8];
  defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
  v7 = [v5 storeWithDirectory:defaultDatabaseDirectory readOnly:1];
  v8 = [(_PSHeuristics *)v4 initWithKnowledgeStore:0 interactionStore:v7 contactResolver:0 messageInteractionCache:0];

  if (contactCopy)
  {
    v15[0] = contactCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v10 = [(_PSHeuristics *)v8 hourOfDayProbabilitiesToInteractWithContacts:v9];
    allValues = [v10 allValues];
    firstObject = [allValues firstObject];
  }

  else
  {
    firstObject = MEMORY[0x1E695E0F8];
  }

  v13 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)hourOfDayProbabilitiesToInteractWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v4 = [_PSHeuristics alloc];
  v5 = MEMORY[0x1E69978F8];
  defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
  v7 = [v5 storeWithDirectory:defaultDatabaseDirectory readOnly:1];
  v8 = [(_PSHeuristics *)v4 initWithKnowledgeStore:0 interactionStore:v7 contactResolver:0 messageInteractionCache:0];

  v9 = [(_PSHeuristics *)v8 hourOfDayProbabilitiesToInteractWithContacts:contactsCopy];

  return v9;
}

- (id)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)ids daysAgo:(int64_t)ago
{
  idsCopy = ids;
  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v8 = _getUserDaemonXPCConnection;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  if (_getUserDaemonXPCConnection)
  {
    v9 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_304];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:ago];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75___PSSuggester_relativeAppUsageProbabilitiesForCandidateBundleIds_daysAgo___block_invoke_305;
    v14[3] = &unk_1E7C25420;
    v14[4] = &v15;
    [v9 relativeAppUsageProbabilitiesForCandidateBundleIds:idsCopy daysAgo:v10 reply:v14];

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

- (BOOL)isTransportBundleIDSupported:(id)supported
{
  supportedCopy = supported;
  action = [supportedCopy action];
  transportBundleID = [action transportBundleID];

  if (transportBundleID)
  {
    suggestions = [supportedCopy suggestions];
    firstObject = [suggestions firstObject];

    if (firstObject)
    {
      transportBundleID = [firstObject supportedBundleIDs];
      v8 = [transportBundleID componentsSeparatedByString:{@", "}];

      action2 = [supportedCopy action];
      transportBundleID2 = [action2 transportBundleID];
      LOBYTE(transportBundleID) = [v8 containsObject:transportBundleID2];
    }

    else
    {
      LOBYTE(transportBundleID) = 0;
    }
  }

  return transportBundleID;
}

- (id)generatePSRTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  action = [telemetryCopy action];
  type = [action type];

  v7 = &unk_1F2D8B490;
  if (type)
  {
    v8 = 0;
    v9 = 0;
    v10 = &unk_1F2D8B490;
  }

  else
  {
    if ([telemetryCopy indexOfEngagedSuggestion])
    {
      v9 = 0;
    }

    else
    {
      action2 = [telemetryCopy action];
      transportBundleID = [action2 transportBundleID];
      v9 = [transportBundleID isEqualToString:@"com.apple.UIKit.activity.AirDrop"];
    }

    v13 = +[_PSConstants shareplayBundleIds];
    action3 = [telemetryCopy action];
    transportBundleID2 = [action3 transportBundleID];
    v8 = [v13 containsObject:transportBundleID2];

    action4 = [telemetryCopy action];
    suggestion = [action4 suggestion];
    reasonType = [suggestion reasonType];
    v19 = [reasonType isEqualToString:@"assistant"];

    if (v19)
    {
      v10 = &unk_1F2D8B4A8;
    }

    else
    {
      v10 = &unk_1F2D8B490;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(telemetryCopy, "indexOfEngagedSuggestion")}];
    [dictionary setObject:v20 forKeyedSubscript:@"indexSelected"];

    action5 = [telemetryCopy action];
    suggestion2 = [action5 suggestion];
    reason = [suggestion2 reason];
    [dictionary setObject:reason forKeyedSubscript:@"engagedSuggestionProxyReason"];

    action6 = [telemetryCopy action];
    suggestion3 = [action6 suggestion];
    reasonType2 = [suggestion3 reasonType];
    v27 = [reasonType2 isEqualToString:@"_PSHeuristics"];

    if ((v27 & 1) == 0)
    {
      action7 = [telemetryCopy action];
      suggestion4 = [action7 suggestion];
      reasonType3 = [suggestion4 reasonType];
      v31 = [reasonType3 isEqualToString:@"suggestionsProxiesFromStats"];

      if (v31)
      {
        v7 = &unk_1F2D8B4A8;
      }

      else
      {
        v7 = &unk_1F2D8B4C0;
      }
    }

    [dictionary setObject:v7 forKeyedSubscript:@"engagedSuggestionProxy"];
    action8 = [telemetryCopy action];
    suggestion5 = [action8 suggestion];
    reasonType4 = [suggestion5 reasonType];
    [dictionary setObject:reasonType4 forKeyedSubscript:@"engagedSuggestionProxy_debug"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(telemetryCopy, "wasAirDropShown")}];
  [dictionary setObject:v35 forKeyedSubscript:@"airdropShown"];

  v36 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [dictionary setObject:v36 forKeyedSubscript:@"airdropEngaged"];

  v37 = MEMORY[0x1E696AD98];
  context = [telemetryCopy context];
  v39 = [v37 numberWithBool:{objc_msgSend(context, "isSharePlayAvailable")}];
  [dictionary setObject:v39 forKeyedSubscript:@"sharePlayAvailable"];

  v40 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  [dictionary setObject:v40 forKeyedSubscript:@"sharePlayEngaged"];

  v41 = MEMORY[0x1E696AD98];
  context2 = [telemetryCopy context];
  supportedBundleIds = [context2 supportedBundleIds];
  action9 = [telemetryCopy action];
  transportBundleID3 = [action9 transportBundleID];
  v46 = [v41 numberWithBool:{objc_msgSend(supportedBundleIds, "containsObject:", transportBundleID3)}];
  [dictionary setObject:v46 forKeyedSubscript:@"appSharingIntent"];

  v47 = MEMORY[0x1E696AD98];
  action10 = [telemetryCopy action];
  v49 = [v47 numberWithInteger:{objc_msgSend(action10, "type")}];
  [dictionary setObject:v49 forKeyedSubscript:@"engagementType"];

  suggestions = [telemetryCopy suggestions];
  if (suggestions)
  {
    suggestions2 = [telemetryCopy suggestions];
    v52 = [suggestions2 count] != 0;
  }

  else
  {
    v52 = 0;
  }

  v53 = [MEMORY[0x1E696AD98] numberWithBool:v52];
  [dictionary setObject:v53 forKeyedSubscript:@"suggestionAvailable"];

  v54 = MEMORY[0x1E696AD98];
  suggestions3 = [telemetryCopy suggestions];
  v56 = [v54 numberWithUnsignedInteger:{objc_msgSend(suggestions3, "count")}];
  [dictionary setObject:v56 forKeyedSubscript:@"suggestionNumber"];

  v57 = MEMORY[0x1E696AD98];
  [telemetryCopy numberOfVisibleSuggestions];
  v58 = [v57 numberWithFloat:?];
  [dictionary setObject:v58 forKeyedSubscript:@"numberOfVisibleSuggestions"];

  v59 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Sharing"];
  v60 = [v59 integerForKey:@"SharingPeopleSuggestionsDisabled"] == 1;
  v61 = [MEMORY[0x1E696AD98] numberWithBool:v60];
  [dictionary setObject:v61 forKeyedSubscript:@"peopleSuggestionsSetting"];

  action11 = [telemetryCopy action];
  transportBundleID4 = [action11 transportBundleID];
  [dictionary setObject:transportBundleID4 forKeyedSubscript:@"transportApp"];

  context3 = [telemetryCopy context];
  bundleID = [context3 bundleID];
  [dictionary setObject:bundleID forKeyedSubscript:@"sourceApp"];

  suggestions4 = [telemetryCopy suggestions];
  firstObject = [suggestions4 firstObject];
  utiList = [firstObject utiList];
  [dictionary setObject:utiList forKeyedSubscript:@"contentShared"];

  context4 = [telemetryCopy context];
  sessionID = [context4 sessionID];
  [dictionary setObject:sessionID forKeyedSubscript:@"sessionId"];

  [dictionary setObject:v10 forKeyedSubscript:@"userExperienceFlow"];
  v71 = MEMORY[0x1E696AD98];
  context5 = [telemetryCopy context];
  suggestionCompletionDate = [context5 suggestionCompletionDate];
  context6 = [telemetryCopy context];
  suggestionDate = [context6 suggestionDate];
  [suggestionCompletionDate timeIntervalSinceDate:suggestionDate];
  v77 = [v71 numberWithInt:(v76 * 1000.0)];
  [dictionary setObject:v77 forKeyedSubscript:@"sessionLatency"];

  v78 = MEMORY[0x1E696AD98];
  context7 = [telemetryCopy context];
  v80 = [v78 numberWithBool:{objc_msgSend(context7, "timedOut")}];
  [dictionary setObject:v80 forKeyedSubscript:@"modelTimeout"];

  context8 = [telemetryCopy context];
  suggestionPath = [context8 suggestionPath];
  v83 = +[_PSConstants suggestionPathNormal];
  LOBYTE(context6) = [suggestionPath isEqualToString:v83];

  if (context6)
  {
    v84 = &unk_1F2D8B490;
  }

  else
  {
    context9 = [telemetryCopy context];
    suggestionPath2 = [context9 suggestionPath];
    v87 = +[_PSConstants suggestionPathBestEffort];
    v88 = [suggestionPath2 isEqualToString:v87];

    if (v88)
    {
      v84 = &unk_1F2D8B4A8;
    }

    else
    {
      context10 = [telemetryCopy context];
      suggestionPath3 = [context10 suggestionPath];
      v91 = +[_PSConstants suggestionPathCachedSuggestion];
      v92 = [suggestionPath3 isEqualToString:v91];

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

  [dictionary setObject:v84 forKeyedSubscript:@"suggestionPath"];
  context11 = [telemetryCopy context];
  suggestionPath4 = [context11 suggestionPath];
  [dictionary setObject:suggestionPath4 forKeyedSubscript:@"suggestionPath_debug"];

  context12 = [telemetryCopy context];
  trialDeploymentId = [context12 trialDeploymentId];
  if (trialDeploymentId)
  {
    [dictionary setObject:trialDeploymentId forKeyedSubscript:@"trialDeploymentId"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null forKeyedSubscript:@"trialDeploymentId"];
  }

  context13 = [telemetryCopy context];
  trialExperimentId = [context13 trialExperimentId];
  if (trialExperimentId)
  {
    [dictionary setObject:trialExperimentId forKeyedSubscript:@"trialExperimentId"];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null2 forKeyedSubscript:@"trialExperimentId"];
  }

  context14 = [telemetryCopy context];
  trialTreatmentId = [context14 trialTreatmentId];
  if (trialTreatmentId)
  {
    [dictionary setObject:trialTreatmentId forKeyedSubscript:@"trialTreatmentId"];
  }

  else
  {
    null3 = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null3 forKeyedSubscript:@"trialTreatmentId"];
  }

  context15 = [telemetryCopy context];
  bundleID2 = [context15 bundleID];
  v106 = [&unk_1F2D8C240 containsObject:bundleID2];

  v107 = [MEMORY[0x1E696AD98] numberWithBool:v106];
  [dictionary setObject:v107 forKeyedSubscript:@"isPhotos"];

  v108 = MEMORY[0x1E696AD98];
  context16 = [telemetryCopy context];
  v110 = [v108 numberWithBool:{objc_msgSend(context16, "isPSRActive")}];
  [dictionary setObject:v110 forKeyedSubscript:@"PSRActive"];

  v111 = MEMORY[0x1E696AD98];
  [telemetryCopy delay];
  v113 = [v111 numberWithInt:(v112 * 1000.0)];
  [dictionary setObject:v113 forKeyedSubscript:@"sessionDelayInMilliseconds"];

  v115 = dictionary;
  AnalyticsSendEventLazy();

  return v115;
}

- (void)provideFeedbackForSuggestions:(id)suggestions
{
  v104 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
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

  selfCopy = self;
  v97 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_432];
  action = [suggestionsCopy action];
  suggestion = [action suggestion];
  conversationIdentifier = [suggestion conversationIdentifier];
  derivedIntentIdentifier = conversationIdentifier;
  if (!conversationIdentifier)
  {
    action2 = [suggestionsCopy action];
    suggestion2 = [action2 suggestion];
    derivedIntentIdentifier = [suggestion2 derivedIntentIdentifier];
  }

  context = [suggestionsCopy context];
  sessionID = [context sessionID];
  action3 = [suggestionsCopy action];
  type = [action3 type];
  action4 = [suggestionsCopy action];
  transportBundleID = [action4 transportBundleID];
  context2 = [suggestionsCopy context];
  [v97 saveFeedbackInCoreDuetd:derivedIntentIdentifier forSessionId:sessionID feedbackActionType:type transportBundleId:transportBundleID isFallbackFetch:objc_msgSend(context2 reply:{"isFallbackFetch"), &__block_literal_global_436}];

  if (!conversationIdentifier)
  {
  }

  action5 = [suggestionsCopy action];
  type2 = [action5 type];

  if (type2 > 1)
  {
    if (type2 == 2)
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

    if (type2 == 4)
    {
      v21 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        action6 = [suggestionsCopy action];
        transportBundleID2 = [action6 transportBundleID];
        *buf = 138412290;
        v99 = transportBundleID2;
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

  if (type2)
  {
    if (type2 == 1)
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

  indexOfEngagedSuggestion = [suggestionsCopy indexOfEngagedSuggestion];
  v26 = +[_PSLogging feedbackChannel];
  v21 = v26;
  if (indexOfEngagedSuggestion == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester provideFeedbackForSuggestions:];
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexOfEngagedSuggestion];
    action7 = [suggestionsCopy action];
    transportBundleID3 = [action7 transportBundleID];
    *buf = 138412546;
    v99 = v84;
    v100 = 2112;
    v101 = transportBundleID3;
    _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_INFO, "Feedback for people suggestions: Engagement with suggestion at index %@, transport: %@", buf, 0x16u);
  }

  [(_PSSuggester *)selfCopy _recordFeedbackToInteractionStoreWithFeedback:suggestionsCopy mechanism:20];
LABEL_25:
  suggestions = [suggestionsCopy suggestions];
  firstObject = [suggestions firstObject];
  familySuggestion = [firstObject familySuggestion];

  action8 = [suggestionsCopy action];
  suggestion3 = [action8 suggestion];

  bundleID = [suggestion3 bundleID];
  v91 = suggestion3;
  derivedIntentIdentifier2 = [suggestion3 derivedIntentIdentifier];
  if (bundleID)
  {
    userContext = [MEMORY[0x1E6997A60] userContext];
    v34 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/sharesheet/selectedSuggestion"];
    v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v35 setObject:bundleID forKeyedSubscript:@"bundleID"];
    if (derivedIntentIdentifier2)
    {
      v36 = +[_PSConstants mobileMessagesBundleId];
      v37 = [bundleID isEqualToString:v36];

      if ((v37 & 1) == 0)
      {
        [v35 setObject:derivedIntentIdentifier2 forKeyedSubscript:@"derivedIntentIdentifier"];
      }
    }

    v38 = [v35 copy];
    [userContext setObject:v38 forKeyedSubscript:v34];

    v39 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v99 = bundleID;
      _os_log_impl(&dword_1B5ED1000, v39, OS_LOG_TYPE_INFO, "Set selected suggestion in context store for bundleID %@", buf, 0xCu);
    }
  }

  v88 = derivedIntentIdentifier2;
  v89 = bundleID;
  suggestions2 = [suggestionsCopy suggestions];
  firstObject2 = [suggestions2 firstObject];
  v42 = suggestionsCopy;
  isAdaptedModelCreated = [firstObject2 isAdaptedModelCreated];

  suggestions3 = [v42 suggestions];
  firstObject3 = [suggestions3 firstObject];
  isAdaptedModelUsed = [firstObject3 isAdaptedModelUsed];

  suggestions4 = [v42 suggestions];
  firstObject4 = [suggestions4 firstObject];
  adaptedModelRecipeID = [firstObject4 adaptedModelRecipeID];

  suggestions5 = [v42 suggestions];
  firstObject5 = [suggestions5 firstObject];
  supportedBundleIDs = [firstObject5 supportedBundleIDs];

  suggestions6 = [v42 suggestions];
  firstObject6 = [suggestions6 firstObject];
  utiList = [firstObject6 utiList];

  v56 = [MEMORY[0x1E696AD98] numberWithBool:familySuggestion];
  v94 = v42;
  v57 = [v42 feedbackPayloadShowFamily:v56];
  v58 = [v57 mutableCopy];

  v59 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Sharing"];
  v60 = [v59 integerForKey:@"SharingPeopleSuggestionsDisabled"];
  v61 = [MEMORY[0x1E696AD98] numberWithInteger:v60];
  [v58 setObject:v61 forKeyedSubscript:@"peopleSuggestionsDisabled"];

  v62 = [MEMORY[0x1E696AD98] numberWithBool:isAdaptedModelCreated];
  [v58 setObject:v62 forKeyedSubscript:@"isAdaptedModelCreated"];

  v63 = [MEMORY[0x1E696AD98] numberWithBool:isAdaptedModelUsed];
  [v58 setObject:v63 forKeyedSubscript:@"isAdaptedModelUsed"];

  [v58 setObject:adaptedModelRecipeID forKeyedSubscript:@"adaptedModelRecipeID"];
  v64 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:isAdaptedModelCreated];
    v66 = [MEMORY[0x1E696AD98] numberWithBool:isAdaptedModelUsed];
    *buf = 138412802;
    v99 = v65;
    v100 = 2112;
    v101 = v66;
    v102 = 2112;
    v103 = adaptedModelRecipeID;
    _os_log_impl(&dword_1B5ED1000, v64, OS_LOG_TYPE_INFO, "Adapted model use and availability indicators are set as isAdaptedModelCreated:%@, isAdaptedModelUsed:%@, adaptedModelRecipeID:%@", buf, 0x20u);
  }

  [v58 setObject:supportedBundleIDs forKeyedSubscript:@"supportedBundleIds"];
  v67 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v99 = supportedBundleIDs;
    _os_log_impl(&dword_1B5ED1000, v67, OS_LOG_TYPE_INFO, "Comma seperated supported bundleID list:%@", buf, 0xCu);
  }

  [v58 setObject:utiList forKeyedSubscript:@"uti"];
  v68 = +[_PSLogging feedbackChannel];
  v69 = v94;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v99 = utiList;
    _os_log_impl(&dword_1B5ED1000, v68, OS_LOG_TYPE_INFO, "Comma seperated UTI list:%@", buf, 0xCu);
  }

  v70 = MEMORY[0x1E696AD98];
  context3 = [v94 context];
  v72 = [v70 numberWithInteger:{objc_msgSend(context3, "suggestionPurpose")}];
  [v58 setObject:v72 forKeyedSubscript:@"suggestionPurpose"];

  action9 = [v94 action];
  suggestion4 = [action9 suggestion];
  recipients = [suggestion4 recipients];

  if (recipients)
  {
    v76 = MEMORY[0x1E696AD98];
    action10 = [v94 action];
    suggestion5 = [action10 suggestion];
    recipients2 = [suggestion5 recipients];
    v80 = [v76 numberWithUnsignedInteger:{objc_msgSend(recipients2, "count")}];
    [v58 setObject:v80 forKeyedSubscript:@"recipientCount"];

    v69 = v94;
  }

  if ((familySuggestion & 1) == 0)
  {
    v81 = [(_PSSuggester *)selfCopy generatePSRTelemetry:v69];
    [(_PSSuggester *)selfCopy donateCA2Biome:v81];
  }

  v82 = v58;
  AnalyticsSendEventLazy();
  [v69 donateToBiome];

  v83 = *MEMORY[0x1E69E9840];
}

- (void)donateCA2Biome:(id)biome
{
  biomeCopy = biome;
  v5 = [(_PSSuggester *)self convertCoreAnalyticsEvent2BiomeEvent:biomeCopy];
  v6 = BiomeLibrary();
  mLSE = [v6 MLSE];
  shareSheet = [mLSE ShareSheet];
  feedback = [shareSheet Feedback];

  source = [feedback source];
  v11 = objc_alloc(MEMORY[0x1E698EC98]);
  LODWORD(v15) = 0;
  v12 = [v11 initWithIdentifier:0 engagementType:0 engagementIdentifier:0 visiblePeopleSuggestionCount:0 visibleAppSuggestionCount:0 airdropPeopleSuggestionShown:0 inferenceSource:v15 trialIdentifier:0 timeouts:MEMORY[0x1E695E0F0] productInsights:v5];
  v13 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_INFO, "Attempting to send BMMLSEShareSheetFeedback event...", buf, 2u);
  }

  [source sendEvent:v12];
  v14 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "Successfully sent BMMLSEShareSheetFeedback event.", v16, 2u);
  }
}

- (id)_stringFromValue:(id)value
{
  v13 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy || ([MEMORY[0x1E695DFB0] null], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == valueCopy))
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = valueCopy;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [valueCopy stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = [valueCopy componentsJoinedByString:{@", "}];
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

          stringValue = [valueCopy description];
        }
      }
    }

    v6 = stringValue;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)convertCoreAnalyticsEvent2BiomeEvent:(id)event
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = [event mutableCopy];
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

  date = [MEMORY[0x1E695DF00] date];
  v40 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v40 setDateFormat:@"MM/dd/yyyy"];
  v72 = v40;
  v73 = date;
  v41 = [v40 stringFromDate:date];
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

- (void)_recordFeedbackToInteractionStoreWithFeedback:(id)feedback mechanism:(int64_t)mechanism
{
  v106 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  connection = self->_connection;
  if (!connection)
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = objc_alloc(MEMORY[0x1E696B0B8]);
    v9 = [v8 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    v10 = self->_connection;
    self->_connection = v9;

    _CDInteractionNSXPCInterface();
    v12 = v11 = feedbackCopy;
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v12];

    feedbackCopy = v11;
    [(NSXPCConnection *)self->_connection resume];
    os_unfair_lock_unlock(&self->_lock);
    connection = self->_connection;
  }

  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_488];
  v14 = objc_opt_new();
  appBundleIdToShareExtensionMapping = self->_appBundleIdToShareExtensionMapping;
  action = [feedbackCopy action];
  transportBundleID = [action transportBundleID];
  v18 = [(NSDictionary *)appBundleIdToShareExtensionMapping objectForKey:transportBundleID];
  firstObject = [v18 firstObject];

  if (!firstObject)
  {
    action2 = [feedbackCopy action];
    firstObject = [action2 transportBundleID];
  }

  v84 = v13;
  action3 = [feedbackCopy action];
  suggestion = [action3 suggestion];
  groupName = [suggestion groupName];
  [v14 setGroupName:groupName];

  v82 = firstObject;
  [v14 setTargetBundleId:firstObject];
  context = [feedbackCopy context];
  bundleID = [context bundleID];
  [v14 setBundleId:bundleID];

  [v14 setMechanism:mechanism];
  action4 = [feedbackCopy action];
  suggestion2 = [action4 suggestion];
  derivedIntentIdentifier = [suggestion2 derivedIntentIdentifier];
  [v14 setDerivedIntentIdentifier:derivedIntentIdentifier];

  action5 = [feedbackCopy action];
  suggestion3 = [action5 suggestion];
  image = [suggestion3 image];
  _uri = [image _uri];
  v83 = v14;
  if (_uri)
  {
    [v14 setContentURL:_uri];
  }

  else
  {
    v33 = MEMORY[0x1E695DFF8];
    obja = [feedbackCopy action];
    suggestion4 = [obja suggestion];
    image2 = [suggestion4 image];
    _identifier = [image2 _identifier];
    v37 = [v33 URLWithString:_identifier];
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
  context2 = [feedbackCopy context];
  attachments = [context2 attachments];

  obj = attachments;
  v42 = [attachments countByEnumeratingWithState:&v96 objects:v105 count:16];
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
          photoSceneDescriptors = [v47 photoSceneDescriptors];
          v50 = [photoSceneDescriptors countByEnumeratingWithState:&v92 objects:v104 count:16];
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
                  objc_enumerationMutation(photoSceneDescriptors);
                }

                (v39)[2](v39, v47, *(*(&v92 + 1) + 8 * i), 0);
              }

              v51 = [photoSceneDescriptors countByEnumeratingWithState:&v92 objects:v104 count:16];
            }

            while (v51);
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          peopleInPhoto = [v47 peopleInPhoto];
          v55 = [peopleInPhoto countByEnumeratingWithState:&v88 objects:v103 count:16];
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
                  objc_enumerationMutation(peopleInPhoto);
                }

                (v39)[2](v39, v47, 0, *(*(&v88 + 1) + 8 * j));
              }

              v56 = [peopleInPhoto countByEnumeratingWithState:&v88 objects:v103 count:16];
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
  action6 = [feedbackCopy action];
  suggestion5 = [action6 suggestion];
  conversationIdentifier = [suggestion5 conversationIdentifier];

  if (conversationIdentifier)
  {
    action7 = [feedbackCopy action];
    suggestion6 = [action7 suggestion];
    conversationIdentifier2 = [suggestion6 conversationIdentifier];
    [v83 setDomainIdentifier:conversationIdentifier2];

    v65 = v84;
  }

  else
  {
    derivedIntentIdentifier2 = [v83 derivedIntentIdentifier];
    v67 = [derivedIntentIdentifier2 stringByReplacingOccurrencesOfString:@"conversationIdentifier" withString:&stru_1F2D6CE98];

    action7 = [v67 substringWithRange:{1, objc_msgSend(v67, "length") - 2}];

    v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", @"conversationIdentifier", action7];
    derivedIntentIdentifier3 = [v83 derivedIntentIdentifier];
    LODWORD(v67) = [v68 isEqualToString:derivedIntentIdentifier3];

    v65 = v84;
    if (v67)
    {
      suggestion6 = [action7 stringByRemovingPercentEncoding];
      [v83 setDomainIdentifier:suggestion6];
    }

    else
    {
      suggestion6 = [v83 derivedIntentIdentifier];
      stringByRemovingPercentEncoding = [suggestion6 stringByRemovingPercentEncoding];
      [v83 setDomainIdentifier:stringByRemovingPercentEncoding];
    }
  }

  action8 = [feedbackCopy action];
  suggestion7 = [action8 suggestion];
  recipients = [suggestion7 recipients];
  v74 = [recipients _pas_mappedArrayWithTransform:&__block_literal_global_500];
  [v83 setRecipients:v74];

  targetBundleId = [v83 targetBundleId];
  v76 = +[_PSConstants sharePlayBundleId];
  LODWORD(recipients) = [targetBundleId isEqualToString:v76];

  if (recipients)
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

- (void)provideSuggestLessFeedbackForShareSheetSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
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
  bundleId = [suggestionCopy bundleId];
  derivedIntentId = [suggestionCopy derivedIntentId];
  conversationId = [suggestionCopy conversationId];
  handle = [suggestionCopy handle];
  contactId = [suggestionCopy contactId];
  v13 = [v7 initWithIdentifier:@"shareSheetSuggestLessFeedback" bundleId:bundleId derivedIdentifier:derivedIntentId conversationIdentifier:conversationId handle:handle contactIdentifier:contactId itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];

  v14 = BiomeLibrary();
  peopleSuggester = [v14 PeopleSuggester];
  suggestLessFeedback = [peopleSuggester SuggestLessFeedback];

  source = [suggestLessFeedback source];
  [source sendEvent:v13];

  [(_PSSuggester *)self deleteInteractionsMatchingSuggestLessFeedback:suggestionCopy];
  [(_PSSuggester *)self deleteUIInteractionsMatchingSuggestLessFeedback:suggestionCopy];
}

- (id)buildFilteringPredicateMatchingSuggestLessFeedback:(id)feedback
{
  v27[1] = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  array = [MEMORY[0x1E695DF70] array];
  derivedIntentId = [feedbackCopy derivedIntentId];
  if (derivedIntentId)
  {
LABEL_2:

    goto LABEL_3;
  }

  conversationId = [feedbackCopy conversationId];

  if (conversationId)
  {
    v17 = MEMORY[0x1E696AE18];
    conversationId2 = [feedbackCopy conversationId];
    derivedIntentId = [v17 predicateWithFormat:@"domainIdentifier == %@", conversationId2];

    if (derivedIntentId)
    {
      [array addObject:derivedIntentId];
    }

    goto LABEL_2;
  }

LABEL_3:
  derivedIntentId2 = [feedbackCopy derivedIntentId];

  if (derivedIntentId2)
  {
    v7 = MEMORY[0x1E696AE18];
    derivedIntentId3 = [feedbackCopy derivedIntentId];
    v9 = [v7 predicateWithFormat:@"derivedIntentIdentifier == %@", derivedIntentId3];

    if (v9)
    {
      [array addObject:v9];
    }
  }

  if (![array count])
  {
    v10 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggester buildFilteringPredicateMatchingSuggestLessFeedback:];
    }

    handle = [feedbackCopy handle];

    v12 = MEMORY[0x1E696AE18];
    if (handle)
    {
      handle2 = [feedbackCopy handle];
      v27[0] = handle2;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v15 = [v12 predicateWithFormat:@"ANY recipients.identifier IN %@", v14];

      if (v15)
      {
        [array addObject:v15];
      }
    }

    else
    {
      v19 = [MEMORY[0x1E696AE18] predicateWithValue:0];
      [array addObject:v19];

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
    [array addObject:v22];
  }

  v23 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)deleteInteractionsMatchingSuggestLessFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = [(_PSSuggester *)self buildFilteringPredicateMatchingSuggestLessFeedback:feedbackCopy];
  connection = self->_connection;
  if (connection)
  {
    v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_528];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62___PSSuggester_deleteInteractionsMatchingSuggestLessFeedback___block_invoke_529;
    v16[3] = &unk_1E7C254D8;
    v17 = feedbackCopy;
    [v7 deleteInteractionsMatchingPredicate:v5 sortDescriptors:0 limit:0 reply:v16];
  }

  configuration = [(_PSSuggester *)self configuration];
  suggestionModel = [configuration suggestionModel];

  if (suggestionModel)
  {
    configuration2 = [(_PSSuggester *)self configuration];
    suggestionModel2 = [configuration2 suggestionModel];
    [suggestionModel2 setMessageInteractionCache:0];

    configuration3 = [(_PSSuggester *)self configuration];
    suggestionModel3 = [configuration3 suggestionModel];
    [suggestionModel3 setShareInteractionCache:0];

    configuration4 = [(_PSSuggester *)self configuration];
    suggestionModel4 = [configuration4 suggestionModel];
    [suggestionModel4 populateCaches];
  }
}

- (void)deleteUIInteractionsMatchingSuggestLessFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v4 = BiomeLibrary();
  mLSE = [v4 MLSE];
  shareSheet = [mLSE ShareSheet];
  conversationUserInteraction = [shareSheet ConversationUserInteraction];

  pruner = [conversationUserInteraction pruner];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64___PSSuggester_deleteUIInteractionsMatchingSuggestLessFeedback___block_invoke;
  v10[3] = &unk_1E7C25500;
  v11 = feedbackCopy;
  v9 = feedbackCopy;
  [pruner deleteWithPolicy:@"suggest-less-feedback" eventsPassingTest:v10];
}

- (void)provideFeedbackForMessagesZkwSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v3 = suggestionsCopy;
  AnalyticsSendEventLazy();
}

- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  _getUserDaemonXPCConnection = [(_PSSuggester *)self _getUserDaemonXPCConnection];
  v6 = _getUserDaemonXPCConnection;
  if (_getUserDaemonXPCConnection)
  {
    v7 = [_getUserDaemonXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_537];
    [v7 provideFeedbackForContactsAutocompleteSuggestions:suggestionsCopy];
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

- (void)writeFeedbackForContactsAutocompleteSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = suggestionsCopy;
  if (self->_feedbackQueue)
  {
    feedbackType = [suggestionsCopy feedbackType];
    v7 = +[_PSLogging feedbackChannel];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (feedbackType > 2)
    {
      switch(feedbackType)
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
      switch(feedbackType)
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

- (id)shareInformationForPhotoId:(id)id dateInterval:(id)interval interactionStoreDB:(id)b
{
  v83 = *MEMORY[0x1E69E9840];
  idCopy = id;
  intervalCopy = interval;
  bCopy = b;
  defaultDatabaseDirectory = bCopy;
  v56 = idCopy;
  if (idCopy)
  {
    if (!bCopy)
    {
      defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    }

    v50 = defaultDatabaseDirectory;
    v11 = [MEMORY[0x1E69978F8] storeWithDirectory:defaultDatabaseDirectory readOnly:1];
    startDate = [intervalCopy startDate];
    v51 = intervalCopy;
    endDate = [intervalCopy endDate];
    v14 = objc_autoreleasePoolPush();
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F2D8B520, &unk_1F2D8B538, 0}];
    objc_autoreleasePoolPop(v14);
    v16 = objc_autoreleasePoolPush();
    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F2D8B550, 0}];
    objc_autoreleasePoolPop(v16);
    v49 = v11;
    LOBYTE(v48) = 0;
    v18 = [_PSInteractionStoreUtils interactionsFromStore:v11 startDate:startDate tillDate:endDate withMechanisms:v15 withAccount:0 withBundleIds:0 withTargetBundleIds:0 withDirections:v17 singleRecipient:v48 fetchLimit:10000];

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

          attachments = [*(*(&v69 + 1) + 8 * i) attachments];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v21 = attachments;
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

                photoLocalIdentifier = [*(*(&v65 + 1) + 8 * j) photoLocalIdentifier];
                v27 = photoLocalIdentifier;
                if (photoLocalIdentifier)
                {
                  v28 = [photoLocalIdentifier rangeOfString:@"/"];
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

          attachments2 = [*(*(&v61 + 1) + 8 * k) attachments];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v40 = [attachments2 countByEnumeratingWithState:&v57 objects:v79 count:16];
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
                  objc_enumerationMutation(attachments2);
                }

                photoLocalIdentifier2 = [*(*(&v57 + 1) + 8 * m) photoLocalIdentifier];
                if (photoLocalIdentifier2)
                {
                  ++v36;
                }
              }

              v41 = [attachments2 countByEnumeratingWithState:&v57 objects:v79 count:16];
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
    defaultDatabaseDirectory = v50;
    intervalCopy = v51;
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

- (id)interactionCountForHandle:(id)handle fetchLimit:(unint64_t)limit interactionStoreDB:(id)b
{
  v126[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  bCopy = b;
  defaultDatabaseDirectory = bCopy;
  if (handleCopy)
  {
    if (!bCopy)
    {
      defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    }

    v126[0] = handleCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:1];
    v11 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:v10];

    v12 = MEMORY[0x1E695DFD8];
    v110 = v11;
    allValues = [v11 allValues];
    v14 = [v12 setWithArray:allValues];
    v15 = [v14 mutableCopy];

    v16 = objc_opt_new();
    v111 = defaultDatabaseDirectory;
    v17 = [MEMORY[0x1E69978F8] storeWithDirectory:defaultDatabaseDirectory readOnly:1];
    allObjects = [v15 allObjects];
    v19 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:allObjects account:0 directions:&unk_1F2D8C2E8 mechanisms:0 bundleIds:0 store:v17 fetchLimit:limit messageInteractionCache:0];

    [v16 addObjectsFromArray:v19];
    allObjects2 = [v15 allObjects];
    [_PSInteractionStoreUtils interactionsMatchingAnySender:allObjects2 store:v17 fetchLimit:limit messageInteractionCache:0];
    v22 = v21 = handleCopy;

    [v16 addObjectsFromArray:v22];
    v109 = v15;
    allObjects3 = [v15 allObjects];
    v108 = v17;
    v24 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:allObjects3 account:0 directions:&unk_1F2D8C300 mechanisms:0 bundleIds:0 store:v17 fetchLimit:limit messageInteractionCache:0];

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
      firstObject = [v28 firstObject];
      startDate = [firstObject startDate];

      handleCopy = v21;
      if (startDate)
      {
        _dateFormatter = [(_PSSuggester *)self _dateFormatter];
        startDate2 = [firstObject startDate];
        v33 = [_dateFormatter stringFromDate:startDate2];
        [v25 setObject:v33 forKeyedSubscript:@"recentIncomingStartDate"];
      }

      endDate = [firstObject endDate];

      if (endDate)
      {
        _dateFormatter2 = [(_PSSuggester *)self _dateFormatter];
        endDate2 = [firstObject endDate];
        v37 = [_dateFormatter2 stringFromDate:endDate2];
        [v25 setObject:v37 forKeyedSubscript:@"recentIncomingEndDate"];
      }

      bundleId = [firstObject bundleId];
      [v25 setObject:bundleId forKeyedSubscript:@"recentIncomingBundleId"];

      domainIdentifier = [firstObject domainIdentifier];
      [v25 setObject:domainIdentifier forKeyedSubscript:@"recentIncomingDomainId"];

      account = [firstObject account];
      [v25 setObject:account forKeyedSubscript:@"recentIncomingAccount"];

      recipients = [firstObject recipients];
      v42 = [recipients count];

      if (v42)
      {
        recipients2 = [firstObject recipients];
        firstObject2 = [recipients2 firstObject];

        identifier = [firstObject2 identifier];
        [v25 setObject:identifier forKeyedSubscript:@"recentIncomingRecipientContactId"];

        displayName = [firstObject2 displayName];

        if (displayName)
        {
          displayName2 = [firstObject2 displayName];
          [v25 setObject:displayName2 forKeyedSubscript:@"recentIncomingRecipientDisplayName"];
        }
      }

      if ([v27 count])
      {
        v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
        stringValue = [v48 stringValue];
        [v25 setObject:stringValue forKeyedSubscript:@"incomingCalls"];

        firstObject3 = [v27 firstObject];
        startDate3 = [firstObject3 startDate];
        [v25 setObject:startDate3 forKeyedSubscript:@"recentIncomingCallStartDate"];

        endDate3 = [firstObject3 endDate];
        [v25 setObject:endDate3 forKeyedSubscript:@"recentIncomingCallEndDate"];

        bundleId2 = [firstObject3 bundleId];
        [v25 setObject:bundleId2 forKeyedSubscript:@"recentIncomingCallBundleId"];

        domainIdentifier2 = [firstObject3 domainIdentifier];
        [v25 setObject:domainIdentifier2 forKeyedSubscript:@"recentIncomingCallDomainId"];

        account2 = [firstObject3 account];
        [v25 setObject:account2 forKeyedSubscript:@"recentIncomingCallAccount"];

        recipients3 = [firstObject recipients];
        v57 = [recipients3 count];

        if (v57)
        {
          recipients4 = [firstObject3 recipients];
          firstObject4 = [recipients4 firstObject];

          identifier2 = [firstObject4 identifier];
          [v25 setObject:identifier2 forKeyedSubscript:@"recentIncomingCallRecipientContactId"];

          displayName3 = [firstObject4 displayName];
          [v25 setObject:displayName3 forKeyedSubscript:@"recentIncomingCallRecipientDisplayName"];
        }
      }

      v16 = v113;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
      handleCopy = v21;
    }

    if ([v24 count])
    {
      v106 = v28;
      v64 = [v24 _pas_filteredArrayWithTest:&__block_literal_global_19];
      v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v64, "count")}];
      stringValue2 = [v65 stringValue];
      [v25 setObject:stringValue2 forKeyedSubscript:@"outgoingCalls"];

      firstObject5 = [v24 firstObject];
      startDate4 = [firstObject5 startDate];
      if (startDate4)
      {
        _dateFormatter3 = [(_PSSuggester *)self _dateFormatter];
        v70 = [_dateFormatter3 stringFromDate:startDate4];
        [v25 setObject:v70 forKeyedSubscript:@"recentOutgoingStartDate"];
      }

      endDate4 = [firstObject5 endDate];
      if (endDate4)
      {
        _dateFormatter4 = [(_PSSuggester *)self _dateFormatter];
        v73 = [_dateFormatter4 stringFromDate:endDate4];
        [v25 setObject:v73 forKeyedSubscript:@"recentOutgoingEndDate"];
      }

      bundleId3 = [firstObject5 bundleId];
      [v25 setObject:bundleId3 forKeyedSubscript:@"recentOutgoingBundleId"];

      domainIdentifier3 = [firstObject5 domainIdentifier];
      [v25 setObject:domainIdentifier3 forKeyedSubscript:@"recentOutgoingDomainId"];

      account3 = [firstObject5 account];
      [v25 setObject:account3 forKeyedSubscript:@"recentOutgoingAccount"];

      recipients5 = [firstObject5 recipients];
      v78 = [recipients5 count];

      if (v78)
      {
        recipients6 = [firstObject5 recipients];
        firstObject6 = [recipients6 firstObject];

        identifier3 = [firstObject6 identifier];
        [v25 setObject:identifier3 forKeyedSubscript:@"recentOutgoingRecipientContactId"];

        displayName4 = [firstObject6 displayName];

        if (displayName4)
        {
          displayName5 = [firstObject6 displayName];
          [v25 setObject:displayName5 forKeyedSubscript:@"recentOutgoingRecipientDisplayName"];
        }
      }

      if ([v64 count])
      {
        firstObject7 = [v64 firstObject];
        startDate5 = [firstObject7 startDate];
        [v25 setObject:startDate5 forKeyedSubscript:@"recentOutgoingCallStartDate"];

        endDate5 = [firstObject7 endDate];
        [v25 setObject:endDate5 forKeyedSubscript:@"recentOutgoingCallEndDate"];

        bundleId4 = [firstObject7 bundleId];
        [v25 setObject:bundleId4 forKeyedSubscript:@"recentOutgoingCallBundleId"];

        domainIdentifier4 = [firstObject7 domainIdentifier];
        [v25 setObject:domainIdentifier4 forKeyedSubscript:@"recentOutgoingCallDomainId"];

        account4 = [firstObject7 account];
        [v25 setObject:account4 forKeyedSubscript:@"recentOutgoingCallAccount"];

        recipients7 = [firstObject7 recipients];
        v91 = [recipients7 count];

        if (v91)
        {
          recipients8 = [firstObject7 recipients];
          firstObject8 = [recipients8 firstObject];

          identifier4 = [firstObject8 identifier];
          [v25 setObject:identifier4 forKeyedSubscript:@"recentOutgoingCallRecipientContactId"];

          displayName6 = [firstObject8 displayName];
          [v25 setObject:displayName6 forKeyedSubscript:@"recentOutgoingCallRecipientDisplayName"];
        }
      }

      v16 = v113;
      v28 = v106;
    }

    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    stringValue3 = [v96 stringValue];
    [v25 setObject:stringValue3 forKeyedSubscript:@"incoming"];

    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
    stringValue4 = [v98 stringValue];
    [v25 setObject:stringValue4 forKeyedSubscript:@"outgoing"];

    v100 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      v103 = [v28 count];
      v104 = [v112 count];
      v105 = [v24 count];
      *buf = 138413058;
      v119 = handleCopy;
      v120 = 2048;
      v121 = v103;
      v122 = 2048;
      v123 = v104;
      v124 = 2048;
      v125 = v105;
      _os_log_debug_impl(&dword_1B5ED1000, v100, OS_LOG_TYPE_DEBUG, "_PSSuggester: For handle %@, interaction count: incoming %tu (%tu), outgoing %tu", buf, 0x2Au);
    }

    v63 = [[_PSInteractionInformation alloc] initWithHandle:handleCopy interactionInformation:v25];
    v62 = v110;
    defaultDatabaseDirectory = v111;
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

- (BOOL)interactionAvailableForHandle:(id)handle interactionStoreDB:(id)b
{
  v19[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  bCopy = b;
  defaultDatabaseDirectory = bCopy;
  if (handleCopy)
  {
    if (!bCopy)
    {
      defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    }

    v8 = [MEMORY[0x1E69978F8] storeWithDirectory:defaultDatabaseDirectory readOnly:1];
    v19[0] = handleCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v10 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:v9 directions:&unk_1F2D8C528 mechanisms:&unk_1F2D8C510 interactionDuration:v8 store:10 fetchLimit:0.0];

    if ([v10 count])
    {
      v11 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [_PSSuggester(InteractionAvailable) interactionAvailableForHandle:handleCopy interactionStoreDB:v10];
      }
    }

    else
    {
      v18 = handleCopy;
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
        [_PSSuggester(InteractionAvailable) interactionAvailableForHandle:handleCopy interactionStoreDB:v11];
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