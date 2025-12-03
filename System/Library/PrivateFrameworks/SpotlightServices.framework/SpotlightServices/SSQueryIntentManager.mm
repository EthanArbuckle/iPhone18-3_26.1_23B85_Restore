@interface SSQueryIntentManager
+ (BOOL)_demoteParsecForIntent:(id)intent section:(id)section config:(id)config;
+ (BOOL)_hasMapsPOIResults:(id)results;
+ (BOOL)_isJaJP:(id)p;
+ (BOOL)isEnabled;
+ (BOOL)isServerResult:(id)result;
+ (id)_determineIntentAndStrength:(id)strength;
+ (id)_getParsecMapsDetailedIdentifier:(id)identifier;
+ (id)_intentForQueryContext:(id)context sections:(id)sections;
+ (id)_sectionConfigurationForIntentType:(id)type sections:(id)sections config:(id)config;
+ (id)_suggestionConfigurationForIntent:(id)intent queryContext:(id)context config:(id)config;
+ (id)_suggestionConfigurationOverrideForQueryContext:(id)context config:(id)config;
+ (id)applySectionPolicyForQueryContext:(id)context sections:(id)sections;
+ (int)_intentForSection:(id)section withTopHit:(BOOL)hit;
+ (int)_nextSectionModeling:(id)modeling;
+ (int)_postRetrievalModeling:(id)modeling;
+ (int)_prefixLengthModeling:(id)modeling;
+ (int)_queryUnderstandingModeling:(id)modeling intentHelper:(id)helper;
+ (int)_ruleBasedIntent:(id)intent;
+ (void)_prepareSectionInformation:(id)information intentHelper:(id)helper;
+ (void)setQueryIntentForQueryContext:(id)context sections:(id)sections rankingInfo:(id)info;
@end

@implementation SSQueryIntentManager

+ (BOOL)isEnabled
{
  v2 = +[SSQueryIntentManagerConfig sharedInstance];
  v3 = [v2 getBoolParameter:@"IntentModelingEnabledMobile"];
  v4 = SSEnableSpotlightIntentModeling();

  return v4 & v3;
}

+ (void)setQueryIntentForQueryContext:(id)context sections:(id)sections rankingInfo:(id)info
{
  contextCopy = context;
  sectionsCopy = sections;
  if ([self isEnabled])
  {
    v8 = +[SSQueryIntentManagerConfig sharedInstance];
    v9 = [self _intentForQueryContext:contextCopy sections:sectionsCopy];
    v10 = objc_opt_new();
    [v10 setIntentType:{objc_msgSend(v9, "intentType")}];
    v11 = [self _suggestionConfigurationForIntent:v9 queryContext:contextCopy config:v8];
    [v10 setSuggestionConfig:v11];

    v12 = [self _sectionConfigurationForIntentType:v9 sections:sectionsCopy config:v8];
    [v10 setSectionConfig:v12];

    [contextCopy setQueryIntent:v10];
  }
}

+ (id)applySectionPolicyForQueryContext:(id)context sections:(id)sections
{
  v65 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  sectionsCopy = sections;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  queryIntent = [contextCopy queryIntent];
  if ([queryIntent intentType])
  {
    sectionConfig = [queryIntent sectionConfig];

    if (sectionConfig)
    {
      v48 = array4;
      v46 = array2;
      v45 = contextCopy;
      v43 = queryIntent;
      sectionConfig2 = [queryIntent sectionConfig];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v44 = sectionsCopy;
      obj = sectionsCopy;
      v14 = array5;
      v52 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (!v52)
      {
        goto LABEL_40;
      }

      v51 = *v58;
      v47 = sectionConfig2;
      while (1)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v58 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          bundleIdentifier = [v16 bundleIdentifier];
          sectionDisplayStrategies = [sectionConfig2 sectionDisplayStrategies];
          v19 = [sectionDisplayStrategies objectForKeyedSubscript:bundleIdentifier];
          intValue = [v19 intValue];

          if (intValue > 2)
          {
            if (intValue != 3)
            {
              if (intValue == 5)
              {
                v23 = array3;
                v24 = array;
                v25 = SSGeneralLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v63 = bundleIdentifier;
                  _os_log_impl(&dword_1D9F69000, v25, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Rule] Unhiding section %@ and results due to QU intent match", buf, 0xCu);
                }

                [v16 setIsInitiallyHidden:0];
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                resultSet = [v16 resultSet];
                v27 = [resultSet countByEnumeratingWithState:&v53 objects:v61 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v54;
                  do
                  {
                    for (j = 0; j != v28; ++j)
                    {
                      if (*v54 != v29)
                      {
                        objc_enumerationMutation(resultSet);
                      }

                      rankingItem = [*(*(&v53 + 1) + 8 * j) rankingItem];
                      [rankingItem setShouldHideUnderShowMore:0];
                    }

                    v28 = [resultSet countByEnumeratingWithState:&v53 objects:v61 count:16];
                  }

                  while (v28);
                }

                array = v24;
                array3 = v23;
                v14 = array5;
                sectionConfig2 = v47;
              }

LABEL_26:
              isInitiallyHidden = [v16 isInitiallyHidden];
              v22 = v14;
              if ((isInitiallyHidden & 1) == 0)
              {
                bundleIdentifier2 = [v16 bundleIdentifier];
                if ([bundleIdentifier2 isEqualToString:@"com.apple.spotlight.tophits"])
                {

                  v22 = array;
                }

                else
                {
                  bundleIdentifier3 = [v16 bundleIdentifier];
                  v37 = [bundleIdentifier3 isEqualToString:@"com.apple.searchd.suggestions"];

                  if (v37)
                  {
                    v22 = array;
                  }

                  else
                  {
                    v22 = v46;
                  }
                }
              }

              goto LABEL_38;
            }

            v35 = SSGeneralLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v63 = bundleIdentifier;
              _os_log_impl(&dword_1D9F69000, v35, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Rule] Hiding section %@ under show more due to strong local intent.", buf, 0xCu);
            }

            [v16 setIsInitiallyHidden:1];
            v22 = v14;
          }

          else
          {
            if (intValue != 1)
            {
              if (intValue == 2)
              {
                v21 = SSGeneralLog();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v63 = bundleIdentifier;
                  _os_log_impl(&dword_1D9F69000, v21, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Rule] Demoting section %@ due to local intent.", buf, 0xCu);
                }

                v22 = v48;
                goto LABEL_38;
              }

              goto LABEL_26;
            }

            v34 = SSGeneralLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v63 = bundleIdentifier;
              _os_log_impl(&dword_1D9F69000, v34, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Rule] Promoting section %@ due to intent.", buf, 0xCu);
            }

            [v16 setIsInitiallyHidden:0];
            v22 = array3;
          }

LABEL_38:
          [v22 addObject:v16];
        }

        v52 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (!v52)
        {
LABEL_40:

          [array addObjectsFromArray:array3];
          v38 = sectionConfig2;
          array2 = v46;
          [array addObjectsFromArray:v46];
          array4 = v48;
          [array addObjectsFromArray:v48];
          [array addObjectsFromArray:v14];
          v39 = array;

          v40 = v14;
          sectionsCopy = v44;
          contextCopy = v45;
          queryIntent = v43;
          goto LABEL_42;
        }
      }
    }
  }

  v39 = sectionsCopy;
  v40 = array5;
LABEL_42:

  v41 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)_intentForQueryContext:(id)context sections:(id)sections
{
  sectionsCopy = sections;
  contextCopy = context;
  v8 = objc_opt_new();
  [SSQueryIntentManager _prepareSectionInformation:sectionsCopy intentHelper:v8];
  [v8 setIntentPrefixLength:{objc_msgSend(self, "_prefixLengthModeling:", contextCopy)}];
  v9 = [self _postRetrievalModeling:sectionsCopy];

  [v8 setIntentPostRetrieval:v9];
  [v8 setIntentNextSection:{objc_msgSend(self, "_nextSectionModeling:", v8)}];
  v10 = [self _queryUnderstandingModeling:contextCopy intentHelper:v8];

  [v8 setIntentQU:v10];
  v11 = [self _determineIntentAndStrength:v8];

  return v11;
}

+ (id)_determineIntentAndStrength:(id)strength
{
  v17 = *MEMORY[0x1E69E9840];
  strengthCopy = strength;
  [strengthCopy setIntentType:{objc_msgSend(self, "_ruleBasedIntent:", strengthCopy)}];
  if (![strengthCopy intentType])
  {
    if ([strengthCopy intentPostRetrieval])
    {
      intentPostRetrieval = [strengthCopy intentPostRetrieval];
    }

    else if ([strengthCopy intentQU])
    {
      intentPostRetrieval = [strengthCopy intentQU];
    }

    else if ([strengthCopy intentNextSection])
    {
      intentPostRetrieval = [strengthCopy intentNextSection];
    }

    else
    {
      intentPostRetrieval = [strengthCopy intentPrefixLength];
    }

    [strengthCopy setIntentType:intentPostRetrieval];
  }

  v6 = +[SSQueryIntentManagerConfig sharedInstance];
  intentOverrides = [v6 intentOverrides];

  if (intentOverrides)
  {
    intentOverrides2 = [v6 intentOverrides];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(strengthCopy, "intentType")}];
    v10 = [intentOverrides2 objectForKeyedSubscript:v9];
    intValue = [v10 intValue];

    if ((intValue - 1) <= 0x14)
    {
      [strengthCopy setIntentType:intValue];
    }
  }

  [strengthCopy setIntentStrength:{+[SSQueryIntent intentStrength:](SSQueryIntent, "intentStrength:", objc_msgSend(strengthCopy, "intentType"))}];
  v12 = SSGeneralLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = strengthCopy;
    _os_log_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling] %@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];

  return strengthCopy;
}

+ (int)_ruleBasedIntent:(id)intent
{
  intentCopy = intent;
  topHitResultBundleId = [intentCopy topHitResultBundleId];
  if ([topHitResultBundleId isEqualToString:@"com.apple.weather"])
  {
    retrievedBundleIDs = [intentCopy retrievedBundleIDs];
    v6 = [retrievedBundleIDs containsObject:@"com.apple.parsec.weather"];

    if (v6)
    {
      v7 = 20;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

+ (id)_suggestionConfigurationOverrideForQueryContext:(id)context config:(id)config
{
  contextCopy = context;
  configCopy = config;
  v8 = [configCopy getIntParameter:@"IntentModelingSuppressSuggestionsUpToPrefixLength"];
  v9 = [configCopy getIntParameter:@"IntentModelingShowSuggestionsAsOfPrefixLength"];
  v10 = v9;
  if (v8 < 0 && v9 < 0)
  {
    goto LABEL_18;
  }

  searchString = [contextCopy searchString];
  v12 = [searchString length];

  if (v12 < 0 || (v8 >= 0 ? (v13 = v8 < v12) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), v10 >= 0 ? (v15 = v10 <= v12) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), (v14 & 1) == 0 && !v16))
  {
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v17 = objc_opt_new();
  [v17 setShowWebAsTypedSuggestion:{objc_msgSend(configCopy, "getBoolParameter:", @"IntentModelingShowWebAsTypedBaseline"}];
  [v17 setLocalSuggestionQuota:{objc_msgSend(configCopy, "getIntParameter:", @"IntentModelingLocalSuggestionQuotaLocal"}];
  if (![self _isJaJP:contextCopy])
  {
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_27:
    [v17 setServerSuggestionQuota:0];
    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  [v17 setLocalSuggestionQuota:{objc_msgSend(configCopy, "getIntParameter:", @"IntentModelingLocalSuggestionQuotaBaseline"}];
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_28:
  [v17 setServerSuggestionQuota:{objc_msgSend(configCopy, "getIntParameter:", @"IntentModelingServerSuggestionQuotaBaseline"}];
LABEL_19:

  return v17;
}

+ (id)_suggestionConfigurationForIntent:(id)intent queryContext:(id)context config:(id)config
{
  intentCopy = intent;
  contextCopy = context;
  configCopy = config;
  v11 = [self _suggestionConfigurationOverrideForQueryContext:contextCopy config:configCopy];
  if (!v11)
  {
    v11 = objc_opt_new();
    if ([self _isJaJP:contextCopy])
    {
      [v11 setShowWebAsTypedSuggestion:{objc_msgSend(configCopy, "getBoolParameter:", @"IntentModelingShowWebAsTypedBaseline"}];
      [v11 setLocalSuggestionQuota:{objc_msgSend(configCopy, "getIntParameter:", @"IntentModelingLocalSuggestionQuotaBaseline"}];
      [v11 setServerSuggestionQuota:{objc_msgSend(configCopy, "getIntParameter:", @"IntentModelingServerSuggestionQuotaBaseline"}];
    }

    else
    {
      [v11 setShowWebAsTypedSuggestion:{objc_msgSend(configCopy, "getBoolParameter:", @"IntentModelingShowWebAsTypedLocal"}];
      [v11 setLocalSuggestionQuota:{objc_msgSend(configCopy, "getIntParameter:", @"IntentModelingLocalSuggestionQuotaLocal"}];
      [v11 setServerSuggestionQuota:{objc_msgSend(configCopy, "getIntParameter:", @"IntentModelingServerSuggestionQuotaLocal"}];
      if ([intentCopy intentStrength] == 2)
      {
        [v11 setShowWebAsTypedSuggestion:{objc_msgSend(configCopy, "getBoolParameter:", @"IntentModelingShowWebAsTypedLocalStrong"}];
      }

      else
      {
        intentType = [intentCopy intentType];
        if (intentType <= 0x12 && (((1 << intentType) & 0x76000) != 0 || intentType == 3))
        {
          [v11 setServerSuggestionQuota:{objc_msgSend(configCopy, "getIntParameter:", @"IntentModelingServerSuggestionQuotaServer"}];
        }
      }

      if ([intentCopy intentType] != 15 && objc_msgSend(intentCopy, "resultSetHasAppSectionWithinTop3") && !objc_msgSend(v11, "serverSuggestionQuota") && objc_msgSend(configCopy, "getBoolParameter:", @"IntentModelingServerAppAccelerator"))
      {
        [v11 setServerSuggestionQuota:1];
      }

      conditionalExtraSuggestions = [configCopy conditionalExtraSuggestions];

      if (conditionalExtraSuggestions)
      {
        conditionalExtraSuggestions2 = [configCopy conditionalExtraSuggestions];
        serverTopBundleId = [intentCopy serverTopBundleId];
        v16 = [conditionalExtraSuggestions2 objectForKeyedSubscript:serverTopBundleId];

        if (v16 && [intentCopy serverHasTopHit] && !objc_msgSend(v11, "serverSuggestionQuota"))
        {
          [v11 setServerSuggestionQuota:{objc_msgSend(v16, "intValue")}];
        }
      }
    }
  }

  v17 = v11;

  return v17;
}

+ (id)_sectionConfigurationForIntentType:(id)type sections:(id)sections config:(id)config
{
  v49 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  sectionsCopy = sections;
  configCopy = config;
  if (_sectionConfigurationForIntentType_sections_config__onceToken != -1)
  {
    +[SSQueryIntentManager _sectionConfigurationForIntentType:sections:config:];
  }

  v9 = objc_opt_new();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [v9 setSectionDisplayStrategies:dictionary];
  v11 = typeCopy;
  intentStrength = [typeCopy intentStrength];
  if (intentStrength == 1)
  {
    v13 = SSIntentModelingServerSectionDisplayStrategyLocal;
    goto LABEL_7;
  }

  if (intentStrength == 2)
  {
    v13 = SSIntentModelingServerSectionDisplayStrategyLocalStrong;
LABEL_7:
    v43 = [configCopy getIntParameter:*v13];
    goto LABEL_9;
  }

  v43 = 0;
LABEL_9:
  selfCopy = self;
  if ([typeCopy intentType] == 20)
  {
    v14 = [configCopy getBoolParameter:@"IntentModelingServerWeatherIntent"];
  }

  else
  {
    v14 = 0;
  }

  v38 = v9;
  if ([self isPhotosRelatedIntent:{objc_msgSend(typeCopy, "intentType")}])
  {
    v15 = [configCopy getBoolParameter:@"IntentModelingPhotosIntent"];
  }

  else
  {
    v15 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = sectionsCopy;
  v16 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = v14 | v15;
    v19 = *v45;
    do
    {
      v20 = 0;
      v21 = selfCopy;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v44 + 1) + 8 * v20);
        bundleIdentifier = [v22 bundleIdentifier];
        if (v43 && [v21 _isParsecSection:bundleIdentifier] && objc_msgSend(v21, "_demoteParsecForIntent:section:config:", v11, v22, configCopy))
        {
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v43];
          [dictionary setObject:v24 forKeyedSubscript:bundleIdentifier];
        }

        if ((v18 & 1) != 0 && ([_sectionConfigurationForIntentType_sections_config___weatherSectionIdentifiersForPromotion containsObject:bundleIdentifier] && objc_msgSend(v11, "intentType") == 20 || objc_msgSend(_sectionConfigurationForIntentType_sections_config___photosSectionIdentifiersForPromotion, "containsObject:", bundleIdentifier) && objc_msgSend(v21, "isPhotosRelatedIntent:", objc_msgSend(v11, "intentType"))))
        {
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
          [dictionary setObject:v25 forKeyedSubscript:bundleIdentifier];
        }

        v26 = [dictionary objectForKeyedSubscript:bundleIdentifier];
        if (v26)
        {
        }

        else
        {
          quIntentLabel = [v11 quIntentLabel];
          if (quIntentLabel)
          {
            v28 = quIntentLabel;
            quIntentLabel2 = [v11 quIntentLabel];
            v30 = [SSRankingManager bundleIDSetsForQUIntent:quIntentLabel2];
            v31 = [v30 containsObject:bundleIdentifier];

            v21 = selfCopy;
            v11 = typeCopy;

            if (v31)
            {
              [dictionary setObject:&unk_1F55B3A68 forKeyedSubscript:bundleIdentifier];
            }
          }
        }

        ++v20;
      }

      while (v17 != v20);
      v32 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      v17 = v32;
    }

    while (v32);
  }

  if (([v11 resultSetHasTopHits] & 1) == 0 && v43 == 3)
  {
    v33 = [dictionary count];
    v34 = v33 == [typeCopy resultSetSectionCount];
    v11 = typeCopy;
    if (v34)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      [v38 setSectionDisplayStrategies:dictionary2];

      v11 = typeCopy;
    }
  }

  v36 = *MEMORY[0x1E69E9840];

  return v38;
}

void __75__SSQueryIntentManager__sectionConfigurationForIntentType_sections_config___block_invoke()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v10[0] = @"com.apple.parsec.weather";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = _sectionConfigurationForIntentType_sections_config___weatherSectionIdentifiersForPromotion;
  _sectionConfigurationForIntentType_sections_config___weatherSectionIdentifiersForPromotion = v2;

  v4 = MEMORY[0x1E695DFD8];
  v9 = @"com.apple.searchd.syndicatedPhotos";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v6 = [v4 setWithArray:v5];
  v7 = _sectionConfigurationForIntentType_sections_config___photosSectionIdentifiersForPromotion;
  _sectionConfigurationForIntentType_sections_config___photosSectionIdentifiersForPromotion = v6;

  v8 = *MEMORY[0x1E69E9840];
}

+ (int)_intentForSection:(id)section withTopHit:(BOOL)hit
{
  hitCopy = hit;
  sectionCopy = section;
  v7 = sectionCopy;
  if (sectionCopy)
  {
    results = [sectionCopy results];
    if (results)
    {
      v9 = results;
      isInitiallyHidden = [v7 isInitiallyHidden];

      if ((isInitiallyHidden & 1) == 0)
      {
        bundleIdentifier = [v7 bundleIdentifier];
        results2 = [v7 results];
        firstObject = [results2 firstObject];

        if (hitCopy)
        {
          if (![bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"] || !objc_msgSend(firstObject, "topHit"))
          {
            intValue = 0;
LABEL_33:

            goto LABEL_5;
          }

          sectionBundleIdentifier = [firstObject sectionBundleIdentifier];

          bundleIdentifier = sectionBundleIdentifier;
        }

        if (_intentForSection_withTopHit__onceToken != -1)
        {
          +[SSQueryIntentManager _intentForSection:withTopHit:];
        }

        v17 = [self isServerResult:firstObject];
        v18 = [_intentForSection_withTopHit___bundleIntents objectForKey:bundleIdentifier];
        v19 = v18;
        if (v17)
        {
          if (v18)
          {
            intValue = [v18 intValue];
          }

          else
          {
            intValue = 14;
          }

          goto LABEL_32;
        }

        if (v18)
        {
          results3 = [v7 results];
          firstObject2 = [results3 firstObject];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([firstObject2 rankingItem], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "likelihood"), v24 = v23, v22, v24 > 0.0500000007))
          {
            intValue = [v19 intValue];
          }

          else
          {
            intValue = 0;
          }
        }

        else if ([bundleIdentifier isEqualToString:@"com.apple.calculation"])
        {
          firstObject2 = [firstObject sectionHeader];
          v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v26 = [v25 localizedStringForKey:@"CONVERSION_SECTION_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
          if ([firstObject2 isEqualToString:v26])
          {
            intValue = 3;
          }

          else
          {
            intValue = 2;
          }
        }

        else
        {
          if (![bundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
          {
            intValue = 1;
            goto LABEL_32;
          }

          firstObject2 = [firstObject resultBundleId];
          if ([firstObject2 isEqualToString:@"com.apple.safari.userTypedURL"])
          {
            intValue = 19;
          }

          else
          {
            intValue = 13;
          }
        }

LABEL_32:
        goto LABEL_33;
      }
    }
  }

  intValue = 0;
LABEL_5:

  return intValue;
}

void __53__SSQueryIntentManager__intentForSection_withTopHit___block_invoke()
{
  v4[20] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.parsec.itunes.iosSoftware";
  v3[1] = @"com.apple.parsec.sports";
  v4[0] = &unk_1F55B3A80;
  v4[1] = &unk_1F55B3A98;
  v3[2] = @"com.apple.parsec.maps";
  v3[3] = @"com.apple.parsec.kg";
  v4[2] = &unk_1F55B3AB0;
  v4[3] = &unk_1F55B3AC8;
  v3[4] = @"com.apple.parsec.weather";
  v3[5] = @"com.apple.mobileslideshow";
  v4[4] = &unk_1F55B3AE0;
  v4[5] = &unk_1F55B3AF8;
  v3[6] = @"com.apple.mobilenotes";
  v3[7] = @"com.apple.DocumentsApp";
  v4[6] = &unk_1F55B3B10;
  v4[7] = &unk_1F55B3B10;
  v3[8] = @"com.apple.mobilemail";
  v3[9] = @"com.apple.MobileSMS";
  v4[8] = &unk_1F55B3B28;
  v4[9] = &unk_1F55B3B28;
  v3[10] = @"com.apple.mobilecal";
  v3[11] = @"com.apple.reminders";
  v4[10] = &unk_1F55B3B40;
  v4[11] = &unk_1F55B3B40;
  v3[12] = @"com.apple.searchd.syndicatedPhotos";
  v3[13] = @"com.apple.searchd.syndicatedPhotos.MobileSMS";
  v4[12] = &unk_1F55B3AF8;
  v4[13] = &unk_1F55B3AF8;
  v3[14] = @"com.apple.searchd.syndicatedPhotos.mobilenotes";
  v3[15] = @"com.apple.searchd.syndicatedPhotos.mobileslideshow";
  v4[14] = &unk_1F55B3AF8;
  v4[15] = &unk_1F55B3AF8;
  v3[16] = @"com.apple.Preferences";
  v3[17] = @"com.apple.shortcuts";
  v4[16] = &unk_1F55B3B58;
  v4[17] = &unk_1F55B3B70;
  v3[18] = @"com.apple.datadetector.quick_actions";
  v3[19] = @"com.apple.application";
  v4[18] = &unk_1F55B3B88;
  v4[19] = &unk_1F55B3A68;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:20];
  v1 = _intentForSection_withTopHit___bundleIntents;
  _intentForSection_withTopHit___bundleIntents = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (int)_postRetrievalModeling:(id)modeling
{
  firstObject = [modeling firstObject];
  LODWORD(self) = [self _intentForSection:firstObject withTopHit:1];

  return self;
}

+ (int)_nextSectionModeling:(id)modeling
{
  nextSectionForIntent = [modeling nextSectionForIntent];
  LODWORD(self) = [self _intentForSection:nextSectionForIntent withTopHit:0];

  return self;
}

+ (int)_prefixLengthModeling:(id)modeling
{
  searchString = [modeling searchString];
  v4 = [searchString length];

  if (v4 < 0xB)
  {
    return 1;
  }

  else
  {
    return 14;
  }
}

+ (int)_queryUnderstandingModeling:(id)modeling intentHelper:(id)helper
{
  v65 = *MEMORY[0x1E69E9840];
  modelingCopy = modeling;
  helperCopy = helper;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_40;
  }

  if (_queryUnderstandingModeling_intentHelper__onceToken != -1)
  {
    +[SSQueryIntentManager _queryUnderstandingModeling:intentHelper:];
  }

  queryUnderstandingOutput = [modelingCopy queryUnderstandingOutput];
  v9 = [queryUnderstandingOutput count];

  if (v9 < 2)
  {
    goto LABEL_40;
  }

  queryUnderstandingOutput2 = [modelingCopy queryUnderstandingOutput];
  v11 = [queryUnderstandingOutput2 objectForKeyedSubscript:@"kQPQUIntentLabels"];

  queryUnderstandingOutput3 = [modelingCopy queryUnderstandingOutput];
  v13 = [queryUnderstandingOutput3 objectForKeyedSubscript:@"kQPQUIntentScores"];

  queryUnderstandingOutput4 = [modelingCopy queryUnderstandingOutput];
  v15 = [queryUnderstandingOutput4 objectForKeyedSubscript:@"kQPQUIntentIds"];

  firstObject = [v11 firstObject];
  firstObject2 = [v15 firstObject];
  intValue = [firstObject2 intValue];

  firstObject3 = [v13 firstObject];
  [firstObject3 floatValue];
  v21 = v20;

  if (intValue < 1 || v21 < 0.9)
  {
    goto LABEL_38;
  }

  v54 = v11;
  [helperCopy setQuIntentLabel:firstObject];
  v22 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalFiles objectForKeyedSubscript:firstObject];
  if (v22)
  {
    v23 = v22;
    retrievedBundleIDs = [helperCopy retrievedBundleIDs];
    v24 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalFiles objectForKeyedSubscript:firstObject];
    v25 = [retrievedBundleIDs containsObject:v24];

    if (v25)
    {
      v26 = 0;
      LODWORD(retrievedBundleIDs) = 10;
      goto LABEL_39;
    }
  }

  v27 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalPhotos objectForKeyedSubscript:firstObject];

  if (v27)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    allValues = [_queryUnderstandingModeling_intentHelper___quIntentsLocalPhotos objectForKeyedSubscript:firstObject];
    v29 = [allValues countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (!v29)
    {
      LODWORD(retrievedBundleIDs) = 9;
      goto LABEL_37;
    }

    v30 = v29;
    v53 = v13;
    v31 = *v60;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v60 != v31)
        {
          objc_enumerationMutation(allValues);
        }

        v33 = *(*(&v59 + 1) + 8 * i);
        retrievedBundleIDs2 = [helperCopy retrievedBundleIDs];
        LOBYTE(v33) = [retrievedBundleIDs2 containsObject:v33];

        if (v33)
        {

          v26 = 0;
          LODWORD(retrievedBundleIDs) = 9;
          goto LABEL_22;
        }
      }

      v30 = [allValues countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }

    LODWORD(retrievedBundleIDs) = 9;
LABEL_20:
    v13 = v53;
LABEL_37:

    v11 = v54;
LABEL_38:
    v26 = 1;
    goto LABEL_39;
  }

  if ([firstObject isEqualToString:@"INTENT_MAIL_SEARCH"])
  {
    retrievedBundleIDs3 = [helperCopy retrievedBundleIDs];
    LODWORD(retrievedBundleIDs) = [retrievedBundleIDs3 containsObject:@"com.apple.mobilemail"];

    if (retrievedBundleIDs)
    {
      v26 = 0;
      LODWORD(retrievedBundleIDs) = 11;
      goto LABEL_39;
    }
  }

  if ([firstObject isEqualToString:@"INTENT_MESSAGE_SEARCH"])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    allValues = [_queryUnderstandingModeling_intentHelper___quIntentsLocalCommunications allValues];
    v36 = [allValues countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (!v36)
    {
      LODWORD(retrievedBundleIDs) = 11;
      goto LABEL_37;
    }

    v37 = v36;
    v53 = v13;
    v38 = *v56;
    while (2)
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(allValues);
        }

        v40 = *(*(&v55 + 1) + 8 * j);
        retrievedBundleIDs4 = [helperCopy retrievedBundleIDs];
        LOBYTE(v40) = [retrievedBundleIDs4 containsObject:v40];

        if (v40)
        {

          v26 = 0;
          LODWORD(retrievedBundleIDs) = 11;
LABEL_22:
          v13 = v53;
          v11 = v54;
          goto LABEL_39;
        }
      }

      v37 = [allValues countByEnumeratingWithState:&v55 objects:v63 count:16];
      LODWORD(retrievedBundleIDs) = 11;
      if (v37)
      {
        continue;
      }

      goto LABEL_20;
    }
  }

  v44 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalEvents objectForKeyedSubscript:firstObject];
  if (!v44)
  {
    goto LABEL_61;
  }

  v45 = v44;
  retrievedBundleIDs = [helperCopy retrievedBundleIDs];
  v46 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalEvents objectForKeyedSubscript:firstObject];
  v47 = [retrievedBundleIDs containsObject:v46];

  if (v47)
  {
    v26 = 0;
    LODWORD(retrievedBundleIDs) = 12;
  }

  else
  {
LABEL_61:
    if ([firstObject isEqualToString:@"INTENT_SETTINGS_SEARCH"] && (objc_msgSend(helperCopy, "retrievedBundleIDs"), v48 = objc_claimAutoreleasedReturnValue(), LODWORD(retrievedBundleIDs) = objc_msgSend(v48, "containsObject:", @"com.apple.Preferences"), v48, (retrievedBundleIDs & 1) != 0))
    {
      v26 = 0;
      LODWORD(retrievedBundleIDs) = 6;
    }

    else
    {
      v49 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalGeneric objectForKeyedSubscript:firstObject];
      if (!v49)
      {
        goto LABEL_56;
      }

      v50 = v49;
      retrievedBundleIDs = [helperCopy retrievedBundleIDs];
      v51 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalGeneric objectForKeyedSubscript:firstObject];
      v52 = [retrievedBundleIDs containsObject:v51];

      if (v52)
      {
        v26 = 0;
        LODWORD(retrievedBundleIDs) = 1;
      }

      else
      {
LABEL_56:
        if (([firstObject hasPrefix:@"INTENT_FLIGHT"] & 1) == 0 && (objc_msgSend(firstObject, "hasPrefix:", @"INTENT_HOTEL") & 1) == 0 && !objc_msgSend(firstObject, "hasPrefix:", @"INTENT_RESTAURANT") || objc_msgSend(helperCopy, "resultSetSectionCount") <= 0)
        {
          goto LABEL_38;
        }

        v26 = 0;
        LODWORD(retrievedBundleIDs) = 1;
      }
    }
  }

LABEL_39:

  if (v26)
  {
LABEL_40:
    LODWORD(retrievedBundleIDs) = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return retrievedBundleIDs;
}

void __65__SSQueryIntentManager__queryUnderstandingModeling_intentHelper___block_invoke()
{
  v23[5] = *MEMORY[0x1E69E9840];
  v23[0] = @"com.apple.mobileslideshow";
  v23[1] = @"com.apple.searchd.syndicatedPhotos";
  v23[2] = @"com.apple.searchd.syndicatedPhotos.MobileSMS";
  v23[3] = @"com.apple.searchd.syndicatedPhotos.mobilenotes";
  v23[4] = @"com.apple.searchd.syndicatedPhotos.mobileslideshow";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];
  v1 = _queryUnderstandingModeling_intentHelper___photosBundles;
  _queryUnderstandingModeling_intentHelper___photosBundles = v0;

  v21[0] = @"INTENT_PHOTO_SEARCH";
  v21[1] = @"INTENT_PHOTO_SEARCH_OCR";
  v22[0] = _queryUnderstandingModeling_intentHelper___photosBundles;
  v22[1] = _queryUnderstandingModeling_intentHelper___photosBundles;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v3 = _queryUnderstandingModeling_intentHelper___quIntentsLocalPhotos;
  _queryUnderstandingModeling_intentHelper___quIntentsLocalPhotos = v2;

  v19[0] = @"INTENT_NOTES_SEARCH";
  v19[1] = @"INTENT_FILE_SEARCH";
  v20[0] = @"com.apple.mobilenotes";
  v20[1] = @"com.apple.DocumentsApp";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v5 = _queryUnderstandingModeling_intentHelper___quIntentsLocalFiles;
  _queryUnderstandingModeling_intentHelper___quIntentsLocalFiles = v4;

  v17[0] = @"INTENT_MAIL_SEARCH";
  v17[1] = @"INTENT_MESSAGE_SEARCH";
  v18[0] = @"com.apple.mobilemail";
  v18[1] = @"com.apple.MobileSMS";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v7 = _queryUnderstandingModeling_intentHelper___quIntentsLocalCommunications;
  _queryUnderstandingModeling_intentHelper___quIntentsLocalCommunications = v6;

  v15[0] = @"INTENT_CALENDAR_SEARCH";
  v15[1] = @"INTENT_REMINDER_SEARCH";
  v16[0] = @"com.apple.mobilecal";
  v16[1] = @"com.apple.reminders";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v9 = _queryUnderstandingModeling_intentHelper___quIntentsLocalEvents;
  _queryUnderstandingModeling_intentHelper___quIntentsLocalEvents = v8;

  v13 = @"INTENT_SAFARI_SEARCH";
  v14 = @"com.apple.mobilesafari";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = _queryUnderstandingModeling_intentHelper___quIntentsLocalGeneric;
  _queryUnderstandingModeling_intentHelper___quIntentsLocalGeneric = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)_prepareSectionInformation:(id)information intentHelper:(id)helper
{
  v45 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  helperCopy = helper;
  array = [MEMORY[0x1E695DF70] array];
  [helperCopy setResultSetHasTopHits:0];
  [helperCopy setResultSetHasSuggestions:0];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = informationCopy;
  v7 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v38 = *v41;
    do
    {
      v10 = 0;
      v36 = v9;
      do
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        bundleIdentifier = [v11 bundleIdentifier];
        [array addObject:bundleIdentifier];

        bundleIdentifier2 = [v11 bundleIdentifier];
        if ([bundleIdentifier2 isEqualToString:@"com.apple.spotlight.tophits"])
        {
          results = [v11 results];
          v15 = [results count];

          if (v15)
          {
            [helperCopy setResultSetHasTopHits:1];
            results2 = [v11 results];
            firstObject = [results2 firstObject];
            resultBundleId = [firstObject resultBundleId];
            [helperCopy setTopHitResultBundleId:resultBundleId];

            goto LABEL_15;
          }
        }

        else
        {
        }

        bundleIdentifier3 = [v11 bundleIdentifier];
        v20 = [bundleIdentifier3 isEqualToString:@"com.apple.searchd.suggestions"];

        if (v20)
        {
          [helperCopy setResultSetHasSuggestions:1];
        }

        else
        {
          bundleIdentifier4 = [v11 bundleIdentifier];
          v22 = [bundleIdentifier4 isEqualToString:@"com.apple.parsec.itunes.iosSoftware"];

          if (v22 && v9 <= 2)
          {
            [helperCopy setResultSetHasAppSectionWithinTop3:1];
          }
        }

LABEL_15:
        bundleIdentifier5 = [v11 bundleIdentifier];
        if (![bundleIdentifier5 hasPrefix:@"com.apple.parsec"])
        {
          goto LABEL_21;
        }

        serverTopBundleId = [helperCopy serverTopBundleId];
        if (!serverTopBundleId)
        {

LABEL_20:
          bundleIdentifier6 = [v11 bundleIdentifier];
          [helperCopy setServerTopBundleId:bundleIdentifier6];

          results3 = [v11 results];
          bundleIdentifier5 = [results3 firstObject];

          [helperCopy setServerHasTopHit:{objc_msgSend(bundleIdentifier5, "topHit") != 0}];
LABEL_21:

          goto LABEL_22;
        }

        v25 = serverTopBundleId;
        serverTopBundleId2 = [helperCopy serverTopBundleId];
        v27 = [serverTopBundleId2 length];

        if (!v27)
        {
          goto LABEL_20;
        }

LABEL_22:
        nextSectionForIntent = [helperCopy nextSectionForIntent];
        if (nextSectionForIntent || ([helperCopy resultSetHasSuggestions] & 1) == 0)
        {
        }

        else
        {
          bundleIdentifier7 = [v11 bundleIdentifier];
          v32 = [bundleIdentifier7 isEqualToString:@"com.apple.searchd.suggestions"];

          if ((v32 & 1) == 0)
          {
            [helperCopy setNextSectionForIntent:v11];
          }
        }

        ++v9;
        ++v10;
      }

      while (v8 != v10);
      v9 = v36 + v8;
      v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v8);
  }

  v33 = [MEMORY[0x1E695DFD8] setWithArray:array];
  [helperCopy setRetrievedBundleIDs:v33];

  retrievedBundleIDs = [helperCopy retrievedBundleIDs];
  [helperCopy setResultSetSectionCount:{objc_msgSend(retrievedBundleIDs, "count") - objc_msgSend(helperCopy, "resultSetHasSuggestions")}];

  v35 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_demoteParsecForIntent:(id)intent section:(id)section config:(id)config
{
  intentCopy = intent;
  sectionCopy = section;
  configCopy = config;
  bundleIdentifier = [sectionCopy bundleIdentifier];
  serverDomainDemotionExclusionSet = [configCopy serverDomainDemotionExclusionSet];
  v16 = (!serverDomainDemotionExclusionSet || (v13 = serverDomainDemotionExclusionSet, [configCopy serverDomainDemotionExclusionSet], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", bundleIdentifier), v14, v13, (v15 & 1) == 0)) && (!objc_msgSend(self, "isPhotosRelatedIntent:", objc_msgSend(intentCopy, "intentType")) || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.parsec.web_images") & 1) == 0) && objc_msgSend(intentCopy, "intentType") != 20 && (!objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.parsec.maps") || !objc_msgSend(configCopy, "getBoolParameter:", @"IntentModelingMapsPoiIntent") || (objc_msgSend(self, "_hasMapsPOIResults:", sectionCopy) & 1) == 0);

  return v16;
}

+ (BOOL)_hasMapsPOIResults:(id)results
{
  v21 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  bundleIdentifier = [resultsCopy bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.parsec.maps"];

  if (v6)
  {
    if (_hasMapsPOIResults__onceToken != -1)
    {
      +[SSQueryIntentManager _hasMapsPOIResults:];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    results = [resultsCopy results];
    v8 = [results countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(results);
          }

          v12 = [self _getParsecMapsDetailedIdentifier:*(*(&v16 + 1) + 8 * i)];
          if ([v12 hasPrefix:_hasMapsPOIResults__mapsCategoryPrefix] & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", _hasMapsPOIResults__mapsChainBizPrefix))
          {

            v13 = 1;
            goto LABEL_17;
          }
        }

        v9 = [results countByEnumeratingWithState:&v16 objects:v20 count:16];
        v13 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_17:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void __43__SSQueryIntentManager__hasMapsPOIResults___block_invoke()
{
  v0 = _hasMapsPOIResults__mapsCategoryPrefix;
  _hasMapsPOIResults__mapsCategoryPrefix = @"m:category:";

  v1 = _hasMapsPOIResults__mapsChainBizPrefix;
  _hasMapsPOIResults__mapsChainBizPrefix = @"m:chainBusiness:";
}

+ (id)_getParsecMapsDetailedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  inlineCard = [identifierCopy inlineCard];
  cardSections = [inlineCard cardSections];
  if (!cardSections)
  {
    goto LABEL_4;
  }

  inlineCard2 = [identifierCopy inlineCard];
  cardSections2 = [inlineCard2 cardSections];
  v8 = [cardSections2 count];

  if (v8)
  {
    inlineCard3 = [identifierCopy inlineCard];
    cardSections3 = [inlineCard3 cardSections];
    inlineCard = [cardSections3 firstObject];

    cardSections = [inlineCard resultIdentifier];
LABEL_4:

    goto LABEL_6;
  }

  cardSections = 0;
LABEL_6:

  return cardSections;
}

+ (BOOL)isServerResult:(id)result
{
  resultCopy = result;
  if (SSResultTypeIsServer([resultCopy type]))
  {
    v5 = 1;
  }

  else
  {
    resultBundleId = [resultCopy resultBundleId];
    v5 = [self _isParsecSection:resultBundleId];
  }

  return v5;
}

+ (BOOL)_isJaJP:(id)p
{
  keyboardPrimaryLanguage = [p keyboardPrimaryLanguage];
  v4 = [keyboardPrimaryLanguage isEqualToString:@"ja-JP"];

  return v4;
}

@end