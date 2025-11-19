@interface SSBullseyeSuggestionsManager
+ (id)sharedSuggestionsManager;
- (SSBullseyeSuggestionsManager)initWithOptions:(id)a3;
- (SSCoreMLInterface)blendingModel;
- (id)_getScoreForSuggestionResult:(id)a3 options:(id)a4;
- (id)_rankedSuggestionsResultsWithQueryContext:(id)a3 serverSuggestionResults:(id)a4 localSuggestionResults:(id)a5 options:(id)a6;
- (id)intentBasedSuggestionBlending:(id)a3 suggestions:(id)a4;
- (id)orderedSuggestionsWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 userSuggestion:(id)a7 userWebSuggestion:(id)a8 shortcutSuggestionResults:(id)a9 actionSuggestionResults:(id)a10 contactSuggestionResults:(id)a11 serverSuggestionResults:(id)a12 localSuggestionResults:(id)a13 options:(id)a14;
- (id)release2022_blendingByPolicyWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 userSuggestion:(id)a7 userWebSuggestion:(id)a8 shortcutSuggestionResults:(id)a9 actionSuggestionResults:(id)a10 contactSuggestionResults:(id)a11 serverSuggestionResults:(id)a12 localSuggestionResults:(id)a13 options:(id)a14;
- (id)release2023_blendingByPolicyWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 userSuggestion:(id)a7 userWebSuggestion:(id)a8 actionSuggestionResults:(id)a9 contactSuggestionResults:(id)a10 serverSuggestionResults:(id)a11 localSuggestionResults:(id)a12 options:(id)a13;
- (id)release2023_blendingWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 userSuggestion:(id)a7 userWebSuggestion:(id)a8 shortcutSuggestionResults:(id)a9 actionSuggestionResults:(id)a10 contactSuggestionResults:(id)a11 serverSuggestionResults:(id)a12 localSuggestionResults:(id)a13 options:(id)a14;
- (id)suggestionKeyWithCompletion:(id)a3;
- (void)_filterSuggestionResultsWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 contactSuggestionResults:(id)a7 localSuggestionResults:(id)a8 serverSuggestionResults:(id)a9 options:(id)a10;
- (void)clearBlendingModel;
- (void)loadBlendingModelWithPath:(id)a3 forceLoad:(BOOL)a4;
- (void)loadDefaultsWithOptions:(id)a3;
- (void)setBlendingModel:(id)a3;
- (void)updateDefaultsWithOptions:(id)a3;
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

- (SSBullseyeSuggestionsManager)initWithOptions:(id)a3
{
  v4 = a3;
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

    [(SSBullseyeSuggestionsManager *)v5 loadDefaultsWithOptions:v4];
  }

  return v5;
}

- (void)loadDefaultsWithOptions:(id)a3
{
  v50 = a3;
  v4 = [v50 copy];
  defaultOptions = self->_defaultOptions;
  self->_defaultOptions = v4;

  v6 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
  v7 = [v6 resourcesForClient:@"Spotlight" options:&unk_1F55B7858];
  resources = self->_resources;
  self->_resources = v7;

  v49 = [(SRResources *)self->_resources objectForKey:@"EnableSuggestionsBlending"];
  if (v50)
  {
    v9 = [v50 objectForKeyedSubscript:@"EnableSuggestionsBlending"];
    if (v9)
    {
      v10 = [v50 objectForKeyedSubscript:@"EnableSuggestionsBlending"];
    }

    else
    {
      v10 = 0;
    }

    v49 = v10;
  }

  if (v49)
  {
    v11 = [v49 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  self->_enabledSuggestionsBlending = v11;
  if (!v50 && [(SSBullseyeSuggestionsManager *)self enabledSuggestionsOverrides])
  {
    self->_enabledSuggestionsBlending = _os_feature_enabled_impl();
  }

  v48 = [(SRResources *)self->_resources objectForKey:@"EnableFullSuggestionsBlending"];
  if (v50)
  {
    v12 = [v50 objectForKeyedSubscript:@"EnableFullSuggestionsBlending"];
    if (v12)
    {
      v13 = [v50 objectForKeyedSubscript:@"EnableFullSuggestionsBlending"];
    }

    else
    {
      v13 = 0;
    }

    v48 = v13;
  }

  if (v48)
  {
    v14 = [v48 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  self->_enabledFullSuggestionsBlending = v14;
  if (!v50 && [(SSBullseyeSuggestionsManager *)self enabledSuggestionsOverrides])
  {
    self->_enabledFullSuggestionsBlending = _os_feature_enabled_impl();
  }

  v15 = [(SRResources *)self->_resources objectForKey:@"ServerSuggestionThreshold"];
  if (v50)
  {
    v16 = [v50 objectForKeyedSubscript:@"serverThreshold"];

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
  if (v50)
  {
    v21 = [v50 objectForKeyedSubscript:@"localThreshold"];

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
  if (v50)
  {
    v26 = [v50 objectForKeyedSubscript:@"maxTotalSuggestions"];

    v25 = v26;
  }

  v27 = [(SRResources *)self->_resources objectForKey:@"MaxTotalSuggestionsForAboveFoldResults"];
  if (v50)
  {
    v28 = [v50 objectForKeyedSubscript:@"maxTotalSuggestionsForAboveFoldResults"];

    v27 = v28;
  }

  v29 = [(SRResources *)self->_resources objectForKey:@"EnableForceAboveFoldResults"];
  if (v50)
  {
    v30 = [v50 objectForKeyedSubscript:@"EnableForceAboveFoldResults"];

    v29 = v30;
  }

  if (v29)
  {
    v31 = [v29 BOOLValue];
  }

  else
  {
    v31 = 0;
  }

  self->_enabledAboveFoldResults = v31;
  if (v25)
  {
    v32 = [v25 integerValue];
  }

  else
  {
    v32 = 0x7FFFFFFFLL;
  }

  self->_maxTotalSuggestionCount = v32;
  if (v27)
  {
    v32 = [v27 integerValue];
  }

  self->_maxTotalSuggestionCountForAboveFoldResults = v32;
  v33 = [(SRResources *)self->_resources objectForKey:@"MaxServerSuggestionCount"];
  if (v50)
  {
    v34 = [v50 objectForKeyedSubscript:@"maxServerSuggestions"];

    v33 = v34;
  }

  if (!v33 || [v33 integerValue] < 0)
  {
    v35 = 0x7FFFFFFFLL;
  }

  else
  {
    v35 = [v33 integerValue];
  }

  self->_maxServerSuggestionCount = v35;
  v36 = [(SRResources *)self->_resources objectForKey:@"MaxSuggestionCount"];
  if (v50)
  {
    v37 = [v50 objectForKeyedSubscript:@"maxLocalSuggestions"];

    v36 = v37;
  }

  if (!v36 || [v36 integerValue] < 0)
  {
    v38 = 0x7FFFFFFFLL;
  }

  else
  {
    v38 = [v36 integerValue];
  }

  v47 = v29;
  self->_maxLocalSuggestionCount = v38;
  v39 = [(SRResources *)self->_resources objectForKey:@"LocalDisplayPosition"];
  if (v50)
  {
    v40 = [v50 objectForKeyedSubscript:@"localDisplayPosition"];

    v39 = v40;
  }

  if (!v39 || [v39 integerValue] == 0x7FFFFFFF || objc_msgSend(v39, "integerValue") == -1)
  {
    v41 = 0;
  }

  else
  {
    v41 = [v39 unsignedIntValue];
  }

  self->_localDisplayPosition = v41;
  v42 = [(SRResources *)self->_resources objectForKey:@"IgnoreMaxCountForSingleSuggestionsType"];
  if (v50)
  {
    [v50 objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
    v44 = v43 = v33;

    v42 = v44;
    v33 = v43;
  }

  if (v42)
  {
    v45 = [v42 BOOLValue];
  }

  else
  {
    v45 = 0;
  }

  self->_ignoreMaxCount = v45;
  if ([(SSBullseyeSuggestionsManager *)self enabledSuggestionsBlending])
  {
    v46 = [(SRResources *)self->_resources filePathForKey:@"SuggestionsBlendingModel"];
    [(SSBullseyeSuggestionsManager *)self loadBlendingModelWithPath:v46 forceLoad:v50 != 0];
  }
}

- (void)updateDefaultsWithOptions:(id)a3
{
  v18 = a3;
  v4 = [(SSBullseyeSuggestionsManager *)self resources];
  v5 = [v4 hasUpdates];

  if (v5)
  {
    [(SSBullseyeSuggestionsManager *)self loadDefaultsWithOptions:self->_defaultOptions];
  }

  v6 = [v18 objectForKeyedSubscript:@"serverThreshold"];
  if (v6)
  {
    objc_storeStrong(&self->_serverSuggestionThreshold, v6);
  }

  v7 = [v18 objectForKeyedSubscript:@"localThreshold"];
  if (v7)
  {
    objc_storeStrong(&self->_localSuggestionThreshold, v7);
  }

  v8 = [v18 objectForKeyedSubscript:@"maxTotalSuggestions"];
  v9 = v8;
  if (v8)
  {
    self->_maxTotalSuggestionCount = [v8 integerValue];
  }

  v10 = [v18 objectForKeyedSubscript:@"maxServerSuggestions"];
  v11 = v10;
  if (v10)
  {
    self->_maxServerSuggestionCount = [v10 integerValue];
  }

  v12 = [v18 objectForKeyedSubscript:@"maxLocalSuggestions"];
  v13 = v12;
  if (v12)
  {
    self->_maxLocalSuggestionCount = [v12 integerValue];
  }

  v14 = [v18 objectForKeyedSubscript:@"localDisplayPosition"];
  v15 = v14;
  if (v14)
  {
    self->_localDisplayPosition = [v14 unsignedIntValue];
  }

  v16 = [v18 objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
  v17 = v16;
  if (v16)
  {
    self->_ignoreMaxCount = [v16 BOOLValue];
  }
}

- (void)loadBlendingModelWithPath:(id)a3 forceLoad:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
    v10 = [v9 isEqualToString:v6];

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v11 = [v6 copy];
  blendingModelPath = self->_blendingModelPath;
  self->_blendingModelPath = v11;

  if (v4)
  {
    v13 = MEMORY[0x1E695DFF8];
    v14 = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
    v15 = [v13 fileURLWithPath:v14 isDirectory:1];

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
    v18 = [(SSBullseyeSuggestionsManager *)self queue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__SSBullseyeSuggestionsManager_loadBlendingModelWithPath_forceLoad___block_invoke;
    v19[3] = &unk_1E8595778;
    v19[4] = self;
    dispatch_async(v18, v19);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_blendingModel;
  objc_sync_exit(v2);

  return v3;
}

- (void)setBlendingModel:(id)a3
{
  v8 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_blendingModel, a3);
  v6 = [(SSCoreMLInterface *)v5->_blendingModel getInputDescriptionsByName];
  modelFeatureNames = v5->_modelFeatureNames;
  v5->_modelFeatureNames = v6;

  objc_sync_exit(v5);
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

- (id)orderedSuggestionsWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 userSuggestion:(id)a7 userWebSuggestion:(id)a8 shortcutSuggestionResults:(id)a9 actionSuggestionResults:(id)a10 contactSuggestionResults:(id)a11 serverSuggestionResults:(id)a12 localSuggestionResults:(id)a13 options:(id)a14
{
  v46 = a3;
  v54 = a4;
  v45 = a5;
  v52 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  [(SSBullseyeSuggestionsManager *)self updateDefaultsWithOptions:v26];
  v27 = [(SSBullseyeSuggestionsManager *)self blendingModel];

  v51 = v21;
  v49 = v22;
  v53 = v26;
  if (v27)
  {
    v28 = v25;
    v29 = v52;
    v30 = v45;
    if ([(SSBullseyeSuggestionsManager *)self enabledFullSuggestionsBlending])
    {
      v42 = v22;
      v31 = v46;
      [(SSBullseyeSuggestionsManager *)self release2023_blendingWithQueryContext:v46 filters:v54 entityFilters:v45 contactFilters:v52 userSuggestion:v19 userWebSuggestion:v20 shortcutSuggestionResults:v51 actionSuggestionResults:v42 contactSuggestionResults:v23 serverSuggestionResults:v24 localSuggestionResults:v25 options:v53];
    }

    else
    {
      v41 = v22;
      v31 = v46;
      [(SSBullseyeSuggestionsManager *)self release2023_blendingByPolicyWithQueryContext:v46 filters:v54 entityFilters:v45 contactFilters:v52 userSuggestion:v19 userWebSuggestion:v20 actionSuggestionResults:v41 contactSuggestionResults:v23 serverSuggestionResults:v24 localSuggestionResults:v25 options:v53];
    }
    v48 = ;
  }

  else
  {
    v44 = v26;
    v40 = v21;
    v43 = v22;
    v30 = v45;
    v31 = v46;
    v29 = v52;
    v48 = [(SSBullseyeSuggestionsManager *)self release2022_blendingByPolicyWithQueryContext:v46 filters:v54 entityFilters:v45 contactFilters:v52 userSuggestion:v19 userWebSuggestion:v20 shortcutSuggestionResults:v40 actionSuggestionResults:v43 contactSuggestionResults:v23 serverSuggestionResults:v24 localSuggestionResults:v25 options:v44];
    v28 = v25;
  }

  if (+[SSQueryIntentManager isEnabled])
  {
    v47 = v28;
    v32 = [v31 queryIntent];
    if (v32)
    {
      v33 = v32;
      v34 = v30;
      v35 = [v31 queryIntent];
      v36 = [v35 intentType];

      if (v36)
      {
        v37 = [(SSBullseyeSuggestionsManager *)self intentBasedSuggestionBlending:v31 suggestions:v48];

        v30 = v34;
        v29 = v52;
        v38 = v53;
        v28 = v47;
        goto LABEL_14;
      }

      v30 = v34;
      v29 = v52;
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

- (id)_getScoreForSuggestionResult:(id)a3 options:(id)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 type];
  v8 = [v5 query];
  v9 = [v8 length];

  v10 = [v5 completion];
  v11 = [v10 length];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  [v6 setObject:v12 forKey:@"type"];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v6 setObject:v13 forKey:@"plen"];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v6 setObject:v14 forKey:@"slen"];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / (v11 + 1.0)];
  [v6 setObject:v15 forKey:@"ratio"];

  v16 = MEMORY[0x1E696AD98];
  [v5 rankingScore];
  v17 = [v16 numberWithDouble:?];
  [v6 setObject:v17 forKey:@"score"];

  v18 = [v5 spotlightSuggestion];

  if (v18)
  {
    v19 = [v5 spotlightSuggestion];
    v20 = [v19 features];

    if (getFeaturesForSuggestionResult_onceToken == -1)
    {
      if (v20)
      {
LABEL_4:
        v83 = 0;
        v21 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:getFeaturesForSuggestionResult_sFeatureClasses fromData:v20 error:&v83];
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
      if (v20)
      {
        goto LABEL_4;
      }
    }

    v22 = 0;
    v21 = 0;
    goto LABEL_26;
  }

  v23 = [v5 suggestion];

  if (v23)
  {
    v24 = MEMORY[0x1E696AD98];
    v25 = [v5 suggestion];
    [v25 score];
    v26 = [v24 numberWithDouble:?];
    [v6 setObject:v26 forKey:@"score"];

    v27 = MEMORY[0x1E696AD98];
    v28 = [v5 suggestion];
    v29 = [v27 numberWithInt:{objc_msgSend(v28, "type")}];
    [v6 setObject:v29 forKey:@"stype"];

    v30 = MEMORY[0x1E696AD98];
    v31 = [v5 suggestion];
    v32 = [v31 suggestion];
    v33 = [v30 numberWithUnsignedInteger:{objc_msgSend(v32, "length")}];
    [v6 setObject:v33 forKey:@"sslen"];

    v34 = [v5 suggestion];
    objc_opt_class();
    LOBYTE(v31) = objc_opt_isKindOfClass();

    if (v31)
    {
      v20 = [v5 suggestion];
      v35 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v20, "queryLen")}];
      [v6 setObject:v35 forKey:@"queryLen"];

      v36 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v20, "fragments")}];
      [v6 setObject:v36 forKey:@"fragments"];

      v37 = MEMORY[0x1E696AD98];
      [v20 age];
      v38 = [v37 numberWithDouble:?];
      [v6 setObject:v38 forKey:@"age"];

      v39 = MEMORY[0x1E696AD98];
      [v20 prob];
      v40 = [v39 numberWithDouble:?];
      [v6 setObject:v40 forKey:@"prob"];

      [v20 compositeScore];
      v42 = v41;
      v43 = 0.0;
      if (v42 != 1.79769313e308)
      {
        [v20 compositeScore];
      }

      v44 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
      [v6 setObject:v44 forKey:@"compositeScore"];

      if ([v20 isSingleThread])
      {
        v45 = &unk_1F55B6D68;
      }

      else
      {
        v45 = &unk_1F55B6D58;
      }

      [v6 setObject:v45 forKey:@"isSingleThread"];
      if ([v20 hasUsedDate])
      {
        v46 = &unk_1F55B6D68;
      }

      else
      {
        v46 = &unk_1F55B6D58;
      }

      [v6 setObject:v46 forKey:@"hasUsedDate"];
      if ([v20 isShortcut])
      {
        v47 = &unk_1F55B6D68;
      }

      else
      {
        v47 = &unk_1F55B6D58;
      }

      [v6 setObject:v47 forKey:@"isShortcut"];
      if ([v20 hasMultipleResults])
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
  v49 = [v5 serverFeatures];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v50 = [v49 countByEnumeratingWithState:&v79 objects:v85 count:16];
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
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v79 + 1) + 8 * i);
        v55 = [v49 objectForKeyedSubscript:v54];
        [v6 setObject:v55 forKey:v54];
      }

      v51 = [v49 countByEnumeratingWithState:&v79 objects:v85 count:16];
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
  v73 = self;
  v57 = [(SSBullseyeSuggestionsManager *)self modelFeatureNames];
  v58 = [v57 countByEnumeratingWithState:&v75 objects:v84 count:16];
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
          objc_enumerationMutation(v57);
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

      v59 = [v57 countByEnumeratingWithState:&v75 objects:v84 count:16];
    }

    while (v59);
  }

  v65 = [(SSBullseyeSuggestionsManager *)v73 blendingModel];
  v74 = 0;
  [v65 predictFromDictionaryFeatures:v56 error:&v74];
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

- (id)suggestionKeyWithCompletion:(id)a3
{
  v3 = SSNormalizedQueryString(a3);
  v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)_filterSuggestionResultsWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 contactSuggestionResults:(id)a7 localSuggestionResults:(id)a8 serverSuggestionResults:(id)a9 options:(id)a10
{
  v132 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v89 = a4;
  v17 = a5;
  v97 = a6;
  v18 = a7;
  v19 = a8;
  v87 = a9;
  v88 = a10;
  v105 = objc_opt_new();
  v100 = objc_opt_new();
  v95 = objc_opt_new();
  v90 = v16;
  v20 = [v16 searchString];
  v96 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:v20];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v18;
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
        v26 = [v25 completion];
        v27 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:v26];

        if ((!v97 || ([v97 containsObject:v27] & 1) == 0) && (objc_msgSend(v95, "containsObject:", v27) & 1) == 0 && objc_msgSend(v27, "containsString:", v96))
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
  v99 = v17;

  v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = [v19 sortedArrayUsingComparator:&__block_literal_global_162];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v31 = v19;
  v32 = [v31 countByEnumeratingWithState:&v119 objects:v130 count:16];
  v106 = self;
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
      v38 = [v37 type];
      v39 = [v37 completion];
      v40 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:v39];

      if (v38 == 38 || v38 == 32)
      {
        if ((!v97 || ([v97 containsObject:v40] & 1) == 0) && (objc_msgSend(v35, "containsObject:", v40) & 1) == 0)
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
          if (v38 == 34)
          {
            v42 = v37;

            v91 = v42;
          }
        }

        else if (!v97 || ([v97 containsObject:v40] & 1) == 0)
        {
          if (v38 != 31 && v38 != 16)
          {
            goto LABEL_46;
          }

          v43 = [(SSBullseyeSuggestionsManager *)self localSuggestionThreshold];
          if (!v43)
          {
            goto LABEL_46;
          }

          v44 = v43;
          v45 = MEMORY[0x1E696AD98];
          [v37 rankingScore];
          v46 = [v45 numberWithDouble:?];
          [(SSBullseyeSuggestionsManager *)self localSuggestionThreshold];
          v48 = v47 = v35;
          v101 = [v46 compare:v48];

          v35 = v47;
          self = v106;

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
          v57 = [v56 completion];
          v58 = [(SSBullseyeSuggestionsManager *)v106 suggestionKeyWithCompletion:v57];

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
            v64 = [v63 completion];
            v65 = [(SSBullseyeSuggestionsManager *)v106 suggestionKeyWithCompletion:v64];

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
  v102 = v87;
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
          v74 = [(SSBullseyeSuggestionsManager *)v106 serverSuggestionThreshold];
          if (!v74)
          {
            goto LABEL_89;
          }

          v75 = v74;
          v76 = MEMORY[0x1E696AD98];
          [v72 rankingScore];
          v77 = [v76 numberWithDouble:?];
          v78 = [(SSBullseyeSuggestionsManager *)v106 serverSuggestionThreshold];
          v79 = [v77 compare:v78];

          v80 = v79 == 1;
          v70 = v99;
          if (!v80)
          {
LABEL_89:
            v81 = [v72 entityIdentifier];

            if (v81)
            {
              if (![v70 count] || (objc_msgSend(v72, "entityIdentifier"), v82 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend(v70, "containsObject:", v82), v82, (v83 & 1) == 0))
              {
                [v94 addObject:v72];
              }
            }

            else
            {
              v84 = [v72 completion];
              v85 = [(SSBullseyeSuggestionsManager *)v106 suggestionKeyWithCompletion:v84];

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

- (id)_rankedSuggestionsResultsWithQueryContext:(id)a3 serverSuggestionResults:(id)a4 localSuggestionResults:(id)a5 options:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v9;
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
        v19 = [(SSBullseyeSuggestionsManager *)self _getScoreForSuggestionResult:v18 options:v11];
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
  v20 = v10;
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
        v26 = [(SSBullseyeSuggestionsManager *)self _getScoreForSuggestionResult:v25 options:v11, v30];
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

- (id)release2023_blendingWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 userSuggestion:(id)a7 userWebSuggestion:(id)a8 shortcutSuggestionResults:(id)a9 actionSuggestionResults:(id)a10 contactSuggestionResults:(id)a11 serverSuggestionResults:(id)a12 localSuggestionResults:(id)a13 options:(id)a14
{
  v89 = *MEMORY[0x1E69E9840];
  v69 = a3;
  v76 = a4;
  v75 = a5;
  v74 = a6;
  v19 = a7;
  v20 = a8;
  v70 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = [MEMORY[0x1E695DF70] array];
  v27 = objc_autoreleasePoolPush();
  v68 = v25;
  if ([v22 count] || objc_msgSend(v24, "count") || objc_msgSend(v23, "count") || objc_msgSend(v70, "count") || objc_msgSend(v21, "count"))
  {
    context = v27;
    v66 = v20;
    v67 = v19;
    v28 = v20;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v64 = v23;
    v29 = v23;
    v30 = [v29 countByEnumeratingWithState:&v82 objects:v88 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = v24;
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
        v24 = v32;
        v25 = v68;
        v39 = v69;
        goto LABEL_19;
      }

      v62 = 0;
      v24 = v32;
      v25 = v68;
      v39 = v69;
    }

    else
    {
      v62 = 0;
      v36 = v29;
      v39 = v69;
LABEL_19:
    }

    if ([v24 count])
    {
      v40 = [v24 mutableCopy];
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
    v65 = v22;
    [(SSBullseyeSuggestionsManager *)self _filterSuggestionResultsWithQueryContext:v39 filters:v76 entityFilters:v75 contactFilters:v74 contactSuggestionResults:v22 localSuggestionResults:v41 serverSuggestionResults:v42 options:v25];
    if (v28 && ([v43 containsObject:v28] & 1) == 0)
    {
      [v43 addObject:v28];
    }

    v71 = [(SSBullseyeSuggestionsManager *)self _rankedSuggestionsResultsWithQueryContext:v39 serverSuggestionResults:v43 localSuggestionResults:v41 options:v25];
    if (![(SSBullseyeSuggestionsManager *)self enabledAboveFoldResults])
    {
      goto LABEL_34;
    }

    v44 = [v25 objectForKeyedSubscript:@"ForceAboveFoldResults"];
    if (!v44)
    {
      goto LABEL_34;
    }

    v45 = v44;
    [v25 objectForKeyedSubscript:@"ForceAboveFoldResults"];
    v47 = v46 = v21;
    v48 = [v47 BOOLValue];

    v21 = v46;
    if (v48)
    {
      v49 = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCountForAboveFoldResults];
    }

    else
    {
LABEL_34:
      v49 = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    }

    v50 = v49;
    v51 = v70;
    if ([v21 count])
    {
      memset(v81, 0, sizeof(v81));
      if ([v21 countByEnumeratingWithState:v81 objects:v87 count:16])
      {
        if (v50)
        {
          [v26 addObject:**(&v81[0] + 1)];
          if (v50 != 0x7FFFFFFF)
          {
            --v50;
          }
        }
      }
    }

    if ([v70 count])
    {
      v61 = v24;
      v73 = v21;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v52 = v70;
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

          [v26 addObject:*(*(&v77 + 1) + 8 * v56)];
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

      v39 = v69;
      v51 = v70;
      v21 = v73;
      v24 = v61;
    }

    [v26 addObjectsFromArray:v71];
    if (v50 != 0x7FFFFFFF)
    {
      while ([v26 count] > v50)
      {
        [v26 removeLastObject];
      }
    }

    if (v28 && ([v26 containsObject:v28] & 1) == 0)
    {
      if (v50 != 0x7FFFFFFF && [v26 count] >= v50)
      {
        [v26 removeLastObject];
      }

      [v26 insertObject:v28 atIndex:0];
    }

    objc_autoreleasePoolPop(context);
    v57 = v26;
    v20 = v66;
    v19 = v67;
    v23 = v64;
    v22 = v65;
  }

  else
  {
    if (v19)
    {
      [v26 addObject:v19];
    }

    v39 = v69;
    v51 = v70;
    if (v20)
    {
      [v26 addObject:v20];
    }

    v60 = v26;
    objc_autoreleasePoolPop(v27);
  }

  v58 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)release2023_blendingByPolicyWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 userSuggestion:(id)a7 userWebSuggestion:(id)a8 actionSuggestionResults:(id)a9 contactSuggestionResults:(id)a10 serverSuggestionResults:(id)a11 localSuggestionResults:(id)a12 options:(id)a13
{
  v153 = *MEMORY[0x1E69E9840];
  v123 = a3;
  v18 = a4;
  v122 = a5;
  v121 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = [MEMORY[0x1E695DF70] array];
  v27 = objc_autoreleasePoolPush();
  v28 = v19;
  v124 = v20;
  if ([v22 count] || objc_msgSend(v24, "count") || objc_msgSend(v23, "count") || objc_msgSend(v21, "count"))
  {
    context = v27;
    v111 = v28;
    if ([v24 count])
    {
      v29 = [v24 mutableCopy];
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v30 = v29;
    v112 = v24;
    v113 = v23;
    if ([v23 count])
    {
      v31 = [v23 mutableCopy];
    }

    else
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v32 = v31;
    [(SSBullseyeSuggestionsManager *)self _filterSuggestionResultsWithQueryContext:v123 filters:v18 entityFilters:v122 contactFilters:v121 contactSuggestionResults:v22 localSuggestionResults:v30 serverSuggestionResults:v31 options:v25];
    v33 = [(SSBullseyeSuggestionsManager *)self _rankedSuggestionsResultsWithQueryContext:v123 serverSuggestionResults:v32 localSuggestionResults:v30 options:v25];
    v118 = v33;
    if ([v33 count])
    {
      v34 = [v33 firstObject];
      v35 = v124;
      v109 = [v34 type] == 28 || objc_msgSend(v34, "type") == 29 || objc_msgSend(v34, "type") == 17;
    }

    else
    {
      v109 = 0;
      v35 = v124;
    }

    v36 = v35;
    v119 = v25;
    v120 = v21;
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
        v40 = v18;
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
            v18 = v40;
            v25 = v119;
            v21 = v120;
            goto LABEL_31;
          }
        }

        v45 = v43;

        v36 = v124;
        v18 = v40;
        v25 = v119;
        v21 = v120;
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
    v115 = v18;
    if (![(SSBullseyeSuggestionsManager *)self enabledAboveFoldResults])
    {
      goto LABEL_36;
    }

    v46 = v36;
    v47 = [v25 objectForKeyedSubscript:@"ForceAboveFoldResults"];
    if (!v47)
    {
      goto LABEL_36;
    }

    v48 = v47;
    v49 = [v25 objectForKeyedSubscript:@"ForceAboveFoldResults"];
    v50 = [v49 BOOLValue];

    v36 = v46;
    if (v50)
    {
      v51 = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCountForAboveFoldResults];
    }

    else
    {
LABEL_36:
      v51 = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    }

    v143 = v51;
    if (v36)
    {
      [v32 removeObject:v36];
      [v26 addObject:v36];
      if (v143 != 0x7FFFFFFF)
      {
        --v143;
      }
    }

    v117 = v36;
    v52 = [v30 count];
    v53 = [v21 count];
    v54 = [v32 count];
    v142 = [(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount];
    v141 = [(SSBullseyeSuggestionsManager *)self maxServerSuggestionCount];
    if ([v21 count])
    {
      memset(v140, 0, sizeof(v140));
      v55 = v21;
      if ([v55 countByEnumeratingWithState:v140 objects:v151 count:16])
      {
        if (v143)
        {
          [v26 addObject:**(&v140[0] + 1)];
          if (v143 != 0x7FFFFFFF)
          {
            --v143;
          }
        }
      }
    }

    v114 = v22;
    v127 = v26;
    SSSplitCounts(v53 + v52, v142, 0, v54, v141, 0, v143, &v142, &v141, &v143);
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
        if (v64 >= v141)
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
          v74 = [v73 type];
          if (v74 == 38 || v74 == 32)
          {
            v75 = v57;
LABEL_62:
            [v75 addObject:v73];
            goto LABEL_63;
          }

          if (v68 || v74 != 35)
          {
            if (v69 || v74 != 34)
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

    v26 = v127;
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
      if (v79 > v142)
      {
        break;
      }

      v80 = [v57 firstObject];
      [v127 addObject:v80];
      [v57 removeObject:v80];
      if (v142 != 0x7FFFFFFF)
      {
        --v142;
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
      v84 = v142;
      v85 = v83 - v77 < v142;
      v86 = v120;
      v87 = v117;
      if (v85)
      {
        [v127 addObject:v68];
        v88 = v125;
        if (v142 == 0x7FFFFFFF)
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
                  v99 = [v98 type];
                  v100 = v92;
                  if (v99 != 28)
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
            v26 = v127;
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
          v104 = v26;
          v22 = v114;
          v18 = v115;
          v24 = v112;
          v23 = v113;
          v21 = v102;
          v25 = v119;
          goto LABEL_116;
        }

        v84 = --v142;
      }
    }

    else
    {
      v84 = v142;
      v86 = v120;
      v87 = v117;
    }

    v88 = v125;
    if (v84 != 0x7FFFFFFF)
    {
      do
      {
        v89 = [v125 count];
        if (v89 <= v142)
        {
          break;
        }

        [v125 removeLastObject];
      }

      while (v142 != 0x7FFFFFFF);
    }

    goto LABEL_94;
  }

  if (v124)
  {
    [v26 addObject:?];
  }

  if (v28)
  {
    [v26 addObject:v28];
  }

  v107 = v26;

  objc_autoreleasePoolPop(v27);
LABEL_116:

  v105 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)release2022_blendingByPolicyWithQueryContext:(id)a3 filters:(id)a4 entityFilters:(id)a5 contactFilters:(id)a6 userSuggestion:(id)a7 userWebSuggestion:(id)a8 shortcutSuggestionResults:(id)a9 actionSuggestionResults:(id)a10 contactSuggestionResults:(id)a11 serverSuggestionResults:(id)a12 localSuggestionResults:(id)a13 options:(id)a14
{
  v266 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  v217 = a5;
  v230 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v204 = a10;
  v25 = a11;
  v201 = a12;
  v202 = a13;
  v205 = a14;
  v26 = [MEMORY[0x1E695DF70] array];
  v27 = [v20 searchString];
  v224 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:v27];

  v28 = v22;
  v199 = v23;
  v207 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v210 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v200 = v25;
  if ([v25 count] || objc_msgSend(v202, "count") || objc_msgSend(v201, "count") || objc_msgSend(v24, "count") || objc_msgSend(v204, "count"))
  {
    v197 = v28;
    v215 = objc_opt_new();
    v222 = objc_opt_new();
    v209 = objc_opt_new();
    v208 = objc_opt_new();
    v213 = objc_opt_new();
    v29 = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    v211 = [(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount];
    v192 = [(SSBullseyeSuggestionsManager *)self maxServerSuggestionCount];
    v30 = v205;
    if (v205)
    {
      v31 = [v205 objectForKeyedSubscript:@"localDisplayPosition"];
      if (v31)
      {
        v32 = [v205 objectForKeyedSubscript:@"localDisplayPosition"];
        v191 = [v32 intValue];

        v30 = v205;
      }

      else
      {
        v191 = [(SSBullseyeSuggestionsManager *)self localDisplayPosition];
      }

      v33 = [v30 objectForKeyedSubscript:@"localThreshold"];
      if (v33)
      {
        v34 = v33;
        v35 = [v30 objectForKeyedSubscript:@"localThreshold"];

LABEL_14:
        v36 = [v30 objectForKeyedSubscript:@"serverThreshold"];
        if (v36)
        {
          v37 = v36;
          v216 = [v30 objectForKeyedSubscript:@"serverThreshold"];

          goto LABEL_17;
        }

LABEL_16:
        v38 = [(SSBullseyeSuggestionsManager *)self serverSuggestionThreshold];

        v216 = v38;
        if (!v30)
        {
          v189 = [(SSBullseyeSuggestionsManager *)self ignoreMaxCount];
          v190 = 0;
          v203 = 0;
          v196 = 0;
          v188 = 0;
          LOBYTE(v185) = 1;
          v47 = v197;
LABEL_39:
          v214 = v35;
          v193 = v21;
          v194 = v26;
          v195 = v20;
          v198 = v24;
          v52 = [v24 count];
          v53 = v29 - v52;
          if (v29 < v52)
          {
            v53 = 0;
          }

          if (v52)
          {
            v54 = v29 == 0x7FFFFFFF;
          }

          else
          {
            v54 = 1;
          }

          if (v54)
          {
            v53 = v29;
          }

          v186 = v52;
          v187 = v53;
          v212 = [MEMORY[0x1E695DF70] array];
          v220 = [MEMORY[0x1E695DF70] array];
          v226 = objc_opt_new();
          v229 = objc_opt_new();
          v218 = objc_opt_new();
          v206 = objc_opt_new();
          v256 = 0u;
          v257 = 0u;
          v258 = 0u;
          v259 = 0u;
          v55 = v201;
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
              v62 = [v61 type];
              v63 = [v61 completion];
              v64 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:v63];

              if (v62 > 27)
              {
                switch(v62)
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

                      [v220 addObject:v65];
                      v227 |= [v59 count] == 0;
                      v225 = v65;
                    }

                    else
                    {
                      [v220 addObject:v61];
                      v227 |= [v59 count] == 0;
                    }

                    break;
                }

LABEL_74:
                [v59 addObject:v61];
                goto LABEL_75;
              }

              if (v62 != 17)
              {
                if (v62 == 27)
                {
                  goto LABEL_75;
                }

                goto LABEL_74;
              }

              if (!v216 || (v67 = MEMORY[0x1E696AD98], [v61 rankingScore], objc_msgSend(v67, "numberWithDouble:"), v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "compare:", v216), v68, v69 != -1))
              {
                v70 = [v61 entityIdentifier];
                v71 = v70;
                if (v217 && v70)
                {
                  v72 = [v61 entityIdentifier];
                  v73 = [v217 containsObject:v72];

                  if (v73)
                  {
                    v59 = v215;
                    goto LABEL_75;
                  }
                }

                else
                {
                }

                v74 = [v61 entityIdentifier];

                if (v74)
                {
                  [v213 addObject:v64];
                }

                [v226 addObject:v64];
                [v212 addObject:v61];
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
                [v220 addObject:v225];
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
                    v81 = [v80 completion];
                    v82 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:v81];

                    if ((!v230 || ([v230 containsObject:v82] & 1) == 0) && (objc_msgSend(v218, "containsObject:", v82) & 1) == 0)
                    {
                      if ([v82 containsString:v224])
                      {
                        [v208 addObject:v80];
                        [v218 addObject:v82];
                        if (v211 != 0x7FFFFFFF && [v208 count] >= v211)
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
              v83 = v202;
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
                v89 = [v88 type];
                v90 = [v88 completion];
                v91 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:v90];

                if (v89 <= 34)
                {
                  if (v89 == 32)
                  {
                    goto LABEL_113;
                  }

                  if (v89 != 34)
                  {
                    goto LABEL_122;
                  }

                  v92 = [v195 searchString];
                  if (v92)
                  {
                    v93 = v92;
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
                  if (v89 == 35)
                  {
                    v98 = v88;

                    [v222 addObject:v98];
                    v219 = v98;
                    goto LABEL_134;
                  }

                  if (v89 != 39)
                  {
                    if (v89 != 38)
                    {
LABEL_122:
                      if (!v230 || ([v230 containsObject:v91] & 1) == 0)
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

                          v103 = v204;
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
                                  v112 = [v111 completion];
                                  v113 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:v112];

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
                            v103 = v204;
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

                          v26 = v194;
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

                          v238 = v211;
                          v239 = v187;
                          v124 = v192;
                          v237 = v192;
                          if (v189)
                          {
                            v125 = v211;
                            if (v123 < 2)
                            {
                              v125 = v187;
                            }

                            v211 = v125;
                            if (!(v121 | v122))
                            {
                              v124 = v187;
                            }
                          }

                          if (v187 != 0x7FFFFFFF)
                          {
                            if (v221)
                            {
                              v126 = v190;
                            }

                            else
                            {
                              v126 = 0;
                            }

                            SSSplitCounts(v122 + v121, v211, v126, v123, v124, 0, v187, &v238, &v237, &v239);
                          }

                          v127 = v191;
                          if (!v191)
                          {
                            v127 = v188;
                          }

                          v223 = v127;
                          if (v221)
                          {
                            v128 = v190;
                          }

                          else
                          {
                            v128 = 0;
                          }

                          if (v128 == 1)
                          {
                            [v194 addObject:v221];
                          }

                          v129 = [MEMORY[0x1E695DF70] array];
                          v130 = v129;
                          if (v239 == 0x7FFFFFFF)
                          {
                            [v129 addObjectsFromArray:v215];
                          }

                          else if ([v215 count])
                          {
                            if (v185)
                            {
                              v131 = v184 & v227;
                              v235 = 0;
                              v236 = 0;
                              if ([v220 count] == 1)
                              {
                                v132 = [v220 count];
                                v133 = [v212 count];
                                SSSplitCounts(v132, 0x7FFFFFFFLL, 0, v133, 0x7FFFFFFFLL, 0, v237, &v235, &v236, 0);
                              }

                              else
                              {
                                v135 = [v212 count];
                                v136 = [v220 count];
                                SSSplitCounts(v135, 0x7FFFFFFFLL, 0, v136, 0x7FFFFFFFLL, 0, v237, &v236, &v235, 0);
                              }

                              v134 = getFilteredSuggestionResults(v220, v235);
                              v137 = getFilteredSuggestionResults(v212, v236);
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

                          v143 = [MEMORY[0x1E695DF70] array];
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
                                if ((v211 & 0x8000000000000000) == 0 && ([v120 count] && v150 && v150 + 1 >= v238 || !objc_msgSend(v120, "count") && v150 >= v238))
                                {
                                  break;
                                }

                                [v143 addObject:v151];
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

                            v26 = v194;
                            v103 = v204;
                            v105 = v214;
                          }

                          if (v120)
                          {
                            [v143 addObjectsFromArray:v120];
                          }

                          if ([v198 count])
                          {
                            [v26 addObjectsFromArray:v198];
                          }

                          if ([v103 count])
                          {
                            [v26 addObjectsFromArray:v103];
                          }

                          v152 = v223;
                          if (v219 && ([v26 containsObject:v219] & 1) == 0)
                          {
                            [v26 removeLastObject];
                            [v26 addObject:v219];
                          }

                          v153 = v143;
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
                          [v26 addObjectsFromArray:v160];
                          if (v223)
                          {
                            if (v225 && ([v26 containsObject:v225] & 1) == 0)
                            {
                              [v26 removeLastObject];
                              [v26 addObject:v225];
                            }
                          }

                          else if ([v207 count] && (objc_msgSend(v207, "firstObject"), v161 = objc_claimAutoreleasedReturnValue(), v162 = objc_msgSend(v26, "containsObject:", v161), v161, v152 = v223, (v162 & 1) == 0))
                          {
                            [v26 removeLastObject];
                            v167 = [v207 firstObject];
                            [v26 addObject:v167];

                            v152 = v223;
                            v105 = v214;
                          }

                          else
                          {
                            v163 = [v210 count];
                            v105 = v214;
                            if (!v204)
                            {
                              if (v163)
                              {
                                if (!v186)
                                {
                                  v164 = [v210 firstObject];
                                  v165 = [v26 containsObject:v164];

                                  v152 = v223;
                                  if ((v165 & 1) == 0)
                                  {
                                    [v26 removeLastObject];
                                    v166 = [v210 firstObject];
                                    [v26 addObject:v166];

                                    v152 = v223;
                                  }
                                }
                              }
                            }
                          }

                          v168 = getFilteredSuggestionResults(v157, v159);
                          [v26 addObjectsFromArray:v168];
                          if (v152)
                          {
                            if ([v207 count])
                            {
                              v169 = [v207 firstObject];
                              v170 = [v26 containsObject:v169];

                              v171 = v207;
                              v105 = v214;
                              if (!v170)
                              {
                                goto LABEL_245;
                              }
                            }

                            v172 = [v210 count];
                            if (!v204)
                            {
                              if (v172)
                              {
                                if (!v186)
                                {
                                  v173 = [v210 firstObject];
                                  v174 = [v26 containsObject:v173];

                                  v171 = v210;
                                  v105 = v214;
                                  if ((v174 & 1) == 0)
                                  {
LABEL_245:
                                    [v26 removeLastObject];
                                    v175 = [v171 firstObject];
                                    [v26 addObject:v175];
                                  }
                                }
                              }
                            }

                            v176 = v225;
                            if (!v225)
                            {
LABEL_252:
                              v177 = v26;

                              v20 = v195;
                              v21 = v193;
                              v178 = v230;
                              v28 = v197;
                              v24 = v198;
                              v179 = v205;
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

                            if (([v26 containsObject:v225] & 1) == 0)
                            {
                              [v26 removeLastObject];
                              [v26 addObject:v225];
                            }
                          }

                          [v26 removeObject:v176];
                          [v26 insertObject:v176 atIndex:0];
                          goto LABEL_252;
                        }

                        continue;
                      }

                      goto LABEL_100;
                    }

LABEL_113:
                    [v88 rankingScore];
                    if (v96 != 0.0 && (!v230 || ([v230 containsObject:v91] & 1) == 0) && (objc_msgSend(v229, "containsObject:", v91) & 1) == 0)
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
          v189 = [v42 BOOLValue];

          v30 = v205;
        }

        else
        {
          v189 = [(SSBullseyeSuggestionsManager *)self ignoreMaxCount];
        }

        v43 = [v30 objectForKeyedSubscript:@"prefersLocalUserTypedSuggestion"];
        if (v43)
        {
          v44 = [v30 objectForKeyedSubscript:@"prefersLocalUserTypedSuggestion"];
          v190 = [v44 BOOLValue];

          v30 = v205;
        }

        else
        {
          v190 = 0;
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
      v191 = [(SSBullseyeSuggestionsManager *)self localDisplayPosition];
    }

    v35 = [(SSBullseyeSuggestionsManager *)self localSuggestionThreshold];

    if (!v30)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v180 = v199;
  if (v199)
  {
    [v26 addObject:v199];
  }

  v178 = v230;
  v179 = v205;
  if (v28)
  {
    [v26 addObject:v28];
  }

  v183 = v26;
  v219 = 0;
  v225 = v199;
  v221 = v28;
LABEL_253:

  v181 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)intentBasedSuggestionBlending:(id)a3 suggestions:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 queryIntent];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  v9 = [v5 queryIntent];
  if (![v9 intentType])
  {

    goto LABEL_24;
  }

  v10 = [v5 queryIntent];
  v11 = [v10 suggestionConfig];

  if (!v11)
  {
LABEL_24:
    v12 = v6;
    goto LABEL_25;
  }

  v12 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v28 = v5;
  v13 = [v5 queryIntent];
  v14 = [v13 suggestionConfig];

  v15 = [v14 localSuggestionQuota];
  v16 = [v14 serverSuggestionQuota];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v6;
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
        v23 = [v22 type];
        if (v23 <= 0x27)
        {
          if (((1 << v23) & 0xCF80010000) != 0)
          {
            if (v15)
            {
              [v12 addObject:v22];
              --v15;
            }
          }

          else if (((1 << v23) & 0x10020000) != 0)
          {
            if (v16)
            {
              [v12 addObject:v22];
              --v16;
            }
          }

          else if (v23 == 29 && [v14 showWebAsTypedSuggestion])
          {
            [v12 addObject:v22];
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
  v5 = v28;
LABEL_25:

  v25 = *MEMORY[0x1E69E9840];

  return v12;
}

@end