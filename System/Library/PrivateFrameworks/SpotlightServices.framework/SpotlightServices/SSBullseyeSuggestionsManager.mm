@interface SSBullseyeSuggestionsManager
+ (id)sharedSuggestionsManager;
- (SSBullseyeSuggestionsManager)initWithOptions:(id)options;
- (SSCoreMLInterface)blendingModel;
- (id)_getScoreForSuggestionResult:(id)result options:(id)options;
- (id)_rankedSuggestionsResultsWithQueryContext:(id)context serverSuggestionResults:(id)results localSuggestionResults:(id)suggestionResults options:(id)options;
- (id)intentBasedSuggestionBlending:(id)blending suggestions:(id)suggestions;
- (id)orderedSuggestionsWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4;
- (id)release2022_blendingByPolicyWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4;
- (id)release2023_blendingByPolicyWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion actionSuggestionResults:(id)results contactSuggestionResults:(id)self0 serverSuggestionResults:(id)self1 localSuggestionResults:(id)self2 options:(id)self3;
- (id)release2023_blendingWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4;
- (id)suggestionKeyWithCompletion:(id)completion;
- (void)_filterSuggestionResultsWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters contactSuggestionResults:(id)results localSuggestionResults:(id)suggestionResults serverSuggestionResults:(id)serverSuggestionResults options:(id)self0;
- (void)clearBlendingModel;
- (void)loadBlendingModelWithPath:(id)path forceLoad:(BOOL)load;
- (void)loadDefaultsWithOptions:(id)options;
- (void)setBlendingModel:(id)model;
- (void)updateDefaultsWithOptions:(id)options;
@end

@implementation SSBullseyeSuggestionsManager

+ (id)sharedSuggestionsManager
{
  if (sharedSuggestionsManager_onceToken != -1)
  {
    +[SSBullseyeSuggestionsManager sharedSuggestionsManager];
  }

  v3 = sharedSuggestionsManager_gSuggestionsManager;

  return v3;
}

uint64_t __56__SSBullseyeSuggestionsManager_sharedSuggestionsManager__block_invoke()
{
  sharedSuggestionsManager_gSuggestionsManager = [[SSBullseyeSuggestionsManager alloc] initWithOptions:0];

  return MEMORY[0x1EEE66BB8]();
}

- (SSBullseyeSuggestionsManager)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = SSBullseyeSuggestionsManager;
  v5 = [(SSBullseyeSuggestionsManager *)&v11 init];
  if (v5)
  {
    v5->_enabledSuggestionsOverrides = SSDefaultsGetState(5uLL);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("com.apple.SpotlightServices.suggestions.blending", v7);
    queue = v5->_queue;
    v5->_queue = v8;

    [(SSBullseyeSuggestionsManager *)v5 loadDefaultsWithOptions:optionsCopy];
  }

  return v5;
}

- (void)loadDefaultsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy copy];
  defaultOptions = self->_defaultOptions;
  self->_defaultOptions = v4;

  mEMORY[0x1E69D3E28] = [MEMORY[0x1E69D3E28] sharedResourcesManager];
  v7 = [mEMORY[0x1E69D3E28] resourcesForClient:@"Spotlight" options:&unk_1F55B7858];
  resources = self->_resources;
  self->_resources = v7;

  v49 = [(SRResources *)self->_resources objectForKey:@"EnableSuggestionsBlending"];
  if (optionsCopy)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"EnableSuggestionsBlending"];
    if (v9)
    {
      v10 = [optionsCopy objectForKeyedSubscript:@"EnableSuggestionsBlending"];
    }

    else
    {
      v10 = 0;
    }

    v49 = v10;
  }

  if (v49)
  {
    bOOLValue = [v49 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  self->_enabledSuggestionsBlending = bOOLValue;
  if (!optionsCopy && [(SSBullseyeSuggestionsManager *)self enabledSuggestionsOverrides])
  {
    self->_enabledSuggestionsBlending = _os_feature_enabled_impl();
  }

  v48 = [(SRResources *)self->_resources objectForKey:@"EnableFullSuggestionsBlending"];
  if (optionsCopy)
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"EnableFullSuggestionsBlending"];
    if (v12)
    {
      v13 = [optionsCopy objectForKeyedSubscript:@"EnableFullSuggestionsBlending"];
    }

    else
    {
      v13 = 0;
    }

    v48 = v13;
  }

  if (v48)
  {
    bOOLValue2 = [v48 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  self->_enabledFullSuggestionsBlending = bOOLValue2;
  if (!optionsCopy && [(SSBullseyeSuggestionsManager *)self enabledSuggestionsOverrides])
  {
    self->_enabledFullSuggestionsBlending = _os_feature_enabled_impl();
  }

  v15 = [(SRResources *)self->_resources objectForKey:@"ServerSuggestionThreshold"];
  if (optionsCopy)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"serverThreshold"];

    v15 = v16;
  }

  if (!v15 || ([v15 doubleValue], v17 == 0.0) || (objc_msgSend(v15, "doubleValue"), v18 == 2.22507386e-308))
  {
    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

  objc_storeStrong(&self->_serverSuggestionThreshold, v19);
  v20 = [(SRResources *)self->_resources objectForKey:@"LocalSuggestionThreshold"];
  if (optionsCopy)
  {
    v21 = [optionsCopy objectForKeyedSubscript:@"localThreshold"];

    v20 = v21;
  }

  if (!v20 || ([v20 doubleValue], v22 == 0.0) || (objc_msgSend(v20, "doubleValue"), v23 == 2.22507386e-308))
  {
    v24 = 0;
  }

  else
  {
    v24 = v20;
  }

  objc_storeStrong(&self->_localSuggestionThreshold, v24);
  v25 = [(SRResources *)self->_resources objectForKey:@"MaxTotalSuggestions"];
  if (optionsCopy)
  {
    v26 = [optionsCopy objectForKeyedSubscript:@"maxTotalSuggestions"];

    v25 = v26;
  }

  v27 = [(SRResources *)self->_resources objectForKey:@"MaxTotalSuggestionsForAboveFoldResults"];
  if (optionsCopy)
  {
    v28 = [optionsCopy objectForKeyedSubscript:@"maxTotalSuggestionsForAboveFoldResults"];

    v27 = v28;
  }

  v29 = [(SRResources *)self->_resources objectForKey:@"EnableForceAboveFoldResults"];
  if (optionsCopy)
  {
    v30 = [optionsCopy objectForKeyedSubscript:@"EnableForceAboveFoldResults"];

    v29 = v30;
  }

  if (v29)
  {
    bOOLValue3 = [v29 BOOLValue];
  }

  else
  {
    bOOLValue3 = 0;
  }

  self->_enabledAboveFoldResults = bOOLValue3;
  if (v25)
  {
    integerValue = [v25 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFLL;
  }

  self->_maxTotalSuggestionCount = integerValue;
  if (v27)
  {
    integerValue = [v27 integerValue];
  }

  self->_maxTotalSuggestionCountForAboveFoldResults = integerValue;
  v33 = [(SRResources *)self->_resources objectForKey:@"MaxServerSuggestionCount"];
  if (optionsCopy)
  {
    v34 = [optionsCopy objectForKeyedSubscript:@"maxServerSuggestions"];

    v33 = v34;
  }

  if (!v33 || [v33 integerValue] < 0)
  {
    integerValue2 = 0x7FFFFFFFLL;
  }

  else
  {
    integerValue2 = [v33 integerValue];
  }

  self->_maxServerSuggestionCount = integerValue2;
  v36 = [(SRResources *)self->_resources objectForKey:@"MaxSuggestionCount"];
  if (optionsCopy)
  {
    v37 = [optionsCopy objectForKeyedSubscript:@"maxLocalSuggestions"];

    v36 = v37;
  }

  if (!v36 || [v36 integerValue] < 0)
  {
    integerValue3 = 0x7FFFFFFFLL;
  }

  else
  {
    integerValue3 = [v36 integerValue];
  }

  v47 = v29;
  self->_maxLocalSuggestionCount = integerValue3;
  v39 = [(SRResources *)self->_resources objectForKey:@"LocalDisplayPosition"];
  if (optionsCopy)
  {
    v40 = [optionsCopy objectForKeyedSubscript:@"localDisplayPosition"];

    v39 = v40;
  }

  if (!v39 || [v39 integerValue] == 0x7FFFFFFF || objc_msgSend(v39, "integerValue") == -1)
  {
    unsignedIntValue = 0;
  }

  else
  {
    unsignedIntValue = [v39 unsignedIntValue];
  }

  self->_localDisplayPosition = unsignedIntValue;
  v42 = [(SRResources *)self->_resources objectForKey:@"IgnoreMaxCountForSingleSuggestionsType"];
  if (optionsCopy)
  {
    [optionsCopy objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
    v44 = v43 = v33;

    v42 = v44;
    v33 = v43;
  }

  if (v42)
  {
    bOOLValue4 = [v42 BOOLValue];
  }

  else
  {
    bOOLValue4 = 0;
  }

  self->_ignoreMaxCount = bOOLValue4;
  if ([(SSBullseyeSuggestionsManager *)self enabledSuggestionsBlending])
  {
    v46 = [(SRResources *)self->_resources filePathForKey:@"SuggestionsBlendingModel"];
    [(SSBullseyeSuggestionsManager *)self loadBlendingModelWithPath:v46 forceLoad:optionsCopy != 0];
  }
}

- (void)updateDefaultsWithOptions:(id)options
{
  optionsCopy = options;
  resources = [(SSBullseyeSuggestionsManager *)self resources];
  hasUpdates = [resources hasUpdates];

  if (hasUpdates)
  {
    [(SSBullseyeSuggestionsManager *)self loadDefaultsWithOptions:self->_defaultOptions];
  }

  v6 = [optionsCopy objectForKeyedSubscript:@"serverThreshold"];
  if (v6)
  {
    objc_storeStrong(&self->_serverSuggestionThreshold, v6);
  }

  v7 = [optionsCopy objectForKeyedSubscript:@"localThreshold"];
  if (v7)
  {
    objc_storeStrong(&self->_localSuggestionThreshold, v7);
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"maxTotalSuggestions"];
  v9 = v8;
  if (v8)
  {
    self->_maxTotalSuggestionCount = [v8 integerValue];
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"maxServerSuggestions"];
  v11 = v10;
  if (v10)
  {
    self->_maxServerSuggestionCount = [v10 integerValue];
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"maxLocalSuggestions"];
  v13 = v12;
  if (v12)
  {
    self->_maxLocalSuggestionCount = [v12 integerValue];
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"localDisplayPosition"];
  v15 = v14;
  if (v14)
  {
    self->_localDisplayPosition = [v14 unsignedIntValue];
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
  v17 = v16;
  if (v16)
  {
    self->_ignoreMaxCount = [v16 BOOLValue];
  }
}

- (void)loadBlendingModelWithPath:(id)path forceLoad:(BOOL)load
{
  loadCopy = load;
  pathCopy = path;
  blendingModelPath = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
  v8 = blendingModelPath;
  if (pathCopy && blendingModelPath)
  {
    blendingModelPath2 = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
    v10 = [blendingModelPath2 isEqualToString:pathCopy];

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v11 = [pathCopy copy];
  blendingModelPath = self->_blendingModelPath;
  self->_blendingModelPath = v11;

  if (loadCopy)
  {
    v13 = MEMORY[0x1E695DFF8];
    blendingModelPath3 = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
    v15 = [v13 fileURLWithPath:blendingModelPath3 isDirectory:1];

    v20 = 0;
    v16 = [[SSCoreMLInterface alloc] initWithURL:v15 error:&v20];
    v17 = v20;
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [SSBullseyeSuggestionsManager loadBlendingModelWithPath:forceLoad:];
      }

      [(SSBullseyeSuggestionsManager *)self clearBlendingModel];
    }

    else
    {
      [(SSBullseyeSuggestionsManager *)self setBlendingModel:v16];
    }
  }

  else
  {
    queue = [(SSBullseyeSuggestionsManager *)self queue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__SSBullseyeSuggestionsManager_loadBlendingModelWithPath_forceLoad___block_invoke;
    v19[3] = &unk_1E8595778;
    v19[4] = self;
    dispatch_async(queue, v19);
  }

LABEL_14:
}

void __68__SSBullseyeSuggestionsManager_loadBlendingModelWithPath_forceLoad___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [*(a1 + 32) blendingModelPath];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  v8 = 0;
  v5 = [[SSCoreMLInterface alloc] initWithURL:v4 error:&v8];
  v6 = v8;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SSBullseyeSuggestionsManager loadBlendingModelWithPath:forceLoad:];
    }
  }

  else
  {
    [*(a1 + 32) setBlendingModel:v5];
    v7 = [*(a1 + 32) modelFeatureNames];

    if (v7)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __68__SSBullseyeSuggestionsManager_loadBlendingModelWithPath_forceLoad___block_invoke_cold_2();
    }
  }

  [*(a1 + 32) clearBlendingModel];
LABEL_6:
}

- (SSCoreMLInterface)blendingModel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_blendingModel;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setBlendingModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_blendingModel, model);
  getInputDescriptionsByName = [(SSCoreMLInterface *)selfCopy->_blendingModel getInputDescriptionsByName];
  modelFeatureNames = selfCopy->_modelFeatureNames;
  selfCopy->_modelFeatureNames = getInputDescriptionsByName;

  objc_sync_exit(selfCopy);
}

- (void)clearBlendingModel
{
  obj = self;
  objc_sync_enter(obj);
  blendingModel = obj->_blendingModel;
  obj->_blendingModel = 0;

  blendingModelPath = obj->_blendingModelPath;
  obj->_blendingModelPath = 0;

  modelFeatureNames = obj->_modelFeatureNames;
  obj->_modelFeatureNames = 0;

  obj->_enabledSuggestionsBlending = 0;
  objc_sync_exit(obj);
}

- (id)orderedSuggestionsWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4
{
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  suggestionCopy = suggestion;
  webSuggestionCopy = webSuggestion;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  contactSuggestionResultsCopy = contactSuggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  localSuggestionResultsCopy = localSuggestionResults;
  optionsCopy = options;
  [(SSBullseyeSuggestionsManager *)self updateDefaultsWithOptions:optionsCopy];
  blendingModel = [(SSBullseyeSuggestionsManager *)self blendingModel];

  v51 = resultsCopy;
  v49 = suggestionResultsCopy;
  v53 = optionsCopy;
  if (blendingModel)
  {
    v28 = localSuggestionResultsCopy;
    v29 = contactFiltersCopy;
    v30 = entityFiltersCopy;
    if ([(SSBullseyeSuggestionsManager *)self enabledFullSuggestionsBlending])
    {
      v42 = suggestionResultsCopy;
      v31 = contextCopy;
      [(SSBullseyeSuggestionsManager *)self release2023_blendingWithQueryContext:contextCopy filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy userSuggestion:suggestionCopy userWebSuggestion:webSuggestionCopy shortcutSuggestionResults:v51 actionSuggestionResults:v42 contactSuggestionResults:contactSuggestionResultsCopy serverSuggestionResults:serverSuggestionResultsCopy localSuggestionResults:localSuggestionResultsCopy options:v53];
    }

    else
    {
      v41 = suggestionResultsCopy;
      v31 = contextCopy;
      [(SSBullseyeSuggestionsManager *)self release2023_blendingByPolicyWithQueryContext:contextCopy filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy userSuggestion:suggestionCopy userWebSuggestion:webSuggestionCopy actionSuggestionResults:v41 contactSuggestionResults:contactSuggestionResultsCopy serverSuggestionResults:serverSuggestionResultsCopy localSuggestionResults:localSuggestionResultsCopy options:v53];
    }
    v48 = ;
  }

  else
  {
    v44 = optionsCopy;
    v40 = resultsCopy;
    v43 = suggestionResultsCopy;
    v30 = entityFiltersCopy;
    v31 = contextCopy;
    v29 = contactFiltersCopy;
    v48 = [(SSBullseyeSuggestionsManager *)self release2022_blendingByPolicyWithQueryContext:contextCopy filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy userSuggestion:suggestionCopy userWebSuggestion:webSuggestionCopy shortcutSuggestionResults:v40 actionSuggestionResults:v43 contactSuggestionResults:contactSuggestionResultsCopy serverSuggestionResults:serverSuggestionResultsCopy localSuggestionResults:localSuggestionResultsCopy options:v44];
    v28 = localSuggestionResultsCopy;
  }

  if (+[SSQueryIntentManager isEnabled])
  {
    v47 = v28;
    queryIntent = [v31 queryIntent];
    if (queryIntent)
    {
      v33 = queryIntent;
      v34 = v30;
      queryIntent2 = [v31 queryIntent];
      intentType = [queryIntent2 intentType];

      if (intentType)
      {
        v37 = [(SSBullseyeSuggestionsManager *)self intentBasedSuggestionBlending:v31 suggestions:v48];

        v30 = v34;
        v29 = contactFiltersCopy;
        v38 = v53;
        v28 = v47;
        goto LABEL_14;
      }

      v30 = v34;
      v29 = contactFiltersCopy;
    }

    v28 = v47;
    v37 = v48;
    v38 = v53;
  }

  else
  {
    v38 = v53;
    v37 = v48;
  }

LABEL_14:

  return v37;
}

- (id)_getScoreForSuggestionResult:(id)result options:(id)options
{
  v86 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v6 = objc_opt_new();
  type = [resultCopy type];
  query = [resultCopy query];
  v9 = [query length];

  completion = [resultCopy completion];
  v11 = [completion length];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:type];
  [v6 setObject:v12 forKey:@"type"];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v6 setObject:v13 forKey:@"plen"];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v6 setObject:v14 forKey:@"slen"];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / (v11 + 1.0)];
  [v6 setObject:v15 forKey:@"ratio"];

  v16 = MEMORY[0x1E696AD98];
  [resultCopy rankingScore];
  v17 = [v16 numberWithDouble:?];
  [v6 setObject:v17 forKey:@"score"];

  spotlightSuggestion = [resultCopy spotlightSuggestion];

  if (spotlightSuggestion)
  {
    spotlightSuggestion2 = [resultCopy spotlightSuggestion];
    features = [spotlightSuggestion2 features];

    if (getFeaturesForSuggestionResult_onceToken == -1)
    {
      if (features)
      {
LABEL_4:
        v83 = 0;
        v21 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:getFeaturesForSuggestionResult_sFeatureClasses fromData:features error:&v83];
        v22 = v83;
        if (!v22 && v21)
        {
          [v6 addEntriesFromDictionary:v21];
          v22 = 0;
LABEL_28:

LABEL_29:
          goto LABEL_30;
        }

LABEL_26:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [SSBullseyeSuggestionsManager _getScoreForSuggestionResult:options:];
        }

        goto LABEL_28;
      }
    }

    else
    {
      [SSBullseyeSuggestionsManager _getScoreForSuggestionResult:options:];
      if (features)
      {
        goto LABEL_4;
      }
    }

    v22 = 0;
    v21 = 0;
    goto LABEL_26;
  }

  suggestion = [resultCopy suggestion];

  if (suggestion)
  {
    v24 = MEMORY[0x1E696AD98];
    suggestion2 = [resultCopy suggestion];
    [suggestion2 score];
    v26 = [v24 numberWithDouble:?];
    [v6 setObject:v26 forKey:@"score"];

    v27 = MEMORY[0x1E696AD98];
    suggestion3 = [resultCopy suggestion];
    v29 = [v27 numberWithInt:{objc_msgSend(suggestion3, "type")}];
    [v6 setObject:v29 forKey:@"stype"];

    v30 = MEMORY[0x1E696AD98];
    suggestion4 = [resultCopy suggestion];
    v31Suggestion = [suggestion4 suggestion];
    v33 = [v30 numberWithUnsignedInteger:{objc_msgSend(v31Suggestion, "length")}];
    [v6 setObject:v33 forKey:@"sslen"];

    suggestion5 = [resultCopy suggestion];
    objc_opt_class();
    LOBYTE(suggestion4) = objc_opt_isKindOfClass();

    if (suggestion4)
    {
      features = [resultCopy suggestion];
      v35 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(features, "queryLen")}];
      [v6 setObject:v35 forKey:@"queryLen"];

      v36 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(features, "fragments")}];
      [v6 setObject:v36 forKey:@"fragments"];

      v37 = MEMORY[0x1E696AD98];
      [features age];
      v38 = [v37 numberWithDouble:?];
      [v6 setObject:v38 forKey:@"age"];

      v39 = MEMORY[0x1E696AD98];
      [features prob];
      v40 = [v39 numberWithDouble:?];
      [v6 setObject:v40 forKey:@"prob"];

      [features compositeScore];
      v42 = v41;
      v43 = 0.0;
      if (v42 != 1.79769313e308)
      {
        [features compositeScore];
      }

      v44 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
      [v6 setObject:v44 forKey:@"compositeScore"];

      if ([features isSingleThread])
      {
        v45 = &unk_1F55B6D68;
      }

      else
      {
        v45 = &unk_1F55B6D58;
      }

      [v6 setObject:v45 forKey:@"isSingleThread"];
      if ([features hasUsedDate])
      {
        v46 = &unk_1F55B6D68;
      }

      else
      {
        v46 = &unk_1F55B6D58;
      }

      [v6 setObject:v46 forKey:@"hasUsedDate"];
      if ([features isShortcut])
      {
        v47 = &unk_1F55B6D68;
      }

      else
      {
        v47 = &unk_1F55B6D58;
      }

      [v6 setObject:v47 forKey:@"isShortcut"];
      if ([features hasMultipleResults])
      {
        v48 = &unk_1F55B6D68;
      }

      else
      {
        v48 = &unk_1F55B6D58;
      }

      [v6 setObject:v48 forKey:@"hasMultipleResults"];
      goto LABEL_29;
    }
  }

LABEL_30:
  serverFeatures = [resultCopy serverFeatures];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v50 = [serverFeatures countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v80;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v80 != v52)
        {
          objc_enumerationMutation(serverFeatures);
        }

        v54 = *(*(&v79 + 1) + 8 * i);
        v55 = [serverFeatures objectForKeyedSubscript:v54];
        [v6 setObject:v55 forKey:v54];
      }

      v51 = [serverFeatures countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v51);
  }

  if (!v6 || ![v6 count])
  {
    v70 = &unk_1F55B6D58;
    goto LABEL_56;
  }

  v56 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  selfCopy = self;
  modelFeatureNames = [(SSBullseyeSuggestionsManager *)self modelFeatureNames];
  v58 = [modelFeatureNames countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v76;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v76 != v60)
        {
          objc_enumerationMutation(modelFeatureNames);
        }

        v62 = *(*(&v75 + 1) + 8 * j);
        v63 = [v6 objectForKey:v62];

        if (v63)
        {
          v64 = [v6 objectForKeyedSubscript:v62];
          [v56 setObject:v64 forKey:v62];
        }

        else
        {
          [v56 setObject:&unk_1F55B6D58 forKey:v62];
        }
      }

      v59 = [modelFeatureNames countByEnumeratingWithState:&v75 objects:v84 count:16];
    }

    while (v59);
  }

  blendingModel = [(SSBullseyeSuggestionsManager *)selfCopy blendingModel];
  v74 = 0;
  [blendingModel predictFromDictionaryFeatures:v56 error:&v74];
  v67 = v66;
  v68 = v74;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [SSBullseyeSuggestionsManager _getScoreForSuggestionResult:v56 options:v67];
    if (v68)
    {
      goto LABEL_51;
    }

LABEL_54:
    *&v69 = v67;
    v70 = [MEMORY[0x1E696AD98] numberWithFloat:v69];
    goto LABEL_55;
  }

  if (!v68)
  {
    goto LABEL_54;
  }

LABEL_51:
  v70 = &unk_1F55B6D58;
LABEL_55:

LABEL_56:
  v71 = *MEMORY[0x1E69E9840];

  return v70;
}

- (id)suggestionKeyWithCompletion:(id)completion
{
  v3 = SSNormalizedQueryString(completion);
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v5;
}

- (void)_filterSuggestionResultsWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters contactSuggestionResults:(id)results localSuggestionResults:(id)suggestionResults serverSuggestionResults:(id)serverSuggestionResults options:(id)self0
{
  v132 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  optionsCopy = options;
  v105 = objc_opt_new();
  v100 = objc_opt_new();
  v95 = objc_opt_new();
  v90 = contextCopy;
  searchString = [contextCopy searchString];
  v96 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:searchString];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = resultsCopy;
  v21 = [obj countByEnumeratingWithState:&v123 objects:v131 count:16];
  if (v21)
  {
    v22 = v21;
    v92 = 0;
    v23 = *v124;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v124 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v123 + 1) + 8 * i);
        completion = [v25 completion];
        v27 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion];

        if ((!contactFiltersCopy || ([contactFiltersCopy containsObject:v27] & 1) == 0) && (objc_msgSend(v95, "containsObject:", v27) & 1) == 0 && objc_msgSend(v27, "containsString:", v96))
        {
          v28 = v92;
          if (!v92)
          {
            v28 = objc_opt_new();
          }

          [v28 addObject:v25];
          [v95 addObject:v27];
          v92 = v28;
          if ([(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount]!= 0x7FFFFFFF)
          {
            v29 = [v28 count];
            if (v29 >= [(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount])
            {

              goto LABEL_19;
            }
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v123 objects:v131 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v92 = 0;
  }

LABEL_19:
  v99 = entityFiltersCopy;

  v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = [suggestionResultsCopy sortedArrayUsingComparator:&__block_literal_global_162];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v31 = suggestionResultsCopy;
  v32 = [v31 countByEnumeratingWithState:&v119 objects:v130 count:16];
  selfCopy = self;
  if (!v32)
  {
    v91 = 0;
    v35 = v100;
    goto LABEL_53;
  }

  v33 = v32;
  v91 = 0;
  v34 = *v120;
  v35 = v100;
  v103 = v31;
  do
  {
    v36 = 0;
    do
    {
      if (*v120 != v34)
      {
        objc_enumerationMutation(v103);
      }

      v37 = *(*(&v119 + 1) + 8 * v36);
      type = [v37 type];
      completion2 = [v37 completion];
      v40 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion2];

      if (type == 38 || type == 32)
      {
        if ((!contactFiltersCopy || ([contactFiltersCopy containsObject:v40] & 1) == 0) && (objc_msgSend(v35, "containsObject:", v40) & 1) == 0)
        {
          [v98 addObject:v37];
        }

        if (!v35)
        {
          v35 = objc_opt_new();
        }

        v41 = v35;
LABEL_33:
        [v41 addObject:v40];
        goto LABEL_34;
      }

      if (([v105 containsObject:v40] & 1) == 0)
      {
        if ([v40 isEqualToString:v96])
        {
          if (type == 34)
          {
            v42 = v37;

            v91 = v42;
          }
        }

        else if (!contactFiltersCopy || ([contactFiltersCopy containsObject:v40] & 1) == 0)
        {
          if (type != 31 && type != 16)
          {
            goto LABEL_46;
          }

          localSuggestionThreshold = [(SSBullseyeSuggestionsManager *)self localSuggestionThreshold];
          if (!localSuggestionThreshold)
          {
            goto LABEL_46;
          }

          v44 = localSuggestionThreshold;
          v45 = MEMORY[0x1E696AD98];
          [v37 rankingScore];
          v46 = [v45 numberWithDouble:?];
          [(SSBullseyeSuggestionsManager *)self localSuggestionThreshold];
          v48 = v47 = v35;
          v101 = [v46 compare:v48];

          v35 = v47;
          self = selfCopy;

          if (v101 == -1)
          {
LABEL_46:
            [v98 addObject:v37];
          }

          v41 = v105;
          if (!v105)
          {
            v41 = objc_opt_new();
          }

          v105 = v41;
          goto LABEL_33;
        }
      }

LABEL_34:

      ++v36;
    }

    while (v33 != v36);
    v31 = v103;
    v49 = [v103 countByEnumeratingWithState:&v119 objects:v130 count:16];
    v33 = v49;
  }

  while (v49);
LABEL_53:

  [v31 removeAllObjects];
  [v31 addObjectsFromArray:v98];
  v50 = v35;
  if (![v35 count])
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v51 = v92;
    v52 = [v51 countByEnumeratingWithState:&v115 objects:v129 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v116;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v116 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v115 + 1) + 8 * j);
          completion3 = [v56 completion];
          v58 = [(SSBullseyeSuggestionsManager *)selfCopy suggestionKeyWithCompletion:completion3];

          v35 = v50;
          if (([v50 containsObject:v58] & 1) == 0)
          {
            [v31 addObject:v56];
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v115 objects:v129 count:16];
      }

      while (v53);
    }
  }

  [v98 removeAllObjects];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v104 = v31;
  v59 = [v104 countByEnumeratingWithState:&v111 objects:v128 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v112;
    do
    {
      for (k = 0; k != v60; ++k)
      {
        if (*v112 != v61)
        {
          objc_enumerationMutation(v104);
        }

        v63 = *(*(&v111 + 1) + 8 * k);
        if (!_os_feature_enabled_impl() || [v63 type] != 32 && objc_msgSend(v63, "type") != 38)
        {
          if ([v63 type] == 32 || objc_msgSend(v63, "type") == 38)
          {
            [v98 addObject:v63];
          }

          else
          {
            completion4 = [v63 completion];
            v65 = [(SSBullseyeSuggestionsManager *)selfCopy suggestionKeyWithCompletion:completion4];

            v35 = v50;
            if (([v50 containsObject:v65] & 1) == 0)
            {
              [v98 addObject:v63];
            }
          }
        }
      }

      v60 = [v104 countByEnumeratingWithState:&v111 objects:v128 count:16];
    }

    while (v60);
  }

  [v104 removeAllObjects];
  [v104 addObjectsFromArray:v98];
  v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v102 = serverSuggestionResultsCopy;
  v66 = [v102 countByEnumeratingWithState:&v107 objects:v127 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = 0;
    v69 = *v108;
    v70 = v99;
    do
    {
      for (m = 0; m != v67; ++m)
      {
        if (*v108 != v69)
        {
          objc_enumerationMutation(v102);
        }

        v72 = *(*(&v107 + 1) + 8 * m);
        if ([v72 type] == 29)
        {
          v73 = v72;

          v68 = v73;
        }

        else
        {
          serverSuggestionThreshold = [(SSBullseyeSuggestionsManager *)selfCopy serverSuggestionThreshold];
          if (!serverSuggestionThreshold)
          {
            goto LABEL_89;
          }

          v75 = serverSuggestionThreshold;
          v76 = MEMORY[0x1E696AD98];
          [v72 rankingScore];
          v77 = [v76 numberWithDouble:?];
          serverSuggestionThreshold2 = [(SSBullseyeSuggestionsManager *)selfCopy serverSuggestionThreshold];
          v79 = [v77 compare:serverSuggestionThreshold2];

          v80 = v79 == 1;
          v70 = v99;
          if (!v80)
          {
LABEL_89:
            entityIdentifier = [v72 entityIdentifier];

            if (entityIdentifier)
            {
              if (![v70 count] || (objc_msgSend(v72, "entityIdentifier"), v82 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend(v70, "containsObject:", v82), v82, (v83 & 1) == 0))
              {
                [v94 addObject:v72];
              }
            }

            else
            {
              completion5 = [v72 completion];
              v85 = [(SSBullseyeSuggestionsManager *)selfCopy suggestionKeyWithCompletion:completion5];

              if (([v105 containsObject:v85] & 1) == 0)
              {
                [v94 addObject:v72];
              }
            }
          }
        }

        v35 = v50;
      }

      v67 = [v102 countByEnumeratingWithState:&v107 objects:v127 count:16];
    }

    while (v67);
  }

  else
  {
    v68 = 0;
    v70 = v99;
  }

  [v102 removeAllObjects];
  [v102 addObjectsFromArray:v94];
  if (!v68 && v91)
  {
    [v104 addObject:v91];
  }

  v86 = *MEMORY[0x1E69E9840];
}

- (id)_rankedSuggestionsResultsWithQueryContext:(id)context serverSuggestionResults:(id)results localSuggestionResults:(id)suggestionResults options:(id)options
{
  v40 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  optionsCopy = options;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = resultsCopy;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v19 = [(SSBullseyeSuggestionsManager *)self _getScoreForSuggestionResult:v18 options:optionsCopy];
        [v12 setObject:v19 forKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v15);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = suggestionResultsCopy;
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * j);
        v26 = [(SSBullseyeSuggestionsManager *)self _getScoreForSuggestionResult:v25 options:optionsCopy, v30];
        [v12 setObject:v26 forKey:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v22);
  }

  v27 = [v12 keysSortedByValueUsingComparator:&__block_literal_global_165];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

uint64_t __129__SSBullseyeSuggestionsManager__rankedSuggestionsResultsWithQueryContext_serverSuggestionResults_localSuggestionResults_options___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 compare:?] == -1)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)release2023_blendingWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4
{
  v89 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  suggestionCopy = suggestion;
  webSuggestionCopy = webSuggestion;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  contactSuggestionResultsCopy = contactSuggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  localSuggestionResultsCopy = localSuggestionResults;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v27 = objc_autoreleasePoolPush();
  v68 = optionsCopy;
  if ([contactSuggestionResultsCopy count] || objc_msgSend(localSuggestionResultsCopy, "count") || objc_msgSend(serverSuggestionResultsCopy, "count") || objc_msgSend(resultsCopy, "count") || objc_msgSend(suggestionResultsCopy, "count"))
  {
    context = v27;
    v66 = webSuggestionCopy;
    v67 = suggestionCopy;
    v28 = webSuggestionCopy;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v64 = serverSuggestionResultsCopy;
    v29 = serverSuggestionResultsCopy;
    v30 = [v29 countByEnumeratingWithState:&v82 objects:v88 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = localSuggestionResultsCopy;
      v33 = *v83;
LABEL_8:
      v34 = 0;
      while (1)
      {
        if (*v83 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v82 + 1) + 8 * v34);
        if ([v35 type] == 29)
        {
          break;
        }

        if (v31 == ++v34)
        {
          v31 = [v29 countByEnumeratingWithState:&v82 objects:v88 count:16];
          if (v31)
          {
            goto LABEL_8;
          }

          v62 = 0;
          v36 = v29;
          goto LABEL_17;
        }
      }

      v37 = v35;

      if (v37)
      {
        v38 = v37;
        v36 = v28;
        v62 = v38;
        v28 = v38;
LABEL_17:
        localSuggestionResultsCopy = v32;
        optionsCopy = v68;
        v39 = contextCopy;
        goto LABEL_19;
      }

      v62 = 0;
      localSuggestionResultsCopy = v32;
      optionsCopy = v68;
      v39 = contextCopy;
    }

    else
    {
      v62 = 0;
      v36 = v29;
      v39 = contextCopy;
LABEL_19:
    }

    if ([localSuggestionResultsCopy count])
    {
      v40 = [localSuggestionResultsCopy mutableCopy];
    }

    else
    {
      v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v41 = v40;
    if ([v29 count])
    {
      v42 = [v29 mutableCopy];
    }

    else
    {
      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v43 = v42;
    v65 = contactSuggestionResultsCopy;
    [(SSBullseyeSuggestionsManager *)self _filterSuggestionResultsWithQueryContext:v39 filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy contactSuggestionResults:contactSuggestionResultsCopy localSuggestionResults:v41 serverSuggestionResults:v42 options:optionsCopy];
    if (v28 && ([v43 containsObject:v28] & 1) == 0)
    {
      [v43 addObject:v28];
    }

    v71 = [(SSBullseyeSuggestionsManager *)self _rankedSuggestionsResultsWithQueryContext:v39 serverSuggestionResults:v43 localSuggestionResults:v41 options:optionsCopy];
    if (![(SSBullseyeSuggestionsManager *)self enabledAboveFoldResults])
    {
      goto LABEL_34;
    }

    v44 = [optionsCopy objectForKeyedSubscript:@"ForceAboveFoldResults"];
    if (!v44)
    {
      goto LABEL_34;
    }

    v45 = v44;
    [optionsCopy objectForKeyedSubscript:@"ForceAboveFoldResults"];
    v47 = v46 = suggestionResultsCopy;
    bOOLValue = [v47 BOOLValue];

    suggestionResultsCopy = v46;
    if (bOOLValue)
    {
      maxTotalSuggestionCountForAboveFoldResults = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCountForAboveFoldResults];
    }

    else
    {
LABEL_34:
      maxTotalSuggestionCountForAboveFoldResults = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    }

    v50 = maxTotalSuggestionCountForAboveFoldResults;
    v51 = resultsCopy;
    if ([suggestionResultsCopy count])
    {
      memset(v81, 0, sizeof(v81));
      if ([suggestionResultsCopy countByEnumeratingWithState:v81 objects:v87 count:16])
      {
        if (v50)
        {
          [array addObject:**(&v81[0] + 1)];
          if (v50 != 0x7FFFFFFF)
          {
            --v50;
          }
        }
      }
    }

    if ([resultsCopy count])
    {
      v61 = localSuggestionResultsCopy;
      v73 = suggestionResultsCopy;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v52 = resultsCopy;
      v53 = [v52 countByEnumeratingWithState:&v77 objects:v86 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v78;
LABEL_43:
        v56 = 0;
        while (1)
        {
          if (*v78 != v55)
          {
            objc_enumerationMutation(v52);
          }

          if (!v50)
          {
            break;
          }

          [array addObject:*(*(&v77 + 1) + 8 * v56)];
          if (v50 != 0x7FFFFFFF)
          {
            --v50;
          }

          if (v54 == ++v56)
          {
            v54 = [v52 countByEnumeratingWithState:&v77 objects:v86 count:16];
            if (v54)
            {
              goto LABEL_43;
            }

            break;
          }
        }
      }

      v39 = contextCopy;
      v51 = resultsCopy;
      suggestionResultsCopy = v73;
      localSuggestionResultsCopy = v61;
    }

    [array addObjectsFromArray:v71];
    if (v50 != 0x7FFFFFFF)
    {
      while ([array count] > v50)
      {
        [array removeLastObject];
      }
    }

    if (v28 && ([array containsObject:v28] & 1) == 0)
    {
      if (v50 != 0x7FFFFFFF && [array count] >= v50)
      {
        [array removeLastObject];
      }

      [array insertObject:v28 atIndex:0];
    }

    objc_autoreleasePoolPop(context);
    v57 = array;
    webSuggestionCopy = v66;
    suggestionCopy = v67;
    serverSuggestionResultsCopy = v64;
    contactSuggestionResultsCopy = v65;
  }

  else
  {
    if (suggestionCopy)
    {
      [array addObject:suggestionCopy];
    }

    v39 = contextCopy;
    v51 = resultsCopy;
    if (webSuggestionCopy)
    {
      [array addObject:webSuggestionCopy];
    }

    v60 = array;
    objc_autoreleasePoolPop(v27);
  }

  v58 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)release2023_blendingByPolicyWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion actionSuggestionResults:(id)results contactSuggestionResults:(id)self0 serverSuggestionResults:(id)self1 localSuggestionResults:(id)self2 options:(id)self3
{
  v153 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  suggestionCopy = suggestion;
  webSuggestionCopy = webSuggestion;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  localSuggestionResultsCopy = localSuggestionResults;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v27 = objc_autoreleasePoolPush();
  v28 = suggestionCopy;
  v124 = webSuggestionCopy;
  if ([suggestionResultsCopy count] || objc_msgSend(localSuggestionResultsCopy, "count") || objc_msgSend(serverSuggestionResultsCopy, "count") || objc_msgSend(resultsCopy, "count"))
  {
    context = v27;
    v111 = v28;
    if ([localSuggestionResultsCopy count])
    {
      v29 = [localSuggestionResultsCopy mutableCopy];
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v30 = v29;
    v112 = localSuggestionResultsCopy;
    v113 = serverSuggestionResultsCopy;
    if ([serverSuggestionResultsCopy count])
    {
      v31 = [serverSuggestionResultsCopy mutableCopy];
    }

    else
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v32 = v31;
    [(SSBullseyeSuggestionsManager *)self _filterSuggestionResultsWithQueryContext:contextCopy filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy contactSuggestionResults:suggestionResultsCopy localSuggestionResults:v30 serverSuggestionResults:v31 options:optionsCopy];
    v33 = [(SSBullseyeSuggestionsManager *)self _rankedSuggestionsResultsWithQueryContext:contextCopy serverSuggestionResults:v32 localSuggestionResults:v30 options:optionsCopy];
    v118 = v33;
    if ([v33 count])
    {
      firstObject = [v33 firstObject];
      v35 = v124;
      v109 = [firstObject type] == 28 || objc_msgSend(firstObject, "type") == 29 || objc_msgSend(firstObject, "type") == 17;
    }

    else
    {
      v109 = 0;
      v35 = v124;
    }

    v36 = v35;
    v119 = optionsCopy;
    v120 = resultsCopy;
    if ([v32 count])
    {
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v37 = v32;
      v38 = [v37 countByEnumeratingWithState:&v144 objects:v152 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = filtersCopy;
        v41 = *v145;
LABEL_21:
        v42 = 0;
        while (1)
        {
          if (*v145 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v144 + 1) + 8 * v42);
          if ([v43 type] == 29)
          {
            break;
          }

          if (v39 == ++v42)
          {
            v39 = [v37 countByEnumeratingWithState:&v144 objects:v152 count:16];
            if (v39)
            {
              goto LABEL_21;
            }

            v44 = v124;
            filtersCopy = v40;
            optionsCopy = v119;
            resultsCopy = v120;
            goto LABEL_31;
          }
        }

        v45 = v43;

        v36 = v124;
        filtersCopy = v40;
        optionsCopy = v119;
        resultsCopy = v120;
        if (!v45)
        {
          goto LABEL_32;
        }

        v37 = v45;

        v44 = v37;
      }

      else
      {
        v44 = v35;
      }

LABEL_31:

      v36 = v44;
    }

LABEL_32:
    v115 = filtersCopy;
    if (![(SSBullseyeSuggestionsManager *)self enabledAboveFoldResults])
    {
      goto LABEL_36;
    }

    v46 = v36;
    v47 = [optionsCopy objectForKeyedSubscript:@"ForceAboveFoldResults"];
    if (!v47)
    {
      goto LABEL_36;
    }

    v48 = v47;
    v49 = [optionsCopy objectForKeyedSubscript:@"ForceAboveFoldResults"];
    bOOLValue = [v49 BOOLValue];

    v36 = v46;
    if (bOOLValue)
    {
      maxTotalSuggestionCountForAboveFoldResults = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCountForAboveFoldResults];
    }

    else
    {
LABEL_36:
      maxTotalSuggestionCountForAboveFoldResults = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    }

    v143 = maxTotalSuggestionCountForAboveFoldResults;
    if (v36)
    {
      [v32 removeObject:v36];
      [array addObject:v36];
      if (v143 != 0x7FFFFFFF)
      {
        --v143;
      }
    }

    v117 = v36;
    v52 = [v30 count];
    v53 = [resultsCopy count];
    v54 = [v32 count];
    maxLocalSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount];
    maxServerSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxServerSuggestionCount];
    if ([resultsCopy count])
    {
      memset(v140, 0, sizeof(v140));
      v55 = resultsCopy;
      if ([v55 countByEnumeratingWithState:v140 objects:v151 count:16])
      {
        if (v143)
        {
          [array addObject:**(&v140[0] + 1)];
          if (v143 != 0x7FFFFFFF)
          {
            --v143;
          }
        }
      }
    }

    v114 = suggestionResultsCopy;
    v127 = array;
    SSSplitCounts(v53 + v52, maxLocalSuggestionCount, 0, v54, maxServerSuggestionCount, 0, v143, &maxLocalSuggestionCount, &maxServerSuggestionCount, &v143);
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v125 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v58 = v32;
    v59 = [v58 countByEnumeratingWithState:&v136 objects:v150 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v137;
LABEL_48:
      v62 = 0;
      while (1)
      {
        if (*v137 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v136 + 1) + 8 * v62);
        v64 = [v56 count];
        if (v64 >= maxServerSuggestionCount)
        {
          break;
        }

        [v56 addObject:v63];
        if (v60 == ++v62)
        {
          v60 = [v58 countByEnumeratingWithState:&v136 objects:v150 count:16];
          if (v60)
          {
            goto LABEL_48;
          }

          break;
        }
      }
    }

    v108 = v58;

    [v30 sortUsingComparator:&__block_literal_global_170];
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v65 = v30;
    v66 = [v65 countByEnumeratingWithState:&v132 objects:v149 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = 0;
      v69 = 0;
      v70 = *v133;
      v71 = v125;
      while (1)
      {
        v72 = 0;
        do
        {
          if (*v133 != v70)
          {
            objc_enumerationMutation(v65);
          }

          v73 = *(*(&v132 + 1) + 8 * v72);
          type = [v73 type];
          if (type == 38 || type == 32)
          {
            v75 = v57;
LABEL_62:
            [v75 addObject:v73];
            goto LABEL_63;
          }

          if (v68 || type != 35)
          {
            if (v69 || type != 34)
            {
              v75 = v125;
              goto LABEL_62;
            }

            v69 = v73;
          }

          else
          {
            v68 = v73;
          }

LABEL_63:
          ++v72;
        }

        while (v67 != v72);
        v76 = [v65 countByEnumeratingWithState:&v132 objects:v149 count:16];
        v67 = v76;
        if (!v76)
        {
          goto LABEL_75;
        }
      }
    }

    v68 = 0;
    v69 = 0;
    v71 = v125;
LABEL_75:
    v116 = v56;

    array = v127;
    v77 = [v127 count];
    [v57 sortUsingComparator:&__block_literal_global_172];
    do
    {
      if (![v57 count])
      {
        break;
      }

      v78 = [v127 count];
      if (v78 >= v143)
      {
        break;
      }

      v79 = [v127 count] - v77;
      if (v79 > maxLocalSuggestionCount)
      {
        break;
      }

      firstObject2 = [v57 firstObject];
      [v127 addObject:firstObject2];
      [v57 removeObject:firstObject2];
      if (maxLocalSuggestionCount != 0x7FFFFFFF)
      {
        --maxLocalSuggestionCount;
      }

      v81 = [v71 count];

      if (v81)
      {
        break;
      }
    }

    while (!v68 && !v69);
    if (v68 && (v82 = [v127 count], v82 < v143))
    {
      v83 = [v127 count];
      v84 = maxLocalSuggestionCount;
      v85 = v83 - v77 < maxLocalSuggestionCount;
      v86 = v120;
      v87 = v117;
      if (v85)
      {
        [v127 addObject:v68];
        v88 = v125;
        if (maxLocalSuggestionCount == 0x7FFFFFFF)
        {
LABEL_94:
          if (v69 && [v88 count] && (objc_msgSend(v88, "containsObject:", v69) & 1) == 0)
          {
            [v88 removeLastObject];
            [v88 addObject:v69];
          }

          v90 = v118;
          if (!v109 || (v91 = [v57 count], v68) || v91)
          {
            v102 = v86;
            v101 = v125;
            [v127 addObjectsFromArray:v125];
            v103 = v116;
            [v127 addObjectsFromArray:v116];
          }

          else if ([v125 count])
          {
            v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            v131 = 0u;
            v93 = v116;
            v94 = [v93 countByEnumeratingWithState:&v128 objects:v148 count:16];
            if (v94)
            {
              v95 = v94;
              v96 = *v129;
              do
              {
                for (i = 0; i != v95; ++i)
                {
                  if (*v129 != v96)
                  {
                    objc_enumerationMutation(v93);
                  }

                  v98 = *(*(&v128 + 1) + 8 * i);
                  type2 = [v98 type];
                  v100 = v92;
                  if (type2 != 28)
                  {
                    if ([v98 type] == 29)
                    {
                      v100 = v92;
                    }

                    else
                    {
                      v100 = v127;
                    }
                  }

                  [v100 addObject:v98];
                }

                v95 = [v93 countByEnumeratingWithState:&v128 objects:v148 count:16];
              }

              while (v95);
            }

            v101 = v125;
            array = v127;
            [v127 addObjectsFromArray:v125];
            [v127 addObjectsFromArray:v92];

            v102 = v120;
            v87 = v117;
            v90 = v118;
            v103 = v116;
          }

          else
          {
            v102 = v86;
            v103 = v116;
            [v127 addObjectsFromArray:v116];
            v101 = v125;
          }

          v28 = v111;
          objc_autoreleasePoolPop(context);
          v104 = array;
          suggestionResultsCopy = v114;
          filtersCopy = v115;
          localSuggestionResultsCopy = v112;
          serverSuggestionResultsCopy = v113;
          resultsCopy = v102;
          optionsCopy = v119;
          goto LABEL_116;
        }

        v84 = --maxLocalSuggestionCount;
      }
    }

    else
    {
      v84 = maxLocalSuggestionCount;
      v86 = v120;
      v87 = v117;
    }

    v88 = v125;
    if (v84 != 0x7FFFFFFF)
    {
      do
      {
        v89 = [v125 count];
        if (v89 <= maxLocalSuggestionCount)
        {
          break;
        }

        [v125 removeLastObject];
      }

      while (maxLocalSuggestionCount != 0x7FFFFFFF);
    }

    goto LABEL_94;
  }

  if (v124)
  {
    [array addObject:?];
  }

  if (v28)
  {
    [array addObject:v28];
  }

  v107 = array;

  objc_autoreleasePoolPop(v27);
LABEL_116:

  v105 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)release2022_blendingByPolicyWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4
{
  v266 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  suggestionCopy = suggestion;
  webSuggestionCopy = webSuggestion;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  contactSuggestionResultsCopy = contactSuggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  localSuggestionResultsCopy = localSuggestionResults;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  searchString = [contextCopy searchString];
  v224 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:searchString];

  v28 = suggestionCopy;
  v199 = webSuggestionCopy;
  v207 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v210 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v200 = contactSuggestionResultsCopy;
  if ([contactSuggestionResultsCopy count] || objc_msgSend(localSuggestionResultsCopy, "count") || objc_msgSend(serverSuggestionResultsCopy, "count") || objc_msgSend(resultsCopy, "count") || objc_msgSend(suggestionResultsCopy, "count"))
  {
    v197 = v28;
    v215 = objc_opt_new();
    v222 = objc_opt_new();
    v209 = objc_opt_new();
    v208 = objc_opt_new();
    v213 = objc_opt_new();
    maxTotalSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    maxLocalSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount];
    maxServerSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxServerSuggestionCount];
    v30 = optionsCopy;
    if (optionsCopy)
    {
      v31 = [optionsCopy objectForKeyedSubscript:@"localDisplayPosition"];
      if (v31)
      {
        v32 = [optionsCopy objectForKeyedSubscript:@"localDisplayPosition"];
        intValue = [v32 intValue];

        v30 = optionsCopy;
      }

      else
      {
        intValue = [(SSBullseyeSuggestionsManager *)self localDisplayPosition];
      }

      v33 = [v30 objectForKeyedSubscript:@"localThreshold"];
      if (v33)
      {
        v34 = v33;
        localSuggestionThreshold = [v30 objectForKeyedSubscript:@"localThreshold"];

LABEL_14:
        v36 = [v30 objectForKeyedSubscript:@"serverThreshold"];
        if (v36)
        {
          v37 = v36;
          v216 = [v30 objectForKeyedSubscript:@"serverThreshold"];

          goto LABEL_17;
        }

LABEL_16:
        serverSuggestionThreshold = [(SSBullseyeSuggestionsManager *)self serverSuggestionThreshold];

        v216 = serverSuggestionThreshold;
        if (!v30)
        {
          ignoreMaxCount = [(SSBullseyeSuggestionsManager *)self ignoreMaxCount];
          bOOLValue = 0;
          v203 = 0;
          v196 = 0;
          v188 = 0;
          LOBYTE(v185) = 1;
          v47 = v197;
LABEL_39:
          v214 = localSuggestionThreshold;
          v193 = filtersCopy;
          v194 = array;
          v195 = contextCopy;
          v198 = resultsCopy;
          v52 = [resultsCopy count];
          v53 = maxTotalSuggestionCount - v52;
          if (maxTotalSuggestionCount < v52)
          {
            v53 = 0;
          }

          if (v52)
          {
            v54 = maxTotalSuggestionCount == 0x7FFFFFFF;
          }

          else
          {
            v54 = 1;
          }

          if (v54)
          {
            v53 = maxTotalSuggestionCount;
          }

          v186 = v52;
          v187 = v53;
          array2 = [MEMORY[0x1E695DF70] array];
          array3 = [MEMORY[0x1E695DF70] array];
          v226 = objc_opt_new();
          v229 = objc_opt_new();
          v218 = objc_opt_new();
          v206 = objc_opt_new();
          v256 = 0u;
          v257 = 0u;
          v258 = 0u;
          v259 = 0u;
          v55 = serverSuggestionResultsCopy;
          v56 = [v55 countByEnumeratingWithState:&v256 objects:v265 count:16];
          if (!v56)
          {
            v227 = 0;
            v225 = v199;
            v221 = v47;
            v59 = v215;
            goto LABEL_79;
          }

          v57 = v56;
          v227 = 0;
          v58 = *v257;
          v225 = v199;
          v221 = v47;
          v59 = v215;
          while (1)
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v257 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v61 = *(*(&v256 + 1) + 8 * i);
              type = [v61 type];
              completion = [v61 completion];
              v64 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion];

              if (type > 27)
              {
                switch(type)
                {
                  case 30:
                    v66 = v61;

                    v221 = v66;
                    break;
                  case 29:
                    goto LABEL_58;
                  case 28:
                    if ([v64 isEqualToString:v224])
                    {
                      [v61 setType:29];
LABEL_58:
                      v65 = v61;

                      [array3 addObject:v65];
                      v227 |= [v59 count] == 0;
                      v225 = v65;
                    }

                    else
                    {
                      [array3 addObject:v61];
                      v227 |= [v59 count] == 0;
                    }

                    break;
                }

LABEL_74:
                [v59 addObject:v61];
                goto LABEL_75;
              }

              if (type != 17)
              {
                if (type == 27)
                {
                  goto LABEL_75;
                }

                goto LABEL_74;
              }

              if (!v216 || (v67 = MEMORY[0x1E696AD98], [v61 rankingScore], objc_msgSend(v67, "numberWithDouble:"), v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "compare:", v216), v68, v69 != -1))
              {
                entityIdentifier = [v61 entityIdentifier];
                v71 = entityIdentifier;
                if (entityFiltersCopy && entityIdentifier)
                {
                  entityIdentifier2 = [v61 entityIdentifier];
                  v73 = [entityFiltersCopy containsObject:entityIdentifier2];

                  if (v73)
                  {
                    v59 = v215;
                    goto LABEL_75;
                  }
                }

                else
                {
                }

                entityIdentifier3 = [v61 entityIdentifier];

                if (entityIdentifier3)
                {
                  [v213 addObject:v64];
                }

                [v226 addObject:v64];
                [array2 addObject:v61];
                v59 = v215;
                goto LABEL_74;
              }

LABEL_75:
            }

            v57 = [v55 countByEnumeratingWithState:&v256 objects:v265 count:16];
            if (!v57)
            {
LABEL_79:

              if (v225 && ([v59 containsObject:v225] & 1) == 0)
              {
                [v59 addObject:v225];
                [array3 addObject:v225];
              }

              v252 = 0u;
              v253 = 0u;
              v184 = [v59 count] != 1;
              v254 = 0u;
              v255 = 0u;
              v75 = v200;
              v76 = [v75 countByEnumeratingWithState:&v252 objects:v264 count:16];
              if (v76)
              {
                v77 = v76;
                v78 = *v253;
                do
                {
                  for (j = 0; j != v77; ++j)
                  {
                    if (*v253 != v78)
                    {
                      objc_enumerationMutation(v75);
                    }

                    v80 = *(*(&v252 + 1) + 8 * j);
                    completion2 = [v80 completion];
                    v82 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion2];

                    if ((!contactFiltersCopy || ([contactFiltersCopy containsObject:v82] & 1) == 0) && (objc_msgSend(v218, "containsObject:", v82) & 1) == 0)
                    {
                      if ([v82 containsString:v224])
                      {
                        [v208 addObject:v80];
                        [v218 addObject:v82];
                        if (maxLocalSuggestionCount != 0x7FFFFFFF && [v208 count] >= maxLocalSuggestionCount)
                        {

                          goto LABEL_97;
                        }
                      }
                    }
                  }

                  v77 = [v75 countByEnumeratingWithState:&v252 objects:v264 count:16];
                }

                while (v77);
              }

LABEL_97:

              v250 = 0u;
              v251 = 0u;
              v248 = 0u;
              v249 = 0u;
              v83 = localSuggestionResultsCopy;
              v84 = [v83 countByEnumeratingWithState:&v248 objects:v263 count:16];
              if (!v84)
              {
                v219 = 0;
                goto LABEL_138;
              }

              v85 = v84;
              v219 = 0;
              v86 = *v249;
              while (2)
              {
                v87 = 0;
LABEL_100:
                if (*v249 != v86)
                {
                  objc_enumerationMutation(v83);
                }

                v88 = *(*(&v248 + 1) + 8 * v87);
                type2 = [v88 type];
                completion3 = [v88 completion];
                v91 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion3];

                if (type2 <= 34)
                {
                  if (type2 == 32)
                  {
                    goto LABEL_113;
                  }

                  if (type2 != 34)
                  {
                    goto LABEL_122;
                  }

                  searchString2 = [v195 searchString];
                  if (searchString2)
                  {
                    v93 = searchString2;
                    v94 = [v91 isEqualToString:v224];

                    if (v94)
                    {
                      goto LABEL_134;
                    }
                  }

                  if ([v226 containsObject:v91])
                  {
                    goto LABEL_134;
                  }

                  v95 = v207;
                }

                else
                {
                  if (type2 == 35)
                  {
                    v98 = v88;

                    [v222 addObject:v98];
                    v219 = v98;
                    goto LABEL_134;
                  }

                  if (type2 != 39)
                  {
                    if (type2 != 38)
                    {
LABEL_122:
                      if (!contactFiltersCopy || ([contactFiltersCopy containsObject:v91] & 1) == 0)
                      {
                        if (!v214 || (v100 = MEMORY[0x1E696AD98], [v88 rankingScore], objc_msgSend(v100, "numberWithDouble:"), v101 = objc_claimAutoreleasedReturnValue(), v102 = objc_msgSend(v101, "compare:", v214), v101, v102 != -1))
                        {
                          if ((![v226 containsObject:v91] || objc_msgSend(v213, "containsObject:", v91)) && (objc_msgSend(v229, "containsObject:", v91) & 1) == 0)
                          {
                            if ([v218 containsObject:v91])
                            {
                              [v206 addObject:v88];
                            }

                            [v222 addObject:v88];
                            v97 = v226;
LABEL_132:
                            v99 = v91;
LABEL_133:
                            [v97 addObject:v99];
                          }
                        }
                      }

LABEL_134:

                      if (v85 == ++v87)
                      {
                        v85 = [v83 countByEnumeratingWithState:&v248 objects:v263 count:16];
                        if (!v85)
                        {
LABEL_138:

                          v103 = suggestionResultsCopy;
                          v105 = v214;
                          v104 = v215;
                          if (![v209 count])
                          {
                            v246 = 0u;
                            v247 = 0u;
                            v244 = 0u;
                            v245 = 0u;
                            v106 = v208;
                            v107 = [v106 countByEnumeratingWithState:&v244 objects:v262 count:16];
                            if (v107)
                            {
                              v108 = v107;
                              v109 = *v245;
                              do
                              {
                                for (k = 0; k != v108; ++k)
                                {
                                  if (*v245 != v109)
                                  {
                                    objc_enumerationMutation(v106);
                                  }

                                  v111 = *(*(&v244 + 1) + 8 * k);
                                  completion4 = [v111 completion];
                                  v113 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion4];

                                  if (([v229 containsObject:v113] & 1) == 0)
                                  {
                                    [v209 addObject:v111];
                                  }
                                }

                                v108 = [v106 countByEnumeratingWithState:&v244 objects:v262 count:16];
                              }

                              while (v108);
                            }

                            v242 = 0u;
                            v243 = 0u;
                            v240 = 0u;
                            v241 = 0u;
                            v114 = v206;
                            v115 = [v114 countByEnumeratingWithState:&v240 objects:v261 count:16];
                            v103 = suggestionResultsCopy;
                            v105 = v214;
                            if (v115)
                            {
                              v116 = v115;
                              v117 = *v241;
                              do
                              {
                                for (m = 0; m != v116; ++m)
                                {
                                  if (*v241 != v117)
                                  {
                                    objc_enumerationMutation(v114);
                                  }

                                  [v222 removeObject:*(*(&v240 + 1) + 8 * m)];
                                }

                                v116 = [v114 countByEnumeratingWithState:&v240 objects:v261 count:16];
                              }

                              while (v116);
                            }

                            v104 = v215;
                          }

                          v119 = [v222 sortedArrayUsingComparator:&__block_literal_global_186];
                          v120 = [v119 mutableCopy];

                          array = v194;
                          if (v209)
                          {
                            v121 = [v209 count];
                          }

                          else
                          {
                            v121 = 0;
                          }

                          if (v120)
                          {
                            v122 = [v120 count];
                            if (v104)
                            {
                              goto LABEL_161;
                            }

LABEL_163:
                            v123 = 0;
                          }

                          else
                          {
                            v122 = 0;
                            if (!v104)
                            {
                              goto LABEL_163;
                            }

LABEL_161:
                            v123 = [v104 count];
                          }

                          v238 = maxLocalSuggestionCount;
                          v239 = v187;
                          v124 = maxServerSuggestionCount;
                          v237 = maxServerSuggestionCount;
                          if (ignoreMaxCount)
                          {
                            v125 = maxLocalSuggestionCount;
                            if (v123 < 2)
                            {
                              v125 = v187;
                            }

                            maxLocalSuggestionCount = v125;
                            if (!(v121 | v122))
                            {
                              v124 = v187;
                            }
                          }

                          if (v187 != 0x7FFFFFFF)
                          {
                            if (v221)
                            {
                              v126 = bOOLValue;
                            }

                            else
                            {
                              v126 = 0;
                            }

                            SSSplitCounts(v122 + v121, maxLocalSuggestionCount, v126, v123, v124, 0, v187, &v238, &v237, &v239);
                          }

                          v127 = intValue;
                          if (!intValue)
                          {
                            v127 = v188;
                          }

                          v223 = v127;
                          if (v221)
                          {
                            v128 = bOOLValue;
                          }

                          else
                          {
                            v128 = 0;
                          }

                          if (v128 == 1)
                          {
                            [v194 addObject:v221];
                          }

                          array4 = [MEMORY[0x1E695DF70] array];
                          v130 = array4;
                          if (v239 == 0x7FFFFFFF)
                          {
                            [array4 addObjectsFromArray:v215];
                          }

                          else if ([v215 count])
                          {
                            if (v185)
                            {
                              v131 = v184 & v227;
                              v235 = 0;
                              v236 = 0;
                              if ([array3 count] == 1)
                              {
                                v132 = [array3 count];
                                v133 = [array2 count];
                                SSSplitCounts(v132, 0x7FFFFFFFLL, 0, v133, 0x7FFFFFFFLL, 0, v237, &v235, &v236, 0);
                              }

                              else
                              {
                                v135 = [array2 count];
                                v136 = [array3 count];
                                SSSplitCounts(v135, 0x7FFFFFFFLL, 0, v136, 0x7FFFFFFFLL, 0, v237, &v236, &v235, 0);
                              }

                              v134 = getFilteredSuggestionResults(array3, v235);
                              v137 = getFilteredSuggestionResults(array2, v236);
                              v138 = v137;
                              v139 = v131 == 0;
                              if (v131)
                              {
                                v140 = v134;
                              }

                              else
                              {
                                v140 = v137;
                              }

                              if (v131)
                              {
                                v141 = v137;
                              }

                              else
                              {
                                v141 = v134;
                              }

                              v142 = v223;
                              if (!v139)
                              {
                                v142 = 1;
                              }

                              v223 = v142;
                              [v130 addObjectsFromArray:v140];
                              [v130 addObjectsFromArray:v141];
                            }

                            else
                            {
                              v134 = getFilteredSuggestionResults(v215, v237);
                              [v130 addObjectsFromArray:v134];
                            }
                          }

                          array5 = [MEMORY[0x1E695DF70] array];
                          if ([v209 count])
                          {
                            v233 = 0u;
                            v234 = 0u;
                            v231 = 0u;
                            v232 = 0u;
                            v144 = v209;
                            v145 = [v144 countByEnumeratingWithState:&v231 objects:v260 count:16];
                            if (v145)
                            {
                              v146 = v145;
                              v147 = 0;
                              v148 = *v232;
LABEL_202:
                              v149 = 0;
                              v150 = v147;
                              v147 += v146;
                              while (1)
                              {
                                if (*v232 != v148)
                                {
                                  objc_enumerationMutation(v144);
                                }

                                v151 = *(*(&v231 + 1) + 8 * v149);
                                if ((maxLocalSuggestionCount & 0x8000000000000000) == 0 && ([v120 count] && v150 && v150 + 1 >= v238 || !objc_msgSend(v120, "count") && v150 >= v238))
                                {
                                  break;
                                }

                                [array5 addObject:v151];
                                ++v150;
                                if (v146 == ++v149)
                                {
                                  v146 = [v144 countByEnumeratingWithState:&v231 objects:v260 count:16];
                                  if (v146)
                                  {
                                    goto LABEL_202;
                                  }

                                  break;
                                }
                              }
                            }

                            array = v194;
                            v103 = suggestionResultsCopy;
                            v105 = v214;
                          }

                          if (v120)
                          {
                            [array5 addObjectsFromArray:v120];
                          }

                          if ([v198 count])
                          {
                            [array addObjectsFromArray:v198];
                          }

                          if ([v103 count])
                          {
                            [array addObjectsFromArray:v103];
                          }

                          v152 = v223;
                          if (v219 && ([array containsObject:v219] & 1) == 0)
                          {
                            [array removeLastObject];
                            [array addObject:v219];
                          }

                          v153 = array5;
                          v154 = v238;
                          v155 = v130;
                          v228 = v155;
                          if (v223)
                          {
                            v156 = v155;

                            v154 = v237;
                            v157 = v153;

                            v158 = &v238;
                          }

                          else
                          {
                            v158 = &v237;
                            v156 = v153;
                            v157 = v155;
                          }

                          v159 = *v158;
                          v160 = getFilteredSuggestionResults(v156, v154);
                          [array addObjectsFromArray:v160];
                          if (v223)
                          {
                            if (v225 && ([array containsObject:v225] & 1) == 0)
                            {
                              [array removeLastObject];
                              [array addObject:v225];
                            }
                          }

                          else if ([v207 count] && (objc_msgSend(v207, "firstObject"), v161 = objc_claimAutoreleasedReturnValue(), v162 = objc_msgSend(array, "containsObject:", v161), v161, v152 = v223, (v162 & 1) == 0))
                          {
                            [array removeLastObject];
                            firstObject = [v207 firstObject];
                            [array addObject:firstObject];

                            v152 = v223;
                            v105 = v214;
                          }

                          else
                          {
                            v163 = [v210 count];
                            v105 = v214;
                            if (!suggestionResultsCopy)
                            {
                              if (v163)
                              {
                                if (!v186)
                                {
                                  firstObject2 = [v210 firstObject];
                                  v165 = [array containsObject:firstObject2];

                                  v152 = v223;
                                  if ((v165 & 1) == 0)
                                  {
                                    [array removeLastObject];
                                    firstObject3 = [v210 firstObject];
                                    [array addObject:firstObject3];

                                    v152 = v223;
                                  }
                                }
                              }
                            }
                          }

                          v168 = getFilteredSuggestionResults(v157, v159);
                          [array addObjectsFromArray:v168];
                          if (v152)
                          {
                            if ([v207 count])
                            {
                              firstObject4 = [v207 firstObject];
                              v170 = [array containsObject:firstObject4];

                              v171 = v207;
                              v105 = v214;
                              if (!v170)
                              {
                                goto LABEL_245;
                              }
                            }

                            v172 = [v210 count];
                            if (!suggestionResultsCopy)
                            {
                              if (v172)
                              {
                                if (!v186)
                                {
                                  firstObject5 = [v210 firstObject];
                                  v174 = [array containsObject:firstObject5];

                                  v171 = v210;
                                  v105 = v214;
                                  if ((v174 & 1) == 0)
                                  {
LABEL_245:
                                    [array removeLastObject];
                                    firstObject6 = [v171 firstObject];
                                    [array addObject:firstObject6];
                                  }
                                }
                              }
                            }

                            v176 = v225;
                            if (!v225)
                            {
LABEL_252:
                              v177 = array;

                              contextCopy = v195;
                              filtersCopy = v193;
                              v178 = contactFiltersCopy;
                              v28 = v197;
                              resultsCopy = v198;
                              v179 = optionsCopy;
                              v180 = v199;
                              goto LABEL_253;
                            }
                          }

                          else
                          {
                            v176 = v225;
                            if (!v225)
                            {
                              goto LABEL_252;
                            }

                            if (([array containsObject:v225] & 1) == 0)
                            {
                              [array removeLastObject];
                              [array addObject:v225];
                            }
                          }

                          [array removeObject:v176];
                          [array insertObject:v176 atIndex:0];
                          goto LABEL_252;
                        }

                        continue;
                      }

                      goto LABEL_100;
                    }

LABEL_113:
                    [v88 rankingScore];
                    if (v96 != 0.0 && (!contactFiltersCopy || ([contactFiltersCopy containsObject:v91] & 1) == 0) && (objc_msgSend(v229, "containsObject:", v91) & 1) == 0)
                    {
                      [v209 addObject:v88];
                      [v226 addObject:v91];
                      v97 = v229;
                      goto LABEL_132;
                    }

                    goto LABEL_134;
                  }

                  if ([v226 containsObject:v91])
                  {
                    goto LABEL_134;
                  }

                  v95 = v210;
                }

                break;
              }

              [v95 addObject:v88];
              v97 = v222;
              v99 = v88;
              goto LABEL_133;
            }
          }
        }

LABEL_17:
        v39 = [v30 objectForKeyedSubscript:@"localFilteringScore"];
        if (v39)
        {
          v203 = [v30 objectForKeyedSubscript:@"localFilteringScore"];
        }

        else
        {
          v203 = 0;
        }

        v40 = [v30 objectForKeyedSubscript:@"qualityThreshold"];
        if (v40)
        {
          v196 = [v30 objectForKeyedSubscript:@"qualityThreshold"];
        }

        else
        {
          v196 = 0;
        }

        v41 = [v30 objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
        if (v41)
        {
          v42 = [v30 objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
          ignoreMaxCount = [v42 BOOLValue];

          v30 = optionsCopy;
        }

        else
        {
          ignoreMaxCount = [(SSBullseyeSuggestionsManager *)self ignoreMaxCount];
        }

        v43 = [v30 objectForKeyedSubscript:@"prefersLocalUserTypedSuggestion"];
        if (v43)
        {
          v44 = [v30 objectForKeyedSubscript:@"prefersLocalUserTypedSuggestion"];
          bOOLValue = [v44 BOOLValue];

          v30 = optionsCopy;
        }

        else
        {
          bOOLValue = 0;
        }

        v45 = [v30 objectForKeyedSubscript:@"suggestionsAreBlended"];
        if (v45)
        {
          v46 = [v30 objectForKeyedSubscript:@"suggestionsAreBlended"];
          v185 = [v46 BOOLValue] ^ 1;
        }

        else
        {
          LOBYTE(v185) = 1;
        }

        v47 = v197;

        if (v203)
        {
          if (v196)
          {
            [v203 doubleValue];
            v49 = v48;
            [v196 doubleValue];
            v51 = v49 < v50;
          }

          else
          {
            v196 = 0;
            v51 = 1;
          }

          v188 = v51;
        }

        else
        {
          v203 = 0;
          v188 = 0;
        }

        goto LABEL_39;
      }
    }

    else
    {
      intValue = [(SSBullseyeSuggestionsManager *)self localDisplayPosition];
    }

    localSuggestionThreshold = [(SSBullseyeSuggestionsManager *)self localSuggestionThreshold];

    if (!v30)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v180 = v199;
  if (v199)
  {
    [array addObject:v199];
  }

  v178 = contactFiltersCopy;
  v179 = optionsCopy;
  if (v28)
  {
    [array addObject:v28];
  }

  v183 = array;
  v219 = 0;
  v225 = v199;
  v221 = v28;
LABEL_253:

  v181 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)intentBasedSuggestionBlending:(id)blending suggestions:(id)suggestions
{
  v34 = *MEMORY[0x1E69E9840];
  blendingCopy = blending;
  suggestionsCopy = suggestions;
  queryIntent = [blendingCopy queryIntent];
  if (!queryIntent)
  {
    goto LABEL_24;
  }

  v8 = queryIntent;
  queryIntent2 = [blendingCopy queryIntent];
  if (![queryIntent2 intentType])
  {

    goto LABEL_24;
  }

  queryIntent3 = [blendingCopy queryIntent];
  suggestionConfig = [queryIntent3 suggestionConfig];

  if (!suggestionConfig)
  {
LABEL_24:
    array = suggestionsCopy;
    goto LABEL_25;
  }

  array = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v28 = blendingCopy;
  queryIntent4 = [blendingCopy queryIntent];
  suggestionConfig2 = [queryIntent4 suggestionConfig];

  localSuggestionQuota = [suggestionConfig2 localSuggestionQuota];
  serverSuggestionQuota = [suggestionConfig2 serverSuggestionQuota];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = suggestionsCopy;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * v21);
        type = [v22 type];
        if (type <= 0x27)
        {
          if (((1 << type) & 0xCF80010000) != 0)
          {
            if (localSuggestionQuota)
            {
              [array addObject:v22];
              --localSuggestionQuota;
            }
          }

          else if (((1 << type) & 0x10020000) != 0)
          {
            if (serverSuggestionQuota)
            {
              [array addObject:v22];
              --serverSuggestionQuota;
            }
          }

          else if (type == 29 && [suggestionConfig2 showWebAsTypedSuggestion])
          {
            [array addObject:v22];
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v24 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v19 = v24;
    }

    while (v24);
  }

  objc_autoreleasePoolPop(context);
  blendingCopy = v28;
LABEL_25:

  v25 = *MEMORY[0x1E69E9840];

  return array;
}

@end