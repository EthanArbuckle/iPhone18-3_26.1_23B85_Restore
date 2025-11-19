@interface PSEnsembleModel
@end

@implementation PSEnsembleModel

void __39___PSEnsembleModel__feedbackDictionary__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E69C5D60]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = _feedbackDictionary__pasExprOnceResult;
  _feedbackDictionary__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

void __24___PSEnsembleModel_init__block_invoke_2()
{
  v0 = dispatch_get_global_queue(-2, 0);
  dispatch_async(v0, &__block_literal_global_292);
}

void __99___PSEnsembleModel_saveFeedback_forSessionId_feedbackActionType_transportBundleId_isFallbackFetch___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count] >= 0xB)
  {
    [v4 removeAllObjects];
  }

  v3 = objc_opt_new();
  [v3 setConversationId:*(a1 + 32)];
  [v3 setFeedbackActionType:*(a1 + 56)];
  [v3 setTransportBundleId:*(a1 + 40)];
  [v3 setIsFallbackFetch:*(a1 + 64)];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 48)];
}

void __42___PSEnsembleModel_popFeedbackForSession___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [v6 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void __37___PSEnsembleModel_registerWithTrial__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateFactorLevels];
    WeakRetained = v2;
  }
}

uint64_t __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "direction")}];
  if ([v4 containsObject:v5])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "mechanism")}];
    if ([v6 isEqualToNumber:a1[5]])
    {
      v7 = [v3 bundleId];
      if (v7)
      {
        v8 = a1[6];
        v9 = [v3 bundleId];
        v10 = [v8 containsObject:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "direction")}];
  if ([v4 containsObject:v5])
  {
    v6 = a1[5];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "mechanism")}];
    if ([v6 containsObject:v7])
    {
      v8 = [v3 targetBundleId];
      if (v8)
      {
        v9 = a1[6];
        v10 = [v3 targetBundleId];
        v11 = [v9 containsObject:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 32) messageInteractionCache];
  v2 = [*(a1 + 32) shareInteractionCache];
  v3 = [*(a1 + 32) contactMonitor];
  [v3 populateContactIdCachesWithMessageCache:v4 shareCache:v2];
}

void __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  [*(a1 + 32) setZkwFTTrialData:v3];
}

BOOL __57___PSEnsembleModel_populateCachesWithSupportedBundleIDs___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  if ((*(a1[7] + 16))() & 1) != 0 || ((*(a1[8] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v5 = a1[4];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "direction")}];
    if ([v5 containsObject:v6])
    {
      v7 = a1[5];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "mechanism")}];
      if ([v7 containsObject:v8])
      {
        v9 = [v3 bundleId];
        if (v9)
        {
          v10 = [v3 bundleId];
          v11 = +[_PSConstants contactsAutocompleteBundleId];
          if (v10 == v11)
          {
            v4 = 0;
          }

          else
          {
            v12 = a1[6];
            v13 = [v3 startDate];
            if ([v12 compare:v13] == 1)
            {
              v14 = a1[6];
              v15 = [v3 startDate];
              v4 = [v14 compare:v15] == 1;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __72___PSEnsembleModel_fetchSupportedBundleIDsWithPredictionContextFilters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __103___PSEnsembleModel_getPhotoBasedFeaturesAsync_shouldProcessPicturesLive_shouldUseVIPModel_withTimeout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_PSLogging suggestionSignpost];
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "_PSEnsembleModel_getPhotoBasedFeatures_setPeopleAnalysis", " enableTelemetry=YES ", buf, 2u);
  }

  if ([v3 count])
  {
    v7 = [v3 allObjects];
    [*(a1 + 32) setPeopleInPhotoIdentifiers:v7];
    [*(a1 + 40) setPeopleInPhoto:v7];
  }

  v8 = +[_PSLogging suggestionSignpost];
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "_PSEnsembleModel_getPhotoBasedFeatures_setPeopleAnalysis", &unk_1B5FD970D, v11, 2u);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __103___PSEnsembleModel_getPhotoBasedFeaturesAsync_shouldProcessPicturesLive_shouldUseVIPModel_withTimeout___block_invoke_422(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = +[_PSLogging suggestionSignpost];
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "_PSEnsembleModel_getPhotoBasedFeatures_setPhotoAnalysis", " enableTelemetry=YES ", v14, 2u);
  }

  v5 = [*(a1 + 32) photoLocalIdentifier];

  if (v5)
  {
    v6 = [*(a1 + 32) photoLocalIdentifier];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v8 = [_PSPhotoUtils assetsWithIdentifiers:v7];

    v9 = [_PSPhotoUtils sceneAnalysisFromAssets:v8];
    if ([v9 count])
    {
      [*(a1 + 40) setSceneTagsInPhotoIdentifiers:v9];
      [*(a1 + 32) setPhotoSceneDescriptors:v9];
    }
  }

  v10 = +[_PSLogging suggestionSignpost];
  v11 = v10;
  v12 = *(a1 + 48);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_END, v12, "_PSEnsembleModel_getPhotoBasedFeatures_setPhotoAnalysis", &unk_1B5FD970D, v14, 2u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __103___PSEnsembleModel_getPhotoBasedFeaturesAsync_shouldProcessPicturesLive_shouldUseVIPModel_withTimeout___block_invoke_423(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  result = [MEMORY[0x1E69C5D10] waitForGroup:*(a1 + 40) timeoutSeconds:{fmax(*(a1 + 56) - v4, 0.0)}];
  if (result == 1)
  {
    [_PSPhotoSuggestions cancelRequestWithToken:*(a1 + 48)];
    v6 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "reporting MAD timeout", buf, 2u);
    }

    DRTailspinRequest();
    return [MEMORY[0x1E69C5D10] waitForGroup:{*(a1 + 40), 0}];
  }

  return result;
}

void __93___PSEnsembleModel__defaultPredictionsWithPredictionContext_trialClient_config_parentSpanId___block_invoke_461()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"trialRankingModel"];
  v2 = _defaultPredictionsWithPredictionContext_trialClient_config_parentSpanId___pasExprOnceResult;
  _defaultPredictionsWithPredictionContext_trialClient_config_parentSpanId___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __83___PSEnsembleModel_predictWithPredictionContext_maxSuggestions_contactKeysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contentURL];
  v3 = [v2 host];

  return v3;
}

id __52___PSEnsembleModel_getReasonTypesFromObjects_limit___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 valueForKey:@"reasonType"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __82___PSEnsembleModel_addExtraInformationWithSuggestions_modelSuggestionProxiesDict___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 conversationIdentifier];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v5 isEqual:v4];

    if (!v6)
    {
      goto LABEL_4;
    }
  }

  v7 = [v3 derivedIntentIdentifier];

  v4 = v7;
  if (v7)
  {
LABEL_4:
    v8 = *(*(a1 + 32) + 24);
    v9 = objc_alloc(MEMORY[0x1E698ECC0]);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
    v11 = [v9 initWithIntValue:v10 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:0];
    v12 = [v3 bundleID];
    [v8 setFeatureValueForFeatureName:690 featureValue:v11 candidate:v4 bundleID:v12];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v4 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __82___PSEnsembleModel_addExtraInformationWithSuggestions_modelSuggestionProxiesDict___block_invoke_cold_1();
    }
  }
}

void __82___PSEnsembleModel_addExtraInformationWithSuggestions_modelSuggestionProxiesDict___block_invoke_597(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82___PSEnsembleModel_addExtraInformationWithSuggestions_modelSuggestionProxiesDict___block_invoke_2;
  v7[3] = &unk_1E7C249F8;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __82___PSEnsembleModel_addExtraInformationWithSuggestions_modelSuggestionProxiesDict___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = [v15 interactionRecipients];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v6[3];
    v9 = [v6 modelProxyToVirtualFeatureStoreFeature:v7];
    v10 = objc_alloc(MEMORY[0x1E698ECC0]);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v12 = [v10 initWithIntValue:v11 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:0];
    v13 = [v15 interactionRecipients];
    v14 = [v15 bundleID];
    [v8 setFeatureValueForFeatureName:v9 featureValue:v12 candidate:v13 bundleID:v14];
  }
}

void __105___PSEnsembleModel__suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients___block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction == %@ OR direction == %@) AND mechanism == %@ AND domainIdentifier != nil AND bundleId == $bundleID AND domainIdentifier == $interactionRecipients", &unk_1F2D8B1D8, &unk_1F2D8B1F0, &unk_1F2D8B220];
  v10[0] = v0;
  v1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction == %@ OR direction == %@) AND mechanism == %@ AND domainIdentifier != nil AND targetBundleId == $bundleID AND domainIdentifier == $interactionRecipients", &unk_1F2D8B1D8, &unk_1F2D8B1F0, &unk_1F2D8B190];
  v10[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v3 = _suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients__firstPartyMessagesPredicates;
  _suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients__firstPartyMessagesPredicates = v2;

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction == %@ OR direction == %@) AND mechanism == %@ AND derivedIntentIdentifier != nil AND bundleId == $bundleID AND derivedIntentIdentifier == $interactionRecipients", &unk_1F2D8B1D8, &unk_1F2D8B1F0, &unk_1F2D8B220];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction == %@ OR direction == %@) AND mechanism == %@ AND derivedIntentIdentifier != nil AND targetBundleId == $bundleID AND derivedIntentIdentifier == $interactionRecipients", &unk_1F2D8B1D8, &unk_1F2D8B1F0, &unk_1F2D8B190, v4];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = _suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients__thirdPartyPredicates;
  _suggestionInteractionPredicatesForFirstPartyMessages_bundleID_interactionRecipients__thirdPartyPredicates = v6;

  v8 = *MEMORY[0x1E69E9840];
}

id __126___PSEnsembleModel_suggestionsFromSuggestionProxies_supportedBundleIDs_contactKeysToFetch_meContactIdentifier_maxSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];
  v3 = MEMORY[0x1E69978B0];
  v4 = [v2 identifier];
  v5 = [v3 normalizedStringFromContactString:v4];
  [v2 setIdentifier:v5];

  return v2;
}

NSObject *__126___PSEnsembleModel_suggestionsFromSuggestionProxies_supportedBundleIDs_contactKeysToFetch_meContactIdentifier_maxSuggestions___block_invoke_653(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 48);
  v14 = 0;
  v9 = [v8 queryInteractionsUsingPredicate:v6 sortDescriptors:v7 limit:1 offset:0 error:&v14];
  v10 = v14;
  v11 = [v9 firstObject];

  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __126___PSEnsembleModel_suggestionsFromSuggestionProxies_supportedBundleIDs_contactKeysToFetch_meContactIdentifier_maxSuggestions___block_invoke_653_cold_1();
    }

    goto LABEL_8;
  }

  if (!v5 || _CDStartDateCompare() == -1)
  {
    v12 = v5;
    v5 = v11;
LABEL_8:
  }

LABEL_9:

  return v5;
}

id __68___PSEnsembleModel_predictWithMapsPredictionContext_maxSuggestions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [*(a1 + 32) indexOfObjectIdenticalTo:v6];

  v9 = [v7 initWithFormat:@"%tu -> %tu", v8, a3];

  return v9;
}

id __68___PSEnsembleModel_predictWithMapsPredictionContext_maxSuggestions___block_invoke_708(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v7 = [[v5 alloc] initWithFormat:@"%@: %tu -> %tu", v6, objc_msgSend(*(a1 + 32), "indexOfObjectIdenticalTo:", v6), a3];

  return v7;
}

void __78___PSEnsembleModel_suggestZKWSuggestionsWithPredictionContext_maxSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zkwFTOrchestrator];
  [v5 updateConfigWithTrialData:v4];

  v6 = [v4 copy];
  [*(a1 + 32) setZkwFTTrialData:v6];

  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, "_PSFTZKWOrchestrator updated to reflect Trial configuration update.", v8, 2u);
  }
}

uint64_t __120___PSEnsembleModel_rankedGlobalSuggestionsWithPredictionContext_contactsOnly_maxSuggestions_excludeBackfillSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 contactMonitor];
  v5 = [v4 contactIdIsInContactStore:v3];

  return v5;
}

void __120___PSEnsembleModel_rankedGlobalSuggestionsWithPredictionContext_contactsOnly_maxSuggestions_excludeBackfillSuggestions___block_invoke_737(uint64_t a1, void *a2, _BYTE *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) contactMonitor];
  v7 = [v6 contactIdsSeen];
  v8 = [v7 containsObject:v5];

  if ((v8 & 1) == 0)
  {
    v9 = [[_PSRecipient alloc] initWithIdentifier:v5 handle:0 contact:0];
    v10 = [_PSSuggestion alloc];
    v17[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [*(a1 + 32) knnNameOrContactRankerModel];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [(_PSSuggestion *)v10 initWithBundleID:0 conversationIdentifier:v5 groupName:0 recipients:v11 reason:@"kNN model" reasonType:v14];

    if (v15)
    {
      [*(a1 + 40) addObject:v15];
    }
  }

  if ([*(a1 + 40) count] >= *(a1 + 48))
  {
    *a3 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __103___PSEnsembleModel_rankedGlobalSuggestionsForSiriNLWithPredictionContext_maxSuggestions_interactionId___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __103___PSEnsembleModel_rankedGlobalSuggestionsForSiriNLWithPredictionContext_maxSuggestions_interactionId___block_invoke_2_cold_1();
    }
  }
}

uint64_t __72___PSEnsembleModel_rankedAutocompleteSuggestionsFromContext_candidates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSBlockedHandlesCache sharedBlockedHandlesCache];
  v4 = [v2 handle];

  LODWORD(v2) = [v3 isHandleBlocked:v4];
  return v2 ^ 1;
}

uint64_t __67___PSEnsembleModel_autocompleteSearchResultsWithPredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [a2 recipients];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = +[_PSBlockedHandlesCache sharedBlockedHandlesCache];
        v9 = [v7 handle];
        v10 = [v8 isHandleBlocked:v9];

        if (v10)
        {
          v11 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

id __55___PSEnsembleModel_appExtensionSuggestionsFromContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) appBundleIdsToShareExtensionBundleIdsMapping];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = MEMORY[0x1E696AEC0];
        v9 = [*(a1 + 32) appBundleIdsToShareExtensionBundleIdsMapping];
        v10 = [v9 objectForKeyedSubscript:v7];
        v11 = [v10 componentsJoinedByString:{@", "}];
        v12 = [v8 stringWithFormat:@"%@:%@", v7, v11];
        [v2 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v13 = [v2 componentsJoinedByString:@""];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 allObjects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke_2;
  v7[3] = &unk_1E7C24BB0;
  v8 = v2;
  v4 = v2;
  v5 = [v3 sortedArrayUsingComparator:v7];

  return v5;
}

uint64_t __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

void __50___PSEnsembleModel_candidatesForShareSheetRanking__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 count];
  v8 = [v5 integerValue];

  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v11 = [v6 subarrayWithRange:{0, v9}];
  [*(a1 + 32) addObjectsFromArray:v11];
  v10 = [v6 subarrayWithRange:{v9, objc_msgSend(v6, "count") - v9}];

  [*(a1 + 40) addObjectsFromArray:v10];
}

id __46___PSEnsembleModel_pruneCandidatesForRanking___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) valueForFeature:@"timeSinceLastOutgoingInteraction" forConversationId:v3];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

void __81___PSEnsembleModel_logPipeline_withPipelineStage_andSessionID_andCandidateNames___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];
  [v5 setString:v10 forFeature:@"conversationId"];
  if (v6)
  {
    [v5 setNumber:&unk_1F2D8B340 forFeature:@"candidateNameHasBeenResolved"];
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
  }

  else
  {
    [v5 setNumber:&unk_1F2D8B328 forFeature:@"candidateNameHasBeenResolved"];
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = v10;
  }

  [v7 setObject:v8 forKeyedSubscript:v9];
}

void __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v44 = malloc_type_calloc(*(a1 + 104), *(a1 + 112), 0xC7837CF0uLL);
  if (!v44)
  {
    v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v39);
  }

  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v53 = 0u;
  obj = v3;
  v42 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v42)
  {
    v41 = *v54;
    v4 = *MEMORY[0x1E695D940];
    v5 = v44;
    do
    {
      v6 = 0;
      do
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v6;
        v7 = *(*(&v53 + 1) + 8 * v6);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v8 = *(a1 + 32);
        v9 = [v8 countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v50;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v50 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(a1 + 40) valueOrDefaultValueForFeature:*(*(&v49 + 1) + 8 * i) forConversationId:v7];
              if (v13 && ([&unk_1F2D8B328 isEqualToNumber:v13] & 1) == 0)
              {
                v14 = *(a1 + 120);
                if (v14)
                {
                  CFNumberGetValue(v13, v14, v5);
                }

                else if (*(a1 + 112) == 2)
                {
                  if (*(a1 + 128) == 1)
                  {
                    [(__CFNumber *)v13 floatValue];
                    __asm { FCVT            H0, S0 }

                    __src = _S0;
                  }

                  else
                  {
                    __src = [(__CFNumber *)v13 intValue];
                  }

                  memcpy(v5, &__src, *(a1 + 112));
                }

                else
                {
                  free(v44);
                  [MEMORY[0x1E695DF30] raise:v4 format:{@"unsupported scalar size %tu (isFloatingPoint=%d)", *(a1 + 112), *(a1 + 128)}];
                }
              }

              v5 += *(a1 + 112);
            }

            v10 = [v8 countByEnumeratingWithState:&v49 objects:v60 count:16];
          }

          while (v10);
        }

        v6 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v42);
  }

  v20 = [objc_alloc(MEMORY[0x1E695FED0]) initWithBytesNoCopy:v44 shape:*(a1 + 48) dataType:objc_msgSend(*(a1 + 56) strides:"dataType") mutableShapedBufferProvider:{*(a1 + 64), &__block_literal_global_830}];
  v21 = [*(a1 + 72) objectForKeyedSubscript:*(a1 + 80)];
  v22 = [v21 multiArrayConstraint];

  v23 = MEMORY[0x1E695FE60];
  if (v22)
  {
    v24 = objc_alloc(MEMORY[0x1E695FED0]);
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
    v59 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    v27 = [v24 initWithArray:v26 dataType:{objc_msgSend(v22, "dataType")}];
    v28 = [v23 featureValueWithMultiArray:v27];
  }

  else
  {
    v28 = [MEMORY[0x1E695FE60] featureValueWithInt64:{objc_msgSend(obj, "count")}];
  }

  v29 = objc_alloc(MEMORY[0x1E695FE48]);
  v57[0] = *(a1 + 88);
  v30 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:v20];
  v57[1] = *(a1 + 80);
  v58[0] = v30;
  v58[1] = v28;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v32 = [v29 initWithFeatureValueDictionary:v31];

  v33 = [*(a1 + 96) predictionFromFeatures:v32 error:0];
  v34 = [v33 dictionary];
  v35 = [v34 objectForKeyedSubscript:@"coreMLModelScore"];
  v36 = [v35 multiArrayValue];

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_3;
  v45[3] = &unk_1E7C248D0;
  v46 = v36;
  v47 = *(a1 + 40);
  v37 = v36;
  [obj enumerateObjectsUsingBlock:v45];
  free(v44);

  v38 = *MEMORY[0x1E69E9840];
}

void __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_3_cold_1();
  }

  [*(a1 + 40) setValue:v6 forFeature:@"coreMLModelScore" andConversationId:v5];
}

void __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_837(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695FE48]);
  v5 = [*(a1 + 32) nonNilFeaturesForConversationId:v3];
  v6 = [v4 initWithDictionary:v5 error:0];

  v7 = [*(a1 + 40) predictionFromFeatures:v6 error:0];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v7 featureValueForName:@"coreMLModelScore"];
  [v9 doubleValue];
  v10 = [v8 numberWithDouble:?];

  [*(a1 + 32) setValue:v10 forFeature:@"coreMLModelScore" andConversationId:v3];
  v11 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_837_cold_1();
  }
}

uint64_t __105___PSEnsembleModel_getSuggestionsFromInteractionsStatistics_withConfig_trialClient_andPredictionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) sortOrderFeatureNames];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [*(a1 + 40) valueOrDefaultValueForFeature:v12 forConversationId:{v5, v25}];
        [v13 doubleValue];
        v15 = v14;

        v16 = [*(a1 + 40) valueOrDefaultValueForFeature:v12 forConversationId:v6];
        [v16 doubleValue];
        v18 = v17;

        if (v15 != v18)
        {
          v20 = [v12 containsString:@"timeSince"];
          v21 = -1;
          if (v15 > v18)
          {
            v22 = 1;
          }

          else
          {
            v22 = -1;
          }

          if (v15 < v18)
          {
            v21 = 1;
          }

          if (v20)
          {
            v19 = v22;
          }

          else
          {
            v19 = v21;
          }

          goto LABEL_18;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

void __105___PSEnsembleModel_getSuggestionsFromInteractionsStatistics_withConfig_trialClient_andPredictionContext___block_invoke_842(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) sortOrderFeatureNames];
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 40) valueOrDefaultValueForFeature:*(*(&v20 + 1) + 8 * v10) forConversationId:v3];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = *(a1 + 48);
  v13 = [_PSSuggestionProxy alloc];
  v14 = [*(a1 + 40) bundleIdForConversationId:v3];
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [*(a1 + 32) sortOrderFeatureNames];
  v17 = [v15 initWithFormat:@"Score: %@\n%@", v5, v16, v20];
  v18 = [(_PSSuggestionProxy *)v13 initWithBundleID:v14 interactionRecipients:v3 contactID:0 reason:v17 reasonType:@"suggestionsProxiesFromStats"];
  [v12 addObject:v18];

  v19 = *MEMORY[0x1E69E9840];
}

id __105___PSEnsembleModel_getSuggestionsFromInteractionsStatistics_withConfig_trialClient_andPredictionContext___block_invoke_849(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 interactionRecipients];
  v4 = [v2 privatizedConversationId:v3];

  return v4;
}

id __94___PSEnsembleModel_finalSuggestionProxiesForInteractionStatistics_config_trialClient_context___block_invoke(id *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v22 = @"RecipientListConversationId";
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        [v4 addObject:{v9, v22}];
        v10 = [v9 interactionRecipients];
        v11 = [a1[4] isSharePlayAvailable];
        v12 = [a1[5] valueOrDefaultValueForFeature:@"hasEverSharePlayedWithConversation" forConversationId:v10];
        v13 = [v12 BOOLValue];

        if ([a1[6] shouldUseLegacyUI])
        {
          v14 = [a1[5] valueForProperty:v22 forConversationId:v10];
        }

        else
        {
          v14 = v10;
        }

        v15 = v14;
        if ((v11 & v13) != 0)
        {
          v16 = [_PSSuggestionProxy alloc];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = [(_PSSuggestionProxy *)v16 initWithBundleID:@"com.apple.telephonyutilities.callservicesd" interactionRecipients:v15 handles:0 reason:@"SharePlay heuristic" reasonType:v18];
          [v4 addObject:v19];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

void __61___PSEnsembleModel_sendDataToPETAsync_withConfig_andContext___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) getPETMessageFrom:*(a1 + 40) withConfig:*(a1 + 48) andContext:*(a1 + 56)];
  v2 = [MEMORY[0x1E69C5B48] sharedInstance];
  [v2 logMessage:v1];
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: sent data to PET", v4, 2u);
  }
}

void __91___PSEnsembleModel__conversationIdForFirstInteractionAfterSharingStartDate_targetBundleId___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 conversationId];
    v6 = [v3 bundleId];
    v11 = 138478083;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Detected share interaction with app extension after share session with %{private}@ via bundleID %@", &v11, 0x16u);
  }

  v7 = [v3 conversationId];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *MEMORY[0x1E69E9840];
}

void __91___PSEnsembleModel__conversationIdForFirstInteractionAfterSharingStartDate_targetBundleId___block_invoke_891(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 conversationId];
    v6 = [v3 bundleId];
    v11 = 138478083;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Detected messaging interaction after share session with %{private}@ via bundleID %@", &v11, 0x16u);
  }

  v7 = [v3 conversationId];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *MEMORY[0x1E69E9840];
}

void __139___PSEnsembleModel__updateInteractionStatisticsForSpeculativeEngagement_interactionStatisticsConfig_interactionStatistics_sessionFeedback___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 conversationId];
  v6 = [v4 containsConversationId:v5];

  v7 = +[_PSLogging rewriteChannel];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) sessionID];
      v10 = [v3 conversationId];
      v11 = [v3 bundleId];
      v15 = 138412803;
      v16 = v9;
      v17 = 2113;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "Storing feedback for speculative interaction after share session %@ with %{private}@ via bundleID %@", &v15, 0x20u);
    }

    v12 = *(a1 + 32);
    v13 = [v3 conversationId];
    [v12 setValue:&unk_1F2D8B388 forFeature:@"feedback" andConversationId:v13];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __139___PSEnsembleModel__updateInteractionStatisticsForSpeculativeEngagement_interactionStatisticsConfig_interactionStatistics_sessionFeedback___block_invoke_cold_1(a1, v3);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __118___PSEnsembleModel_psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sessionID];
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "_PSEnsemble: processing feedback for sessionId: %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 32) sessionID];
  v5 = [_PSEnsembleModel popFeedbackForSession:v4];

  if (v5)
  {
    [*(a1 + 32) setFeedBack:{objc_msgSend(v5, "feedbackActionType")}];
    [*(a1 + 40) initFeature:@"feedback" withValue:&unk_1F2D8B3A0];
    v6 = [v5 feedbackActionType];
    if (v6)
    {
      if (v6 == 3)
      {
        goto LABEL_8;
      }

      if (v6 == 4)
      {
        if (([*(a1 + 48) _updateInteractionStatisticsForImplicitEngagement:*(a1 + 32) interactionStatisticsConfig:*(a1 + 56) interactionStatistics:*(a1 + 40) sessionFeedback:v5] & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_13:
        [*(a1 + 48) sendDataToPETAsync:*(a1 + 40) withConfig:*(a1 + 56) andContext:*(a1 + 32)];
        v7 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 32) sessionID];
          v11 = 138412290;
          v12 = v8;
          v9 = "_PSEnsemble: logged data for sessionId: %@";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if ([*(a1 + 48) _updateInteractionStatisticsForSpeculativeEngagement:*(a1 + 32) interactionStatisticsConfig:*(a1 + 56) interactionStatistics:*(a1 + 40) sessionFeedback:v5])
      {
        goto LABEL_13;
      }
    }

    else if ([*(a1 + 48) _updateInteractionStatisticsForExplicitEngagement:*(a1 + 32) interactionStatisticsConfig:*(a1 + 56) interactionStatistics:*(a1 + 40) sessionFeedback:v5])
    {
      goto LABEL_13;
    }

LABEL_8:
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) sessionID];
      v11 = 138412290;
      v12 = v8;
      v9 = "_PSEnsemble: sessionId %@ did not produce any viable feedback";
LABEL_15:
      _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) sessionID];
    v11 = 138412290;
    v12 = v8;
    v9 = "_PSEnsemble: No valid feedback event found for sessionId: %@";
    goto LABEL_15;
  }

LABEL_16:

  v10 = *MEMORY[0x1E69E9840];
}

void __118___PSEnsembleModel_psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___block_invoke_918()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"asyncPSRDataCollection" qosClass:9];
  v2 = psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___pasExprOnceResult;
  psrDataCollectionForContext_timeToWaitInSeconds_interactionStatisticsConfig_interactionStatistics___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __126___PSEnsembleModel_suggestionsFromSuggestionProxies_supportedBundleIDs_contactKeysToFetch_meContactIdentifier_maxSuggestions___block_invoke_653_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_8(&dword_1B5ED1000, v0, v1, "Error fetching interaction to create Messages suggestion template (predicate: %{public}@): %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __103___PSEnsembleModel_rankedGlobalSuggestionsForSiriNLWithPredictionContext_maxSuggestions_interactionId___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __50___PSEnsembleModel_evaluateCandidates_psrMLModel___block_invoke_837_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __139___PSEnsembleModel__updateInteractionStatisticsForSpeculativeEngagement_interactionStatisticsConfig_interactionStatistics_sessionFeedback___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 40) sessionID];
  v10 = [a2 conversationId];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end