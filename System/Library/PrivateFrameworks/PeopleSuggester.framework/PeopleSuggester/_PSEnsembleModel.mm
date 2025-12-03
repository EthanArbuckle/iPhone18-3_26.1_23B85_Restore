@interface _PSEnsembleModel
+ (id)_feedbackDictionary;
+ (id)_suggestionInteractionPredicatesForFirstPartyMessages:(BOOL)messages bundleID:(id)d interactionRecipients:(id)recipients;
+ (id)orderedSuggestionProxiesWithProxyOrder:(id)order suggestionProxies:(id)proxies suggestionsWithSharePlayAddedBlock:(id)block;
+ (id)popFeedbackForSession:(id)session;
+ (void)saveFeedback:(id)feedback forSessionId:(id)id feedbackActionType:(int64_t)type transportBundleId:(id)bundleId isFallbackFetch:(BOOL)fetch;
- (BOOL)_updateInteractionStatisticsForExplicitEngagement:(id)engagement interactionStatisticsConfig:(id)config interactionStatistics:(id)statistics sessionFeedback:(id)feedback;
- (BOOL)_updateInteractionStatisticsForImplicitEngagement:(id)engagement interactionStatisticsConfig:(id)config interactionStatistics:(id)statistics sessionFeedback:(id)feedback;
- (BOOL)_updateInteractionStatisticsForSpeculativeEngagement:(id)engagement interactionStatisticsConfig:(id)config interactionStatistics:(id)statistics sessionFeedback:(id)feedback;
- (BOOL)allowConcurrentReads;
- (BOOL)areRecipientsBlockedForSuggestion:(id)suggestion;
- (BOOL)coreMLModelNeedsDurableFeatures;
- (BOOL)excludeSuggestionWithConversationId:(id)id;
- (BOOL)loadPSConfig:(id)config;
- (BOOL)loadPSConfigPath:(id)path;
- (BOOL)shouldUseLegacyUI;
- (CNContactStore)contactStore;
- (NSArray)defaultContactKeysToFetch;
- (NSUserDefaults)peopleSuggesterDefaults;
- (_CDInteractionStore)interactionStore;
- (_DKKnowledgeQuerying)knowledgeStore;
- (_PSEnsembleModel)init;
- (_PSEnsembleModel)initWithInteractionStore:(id)store knowledgeStore:(id)knowledgeStore;
- (id)_conversationIdForFirstInteractionAfterSharingStartDate:(id)date targetBundleId:(id)id;
- (id)_defaultPredictionsWithPredictionContext:(id)context trialClient:(id)client config:(id)config parentSpanId:(id)id;
- (id)_fallbackPredictionWithPredictionContext:(id)context config:(id)config parentSpanId:(id)id;
- (id)_knnZKWSuggestionsWithPredictionContext:(id)context modelConfiguration:(id)configuration maxSuggestions:(unint64_t)suggestions;
- (id)_reMapContentTypes:(int *)types count:(unint64_t)count;
- (id)appExtensionSuggestionsFromContext:(id)context;
- (id)autocompleteSearchResultsWithPredictionContext:(id)context;
- (id)candidatesForShareSheetRanking;
- (id)familyPredictionsWithMaxSuggestions:(unint64_t)suggestions predictionContext:(id)context;
- (id)fetchShareSheetSupportedBundleIDs;
- (id)fetchSupportedBundleIDsWithPredictionContextFilters:(id)filters;
- (id)finalSuggestionProxiesForInteractionStatistics:(id)statistics config:(id)config trialClient:(id)client context:(id)context;
- (id)getMeContactIdentifier;
- (id)getModelProxiesArrayWithPredictionContext:(id)context;
- (id)getModelSuggestionsProxyDictWithModelProxiesArray:(id)array;
- (id)getPETMessageFrom:(id)from withConfig:(id)config andContext:(id)context;
- (id)getPhotoBasedFeaturesAsync:(id)async shouldProcessPicturesLive:(BOOL)live shouldUseVIPModel:(BOOL)model withTimeout:(double)timeout;
- (id)getReasonTypesFromObjects:(id)objects limit:(unint64_t)limit;
- (id)getSuggestionsFromInteractionsStatistics:(id)statistics withConfig:(id)config trialClient:(id)client andPredictionContext:(id)context;
- (id)mapsSuggestionArrayWithArray:(id)array appendingUniqueElementsFromArray:(id)fromArray contactResolver:(id)resolver meContactId:(id)id;
- (id)mergedSuggestionsWithFamilySuggestions:(id)suggestions shareSheetSuggestions:(id)sheetSuggestions maxSuggestions:(unint64_t)maxSuggestions supportedBundleIds:(id)ids;
- (id)predictWithMapsPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions;
- (id)predictWithPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions;
- (id)predictWithPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions contactKeysToFetch:(id)fetch;
- (id)psr_suggestionsFromSuggestionProxies:(id)proxies interactionsStatistics:(id)statistics maxSuggestions:(unint64_t)suggestions predictionContext:(id)context;
- (id)rankedAutocompleteSuggestionsFromContext:(id)context candidates:(id)candidates;
- (id)rankedGlobalSuggestionsForSiriNLWithPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions interactionId:(id)id;
- (id)rankedHandlesFromCandidateHandles:(id)handles;
- (id)rankedNameSuggestionsWithPredictionContext:(id)context name:(id)name;
- (id)rankedSiriMLCRHandles:(id)handles context:(id)context;
- (id)rerankMapsSuggestions:(id)suggestions usingPredictionContext:(id)context contactResolver:(id)resolver;
- (id)suggestZKWSuggestionsWithPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions;
- (id)suggestionsFromSuggestionProxies:(id)proxies supportedBundleIDs:(id)ds contactKeysToFetch:(id)fetch meContactIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions;
- (id)trialIdentifier;
- (int)_remapSingleContentTypeValue:(int)value;
- (int)modelProxyToVirtualFeatureStoreFeature:(id)feature;
- (unint64_t)pruneCandidatesForRanking:(id)ranking;
- (void)addExtraInformationWithSuggestions:(id)suggestions modelSuggestionProxiesDict:(id)dict;
- (void)addSuggestedRankFeature:(id)feature interactionsStatistics:(id)statistics;
- (void)addSupportedBundleIDs:(id)ds;
- (void)addTrialInfoToPredictionContext:(id)context withExperiment:(id)experiment;
- (void)addUTIInfo:(id)info predictionContext:(id)context;
- (void)evaluateCandidates:(id)candidates psrMLModel:(id)model;
- (void)freeCaches;
- (void)freeCachesIfNotCoreDuetDaemon;
- (void)getCoreMLSuggestionProxiesWithPredictionContext:(id)context modelSuggestionProxiesDict:(id)dict candidateToFeatureVectorDictGetter:(id)getter;
- (void)getHeuristicSuggestionProxies:(id)proxies supportedBundleIDs:(id)ds modelSuggestionProxiesDict:(id)dict;
- (void)getKnnSuggestionProxies:(id)proxies supportedBundleIDs:(id)ds modelSuggestionProxiesDict:(id)dict;
- (void)getMeContactIdentifier;
- (void)getOtherSuggestionProxies:(id)proxies supportedBundleIDs:(id)ds modelSuggestionProxiesDict:(id)dict;
- (void)intializeKNNContactRankerModelWithInteractionStore:(id)store knowledgeStore:(id)knowledgeStore;
- (void)loadDefaultPSConfig;
- (void)logPipeline:(id)pipeline withPipelineStage:(id)stage andSessionID:(id)d andCandidateNames:(id)names;
- (void)logPipelineWithSuggestions:(id)suggestions interactionsStatistics:(id)statistics pipelineStage:(id)stage sessionID:(id)d;
- (void)populateCaches;
- (void)populateCachesWithSupportedBundleIDs:(id)ds;
- (void)psrDataCollectionForContext:(id)context timeToWaitInSeconds:(int)seconds interactionStatisticsConfig:(id)config interactionStatistics:(id)statistics;
- (void)refreshCaches;
- (void)registerWithTrial;
- (void)sendDataCollectionMessageWith:(id)with;
- (void)sendDataToPETAsync:(id)async withConfig:(id)config andContext:(id)context;
- (void)setupAeroMLPipelineLoggerWithModel:(id)model;
- (void)updateFactorLevels;
- (void)updateTrialID:(id)d;
@end

@implementation _PSEnsembleModel

- (_PSEnsembleModel)init
{
  v14.receiver = self;
  v14.super_class = _PSEnsembleModel;
  v2 = [(_PSEnsembleModel *)&v14 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_lock._os_unfair_lock_opaque = 0;
    v2->_populateCacheLock._os_unfair_lock_opaque = 0;
    interactionStore = [(_PSEnsembleModel *)v2 interactionStore];
    knowledgeStore = [(_PSEnsembleModel *)v3 knowledgeStore];
    [(_PSEnsembleModel *)v3 initializeEnsembleModelsWithInteractionStore:interactionStore knowledgeStore:knowledgeStore];

    [(_PSEnsembleModel *)v3 loadDefaultPSConfig];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.coreduetd.queue", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v11 = +[_PSConstants mobileCoreDuetBundleId];
    v12 = [bundleIdentifier isEqual:v11];

    if (v12)
    {
      if (init__pasOnceToken8 != -1)
      {
        [_PSEnsembleModel init];
      }
    }
  }

  return v3;
}

- (_CDInteractionStore)interactionStore
{
  os_unfair_lock_lock(&self->_lock);
  interactionStore = self->_interactionStore;
  if (!interactionStore)
  {
    v4 = MEMORY[0x1E69978F8];
    defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    v6 = [v4 storeWithDirectory:defaultDatabaseDirectory readOnly:1];
    v7 = self->_interactionStore;
    self->_interactionStore = v6;

    [(_CDInteractionStore *)self->_interactionStore setReadConcurrently:[(_PSEnsembleModel *)self allowConcurrentReads]];
    interactionStore = self->_interactionStore;
  }

  v8 = interactionStore;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)allowConcurrentReads
{
  v9[2] = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v4 = +[_PSConstants mobileCoreDuetBundleId];
  v9[0] = v4;
  v5 = +[_PSConstants macKnowledgeAgentBundleId];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  LOBYTE(mainBundle) = [v6 containsObject:bundleIdentifier];

  v7 = *MEMORY[0x1E69E9840];
  return mainBundle;
}

- (_DKKnowledgeQuerying)knowledgeStore
{
  os_unfair_lock_lock(&self->_lock);
  knowledgeStore = self->_knowledgeStore;
  if (!knowledgeStore)
  {
    knowledgeStore = [MEMORY[0x1E69979A0] knowledgeStore];
    v5 = self->_knowledgeStore;
    self->_knowledgeStore = knowledgeStore;

    knowledgeStore = self->_knowledgeStore;
  }

  v6 = knowledgeStore;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)fetchShareSheetSupportedBundleIDs
{
  peopleSuggesterDefaults = [(_PSEnsembleModel *)self peopleSuggesterDefaults];
  -[_PSEnsembleModel setAllowNonSupportedBundleIDs:](self, "setAllowNonSupportedBundleIDs:", [peopleSuggesterDefaults BOOLForKey:@"_PSAllowNonSupportedBundleIDs"]);

  v4 = _PSShareSheetSuggestionBundleIDs([(_PSEnsembleModel *)self allowNonSupportedBundleIDs]);
  allObjects = [v4 allObjects];

  return allObjects;
}

- (NSUserDefaults)peopleSuggesterDefaults
{
  os_unfair_lock_lock(&self->_lock);
  peopleSuggesterDefaults = self->_peopleSuggesterDefaults;
  if (!peopleSuggesterDefaults)
  {
    v4 = objc_alloc(MEMORY[0x1E695E000]);
    v5 = +[_PSConstants psDefaultsDomain];
    v6 = [v4 initWithSuiteName:v5];
    v7 = self->_peopleSuggesterDefaults;
    self->_peopleSuggesterDefaults = v6;

    peopleSuggesterDefaults = self->_peopleSuggesterDefaults;
  }

  v8 = peopleSuggesterDefaults;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)loadDefaultPSConfig
{
  v3 = +[_PSConfig defaultConfig];
  [(_PSEnsembleModel *)self loadPSConfig:v3];
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_contactStore && getuid())
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getCNContactStoreClass_softClass_0;
    v12 = getCNContactStoreClass_softClass_0;
    if (!getCNContactStoreClass_softClass_0)
    {
      ContactsLibraryCore_0();
      v10[3] = objc_getClass("CNContactStore");
      getCNContactStoreClass_softClass_0 = v10[3];
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    v5 = objc_alloc_init(v3);
    contactStore = self->_contactStore;
    self->_contactStore = v5;
  }

  v7 = self->_contactStore;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

+ (id)_feedbackDictionary
{
  if (_feedbackDictionary__pasOnceToken7 != -1)
  {
    +[_PSEnsembleModel _feedbackDictionary];
  }

  v3 = _feedbackDictionary__pasExprOnceResult;

  return v3;
}

- (_PSEnsembleModel)initWithInteractionStore:(id)store knowledgeStore:(id)knowledgeStore
{
  storeCopy = store;
  knowledgeStoreCopy = knowledgeStore;
  v9 = [(_PSEnsembleModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interactionStore, store);
    [(_PSEnsembleModel *)v10 initializeEnsembleModelsWithInteractionStore:storeCopy knowledgeStore:knowledgeStoreCopy];
  }

  return v10;
}

+ (void)saveFeedback:(id)feedback forSessionId:(id)id feedbackActionType:(int64_t)type transportBundleId:(id)bundleId isFallbackFetch:(BOOL)fetch
{
  v29 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  idCopy = id;
  bundleIdCopy = bundleId;
  v14 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v24 = feedbackCopy;
    v25 = 2112;
    v26 = idCopy;
    v27 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "Received feedback in coreduetd %@,%@,%ld", buf, 0x20u);
  }

  if (idCopy)
  {
    v15 = +[_PSEnsembleModel _feedbackDictionary];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99___PSEnsembleModel_saveFeedback_forSessionId_feedbackActionType_transportBundleId_isFallbackFetch___block_invoke;
    v17[3] = &unk_1E7C247E0;
    v18 = feedbackCopy;
    typeCopy2 = type;
    v19 = bundleIdCopy;
    fetchCopy = fetch;
    v20 = idCopy;
    [v15 runWithLockAcquired:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)popFeedbackForSession:(id)session
{
  sessionCopy = session;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v4 = +[_PSEnsembleModel _feedbackDictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42___PSEnsembleModel_popFeedbackForSession___block_invoke;
  v8[3] = &unk_1E7C24808;
  v10 = &v11;
  v5 = sessionCopy;
  v9 = v5;
  [v4 runWithLockAcquired:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)loadPSConfigPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v13 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5 error:&v13];
  v7 = v13;
  if (!v6)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel loadPSConfigPath:];
    }
  }

  v9 = [(_PSEnsembleModel *)self loadPSConfig:v6];
  if (v9)
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = pathCopy;
      _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_INFO, "Trial: loaded psConfig from:%@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)loadPSConfig:(id)config
{
  configCopy = config;
  objc_storeStrong(&self->_psConfig, config);
  psConfig = self->_psConfig;
  if (psConfig)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [configCopy objectForKeyedSubscript:v8];

    v10 = [v9 objectForKeyedSubscript:@"maxCandidatesFromShareSheetCache"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_1F2D8B178;
    }

    [(_PSEnsembleModel *)self setMaxCandidatesFromShareSheetCache:v12];

    v13 = [v9 objectForKeyedSubscript:@"maxCandidatesFromMessageCache"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_1F2D8B178;
    }

    [(_PSEnsembleModel *)self setMaxCandidatesFromMessageCache:v15];

    v16 = [v9 objectForKeyedSubscript:@"useSyntheticSharingInteractions"];
    -[_PSEnsembleModel setUseSyntheticSharingInteractions:](self, "setUseSyntheticSharingInteractions:", [v16 BOOLValue]);

    if ([(_PSEnsembleModel *)self useSyntheticSharingInteractions])
    {
      v17 = &unk_1F2D8C0D8;
    }

    else
    {
      v17 = &unk_1F2D8C0F0;
    }

    objc_storeStrong(&self->_shareSheetMechanisms, v17);
    messageDirections = self->_messageDirections;
    self->_messageDirections = &unk_1F2D8C108;

    messageMechanism = self->_messageMechanism;
    self->_messageMechanism = &unk_1F2D8B220;

    allOtherInteractionCacheDirections = self->_allOtherInteractionCacheDirections;
    self->_allOtherInteractionCacheDirections = &unk_1F2D8C120;

    allOtherInteractionCacheMechanism = self->_allOtherInteractionCacheMechanism;
    self->_allOtherInteractionCacheMechanism = &unk_1F2D8C138;

    knnModel = [(_PSEnsembleModel *)self knnModel];

    if (knnModel)
    {
      knnModel2 = [(_PSEnsembleModel *)self knnModel];
      [knnModel2 updateModelProperties:self->_psConfig];
    }

    knnMapsModel = [(_PSEnsembleModel *)self knnMapsModel];

    if (knnMapsModel)
    {
      knnMapsModel2 = [(_PSEnsembleModel *)self knnMapsModel];
      [knnMapsModel2 updateModelProperties:self->_psConfig];
    }

    knnZkwModel = [(_PSEnsembleModel *)self knnZkwModel];

    if (knnZkwModel)
    {
      knnZkwModel2 = [(_PSEnsembleModel *)self knnZkwModel];
      [knnZkwModel2 updateModelProperties:self->_psConfig];
    }

    knnNameOrContactRankerModel = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];

    if (knnNameOrContactRankerModel)
    {
      knnNameOrContactRankerModel2 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
      [knnNameOrContactRankerModel2 updateModelProperties:self->_psConfig];
    }

    heuristics = [(_PSEnsembleModel *)self heuristics];

    if (heuristics)
    {
      heuristics2 = [(_PSEnsembleModel *)self heuristics];
      [heuristics2 updateModelProperties:self->_psConfig];
    }
  }

  return psConfig != 0;
}

- (void)updateTrialID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [dCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412546;
    v17 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(dCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          reasonType = [v10 reasonType];
          reason = [v10 reason];
          *buf = v17;
          v23 = reasonType;
          v24 = 2112;
          v25 = reason;
          _os_log_debug_impl(&dword_1B5ED1000, v11, OS_LOG_TYPE_DEBUG, "Suggestion ReasonType:%@, Reason:%@", buf, 0x16u);
        }

        trialID = [(_PSEnsembleModel *)self trialID];
        v13 = [trialID copy];
        [v10 setTrialID:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [dCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)registerWithTrial
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getTRIClientClass_softClass;
  v20 = getTRIClientClass_softClass;
  if (!getTRIClientClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getTRIClientClass_block_invoke;
    v15 = &unk_1E7C23BF0;
    v16 = &v17;
    __getTRIClientClass_block_invoke(buf);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = [v3 clientWithIdentifier:210];
  trialClient = self->_trialClient;
  self->_trialClient = v5;

  if (self->_trialClient)
  {
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_INFO, "Trial: get trial client", buf, 2u);
    }

    [(_PSEnsembleModel *)self updateFactorLevels];
    objc_initWeak(buf, self);
    v8 = self->_trialClient;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37___PSEnsembleModel_registerWithTrial__block_invoke;
    v10[3] = &unk_1E7C24830;
    objc_copyWeak(&v11, buf);
    v9 = [(TRIClient *)v8 addUpdateHandlerForNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER" usingBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)updateFactorLevels
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)coreMLModelNeedsDurableFeatures
{
  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"coreMLModelNeedsDurableFeatures" withNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TRIClient *)self->_trialClient levelForFactor:@"coreMLModelNeedsDurableFeatures" withNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];
  bOOLeanValue = [v4 BOOLeanValue];

  return bOOLeanValue;
}

- (NSArray)defaultContactKeysToFetch
{
  os_unfair_lock_lock(&self->_lock);
  defaultContactKeysToFetch = self->_defaultContactKeysToFetch;
  if (!defaultContactKeysToFetch)
  {
    v4 = _PSDefaultContactKeysToFetch();
    v5 = self->_defaultContactKeysToFetch;
    self->_defaultContactKeysToFetch = v4;

    defaultContactKeysToFetch = self->_defaultContactKeysToFetch;
  }

  v6 = defaultContactKeysToFetch;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)populateCaches
{
  fetchShareSheetSupportedBundleIDs = [(_PSEnsembleModel *)self fetchShareSheetSupportedBundleIDs];
  [(_PSEnsembleModel *)self populateCachesWithSupportedBundleIDs:fetchShareSheetSupportedBundleIDs];
}

- (void)populateCachesWithSupportedBundleIDs:(id)ds
{
  v166[3] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_populateCachesWithSupportedBundleIDs", " enableTelemetry=YES ", buf, 2u);
  }

  interactionStore = [(_PSEnsembleModel *)self interactionStore];
  contactStore = [(_PSEnsembleModel *)self contactStore];
  knowledgeStore = [(_PSEnsembleModel *)self knowledgeStore];
  v7 = [_PSContactResolver alloc];
  defaultContactKeysToFetch = [(_PSEnsembleModel *)self defaultContactKeysToFetch];
  v145 = contactStore;
  v9 = [(_PSContactResolver *)v7 initWithContactStore:contactStore keysToFetch:defaultContactKeysToFetch];
  [(_PSEnsembleModel *)self setContactResolver:v9];

  os_unfair_lock_lock(&self->_populateCacheLock);
  v10 = [MEMORY[0x1E695DFD8] setWithArray:dsCopy];
  cachedSupportedBundleIDs = [(_PSEnsembleModel *)self cachedSupportedBundleIDs];
  if (cachedSupportedBundleIDs && (v12 = cachedSupportedBundleIDs, -[_PSEnsembleModel cachedSupportedBundleIDs](self, "cachedSupportedBundleIDs"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v10 isSubsetOfSet:v13], v13, v12, (v14 & 1) == 0))
  {
    v15 = dsCopy;
    [(_PSEnsembleModel *)self setMessageInteractionCache:0];
    [(_PSEnsembleModel *)self setShareInteractionCache:0];
  }

  else
  {
    v15 = dsCopy;
    v16 = [v10 copy];
    [(_PSEnsembleModel *)self setCachedSupportedBundleIDs:v16];
  }

  v17 = [v10 mutableCopy];
  v18 = +[_PSConstants mobileMailBundleId];
  [v17 removeObject:v18];

  v19 = self->_shareSheetMechanisms;
  v20 = self->_messageDirections;
  v21 = self->_messageMechanism;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v161[0] = MEMORY[0x1E69E9820];
  v161[1] = 3221225472;
  v161[2] = __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke;
  v161[3] = &unk_1E7C24858;
  v23 = v20;
  v162 = v23;
  v24 = v21;
  v163 = v24;
  v25 = v10;
  v164 = v25;
  v26 = MEMORY[0x1B8C8C060](v161);
  v157[0] = MEMORY[0x1E69E9820];
  v157[1] = 3221225472;
  v157[2] = __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_2;
  v157[3] = &unk_1E7C24858;
  v27 = v23;
  v158 = v27;
  v143 = v19;
  v159 = v143;
  v144 = v25;
  v160 = v144;
  v146 = MEMORY[0x1B8C8C060](v157);
  messageInteractionCache = [(_PSEnsembleModel *)self messageInteractionCache];

  v141 = v17;
  v142 = v26;
  if (messageInteractionCache)
  {
    v29 = 0;
  }

  else
  {
    v30 = MEMORY[0x1E696AE18];
    v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-14515200.0];
    v32 = [v30 predicateWithFormat:@"(startDate >= %@)", v31];
    [v22 addObject:v32];

    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", v27];
    [v22 addObject:v33];

    v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", v24];
    [v22 addObject:v34];

    v35 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v17];
    [v22 addObject:v35];

    v29 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v22];
    v36 = [_PSInteractionStoreUtils interactionCacheFromStore:interactionStore size:350 queryPredicate:v29 filterBlock:v26];
    [(_PSEnsembleModel *)self setMessageInteractionCache:v36];
  }

  shareInteractionCache = [(_PSEnsembleModel *)self shareInteractionCache];

  v38 = v15;
  if (shareInteractionCache)
  {
    v139 = 0;
    v39 = interactionStore;
  }

  else
  {
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);

    v41 = MEMORY[0x1E696AE18];
    v42 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-14515200.0];
    v43 = [v41 predicateWithFormat:@"(startDate >= %@)", v42];
    [v40 addObject:v43];

    v143 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", v143];
    [v40 addObject:v143];

    v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", v27];
    [v40 addObject:v45];

    v144 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(targetBundleId IN %@)", v144];
    [v40 addObject:v144];

    [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v40];
    v139 = v39 = interactionStore;
    v47 = [_PSInteractionStoreUtils interactionCacheFromStore:"interactionCacheFromStore:size:queryPredicate:filterBlock:" size:interactionStore queryPredicate:350 filterBlock:?];
    [(_PSEnsembleModel *)self setShareInteractionCache:v47];

    v22 = v40;
  }

  v138 = v27;
  v140 = v24;
  contactMonitor = [(_PSEnsembleModel *)self contactMonitor];

  if (!contactMonitor)
  {
    v49 = [[_PSInteractionAndContactMonitor alloc] initWithInteractionStore:v39 contactStore:contactStore];
    [(_PSEnsembleModel *)self setContactMonitor:v49];

    v50 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v51 = dispatch_queue_create("com.apple.PeopleSuggester.ContactMonitor", v50);

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_3;
    block[3] = &unk_1E7C24268;
    block[4] = self;
    dispatch_async(v51, block);
  }

  knnModel = [(_PSEnsembleModel *)self knnModel];
  if (!knnModel)
  {
    goto LABEL_17;
  }

  v53 = knnModel;
  v54 = MEMORY[0x1E695DFD8];
  knnModel2 = [(_PSEnsembleModel *)self knnModel];
  [knnModel2 filterBundleIds];
  v57 = v56 = v38;
  v58 = [v54 setWithArray:v57];
  [MEMORY[0x1E695DFD8] setWithArray:v56];
  v59 = v22;
  v61 = v60 = v29;
  v62 = [v58 isEqualToSet:v61];

  v29 = v60;
  v22 = v59;

  v38 = v56;
  v39 = interactionStore;

  if ((v62 & 1) == 0)
  {
LABEL_17:
    v63 = [_PSKNNModel alloc];
    contactResolver = [(_PSEnsembleModel *)self contactResolver];
    messageInteractionCache2 = [(_PSEnsembleModel *)self messageInteractionCache];
    shareInteractionCache2 = [(_PSEnsembleModel *)self shareInteractionCache];
    v67 = [(_PSKNNModel *)v63 initWithK:100 interactionStore:v39 filterByBundleIds:v38 knowledgeStore:knowledgeStore contactResolver:contactResolver messageInteractionCache:messageInteractionCache2 shareInteractionCache:shareInteractionCache2];
    [(_PSEnsembleModel *)self setKnnModel:v67];

    knnModel3 = [(_PSEnsembleModel *)self knnModel];
    psConfig = [(_PSEnsembleModel *)self psConfig];
    [knnModel3 updateModelProperties:psConfig];
  }

  knnZkwModel = [(_PSEnsembleModel *)self knnZkwModel];

  v71 = knowledgeStore;
  if (!knnZkwModel)
  {
    v72 = [_PSKNNModel alloc];
    contactResolver2 = [(_PSEnsembleModel *)self contactResolver];
    messageInteractionCache3 = [(_PSEnsembleModel *)self messageInteractionCache];
    shareInteractionCache3 = [(_PSEnsembleModel *)self shareInteractionCache];
    v76 = [(_PSKNNModel *)v72 initWithK:500 interactionStore:v39 filterByBundleIds:v38 knowledgeStore:knowledgeStore contactResolver:contactResolver2 messageInteractionCache:messageInteractionCache3 shareInteractionCache:shareInteractionCache3];
    [(_PSEnsembleModel *)self setKnnZkwModel:v76];

    knnZkwModel2 = [(_PSEnsembleModel *)self knnZkwModel];
    psConfig2 = [(_PSEnsembleModel *)self psConfig];
    [knnZkwModel2 updateModelProperties:psConfig2];

    zkwFTOrchestrator = [(_PSEnsembleModel *)self zkwFTOrchestrator];
    if (zkwFTOrchestrator)
    {
    }

    else if (getuid())
    {
      v80 = [_PSFTZKWOrchestrator alloc];
      knnZkwModel3 = [(_PSEnsembleModel *)self knnZkwModel];
      v82 = [(_PSFTZKWOrchestrator *)v80 initWithKNNModel:knnZkwModel3 interactionStore:v39];
      [(_PSEnsembleModel *)self setZkwFTOrchestrator:v82];

      v155[0] = MEMORY[0x1E69E9820];
      v155[1] = 3221225472;
      v155[2] = __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_4;
      v155[3] = &unk_1E7C24880;
      v155[4] = self;
      [_PSFTZKWTrialWrapper runWithData:v155];
      zkwFTOrchestrator2 = [(_PSEnsembleModel *)self zkwFTOrchestrator];
      [zkwFTOrchestrator2 populateCaches];
    }
  }

  knnSiriNLContactRankerModel = [(_PSEnsembleModel *)self knnSiriNLContactRankerModel];

  if (!knnSiriNLContactRankerModel)
  {
    v85 = [_PSKNNModel alloc];
    contactResolver3 = [(_PSEnsembleModel *)self contactResolver];
    messageInteractionCache4 = [(_PSEnsembleModel *)self messageInteractionCache];
    shareInteractionCache4 = [(_PSEnsembleModel *)self shareInteractionCache];
    v89 = [(_PSKNNModel *)v85 initWithK:2000 interactionStore:v39 filterByBundleIds:v38 knowledgeStore:knowledgeStore contactResolver:contactResolver3 messageInteractionCache:messageInteractionCache4 shareInteractionCache:shareInteractionCache4];
    [(_PSEnsembleModel *)self setKnnSiriNLContactRankerModel:v89];

    knnSiriNLContactRankerModel2 = [(_PSEnsembleModel *)self knnSiriNLContactRankerModel];
    psConfig3 = [(_PSEnsembleModel *)self psConfig];
    [knnSiriNLContactRankerModel2 updateModelProperties:psConfig3];
  }

  heuristics = [(_PSEnsembleModel *)self heuristics];

  if (!heuristics)
  {
    v93 = [_PSHeuristics alloc];
    contactResolver4 = [(_PSEnsembleModel *)self contactResolver];
    cachedSupportedBundleIDs2 = [(_PSEnsembleModel *)self cachedSupportedBundleIDs];
    messageInteractionCache5 = [(_PSEnsembleModel *)self messageInteractionCache];
    v97 = [(_PSHeuristics *)v93 initWithKnowledgeStore:knowledgeStore interactionStore:v39 contactResolver:contactResolver4 shareSheetSupportedBundleIds:cachedSupportedBundleIDs2 messageInteractionCache:messageInteractionCache5];
    [(_PSEnsembleModel *)self setHeuristics:v97];

    heuristics2 = [(_PSEnsembleModel *)self heuristics];
    psConfig4 = [(_PSEnsembleModel *)self psConfig];
    [heuristics2 updateModelProperties:psConfig4];
  }

  coreMLScoringModel = [(_PSEnsembleModel *)self coreMLScoringModel];
  v101 = v140;
  v102 = v142;
  if (!coreMLScoringModel)
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_31;
    }

    coreMLScoringModel = objc_alloc_init(_PSCoreMLScoringModel);
    [(_PSEnsembleModel *)self setCoreMLScoringModel:coreMLScoringModel];
  }

LABEL_31:
  if (_os_feature_enabled_impl())
  {
    v103 = v141;
    if (self->_featureCache)
    {
      v104 = v22;
    }

    else
    {
      v105 = self->_allOtherInteractionCacheMechanism;
      v106 = self->_allOtherInteractionCacheDirections;
      v104 = objc_alloc_init(MEMORY[0x1E695DF70]);

      v107 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
      v108 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-14515200.0];
      v107 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate <= %@)", v107];
      [v104 addObject:v107];

      v136 = v108;
      v108 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%@ <= startDate)", v108];
      [v104 addObject:v108];

      v106 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", v106];
      [v104 addObject:v106];

      v112 = v105;
      v105 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", v105];
      [v104 addObject:v105];

      v114 = MEMORY[0x1E696AE18];
      v115 = +[_PSConstants contactsAutocompleteBundleId];
      v115 = [v114 predicateWithFormat:@"(bundleId != %@)", v115];
      [v104 addObject:v115];

      if (v139)
      {
        v117 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:?];
        [v104 addObject:v117];
      }

      v137 = v38;
      if (v29)
      {
        v118 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v29];
        [v104 addObject:v118];
      }

      v135 = v29;
      v119 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v104];
      v149[0] = MEMORY[0x1E69E9820];
      v149[1] = 3221225472;
      v149[2] = __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_5;
      v149[3] = &unk_1E7C248A8;
      v153 = v142;
      v154 = v146;
      v134 = v106;
      v150 = v134;
      v120 = v112;
      v151 = v120;
      v133 = v107;
      v152 = v133;
      v121 = [_PSInteractionStoreUtils interactionCacheFromStore:interactionStore size:100 queryPredicate:v119 filterBlock:v149];
      allOtherInteractionCache = self->_allOtherInteractionCache;
      self->_allOtherInteractionCache = v121;

      v123 = [_PSFeatureCache alloc];
      candidatesForShareSheetRanking = [(_PSEnsembleModel *)self candidatesForShareSheetRanking];
      messageInteractionCache6 = [(_PSEnsembleModel *)self messageInteractionCache];
      v166[0] = messageInteractionCache6;
      shareInteractionCache5 = [(_PSEnsembleModel *)self shareInteractionCache];
      v166[1] = shareInteractionCache5;
      allOtherInteractionCache = [(_PSEnsembleModel *)self allOtherInteractionCache];
      v166[2] = allOtherInteractionCache;
      v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:3];
      v129 = [(_PSFeatureCache *)v123 initWithPredictionContext:0 candidates:candidatesForShareSheetRanking caches:v128 store:self->_interactionStore];
      featureCache = self->_featureCache;
      self->_featureCache = v129;

      v131 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v131))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v131, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_populateCachesWithSupportedBundleIDs", &unk_1B5FD970D, buf, 2u);
      }

      v38 = v137;
      v71 = knowledgeStore;
      v39 = interactionStore;
      v101 = v140;
      v103 = v141;
      v102 = v142;
      v29 = v135;
    }
  }

  else
  {
    v104 = v22;
    v103 = v141;
  }

  os_unfair_lock_unlock(&self->_populateCacheLock);

  v132 = *MEMORY[0x1E69E9840];
}

- (void)intializeKNNContactRankerModelWithInteractionStore:(id)store knowledgeStore:(id)knowledgeStore
{
  storeCopy = store;
  knowledgeStoreCopy = knowledgeStore;
  knnNameOrContactRankerModel = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];

  if (!knnNameOrContactRankerModel)
  {
    fetchShareSheetSupportedBundleIDs = [(_PSEnsembleModel *)self fetchShareSheetSupportedBundleIDs];
    v9 = [_PSKNNModel alloc];
    contactResolver = [(_PSEnsembleModel *)self contactResolver];
    messageInteractionCache = [(_PSEnsembleModel *)self messageInteractionCache];
    shareInteractionCache = [(_PSEnsembleModel *)self shareInteractionCache];
    v13 = [(_PSKNNModel *)v9 initWithK:500 interactionStore:storeCopy filterByBundleIds:fetchShareSheetSupportedBundleIDs knowledgeStore:knowledgeStoreCopy contactResolver:contactResolver messageInteractionCache:messageInteractionCache shareInteractionCache:shareInteractionCache];
    [(_PSEnsembleModel *)self setKnnNameOrContactRankerModel:v13];

    knnNameOrContactRankerModel2 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
    psConfig = [(_PSEnsembleModel *)self psConfig];
    [knnNameOrContactRankerModel2 updateModelProperties:psConfig];
  }
}

- (void)refreshCaches
{
  zkwFTOrchestrator = [(_PSEnsembleModel *)self zkwFTOrchestrator];

  if (zkwFTOrchestrator)
  {
    zkwFTOrchestrator2 = [(_PSEnsembleModel *)self zkwFTOrchestrator];
    [zkwFTOrchestrator2 populateCaches];
  }
}

- (void)freeCachesIfNotCoreDuetDaemon
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v5 = +[_PSConstants mobileCoreDuetBundleId];
  if ([bundleIdentifier isEqual:v5])
  {
  }

  else
  {
    v6 = +[_PSConstants macKnowledgeAgentBundleId];
    v7 = [bundleIdentifier isEqual:v6];

    if ((v7 & 1) == 0)
    {
      [(_PSEnsembleModel *)self freeCaches];
      goto LABEL_8;
    }
  }

  v8 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "Not freeing caches because we're coreduetd or knowledge-agent", v9, 2u);
  }

LABEL_8:
}

- (void)freeCaches
{
  os_unfair_lock_lock(&self->_populateCacheLock);
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "Freeing caches now to save memory", v5, 2u);
  }

  [(_PSEnsembleModel *)self setMessageInteractionCache:0];
  [(_PSEnsembleModel *)self setShareInteractionCache:0];
  [(_PSEnsembleModel *)self setAllOtherInteractionCache:0];
  [(_PSEnsembleModel *)self setContactMonitor:0];
  [(_PSEnsembleModel *)self setKnnModel:0];
  [(_PSEnsembleModel *)self setKnnZkwModel:0];
  [(_PSEnsembleModel *)self setZkwFTOrchestrator:0];
  [(_PSEnsembleModel *)self setKnnNameOrContactRankerModel:0];
  [(_PSEnsembleModel *)self setKnnSiriNLContactRankerModel:0];
  [(_PSEnsembleModel *)self setHeuristics:0];
  [(_PSEnsembleModel *)self setCoreMLScoringModel:0];
  featureCache = self->_featureCache;
  self->_featureCache = 0;

  os_unfair_lock_unlock(&self->_populateCacheLock);
}

- (id)predictWithPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(contextCopy, "showPotentialFamilyMembers")}];
    bundleID = [contextCopy bundleID];
    attachments = [contextCopy attachments];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(contextCopy, "isSharePlayAvailable")}];
    v18 = 138413058;
    v19 = v8;
    v20 = 2112;
    v21 = bundleID;
    v22 = 2112;
    v23 = attachments;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, "Prediction Context - Family: %@, Bundle Id: %@, Attachments: %@, SharePlay: %@", &v18, 0x2Au);
  }

  if ([contextCopy showPotentialFamilyMembers])
  {
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "iCloud Family Suggestions Active", &v18, 2u);
    }

    v13 = [(_PSEnsembleModel *)self familyPredictionsWithMaxSuggestions:suggestions predictionContext:contextCopy];
  }

  else
  {
    v13 = [(_PSEnsembleModel *)self predictWithPredictionContext:contextCopy maxSuggestions:suggestions contactKeysToFetch:0];
  }

  v14 = v13;
  v15 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138477827;
    v19 = v14;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "Final ShareSheet suggestions: %{private}@", &v18, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)familyPredictionsWithMaxSuggestions:(unint64_t)suggestions predictionContext:(id)context
{
  contextCopy = context;
  v6 = objc_alloc_init(_PSFamilyRecommender);
  v7 = [(_PSFamilyRecommender *)v6 familyRecommendationSuggestionsForShareSheetWithPredictionContext:contextCopy];

  v8 = [v7 count];
  if (v8 >= suggestions)
  {
    suggestionsCopy = suggestions;
  }

  else
  {
    suggestionsCopy = v8;
  }

  v10 = [v7 subarrayWithRange:{0, suggestionsCopy}];

  return v10;
}

- (id)fetchSupportedBundleIDsWithPredictionContextFilters:(id)filters
{
  filtersCopy = filters;
  fetchShareSheetSupportedBundleIDs = [(_PSEnsembleModel *)self fetchShareSheetSupportedBundleIDs];
  v6 = [fetchShareSheetSupportedBundleIDs mutableCopy];

  if (([filtersCopy isSharePlayAvailable] & 1) == 0)
  {
    v7 = +[_PSConstants sharePlayBundleId];
    [v6 removeObject:v7];
  }

  suggestionsFilteredByBundleIds = [filtersCopy suggestionsFilteredByBundleIds];
  v9 = [suggestionsFilteredByBundleIds count];

  if (v9)
  {
    v10 = objc_opt_new();
    suggestionsFilteredByBundleIds2 = [filtersCopy suggestionsFilteredByBundleIds];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __72___PSEnsembleModel_fetchSupportedBundleIDsWithPredictionContextFilters___block_invoke;
    v18 = &unk_1E7C248D0;
    v6 = v6;
    v19 = v6;
    v12 = v10;
    v20 = v12;
    [suggestionsFilteredByBundleIds2 enumerateObjectsUsingBlock:&v15];

    if ([v12 count])
    {
      v13 = v12;

      v6 = v13;
    }
  }

  return v6;
}

- (id)getPhotoBasedFeaturesAsync:(id)async shouldProcessPicturesLive:(BOOL)live shouldUseVIPModel:(BOOL)model withTimeout:(double)timeout
{
  liveCopy = live;
  modelCopy = model;
  asyncCopy = async;
  date = [MEMORY[0x1E695DF00] date];
  v8 = +[_PSLogging suggestionSignpost];
  v9 = os_signpost_id_generate(v8);

  v10 = +[_PSLogging suggestionSignpost];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "_PSEnsembleModel_getPhotoBasedFeatures", " enableTelemetry=YES ", buf, 2u);
  }

  bundleID = [asyncCopy bundleID];
  v12 = +[_PSLogging suggestionSignpost];
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "_PSEnsembleModel_getPhotoBasedFeatures_personIDsOfPeopleInSharedPhotoAssets", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = dispatch_group_create();
  queue = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"getPhotoBasedFeaturesAsync"];
  attachments = [asyncCopy attachments];
  v16 = [_PSPhotoUtils attachmentsEligibleForPhotoProcessingFromAttachments:attachments];

  firstObject = [v16 firstObject];
  dispatch_group_enter(v14);
  sessionID = [asyncCopy sessionID];
  currentSpanId = [asyncCopy currentSpanId];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __103___PSEnsembleModel_getPhotoBasedFeaturesAsync_shouldProcessPicturesLive_shouldUseVIPModel_withTimeout___block_invoke;
  v45[3] = &unk_1E7C248F8;
  v49 = v9;
  v20 = asyncCopy;
  v46 = v20;
  v21 = firstObject;
  v47 = v21;
  v22 = v14;
  v48 = v22;
  v23 = [_PSPhotoSuggestions phPersonIdentifiersOfPeopleInSharedPhotoAttachments:v16 forBundleID:bundleID shouldProcessPicturesLive:liveCopy shouldUseVIPModel:modelCopy withTraceID:sessionID withSpanID:currentSpanId withCompletion:v45];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103___PSEnsembleModel_getPhotoBasedFeaturesAsync_shouldProcessPicturesLive_shouldUseVIPModel_withTimeout___block_invoke_422;
  block[3] = &unk_1E7C24920;
  v43 = v20;
  v44 = v9;
  v42 = v21;
  v24 = v20;
  v25 = v21;
  dispatch_group_async(v22, queue, block);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __103___PSEnsembleModel_getPhotoBasedFeaturesAsync_shouldProcessPicturesLive_shouldUseVIPModel_withTimeout___block_invoke_423;
  v36[3] = &unk_1E7C24948;
  timeoutCopy = timeout;
  v37 = date;
  v38 = v22;
  v39 = v23;
  v26 = v23;
  v27 = v22;
  v28 = date;
  v29 = MEMORY[0x1B8C8C060](v36);

  return v29;
}

- (void)getCoreMLSuggestionProxiesWithPredictionContext:(id)context modelSuggestionProxiesDict:(id)dict candidateToFeatureVectorDictGetter:(id)getter
{
  contextCopy = context;
  dictCopy = dict;
  getterCopy = getter;
  v11 = [dictCopy objectForKeyedSubscript:@"coreMLSuggestionProxies"];
  if (v11)
  {
    v12 = v11;
    v13 = _os_feature_enabled_impl();

    if (v13)
    {
      v14 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetCoreMLSuggestions", " enableTelemetry=YES ", buf, 2u);
      }

      coreMLScoringModel = [(_PSEnsembleModel *)self coreMLScoringModel];
      messageInteractionCache = [(_PSEnsembleModel *)self messageInteractionCache];
      shareInteractionCache = [(_PSEnsembleModel *)self shareInteractionCache];
      v18 = [coreMLScoringModel getSuggestionProxiesForCandidateToFeatureVectorDictGetter:getterCopy predictionContext:contextCopy messageInteractionCache:messageInteractionCache shareInteractionCache:shareInteractionCache];
      [dictCopy setObject:v18 forKeyedSubscript:@"coreMLSuggestionProxies"];

      v19 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v19))
      {
        *v20 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetCoreMLSuggestions", &unk_1B5FD970D, v20, 2u);
      }
    }
  }
}

- (void)getHeuristicSuggestionProxies:(id)proxies supportedBundleIDs:(id)ds modelSuggestionProxiesDict:(id)dict
{
  proxiesCopy = proxies;
  dsCopy = ds;
  dictCopy = dict;
  v11 = [dictCopy objectForKeyedSubscript:@"hyperRecentSuggestionProxies"];

  if (v11)
  {
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getHeuristicSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v13 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleHyperRecencyHeuristic", " enableTelemetry=YES ", buf, 2u);
    }

    heuristics = [(_PSEnsembleModel *)self heuristics];
    suggestionDate = [proxiesCopy suggestionDate];
    bundleID = [proxiesCopy bundleID];
    v17 = [heuristics hyperRecentHeuristicSuggestionProxiesWithReferenceDate:suggestionDate predictionContextBundleId:bundleID];
    [dictCopy setObject:v17 forKeyedSubscript:@"hyperRecentSuggestionProxies"];

    v18 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v18))
    {
      *v35 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleHyperRecencyHeuristic", &unk_1B5FD970D, v35, 2u);
    }
  }

  v19 = [dictCopy objectForKeyedSubscript:@"inPhoneCallSuggestionProxies"];

  if (v19)
  {
    v20 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getHeuristicSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v21 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v21))
    {
      *v34 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleInPhoneCallHeuristic", " enableTelemetry=YES ", v34, 2u);
    }

    heuristics2 = [(_PSEnsembleModel *)self heuristics];
    v23 = [heuristics2 inPhoneCallHeuristicSuggestionProxiesWithBundleIds:dsCopy predictionContext:proxiesCopy];
    [dictCopy setObject:v23 forKeyedSubscript:@"inPhoneCallSuggestionProxies"];

    v24 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v24))
    {
      *v33 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleInPhoneCallHeuristic", &unk_1B5FD970D, v33, 2u);
    }
  }

  v25 = [dictCopy objectForKeyedSubscript:@"returnDocumentToSenderSuggestionProxies"];

  if (v25)
  {
    v26 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getHeuristicSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v27 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v27))
    {
      *v32 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v27, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetReturnToSenderHeuristic", " enableTelemetry=YES ", v32, 2u);
    }

    heuristics3 = [(_PSEnsembleModel *)self heuristics];
    v29 = [heuristics3 returnDocumentToSender:proxiesCopy];
    [dictCopy setObject:v29 forKeyedSubscript:@"returnDocumentToSenderSuggestionProxies"];

    v30 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v30))
    {
      *v31 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetReturnToSenderHeuristic", &unk_1B5FD970D, v31, 2u);
    }
  }
}

- (void)getKnnSuggestionProxies:(id)proxies supportedBundleIDs:(id)ds modelSuggestionProxiesDict:(id)dict
{
  proxiesCopy = proxies;
  dictCopy = dict;
  v9 = [dictCopy objectForKeyedSubscript:@"knnSuggestionProxies"];

  if (v9)
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v11 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v11))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", " enableTelemetry=YES ", v45, 2u);
    }

    knnModel = [(_PSEnsembleModel *)self knnModel];
    v13 = [knnModel suggestionProxiesWithPredictionContext:proxiesCopy];
    [dictCopy setObject:v13 forKeyedSubscript:@"knnSuggestionProxies"];

    v14 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v14))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v15 = [dictCopy objectForKeyedSubscript:@"knnSuggestionBasedOnSharesAllProxies"];

  if (v15)
  {
    v16 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v17 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v17))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", " enableTelemetry=YES ", v45, 2u);
    }

    knnModel2 = [(_PSEnsembleModel *)self knnModel];
    v19 = [knnModel2 suggestionProxiesBasedOnSharingInteractionsWithPredictionContext:proxiesCopy withOnlyTopShares:0 withFilterOutNonMatchingSourceBundleIDs:0];
    [dictCopy setObject:v19 forKeyedSubscript:@"knnSuggestionBasedOnSharesAllProxies"];

    v20 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v20))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v21 = [dictCopy objectForKeyedSubscript:@"knnSuggestionBasedOnSharesTopProxies"];

  if (v21)
  {
    v22 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v23 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v23))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", " enableTelemetry=YES ", v45, 2u);
    }

    knnModel3 = [(_PSEnsembleModel *)self knnModel];
    v25 = [knnModel3 suggestionProxiesBasedOnSharingInteractionsWithPredictionContext:proxiesCopy withOnlyTopShares:1 withFilterOutNonMatchingSourceBundleIDs:0];
    [dictCopy setObject:v25 forKeyedSubscript:@"knnSuggestionBasedOnSharesTopProxies"];

    v26 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v26))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v27 = [dictCopy objectForKeyedSubscript:@"knnSuggestionBasedOnSharesAllAndAppFilterOnProxies"];

  if (v27)
  {
    v28 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v29 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v29))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v29, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", " enableTelemetry=YES ", v45, 2u);
    }

    knnModel4 = [(_PSEnsembleModel *)self knnModel];
    v31 = [knnModel4 suggestionProxiesBasedOnSharingInteractionsWithPredictionContext:proxiesCopy withOnlyTopShares:0 withFilterOutNonMatchingSourceBundleIDs:1];
    [dictCopy setObject:v31 forKeyedSubscript:@"knnSuggestionBasedOnSharesAllAndAppFilterOnProxies"];

    v32 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v32))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v33 = [dictCopy objectForKeyedSubscript:@"knnSuggestionBasedOnSharesTopAndAppFilterOnProxies"];

  if (v33)
  {
    v34 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v35 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v35))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v35, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", " enableTelemetry=YES ", v45, 2u);
    }

    knnModel5 = [(_PSEnsembleModel *)self knnModel];
    v37 = [knnModel5 suggestionProxiesBasedOnSharingInteractionsWithPredictionContext:proxiesCopy withOnlyTopShares:1 withFilterOutNonMatchingSourceBundleIDs:1];
    [dictCopy setObject:v37 forKeyedSubscript:@"knnSuggestionBasedOnSharesTopAndAppFilterOnProxies"];

    v38 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v38))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v39 = [dictCopy objectForKeyedSubscript:@"knnSuggestionBasedOnInteractionsProxies"];

  if (v39)
  {
    v40 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v41 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v41))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v41, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", " enableTelemetry=YES ", v45, 2u);
    }

    knnModel6 = [(_PSEnsembleModel *)self knnModel];
    v43 = [knnModel6 suggestionProxiesBasedOnNonSharingInteractionsWithPredictionContext:proxiesCopy];
    [dictCopy setObject:v43 forKeyedSubscript:@"knnSuggestionBasedOnInteractionsProxies"];

    v44 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v44))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }
}

- (void)getOtherSuggestionProxies:(id)proxies supportedBundleIDs:(id)ds modelSuggestionProxiesDict:(id)dict
{
  dictCopy = dict;
  v7 = [dictCopy objectForKeyedSubscript:@"backFillProxies"];

  if (v7)
  {
    v8 = [_PSHeuristics PSHeuristicsRecencyReasonToString:0];
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getOtherSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    heuristics = [(_PSEnsembleModel *)self heuristics];
    messageInteractionCache = [(_PSEnsembleModel *)self messageInteractionCache];
    interactions = [messageInteractionCache interactions];
    v13 = [heuristics proxiesByRecencyUsingInteractions:interactions startIndex:100 reason:0 allowNonSupportedBundleIDs:{-[_PSEnsembleModel allowNonSupportedBundleIDs](self, "allowNonSupportedBundleIDs")}];
    [dictCopy setObject:v13 forKeyedSubscript:@"backFillProxies"];
  }

  v14 = [dictCopy objectForKeyedSubscript:@"messagesRecencyProxies"];

  if (v14)
  {
    v15 = [_PSHeuristics PSHeuristicsRecencyReasonToString:1];
    v16 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getOtherSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    heuristics2 = [(_PSEnsembleModel *)self heuristics];
    messageInteractionCache2 = [(_PSEnsembleModel *)self messageInteractionCache];
    interactions2 = [messageInteractionCache2 interactions];
    v20 = [heuristics2 proxiesByRecencyUsingInteractions:interactions2 startIndex:0 reason:1 allowNonSupportedBundleIDs:{-[_PSEnsembleModel allowNonSupportedBundleIDs](self, "allowNonSupportedBundleIDs")}];
    [dictCopy setObject:v20 forKeyedSubscript:@"messagesRecencyProxies"];
  }

  v21 = [dictCopy objectForKeyedSubscript:@"shareSheetRecencyProxies"];

  if (v21)
  {
    v22 = [_PSHeuristics PSHeuristicsRecencyReasonToString:2];
    v23 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getOtherSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    heuristics3 = [(_PSEnsembleModel *)self heuristics];
    shareInteractionCache = [(_PSEnsembleModel *)self shareInteractionCache];
    interactions3 = [shareInteractionCache interactions];
    v27 = [heuristics3 proxiesByRecencyUsingInteractions:interactions3 startIndex:0 reason:2 allowNonSupportedBundleIDs:{-[_PSEnsembleModel allowNonSupportedBundleIDs](self, "allowNonSupportedBundleIDs")}];
    [dictCopy setObject:v27 forKeyedSubscript:@"shareSheetRecencyProxies"];
  }
}

- (id)getModelProxiesArrayWithPredictionContext:(id)context
{
  isFallbackFetch = [context isFallbackFetch];
  psConfig = [(_PSEnsembleModel *)self psConfig];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [psConfig objectForKeyedSubscript:v7];
  v9 = v8;
  if (isFallbackFetch)
  {
    v10 = @"fallbackModelProxiesArray";
  }

  else
  {
    v10 = @"modelProxiesArray";
  }

  v11 = [v8 objectForKeyedSubscript:v10];

  return v11;
}

- (id)getModelSuggestionsProxyDictWithModelProxiesArray:(id)array
{
  arrayCopy = array;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel getModelSuggestionsProxyDictWithModelProxiesArray:arrayCopy];
  }

  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = [arrayCopy _pas_mappedArrayWithTransform:&__block_literal_global_438];
  v7 = [v5 initWithObjects:v6 forKeys:arrayCopy];

  return v7;
}

- (id)getMeContactIdentifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  contactStore = [(_PSEnsembleModel *)self contactStore];
  v3 = getCNContactIdentifierKey_0();
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = 0;
  v5 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getMeContactIdentifier];
    }
  }

  if (v5)
  {
    identifier = [v5 identifier];
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel getMeContactIdentifier];
    }

    identifier = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return identifier;
}

- (id)_fallbackPredictionWithPredictionContext:(id)context config:(id)config parentSpanId:(id)id
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  idCopy = id;
  configCopy = config;
  v11 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_fallbackPredictionPipeline", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [AeroMLTracerSession alloc];
  sessionID = [contextCopy sessionID];
  v14 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v15 = [(AeroMLTracerSession *)v12 initWithTraceId:sessionID projectName:v14];

  v16 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sessionID2 = [contextCopy sessionID];
    *buf = 138412290;
    v37 = sessionID2;
    _os_log_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEFAULT, "Reading interaction stats for fallback request sessionID %@", buf, 0xCu);
  }

  v18 = [(AeroMLTracerSession *)v15 createSubSpanWithName:@"getInteractionsStatisticsForConfig" parentSpanId:idCopy];
  [v18 start];
  v19 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSInteractionsStatisticsQuery", " enableTelemetry=YES ", buf, 2u);
  }

  v20 = [[_PSInteractionsStatistics alloc] initWithConfig:configCopy];
  [(_PSInteractionsStatistics *)v20 computeStatisticsWithInteractionStore:self->_interactionStore];
  v21 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSInteractionsStatisticsQuery", &unk_1B5FD970D, buf, 2u);
  }

  queryStats = [(_PSInteractionsStatistics *)v20 queryStats];
  [v18 addAttributes:queryStats];

  [v18 end];
  v23 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel _fallbackPredictionWithPredictionContext:v20 config:? parentSpanId:?];
  }

  v24 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel _fallbackPredictionWithPredictionContext:config:parentSpanId:];
  }

  v25 = [(AeroMLTracerSession *)v15 createSubSpanWithName:@"pruneCandidatesForRanking" parentSpanId:idCopy];
  [v25 start];
  v26 = [(_PSEnsembleModel *)self pruneCandidatesForRanking:v20];
  v34 = @"pruneCount";
  v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%td", v26];
  v35 = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  [v25 addAttributes:v28];

  [v25 end];
  v29 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    conversationIds = [(_PSInteractionsStatistics *)v20 conversationIds];
    *buf = 138477827;
    v37 = conversationIds;
    _os_log_impl(&dword_1B5ED1000, v29, OS_LOG_TYPE_INFO, "Fallback candidates after pruning %{private}@", buf, 0xCu);
  }

  v31 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_fallbackPredictionPipeline", &unk_1B5FD970D, buf, 2u);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_defaultPredictionsWithPredictionContext:(id)context trialClient:(id)client config:(id)config parentSpanId:(id)id
{
  v91 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  clientCopy = client;
  configCopy = config;
  idCopy = id;
  v13 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_defaultPredictionPipeline", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = [AeroMLTracerSession alloc];
  sessionID = [contextCopy sessionID];
  v16 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v17 = [(AeroMLTracerSession *)v14 initWithTraceId:sessionID projectName:v16];

  queryStartDate = [contextCopy queryStartDate];
  v81 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"getPhotoBasedFeaturesAsync" parentSpanId:idCopy];
  v80 = queryStartDate;
  if (([contextCopy isFallbackFetch] & 1) != 0 || !objc_msgSend(clientCopy, "shouldComputePhotoBasedFeatures"))
  {
    v82 = &__block_literal_global_457;
  }

  else
  {
    peopleSuggesterDefaults = [(_PSEnsembleModel *)self peopleSuggesterDefaults];
    [peopleSuggesterDefaults doubleForKey:@"_PSGetPhotoBasedFeaturesTimeout"];
    v21 = v20;
    if (v20 == 0.0)
    {
      [clientCopy maxComputationTime];
      v21 = v22;
    }

    v23 = [queryStartDate dateByAddingTimeInterval:v21];
    [v23 timeIntervalSinceNow];
    v25 = fmax(v24, 0.3);
    v26 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v90 = v25;
      _os_log_impl(&dword_1B5ED1000, v26, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: Remaining photo based features timeout is %f", buf, 0xCu);
    }

    [v81 start];
    v82 = -[_PSEnsembleModel getPhotoBasedFeaturesAsync:shouldProcessPicturesLive:shouldUseVIPModel:withTimeout:](self, "getPhotoBasedFeaturesAsync:shouldProcessPicturesLive:shouldUseVIPModel:withTimeout:", contextCopy, [clientCopy shouldProcessPicturesLive], objc_msgSend(clientCopy, "shouldUseVIPModel"), v25);
  }

  v27 = 0x1E7C23000uLL;
  if (_defaultPredictionsWithPredictionContext_trialClient_config_parentSpanId___pasOnceToken117 != -1)
  {
    [_PSEnsembleModel _defaultPredictionsWithPredictionContext:trialClient:config:parentSpanId:];
  }

  v28 = _defaultPredictionsWithPredictionContext_trialClient_config_parentSpanId___pasExprOnceResult;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___PSEnsembleModel__defaultPredictionsWithPredictionContext_trialClient_config_parentSpanId___block_invoke_2;
  block[3] = &unk_1E7C24268;
  v29 = clientCopy;
  v86 = v29;
  v79 = v28;
  dispatch_async(v28, block);
  v30 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    sessionID2 = [contextCopy sessionID];
    *buf = 138412290;
    v90 = *&sessionID2;
    _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_DEFAULT, "Reading interaction stats for request sessionID %@", buf, 0xCu);
  }

  v32 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"getInteractionsStatisticsForConfig" parentSpanId:idCopy];
  [v32 start];
  v33 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSInteractionsStatisticsQuery", " enableTelemetry=YES ", buf, 2u);
  }

  v34 = [[_PSInteractionsStatistics alloc] initWithConfig:configCopy];
  [(_PSInteractionsStatistics *)v34 computeStatisticsWithInteractionStore:self->_interactionStore];
  v35 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSInteractionsStatisticsQuery", &unk_1B5FD970D, buf, 2u);
  }

  queryStats = [(_PSInteractionsStatistics *)v34 queryStats];
  [v32 addAttributes:queryStats];

  [v32 end];
  v37 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel _fallbackPredictionWithPredictionContext:v34 config:? parentSpanId:?];
  }

  v78 = v32;

  v38 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel _fallbackPredictionWithPredictionContext:config:parentSpanId:];
  }

  v39 = [MEMORY[0x1E695DF00] now];
  queryStartDate2 = [contextCopy queryStartDate];
  [v39 timeIntervalSinceDate:queryStartDate2];
  v42 = v41;
  [v29 maxComputationTime];
  v44 = v43;

  if (v42 > v44)
  {
    v45 = +[_PSConstants suggestionPathBestEffort];
    [contextCopy setSuggestionPath:v45];
  }

  v83 = configCopy;
  peopleSuggesterDefaults2 = [(_PSEnsembleModel *)self peopleSuggesterDefaults];
  -[_PSEnsembleModel setEnablePipelineCheckpointing:](self, "setEnablePipelineCheckpointing:", [peopleSuggesterDefaults2 BOOLForKey:@"enablePipelineCheckpointing"]);

  v47 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    enablePipelineCheckpointing = [(_PSEnsembleModel *)self enablePipelineCheckpointing];
    *buf = 67109120;
    LODWORD(v90) = enablePipelineCheckpointing;
    _os_log_impl(&dword_1B5ED1000, v47, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: enablePipelineCheckpointing = %d", buf, 8u);
  }

  v49 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"logPipeline_interactionsStatisticsCandidate_sourcing" parentSpanId:idCopy];
  [v49 start];
  rankingModel = [v29 rankingModel];
  [(_PSEnsembleModel *)self setupAeroMLPipelineLoggerWithModel:rankingModel];

  sessionID3 = [contextCopy sessionID];
  [(_PSEnsembleModel *)self logPipeline:v34 withPipelineStage:@"candidate_sourcing" andSessionID:sessionID3 andCandidateNames:0];

  v77 = v49;
  [v49 end];
  v52 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"pruneCandidatesForRanking" parentSpanId:idCopy];
  [v52 start];
  v53 = [(_PSEnsembleModel *)self pruneCandidatesForRanking:v34];
  v87 = @"pruneCount";
  v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%td", v53];
  v88 = v54;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
  [v52 addAttributes:v55];

  [v52 end];
  v56 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    conversationIds = [(_PSInteractionsStatistics *)v34 conversationIds];
    *buf = 138477827;
    v90 = *&conversationIds;
    _os_log_impl(&dword_1B5ED1000, v56, OS_LOG_TYPE_INFO, "Candidates after pruning %{private}@", buf, 0xCu);
  }

  if ([v29 shouldComputePhotoBasedFeatures])
  {
    v82[2]();
    sceneTagsInPhotoIdentifiers = [contextCopy sceneTagsInPhotoIdentifiers];
    v59 = [v83 detectedSceneCategoryNamesFromSceneNetTags:sceneTagsInPhotoIdentifiers];

    v60 = objc_autoreleasePoolPush();
    v61 = MEMORY[0x1E695DFD8];
    peopleInPhotoIdentifiers = [contextCopy peopleInPhotoIdentifiers];
    v63 = [v61 setWithArray:peopleInPhotoIdentifiers];

    objc_autoreleasePoolPop(v60);
    [(_PSInteractionsStatistics *)v34 computeContentBasedFeaturesForPersonIdsDetectedInPhoto:v63 sceneCategoriesDetectedInPhoto:v59];
    sessionID4 = [contextCopy sessionID];
    [(_PSEnsembleModel *)self logPipeline:v34 withPipelineStage:@"candidates_with_photo_based_features" andSessionID:sessionID4 andCandidateNames:0];

    v27 = 0x1E7C23000;
  }

  else
  {
    v59 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v59, OS_LOG_TYPE_DEFAULT, "Photo based features disabled by Trial", buf, 2u);
    }
  }

  [v81 end];
  rewriteChannel = [*(v27 + 1360) rewriteChannel];
  if (os_log_type_enabled(rewriteChannel, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel _defaultPredictionsWithPredictionContext:trialClient:config:parentSpanId:];
  }

  v66 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"dynamicFeatureComputationSpan" parentSpanId:idCopy];
  [v66 start];
  suggestionSignpost = [*(v27 + 1360) suggestionSignpost];
  if (os_signpost_enabled(suggestionSignpost))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, suggestionSignpost, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_addDynamicFeaturesToCandidates", " enableTelemetry=YES ", buf, 2u);
  }

  [(_PSInteractionsStatistics *)v34 computeDynamicFeatures];
  v68 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v68))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v68, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_addDynamicFeaturesToCandidates", &unk_1B5FD970D, buf, 2u);
  }

  [v66 end];
  sessionID5 = [contextCopy sessionID];
  [(_PSEnsembleModel *)self logPipeline:v34 withPipelineStage:@"candidates_with_additional_features" andSessionID:sessionID5 andCandidateNames:0];

  v70 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"evaluateCandidates" parentSpanId:idCopy];
  [v70 start];
  rankingModel2 = [v29 rankingModel];
  [(_PSEnsembleModel *)self evaluateCandidates:v34 psrMLModel:rankingModel2];

  [v70 end];
  v72 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v72, OS_LOG_TYPE_DEFAULT, "Ran the features through the coreML model", buf, 2u);
  }

  sessionID6 = [contextCopy sessionID];
  [(_PSEnsembleModel *)self logPipeline:v34 withPipelineStage:@"candidates_with_coreml_output" andSessionID:sessionID6 andCandidateNames:0];

  v74 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v74))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v74, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_defaultPredictionPipeline", &unk_1B5FD970D, buf, 2u);
  }

  v75 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)predictWithPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions contactKeysToFetch:(id)fetch
{
  v144 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_predictWithPredictionContext", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [AeroMLTracerSession alloc];
  sessionID = [contextCopy sessionID];
  v10 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v11 = [(AeroMLTracerSession *)v8 initWithTraceId:sessionID projectName:v10];

  currentSpanId = [contextCopy currentSpanId];
  v122 = v11;
  v13 = [(AeroMLTracerSession *)v11 createSubSpanWithName:@"predictWithPredictionContext" parentSpanId:currentSpanId];

  [v13 start];
  deviceIdentifier = [(_PSEnsembleModel *)self deviceIdentifier];
  [v13 addDeviceIdentifier:deviceIdentifier];

  queryStartDate = [contextCopy queryStartDate];

  if (!queryStartDate)
  {
    v16 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel predictWithPredictionContext:maxSuggestions:contactKeysToFetch:];
    }

    v17 = [MEMORY[0x1E695DF00] now];
    [contextCopy setQueryStartDate:v17];
  }

  queryStartDate2 = [contextCopy queryStartDate];
  v18 = [v13 createSubSpanWithName:@"readTrialInfo"];
  [v18 start];
  v19 = objc_alloc_init(_PSTrialClient);
  getTrialExperiment = [(_PSTrialClient *)v19 getTrialExperiment];
  [(_PSEnsembleModel *)self addTrialInfoToPredictionContext:contextCopy withExperiment:getTrialExperiment];
  shouldActivatePSR = [(_PSTrialClient *)v19 shouldActivatePSR];
  dataCollectionTimeToWaitInSeconds = [(_PSTrialClient *)v19 dataCollectionTimeToWaitInSeconds];
  shouldEnableDataCollection = [(_PSTrialClient *)v19 shouldEnableDataCollection];
  [(_PSTrialClient *)v19 maxComputationTime];
  v118 = v18;
  [v18 end];
  v22 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel predictWithPredictionContext:maxSuggestions:contactKeysToFetch:];
  }

  v129 = v19;

  v23 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sessionID2 = [contextCopy sessionID];
    [getTrialExperiment experimentId];
    v26 = v25 = shouldActivatePSR;
    deploymentId = [getTrialExperiment deploymentId];
    treatmentId = [getTrialExperiment treatmentId];
    *buf = 138413058;
    v137 = sessionID2;
    v138 = 2112;
    v139 = v26;
    v140 = 1024;
    v141 = deploymentId;
    v142 = 2112;
    v143 = treatmentId;
    _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: Getting suggestions for ShareSheet session %@ (trial experimentId: %@ deploymentId: %d treatmentId: %@)", buf, 0x26u);

    shouldActivatePSR = v25;
  }

  v117 = getTrialExperiment;

  [contextCopy setIsPSRActive:1];
  [contextCopy setReasonType:@"PS_Rewrite"];
  v29 = [v13 createSubSpanWithName:@"fetchSupportedBundleIDsWithPredictionContextFilters"];
  [v29 start];
  selfCopy = self;
  v30 = [(_PSEnsembleModel *)self fetchSupportedBundleIDsWithPredictionContextFilters:contextCopy];
  [contextCopy setSupportedBundleIds:v30];

  v116 = v29;
  [v29 end];
  suggestionsFilteredByBundleIds = [contextCopy suggestionsFilteredByBundleIds];

  if (suggestionsFilteredByBundleIds)
  {
    suggestionsFilteredByBundleIds2 = [contextCopy suggestionsFilteredByBundleIds];
    v33 = [suggestionsFilteredByBundleIds2 componentsJoinedByString:{@", "}];
    [v13 logDebugEventWithName:@"ClientRequestBundleIdFilters" details:v33 attributes:MEMORY[0x1E695E0F8]];
  }

  v134[0] = @"shouldActivatePSRTrialOverwrite";
  v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", shouldActivatePSR];
  v135[0] = v126;
  v134[1] = @"isFallbackFetch";
  v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(contextCopy, "isFallbackFetch")];
  v135[1] = v119;
  v134[2] = @"sourceBundleID";
  v34 = MEMORY[0x1E696AEC0];
  bundleID = [contextCopy bundleID];
  v114 = [v34 stringWithFormat:@"%@", bundleID];
  v135[2] = v114;
  v134[3] = @"attachments_count";
  v35 = MEMORY[0x1E696AEC0];
  attachments = [contextCopy attachments];
  v37 = [v35 stringWithFormat:@"%ld", objc_msgSend(attachments, "count")];
  v135[3] = v37;
  v134[4] = @"shouldProcessPicturesLive";
  v38 = MEMORY[0x1E696AEC0];
  v39 = v13;
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PSTrialClient shouldProcessPicturesLive](v129, "shouldProcessPicturesLive")}];
  v41 = [v38 stringWithFormat:@"%@", v40];
  v135[4] = v41;
  v134[5] = @"shouldUseVIPModel";
  v42 = MEMORY[0x1E696AEC0];
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PSTrialClient shouldUseVIPModel](v129, "shouldUseVIPModel")}];
  v44 = [v42 stringWithFormat:@"%@", v43];
  v135[5] = v44;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:v134 count:6];
  [v39 addAttributes:v45];

  LOBYTE(v43) = [contextCopy isFallbackFetch];
  v46 = [_PSInteractionsStatisticsConfig alloc];
  bundleID2 = [contextCopy bundleID];
  if (v43)
  {
    v48 = [(_PSInteractionsStatisticsConfig *)v46 initFallbackConfigWithBundleId:bundleID2 anchorDate:queryStartDate2];

    getSpanId = [v39 getSpanId];
    v50 = selfCopy;
    v51 = [(_PSEnsembleModel *)selfCopy _fallbackPredictionWithPredictionContext:contextCopy config:v48 parentSpanId:getSpanId];
    v52 = v129;
    v53 = 0x1E7C23000;
  }

  else
  {
    v48 = [(_PSInteractionsStatisticsConfig *)v46 initDefaultConfigWithBundleId:bundleID2 anchorDate:queryStartDate2];

    getSpanId = [v39 createSubSpanWithName:@"loadTrialInfoConfig"];
    [getSpanId start];
    v53 = 0x1E7C23000uLL;
    v54 = +[_PSLogging suggestionSignpost];
    v50 = selfCopy;
    if (os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v54, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSTrialClientLoading", " enableTelemetry=YES ", buf, 2u);
    }

    v52 = v129;
    [(_PSTrialClient *)v129 updateConfigWithTrialOverrides:v48];
    v55 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v55))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v55, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSTrialClientLoading", &unk_1B5FD970D, buf, 2u);
    }

    [getSpanId end];
    attachments2 = [contextCopy attachments];
    v57 = [attachments2 _pas_mappedArrayWithTransform:&__block_literal_global_538];

    if ([v57 count])
    {
      firstObject = [v57 firstObject];
      [v48 setTopDomainURL:firstObject];
    }

    getSpanId2 = [v39 getSpanId];
    v60 = [(_PSEnsembleModel *)selfCopy _defaultPredictionsWithPredictionContext:contextCopy trialClient:v129 config:v48 parentSpanId:getSpanId2];

    v51 = v60;
  }

  v61 = [v39 createSubSpanWithName:@"finalSuggestionProxiesForInteractionStatistics"];
  [v61 start];
  getSpanId3 = [v61 getSpanId];
  [contextCopy setCurrentSpanId:getSpanId3];

  v127 = v51;
  v63 = [(_PSEnsembleModel *)v50 finalSuggestionProxiesForInteractionStatistics:v51 config:v48 trialClient:v52 context:contextCopy];
  v64 = [(_PSEnsembleModel *)v50 getReasonTypesFromObjects:v63];
  rewriteChannel = [*(v53 + 1360) rewriteChannel];
  if (os_log_type_enabled(rewriteChannel, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel predictWithPredictionContext:maxSuggestions:contactKeysToFetch:];
  }

  v132[0] = @"suggestionProxies_count";
  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v63, "count")];
  v133[0] = v66;
  v132[1] = @"suggestionProxyReasonTypes";
  v110 = v64;
  v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v64];
  v133[1] = v67;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:2];
  [v61 addAttributes:v68];

  [v61 end];
  sessionID3 = [contextCopy sessionID];
  [(_PSEnsembleModel *)v50 setTraceId:sessionID3];

  getSpanId4 = [v39 getSpanId];
  [(_PSEnsembleModel *)v50 setCurrentSpanId:getSpanId4];

  suggestionSignpost = [*(v53 + 1360) suggestionSignpost];
  if (os_signpost_enabled(suggestionSignpost))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, suggestionSignpost, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleDedupingAndTrimming", &unk_1B5FD970D, buf, 2u);
  }

  v72 = [(_PSEnsembleModel *)v50 fetchSupportedBundleIDsWithPredictionContextFilters:contextCopy];
  defaultContactKeysToFetch = [(_PSEnsembleModel *)v50 defaultContactKeysToFetch];
  getMeContactIdentifier = [(_PSEnsembleModel *)v50 getMeContactIdentifier];
  v111 = v63;
  v75 = [(_PSEnsembleModel *)v50 suggestionsFromSuggestionProxies:v63 supportedBundleIDs:v72 contactKeysToFetch:defaultContactKeysToFetch meContactIdentifier:getMeContactIdentifier maxSuggestions:suggestions];
  v125 = [v75 mutableCopy];

  suggestionSignpost2 = [*(v53 + 1360) suggestionSignpost];
  if (os_signpost_enabled(suggestionSignpost2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, suggestionSignpost2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleDedupingAndTrimming", &unk_1B5FD970D, buf, 2u);
  }

  rewriteChannel2 = [*(v53 + 1360) rewriteChannel];
  if (os_log_type_enabled(rewriteChannel2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v137 = v125;
    _os_log_impl(&dword_1B5ED1000, rewriteChannel2, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: final suggestions %{private}@", buf, 0xCu);
  }

  sessionID4 = [contextCopy sessionID];
  [(_PSEnsembleModel *)v50 logPipelineWithSuggestions:v125 interactionsStatistics:v127 pipelineStage:@"final_candidates_after_UI_resolution" sessionID:sessionID4];

  [(_PSEnsembleModel *)v50 addSuggestedRankFeature:v125 interactionsStatistics:v127];
  [(_PSEnsembleModel *)v50 addSupportedBundleIDs:v125];
  [(_PSEnsembleModel *)v50 addUTIInfo:v125 predictionContext:contextCopy];
  suggestionSignpost3 = [*(v53 + 1360) suggestionSignpost];
  if (os_signpost_enabled(suggestionSignpost3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, suggestionSignpost3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_predictWithPredictionContext", &unk_1B5FD970D, buf, 2u);
  }

  v121 = v39;
  v113 = v61;
  v115 = v48;
  if ([v125 count])
  {
    firstObject2 = [v125 firstObject];
    utiList = [firstObject2 utiList];
  }

  else
  {
    utiList = &stru_1F2D6CE98;
  }

  v130[0] = @"utiList";
  v109 = utiList;
  v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", utiList];
  v131[0] = v108;
  v130[1] = @"predictionContext_photoSuggestedPeople";
  v82 = MEMORY[0x1E696AEC0];
  photoSuggestedPeople = [contextCopy photoSuggestedPeople];
  v106 = [v82 stringWithFormat:@"%ld", objc_msgSend(photoSuggestedPeople, "count")];
  v131[1] = v106;
  v130[2] = @"predictionContext_sceneTagsInPhotoIdentifiers";
  v83 = MEMORY[0x1E696AEC0];
  sceneTagsInPhotoIdentifiers = [contextCopy sceneTagsInPhotoIdentifiers];
  v104 = [v83 stringWithFormat:@"%ld", objc_msgSend(sceneTagsInPhotoIdentifiers, "count")];
  v131[2] = v104;
  v130[3] = @"predictionContext_peopleInPhotoIdentifiers";
  v84 = MEMORY[0x1E696AEC0];
  peopleInPhotoIdentifiers = [contextCopy peopleInPhotoIdentifiers];
  v102 = [v84 stringWithFormat:@"%ld", objc_msgSend(peopleInPhotoIdentifiers, "count")];
  v131[3] = v102;
  v130[4] = @"predictionContext_suggestionPath";
  v85 = MEMORY[0x1E696AEC0];
  suggestionPath = [contextCopy suggestionPath];
  [v85 stringWithFormat:@"%@", suggestionPath];
  v87 = v120 = contextCopy;
  v131[4] = v87;
  v130[5] = @"messageInteractionCache_count";
  v88 = MEMORY[0x1E696AEC0];
  messageInteractionCache = [(_PSEnsembleModel *)v50 messageInteractionCache];
  v90 = [v88 stringWithFormat:@"%ld", objc_msgSend(messageInteractionCache, "size")];
  v131[5] = v90;
  v130[6] = @"shareInteractionCache_count";
  v91 = MEMORY[0x1E696AEC0];
  shareInteractionCache = [(_PSEnsembleModel *)v50 shareInteractionCache];
  v93 = [v91 stringWithFormat:@"%ld", objc_msgSend(shareInteractionCache, "size")];
  v131[6] = v93;
  v130[7] = @"allOtherInteractionCache_count";
  v94 = MEMORY[0x1E696AEC0];
  allOtherInteractionCache = [(_PSEnsembleModel *)v50 allOtherInteractionCache];
  v96 = [v94 stringWithFormat:@"%ld", objc_msgSend(allOtherInteractionCache, "size")];
  v131[7] = v96;
  v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:8];
  [v121 addAttributes:v97];

  [v121 end];
  if (([v120 isFallbackFetch] & 1) == 0 && shouldEnableDataCollection)
  {
    [(_PSEnsembleModel *)selfCopy psrDataCollectionForContext:v120 timeToWaitInSeconds:dataCollectionTimeToWaitInSeconds interactionStatisticsConfig:v115 interactionStatistics:v127];
  }

  v98 = *MEMORY[0x1E69E9840];

  return v125;
}

- (id)getReasonTypesFromObjects:(id)objects limit:(unint64_t)limit
{
  v5 = [objects _pas_mappedArrayWithTransform:&__block_literal_global_580];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != nil"];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  v8 = [v7 count];
  if (v8 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v8;
  }

  v10 = [v7 subarrayWithRange:{0, limitCopy}];
  v11 = [v10 componentsJoinedByString:@"::"];

  return v11;
}

- (void)addSuggestedRankFeature:(id)feature interactionsStatistics:(id)statistics
{
  v22 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  statisticsCopy = statistics;
  [statisticsCopy initFeature:@"suggestedRank" withValue:&unk_1F2D8B2E0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = featureCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        conversationIdentifier = [v13 conversationIdentifier];
        if (!conversationIdentifier)
        {
          conversationIdentifier = [v13 derivedIntentIdentifier];
        }

        v15 = [MEMORY[0x1E696AD98] numberWithInt:v11];
        [statisticsCopy setValue:v15 forFeature:@"suggestedRank" andConversationId:conversationIdentifier];

        v11 = (v11 + 1);
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (int)modelProxyToVirtualFeatureStoreFeature:(id)feature
{
  featureCopy = feature;
  if ([featureCopy isEqualToString:@"knnSuggestionProxies"])
  {
    v4 = 691;
  }

  else if ([featureCopy isEqualToString:@"inPhoneCallSuggestionProxies"])
  {
    v4 = 695;
  }

  else if ([featureCopy isEqualToString:@"hyperRecentSuggestionProxies"])
  {
    v4 = 698;
  }

  else if ([featureCopy isEqualToString:@"backFillProxies"])
  {
    v4 = 702;
  }

  else if ([featureCopy isEqualToString:@"photosGroupSuggestionProxies"])
  {
    v4 = 700;
  }

  else if ([featureCopy isEqualToString:@"photosGroupSuggestionProxiesAssetPresence"])
  {
    v4 = 701;
  }

  else if ([featureCopy isEqualToString:@"photoSuggestionProxiesFilteredByAssetOrMomentPresence"])
  {
    v4 = 699;
  }

  else if ([featureCopy isEqualToString:@"returnDocumentToSenderSuggestionProxies"])
  {
    v4 = 704;
  }

  else if ([featureCopy isEqualToString:@"shareSheetRecencyProxies"])
  {
    v4 = 708;
  }

  else if ([featureCopy isEqualToString:@"messagesRecencyProxies"])
  {
    v4 = 709;
  }

  else if ([featureCopy isEqualToString:@"coreMLSuggestionProxies"])
  {
    v4 = 703;
  }

  else
  {
    v5 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_PSEnsembleModel modelProxyToVirtualFeatureStoreFeature:];
    }

    v4 = 0;
  }

  return v4;
}

- (void)addTrialInfoToPredictionContext:(id)context withExperiment:(id)experiment
{
  experimentCopy = experiment;
  contextCopy = context;
  experimentId = [experimentCopy experimentId];
  [contextCopy setTrialExperimentId:experimentId];

  treatmentId = [experimentCopy treatmentId];
  [contextCopy setTrialTreatmentId:treatmentId];

  v9 = MEMORY[0x1E696AEC0];
  deploymentId = [experimentCopy deploymentId];

  v11 = [v9 stringWithFormat:@"%d", deploymentId];
  [contextCopy setTrialDeploymentId:v11];
}

- (void)addExtraInformationWithSuggestions:(id)suggestions modelSuggestionProxiesDict:(id)dict
{
  suggestionsCopy = suggestions;
  dictCopy = dict;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82___PSEnsembleModel_addExtraInformationWithSuggestions_modelSuggestionProxiesDict___block_invoke;
  v17[3] = &unk_1E7C249D0;
  v17[4] = self;
  v17[5] = v18;
  [suggestionsCopy enumerateObjectsUsingBlock:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82___PSEnsembleModel_addExtraInformationWithSuggestions_modelSuggestionProxiesDict___block_invoke_597;
  v16[3] = &unk_1E7C24A20;
  v16[4] = self;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v16];
  trialID = [(_PSEnsembleModel *)self trialID];
  v9 = [trialID copy];

  if (v9)
  {
    featureCache = self->_featureCache;
    v11 = [objc_alloc(MEMORY[0x1E698ECC0]) initWithIntValue:0 doubleValue:0 stringValue:v9 BOOLValue:0 timeBucketValue:0];
    [(_PSFeatureCache *)featureCache setFeatureValueForFeatureName:706 featureValue:v11 candidate:@"self" bundleID:@"self"];
  }

  v12 = +[_PSConstants ensembleModel];
  if (_os_feature_enabled_impl())
  {
    v13 = +[_PSConstants coreMLModel];

    v12 = v13;
  }

  v14 = self->_featureCache;
  v15 = [objc_alloc(MEMORY[0x1E698ECC0]) initWithIntValue:0 doubleValue:0 stringValue:v12 BOOLValue:0 timeBucketValue:0];
  [(_PSFeatureCache *)v14 setFeatureValueForFeatureName:705 featureValue:v15 candidate:@"self" bundleID:@"self"];

  _Block_object_dispose(v18, 8);
}

- (void)addUTIInfo:(id)info predictionContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  attachments = [contextCopy attachments];
  v9 = [attachments countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(attachments);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 UTI];

        if (v14)
        {
          v15 = [v13 UTI];
          [v7 addObject:v15];
        }
      }

      v10 = [attachments countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v10);
  }

  allObjects = [v7 allObjects];
  v17 = [allObjects componentsJoinedByString:{@", "}];
  v18 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v17;
    _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "UTI list passed in _PSSuggestion objects: %@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = infoCopy;
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v25 + 1) + 8 * j) setUtiList:{v17, v25}];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addSupportedBundleIDs:(id)ds
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  fetchShareSheetSupportedBundleIDs = [(_PSEnsembleModel *)self fetchShareSheetSupportedBundleIDs];
  v6 = [fetchShareSheetSupportedBundleIDs componentsJoinedByString:{@", "}];
  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_INFO, "Supported bundle IDs passed in _PSSuggestion objects: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) setSupportedBundleIDs:{v6, v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_suggestionInteractionPredicatesForFirstPartyMessages:(BOOL)messages bundleID:(id)d interactionRecipients:(id)recipients
{
  messagesCopy = messages;
  v24[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  recipientsCopy = recipients;
  v9 = recipientsCopy;
  if (dCopy)
  {
    v10 = 0;
    if (recipientsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v14 = [v13 arrayByAddingObject:@"interactionRecipients"];

    v10 = v14;
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E695E0F0] arrayByAddingObject:@"bundleID"];
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
LABEL_4:
    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel _suggestionInteractionPredicatesForFirstPartyMessages:v10 bundleID:? interactionRecipients:?];
    }

    v12 = MEMORY[0x1E695E0F0];
    goto LABEL_17;
  }

LABEL_12:
  if (_suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients___pasOnceToken161 != -1)
  {
    +[_PSEnsembleModel _suggestionInteractionPredicatesForFirstPartyMessages:bundleID:interactionRecipients:];
  }

  v15 = &_suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients__firstPartyMessagesPredicates;
  if (!messagesCopy)
  {
    v15 = &_suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients__thirdPartyPredicates;
  }

  v16 = *v15;
  v23[0] = @"bundleID";
  v23[1] = @"interactionRecipients";
  v24[0] = dCopy;
  v24[1] = v9;
  v17 = MEMORY[0x1E695DF20];
  v10 = v16;
  v18 = [v17 dictionaryWithObjects:v24 forKeys:v23 count:2];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105___PSEnsembleModel__suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients___block_invoke_2;
  v21[3] = &unk_1E7C24A48;
  v22 = v18;
  v11 = v18;
  v12 = [v10 _pas_mappedArrayWithTransform:v21];

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)suggestionsFromSuggestionProxies:(id)proxies supportedBundleIDs:(id)ds contactKeysToFetch:(id)fetch meContactIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions
{
  v8 = MEMORY[0x1EEE9AC00](self, a2, proxies, ds, fetch, identifier, suggestions);
  v465 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v8;
  v683 = *MEMORY[0x1E69E9840];
  v18 = v17;
  v19 = v15;
  v20 = v13;
  v505 = v11;
  v21 = [AeroMLTracerSession alloc];
  traceId = [v16 traceId];
  v23 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v24 = [(AeroMLTracerSession *)v21 initWithTraceId:traceId projectName:v23];

  currentSpanId = [v16 currentSpanId];
  v458 = v24;
  v26 = [(AeroMLTracerSession *)v24 createSubSpanWithName:@"suggestionsFromSuggestionProxies" parentSpanId:currentSpanId];

  [v26 start];
  v27 = [v26 createSubSpanWithName:@"cachedMessagesInteractions"];
  [v27 start];
  messageInteractionCache = [v16 messageInteractionCache];
  interactions = [messageInteractionCache interactions];

  v457 = v27;
  [v27 end];
  v29 = [v26 createSubSpanWithName:@"cachedShares"];
  [v29 start];
  shareInteractionCache = [v16 shareInteractionCache];
  interactions2 = [shareInteractionCache interactions];

  v456 = v29;
  [v29 end];
  v504 = +[_PSConstants messagesBundleIds];
  v483 = +[_PSConstants mailBundleIds];
  v480 = +[_PSConstants shareplayBundleIds];
  v501 = +[_PSConstants systemBundleIds];
  v459 = v19;
  v484 = [MEMORY[0x1E695DFA8] setWithArray:v19];
  v543 = v16;
  v500 = _PSShareSheetExtensionBundleIDToAppBundleIDMapping([v16 allowNonSupportedBundleIDs]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v461 = v26;
  v460 = [v26 createSubSpanWithName:@"buildSuggestionTemplates"];
  [v460 start];
  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  obj = v18;
  v544 = v20;
  v481 = v31;
  v494 = [obj countByEnumeratingWithState:&v645 objects:v682 count:16];
  if (v494)
  {
    v492 = *v646;
    do
    {
      v32 = 0;
      do
      {
        if (*v646 != v492)
        {
          objc_enumerationMutation(obj);
        }

        v520 = v32;
        v33 = *(*(&v645 + 1) + 8 * v32);
        v516 = objc_autoreleasePoolPush();
        interactionRecipients = [(_PSSuggestionProxy *)v33 interactionRecipients];
        contactID = [(_PSSuggestionProxy *)v33 contactID];
        if (!(interactionRecipients | contactID))
        {
          handles = [(_PSSuggestionProxy *)v33 handles];

          if (!handles)
          {
            v42 = 0;
            goto LABEL_16;
          }
        }

        bundleID = [(_PSSuggestionProxy *)v33 bundleID];
        if (bundleID)
        {
          v37 = bundleID;
          bundleID2 = [(_PSSuggestionProxy *)v33 bundleID];
          v39 = [v484 containsObject:bundleID2];

          if (!v39)
          {
            v42 = interactionRecipients;
LABEL_16:
            v43 = v520;
            goto LABEL_230;
          }
        }

        v526 = v33;
        if (contactID)
        {
          handle = [(_PSSuggestionProxy *)v33 handle];

          v41 = v543;
          if (!handle)
          {
            v44 = v484;
            v45 = +[_PSConstants mobileMailBundleId];
            v561 = v44;
            [v44 removeObject:v45];

            if ([(_PSSuggestionProxy *)v526 useGroupsWhenFindingRecipient])
            {
              v33 = v526;
LABEL_63:

              goto LABEL_64;
            }

            v644 = 0u;
            v643 = 0u;
            v642 = 0u;
            v641 = 0u;
            v46 = interactions2;
            v47 = [v46 countByEnumeratingWithState:&v641 objects:v681 count:16];
            v496 = groupName2;
            if (v47)
            {
              v48 = *v642;
              do
              {
                for (i = 0; i != v47; i = i + 1)
                {
                  if (*v642 != v48)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v50 = *(*(&v641 + 1) + 8 * i);
                  recipients = [v50 recipients];
                  if ([recipients count] <= 1)
                  {
                    v535 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personId == %@", contactID];
                    v53 = [recipients filteredArrayUsingPredicate:v535];

                    if ([v53 count] == 1)
                    {
                      v47 = v50;

                      v20 = v544;
                      goto LABEL_31;
                    }

                    v20 = v544;
                  }
                }

                v47 = [v46 countByEnumeratingWithState:&v641 objects:v681 count:16];
              }

              while (v47);
LABEL_31:
              groupName2 = v496;
            }

            v640 = 0u;
            v639 = 0u;
            v638 = 0u;
            v637 = 0u;
            v54 = interactions;
            v55 = [v54 countByEnumeratingWithState:&v637 objects:v680 count:16];
            if (v55)
            {
              v56 = *v638;
              do
              {
                for (j = 0; j != v55; j = j + 1)
                {
                  if (*v638 != v56)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v58 = *(*(&v637 + 1) + 8 * j);
                  recipients2 = [v58 recipients];
                  if ([recipients2 count] <= 1)
                  {
                    v5352 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personId == %@", contactID];
                    v61 = [recipients2 filteredArrayUsingPredicate:v5352];

                    if ([v61 count] == 1)
                    {
                      v55 = v58;

                      v20 = v544;
                      goto LABEL_44;
                    }

                    v20 = v544;
                  }
                }

                v55 = [v54 countByEnumeratingWithState:&v637 objects:v680 count:16];
              }

              while (v55);
LABEL_44:
              v41 = v543;
              groupName2 = v496;
            }

            if (v47)
            {
              startDate = [v55 startDate];
              startDate2 = [v47 startDate];
              [startDate timeIntervalSinceDate:startDate2];
              v65 = v64;

              if (v65 <= 0.0 || (v66 = v55, v47, (v47 = v66) != 0))
              {

                goto LABEL_50;
              }
            }

            v47 = [_PSInteractionStoreUtils mostRecentInteractionWithRecipientMatchingContactIdentifier:contactID bundleIds:v561 store:v41[6] singleRecipient:1];

            if (v47)
            {
LABEL_50:
              bundleId = [v47 bundleId];
              v68 = +[_PSConstants mobileMessagesBundleId];
              if ([bundleId isEqualToString:v68])
              {

                goto LABEL_53;
              }

              targetBundleId = [v47 targetBundleId];
              v70 = +[_PSConstants shareSheetTargetBundleIdMessages];
              v71 = [targetBundleId isEqualToString:v70];

              if (v71)
              {
LABEL_53:
                reason = [(_PSSuggestionProxy *)v526 reason];
                reasonType = [(_PSSuggestionProxy *)v526 reasonType];
                v74 = [_PSPhotoSuggestions suggestionTemplateForPhotoContactIdWithMessages:contactID cdInteraction:v47 reason:reason reasonType:reasonType];

                v20 = v544;
                if (v74)
                {
                  v31 = v481;
                  [v481 addObject:v74];
                  goto LABEL_61;
                }
              }

              else
              {
                targetBundleId2 = [v47 targetBundleId];
                v76 = +[_PSConstants shareSheetTargetBundleIdMail];
                v77 = [targetBundleId2 isEqualToString:v76];

                v78 = [_PSSuggestionProxy alloc];
                if (v77)
                {
                  v551 = +[_PSConstants mobileMailBundleId];
                  v79 = MEMORY[0x1E69978D0];
                  recipients3 = [v47 recipients];
                  v80 = [v79 generateConversationIdFromInteractionRecipients:recipients3];
                  contactID2 = [(_PSSuggestionProxy *)v526 contactID];
                  handle2 = [(_PSSuggestionProxy *)v526 handle];
                  [(_PSSuggestionProxy *)v526 reason];
                  v84 = v83 = groupName2;
                  reasonType2 = [(_PSSuggestionProxy *)v526 reasonType];
                  v547 = [(_PSSuggestionProxy *)v78 initWithBundleID:v551 interactionRecipients:v80 contactID:contactID2 handle:handle2 reason:v84 reasonType:reasonType2];

                  groupName2 = v83;
                  v74 = v547;
                }

                else
                {
                  bundleId2 = [v47 bundleId];
                  derivedIntentIdentifier = [v47 derivedIntentIdentifier];
                  reason2 = [(_PSSuggestionProxy *)v526 reason];
                  reasonType3 = [(_PSSuggestionProxy *)v526 reasonType];
                  v90 = [(_PSSuggestionProxy *)v78 initWithBundleID:bundleId2 interactionRecipients:derivedIntentIdentifier contactID:contactID reason:reason2 reasonType:reasonType3];

                  v74 = v90;
                }

                v526 = v74;
                v20 = v544;
              }

              v31 = v481;
LABEL_61:
            }

            else
            {
              v31 = v481;
            }

            v33 = v526;
            goto LABEL_63;
          }
        }

LABEL_64:
        bundleID3 = [(_PSSuggestionProxy *)v33 bundleID];
        interactionRecipients2 = [(_PSSuggestionProxy *)v33 interactionRecipients];

        v545 = bundleID3;
        v537 = interactionRecipients2;
        if ([v483 containsObject:bundleID3])
        {
          v93 = [MEMORY[0x1E69978D0] recipientIdentifiersFromMobileMailConversationId:interactionRecipients2];
          v94 = v93;
          if (v93 && [v93 count])
          {
            v95 = [_PSSuggestionTemplate alloc];
            reason3 = [(_PSSuggestionProxy *)v33 reason];
            reasonType4 = [(_PSSuggestionProxy *)v33 reasonType];
            modelScore = [(_PSSuggestionProxy *)v33 modelScore];
            v99 = [(_PSSuggestionTemplate *)v95 initWithBundleID:v545 interactionRecipients:v537 image:0 groupName:0 recipientContactIDs:0 recipientEmailAddresses:v94 recipientPhoneNumbers:0 recipientDisplayNames:0 contactIdToHandleMapping:0 reason:reason3 reasonType:reasonType4 modelScore:modelScore];

            [v31 addObject:v99];
          }

          v43 = v520;
          goto LABEL_229;
        }

        reason4 = [(_PSSuggestionProxy *)v33 reason];
        v101 = +[_PSConstants inCallHeuristicReason];
        v527 = v33;
        if ([reason4 isEqualToString:v101])
        {
          v102 = 1;
        }

        else
        {
          reason5 = [(_PSSuggestionProxy *)v33 reason];
          v104 = +[_PSConstants inCallCollaborationHeuristicReason];
          v102 = [reason5 isEqualToString:v104];

          v31 = v481;
        }

        v105 = [v504 containsObject:v545];
        v539 = [v480 containsObject:v545];
        if (v102)
        {
          v43 = v520;
          if (contactID)
          {
            handle3 = [(_PSSuggestionProxy *)v33 handle];
            if (handle3)
            {
              v477 = handle3;

LABEL_80:
              v94 = [_PSHeuristics templateForPhoneCallHeuristicFromSuggestionProxy:v33];
              if (v94)
              {
                [v31 addObject:v94];
              }

              goto LABEL_229;
            }

            v477 = 0;
          }

          handles2 = [(_PSSuggestionProxy *)v33 handles];

          if (contactID)
          {
          }

          if (handles2)
          {
            goto LABEL_80;
          }
        }

        v636 = 0u;
        v635 = 0u;
        v634 = 0u;
        v633 = 0u;
        recipients5 = interactions2;
        v108 = [recipients5 countByEnumeratingWithState:&v633 objects:v679 count:16];
        v548 = v105;
        if (!v108)
        {
          goto LABEL_99;
        }

        v562 = *v634;
        v557 = v539 ^ 1;
        v109 = v537;
LABEL_84:
        v110 = 0;
        while (1)
        {
          if (*v634 != v562)
          {
            objc_enumerationMutation(recipients5);
          }

          v111 = *(*(&v633 + 1) + 8 * v110);
          domainIdentifier = [v111 domainIdentifier];
          v113 = [domainIdentifier isEqual:v109];

          derivedIntentIdentifier2 = [v111 derivedIntentIdentifier];
          v115 = [derivedIntentIdentifier2 isEqual:v109];

          targetBundleId3 = [v111 targetBundleId];
          v117 = v115;
          if (([targetBundleId3 isEqual:v545] & 1) == 0)
          {
            targetBundleId4 = [v111 targetBundleId];
            [v500 objectForKeyedSubscript:targetBundleId4];
            v120 = v119 = groupName2;
            v121 = [v120 isEqual:v545];

            groupName2 = v119;
            v105 = v548;
            v117 = v121 & v115;
          }

          v122 = v105 ? v113 : v117;
          v109 = v537;
          if (v122)
          {
            break;
          }

          if ((v557 | v113 | v115))
          {
            if (v539 & 1 | (((v557 | v113) & 1) == 0))
            {
              break;
            }
          }

          else
          {
            v123 = MEMORY[0x1E69978D0];
            recipients4 = [v111 recipients];
            v125 = [v123 generateConversationIdFromInteractionRecipients:recipients4];
            v126 = [v125 isEqual:v537];

            if (v126)
            {
              break;
            }
          }

          if (v108 == ++v110)
          {
            v108 = [recipients5 countByEnumeratingWithState:&v633 objects:v679 count:16];
            if (!v108)
            {
LABEL_99:
              v506 = 0;
              v127 = 0;
              v502 = 0;
              goto LABEL_112;
            }

            goto LABEL_84;
          }
        }

        v128 = v111;

        if (!v128)
        {
          v506 = 0;
          v127 = 0;
          v502 = 0;
          LOBYTE(v108) = 0;
          goto LABEL_113;
        }

        recipients5 = [v128 recipients];
        v502 = v128;
        if ([recipients5 count] < 2)
        {
          v506 = 0;
          v127 = 0;
        }

        else
        {
          contentURL = [v128 contentURL];
          if (contentURL)
          {
            v130 = contentURL;
            groupName = [v128 groupName];

            if (groupName)
            {
              v506 = 0;
              v127 = 0;
              LOBYTE(v108) = 1;
              goto LABEL_113;
            }
          }

          else
          {
          }

          recipients6 = [v128 recipients];
          v133 = [recipients6 _pas_mappedArrayWithTransform:&__block_literal_global_644];
          [v502 setRecipients:v133];

          v134 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            [_PSEnsembleModel suggestionsFromSuggestionProxies:v632 supportedBundleIDs:? contactKeysToFetch:? meContactIdentifier:? maxSuggestions:?];
          }

          v127 = 1;
          recipients5 = objc_opt_new();
          v506 = recipients5;
        }

        LOBYTE(v108) = 1;
LABEL_112:

LABEL_113:
        v630 = 0u;
        v629 = 0u;
        v628 = 0u;
        v627 = 0u;
        v553 = interactions;
        v563 = [v553 countByEnumeratingWithState:&v627 objects:v678 count:16];
        if (!v563)
        {
          goto LABEL_165;
        }

        v540 = v108;
        v558 = *v628;
        while (2)
        {
          v135 = 0;
LABEL_116:
          if (*v628 != v558)
          {
            objc_enumerationMutation(v553);
          }

          v136 = *(*(&v627 + 1) + 8 * v135);
          if ((v127 & 1) == 0)
          {
            v127 = 0;
            goto LABEL_129;
          }

          contentURL2 = [*(*(&v627 + 1) + 8 * v135) contentURL];
          if (!contentURL2)
          {
            groupName2 = [v136 groupName];
            if (!groupName2)
            {
              v127 = 1;
              goto LABEL_129;
            }
          }

          bundleId3 = [v136 bundleId];
          if (![v504 containsObject:bundleId3])
          {
            goto LABEL_125;
          }

          domainIdentifier2 = [v136 domainIdentifier];
          if (!domainIdentifier2)
          {
            goto LABEL_125;
          }

          v140 = domainIdentifier2;
          domainIdentifier3 = [v136 domainIdentifier];
          if (([v506 containsObject:domainIdentifier3] & 1) == 0)
          {
            recipients7 = [v136 recipients];
            if (recipients7)
            {
              [v136 recipients];
              v153 = v497 = groupName2;
              v154 = [v153 count];
              recipients8 = [v502 recipients];
              v156 = v154 == [recipients8 count];

              groupName2 = v497;
            }

            else
            {
              v156 = 0;
            }

            if (contentURL2)
            {

              if (v156)
              {
LABEL_153:
                v157 = objc_autoreleasePoolPush();
                recipients9 = [v136 recipients];
                v159 = [recipients9 _pas_mappedArrayWithTransform:&__block_literal_global_644];
                [v136 setRecipients:v159];

                v160 = MEMORY[0x1E695DFD8];
                recipients10 = [v136 recipients];
                v162 = [recipients10 valueForKey:@"identifier"];
                v163 = [v160 setWithArray:v162];

                v164 = MEMORY[0x1E695DFD8];
                recipients11 = [v502 recipients];
                v166 = [recipients11 valueForKey:@"identifier"];
                v167 = [v164 setWithArray:v166];

                v168 = [v163 isEqualToSet:v167];
                if (v168)
                {
                  contentURL3 = [v502 contentURL];

                  if (!contentURL3)
                  {
                    contentURL4 = [v136 contentURL];
                    [v502 setContentURL:contentURL4];
                  }

                  groupName3 = [v502 groupName];

                  if (!groupName3)
                  {
                    groupName4 = [v136 groupName];
                    [v502 setGroupName:groupName4];
                  }

                  v173 = +[_PSLogging generalChannel];
                  if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
                  {
                    groupName5 = [v136 groupName];
                    contentURL5 = [v136 contentURL];
                    *buf = 138740227;
                    v665 = groupName5;
                    v666 = 2117;
                    v667 = contentURL5;
                    _os_log_debug_impl(&dword_1B5ED1000, v173, OS_LOG_TYPE_DEBUG, "Resolved group name or display image, group name: %{sensitive}@, display name: %{sensitive}@", buf, 0x16u);
                  }
                }

                v127 = v168 ^ 1;

                objc_autoreleasePoolPop(v157);
                contentURL2 = [v136 domainIdentifier];
                [v506 addObject:contentURL2];
                v105 = v548;
                goto LABEL_127;
              }
            }

            else
            {

              if (v156)
              {
                goto LABEL_153;
              }
            }

            v127 = 1;
            v105 = v548;
            goto LABEL_129;
          }

LABEL_125:
          v127 = 1;
          if (!contentURL2)
          {
            contentURL2 = groupName2;
          }

LABEL_127:

LABEL_129:
          if (v105)
          {
            domainIdentifier4 = [v136 domainIdentifier];
            if (!domainIdentifier4)
            {
              goto LABEL_148;
            }

            v143 = domainIdentifier4;
            bundleId4 = [v136 bundleId];
            if ([bundleId4 isEqual:v545])
            {
              domainIdentifier5 = [v136 domainIdentifier];
              v146 = [domainIdentifier5 isEqual:v537];

              if (v146)
              {
                goto LABEL_166;
              }

LABEL_148:
              if (v563 == ++v135)
              {
                v176 = [v553 countByEnumeratingWithState:&v627 objects:v678 count:16];
                v563 = v176;
                if (!v176)
                {
LABEL_165:

                  v177 = 0;
                  v178 = v502;
                  goto LABEL_174;
                }

                continue;
              }

              goto LABEL_116;
            }

LABEL_144:

            goto LABEL_148;
          }

          break;
        }

        derivedIntentIdentifier3 = [v136 derivedIntentIdentifier];
        if (!derivedIntentIdentifier3)
        {
          goto LABEL_148;
        }

        v143 = derivedIntentIdentifier3;
        bundleId4 = [v136 bundleId];
        v148 = [bundleId4 isEqual:v545];
        if ((v148 & 1) == 0)
        {
          v529 = [v500 objectForKeyedSubscript:v545];
          if (!v529)
          {
            v529 = 0;
            v105 = v548;
            goto LABEL_144;
          }

          bundleId5 = [v136 bundleId];
          v510 = [v500 objectForKeyedSubscript:v545];
          v513 = bundleId5;
          if (![bundleId5 isEqual:?])
          {
            v151 = 0;
            v105 = v548;
LABEL_146:

            goto LABEL_147;
          }
        }

        v105 = v548;
        derivedIntentIdentifier4 = [v136 derivedIntentIdentifier];
        v151 = [derivedIntentIdentifier4 isEqual:v537];

        if ((v148 & 1) == 0)
        {
          goto LABEL_146;
        }

LABEL_147:

        if ((v151 & 1) == 0)
        {
          goto LABEL_148;
        }

LABEL_166:
        v177 = v136;

        v179 = v540 ^ 1;
        if (!v177)
        {
          v179 = 1;
        }

        if (v179)
        {
          if (v177)
          {
            v178 = v177;
          }

          else
          {
            v178 = v502;
          }

LABEL_174:
          v20 = v544;
          v31 = v481;
        }

        else
        {
          startDate3 = [v177 startDate];
          v178 = v502;
          startDate4 = [v502 startDate];
          v182 = [startDate3 compare:startDate4];

          v20 = v544;
          v31 = v481;
          if (v182 != -1)
          {
            v183 = v177;
            v177 = v183;
            goto LABEL_179;
          }
        }

        v184 = v178;
        if (v184)
        {
          v183 = v184;
          goto LABEL_179;
        }

        v185 = [_PSEnsembleModel _suggestionInteractionPredicatesForFirstPartyMessages:v105 bundleID:v545 interactionRecipients:v537];
        v186 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
        v677 = v186;
        v187 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v677 count:1];

        v625[0] = MEMORY[0x1E69E9820];
        v625[1] = 3221225472;
        v625[2] = __126___PSEnsembleModel_suggestionsFromSuggestionProxies_supportedBundleIDs_contactKeysToFetch_meContactIdentifier_maxSuggestions___block_invoke_653;
        v625[3] = &unk_1E7C24A90;
        v625[4] = v543;
        v188 = v187;
        v626 = v188;
        v189 = [v185 _pas_leftFoldWithInitialObject:0 accumulate:v625];
        if (!v189)
        {

          v231 = 0;
          goto LABEL_228;
        }

        v183 = v189;

LABEL_179:
        v489 = v177;
        v487 = objc_autoreleasePoolPush();
        v190 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v564 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v554 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v541 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v559 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v549 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v491 = v183;
        v498 = groupName2;
        if (!v105)
        {
          context = objc_autoreleasePoolPush();
          v617 = 0u;
          v618 = 0u;
          v619 = 0u;
          v620 = 0u;
          recipients12 = [v183 recipients];
          v207 = [recipients12 countByEnumeratingWithState:&v617 objects:v675 count:16];
          if (!v207)
          {
            goto LABEL_220;
          }

          v208 = v207;
          v209 = *v618;
          while (1)
          {
            for (k = 0; k != v208; ++k)
            {
              if (*v618 != v209)
              {
                objc_enumerationMutation(recipients12);
              }

              v211 = *(*(&v617 + 1) + 8 * k);
              personId = [v211 personId];
              identifier = [v211 identifier];
              displayName = [v211 displayName];
              v215 = [displayName length];

              if (personId)
              {
                [v190 addObject:personId];
                if (!identifier)
                {
                  goto LABEL_218;
                }

                [v559 setObject:identifier forKeyedSubscript:personId];
              }

              else if (!identifier)
              {
                if (v215 < 1)
                {
                  goto LABEL_218;
                }

                displayName2 = [v211 displayName];
                [v541 addObject:displayName2];
                goto LABEL_217;
              }

              if ([v211 type] == 2)
              {
                v216 = v564;
LABEL_208:
                [v216 addObject:identifier];
                if (!personId && v215 >= 1)
                {
                  goto LABEL_210;
                }

                goto LABEL_218;
              }

              if ([v211 type] == 1)
              {
                v216 = v554;
                goto LABEL_208;
              }

              if (!personId && v215 >= 1)
              {
                displayName3 = [v211 displayName];
                [v541 addObject:displayName3];

                if (![v211 type])
                {
LABEL_210:
                  displayName2 = [v211 displayName];
                  [v549 setObject:displayName2 forKeyedSubscript:identifier];
LABEL_217:
                }
              }

LABEL_218:
            }

            v208 = [recipients12 countByEnumeratingWithState:&v617 objects:v675 count:16];
            if (!v208)
            {
LABEL_220:

              objc_autoreleasePoolPop(context);
              v20 = v544;
              goto LABEL_221;
            }
          }
        }

        v624 = 0u;
        v623 = 0u;
        v622 = 0u;
        v621 = 0u;
        recipients13 = [v183 recipients];
        v192 = [recipients13 countByEnumeratingWithState:&v621 objects:v676 count:16];
        if (v192)
        {
          v193 = v192;
          v194 = *v622;
          do
          {
            for (m = 0; m != v193; ++m)
            {
              if (*v622 != v194)
              {
                objc_enumerationMutation(recipients13);
              }

              v196 = *(*(&v621 + 1) + 8 * m);
              personId2 = [v196 personId];
              if (personId2)
              {
                v198 = personId2;
                identifier2 = [v196 identifier];

                if (identifier2)
                {
                  personId3 = [v196 personId];
                  [v190 addObject:personId3];

                  identifier3 = [v196 identifier];
                  personId4 = [v196 personId];
                  [v559 setObject:identifier3 forKeyedSubscript:personId4];
                }
              }

              identifier4 = [v196 identifier];

              if (identifier4)
              {
                v204 = v564;
                if ([v196 type] == 2 || (v204 = v554, objc_msgSend(v196, "type") == 1))
                {
                  identifier5 = [v196 identifier];
                  [v204 addObject:identifier5];
                }
              }
            }

            v193 = [recipients13 countByEnumeratingWithState:&v621 objects:v676 count:16];
          }

          while (v193);
        }

LABEL_221:
        contentURL6 = [v491 contentURL];

        if (contentURL6)
        {
          INImageClass = getINImageClass();
          contentURL7 = [v491 contentURL];
          contexta = [INImageClass imageWithURL:contentURL7];
        }

        else
        {
          contexta = 0;
        }

        v222 = [_PSSuggestionTemplate alloc];
        v223 = [v500 objectForKeyedSubscript:v545];
        v224 = v223;
        if (v223)
        {
          v225 = v223;
        }

        else
        {
          v225 = v545;
        }

        groupName6 = [v491 groupName];
        reason6 = [(_PSSuggestionProxy *)v527 reason];
        reasonType5 = [(_PSSuggestionProxy *)v527 reasonType];
        modelScore2 = [(_PSSuggestionProxy *)v527 modelScore];
        v230 = [(_PSSuggestionTemplate *)v222 initWithBundleID:v225 interactionRecipients:v537 image:contexta groupName:groupName6 recipientContactIDs:v190 recipientEmailAddresses:v564 recipientPhoneNumbers:v554 recipientDisplayNames:v541 contactIdToHandleMapping:v559 handleToDisplayNameMapping:v549 reason:reason6 reasonType:reasonType5 modelScore:modelScore2];

        v231 = v491;
        [v481 addObject:v230];

        v31 = v481;
        objc_autoreleasePoolPop(v487);
        groupName2 = v498;
        v177 = v489;
LABEL_228:

        v43 = v520;
        v33 = v527;
        v94 = v502;
LABEL_229:

        v42 = v537;
LABEL_230:

        objc_autoreleasePoolPop(v516);
        v32 = v43 + 1;
      }

      while (v32 != v494);
      v232 = [obj countByEnumeratingWithState:&v645 objects:v682 count:16];
      v494 = v232;
    }

    while (v232);
  }

  [v460 end];
  array = [MEMORY[0x1E695DF70] array];
  if ([v31 count])
  {
    v234 = v31;
    v235 = 0;
    v236 = 0;
    v237 = v465 + 2;
    do
    {
      v238 = [v234 count];
      if (v238 + v235 >= v237)
      {
        v239 = v465 + 2;
      }

      else
      {
        v239 = v238 + v235;
      }

      v240 = [v234 subarrayWithRange:{v236, v239}];
      [array addObject:v240];
      v236 += v237;

      v235 += -2 - v465;
    }

    while (v236 < [v234 count]);
  }

  v479 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v475 = [MEMORY[0x1E695DFA8] set];
  v493 = [MEMORY[0x1E695DFA8] set];
  v476 = [MEMORY[0x1E695DFA8] set];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v241 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v565 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v528 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v542 = [v461 createSubSpanWithName:@"goThroughSuggestionTemplates"];
  [v542 start];
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v462 = array;
  v560 = v241;
  v464 = [v462 countByEnumeratingWithState:&v613 objects:v674 count:16];
  if (v464)
  {
    v466 = 0;
    v467 = 0;
    v538 = 0;
    v536 = 0;
    v488 = 0;
    v490 = 0;
    v470 = 0;
    v463 = *v614;
    while (1)
    {
      v242 = 0;
      do
      {
        if (*v614 != v463)
        {
          objc_enumerationMutation(v462);
        }

        v468 = v242;
        v243 = *(*(&v613 + 1) + 8 * v242);
        v469 = objc_autoreleasePoolPush();
        v555 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v546 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v244 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v245 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v550 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v609 = 0u;
        v610 = 0u;
        v611 = 0u;
        v612 = 0u;
        v511 = v243;
        v521 = [v511 countByEnumeratingWithState:&v609 objects:v673 count:16];
        if (v521)
        {
          v517 = *v610;
          do
          {
            v246 = 0;
            do
            {
              if (*v610 != v517)
              {
                objc_enumerationMutation(v511);
              }

              v530 = v246;
              v247 = *(*(&v609 + 1) + 8 * v246);
              v605 = 0u;
              v606 = 0u;
              v607 = 0u;
              v608 = 0u;
              recipientContactIDs = [v247 recipientContactIDs];
              v249 = [recipientContactIDs countByEnumeratingWithState:&v605 objects:v672 count:16];
              if (v249)
              {
                v250 = v249;
                v251 = *v606;
                do
                {
                  for (n = 0; n != v250; ++n)
                  {
                    if (*v606 != v251)
                    {
                      objc_enumerationMutation(recipientContactIDs);
                    }

                    v253 = *(*(&v605 + 1) + 8 * n);
                    v254 = [v241 objectForKeyedSubscript:v253];

                    if (!v254)
                    {
                      [v555 addObject:v253];
                      contactIdToHandleMapping = [v247 contactIdToHandleMapping];
                      v256 = [contactIdToHandleMapping objectForKeyedSubscript:v253];

                      if (v256)
                      {
                        [v550 setObject:v256 forKeyedSubscript:v253];
                        [v546 addObject:v256];
                      }

                      v241 = v560;
                    }
                  }

                  v250 = [recipientContactIDs countByEnumeratingWithState:&v605 objects:v672 count:16];
                }

                while (v250);
              }

              v604 = 0u;
              v603 = 0u;
              v602 = 0u;
              v601 = 0u;
              recipientEmailAddresses = [v247 recipientEmailAddresses];
              v258 = [recipientEmailAddresses countByEnumeratingWithState:&v601 objects:v671 count:16];
              v20 = v544;
              if (v258)
              {
                v259 = v258;
                v260 = *v602;
                do
                {
                  for (ii = 0; ii != v259; ++ii)
                  {
                    if (*v602 != v260)
                    {
                      objc_enumerationMutation(recipientEmailAddresses);
                    }

                    v262 = *(*(&v601 + 1) + 8 * ii);
                    v263 = [v565 objectForKeyedSubscript:v262];

                    if (!v263)
                    {
                      [v244 addObject:v262];
                    }
                  }

                  v259 = [recipientEmailAddresses countByEnumeratingWithState:&v601 objects:v671 count:16];
                }

                while (v259);
              }

              v600 = 0u;
              v599 = 0u;
              v598 = 0u;
              v597 = 0u;
              recipientPhoneNumbers = [v247 recipientPhoneNumbers];
              v265 = [recipientPhoneNumbers countByEnumeratingWithState:&v597 objects:v670 count:16];
              if (v265)
              {
                v266 = v265;
                v267 = *v598;
                do
                {
                  for (jj = 0; jj != v266; ++jj)
                  {
                    if (*v598 != v267)
                    {
                      objc_enumerationMutation(recipientPhoneNumbers);
                    }

                    v269 = *(*(&v597 + 1) + 8 * jj);
                    v270 = [v528 objectForKeyedSubscript:v269];

                    if (!v270)
                    {
                      [v245 addObject:v269];
                    }
                  }

                  v266 = [recipientPhoneNumbers countByEnumeratingWithState:&v597 objects:v670 count:16];
                }

                while (v266);
              }

              v246 = v530 + 1;
              v241 = v560;
            }

            while (v530 + 1 != v521);
            v521 = [v511 countByEnumeratingWithState:&v609 objects:v673 count:16];
          }

          while (v521);
        }

        if (![v555 count])
        {
          v277 = v470;
          v284 = v543;
          goto LABEL_304;
        }

        getMonotonicTimeInMilliseconds = [v542 getMonotonicTimeInMilliseconds];
        contactStore = [v543 contactStore];
        CNContactClass = getCNContactClass();
        allObjects = [v555 allObjects];
        v274 = [CNContactClass predicateForContactsWithIdentifiers:allObjects];
        v596 = v470;
        v275 = [contactStore unifiedContactsMatchingPredicate:v274 keysToFetch:v20 error:&v596];
        v276 = v596;

        v277 = v276;
        v278 = v275;
        LODWORD(v275) = [v542 getMonotonicTimeInMilliseconds];
        v279 = [v278 valueForKey:@"identifier"];
        v531 = [v555 setByAddingObjectsFromArray:v279];
        v518 = v275;
        if (v277 || (v280 = [v278 count], v280 < objc_msgSend(v555, "count")) || (v281 = objc_msgSend(v531, "count"), v281 > objc_msgSend(v555, "count")))
        {
          v282 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v665 = v277;
            _os_log_error_impl(&dword_1B5ED1000, v282, OS_LOG_TYPE_ERROR, "Problem encountred when fetching contacts by identifiers. Fewer contacts were returned, different identifiers were returned or an error occured: %@", buf, 0xCu);
          }

          v283 = +[_PSLogging generalChannel];
          v284 = v543;
          if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
          {
            *buf = 138740483;
            v665 = v278;
            v666 = 2112;
            v667 = v555;
            v668 = 2112;
            v669 = v531;
            _os_log_impl(&dword_1B5ED1000, v283, OS_LOG_TYPE_INFO, "contacts: %{sensitive}@ templateContactIDs: %@ mergedContactIdentifiers: %@", buf, 0x20u);
          }

          v595 = 0u;
          v594 = 0u;
          v593 = 0u;
          v592 = 0u;
          v285 = v546;
          v286 = [v285 countByEnumeratingWithState:&v592 objects:v663 count:16];
          if (!v286)
          {
            goto LABEL_302;
          }

          v287 = v286;
          v514 = v279;
          v507 = v278;
          v288 = v277;
          v289 = *v593;
          do
          {
            for (kk = 0; kk != v287; ++kk)
            {
              if (*v593 != v289)
              {
                objc_enumerationMutation(v285);
              }

              v291 = *(*(&v592 + 1) + 8 * kk);
              if ([v291 containsString:@"@"])
              {
                v292 = v244;
              }

              else
              {
                v292 = v245;
              }

              [v292 addObject:v291];
            }

            v287 = [v285 countByEnumeratingWithState:&v592 objects:v663 count:16];
          }

          while (v287);
          v284 = v543;
          v277 = v288;
        }

        else
        {
          v514 = v279;
          v590 = 0u;
          v591 = 0u;
          v588 = 0u;
          v589 = 0u;
          v416 = v546;
          v417 = [v416 countByEnumeratingWithState:&v588 objects:v662 count:16];
          if (v417)
          {
            v418 = v417;
            v419 = *v589;
            do
            {
              for (mm = 0; mm != v418; ++mm)
              {
                if (*v589 != v419)
                {
                  objc_enumerationMutation(v416);
                }

                v421 = *(*(&v588 + 1) + 8 * mm);
                [v244 removeObject:v421];
                [v245 removeObject:v421];
              }

              v418 = [v416 countByEnumeratingWithState:&v588 objects:v662 count:16];
            }

            while (v418);
          }

          v586 = 0u;
          v587 = 0u;
          v584 = 0u;
          v585 = 0u;
          v285 = v278;
          v422 = [v285 countByEnumeratingWithState:&v584 objects:v661 count:16];
          if (!v422)
          {
            v284 = v543;
            v277 = 0;
            goto LABEL_301;
          }

          v423 = v422;
          v507 = v278;
          v424 = *v585;
          v425 = v560;
          do
          {
            for (nn = 0; nn != v423; ++nn)
            {
              if (*v585 != v424)
              {
                objc_enumerationMutation(v285);
              }

              v427 = *(*(&v584 + 1) + 8 * nn);
              identifier6 = [v427 identifier];
              if (identifier6)
              {
                [v425 setObject:v427 forKeyedSubscript:identifier6];
                v429 = [v550 objectForKeyedSubscript:identifier6];
                if ([v429 containsString:@"@"])
                {
                  v430 = v565;
                }

                else
                {
                  v430 = v528;
                }

                [v430 setObject:v427 forKeyedSubscript:v429];

                v425 = v560;
              }
            }

            v423 = [v285 countByEnumeratingWithState:&v584 objects:v661 count:16];
          }

          while (v423);
          v284 = v543;
          v277 = 0;
        }

        v278 = v507;
LABEL_301:
        v279 = v514;
LABEL_302:
        v466 = (v466 - getMonotonicTimeInMilliseconds + v518);
        v467 = (v467 + 1);

LABEL_304:
        v582 = 0u;
        v583 = 0u;
        v580 = 0u;
        v581 = 0u;
        v519 = v244;
        v293 = [v519 countByEnumeratingWithState:&v580 objects:v660 count:16];
        if (!v293)
        {
          goto LABEL_318;
        }

        v294 = v293;
        v523 = *v581;
        do
        {
          for (i1 = 0; i1 != v294; ++i1)
          {
            if (*v581 != v523)
            {
              objc_enumerationMutation(v519);
            }

            v296 = *(*(&v580 + 1) + 8 * i1);
            v297 = [getCNContactClass() predicateForContactsMatchingEmailAddress:v296];
            getMonotonicTimeInMilliseconds2 = [v542 getMonotonicTimeInMilliseconds];
            contactStore2 = [v284 contactStore];
            v579 = v277;
            v299 = v297;
            v300 = [contactStore2 unifiedContactsMatchingPredicate:v297 keysToFetch:v544 error:&v579];
            v301 = v579;

            v277 = v301;
            getMonotonicTimeInMilliseconds3 = [v542 getMonotonicTimeInMilliseconds];
            if (v277)
            {
              firstObject = +[_PSLogging generalChannel];
              if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v665 = v277;
                _os_log_error_impl(&dword_1B5ED1000, firstObject, OS_LOG_TYPE_ERROR, "Error fetching contacts by email: %@", buf, 0xCu);
              }

              v284 = v543;
            }

            else
            {
              v284 = v543;
              if (![v300 count])
              {
                goto LABEL_316;
              }

              firstObject = [v300 firstObject];
              [v565 setObject:firstObject forKeyedSubscript:v296];
            }

LABEL_316:
            v538 = (getMonotonicTimeInMilliseconds3 - getMonotonicTimeInMilliseconds2 + v538);
          }

          v490 = (v490 + v294);
          v294 = [v519 countByEnumeratingWithState:&v580 objects:v660 count:16];
        }

        while (v294);
LABEL_318:

        v577 = 0u;
        v578 = 0u;
        v575 = 0u;
        v576 = 0u;
        v515 = v245;
        v304 = [v515 countByEnumeratingWithState:&v575 objects:v659 count:16];
        if (!v304)
        {
          v306 = v277;
          goto LABEL_334;
        }

        v305 = v304;
        v524 = *v576;
        v306 = v277;
        while (2)
        {
          v307 = 0;
          v308 = v306;
          while (2)
          {
            if (*v576 != v524)
            {
              objc_enumerationMutation(v515);
            }

            v309 = *(*(&v575 + 1) + 8 * v307);
            v310 = [getCNPhoneNumberClass() phoneNumberWithStringValue:v309];
            v311 = [getCNContactClass() predicateForContactsMatchingPhoneNumber:v310];
            getMonotonicTimeInMilliseconds4 = [v542 getMonotonicTimeInMilliseconds];
            contactStore3 = [v284 contactStore];
            v574 = v308;
            v313 = [contactStore3 unifiedContactsMatchingPredicate:v311 keysToFetch:v544 error:&v574];
            v314 = v574;

            v308 = v314;
            getMonotonicTimeInMilliseconds5 = [v542 getMonotonicTimeInMilliseconds];
            if (v308)
            {
              firstObject2 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v665 = v308;
                _os_log_error_impl(&dword_1B5ED1000, firstObject2, OS_LOG_TYPE_ERROR, "Error fetching contacts by phone number: %@", buf, 0xCu);
              }

              v284 = v543;
LABEL_329:
            }

            else
            {
              v284 = v543;
              if ([v313 count])
              {
                firstObject2 = [v313 firstObject];
                [v528 setObject:firstObject2 forKeyedSubscript:v309];
                goto LABEL_329;
              }
            }

            v536 = (getMonotonicTimeInMilliseconds5 - getMonotonicTimeInMilliseconds4 + v536);

            if (v305 != ++v307)
            {
              continue;
            }

            break;
          }

          v306 = v308;
          v488 = (v488 + v305);
          v305 = [v515 countByEnumeratingWithState:&v575 objects:v659 count:16];
          if (v305)
          {
            continue;
          }

          break;
        }

LABEL_334:
        v470 = v306;

        v317 = +[_PSLogging generalChannel];
        v241 = v560;
        v318 = v528;
        if (os_log_type_enabled(v317, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v665 = v560;
          v666 = 2112;
          v667 = v528;
          v668 = 2112;
          v669 = v565;
          _os_log_debug_impl(&dword_1B5ED1000, v317, OS_LOG_TYPE_DEBUG, "Change templates to suggestions, contactIDMapping: %@, phoneMapping: %@, emailMapping: %@", buf, 0x20u);
        }

        v572 = 0u;
        v573 = 0u;
        v570 = 0u;
        v571 = 0u;
        v512 = v511;
        v534 = [v512 countByEnumeratingWithState:&v570 objects:v658 count:16];
        v20 = v544;
        if (v534)
        {
          v525 = *v571;
          do
          {
            for (i2 = 0; i2 != v534; ++i2)
            {
              if (*v571 != v525)
              {
                objc_enumerationMutation(v512);
              }

              v320 = *(*(&v570 + 1) + 8 * i2);
              contactStore4 = [v284 contactStore];
              v322 = v20;
              v323 = [v320 suggestionWithContactIDMapping:v241 phoneMapping:v318 emailMapping:v565 contactStore:contactStore4 contactKeysToFetch:v20];

              if (!v323)
              {
                goto LABEL_425;
              }

              v324 = v323;
              if ([v284 areRecipientsBlockedForSuggestion:v323])
              {
                goto LABEL_425;
              }

              conversationIdentifier = [v323 conversationIdentifier];
              v326 = [v284 excludeSuggestionWithConversationId:conversationIdentifier];

              if (v326)
              {
                goto LABEL_425;
              }

              recipients14 = [v323 recipients];
              v328 = [recipients14 count];

              if (v505)
              {
                if (v328 == 1)
                {
                  recipients15 = [v323 recipients];
                  firstObject3 = [recipients15 firstObject];
                  contact = [firstObject3 contact];
                  identifier7 = [contact identifier];

                  v284 = v543;
                  LOBYTE(recipients15) = [identifier7 isEqualToString:v505];

                  v241 = v560;
                  if (recipients15)
                  {
                    goto LABEL_425;
                  }
                }
              }

              bundleID4 = [v323 bundleID];
              v334 = [v501 containsObject:bundleID4];

              if (v334)
              {
                recipients16 = [v323 recipients];
                v336 = [recipients16 count];

                if (v336 == 1)
                {
                  conversationIdentifier2 = [v323 conversationIdentifier];
                  if (conversationIdentifier2)
                  {
                    v338 = conversationIdentifier2;
                    conversationIdentifier3 = [v323 conversationIdentifier];
                    v340 = [v493 containsObject:conversationIdentifier3];

                    if ((v340 & 1) == 0)
                    {
                      conversationIdentifier4 = [v323 conversationIdentifier];
                      [v493 addObject:conversationIdentifier4];

                      recipients17 = [v323 recipients];
                      firstObject4 = [recipients17 firstObject];

                      v508 = firstObject4;
                      contact2 = [firstObject4 contact];
                      identifier8 = [contact2 identifier];

                      bundleID5 = [v323 bundleID];
                      v347 = [v480 containsObject:bundleID5];

                      if (v347)
                      {
                        bundleID6 = [v323 bundleID];
                        v349 = [identifier8 stringByAppendingString:bundleID6];

                        identifier8 = v349;
                      }

                      if ([v323 isReturnToSender])
                      {
                        v350 = objc_alloc(MEMORY[0x1E696AEC0]);
                        bundleID7 = [v323 bundleID];
                        v352 = +[_PSConstants returnToSenderReason];
                        v352 = [v350 initWithFormat:@"%@_%@_%@", identifier8, bundleID7, v352];

                        identifier8 = v352;
                      }

                      bundleID8 = [v323 bundleID];
                      v387 = +[_PSConstants collaborationSuggestionBundleId];
                      v388 = [bundleID8 isEqualToString:v387];

                      if (v388)
                      {
                        conversationIdentifier5 = [v323 conversationIdentifier];
                        bundleID9 = [v323 bundleID];
                        v391 = [conversationIdentifier5 stringByAppendingString:bundleID9];

                        identifier8 = v391;
                      }

                      v241 = v560;
                      if (identifier8 && ([v475 containsObject:identifier8] & 1) == 0)
                      {
                        [v475 addObject:identifier8];
                        [v479 addObject:v323];
                      }
                    }
                  }

                  goto LABEL_421;
                }

                recipients18 = [v323 recipients];
                v371 = [recipients18 count];

                if (v371 < 2)
                {
                  goto LABEL_421;
                }

                conversationIdentifier6 = [v323 conversationIdentifier];
                if (!conversationIdentifier6)
                {
                  goto LABEL_421;
                }

                v373 = conversationIdentifier6;
                conversationIdentifier7 = [v323 conversationIdentifier];
                v375 = [v493 containsObject:conversationIdentifier7];

                if (v375)
                {
                  goto LABEL_421;
                }

                conversationIdentifier8 = [v323 conversationIdentifier];
                [v493 addObject:conversationIdentifier8];

                bundleID10 = [v323 bundleID];
                v378 = +[_PSConstants mobileMessagesBundleId];
                if ([bundleID10 isEqualToString:v378])
                {
                  conversationIdentifier9 = [v323 conversationIdentifier];

                  if (conversationIdentifier9)
                  {
                    conversationIdentifier10 = [v323 conversationIdentifier];
                    v381 = [conversationIdentifier10 componentsSeparatedByString:@""];;
                    lastObject = [v381 lastObject];

                    if (lastObject && ([v475 containsObject:lastObject] & 1) == 0)
                    {
                      recipients19 = [v323 recipients];
                      v384 = [recipients19 valueForKey:@"handle"];
                      v385 = [v384 sortedArrayUsingSelector:sel_compare_];

                      if (([v476 containsObject:v385] & 1) == 0)
                      {
                        [v475 addObject:lastObject];
                        [v476 addObject:v385];
                        [v479 addObject:v323];
                      }

                      v241 = v560;
                    }

                    goto LABEL_421;
                  }
                }

                else
                {
                }

                [v479 addObject:v323];
                goto LABEL_421;
              }

              bundleID11 = [v323 bundleID];
              derivedIntentIdentifier5 = [v323 derivedIntentIdentifier];
              v356 = [derivedIntentIdentifier5 stringByAppendingString:bundleID11];

              groupName7 = [v323 groupName];
              v503 = v356;
              v358 = [groupName7 stringByAppendingString:v356];

              recipients20 = [v323 recipients];
              v360 = [dictionary objectForKeyedSubscript:bundleID11];
              if (!v360)
              {
                v360 = [MEMORY[0x1E695DFA8] set];
                [dictionary setObject:v360 forKeyedSubscript:bundleID11];
              }

              v318 = v528;
              if (v358 && ([v360 containsObject:v358] & 1) != 0)
              {

                goto LABEL_424;
              }

              v499 = v360;
              v361 = v503;
              if (!v503 || ([v493 containsObject:v503] & 1) != 0)
              {
                goto LABEL_420;
              }

              [v493 addObject:v503];
              if (v358)
              {
                [v499 addObject:v358];
              }

              if (![recipients20 count])
              {
                [v479 addObject:v324];
                goto LABEL_420;
              }

              v509 = bundleID11;
              v478 = recipients20;
              if ([recipients20 count] == 1)
              {
                recipients21 = [v324 recipients];
                firstObject5 = [recipients21 firstObject];

                contact3 = [firstObject5 contact];
                identifier9 = [contact3 identifier];

                handle4 = [firstObject5 handle];
                displayName4 = [firstObject5 displayName];
                if (displayName4)
                {
                  v368 = displayName4;
                  v471 = [displayName4 stringByAppendingString:v509];

                  if (identifier9)
                  {
                    goto LABEL_368;
                  }

LABEL_410:
                  v369 = identifier9;
                  if (handle4)
                  {
                    v657 = handle4;
                    v408 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v657 count:1];
                    v409 = [v476 containsObject:v408];

                    if ((v409 & 1) == 0)
                    {
                      v656 = handle4;
                      v410 = MEMORY[0x1E695DEC8];
                      v411 = &v656;
                      goto LABEL_416;
                    }

LABEL_418:

                    v318 = v528;
                    bundleID11 = v509;
                    v361 = v503;
                    goto LABEL_419;
                  }

                  if (!v471)
                  {
                    goto LABEL_418;
                  }

                  v655 = v471;
                  v412 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v655 count:1];
                  v413 = [v476 containsObject:v412];

                  if (v413)
                  {
                    goto LABEL_418;
                  }

                  v654 = v471;
                  v410 = MEMORY[0x1E695DEC8];
                  v411 = &v654;
LABEL_416:
                  v414 = [v410 arrayWithObjects:v411 count:1];
                  [v476 addObject:v414];
                }

                else
                {
                  v471 = 0;
                  if (!identifier9)
                  {
                    goto LABEL_410;
                  }

LABEL_368:
                  v369 = identifier9;
                  if ([v475 containsObject:identifier9])
                  {
                    goto LABEL_418;
                  }

                  [v475 addObject:identifier9];
                }

                [v479 addObject:v324];
                goto LABEL_418;
              }

              v392 = recipients20;
              v472 = v358;
              array2 = [MEMORY[0x1E695DF70] array];
              v566 = 0u;
              v567 = 0u;
              v568 = 0u;
              v569 = 0u;
              v394 = v392;
              v395 = [v394 countByEnumeratingWithState:&v566 objects:v653 count:16];
              if (!v395)
              {
                goto LABEL_404;
              }

              v396 = v395;
              v397 = *v567;
              do
              {
                v398 = 0;
                do
                {
                  if (*v567 != v397)
                  {
                    objc_enumerationMutation(v394);
                  }

                  v399 = *(*(&v566 + 1) + 8 * v398);
                  contact4 = [v399 contact];

                  if (contact4)
                  {
                    contact5 = [v399 contact];
                    identifier10 = [contact5 identifier];
                    goto LABEL_395;
                  }

                  handle5 = [v399 handle];

                  if (handle5)
                  {
                    contact5 = [v399 handle];
                    [array2 addObject:contact5];
                    goto LABEL_398;
                  }

                  displayName5 = [v399 displayName];

                  if (displayName5)
                  {
                    contact5 = [v399 displayName];
                    identifier10 = [contact5 stringByAppendingString:v509];
LABEL_395:
                    v403 = identifier10;
                    [array2 addObject:identifier10];

LABEL_398:
                  }

                  ++v398;
                }

                while (v396 != v398);
                v406 = [v394 countByEnumeratingWithState:&v566 objects:v653 count:16];
                v396 = v406;
              }

              while (v406);
LABEL_404:

              v407 = [array2 sortedArrayUsingSelector:sel_compare_];
              if (([v476 containsObject:v407] & 1) == 0)
              {
                [v476 addObject:v407];
                [v479 addObject:v324];
              }

              v241 = v560;
              v318 = v528;
              bundleID11 = v509;
              v361 = v503;
              v358 = v472;
LABEL_419:
              recipients20 = v478;
LABEL_420:

LABEL_421:
              bundleID11 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(bundleID11, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138740227;
                v665 = v479;
                v666 = 2112;
                v667 = v476;
                _os_log_debug_impl(&dword_1B5ED1000, bundleID11, OS_LOG_TYPE_DEBUG, "suggestions array: %{sensitive}@, addedRecipientInfo: %@", buf, 0x16u);
              }

              v284 = v543;
LABEL_424:

              v323 = v324;
LABEL_425:

              v20 = v322;
            }

            v534 = [v512 countByEnumeratingWithState:&v570 objects:v658 count:16];
          }

          while (v534);
        }

        v415 = [v479 count];
        objc_autoreleasePoolPop(v469);
        if (v415 >= v465)
        {
          goto LABEL_454;
        }

        v242 = v468 + 1;
      }

      while (v468 + 1 != v464);
      v431 = [v462 countByEnumeratingWithState:&v613 objects:v674 count:16];
      v464 = v431;
      if (!v431)
      {
        goto LABEL_454;
      }
    }
  }

  v466 = 0;
  v467 = 0;
  v538 = 0;
  v536 = 0;
  v488 = 0;
  v490 = 0;
  v470 = 0;
LABEL_454:

  v651[0] = @"templateBatches_total";
  v432 = MEMORY[0x1E696AEC0];
  if (v462)
  {
    v433 = [v462 count];
  }

  else
  {
    v433 = 0;
  }

  v433 = [v432 stringWithFormat:@"%ld", v433];
  v652[0] = v433;
  v651[1] = @"contactStoreIdQueryTimeSumInMillis";
  v466 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v466];
  v652[1] = v466;
  v651[2] = @"contactStoreIdQueryCount";
  v467 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v467];
  v652[2] = v467;
  v651[3] = @"contactStorePhoneQueryTimeSumInMillis";
  v536 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v536];
  v652[3] = v536;
  v651[4] = @"contactStorePhoneQueryCount";
  v488 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v488];
  v652[4] = v488;
  v651[5] = @"contactStoreEmailQueryTimeSumInMillis";
  v538 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v538];
  v652[5] = v538;
  v651[6] = @"contactStoreEmailQueryCount";
  v490 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v490];
  v652[6] = v490;
  v441 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v652 forKeys:v651 count:7];
  [v542 addAttributes:v441];

  [v542 end];
  [v543 updateTrialID:v479];
  v442 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v442, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel suggestionsFromSuggestionProxies:v543 supportedBundleIDs:? contactKeysToFetch:? meContactIdentifier:? maxSuggestions:?];
  }

  v443 = [v543 getReasonTypesFromObjects:v479];
  v444 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v444, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel suggestionsFromSuggestionProxies:supportedBundleIDs:contactKeysToFetch:meContactIdentifier:maxSuggestions:];
  }

  v649[0] = @"suggestionProxiesCount";
  v445 = MEMORY[0x1E696AEC0];
  v446 = obj;
  if (obj)
  {
    v446 = [obj count];
  }

  v446 = [v445 stringWithFormat:@"%ld", v446];
  v650[0] = v446;
  v649[1] = @"suggestionsCountAfterResolution";
  v448 = MEMORY[0x1E696AEC0];
  if (v479)
  {
    v449 = [v479 count];
  }

  else
  {
    v449 = 0;
  }

  v449 = [v448 stringWithFormat:@"%ld", v449];
  v650[1] = v449;
  v649[2] = @"suggestionReasonTypes";
  v443 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v443];
  v650[2] = v443;
  v452 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v650 forKeys:v649 count:3];
  [v461 addAttributes:v452];

  [v461 end];
  v453 = [v479 copy];

  v454 = *MEMORY[0x1E69E9840];

  return v453;
}

- (BOOL)areRecipientsBlockedForSuggestion:(id)suggestion
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recipients = [suggestion recipients];
  v4 = [recipients countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(recipients);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = +[_PSBlockedHandlesCache sharedBlockedHandlesCache];
        handle = [v7 handle];
        v10 = [v8 isHandleBlocked:handle];

        if (v10)
        {
          v4 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            handle2 = [v7 handle];
            *buf = 138478083;
            v19 = handle2;
            v20 = 2113;
            v21 = v7;
            _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "handle %{private}@ is blocked; dropping recipient %{private}@", buf, 0x16u);
          }

          LOBYTE(v4) = 1;
          goto LABEL_13;
        }
      }

      v4 = [recipients countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)excludeSuggestionWithConversationId:(id)id
{
  idCopy = id;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && ([idCopy _appearsToBeBusinessID] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(idCopy, "_appearsToBeTemporaryID") & 1) != 0;

  return v4;
}

- (id)mergedSuggestionsWithFamilySuggestions:(id)suggestions shareSheetSuggestions:(id)sheetSuggestions maxSuggestions:(unint64_t)maxSuggestions supportedBundleIds:(id)ids
{
  v57 = *MEMORY[0x1E69E9840];
  sheetSuggestionsCopy = sheetSuggestions;
  idsCopy = ids;
  v11 = [MEMORY[0x1E695DF70] arrayWithArray:suggestions];
  if ([v11 count])
  {
    v44 = idsCopy;
    v42 = sheetSuggestionsCopy;
    v12 = [MEMORY[0x1E695DFA8] set];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v41 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v56 count:16];
    maxSuggestionsCopy = maxSuggestions;
    if (v14)
    {
      v16 = v14;
      v17 = *v52;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(v13);
          }

          recipients = [*(*(&v51 + 1) + 8 * i) recipients];
          firstObject = [recipients firstObject];

          contact = [firstObject contact];
          identifier = [contact identifier];

          if (identifier)
          {
            [v12 addObject:identifier];
          }
        }

        v16 = [v13 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v16);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v23 = v42;
    idsCopy = v44;
    v46 = [v23 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v46)
    {
      v45 = *v48;
      v43 = v23;
LABEL_13:
      v24 = 0;
      while (1)
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(v23);
        }

        v25 = *(*(&v47 + 1) + 8 * v24);
        if ([v13 count] == maxSuggestionsCopy)
        {
          break;
        }

        bundleID = [v25 bundleID];
        v27 = [idsCopy containsObject:bundleID];

        if (v27)
        {
          recipients2 = [v25 recipients];
          v29 = [recipients2 count];

          if (v29 > 1)
          {
            goto LABEL_20;
          }

          recipients3 = [v25 recipients];
          firstObject2 = [recipients3 firstObject];
          [firstObject2 contact];
          v33 = v32 = maxSuggestionsCopy;
          identifier2 = [v33 identifier];
          v35 = [v12 containsObject:identifier2];

          idsCopy = v44;
          maxSuggestionsCopy = v32;
          v23 = v43;

          if ((v35 & 1) == 0)
          {
LABEL_20:
            [v13 addObject:v25];
          }
        }

        if (v46 == ++v24)
        {
          v46 = [v23 countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v46)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    v36 = [v13 copy];
    v11 = v41;
    sheetSuggestionsCopy = v42;
  }

  else
  {
    v37 = [sheetSuggestionsCopy count];
    if (v37 >= maxSuggestions)
    {
      maxSuggestionsCopy2 = maxSuggestions;
    }

    else
    {
      maxSuggestionsCopy2 = v37;
    }

    v36 = [sheetSuggestionsCopy subarrayWithRange:{0, maxSuggestionsCopy2}];
  }

  v39 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)predictWithMapsPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions
{
  v68[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [_PSContactResolver alloc];
  contactStore = [(_PSEnsembleModel *)self contactStore];
  v9 = _PSMapsContactKeysToFetch();
  v10 = [(_PSContactResolver *)v7 initWithContactStore:contactStore keysToFetch:v9];

  contactStore2 = [(_PSEnsembleModel *)self contactStore];
  v12 = getCNContactIdentifierKey_0();
  v68[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
  v63 = 0;
  v14 = [contactStore2 _ios_meContactWithKeysToFetch:v13 error:&v63];
  v15 = v63;

  if (v15)
  {
    v16 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel predictWithMapsPredictionContext:maxSuggestions:];
    }
  }

  v57 = v15;
  v58 = v14;
  identifier = [v14 identifier];
  knowledgeStoreWithDirectReadOnlyAccess = [MEMORY[0x1E69979A0] knowledgeStoreWithDirectReadOnlyAccess];
  interactionStore = [(_PSEnsembleModel *)self interactionStore];
  os_unfair_lock_lock(&self->_lock);
  knnMapsModel = [(_PSEnsembleModel *)self knnMapsModel];

  if (!knnMapsModel)
  {
    v21 = [[_PSKNNModel alloc] initWithK:500 interactionStore:interactionStore filterByBundleIds:0 knowledgeStore:knowledgeStoreWithDirectReadOnlyAccess contactResolver:v10 messageInteractionCache:0 shareInteractionCache:0];
    [(_PSEnsembleModel *)self setKnnMapsModel:v21];

    knnMapsModel2 = [(_PSEnsembleModel *)self knnMapsModel];
    psConfig = [(_PSEnsembleModel *)self psConfig];
    [knnMapsModel2 updateModelProperties:psConfig];
  }

  os_unfair_lock_unlock(&self->_lock);
  v24 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSMapsPeopleKnnSuggestions", &unk_1B5FD970D, buf, 2u);
  }

  knnMapsModel3 = [(_PSEnsembleModel *)self knnMapsModel];
  v26 = [knnMapsModel3 rankedMapsShareEtaSuggestions:contextCopy maxSuggestions:suggestions];

  v27 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSMapsPeopleKnnSuggestions", &unk_1B5FD970D, buf, 2u);
  }

  v55 = interactionStore;

  v28 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v26 count];
    *buf = 134349315;
    v65 = v29;
    v66 = 2113;
    v67 = v26;
    _os_log_impl(&dword_1B5ED1000, v28, OS_LOG_TYPE_DEFAULT, "Maps ShareETA KNN suggestions: %{public}tu (%{private}@)", buf, 0x16u);
  }

  v30 = v26;
  v31 = v30;
  if ([v30 count] < suggestions)
  {
    knnMapsModel4 = [(_PSEnsembleModel *)self knnMapsModel];
    v33 = knnMapsModel4;
    if (suggestions <= 0x64)
    {
      suggestionsCopy = 100;
    }

    else
    {
      suggestionsCopy = suggestions;
    }

    v35 = [knnMapsModel4 mapsShareEtaDefaultKnnSuggestions:contextCopy maxSuggestions:suggestionsCopy];

    v31 = [(_PSEnsembleModel *)self mapsSuggestionArrayWithArray:v30 appendingUniqueElementsFromArray:v35 contactResolver:v10 meContactId:identifier];
  }

  seedContactIdentifiers = [contextCopy seedContactIdentifiers];
  v56 = knowledgeStoreWithDirectReadOnlyAccess;
  if (seedContactIdentifiers && (v37 = seedContactIdentifiers, v38 = [v31 count], v37, v38))
  {
    v39 = [(_PSEnsembleModel *)self rerankMapsSuggestions:v31 usingPredictionContext:contextCopy contactResolver:v10];
  }

  else
  {
    v39 = v31;
  }

  v40 = v39;
  v41 = identifier;
  v42 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __68___PSEnsembleModel_predictWithMapsPredictionContext_maxSuggestions___block_invoke;
    v61[3] = &unk_1E7C24AB8;
    v62 = v31;
    v43 = [v40 _pas_mappedArrayWithIndexedTransform:v61];
    v44 = [v43 _pas_componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v65 = v44;
    _os_log_impl(&dword_1B5ED1000, v42, OS_LOG_TYPE_DEFAULT, "Maps ShareETA re-ranking: %{public}@", buf, 0xCu);
  }

  v45 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __68___PSEnsembleModel_predictWithMapsPredictionContext_maxSuggestions___block_invoke_708;
    v59[3] = &unk_1E7C24AB8;
    v60 = v31;
    v46 = [v40 _pas_mappedArrayWithIndexedTransform:v59];
    v47 = [v46 _pas_componentsJoinedByString:{@", "}];

    *buf = 138477827;
    v65 = v47;
    _os_log_impl(&dword_1B5ED1000, v45, OS_LOG_TYPE_DEFAULT, "Maps ShareETA re-ranking private: %{private}@", buf, 0xCu);
  }

  v48 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v40, "count")}];
    *buf = 138543362;
    v65 = v49;
    _os_log_impl(&dword_1B5ED1000, v48, OS_LOG_TYPE_DEFAULT, "Total Maps ShareETA Suggestions count = %{public}@", buf, 0xCu);
  }

  v50 = [v40 count];
  if (v50 >= suggestions)
  {
    suggestionsCopy2 = suggestions;
  }

  else
  {
    suggestionsCopy2 = v50;
  }

  v52 = [v40 subarrayWithRange:{0, suggestionsCopy2}];

  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

- (id)rerankMapsSuggestions:(id)suggestions usingPredictionContext:(id)context contactResolver:(id)resolver
{
  v199 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  contextCopy = context;
  resolverCopy = resolver;
  contactStore = [(_PSEnsembleModel *)self contactStore];
  selfCopy = self;
  defaultContactKeysToFetch = [(_PSEnsembleModel *)self defaultContactKeysToFetch];
  v115 = [contactStore _ios_meContactWithKeysToFetch:defaultContactKeysToFetch error:0];

  v123 = objc_opt_new();
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v139 = contextCopy;
  seedContactIdentifiers = [contextCopy seedContactIdentifiers];
  v12 = [seedContactIdentifiers countByEnumeratingWithState:&v183 objects:v198 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v184;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v184 != v14)
        {
          objc_enumerationMutation(seedContactIdentifiers);
        }

        v16 = [resolverCopy contactWithIdentifier:*(*(&v183 + 1) + 8 * i)];
        if (v16)
        {
          v17 = [_PSRecipient alloc];
          identifier = [v16 identifier];
          v19 = [(_PSRecipient *)v17 initWithIdentifier:identifier handle:0 contact:v16];

          if (v19)
          {
            identifier2 = [v115 identifier];
            identifier3 = [v16 identifier];
            v22 = [identifier2 isEqualToString:identifier3];

            if ((v22 & 1) == 0)
            {
              [v123 addObject:v19];
            }
          }
        }

        else
        {
          v19 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [_PSEnsembleModel rerankMapsSuggestions:v182 usingPredictionContext:? contactResolver:?];
          }
        }
      }

      v13 = [seedContactIdentifiers countByEnumeratingWithState:&v183 objects:v198 count:16];
    }

    while (v13);
  }

  v23 = v123;
  if ([v123 count])
  {
    v24 = [v123 count];
    seedContactIdentifiers2 = [v139 seedContactIdentifiers];
    v26 = [seedContactIdentifiers2 count];

    if (v24 != v26)
    {
      v27 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v27, OS_LOG_TYPE_DEFAULT, "Dropped a few contact ids from seedContactIdentifiers since a recipient could not be generated", buf, 2u);
      }
    }

    v137 = objc_opt_new();
    v116 = objc_opt_new();
    v112 = objc_opt_new();
    v138 = objc_opt_new();
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    obj = suggestionsCopy;
    v28 = v123;
    v119 = [obj countByEnumeratingWithState:&v176 objects:v197 count:16];
    if (v119)
    {
      v117 = *v177;
      do
      {
        for (j = 0; j != v119; ++j)
        {
          if (*v177 != v117)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v176 + 1) + 8 * j);
          v172 = 0u;
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v134 = v30;
          recipients = [v30 recipients];
          v124 = [recipients countByEnumeratingWithState:&v172 objects:v196 count:16];
          if (v124)
          {
            v32 = *v173;
            v131 = recipients;
            v121 = *v173;
            do
            {
              v33 = 0;
              do
              {
                if (*v173 != v32)
                {
                  objc_enumerationMutation(recipients);
                }

                v127 = v33;
                contact = [*(*(&v172 + 1) + 8 * v33) contact];
                v168 = 0u;
                v169 = 0u;
                v170 = 0u;
                v171 = 0u;
                v35 = v28;
                v36 = [v35 countByEnumeratingWithState:&v168 objects:v195 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v169;
                  while (2)
                  {
                    for (k = 0; k != v37; ++k)
                    {
                      if (*v169 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      if (contact)
                      {
                        v40 = *(*(&v168 + 1) + 8 * k);
                        contact2 = [v40 contact];

                        if (contact2)
                        {
                          identifier4 = [contact identifier];
                          contact3 = [v40 contact];
                          identifier5 = [contact3 identifier];
                          v45 = [identifier4 isEqualToString:identifier5];

                          if (v45)
                          {
                            [v116 addObject:v134];

                            v28 = v123;
                            goto LABEL_43;
                          }
                        }
                      }
                    }

                    v37 = [v35 countByEnumeratingWithState:&v168 objects:v195 count:16];
                    if (v37)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v33 = v127 + 1;
                v32 = v121;
                v28 = v123;
                recipients = v131;
              }

              while ((v127 + 1) != v124);
              v124 = [v131 countByEnumeratingWithState:&v172 objects:v196 count:16];
            }

            while (v124);
          }

          [v112 addObject:v134];
LABEL_43:
          ;
        }

        v119 = [obj countByEnumeratingWithState:&v176 objects:v197 count:16];
      }

      while (v119);
    }

    v46 = [v28 count];
    if (v46 != [v116 count])
    {
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      obja = v28;
      v47 = v116;
      v122 = [obja countByEnumeratingWithState:&v164 objects:v194 count:16];
      if (v122)
      {
        v118 = *v165;
        do
        {
          for (m = 0; m != v122; ++m)
          {
            if (*v165 != v118)
            {
              objc_enumerationMutation(obja);
            }

            v49 = *(*(&v164 + 1) + 8 * m);
            v160 = 0u;
            v161 = 0u;
            v162 = 0u;
            v163 = 0u;
            v50 = v47;
            v125 = [(_PSSuggestion *)v50 countByEnumeratingWithState:&v160 objects:v193 count:16];
            if (v125)
            {
              v51 = *v161;
              v132 = v50;
              v135 = m;
              v120 = *v161;
              do
              {
                v52 = 0;
                do
                {
                  if (*v161 != v51)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v128 = v52;
                  v53 = *(*(&v160 + 1) + 8 * v52);
                  v156 = 0u;
                  v157 = 0u;
                  v158 = 0u;
                  v159 = 0u;
                  recipients2 = [v53 recipients];
                  v55 = [recipients2 countByEnumeratingWithState:&v156 objects:v192 count:16];
                  if (v55)
                  {
                    v56 = v55;
                    v57 = *v157;
                    while (2)
                    {
                      for (n = 0; n != v56; ++n)
                      {
                        if (*v157 != v57)
                        {
                          objc_enumerationMutation(recipients2);
                        }

                        v59 = *(*(&v156 + 1) + 8 * n);
                        contact4 = [v49 contact];
                        identifier6 = [contact4 identifier];
                        contact5 = [v59 contact];
                        identifier7 = [contact5 identifier];
                        v64 = [identifier6 isEqualToString:identifier7];

                        if (v64)
                        {

                          v47 = v116;
                          v72 = v132;
                          m = v135;
                          goto LABEL_68;
                        }
                      }

                      v56 = [recipients2 countByEnumeratingWithState:&v156 objects:v192 count:16];
                      if (v56)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v52 = v128 + 1;
                  v50 = v132;
                  m = v135;
                  v51 = v120;
                }

                while ((v128 + 1) != v125);
                v47 = v116;
                v125 = [(_PSSuggestion *)v132 countByEnumeratingWithState:&v160 objects:v193 count:16];
              }

              while (v125);
            }

            contactResolver = [(_PSEnsembleModel *)selfCopy contactResolver];
            contact6 = [v49 contact];
            v67 = [contactResolver allEmailAndPhoneNumberHandlesForContact:contact6];
            firstObject = [v67 firstObject];
            [v49 setHandle:firstObject];

            v69 = [_PSSuggestion alloc];
            handle = [v49 handle];
            v191 = v49;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v191 count:1];
            LOBYTE(v109) = 0;
            v72 = [(_PSSuggestion *)v69 initWithBundleID:handle conversationIdentifier:0 groupName:0 recipients:v71 derivedIntentIdentifier:0 image:0 reason:@"Maps Seeded Contact" reasonType:0 score:0 familySuggestion:v109];

            [v138 addObject:v72];
LABEL_68:
          }

          v122 = [obja countByEnumeratingWithState:&v164 objects:v194 count:16];
        }

        while (v122);
      }
    }

    v73 = v137;
    if ([v116 count])
    {
      [v137 addObjectsFromArray:v116];
    }

    if ([v116 count] > 1)
    {
      v74 = 2;
    }

    else
    {
      v74 = [v116 count];
    }

    v75 = suggestionsCopy;
    if ([v138 count])
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v126 = [v138 copy];
      v133 = [v126 countByEnumeratingWithState:&v148 objects:v189 count:16];
      if (v133)
      {
        v129 = *v149;
        do
        {
          v76 = 0;
          do
          {
            if (*v149 != v129)
            {
              objc_enumerationMutation(v126);
            }

            v136 = v76;
            v77 = *(*(&v148 + 1) + 8 * v76);
            v144 = 0u;
            v145 = 0u;
            v146 = 0u;
            v147 = 0u;
            recipients3 = [v77 recipients];
            v79 = [recipients3 countByEnumeratingWithState:&v144 objects:v188 count:16];
            if (v79)
            {
              v80 = v79;
              v81 = *v145;
              do
              {
                for (ii = 0; ii != v80; ++ii)
                {
                  if (*v145 != v81)
                  {
                    objc_enumerationMutation(recipients3);
                  }

                  v83 = *(*(&v144 + 1) + 8 * ii);
                  seedContactIdentifiers3 = [v139 seedContactIdentifiers];
                  contact7 = [v83 contact];
                  identifier8 = [contact7 identifier];
                  v87 = [seedContactIdentifiers3 containsObject:identifier8];

                  if (v87)
                  {
                    contact8 = [v83 contact];
                    postalAddresses = [contact8 postalAddresses];
                    v90 = [postalAddresses count];

                    if (v90)
                    {
                      seedContactIdentifiers4 = [v139 seedContactIdentifiers];
                      contact9 = [v83 contact];
                      identifier9 = [contact9 identifier];
                      v94 = [seedContactIdentifiers4 indexOfObject:identifier9];

                      if (v94 > [v137 count])
                      {
                        v94 = [v137 count];
                      }

                      [v137 insertObject:v77 atIndex:v94];
                      [v138 removeObject:v77];
                    }
                  }
                }

                v80 = [recipients3 countByEnumeratingWithState:&v144 objects:v188 count:16];
              }

              while (v80);
            }

            v76 = v136 + 1;
          }

          while (v136 + 1 != v133);
          v133 = [v126 countByEnumeratingWithState:&v148 objects:v189 count:16];
        }

        while (v133);
      }

      v73 = v137;
      [v137 addObjectsFromArray:v112];
      [v137 addObjectsFromArray:v138];
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v95 = v112;
      v96 = [v95 countByEnumeratingWithState:&v140 objects:v187 count:16];
      v75 = suggestionsCopy;
      if (v96)
      {
        v97 = v96;
        v98 = *v141;
        do
        {
          for (jj = 0; jj != v97; ++jj)
          {
            if (*v141 != v98)
            {
              objc_enumerationMutation(v95);
            }

            v100 = *(*(&v140 + 1) + 8 * jj);
            if (([v137 containsObject:v100] & 1) == 0)
            {
              [v137 addObject:v100];
            }
          }

          v97 = [v95 countByEnumeratingWithState:&v140 objects:v187 count:16];
        }

        while (v97);
      }
    }

    else
    {
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v101 = v112;
      v102 = [v101 countByEnumeratingWithState:&v152 objects:v190 count:16];
      if (v102)
      {
        v103 = v102;
        v104 = *v153;
        do
        {
          for (kk = 0; kk != v103; ++kk)
          {
            if (*v153 != v104)
            {
              objc_enumerationMutation(v101);
            }

            v106 = *(*(&v152 + 1) + 8 * kk);
            if (v74 > [v137 count])
            {
              v74 = [v137 count];
            }

            [v137 insertObject:v106 atIndex:v74++];
          }

          v103 = [v101 countByEnumeratingWithState:&v152 objects:v190 count:16];
        }

        while (v103);
      }
    }

    v23 = v123;
  }

  else
  {
    v75 = suggestionsCopy;
    v73 = suggestionsCopy;
  }

  v107 = *MEMORY[0x1E69E9840];

  return v73;
}

- (id)mapsSuggestionArrayWithArray:(id)array appendingUniqueElementsFromArray:(id)fromArray contactResolver:(id)resolver meContactId:(id)id
{
  v44 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  idCopy = id;
  v9 = [array arrayByAddingObjectsFromArray:fromArray];
  array = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DFA8] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    v35 = v11;
    do
    {
      v15 = 0;
      v38 = v13;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        recipients = [v16 recipients];
        v18 = [recipients count];

        if (v18 == 1)
        {
          v19 = v10;
          recipients2 = [v16 recipients];
          firstObject = [recipients2 firstObject];

          contact = [firstObject contact];
          if (contact)
          {
            v23 = contact;
            v24 = [resolverCopy allEmailAndPhoneNumberHandlesForContact:contact];
            handle = [firstObject handle];
            v26 = [v24 containsObject:handle];

            if ((v26 & 1) == 0)
            {
              goto LABEL_16;
            }

LABEL_11:
            identifier = [v23 identifier];
            if (([identifier isEqualToString:idCopy] & 1) == 0)
            {
              identifier2 = [v23 identifier];
              v31 = [v19 containsObject:identifier2];

              if (v31)
              {
                v11 = v35;
                goto LABEL_16;
              }

              [array addObject:v16];
              identifier = [v23 identifier];
              [v19 addObject:identifier];
              v11 = v35;
            }

            goto LABEL_16;
          }

          handle2 = [firstObject handle];
          v23 = [resolverCopy resolveContactIfPossibleFromContactIdentifierString:handle2 pickFirstOfMultiple:1];

          identifier3 = [v23 identifier];
          [firstObject setIdentifier:identifier3];

          [firstObject setContact:v23];
          if (v23)
          {
            goto LABEL_11;
          }

LABEL_16:

          v10 = v19;
          v13 = v38;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);
  }

  v32 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)suggestZKWSuggestionsWithPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions
{
  v96[8] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  bundleID = [contextCopy bundleID];
  v7 = +[_PSConstants mobileSharePlayPeoplePickerBundleId];
  v8 = [bundleID isEqualToString:v7];

  if (v8)
  {
    v9 = +[_PSConstants mobileFacetimeBundleId];
    [contextCopy setBundleID:v9];
  }

  bundleID2 = [contextCopy bundleID];
  v11 = +[_PSConstants macSharePlayPeoplePickerBundleId];
  v12 = [bundleID2 isEqualToString:v11];

  if (v12)
  {
    v13 = +[_PSConstants macFacetimeBundleId];
    [contextCopy setBundleID:v13];
  }

  bundleID3 = [contextCopy bundleID];
  v15 = +[_PSConstants preferencesBundleId];
  if ([bundleID3 isEqualToString:v15])
  {
  }

  else
  {
    bundleID4 = [contextCopy bundleID];
    v17 = +[_PSConstants mobilePhoneBundleId];
    v18 = [bundleID4 isEqualToString:v17];

    if (!v18)
    {
      goto LABEL_9;
    }
  }

  v19 = +[_PSConstants mobileMessagesBundleId];
  [contextCopy setBundleID:v19];

LABEL_9:
  bundleID5 = [contextCopy bundleID];
  v21 = +[_PSConstants passwordsAppBundleId];
  v22 = [bundleID5 isEqualToString:v21];

  if (v22)
  {
    v23 = +[_PSConstants mobileMessagesBundleId];
    [contextCopy setBundleID:v23];
  }

  bundleID6 = [contextCopy bundleID];
  v25 = +[_PSConstants macSafariBundleId];
  if ([bundleID6 isEqualToString:v25])
  {
    goto LABEL_14;
  }

  bundleID7 = [contextCopy bundleID];
  v27 = +[_PSConstants macSafariTechnologyPreviewBundleId];
  if ([bundleID7 isEqualToString:v27])
  {

LABEL_14:
LABEL_15:
    v28 = +[_PSConstants mobileMessagesBundleId];
    [contextCopy setBundleID:v28];

    goto LABEL_16;
  }

  bundleID8 = [contextCopy bundleID];
  v72 = +[_PSConstants macSafariPlatformSupportBundleId];
  v73 = [bundleID8 isEqualToString:v72];

  if (v73)
  {
    goto LABEL_15;
  }

LABEL_16:
  v29 = +[_PSFTZKWConfig useBlendingLayer];
  bundleID9 = [contextCopy bundleID];
  v31 = +[_PSConstants findMyBundleId];
  v32 = [bundleID9 isEqualToString:v31];

  if (v32)
  {
    v33 = +[_PSConstants mobileMessagesBundleId];
    [contextCopy setBundleID:v33];
  }

  bundleID10 = [contextCopy bundleID];
  v35 = +[_PSConstants mobileFacetimeBundleId];
  if ([bundleID10 isEqualToString:v35])
  {
    v36 = 1;
  }

  else
  {
    bundleID11 = [contextCopy bundleID];
    v38 = +[_PSConstants macFacetimeBundleId];
    v36 = [bundleID11 isEqualToString:v38];
  }

  bundleID12 = [contextCopy bundleID];
  v40 = +[_PSConstants mobileMessagesBundleId];
  if ([bundleID12 isEqualToString:v40])
  {
    v41 = 1;
  }

  else
  {
    bundleID13 = [contextCopy bundleID];
    v43 = +[_PSConstants macMessagesBundleId];
    v41 = [bundleID13 isEqualToString:v43];
  }

  if ((_os_feature_enabled_impl() & v36) == 1)
  {
    v44 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v44, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeTotalTime", " enableTelemetry=YES ", buf, 2u);
    }

    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __78___PSEnsembleModel_suggestZKWSuggestionsWithPredictionContext_maxSuggestions___block_invoke;
    v90[3] = &unk_1E7C24880;
    v90[4] = self;
    [_PSFTZKWTrialWrapper runIfUpdated:v90];
    config = [(_PSFTZKWOrchestrator *)self->_zkwFTOrchestrator config];
    [config setUseBlendingLayer:v29];

    v87 = [(_PSFTZKWOrchestrator *)self->_zkwFTOrchestrator getSuggestionsWithPredictionContext:contextCopy];
    v46 = [_PSFTZKWSuggestionsTransformerFactory alloc];
    interactionStore = [(_PSEnsembleModel *)self interactionStore];
    v48 = [(_PSFTZKWSuggestionsTransformerFactory *)v46 initWithInteractionStore:interactionStore];

    v85 = MEMORY[0x1E695DF70];
    v84 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 mapRecipientsToContactsWithUnmapped:1];
    v96[0] = v84;
    v83 = -[_PSFTZKWSuggestionsTransformerFactory filterIDSReachable:](v48, "filterIDSReachable:", [contextCopy bypassIDSFilter]);
    v96[1] = v83;
    v82 = +[_PSConstants mobileMessagesBundleId];
    v95[0] = v82;
    v81 = +[_PSConstants macMessagesBundleId];
    v95[1] = v81;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
    v79 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 formatWithBundleIdsForGroupMatching:v80];
    v96[2] = v79;
    seedRecipients = [contextCopy seedRecipients];
    v77 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 deduplicateWithSeedRecipients:seedRecipients];
    v96[3] = v77;
    v76 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 deduplicateWithMaxSuggestions:suggestions];
    v96[4] = v76;
    zkwFTTrialData = [(_PSEnsembleModel *)self zkwFTTrialData];
    experimentIdentifiers = [zkwFTTrialData experimentIdentifiers];
    zkwFTTrialData2 = [(_PSEnsembleModel *)self zkwFTTrialData];
    rolloutIdentifiers = [zkwFTTrialData2 rolloutIdentifiers];
    v53 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 annotateWithTrialExperimentIdentifiers:experimentIdentifiers rolloutIdentifiers:rolloutIdentifiers];
    v96[5] = v53;
    priorityContacts = [contextCopy priorityContacts];
    v55 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 boostPriorityContacts:priorityContacts];
    v96[6] = v55;
    v89 = v48;
    filterBlockedContacts = [(_PSFTZKWSuggestionsTransformerFactory *)v48 filterBlockedContacts];
    v96[7] = filterBlockedContacts;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:8];
    v86 = [v85 arrayWithArray:v57];

    v58 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v58))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v58, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeTransformersTotalTime", " enableTelemetry=YES ", buf, 2u);
    }

    v59 = [_PSFTZKWSuggestionsTransformerFactory getResultsFromTransformers:v86 suggestions:v87];
    v60 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v60))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v60, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeTransformersTotalTime", &unk_1B5FD970D, buf, 2u);
    }

    v61 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v61))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v61, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSZKWFaceTimeTotalTime", &unk_1B5FD970D, buf, 2u);
    }

    v62 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v94 = v59;
      _os_log_impl(&dword_1B5ED1000, v62, OS_LOG_TYPE_DEFAULT, "Final ZKW suggestions post-transformers: %{sensitive}@", buf, 0xCu);
    }
  }

  else if (v41)
  {
    v63 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F2D8B220];
    v64 = [_PSKNNModelConfiguration alloc];
    v92 = v63;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
    v66 = MEMORY[0x1E695DFD8];
    bundleID14 = [contextCopy bundleID];
    v68 = [v66 setWithObject:bundleID14];
    v91 = v68;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
    v70 = [(_PSKNNModelConfiguration *)v64 initWithInteractionMechanisms:v65 interactionCountMaxDepths:&unk_1F2D8C150 interactionHistoryRelativeStartDates:&unk_1F2D8C168 bundleIds:v69 modelType:0 clusterPruneThreshold:5 modelName:@"PastMessages"];

    v59 = [(_PSEnsembleModel *)self _knnZKWSuggestionsWithPredictionContext:contextCopy modelConfiguration:v70 maxSuggestions:suggestions];
  }

  else
  {
    v59 = MEMORY[0x1E695E0F0];
  }

  v74 = *MEMORY[0x1E69E9840];

  return v59;
}

- (id)_knnZKWSuggestionsWithPredictionContext:(id)context modelConfiguration:(id)configuration maxSuggestions:(unint64_t)suggestions
{
  configurationCopy = configuration;
  contextCopy = context;
  knnZkwModel = [(_PSEnsembleModel *)self knnZkwModel];
  v11 = [knnZkwModel rankedZkwSuggestionsWithPredictionContext:contextCopy modelConfiguration:configurationCopy maxSuggestions:suggestions];

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel _knnZKWSuggestionsWithPredictionContext:modelConfiguration:maxSuggestions:];
  }

  [(_PSEnsembleModel *)self updateTrialID:v11];
  v13 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel suggestionsFromSuggestionProxies:? supportedBundleIDs:? contactKeysToFetch:? meContactIdentifier:? maxSuggestions:?];
  }

  v14 = [v11 copy];

  return v14;
}

- (id)rankedGlobalSuggestionsForSiriNLWithPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions interactionId:(id)id
{
  v19[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  if ([MEMORY[0x1E69978B8] isRunningOnInternalBuild])
  {
    v8 = objc_alloc_init(_PSContactSuggester);
    v9 = [(_PSContactSuggester *)v8 contactPriorsForContactIdentifiers:0];
    allValues = [v9 allValues];

    v11 = [allValues count];
    if (v11 >= suggestions)
    {
      suggestionsCopy = suggestions;
    }

    else
    {
      suggestionsCopy = v11;
    }

    v13 = [allValues subarrayWithRange:{0, suggestionsCopy}];
    v14 = [_PSSiriNLRankerUtilities knowledgeEventWithContactPriors:v13 interactionId:idCopy];
    if (v14)
    {
      knowledgeStore = [(_PSEnsembleModel *)self knowledgeStore];
      v19[0] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [knowledgeStore saveObjects:v16 tracker:&__block_literal_global_747 responseQueue:0 withCompletion:&__block_literal_global_750];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return MEMORY[0x1E695E0F0];
}

- (id)rankedNameSuggestionsWithPredictionContext:(id)context name:(id)name
{
  nameCopy = name;
  contextCopy = context;
  knnNameOrContactRankerModel = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v9 = [knnNameOrContactRankerModel rankedNameSuggestionsWithPredictionContext:contextCopy forName:nameCopy];

  return v9;
}

- (id)rankedAutocompleteSuggestionsFromContext:(id)context candidates:(id)candidates
{
  candidatesCopy = candidates;
  contextCopy = context;
  knnNameOrContactRankerModel = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v9 = [knnNameOrContactRankerModel rankedAutocompleteSuggestionsWithPredictionContext:contextCopy candidates:candidatesCopy];

  v10 = [v9 _pas_filteredArrayWithTest:&__block_literal_global_753];

  return v10;
}

- (id)autocompleteSearchResultsWithPredictionContext:(id)context
{
  contextCopy = context;
  knnNameOrContactRankerModel = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v6 = [knnNameOrContactRankerModel messagesGroupResultsForPredictionContext:contextCopy];

  v7 = [v6 _pas_filteredArrayWithTest:&__block_literal_global_756];

  return v7;
}

- (id)rankedSiriMLCRHandles:(id)handles context:(id)context
{
  contextCopy = context;
  handlesCopy = handles;
  knnNameOrContactRankerModel = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v9 = [knnNameOrContactRankerModel rankedSiriMLCRHandles:handlesCopy context:contextCopy];

  return v9;
}

- (id)rankedHandlesFromCandidateHandles:(id)handles
{
  handlesCopy = handles;
  knnNameOrContactRankerModel = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v6 = [knnNameOrContactRankerModel rankedHandlesFromCandidateHandles:handlesCopy];

  return v6;
}

- (id)appExtensionSuggestionsFromContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetAppSuggestionsTotalTime", " enableTelemetry=YES ", buf, 2u);
  }

  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55___PSEnsembleModel_appExtensionSuggestionsFromContext___block_invoke;
    v16[3] = &unk_1E7C24B88;
    v17 = contextCopy;
    v6 = __55___PSEnsembleModel_appExtensionSuggestionsFromContext___block_invoke(v16);
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_INFO, "appExtensionSuggestionsFromContext - appBundleIdsToShareExtensionBundleIdsMapping: %@", buf, 0xCu);
  }

  v7 = +[_PSAppUsageUtilities sharesFromSourceToTargetBundleValues];
  v8 = +[_PSAppUsageUtilities appUsageDurations];
  appBundleIdsToShareExtensionBundleIdsMapping = [contextCopy appBundleIdsToShareExtensionBundleIdsMapping];
  bundleID = [contextCopy bundleID];
  v11 = [_PSAppUsageUtilities mostUsedAppShareExtensionsWithAppBundleIdsToShareExtensionBundleIdsMapping:appBundleIdsToShareExtensionBundleIdsMapping sourceBundleId:bundleID sharesFromSourceToTargetBundle:v7 appUsageDurations:v8];

  v12 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetAppSuggestionsTotalTime", &unk_1B5FD970D, buf, 2u);
  }

  v13 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v19 = v11;
    _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_INFO, "appExtensionSuggestionsFromContext - final results: %{private}@", buf, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)candidatesForShareSheetRanking
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "Fetch candidates for Share Sheet", buf, 2u);
  }

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke_3;
  v78[3] = &unk_1E7C24BD8;
  v6 = v4;
  v79 = v6;
  v7 = v5;
  v80 = v7;
  v8 = MEMORY[0x1B8C8C060](v78);
  shareInteractionCache = [(_PSEnsembleModel *)self shareInteractionCache];

  if (shareInteractionCache)
  {
    shareInteractionCache2 = [(_PSEnsembleModel *)self shareInteractionCache];
    uniqueConversationCandidates = [shareInteractionCache2 uniqueConversationCandidates];

    v13 = __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke(v12, uniqueConversationCandidates);
    maxCandidatesFromShareSheetCache = [(_PSEnsembleModel *)self maxCandidatesFromShareSheetCache];
    (*(v8 + 16))(v8, v13, maxCandidatesFromShareSheetCache);
  }

  messageInteractionCache = [(_PSEnsembleModel *)self messageInteractionCache];

  if (messageInteractionCache)
  {
    messageInteractionCache2 = [(_PSEnsembleModel *)self messageInteractionCache];
    uniqueConversationCandidates2 = [messageInteractionCache2 uniqueConversationCandidates];

    v19 = __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke(v18, uniqueConversationCandidates2);
    maxCandidatesFromMessageCache = [(_PSEnsembleModel *)self maxCandidatesFromMessageCache];
    (*(v8 + 16))(v8, v19, maxCandidatesFromMessageCache);
  }

  v21 = objc_opt_new();
  [v21 addObjectsFromArray:v6];
  [v21 addObjectsFromArray:v7];
  v22 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v84 = v6;
    v85 = 2113;
    v86 = v7;
    _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_INFO, "Top candidates are: %{private}@, remaining candidates are: %{private}@", buf, 0x16u);
  }

  v62 = v7;
  v63 = v6;

  v23 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v24 = v21;
  v25 = [v24 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v75;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v75 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v74 + 1) + 8 * i);
        recipientsId = [v29 recipientsId];
        if (recipientsId)
        {
          v31 = recipientsId;
          domainId = [v29 domainId];

          if (domainId)
          {
            recipientsId2 = [v29 recipientsId];
            [v23 setObject:v29 forKeyedSubscript:recipientsId2];
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v26);
  }

  v61 = v8;

  maxCandidatesFromMessageCache2 = [(_PSEnsembleModel *)self maxCandidatesFromMessageCache];
  integerValue = [maxCandidatesFromMessageCache2 integerValue];
  maxCandidatesFromShareSheetCache2 = [(_PSEnsembleModel *)self maxCandidatesFromShareSheetCache];
  integerValue2 = [maxCandidatesFromShareSheetCache2 integerValue];

  v38 = objc_opt_new();
  v66 = _PSShareSheetExtensionBundleIDToAppBundleIDMapping([(_PSEnsembleModel *)self allowNonSupportedBundleIDs]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v24;
  v69 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (v69)
  {
    v68 = integerValue2 + integerValue;
    v67 = *v71;
LABEL_21:
    v39 = 0;
    while (1)
    {
      if (*v71 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v70 + 1) + 8 * v39);
      if ([v38 count] >= v68)
      {
        break;
      }

      domainId2 = [v40 domainId];
      if (!domainId2)
      {
        recipientsId3 = [v40 recipientsId];

        if (!recipientsId3)
        {
          goto LABEL_29;
        }

        recipientsId4 = [v40 recipientsId];
        domainId2 = [v23 objectForKeyedSubscript:recipientsId4];

        v41DomainId = [domainId2 domainId];
        [v40 setDomainId:v41DomainId];

        derivedIntentId = [domainId2 derivedIntentId];
        [v40 setDerivedIntentId:derivedIntentId];
      }

LABEL_29:
      domainId3 = [v40 domainId];
      if (domainId3)
      {

LABEL_32:
        v48 = [_PSCandidate alloc];
        domainId4 = [v40 domainId];
        derivedIntentId2 = [v40 derivedIntentId];
        bundleId = [v40 bundleId];
        v52 = [v66 objectForKeyedSubscript:bundleId];
        bundleId2 = v52;
        if (!v52)
        {
          bundleId2 = [v40 bundleId];
          v64 = bundleId2;
        }

        recipientsId5 = [v40 recipientsId];
        v55 = [(_PSCandidate *)v48 initWithDomainId:domainId4 derivedIntentId:derivedIntentId2 bundleId:bundleId2 recipientsId:recipientsId5];
        [v38 addObject:v55];

        if (!v52)
        {
        }

        goto LABEL_37;
      }

      recipientsId6 = [v40 recipientsId];

      if (recipientsId6)
      {
        goto LABEL_32;
      }

LABEL_37:
      if (v69 == ++v39)
      {
        v69 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
        if (v69)
        {
          goto LABEL_21;
        }

        break;
      }
    }
  }

  v56 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = [v38 count];
    *buf = 134217984;
    v84 = v57;
    _os_log_impl(&dword_1B5ED1000, v56, OS_LOG_TYPE_DEFAULT, "Fetched %tu candidates", buf, 0xCu);
  }

  v58 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v84 = v38;
    _os_log_impl(&dword_1B5ED1000, v58, OS_LOG_TYPE_INFO, "Fetched candidates for Share Sheet ranking %{private}@", buf, 0xCu);
  }

  v59 = *MEMORY[0x1E69E9840];

  return v38;
}

- (unint64_t)pruneCandidatesForRanking:(id)ranking
{
  v19 = *MEMORY[0x1E69E9840];
  rankingCopy = ranking;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Pruning all candidates that the user never sent a message to nor recently engaged with in the sharing UI.", buf, 2u);
  }

  conversationIds = [rankingCopy conversationIds];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46___PSEnsembleModel_pruneCandidatesForRanking___block_invoke;
  v13[3] = &unk_1E7C24C00;
  v6 = rankingCopy;
  v14 = v6;
  v7 = [conversationIds _pas_mappedArrayWithTransform:v13];

  v8 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    *buf = 134218243;
    v16 = v9;
    v17 = 2113;
    v18 = v7;
    _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "Finished pruning candidates. %tu candidates removed: %{private}@", buf, 0x16u);
  }

  [v6 removeConversationIds:v7];
  v10 = [v7 count];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)setupAeroMLPipelineLoggerWithModel:(id)model
{
  modelCopy = model;
  if (-[_PSEnsembleModel enablePipelineCheckpointing](self, "enablePipelineCheckpointing") && ([MEMORY[0x1E69C5CF8] isInternalBuild] & 1) != 0)
  {
    amlPipelineLogger = [(_PSEnsembleModel *)self amlPipelineLogger];

    if (amlPipelineLogger)
    {
      inputDescriptionsByName = +[_PSLogging rewriteChannel];
      if (os_log_type_enabled(inputDescriptionsByName, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        v7 = "_PSEnsemble: reusing AMLPipelineLogger object";
LABEL_8:
        _os_log_impl(&dword_1B5ED1000, inputDescriptionsByName, OS_LOG_TYPE_INFO, v7, &v24, 2u);
      }
    }

    else
    {
      modelDescription = [modelCopy modelDescription];
      inputDescriptionsByName = [modelDescription inputDescriptionsByName];

      modelDescription2 = [modelCopy modelDescription];
      metadata = [modelDescription2 metadata];
      v11 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695FDD0]];

      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v12 = getAMLFeaturesSpecificationClass_softClass;
      v32 = getAMLFeaturesSpecificationClass_softClass;
      if (!getAMLFeaturesSpecificationClass_softClass)
      {
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __getAMLFeaturesSpecificationClass_block_invoke;
        v27 = &unk_1E7C23BF0;
        v28 = &v29;
        AeroMLLibraryCore();
        v30[3] = objc_getClass("AMLFeaturesSpecification");
        getAMLFeaturesSpecificationClass_softClass = *(v28[1] + 24);
        v12 = v30[3];
      }

      v13 = v12;
      _Block_object_dispose(&v29, 8);
      v14 = [v12 alloc];
      allValues = [inputDescriptionsByName allValues];
      v16 = [v14 initWithFeaturesDescription:allValues];

      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v17 = getAMLFeaturesConfigurationClass_softClass;
      v32 = getAMLFeaturesConfigurationClass_softClass;
      if (!getAMLFeaturesConfigurationClass_softClass)
      {
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __getAMLFeaturesConfigurationClass_block_invoke;
        v27 = &unk_1E7C23BF0;
        v28 = &v29;
        AeroMLLibraryCore();
        v30[3] = objc_getClass("AMLFeaturesConfiguration");
        getAMLFeaturesConfigurationClass_softClass = *(v28[1] + 24);
        v17 = v30[3];
      }

      v18 = v17;
      _Block_object_dispose(&v29, 8);
      v19 = [[v17 alloc] initWithBundleIdentifier:@"com.apple.peoplesuggester.sharesheet" modelName:@"peoplesuggester-sharesheet-rewrite" versionId:v11 expirationPolicy:3 featuresDescription:v16];
      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v20 = getAMLPipelineLoggerClass_softClass;
      v32 = getAMLPipelineLoggerClass_softClass;
      if (!getAMLPipelineLoggerClass_softClass)
      {
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __getAMLPipelineLoggerClass_block_invoke;
        v27 = &unk_1E7C23BF0;
        v28 = &v29;
        AeroMLLibraryCore();
        v30[3] = objc_getClass("AMLPipelineLogger");
        getAMLPipelineLoggerClass_softClass = *(v28[1] + 24);
        v20 = v30[3];
      }

      v21 = v20;
      _Block_object_dispose(&v29, 8);
      v22 = [[v20 alloc] initWithFeaturesConfiguration:v19];
      [(_PSEnsembleModel *)self setAmlPipelineLogger:v22];

      v23 = +[_PSLogging rewriteChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_INFO, "_PSEnsemble: created AMLPipelineLogger object", &v24, 2u);
      }
    }
  }

  else
  {
    inputDescriptionsByName = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(inputDescriptionsByName, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      v7 = "_PSEnsemble: pipeline checkpointing is disabled";
      goto LABEL_8;
    }
  }
}

- (void)logPipelineWithSuggestions:(id)suggestions interactionsStatistics:(id)statistics pipelineStage:(id)stage sessionID:(id)d
{
  v58 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  statisticsCopy = statistics;
  stageCopy = stage;
  dCopy = d;
  amlPipelineLogger = [(_PSEnsembleModel *)self amlPipelineLogger];

  if (amlPipelineLogger)
  {
    v34 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = suggestionsCopy;
    v35 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v35)
    {
      v33 = *v44;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v43 + 1) + 8 * i);
          groupName = [v38 groupName];
          if (groupName)
          {
            v11 = objc_alloc(MEMORY[0x1E696AD60]);
            groupName2 = [v38 groupName];
            v13 = [v11 initWithString:groupName2];
          }

          else
          {
            groupName2 = objc_opt_new();
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            recipients = [v38 recipients];
            v15 = [recipients countByEnumeratingWithState:&v39 objects:v56 count:16];
            if (v15)
            {
              v16 = *v40;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v40 != v16)
                  {
                    objc_enumerationMutation(recipients);
                  }

                  v18 = *(*(&v39 + 1) + 8 * j);
                  v52 = 0;
                  v53 = &v52;
                  v54 = 0x2050000000;
                  v19 = getCNContactFormatterClass_softClass;
                  v55 = getCNContactFormatterClass_softClass;
                  if (!getCNContactFormatterClass_softClass)
                  {
                    v47 = MEMORY[0x1E69E9820];
                    v48 = 3221225472;
                    v49 = __getCNContactFormatterClass_block_invoke;
                    v50 = &unk_1E7C23BF0;
                    v51 = &v52;
                    ContactsLibraryCore_0();
                    Class = objc_getClass("CNContactFormatter");
                    *(v51[1] + 24) = Class;
                    getCNContactFormatterClass_softClass = *(v51[1] + 24);
                    v19 = v53[3];
                  }

                  v21 = v19;
                  _Block_object_dispose(&v52, 8);
                  contact = [v18 contact];
                  v23 = [v19 stringFromContact:contact style:0];

                  if (v23)
                  {
                    [groupName2 addObject:v23];
                  }
                }

                v15 = [recipients countByEnumeratingWithState:&v39 objects:v56 count:16];
              }

              while (v15);
            }

            if (![groupName2 count])
            {
              [groupName2 addObject:@"unable_to_resolve"];
            }

            v13 = _PASJoinStrings();
          }

          v24 = v13;

          conversationIdentifier = [v38 conversationIdentifier];
          if (conversationIdentifier)
          {
            [v34 setObject:v24 forKeyedSubscript:conversationIdentifier];
          }

          else
          {
            derivedIntentIdentifier = [v38 derivedIntentIdentifier];
            [v34 setObject:v24 forKeyedSubscript:derivedIntentIdentifier];
          }
        }

        v35 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v35);
    }

    [(_PSEnsembleModel *)self logPipeline:statisticsCopy withPipelineStage:stageCopy andSessionID:dCopy andCandidateNames:v34];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)logPipeline:(id)pipeline withPipelineStage:(id)stage andSessionID:(id)d andCandidateNames:(id)names
{
  v40 = *MEMORY[0x1E69E9840];
  pipelineCopy = pipeline;
  stageCopy = stage;
  dCopy = d;
  namesCopy = names;
  amlPipelineLogger = [(_PSEnsembleModel *)self amlPipelineLogger];

  if (amlPipelineLogger)
  {
    v15 = [[_PSInteractionsStatisticsFeatureProvider alloc] initWithInteractionsStatistics:pipelineCopy];
    mlFeatures = [(_PSInteractionsStatisticsFeatureProvider *)v15 mlFeatures];
    v17 = mlFeatures;
    if (namesCopy)
    {
      v18 = objc_opt_new();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __81___PSEnsembleModel_logPipeline_withPipelineStage_andSessionID_andCandidateNames___block_invoke;
      v29[3] = &unk_1E7C24C28;
      v30 = namesCopy;
      v19 = v18;
      v31 = v19;
      [v17 enumerateKeysAndObjectsUsingBlock:v29];
      v20 = v19;
    }

    else
    {
      v20 = mlFeatures;
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v21 = getAMLFeaturesDonationMetadataClass_softClass;
    v35 = getAMLFeaturesDonationMetadataClass_softClass;
    if (!getAMLFeaturesDonationMetadataClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v37 = __getAMLFeaturesDonationMetadataClass_block_invoke;
      v38 = &unk_1E7C23BF0;
      v39 = &v32;
      AeroMLLibraryCore();
      Class = objc_getClass("AMLFeaturesDonationMetadata");
      *(v39[1] + 24) = Class;
      getAMLFeaturesDonationMetadataClass_softClass = *(v39[1] + 24);
      v21 = v33[3];
    }

    v23 = v21;
    _Block_object_dispose(&v32, 8);
    v24 = [[v21 alloc] initWithSessionId:dCopy metadata:0];
    amlPipelineLogger2 = [(_PSEnsembleModel *)self amlPipelineLogger];
    v26 = [amlPipelineLogger2 logPipelineAsync:stageCopy features:v20 metadata:v24 async:1];

    v27 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_impl(&dword_1B5ED1000, v27, OS_LOG_TYPE_INFO, "_PSEnsemble: pipeline logged at %@", &buf, 0xCu);
    }
  }

  else
  {
    v15 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B5ED1000, &v15->super, OS_LOG_TYPE_INFO, "_PSEnsemble: pipeline checkpointing is disabled", &buf, 2u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)evaluateCandidates:(id)candidates psrMLModel:(id)model
{
  v84 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  modelCopy = model;
  v7 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_evaluateCandidates", " enableTelemetry=YES ", buf, 2u);
  }

  modelDescription = [modelCopy modelDescription];
  metadata = [modelDescription metadata];
  v10 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695FDB0]];

  v11 = [v10 objectForKeyedSubscript:@"model_type"];
  LODWORD(metadata) = [@"set" isEqual:v11];

  if (!metadata)
  {
    conversationIds = [candidatesCopy conversationIds];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_837;
    v59[3] = &unk_1E7C248D0;
    v60 = candidatesCopy;
    v61 = modelCopy;
    [conversationIds enumerateObjectsUsingBlock:v59];

    v24 = v60;
    goto LABEL_31;
  }

  modelDescription2 = [modelCopy modelDescription];
  inputDescriptionsByName = [modelDescription2 inputDescriptionsByName];

  v14 = [inputDescriptionsByName objectForKeyedSubscript:@"features"];
  multiArrayConstraint = [v14 multiArrayConstraint];

  shape = [multiArrayConstraint shape];
  v17 = [shape objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v17 unsignedIntegerValue];

  v18 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue2 = [v18 unsignedIntegerValue];

  dataType = [multiArrayConstraint dataType];
  v20 = 0;
  v21 = 0;
  v54 = multiArrayConstraint;
  v55 = inputDescriptionsByName;
  v53 = shape;
  if (dataType > 65599)
  {
    if (dataType != 131104)
    {
      v22 = 0;
      if (dataType == 65600)
      {
        v20 = 1;
        v22 = 6;
        v21 = 8;
      }

      goto LABEL_15;
    }

    v20 = 0;
    v22 = 3;
    goto LABEL_14;
  }

  if (dataType == 65552)
  {
    v22 = 0;
    v20 = 1;
    v21 = 2;
  }

  else
  {
    v22 = 0;
    if (dataType == 65568)
    {
      v20 = 1;
      v22 = 5;
LABEL_14:
      v21 = 4;
    }
  }

LABEL_15:
  v50 = v22;
  v51 = v21;
  v52 = v20;
  v57 = candidatesCopy;
  v25 = [v10 objectForKeyedSubscript:@"feature_order"];
  v26 = objc_autoreleasePoolPush();
  v27 = MEMORY[0x1E696ACB0];
  v28 = [v25 dataUsingEncoding:4];
  v80 = 0;
  v29 = [v27 JSONObjectWithData:v28 options:8 error:&v80];
  v30 = v80;

  objc_autoreleasePoolPop(v26);
  v31 = MEMORY[0x1E695D940];
  if (!v29)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Failed to parse JSON feature order: %@ (json: %@)", v30, v25}];
  }

  v48 = v30;
  v56 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*v31 format:{@"Expected array, got %@ for feature order json %@", objc_opt_class(), v25}];
  }

  v32 = v29;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v33 = [v32 countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v77;
    v36 = *v31;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v77 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v76 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:v36 format:{@"Array member %@ is of unexpected type %@ (expected NSString), json %@", v38, objc_opt_class(), v25, v48}];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v34);
  }

  if ([v32 count] != unsignedIntegerValue2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"shape feature count %tu must be equal to feature order count %tu, feature order: %@", unsignedIntegerValue2, objc_msgSend(v32, "count"), v32}];
  }

  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2];
  v82[0] = v39;
  v82[1] = &unk_1F2D8B340;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];

  candidatesCopy = v57;
  conversationIds2 = [v57 conversationIds];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke;
  v62[3] = &unk_1E7C24C70;
  v72 = unsignedIntegerValue2 * unsignedIntegerValue;
  v73 = v51;
  v63 = v32;
  v75 = v52;
  v64 = v57;
  v65 = v53;
  v66 = v54;
  v67 = v40;
  v68 = v55;
  v69 = @"count";
  v74 = v50;
  v70 = @"features";
  v71 = modelCopy;
  v42 = v32;
  v43 = v53;
  v44 = v54;
  v45 = v40;
  v24 = v55;
  [conversationIds2 _pas_enumerateChunksOfSize:unsignedIntegerValue usingBlock:v62];

  v10 = v56;
LABEL_31:

  v46 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_evaluateCandidates", &unk_1B5FD970D, buf, 2u);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (id)getSuggestionsFromInteractionsStatistics:(id)statistics withConfig:(id)config trialClient:(id)client andPredictionContext:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  configCopy = config;
  v9 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sortOrderFeatureNames = [configCopy sortOrderFeatureNames];
    *buf = 138412290;
    v37 = sortOrderFeatureNames;
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: sorting candidates using %@", buf, 0xCu);
  }

  conversationIds = [statisticsCopy conversationIds];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __105___PSEnsembleModel_getSuggestionsFromInteractionsStatistics_withConfig_trialClient_andPredictionContext___block_invoke;
  v33[3] = &unk_1E7C24C98;
  v12 = configCopy;
  v34 = v12;
  v13 = statisticsCopy;
  v35 = v13;
  v14 = [conversationIds sortedArrayUsingComparator:v33];

  v15 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v14;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: ranked candidates %@", buf, 0xCu);
  }

  v16 = objc_opt_new();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __105___PSEnsembleModel_getSuggestionsFromInteractionsStatistics_withConfig_trialClient_andPredictionContext___block_invoke_842;
  v29[3] = &unk_1E7C24CC0;
  v17 = v12;
  v30 = v17;
  v18 = v13;
  v31 = v18;
  v19 = v16;
  v32 = v19;
  [v14 enumerateObjectsUsingBlock:v29];
  v20 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v37 = v19;
    _os_log_impl(&dword_1B5ED1000, v20, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: suggestions proxies found %{private}@", buf, 0xCu);
  }

  v21 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __105___PSEnsembleModel_getSuggestionsFromInteractionsStatistics_withConfig_trialClient_andPredictionContext___block_invoke_849;
    v27[3] = &unk_1E7C24CE8;
    v28 = v18;
    v22 = [v19 _pas_mappedArrayWithTransform:v27];
    *buf = 138412290;
    v37 = v22;
    _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: <anonymised> suggestions proxies found %@", buf, 0xCu);
  }

  v23 = v32;
  v24 = v19;

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)orderedSuggestionProxiesWithProxyOrder:(id)order suggestionProxies:(id)proxies suggestionsWithSharePlayAddedBlock:(id)block
{
  v43[5] = *MEMORY[0x1E69E9840];
  orderCopy = order;
  proxiesCopy = proxies;
  blockCopy = block;
  v9 = objc_alloc(MEMORY[0x1E695DFD8]);
  v43[0] = @"SuggestionProxyTypeInCall";
  v43[1] = @"SuggestionProxyTypeReturnToSender";
  v43[2] = @"SuggestionProxyTypePASS";
  v43[3] = @"SuggestionProxyTypePASSv1";
  v43[4] = @"SuggestionProxyTypeSASS";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:5];
  v11 = [v9 initWithArray:v10];

  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v42[0] = @"SuggestionProxyTypeHyperRecencyRewrite";
  v42[1] = @"SuggestionProxyTypeHyperRecencyCallRewrite";
  v42[2] = @"SuggestionProxyTypeHyperRecencyViewedThreadRewrite";
  v42[3] = @"SuggestionProxyTypeHyperRecencyIncomingRewrite";
  v42[4] = @"SuggestionProxyTypeFrequencyOfTopDomainURL";
  v42[5] = @"SuggestionProxyTypeFrequencyOfSharesFromCurrentApp";
  v42[6] = @"SuggestionProxyTypeFrequencyOfShares";
  v42[7] = @"SuggestionProxyTypeFromStats";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:8];
  v32 = [v12 initWithArray:v13];

  v31 = objc_opt_new();
  v14 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = orderCopy;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v34;
    *&v17 = 138543618;
    v29 = v17;
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v33 + 1) + 8 * v20);
        if ([v14 containsObject:{v21, v29}])
        {
          v22 = +[_PSLogging rewriteChannel];
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_17;
          }

          *buf = v29;
          v38 = v21;
          v39 = 2114;
          v40 = v15;
          v23 = v22;
          v24 = "_PSEnsemble: found duplicate proxy key, skipping '%{public}@' in list %{public}@";
          goto LABEL_9;
        }

        [v14 addObject:v21];
        if ([v11 containsObject:v21])
        {
          v22 = [proxiesCopy objectForKeyedSubscript:v21];
          if (v22)
          {
            [v31 addObjectsFromArray:v22];
          }
        }

        else if ([v32 containsObject:v21])
        {
          v22 = [proxiesCopy objectForKeyedSubscript:v21];
          if (v22)
          {
            v25 = blockCopy[2](blockCopy, v22);
            [v31 addObjectsFromArray:v25];
          }
        }

        else
        {
          v22 = +[_PSLogging rewriteChannel];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *buf = v29;
            v38 = v21;
            v39 = 2114;
            v40 = v15;
            v23 = v22;
            v24 = "_PSEnsemble: found unsupported proxy key '%{public}@' in list %{public}@";
LABEL_9:
            _os_log_fault_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_FAULT, v24, buf, 0x16u);
          }
        }

LABEL_17:

        ++v20;
      }

      while (v18 != v20);
      v26 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
      v18 = v26;
    }

    while (v26);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)finalSuggestionProxiesForInteractionStatistics:(id)statistics config:(id)config trialClient:(id)client context:(id)context
{
  v87[2] = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  contextCopy = context;
  clientCopy = client;
  configCopy = config;
  heuristics = [(_PSEnsembleModel *)self heuristics];
  v70 = clientCopy;
  psHeuristicsOverrides = [clientCopy psHeuristicsOverrides];
  [heuristics updateHeuristicParameterOverrides:psHeuristicsOverrides];

  v16 = [AeroMLTracerSession alloc];
  sessionID = [contextCopy sessionID];
  v18 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v72 = [(AeroMLTracerSession *)v16 initWithTraceId:sessionID projectName:v18];

  v71 = [(_PSEnsembleModel *)self getSuggestionsFromInteractionsStatistics:statisticsCopy withConfig:configCopy trialClient:clientCopy andPredictionContext:contextCopy];

  heuristics2 = [(_PSEnsembleModel *)self heuristics];
  v20 = [(_PSEnsembleModel *)self fetchSupportedBundleIDsWithPredictionContextFilters:contextCopy];
  v77 = [heuristics2 inPhoneCallHeuristicSuggestionProxiesWithBundleIds:v20 predictionContext:contextCopy];

  heuristics3 = [(_PSEnsembleModel *)self heuristics];
  v76 = [heuristics3 returnDocumentToSender:contextCopy];

  heuristics4 = [(_PSEnsembleModel *)self heuristics];
  v78 = [heuristics4 peopleAwareSuggestionProxiesForInteractionStatistics:statisticsCopy];

  currentSpanId = [contextCopy currentSpanId];
  v24 = [(AeroMLTracerSession *)v72 createSubSpanWithName:@"suggestionsProxiesPASSv1Span" parentSpanId:currentSpanId];

  v25 = v24;
  [v24 start];
  heuristics5 = [(_PSEnsembleModel *)self heuristics];
  peopleInPhotoIdentifiers = [contextCopy peopleInPhotoIdentifiers];
  v68 = [heuristics5 peopleAwareSuggestionProxiesForDetectedFaces:peopleInPhotoIdentifiers];

  v86[0] = @"peopleInPhotoIdentifiers_count";
  v28 = MEMORY[0x1E696AEC0];
  peopleInPhotoIdentifiers2 = [contextCopy peopleInPhotoIdentifiers];
  v30 = [v28 stringWithFormat:@"%ld", objc_msgSend(peopleInPhotoIdentifiers2, "count")];
  v86[1] = @"ResolvedContactIDsFromMD_count";
  v87[0] = v30;
  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v68, "count")];
  v87[1] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v69 = v25;
  [v25 addAttributes:v32];

  [v25 end];
  heuristics6 = [(_PSEnsembleModel *)self heuristics];
  v34 = [heuristics6 hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:statisticsCopy];

  heuristics7 = [(_PSEnsembleModel *)self heuristics];
  v75 = [heuristics7 hyperRecentCallHeuristicSuggestionProxiesForInteractionStatistics:statisticsCopy];

  heuristics8 = [(_PSEnsembleModel *)self heuristics];
  hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics = [heuristics8 hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics];

  heuristics9 = [(_PSEnsembleModel *)self heuristics];
  v73 = [heuristics9 hyperRecentHeuristicIncomingSuggestionProxiesForInteractionStatistics:statisticsCopy];

  heuristics10 = [(_PSEnsembleModel *)self heuristics];
  v39 = [heuristics10 pastSharesWithCurrentAppAwareSuggestionProxiesForInteractionStatistics:statisticsCopy];

  heuristics11 = [(_PSEnsembleModel *)self heuristics];
  v41 = [heuristics11 pastSharesAwareSuggestionProxiesForInteractionStatistics:statisticsCopy];

  heuristics12 = [(_PSEnsembleModel *)self heuristics];
  v43 = [heuristics12 pastSharesOfTopDomainURLAwareSuggestionProxiesForInteractionStatistics:statisticsCopy];

  heuristics13 = [(_PSEnsembleModel *)self heuristics];
  v85 = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v46 = [heuristics13 scenesBasedFeaturesAwareSuggestionProxiesForInteractionStatistics:statisticsCopy forFeatureNames:v45];

  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __94___PSEnsembleModel_finalSuggestionProxiesForInteractionStatistics_config_trialClient_context___block_invoke;
  v79[3] = &unk_1E7C24D10;
  v80 = contextCopy;
  v81 = statisticsCopy;
  selfCopy = self;
  v67 = statisticsCopy;
  v66 = contextCopy;
  v47 = MEMORY[0x1B8C8C060](v79);
  suggestionProxyOrder = [v70 suggestionProxyOrder];

  v49 = MEMORY[0x1E695E0F0];
  v50 = v77;
  if (!v77)
  {
    v50 = MEMORY[0x1E695E0F0];
  }

  v83[0] = @"SuggestionProxyTypeInCall";
  v83[1] = @"SuggestionProxyTypeReturnToSender";
  v51 = v76;
  if (!v76)
  {
    v51 = MEMORY[0x1E695E0F0];
  }

  v84[0] = v50;
  v84[1] = v51;
  if (v34)
  {
    v52 = v34;
  }

  else
  {
    v52 = MEMORY[0x1E695E0F0];
  }

  v83[2] = @"SuggestionProxyTypeHyperRecencyRewrite";
  v83[3] = @"SuggestionProxyTypeHyperRecencyCallRewrite";
  v53 = v75;
  if (!v75)
  {
    v53 = MEMORY[0x1E695E0F0];
  }

  v84[2] = v52;
  v84[3] = v53;
  v54 = hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics;
  if (!hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics)
  {
    v54 = MEMORY[0x1E695E0F0];
  }

  v83[4] = @"SuggestionProxyTypeHyperRecencyViewedThreadRewrite";
  v83[5] = @"SuggestionProxyTypeHyperRecencyIncomingRewrite";
  v55 = v73;
  if (!v73)
  {
    v55 = MEMORY[0x1E695E0F0];
  }

  v84[4] = v54;
  v84[5] = v55;
  v56 = v78;
  if (!v78)
  {
    v56 = MEMORY[0x1E695E0F0];
  }

  v83[6] = @"SuggestionProxyTypePASS";
  v83[7] = @"SuggestionProxyTypePASSv1";
  if (v68)
  {
    v57 = v68;
  }

  else
  {
    v57 = MEMORY[0x1E695E0F0];
  }

  v84[6] = v56;
  v84[7] = v57;
  if (v46)
  {
    v58 = v46;
  }

  else
  {
    v58 = MEMORY[0x1E695E0F0];
  }

  v83[8] = @"SuggestionProxyTypeSASS";
  v83[9] = @"SuggestionProxyTypeFrequencyOfTopDomainURL";
  if (v43)
  {
    v59 = v43;
  }

  else
  {
    v59 = MEMORY[0x1E695E0F0];
  }

  v84[8] = v58;
  v84[9] = v59;
  if (v39)
  {
    v60 = v39;
  }

  else
  {
    v60 = MEMORY[0x1E695E0F0];
  }

  v83[10] = @"SuggestionProxyTypeFrequencyOfSharesFromCurrentApp";
  v83[11] = @"SuggestionProxyTypeFrequencyOfShares";
  if (v41)
  {
    v61 = v41;
  }

  else
  {
    v61 = MEMORY[0x1E695E0F0];
  }

  v84[10] = v60;
  v84[11] = v61;
  v83[12] = @"SuggestionProxyTypeFromStats";
  if (v71)
  {
    v49 = v71;
  }

  v84[12] = v49;
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:13];
  v63 = [objc_opt_class() orderedSuggestionProxiesWithProxyOrder:suggestionProxyOrder suggestionProxies:v62 suggestionsWithSharePlayAddedBlock:v47];

  v64 = *MEMORY[0x1E69E9840];

  return v63;
}

- (id)trialIdentifier
{
  v3 = objc_opt_new();
  trialExperimentId = [(_PSEnsembleModel *)self trialExperimentId];
  v5 = trialExperimentId;
  if (trialExperimentId)
  {
    v6 = trialExperimentId;
  }

  else
  {
    v6 = @"Missing";
  }

  [v3 setTask:v6];

  trialTreatmentId = [(_PSEnsembleModel *)self trialTreatmentId];
  v8 = trialTreatmentId;
  if (trialTreatmentId)
  {
    v9 = trialTreatmentId;
  }

  else
  {
    v9 = @"Missing";
  }

  [v3 setTreatment:v9];

  trialDeploymentId = [(_PSEnsembleModel *)self trialDeploymentId];
  v11 = trialDeploymentId;
  if (trialDeploymentId)
  {
    v12 = trialDeploymentId;
  }

  else
  {
    v12 = @"Missing";
  }

  [v3 setDeployment:v12];

  return v3;
}

- (void)sendDataToPETAsync:(id)async withConfig:(id)config andContext:(id)context
{
  asyncCopy = async;
  configCopy = config;
  contextCopy = context;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61___PSEnsembleModel_sendDataToPETAsync_withConfig_andContext___block_invoke;
  v15[3] = &unk_1E7C24D38;
  v15[4] = self;
  v16 = asyncCopy;
  v17 = configCopy;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = configCopy;
  v14 = asyncCopy;
  dispatch_async(v11, v15);
}

- (id)getPETMessageFrom:(id)from withConfig:(id)config andContext:(id)context
{
  contextCopy = context;
  fromCopy = from;
  v9 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_sendDataToPET", " enableTelemetry=YES ", buf, 2u);
  }

  deviceIdentifier = [(_PSEnsembleModel *)self deviceIdentifier];
  trialIdentifier = [(_PSEnsembleModel *)self trialIdentifier];
  peopleSuggesterDefaults = [(_PSEnsembleModel *)self peopleSuggesterDefaults];
  v13 = [_PSPETMessageBuilder getPETMessageWithInteractionsStatistics:fromCopy predictionContext:contextCopy deviceIdentifier:deviceIdentifier trialIdentifier:trialIdentifier peopleSuggesterDefaults:peopleSuggesterDefaults];

  [(_PSEnsembleModel *)self sendDataCollectionMessageWith:v13];
  v14 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: Log PET data to Biome", v18, 2u);
  }

  v15 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_sendDataToPET", &unk_1B5FD970D, v17, 2u);
  }

  return v13;
}

- (int)_remapSingleContentTypeValue:(int)value
{
  if (value == 13)
  {
    valueCopy = 0;
  }

  else
  {
    valueCopy = value;
  }

  if (value)
  {
    return valueCopy;
  }

  else
  {
    return 13;
  }
}

- (id)_reMapContentTypes:(int *)types count:(unint64_t)count
{
  v4 = MEMORY[0x1E695E0F0];
  if (types)
  {
    countCopy = count;
    if (count)
    {
      typesCopy = types;
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
      do
      {
        v9 = *typesCopy++;
        v10 = [(_PSEnsembleModel *)self _remapSingleContentTypeValue:v9];
        v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
        [v8 addObject:v11];

        --countCopy;
      }

      while (countCopy);
      v4 = [v8 copy];
    }
  }

  return v4;
}

- (void)sendDataCollectionMessageWith:(id)with
{
  withCopy = with;
  v5 = BiomeLibrary();
  mLSE = [v5 MLSE];
  shareSheet = [mLSE ShareSheet];
  inference = [shareSheet Inference];
  peopleSuggestions = [inference PeopleSuggestions];

  source = [peopleSuggestions source];
  v22 = objc_alloc(MEMORY[0x1E698EEA0]);
  deviceIdentifier = [withCopy deviceIdentifier];
  sessionId = [withCopy sessionId];
  trialIdentifier = [withCopy trialIdentifier];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(withCopy, "version")}];
  candidates = [withCopy candidates];
  testKey = [withCopy testKey];
  madResponseStatus = [withCopy madResponseStatus];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(withCopy, "isFallbackFetch")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(withCopy, "isSharePlayAvailable")}];
  appSharedFrom = [withCopy appSharedFrom];
  feedbackEvents = [withCopy feedbackEvents];
  v9 = -[_PSEnsembleModel _reMapContentTypes:count:](self, "_reMapContentTypes:count:", [withCopy typeOfContents], objc_msgSend(withCopy, "typeOfContentsCount"));
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(withCopy, "isInPhoneCall")}];
  timeSinceLastShare = [withCopy timeSinceLastShare];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(withCopy, "isScreenShot")}];
  photoFeatures = [withCopy photoFeatures];

  LODWORD(v17) = appSharedFrom;
  LODWORD(v16) = madResponseStatus;
  v24 = [v22 initWithDeviceIdentifier:deviceIdentifier sessionId:sessionId trialIdentifiers:trialIdentifier version:v27 candidates:candidates testKey:testKey madResponseStatus:v16 isFallbackFetch:v20 isSharePlayAvailable:v19 appSharedFrom:v17 feedbackEvents:feedbackEvents typeOfContent:v9 isInPhoneCall:v10 timeSinceLastShare:timeSinceLastShare isScreenShot:v12 photoFeatures:photoFeatures];

  v14 = objc_alloc(MEMORY[0x1E698ECA0]);
  v15 = [v14 initWithIdentifier:0 sourceBundleId:0 peopleSuggestions:MEMORY[0x1E695E0F0] responseType:0 trainingDataCollection:v24];
  [source sendEvent:v15];
}

- (id)_conversationIdForFirstInteractionAfterSharingStartDate:(id)date targetBundleId:(id)id
{
  v43[3] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  idCopy = id;
  v7 = MEMORY[0x1E696AE18];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v7 predicateWithFormat:@"(startDate >= %@) && (startDate <= %@)", dateCopy, v8];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1;
  v38 = __Block_byref_object_dispose__1;
  v39 = 0;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism == %@", &unk_1F2D8B190];
  idCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"targetBundleId == %@", idCopy];
  v12 = MEMORY[0x1E696AB28];
  v43[0] = v9;
  v43[1] = v10;
  v43[2] = idCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = idCopy;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "Searching for share interactions from for share extension %@ for session", buf, 0xCu);
  }

  interactionStore = self->_interactionStore;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __91___PSEnsembleModel__conversationIdForFirstInteractionAfterSharingStartDate_targetBundleId___block_invoke;
  v33[3] = &unk_1E7C24D60;
  v33[4] = &v34;
  [(_CDInteractionStore *)interactionStore iterInteractionRecordsWithPredicate:v14 fetchLimit:1 sortAscending:1 updateTelemetry:0 withBlock:v33];
  v17 = v35[5];
  if (!v17)
  {
    v28 = _PSShareSheetExtensionBundleIDToAppBundleIDMapping(0);
    v29 = [v28 objectForKeyedSubscript:idCopy];
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleId == %@", v29];
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", &unk_1F2D8C180];
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"direction == %@", &unk_1F2D8B1D8];
    v20 = MEMORY[0x1E696AB28];
    v40[0] = v9;
    v40[1] = v30;
    v40[2] = v19;
    v40[3] = v18;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
    v22 = [v20 andPredicateWithSubpredicates:v21];

    v23 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v29;
      _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_DEFAULT, "Searching for message interactions from bundleId %@", buf, 0xCu);
    }

    v24 = self->_interactionStore;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __91___PSEnsembleModel__conversationIdForFirstInteractionAfterSharingStartDate_targetBundleId___block_invoke_891;
    v32[3] = &unk_1E7C24D60;
    v32[4] = &v34;
    [(_CDInteractionStore *)v24 iterInteractionRecordsWithPredicate:v22 fetchLimit:1 sortAscending:1 updateTelemetry:0 withBlock:v32];

    v17 = v35[5];
  }

  v25 = v17;

  _Block_object_dispose(&v34, 8);
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BOOL)_updateInteractionStatisticsForExplicitEngagement:(id)engagement interactionStatisticsConfig:(id)config interactionStatistics:(id)statistics sessionFeedback:(id)feedback
{
  v36 = *MEMORY[0x1E69E9840];
  engagementCopy = engagement;
  configCopy = config;
  statisticsCopy = statistics;
  feedbackCopy = feedback;
  conversationId = [feedbackCopy conversationId];

  v15 = +[_PSLogging rewriteChannel];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!conversationId)
  {
    if (v16)
    {
      transportBundleId = [feedbackCopy transportBundleId];
      sessionID = [engagementCopy sessionID];
      v32 = 138412546;
      v33 = transportBundleId;
      v34 = 2112;
      v35 = sessionID;
      _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "Looking for share interactions from target bundleId %@ for session %@", &v32, 0x16u);
    }

    rightBoundDate = [configCopy rightBoundDate];
    transportBundleId2 = [feedbackCopy transportBundleId];
    conversationId3 = [(_PSEnsembleModel *)self _conversationIdForFirstInteractionAfterSharingStartDate:rightBoundDate targetBundleId:transportBundleId2];

    if (conversationId3)
    {
      v26 = [statisticsCopy containsConversationId:conversationId3];
      v27 = +[_PSLogging rewriteChannel];
      v28 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          sessionID2 = [engagementCopy sessionID];
          v32 = 138478083;
          v33 = conversationId3;
          v34 = 2112;
          v35 = sessionID2;
          _os_log_impl(&dword_1B5ED1000, v28, OS_LOG_TYPE_DEFAULT, "Storing feedback for explicit positive engagement (top row share) with %{private}@ for session %@", &v32, 0x16u);
        }

        v20 = statisticsCopy;
        goto LABEL_5;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [_PSEnsembleModel _updateInteractionStatisticsForExplicitEngagement:engagementCopy interactionStatisticsConfig:? interactionStatistics:? sessionFeedback:?];
      }
    }

    else
    {
      v28 = +[_PSLogging rewriteChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_PSEnsembleModel _updateInteractionStatisticsForExplicitEngagement:engagementCopy interactionStatisticsConfig:? interactionStatistics:? sessionFeedback:?];
      }
    }

    v21 = 0;
    goto LABEL_18;
  }

  if (v16)
  {
    conversationId2 = [feedbackCopy conversationId];
    sessionID3 = [engagementCopy sessionID];
    v32 = 138478083;
    v33 = conversationId2;
    v34 = 2112;
    v35 = sessionID3;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "Storing feedback for explicit positive engagement (top row share) with %{private}@ for session %@", &v32, 0x16u);
  }

  conversationId3 = [feedbackCopy conversationId];
  v20 = statisticsCopy;
LABEL_5:
  [v20 setValue:&unk_1F2D8B358 forFeature:@"feedback" andConversationId:conversationId3];
  v21 = 1;
LABEL_18:

  v30 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_updateInteractionStatisticsForImplicitEngagement:(id)engagement interactionStatisticsConfig:(id)config interactionStatistics:(id)statistics sessionFeedback:(id)feedback
{
  v34 = *MEMORY[0x1E69E9840];
  engagementCopy = engagement;
  statisticsCopy = statistics;
  feedbackCopy = feedback;
  configCopy = config;
  v14 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [engagementCopy sessionID];
    transportBundleId = [feedbackCopy transportBundleId];
    v30 = 138412546;
    v31 = sessionID;
    v32 = 2112;
    v33 = transportBundleId;
    _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "Processing implicit positive engagement (app extension share) for session %@ from transport bundleId %@", &v30, 0x16u);
  }

  v17 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    transportBundleId2 = [feedbackCopy transportBundleId];
    sessionID2 = [engagementCopy sessionID];
    v30 = 138412546;
    v31 = transportBundleId2;
    v32 = 2112;
    v33 = sessionID2;
    _os_log_impl(&dword_1B5ED1000, v17, OS_LOG_TYPE_DEFAULT, "Looking for interactions from target bundleId %@ for session %@", &v30, 0x16u);
  }

  rightBoundDate = [configCopy rightBoundDate];

  transportBundleId3 = [feedbackCopy transportBundleId];
  v22 = [(_PSEnsembleModel *)self _conversationIdForFirstInteractionAfterSharingStartDate:rightBoundDate targetBundleId:transportBundleId3];

  if (!v22)
  {
    v25 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel _updateInteractionStatisticsForImplicitEngagement:engagementCopy interactionStatisticsConfig:? interactionStatistics:? sessionFeedback:?];
    }

    goto LABEL_14;
  }

  v23 = [statisticsCopy containsConversationId:v22];
  v24 = +[_PSLogging rewriteChannel];
  v25 = v24;
  if ((v23 & 1) == 0)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel _updateInteractionStatisticsForImplicitEngagement:engagementCopy interactionStatisticsConfig:? interactionStatistics:? sessionFeedback:?];
    }

LABEL_14:

    v27 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sessionID3 = [engagementCopy sessionID];
    v30 = 138478083;
    v31 = v22;
    v32 = 2112;
    v33 = sessionID3;
    _os_log_impl(&dword_1B5ED1000, v25, OS_LOG_TYPE_DEFAULT, "Storing feedback for app extension sharing interaction (implicit positive engagement – bottom row share) with %{private}@ for session %@", &v30, 0x16u);
  }

  [statisticsCopy setValue:&unk_1F2D8B370 forFeature:@"feedback" andConversationId:v22];
  v27 = 1;
LABEL_15:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)_updateInteractionStatisticsForSpeculativeEngagement:(id)engagement interactionStatisticsConfig:(id)config interactionStatistics:(id)statistics sessionFeedback:(id)feedback
{
  v39 = *MEMORY[0x1E69E9840];
  engagementCopy = engagement;
  configCopy = config;
  statisticsCopy = statistics;
  feedbackCopy = feedback;
  v13 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [engagementCopy sessionID];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = sessionID;
    _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_DEFAULT, "Processing speculative engagement (manual interactions after ShareSheet closed) for session %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x2020000000;
  v38 = [feedbackCopy feedbackActionType] == 2;
  v15 = MEMORY[0x1E696AE18];
  rightBoundDate = [configCopy rightBoundDate];
  v17 = [MEMORY[0x1E695DF00] now];
  v18 = [v15 predicateWithFormat:@"(startDate >= %@) && (startDate <= %@)", rightBoundDate, v17];

  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (bundleId IN %@)", &unk_1F2D8C198];
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", &unk_1F2D8C1B0];
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"direction == %@", &unk_1F2D8B1D8];
  interactionStore = self->_interactionStore;
  v23 = MEMORY[0x1E696AB28];
  v35[0] = v18;
  v35[1] = v19;
  v35[2] = v20;
  v35[3] = v21;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  v25 = [v23 andPredicateWithSubpredicates:v24];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __139___PSEnsembleModel__updateInteractionStatisticsForSpeculativeEngagement_interactionStatisticsConfig_interactionStatistics_sessionFeedback___block_invoke;
  v31[3] = &unk_1E7C24D88;
  v26 = statisticsCopy;
  v32 = v26;
  v27 = engagementCopy;
  v33 = v27;
  p_buf = &buf;
  [(_CDInteractionStore *)interactionStore iterInteractionRecordsWithPredicate:v25 fetchLimit:25 sortAscending:1 updateTelemetry:0 withBlock:v31];

  LOBYTE(v25) = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  v28 = *MEMORY[0x1E69E9840];
  return v25 & 1;
}

- (void)psrDataCollectionForContext:(id)context timeToWaitInSeconds:(int)seconds interactionStatisticsConfig:(id)config interactionStatistics:(id)statistics
{
  *&v33[5] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  configCopy = config;
  statisticsCopy = statistics;
  v13 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [contextCopy sessionID];
    *buf = 138412290;
    *v33 = sessionID;
    _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: registering data logging for sessionId: %@", buf, 0xCu);
  }

  sessionID2 = [contextCopy sessionID];

  if (sessionID2)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __118___PSEnsembleModel_psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___block_invoke;
    v27 = &unk_1E7C24D38;
    v16 = contextCopy;
    v28 = v16;
    v29 = statisticsCopy;
    selfCopy = self;
    v31 = configCopy;
    v17 = MEMORY[0x1B8C8C060](&v24);
    v18 = [_PSLogging generalChannel:v24];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sessionID3 = [v16 sessionID];
      *buf = 67109378;
      v33[0] = seconds;
      LOWORD(v33[1]) = 2112;
      *(&v33[1] + 2) = sessionID3;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: Waiting %d seconds for feedback events from ShareSheet UI for sessionId: %@", buf, 0x12u);
    }

    if (psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___pasOnceToken267 != -1)
    {
      [_PSEnsembleModel psrDataCollectionForContext:timeToWaitInSeconds:interactionStatisticsConfig:interactionStatistics:];
    }

    v20 = psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___pasExprOnceResult;
    v21 = dispatch_time(0, 1000000000 * seconds);
    dispatch_after(v21, v20, v17);

    v22 = v28;
  }

  else
  {
    v22 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel psrDataCollectionForContext:timeToWaitInSeconds:interactionStatisticsConfig:interactionStatistics:];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)psr_suggestionsFromSuggestionProxies:(id)proxies interactionsStatistics:(id)statistics maxSuggestions:(unint64_t)suggestions predictionContext:(id)context
{
  v86 = *MEMORY[0x1E69E9840];
  proxiesCopy = proxies;
  statisticsCopy = statistics;
  contextCopy = context;
  v48 = objc_opt_new();
  v58 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = proxiesCopy;
  v54 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v54)
  {
    v52 = *v75;
    suggestionsCopy = suggestions;
    v11 = 0.0;
LABEL_3:
    v60 = 0;
    while (1)
    {
      if (*v75 != v52)
      {
        objc_enumerationMutation(obj);
      }

      if (v11 == suggestionsCopy)
      {
        break;
      }

      v59 = *(*(&v74 + 1) + 8 * v60);
      bundleID = [v59 bundleID];
      interactionRecipients = [v59 interactionRecipients];
      v61 = [MEMORY[0x1E69C5D98] tupleWithFirst:bundleID second:interactionRecipients];
      if (([v58 containsObject:v61] & 1) == 0)
      {
        [v58 addObject:v61];
        if (([bundleID isEqualToString:@"com.apple.MobileSMS"] & 1) != 0 || objc_msgSend(bundleID, "isEqualToString:", @"com.apple.telephonyutilities.callservicesd"))
        {
          v12 = interactionRecipients;
          reason = [v59 reason];
          v14 = [reason isEqualToString:@"SharePlay heuristic"];

          v56 = v12;
          if (v14)
          {

            v56 = 0;
          }

          v15 = v12;
          v79 = 0;
          v80 = &v79;
          v81 = 0x2020000000;
          v16 = getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr;
          v82 = getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr;
          if (!getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr)
          {
            v78[0] = MEMORY[0x1E69E9820];
            v78[1] = 3221225472;
            v78[2] = __getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_block_invoke;
            v78[3] = &unk_1E7C23BF0;
            v78[4] = &v79;
            __getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_block_invoke(v78);
            v16 = v80[3];
          }

          _Block_object_dispose(&v79, 8);
          if (!v16)
          {
            [_PSBlockedHandlesCache beginSyncingWithTU];
            __break(1u);
          }

          v53 = v16(v15);

          v57 = [v53 objectAtIndexedSubscript:0];
          displayName = [v57 displayName];
          v67 = objc_opt_new();
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          participants = [v57 participants];
          v68 = [participants countByEnumeratingWithState:&v70 objects:v84 count:16];
          if (v68)
          {
            v66 = *v71;
            do
            {
              for (i = 0; i != v68; ++i)
              {
                if (*v71 != v66)
                {
                  objc_enumerationMutation(participants);
                }

                v18 = *(*(&v70 + 1) + 8 * i);
                address = [v18 address];
                v69 = [getCNContactClass() predicateForContactsMatchingEmailAddress:address];
                CNContactClass = getCNContactClass();
                v21 = [getCNPhoneNumberClass() phoneNumberWithStringValue:address];
                v22 = [CNContactClass predicateForContactsMatchingPhoneNumber:v21];

                v23 = MEMORY[0x1E696AB28];
                v83[0] = v69;
                v83[1] = v22;
                v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
                v25 = [v23 orPredicateWithSubpredicates:v24];

                contactStore = [(_PSEnsembleModel *)self contactStore];
                v27 = _PSDefaultContactKeysToFetch();
                v28 = [contactStore unifiedContactsMatchingPredicate:v25 keysToFetch:v27 error:0];

                firstObject = [v28 firstObject];
                if (firstObject)
                {
                  v30 = 0;
                }

                else
                {
                  v30 = address;
                  firstObject = objc_alloc_init(getCNContactClass());
                }

                v31 = [_PSRecipient alloc];
                identifier = [firstObject identifier];
                displayName2 = [v18 displayName];
                v34 = [(_PSRecipient *)v31 initWithIdentifier:identifier handle:address displayName:displayName2 contact:firstObject];
                [v67 addObject:v34];
              }

              v68 = [participants countByEnumeratingWithState:&v70 objects:v84 count:16];
            }

            while (v68);
          }

          v35 = 0;
        }

        else
        {
          v35 = interactionRecipients;
          displayName = [statisticsCopy valueForProperty:@"ConversationGroupName" forConversationId:v35];
          v67 = 0;
          v56 = 0;
        }

        v36 = [statisticsCopy valueForProperty:@"ConversationINImageURL" forConversationId:interactionRecipients];
        if (v36)
        {
          v37 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v36];
          v38 = [getINImageClass() imageWithURL:v37];
        }

        else
        {
          v37 = 0;
          v38 = 0;
        }

        if (bundleID && interactionRecipients)
        {
          v39 = [_PSSuggestion alloc];
          reason2 = [v59 reason];
          reasonType = [v59 reasonType];
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
          v43 = [(_PSSuggestion *)v39 initWithBundleID:bundleID conversationIdentifier:v56 groupName:displayName recipients:v67 derivedIntentIdentifier:v35 image:v38 reason:reason2 reasonType:reasonType score:v42];

          suggestionsFilteredByBundleIds = [contextCopy suggestionsFilteredByBundleIds];
          bundleID2 = [(_PSSuggestion *)v43 bundleID];
          LOBYTE(reason2) = [suggestionsFilteredByBundleIds containsObject:bundleID2];

          if (((v43 != 0) & reason2) == 1)
          {
            [v48 addObject:v43];
            v11 = v11 + 1.0;
          }
        }
      }

      if (++v60 == v54)
      {
        v54 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
        if (v54)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v46 = *MEMORY[0x1E69E9840];

  return v48;
}

- (BOOL)shouldUseLegacyUI
{
  v2 = _os_feature_enabled_impl();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"shouldUseLegacyUI"];

  return v4 & 1 | ((v2 & 1) == 0);
}

- (void)loadPSConfigPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_8(&dword_1B5ED1000, v0, v1, "Trial: failed to load trial config with path:%@, with error：%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getHeuristicSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getHeuristicSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getHeuristicSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getKnnSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getOtherSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getModelSuggestionsProxyDictWithModelProxiesArray:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 _pas_componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getMeContactIdentifier
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_fallbackPredictionWithPredictionContext:(void *)a1 config:parentSpanId:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 conversationIds];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_fallbackPredictionWithPredictionContext:config:parentSpanId:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_defaultPredictionsWithPredictionContext:trialClient:config:parentSpanId:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)predictWithPredictionContext:maxSuggestions:contactKeysToFetch:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)predictWithPredictionContext:maxSuggestions:contactKeysToFetch:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)predictWithPredictionContext:maxSuggestions:contactKeysToFetch:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)modelProxyToVirtualFeatureStoreFeature:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_FAULT, "Unknown model Proxy key: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_suggestionInteractionPredicatesForFirstPartyMessages:(void *)a1 bundleID:interactionRecipients:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 _pas_componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsFromSuggestionProxies:(_BYTE *)a1 supportedBundleIDs:(_BYTE *)a2 contactKeysToFetch:meContactIdentifier:maxSuggestions:.cold.1(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)suggestionsFromSuggestionProxies:(void *)a1 supportedBundleIDs:contactKeysToFetch:meContactIdentifier:maxSuggestions:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 trialID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsFromSuggestionProxies:supportedBundleIDs:contactKeysToFetch:meContactIdentifier:maxSuggestions:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)predictWithMapsPredictionContext:maxSuggestions:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)rerankMapsSuggestions:(_BYTE *)a1 usingPredictionContext:(_BYTE *)a2 contactResolver:.cold.1(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_knnZKWSuggestionsWithPredictionContext:modelConfiguration:maxSuggestions:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateInteractionStatisticsForExplicitEngagement:(void *)a1 interactionStatisticsConfig:interactionStatistics:sessionFeedback:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 sessionID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateInteractionStatisticsForExplicitEngagement:(void *)a1 interactionStatisticsConfig:interactionStatistics:sessionFeedback:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 sessionID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateInteractionStatisticsForImplicitEngagement:(void *)a1 interactionStatisticsConfig:interactionStatistics:sessionFeedback:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 sessionID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateInteractionStatisticsForImplicitEngagement:(void *)a1 interactionStatisticsConfig:interactionStatistics:sessionFeedback:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 sessionID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)psrDataCollectionForContext:timeToWaitInSeconds:interactionStatisticsConfig:interactionStatistics:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end