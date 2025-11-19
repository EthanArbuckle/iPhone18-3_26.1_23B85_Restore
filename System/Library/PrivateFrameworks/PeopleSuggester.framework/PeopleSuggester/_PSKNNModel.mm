@interface _PSKNNModel
- (BOOL)suggestedRecipientHandles:(id)a3 differFromFetchedRecipientHandles:(id)a4;
- (_PSKNNModel)initWithK:(unint64_t)a3 interactionStore:(id)a4 filterByBundleIds:(id)a5 knowledgeStore:(id)a6 contactResolver:(id)a7 messageInteractionCache:(id)a8 shareInteractionCache:(id)a9;
- (double)distanceOfNeighbor:(id)a3 fromReference:(id)a4;
- (double)jaccardDistanceFromSetBasedReference:(id)a3 neighbor:(id)a4;
- (id)_featureVectorFromSuggestionDate:(id)a3 bundleID:(id)a4 peopleInPhotoIdentifiers:(id)a5 sceneTagsInPhotoIdentifiers:(id)a6;
- (id)candidatePropertyFromCandidates:(id)a3;
- (id)contactKeysToFetch;
- (id)extractNearestNeighborLabelsForQueryResult:(id)a3 andNeighbors:(id)a4 frequencyOnly:(BOOL)a5 rankerType:(int64_t)a6 contactsOnly:(BOOL)a7 reason:(id)a8;
- (id)extractNearestNeighborsForMapsQueryResult:(id)a3 andNeighbors:(id)a4 frequencyOnly:(BOOL)a5;
- (id)featureVectorFromAbsolutePredictionTime:(double)a3 bundleId:(id)a4;
- (id)featureVectorFromInteraction:(id)a3;
- (id)featureVectorFromPredictionContext:(id)a3;
- (id)featureVectorFromPredictionDate:(id)a3 bundleId:(id)a4;
- (id)featuresFromInteractions:(id)a3;
- (id)featuresFromInteractionsSplitRecipients:(id)a3;
- (id)featuresFromMapsFeedbackEvents:(id)a3;
- (id)filterShareInteractions:(id)a3 minimumOccurencesByMechanism:(id)a4 contextBundleId:(id)a5 filterOutNonMatchingSourceBundleIDs:(BOOL)a6;
- (id)filterSuggestionsFrom:(id)a3 byFilteringOutSeedRecipients:(id)a4;
- (id)indexesOfObjectsWithKey:(id)a3 withValues:(id)a4 inArray:(id)a5;
- (id)mapsShareEtaDefaultKnnSuggestions:(id)a3 maxSuggestions:(unint64_t)a4;
- (id)mergedSuggestionsFromShares:(id)a3 andInteractions:(id)a4;
- (id)messagesGroupResultsForPredictionContext:(id)a3;
- (id)messagesGroupsMatchingSearchPrefix:(id)a3 inInteractions:(id)a4;
- (id)neighborsFromTrainingData:(id)a3 k:(unint64_t)a4 queryPoint:(id)a5;
- (id)normalizedScoresForInputDictionary:(id)a3;
- (id)rankedAutocompleteSuggestionsWithPredictionContext:(id)a3 candidates:(id)a4;
- (id)rankedCoRecipientSuggestionsWithPredictionContext:(id)a3 modelConfiguration:(id)a4 maxSuggestions:(unint64_t)a5;
- (id)rankedGlobalSuggestionsForSiriNLWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4;
- (id)rankedHandlesFromCandidateHandles:(id)a3;
- (id)rankedLabelsFromInteractionsForPhoneCallsWithInteractions:(id)a3 andDistances:(id)a4;
- (id)rankedLabelsFromInteractionsMaintainRecipientsArray:(id)a3 andDistances:(id)a4 freqOnly:(BOOL)a5;
- (id)rankedLabelsFromInteractionsSingleRecipientArray:(id)a3 andDistances:(id)a4 freqOnly:(BOOL)a5 contactsOnly:(BOOL)a6 scoreLikeShareSheet:(BOOL)a7;
- (id)rankedLabelsFromInteractionsSiriNLWithInteractions:(id)a3 andDistances:(id)a4 freqOnly:(BOOL)a5;
- (id)rankedMapsShareEtaSuggestions:(id)a3 maxSuggestions:(unint64_t)a4;
- (id)rankedMessagesAutocompleteSuggestionsWithPredictionContext:(id)a3 bundleId:(id)a4 candidates:(id)a5;
- (id)rankedNameSuggestionsWithPredictionContext:(id)a3 forName:(id)a4 contactsOnly:(BOOL)a5;
- (id)rankedNonMessagesAutocompleteSuggestionsWithPredictionContext:(id)a3 bundleId:(id)a4 candidates:(id)a5 performSecondarySearch:(BOOL)a6;
- (id)rankedPhoneCallAutocompleteSuggestionsWithPredictionContext:(id)a3 candidates:(id)a4;
- (id)rankedSiriMLCRHandles:(id)a3 context:(id)a4;
- (id)rankedZkwSuggestionsWithPredictionContext:(id)a3 modelConfiguration:(id)a4 maxSuggestions:(unint64_t)a5;
- (id)recipientsForChat:(id)a3;
- (id)sliceStart:(unint64_t)a3 end:(unint64_t)a4 ofArray:(id)a5;
- (id)softmaxAppliedOnScoresForInputDictionary:(id)a3;
- (id)splitShareLabels:(id)a3 suggestionDate:(id)a4 contextBundleId:(id)a5;
- (id)suggestionProxiesBasedOnNonSharingInteractionsWithPredictionContext:(id)a3;
- (id)suggestionProxiesWithPredictionContext:(id)a3;
- (id)suggestionsByUpdatingGroupNamesFromSuggestions:(id)a3 imCoreTimeBudget:(double)a4;
- (id)targetBundleIdsForFilterBundlesIds:(id)a3;
- (int64_t)suggestionExists:(id)a3 withValue:(id)a4 inArray:(id)a5;
- (unint64_t)indexToInsertNeighbor:(id)a3 array:(id)a4;
- (void)updateModelProperties:(id)a3;
@end

@implementation _PSKNNModel

- (id)rankedPhoneCallAutocompleteSuggestionsWithPredictionContext:(id)a3 candidates:(id)a4
{
  v71[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 count])
  {
    if ([v8 count] == 1)
    {
      v9 = v8;
    }

    else
    {
      v10 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "rankedPhoneCallAutocompleteSuggestionsWithPredictionContext", " enableTelemetry=YES ", buf, 2u);
      }

      v11 = +[_PSLogging knnChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v64 = v8;
        _os_log_impl(&dword_1B5ED1000, v11, OS_LOG_TYPE_DEFAULT, "Autocomplete candidates for PhoneCalls: %{private}@", buf, 0xCu);
      }

      v49 = [(_PSKNNModel *)self candidatePropertyFromCandidates:v8];
      v12 = [v49 allKeys];
      if ([v12 count])
      {
        v13 = +[_PSConstants mobilePhoneBundleId];
        v71[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
        v15 = [(_PSKNNModel *)self interactionStore];
        v16 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:v12 account:0 directions:&unk_1F2D8C1E0 mechanisms:&unk_1F2D8C1F8 bundleIds:v14 store:v15 fetchLimit:500];
      }

      else
      {
        v16 = 0;
      }

      v48 = v12;
      v17 = [v6 bundleID];
      v53 = self;
      v51 = v6;
      v47 = v16;
      v18 = -[_PSKNNModel rankedSuggestionsWithPredictionContext:bundleId:maxSuggestions:frequencyOnly:interactions:](self, "rankedSuggestionsWithPredictionContext:bundleId:maxSuggestions:frequencyOnly:interactions:", v6, v17, [v8 count], 0, v16);

      v19 = +[_PSLogging knnChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v64 = v18;
        _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_INFO, "Suggestions from rankedSuggestionsWithPredictionContext: %{private}@", buf, 0xCu);
      }

      v52 = [MEMORY[0x1E695DF70] array];
      v50 = v8;
      v20 = [v8 mutableCopy];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v18;
      v21 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v60;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v60 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v59 + 1) + 8 * i);
            v26 = [v25 recipients];
            if ([v26 count] == 1)
            {
              v27 = [v25 recipients];
              v28 = [v27 firstObject];
              v29 = [v28 handle];
              v30 = [(_PSKNNModel *)v53 suggestionExists:@"handle" withValue:v29 inArray:v20];

              if (v30 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v31 = [v25 recipients];
                v32 = [v20 objectAtIndexedSubscript:v30];
                [v32 setRecipients:v31];

                v33 = [v20 objectAtIndexedSubscript:v30];
                [v33 setResultSourceType:16];

                v34 = [v20 objectAtIndexedSubscript:v30];
                [v52 addObject:v34];

                [v20 removeObjectAtIndex:v30];
              }
            }

            else
            {
            }
          }

          v22 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
        }

        while (v22);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v35 = v20;
      v36 = [v35 countByEnumeratingWithState:&v55 objects:v69 count:16];
      v9 = v52;
      if (v36)
      {
        v37 = v36;
        v38 = *v56;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v56 != v38)
            {
              objc_enumerationMutation(v35);
            }

            [v52 addObject:*(*(&v55 + 1) + 8 * j)];
          }

          v37 = [v35 countByEnumeratingWithState:&v55 objects:v69 count:16];
        }

        while (v37);
      }

      v40 = [v52 count];
      v41 = +[_PSLogging knnChannel];
      v8 = v50;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        if (v40 >= 0xA)
        {
          v40 = 10;
        }

        v42 = [v52 subarrayWithRange:{0, v40}];
        v43 = [v50 count];
        *buf = 134218498;
        v64 = v40;
        v65 = 2112;
        v66 = v42;
        v67 = 2048;
        v68 = v43;
        _os_log_impl(&dword_1B5ED1000, v41, OS_LOG_TYPE_INFO, "Autocomplete Top %lu results: %@ for candidates %lu", buf, 0x20u);
      }

      v44 = +[_PSLogging suggestionSignpost];
      v6 = v51;
      if (os_signpost_enabled(v44))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "rankedPhoneCallAutocompleteSuggestionsWithPredictionContext", &unk_1B5FD970D, buf, 2u);
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v45 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)rankedLabelsFromInteractionsForPhoneCallsWithInteractions:(id)a3 andDistances:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v45 = a4;
  v46 = [MEMORY[0x1E695DF90] dictionary];
  v6 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  if ([v5 count])
  {
    v7 = 0;
    v8 = 0x1E7C23000uLL;
    v9 = (86400 * v6);
    v44 = v5;
    do
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [v5 objectAtIndexedSubscript:v7];
      v10 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = v10;
      v48 = *v54;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          v14 = [v13 bundleId];
          v15 = [*(v8 + 960) mobilePhoneBundleId];
          if ([v14 isEqualToString:v15])
          {
            v16 = [v13 derivedIntentIdentifier];

            if (!v16)
            {
              continue;
            }

            v14 = [MEMORY[0x1E695DF90] dictionary];
            v17 = [v13 derivedIntentIdentifier];
            [v14 setObject:v17 forKeyedSubscript:@"conversationId"];

            v18 = [v13 bundleId];
            [v14 setObject:v18 forKeyedSubscript:@"bundleId"];

            v19 = [v13 bundleId];
            [v14 setObject:v19 forKeyedSubscript:@"sourceBundleId"];

            v20 = [v13 startDate];
            [v14 setObject:v20 forKeyedSubscript:@"startDate"];

            v21 = [v14 objectForKeyedSubscript:@"bundleId"];
            v22 = [v13 derivedIntentIdentifier];
            v15 = _PSSuggestionKey(v21, v22);

            v23 = [v46 objectForKeyedSubscript:v15];
            v24 = [v23 objectForKeyedSubscript:@"score"];

            v25 = MEMORY[0x1E696AD98];
            [v24 doubleValue];
            v27 = v26;
            [v45 objectAtIndexedSubscript:v7];
            v29 = v28 = v7;
            [v29 doubleValue];
            v31 = [v25 numberWithDouble:v27 + v9 / v30];

            v58[0] = @"score";
            v58[1] = @"key";
            v59[0] = v31;
            v59[1] = v14;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
            v8 = 0x1E7C23000;
            [v46 setObject:v32 forKeyedSubscript:v15];

            v7 = v28;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v11);
LABEL_14:

      ++v7;
      v5 = v44;
    }

    while ([v44 count] > v7);
  }

  v33 = [v46 keysSortedByValueUsingComparator:&__block_literal_global_9];
  v34 = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v35 = v33;
  v36 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v50;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [v46 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * j)];
        v41 = [v40 objectForKeyedSubscript:@"key"];
        [v34 addObject:v41];
      }

      v37 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v37);
  }

  v42 = *MEMORY[0x1E69E9840];

  return v34;
}

- (int64_t)suggestionExists:(id)a3 withValue:(id)a4 inArray:(id)a5
{
  if (!a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = MEMORY[0x1E696AE18];
  v8 = a5;
  v9 = [v7 predicateWithFormat:@"%K ==[c] %@", a3, a4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80___PSKNNModel_PhoneAutocompleteSuggestions__suggestionExists_withValue_inArray___block_invoke;
  v13[3] = &unk_1E7C24FA8;
  v14 = v9;
  v10 = v9;
  v11 = [v8 indexOfObjectPassingTest:v13];

  return v11;
}

- (id)candidatePropertyFromCandidates:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
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
    v10 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 chatGuid];

        if (v13)
        {
          v14 = [v12 chatHandles];
          if (v14)
          {
            v3 = [v12 chatHandles];
            v15 = v3;
          }

          else
          {
            v15 = v10;
          }

          v17 = [v12 chatGuid];
          [v5 setObject:v15 forKeyedSubscript:v17];

          if (v14)
          {
          }
        }

        else
        {
          v16 = [v12 handle];

          if (!v16)
          {
            continue;
          }

          v14 = [v12 handle];
          [v5 setObject:v10 forKeyedSubscript:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (_PSKNNModel)initWithK:(unint64_t)a3 interactionStore:(id)a4 filterByBundleIds:(id)a5 knowledgeStore:(id)a6 contactResolver:(id)a7 messageInteractionCache:(id)a8 shareInteractionCache:(id)a9
{
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v16 = a8;
  v17 = a9;
  v18 = [(_PSKNNModel *)self init];
  v19 = v18;
  if (v18)
  {
    v18->_k = a3;
    objc_storeStrong(&v18->_interactionStore, a4);
    objc_storeStrong(&v19->_filterBundleIds, a5);
    objc_storeStrong(&v19->_knowledgeStore, a6);
    objc_storeStrong(&v19->_contactResolver, a7);
    objc_storeStrong(&v19->_messageInteractionCache, a8);
    objc_storeStrong(&v19->_shareInteractionCache, a9);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v20 = getCNContactStoreClass_softClass_4;
    v33 = getCNContactStoreClass_softClass_4;
    if (!getCNContactStoreClass_softClass_4)
    {
      ContactsLibraryCore_6();
      v31[3] = objc_getClass("CNContactStore");
      getCNContactStoreClass_softClass_4 = v31[3];
      v20 = v31[3];
    }

    v21 = v20;
    _Block_object_dispose(&v30, 8);
    v22 = objc_alloc_init(v20);
    contactStore = v19->_contactStore;
    v19->_contactStore = v22;

    v24 = +[_PSConfig defaultConfig];
    [(_PSKNNModel *)v19 updateModelProperties:v24];
  }

  return v19;
}

- (void)updateModelProperties:(id)a3
{
  v40[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = [v7 objectForKeyedSubscript:@"_PSKnnTopKShares"];
  -[_PSKNNModel set_PSKnnTopKShares:](self, "set_PSKnnTopKShares:", [v8 integerValue]);

  v9 = [v7 objectForKeyedSubscript:@"_PSKnnMessagesZkwTopNFilter"];
  -[_PSKNNModel set_PSKnnMessagesZkwTopNFilter:](self, "set_PSKnnMessagesZkwTopNFilter:", [v9 integerValue]);

  v10 = [v7 objectForKeyedSubscript:@"_PSKnnModelRecencyMarginToPromoteShares"];
  -[_PSKNNModel set_PSKnnModelRecencyMarginToPromoteShares:](self, "set_PSKnnModelRecencyMarginToPromoteShares:", [v10 integerValue]);

  v11 = [v7 objectForKeyedSubscript:@"_PSKnnModelRecencyMarginToPromoteSharesMatchingBundleId"];
  -[_PSKNNModel set_PSKnnModelRecencyMarginToPromoteSharesMatchingBundleId:](self, "set_PSKnnModelRecencyMarginToPromoteSharesMatchingBundleId:", [v11 integerValue]);

  v12 = [v7 objectForKeyedSubscript:@"_PSKnnModelRecencyMarginToRetainShares"];
  -[_PSKNNModel set_PSKnnModelRecencyMarginToRetainShares:](self, "set_PSKnnModelRecencyMarginToRetainShares:", [v12 integerValue]);

  v13 = [v7 objectForKeyedSubscript:@"_PSKnnTopKGroupActivities"];
  v14 = v13;
  if (!v13)
  {
    v13 = &unk_1F2D8B8B0;
  }

  -[_PSKNNModel set_PSKnnTopKGroupActivities:](self, "set_PSKnnTopKGroupActivities:", [v13 integerValue]);

  v15 = [v7 objectForKeyedSubscript:@"_PSKnnModelRecencyMarginToRetainGroupActivities"];
  v16 = v15;
  if (!v15)
  {
    v15 = &unk_1F2D8B8C8;
  }

  -[_PSKNNModel set_PSKnnModelRecencyMarginToRetainGroupActivities:](self, "set_PSKnnModelRecencyMarginToRetainGroupActivities:", [v15 integerValue]);

  v17 = [v7 objectForKeyedSubscript:@"_PSKnnModelGroupActivitiesMinimumOccuranceRegularizer"];
  v18 = v17;
  if (!v17)
  {
    v17 = &unk_1F2D8B8E0;
  }

  -[_PSKNNModel set_PSKnnModelGroupActivitiesMinimumOccuranceRegularizer:](self, "set_PSKnnModelGroupActivitiesMinimumOccuranceRegularizer:", [v17 integerValue]);

  v19 = [v7 objectForKeyedSubscript:@"_PSKnnModelShareSheetMinimumOccurenceRegularizer"];
  v20 = v19;
  if (!v19)
  {
    v19 = &unk_1F2D8B8F8;
  }

  -[_PSKNNModel set_PSKnnModelShareSheetMinimumOccurenceRegularizer:](self, "set_PSKnnModelShareSheetMinimumOccurenceRegularizer:", [v19 integerValue]);

  v21 = [v7 objectForKeyedSubscript:@"_PSKnnModelShareSheetSuggestionPressedMinimumOccurenceRegularizer"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PSKNNModel _PSKnnModelShareSheetMinimumOccurenceRegularizer](self, "_PSKnnModelShareSheetMinimumOccurenceRegularizer")}];
  }

  v24 = v23;

  -[_PSKNNModel set_PSKnnModelShareSheetSuggestionEngagedMinimumOccurenceRegularizer:](self, "set_PSKnnModelShareSheetSuggestionEngagedMinimumOccurenceRegularizer:", [v24 integerValue]);
  v25 = [v7 objectForKeyedSubscript:@"_PSKnnModelSharePlayMinimumOccurenceRegularizer"];
  v26 = v25;
  if (!v25)
  {
    v25 = &unk_1F2D8B8E0;
  }

  -[_PSKNNModel set_PSKnnModelSharePlayMinimumOccurenceRegularizer:](self, "set_PSKnnModelSharePlayMinimumOccurenceRegularizer:", [v25 integerValue]);

  v39[0] = &unk_1F2D8B910;
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PSKNNModel _PSKnnModelShareSheetMinimumOccurenceRegularizer](self, "_PSKnnModelShareSheetMinimumOccurenceRegularizer")}];
  v40[0] = v27;
  v39[1] = &unk_1F2D8B928;
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PSKNNModel _PSKnnModelShareSheetSuggestionEngagedMinimumOccurenceRegularizer](self, "_PSKnnModelShareSheetSuggestionEngagedMinimumOccurenceRegularizer")}];
  v40[1] = v28;
  v39[2] = &unk_1F2D8B940;
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PSKNNModel _PSKnnModelSharePlayMinimumOccurenceRegularizer](self, "_PSKnnModelSharePlayMinimumOccurenceRegularizer")}];
  v40[2] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
  [(_PSKNNModel *)self set_PSKnnModelMinimumOccurenceOfInteractionByMechanism:v30];

  v31 = [v7 objectForKeyedSubscript:@"_PSInteractionModelInUse"];
  -[_PSKNNModel set_PSInteractionModelInUse:](self, "set_PSInteractionModelInUse:", [v31 BOOLValue]);

  v32 = [v7 objectForKeyedSubscript:@"_PSKnnModelSameBundleIdPenalty"];
  v33 = v32;
  if (!v32)
  {
    v32 = &unk_1F2D8C818;
  }

  [v32 doubleValue];
  [(_PSKNNModel *)self set_PSKnnModelSameBundleIdPenalty:v34];

  v35 = [v7 objectForKeyedSubscript:@"_PSKnnModelDifferentPeoplePenalty"];
  v36 = v35;
  if (!v35)
  {
    v35 = &unk_1F2D8C818;
  }

  [v35 doubleValue];
  [(_PSKNNModel *)self set_PSKnnModelDifferentPeoplePenalty:v37];

  v38 = *MEMORY[0x1E69E9840];
}

- (id)rankedSiriMLCRHandles:(id)a3 context:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v7 bundleIds];
    if (v8)
    {
      v9 = [v7 bundleIds];
    }

    else
    {
      v9 = 0;
    }

    v11 = [v7 suggestionDate];
    v12 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v11 bundleId:0];

    v49 = v7;
    if ([v7 domain] == 2)
    {
      v13 = &unk_1F2D8C408;
    }

    else if ([v7 domain] == 1)
    {
      v13 = &unk_1F2D8C420;
    }

    else
    {
      v13 = 0;
    }

    v14 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:v6];
    v15 = MEMORY[0x1E695DFD8];
    v54 = v14;
    v16 = [v14 allValues];
    v17 = [v15 setWithArray:v16];
    v18 = [v17 mutableCopy];

    v51 = v18;
    v19 = [v18 allObjects];
    v20 = [(_PSKNNModel *)self interactionStore];
    v48 = v9;
    v21 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:v19 account:0 directions:0 mechanisms:v13 bundleIds:v9 store:v20 fetchLimit:5000 messageInteractionCache:0];

    v46 = v21;
    v45 = [(_PSKNNModel *)self featuresFromInteractionsSplitRecipients:v21];
    v47 = v12;
    v22 = [_PSKNNModel interactionLabelsForQueryResult:"interactionLabelsForQueryResult:queryPoint:rankerType:frequencyOnly:contactsOnly:" queryPoint:? rankerType:? frequencyOnly:? contactsOnly:?];
    v23 = [MEMORY[0x1E695DF90] dictionary];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v22;
    v24 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v60;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v59 + 1) + 8 * i);
          v29 = [v28 objectForKeyedSubscript:@"key"];
          v30 = [v28 objectForKeyedSubscript:@"score"];
          v31 = [v29 objectForKeyedSubscript:@"conversationId"];
          v32 = [v23 objectForKeyedSubscript:v31];
          if (v32)
          {
          }

          else if ([v51 containsObject:v31])
          {
            [v23 setObject:v30 forKeyedSubscript:v31];
          }
        }

        v25 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v25);
    }

    v10 = [MEMORY[0x1E695DF90] dictionary];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v50 = v6;
    v52 = v6;
    v33 = [v52 countByEnumeratingWithState:&v55 objects:v63 count:16];
    v34 = v54;
    if (v33)
    {
      v35 = v33;
      v36 = *v56;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v56 != v36)
          {
            objc_enumerationMutation(v52);
          }

          v38 = *(*(&v55 + 1) + 8 * j);
          v39 = [v34 objectForKeyedSubscript:v38];
          v40 = [v23 objectForKeyedSubscript:v39];
          if (v40)
          {
            v41 = [v34 objectForKeyedSubscript:v38];
            v42 = [v23 objectForKeyedSubscript:v41];
            [v10 setObject:v42 forKeyedSubscript:v38];

            v34 = v54;
          }

          else
          {
            [v10 setObject:&unk_1F2D8BA30 forKeyedSubscript:v38];
          }
        }

        v35 = [v52 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v35);
    }

    v7 = v49;
    v6 = v50;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v43 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)rankedHandlesFromCandidateHandles:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v43 = [MEMORY[0x1E695DF00] date];
    v5 = [_PSKNNModel featureVectorFromPredictionDate:"featureVectorFromPredictionDate:bundleId:" bundleId:?];
    v44 = v4;
    v6 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:v4];
    v7 = MEMORY[0x1E695DFD8];
    v48 = v6;
    v8 = [v6 allValues];
    v9 = [v7 setWithArray:v8];
    v10 = [v9 mutableCopy];

    v45 = v10;
    v11 = [v10 allObjects];
    v12 = [(_PSKNNModel *)self interactionStore];
    v13 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:v11 account:0 directions:0 mechanisms:0 bundleIds:0 store:v12 fetchLimit:5000 messageInteractionCache:0];

    v40 = v13;
    [(_PSKNNModel *)self featuresFromInteractionsSplitRecipients:v13];
    v41 = self;
    v39 = v42 = v5;
    v14 = [_PSKNNModel interactionLabelsForQueryResult:"interactionLabelsForQueryResult:queryPoint:rankerType:frequencyOnly:contactsOnly:" queryPoint:? rankerType:? frequencyOnly:? contactsOnly:?];
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v54;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v53 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:@"key"];
          v22 = [v20 objectForKeyedSubscript:@"score"];
          v23 = [v21 objectForKeyedSubscript:@"conversationId"];
          v24 = [v15 objectForKeyedSubscript:v23];
          if (v24)
          {
          }

          else if ([v45 containsObject:v23])
          {
            [v15 setObject:v22 forKeyedSubscript:v23];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v17);
    }

    v25 = [MEMORY[0x1E695DF90] dictionary];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v46 = v44;
    v26 = [v46 countByEnumeratingWithState:&v49 objects:v57 count:16];
    v27 = v48;
    if (v26)
    {
      v28 = v26;
      v29 = *v50;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v50 != v29)
          {
            objc_enumerationMutation(v46);
          }

          v31 = *(*(&v49 + 1) + 8 * j);
          v32 = [v27 objectForKeyedSubscript:v31];
          v33 = [v15 objectForKeyedSubscript:v32];
          if (v33)
          {
            v34 = [v27 objectForKeyedSubscript:v31];
            v35 = [v15 objectForKeyedSubscript:v34];
            [v25 setObject:v35 forKeyedSubscript:v31];

            v27 = v48;
          }

          else
          {
            [v25 setObject:&unk_1F2D8BA30 forKeyedSubscript:v31];
          }
        }

        v28 = [v46 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v28);
    }

    v36 = [(_PSKNNModel *)v41 normalizedScoresForInputDictionary:v25];

    v4 = v44;
  }

  else
  {
    v36 = MEMORY[0x1E695E0F8];
  }

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)rankedAutocompleteSuggestionsWithPredictionContext:(id)a3 candidates:(id)a4
{
  v31[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_INFO, "Autocomplete request received", buf, 2u);
  }

  v8 = [v5 bundleID];
  v9 = +[_PSConstants mobileMessagesComposeBundleId];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = +[_PSConstants mobileMessagesBundleId];

    v8 = v11;
  }

  v12 = +[_PSConstants mobileMessagesBundleId];
  v31[0] = v12;
  v13 = +[_PSConstants macMessagesBundleId];
  v31[1] = v13;
  v14 = +[_PSConstants mobileFacetimeBundleId];
  v31[2] = v14;
  v15 = +[_PSConstants macFacetimeBundleId];
  v31[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];

  v17 = +[_PSConstants mobilePhoneBundleId];
  LODWORD(v13) = [v8 isEqualToString:v17];

  if (v13)
  {
    v18 = +[_PSLogging knnChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "Autocomplete Suggestions for InCallService", buf, 2u);
    }

    v19 = [(_PSKNNModel *)self rankedPhoneCallAutocompleteSuggestionsWithPredictionContext:v5 candidates:v6];
LABEL_13:
    v23 = v19;
    goto LABEL_17;
  }

  v20 = [v16 containsObject:v8];
  v21 = +[_PSLogging knnChannel];
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_INFO, "Autocomplete Suggestions for Messages", buf, 2u);
    }

    v19 = [(_PSKNNModel *)self rankedMessagesAutocompleteSuggestionsWithPredictionContext:v5 bundleId:v8 candidates:v6];
    goto LABEL_13;
  }

  if (v22)
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_INFO, "Autocomplete Suggestions for Non-Messages", buf, 2u);
  }

  v24 = [(_PSKNNModel *)self rankedNonMessagesAutocompleteSuggestionsWithPredictionContext:v5 bundleId:v8 candidates:v6 performSecondarySearch:1];
  v25 = [v24 objectForKeyedSubscript:@"ranked"];
  v26 = [v24 objectForKeyedSubscript:@"unranked"];
  v23 = [v25 arrayByAddingObjectsFromArray:v26];

LABEL_17:
  v27 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)rankedNonMessagesAutocompleteSuggestionsWithPredictionContext:(id)a3 bundleId:(id)a4 candidates:(id)a5 performSecondarySearch:(BOOL)a6
{
  v6 = a6;
  v83[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 suggestionDate];
  v14 = [v10 bundleID];
  v15 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v13 bundleId:v14];

  v71 = self;
  v16 = [(_PSKNNModel *)self candidatePropertyFromCandidates:v12];
  v17 = [v16 allKeys];

  v65 = v17;
  v18 = [v17 count];
  v19 = 0;
  if (v11 && v18)
  {
    v20 = [v10 accountIdentifier];
    v83[0] = v11;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
    v22 = [(_PSKNNModel *)v71 interactionStore];
    v23 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:v65 account:v20 directions:&unk_1F2D8C438 mechanisms:0 bundleIds:v21 store:v22 fetchLimit:500];

    if (v6)
    {
      v19 = v23;
      if (![v23 count])
      {
        v24 = [v10 accountIdentifier];
        v25 = [(_PSKNNModel *)v71 interactionStore];
        v26 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:v65 account:v24 directions:&unk_1F2D8C450 mechanisms:0 bundleIds:0 store:v25 fetchLimit:500];

        v19 = v26;
      }
    }

    else
    {
      v19 = v23;
    }
  }

  v63 = v11;
  v64 = v10;
  v60 = v19;
  v59 = [(_PSKNNModel *)v71 featuresFromInteractionsSplitRecipients:v19];
  v61 = v15;
  v27 = [_PSKNNModel interactionLabelsForQueryResult:v71 queryPoint:"interactionLabelsForQueryResult:queryPoint:rankerType:frequencyOnly:contactsOnly:" rankerType:? frequencyOnly:? contactsOnly:?];
  v67 = [MEMORY[0x1E695DF70] array];
  v62 = v12;
  v28 = [v12 mutableCopy];
  v66 = [v27 count];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v27;
  v29 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v29)
  {
    v30 = v29;
    v70 = 0;
    v31 = @"key";
    v32 = *v73;
    v33 = @"conversationId";
    v34 = @"handle";
    do
    {
      v35 = 0;
      v68 = v30;
      do
      {
        if (*v73 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = [*(*(&v72 + 1) + 8 * v35) objectForKeyedSubscript:v31];
        v37 = [v36 objectForKeyedSubscript:v33];

        v38 = [(_PSKNNModel *)v71 suggestionExists:v34 withValue:v37 inArray:v28];
        if (v38 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = v38;
          v40 = v28;
          v41 = v34;
          v42 = v33;
          v43 = v31;
          v44 = v40;
          v45 = [v40 objectAtIndexedSubscript:v39];
          [v45 setResultSourceType:16];

          if (v66 >= 3 && v70 <= 2 && ([v44 objectAtIndexedSubscript:v39], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "contactIdentifier"), v47 = objc_claimAutoreleasedReturnValue(), v47, v46, v47))
          {
            v48 = [v44 objectAtIndexedSubscript:v39];
            [v67 insertObject:v48 atIndex:v70];

            ++v70;
          }

          else
          {
            v49 = [v44 objectAtIndexedSubscript:v39];
            [v67 addObject:v49];
          }

          [v44 removeObjectAtIndex:v39];
          v31 = v43;
          v33 = v42;
          v34 = v41;
          v30 = v68;
          v28 = v44;
        }

        ++v35;
      }

      while (v30 != v35);
      v30 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v30);
  }

  v50 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    v51 = [v67 count];
    if (v51 >= 5)
    {
      v52 = 5;
    }

    else
    {
      v52 = v51;
    }

    v53 = [v67 subarrayWithRange:{0, v52}];
    v54 = [v62 count];
    *buf = 138412546;
    v79 = v53;
    v80 = 2048;
    v81 = v54;
    _os_log_impl(&dword_1B5ED1000, v50, OS_LOG_TYPE_INFO, "Autocomplete Top 5 results: %@ for candidates %lu", buf, 0x16u);
  }

  v76[0] = @"ranked";
  v76[1] = @"unranked";
  v77[0] = v67;
  v55 = [v28 copy];
  v77[1] = v55;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];

  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

- (id)rankedMessagesAutocompleteSuggestionsWithPredictionContext:(id)a3 bundleId:(id)a4 candidates:(id)a5
{
  v184[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v140 = v10;
    if ([v10 count])
    {
      v11 = 0x1E7C23000uLL;
      v12 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "rankedMessagesAutocompleteSuggestionsWithPredictionContext", " enableTelemetry=YES ", buf, 2u);
      }

      v13 = +[_PSLogging knnChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v174 = v140;
        _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_DEFAULT, "Autocomplete candidates: %{private}@", buf, 0xCu);
      }

      v136 = [(_PSKNNModel *)self candidatePropertyFromCandidates:v140];
      v14 = [v136 allKeys];
      v135 = [v8 seedRecipients];
      v138 = v8;
      v141 = v14;
      if ([v14 count])
      {
        v15 = [v8 accountIdentifier];
        +[_PSConstants mobileMessagesBundleId];
        v17 = v16 = v9;
        v184[0] = v17;
        v18 = +[_PSConstants macMessagesBundleId];
        v184[1] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v184 count:2];
        v20 = [(_PSKNNModel *)self interactionStore];
        v21 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:v14 account:v15 directions:&unk_1F2D8C468 mechanisms:0 bundleIds:v19 store:v20 fetchLimit:500];

        v8 = v138;
        v9 = v16;
        v11 = 0x1E7C23000;

        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v137 = v9;
      v134 = v22;
      v24 = [(_PSKNNModel *)self rankedSuggestionsWithPredictionContext:v8 bundleId:v9 maxSuggestions:2000 frequencyOnly:0 interactions:?];
      v25 = [*(v11 + 1360) knnChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v174 = v24;
        _os_log_impl(&dword_1B5ED1000, v25, OS_LOG_TYPE_INFO, "Suggestions from rankedSuggestionsWithPredictionContext: %{private}@", buf, 0xCu);
      }

      v26 = [MEMORY[0x1E695DF70] array];
      v27 = [v140 mutableCopy];
      v152 = [MEMORY[0x1E695DF90] dictionary];
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v28 = v24;
      v145 = v28;
      v146 = self;
      v154 = v26;
      v149 = [v28 countByEnumeratingWithState:&v169 objects:v183 count:16];
      if (v149)
      {
        v29 = *v170;
        v147 = *v170;
        do
        {
          v30 = 0;
          do
          {
            if (*v170 != v29)
            {
              objc_enumerationMutation(v28);
            }

            v150 = v30;
            v31 = *(*(&v169 + 1) + 8 * v30);
            v32 = [v31 conversationIdentifier];
            v33 = [(_PSKNNModel *)self suggestionExists:@"chatGuid" withValue:v32 inArray:v27];

            v34 = [v31 recipients];
            v35 = v34;
            if (v33 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v51 = [v27 objectAtIndexedSubscript:v33];
              [v51 setRecipients:v35];

              v52 = [v27 objectAtIndexedSubscript:v33];
              [v52 setResultSourceType:16];

              v53 = [v27 objectAtIndexedSubscript:v33];
              [v26 addObject:v53];

              [v27 removeObjectAtIndex:v33];
              goto LABEL_44;
            }

            if ([v34 count] == 1)
            {
              v36 = [v31 recipients];
              v37 = [v36 firstObject];
              v38 = [v37 handle];
              v39 = [(_PSKNNModel *)self suggestionExists:@"handle" withValue:v38 inArray:v27];

              v29 = v147;
              v26 = v154;

              if (v39 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v40 = [v31 recipients];
                v41 = [v27 objectAtIndexedSubscript:v39];
                [v41 setRecipients:v40];

                v42 = [v27 objectAtIndexedSubscript:v39];
                [v42 setResultSourceType:16];

                v43 = [v27 objectAtIndexedSubscript:v39];
                [v154 addObject:v43];

                [v27 removeObjectAtIndex:v39];
                v44 = [v31 recipients];
                v45 = [v44 firstObject];
                v46 = [v45 handle];

                if (v46)
                {
                  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v154, "count") - 1}];
                  v48 = [v31 recipients];
                  v49 = [v48 firstObject];
                  v50 = [v49 handle];
                  [v152 setObject:v47 forKeyedSubscript:v50];
                }

                goto LABEL_44;
              }
            }

            else
            {
            }

            v54 = [v31 recipients];
            v55 = [v54 count];

            if (v55 >= 2)
            {
              v56 = [v31 recipients];
              v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v56, "count")}];
              v165 = 0u;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              v58 = v56;
              v59 = [v58 countByEnumeratingWithState:&v165 objects:v182 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v166;
                do
                {
                  for (i = 0; i != v60; ++i)
                  {
                    if (*v166 != v61)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v63 = *(*(&v165 + 1) + 8 * i);
                    v64 = [v63 handle];

                    if (v64)
                    {
                      v65 = [v63 handle];
                      [v57 addObject:v65];
                    }
                  }

                  v60 = [v58 countByEnumeratingWithState:&v165 objects:v182 count:16];
                }

                while (v60);
              }

              v153 = [(_PSKNNModel *)self indexesOfObjectsWithKey:@"handle" withValues:v57 inArray:v27];
              v66 = [v153 firstIndex];
              if (v66 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v67 = v66;
                do
                {
                  v68 = [_PSRecipient alloc];
                  v69 = [v27 objectAtIndexedSubscript:v67];
                  v70 = [v69 contactIdentifier];
                  v71 = [v27 objectAtIndexedSubscript:v67];
                  v72 = [v71 handle];
                  v73 = [(_PSRecipient *)v68 initWithIdentifier:v70 handle:v72 contact:0];

                  if (v73)
                  {
                    v181 = v73;
                    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v181 count:1];
                    v75 = [v27 objectAtIndexedSubscript:v67];
                    [v75 setRecipients:v74];
                  }

                  v76 = [v27 objectAtIndexedSubscript:v67];
                  [v76 setResultSourceType:16];

                  v77 = [v27 objectAtIndexedSubscript:v67];
                  [v154 addObject:v77];

                  v78 = [v27 objectAtIndexedSubscript:v67];
                  v79 = [v78 handle];

                  if (v79)
                  {
                    v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v154, "count") - 1}];
                    v81 = [v27 objectAtIndexedSubscript:v67];
                    v82 = [v81 handle];
                    [v152 setObject:v80 forKeyedSubscript:v82];
                  }

                  v67 = [v153 indexGreaterThanIndex:v67];
                }

                while (v67 != 0x7FFFFFFFFFFFFFFFLL);
              }

              [v27 removeObjectsAtIndexes:v153];

              v28 = v145;
              self = v146;
              v26 = v154;
              v29 = v147;
            }

LABEL_44:
            v30 = v150 + 1;
          }

          while (v150 + 1 != v149);
          v149 = [v28 countByEnumeratingWithState:&v169 objects:v183 count:16];
        }

        while (v149);
      }

      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v83 = v27;
      v84 = [v83 countByEnumeratingWithState:&v161 objects:v180 count:16];
      if (v84)
      {
        v85 = v84;
        v86 = *v162;
        do
        {
          for (j = 0; j != v85; ++j)
          {
            if (*v162 != v86)
            {
              objc_enumerationMutation(v83);
            }

            v88 = *(*(&v161 + 1) + 8 * j);
            [v26 addObject:v88];
            v89 = [v88 handle];

            if (v89)
            {
              v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v26, "count") - 1}];
              v91 = [v88 handle];
              [v152 setObject:v90 forKeyedSubscript:v91];
            }
          }

          v85 = [v83 countByEnumeratingWithState:&v161 objects:v180 count:16];
        }

        while (v85);
      }

      v92 = 0x1E695D000uLL;
      v142 = objc_opt_new();
      v93 = v141;
      if ([v26 count])
      {
        v94 = 0;
        v139 = v83;
        do
        {
          v151 = v94;
          v95 = +[_PSLogging knnChannel];
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v174 = v26;
            _os_log_debug_impl(&dword_1B5ED1000, v95, OS_LOG_TYPE_DEBUG, "filteredSuggestions - start: %@", buf, 0xCu);
          }

          v96 = [v26 objectAtIndexedSubscript:v151];
          v97 = [v96 recipients];
          v98 = [v97 valueForKey:@"handle"];

          v99 = [v26 objectAtIndexedSubscript:v151];
          v100 = [v99 chatHandles];

          v101 = *(v92 + 4008);
          v102 = objc_opt_new();
          v148 = v98;
          [v102 addObjectsFromArray:v98];
          v144 = v100;
          [v102 addObjectsFromArray:v100];
          v143 = v102;
          v103 = [v102 allObjects];
          if ([v103 count] >= 2)
          {
            v104 = [v26 objectAtIndexedSubscript:v151];
            v105 = [v104 chatGuid];
            v106 = [v142 containsObject:v105];

            if (v106)
            {
              v93 = v141;
            }

            else
            {
              v107 = +[_PSLogging knnChannel];
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
              {
                v125 = [v26 objectAtIndexedSubscript:v151];
                v126 = [v125 chatGuid];
                *buf = 138412290;
                v174 = v126;
                _os_log_debug_impl(&dword_1B5ED1000, v107, OS_LOG_TYPE_DEBUG, "considering group: %@", buf, 0xCu);
              }

              v108 = [v26 objectAtIndexedSubscript:v151];
              v109 = [v108 chatGuid];
              [v142 addObject:v109];

              v159[0] = MEMORY[0x1E69E9820];
              v159[1] = 3221225472;
              v159[2] = __94___PSKNNModel_rankedMessagesAutocompleteSuggestionsWithPredictionContext_bundleId_candidates___block_invoke;
              v159[3] = &unk_1E7C25B08;
              v110 = v152;
              v160 = v110;
              v111 = [v103 sortedArrayUsingComparator:v159];

              v157 = 0u;
              v158 = 0u;
              v155 = 0u;
              v156 = 0u;
              v103 = v111;
              v112 = [v103 countByEnumeratingWithState:&v155 objects:v179 count:16];
              if (v112)
              {
                v113 = v112;
                v114 = *v156;
                v115 = v151;
                do
                {
                  for (k = 0; k != v113; ++k)
                  {
                    if (*v156 != v114)
                    {
                      objc_enumerationMutation(v103);
                    }

                    v117 = *(*(&v155 + 1) + 8 * k);
                    v118 = +[_PSLogging knnChannel];
                    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v174 = v117;
                      _os_log_debug_impl(&dword_1B5ED1000, v118, OS_LOG_TYPE_DEBUG, "considering recipient: %@", buf, 0xCu);
                    }

                    v119 = [v110 objectForKeyedSubscript:v117];
                    v120 = [v119 integerValue];

                    if (v120 > v115 && v115 <= [v154 count])
                    {
                      v121 = +[_PSLogging knnChannel];
                      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 134218240;
                        v174 = v120;
                        v175 = 2048;
                        v176 = v115;
                        _os_log_debug_impl(&dword_1B5ED1000, v121, OS_LOG_TYPE_DEBUG, "swapping filteredSuggestions[idxOfRecipient] to item at idxOfGroup, idxOfRecipient: %tu, idxOfGroup: %tu", buf, 0x16u);
                      }

                      v122 = [v154 objectAtIndexedSubscript:v120];
                      [v154 insertObject:v122 atIndex:v115];

                      [v154 removeObjectAtIndex:v120 + 1];
                      v123 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v115];
                      [v110 setObject:v123 forKeyedSubscript:v117];

                      ++v115;
                    }
                  }

                  v113 = [v103 countByEnumeratingWithState:&v155 objects:v179 count:16];
                }

                while (v113);
              }

              self = v146;
              v93 = v141;
              v26 = v154;
              v83 = v139;
            }

            v92 = 0x1E695D000;
          }

          v124 = +[_PSLogging knnChannel];
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v174 = v26;
            _os_log_debug_impl(&dword_1B5ED1000, v124, OS_LOG_TYPE_DEBUG, "filteredSuggestions - end: %@", buf, 0xCu);
          }

          v94 = v151 + 1;
        }

        while (v151 + 1 < [v26 count]);
      }

      v127 = [v26 count];
      v128 = +[_PSLogging knnChannel];
      v8 = v138;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
      {
        if (v127 >= 5)
        {
          v127 = 5;
        }

        v129 = [v26 subarrayWithRange:{0, v127}];
        v130 = [v140 count];
        *buf = 134218498;
        v174 = v127;
        v175 = 2112;
        v176 = v129;
        v177 = 2048;
        v178 = v130;
        _os_log_impl(&dword_1B5ED1000, v128, OS_LOG_TYPE_INFO, "Autocomplete Top %lu results: %@ for candidates %lu", buf, 0x20u);

        v93 = v141;
      }

      v23 = [(_PSKNNModel *)self filterSuggestionsFrom:v26 byFilteringOutSeedRecipients:v135];
      v131 = +[_PSLogging suggestionSignpost];
      if (os_signpost_enabled(v131))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v131, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "rankedMessagesAutocompleteSuggestionsWithPredictionContext", &unk_1B5FD970D, buf, 2u);
      }

      v9 = v137;
    }

    else
    {
      v23 = MEMORY[0x1E695E0F0];
    }

    v10 = v140;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  v132 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)messagesGroupResultsForPredictionContext:(id)a3
{
  v98 = *MEMORY[0x1E69E9840];
  v68 = a3;
  v3 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v95 = v68;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "messagesGroupResultsForPredictionContext: %{private}@", buf, 0xCu);
  }

  v70 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  v6 = MEMORY[0x1E695DF70];
  v7 = +[_PSConstants mobileMessagesBundleId];
  v8 = +[_PSConstants macMessagesBundleId];
  v67 = [v6 arrayWithObjects:{v7, v8, 0}];

  v9 = [MEMORY[0x1E6997920] sharedInstance];
  v10 = [v9 allLearningDisabledBundleIDs];

  objc_opt_class();
  v65 = v10;
  if (objc_opt_isKindOfClass())
  {
    v11 = +[_PSConstants mobileMessagesBundleId];
    if ([v10 containsObject:v11])
    {
    }

    else
    {
      v12 = +[_PSConstants macMessagesBundleId];
      v13 = [v65 containsObject:v12];

      if (!v13)
      {
        goto LABEL_10;
      }
    }

    v14 = +[_PSLogging knnChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[_PSConstants mobileMessagesBundleId];
      v16 = +[_PSConstants macMessagesBundleId];
      *buf = 138412546;
      v95 = v15;
      v96 = 2112;
      v97 = v16;
      _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "Falling back to contacts autocomplete bundle id as %@ or %@ is disabled in Siri & Search", buf, 0x16u);
    }

    v17 = +[_PSConstants contactsAutocompleteBundleId];
    [v67 addObject:v17];
  }

LABEL_10:
  v18 = 0;
  v19 = 0;
  v20 = v5 * -86400.0;
  v71 = v4;
  do
  {
    v21 = [v68 searchPrefix];
    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v20];
    v23 = [(_PSKNNModel *)self interactionStore];
    v24 = [_PSInteractionStoreUtils groupInteractionsContainingSearchStringInDisplayName:v21 excludingInteractionUUIDs:0 account:0 directions:&unk_1F2D8C480 bundleIds:v67 excludedDomainIdentifiers:v4 startDate:v22 store:v23 fetchLimit:500 offset:v19];

    v25 = +[_PSLogging knnChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v24 count];
      *buf = 134283521;
      v95 = v26;
      _os_log_impl(&dword_1B5ED1000, v25, OS_LOG_TYPE_INFO, "Fetched %{private}tu group interactions", buf, 0xCu);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v18 = v24;
    v27 = [v18 countByEnumeratingWithState:&v88 objects:v93 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v89;
      v73 = v19;
      v74 = v18;
      v72 = *v89;
      do
      {
        v30 = 0;
        v75 = v28;
        do
        {
          if (*v89 != v29)
          {
            objc_enumerationMutation(v18);
          }

          v31 = *(*(&v88 + 1) + 8 * v30);
          v32 = objc_autoreleasePoolPush();
          v81 = v31;
          v33 = [v31 domainIdentifier];
          if (v33 && ([v4 containsObject:v33] & 1) == 0)
          {
            v77 = v33;
            v78 = v32;
            v79 = v30;
            v80 = [v81 groupName];
            v76 = [v81 account];
            v34 = MEMORY[0x1E695DF70];
            v35 = [v81 recipients];
            v82 = [v34 arrayWithCapacity:{objc_msgSend(v35, "count")}];

            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v36 = [v81 recipients];
            v37 = [v36 countByEnumeratingWithState:&v84 objects:v92 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v85;
              do
              {
                for (i = 0; i != v38; ++i)
                {
                  if (*v85 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = *(*(&v84 + 1) + 8 * i);
                  v42 = [_PSRecipient alloc];
                  v43 = [v41 personIdType];
                  if (v43 == 3)
                  {
                    v44 = [v41 personId];
                    v83 = v44;
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v45 = [v41 identifier];
                  v46 = [v41 displayName];
                  v47 = [(_PSRecipient *)v42 initWithIdentifier:v44 handle:v45 displayName:v46 contact:0];

                  if (v43 == 3)
                  {
                  }

                  if (v47)
                  {
                    [v82 addObject:v47];
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v84 objects:v92 count:16];
              }

              while (v38);
            }

            v48 = v81;
            if ([v81 direction])
            {
              v4 = v71;
              v29 = v72;
              v19 = v73;
              v18 = v74;
              v33 = v77;
            }

            else
            {
              v49 = [v81 sender];

              v29 = v72;
              v33 = v77;
              if (v49)
              {
                v50 = [v81 sender];
                v51 = [_PSRecipient alloc];
                v52 = [v50 personIdType];
                if (v52 == 3)
                {
                  v53 = [v50 personId];
                  v69 = v53;
                }

                else
                {
                  v53 = 0;
                }

                v54 = [v50 identifier];
                v55 = [v50 displayName];
                v56 = [(_PSRecipient *)v51 initWithIdentifier:v53 handle:v54 displayName:v55 contact:0];

                if (v52 == 3)
                {
                }

                v4 = v71;
                v19 = v73;
                v18 = v74;
                if (v56)
                {
                  [v82 addObject:v56];
                }

                v48 = v81;
              }

              else
              {
                v4 = v71;
                v19 = v73;
                v18 = v74;
              }
            }

            v57 = [_PSSuggestion alloc];
            v58 = [v48 bundleId];
            v59 = [(_PSSuggestion *)v57 initWithBundleID:v58 conversationIdentifier:v33 groupName:v80 recipients:v82];

            [(_PSSuggestion *)v59 setMessagesGroupIdentifier:v76];
            if (v59)
            {
              [v70 addObject:v59];
            }

            [v4 addObject:v33];

            v28 = v75;
            v32 = v78;
            v30 = v79;
          }

          objc_autoreleasePoolPop(v32);
          ++v30;
        }

        while (v30 != v28);
        v28 = [v18 countByEnumeratingWithState:&v88 objects:v93 count:16];
      }

      while (v28);
    }

    v19 += 500;
  }

  while ([v18 count] > 0x1F3);
  v60 = [(_PSKNNModel *)self suggestionsByUpdatingGroupNamesFromSuggestions:v70 imCoreTimeBudget:0.5];
  v61 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = [v60 count];
    *buf = 134218243;
    v95 = v62;
    v96 = 2113;
    v97 = v60;
    _os_log_impl(&dword_1B5ED1000, v61, OS_LOG_TYPE_DEFAULT, "Number of messages group results returned for prefix search: %tu, results: %{private}@", buf, 0x16u);
  }

  v63 = *MEMORY[0x1E69E9840];

  return v60;
}

- (id)suggestionsByUpdatingGroupNamesFromSuggestions:(id)a3 imCoreTimeBudget:(double)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = objc_opt_new();
    v8 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"suggestionsByUpdatingGroupNamesFromSuggestions IMCore queue"];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    *&v18[3] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79___PSKNNModel_suggestionsByUpdatingGroupNamesFromSuggestions_imCoreTimeBudget___block_invoke;
    v13[3] = &unk_1E7C26438;
    v17 = v18;
    v9 = v8;
    v14 = v9;
    v10 = v7;
    v15 = v10;
    v16 = self;
    v11 = [v6 _pas_mappedArrayWithTransform:v13];

    _Block_object_dispose(v18, 8);
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (BOOL)suggestedRecipientHandles:(id)a3 differFromFetchedRecipientHandles:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    if ([v5 count])
    {
      v10 = 0;
      do
      {
        v11 = [v5 objectAtIndexedSubscript:v10];
        v12 = [v11 handle];

        if (v12)
        {
          [v8 addObject:v12];
        }

        v13 = [v6 objectAtIndexedSubscript:v10];
        v14 = [v13 handle];

        if (v14)
        {
          [v9 addObject:v14];
        }

        ++v10;
      }

      while (v10 < [v5 count]);
    }

    v15 = [v8 sortedArrayUsingSelector:sel_compare_];
    v16 = [v9 sortedArrayUsingSelector:sel_compare_];
    v17 = [v15 isEqualToArray:v16] ^ 1;
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  return v17;
}

- (id)recipientsForChat:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v3 = [v28 participants];
  v4 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v30 + 1) + 8 * i) address];
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v10 = getIMStringIsPhoneNumberSymbolLoc_ptr;
        v42 = getIMStringIsPhoneNumberSymbolLoc_ptr;
        if (!getIMStringIsPhoneNumberSymbolLoc_ptr)
        {
          v34 = MEMORY[0x1E69E9820];
          v35 = 3221225472;
          v36 = __getIMStringIsPhoneNumberSymbolLoc_block_invoke;
          v37 = &unk_1E7C23BF0;
          v38 = &v39;
          v11 = IMFoundationLibrary();
          v12 = dlsym(v11, "IMStringIsPhoneNumber");
          *(v38[1] + 24) = v12;
          getIMStringIsPhoneNumberSymbolLoc_ptr = *(v38[1] + 24);
          v10 = v40[3];
        }

        _Block_object_dispose(&v39, 8);
        if (!v10)
        {
LABEL_24:
          [_PSBlockedHandlesCache beginSyncingWithTU];
          __break(1u);
        }

        v13 = v10(v9);

        if (v13)
        {
          v39 = 0;
          v40 = &v39;
          v41 = 0x2050000000;
          v14 = getCNPhoneNumberClass_softClass_2;
          v42 = getCNPhoneNumberClass_softClass_2;
          if (!getCNPhoneNumberClass_softClass_2)
          {
            v34 = MEMORY[0x1E69E9820];
            v35 = 3221225472;
            v36 = __getCNPhoneNumberClass_block_invoke_2;
            v37 = &unk_1E7C23BF0;
            v38 = &v39;
            ContactsLibraryCore_6();
            Class = objc_getClass("CNPhoneNumber");
            *(v38[1] + 24) = Class;
            getCNPhoneNumberClass_softClass_2 = *(v38[1] + 24);
            v14 = v40[3];
          }

          v16 = v14;
          _Block_object_dispose(&v39, 8);
          v17 = [v14 phoneNumberWithStringValue:v9];
          v18 = [v17 unformattedInternationalStringValue];

          v5 = v18;
          goto LABEL_18;
        }

        v19 = v9;
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v20 = getIMStringIsEmailSymbolLoc_ptr;
        v42 = getIMStringIsEmailSymbolLoc_ptr;
        if (!getIMStringIsEmailSymbolLoc_ptr)
        {
          v34 = MEMORY[0x1E69E9820];
          v35 = 3221225472;
          v36 = __getIMStringIsEmailSymbolLoc_block_invoke;
          v37 = &unk_1E7C23BF0;
          v38 = &v39;
          v21 = IMFoundationLibrary();
          v22 = dlsym(v21, "IMStringIsEmail");
          *(v38[1] + 24) = v22;
          getIMStringIsEmailSymbolLoc_ptr = *(v38[1] + 24);
          v20 = v40[3];
        }

        _Block_object_dispose(&v39, 8);
        if (!v20)
        {
          goto LABEL_24;
        }

        v23 = v20(v19);

        if (v23)
        {
          v24 = v19;
          v17 = v5;
          v5 = v24;
LABEL_18:
        }

        v25 = [[_PSRecipient alloc] initWithIdentifier:0 handle:v5 contact:0];
        [v4 addObject:v25];
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v6);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)contactKeysToFetch
{
  if (contactKeysToFetch_onceToken != -1)
  {
    [_PSKNNModel contactKeysToFetch];
  }

  v3 = contactKeysToFetch_contactKeysToFetch;

  return v3;
}

- (id)filterSuggestionsFrom:(id)a3 byFilteringOutSeedRecipients:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [(_PSKNNModel *)self indexesOfObjectsWithKey:@"chatGuid" withValues:v6 inArray:v7];
  [v7 removeObjectsAtIndexes:v8];
  v9 = [(_PSKNNModel *)self indexesOfObjectsWithKey:@"contactIdentifier" withValues:v6 inArray:v7];

  [v7 removeObjectsAtIndexes:v9];
  v10 = [(_PSKNNModel *)self indexesOfObjectsWithKey:@"handle" withValues:v6 inArray:v7];

  [v7 removeObjectsAtIndexes:v10];

  return v7;
}

- (id)indexesOfObjectsWithKey:(id)a3 withValues:(id)a4 inArray:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && [v8 count])
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN[c] %@", v7, v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58___PSKNNModel_indexesOfObjectsWithKey_withValues_inArray___block_invoke;
    v14[3] = &unk_1E7C26460;
    v15 = v10;
    v11 = v10;
    v12 = [v9 indexesOfObjectsPassingTest:v14];
  }

  else
  {
    v12 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v12;
}

- (id)rankedZkwSuggestionsWithPredictionContext:(id)a3 modelConfiguration:(id)a4 maxSuggestions:(unint64_t)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 bundleID];
  if (v10)
  {
    v11 = +[_PSConstants mobileMessagesBundleId];
    if ([v10 isEqualToString:v11])
    {
      v12 = 1;
    }

    else
    {
      v14 = +[_PSConstants macMessagesBundleId];
      v12 = [v10 isEqualToString:v14];
    }

    v15 = +[_PSConstants mobileFacetimeBundleId];
    if ([v10 isEqualToString:v15])
    {
      v16 = 1;
    }

    else
    {
      v17 = +[_PSConstants macFacetimeBundleId];
      v16 = [v10 isEqualToString:v17];
    }

    if (_os_feature_enabled_impl() && ([v8 seedRecipients], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19))
    {
      v20 = [(_PSKNNModel *)self rankedCoRecipientSuggestionsWithPredictionContext:v8 modelConfiguration:v9 maxSuggestions:a5];
    }

    else
    {
      v57 = v10;
      v20 = [MEMORY[0x1E695DF70] array];
      if ((v12 | v16))
      {
        if ([(_PSKNNModel *)self _PSInteractionModelInUse])
        {
          v21 = a5;
          v22 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_INFO, "Using interaction model instead of kNN", buf, 2u);
          }

          v23 = [_PSInteractionPredictor alloc];
          v24 = [(_PSKNNModel *)self interactionStore];
          v25 = [v8 suggestionDate];
          v26 = [(_PSInteractionPredictor *)v23 initWithInteractionStore:v24 atDate:v25 withModelName:@"interactionPrediction" modelConfiguration:v9];

          v27 = [v8 suggestionDate];
          v28 = [_PSInteractionPredictor getModelURLfromName:@"interactionPrediction"];
          v29 = [(_PSInteractionPredictor *)v26 predictAtDate:v27 usingModelAtURL:v28 showNumSuggestions:v21];

          a5 = v21;
          v30 = [(_PSInteractionPredictor *)v26 rankedZkwSuggestionsFromPredictionArray:v29 forBundleID:v57];
          [v20 addObjectsFromArray:v30];

          v10 = v57;
        }

        else
        {
          v55 = v9;
          v52 = [(_PSKNNModel *)self _PSKnnMessagesZkwTopNFilter];
          v31 = [(_PSKNNModel *)self messageInteractionCache];
          v56 = v8;
          v54 = a5;
          v32 = [(_PSKNNModel *)self _rankedZkwSuggestionsWithPredictionContext:v8 bundleId:v10 maxSuggestions:a5 frequencyOnly:0 interactions:0 interactionCache:v31];
          v33 = MEMORY[0x1E695DFD8];
          v34 = [(_PSKNNModel *)self interactionStore];
          v53 = v31;
          v35 = [v31 interactions];
          v36 = [_PSInteractionStoreUtils interactionsMostRecentForBundleId:v10 store:v34 resultLimit:v52 interactions:v35];
          v37 = [v33 setWithArray:v36];

          v38 = [MEMORY[0x1E695DF70] array];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v39 = v32;
          v40 = [v39 countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v60;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v60 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v59 + 1) + 8 * i);
                v45 = [v44 conversationIdentifier];
                v46 = [v37 containsObject:v45];

                if (v46)
                {
                  v47 = v38;
                }

                else
                {
                  v47 = v20;
                }

                [v47 addObject:v44];
              }

              v41 = [v39 countByEnumeratingWithState:&v59 objects:v63 count:16];
            }

            while (v41);
          }

          [v20 addObjectsFromArray:v38];
          v9 = v55;
          v8 = v56;
          v10 = v57;
          a5 = v54;
        }
      }
    }

    v48 = [v20 count];
    if (v48 >= a5)
    {
      v49 = a5;
    }

    else
    {
      v49 = v48;
    }

    v13 = [v20 subarrayWithRange:{0, v49}];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v50 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)rankedCoRecipientSuggestionsWithPredictionContext:(id)a3 modelConfiguration:(id)a4 maxSuggestions:(unint64_t)a5
{
  v153 = *MEMORY[0x1E69E9840];
  v89 = a3;
  v81 = a4;
  v85 = [MEMORY[0x1E695DF70] array];
  v6 = [v89 suggestionDate];
  v82 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v6 bundleId:0];

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v128 = 0;
  v129 = &v128;
  v130 = 0x2020000000;
  v131 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = 0;
  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = 0;
  v9 = [v89 seedRecipients];
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __99___PSKNNModel_rankedCoRecipientSuggestionsWithPredictionContext_modelConfiguration_maxSuggestions___block_invoke;
  v114[3] = &unk_1E7C26488;
  v117 = &v128;
  v118 = &v120;
  v119 = &v124;
  v10 = v7;
  v115 = v10;
  v83 = v8;
  v116 = v83;
  [v9 enumerateObjectsUsingBlock:v114];

  v11 = objc_opt_new();
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v110 objects:v152 count:16];
  if (v12)
  {
    v87 = *v111;
    do
    {
      v90 = v12;
      for (i = 0; i != v90; i = i + 1)
      {
        if (*v111 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v110 + 1) + 8 * i);
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v15 = [v14 emailAddresses];
        v16 = [v15 countByEnumeratingWithState:&v106 objects:v151 count:16];
        if (v16)
        {
          v17 = *v107;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v107 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = MEMORY[0x1E69978B0];
              v20 = [*(*(&v106 + 1) + 8 * j) value];
              v21 = [v19 normalizedStringFromContactString:v20];
              [v11 addObject:v21];
            }

            v16 = [v15 countByEnumeratingWithState:&v106 objects:v151 count:16];
          }

          while (v16);
        }

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v22 = [v14 phoneNumbers];
        v23 = [v22 countByEnumeratingWithState:&v102 objects:v150 count:16];
        if (v23)
        {
          v24 = *v103;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v103 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = [*(*(&v102 + 1) + 8 * k) value];
              v27 = MEMORY[0x1E69978B0];
              v28 = [v26 stringValue];
              v29 = [v27 normalizedStringFromContactString:v28];
              [v11 addObject:v29];
            }

            v23 = [v22 countByEnumeratingWithState:&v102 objects:v150 count:16];
          }

          while (v23);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v110 objects:v152 count:16];
    }

    while (v12);
  }

  v30 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:v11];
  v80 = [v30 arrayByAddingObjectsFromArray:v83];

  v31 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v89 seedRecipients];
    v33 = [v32 count];
    v34 = v129[3];
    v35 = v125[3];
    v36 = v121[3];
    v37 = [obj count];
    v38 = [v11 count];
    v39 = [v83 count];
    *buf = 134219520;
    v137 = v33;
    v138 = 2048;
    v139 = v34;
    v140 = 2048;
    v141 = v35;
    v142 = 2048;
    v143 = v36;
    v144 = 2048;
    v145 = v37;
    v146 = 2048;
    v147 = v38;
    v148 = 2048;
    v149 = v39;
    _os_log_impl(&dword_1B5ED1000, v31, OS_LOG_TYPE_DEFAULT, "Knn - co-recipient algorithm has %tu recipients (%tu email, %tu phone, %tu unknown) --> %tu contacts (%tu handles), %tu unmatched", buf, 0x48u);
  }

  v40 = [v89 accountIdentifier];
  v41 = [v89 bundleID];
  v135 = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
  v43 = [(_PSKNNModel *)self interactionStore];
  v88 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:v80 account:v40 directions:&unk_1F2D8C498 mechanisms:0 bundleIds:v42 store:v43 fetchLimit:2000];

  v44 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = objc_opt_new();
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v46 = v88;
    v47 = [v46 countByEnumeratingWithState:&v98 objects:v134 count:16];
    if (v47)
    {
      v48 = *v99;
      do
      {
        for (m = 0; m != v47; ++m)
        {
          if (*v99 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = [*(*(&v98 + 1) + 8 * m) bundleId];
          [v45 addObject:v50];
        }

        v47 = [v46 countByEnumeratingWithState:&v98 objects:v134 count:16];
      }

      while (v47);
    }

    v51 = [v45 allObjects];
    v52 = objc_alloc(MEMORY[0x1E695DF20]);
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __99___PSKNNModel_rankedCoRecipientSuggestionsWithPredictionContext_modelConfiguration_maxSuggestions___block_invoke_224;
    v96[3] = &unk_1E7C264B0;
    v53 = v45;
    v97 = v53;
    v54 = [v51 _pas_mappedArrayWithTransform:v96];
    v55 = [v52 initWithObjects:v54 forKeys:v51];

    *buf = 138477827;
    v137 = v55;
    _os_log_impl(&dword_1B5ED1000, v44, OS_LOG_TYPE_DEFAULT, "Knn - co-recipient alogrithm considering interactions from bundle IDs: %{private}@", buf, 0xCu);
  }

  v79 = [(_PSKNNModel *)self featuresFromInteractionsSplitRecipients:v88];
  v56 = [v89 suggestionDate];
  v57 = [v88 firstObject];
  v58 = [v57 startDate];
  [v56 timeIntervalSinceDate:v58];
  v60 = v59;

  v61 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = @"NO";
    if (v60 > 21600.0)
    {
      v62 = @"YES";
    }

    *buf = 138543362;
    v137 = v62;
    _os_log_impl(&dword_1B5ED1000, v61, OS_LOG_TYPE_DEFAULT, "Knn - co-recipient frequency-only? %{public}@", buf, 0xCu);
  }

  v63 = [(_PSKNNModel *)self interactionLabelsForQueryResult:v79 queryPoint:v82 rankerType:2 frequencyOnly:v60 > 21600.0 contactsOnly:0];
  v64 = [MEMORY[0x1E695DFA8] set];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v91 = v63;
  v65 = [v91 countByEnumeratingWithState:&v92 objects:v133 count:16];
  if (v65)
  {
    v66 = *v93;
    do
    {
      for (n = 0; n != v65; ++n)
      {
        if (*v93 != v66)
        {
          objc_enumerationMutation(v91);
        }

        v68 = [*(*(&v92 + 1) + 8 * n) objectForKeyedSubscript:@"key"];
        v69 = [v68 objectForKeyedSubscript:@"conversationId"];

        if (v69)
        {
          if (([v64 containsObject:v69] & 1) == 0)
          {
            v70 = [v89 seedRecipients];
            v71 = [v70 containsObject:v69];

            if ((v71 & 1) == 0)
            {
              v72 = [[_PSRecipient alloc] initWithIdentifier:v69 handle:v69 displayName:0 contact:0];
              v73 = [_PSSuggestion alloc];
              v74 = [v89 bundleID];
              v132 = v72;
              v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
              v76 = [(_PSSuggestion *)v73 initWithBundleID:v74 conversationIdentifier:v69 groupName:0 recipients:v75];

              if (v76)
              {
                [v85 addObject:v76];
              }

              [v64 addObject:v69];
            }
          }
        }
      }

      v65 = [v91 countByEnumeratingWithState:&v92 objects:v133 count:16];
    }

    while (v65);
  }

  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(&v128, 8);

  v77 = *MEMORY[0x1E69E9840];

  return v85;
}

- (id)rankedNameSuggestionsWithPredictionContext:(id)a3 forName:(id)a4 contactsOnly:(BOOL)a5
{
  v5 = a5;
  v125 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && [v8 length])
  {
    v93 = v5;
    v79 = v9;
    v72 = v7;
    v10 = [(_PSKNNModel *)self messageInteractionCache];
    v11 = [v10 interactions];

    v12 = [MEMORY[0x1E695DF70] array];
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v116;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v116 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v115 + 1) + 8 * i);
          v18 = [v17 recipients];
          v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"displayName CONTAINS[cd] %@", v79];
          v20 = [v18 filteredArrayUsingPredicate:v19];

          if ([v20 count])
          {
            [v12 addObject:v17];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
      }

      while (v14);
    }

    v21 = v12;
    v22 = v21;
    if (![v21 count])
    {
      v23 = [(_PSKNNModel *)self interactionStore];
      v22 = [_PSInteractionStoreUtils interactionsContainingSearchStringInDisplayName:v79 account:0 directions:&unk_1F2D8C4B0 bundleIds:0 store:v23 fetchLimit:1000];
    }

    v70 = v22;
    v71 = v21;
    v24 = [(_PSKNNModel *)self rankedGlobalSuggestionsWithPredictionContext:v72 maxSuggestions:2000 contactsOnly:v93 interactions:v22 contactIdIsInStoreBlock:0];
    v92 = [v24 mutableCopy];
    v94 = [MEMORY[0x1E695DF70] array];
    v25 = [MEMORY[0x1E695DF70] array];
    v26 = [(_PSKNNModel *)self normalizedStringFromString:v79];
    v76 = [v26 componentsSeparatedByString:@" "];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v74 = v24;
    v27 = [v74 countByEnumeratingWithState:&v111 objects:v123 count:16];
    if (v27)
    {
      v28 = v27;
      v88 = *v112;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v112 != v88)
          {
            objc_enumerationMutation(v74);
          }

          v30 = *(*(&v111 + 1) + 8 * j);
          v31 = objc_autoreleasePoolPush();
          v32 = [v30 recipients];
          v33 = [v32 firstObject];
          v34 = [v33 displayName];

          if (v34)
          {
            v35 = [(_PSKNNModel *)self normalizedStringFromString:v34];
            if ([v35 isEqualToString:v26])
            {
              v36 = [v30 conversationIdentifier];
              v37 = [v25 containsObject:v36];

              if ((v37 & 1) == 0)
              {
                [v94 addObject:v30];
                v38 = [v30 conversationIdentifier];
                [v25 addObject:v38];

                [v92 removeObject:v30];
              }
            }
          }

          objc_autoreleasePoolPop(v31);
        }

        v28 = [v74 countByEnumeratingWithState:&v111 objects:v123 count:16];
      }

      while (v28);
    }

    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v73 = [v92 mutableCopy];
    v80 = [v73 countByEnumeratingWithState:&v107 objects:v122 count:16];
    if (v80)
    {
      v77 = *v108;
      do
      {
        for (k = 0; k != v80; ++k)
        {
          if (*v108 != v77)
          {
            objc_enumerationMutation(v73);
          }

          v40 = *(*(&v107 + 1) + 8 * k);
          v41 = objc_autoreleasePoolPush();
          v42 = [v40 recipients];
          v43 = [v42 firstObject];
          v44 = [v43 displayName];

          if (v44)
          {
            v86 = v41;
            v89 = k;
            v84 = v44;
            v82 = [(_PSKNNModel *)self normalizedStringFromString:v44];
            v45 = [v82 componentsSeparatedByString:@" "];
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            v46 = v76;
            v47 = [v46 countByEnumeratingWithState:&v103 objects:v121 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v104;
              do
              {
                for (m = 0; m != v48; ++m)
                {
                  if (*v104 != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  if ([v45 containsObject:*(*(&v103 + 1) + 8 * m)])
                  {
                    v51 = [v40 conversationIdentifier];
                    v52 = [v25 containsObject:v51];

                    if ((v52 & 1) == 0)
                    {
                      [v94 addObject:v40];
                      v53 = [v40 conversationIdentifier];
                      [v25 addObject:v53];

                      [v92 removeObject:v40];
                    }
                  }
                }

                v48 = [v46 countByEnumeratingWithState:&v103 objects:v121 count:16];
              }

              while (v48);
            }

            v41 = v86;
            k = v89;
            v44 = v84;
          }

          objc_autoreleasePoolPop(v41);
        }

        v80 = [v73 countByEnumeratingWithState:&v107 objects:v122 count:16];
      }

      while (v80);
    }

    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v78 = [v92 mutableCopy];
    v83 = [v78 countByEnumeratingWithState:&v99 objects:v120 count:16];
    if (v83)
    {
      v81 = *v100;
      do
      {
        for (n = 0; n != v83; ++n)
        {
          if (*v100 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v55 = *(*(&v99 + 1) + 8 * n);
          v56 = objc_autoreleasePoolPush();
          v57 = [v55 recipients];
          v58 = [v57 firstObject];
          v59 = [v58 displayName];

          if (v59)
          {
            v87 = v59;
            v90 = v56;
            v85 = [(_PSKNNModel *)self normalizedStringFromString:v59];
            v60 = [v85 componentsSeparatedByString:@" "];
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v61 = [v60 countByEnumeratingWithState:&v95 objects:v119 count:16];
            if (v61)
            {
              v62 = v61;
              v63 = *v96;
              do
              {
                for (ii = 0; ii != v62; ++ii)
                {
                  if (*v96 != v63)
                  {
                    objc_enumerationMutation(v60);
                  }

                  if ([*(*(&v95 + 1) + 8 * ii) hasPrefix:v26])
                  {
                    v65 = [v55 conversationIdentifier];
                    v66 = [v25 containsObject:v65];

                    if ((v66 & 1) == 0)
                    {
                      [v94 addObject:v55];
                      v67 = [v55 conversationIdentifier];
                      [v25 addObject:v67];

                      [v92 removeObject:v55];
                    }
                  }
                }

                v62 = [v60 countByEnumeratingWithState:&v95 objects:v119 count:16];
              }

              while (v62);
            }

            v59 = v87;
            v56 = v90;
          }

          objc_autoreleasePoolPop(v56);
        }

        v83 = [v78 countByEnumeratingWithState:&v99 objects:v120 count:16];
      }

      while (v83);
    }

    v7 = v72;
    v9 = v79;
  }

  else
  {
    v94 = MEMORY[0x1E695E0F0];
  }

  v68 = *MEMORY[0x1E69E9840];

  return v94;
}

- (id)rankedGlobalSuggestionsForSiriNLWithPredictionContext:(id)a3 maxSuggestions:(unint64_t)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 suggestionDate];
  v49 = self;
  v7 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v6 bundleId:0];

  v8 = [v5 bundleID];

  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = [v5 bundleID];
    v57[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    v12 = [v9 setWithArray:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(_PSKNNModel *)v49 interactionStore];
  v14 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C4C8];
  v46 = v5;
  v15 = [v5 accountIdentifier];
  v16 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C4E0];
  v43 = v12;
  v17 = [_PSInteractionStoreUtils interactionsFromStore:v13 referenceDate:0 withMechanisms:v14 withAccount:v15 withBundleIds:v12 withTargetBundleIds:0 withDirections:v16 fetchLimit:5000];

  v42 = v17;
  v41 = [(_PSKNNModel *)v49 featuresFromInteractionsSplitRecipients:v17];
  v45 = v7;
  v18 = [_PSKNNModel interactionLabelsForQueryResult:v49 queryPoint:"interactionLabelsForQueryResult:queryPoint:rankerType:frequencyOnly:contactsOnly:" rankerType:? frequencyOnly:? contactsOnly:?];
  v47 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DFA8] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v18;
  v20 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = @"key";
    v23 = *v53;
    v48 = *v53;
    do
    {
      v24 = 0;
      v50 = v21;
      do
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v52 + 1) + 8 * v24);
        v26 = [v25 objectForKeyedSubscript:v22];
        v27 = [v26 objectForKeyedSubscript:@"conversationId"];
        if (([v19 containsObject:v27] & 1) == 0)
        {
          v28 = v19;
          v29 = v22;
          v30 = [_PSSuggestion alloc];
          v31 = [v26 objectForKeyedSubscript:@"recipients"];
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = [v25 objectForKeyedSubscript:@"score"];
          v35 = [(_PSSuggestion *)v30 initWithBundleID:0 conversationIdentifier:v27 groupName:0 recipients:v31 reason:@"kNN model" reasonType:v33 score:v34];

          if (v35)
          {
            [v47 addObject:v35];
          }

          v19 = v28;
          [v28 addObject:v27];

          v22 = v29;
          v23 = v48;
          v21 = v50;
        }

        ++v24;
      }

      while (v21 != v24);
      v21 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v21);
  }

  v36 = [v47 count];
  if (v36 >= a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = v36;
  }

  v38 = [v47 subarrayWithRange:{0, v37}];

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)suggestionProxiesWithPredictionContext:(id)a3
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_PSKNNModel *)self featureVectorFromPredictionContext:v4];
  v6 = [(_PSKNNModel *)self shareInteractionCache];
  v7 = [v6 interactions];
  v8 = [(_PSKNNModel *)self _PSKnnModelMinimumOccurenceOfInteractionByMechanism];
  v111 = self;
  v9 = [(_PSKNNModel *)self filterShareInteractions:v7 minimumOccurencesByMechanism:v8 contextBundleId:0 filterOutNonMatchingSourceBundleIDs:0];

  v10 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    *buf = 138412290;
    v121 = v11;
    _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_INFO, "Knn - Number of sharesheet interactions = %@", buf, 0xCu);
  }

  v12 = [(_PSKNNModel *)v111 featuresFromInteractions:v9];
  v13 = [v12 objectAtIndex:0];
  v14 = [(_PSKNNModel *)v111 neighborsFromTrainingData:v13 k:[(_PSKNNModel *)v111 k] queryPoint:v5];

  v108 = [(_PSKNNModel *)v111 extractNearestNeighborLabelsForQueryResult:v12 andNeighbors:v14 frequencyOnly:0 rankerType:0 contactsOnly:0 reason:@"Previous Share"];
  v15 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_PSKNNModel suggestionProxiesWithPredictionContext:];
  }

  v16 = [(_PSKNNModel *)v111 messageInteractionCache];
  v17 = [v16 interactions];

  v18 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
    *buf = 138412290;
    v121 = v19;
    _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "Knn - Number of all interactions (sans Mail) = %@", buf, 0xCu);
  }

  v20 = [(_PSKNNModel *)v111 featuresFromInteractions:v17];

  v21 = [v20 objectAtIndex:0];
  v22 = [(_PSKNNModel *)v111 neighborsFromTrainingData:v21 k:[(_PSKNNModel *)v111 k] queryPoint:v5];

  v104 = v22;
  v105 = v20;
  v23 = [(_PSKNNModel *)v111 extractNearestNeighborLabelsForQueryResult:v20 andNeighbors:v22 frequencyOnly:0 rankerType:0 contactsOnly:0 reason:@"Message Interaction"];
  v24 = [v4 suggestionDate];
  v25 = [v4 bundleID];
  v26 = [(_PSKNNModel *)v111 splitShareLabels:v108 suggestionDate:v24 contextBundleId:v25];

  v27 = [v26 objectForKeyedSubscript:@"prioritizedShareLabels"];
  v102 = v26;
  v28 = [v26 objectForKeyedSubscript:@"otherShareLabels"];
  v29 = [(_PSKNNModel *)v111 sliceStart:0 end:[(_PSKNNModel *)v111 _PSKnnTopKShares] ofArray:v23];
  v106 = v17;
  v107 = v5;
  v103 = v23;
  if (v29)
  {
    v30 = v29;
    v31 = [(_PSKNNModel *)v111 _PSKnnTopKShares];
    v32 = [v23 count];
    v33 = v31;
    v34 = v30;
    v35 = [(_PSKNNModel *)v111 sliceStart:v33 end:v32 ofArray:v23];
  }

  else
  {
    v34 = v23;
    v35 = 0;
  }

  v110 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v101 = v27;
  v99 = v34;
  v36 = [(_PSKNNModel *)v111 mergedSuggestionsFromShares:v27 andInteractions:v34];
  v100 = v28;
  v98 = v35;
  v96 = [(_PSKNNModel *)v111 mergedSuggestionsFromShares:v28 andInteractions:v35];
  v97 = v36;
  [(_PSKNNModel *)v111 mergedSuggestionsFromShares:v36 andInteractions:?];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v118 = 0u;
  v114 = [obj countByEnumeratingWithState:&v115 objects:v119 count:16];
  if (v114)
  {
    v113 = *v116;
    v109 = v4;
    do
    {
      v37 = 0;
      do
      {
        if (*v116 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v115 + 1) + 8 * v37);
        v39 = [v38 objectForKeyedSubscript:@"bundleId"];
        v40 = [v4 suggestionDate];
        v41 = [v38 objectForKeyedSubscript:@"startDate"];
        [v40 timeIntervalSinceDate:v41];
        v43 = (v42 / 86400.0);

        v44 = [v4 bundleID];
        v45 = [v38 objectForKeyedSubscript:@"sourceBundleId"];
        v46 = [v44 isEqualToString:v45];

        v47 = [v38 objectForKeyedSubscript:@"sourceBundleId"];
        v48 = [v38 objectForKeyedSubscript:@"bundleId"];
        v49 = [v47 isEqualToString:v48];

        v50 = objc_alloc(MEMORY[0x1E696AEC0]);
        v51 = [v38 objectForKeyedSubscript:@"reason"];
        v52 = v51;
        if (v49)
        {
          v53 = [v50 initWithFormat:@"%@\n%@\nSent %d days ago", @"kNN Model", v51, v43, v95];
        }

        else
        {
          v54 = @"From a different bundle ID";
          if (v46)
          {
            v54 = @"From the same bundle ID";
          }

          v53 = [v50 initWithFormat:@"%@\n%@\nSent %d days ago\n%@", @"kNN Model", v51, v43, v54];
        }

        v55 = v53;

        v56 = [v4 peopleInPhotoIdentifiers];
        v57 = 0x1E7C23000;
        if (v56)
        {
          v58 = v56;
          v59 = [v4 peopleInPhotoIdentifiers];
          v60 = [v59 count];

          if (v60)
          {
            v61 = MEMORY[0x1E695DFA8];
            v62 = [v4 peopleInPhotoIdentifiers];
            v63 = [v61 setWithArray:v62];

            v64 = [v38 objectForKeyedSubscript:@"peopleInPhoto"];
            [v63 intersectSet:v64];
            v65 = [v63 allObjects];
            v66 = [v65 count];
            v67 = @"these people";
            if (v66 == 1)
            {
              v67 = @"this person";
            }

            v68 = MEMORY[0x1E696AEC0];
            v69 = v67;
            v70 = [v68 alloc];
            v71 = [v65 sortedArrayUsingComparator:&__block_literal_global_298_0];
            v72 = [v70 initWithFormat:@"%@\nPhotos containing %@ were sent to this conversation in previous shares\n\nDetected People:\n%@", v55, v69, v71];

            if ([v63 count])
            {
              v73 = v72;

              v55 = v73;
            }

            v57 = 0x1E7C23000uLL;

            v4 = v109;
          }
        }

        v74 = [*(v57 + 960) mobileMessagesBundleId];
        v75 = [v39 isEqualToString:v74];

        if (v75)
        {
          v76 = v38;
          v77 = @"conversationId";
LABEL_29:
          v78 = [v76 objectForKeyedSubscript:v77];
          if (!v39)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        v79 = [*(v57 + 960) mobileMailBundleId];
        v80 = [v39 isEqualToString:v79];

        if (v80)
        {
          v81 = MEMORY[0x1E69978D0];
          v82 = v38;
          v83 = @"mailRecipients";
        }

        else
        {
          v84 = [*(v57 + 960) sharePlayBundleId];
          v85 = [v39 isEqualToString:v84];

          if (!v85)
          {
            v91 = [v38 objectForKeyedSubscript:@"derivedIntentIdentifier"];

            v78 = 0;
            if (!v91 || !v39)
            {
              goto LABEL_38;
            }

            v76 = v38;
            v77 = @"derivedIntentIdentifier";
            goto LABEL_29;
          }

          v81 = MEMORY[0x1E69978D0];
          v82 = v38;
          v83 = @"expanseRecipients";
        }

        v86 = [v82 objectForKeyedSubscript:v83];
        v78 = [v81 generateConversationIdFromInteractionRecipients:v86];

        if (!v39)
        {
          goto LABEL_38;
        }

LABEL_36:
        if (v78)
        {
          v87 = [_PSSuggestionProxy alloc];
          v88 = objc_opt_class();
          v89 = NSStringFromClass(v88);
          v90 = [(_PSSuggestionProxy *)v87 initWithBundleID:v39 interactionRecipients:v78 contactID:0 reason:v55 reasonType:v89];

          [v110 addObject:v90];
        }

LABEL_38:

        ++v37;
      }

      while (v114 != v37);
      v92 = [obj countByEnumeratingWithState:&v115 objects:v119 count:16];
      v114 = v92;
    }

    while (v92);
  }

  v93 = *MEMORY[0x1E69E9840];

  return v110;
}

- (id)suggestionProxiesBasedOnNonSharingInteractionsWithPredictionContext:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 suggestionDate];
  v50 = v4;
  v6 = [v4 bundleID];
  v7 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v5 bundleId:v6];

  v8 = [(_PSKNNModel *)self messageInteractionCache];
  v9 = [v8 interactions];

  v10 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    *buf = 138412290;
    v58 = v11;
    _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_INFO, "Knn - Number of all interactions (sans Mail) = %@", buf, 0xCu);
  }

  v12 = [(_PSKNNModel *)self featuresFromInteractions:v9];
  v13 = [v12 objectAtIndex:0];
  v14 = [(_PSKNNModel *)self neighborsFromTrainingData:v13 k:[(_PSKNNModel *)self k] queryPoint:v7];

  v47 = v14;
  v48 = v12;
  v15 = [(_PSKNNModel *)self extractNearestNeighborLabelsForQueryResult:v12 andNeighbors:v14 frequencyOnly:0 rankerType:0 contactsOnly:0 reason:@"Message Interaction"];
  v16 = [(_PSKNNModel *)self sliceStart:0 end:[(_PSKNNModel *)self _PSKnnTopKShares] ofArray:v15];
  v49 = v9;
  v46 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = -[_PSKNNModel sliceStart:end:ofArray:](self, "sliceStart:end:ofArray:", -[_PSKNNModel _PSKnnTopKShares](self, "_PSKnnTopKShares"), [v15 count], v15);
  }

  else
  {
    v17 = v15;
    v18 = 0;
  }

  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = v18;
  v45 = v17;
  v19 = [(_PSKNNModel *)self mergedSuggestionsFromShares:v17 andInteractions:v18];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v53;
    do
    {
      v23 = 0;
      do
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v52 + 1) + 8 * v23);
        v25 = [v24 objectForKeyedSubscript:@"bundleId"];
        v26 = +[_PSConstants mobileMessagesBundleId];
        v27 = [v25 isEqualToString:v26];

        if (v27)
        {
          v28 = v24;
          v29 = @"conversationId";
LABEL_13:
          v30 = [v28 objectForKeyedSubscript:v29];
          goto LABEL_16;
        }

        v31 = +[_PSConstants mobileMailBundleId];
        v32 = [v25 isEqualToString:v31];

        if (!v32)
        {
          v40 = [v24 objectForKeyedSubscript:@"derivedIntentIdentifier"];

          v30 = 0;
          if (!v40 || !v25)
          {
            goto LABEL_21;
          }

          v28 = v24;
          v29 = @"derivedIntentIdentifier";
          goto LABEL_13;
        }

        v33 = MEMORY[0x1E69978D0];
        v34 = [v24 objectForKeyedSubscript:@"mailRecipients"];
        v30 = [v33 generateConversationIdFromInteractionRecipients:v34];

LABEL_16:
        if (v25)
        {
          v35 = v30 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (!v35)
        {
          v36 = [_PSSuggestionProxy alloc];
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = [(_PSSuggestionProxy *)v36 initWithBundleID:v25 interactionRecipients:v30 contactID:0 reason:@"kNN model" reasonType:v38];

          [v51 addObject:v39];
        }

LABEL_21:

        ++v23;
      }

      while (v21 != v23);
      v41 = [v19 countByEnumeratingWithState:&v52 objects:v56 count:16];
      v21 = v41;
    }

    while (v41);
  }

  v42 = *MEMORY[0x1E69E9840];

  return v51;
}

- (id)messagesGroupsMatchingSearchPrefix:(id)a3 inInteractions:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = 0x1E7C23000uLL;
  v30 = +[_PSAutocompleteSearchUtilities emojiCharacterSet];
  v32 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 groupName];
        if (!v13)
        {
          goto LABEL_15;
        }

        if (!v5)
        {
          goto LABEL_16;
        }

        v14 = *(v7 + 768);
        v15 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v16 = [v14 rangeForSearchTerm:v5 inTarget:v13 tokenizedByCharacterSet:v15];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }

        v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v18 = [v17 mutableCopy];

        [v18 formUnionWithCharacterSet:v30];
        v19 = [*(v7 + 768) rangeForSearchTerm:v5 inTarget:v13 tokenizedByCharacterSet:v18];

        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }

        v20 = *(v7 + 768);
        v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        [v5 stringByTrimmingCharactersInSet:v21];
        v23 = v22 = v7;
        LODWORD(v20) = [v20 searchString:v23 containsOnlyCharactersInSet:v30];

        v7 = v22;
        if (!v20 || [v13 rangeOfString:v5 options:385] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = [v12 recipients];
          v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"displayName BEGINSWITH[cd] %@", v5];
          v26 = [v24 filteredArrayUsingPredicate:v25];

          if ([v26 count])
          {
            [v32 addObject:v12];
          }

          v7 = v22;
        }

        else
        {
LABEL_15:
          [v32 addObject:v12];
        }

LABEL_16:
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  v27 = [v32 copy];
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)softmaxAppliedOnScoresForInputDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 allValues];
  v5 = [v4 valueForKeyPath:@"@max.floatValue"];
  [v5 floatValue];
  v7 = v6;

  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v34 + 1) + 8 * i) floatValue];
        v16 = exp((v15 - v7));
        v13 = v13 + v16;
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [v3 allKeys];
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        v23 = [v3 objectForKeyedSubscript:v22];
        [v23 floatValue];
        v25 = exp((v24 - v7));

        *&v26 = v25 / v13;
        v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
        [v8 setObject:v27 forKeyedSubscript:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v19);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)normalizedScoresForInputDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 allValues];
  v5 = [v4 valueForKeyPath:@"@max.floatValue"];
  [v5 floatValue];
  v7 = v6;

  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v3 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v3 objectForKeyedSubscript:v14];
        [v15 floatValue];
        v17 = v16;

        *&v18 = v17 / v7;
        if (v7 <= 0.0)
        {
          *&v18 = v17;
        }

        v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
        [v8 setObject:v19 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)splitShareLabels:(id)a3 suggestionDate:(id)a4 contextBundleId:(id)a5
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v81 = a4;
  v79 = a5;
  v77 = [MEMORY[0x1E695DF70] array];
  v76 = [MEMORY[0x1E695DF70] array];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v8;
  v80 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
  if (v80)
  {
    v78 = *v83;
    v9 = 0x1E7C23000uLL;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v83 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v82 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 objectForKeyedSubscript:@"bundleId"];
        v14 = [v11 objectForKeyedSubscript:@"sourceBundleId"];
        if ([v14 isEqualToString:v79])
        {
          v15 = [(_PSKNNModel *)self _PSKnnModelRecencyMarginToPromoteSharesMatchingBundleId];
        }

        else
        {
          v15 = [(_PSKNNModel *)self _PSKnnModelRecencyMarginToPromoteShares];
        }

        v16 = v15;
        v17 = [*(v9 + 960) mobileMessagesBundleId];
        v18 = [v13 isEqualToString:v17];

        if (v18)
        {
          v19 = [v11 objectForKeyedSubscript:@"conversationId"];
          v20 = [v11 objectForKeyedSubscript:@"startDate"];
          [v81 timeIntervalSinceDate:v20];
          v22 = v21;
          v23 = v16;

          if (v22 < v16)
          {
            v24 = [v77 count];
            if (v24 >= [(_PSKNNModel *)self _PSKnnTopKShares])
            {
              v25 = v76;
            }

            else
            {
              v25 = v77;
            }

            [v25 addObject:v11];
            goto LABEL_36;
          }

          v34 = [(_PSKNNModel *)self messageInteractionCache];
          v35 = [v34 mostRecentInteractionForCandidateIdentifier:v19];

          v36 = [v35 startDate];
          [v81 timeIntervalSinceDate:v36];
          v38 = v37;

          if (v38 >= v23)
          {
            v61 = [v35 startDate];
            [v81 timeIntervalSinceDate:v61];
            v63 = v62;
            v64 = [(_PSKNNModel *)self _PSKnnModelRecencyMarginToRetainShares];

            v40 = v76;
            if (v63 < v64)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v39 = [v77 count];
            if (v39 >= [(_PSKNNModel *)self _PSKnnTopKShares])
            {
              v40 = v76;
            }

            else
            {
              v40 = v77;
            }

LABEL_34:
            [v40 addObject:v11];
          }

LABEL_36:
          goto LABEL_44;
        }

        v26 = [*(v9 + 960) mobileMailBundleId];
        v27 = [v13 isEqualToString:v26];

        if (v27)
        {
          v28 = [v11 objectForKeyedSubscript:@"startDate"];
          [v81 timeIntervalSinceDate:v28];
          v30 = v29;

          if (v30 >= v16)
          {
            v57 = [v11 objectForKeyedSubscript:@"startDate"];
            [v81 timeIntervalSinceDate:v57];
            v59 = v58;
            v60 = [(_PSKNNModel *)self _PSKnnModelRecencyMarginToRetainShares];
            goto LABEL_41;
          }

          v31 = v77;
          v32 = [v77 count];
          v33 = [(_PSKNNModel *)self _PSKnnTopKShares];
        }

        else
        {
          v41 = [v11 objectForKeyedSubscript:@"derivedIntentIdentifier"];
          if (v41)
          {
            v42 = v41;
            v43 = [v11 objectForKeyedSubscript:@"bundleId"];

            if (v43)
            {
              v44 = [v11 objectForKeyedSubscript:@"derivedIntentIdentifier"];
              v45 = [(_PSKNNModel *)self messageInteractionCache];
              v74 = v44;
              v46 = [v45 mostRecentInteractionForCandidateIdentifier:v44];

              v47 = [v46 startDate];
              [v81 timeIntervalSinceDate:v47];
              v49 = v48;

              if (v49 >= v16)
              {
                v65 = [v46 startDate];
                [v81 timeIntervalSinceDate:v65];
                v67 = v66;
                v68 = [(_PSKNNModel *)self _PSKnnModelRecencyMarginToRetainShares];

                v50 = v76;
                if (v67 < v68)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v50 = v77;
                v51 = [v77 count];
                if (v51 >= [(_PSKNNModel *)self _PSKnnTopKShares])
                {
                  goto LABEL_39;
                }

LABEL_38:
                [v50 addObject:v11];
              }

LABEL_39:

              goto LABEL_44;
            }
          }

          v52 = [v11 objectForKeyedSubscript:@"expanseRecipients"];

          if (!v52)
          {
            goto LABEL_44;
          }

          v53 = [v11 objectForKeyedSubscript:@"startDate"];
          [v81 timeIntervalSinceDate:v53];
          v55 = v54;

          if (v55 >= v16)
          {
            v57 = [v11 objectForKeyedSubscript:@"startDate"];
            [v81 timeIntervalSinceDate:v57];
            v59 = v69;
            v60 = [(_PSKNNModel *)self _PSKnnModelRecencyMarginToRetainGroupActivities];
LABEL_41:
            v70 = v60;

            if (v59 >= v70)
            {
              goto LABEL_44;
            }

LABEL_42:
            v56 = v76;
            goto LABEL_43;
          }

          v31 = v77;
          v32 = [v77 count];
          v33 = [(_PSKNNModel *)self _PSKnnTopKGroupActivities];
        }

        if (v32 >= v33)
        {
          goto LABEL_42;
        }

        v56 = v31;
LABEL_43:
        [v56 addObject:v11];
LABEL_44:

        objc_autoreleasePoolPop(v12);
        v9 = 0x1E7C23000;
      }

      v80 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
    }

    while (v80);
  }

  v86[0] = @"prioritizedShareLabels";
  v86[1] = @"otherShareLabels";
  v87[0] = v77;
  v87[1] = v76;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2];

  v72 = *MEMORY[0x1E69E9840];

  return v71;
}

- (id)filterShareInteractions:(id)a3 minimumOccurencesByMechanism:(id)a4 contextBundleId:(id)a5 filterOutNonMatchingSourceBundleIDs:(BOOL)a6
{
  v56 = a6;
  v74 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v61 = a4;
  v55 = a5;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v53 = v8;
  obj = [v8 reverseObjectEnumerator];
  v10 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
  v54 = v9;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v11 = v10;
  v12 = 0;
  v59 = *v67;
  v13 = 0x1E7C23000uLL;
  do
  {
    v14 = 0;
    do
    {
      if (*v67 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v66 + 1) + 8 * v14);
      v16 = [v15 targetBundleId];
      v17 = [*(v13 + 960) shareSheetTargetBundleIdMessages];
      v18 = [v16 isEqualToString:v17];

      if (v18)
      {
        v19 = [v15 domainIdentifier];
        goto LABEL_13;
      }

      v20 = [v15 targetBundleId];
      v21 = [*(v13 + 960) shareSheetTargetBundleIdMail];
      if ([v20 isEqualToString:v21])
      {

LABEL_11:
        v25 = MEMORY[0x1E69978D0];
        v26 = [v15 recipients];
        v19 = [v25 generateConversationIdFromInteractionRecipients:v26];

LABEL_12:
        v12 = v26;
        v13 = 0x1E7C23000;
LABEL_13:

        v12 = v19;
        if (!v19)
        {
          goto LABEL_15;
        }

LABEL_14:
        v27 = MEMORY[0x1E696AD98];
        v28 = [v9 objectForKeyedSubscript:v12];
        v29 = [v28 objectForKeyedSubscript:@"count"];
        v30 = [v27 numberWithInteger:{objc_msgSend(v29, "integerValue") + 1}];

        v71[0] = @"interaction";
        v71[1] = @"count";
        v72[0] = v15;
        v72[1] = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
        [v9 setObject:v31 forKeyedSubscript:v12];

        goto LABEL_15;
      }

      v22 = [v15 targetBundleId];
      v23 = [*(v13 + 960) sharePlayBundleId];
      v24 = [v22 isEqualToString:v23];

      v9 = v54;
      if (v24)
      {
        goto LABEL_11;
      }

      v32 = [v15 derivedIntentIdentifier];

      if (v32)
      {
        v26 = [v15 targetBundleId];
        v33 = [v15 derivedIntentIdentifier];
        v19 = _PSSuggestionKey(v26, v33);

        goto LABEL_12;
      }

      v13 = 0x1E7C23000;
      if (v12)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v14;
    }

    while (v11 != v14);
    v34 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    v11 = v34;
  }

  while (v34);
LABEL_24:

  obja = [MEMORY[0x1E695DF70] array];
  [v9 allValues];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v60 = v65 = 0u;
  v35 = [v60 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v63;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v63 != v37)
        {
          objc_enumerationMutation(v60);
        }

        v39 = *(*(&v62 + 1) + 8 * i);
        v40 = [v39 objectForKeyedSubscript:@"interaction"];
        v41 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v40, "mechanism")}];
        v42 = [v39 objectForKeyedSubscript:@"count"];
        v43 = [v42 integerValue];

        v44 = [v61 objectForKeyedSubscript:v41];
        v45 = [v44 integerValue];

        if (v43 >= v45)
        {
          v46 = [v39 objectForKeyedSubscript:@"interaction"];
          v47 = v46;
          if (v56)
          {
            v48 = [v46 bundleId];
            v49 = [v48 isEqualToString:v55];

            if (v49)
            {
              v50 = [v39 objectForKeyedSubscript:@"interaction"];
              [obja addObject:v50];
            }
          }

          else
          {
            [obja addObject:v46];
          }
        }
      }

      v36 = [v60 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v36);
  }

  v51 = *MEMORY[0x1E69E9840];

  return obja;
}

- (id)targetBundleIdsForFilterBundlesIds:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = +[_PSConstants mobileMessagesBundleId];
  v6 = [v3 containsObject:v5];

  if (v6)
  {
    v7 = +[_PSConstants mobileMessagesBundleId];
    [v4 removeObject:v7];

    v8 = +[_PSConstants shareSheetTargetBundleIdMessages];
    [v4 addObject:v8];
  }

  v9 = +[_PSConstants mobileMailBundleId];
  v10 = [v3 containsObject:v9];

  if (v10)
  {
    v11 = +[_PSConstants mobileMailBundleId];
    [v4 removeObject:v11];

    v12 = +[_PSConstants shareSheetTargetBundleIdMail];
    [v4 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DFD8] setWithArray:v4];

  return v13;
}

- (id)_featureVectorFromSuggestionDate:(id)a3 bundleID:(id)a4 peopleInPhotoIdentifiers:(id)a5 sceneTagsInPhotoIdentifiers:(id)a6
{
  v29[4] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v28 = v9;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = [MEMORY[0x1E695DF00] distantFuture];
  }

  v14 = v13;
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = &stru_1F2D6CE98;
  }

  v16 = MEMORY[0x1E695E0F0];
  if (v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  if (v12)
  {
    v16 = v12;
  }

  v18 = MEMORY[0x1E696AD98];
  v19 = v16;
  v20 = v17;
  v21 = v15;
  [v14 timeIntervalSinceReferenceDate];
  v22 = [v18 numberWithDouble:?];
  v29[0] = v22;
  v29[1] = v21;
  v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v20];
  v29[2] = v23;
  v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v19];

  v29[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)featureVectorFromPredictionContext:(id)a3
{
  v4 = a3;
  v5 = [v4 suggestionDate];
  v6 = [v4 bundleID];
  v7 = [v4 peopleInPhotoIdentifiers];
  v8 = [v4 sceneTagsInPhotoIdentifiers];

  v9 = [(_PSKNNModel *)self _featureVectorFromSuggestionDate:v5 bundleID:v6 peopleInPhotoIdentifiers:v7 sceneTagsInPhotoIdentifiers:v8];

  return v9;
}

- (id)featureVectorFromInteraction:(id)a3
{
  v4 = a3;
  v5 = [v4 attachments];
  v6 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_329];

  v7 = [v4 startDate];
  v8 = [v4 bundleId];

  v9 = [(_PSKNNModel *)self _featureVectorFromSuggestionDate:v7 bundleID:v8 peopleInPhotoIdentifiers:v6 sceneTagsInPhotoIdentifiers:0];

  return v9;
}

- (id)featureVectorFromPredictionDate:(id)a3 bundleId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];
  v9 = v8;
  if (a4)
  {
    v17 = v8;
    v18 = v7;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v17;
    v12 = 2;
  }

  else
  {
    v16 = v8;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v16;
    v12 = 1;
  }

  v13 = [v10 arrayWithObjects:v11 count:{v12, v16, v17, v18, v19}];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)featureVectorFromAbsolutePredictionTime:(double)a3 bundleId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  v9 = v8;
  if (a4)
  {
    v17 = v8;
    v18 = v7;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v17;
    v12 = 2;
  }

  else
  {
    v16 = v8;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v16;
    v12 = 1;
  }

  v13 = [v10 arrayWithObjects:v11 count:{v12, v16, v17, v18, v19}];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)mergedSuggestionsFromShares:(id)a3 andInteractions:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = v7;
  if (v5 && v6)
  {
    v9 = [v5 mutableCopy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (([v9 containsObject:{v15, v20}] & 1) == 0)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v16 = v5;
  }

  else
  {
    if (!v6)
    {
      v9 = v7;
LABEL_13:
      v16 = v9;
      v8 = v16;
      goto LABEL_18;
    }

    v16 = v6;
  }

LABEL_18:
  v17 = v16;

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)extractNearestNeighborLabelsForQueryResult:(id)a3 andNeighbors:(id)a4 frequencyOnly:(BOOL)a5 rankerType:(int64_t)a6 contactsOnly:(BOOL)a7 reason:(id)a8
{
  v37 = a7;
  v38 = a5;
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v40 = a8;
  v45 = [MEMORY[0x1E695DF70] array];
  v44 = [MEMORY[0x1E695DF70] array];
  v41 = v10;
  v46 = [v10 objectAtIndex:1];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    v15 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [v17 nodeData];
        v20 = v19;
        if (!v19)
        {
          v19 = v15;
        }

        v21 = [v19 _pas_componentsJoinedByString:&stru_1F2D6CE98];

        v22 = [v46 objectForKeyedSubscript:v21];
        if (v22)
        {
          [v45 addObject:v22];
          v23 = MEMORY[0x1E696AD98];
          [v17 distance];
          v24 = [v23 numberWithDouble:?];
          [v44 addObject:v24];
        }

        objc_autoreleasePoolPop(v18);
      }

      v13 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v13);
  }

  if (a6 > 2)
  {
    if (a6 != 3)
    {
      v25 = v40;
      if (a6 == 4)
      {
        v29 = [(_PSKNNModel *)self rankedLabelsFromInteractionsSingleRecipientArray:v45 andDistances:v44 freqOnly:v38 contactsOnly:v37 scoreLikeShareSheet:1];
        v26 = v41;
        if (!v40)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      v26 = v41;
      if (a6 == 5)
      {
        v27 = [(_PSKNNModel *)self rankedLabelsFromInteractionsForPhoneCallsWithInteractions:v45 andDistances:v44];
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v28 = [(_PSKNNModel *)self rankedLabelsFromInteractionsSiriNLWithInteractions:v45 andDistances:v44 freqOnly:v38];
LABEL_24:
    v29 = v28;
    v25 = v40;
    v26 = v41;
    if (!v40)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (a6 == 1)
  {
    v28 = [(_PSKNNModel *)self rankedLabelsFromInteractionsSingleRecipientArray:v45 andDistances:v44 freqOnly:v38 contactsOnly:v37 scoreLikeShareSheet:0];
    goto LABEL_24;
  }

  v25 = v40;
  v26 = v41;
  if (a6 == 2)
  {
    v27 = [(_PSKNNModel *)self rankedLabelsFromInteractionsSingleRecipientArray:v45 andDistances:v44 freqOnly:v38 contactsOnly:0 scoreLikeShareSheet:0];
    goto LABEL_27;
  }

LABEL_26:
  v27 = [(_PSKNNModel *)self rankedLabelsFromInteractionsMaintainRecipientsArray:v45 andDistances:v44 freqOnly:v38];
LABEL_27:
  v29 = v27;
  if (!v25)
  {
    goto LABEL_36;
  }

LABEL_28:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v47 + 1) + 8 * j) setObject:v25 forKeyedSubscript:@"reason"];
      }

      v32 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v32);
  }

LABEL_36:
  v35 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)rankedLabelsFromInteractionsMaintainRecipientsArray:(id)a3 andDistances:(id)a4 freqOnly:(BOOL)a5
{
  v131 = a5;
  v163 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v127 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v125 = v6;
  v129 = v7;
  if ([v6 count])
  {
    v8 = 0;
    v9 = 0x1E7C23000uLL;
    do
    {
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v128 = v8;
      obj = [v6 objectAtIndexedSubscript:{v8, v125}];
      v133 = [obj countByEnumeratingWithState:&v152 objects:v162 count:16];
      if (!v133)
      {
        goto LABEL_88;
      }

      v132 = *v153;
      do
      {
        for (i = 0; i != v133; ++i)
        {
          if (*v153 != v132)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v152 + 1) + 8 * i);
          v12 = [MEMORY[0x1E695DF90] dictionary];
          v13 = [v11 mechanism] == 13 || objc_msgSend(v11, "mechanism") == 20;
          v14 = [v11 bundleId];
          v15 = [*(v9 + 960) mobileMessagesBundleId];
          v16 = [v14 isEqualToString:v15];
          if ((v16 & 1) != 0 || ([v11 bundleId], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(v9 + 960), "macMessagesBundleId"), v134 = objc_claimAutoreleasedReturnValue(), v135 = v17, objc_msgSend(v17, "isEqualToString:")))
          {
            v18 = [v11 domainIdentifier];
            v19 = v18 != 0;

            if (v16)
            {

              if (v18)
              {
                goto LABEL_15;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v19 = 0;
          }

          if (v19)
          {
LABEL_15:
            v20 = [v11 domainIdentifier];
            [v12 setObject:v20 forKeyedSubscript:@"conversationId"];

            v21 = [v11 bundleId];
            [v12 setObject:v21 forKeyedSubscript:@"bundleId"];

            v22 = [v11 bundleId];
            [v12 setObject:v22 forKeyedSubscript:@"sourceBundleId"];

            v23 = [v11 startDate];
            [v12 setObject:v23 forKeyedSubscript:@"startDate"];

            v24 = [v12 objectForKeyedSubscript:@"conversationId"];
            v25 = [v12 objectForKeyedSubscript:@"bundleId"];
            v26 = [(__CFString *)v24 stringByAppendingString:v25];
            goto LABEL_78;
          }

LABEL_18:
          v9 = 0x1E7C23000uLL;
          if (v13)
          {
            v27 = [v11 targetBundleId];
            v28 = +[_PSConstants shareSheetTargetBundleIdMessages];
            if ([v27 isEqualToString:v28])
            {
              v29 = [v11 domainIdentifier];

              if (v29)
              {
                v30 = [v11 domainIdentifier];
                [v12 setObject:v30 forKeyedSubscript:@"conversationId"];

                v31 = +[_PSConstants mobileMessagesBundleId];
                [v12 setObject:v31 forKeyedSubscript:@"bundleId"];

                v32 = [v11 bundleId];
                [v12 setObject:v32 forKeyedSubscript:@"sourceBundleId"];

                v33 = [v11 startDate];
                [v12 setObject:v33 forKeyedSubscript:@"startDate"];

                v24 = [v12 objectForKeyedSubscript:@"conversationId"];
                v34 = v12;
LABEL_57:
                v25 = [v34 objectForKeyedSubscript:@"bundleId"];
                v80 = [(__CFString *)v24 stringByAppendingString:v25];
                goto LABEL_62;
              }
            }

            else
            {
            }
          }

          v35 = [v11 bundleId];
          v36 = +[_PSConstants mobileMailBundleId];
          if ([v35 isEqualToString:v36])
          {
            v37 = [v11 recipients];
            v38 = [v37 count];

            if (v38)
            {
              v39 = [v11 recipients];
              [v12 setObject:v39 forKeyedSubscript:@"mailRecipients"];

              v40 = [v11 bundleId];
              [v12 setObject:v40 forKeyedSubscript:@"bundleId"];

              v41 = [v11 bundleId];
              [v12 setObject:v41 forKeyedSubscript:@"sourceBundleId"];

              v42 = [v11 startDate];
              [v12 setObject:v42 forKeyedSubscript:@"startDate"];

              v150 = 0u;
              v151 = 0u;
              v148 = 0u;
              v149 = 0u;
              v43 = [v12 objectForKeyedSubscript:@"mailRecipients"];
              v44 = [v43 countByEnumeratingWithState:&v148 objects:v161 count:16];
              if (v44)
              {
                v45 = v44;
                v46 = *v149;
                v24 = &stru_1F2D6CE98;
                do
                {
                  for (j = 0; j != v45; ++j)
                  {
                    if (*v149 != v46)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v48 = *(*(&v148 + 1) + 8 * j);
                    v49 = [v48 identifier];

                    if (v49)
                    {
                      v50 = [v48 identifier];
                      v51 = [(__CFString *)v24 stringByAppendingString:v50];

                      v24 = v51;
                    }
                  }

                  v45 = [v43 countByEnumeratingWithState:&v148 objects:v161 count:16];
                }

                while (v45);
                goto LABEL_77;
              }

              goto LABEL_76;
            }
          }

          else
          {
          }

          if (v13)
          {
            v52 = [v11 targetBundleId];
            v53 = +[_PSConstants shareSheetTargetBundleIdMail];
            if ([v52 isEqualToString:v53])
            {
              v54 = [v11 recipients];
              v55 = [v54 count];

              if (v55)
              {
                v56 = [v11 recipients];
                [v12 setObject:v56 forKeyedSubscript:@"mailRecipients"];

                v57 = +[_PSConstants mobileMailBundleId];
                [v12 setObject:v57 forKeyedSubscript:@"bundleId"];

                v58 = [v11 bundleId];
                [v12 setObject:v58 forKeyedSubscript:@"sourceBundleId"];

                v59 = [v11 startDate];
                [v12 setObject:v59 forKeyedSubscript:@"startDate"];

                v146 = 0u;
                v147 = 0u;
                v144 = 0u;
                v145 = 0u;
                v43 = [v12 objectForKeyedSubscript:@"mailRecipients"];
                v60 = [v43 countByEnumeratingWithState:&v144 objects:v160 count:16];
                if (v60)
                {
                  v61 = v60;
                  v62 = *v145;
                  v24 = &stru_1F2D6CE98;
                  do
                  {
                    for (k = 0; k != v61; ++k)
                    {
                      if (*v145 != v62)
                      {
                        objc_enumerationMutation(v43);
                      }

                      v64 = *(*(&v144 + 1) + 8 * k);
                      v65 = [v64 identifier];

                      if (v65)
                      {
                        v66 = [v64 identifier];
                        v67 = [(__CFString *)v24 stringByAppendingString:v66];

                        v24 = v67;
                      }
                    }

                    v61 = [v43 countByEnumeratingWithState:&v144 objects:v160 count:16];
                  }

                  while (v61);
                  goto LABEL_77;
                }

                goto LABEL_76;
              }
            }

            else
            {
            }
          }

          v68 = [v11 derivedIntentIdentifier];
          if (v68)
          {
            v69 = v68;
            v70 = [v11 bundleId];

            if (v70)
            {
              v71 = [v11 derivedIntentIdentifier];
              [v12 setObject:v71 forKeyedSubscript:@"derivedIntentIdentifier"];

              if (v13)
              {
                [v11 targetBundleId];
              }

              else
              {
                [v11 bundleId];
              }
              v82 = ;
              [v12 setObject:v82 forKeyedSubscript:@"bundleId"];

              v83 = [v11 bundleId];
              [v12 setObject:v83 forKeyedSubscript:@"sourceBundleId"];

              v84 = [v11 startDate];
              [v12 setObject:v84 forKeyedSubscript:@"startDate"];

              v24 = [v12 objectForKeyedSubscript:@"bundleId"];
              v25 = [v11 derivedIntentIdentifier];
              v80 = _PSSuggestionKey(v24, v25);
LABEL_62:
              v26 = v80;
LABEL_79:

              v102 = objc_alloc(MEMORY[0x1E695DFD8]);
              v103 = [v11 attachments];
              v104 = [v103 _pas_mappedArrayWithTransform:&__block_literal_global_334];
              v105 = [v102 initWithArray:v104];
              [v12 setObject:v105 forKeyedSubscript:@"peopleInPhoto"];

              v106 = [v7 objectForKeyedSubscript:v26];
              v107 = [v106 objectForKeyedSubscript:@"score"];

              if (v131)
              {
                v108 = MEMORY[0x1E696AD98];
                [v107 doubleValue];
                v110 = v109 + 1.0;
                goto LABEL_83;
              }

              if (!v107)
              {
                v108 = MEMORY[0x1E696AD98];
                v107 = [v127 objectAtIndexedSubscript:v128];
                [v107 doubleValue];
                v110 = -v111;
LABEL_83:
                v112 = [v108 numberWithDouble:v110];

                v107 = v112;
              }

              v157[0] = @"score";
              v157[1] = @"key";
              v158[0] = v107;
              v158[1] = v12;
              v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:v157 count:2];
              [v7 setObject:v113 forKeyedSubscript:v26];

              goto LABEL_85;
            }
          }

          v72 = [v11 domainIdentifier];
          if (v72)
          {
            v73 = v72;
            v74 = [v11 bundleId];

            if (v74)
            {
              v75 = [v11 recipients];
              [v12 setObject:v75 forKeyedSubscript:@"expanseRecipients"];

              v76 = [v11 domainIdentifier];
              [v12 setObject:v76 forKeyedSubscript:@"domainIdentifier"];

              v77 = [v11 bundleId];
              [v12 setObject:v77 forKeyedSubscript:@"bundleId"];

              v78 = [v11 bundleId];
              [v12 setObject:v78 forKeyedSubscript:@"sourceBundleId"];

              v79 = [v11 startDate];
              [v12 setObject:v79 forKeyedSubscript:@"startDate"];

              v24 = [v12 objectForKeyedSubscript:@"domainIdentifier"];
              v34 = v12;
              goto LABEL_57;
            }
          }

          v81 = [v11 domainIdentifier];
          if (!v81)
          {
            v85 = [v11 bundleId];
            if (!v85)
            {
              goto LABEL_86;
            }

            v26 = v85;
            v86 = [v11 targetBundleId];
            if (!v86)
            {
              goto LABEL_85;
            }

            v87 = v86;
            v88 = [v11 recipients];
            v89 = [v88 count];

            if (!v89)
            {
              goto LABEL_86;
            }

            v90 = [v11 recipients];
            [v12 setObject:v90 forKeyedSubscript:@"expanseRecipients"];

            v91 = [v11 targetBundleId];
            [v12 setObject:v91 forKeyedSubscript:@"bundleId"];

            v92 = [v11 bundleId];
            [v12 setObject:v92 forKeyedSubscript:@"sourceBundleId"];

            v93 = [v11 startDate];
            [v12 setObject:v93 forKeyedSubscript:@"startDate"];

            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v43 = [v12 objectForKeyedSubscript:@"expanseRecipients"];
            v94 = [v43 countByEnumeratingWithState:&v140 objects:v159 count:16];
            if (v94)
            {
              v95 = v94;
              v96 = *v141;
              v24 = &stru_1F2D6CE98;
              do
              {
                for (m = 0; m != v95; ++m)
                {
                  if (*v141 != v96)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v98 = *(*(&v140 + 1) + 8 * m);
                  v99 = [v98 identifier];

                  if (v99)
                  {
                    v100 = [v98 identifier];
                    v101 = [(__CFString *)v24 stringByAppendingString:v100];

                    v24 = v101;
                  }
                }

                v95 = [v43 countByEnumeratingWithState:&v140 objects:v159 count:16];
              }

              while (v95);
LABEL_77:

              v25 = [v12 objectForKeyedSubscript:@"bundleId"];
              v26 = [(__CFString *)v24 stringByAppendingString:v25];
              v7 = v129;
LABEL_78:
              v9 = 0x1E7C23000;
              goto LABEL_79;
            }

LABEL_76:
            v24 = &stru_1F2D6CE98;
            goto LABEL_77;
          }

          v26 = v81;
LABEL_85:

LABEL_86:
        }

        v133 = [obj countByEnumeratingWithState:&v152 objects:v162 count:16];
      }

      while (v133);
LABEL_88:

      v8 = v128 + 1;
      v6 = v125;
    }

    while ([v125 count] > (v128 + 1));
  }

  v114 = [v7 keysSortedByValueUsingComparator:{&__block_literal_global_336, v125}];
  v115 = [MEMORY[0x1E695DF70] array];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v116 = v114;
  v117 = [v116 countByEnumeratingWithState:&v136 objects:v156 count:16];
  if (v117)
  {
    v118 = v117;
    v119 = *v137;
    do
    {
      for (n = 0; n != v118; ++n)
      {
        if (*v137 != v119)
        {
          objc_enumerationMutation(v116);
        }

        v121 = [v129 objectForKeyedSubscript:*(*(&v136 + 1) + 8 * n)];
        v122 = [v121 objectForKeyedSubscript:@"key"];
        [v115 addObject:v122];
      }

      v118 = [v116 countByEnumeratingWithState:&v136 objects:v156 count:16];
    }

    while (v118);
  }

  v123 = *MEMORY[0x1E69E9840];

  return v115;
}

- (id)rankedLabelsFromInteractionsSingleRecipientArray:(id)a3 andDistances:(id)a4 freqOnly:(BOOL)a5 contactsOnly:(BOOL)a6 scoreLikeShareSheet:(BOOL)a7
{
  v74 = a7;
  v75 = a5;
  v7 = a6;
  v101 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v72 = a4;
  v79 = [MEMORY[0x1E695DF90] dictionary];
  v76 = [MEMORY[0x1E695DF90] dictionary];
  v71 = [MEMORY[0x1E695DF90] dictionary];
  v10 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  if ([v9 count])
  {
    v11 = 0;
    v12 = (86400 * v10);
    v78 = v7;
    v70 = v9;
    do
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v73 = v11;
      obj = [v9 objectAtIndexedSubscript:{v11, v70}];
      v81 = [obj countByEnumeratingWithState:&v87 objects:v100 count:16];
      if (!v81)
      {
        goto LABEL_52;
      }

      v80 = *v88;
      do
      {
        v13 = 0;
        do
        {
          if (*v88 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v87 + 1) + 8 * v13);
          v15 = [v14 recipients];
          v16 = [v15 firstObject];

          if (v16)
          {
            if (!v7)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v17 = [v14 sender];
            if (!v17)
            {
              goto LABEL_41;
            }

            v16 = v17;
            if (!v7)
            {
LABEL_20:
              v25 = 0;
              v23 = 0;
              v22 = 0;
              goto LABEL_23;
            }
          }

          v18 = [v16 identifier];

          if (!v18)
          {
            goto LABEL_20;
          }

          v19 = [v16 identifier];
          v20 = [v76 objectForKeyedSubscript:v19];
          if (v20 || [v16 personIdType] != 3)
          {

LABEL_22:
            v30 = [v16 identifier];
            v31 = [v76 objectForKeyedSubscript:v30];

            v22 = [v31 objectForKeyedSubscript:@"conversationId"];
            v23 = [v31 objectForKeyedSubscript:@"displayName"];

            v25 = 0;
            goto LABEL_23;
          }

          v21 = [v16 personId];

          if (!v21)
          {
            goto LABEL_22;
          }

          v22 = [v16 personId];
          v23 = [v16 displayName];
          v24 = [v14 sender];
          v25 = [v24 identifier];

          if (v22 && v23)
          {
            v98[0] = @"conversationId";
            v98[1] = @"displayName";
            v99[0] = v22;
            v99[1] = v23;
            v26 = MEMORY[0x1E695DF20];
            v27 = v99;
            v28 = v98;
            v29 = 2;
          }

          else
          {
            if (!v22)
            {
              goto LABEL_23;
            }

            v96 = @"conversationId";
            v97 = v22;
            v26 = MEMORY[0x1E695DF20];
            v27 = &v97;
            v28 = &v96;
            v29 = 1;
          }

          v56 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v29];
          v57 = [v16 identifier];
          [v76 setObject:v56 forKeyedSubscript:v57];

          if (v25)
          {
            v58 = [v71 objectForKeyedSubscript:v22];

            if (!v58)
            {
              [v71 setObject:v25 forKeyedSubscript:v22];
            }
          }

LABEL_23:
          v32 = [MEMORY[0x1E695DF90] dictionary];
          v33 = v32;
          if (!v7)
          {
            v82 = v23;
            v36 = [v16 identifier];
            [v33 setObject:v36 forKeyedSubscript:@"conversationId"];

            v37 = [_PSRecipient alloc];
            v38 = [v33 objectForKeyedSubscript:@"conversationId"];
            v39 = [v16 identifier];
            v40 = [v16 displayName];
            v34 = [(_PSRecipient *)v37 initWithIdentifier:v38 handle:v39 displayName:v40 contact:0];

            v94 = v34;
            v35 = &v94;
            goto LABEL_29;
          }

          if (v22)
          {
            [v32 setObject:v22 forKeyedSubscript:@"conversationId"];
            if (!v25)
            {
              v25 = [v71 objectForKeyedSubscript:v22];
            }

            v82 = v23;
            v34 = [[_PSRecipient alloc] initWithIdentifier:v22 senderHandle:v25 handle:0 displayName:v23 contact:0];
            v95 = v34;
            v35 = &v95;
LABEL_29:
            v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
            [v33 setObject:v41 forKeyedSubscript:@"recipients"];

            v42 = [v33 objectForKeyedSubscript:@"conversationId"];

            if (v42)
            {
              v43 = [v79 objectForKeyedSubscript:v42];
              v44 = [v43 objectForKeyedSubscript:@"score"];

              if (v75)
              {
                v45 = MEMORY[0x1E696AD98];
                [v44 doubleValue];
                v47 = v46 + 1.0;
                goto LABEL_36;
              }

              if (!v74 || v44)
              {
                if (!v74)
                {
                  v51 = MEMORY[0x1E696AD98];
                  [v44 doubleValue];
                  v53 = v52;
                  v54 = [v72 objectAtIndexedSubscript:v73];
                  [v54 doubleValue];
                  v49 = [v51 numberWithDouble:v53 + v12 / v55];

                  v44 = v54;
                  goto LABEL_37;
                }

                v7 = v78;
              }

              else
              {
                v45 = MEMORY[0x1E696AD98];
                v44 = [v72 objectAtIndexedSubscript:v73];
                [v44 doubleValue];
                v47 = -v48;
LABEL_36:
                v49 = [v45 numberWithDouble:v47];
LABEL_37:

                v44 = v49;
                v7 = v78;
              }

              v92[0] = @"score";
              v92[1] = @"key";
              v93[0] = v44;
              v93[1] = v33;
              v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:2];
              [v79 setObject:v50 forKeyedSubscript:v42];
            }

            else
            {
              v7 = v78;
            }

            v23 = v82;
          }

LABEL_41:
          ++v13;
        }

        while (v81 != v13);
        v59 = [obj countByEnumeratingWithState:&v87 objects:v100 count:16];
        v81 = v59;
      }

      while (v59);
LABEL_52:

      v11 = v73 + 1;
      v9 = v70;
    }

    while ([v70 count] > (v73 + 1));
  }

  v60 = [v79 keysSortedByValueUsingComparator:&__block_literal_global_341];
  v61 = [MEMORY[0x1E695DF70] array];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v62 = v60;
  v63 = [v62 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v84;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v84 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = [v79 objectForKeyedSubscript:*(*(&v83 + 1) + 8 * i)];
        [v61 addObject:v67];
      }

      v64 = [v62 countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v64);
  }

  v68 = *MEMORY[0x1E69E9840];

  return v61;
}

- (id)rankedLabelsFromInteractionsSiriNLWithInteractions:(id)a3 andDistances:(id)a4 freqOnly:(BOOL)a5
{
  v60 = a5;
  v79 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v58 = a4;
  v8 = 0x1E695D000uLL;
  v64 = [MEMORY[0x1E695DF90] dictionary];
  v9 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  if ([v7 count])
  {
    v10 = 0;
    v11 = (86400 * v9);
    v61 = self;
    v57 = v7;
    do
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v59 = v10;
      v12 = [v7 objectAtIndexedSubscript:{v10, v57}];
      v13 = [v12 countByEnumeratingWithState:&v69 objects:v78 count:16];
      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = v13;
      v15 = *v70;
      v62 = v12;
      v63 = *v70;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v70 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v69 + 1) + 8 * i);
          v18 = [v17 recipients];
          v19 = [v18 firstObject];

          if (!v19)
          {
            v20 = [v17 sender];
            if (!v20)
            {
              continue;
            }

            v19 = v20;
          }

          v21 = [*(v8 + 3984) dictionary];
          if ([v19 personIdType] == 3)
          {
            v22 = [v19 personId];

            if (v22)
            {
              v23 = [(_PSKNNModel *)self contactResolver];
              v24 = [v19 personId];
              v25 = [v23 contactWithIdentifier:v24];

              v26 = [v25 identifier];
              if (v26)
              {
                v27 = v26;
                [v21 setObject:v26 forKeyedSubscript:@"conversationId"];
                v28 = [_PSRecipient alloc];
                v29 = [v19 identifier];
                v30 = [(_PSRecipient *)v28 initWithIdentifier:v27 senderHandle:0 handle:v29 displayName:0 contact:v25];

                v77 = v30;
                v31 = &v77;
                goto LABEL_18;
              }

              v32 = [(_PSKNNModel *)self contactResolver];
              v33 = [v19 identifier];
              v34 = [v32 resolveContactIfPossibleFromContactIdentifierString:v33 pickFirstOfMultiple:1];

              v27 = [v34 identifier];
              if (v27)
              {
                [v21 setObject:v27 forKeyedSubscript:@"conversationId"];
                v35 = [_PSRecipient alloc];
                v36 = [v19 identifier];
                v30 = [(_PSRecipient *)v35 initWithIdentifier:v27 senderHandle:0 handle:v36 displayName:0 contact:v34];

                v76 = v30;
                v31 = &v76;
                v25 = v34;
LABEL_18:
                v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
                [v21 setObject:v37 forKeyedSubscript:@"recipients"];

                v34 = [v21 objectForKeyedSubscript:@"conversationId"];

                if (v34)
                {
                  v38 = [v64 objectForKeyedSubscript:v34];
                  v39 = [v38 objectForKeyedSubscript:@"score"];

                  v40 = MEMORY[0x1E696AD98];
                  [v39 doubleValue];
                  v42 = v41;
                  v12 = v62;
                  if (v60)
                  {
                    v43 = [v40 numberWithDouble:v41 + 1.0];
                  }

                  else
                  {
                    v44 = [v58 objectAtIndexedSubscript:v59];
                    [v44 doubleValue];
                    v43 = [v40 numberWithDouble:v42 + v11 / v45];

                    v39 = v44;
                  }

                  v74[0] = @"score";
                  v74[1] = @"key";
                  v75[0] = v43;
                  v75[1] = v21;
                  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
                  [v64 setObject:v46 forKeyedSubscript:v34];

                  self = v61;
                  goto LABEL_24;
                }

                self = v61;
                v12 = v62;
              }

              else
              {
LABEL_24:
              }

              v8 = 0x1E695D000;
              v15 = v63;
              goto LABEL_26;
            }
          }

          v27 = 0;
LABEL_26:
        }

        v14 = [v12 countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v14);
LABEL_29:

      v10 = v59 + 1;
      v7 = v57;
    }

    while ([v57 count] > (v59 + 1));
  }

  v47 = [v64 keysSortedByValueUsingComparator:&__block_literal_global_343];
  v48 = [MEMORY[0x1E695DF70] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v49 = v47;
  v50 = [v49 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v66;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v66 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [v64 objectForKeyedSubscript:*(*(&v65 + 1) + 8 * j)];
        [v48 addObject:v54];
      }

      v51 = [v49 countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v51);
  }

  v55 = *MEMORY[0x1E69E9840];

  return v48;
}

- (id)featuresFromInteractions:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 startDate];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 bundleId];

          if (v14)
          {
            v15 = [(_PSKNNModel *)self featureVectorFromInteraction:v11];
            v16 = v15;
            if (!v15)
            {
              v15 = MEMORY[0x1E695E0F0];
            }

            v17 = [v15 _pas_componentsJoinedByString:&stru_1F2D6CE98];
            v18 = [v5 objectForKeyedSubscript:v17];

            if (!v18)
            {
              v19 = [MEMORY[0x1E695DF70] array];
              [v5 setObject:v19 forKeyedSubscript:v17];
            }

            v20 = [v5 objectForKeyedSubscript:v17];
            [v20 addObject:v11];

            [v4 addObject:v16];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  [v23 addObject:v4];
  [v23 addObject:v5];

  v21 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)featuresFromInteractionsSplitRecipients:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v49;
    v36 = *v49;
    do
    {
      v8 = 0;
      v38 = v6;
      do
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 startDate];
        if (v11)
        {
          v12 = v11;
          v13 = [v9 bundleId];

          if (v13)
          {
            v40 = v10;
            v41 = v8;
            v14 = [v9 startDate];
            v15 = [v9 bundleId];
            v16 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v14 bundleId:v15];

            v17 = [v16 valueForKey:@"description"];
            v18 = [v17 _pas_componentsJoinedByString:&stru_1F2D6CE98];

            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = [v9 recipients];
            v19 = [v42 countByEnumeratingWithState:&v44 objects:v53 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v45;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v45 != v21)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v23 = *(*(&v44 + 1) + 8 * i);
                  v24 = [v4 objectForKeyedSubscript:v18];

                  if (!v24)
                  {
                    v25 = [MEMORY[0x1E695DF70] array];
                    [v4 setObject:v25 forKeyedSubscript:v18];
                  }

                  v26 = objc_opt_new();
                  v27 = [v9 startDate];
                  [v26 setStartDate:v27];

                  v28 = [v9 endDate];
                  [v26 setEndDate:v28];

                  v29 = [v9 bundleId];
                  [v26 setBundleId:v29];

                  [v26 setMechanism:{objc_msgSend(v9, "mechanism")}];
                  [v26 setDirection:{objc_msgSend(v9, "direction")}];
                  v30 = [v9 sender];
                  [v26 setSender:v30];

                  v52 = v23;
                  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
                  [v26 setRecipients:v31];

                  v32 = [v4 objectForKeyedSubscript:v18];
                  [v32 addObject:v26];

                  [v43 addObject:v16];
                }

                v20 = [v42 countByEnumeratingWithState:&v44 objects:v53 count:16];
              }

              while (v20);
            }

            v7 = v36;
            v6 = v38;
            v10 = v40;
            v8 = v41;
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v6);
  }

  [v35 addObject:v43];
  [v35 addObject:v4];

  v33 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)sliceStart:(unint64_t)a3 end:(unint64_t)a4 ofArray:(id)a5
{
  v7 = a5;
  if ([v7 count] >= a3 && objc_msgSend(v7, "count") >= a4)
  {
    v8 = [v7 subarrayWithRange:{a3, a4 - a3}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)jaccardDistanceFromSetBasedReference:(id)a3 neighbor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 1.0;
  if (v5)
  {
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v5 mutableCopy];
          [v9 intersectSet:v7];
          v10 = [v5 count];
          v11 = [v7 count] + v10;
          v12 = v11 - [v9 count];
          if (v12)
          {
            v8 = 1.0 - [v9 count] / v12;
          }
        }
      }
    }
  }

  return v8;
}

- (double)distanceOfNeighbor:(id)a3 fromReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 doubleValue];
  v10 = v9;
  v11 = [v6 objectAtIndexedSubscript:0];
  [v11 doubleValue];
  v13 = (v10 - v12) * (v10 - v12);

  if ([v7 count] != 1)
  {
    v14 = [v7 objectAtIndexedSubscript:1];
    v15 = [v6 objectAtIndexedSubscript:1];
    v16 = [v14 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [(_PSKNNModel *)self _PSKnnModelSameBundleIdPenalty];
      v13 = v13 + v17 * v17;
    }

    if ([v7 count] != 2)
    {
      v18 = [(_PSKNNModel *)self _PSKnnModelDifferentPeoplePenalty];
      v19 = [v7 objectAtIndexedSubscript:2];
      v20 = [v6 objectAtIndexedSubscript:2];
      [(_PSKNNModel *)self jaccardDistanceFromSetBasedReference:v19 neighbor:v20];
      v13 = v13 + v21 * v18 * (v21 * v18);
    }
  }

  return sqrt(v13);
}

- (id)neighborsFromTrainingData:(id)a3 k:(unint64_t)a4 queryPoint:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        [(_PSKNNModel *)self distanceOfNeighbor:v16 fromReference:v9, v25];
        v18 = v17;
        if ([v10 count] >= a4)
        {
          v19 = [v10 lastObject];
          [v19 distance];
          v21 = v20;

          if (v18 >= v21)
          {
            continue;
          }

          [v10 removeLastObject];
        }

        v22 = [[_PSKNNeighbor alloc] initWithNodeData:v16 distance:v18];
        [v10 insertObject:v22 atIndex:{-[_PSKNNModel indexToInsertNeighbor:array:](self, "indexToInsertNeighbor:array:", v22, v10)}];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unint64_t)indexToInsertNeighbor:(id)a3 array:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 indexOfObject:v6 inSortedRange:0 options:objc_msgSend(v5 usingComparator:{"count"), 1024, &__block_literal_global_350}];

  return v7;
}

- (id)rankedMapsShareEtaSuggestions:(id)a3 maxSuggestions:(unint64_t)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = BiomeLibrary();
  v9 = [v8 MapsShare];
  v10 = [v9 ETAFeedback];

  v49 = v10;
  v11 = [v10 publisherWithUseCase:@"MapsShareETAFeedback"];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __60___PSKNNModel_rankedMapsShareEtaSuggestions_maxSuggestions___block_invoke_357;
  v56[3] = &unk_1E7C26518;
  v12 = v7;
  v57 = v12;
  v48 = v11;
  v13 = [v11 sinkWithCompletion:&__block_literal_global_356 receiveInput:v56];
  v14 = +[_PSLogging knnChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    *buf = 138412290;
    v61 = v15;
    _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "Knn - Number of maps feedback events = %@", buf, 0xCu);
  }

  v47 = v12;
  v16 = [v12 allObjects];
  v17 = [(_PSKNNModel *)self featuresFromMapsFeedbackEvents:v16];

  v18 = [v6 suggestionDate];
  v50 = v6;
  v19 = [v6 bundleID];
  v20 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v18 bundleId:v19];

  v21 = [v17 objectAtIndex:0];
  v45 = v20;
  v22 = [(_PSKNNModel *)self neighborsFromTrainingData:v21 k:[(_PSKNNModel *)self k] queryPoint:v20];

  v46 = v17;
  v44 = v22;
  v23 = [(_PSKNNModel *)self extractNearestNeighborsForMapsQueryResult:v17 andNeighbors:v22 frequencyOnly:0];
  v24 = [v23 count];
  if (v24 >= a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = v24;
  }

  v43 = v23;
  v26 = [v23 subarrayWithRange:{0, v25}];
  v51 = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v53;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v52 + 1) + 8 * i);
        v33 = [(_PSKNNModel *)self contactResolver];
        v34 = [v33 resolveContactIfPossibleFromContactIdentifierString:v32 pickFirstOfMultiple:1];

        if (v34)
        {
          v35 = [_PSRecipient alloc];
          v36 = [v34 identifier];
          v37 = [(_PSRecipient *)v35 initWithIdentifier:v36 handle:v32 contact:v34];

          if (v37)
          {
            v38 = [_PSSuggestion alloc];
            v58 = v37;
            v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
            v40 = [(_PSSuggestion *)v38 initWithBundleID:0 conversationIdentifier:0 groupName:0 recipients:v39];

            [v51 addObject:v40];
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v29);
  }

  v41 = *MEMORY[0x1E69E9840];

  return v51;
}

- (id)mapsShareEtaDefaultKnnSuggestions:(id)a3 maxSuggestions:(unint64_t)a4
{
  v78[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 suggestionDate];
  v7 = [v5 bundleID];
  v58 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v6 bundleId:v7];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = MEMORY[0x1E696AE18];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C4F8];
  v11 = [v9 predicateWithFormat:@"(direction IN %@)", v10];
  [v8 addObject:v11];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", &unk_1F2D8B9E8];
  [v8 addObject:v12];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(recipientCount == 1)"];
  [v8 addObject:v13];

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v8];
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v16 = [(_PSKNNModel *)self interactionStore];
  v78[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
  v72 = 0;
  v18 = [v16 queryInteractionsUsingPredicate:v14 sortDescriptors:v17 limit:2000 error:&v72];
  v19 = v72;

  v20 = +[_PSLogging knnChannel];
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_PSKNNModel mapsShareEtaDefaultKnnSuggestions:maxSuggestions:];
    }

    v59 = MEMORY[0x1E695E0F0];
    v22 = v58;
  }

  else
  {
    v54 = v15;
    v55 = v14;
    v56 = v8;
    v57 = v5;
    v23 = 0x1E695D000uLL;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v21;
      v25 = objc_opt_new();
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v26 = v18;
      v27 = [v26 countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v69;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v69 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [*(*(&v68 + 1) + 8 * i) bundleId];
            [v25 addObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v68 objects:v75 count:16];
        }

        while (v28);
      }

      v32 = [v25 allObjects];
      v33 = objc_alloc(MEMORY[0x1E695DF20]);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __64___PSKNNModel_mapsShareEtaDefaultKnnSuggestions_maxSuggestions___block_invoke;
      v66[3] = &unk_1E7C264B0;
      v67 = v25;
      v34 = v25;
      v35 = [v32 _pas_mappedArrayWithTransform:v66];
      v36 = [v33 initWithObjects:v35 forKeys:v32];

      *buf = 138477827;
      v77 = v36;
      v21 = v24;
      _os_log_impl(&dword_1B5ED1000, v24, OS_LOG_TYPE_DEFAULT, "Knn - Maps ShareETA considering interactions from bundle IDs: %{private}@", buf, 0xCu);
    }

    v53 = [(_PSKNNModel *)self featuresFromInteractionsSplitRecipients:v18];
    v37 = [_PSKNNModel interactionLabelsForQueryResult:"interactionLabelsForQueryResult:queryPoint:rankerType:frequencyOnly:contactsOnly:" queryPoint:? rankerType:? frequencyOnly:? contactsOnly:?];
    v59 = [MEMORY[0x1E695DF70] array];
    v61 = [MEMORY[0x1E695DFA8] set];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v37;
    v38 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v63;
      v41 = @"key";
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v63 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v43 = [*(*(&v62 + 1) + 8 * j) objectForKeyedSubscript:v41];
          v44 = [v43 objectForKeyedSubscript:@"conversationId"];

          if (v44 && ([v61 containsObject:v44] & 1) == 0)
          {
            v45 = v41;
            v46 = [[_PSRecipient alloc] initWithIdentifier:v44 handle:v44 contact:0];
            v47 = [_PSSuggestion alloc];
            v73 = v46;
            v48 = v23;
            v49 = [*(v23 + 3784) arrayWithObjects:&v73 count:1];
            v50 = [(_PSSuggestion *)v47 initWithBundleID:0 conversationIdentifier:0 groupName:0 recipients:v49];

            if (v50)
            {
              [v59 addObject:v50];
            }

            [v61 addObject:v44];

            v23 = v48;
            v41 = v45;
          }
        }

        v39 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v39);
    }

    v5 = v57;
    v22 = v58;
    v14 = v55;
    v8 = v56;
    v15 = v54;
    v21 = v53;
    v19 = 0;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v59;
}

- (id)featuresFromMapsFeedbackEvents:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 startDate];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 source];
          v14 = [v13 bundleID];

          if (v14)
          {
            v15 = [v10 startDate];
            v16 = [v10 source];
            v17 = [v16 bundleID];
            v18 = [(_PSKNNModel *)self featureVectorFromPredictionDate:v15 bundleId:v17];

            v19 = [v18 valueForKey:@"description"];
            v20 = [v19 componentsJoinedByString:&stru_1F2D6CE98];

            v21 = [v4 objectForKeyedSubscript:v20];

            if (!v21)
            {
              v22 = [MEMORY[0x1E695DF70] array];
              [v4 setObject:v22 forKeyedSubscript:v20];
            }

            v23 = [v4 objectForKeyedSubscript:v20];
            [v23 addObject:v10];

            [v28 addObject:v18];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  [v26 addObject:v28];
  [v26 addObject:v4];

  v24 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)extractNearestNeighborsForMapsQueryResult:(id)a3 andNeighbors:(id)a4 frequencyOnly:(BOOL)a5
{
  v44 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v43 = [MEMORY[0x1E695DF70] array];
  v39 = v6;
  v42 = [v6 objectAtIndex:1];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
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
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        v14 = [v13 nodeData];
        v15 = [v14 valueForKey:@"description"];
        v16 = [v15 componentsJoinedByString:&stru_1F2D6CE98];

        v17 = [v42 objectForKeyedSubscript:v16];
        [v8 addObject:v17];

        v18 = MEMORY[0x1E696AD98];
        [v13 distance];
        v19 = [v18 numberWithDouble:?];
        [v43 addObject:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v10);
  }

  v20 = [MEMORY[0x1E695DF90] dictionary];
  if ([v8 count])
  {
    v21 = 0;
    v40 = v8;
    do
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v22 = [v8 objectAtIndexedSubscript:v21];
      v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v46;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(*(&v45 + 1) + 8 * j) value];
            v28 = [v27 stringValue];

            if (v28)
            {
              v29 = [v20 objectForKeyedSubscript:v28];
              v30 = MEMORY[0x1E696AD98];
              [v29 doubleValue];
              v32 = v31;
              if (v44)
              {
                v33 = [v30 numberWithDouble:v31 + 1.0];
              }

              else
              {
                v34 = [v43 objectAtIndexedSubscript:v21];
                [v34 doubleValue];
                v33 = [v30 numberWithDouble:v32 + 1.0 / v35];

                v29 = v34;
              }

              [v20 setObject:v33 forKeyedSubscript:v28];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v24);
      }

      ++v21;
      v8 = v40;
    }

    while ([v40 count] > v21);
  }

  v36 = [v20 keysSortedByValueUsingComparator:&__block_literal_global_383];

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (void)suggestionProxiesWithPredictionContext:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_DEBUG, "Knn - Sharesheet shareLabels: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)mapsShareEtaDefaultKnnSuggestions:maxSuggestions:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_ERROR, "Knn - Maps ShareETA error querying interactions database for maps suggestions: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end