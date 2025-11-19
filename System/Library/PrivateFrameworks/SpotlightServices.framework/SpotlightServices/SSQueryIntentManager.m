@interface SSQueryIntentManager
+ (BOOL)_demoteParsecForIntent:(id)a3 section:(id)a4 config:(id)a5;
+ (BOOL)_hasMapsPOIResults:(id)a3;
+ (BOOL)_isJaJP:(id)a3;
+ (BOOL)isEnabled;
+ (BOOL)isServerResult:(id)a3;
+ (id)_determineIntentAndStrength:(id)a3;
+ (id)_getParsecMapsDetailedIdentifier:(id)a3;
+ (id)_intentForQueryContext:(id)a3 sections:(id)a4;
+ (id)_sectionConfigurationForIntentType:(id)a3 sections:(id)a4 config:(id)a5;
+ (id)_suggestionConfigurationForIntent:(id)a3 queryContext:(id)a4 config:(id)a5;
+ (id)_suggestionConfigurationOverrideForQueryContext:(id)a3 config:(id)a4;
+ (id)applySectionPolicyForQueryContext:(id)a3 sections:(id)a4;
+ (int)_intentForSection:(id)a3 withTopHit:(BOOL)a4;
+ (int)_nextSectionModeling:(id)a3;
+ (int)_postRetrievalModeling:(id)a3;
+ (int)_prefixLengthModeling:(id)a3;
+ (int)_queryUnderstandingModeling:(id)a3 intentHelper:(id)a4;
+ (int)_ruleBasedIntent:(id)a3;
+ (void)_prepareSectionInformation:(id)a3 intentHelper:(id)a4;
+ (void)setQueryIntentForQueryContext:(id)a3 sections:(id)a4 rankingInfo:(id)a5;
@end

@implementation SSQueryIntentManager

+ (BOOL)isEnabled
{
  v2 = +[SSQueryIntentManagerConfig sharedInstance];
  v3 = [v2 getBoolParameter:@"IntentModelingEnabledMobile"];
  v4 = SSEnableSpotlightIntentModeling();

  return v4 & v3;
}

+ (void)setQueryIntentForQueryContext:(id)a3 sections:(id)a4 rankingInfo:(id)a5
{
  v13 = a3;
  v7 = a4;
  if ([a1 isEnabled])
  {
    v8 = +[SSQueryIntentManagerConfig sharedInstance];
    v9 = [a1 _intentForQueryContext:v13 sections:v7];
    v10 = objc_opt_new();
    [v10 setIntentType:{objc_msgSend(v9, "intentType")}];
    v11 = [a1 _suggestionConfigurationForIntent:v9 queryContext:v13 config:v8];
    [v10 setSuggestionConfig:v11];

    v12 = [a1 _sectionConfigurationForIntentType:v9 sections:v7 config:v8];
    [v10 setSectionConfig:v12];

    [v13 setQueryIntent:v10];
  }
}

+ (id)applySectionPolicyForQueryContext:(id)a3 sections:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  v11 = [v5 queryIntent];
  if ([v11 intentType])
  {
    v12 = [v11 sectionConfig];

    if (v12)
    {
      v48 = v10;
      v46 = v8;
      v45 = v5;
      v43 = v11;
      v13 = [v11 sectionConfig];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v44 = v6;
      obj = v6;
      v14 = v49;
      v52 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (!v52)
      {
        goto LABEL_40;
      }

      v51 = *v58;
      v47 = v13;
      while (1)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v58 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          v17 = [v16 bundleIdentifier];
          v18 = [v13 sectionDisplayStrategies];
          v19 = [v18 objectForKeyedSubscript:v17];
          v20 = [v19 intValue];

          if (v20 > 2)
          {
            if (v20 != 3)
            {
              if (v20 == 5)
              {
                v23 = v9;
                v24 = v7;
                v25 = SSGeneralLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v63 = v17;
                  _os_log_impl(&dword_1D9F69000, v25, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Rule] Unhiding section %@ and results due to QU intent match", buf, 0xCu);
                }

                [v16 setIsInitiallyHidden:0];
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v26 = [v16 resultSet];
                v27 = [v26 countByEnumeratingWithState:&v53 objects:v61 count:16];
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
                        objc_enumerationMutation(v26);
                      }

                      v31 = [*(*(&v53 + 1) + 8 * j) rankingItem];
                      [v31 setShouldHideUnderShowMore:0];
                    }

                    v28 = [v26 countByEnumeratingWithState:&v53 objects:v61 count:16];
                  }

                  while (v28);
                }

                v7 = v24;
                v9 = v23;
                v14 = v49;
                v13 = v47;
              }

LABEL_26:
              v32 = [v16 isInitiallyHidden];
              v22 = v14;
              if ((v32 & 1) == 0)
              {
                v33 = [v16 bundleIdentifier];
                if ([v33 isEqualToString:@"com.apple.spotlight.tophits"])
                {

                  v22 = v7;
                }

                else
                {
                  v36 = [v16 bundleIdentifier];
                  v37 = [v36 isEqualToString:@"com.apple.searchd.suggestions"];

                  if (v37)
                  {
                    v22 = v7;
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
              v63 = v17;
              _os_log_impl(&dword_1D9F69000, v35, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Rule] Hiding section %@ under show more due to strong local intent.", buf, 0xCu);
            }

            [v16 setIsInitiallyHidden:1];
            v22 = v14;
          }

          else
          {
            if (v20 != 1)
            {
              if (v20 == 2)
              {
                v21 = SSGeneralLog();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v63 = v17;
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
              v63 = v17;
              _os_log_impl(&dword_1D9F69000, v34, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Rule] Promoting section %@ due to intent.", buf, 0xCu);
            }

            [v16 setIsInitiallyHidden:0];
            v22 = v9;
          }

LABEL_38:
          [v22 addObject:v16];
        }

        v52 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (!v52)
        {
LABEL_40:

          [v7 addObjectsFromArray:v9];
          v38 = v13;
          v8 = v46;
          [v7 addObjectsFromArray:v46];
          v10 = v48;
          [v7 addObjectsFromArray:v48];
          [v7 addObjectsFromArray:v14];
          v39 = v7;

          v40 = v14;
          v6 = v44;
          v5 = v45;
          v11 = v43;
          goto LABEL_42;
        }
      }
    }
  }

  v39 = v6;
  v40 = v49;
LABEL_42:

  v41 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)_intentForQueryContext:(id)a3 sections:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [SSQueryIntentManager _prepareSectionInformation:v6 intentHelper:v8];
  [v8 setIntentPrefixLength:{objc_msgSend(a1, "_prefixLengthModeling:", v7)}];
  v9 = [a1 _postRetrievalModeling:v6];

  [v8 setIntentPostRetrieval:v9];
  [v8 setIntentNextSection:{objc_msgSend(a1, "_nextSectionModeling:", v8)}];
  v10 = [a1 _queryUnderstandingModeling:v7 intentHelper:v8];

  [v8 setIntentQU:v10];
  v11 = [a1 _determineIntentAndStrength:v8];

  return v11;
}

+ (id)_determineIntentAndStrength:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setIntentType:{objc_msgSend(a1, "_ruleBasedIntent:", v4)}];
  if (![v4 intentType])
  {
    if ([v4 intentPostRetrieval])
    {
      v5 = [v4 intentPostRetrieval];
    }

    else if ([v4 intentQU])
    {
      v5 = [v4 intentQU];
    }

    else if ([v4 intentNextSection])
    {
      v5 = [v4 intentNextSection];
    }

    else
    {
      v5 = [v4 intentPrefixLength];
    }

    [v4 setIntentType:v5];
  }

  v6 = +[SSQueryIntentManagerConfig sharedInstance];
  v7 = [v6 intentOverrides];

  if (v7)
  {
    v8 = [v6 intentOverrides];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "intentType")}];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 intValue];

    if ((v11 - 1) <= 0x14)
    {
      [v4 setIntentType:v11];
    }
  }

  [v4 setIntentStrength:{+[SSQueryIntent intentStrength:](SSQueryIntent, "intentStrength:", objc_msgSend(v4, "intentType"))}];
  v12 = SSGeneralLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling] %@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (int)_ruleBasedIntent:(id)a3
{
  v3 = a3;
  v4 = [v3 topHitResultBundleId];
  if ([v4 isEqualToString:@"com.apple.weather"])
  {
    v5 = [v3 retrievedBundleIDs];
    v6 = [v5 containsObject:@"com.apple.parsec.weather"];

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

+ (id)_suggestionConfigurationOverrideForQueryContext:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 getIntParameter:@"IntentModelingSuppressSuggestionsUpToPrefixLength"];
  v9 = [v7 getIntParameter:@"IntentModelingShowSuggestionsAsOfPrefixLength"];
  v10 = v9;
  if (v8 < 0 && v9 < 0)
  {
    goto LABEL_18;
  }

  v11 = [v6 searchString];
  v12 = [v11 length];

  if (v12 < 0 || (v8 >= 0 ? (v13 = v8 < v12) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), v10 >= 0 ? (v15 = v10 <= v12) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), (v14 & 1) == 0 && !v16))
  {
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v17 = objc_opt_new();
  [v17 setShowWebAsTypedSuggestion:{objc_msgSend(v7, "getBoolParameter:", @"IntentModelingShowWebAsTypedBaseline"}];
  [v17 setLocalSuggestionQuota:{objc_msgSend(v7, "getIntParameter:", @"IntentModelingLocalSuggestionQuotaLocal"}];
  if (![a1 _isJaJP:v6])
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

  [v17 setLocalSuggestionQuota:{objc_msgSend(v7, "getIntParameter:", @"IntentModelingLocalSuggestionQuotaBaseline"}];
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
  [v17 setServerSuggestionQuota:{objc_msgSend(v7, "getIntParameter:", @"IntentModelingServerSuggestionQuotaBaseline"}];
LABEL_19:

  return v17;
}

+ (id)_suggestionConfigurationForIntent:(id)a3 queryContext:(id)a4 config:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _suggestionConfigurationOverrideForQueryContext:v9 config:v10];
  if (!v11)
  {
    v11 = objc_opt_new();
    if ([a1 _isJaJP:v9])
    {
      [v11 setShowWebAsTypedSuggestion:{objc_msgSend(v10, "getBoolParameter:", @"IntentModelingShowWebAsTypedBaseline"}];
      [v11 setLocalSuggestionQuota:{objc_msgSend(v10, "getIntParameter:", @"IntentModelingLocalSuggestionQuotaBaseline"}];
      [v11 setServerSuggestionQuota:{objc_msgSend(v10, "getIntParameter:", @"IntentModelingServerSuggestionQuotaBaseline"}];
    }

    else
    {
      [v11 setShowWebAsTypedSuggestion:{objc_msgSend(v10, "getBoolParameter:", @"IntentModelingShowWebAsTypedLocal"}];
      [v11 setLocalSuggestionQuota:{objc_msgSend(v10, "getIntParameter:", @"IntentModelingLocalSuggestionQuotaLocal"}];
      [v11 setServerSuggestionQuota:{objc_msgSend(v10, "getIntParameter:", @"IntentModelingServerSuggestionQuotaLocal"}];
      if ([v8 intentStrength] == 2)
      {
        [v11 setShowWebAsTypedSuggestion:{objc_msgSend(v10, "getBoolParameter:", @"IntentModelingShowWebAsTypedLocalStrong"}];
      }

      else
      {
        v12 = [v8 intentType];
        if (v12 <= 0x12 && (((1 << v12) & 0x76000) != 0 || v12 == 3))
        {
          [v11 setServerSuggestionQuota:{objc_msgSend(v10, "getIntParameter:", @"IntentModelingServerSuggestionQuotaServer"}];
        }
      }

      if ([v8 intentType] != 15 && objc_msgSend(v8, "resultSetHasAppSectionWithinTop3") && !objc_msgSend(v11, "serverSuggestionQuota") && objc_msgSend(v10, "getBoolParameter:", @"IntentModelingServerAppAccelerator"))
      {
        [v11 setServerSuggestionQuota:1];
      }

      v13 = [v10 conditionalExtraSuggestions];

      if (v13)
      {
        v14 = [v10 conditionalExtraSuggestions];
        v15 = [v8 serverTopBundleId];
        v16 = [v14 objectForKeyedSubscript:v15];

        if (v16 && [v8 serverHasTopHit] && !objc_msgSend(v11, "serverSuggestionQuota"))
        {
          [v11 setServerSuggestionQuota:{objc_msgSend(v16, "intValue")}];
        }
      }
    }
  }

  v17 = v11;

  return v17;
}

+ (id)_sectionConfigurationForIntentType:(id)a3 sections:(id)a4 config:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v8 = a4;
  v41 = a5;
  if (_sectionConfigurationForIntentType_sections_config__onceToken != -1)
  {
    +[SSQueryIntentManager _sectionConfigurationForIntentType:sections:config:];
  }

  v9 = objc_opt_new();
  v10 = [MEMORY[0x1E695DF90] dictionary];
  [v9 setSectionDisplayStrategies:v10];
  v11 = v39;
  v12 = [v39 intentStrength];
  if (v12 == 1)
  {
    v13 = SSIntentModelingServerSectionDisplayStrategyLocal;
    goto LABEL_7;
  }

  if (v12 == 2)
  {
    v13 = SSIntentModelingServerSectionDisplayStrategyLocalStrong;
LABEL_7:
    v43 = [v41 getIntParameter:*v13];
    goto LABEL_9;
  }

  v43 = 0;
LABEL_9:
  v40 = a1;
  if ([v39 intentType] == 20)
  {
    v14 = [v41 getBoolParameter:@"IntentModelingServerWeatherIntent"];
  }

  else
  {
    v14 = 0;
  }

  v38 = v9;
  if ([a1 isPhotosRelatedIntent:{objc_msgSend(v39, "intentType")}])
  {
    v15 = [v41 getBoolParameter:@"IntentModelingPhotosIntent"];
  }

  else
  {
    v15 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v8;
  v16 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = v14 | v15;
    v19 = *v45;
    do
    {
      v20 = 0;
      v21 = v40;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v44 + 1) + 8 * v20);
        v23 = [v22 bundleIdentifier];
        if (v43 && [v21 _isParsecSection:v23] && objc_msgSend(v21, "_demoteParsecForIntent:section:config:", v11, v22, v41))
        {
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v43];
          [v10 setObject:v24 forKeyedSubscript:v23];
        }

        if ((v18 & 1) != 0 && ([_sectionConfigurationForIntentType_sections_config___weatherSectionIdentifiersForPromotion containsObject:v23] && objc_msgSend(v11, "intentType") == 20 || objc_msgSend(_sectionConfigurationForIntentType_sections_config___photosSectionIdentifiersForPromotion, "containsObject:", v23) && objc_msgSend(v21, "isPhotosRelatedIntent:", objc_msgSend(v11, "intentType"))))
        {
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
          [v10 setObject:v25 forKeyedSubscript:v23];
        }

        v26 = [v10 objectForKeyedSubscript:v23];
        if (v26)
        {
        }

        else
        {
          v27 = [v11 quIntentLabel];
          if (v27)
          {
            v28 = v27;
            v29 = [v11 quIntentLabel];
            v30 = [SSRankingManager bundleIDSetsForQUIntent:v29];
            v31 = [v30 containsObject:v23];

            v21 = v40;
            v11 = v39;

            if (v31)
            {
              [v10 setObject:&unk_1F55B3A68 forKeyedSubscript:v23];
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
    v33 = [v10 count];
    v34 = v33 == [v39 resultSetSectionCount];
    v11 = v39;
    if (v34)
    {
      v35 = [MEMORY[0x1E695DF90] dictionary];
      [v38 setSectionDisplayStrategies:v35];

      v11 = v39;
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

+ (int)_intentForSection:(id)a3 withTopHit:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 results];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 isInitiallyHidden];

      if ((v10 & 1) == 0)
      {
        v13 = [v7 bundleIdentifier];
        v14 = [v7 results];
        v15 = [v14 firstObject];

        if (v4)
        {
          if (![v13 isEqualToString:@"com.apple.spotlight.tophits"] || !objc_msgSend(v15, "topHit"))
          {
            v11 = 0;
LABEL_33:

            goto LABEL_5;
          }

          v16 = [v15 sectionBundleIdentifier];

          v13 = v16;
        }

        if (_intentForSection_withTopHit__onceToken != -1)
        {
          +[SSQueryIntentManager _intentForSection:withTopHit:];
        }

        v17 = [a1 isServerResult:v15];
        v18 = [_intentForSection_withTopHit___bundleIntents objectForKey:v13];
        v19 = v18;
        if (v17)
        {
          if (v18)
          {
            v11 = [v18 intValue];
          }

          else
          {
            v11 = 14;
          }

          goto LABEL_32;
        }

        if (v18)
        {
          v20 = [v7 results];
          v21 = [v20 firstObject];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v21 rankingItem], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "likelihood"), v24 = v23, v22, v24 > 0.0500000007))
          {
            v11 = [v19 intValue];
          }

          else
          {
            v11 = 0;
          }
        }

        else if ([v13 isEqualToString:@"com.apple.calculation"])
        {
          v21 = [v15 sectionHeader];
          v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v26 = [v25 localizedStringForKey:@"CONVERSION_SECTION_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
          if ([v21 isEqualToString:v26])
          {
            v11 = 3;
          }

          else
          {
            v11 = 2;
          }
        }

        else
        {
          if (![v13 isEqualToString:@"com.apple.mobilesafari"])
          {
            v11 = 1;
            goto LABEL_32;
          }

          v21 = [v15 resultBundleId];
          if ([v21 isEqualToString:@"com.apple.safari.userTypedURL"])
          {
            v11 = 19;
          }

          else
          {
            v11 = 13;
          }
        }

LABEL_32:
        goto LABEL_33;
      }
    }
  }

  v11 = 0;
LABEL_5:

  return v11;
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

+ (int)_postRetrievalModeling:(id)a3
{
  v4 = [a3 firstObject];
  LODWORD(a1) = [a1 _intentForSection:v4 withTopHit:1];

  return a1;
}

+ (int)_nextSectionModeling:(id)a3
{
  v4 = [a3 nextSectionForIntent];
  LODWORD(a1) = [a1 _intentForSection:v4 withTopHit:0];

  return a1;
}

+ (int)_prefixLengthModeling:(id)a3
{
  v3 = [a3 searchString];
  v4 = [v3 length];

  if (v4 < 0xB)
  {
    return 1;
  }

  else
  {
    return 14;
  }
}

+ (int)_queryUnderstandingModeling:(id)a3 intentHelper:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_40;
  }

  if (_queryUnderstandingModeling_intentHelper__onceToken != -1)
  {
    +[SSQueryIntentManager _queryUnderstandingModeling:intentHelper:];
  }

  v8 = [v6 queryUnderstandingOutput];
  v9 = [v8 count];

  if (v9 < 2)
  {
    goto LABEL_40;
  }

  v10 = [v6 queryUnderstandingOutput];
  v11 = [v10 objectForKeyedSubscript:@"kQPQUIntentLabels"];

  v12 = [v6 queryUnderstandingOutput];
  v13 = [v12 objectForKeyedSubscript:@"kQPQUIntentScores"];

  v14 = [v6 queryUnderstandingOutput];
  v15 = [v14 objectForKeyedSubscript:@"kQPQUIntentIds"];

  v16 = [v11 firstObject];
  v17 = [v15 firstObject];
  v18 = [v17 intValue];

  v19 = [v13 firstObject];
  [v19 floatValue];
  v21 = v20;

  if (v18 < 1 || v21 < 0.9)
  {
    goto LABEL_38;
  }

  v54 = v11;
  [v7 setQuIntentLabel:v16];
  v22 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalFiles objectForKeyedSubscript:v16];
  if (v22)
  {
    v23 = v22;
    v4 = [v7 retrievedBundleIDs];
    v24 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalFiles objectForKeyedSubscript:v16];
    v25 = [v4 containsObject:v24];

    if (v25)
    {
      v26 = 0;
      LODWORD(v4) = 10;
      goto LABEL_39;
    }
  }

  v27 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalPhotos objectForKeyedSubscript:v16];

  if (v27)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v28 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalPhotos objectForKeyedSubscript:v16];
    v29 = [v28 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (!v29)
    {
      LODWORD(v4) = 9;
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
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v59 + 1) + 8 * i);
        v34 = [v7 retrievedBundleIDs];
        LOBYTE(v33) = [v34 containsObject:v33];

        if (v33)
        {

          v26 = 0;
          LODWORD(v4) = 9;
          goto LABEL_22;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }

    LODWORD(v4) = 9;
LABEL_20:
    v13 = v53;
LABEL_37:

    v11 = v54;
LABEL_38:
    v26 = 1;
    goto LABEL_39;
  }

  if ([v16 isEqualToString:@"INTENT_MAIL_SEARCH"])
  {
    v35 = [v7 retrievedBundleIDs];
    LODWORD(v4) = [v35 containsObject:@"com.apple.mobilemail"];

    if (v4)
    {
      v26 = 0;
      LODWORD(v4) = 11;
      goto LABEL_39;
    }
  }

  if ([v16 isEqualToString:@"INTENT_MESSAGE_SEARCH"])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v28 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalCommunications allValues];
    v36 = [v28 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (!v36)
    {
      LODWORD(v4) = 11;
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
          objc_enumerationMutation(v28);
        }

        v40 = *(*(&v55 + 1) + 8 * j);
        v41 = [v7 retrievedBundleIDs];
        LOBYTE(v40) = [v41 containsObject:v40];

        if (v40)
        {

          v26 = 0;
          LODWORD(v4) = 11;
LABEL_22:
          v13 = v53;
          v11 = v54;
          goto LABEL_39;
        }
      }

      v37 = [v28 countByEnumeratingWithState:&v55 objects:v63 count:16];
      LODWORD(v4) = 11;
      if (v37)
      {
        continue;
      }

      goto LABEL_20;
    }
  }

  v44 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalEvents objectForKeyedSubscript:v16];
  if (!v44)
  {
    goto LABEL_61;
  }

  v45 = v44;
  v4 = [v7 retrievedBundleIDs];
  v46 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalEvents objectForKeyedSubscript:v16];
  v47 = [v4 containsObject:v46];

  if (v47)
  {
    v26 = 0;
    LODWORD(v4) = 12;
  }

  else
  {
LABEL_61:
    if ([v16 isEqualToString:@"INTENT_SETTINGS_SEARCH"] && (objc_msgSend(v7, "retrievedBundleIDs"), v48 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v48, "containsObject:", @"com.apple.Preferences"), v48, (v4 & 1) != 0))
    {
      v26 = 0;
      LODWORD(v4) = 6;
    }

    else
    {
      v49 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalGeneric objectForKeyedSubscript:v16];
      if (!v49)
      {
        goto LABEL_56;
      }

      v50 = v49;
      v4 = [v7 retrievedBundleIDs];
      v51 = [_queryUnderstandingModeling_intentHelper___quIntentsLocalGeneric objectForKeyedSubscript:v16];
      v52 = [v4 containsObject:v51];

      if (v52)
      {
        v26 = 0;
        LODWORD(v4) = 1;
      }

      else
      {
LABEL_56:
        if (([v16 hasPrefix:@"INTENT_FLIGHT"] & 1) == 0 && (objc_msgSend(v16, "hasPrefix:", @"INTENT_HOTEL") & 1) == 0 && !objc_msgSend(v16, "hasPrefix:", @"INTENT_RESTAURANT") || objc_msgSend(v7, "resultSetSectionCount") <= 0)
        {
          goto LABEL_38;
        }

        v26 = 0;
        LODWORD(v4) = 1;
      }
    }
  }

LABEL_39:

  if (v26)
  {
LABEL_40:
    LODWORD(v4) = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v4;
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

+ (void)_prepareSectionInformation:(id)a3 intentHelper:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v39 = [MEMORY[0x1E695DF70] array];
  [v6 setResultSetHasTopHits:0];
  [v6 setResultSetHasSuggestions:0];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
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
        v12 = [v11 bundleIdentifier];
        [v39 addObject:v12];

        v13 = [v11 bundleIdentifier];
        if ([v13 isEqualToString:@"com.apple.spotlight.tophits"])
        {
          v14 = [v11 results];
          v15 = [v14 count];

          if (v15)
          {
            [v6 setResultSetHasTopHits:1];
            v16 = [v11 results];
            v17 = [v16 firstObject];
            v18 = [v17 resultBundleId];
            [v6 setTopHitResultBundleId:v18];

            goto LABEL_15;
          }
        }

        else
        {
        }

        v19 = [v11 bundleIdentifier];
        v20 = [v19 isEqualToString:@"com.apple.searchd.suggestions"];

        if (v20)
        {
          [v6 setResultSetHasSuggestions:1];
        }

        else
        {
          v21 = [v11 bundleIdentifier];
          v22 = [v21 isEqualToString:@"com.apple.parsec.itunes.iosSoftware"];

          if (v22 && v9 <= 2)
          {
            [v6 setResultSetHasAppSectionWithinTop3:1];
          }
        }

LABEL_15:
        v23 = [v11 bundleIdentifier];
        if (![v23 hasPrefix:@"com.apple.parsec"])
        {
          goto LABEL_21;
        }

        v24 = [v6 serverTopBundleId];
        if (!v24)
        {

LABEL_20:
          v28 = [v11 bundleIdentifier];
          [v6 setServerTopBundleId:v28];

          v29 = [v11 results];
          v23 = [v29 firstObject];

          [v6 setServerHasTopHit:{objc_msgSend(v23, "topHit") != 0}];
LABEL_21:

          goto LABEL_22;
        }

        v25 = v24;
        v26 = [v6 serverTopBundleId];
        v27 = [v26 length];

        if (!v27)
        {
          goto LABEL_20;
        }

LABEL_22:
        v30 = [v6 nextSectionForIntent];
        if (v30 || ([v6 resultSetHasSuggestions] & 1) == 0)
        {
        }

        else
        {
          v31 = [v11 bundleIdentifier];
          v32 = [v31 isEqualToString:@"com.apple.searchd.suggestions"];

          if ((v32 & 1) == 0)
          {
            [v6 setNextSectionForIntent:v11];
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

  v33 = [MEMORY[0x1E695DFD8] setWithArray:v39];
  [v6 setRetrievedBundleIDs:v33];

  v34 = [v6 retrievedBundleIDs];
  [v6 setResultSetSectionCount:{objc_msgSend(v34, "count") - objc_msgSend(v6, "resultSetHasSuggestions")}];

  v35 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_demoteParsecForIntent:(id)a3 section:(id)a4 config:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 bundleIdentifier];
  v12 = [v10 serverDomainDemotionExclusionSet];
  v16 = (!v12 || (v13 = v12, [v10 serverDomainDemotionExclusionSet], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v11), v14, v13, (v15 & 1) == 0)) && (!objc_msgSend(a1, "isPhotosRelatedIntent:", objc_msgSend(v8, "intentType")) || (objc_msgSend(v11, "isEqualToString:", @"com.apple.parsec.web_images") & 1) == 0) && objc_msgSend(v8, "intentType") != 20 && (!objc_msgSend(v11, "isEqualToString:", @"com.apple.parsec.maps") || !objc_msgSend(v10, "getBoolParameter:", @"IntentModelingMapsPoiIntent") || (objc_msgSend(a1, "_hasMapsPOIResults:", v9) & 1) == 0);

  return v16;
}

+ (BOOL)_hasMapsPOIResults:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.parsec.maps"];

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
    v7 = [v4 results];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [a1 _getParsecMapsDetailedIdentifier:*(*(&v16 + 1) + 8 * i)];
          if ([v12 hasPrefix:_hasMapsPOIResults__mapsCategoryPrefix] & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", _hasMapsPOIResults__mapsChainBizPrefix))
          {

            v13 = 1;
            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (id)_getParsecMapsDetailedIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 inlineCard];
  v5 = [v4 cardSections];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v3 inlineCard];
  v7 = [v6 cardSections];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v3 inlineCard];
    v10 = [v9 cardSections];
    v4 = [v10 firstObject];

    v5 = [v4 resultIdentifier];
LABEL_4:

    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

+ (BOOL)isServerResult:(id)a3
{
  v4 = a3;
  if (SSResultTypeIsServer([v4 type]))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 resultBundleId];
    v5 = [a1 _isParsecSection:v6];
  }

  return v5;
}

+ (BOOL)_isJaJP:(id)a3
{
  v3 = [a3 keyboardPrimaryLanguage];
  v4 = [v3 isEqualToString:@"ja-JP"];

  return v4;
}

@end