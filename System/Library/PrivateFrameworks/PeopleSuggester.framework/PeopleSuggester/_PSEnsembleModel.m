@interface _PSEnsembleModel
+ (id)_feedbackDictionary;
+ (id)_suggestionInteractionPredicatesForFirstPartyMessages:(BOOL)a3 bundleID:(id)a4 interactionRecipients:(id)a5;
+ (id)orderedSuggestionProxiesWithProxyOrder:(id)a3 suggestionProxies:(id)a4 suggestionsWithSharePlayAddedBlock:(id)a5;
+ (id)popFeedbackForSession:(id)a3;
+ (void)saveFeedback:(id)a3 forSessionId:(id)a4 feedbackActionType:(int64_t)a5 transportBundleId:(id)a6 isFallbackFetch:(BOOL)a7;
- (BOOL)_updateInteractionStatisticsForExplicitEngagement:(id)a3 interactionStatisticsConfig:(id)a4 interactionStatistics:(id)a5 sessionFeedback:(id)a6;
- (BOOL)_updateInteractionStatisticsForImplicitEngagement:(id)a3 interactionStatisticsConfig:(id)a4 interactionStatistics:(id)a5 sessionFeedback:(id)a6;
- (BOOL)_updateInteractionStatisticsForSpeculativeEngagement:(id)a3 interactionStatisticsConfig:(id)a4 interactionStatistics:(id)a5 sessionFeedback:(id)a6;
- (BOOL)allowConcurrentReads;
- (BOOL)areRecipientsBlockedForSuggestion:(id)a3;
- (BOOL)coreMLModelNeedsDurableFeatures;
- (BOOL)excludeSuggestionWithConversationId:(id)a3;
- (BOOL)loadPSConfig:(id)a3;
- (BOOL)loadPSConfigPath:(id)a3;
- (BOOL)shouldUseLegacyUI;
- (CNContactStore)contactStore;
- (NSArray)defaultContactKeysToFetch;
- (NSUserDefaults)peopleSuggesterDefaults;
- (_CDInteractionStore)interactionStore;
- (_DKKnowledgeQuerying)knowledgeStore;
- (_PSEnsembleModel)init;
- (_PSEnsembleModel)initWithInteractionStore:(id)a3 knowledgeStore:(id)a4;
- (id)_conversationIdForFirstInteractionAfterSharingStartDate:(id)a3 targetBundleId:(id)a4;
- (id)_defaultPredictionsWithPredictionContext:(id)a3 trialClient:(id)a4 config:(id)a5 parentSpanId:(id)a6;
- (id)_fallbackPredictionWithPredictionContext:(id)a3 config:(id)a4 parentSpanId:(id)a5;
- (id)_knnZKWSuggestionsWithPredictionContext:(id)a3 modelConfiguration:(id)a4 maxSuggestions:(unint64_t)a5;
- (id)_reMapContentTypes:(int *)a3 count:(unint64_t)a4;
- (id)appExtensionSuggestionsFromContext:(id)a3;
- (id)autocompleteSearchResultsWithPredictionContext:(id)a3;
- (id)candidatesForShareSheetRanking;
- (id)familyPredictionsWithMaxSuggestions:(unint64_t)a3 predictionContext:(id)a4;
- (id)fetchShareSheetSupportedBundleIDs;
- (id)fetchSupportedBundleIDsWithPredictionContextFilters:(id)a3;
- (id)finalSuggestionProxiesForInteractionStatistics:(id)a3 config:(id)a4 trialClient:(id)a5 context:(id)a6;
- (id)getMeContactIdentifier;
- (id)getModelProxiesArrayWithPredictionContext:(id)a3;
- (id)getModelSuggestionsProxyDictWithModelProxiesArray:(id)a3;
- (id)getPETMessageFrom:(id)a3 withConfig:(id)a4 andContext:(id)a5;
- (id)getPhotoBasedFeaturesAsync:(id)a3 shouldProcessPicturesLive:(BOOL)a4 shouldUseVIPModel:(BOOL)a5 withTimeout:(double)a6;
- (id)getReasonTypesFromObjects:(id)a3 limit:(unint64_t)a4;
- (id)getSuggestionsFromInteractionsStatistics:(id)a3 withConfig:(id)a4 trialClient:(id)a5 andPredictionContext:(id)a6;
- (id)mapsSuggestionArrayWithArray:(id)a3 appendingUniqueElementsFromArray:(id)a4 contactResolver:(id)a5 meContactId:(id)a6;
- (id)mergedSuggestionsWithFamilySuggestions:(id)a3 shareSheetSuggestions:(id)a4 maxSuggestions:(unint64_t)a5 supportedBundleIds:(id)a6;
- (id)predictWithMapsPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4;
- (id)predictWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4;
- (id)predictWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4 contactKeysToFetch:(id)a5;
- (id)psr_suggestionsFromSuggestionProxies:(id)a3 interactionsStatistics:(id)a4 maxSuggestions:(unint64_t)a5 predictionContext:(id)a6;
- (id)rankedAutocompleteSuggestionsFromContext:(id)a3 candidates:(id)a4;
- (id)rankedGlobalSuggestionsForSiriNLWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4 interactionId:(id)a5;
- (id)rankedHandlesFromCandidateHandles:(id)a3;
- (id)rankedNameSuggestionsWithPredictionContext:(id)a3 name:(id)a4;
- (id)rankedSiriMLCRHandles:(id)a3 context:(id)a4;
- (id)rerankMapsSuggestions:(id)a3 usingPredictionContext:(id)a4 contactResolver:(id)a5;
- (id)suggestZKWSuggestionsWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4;
- (id)suggestionsFromSuggestionProxies:(id)a3 supportedBundleIDs:(id)a4 contactKeysToFetch:(id)a5 meContactIdentifier:(id)a6 maxSuggestions:(unint64_t)a7;
- (id)trialIdentifier;
- (int)_remapSingleContentTypeValue:(int)a3;
- (int)modelProxyToVirtualFeatureStoreFeature:(id)a3;
- (unint64_t)pruneCandidatesForRanking:(id)a3;
- (void)addExtraInformationWithSuggestions:(id)a3 modelSuggestionProxiesDict:(id)a4;
- (void)addSuggestedRankFeature:(id)a3 interactionsStatistics:(id)a4;
- (void)addSupportedBundleIDs:(id)a3;
- (void)addTrialInfoToPredictionContext:(id)a3 withExperiment:(id)a4;
- (void)addUTIInfo:(id)a3 predictionContext:(id)a4;
- (void)evaluateCandidates:(id)a3 psrMLModel:(id)a4;
- (void)freeCaches;
- (void)freeCachesIfNotCoreDuetDaemon;
- (void)getCoreMLSuggestionProxiesWithPredictionContext:(id)a3 modelSuggestionProxiesDict:(id)a4 candidateToFeatureVectorDictGetter:(id)a5;
- (void)getHeuristicSuggestionProxies:(id)a3 supportedBundleIDs:(id)a4 modelSuggestionProxiesDict:(id)a5;
- (void)getKnnSuggestionProxies:(id)a3 supportedBundleIDs:(id)a4 modelSuggestionProxiesDict:(id)a5;
- (void)getMeContactIdentifier;
- (void)getOtherSuggestionProxies:(id)a3 supportedBundleIDs:(id)a4 modelSuggestionProxiesDict:(id)a5;
- (void)intializeKNNContactRankerModelWithInteractionStore:(id)a3 knowledgeStore:(id)a4;
- (void)loadDefaultPSConfig;
- (void)logPipeline:(id)a3 withPipelineStage:(id)a4 andSessionID:(id)a5 andCandidateNames:(id)a6;
- (void)logPipelineWithSuggestions:(id)a3 interactionsStatistics:(id)a4 pipelineStage:(id)a5 sessionID:(id)a6;
- (void)populateCaches;
- (void)populateCachesWithSupportedBundleIDs:(id)a3;
- (void)psrDataCollectionForContext:(id)a3 timeToWaitInSeconds:(int)a4 interactionStatisticsConfig:(id)a5 interactionStatistics:(id)a6;
- (void)refreshCaches;
- (void)registerWithTrial;
- (void)sendDataCollectionMessageWith:(id)a3;
- (void)sendDataToPETAsync:(id)a3 withConfig:(id)a4 andContext:(id)a5;
- (void)setupAeroMLPipelineLoggerWithModel:(id)a3;
- (void)updateFactorLevels;
- (void)updateTrialID:(id)a3;
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
    v4 = [(_PSEnsembleModel *)v2 interactionStore];
    v5 = [(_PSEnsembleModel *)v3 knowledgeStore];
    [(_PSEnsembleModel *)v3 initializeEnsembleModelsWithInteractionStore:v4 knowledgeStore:v5];

    [(_PSEnsembleModel *)v3 loadDefaultPSConfig];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.coreduetd.queue", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    v11 = +[_PSConstants mobileCoreDuetBundleId];
    v12 = [v10 isEqual:v11];

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
    v5 = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    v6 = [v4 storeWithDirectory:v5 readOnly:1];
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
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  v4 = +[_PSConstants mobileCoreDuetBundleId];
  v9[0] = v4;
  v5 = +[_PSConstants macKnowledgeAgentBundleId];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  LOBYTE(v2) = [v6 containsObject:v3];

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (_DKKnowledgeQuerying)knowledgeStore
{
  os_unfair_lock_lock(&self->_lock);
  knowledgeStore = self->_knowledgeStore;
  if (!knowledgeStore)
  {
    v4 = [MEMORY[0x1E69979A0] knowledgeStore];
    v5 = self->_knowledgeStore;
    self->_knowledgeStore = v4;

    knowledgeStore = self->_knowledgeStore;
  }

  v6 = knowledgeStore;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)fetchShareSheetSupportedBundleIDs
{
  v3 = [(_PSEnsembleModel *)self peopleSuggesterDefaults];
  -[_PSEnsembleModel setAllowNonSupportedBundleIDs:](self, "setAllowNonSupportedBundleIDs:", [v3 BOOLForKey:@"_PSAllowNonSupportedBundleIDs"]);

  v4 = _PSShareSheetSuggestionBundleIDs([(_PSEnsembleModel *)self allowNonSupportedBundleIDs]);
  v5 = [v4 allObjects];

  return v5;
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

- (_PSEnsembleModel)initWithInteractionStore:(id)a3 knowledgeStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_PSEnsembleModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interactionStore, a3);
    [(_PSEnsembleModel *)v10 initializeEnsembleModelsWithInteractionStore:v7 knowledgeStore:v8];
  }

  return v10;
}

+ (void)saveFeedback:(id)a3 forSessionId:(id)a4 feedbackActionType:(int64_t)a5 transportBundleId:(id)a6 isFallbackFetch:(BOOL)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2048;
    v28 = a5;
    _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "Received feedback in coreduetd %@,%@,%ld", buf, 0x20u);
  }

  if (v12)
  {
    v15 = +[_PSEnsembleModel _feedbackDictionary];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99___PSEnsembleModel_saveFeedback_forSessionId_feedbackActionType_transportBundleId_isFallbackFetch___block_invoke;
    v17[3] = &unk_1E7C247E0;
    v18 = v11;
    v21 = a5;
    v19 = v13;
    v22 = a7;
    v20 = v12;
    [v15 runWithLockAcquired:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)popFeedbackForSession:(id)a3
{
  v3 = a3;
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
  v5 = v3;
  v9 = v5;
  [v4 runWithLockAcquired:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)loadPSConfigPath:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
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
      v15 = v4;
      _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_INFO, "Trial: loaded psConfig from:%@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)loadPSConfig:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_psConfig, a3);
  psConfig = self->_psConfig;
  if (psConfig)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 objectForKeyedSubscript:v8];

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

    v22 = [(_PSEnsembleModel *)self knnModel];

    if (v22)
    {
      v23 = [(_PSEnsembleModel *)self knnModel];
      [v23 updateModelProperties:self->_psConfig];
    }

    v24 = [(_PSEnsembleModel *)self knnMapsModel];

    if (v24)
    {
      v25 = [(_PSEnsembleModel *)self knnMapsModel];
      [v25 updateModelProperties:self->_psConfig];
    }

    v26 = [(_PSEnsembleModel *)self knnZkwModel];

    if (v26)
    {
      v27 = [(_PSEnsembleModel *)self knnZkwModel];
      [v27 updateModelProperties:self->_psConfig];
    }

    v28 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];

    if (v28)
    {
      v29 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
      [v29 updateModelProperties:self->_psConfig];
    }

    v30 = [(_PSEnsembleModel *)self heuristics];

    if (v30)
    {
      v31 = [(_PSEnsembleModel *)self heuristics];
      [v31 updateModelProperties:self->_psConfig];
    }
  }

  return psConfig != 0;
}

- (void)updateTrialID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v10 reasonType];
          v15 = [v10 reason];
          *buf = v17;
          v23 = v14;
          v24 = 2112;
          v25 = v15;
          _os_log_debug_impl(&dword_1B5ED1000, v11, OS_LOG_TYPE_DEBUG, "Suggestion ReasonType:%@, Reason:%@", buf, 0x16u);
        }

        v12 = [(_PSEnsembleModel *)self trialID];
        v13 = [v12 copy];
        [v10 setTrialID:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
  v5 = [v4 BOOLeanValue];

  return v5;
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
  v3 = [(_PSEnsembleModel *)self fetchShareSheetSupportedBundleIDs];
  [(_PSEnsembleModel *)self populateCachesWithSupportedBundleIDs:v3];
}

- (void)populateCachesWithSupportedBundleIDs:(id)a3
{
  v166[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_populateCachesWithSupportedBundleIDs", " enableTelemetry=YES ", buf, 2u);
  }

  v148 = [(_PSEnsembleModel *)self interactionStore];
  v6 = [(_PSEnsembleModel *)self contactStore];
  v147 = [(_PSEnsembleModel *)self knowledgeStore];
  v7 = [_PSContactResolver alloc];
  v8 = [(_PSEnsembleModel *)self defaultContactKeysToFetch];
  v145 = v6;
  v9 = [(_PSContactResolver *)v7 initWithContactStore:v6 keysToFetch:v8];
  [(_PSEnsembleModel *)self setContactResolver:v9];

  os_unfair_lock_lock(&self->_populateCacheLock);
  v10 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v11 = [(_PSEnsembleModel *)self cachedSupportedBundleIDs];
  if (v11 && (v12 = v11, -[_PSEnsembleModel cachedSupportedBundleIDs](self, "cachedSupportedBundleIDs"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v10 isSubsetOfSet:v13], v13, v12, (v14 & 1) == 0))
  {
    v15 = v4;
    [(_PSEnsembleModel *)self setMessageInteractionCache:0];
    [(_PSEnsembleModel *)self setShareInteractionCache:0];
  }

  else
  {
    v15 = v4;
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
  v28 = [(_PSEnsembleModel *)self messageInteractionCache];

  v141 = v17;
  v142 = v26;
  if (v28)
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
    v36 = [_PSInteractionStoreUtils interactionCacheFromStore:v148 size:350 queryPredicate:v29 filterBlock:v26];
    [(_PSEnsembleModel *)self setMessageInteractionCache:v36];
  }

  v37 = [(_PSEnsembleModel *)self shareInteractionCache];

  v38 = v15;
  if (v37)
  {
    v139 = 0;
    v39 = v148;
  }

  else
  {
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);

    v41 = MEMORY[0x1E696AE18];
    v42 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-14515200.0];
    v43 = [v41 predicateWithFormat:@"(startDate >= %@)", v42];
    [v40 addObject:v43];

    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", v143];
    [v40 addObject:v44];

    v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", v27];
    [v40 addObject:v45];

    v46 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(targetBundleId IN %@)", v144];
    [v40 addObject:v46];

    [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v40];
    v139 = v39 = v148;
    v47 = [_PSInteractionStoreUtils interactionCacheFromStore:"interactionCacheFromStore:size:queryPredicate:filterBlock:" size:v148 queryPredicate:350 filterBlock:?];
    [(_PSEnsembleModel *)self setShareInteractionCache:v47];

    v22 = v40;
  }

  v138 = v27;
  v140 = v24;
  v48 = [(_PSEnsembleModel *)self contactMonitor];

  if (!v48)
  {
    v49 = [[_PSInteractionAndContactMonitor alloc] initWithInteractionStore:v39 contactStore:v6];
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

  v52 = [(_PSEnsembleModel *)self knnModel];
  if (!v52)
  {
    goto LABEL_17;
  }

  v53 = v52;
  v54 = MEMORY[0x1E695DFD8];
  v55 = [(_PSEnsembleModel *)self knnModel];
  [v55 filterBundleIds];
  v57 = v56 = v38;
  v58 = [v54 setWithArray:v57];
  [MEMORY[0x1E695DFD8] setWithArray:v56];
  v59 = v22;
  v61 = v60 = v29;
  v62 = [v58 isEqualToSet:v61];

  v29 = v60;
  v22 = v59;

  v38 = v56;
  v39 = v148;

  if ((v62 & 1) == 0)
  {
LABEL_17:
    v63 = [_PSKNNModel alloc];
    v64 = [(_PSEnsembleModel *)self contactResolver];
    v65 = [(_PSEnsembleModel *)self messageInteractionCache];
    v66 = [(_PSEnsembleModel *)self shareInteractionCache];
    v67 = [(_PSKNNModel *)v63 initWithK:100 interactionStore:v39 filterByBundleIds:v38 knowledgeStore:v147 contactResolver:v64 messageInteractionCache:v65 shareInteractionCache:v66];
    [(_PSEnsembleModel *)self setKnnModel:v67];

    v68 = [(_PSEnsembleModel *)self knnModel];
    v69 = [(_PSEnsembleModel *)self psConfig];
    [v68 updateModelProperties:v69];
  }

  v70 = [(_PSEnsembleModel *)self knnZkwModel];

  v71 = v147;
  if (!v70)
  {
    v72 = [_PSKNNModel alloc];
    v73 = [(_PSEnsembleModel *)self contactResolver];
    v74 = [(_PSEnsembleModel *)self messageInteractionCache];
    v75 = [(_PSEnsembleModel *)self shareInteractionCache];
    v76 = [(_PSKNNModel *)v72 initWithK:500 interactionStore:v39 filterByBundleIds:v38 knowledgeStore:v147 contactResolver:v73 messageInteractionCache:v74 shareInteractionCache:v75];
    [(_PSEnsembleModel *)self setKnnZkwModel:v76];

    v77 = [(_PSEnsembleModel *)self knnZkwModel];
    v78 = [(_PSEnsembleModel *)self psConfig];
    [v77 updateModelProperties:v78];

    v79 = [(_PSEnsembleModel *)self zkwFTOrchestrator];
    if (v79)
    {
    }

    else if (getuid())
    {
      v80 = [_PSFTZKWOrchestrator alloc];
      v81 = [(_PSEnsembleModel *)self knnZkwModel];
      v82 = [(_PSFTZKWOrchestrator *)v80 initWithKNNModel:v81 interactionStore:v39];
      [(_PSEnsembleModel *)self setZkwFTOrchestrator:v82];

      v155[0] = MEMORY[0x1E69E9820];
      v155[1] = 3221225472;
      v155[2] = __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_4;
      v155[3] = &unk_1E7C24880;
      v155[4] = self;
      [_PSFTZKWTrialWrapper runWithData:v155];
      v83 = [(_PSEnsembleModel *)self zkwFTOrchestrator];
      [v83 populateCaches];
    }
  }

  v84 = [(_PSEnsembleModel *)self knnSiriNLContactRankerModel];

  if (!v84)
  {
    v85 = [_PSKNNModel alloc];
    v86 = [(_PSEnsembleModel *)self contactResolver];
    v87 = [(_PSEnsembleModel *)self messageInteractionCache];
    v88 = [(_PSEnsembleModel *)self shareInteractionCache];
    v89 = [(_PSKNNModel *)v85 initWithK:2000 interactionStore:v39 filterByBundleIds:v38 knowledgeStore:v147 contactResolver:v86 messageInteractionCache:v87 shareInteractionCache:v88];
    [(_PSEnsembleModel *)self setKnnSiriNLContactRankerModel:v89];

    v90 = [(_PSEnsembleModel *)self knnSiriNLContactRankerModel];
    v91 = [(_PSEnsembleModel *)self psConfig];
    [v90 updateModelProperties:v91];
  }

  v92 = [(_PSEnsembleModel *)self heuristics];

  if (!v92)
  {
    v93 = [_PSHeuristics alloc];
    v94 = [(_PSEnsembleModel *)self contactResolver];
    v95 = [(_PSEnsembleModel *)self cachedSupportedBundleIDs];
    v96 = [(_PSEnsembleModel *)self messageInteractionCache];
    v97 = [(_PSHeuristics *)v93 initWithKnowledgeStore:v147 interactionStore:v39 contactResolver:v94 shareSheetSupportedBundleIds:v95 messageInteractionCache:v96];
    [(_PSEnsembleModel *)self setHeuristics:v97];

    v98 = [(_PSEnsembleModel *)self heuristics];
    v99 = [(_PSEnsembleModel *)self psConfig];
    [v98 updateModelProperties:v99];
  }

  v100 = [(_PSEnsembleModel *)self coreMLScoringModel];
  v101 = v140;
  v102 = v142;
  if (!v100)
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_31;
    }

    v100 = objc_alloc_init(_PSCoreMLScoringModel);
    [(_PSEnsembleModel *)self setCoreMLScoringModel:v100];
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
      v109 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate <= %@)", v107];
      [v104 addObject:v109];

      v136 = v108;
      v110 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%@ <= startDate)", v108];
      [v104 addObject:v110];

      v111 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", v106];
      [v104 addObject:v111];

      v112 = v105;
      v113 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", v105];
      [v104 addObject:v113];

      v114 = MEMORY[0x1E696AE18];
      v115 = +[_PSConstants contactsAutocompleteBundleId];
      v116 = [v114 predicateWithFormat:@"(bundleId != %@)", v115];
      [v104 addObject:v116];

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
      v121 = [_PSInteractionStoreUtils interactionCacheFromStore:v148 size:100 queryPredicate:v119 filterBlock:v149];
      allOtherInteractionCache = self->_allOtherInteractionCache;
      self->_allOtherInteractionCache = v121;

      v123 = [_PSFeatureCache alloc];
      v124 = [(_PSEnsembleModel *)self candidatesForShareSheetRanking];
      v125 = [(_PSEnsembleModel *)self messageInteractionCache];
      v166[0] = v125;
      v126 = [(_PSEnsembleModel *)self shareInteractionCache];
      v166[1] = v126;
      v127 = [(_PSEnsembleModel *)self allOtherInteractionCache];
      v166[2] = v127;
      v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:3];
      v129 = [(_PSFeatureCache *)v123 initWithPredictionContext:0 candidates:v124 caches:v128 store:self->_interactionStore];
      featureCache = self->_featureCache;
      self->_featureCache = v129;

      v131 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v131))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v131, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_populateCachesWithSupportedBundleIDs", &unk_1B5FD970D, buf, 2u);
      }

      v38 = v137;
      v71 = v147;
      v39 = v148;
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

- (void)intializeKNNContactRankerModelWithInteractionStore:(id)a3 knowledgeStore:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];

  if (!v7)
  {
    v8 = [(_PSEnsembleModel *)self fetchShareSheetSupportedBundleIDs];
    v9 = [_PSKNNModel alloc];
    v10 = [(_PSEnsembleModel *)self contactResolver];
    v11 = [(_PSEnsembleModel *)self messageInteractionCache];
    v12 = [(_PSEnsembleModel *)self shareInteractionCache];
    v13 = [(_PSKNNModel *)v9 initWithK:500 interactionStore:v16 filterByBundleIds:v8 knowledgeStore:v6 contactResolver:v10 messageInteractionCache:v11 shareInteractionCache:v12];
    [(_PSEnsembleModel *)self setKnnNameOrContactRankerModel:v13];

    v14 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
    v15 = [(_PSEnsembleModel *)self psConfig];
    [v14 updateModelProperties:v15];
  }
}

- (void)refreshCaches
{
  v3 = [(_PSEnsembleModel *)self zkwFTOrchestrator];

  if (v3)
  {
    v4 = [(_PSEnsembleModel *)self zkwFTOrchestrator];
    [v4 populateCaches];
  }
}

- (void)freeCachesIfNotCoreDuetDaemon
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = +[_PSConstants mobileCoreDuetBundleId];
  if ([v4 isEqual:v5])
  {
  }

  else
  {
    v6 = +[_PSConstants macKnowledgeAgentBundleId];
    v7 = [v4 isEqual:v6];

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

- (id)predictWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "showPotentialFamilyMembers")}];
    v9 = [v6 bundleID];
    v10 = [v6 attachments];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isSharePlayAvailable")}];
    v18 = 138413058;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, "Prediction Context - Family: %@, Bundle Id: %@, Attachments: %@, SharePlay: %@", &v18, 0x2Au);
  }

  if ([v6 showPotentialFamilyMembers])
  {
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "iCloud Family Suggestions Active", &v18, 2u);
    }

    v13 = [(_PSEnsembleModel *)self familyPredictionsWithMaxSuggestions:a4 predictionContext:v6];
  }

  else
  {
    v13 = [(_PSEnsembleModel *)self predictWithPredictionContext:v6 maxSuggestions:a4 contactKeysToFetch:0];
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

- (id)familyPredictionsWithMaxSuggestions:(unint64_t)a3 predictionContext:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(_PSFamilyRecommender);
  v7 = [(_PSFamilyRecommender *)v6 familyRecommendationSuggestionsForShareSheetWithPredictionContext:v5];

  v8 = [v7 count];
  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 subarrayWithRange:{0, v9}];

  return v10;
}

- (id)fetchSupportedBundleIDsWithPredictionContextFilters:(id)a3
{
  v4 = a3;
  v5 = [(_PSEnsembleModel *)self fetchShareSheetSupportedBundleIDs];
  v6 = [v5 mutableCopy];

  if (([v4 isSharePlayAvailable] & 1) == 0)
  {
    v7 = +[_PSConstants sharePlayBundleId];
    [v6 removeObject:v7];
  }

  v8 = [v4 suggestionsFilteredByBundleIds];
  v9 = [v8 count];

  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v4 suggestionsFilteredByBundleIds];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __72___PSEnsembleModel_fetchSupportedBundleIDsWithPredictionContextFilters___block_invoke;
    v18 = &unk_1E7C248D0;
    v6 = v6;
    v19 = v6;
    v12 = v10;
    v20 = v12;
    [v11 enumerateObjectsUsingBlock:&v15];

    if ([v12 count])
    {
      v13 = v12;

      v6 = v13;
    }
  }

  return v6;
}

- (id)getPhotoBasedFeaturesAsync:(id)a3 shouldProcessPicturesLive:(BOOL)a4 shouldUseVIPModel:(BOOL)a5 withTimeout:(double)a6
{
  v32 = a4;
  v33 = a5;
  v7 = a3;
  v35 = [MEMORY[0x1E695DF00] date];
  v8 = +[_PSLogging suggestionSignpost];
  v9 = os_signpost_id_generate(v8);

  v10 = +[_PSLogging suggestionSignpost];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "_PSEnsembleModel_getPhotoBasedFeatures", " enableTelemetry=YES ", buf, 2u);
  }

  v34 = [v7 bundleID];
  v12 = +[_PSLogging suggestionSignpost];
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "_PSEnsembleModel_getPhotoBasedFeatures_personIDsOfPeopleInSharedPhotoAssets", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = dispatch_group_create();
  queue = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"getPhotoBasedFeaturesAsync"];
  v15 = [v7 attachments];
  v16 = [_PSPhotoUtils attachmentsEligibleForPhotoProcessingFromAttachments:v15];

  v17 = [v16 firstObject];
  dispatch_group_enter(v14);
  v18 = [v7 sessionID];
  v19 = [v7 currentSpanId];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __103___PSEnsembleModel_getPhotoBasedFeaturesAsync_shouldProcessPicturesLive_shouldUseVIPModel_withTimeout___block_invoke;
  v45[3] = &unk_1E7C248F8;
  v49 = v9;
  v20 = v7;
  v46 = v20;
  v21 = v17;
  v47 = v21;
  v22 = v14;
  v48 = v22;
  v23 = [_PSPhotoSuggestions phPersonIdentifiersOfPeopleInSharedPhotoAttachments:v16 forBundleID:v34 shouldProcessPicturesLive:v32 shouldUseVIPModel:v33 withTraceID:v18 withSpanID:v19 withCompletion:v45];

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
  v40 = a6;
  v37 = v35;
  v38 = v22;
  v39 = v23;
  v26 = v23;
  v27 = v22;
  v28 = v35;
  v29 = MEMORY[0x1B8C8C060](v36);

  return v29;
}

- (void)getCoreMLSuggestionProxiesWithPredictionContext:(id)a3 modelSuggestionProxiesDict:(id)a4 candidateToFeatureVectorDictGetter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKeyedSubscript:@"coreMLSuggestionProxies"];
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

      v15 = [(_PSEnsembleModel *)self coreMLScoringModel];
      v16 = [(_PSEnsembleModel *)self messageInteractionCache];
      v17 = [(_PSEnsembleModel *)self shareInteractionCache];
      v18 = [v15 getSuggestionProxiesForCandidateToFeatureVectorDictGetter:v10 predictionContext:v8 messageInteractionCache:v16 shareInteractionCache:v17];
      [v9 setObject:v18 forKeyedSubscript:@"coreMLSuggestionProxies"];

      v19 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v19))
      {
        *v20 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetCoreMLSuggestions", &unk_1B5FD970D, v20, 2u);
      }
    }
  }
}

- (void)getHeuristicSuggestionProxies:(id)a3 supportedBundleIDs:(id)a4 modelSuggestionProxiesDict:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:@"hyperRecentSuggestionProxies"];

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

    v14 = [(_PSEnsembleModel *)self heuristics];
    v15 = [v8 suggestionDate];
    v16 = [v8 bundleID];
    v17 = [v14 hyperRecentHeuristicSuggestionProxiesWithReferenceDate:v15 predictionContextBundleId:v16];
    [v10 setObject:v17 forKeyedSubscript:@"hyperRecentSuggestionProxies"];

    v18 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v18))
    {
      *v35 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleHyperRecencyHeuristic", &unk_1B5FD970D, v35, 2u);
    }
  }

  v19 = [v10 objectForKeyedSubscript:@"inPhoneCallSuggestionProxies"];

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

    v22 = [(_PSEnsembleModel *)self heuristics];
    v23 = [v22 inPhoneCallHeuristicSuggestionProxiesWithBundleIds:v9 predictionContext:v8];
    [v10 setObject:v23 forKeyedSubscript:@"inPhoneCallSuggestionProxies"];

    v24 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v24))
    {
      *v33 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleInPhoneCallHeuristic", &unk_1B5FD970D, v33, 2u);
    }
  }

  v25 = [v10 objectForKeyedSubscript:@"returnDocumentToSenderSuggestionProxies"];

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

    v28 = [(_PSEnsembleModel *)self heuristics];
    v29 = [v28 returnDocumentToSender:v8];
    [v10 setObject:v29 forKeyedSubscript:@"returnDocumentToSenderSuggestionProxies"];

    v30 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v30))
    {
      *v31 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetReturnToSenderHeuristic", &unk_1B5FD970D, v31, 2u);
    }
  }
}

- (void)getKnnSuggestionProxies:(id)a3 supportedBundleIDs:(id)a4 modelSuggestionProxiesDict:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:@"knnSuggestionProxies"];

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

    v12 = [(_PSEnsembleModel *)self knnModel];
    v13 = [v12 suggestionProxiesWithPredictionContext:v7];
    [v8 setObject:v13 forKeyedSubscript:@"knnSuggestionProxies"];

    v14 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v14))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v15 = [v8 objectForKeyedSubscript:@"knnSuggestionBasedOnSharesAllProxies"];

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

    v18 = [(_PSEnsembleModel *)self knnModel];
    v19 = [v18 suggestionProxiesBasedOnSharingInteractionsWithPredictionContext:v7 withOnlyTopShares:0 withFilterOutNonMatchingSourceBundleIDs:0];
    [v8 setObject:v19 forKeyedSubscript:@"knnSuggestionBasedOnSharesAllProxies"];

    v20 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v20))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v21 = [v8 objectForKeyedSubscript:@"knnSuggestionBasedOnSharesTopProxies"];

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

    v24 = [(_PSEnsembleModel *)self knnModel];
    v25 = [v24 suggestionProxiesBasedOnSharingInteractionsWithPredictionContext:v7 withOnlyTopShares:1 withFilterOutNonMatchingSourceBundleIDs:0];
    [v8 setObject:v25 forKeyedSubscript:@"knnSuggestionBasedOnSharesTopProxies"];

    v26 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v26))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v27 = [v8 objectForKeyedSubscript:@"knnSuggestionBasedOnSharesAllAndAppFilterOnProxies"];

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

    v30 = [(_PSEnsembleModel *)self knnModel];
    v31 = [v30 suggestionProxiesBasedOnSharingInteractionsWithPredictionContext:v7 withOnlyTopShares:0 withFilterOutNonMatchingSourceBundleIDs:1];
    [v8 setObject:v31 forKeyedSubscript:@"knnSuggestionBasedOnSharesAllAndAppFilterOnProxies"];

    v32 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v32))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v33 = [v8 objectForKeyedSubscript:@"knnSuggestionBasedOnSharesTopAndAppFilterOnProxies"];

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

    v36 = [(_PSEnsembleModel *)self knnModel];
    v37 = [v36 suggestionProxiesBasedOnSharingInteractionsWithPredictionContext:v7 withOnlyTopShares:1 withFilterOutNonMatchingSourceBundleIDs:1];
    [v8 setObject:v37 forKeyedSubscript:@"knnSuggestionBasedOnSharesTopAndAppFilterOnProxies"];

    v38 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v38))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }

  v39 = [v8 objectForKeyedSubscript:@"knnSuggestionBasedOnInteractionsProxies"];

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

    v42 = [(_PSEnsembleModel *)self knnModel];
    v43 = [v42 suggestionProxiesBasedOnNonSharingInteractionsWithPredictionContext:v7];
    [v8 setObject:v43 forKeyedSubscript:@"knnSuggestionBasedOnInteractionsProxies"];

    v44 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v44))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleKnnSuggestions", &unk_1B5FD970D, v45, 2u);
    }
  }
}

- (void)getOtherSuggestionProxies:(id)a3 supportedBundleIDs:(id)a4 modelSuggestionProxiesDict:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"backFillProxies"];

  if (v7)
  {
    v8 = [_PSHeuristics PSHeuristicsRecencyReasonToString:0];
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getOtherSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v10 = [(_PSEnsembleModel *)self heuristics];
    v11 = [(_PSEnsembleModel *)self messageInteractionCache];
    v12 = [v11 interactions];
    v13 = [v10 proxiesByRecencyUsingInteractions:v12 startIndex:100 reason:0 allowNonSupportedBundleIDs:{-[_PSEnsembleModel allowNonSupportedBundleIDs](self, "allowNonSupportedBundleIDs")}];
    [v6 setObject:v13 forKeyedSubscript:@"backFillProxies"];
  }

  v14 = [v6 objectForKeyedSubscript:@"messagesRecencyProxies"];

  if (v14)
  {
    v15 = [_PSHeuristics PSHeuristicsRecencyReasonToString:1];
    v16 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getOtherSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v17 = [(_PSEnsembleModel *)self heuristics];
    v18 = [(_PSEnsembleModel *)self messageInteractionCache];
    v19 = [v18 interactions];
    v20 = [v17 proxiesByRecencyUsingInteractions:v19 startIndex:0 reason:1 allowNonSupportedBundleIDs:{-[_PSEnsembleModel allowNonSupportedBundleIDs](self, "allowNonSupportedBundleIDs")}];
    [v6 setObject:v20 forKeyedSubscript:@"messagesRecencyProxies"];
  }

  v21 = [v6 objectForKeyedSubscript:@"shareSheetRecencyProxies"];

  if (v21)
  {
    v22 = [_PSHeuristics PSHeuristicsRecencyReasonToString:2];
    v23 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_PSEnsembleModel getOtherSuggestionProxies:supportedBundleIDs:modelSuggestionProxiesDict:];
    }

    v24 = [(_PSEnsembleModel *)self heuristics];
    v25 = [(_PSEnsembleModel *)self shareInteractionCache];
    v26 = [v25 interactions];
    v27 = [v24 proxiesByRecencyUsingInteractions:v26 startIndex:0 reason:2 allowNonSupportedBundleIDs:{-[_PSEnsembleModel allowNonSupportedBundleIDs](self, "allowNonSupportedBundleIDs")}];
    [v6 setObject:v27 forKeyedSubscript:@"shareSheetRecencyProxies"];
  }
}

- (id)getModelProxiesArrayWithPredictionContext:(id)a3
{
  v4 = [a3 isFallbackFetch];
  v5 = [(_PSEnsembleModel *)self psConfig];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v4)
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

- (id)getModelSuggestionsProxyDictWithModelProxiesArray:(id)a3
{
  v3 = a3;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel getModelSuggestionsProxyDictWithModelProxiesArray:v3];
  }

  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_438];
  v7 = [v5 initWithObjects:v6 forKeys:v3];

  return v7;
}

- (id)getMeContactIdentifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(_PSEnsembleModel *)self contactStore];
  v3 = getCNContactIdentifierKey_0();
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = 0;
  v5 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v12];
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
    v8 = [v5 identifier];
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel getMeContactIdentifier];
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_fallbackPredictionWithPredictionContext:(id)a3 config:(id)a4 parentSpanId:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_fallbackPredictionPipeline", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [AeroMLTracerSession alloc];
  v13 = [v8 sessionID];
  v14 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v15 = [(AeroMLTracerSession *)v12 initWithTraceId:v13 projectName:v14];

  v16 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v8 sessionID];
    *buf = 138412290;
    v37 = v17;
    _os_log_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEFAULT, "Reading interaction stats for fallback request sessionID %@", buf, 0xCu);
  }

  v18 = [(AeroMLTracerSession *)v15 createSubSpanWithName:@"getInteractionsStatisticsForConfig" parentSpanId:v9];
  [v18 start];
  v19 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSInteractionsStatisticsQuery", " enableTelemetry=YES ", buf, 2u);
  }

  v20 = [[_PSInteractionsStatistics alloc] initWithConfig:v10];
  [(_PSInteractionsStatistics *)v20 computeStatisticsWithInteractionStore:self->_interactionStore];
  v21 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSInteractionsStatisticsQuery", &unk_1B5FD970D, buf, 2u);
  }

  v22 = [(_PSInteractionsStatistics *)v20 queryStats];
  [v18 addAttributes:v22];

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

  v25 = [(AeroMLTracerSession *)v15 createSubSpanWithName:@"pruneCandidatesForRanking" parentSpanId:v9];
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
    v30 = [(_PSInteractionsStatistics *)v20 conversationIds];
    *buf = 138477827;
    v37 = v30;
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

- (id)_defaultPredictionsWithPredictionContext:(id)a3 trialClient:(id)a4 config:(id)a5 parentSpanId:(id)a6
{
  v91 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v84 = a6;
  v13 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_defaultPredictionPipeline", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = [AeroMLTracerSession alloc];
  v15 = [v10 sessionID];
  v16 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v17 = [(AeroMLTracerSession *)v14 initWithTraceId:v15 projectName:v16];

  v18 = [v10 queryStartDate];
  v81 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"getPhotoBasedFeaturesAsync" parentSpanId:v84];
  v80 = v18;
  if (([v10 isFallbackFetch] & 1) != 0 || !objc_msgSend(v11, "shouldComputePhotoBasedFeatures"))
  {
    v82 = &__block_literal_global_457;
  }

  else
  {
    v19 = [(_PSEnsembleModel *)self peopleSuggesterDefaults];
    [v19 doubleForKey:@"_PSGetPhotoBasedFeaturesTimeout"];
    v21 = v20;
    if (v20 == 0.0)
    {
      [v11 maxComputationTime];
      v21 = v22;
    }

    v23 = [v18 dateByAddingTimeInterval:v21];
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
    v82 = -[_PSEnsembleModel getPhotoBasedFeaturesAsync:shouldProcessPicturesLive:shouldUseVIPModel:withTimeout:](self, "getPhotoBasedFeaturesAsync:shouldProcessPicturesLive:shouldUseVIPModel:withTimeout:", v10, [v11 shouldProcessPicturesLive], objc_msgSend(v11, "shouldUseVIPModel"), v25);
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
  v29 = v11;
  v86 = v29;
  v79 = v28;
  dispatch_async(v28, block);
  v30 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v10 sessionID];
    *buf = 138412290;
    v90 = *&v31;
    _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_DEFAULT, "Reading interaction stats for request sessionID %@", buf, 0xCu);
  }

  v32 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"getInteractionsStatisticsForConfig" parentSpanId:v84];
  [v32 start];
  v33 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSInteractionsStatisticsQuery", " enableTelemetry=YES ", buf, 2u);
  }

  v34 = [[_PSInteractionsStatistics alloc] initWithConfig:v12];
  [(_PSInteractionsStatistics *)v34 computeStatisticsWithInteractionStore:self->_interactionStore];
  v35 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSInteractionsStatisticsQuery", &unk_1B5FD970D, buf, 2u);
  }

  v36 = [(_PSInteractionsStatistics *)v34 queryStats];
  [v32 addAttributes:v36];

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
  v40 = [v10 queryStartDate];
  [v39 timeIntervalSinceDate:v40];
  v42 = v41;
  [v29 maxComputationTime];
  v44 = v43;

  if (v42 > v44)
  {
    v45 = +[_PSConstants suggestionPathBestEffort];
    [v10 setSuggestionPath:v45];
  }

  v83 = v12;
  v46 = [(_PSEnsembleModel *)self peopleSuggesterDefaults];
  -[_PSEnsembleModel setEnablePipelineCheckpointing:](self, "setEnablePipelineCheckpointing:", [v46 BOOLForKey:@"enablePipelineCheckpointing"]);

  v47 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [(_PSEnsembleModel *)self enablePipelineCheckpointing];
    *buf = 67109120;
    LODWORD(v90) = v48;
    _os_log_impl(&dword_1B5ED1000, v47, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: enablePipelineCheckpointing = %d", buf, 8u);
  }

  v49 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"logPipeline_interactionsStatisticsCandidate_sourcing" parentSpanId:v84];
  [v49 start];
  v50 = [v29 rankingModel];
  [(_PSEnsembleModel *)self setupAeroMLPipelineLoggerWithModel:v50];

  v51 = [v10 sessionID];
  [(_PSEnsembleModel *)self logPipeline:v34 withPipelineStage:@"candidate_sourcing" andSessionID:v51 andCandidateNames:0];

  v77 = v49;
  [v49 end];
  v52 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"pruneCandidatesForRanking" parentSpanId:v84];
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
    v57 = [(_PSInteractionsStatistics *)v34 conversationIds];
    *buf = 138477827;
    v90 = *&v57;
    _os_log_impl(&dword_1B5ED1000, v56, OS_LOG_TYPE_INFO, "Candidates after pruning %{private}@", buf, 0xCu);
  }

  if ([v29 shouldComputePhotoBasedFeatures])
  {
    v82[2]();
    v58 = [v10 sceneTagsInPhotoIdentifiers];
    v59 = [v83 detectedSceneCategoryNamesFromSceneNetTags:v58];

    v60 = objc_autoreleasePoolPush();
    v61 = MEMORY[0x1E695DFD8];
    v62 = [v10 peopleInPhotoIdentifiers];
    v63 = [v61 setWithArray:v62];

    objc_autoreleasePoolPop(v60);
    [(_PSInteractionsStatistics *)v34 computeContentBasedFeaturesForPersonIdsDetectedInPhoto:v63 sceneCategoriesDetectedInPhoto:v59];
    v64 = [v10 sessionID];
    [(_PSEnsembleModel *)self logPipeline:v34 withPipelineStage:@"candidates_with_photo_based_features" andSessionID:v64 andCandidateNames:0];

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
  v65 = [*(v27 + 1360) rewriteChannel];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    [_PSEnsembleModel _defaultPredictionsWithPredictionContext:trialClient:config:parentSpanId:];
  }

  v66 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"dynamicFeatureComputationSpan" parentSpanId:v84];
  [v66 start];
  v67 = [*(v27 + 1360) suggestionSignpost];
  if (os_signpost_enabled(v67))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v67, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_addDynamicFeaturesToCandidates", " enableTelemetry=YES ", buf, 2u);
  }

  [(_PSInteractionsStatistics *)v34 computeDynamicFeatures];
  v68 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v68))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v68, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_addDynamicFeaturesToCandidates", &unk_1B5FD970D, buf, 2u);
  }

  [v66 end];
  v69 = [v10 sessionID];
  [(_PSEnsembleModel *)self logPipeline:v34 withPipelineStage:@"candidates_with_additional_features" andSessionID:v69 andCandidateNames:0];

  v70 = [(AeroMLTracerSession *)v17 createSubSpanWithName:@"evaluateCandidates" parentSpanId:v84];
  [v70 start];
  v71 = [v29 rankingModel];
  [(_PSEnsembleModel *)self evaluateCandidates:v34 psrMLModel:v71];

  [v70 end];
  v72 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v72, OS_LOG_TYPE_DEFAULT, "Ran the features through the coreML model", buf, 2u);
  }

  v73 = [v10 sessionID];
  [(_PSEnsembleModel *)self logPipeline:v34 withPipelineStage:@"candidates_with_coreml_output" andSessionID:v73 andCandidateNames:0];

  v74 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v74))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v74, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_defaultPredictionPipeline", &unk_1B5FD970D, buf, 2u);
  }

  v75 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)predictWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4 contactKeysToFetch:(id)a5
{
  v144 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_predictWithPredictionContext", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [AeroMLTracerSession alloc];
  v9 = [v6 sessionID];
  v10 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v11 = [(AeroMLTracerSession *)v8 initWithTraceId:v9 projectName:v10];

  v12 = [v6 currentSpanId];
  v122 = v11;
  v13 = [(AeroMLTracerSession *)v11 createSubSpanWithName:@"predictWithPredictionContext" parentSpanId:v12];

  [v13 start];
  v14 = [(_PSEnsembleModel *)self deviceIdentifier];
  [v13 addDeviceIdentifier:v14];

  v15 = [v6 queryStartDate];

  if (!v15)
  {
    v16 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel predictWithPredictionContext:maxSuggestions:contactKeysToFetch:];
    }

    v17 = [MEMORY[0x1E695DF00] now];
    [v6 setQueryStartDate:v17];
  }

  v128 = [v6 queryStartDate];
  v18 = [v13 createSubSpanWithName:@"readTrialInfo"];
  [v18 start];
  v19 = objc_alloc_init(_PSTrialClient);
  v20 = [(_PSTrialClient *)v19 getTrialExperiment];
  [(_PSEnsembleModel *)self addTrialInfoToPredictionContext:v6 withExperiment:v20];
  v21 = [(_PSTrialClient *)v19 shouldActivatePSR];
  v100 = [(_PSTrialClient *)v19 dataCollectionTimeToWaitInSeconds];
  v101 = [(_PSTrialClient *)v19 shouldEnableDataCollection];
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
    v24 = [v6 sessionID];
    [v20 experimentId];
    v26 = v25 = v21;
    v27 = [v20 deploymentId];
    v28 = [v20 treatmentId];
    *buf = 138413058;
    v137 = v24;
    v138 = 2112;
    v139 = v26;
    v140 = 1024;
    v141 = v27;
    v142 = 2112;
    v143 = v28;
    _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: Getting suggestions for ShareSheet session %@ (trial experimentId: %@ deploymentId: %d treatmentId: %@)", buf, 0x26u);

    v21 = v25;
  }

  v117 = v20;

  [v6 setIsPSRActive:1];
  [v6 setReasonType:@"PS_Rewrite"];
  v29 = [v13 createSubSpanWithName:@"fetchSupportedBundleIDsWithPredictionContextFilters"];
  [v29 start];
  v123 = self;
  v30 = [(_PSEnsembleModel *)self fetchSupportedBundleIDsWithPredictionContextFilters:v6];
  [v6 setSupportedBundleIds:v30];

  v116 = v29;
  [v29 end];
  v31 = [v6 suggestionsFilteredByBundleIds];

  if (v31)
  {
    v32 = [v6 suggestionsFilteredByBundleIds];
    v33 = [v32 componentsJoinedByString:{@", "}];
    [v13 logDebugEventWithName:@"ClientRequestBundleIdFilters" details:v33 attributes:MEMORY[0x1E695E0F8]];
  }

  v134[0] = @"shouldActivatePSRTrialOverwrite";
  v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v21];
  v135[0] = v126;
  v134[1] = @"isFallbackFetch";
  v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v6, "isFallbackFetch")];
  v135[1] = v119;
  v134[2] = @"sourceBundleID";
  v34 = MEMORY[0x1E696AEC0];
  v114 = [v6 bundleID];
  v112 = [v34 stringWithFormat:@"%@", v114];
  v135[2] = v112;
  v134[3] = @"attachments_count";
  v35 = MEMORY[0x1E696AEC0];
  v36 = [v6 attachments];
  v37 = [v35 stringWithFormat:@"%ld", objc_msgSend(v36, "count")];
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

  LOBYTE(v43) = [v6 isFallbackFetch];
  v46 = [_PSInteractionsStatisticsConfig alloc];
  v47 = [v6 bundleID];
  if (v43)
  {
    v48 = [(_PSInteractionsStatisticsConfig *)v46 initFallbackConfigWithBundleId:v47 anchorDate:v128];

    v49 = [v39 getSpanId];
    v50 = v123;
    v51 = [(_PSEnsembleModel *)v123 _fallbackPredictionWithPredictionContext:v6 config:v48 parentSpanId:v49];
    v52 = v129;
    v53 = 0x1E7C23000;
  }

  else
  {
    v48 = [(_PSInteractionsStatisticsConfig *)v46 initDefaultConfigWithBundleId:v47 anchorDate:v128];

    v49 = [v39 createSubSpanWithName:@"loadTrialInfoConfig"];
    [v49 start];
    v53 = 0x1E7C23000uLL;
    v54 = +[_PSLogging suggestionSignpost];
    v50 = v123;
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

    [v49 end];
    v56 = [v6 attachments];
    v57 = [v56 _pas_mappedArrayWithTransform:&__block_literal_global_538];

    if ([v57 count])
    {
      v58 = [v57 firstObject];
      [v48 setTopDomainURL:v58];
    }

    v59 = [v39 getSpanId];
    v60 = [(_PSEnsembleModel *)v123 _defaultPredictionsWithPredictionContext:v6 trialClient:v129 config:v48 parentSpanId:v59];

    v51 = v60;
  }

  v61 = [v39 createSubSpanWithName:@"finalSuggestionProxiesForInteractionStatistics"];
  [v61 start];
  v62 = [v61 getSpanId];
  [v6 setCurrentSpanId:v62];

  v127 = v51;
  v63 = [(_PSEnsembleModel *)v50 finalSuggestionProxiesForInteractionStatistics:v51 config:v48 trialClient:v52 context:v6];
  v64 = [(_PSEnsembleModel *)v50 getReasonTypesFromObjects:v63];
  v65 = [*(v53 + 1360) rewriteChannel];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
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
  v69 = [v6 sessionID];
  [(_PSEnsembleModel *)v50 setTraceId:v69];

  v70 = [v39 getSpanId];
  [(_PSEnsembleModel *)v50 setCurrentSpanId:v70];

  v71 = [*(v53 + 1360) suggestionSignpost];
  if (os_signpost_enabled(v71))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v71, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleDedupingAndTrimming", &unk_1B5FD970D, buf, 2u);
  }

  v72 = [(_PSEnsembleModel *)v50 fetchSupportedBundleIDsWithPredictionContextFilters:v6];
  v73 = [(_PSEnsembleModel *)v50 defaultContactKeysToFetch];
  v74 = [(_PSEnsembleModel *)v50 getMeContactIdentifier];
  v111 = v63;
  v75 = [(_PSEnsembleModel *)v50 suggestionsFromSuggestionProxies:v63 supportedBundleIDs:v72 contactKeysToFetch:v73 meContactIdentifier:v74 maxSuggestions:a4];
  v125 = [v75 mutableCopy];

  v76 = [*(v53 + 1360) suggestionSignpost];
  if (os_signpost_enabled(v76))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v76, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetPeopleDedupingAndTrimming", &unk_1B5FD970D, buf, 2u);
  }

  v77 = [*(v53 + 1360) rewriteChannel];
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v137 = v125;
    _os_log_impl(&dword_1B5ED1000, v77, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: final suggestions %{private}@", buf, 0xCu);
  }

  v78 = [v6 sessionID];
  [(_PSEnsembleModel *)v50 logPipelineWithSuggestions:v125 interactionsStatistics:v127 pipelineStage:@"final_candidates_after_UI_resolution" sessionID:v78];

  [(_PSEnsembleModel *)v50 addSuggestedRankFeature:v125 interactionsStatistics:v127];
  [(_PSEnsembleModel *)v50 addSupportedBundleIDs:v125];
  [(_PSEnsembleModel *)v50 addUTIInfo:v125 predictionContext:v6];
  v79 = [*(v53 + 1360) suggestionSignpost];
  if (os_signpost_enabled(v79))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v79, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_predictWithPredictionContext", &unk_1B5FD970D, buf, 2u);
  }

  v121 = v39;
  v113 = v61;
  v115 = v48;
  if ([v125 count])
  {
    v80 = [v125 firstObject];
    v81 = [v80 utiList];
  }

  else
  {
    v81 = &stru_1F2D6CE98;
  }

  v130[0] = @"utiList";
  v109 = v81;
  v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v81];
  v131[0] = v108;
  v130[1] = @"predictionContext_photoSuggestedPeople";
  v82 = MEMORY[0x1E696AEC0];
  v107 = [v6 photoSuggestedPeople];
  v106 = [v82 stringWithFormat:@"%ld", objc_msgSend(v107, "count")];
  v131[1] = v106;
  v130[2] = @"predictionContext_sceneTagsInPhotoIdentifiers";
  v83 = MEMORY[0x1E696AEC0];
  v105 = [v6 sceneTagsInPhotoIdentifiers];
  v104 = [v83 stringWithFormat:@"%ld", objc_msgSend(v105, "count")];
  v131[2] = v104;
  v130[3] = @"predictionContext_peopleInPhotoIdentifiers";
  v84 = MEMORY[0x1E696AEC0];
  v103 = [v6 peopleInPhotoIdentifiers];
  v102 = [v84 stringWithFormat:@"%ld", objc_msgSend(v103, "count")];
  v131[3] = v102;
  v130[4] = @"predictionContext_suggestionPath";
  v85 = MEMORY[0x1E696AEC0];
  v86 = [v6 suggestionPath];
  [v85 stringWithFormat:@"%@", v86];
  v87 = v120 = v6;
  v131[4] = v87;
  v130[5] = @"messageInteractionCache_count";
  v88 = MEMORY[0x1E696AEC0];
  v89 = [(_PSEnsembleModel *)v50 messageInteractionCache];
  v90 = [v88 stringWithFormat:@"%ld", objc_msgSend(v89, "size")];
  v131[5] = v90;
  v130[6] = @"shareInteractionCache_count";
  v91 = MEMORY[0x1E696AEC0];
  v92 = [(_PSEnsembleModel *)v50 shareInteractionCache];
  v93 = [v91 stringWithFormat:@"%ld", objc_msgSend(v92, "size")];
  v131[6] = v93;
  v130[7] = @"allOtherInteractionCache_count";
  v94 = MEMORY[0x1E696AEC0];
  v95 = [(_PSEnsembleModel *)v50 allOtherInteractionCache];
  v96 = [v94 stringWithFormat:@"%ld", objc_msgSend(v95, "size")];
  v131[7] = v96;
  v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:8];
  [v121 addAttributes:v97];

  [v121 end];
  if (([v120 isFallbackFetch] & 1) == 0 && v101)
  {
    [(_PSEnsembleModel *)v123 psrDataCollectionForContext:v120 timeToWaitInSeconds:v100 interactionStatisticsConfig:v115 interactionStatistics:v127];
  }

  v98 = *MEMORY[0x1E69E9840];

  return v125;
}

- (id)getReasonTypesFromObjects:(id)a3 limit:(unint64_t)a4
{
  v5 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_580];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != nil"];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  v8 = [v7 count];
  if (v8 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 subarrayWithRange:{0, v9}];
  v11 = [v10 componentsJoinedByString:@"::"];

  return v11;
}

- (void)addSuggestedRankFeature:(id)a3 interactionsStatistics:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v6 initFeature:@"suggestedRank" withValue:&unk_1F2D8B2E0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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
        v14 = [v13 conversationIdentifier];
        if (!v14)
        {
          v14 = [v13 derivedIntentIdentifier];
        }

        v15 = [MEMORY[0x1E696AD98] numberWithInt:v11];
        [v6 setValue:v15 forFeature:@"suggestedRank" andConversationId:v14];

        v11 = (v11 + 1);
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (int)modelProxyToVirtualFeatureStoreFeature:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"knnSuggestionProxies"])
  {
    v4 = 691;
  }

  else if ([v3 isEqualToString:@"inPhoneCallSuggestionProxies"])
  {
    v4 = 695;
  }

  else if ([v3 isEqualToString:@"hyperRecentSuggestionProxies"])
  {
    v4 = 698;
  }

  else if ([v3 isEqualToString:@"backFillProxies"])
  {
    v4 = 702;
  }

  else if ([v3 isEqualToString:@"photosGroupSuggestionProxies"])
  {
    v4 = 700;
  }

  else if ([v3 isEqualToString:@"photosGroupSuggestionProxiesAssetPresence"])
  {
    v4 = 701;
  }

  else if ([v3 isEqualToString:@"photoSuggestionProxiesFilteredByAssetOrMomentPresence"])
  {
    v4 = 699;
  }

  else if ([v3 isEqualToString:@"returnDocumentToSenderSuggestionProxies"])
  {
    v4 = 704;
  }

  else if ([v3 isEqualToString:@"shareSheetRecencyProxies"])
  {
    v4 = 708;
  }

  else if ([v3 isEqualToString:@"messagesRecencyProxies"])
  {
    v4 = 709;
  }

  else if ([v3 isEqualToString:@"coreMLSuggestionProxies"])
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

- (void)addTrialInfoToPredictionContext:(id)a3 withExperiment:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 experimentId];
  [v6 setTrialExperimentId:v7];

  v8 = [v5 treatmentId];
  [v6 setTrialTreatmentId:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [v5 deploymentId];

  v11 = [v9 stringWithFormat:@"%d", v10];
  [v6 setTrialDeploymentId:v11];
}

- (void)addExtraInformationWithSuggestions:(id)a3 modelSuggestionProxiesDict:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v6 enumerateObjectsUsingBlock:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82___PSEnsembleModel_addExtraInformationWithSuggestions_modelSuggestionProxiesDict___block_invoke_597;
  v16[3] = &unk_1E7C24A20;
  v16[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v16];
  v8 = [(_PSEnsembleModel *)self trialID];
  v9 = [v8 copy];

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

- (void)addUTIInfo:(id)a3 predictionContext:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [v6 attachments];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v36 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 UTI];

        if (v14)
        {
          v15 = [v13 UTI];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v10);
  }

  v16 = [v7 allObjects];
  v17 = [v16 componentsJoinedByString:{@", "}];
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
  v19 = v5;
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

- (void)addSupportedBundleIDs:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_PSEnsembleModel *)self fetchShareSheetSupportedBundleIDs];
  v6 = [v5 componentsJoinedByString:{@", "}];
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
  v8 = v4;
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

+ (id)_suggestionInteractionPredicatesForFirstPartyMessages:(BOOL)a3 bundleID:(id)a4 interactionRecipients:(id)a5
{
  v6 = a3;
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v10 = 0;
    if (v8)
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
  if (!v6)
  {
    v15 = &_suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients__thirdPartyPredicates;
  }

  v16 = *v15;
  v23[0] = @"bundleID";
  v23[1] = @"interactionRecipients";
  v24[0] = v7;
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

- (id)suggestionsFromSuggestionProxies:(id)a3 supportedBundleIDs:(id)a4 contactKeysToFetch:(id)a5 meContactIdentifier:(id)a6 maxSuggestions:(unint64_t)a7
{
  v8 = MEMORY[0x1EEE9AC00](self, a2, a3, a4, a5, a6, a7);
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
  v22 = [v16 traceId];
  v23 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v24 = [(AeroMLTracerSession *)v21 initWithTraceId:v22 projectName:v23];

  v25 = [v16 currentSpanId];
  v458 = v24;
  v26 = [(AeroMLTracerSession *)v24 createSubSpanWithName:@"suggestionsFromSuggestionProxies" parentSpanId:v25];

  [v26 start];
  v27 = [v26 createSubSpanWithName:@"cachedMessagesInteractions"];
  [v27 start];
  v28 = [v16 messageInteractionCache];
  v474 = [v28 interactions];

  v457 = v27;
  [v27 end];
  v29 = [v26 createSubSpanWithName:@"cachedShares"];
  [v29 start];
  v30 = [v16 shareInteractionCache];
  v473 = [v30 interactions];

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
        v34 = [(_PSSuggestionProxy *)v33 interactionRecipients];
        v535 = [(_PSSuggestionProxy *)v33 contactID];
        if (!(v34 | v535))
        {
          v35 = [(_PSSuggestionProxy *)v33 handles];

          if (!v35)
          {
            v42 = 0;
            goto LABEL_16;
          }
        }

        v36 = [(_PSSuggestionProxy *)v33 bundleID];
        if (v36)
        {
          v37 = v36;
          v38 = [(_PSSuggestionProxy *)v33 bundleID];
          v39 = [v484 containsObject:v38];

          if (!v39)
          {
            v42 = v34;
LABEL_16:
            v43 = v520;
            goto LABEL_230;
          }
        }

        v526 = v33;
        if (v535)
        {
          v40 = [(_PSSuggestionProxy *)v33 handle];

          v41 = v543;
          if (!v40)
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
            v46 = v473;
            v47 = [v46 countByEnumeratingWithState:&v641 objects:v681 count:16];
            v496 = v7;
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
                  v51 = [v50 recipients];
                  if ([v51 count] <= 1)
                  {
                    v52 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personId == %@", v535];
                    v53 = [v51 filteredArrayUsingPredicate:v52];

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
              v7 = v496;
            }

            v640 = 0u;
            v639 = 0u;
            v638 = 0u;
            v637 = 0u;
            v54 = v474;
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
                  v59 = [v58 recipients];
                  if ([v59 count] <= 1)
                  {
                    v60 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personId == %@", v535];
                    v61 = [v59 filteredArrayUsingPredicate:v60];

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
              v7 = v496;
            }

            if (v47)
            {
              v62 = [v55 startDate];
              v63 = [v47 startDate];
              [v62 timeIntervalSinceDate:v63];
              v65 = v64;

              if (v65 <= 0.0 || (v66 = v55, v47, (v47 = v66) != 0))
              {

                goto LABEL_50;
              }
            }

            v47 = [_PSInteractionStoreUtils mostRecentInteractionWithRecipientMatchingContactIdentifier:v535 bundleIds:v561 store:v41[6] singleRecipient:1];

            if (v47)
            {
LABEL_50:
              v67 = [v47 bundleId];
              v68 = +[_PSConstants mobileMessagesBundleId];
              if ([v67 isEqualToString:v68])
              {

                goto LABEL_53;
              }

              v69 = [v47 targetBundleId];
              v70 = +[_PSConstants shareSheetTargetBundleIdMessages];
              v71 = [v69 isEqualToString:v70];

              if (v71)
              {
LABEL_53:
                v72 = [(_PSSuggestionProxy *)v526 reason];
                v73 = [(_PSSuggestionProxy *)v526 reasonType];
                v74 = [_PSPhotoSuggestions suggestionTemplateForPhotoContactIdWithMessages:v535 cdInteraction:v47 reason:v72 reasonType:v73];

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
                v75 = [v47 targetBundleId];
                v76 = +[_PSConstants shareSheetTargetBundleIdMail];
                v77 = [v75 isEqualToString:v76];

                v78 = [_PSSuggestionProxy alloc];
                if (v77)
                {
                  v551 = +[_PSConstants mobileMailBundleId];
                  v79 = MEMORY[0x1E69978D0];
                  v556 = [v47 recipients];
                  v80 = [v79 generateConversationIdFromInteractionRecipients:v556];
                  v81 = [(_PSSuggestionProxy *)v526 contactID];
                  v82 = [(_PSSuggestionProxy *)v526 handle];
                  [(_PSSuggestionProxy *)v526 reason];
                  v84 = v83 = v7;
                  v85 = [(_PSSuggestionProxy *)v526 reasonType];
                  v547 = [(_PSSuggestionProxy *)v78 initWithBundleID:v551 interactionRecipients:v80 contactID:v81 handle:v82 reason:v84 reasonType:v85];

                  v7 = v83;
                  v74 = v547;
                }

                else
                {
                  v86 = [v47 bundleId];
                  v87 = [v47 derivedIntentIdentifier];
                  v88 = [(_PSSuggestionProxy *)v526 reason];
                  v89 = [(_PSSuggestionProxy *)v526 reasonType];
                  v90 = [(_PSSuggestionProxy *)v78 initWithBundleID:v86 interactionRecipients:v87 contactID:v535 reason:v88 reasonType:v89];

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
        v91 = [(_PSSuggestionProxy *)v33 bundleID];
        v92 = [(_PSSuggestionProxy *)v33 interactionRecipients];

        v545 = v91;
        v537 = v92;
        if ([v483 containsObject:v91])
        {
          v93 = [MEMORY[0x1E69978D0] recipientIdentifiersFromMobileMailConversationId:v92];
          v94 = v93;
          if (v93 && [v93 count])
          {
            v95 = [_PSSuggestionTemplate alloc];
            v96 = [(_PSSuggestionProxy *)v33 reason];
            v97 = [(_PSSuggestionProxy *)v33 reasonType];
            v98 = [(_PSSuggestionProxy *)v33 modelScore];
            v99 = [(_PSSuggestionTemplate *)v95 initWithBundleID:v545 interactionRecipients:v537 image:0 groupName:0 recipientContactIDs:0 recipientEmailAddresses:v94 recipientPhoneNumbers:0 recipientDisplayNames:0 contactIdToHandleMapping:0 reason:v96 reasonType:v97 modelScore:v98];

            [v31 addObject:v99];
          }

          v43 = v520;
          goto LABEL_229;
        }

        v100 = [(_PSSuggestionProxy *)v33 reason];
        v101 = +[_PSConstants inCallHeuristicReason];
        v527 = v33;
        if ([v100 isEqualToString:v101])
        {
          v102 = 1;
        }

        else
        {
          v103 = [(_PSSuggestionProxy *)v33 reason];
          v104 = +[_PSConstants inCallCollaborationHeuristicReason];
          v102 = [v103 isEqualToString:v104];

          v31 = v481;
        }

        v105 = [v504 containsObject:v545];
        v539 = [v480 containsObject:v545];
        if (v102)
        {
          v43 = v520;
          if (v535)
          {
            v106 = [(_PSSuggestionProxy *)v33 handle];
            if (v106)
            {
              v477 = v106;

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

          v107 = [(_PSSuggestionProxy *)v33 handles];

          if (v535)
          {
          }

          if (v107)
          {
            goto LABEL_80;
          }
        }

        v636 = 0u;
        v635 = 0u;
        v634 = 0u;
        v633 = 0u;
        v552 = v473;
        v108 = [v552 countByEnumeratingWithState:&v633 objects:v679 count:16];
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
            objc_enumerationMutation(v552);
          }

          v111 = *(*(&v633 + 1) + 8 * v110);
          v112 = [v111 domainIdentifier];
          v113 = [v112 isEqual:v109];

          v114 = [v111 derivedIntentIdentifier];
          v115 = [v114 isEqual:v109];

          v116 = [v111 targetBundleId];
          v117 = v115;
          if (([v116 isEqual:v545] & 1) == 0)
          {
            v118 = [v111 targetBundleId];
            [v500 objectForKeyedSubscript:v118];
            v120 = v119 = v7;
            v121 = [v120 isEqual:v545];

            v7 = v119;
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
            v124 = [v111 recipients];
            v125 = [v123 generateConversationIdFromInteractionRecipients:v124];
            v126 = [v125 isEqual:v537];

            if (v126)
            {
              break;
            }
          }

          if (v108 == ++v110)
          {
            v108 = [v552 countByEnumeratingWithState:&v633 objects:v679 count:16];
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

        v552 = [v128 recipients];
        v502 = v128;
        if ([v552 count] < 2)
        {
          v506 = 0;
          v127 = 0;
        }

        else
        {
          v129 = [v128 contentURL];
          if (v129)
          {
            v130 = v129;
            v131 = [v128 groupName];

            if (v131)
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

          v132 = [v128 recipients];
          v133 = [v132 _pas_mappedArrayWithTransform:&__block_literal_global_644];
          [v502 setRecipients:v133];

          v134 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            [_PSEnsembleModel suggestionsFromSuggestionProxies:v632 supportedBundleIDs:? contactKeysToFetch:? meContactIdentifier:? maxSuggestions:?];
          }

          v127 = 1;
          v552 = objc_opt_new();
          v506 = v552;
        }

        LOBYTE(v108) = 1;
LABEL_112:

LABEL_113:
        v630 = 0u;
        v629 = 0u;
        v628 = 0u;
        v627 = 0u;
        v553 = v474;
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

          v137 = [*(*(&v627 + 1) + 8 * v135) contentURL];
          if (!v137)
          {
            v7 = [v136 groupName];
            if (!v7)
            {
              v127 = 1;
              goto LABEL_129;
            }
          }

          v138 = [v136 bundleId];
          if (![v504 containsObject:v138])
          {
            goto LABEL_125;
          }

          v139 = [v136 domainIdentifier];
          if (!v139)
          {
            goto LABEL_125;
          }

          v140 = v139;
          v141 = [v136 domainIdentifier];
          if (([v506 containsObject:v141] & 1) == 0)
          {
            v152 = [v136 recipients];
            if (v152)
            {
              [v136 recipients];
              v153 = v497 = v7;
              v154 = [v153 count];
              v155 = [v502 recipients];
              v156 = v154 == [v155 count];

              v7 = v497;
            }

            else
            {
              v156 = 0;
            }

            if (v137)
            {

              if (v156)
              {
LABEL_153:
                v157 = objc_autoreleasePoolPush();
                v158 = [v136 recipients];
                v159 = [v158 _pas_mappedArrayWithTransform:&__block_literal_global_644];
                [v136 setRecipients:v159];

                v160 = MEMORY[0x1E695DFD8];
                v161 = [v136 recipients];
                v162 = [v161 valueForKey:@"identifier"];
                v163 = [v160 setWithArray:v162];

                v164 = MEMORY[0x1E695DFD8];
                v165 = [v502 recipients];
                v166 = [v165 valueForKey:@"identifier"];
                v167 = [v164 setWithArray:v166];

                v168 = [v163 isEqualToSet:v167];
                if (v168)
                {
                  v169 = [v502 contentURL];

                  if (!v169)
                  {
                    v170 = [v136 contentURL];
                    [v502 setContentURL:v170];
                  }

                  v171 = [v502 groupName];

                  if (!v171)
                  {
                    v172 = [v136 groupName];
                    [v502 setGroupName:v172];
                  }

                  v173 = +[_PSLogging generalChannel];
                  if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
                  {
                    v174 = [v136 groupName];
                    v175 = [v136 contentURL];
                    *buf = 138740227;
                    v665 = v174;
                    v666 = 2117;
                    v667 = v175;
                    _os_log_debug_impl(&dword_1B5ED1000, v173, OS_LOG_TYPE_DEBUG, "Resolved group name or display image, group name: %{sensitive}@, display name: %{sensitive}@", buf, 0x16u);
                  }
                }

                v127 = v168 ^ 1;

                objc_autoreleasePoolPop(v157);
                v137 = [v136 domainIdentifier];
                [v506 addObject:v137];
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
          if (!v137)
          {
            v137 = v7;
          }

LABEL_127:

LABEL_129:
          if (v105)
          {
            v142 = [v136 domainIdentifier];
            if (!v142)
            {
              goto LABEL_148;
            }

            v143 = v142;
            v144 = [v136 bundleId];
            if ([v144 isEqual:v545])
            {
              v145 = [v136 domainIdentifier];
              v146 = [v145 isEqual:v537];

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

        v147 = [v136 derivedIntentIdentifier];
        if (!v147)
        {
          goto LABEL_148;
        }

        v143 = v147;
        v144 = [v136 bundleId];
        v148 = [v144 isEqual:v545];
        if ((v148 & 1) == 0)
        {
          v529 = [v500 objectForKeyedSubscript:v545];
          if (!v529)
          {
            v529 = 0;
            v105 = v548;
            goto LABEL_144;
          }

          v149 = [v136 bundleId];
          v510 = [v500 objectForKeyedSubscript:v545];
          v513 = v149;
          if (![v149 isEqual:?])
          {
            v151 = 0;
            v105 = v548;
LABEL_146:

            goto LABEL_147;
          }
        }

        v105 = v548;
        v150 = [v136 derivedIntentIdentifier];
        v151 = [v150 isEqual:v537];

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
          v180 = [v177 startDate];
          v178 = v502;
          v181 = [v502 startDate];
          v182 = [v180 compare:v181];

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
        v498 = v7;
        if (!v105)
        {
          context = objc_autoreleasePoolPush();
          v617 = 0u;
          v618 = 0u;
          v619 = 0u;
          v620 = 0u;
          v206 = [v183 recipients];
          v207 = [v206 countByEnumeratingWithState:&v617 objects:v675 count:16];
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
                objc_enumerationMutation(v206);
              }

              v211 = *(*(&v617 + 1) + 8 * k);
              v212 = [v211 personId];
              v213 = [v211 identifier];
              v214 = [v211 displayName];
              v215 = [v214 length];

              if (v212)
              {
                [v190 addObject:v212];
                if (!v213)
                {
                  goto LABEL_218;
                }

                [v559 setObject:v213 forKeyedSubscript:v212];
              }

              else if (!v213)
              {
                if (v215 < 1)
                {
                  goto LABEL_218;
                }

                v217 = [v211 displayName];
                [v541 addObject:v217];
                goto LABEL_217;
              }

              if ([v211 type] == 2)
              {
                v216 = v564;
LABEL_208:
                [v216 addObject:v213];
                if (!v212 && v215 >= 1)
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

              if (!v212 && v215 >= 1)
              {
                v218 = [v211 displayName];
                [v541 addObject:v218];

                if (![v211 type])
                {
LABEL_210:
                  v217 = [v211 displayName];
                  [v549 setObject:v217 forKeyedSubscript:v213];
LABEL_217:
                }
              }

LABEL_218:
            }

            v208 = [v206 countByEnumeratingWithState:&v617 objects:v675 count:16];
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
        v191 = [v183 recipients];
        v192 = [v191 countByEnumeratingWithState:&v621 objects:v676 count:16];
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
                objc_enumerationMutation(v191);
              }

              v196 = *(*(&v621 + 1) + 8 * m);
              v197 = [v196 personId];
              if (v197)
              {
                v198 = v197;
                v199 = [v196 identifier];

                if (v199)
                {
                  v200 = [v196 personId];
                  [v190 addObject:v200];

                  v201 = [v196 identifier];
                  v202 = [v196 personId];
                  [v559 setObject:v201 forKeyedSubscript:v202];
                }
              }

              v203 = [v196 identifier];

              if (v203)
              {
                v204 = v564;
                if ([v196 type] == 2 || (v204 = v554, objc_msgSend(v196, "type") == 1))
                {
                  v205 = [v196 identifier];
                  [v204 addObject:v205];
                }
              }
            }

            v193 = [v191 countByEnumeratingWithState:&v621 objects:v676 count:16];
          }

          while (v193);
        }

LABEL_221:
        v219 = [v491 contentURL];

        if (v219)
        {
          INImageClass = getINImageClass();
          v221 = [v491 contentURL];
          contexta = [INImageClass imageWithURL:v221];
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

        v226 = [v491 groupName];
        v227 = [(_PSSuggestionProxy *)v527 reason];
        v228 = [(_PSSuggestionProxy *)v527 reasonType];
        v229 = [(_PSSuggestionProxy *)v527 modelScore];
        v230 = [(_PSSuggestionTemplate *)v222 initWithBundleID:v225 interactionRecipients:v537 image:contexta groupName:v226 recipientContactIDs:v190 recipientEmailAddresses:v564 recipientPhoneNumbers:v554 recipientDisplayNames:v541 contactIdToHandleMapping:v559 handleToDisplayNameMapping:v549 reason:v227 reasonType:v228 modelScore:v229];

        v231 = v491;
        [v481 addObject:v230];

        v31 = v481;
        objc_autoreleasePoolPop(v487);
        v7 = v498;
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
  v233 = [MEMORY[0x1E695DF70] array];
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
      [v233 addObject:v240];
      v236 += v237;

      v235 += -2 - v465;
    }

    while (v236 < [v234 count]);
  }

  v479 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v475 = [MEMORY[0x1E695DFA8] set];
  v493 = [MEMORY[0x1E695DFA8] set];
  v476 = [MEMORY[0x1E695DFA8] set];
  v495 = [MEMORY[0x1E695DF90] dictionary];
  v241 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v565 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v528 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v542 = [v461 createSubSpanWithName:@"goThroughSuggestionTemplates"];
  [v542 start];
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v462 = v233;
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
              v248 = [v247 recipientContactIDs];
              v249 = [v248 countByEnumeratingWithState:&v605 objects:v672 count:16];
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
                      objc_enumerationMutation(v248);
                    }

                    v253 = *(*(&v605 + 1) + 8 * n);
                    v254 = [v241 objectForKeyedSubscript:v253];

                    if (!v254)
                    {
                      [v555 addObject:v253];
                      v255 = [v247 contactIdToHandleMapping];
                      v256 = [v255 objectForKeyedSubscript:v253];

                      if (v256)
                      {
                        [v550 setObject:v256 forKeyedSubscript:v253];
                        [v546 addObject:v256];
                      }

                      v241 = v560;
                    }
                  }

                  v250 = [v248 countByEnumeratingWithState:&v605 objects:v672 count:16];
                }

                while (v250);
              }

              v604 = 0u;
              v603 = 0u;
              v602 = 0u;
              v601 = 0u;
              v257 = [v247 recipientEmailAddresses];
              v258 = [v257 countByEnumeratingWithState:&v601 objects:v671 count:16];
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
                      objc_enumerationMutation(v257);
                    }

                    v262 = *(*(&v601 + 1) + 8 * ii);
                    v263 = [v565 objectForKeyedSubscript:v262];

                    if (!v263)
                    {
                      [v244 addObject:v262];
                    }
                  }

                  v259 = [v257 countByEnumeratingWithState:&v601 objects:v671 count:16];
                }

                while (v259);
              }

              v600 = 0u;
              v599 = 0u;
              v598 = 0u;
              v597 = 0u;
              v264 = [v247 recipientPhoneNumbers];
              v265 = [v264 countByEnumeratingWithState:&v597 objects:v670 count:16];
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
                      objc_enumerationMutation(v264);
                    }

                    v269 = *(*(&v597 + 1) + 8 * jj);
                    v270 = [v528 objectForKeyedSubscript:v269];

                    if (!v270)
                    {
                      [v245 addObject:v269];
                    }
                  }

                  v266 = [v264 countByEnumeratingWithState:&v597 objects:v670 count:16];
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

        v522 = [v542 getMonotonicTimeInMilliseconds];
        v271 = [v543 contactStore];
        CNContactClass = getCNContactClass();
        v273 = [v555 allObjects];
        v274 = [CNContactClass predicateForContactsWithIdentifiers:v273];
        v596 = v470;
        v275 = [v271 unifiedContactsMatchingPredicate:v274 keysToFetch:v20 error:&v596];
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
              v428 = [v427 identifier];
              if (v428)
              {
                [v425 setObject:v427 forKeyedSubscript:v428];
                v429 = [v550 objectForKeyedSubscript:v428];
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
        v466 = (v466 - v522 + v518);
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
            v532 = [v542 getMonotonicTimeInMilliseconds];
            v298 = [v284 contactStore];
            v579 = v277;
            v299 = v297;
            v300 = [v298 unifiedContactsMatchingPredicate:v297 keysToFetch:v544 error:&v579];
            v301 = v579;

            v277 = v301;
            v302 = [v542 getMonotonicTimeInMilliseconds];
            if (v277)
            {
              v303 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v665 = v277;
                _os_log_error_impl(&dword_1B5ED1000, v303, OS_LOG_TYPE_ERROR, "Error fetching contacts by email: %@", buf, 0xCu);
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

              v303 = [v300 firstObject];
              [v565 setObject:v303 forKeyedSubscript:v296];
            }

LABEL_316:
            v538 = (v302 - v532 + v538);
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
            v533 = [v542 getMonotonicTimeInMilliseconds];
            v312 = [v284 contactStore];
            v574 = v308;
            v313 = [v312 unifiedContactsMatchingPredicate:v311 keysToFetch:v544 error:&v574];
            v314 = v574;

            v308 = v314;
            v315 = [v542 getMonotonicTimeInMilliseconds];
            if (v308)
            {
              v316 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v665 = v308;
                _os_log_error_impl(&dword_1B5ED1000, v316, OS_LOG_TYPE_ERROR, "Error fetching contacts by phone number: %@", buf, 0xCu);
              }

              v284 = v543;
LABEL_329:
            }

            else
            {
              v284 = v543;
              if ([v313 count])
              {
                v316 = [v313 firstObject];
                [v528 setObject:v316 forKeyedSubscript:v309];
                goto LABEL_329;
              }
            }

            v536 = (v315 - v533 + v536);

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
              v321 = [v284 contactStore];
              v322 = v20;
              v323 = [v320 suggestionWithContactIDMapping:v241 phoneMapping:v318 emailMapping:v565 contactStore:v321 contactKeysToFetch:v20];

              if (!v323)
              {
                goto LABEL_425;
              }

              v324 = v323;
              if ([v284 areRecipientsBlockedForSuggestion:v323])
              {
                goto LABEL_425;
              }

              v325 = [v323 conversationIdentifier];
              v326 = [v284 excludeSuggestionWithConversationId:v325];

              if (v326)
              {
                goto LABEL_425;
              }

              v327 = [v323 recipients];
              v328 = [v327 count];

              if (v505)
              {
                if (v328 == 1)
                {
                  v329 = [v323 recipients];
                  v330 = [v329 firstObject];
                  v331 = [v330 contact];
                  v332 = [v331 identifier];

                  v284 = v543;
                  LOBYTE(v329) = [v332 isEqualToString:v505];

                  v241 = v560;
                  if (v329)
                  {
                    goto LABEL_425;
                  }
                }
              }

              v333 = [v323 bundleID];
              v334 = [v501 containsObject:v333];

              if (v334)
              {
                v335 = [v323 recipients];
                v336 = [v335 count];

                if (v336 == 1)
                {
                  v337 = [v323 conversationIdentifier];
                  if (v337)
                  {
                    v338 = v337;
                    v339 = [v323 conversationIdentifier];
                    v340 = [v493 containsObject:v339];

                    if ((v340 & 1) == 0)
                    {
                      v341 = [v323 conversationIdentifier];
                      [v493 addObject:v341];

                      v342 = [v323 recipients];
                      v343 = [v342 firstObject];

                      v508 = v343;
                      v344 = [v343 contact];
                      v345 = [v344 identifier];

                      v346 = [v323 bundleID];
                      v347 = [v480 containsObject:v346];

                      if (v347)
                      {
                        v348 = [v323 bundleID];
                        v349 = [v345 stringByAppendingString:v348];

                        v345 = v349;
                      }

                      if ([v323 isReturnToSender])
                      {
                        v350 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v351 = [v323 bundleID];
                        v352 = +[_PSConstants returnToSenderReason];
                        v353 = [v350 initWithFormat:@"%@_%@_%@", v345, v351, v352];

                        v345 = v353;
                      }

                      v386 = [v323 bundleID];
                      v387 = +[_PSConstants collaborationSuggestionBundleId];
                      v388 = [v386 isEqualToString:v387];

                      if (v388)
                      {
                        v389 = [v323 conversationIdentifier];
                        v390 = [v323 bundleID];
                        v391 = [v389 stringByAppendingString:v390];

                        v345 = v391;
                      }

                      v241 = v560;
                      if (v345 && ([v475 containsObject:v345] & 1) == 0)
                      {
                        [v475 addObject:v345];
                        [v479 addObject:v323];
                      }
                    }
                  }

                  goto LABEL_421;
                }

                v370 = [v323 recipients];
                v371 = [v370 count];

                if (v371 < 2)
                {
                  goto LABEL_421;
                }

                v372 = [v323 conversationIdentifier];
                if (!v372)
                {
                  goto LABEL_421;
                }

                v373 = v372;
                v374 = [v323 conversationIdentifier];
                v375 = [v493 containsObject:v374];

                if (v375)
                {
                  goto LABEL_421;
                }

                v376 = [v323 conversationIdentifier];
                [v493 addObject:v376];

                v377 = [v323 bundleID];
                v378 = +[_PSConstants mobileMessagesBundleId];
                if ([v377 isEqualToString:v378])
                {
                  v379 = [v323 conversationIdentifier];

                  if (v379)
                  {
                    v380 = [v323 conversationIdentifier];
                    v381 = [v380 componentsSeparatedByString:@""];;
                    v382 = [v381 lastObject];

                    if (v382 && ([v475 containsObject:v382] & 1) == 0)
                    {
                      v383 = [v323 recipients];
                      v384 = [v383 valueForKey:@"handle"];
                      v385 = [v384 sortedArrayUsingSelector:sel_compare_];

                      if (([v476 containsObject:v385] & 1) == 0)
                      {
                        [v475 addObject:v382];
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

              v354 = [v323 bundleID];
              v355 = [v323 derivedIntentIdentifier];
              v356 = [v355 stringByAppendingString:v354];

              v357 = [v323 groupName];
              v503 = v356;
              v358 = [v357 stringByAppendingString:v356];

              v359 = [v323 recipients];
              v360 = [v495 objectForKeyedSubscript:v354];
              if (!v360)
              {
                v360 = [MEMORY[0x1E695DFA8] set];
                [v495 setObject:v360 forKeyedSubscript:v354];
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

              if (![v359 count])
              {
                [v479 addObject:v324];
                goto LABEL_420;
              }

              v509 = v354;
              v478 = v359;
              if ([v359 count] == 1)
              {
                v362 = [v324 recipients];
                v363 = [v362 firstObject];

                v364 = [v363 contact];
                v365 = [v364 identifier];

                v366 = [v363 handle];
                v367 = [v363 displayName];
                if (v367)
                {
                  v368 = v367;
                  v471 = [v367 stringByAppendingString:v509];

                  if (v365)
                  {
                    goto LABEL_368;
                  }

LABEL_410:
                  v369 = v365;
                  if (v366)
                  {
                    v657 = v366;
                    v408 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v657 count:1];
                    v409 = [v476 containsObject:v408];

                    if ((v409 & 1) == 0)
                    {
                      v656 = v366;
                      v410 = MEMORY[0x1E695DEC8];
                      v411 = &v656;
                      goto LABEL_416;
                    }

LABEL_418:

                    v318 = v528;
                    v354 = v509;
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
                  if (!v365)
                  {
                    goto LABEL_410;
                  }

LABEL_368:
                  v369 = v365;
                  if ([v475 containsObject:v365])
                  {
                    goto LABEL_418;
                  }

                  [v475 addObject:v365];
                }

                [v479 addObject:v324];
                goto LABEL_418;
              }

              v392 = v359;
              v472 = v358;
              v393 = [MEMORY[0x1E695DF70] array];
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
                  v400 = [v399 contact];

                  if (v400)
                  {
                    v401 = [v399 contact];
                    v402 = [v401 identifier];
                    goto LABEL_395;
                  }

                  v404 = [v399 handle];

                  if (v404)
                  {
                    v401 = [v399 handle];
                    [v393 addObject:v401];
                    goto LABEL_398;
                  }

                  v405 = [v399 displayName];

                  if (v405)
                  {
                    v401 = [v399 displayName];
                    v402 = [v401 stringByAppendingString:v509];
LABEL_395:
                    v403 = v402;
                    [v393 addObject:v402];

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

              v407 = [v393 sortedArrayUsingSelector:sel_compare_];
              if (([v476 containsObject:v407] & 1) == 0)
              {
                [v476 addObject:v407];
                [v479 addObject:v324];
              }

              v241 = v560;
              v318 = v528;
              v354 = v509;
              v361 = v503;
              v358 = v472;
LABEL_419:
              v359 = v478;
LABEL_420:

LABEL_421:
              v354 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(v354, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138740227;
                v665 = v479;
                v666 = 2112;
                v667 = v476;
                _os_log_debug_impl(&dword_1B5ED1000, v354, OS_LOG_TYPE_DEBUG, "suggestions array: %{sensitive}@, addedRecipientInfo: %@", buf, 0x16u);
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

  v434 = [v432 stringWithFormat:@"%ld", v433];
  v652[0] = v434;
  v651[1] = @"contactStoreIdQueryTimeSumInMillis";
  v435 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v466];
  v652[1] = v435;
  v651[2] = @"contactStoreIdQueryCount";
  v436 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v467];
  v652[2] = v436;
  v651[3] = @"contactStorePhoneQueryTimeSumInMillis";
  v437 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v536];
  v652[3] = v437;
  v651[4] = @"contactStorePhoneQueryCount";
  v438 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v488];
  v652[4] = v438;
  v651[5] = @"contactStoreEmailQueryTimeSumInMillis";
  v439 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v538];
  v652[5] = v439;
  v651[6] = @"contactStoreEmailQueryCount";
  v440 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v490];
  v652[6] = v440;
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

  v447 = [v445 stringWithFormat:@"%ld", v446];
  v650[0] = v447;
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

  v450 = [v448 stringWithFormat:@"%ld", v449];
  v650[1] = v450;
  v649[2] = @"suggestionReasonTypes";
  v451 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v443];
  v650[2] = v451;
  v452 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v650 forKeys:v649 count:3];
  [v461 addAttributes:v452];

  [v461 end];
  v453 = [v479 copy];

  v454 = *MEMORY[0x1E69E9840];

  return v453;
}

- (BOOL)areRecipientsBlockedForSuggestion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 recipients];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = +[_PSBlockedHandlesCache sharedBlockedHandlesCache];
        v9 = [v7 handle];
        v10 = [v8 isHandleBlocked:v9];

        if (v10)
        {
          v4 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v7 handle];
            *buf = 138478083;
            v19 = v11;
            v20 = 2113;
            v21 = v7;
            _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "handle %{private}@ is blocked; dropping recipient %{private}@", buf, 0x16u);
          }

          LOBYTE(v4) = 1;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
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

- (BOOL)excludeSuggestionWithConversationId:(id)a3
{
  v3 = a3;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && ([v3 _appearsToBeBusinessID] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v3, "_appearsToBeTemporaryID") & 1) != 0;

  return v4;
}

- (id)mergedSuggestionsWithFamilySuggestions:(id)a3 shareSheetSuggestions:(id)a4 maxSuggestions:(unint64_t)a5 supportedBundleIds:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = [MEMORY[0x1E695DF70] arrayWithArray:a3];
  if ([v11 count])
  {
    v44 = v10;
    v42 = v9;
    v12 = [MEMORY[0x1E695DFA8] set];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v41 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v56 count:16];
    v15 = a5;
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

          v19 = [*(*(&v51 + 1) + 8 * i) recipients];
          v20 = [v19 firstObject];

          v21 = [v20 contact];
          v22 = [v21 identifier];

          if (v22)
          {
            [v12 addObject:v22];
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
    v10 = v44;
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
        if ([v13 count] == v15)
        {
          break;
        }

        v26 = [v25 bundleID];
        v27 = [v10 containsObject:v26];

        if (v27)
        {
          v28 = [v25 recipients];
          v29 = [v28 count];

          if (v29 > 1)
          {
            goto LABEL_20;
          }

          v30 = [v25 recipients];
          v31 = [v30 firstObject];
          [v31 contact];
          v33 = v32 = v15;
          v34 = [v33 identifier];
          v35 = [v12 containsObject:v34];

          v10 = v44;
          v15 = v32;
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
    v9 = v42;
  }

  else
  {
    v37 = [v9 count];
    if (v37 >= a5)
    {
      v38 = a5;
    }

    else
    {
      v38 = v37;
    }

    v36 = [v9 subarrayWithRange:{0, v38}];
  }

  v39 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)predictWithMapsPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4
{
  v68[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [_PSContactResolver alloc];
  v8 = [(_PSEnsembleModel *)self contactStore];
  v9 = _PSMapsContactKeysToFetch();
  v10 = [(_PSContactResolver *)v7 initWithContactStore:v8 keysToFetch:v9];

  v11 = [(_PSEnsembleModel *)self contactStore];
  v12 = getCNContactIdentifierKey_0();
  v68[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
  v63 = 0;
  v14 = [v11 _ios_meContactWithKeysToFetch:v13 error:&v63];
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
  v17 = [v14 identifier];
  v18 = [MEMORY[0x1E69979A0] knowledgeStoreWithDirectReadOnlyAccess];
  v19 = [(_PSEnsembleModel *)self interactionStore];
  os_unfair_lock_lock(&self->_lock);
  v20 = [(_PSEnsembleModel *)self knnMapsModel];

  if (!v20)
  {
    v21 = [[_PSKNNModel alloc] initWithK:500 interactionStore:v19 filterByBundleIds:0 knowledgeStore:v18 contactResolver:v10 messageInteractionCache:0 shareInteractionCache:0];
    [(_PSEnsembleModel *)self setKnnMapsModel:v21];

    v22 = [(_PSEnsembleModel *)self knnMapsModel];
    v23 = [(_PSEnsembleModel *)self psConfig];
    [v22 updateModelProperties:v23];
  }

  os_unfair_lock_unlock(&self->_lock);
  v24 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSMapsPeopleKnnSuggestions", &unk_1B5FD970D, buf, 2u);
  }

  v25 = [(_PSEnsembleModel *)self knnMapsModel];
  v26 = [v25 rankedMapsShareEtaSuggestions:v6 maxSuggestions:a4];

  v27 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSMapsPeopleKnnSuggestions", &unk_1B5FD970D, buf, 2u);
  }

  v55 = v19;

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
  if ([v30 count] < a4)
  {
    v32 = [(_PSEnsembleModel *)self knnMapsModel];
    v33 = v32;
    if (a4 <= 0x64)
    {
      v34 = 100;
    }

    else
    {
      v34 = a4;
    }

    v35 = [v32 mapsShareEtaDefaultKnnSuggestions:v6 maxSuggestions:v34];

    v31 = [(_PSEnsembleModel *)self mapsSuggestionArrayWithArray:v30 appendingUniqueElementsFromArray:v35 contactResolver:v10 meContactId:v17];
  }

  v36 = [v6 seedContactIdentifiers];
  v56 = v18;
  if (v36 && (v37 = v36, v38 = [v31 count], v37, v38))
  {
    v39 = [(_PSEnsembleModel *)self rerankMapsSuggestions:v31 usingPredictionContext:v6 contactResolver:v10];
  }

  else
  {
    v39 = v31;
  }

  v40 = v39;
  v41 = v17;
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
  if (v50 >= a4)
  {
    v51 = a4;
  }

  else
  {
    v51 = v50;
  }

  v52 = [v40 subarrayWithRange:{0, v51}];

  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

- (id)rerankMapsSuggestions:(id)a3 usingPredictionContext:(id)a4 contactResolver:(id)a5
{
  v199 = *MEMORY[0x1E69E9840];
  v110 = a3;
  v8 = a4;
  v130 = a5;
  v9 = [(_PSEnsembleModel *)self contactStore];
  v111 = self;
  v10 = [(_PSEnsembleModel *)self defaultContactKeysToFetch];
  v115 = [v9 _ios_meContactWithKeysToFetch:v10 error:0];

  v123 = objc_opt_new();
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v139 = v8;
  v11 = [v8 seedContactIdentifiers];
  v12 = [v11 countByEnumeratingWithState:&v183 objects:v198 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [v130 contactWithIdentifier:*(*(&v183 + 1) + 8 * i)];
        if (v16)
        {
          v17 = [_PSRecipient alloc];
          v18 = [v16 identifier];
          v19 = [(_PSRecipient *)v17 initWithIdentifier:v18 handle:0 contact:v16];

          if (v19)
          {
            v20 = [v115 identifier];
            v21 = [v16 identifier];
            v22 = [v20 isEqualToString:v21];

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

      v13 = [v11 countByEnumeratingWithState:&v183 objects:v198 count:16];
    }

    while (v13);
  }

  v23 = v123;
  if ([v123 count])
  {
    v24 = [v123 count];
    v25 = [v139 seedContactIdentifiers];
    v26 = [v25 count];

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
    obj = v110;
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
          v31 = [v30 recipients];
          v124 = [v31 countByEnumeratingWithState:&v172 objects:v196 count:16];
          if (v124)
          {
            v32 = *v173;
            v131 = v31;
            v121 = *v173;
            do
            {
              v33 = 0;
              do
              {
                if (*v173 != v32)
                {
                  objc_enumerationMutation(v31);
                }

                v127 = v33;
                v34 = [*(*(&v172 + 1) + 8 * v33) contact];
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

                      if (v34)
                      {
                        v40 = *(*(&v168 + 1) + 8 * k);
                        v41 = [v40 contact];

                        if (v41)
                        {
                          v42 = [v34 identifier];
                          v43 = [v40 contact];
                          v44 = [v43 identifier];
                          v45 = [v42 isEqualToString:v44];

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
                v31 = v131;
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
                  v54 = [v53 recipients];
                  v55 = [v54 countByEnumeratingWithState:&v156 objects:v192 count:16];
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
                          objc_enumerationMutation(v54);
                        }

                        v59 = *(*(&v156 + 1) + 8 * n);
                        v60 = [v49 contact];
                        v61 = [v60 identifier];
                        v62 = [v59 contact];
                        v63 = [v62 identifier];
                        v64 = [v61 isEqualToString:v63];

                        if (v64)
                        {

                          v47 = v116;
                          v72 = v132;
                          m = v135;
                          goto LABEL_68;
                        }
                      }

                      v56 = [v54 countByEnumeratingWithState:&v156 objects:v192 count:16];
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

            v65 = [(_PSEnsembleModel *)v111 contactResolver];
            v66 = [v49 contact];
            v67 = [v65 allEmailAndPhoneNumberHandlesForContact:v66];
            v68 = [v67 firstObject];
            [v49 setHandle:v68];

            v69 = [_PSSuggestion alloc];
            v70 = [v49 handle];
            v191 = v49;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v191 count:1];
            LOBYTE(v109) = 0;
            v72 = [(_PSSuggestion *)v69 initWithBundleID:v70 conversationIdentifier:0 groupName:0 recipients:v71 derivedIntentIdentifier:0 image:0 reason:@"Maps Seeded Contact" reasonType:0 score:0 familySuggestion:v109];

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

    v75 = v110;
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
            v78 = [v77 recipients];
            v79 = [v78 countByEnumeratingWithState:&v144 objects:v188 count:16];
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
                    objc_enumerationMutation(v78);
                  }

                  v83 = *(*(&v144 + 1) + 8 * ii);
                  v84 = [v139 seedContactIdentifiers];
                  v85 = [v83 contact];
                  v86 = [v85 identifier];
                  v87 = [v84 containsObject:v86];

                  if (v87)
                  {
                    v88 = [v83 contact];
                    v89 = [v88 postalAddresses];
                    v90 = [v89 count];

                    if (v90)
                    {
                      v91 = [v139 seedContactIdentifiers];
                      v92 = [v83 contact];
                      v93 = [v92 identifier];
                      v94 = [v91 indexOfObject:v93];

                      if (v94 > [v137 count])
                      {
                        v94 = [v137 count];
                      }

                      [v137 insertObject:v77 atIndex:v94];
                      [v138 removeObject:v77];
                    }
                  }
                }

                v80 = [v78 countByEnumeratingWithState:&v144 objects:v188 count:16];
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
      v75 = v110;
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
    v75 = v110;
    v73 = v110;
  }

  v107 = *MEMORY[0x1E69E9840];

  return v73;
}

- (id)mapsSuggestionArrayWithArray:(id)a3 appendingUniqueElementsFromArray:(id)a4 contactResolver:(id)a5 meContactId:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = a5;
  v36 = a6;
  v9 = [a3 arrayByAddingObjectsFromArray:a4];
  v34 = [MEMORY[0x1E695DF70] array];
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
        v17 = [v16 recipients];
        v18 = [v17 count];

        if (v18 == 1)
        {
          v19 = v10;
          v20 = [v16 recipients];
          v21 = [v20 firstObject];

          v22 = [v21 contact];
          if (v22)
          {
            v23 = v22;
            v24 = [v37 allEmailAndPhoneNumberHandlesForContact:v22];
            v25 = [v21 handle];
            v26 = [v24 containsObject:v25];

            if ((v26 & 1) == 0)
            {
              goto LABEL_16;
            }

LABEL_11:
            v29 = [v23 identifier];
            if (([v29 isEqualToString:v36] & 1) == 0)
            {
              v30 = [v23 identifier];
              v31 = [v19 containsObject:v30];

              if (v31)
              {
                v11 = v35;
                goto LABEL_16;
              }

              [v34 addObject:v16];
              v29 = [v23 identifier];
              [v19 addObject:v29];
              v11 = v35;
            }

            goto LABEL_16;
          }

          v27 = [v21 handle];
          v23 = [v37 resolveContactIfPossibleFromContactIdentifierString:v27 pickFirstOfMultiple:1];

          v28 = [v23 identifier];
          [v21 setIdentifier:v28];

          [v21 setContact:v23];
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

  return v34;
}

- (id)suggestZKWSuggestionsWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4
{
  v96[8] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 bundleID];
  v7 = +[_PSConstants mobileSharePlayPeoplePickerBundleId];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = +[_PSConstants mobileFacetimeBundleId];
    [v5 setBundleID:v9];
  }

  v10 = [v5 bundleID];
  v11 = +[_PSConstants macSharePlayPeoplePickerBundleId];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = +[_PSConstants macFacetimeBundleId];
    [v5 setBundleID:v13];
  }

  v14 = [v5 bundleID];
  v15 = +[_PSConstants preferencesBundleId];
  if ([v14 isEqualToString:v15])
  {
  }

  else
  {
    v16 = [v5 bundleID];
    v17 = +[_PSConstants mobilePhoneBundleId];
    v18 = [v16 isEqualToString:v17];

    if (!v18)
    {
      goto LABEL_9;
    }
  }

  v19 = +[_PSConstants mobileMessagesBundleId];
  [v5 setBundleID:v19];

LABEL_9:
  v20 = [v5 bundleID];
  v21 = +[_PSConstants passwordsAppBundleId];
  v22 = [v20 isEqualToString:v21];

  if (v22)
  {
    v23 = +[_PSConstants mobileMessagesBundleId];
    [v5 setBundleID:v23];
  }

  v24 = [v5 bundleID];
  v25 = +[_PSConstants macSafariBundleId];
  if ([v24 isEqualToString:v25])
  {
    goto LABEL_14;
  }

  v26 = [v5 bundleID];
  v27 = +[_PSConstants macSafariTechnologyPreviewBundleId];
  if ([v26 isEqualToString:v27])
  {

LABEL_14:
LABEL_15:
    v28 = +[_PSConstants mobileMessagesBundleId];
    [v5 setBundleID:v28];

    goto LABEL_16;
  }

  v71 = [v5 bundleID];
  v72 = +[_PSConstants macSafariPlatformSupportBundleId];
  v73 = [v71 isEqualToString:v72];

  if (v73)
  {
    goto LABEL_15;
  }

LABEL_16:
  v29 = +[_PSFTZKWConfig useBlendingLayer];
  v30 = [v5 bundleID];
  v31 = +[_PSConstants findMyBundleId];
  v32 = [v30 isEqualToString:v31];

  if (v32)
  {
    v33 = +[_PSConstants mobileMessagesBundleId];
    [v5 setBundleID:v33];
  }

  v34 = [v5 bundleID];
  v35 = +[_PSConstants mobileFacetimeBundleId];
  if ([v34 isEqualToString:v35])
  {
    v36 = 1;
  }

  else
  {
    v37 = [v5 bundleID];
    v38 = +[_PSConstants macFacetimeBundleId];
    v36 = [v37 isEqualToString:v38];
  }

  v39 = [v5 bundleID];
  v40 = +[_PSConstants mobileMessagesBundleId];
  if ([v39 isEqualToString:v40])
  {
    v41 = 1;
  }

  else
  {
    v42 = [v5 bundleID];
    v43 = +[_PSConstants macMessagesBundleId];
    v41 = [v42 isEqualToString:v43];
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
    v45 = [(_PSFTZKWOrchestrator *)self->_zkwFTOrchestrator config];
    [v45 setUseBlendingLayer:v29];

    v87 = [(_PSFTZKWOrchestrator *)self->_zkwFTOrchestrator getSuggestionsWithPredictionContext:v5];
    v46 = [_PSFTZKWSuggestionsTransformerFactory alloc];
    v47 = [(_PSEnsembleModel *)self interactionStore];
    v48 = [(_PSFTZKWSuggestionsTransformerFactory *)v46 initWithInteractionStore:v47];

    v85 = MEMORY[0x1E695DF70];
    v84 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 mapRecipientsToContactsWithUnmapped:1];
    v96[0] = v84;
    v83 = -[_PSFTZKWSuggestionsTransformerFactory filterIDSReachable:](v48, "filterIDSReachable:", [v5 bypassIDSFilter]);
    v96[1] = v83;
    v82 = +[_PSConstants mobileMessagesBundleId];
    v95[0] = v82;
    v81 = +[_PSConstants macMessagesBundleId];
    v95[1] = v81;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
    v79 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 formatWithBundleIdsForGroupMatching:v80];
    v96[2] = v79;
    v78 = [v5 seedRecipients];
    v77 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 deduplicateWithSeedRecipients:v78];
    v96[3] = v77;
    v76 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 deduplicateWithMaxSuggestions:a4];
    v96[4] = v76;
    v49 = [(_PSEnsembleModel *)self zkwFTTrialData];
    v50 = [v49 experimentIdentifiers];
    v51 = [(_PSEnsembleModel *)self zkwFTTrialData];
    v52 = [v51 rolloutIdentifiers];
    v53 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 annotateWithTrialExperimentIdentifiers:v50 rolloutIdentifiers:v52];
    v96[5] = v53;
    v54 = [v5 priorityContacts];
    v55 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 boostPriorityContacts:v54];
    v96[6] = v55;
    v89 = v48;
    v56 = [(_PSFTZKWSuggestionsTransformerFactory *)v48 filterBlockedContacts];
    v96[7] = v56;
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
    v67 = [v5 bundleID];
    v68 = [v66 setWithObject:v67];
    v91 = v68;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
    v70 = [(_PSKNNModelConfiguration *)v64 initWithInteractionMechanisms:v65 interactionCountMaxDepths:&unk_1F2D8C150 interactionHistoryRelativeStartDates:&unk_1F2D8C168 bundleIds:v69 modelType:0 clusterPruneThreshold:5 modelName:@"PastMessages"];

    v59 = [(_PSEnsembleModel *)self _knnZKWSuggestionsWithPredictionContext:v5 modelConfiguration:v70 maxSuggestions:a4];
  }

  else
  {
    v59 = MEMORY[0x1E695E0F0];
  }

  v74 = *MEMORY[0x1E69E9840];

  return v59;
}

- (id)_knnZKWSuggestionsWithPredictionContext:(id)a3 modelConfiguration:(id)a4 maxSuggestions:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(_PSEnsembleModel *)self knnZkwModel];
  v11 = [v10 rankedZkwSuggestionsWithPredictionContext:v9 modelConfiguration:v8 maxSuggestions:a5];

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

- (id)rankedGlobalSuggestionsForSiriNLWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4 interactionId:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  if ([MEMORY[0x1E69978B8] isRunningOnInternalBuild])
  {
    v8 = objc_alloc_init(_PSContactSuggester);
    v9 = [(_PSContactSuggester *)v8 contactPriorsForContactIdentifiers:0];
    v10 = [v9 allValues];

    v11 = [v10 count];
    if (v11 >= a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 subarrayWithRange:{0, v12}];
    v14 = [_PSSiriNLRankerUtilities knowledgeEventWithContactPriors:v13 interactionId:v7];
    if (v14)
    {
      v15 = [(_PSEnsembleModel *)self knowledgeStore];
      v19[0] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v15 saveObjects:v16 tracker:&__block_literal_global_747 responseQueue:0 withCompletion:&__block_literal_global_750];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return MEMORY[0x1E695E0F0];
}

- (id)rankedNameSuggestionsWithPredictionContext:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v9 = [v8 rankedNameSuggestionsWithPredictionContext:v7 forName:v6];

  return v9;
}

- (id)rankedAutocompleteSuggestionsFromContext:(id)a3 candidates:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v9 = [v8 rankedAutocompleteSuggestionsWithPredictionContext:v7 candidates:v6];

  v10 = [v9 _pas_filteredArrayWithTest:&__block_literal_global_753];

  return v10;
}

- (id)autocompleteSearchResultsWithPredictionContext:(id)a3
{
  v4 = a3;
  v5 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v6 = [v5 messagesGroupResultsForPredictionContext:v4];

  v7 = [v6 _pas_filteredArrayWithTest:&__block_literal_global_756];

  return v7;
}

- (id)rankedSiriMLCRHandles:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v9 = [v8 rankedSiriMLCRHandles:v7 context:v6];

  return v9;
}

- (id)rankedHandlesFromCandidateHandles:(id)a3
{
  v4 = a3;
  v5 = [(_PSEnsembleModel *)self knnNameOrContactRankerModel];
  v6 = [v5 rankedHandlesFromCandidateHandles:v4];

  return v6;
}

- (id)appExtensionSuggestionsFromContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    v17 = v3;
    v6 = __55___PSEnsembleModel_appExtensionSuggestionsFromContext___block_invoke(v16);
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_INFO, "appExtensionSuggestionsFromContext - appBundleIdsToShareExtensionBundleIdsMapping: %@", buf, 0xCu);
  }

  v7 = +[_PSAppUsageUtilities sharesFromSourceToTargetBundleValues];
  v8 = +[_PSAppUsageUtilities appUsageDurations];
  v9 = [v3 appBundleIdsToShareExtensionBundleIdsMapping];
  v10 = [v3 bundleID];
  v11 = [_PSAppUsageUtilities mostUsedAppShareExtensionsWithAppBundleIdsToShareExtensionBundleIdsMapping:v9 sourceBundleId:v10 sharesFromSourceToTargetBundle:v7 appUsageDurations:v8];

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
  v9 = [(_PSEnsembleModel *)self shareInteractionCache];

  if (v9)
  {
    v10 = [(_PSEnsembleModel *)self shareInteractionCache];
    v11 = [v10 uniqueConversationCandidates];

    v13 = __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke(v12, v11);
    v14 = [(_PSEnsembleModel *)self maxCandidatesFromShareSheetCache];
    (*(v8 + 16))(v8, v13, v14);
  }

  v15 = [(_PSEnsembleModel *)self messageInteractionCache];

  if (v15)
  {
    v16 = [(_PSEnsembleModel *)self messageInteractionCache];
    v17 = [v16 uniqueConversationCandidates];

    v19 = __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke(v18, v17);
    v20 = [(_PSEnsembleModel *)self maxCandidatesFromMessageCache];
    (*(v8 + 16))(v8, v19, v20);
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
        v30 = [v29 recipientsId];
        if (v30)
        {
          v31 = v30;
          v32 = [v29 domainId];

          if (v32)
          {
            v33 = [v29 recipientsId];
            [v23 setObject:v29 forKeyedSubscript:v33];
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v26);
  }

  v61 = v8;

  v34 = [(_PSEnsembleModel *)self maxCandidatesFromMessageCache];
  v35 = [v34 integerValue];
  v36 = [(_PSEnsembleModel *)self maxCandidatesFromShareSheetCache];
  v37 = [v36 integerValue];

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
    v68 = v37 + v35;
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

      v41 = [v40 domainId];
      if (!v41)
      {
        v42 = [v40 recipientsId];

        if (!v42)
        {
          goto LABEL_29;
        }

        v43 = [v40 recipientsId];
        v41 = [v23 objectForKeyedSubscript:v43];

        v44 = [v41 domainId];
        [v40 setDomainId:v44];

        v45 = [v41 derivedIntentId];
        [v40 setDerivedIntentId:v45];
      }

LABEL_29:
      v46 = [v40 domainId];
      if (v46)
      {

LABEL_32:
        v48 = [_PSCandidate alloc];
        v49 = [v40 domainId];
        v50 = [v40 derivedIntentId];
        v51 = [v40 bundleId];
        v52 = [v66 objectForKeyedSubscript:v51];
        v53 = v52;
        if (!v52)
        {
          v53 = [v40 bundleId];
          v64 = v53;
        }

        v54 = [v40 recipientsId];
        v55 = [(_PSCandidate *)v48 initWithDomainId:v49 derivedIntentId:v50 bundleId:v53 recipientsId:v54];
        [v38 addObject:v55];

        if (!v52)
        {
        }

        goto LABEL_37;
      }

      v47 = [v40 recipientsId];

      if (v47)
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

- (unint64_t)pruneCandidatesForRanking:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Pruning all candidates that the user never sent a message to nor recently engaged with in the sharing UI.", buf, 2u);
  }

  v5 = [v3 conversationIds];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46___PSEnsembleModel_pruneCandidatesForRanking___block_invoke;
  v13[3] = &unk_1E7C24C00;
  v6 = v3;
  v14 = v6;
  v7 = [v5 _pas_mappedArrayWithTransform:v13];

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

- (void)setupAeroMLPipelineLoggerWithModel:(id)a3
{
  v4 = a3;
  if (-[_PSEnsembleModel enablePipelineCheckpointing](self, "enablePipelineCheckpointing") && ([MEMORY[0x1E69C5CF8] isInternalBuild] & 1) != 0)
  {
    v5 = [(_PSEnsembleModel *)self amlPipelineLogger];

    if (v5)
    {
      v6 = +[_PSLogging rewriteChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        v7 = "_PSEnsemble: reusing AMLPipelineLogger object";
LABEL_8:
        _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_INFO, v7, &v24, 2u);
      }
    }

    else
    {
      v8 = [v4 modelDescription];
      v6 = [v8 inputDescriptionsByName];

      v9 = [v4 modelDescription];
      v10 = [v9 metadata];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695FDD0]];

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
      v15 = [v6 allValues];
      v16 = [v14 initWithFeaturesDescription:v15];

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
    v6 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      v7 = "_PSEnsemble: pipeline checkpointing is disabled";
      goto LABEL_8;
    }
  }
}

- (void)logPipelineWithSuggestions:(id)a3 interactionsStatistics:(id)a4 pipelineStage:(id)a5 sessionID:(id)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v10 = [(_PSEnsembleModel *)self amlPipelineLogger];

  if (v10)
  {
    v34 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v31;
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
          v36 = [v38 groupName];
          if (v36)
          {
            v11 = objc_alloc(MEMORY[0x1E696AD60]);
            v12 = [v38 groupName];
            v13 = [v11 initWithString:v12];
          }

          else
          {
            v12 = objc_opt_new();
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v14 = [v38 recipients];
            v15 = [v14 countByEnumeratingWithState:&v39 objects:v56 count:16];
            if (v15)
            {
              v16 = *v40;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v40 != v16)
                  {
                    objc_enumerationMutation(v14);
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
                  v22 = [v18 contact];
                  v23 = [v19 stringFromContact:v22 style:0];

                  if (v23)
                  {
                    [v12 addObject:v23];
                  }
                }

                v15 = [v14 countByEnumeratingWithState:&v39 objects:v56 count:16];
              }

              while (v15);
            }

            if (![v12 count])
            {
              [v12 addObject:@"unable_to_resolve"];
            }

            v13 = _PASJoinStrings();
          }

          v24 = v13;

          v25 = [v38 conversationIdentifier];
          if (v25)
          {
            [v34 setObject:v24 forKeyedSubscript:v25];
          }

          else
          {
            v26 = [v38 derivedIntentIdentifier];
            [v34 setObject:v24 forKeyedSubscript:v26];
          }
        }

        v35 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v35);
    }

    [(_PSEnsembleModel *)self logPipeline:v28 withPipelineStage:v29 andSessionID:v30 andCandidateNames:v34];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)logPipeline:(id)a3 withPipelineStage:(id)a4 andSessionID:(id)a5 andCandidateNames:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_PSEnsembleModel *)self amlPipelineLogger];

  if (v14)
  {
    v15 = [[_PSInteractionsStatisticsFeatureProvider alloc] initWithInteractionsStatistics:v10];
    v16 = [(_PSInteractionsStatisticsFeatureProvider *)v15 mlFeatures];
    v17 = v16;
    if (v13)
    {
      v18 = objc_opt_new();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __81___PSEnsembleModel_logPipeline_withPipelineStage_andSessionID_andCandidateNames___block_invoke;
      v29[3] = &unk_1E7C24C28;
      v30 = v13;
      v19 = v18;
      v31 = v19;
      [v17 enumerateKeysAndObjectsUsingBlock:v29];
      v20 = v19;
    }

    else
    {
      v20 = v16;
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
    v24 = [[v21 alloc] initWithSessionId:v12 metadata:0];
    v25 = [(_PSEnsembleModel *)self amlPipelineLogger];
    v26 = [v25 logPipelineAsync:v11 features:v20 metadata:v24 async:1];

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

- (void)evaluateCandidates:(id)a3 psrMLModel:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_evaluateCandidates", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [v6 modelDescription];
  v9 = [v8 metadata];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E695FDB0]];

  v11 = [v10 objectForKeyedSubscript:@"model_type"];
  LODWORD(v9) = [@"set" isEqual:v11];

  if (!v9)
  {
    v23 = [v5 conversationIds];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_837;
    v59[3] = &unk_1E7C248D0;
    v60 = v5;
    v61 = v6;
    [v23 enumerateObjectsUsingBlock:v59];

    v24 = v60;
    goto LABEL_31;
  }

  v12 = [v6 modelDescription];
  v13 = [v12 inputDescriptionsByName];

  v14 = [v13 objectForKeyedSubscript:@"features"];
  v15 = [v14 multiArrayConstraint];

  v16 = [v15 shape];
  v17 = [v16 objectAtIndexedSubscript:0];
  v58 = [v17 unsignedIntegerValue];

  v18 = [v16 objectAtIndexedSubscript:1];
  v49 = [v18 unsignedIntegerValue];

  v19 = [v15 dataType];
  v20 = 0;
  v21 = 0;
  v54 = v15;
  v55 = v13;
  v53 = v16;
  if (v19 > 65599)
  {
    if (v19 != 131104)
    {
      v22 = 0;
      if (v19 == 65600)
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

  if (v19 == 65552)
  {
    v22 = 0;
    v20 = 1;
    v21 = 2;
  }

  else
  {
    v22 = 0;
    if (v19 == 65568)
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
  v57 = v5;
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

  if ([v32 count] != v49)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"shape feature count %tu must be equal to feature order count %tu, feature order: %@", v49, objc_msgSend(v32, "count"), v32}];
  }

  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v49];
  v82[0] = v39;
  v82[1] = &unk_1F2D8B340;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];

  v5 = v57;
  v41 = [v57 conversationIds];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke;
  v62[3] = &unk_1E7C24C70;
  v72 = v49 * v58;
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
  v71 = v6;
  v42 = v32;
  v43 = v53;
  v44 = v54;
  v45 = v40;
  v24 = v55;
  [v41 _pas_enumerateChunksOfSize:v58 usingBlock:v62];

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

- (id)getSuggestionsFromInteractionsStatistics:(id)a3 withConfig:(id)a4 trialClient:(id)a5 andPredictionContext:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 sortOrderFeatureNames];
    *buf = 138412290;
    v37 = v10;
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: sorting candidates using %@", buf, 0xCu);
  }

  v11 = [v7 conversationIds];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __105___PSEnsembleModel_getSuggestionsFromInteractionsStatistics_withConfig_trialClient_andPredictionContext___block_invoke;
  v33[3] = &unk_1E7C24C98;
  v12 = v8;
  v34 = v12;
  v13 = v7;
  v35 = v13;
  v14 = [v11 sortedArrayUsingComparator:v33];

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

+ (id)orderedSuggestionProxiesWithProxyOrder:(id)a3 suggestionProxies:(id)a4 suggestionsWithSharePlayAddedBlock:(id)a5
{
  v43[5] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = a5;
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
  v15 = v7;
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
          v22 = [v8 objectForKeyedSubscript:v21];
          if (v22)
          {
            [v31 addObjectsFromArray:v22];
          }
        }

        else if ([v32 containsObject:v21])
        {
          v22 = [v8 objectForKeyedSubscript:v21];
          if (v22)
          {
            v25 = v30[2](v30, v22);
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

- (id)finalSuggestionProxiesForInteractionStatistics:(id)a3 config:(id)a4 trialClient:(id)a5 context:(id)a6
{
  v87[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(_PSEnsembleModel *)self heuristics];
  v70 = v12;
  v15 = [v12 psHeuristicsOverrides];
  [v14 updateHeuristicParameterOverrides:v15];

  v16 = [AeroMLTracerSession alloc];
  v17 = [v11 sessionID];
  v18 = +[_PSConstants peopleSuggesterShareSheetProjectName];
  v72 = [(AeroMLTracerSession *)v16 initWithTraceId:v17 projectName:v18];

  v71 = [(_PSEnsembleModel *)self getSuggestionsFromInteractionsStatistics:v10 withConfig:v13 trialClient:v12 andPredictionContext:v11];

  v19 = [(_PSEnsembleModel *)self heuristics];
  v20 = [(_PSEnsembleModel *)self fetchSupportedBundleIDsWithPredictionContextFilters:v11];
  v77 = [v19 inPhoneCallHeuristicSuggestionProxiesWithBundleIds:v20 predictionContext:v11];

  v21 = [(_PSEnsembleModel *)self heuristics];
  v76 = [v21 returnDocumentToSender:v11];

  v22 = [(_PSEnsembleModel *)self heuristics];
  v78 = [v22 peopleAwareSuggestionProxiesForInteractionStatistics:v10];

  v23 = [v11 currentSpanId];
  v24 = [(AeroMLTracerSession *)v72 createSubSpanWithName:@"suggestionsProxiesPASSv1Span" parentSpanId:v23];

  v25 = v24;
  [v24 start];
  v26 = [(_PSEnsembleModel *)self heuristics];
  v27 = [v11 peopleInPhotoIdentifiers];
  v68 = [v26 peopleAwareSuggestionProxiesForDetectedFaces:v27];

  v86[0] = @"peopleInPhotoIdentifiers_count";
  v28 = MEMORY[0x1E696AEC0];
  v29 = [v11 peopleInPhotoIdentifiers];
  v30 = [v28 stringWithFormat:@"%ld", objc_msgSend(v29, "count")];
  v86[1] = @"ResolvedContactIDsFromMD_count";
  v87[0] = v30;
  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v68, "count")];
  v87[1] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v69 = v25;
  [v25 addAttributes:v32];

  [v25 end];
  v33 = [(_PSEnsembleModel *)self heuristics];
  v34 = [v33 hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:v10];

  v35 = [(_PSEnsembleModel *)self heuristics];
  v75 = [v35 hyperRecentCallHeuristicSuggestionProxiesForInteractionStatistics:v10];

  v36 = [(_PSEnsembleModel *)self heuristics];
  v74 = [v36 hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics];

  v37 = [(_PSEnsembleModel *)self heuristics];
  v73 = [v37 hyperRecentHeuristicIncomingSuggestionProxiesForInteractionStatistics:v10];

  v38 = [(_PSEnsembleModel *)self heuristics];
  v39 = [v38 pastSharesWithCurrentAppAwareSuggestionProxiesForInteractionStatistics:v10];

  v40 = [(_PSEnsembleModel *)self heuristics];
  v41 = [v40 pastSharesAwareSuggestionProxiesForInteractionStatistics:v10];

  v42 = [(_PSEnsembleModel *)self heuristics];
  v43 = [v42 pastSharesOfTopDomainURLAwareSuggestionProxiesForInteractionStatistics:v10];

  v44 = [(_PSEnsembleModel *)self heuristics];
  v85 = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v46 = [v44 scenesBasedFeaturesAwareSuggestionProxiesForInteractionStatistics:v10 forFeatureNames:v45];

  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __94___PSEnsembleModel_finalSuggestionProxiesForInteractionStatistics_config_trialClient_context___block_invoke;
  v79[3] = &unk_1E7C24D10;
  v80 = v11;
  v81 = v10;
  v82 = self;
  v67 = v10;
  v66 = v11;
  v47 = MEMORY[0x1B8C8C060](v79);
  v48 = [v70 suggestionProxyOrder];

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
  v54 = v74;
  if (!v74)
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
  v63 = [objc_opt_class() orderedSuggestionProxiesWithProxyOrder:v48 suggestionProxies:v62 suggestionsWithSharePlayAddedBlock:v47];

  v64 = *MEMORY[0x1E69E9840];

  return v63;
}

- (id)trialIdentifier
{
  v3 = objc_opt_new();
  v4 = [(_PSEnsembleModel *)self trialExperimentId];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"Missing";
  }

  [v3 setTask:v6];

  v7 = [(_PSEnsembleModel *)self trialTreatmentId];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Missing";
  }

  [v3 setTreatment:v9];

  v10 = [(_PSEnsembleModel *)self trialDeploymentId];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"Missing";
  }

  [v3 setDeployment:v12];

  return v3;
}

- (void)sendDataToPETAsync:(id)a3 withConfig:(id)a4 andContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61___PSEnsembleModel_sendDataToPETAsync_withConfig_andContext___block_invoke;
  v15[3] = &unk_1E7C24D38;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (id)getPETMessageFrom:(id)a3 withConfig:(id)a4 andContext:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSEnsembleModel_sendDataToPET", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = [(_PSEnsembleModel *)self deviceIdentifier];
  v11 = [(_PSEnsembleModel *)self trialIdentifier];
  v12 = [(_PSEnsembleModel *)self peopleSuggesterDefaults];
  v13 = [_PSPETMessageBuilder getPETMessageWithInteractionsStatistics:v8 predictionContext:v7 deviceIdentifier:v10 trialIdentifier:v11 peopleSuggesterDefaults:v12];

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

- (int)_remapSingleContentTypeValue:(int)a3
{
  if (a3 == 13)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 13;
  }
}

- (id)_reMapContentTypes:(int *)a3 count:(unint64_t)a4
{
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v5 = a4;
    if (a4)
    {
      v6 = a3;
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
      do
      {
        v9 = *v6++;
        v10 = [(_PSEnsembleModel *)self _remapSingleContentTypeValue:v9];
        v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
        [v8 addObject:v11];

        --v5;
      }

      while (v5);
      v4 = [v8 copy];
    }
  }

  return v4;
}

- (void)sendDataCollectionMessageWith:(id)a3
{
  v4 = a3;
  v5 = BiomeLibrary();
  v6 = [v5 MLSE];
  v7 = [v6 ShareSheet];
  v8 = [v7 Inference];
  v32 = [v8 PeopleSuggestions];

  v30 = [v32 source];
  v22 = objc_alloc(MEMORY[0x1E698EEA0]);
  v31 = [v4 deviceIdentifier];
  v29 = [v4 sessionId];
  v28 = [v4 trialIdentifier];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "version")}];
  v26 = [v4 candidates];
  v25 = [v4 testKey];
  v23 = [v4 madResponseStatus];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isFallbackFetch")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isSharePlayAvailable")}];
  v21 = [v4 appSharedFrom];
  v18 = [v4 feedbackEvents];
  v9 = -[_PSEnsembleModel _reMapContentTypes:count:](self, "_reMapContentTypes:count:", [v4 typeOfContents], objc_msgSend(v4, "typeOfContentsCount"));
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isInPhoneCall")}];
  v11 = [v4 timeSinceLastShare];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isScreenShot")}];
  v13 = [v4 photoFeatures];

  LODWORD(v17) = v21;
  LODWORD(v16) = v23;
  v24 = [v22 initWithDeviceIdentifier:v31 sessionId:v29 trialIdentifiers:v28 version:v27 candidates:v26 testKey:v25 madResponseStatus:v16 isFallbackFetch:v20 isSharePlayAvailable:v19 appSharedFrom:v17 feedbackEvents:v18 typeOfContent:v9 isInPhoneCall:v10 timeSinceLastShare:v11 isScreenShot:v12 photoFeatures:v13];

  v14 = objc_alloc(MEMORY[0x1E698ECA0]);
  v15 = [v14 initWithIdentifier:0 sourceBundleId:0 peopleSuggestions:MEMORY[0x1E695E0F0] responseType:0 trainingDataCollection:v24];
  [v30 sendEvent:v15];
}

- (id)_conversationIdForFirstInteractionAfterSharingStartDate:(id)a3 targetBundleId:(id)a4
{
  v43[3] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696AE18];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v7 predicateWithFormat:@"(startDate >= %@) && (startDate <= %@)", v31, v8];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1;
  v38 = __Block_byref_object_dispose__1;
  v39 = 0;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism == %@", &unk_1F2D8B190];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"targetBundleId == %@", v6];
  v12 = MEMORY[0x1E696AB28];
  v43[0] = v9;
  v43[1] = v10;
  v43[2] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v6;
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
    v29 = [v28 objectForKeyedSubscript:v6];
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

- (BOOL)_updateInteractionStatisticsForExplicitEngagement:(id)a3 interactionStatisticsConfig:(id)a4 interactionStatistics:(id)a5 sessionFeedback:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 conversationId];

  v15 = +[_PSLogging rewriteChannel];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v14)
  {
    if (v16)
    {
      v22 = [v13 transportBundleId];
      v23 = [v10 sessionID];
      v32 = 138412546;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "Looking for share interactions from target bundleId %@ for session %@", &v32, 0x16u);
    }

    v24 = [v11 rightBoundDate];
    v25 = [v13 transportBundleId];
    v19 = [(_PSEnsembleModel *)self _conversationIdForFirstInteractionAfterSharingStartDate:v24 targetBundleId:v25];

    if (v19)
    {
      v26 = [v12 containsConversationId:v19];
      v27 = +[_PSLogging rewriteChannel];
      v28 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v10 sessionID];
          v32 = 138478083;
          v33 = v19;
          v34 = 2112;
          v35 = v29;
          _os_log_impl(&dword_1B5ED1000, v28, OS_LOG_TYPE_DEFAULT, "Storing feedback for explicit positive engagement (top row share) with %{private}@ for session %@", &v32, 0x16u);
        }

        v20 = v12;
        goto LABEL_5;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [_PSEnsembleModel _updateInteractionStatisticsForExplicitEngagement:v10 interactionStatisticsConfig:? interactionStatistics:? sessionFeedback:?];
      }
    }

    else
    {
      v28 = +[_PSLogging rewriteChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_PSEnsembleModel _updateInteractionStatisticsForExplicitEngagement:v10 interactionStatisticsConfig:? interactionStatistics:? sessionFeedback:?];
      }
    }

    v21 = 0;
    goto LABEL_18;
  }

  if (v16)
  {
    v17 = [v13 conversationId];
    v18 = [v10 sessionID];
    v32 = 138478083;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "Storing feedback for explicit positive engagement (top row share) with %{private}@ for session %@", &v32, 0x16u);
  }

  v19 = [v13 conversationId];
  v20 = v12;
LABEL_5:
  [v20 setValue:&unk_1F2D8B358 forFeature:@"feedback" andConversationId:v19];
  v21 = 1;
LABEL_18:

  v30 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_updateInteractionStatisticsForImplicitEngagement:(id)a3 interactionStatisticsConfig:(id)a4 interactionStatistics:(id)a5 sessionFeedback:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 sessionID];
    v16 = [v12 transportBundleId];
    v30 = 138412546;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "Processing implicit positive engagement (app extension share) for session %@ from transport bundleId %@", &v30, 0x16u);
  }

  v17 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v12 transportBundleId];
    v19 = [v10 sessionID];
    v30 = 138412546;
    v31 = v18;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_1B5ED1000, v17, OS_LOG_TYPE_DEFAULT, "Looking for interactions from target bundleId %@ for session %@", &v30, 0x16u);
  }

  v20 = [v13 rightBoundDate];

  v21 = [v12 transportBundleId];
  v22 = [(_PSEnsembleModel *)self _conversationIdForFirstInteractionAfterSharingStartDate:v20 targetBundleId:v21];

  if (!v22)
  {
    v25 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel _updateInteractionStatisticsForImplicitEngagement:v10 interactionStatisticsConfig:? interactionStatistics:? sessionFeedback:?];
    }

    goto LABEL_14;
  }

  v23 = [v11 containsConversationId:v22];
  v24 = +[_PSLogging rewriteChannel];
  v25 = v24;
  if ((v23 & 1) == 0)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_PSEnsembleModel _updateInteractionStatisticsForImplicitEngagement:v10 interactionStatisticsConfig:? interactionStatistics:? sessionFeedback:?];
    }

LABEL_14:

    v27 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v10 sessionID];
    v30 = 138478083;
    v31 = v22;
    v32 = 2112;
    v33 = v26;
    _os_log_impl(&dword_1B5ED1000, v25, OS_LOG_TYPE_DEFAULT, "Storing feedback for app extension sharing interaction (implicit positive engagement – bottom row share) with %{private}@ for session %@", &v30, 0x16u);
  }

  [v11 setValue:&unk_1F2D8B370 forFeature:@"feedback" andConversationId:v22];
  v27 = 1;
LABEL_15:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)_updateInteractionStatisticsForSpeculativeEngagement:(id)a3 interactionStatisticsConfig:(id)a4 interactionStatistics:(id)a5 sessionFeedback:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v30 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 sessionID];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_DEFAULT, "Processing speculative engagement (manual interactions after ShareSheet closed) for session %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x2020000000;
  v38 = [v12 feedbackActionType] == 2;
  v15 = MEMORY[0x1E696AE18];
  v16 = [v30 rightBoundDate];
  v17 = [MEMORY[0x1E695DF00] now];
  v18 = [v15 predicateWithFormat:@"(startDate >= %@) && (startDate <= %@)", v16, v17];

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
  v26 = v11;
  v32 = v26;
  v27 = v10;
  v33 = v27;
  p_buf = &buf;
  [(_CDInteractionStore *)interactionStore iterInteractionRecordsWithPredicate:v25 fetchLimit:25 sortAscending:1 updateTelemetry:0 withBlock:v31];

  LOBYTE(v25) = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  v28 = *MEMORY[0x1E69E9840];
  return v25 & 1;
}

- (void)psrDataCollectionForContext:(id)a3 timeToWaitInSeconds:(int)a4 interactionStatisticsConfig:(id)a5 interactionStatistics:(id)a6
{
  *&v33[5] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 sessionID];
    *buf = 138412290;
    *v33 = v14;
    _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: registering data logging for sessionId: %@", buf, 0xCu);
  }

  v15 = [v10 sessionID];

  if (v15)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __118___PSEnsembleModel_psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___block_invoke;
    v27 = &unk_1E7C24D38;
    v16 = v10;
    v28 = v16;
    v29 = v12;
    v30 = self;
    v31 = v11;
    v17 = MEMORY[0x1B8C8C060](&v24);
    v18 = [_PSLogging generalChannel:v24];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 sessionID];
      *buf = 67109378;
      v33[0] = a4;
      LOWORD(v33[1]) = 2112;
      *(&v33[1] + 2) = v19;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: Waiting %d seconds for feedback events from ShareSheet UI for sessionId: %@", buf, 0x12u);
    }

    if (psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___pasOnceToken267 != -1)
    {
      [_PSEnsembleModel psrDataCollectionForContext:timeToWaitInSeconds:interactionStatisticsConfig:interactionStatistics:];
    }

    v20 = psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___pasExprOnceResult;
    v21 = dispatch_time(0, 1000000000 * a4);
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

- (id)psr_suggestionsFromSuggestionProxies:(id)a3 interactionsStatistics:(id)a4 maxSuggestions:(unint64_t)a5 predictionContext:(id)a6
{
  v86 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v51 = a4;
  v49 = a6;
  v48 = objc_opt_new();
  v58 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v9;
  v54 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v54)
  {
    v52 = *v75;
    v10 = a5;
    v11 = 0.0;
LABEL_3:
    v60 = 0;
    while (1)
    {
      if (*v75 != v52)
      {
        objc_enumerationMutation(obj);
      }

      if (v11 == v10)
      {
        break;
      }

      v59 = *(*(&v74 + 1) + 8 * v60);
      v63 = [v59 bundleID];
      v62 = [v59 interactionRecipients];
      v61 = [MEMORY[0x1E69C5D98] tupleWithFirst:v63 second:v62];
      if (([v58 containsObject:v61] & 1) == 0)
      {
        [v58 addObject:v61];
        if (([v63 isEqualToString:@"com.apple.MobileSMS"] & 1) != 0 || objc_msgSend(v63, "isEqualToString:", @"com.apple.telephonyutilities.callservicesd"))
        {
          v12 = v62;
          v13 = [v59 reason];
          v14 = [v13 isEqualToString:@"SharePlay heuristic"];

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
          v55 = [v57 displayName];
          v67 = objc_opt_new();
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v64 = [v57 participants];
          v68 = [v64 countByEnumeratingWithState:&v70 objects:v84 count:16];
          if (v68)
          {
            v66 = *v71;
            do
            {
              for (i = 0; i != v68; ++i)
              {
                if (*v71 != v66)
                {
                  objc_enumerationMutation(v64);
                }

                v18 = *(*(&v70 + 1) + 8 * i);
                v19 = [v18 address];
                v69 = [getCNContactClass() predicateForContactsMatchingEmailAddress:v19];
                CNContactClass = getCNContactClass();
                v21 = [getCNPhoneNumberClass() phoneNumberWithStringValue:v19];
                v22 = [CNContactClass predicateForContactsMatchingPhoneNumber:v21];

                v23 = MEMORY[0x1E696AB28];
                v83[0] = v69;
                v83[1] = v22;
                v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
                v25 = [v23 orPredicateWithSubpredicates:v24];

                v26 = [(_PSEnsembleModel *)self contactStore];
                v27 = _PSDefaultContactKeysToFetch();
                v28 = [v26 unifiedContactsMatchingPredicate:v25 keysToFetch:v27 error:0];

                v29 = [v28 firstObject];
                if (v29)
                {
                  v30 = 0;
                }

                else
                {
                  v30 = v19;
                  v29 = objc_alloc_init(getCNContactClass());
                }

                v31 = [_PSRecipient alloc];
                v32 = [v29 identifier];
                v33 = [v18 displayName];
                v34 = [(_PSRecipient *)v31 initWithIdentifier:v32 handle:v19 displayName:v33 contact:v29];
                [v67 addObject:v34];
              }

              v68 = [v64 countByEnumeratingWithState:&v70 objects:v84 count:16];
            }

            while (v68);
          }

          v35 = 0;
        }

        else
        {
          v35 = v62;
          v55 = [v51 valueForProperty:@"ConversationGroupName" forConversationId:v35];
          v67 = 0;
          v56 = 0;
        }

        v36 = [v51 valueForProperty:@"ConversationINImageURL" forConversationId:v62];
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

        if (v63 && v62)
        {
          v39 = [_PSSuggestion alloc];
          v40 = [v59 reason];
          v41 = [v59 reasonType];
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
          v43 = [(_PSSuggestion *)v39 initWithBundleID:v63 conversationIdentifier:v56 groupName:v55 recipients:v67 derivedIntentIdentifier:v35 image:v38 reason:v40 reasonType:v41 score:v42];

          v44 = [v49 suggestionsFilteredByBundleIds];
          v45 = [(_PSSuggestion *)v43 bundleID];
          LOBYTE(v40) = [v44 containsObject:v45];

          if (((v43 != 0) & v40) == 1)
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
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"shouldUseLegacyUI"];

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