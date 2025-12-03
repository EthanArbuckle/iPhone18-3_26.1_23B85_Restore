@interface _PSHeuristics
+ (id)PSHeuristicsRecencyReasonToString:(int64_t)string;
+ (id)templateForPhoneCallHeuristicFromSuggestionProxy:(id)proxy;
- (_PSHeuristics)initWithKnowledgeStore:(id)store interactionStore:(id)interactionStore contactResolver:(id)resolver shareSheetSupportedBundleIds:(id)ids messageInteractionCache:(id)cache;
- (double)thresholdForHeuristic:(id)heuristic;
- (id)heuristicsFromInteractionsStatistics:(id)statistics forStatsNames:(id)names threshold:(double)threshold maxNumberOfSuggestions:(int)suggestions reason:(id)reason;
- (id)hourOfDayProbabilitiesToInteractWithContacts:(id)contacts;
- (id)hyperRecentCallHeuristicSuggestionProxiesForInteractionStatistics:(id)statistics;
- (id)hyperRecentHeuristicIncomingSuggestionProxiesForInteractionStatistics:(id)statistics;
- (id)hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:(id)statistics;
- (id)hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:(id)statistics forStatName:(id)name withRecencyMargin:(int64_t)margin maxNumberOfSuggestions:(int64_t)suggestions;
- (id)hyperRecentHeuristicSuggestionProxiesWithReferenceDate:(id)date predictionContextBundleId:(id)id;
- (id)hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics;
- (id)inPhoneCallHeuristicSuggestionProxiesWithBundleIds:(id)ids predictionContext:(id)context;
- (id)pastSharesAwareSuggestionProxiesForInteractionStatistics:(id)statistics;
- (id)pastSharesOfTopDomainURLAwareSuggestionProxiesForInteractionStatistics:(id)statistics;
- (id)pastSharesWithCurrentAppAwareSuggestionProxiesForInteractionStatistics:(id)statistics;
- (id)peopleAwareSuggestionProxiesForDetectedFaces:(id)faces;
- (id)peopleAwareSuggestionProxiesForInteractionStatistics:(id)statistics;
- (id)proxiesByRecencyUsingInteractions:(id)interactions startIndex:(unint64_t)index reason:(int64_t)reason allowNonSupportedBundleIDs:(BOOL)ds;
- (id)psr_inPhoneCallHeuristicSuggestionProxiesWithBundleIds:(id)ids predictionContext:(id)context interactionsStatistics:(id)statistics;
- (id)recentNonSystemSuggestionsForBundleIDs:(id)ds numberOfSuggestion:(unint64_t)suggestion;
- (id)returnDocumentToSender:(id)sender;
- (id)scenesBasedFeaturesAwareSuggestionProxiesForInteractionStatistics:(id)statistics forFeatureNames:(id)names;
- (id)valueForHeuristic:(id)heuristic parameter:(id)parameter;
- (int64_t)maxNumberOfSuggestionSlotsForHeuristic:(id)heuristic;
- (int64_t)recencyMarginInSecondsForHeuristic:(id)heuristic;
- (void)prepareRecencyCacheWithSupportedBundleIds:(id)ids;
- (void)updateModelProperties:(id)properties;
@end

@implementation _PSHeuristics

- (_PSHeuristics)initWithKnowledgeStore:(id)store interactionStore:(id)interactionStore contactResolver:(id)resolver shareSheetSupportedBundleIds:(id)ids messageInteractionCache:(id)cache
{
  storeCopy = store;
  interactionStoreCopy = interactionStore;
  resolverCopy = resolver;
  idsCopy = ids;
  cacheCopy = cache;
  v22.receiver = self;
  v22.super_class = _PSHeuristics;
  v18 = [(_PSHeuristics *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_knowledgeStore, store);
    objc_storeStrong(&v19->_interactionStore, interactionStore);
    objc_storeStrong(&v19->_contactResolver, resolver);
    objc_storeStrong(&v19->_messageInteractionCache, cache);
    v20 = +[_PSConfig defaultConfig];
    [(_PSHeuristics *)v19 updateModelProperties:v20];
    [(_PSHeuristics *)v19 prepareRecencyCacheWithSupportedBundleIds:idsCopy];
  }

  return v19;
}

- (id)valueForHeuristic:(id)heuristic parameter:(id)parameter
{
  v22 = *MEMORY[0x1E69E9840];
  heuristicCopy = heuristic;
  parameterCopy = parameter;
  v8 = [(NSDictionary *)self->_configOverrides objectForKeyedSubscript:heuristicCopy];
  v9 = [v8 objectForKeyedSubscript:parameterCopy];

  if (v9)
  {
    v10 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543874;
      v17 = heuristicCopy;
      v18 = 2114;
      v19 = parameterCopy;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_DEFAULT, "Using override for heuristic %{public}@, parameter %{public}@: %{public}@", &v16, 0x20u);
    }

    v11 = v9;
  }

  else
  {
    v12 = [(NSDictionary *)self->_config objectForKeyedSubscript:heuristicCopy];
    if (!v12)
    {
      v13 = +[_PSLogging heuristicsChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = heuristicCopy;
        _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_DEFAULT, "No config found for heuristic: %@", &v16, 0xCu);
      }
    }

    v11 = [v12 objectForKeyedSubscript:parameterCopy];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)updateModelProperties:(id)properties
{
  v32[3] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [propertiesCopy objectForKeyedSubscript:v6];
  config = self->_config;
  self->_config = v7;

  v9 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(_PSHeuristics *)&self->_config updateModelProperties:v9];
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [propertiesCopy objectForKeyedSubscript:v11];

  v13 = [v12 objectForKeyedSubscript:@"_PSHeuristicsPSLRecencyMargin"];
  -[_PSHeuristics setPslRecencyMargin:](self, "setPslRecencyMargin:", [v13 integerValue]);

  v31[0] = &unk_1F2D8B6A0;
  v14 = MEMORY[0x1E696AD98];
  v15 = [v12 objectForKeyedSubscript:@"_PSHeuristicsPSLBackfillLimit"];
  integerValue = [v15 integerValue];
  if (integerValue)
  {
    v17 = integerValue;
  }

  else
  {
    v17 = -1;
  }

  v18 = [v14 numberWithUnsignedLong:v17];
  v32[0] = v18;
  v31[1] = &unk_1F2D8B6B8;
  v19 = MEMORY[0x1E696AD98];
  v20 = [v12 objectForKeyedSubscript:@"_PSHeuristicsPSLMessagesRecencyLimit"];
  integerValue2 = [v20 integerValue];
  if (integerValue2)
  {
    v22 = integerValue2;
  }

  else
  {
    v22 = 3;
  }

  v23 = [v19 numberWithInteger:v22];
  v32[1] = v23;
  v31[2] = &unk_1F2D8B6D0;
  v24 = MEMORY[0x1E696AD98];
  v25 = [v12 objectForKeyedSubscript:@"_PSHeuristicsPSLShareSheetRecencyLimit"];
  integerValue3 = [v25 integerValue];
  if (integerValue3)
  {
    v27 = integerValue3;
  }

  else
  {
    v27 = 2;
  }

  v28 = [v24 numberWithInteger:v27];
  v32[2] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
  [(_PSHeuristics *)self setRecencyHeuristicLimitNumberOfProxiesByReason:v29];

  v30 = *MEMORY[0x1E69E9840];
}

- (double)thresholdForHeuristic:(id)heuristic
{
  v14 = *MEMORY[0x1E69E9840];
  heuristicCopy = heuristic;
  v5 = [(_PSHeuristics *)self valueForHeuristic:heuristicCopy parameter:@"threshold"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    v9 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = heuristicCopy;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "No threshold found for heuristic: %@", &v12, 0xCu);
    }

    v8 = 0.0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int64_t)maxNumberOfSuggestionSlotsForHeuristic:(id)heuristic
{
  v13 = *MEMORY[0x1E69E9840];
  heuristicCopy = heuristic;
  v5 = [(_PSHeuristics *)self valueForHeuristic:heuristicCopy parameter:@"maxNumberOfSuggestionSlots"];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    v8 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = heuristicCopy;
      _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "No slot limit found for heuristic: %@", &v11, 0xCu);
    }

    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (int64_t)recencyMarginInSecondsForHeuristic:(id)heuristic
{
  v13 = *MEMORY[0x1E69E9840];
  heuristicCopy = heuristic;
  v5 = [(_PSHeuristics *)self valueForHeuristic:heuristicCopy parameter:@"recencyMarginInSeconds"];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    v8 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = heuristicCopy;
      _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "No recency margin found for heuristic: %@", &v11, 0xCu);
    }

    integerValue = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (void)prepareRecencyCacheWithSupportedBundleIds:(id)ids
{
  v22[3] = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  if ([idsCopy count])
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@) AND (mechanism == %@)", idsCopy, &unk_1F2D8B6E8];
    v6 = [idsCopy mutableCopy];
    v7 = +[_PSConstants shareSheetTargetBundleIdMail];
    [v6 removeObject:v7];

    v8 = +[_PSConstants mobileMailBundleId];
    [v6 removeObject:v8];

    v9 = +[_PSConstants mobileMessagesBundleId];
    [v6 removeObject:v9];

    v10 = +[_PSConstants shareSheetTargetBundleIdMessages];
    [v6 addObject:v10];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(targetBundleId IN %@) AND (mechanism == %@)", v6, &unk_1F2D8B700];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@) AND (recipients.@count == 1) AND SUBQUERY(recipients, $recipient, $recipient.personId != nil).@count > 0", &unk_1F2D8C318];
    v13 = MEMORY[0x1E696AB28];
    v22[0] = v5;
    v22[1] = v11;
    v22[2] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    v15 = [v13 orPredicateWithSubpredicates:v14];

    interactionStore = [(_PSHeuristics *)self interactionStore];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59___PSHeuristics_prepareRecencyCacheWithSupportedBundleIds___block_invoke;
    v20[3] = &unk_1E7C25A70;
    v21 = v15;
    v17 = v15;
    v18 = [_PSInteractionStoreUtils interactionCacheFromStore:interactionStore size:1 queryPredicate:v17 filterBlock:v20];
    [(_PSHeuristics *)self setRecencyCache:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)recentNonSystemSuggestionsForBundleIDs:(id)ds numberOfSuggestion:(unint64_t)suggestion
{
  v47 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:dsCopy];
  v6 = MEMORY[0x1E695DFD8];
  v7 = +[_PSConstants mobileMessagesBundleId];
  v8 = +[_PSConstants shareSheetTargetBundleIdMessages];
  v9 = +[_PSConstants mobileMailBundleId];
  v10 = +[_PSConstants shareSheetTargetBundleIdMail];
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, 0}];
  [v5 minusSet:v11];

  selfCopy = self;
  interactionStore = [(_PSHeuristics *)self interactionStore];
  v36 = v5;
  v13 = [v5 copy];
  v14 = [_PSInteractionStoreUtils recentInteractionsFromStore:interactionStore bundleIDs:v13];

  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    v39 = *v43;
    do
    {
      v20 = 0;
      v41 = v18;
      do
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v42 + 1) + 8 * v20);
        derivedIntentIdentifier = [v21 derivedIntentIdentifier];
        if ([v21 mechanism] == 13)
        {
          [v21 targetBundleId];
        }

        else
        {
          [v21 bundleId];
        }
        v23 = ;
        v24 = v23;
        if (derivedIntentIdentifier)
        {
          v25 = v23 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          v26 = _PSSuggestionKey(v23, derivedIntentIdentifier);
          if (([v15 containsObject:v26] & 1) == 0)
          {
            v27 = v15;
            [v15 addObject:v26];
            knowledgeStore = [(_PSHeuristics *)selfCopy knowledgeStore];
            contactResolver = [(_PSHeuristics *)selfCopy contactResolver];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = [_PSSuggestion suggestionForBundleID:v24 derivedIntentIdentifier:derivedIntentIdentifier knowledgeStore:knowledgeStore contactResolver:contactResolver reason:@"Recent Non-System" reasonType:v31];

            if (v32)
            {
              [v38 addObject:v32];
            }

            v15 = v27;
            v19 = v39;
            v18 = v41;
          }
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v18);
  }

  v33 = [v38 copy];
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = [(_PSHeuristics *)self hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:statisticsCopy forStatName:@"timeSinceLastOutgoingInteraction" withRecencyMargin:[(_PSHeuristics *)self recencyMarginInSecondsForHeuristic:@"SuggestionProxyTypeHyperRecencyRewrite"] maxNumberOfSuggestions:[(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypeHyperRecencyRewrite"]];

  return v5;
}

- (id)hyperRecentCallHeuristicSuggestionProxiesForInteractionStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = [(_PSHeuristics *)self hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:statisticsCopy forStatName:@"timeSinceLastPhoneCallWithConversation" withRecencyMargin:[(_PSHeuristics *)self recencyMarginInSecondsForHeuristic:@"SuggestionProxyTypeHyperRecencyCallRewrite"] maxNumberOfSuggestions:[(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypeHyperRecencyCallRewrite"]];

  return v5;
}

- (id)hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics
{
  v98 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    selfCopy = self;
    *buf = 0;
    v91 = buf;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__8;
    v94 = __Block_byref_object_dispose__8;
    v95 = objc_opt_new();
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;

    v6 = objc_opt_new();
    v7 = BiomeLibrary();
    mLSE = [v7 MLSE];
    shareSheet = [mLSE ShareSheet];
    conversationUserInteraction = [shareSheet ConversationUserInteraction];

    reversed = [MEMORY[0x1E698F2D0] reversed];
    v11 = [conversationUserInteraction publisherWithOptions:reversed];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_134;
    v86[3] = &unk_1E7C25A98;
    v88 = v5;
    v89 = 0x4062C00000000000;
    v12 = v6;
    v87 = v12;
    v13 = [v11 sinkWithCompletion:&__block_literal_global_133 shouldContinue:v86];
    v65 = reversed;

    v14 = BiomeLibrary();
    v15 = [v14 App];
    inFocus = [v15 InFocus];

    reversed2 = [MEMORY[0x1E698F2D0] reversed];
    v16 = [inFocus publisherWithOptions:reversed2];
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_139;
    v82[3] = &unk_1E7C25A98;
    v84 = v5;
    v85 = 0x4062C00000000000;
    v17 = v12;
    v83 = v17;
    v18 = [v16 sinkWithCompletion:&__block_literal_global_138_0 shouldContinue:v82];

    [v17 sortUsingComparator:&__block_literal_global_146];
    v19 = [_PSHyperRecentActivity alloc];
    v20 = [MEMORY[0x1E695DF00] now];
    v21 = [(_PSHyperRecentActivity *)v19 initWithDate:v20 activityType:1 conversationId:0];
    [v17 insertObject:v21 atIndex:0];

    lastObject = [v17 lastObject];
    conversationId = [lastObject conversationId];
    if (conversationId)
    {
      lastObject2 = [v17 lastObject];
      v25 = [lastObject2 activityType] == 1;

      if (!v25)
      {
LABEL_6:
        v29 = objc_opt_new();
        v70 = objc_opt_new();
        firstObject = [v17 firstObject];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = v17;
        v31 = [obj countByEnumeratingWithState:&v78 objects:v97 count:16];
        if (v31)
        {
          v32 = *v79;
          do
          {
            v33 = 0;
            v34 = firstObject;
            do
            {
              if (*v79 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v78 + 1) + 8 * v33);
              if (![v35 activityType])
              {
                conversationId2 = [v35 conversationId];
                v37 = conversationId2 == 0;

                if (!v37)
                {
                  date = [v34 date];
                  [date timeIntervalSinceReferenceDate];
                  v40 = v39;
                  date2 = [v35 date];
                  [date2 timeIntervalSinceReferenceDate];
                  v43 = v42;

                  conversationId3 = [v35 conversationId];
                  v45 = [v70 objectForKeyedSubscript:conversationId3];
                  LOBYTE(date2) = v45 == 0;

                  v46 = v40 - v43;
                  v47 = MEMORY[0x1E696AD98];
                  if (date2)
                  {
                    v53 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
                    conversationId4 = [v35 conversationId];
                    [v29 setObject:v53 forKeyedSubscript:conversationId4];

                    date3 = [v34 date];
                    conversationId5 = [v35 conversationId];
                    [v70 setObject:date3 forKeyedSubscript:conversationId5];
                  }

                  else
                  {
                    date3 = [v35 conversationId];
                    conversationId5 = [v29 objectForKeyedSubscript:date3];
                    [conversationId5 doubleValue];
                    v51 = [v47 numberWithDouble:v46 + v50];
                    conversationId6 = [v35 conversationId];
                    [v29 setObject:v51 forKeyedSubscript:conversationId6];
                  }
                }
              }

              firstObject = v35;

              ++v33;
              v34 = firstObject;
            }

            while (v31 != v33);
            v31 = [obj countByEnumeratingWithState:&v78 objects:v97 count:16];
          }

          while (v31);
        }

        allKeys = [v29 allKeys];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_3;
        v75[3] = &unk_1E7C25AE0;
        v56 = v29;
        v76 = v56;
        v77 = 0x4000000000000000;
        v57 = [allKeys _pas_filteredArrayWithTest:v75];
        v58 = [v57 mutableCopy];

        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_4;
        v73[3] = &unk_1E7C25B08;
        v59 = v70;
        v74 = v59;
        [v58 sortUsingComparator:v73];
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_5;
        v72[3] = &unk_1E7C25B30;
        v72[4] = selfCopy;
        v72[5] = buf;
        [v58 enumerateObjectsUsingBlock:v72];
        if ([*(v91 + 5) count])
        {
          lastObject3 = [*(v91 + 5) lastObject];
          v96 = lastObject3;
          v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
        }

        else
        {
          v61 = MEMORY[0x1E695E0F0];
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_26;
      }

      v26 = [_PSHyperRecentActivity alloc];
      lastObject = [MEMORY[0x1E695DF00] now];
      v27 = [lastObject dateByAddingTimeInterval:-150.0];
      v28 = [(_PSHyperRecentActivity *)v26 initWithDate:v27 activityType:1 conversationId:0];
      [v17 addObject:v28];
    }

    goto LABEL_6;
  }

  v62 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v62, OS_LOG_TYPE_DEFAULT, "Feature flag is turned off, no hyperrecent-viewed-thread heuristics candidate boosted", buf, 2u);
  }

  v61 = MEMORY[0x1E695E0F0];
LABEL_26:
  v63 = *MEMORY[0x1E69E9840];

  return v61;
}

- (id)hyperRecentHeuristicIncomingSuggestionProxiesForInteractionStatistics:(id)statistics
{
  v10[1] = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  v5 = [(_PSHeuristics *)self hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:statisticsCopy forStatName:@"timeSinceLastIncomingInteraction" withRecencyMargin:[(_PSHeuristics *)self recencyMarginInSecondsForHeuristic:@"SuggestionProxyTypeHyperRecencyIncomingRewrite"] maxNumberOfSuggestions:[(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypeHyperRecencyIncomingRewrite"]];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)hyperRecentHeuristicSuggestionProxiesForInteractionStatistics:(id)statistics forStatName:(id)name withRecencyMargin:(int64_t)margin maxNumberOfSuggestions:(int64_t)suggestions
{
  statisticsCopy = statistics;
  nameCopy = name;
  conversationIds = [statisticsCopy conversationIds];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __132___PSHeuristics_hyperRecentHeuristicSuggestionProxiesForInteractionStatistics_forStatName_withRecencyMargin_maxNumberOfSuggestions___block_invoke;
  v31[3] = &unk_1E7C25B58;
  v13 = statisticsCopy;
  v32 = v13;
  v14 = nameCopy;
  v33 = v14;
  marginCopy = margin;
  v15 = [conversationIds _pas_filteredArrayWithTest:v31];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __132___PSHeuristics_hyperRecentHeuristicSuggestionProxiesForInteractionStatistics_forStatName_withRecencyMargin_maxNumberOfSuggestions___block_invoke_155;
  v28[3] = &unk_1E7C25B80;
  v16 = v13;
  v29 = v16;
  v17 = v14;
  v30 = v17;
  v18 = [v15 sortedArrayUsingComparator:v28];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __132___PSHeuristics_hyperRecentHeuristicSuggestionProxiesForInteractionStatistics_forStatName_withRecencyMargin_maxNumberOfSuggestions___block_invoke_2;
  v23[3] = &unk_1E7C25BA8;
  v24 = v16;
  v25 = v17;
  selfCopy = self;
  suggestionsCopy = suggestions;
  v19 = v17;
  v20 = v16;
  v21 = [v18 _pas_mappedArrayWithIndexedTransform:v23];

  return v21;
}

- (id)peopleAwareSuggestionProxiesForInteractionStatistics:(id)statistics
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = @"maxIoUIoUSharesOfPeopleInPhotoWithConversation";
  v4 = MEMORY[0x1E695DEC8];
  statisticsCopy = statistics;
  v6 = [v4 arrayWithObjects:&v11 count:1];
  [(_PSHeuristics *)self thresholdForHeuristic:@"SuggestionProxyTypePASS", v11, v12];
  v8 = [(_PSHeuristics *)self heuristicsFromInteractionsStatistics:statisticsCopy forStatsNames:v6 threshold:[(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypePASS"] maxNumberOfSuggestions:@"PASS heuristic v2 - PS Rewrite" reason:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)peopleAwareSuggestionProxiesForDetectedFaces:(id)faces
{
  v35 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  v4 = objc_opt_new();
  v5 = [(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypePASSv1"];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v6 = getGDViewServiceClass_softClass;
  v33 = getGDViewServiceClass_softClass;
  if (!getGDViewServiceClass_softClass)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __getGDViewServiceClass_block_invoke;
    v29[3] = &unk_1E7C23BF0;
    v29[4] = &v30;
    __getGDViewServiceClass_block_invoke(v29);
    v6 = v31[3];
  }

  v7 = v6;
  _Block_object_dispose(&v30, 8);
  defaultService = [v6 defaultService];
  v28 = 0;
  v8 = [defaultService visualIdentifierViewWithError:&v28];
  v19 = v28;
  if (v19)
  {
    v9 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_PSHeuristics *)v19 peopleAwareSuggestionProxiesForDetectedFaces:v9];
    }
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62___PSHeuristics_peopleAwareSuggestionProxiesForDetectedFaces___block_invoke;
  v26[3] = &unk_1E7C25BD0;
  v10 = v8;
  v27 = v10;
  [facesCopy _pas_mappedArrayWithTransform:v26];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v11 = v23 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v12)
  {
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        LOBYTE(v18) = 0;
        v15 = [[_PSSuggestionProxy alloc] initWithBundleID:0 interactionRecipients:0 contactID:*(*(&v22 + 1) + 8 * i) handle:0 reason:@"PASS heuristic v1 - PS Rewrite" reasonType:@"PASS heuristic v1 - PS Rewrite" useGroupsWhenFindingRecipient:v18];
        if (v15)
        {
          [v4 addObject:v15];
          if ([v4 count] >= v5)
          {

            goto LABEL_18;
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v22 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)pastSharesWithCurrentAppAwareSuggestionProxiesForInteractionStatistics:(id)statistics
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"numberOfSharesFromCurrentAppWithConversation";
  v11[1] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  v4 = MEMORY[0x1E695DEC8];
  statisticsCopy = statistics;
  v6 = [v4 arrayWithObjects:v11 count:2];
  [(_PSHeuristics *)self thresholdForHeuristic:@"SuggestionProxyTypeFrequencyOfSharesFromCurrentApp"];
  v8 = [(_PSHeuristics *)self heuristicsFromInteractionsStatistics:statisticsCopy forStatsNames:v6 threshold:[(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypeFrequencyOfSharesFromCurrentApp"] maxNumberOfSuggestions:@"PastSharesWithCurrentApp heuristic - PS Rewrite" reason:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)pastSharesAwareSuggestionProxiesForInteractionStatistics:(id)statistics
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"numberOfSharesWithConversation";
  v11[1] = @"numberOfEngagedSuggestionsWithConversation";
  v4 = MEMORY[0x1E695DEC8];
  statisticsCopy = statistics;
  v6 = [v4 arrayWithObjects:v11 count:2];
  [(_PSHeuristics *)self thresholdForHeuristic:@"SuggestionProxyTypeFrequencyOfShares"];
  v8 = [(_PSHeuristics *)self heuristicsFromInteractionsStatistics:statisticsCopy forStatsNames:v6 threshold:[(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypeFrequencyOfShares"] maxNumberOfSuggestions:@"PastSharesHeuristic - PS Rewrite" reason:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)scenesBasedFeaturesAwareSuggestionProxiesForInteractionStatistics:(id)statistics forFeatureNames:(id)names
{
  namesCopy = names;
  statisticsCopy = statistics;
  [(_PSHeuristics *)self thresholdForHeuristic:@"SuggestionProxyTypeSASS"];
  v9 = [(_PSHeuristics *)self heuristicsFromInteractionsStatistics:statisticsCopy forStatsNames:namesCopy threshold:[(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypeSASS"] maxNumberOfSuggestions:@"SASS heuristic - PS Rewrite" reason:v8];

  return v9;
}

- (id)pastSharesOfTopDomainURLAwareSuggestionProxiesForInteractionStatistics:(id)statistics
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"numberOfSharesOfTopDomainURLWithConversation";
  v11[1] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  v4 = MEMORY[0x1E695DEC8];
  statisticsCopy = statistics;
  v6 = [v4 arrayWithObjects:v11 count:2];
  [(_PSHeuristics *)self thresholdForHeuristic:@"SuggestionProxyTypeFrequencyOfTopDomainURL"];
  v8 = [(_PSHeuristics *)self heuristicsFromInteractionsStatistics:statisticsCopy forStatsNames:v6 threshold:[(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypeFrequencyOfTopDomainURL"] maxNumberOfSuggestions:@"PastSharesOfTopDomainURLHeuristic - PS Rewrite" reason:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)heuristicsFromInteractionsStatistics:(id)statistics forStatsNames:(id)names threshold:(double)threshold maxNumberOfSuggestions:(int)suggestions reason:(id)reason
{
  statisticsCopy = statistics;
  namesCopy = names;
  reasonCopy = reason;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke;
  v40[3] = &unk_1E7C25C20;
  v15 = statisticsCopy;
  v41 = v15;
  v16 = MEMORY[0x1B8C8C060](v40);
  conversationIds = [v15 conversationIds];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke_3;
  v36[3] = &unk_1E7C25C48;
  v18 = v16;
  v38 = v18;
  v19 = namesCopy;
  v37 = v19;
  thresholdCopy = threshold;
  v20 = [conversationIds _pas_filteredArrayWithTest:v36];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke_4;
  v33[3] = &unk_1E7C25C70;
  v34 = v19;
  v35 = v18;
  v21 = v19;
  v22 = v18;
  v23 = [v20 sortedArrayUsingComparator:v33];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke_5;
  v28[3] = &unk_1E7C25C98;
  suggestionsCopy = suggestions;
  v29 = v15;
  v30 = reasonCopy;
  selfCopy = self;
  v24 = reasonCopy;
  v25 = v15;
  v26 = [v23 _pas_mappedArrayWithIndexedTransform:v28];

  return v26;
}

- (id)hyperRecentHeuristicSuggestionProxiesWithReferenceDate:(id)date predictionContextBundleId:(id)id
{
  v39[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  [(_PSHeuristics *)self pslRecencyMargin];
  v7 = [dateCopy dateByAddingTimeInterval:-v6];

  recencyCache = [(_PSHeuristics *)self recencyCache];
  interactions = [recencyCache interactions];
  v10 = MEMORY[0x1E696AE18];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __98___PSHeuristics_hyperRecentHeuristicSuggestionProxiesWithReferenceDate_predictionContextBundleId___block_invoke;
  v37[3] = &unk_1E7C25CC0;
  v11 = v7;
  v38 = v11;
  v12 = [v10 predicateWithBlock:v37];
  v13 = [interactions filteredArrayUsingPredicate:v12];

  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    if ([firstObject mechanism]== 4 || [firstObject mechanism]== 13)
    {
      if ([firstObject mechanism]== 13)
      {
        targetBundleId = [firstObject targetBundleId];
        v16 = +[_PSConstants shareSheetTargetBundleIdMessages];
        if ([targetBundleId isEqualToString:v16])
        {
          +[_PSConstants mobileMessagesBundleId];
        }

        else
        {
          [firstObject targetBundleId];
        }
        bundleId = ;

        targetBundleId2 = [firstObject targetBundleId];
        v20 = +[_PSConstants shareSheetTargetBundleIdMessages];
      }

      else
      {
        bundleId = [firstObject bundleId];
        targetBundleId2 = [firstObject bundleId];
        v20 = +[_PSConstants mobileMessagesBundleId];
      }

      v29 = v20;
      if ([targetBundleId2 isEqualToString:v20])
      {
        [firstObject domainIdentifier];
      }

      else
      {
        [firstObject derivedIntentIdentifier];
      }
      recipients = ;

      v30 = [_PSSuggestionProxy alloc];
      v31 = objc_opt_class();
      firstObject2 = NSStringFromClass(v31);
      v28 = [(_PSSuggestionProxy *)v30 initWithBundleID:bundleId interactionRecipients:recipients contactID:0 reason:@"Hyper-recent message heuristic" reasonType:firstObject2];
    }

    else
    {
      v35 = [_PSSuggestionProxy alloc];
      bundleId = +[_PSConstants mobileMessagesBundleId];
      recipients = [firstObject recipients];
      firstObject2 = [recipients firstObject];
      personId = [firstObject2 personId];
      recipients2 = [firstObject recipients];
      [recipients2 firstObject];
      v24 = v36 = v11;
      identifier = [v24 identifier];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [(_PSSuggestionProxy *)v35 initWithBundleID:bundleId interactionRecipients:0 contactID:personId handle:identifier reason:@"Hyper-recent call heuristic" reasonType:v27];

      v11 = v36;
    }

    v39[0] = v28;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  }

  else
  {
    firstObject = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEBUG))
    {
      [_PSHeuristics hyperRecentHeuristicSuggestionProxiesWithReferenceDate:firstObject predictionContextBundleId:?];
    }

    v17 = MEMORY[0x1E695E0F0];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)psr_inPhoneCallHeuristicSuggestionProxiesWithBundleIds:(id)ids predictionContext:(id)context interactionsStatistics:(id)statistics
{
  v5 = objc_opt_new();
  userContext = [MEMORY[0x1E6997A60] userContext];
  keyPathForActiveCall = [MEMORY[0x1E6997A68] keyPathForActiveCall];
  v8 = [userContext objectForKeyedSubscript:keyPathForActiveCall];
  if (v8)
  {
    calleeHandlesKey = [MEMORY[0x1E6997A68] calleeHandlesKey];
    v10 = [v8 valueForKey:calleeHandlesKey];

    v12 = chatGUIDFromHandlesBlock_block_invoke(v11, v10);
    v13 = [_PSSuggestionProxy alloc];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [(_PSSuggestionProxy *)v13 initWithBundleID:@"com.apple.MobileSMS" interactionRecipients:v12 contactID:0 reason:@"In call heuristic" reasonType:v15];
    [v5 addObject:v16];

    v17 = v5;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (id)inPhoneCallHeuristicSuggestionProxiesWithBundleIds:(id)ids predictionContext:(id)context
{
  v90[1] = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  contextCopy = context;
  v5 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_INFO, "Looking to get in phone call heuristic", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  userContext = [MEMORY[0x1E6997A60] userContext];
  keyPathForActiveCall = [MEMORY[0x1E6997A68] keyPathForActiveCall];
  v7 = [userContext objectForKeyedSubscript:keyPathForActiveCall];
  if (!v7)
  {
    v12 = MEMORY[0x1E695E0F0];
    goto LABEL_73;
  }

  calleeContactIDsKey = [MEMORY[0x1E6997A68] calleeContactIDsKey];
  v76 = [v7 valueForKey:calleeContactIDsKey];

  calleeHandlesKey = [MEMORY[0x1E6997A68] calleeHandlesKey];
  v10 = [v7 valueForKey:calleeHandlesKey];

  bundleIDKey = [MEMORY[0x1E6997A68] bundleIDKey];
  v70 = [v7 valueForKey:bundleIDKey];

  if (v70)
  {
    v90[0] = v70;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:1];
  }

  else
  {
    v68 = 0;
  }

  v77 = +[_PSConstants mobileMessagesBundleId];
  if ([v10 count] == 1)
  {
    firstObject = [v10 firstObject];
    v71 = 0;
  }

  else
  {
    if ([v10 count] < 2)
    {
      v71 = 0;
    }

    else
    {
      v71 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v10];
    }

    firstObject = 0;
  }

  if (v76 && [v76 count] == 1)
  {
    v13 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_INFO, "Found a donation in the context store on an active call where calleeContactIDsKey is set", buf, 2u);
    }

    firstObject2 = [v76 firstObject];
    v75 = 0;
  }

  else
  {
    if (v71)
    {
      v15 = +[_PSLogging heuristicsChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_INFO, "Found a donation in the context store on an active call where calleeHandlesKey is set", buf, 2u);
      }

      interactionStore = [(_PSHeuristics *)self interactionStore];
      messageInteractionCache = [(_PSHeuristics *)self messageInteractionCache];
      v18 = [_PSInteractionStoreUtils conversationIdWithExactMatchWithContactHandles:v71 store:interactionStore bundleIds:idsCopy messageInteractionCache:messageInteractionCache];

      if ([v18 count])
      {
        allValues = [v18 allValues];
        firstObject3 = [allValues firstObject];

        allKeys = [v18 allKeys];
        firstObject4 = [allKeys firstObject];

        if ([firstObject3 length] && objc_msgSend(firstObject4, "length"))
        {
          v75 = firstObject3;
        }

        else
        {
          v75 = 0;
        }
      }

      else
      {
        v75 = 0;
      }
    }

    else
    {
      v75 = 0;
    }

    firstObject2 = 0;
  }

  v23 = +[_PSConstants mobileMessagesBundleId];
  if ([v77 isEqualToString:v23])
  {

    if (!(firstObject | firstObject2))
    {
      groupName = 0;
      v26 = 0;
      goto LABEL_55;
    }

    if (firstObject2)
    {
      v24 = objc_alloc(MEMORY[0x1E695DFD8]);
      v89 = firstObject2;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
      v23 = [v24 initWithArray:v25];
    }

    else
    {
      v23 = 0;
    }

    if (firstObject)
    {
      v88 = firstObject;
      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    }

    else
    {
      v67 = 0;
    }

    interactionStore2 = [(_PSHeuristics *)self interactionStore];
    messageInteractionCache2 = [(_PSHeuristics *)self messageInteractionCache];
    v66 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrContactIds:v67 identifiers:v23 account:0 directions:&unk_1F2D8C330 mechanisms:&unk_1F2D8C348 bundleIds:v68 store:interactionStore2 fetchLimit:1 messageInteractionCache:messageInteractionCache2];

    firstObject5 = [v66 firstObject];
    v30 = firstObject5;
    if (!firstObject5 || ([firstObject5 bundleId], v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 == 0, v31, v32))
    {
      groupName = 0;
    }

    else
    {
      v33 = v70;

      groupName = [v30 groupName];
      bundleId = [v30 bundleId];
      v35 = +[_PSConstants mobileMessagesBundleId];
      v36 = [bundleId isEqualToString:v35];

      if (v36)
      {
        v77 = v33;
      }

      else
      {
        derivedIntentIdentifier = [v30 derivedIntentIdentifier];

        v77 = v33;
        v75 = derivedIntentIdentifier;
      }
    }

    contentURL = [v30 contentURL];

    if (contentURL)
    {
      v81 = 0;
      v82 = &v81;
      v83 = 0x2050000000;
      v39 = getINImageClass_softClass_1;
      v84 = getINImageClass_softClass_1;
      if (!getINImageClass_softClass_1)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getINImageClass_block_invoke_1;
        v86 = &unk_1E7C23BF0;
        v87[0] = &v81;
        __getINImageClass_block_invoke_1(buf);
        v39 = v82[3];
      }

      v40 = v39;
      _Block_object_dispose(&v81, 8);
      contentURL2 = [v30 contentURL];
      v26 = [v39 imageWithURL:contentURL2];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    groupName = 0;
    v26 = 0;
  }

LABEL_55:
  v42 = [_PSSuggestionProxy alloc];
  v43 = +[_PSConstants inCallHeuristicReason];
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  if (!(firstObject | firstObject2 | v75))
  {
    v46 = [(_PSSuggestionProxy *)v42 initWithBundleID:v77 interactionRecipients:0 handles:v10 reason:v43 reasonType:v45];

    v54 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [(_PSHeuristics *)v10 inPhoneCallHeuristicSuggestionProxiesWithBundleIds:v46 predictionContext:v54];
    }

    [v6 addObject:v46];
    if ([contextCopy isCollaborationAvailable])
    {
      v55 = [_PSSuggestionProxy alloc];
      v49 = +[_PSConstants collaborationSuggestionBundleId];
      v50 = +[_PSConstants inCallCollaborationHeuristicReason];
      v56 = objc_opt_class();
      v52 = NSStringFromClass(v56);
      v53 = [(_PSSuggestionProxy *)v55 initWithBundleID:v49 interactionRecipients:0 handles:v10 reason:v50 reasonType:v52];
      goto LABEL_64;
    }

LABEL_65:
    v57 = 0;
    goto LABEL_66;
  }

  LOBYTE(v64) = 0;
  v46 = [(_PSSuggestionProxy *)v42 initWithBundleID:v77 interactionRecipients:v75 contactID:firstObject2 handles:v10 reason:v43 reasonType:v45 useGroupsWhenFindingRecipient:v64 groupName:groupName image:v26];

  v47 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = v77;
    *&buf[12] = 2112;
    *&buf[14] = v75;
    *&buf[22] = 2112;
    v86 = firstObject2;
    LOWORD(v87[0]) = 2112;
    *(v87 + 2) = firstObject;
    _os_log_debug_impl(&dword_1B5ED1000, v47, OS_LOG_TYPE_DEBUG, "bundleId: %@, interactionRecipients: %@, contact: %@, handle: %@", buf, 0x2Au);
  }

  [v6 addObject:v46];
  if (![contextCopy isCollaborationAvailable])
  {
    goto LABEL_65;
  }

  v48 = [_PSSuggestionProxy alloc];
  v49 = +[_PSConstants collaborationSuggestionBundleId];
  v50 = +[_PSConstants inCallCollaborationHeuristicReason];
  v51 = objc_opt_class();
  v52 = NSStringFromClass(v51);
  LOBYTE(v65) = 0;
  v53 = [(_PSSuggestionProxy *)v48 initWithBundleID:v49 interactionRecipients:v75 contactID:firstObject2 handles:v10 reason:v50 reasonType:v52 useGroupsWhenFindingRecipient:v65 groupName:groupName image:v26];
LABEL_64:
  v57 = v53;

LABEL_66:
  if (v57)
  {
    [v6 addObject:v57];
  }

  v58 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 138478595;
    *&buf[4] = v76;
    *&buf[12] = 2113;
    *&buf[14] = v10;
    *&buf[22] = 2113;
    v86 = v75;
    LOWORD(v87[0]) = 2113;
    *(v87 + 2) = v77;
    _os_log_impl(&dword_1B5ED1000, v58, OS_LOG_TYPE_INFO, "Active call donation, contactsIds: %{private}@, handles: %{private}@, interactionRecipients: %{private}@, bundleId: %{private}@", buf, 0x2Au);
  }

  v59 = [(_PSHeuristics *)self maxNumberOfSuggestionSlotsForHeuristic:@"SuggestionProxyTypeInCall"];
  if (v59 < [v6 count])
  {
    v60 = [v6 subarrayWithRange:{0, v59}];
    v61 = [v60 mutableCopy];

    v6 = v61;
  }

  v6 = v6;

  v12 = v6;
LABEL_73:

  v62 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)templateForPhoneCallHeuristicFromSuggestionProxy:(id)proxy
{
  v41[1] = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  interactionRecipients = [proxyCopy interactionRecipients];
  v7 = interactionRecipients;
  if (interactionRecipients)
  {
    uUIDString = interactionRecipients;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  contactID = [proxyCopy contactID];
  if (contactID)
  {
    v10 = contactID;
    handle = [proxyCopy handle];

    if (handle)
    {
      contactID2 = [proxyCopy contactID];
      v41[0] = contactID2;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];

      contactID3 = [proxyCopy contactID];
      v39 = contactID3;
      handle2 = [proxyCopy handle];
      v40 = handle2;
      handle = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

      goto LABEL_9;
    }
  }

  else
  {
    handle = 0;
  }

  v31 = 0;
LABEL_9:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  handles = [proxyCopy handles];
  v16 = [handles countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(handles);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        if ([v20 containsString:@"@"])
        {
          v21 = v5;
        }

        else
        {
          v21 = v4;
        }

        [v21 addObject:v20];
      }

      v17 = [handles countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v17);
  }

  v22 = [_PSSuggestionTemplate alloc];
  bundleID = [proxyCopy bundleID];
  image = [proxyCopy image];
  groupName = [proxyCopy groupName];
  reason = [proxyCopy reason];
  v27 = NSStringFromClass(self);
  v30 = [(_PSSuggestionTemplate *)v22 initWithBundleID:bundleID interactionRecipients:uUIDString image:image groupName:groupName recipientContactIDs:v31 recipientEmailAddresses:v5 recipientPhoneNumbers:v4 recipientDisplayNames:0 contactIdToHandleMapping:handle reason:reason reasonType:v27];

  v28 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)PSHeuristicsRecencyReasonToString:(int64_t)string
{
  if (string > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7C25D40[string];
  }
}

- (id)proxiesByRecencyUsingInteractions:(id)interactions startIndex:(unint64_t)index reason:(int64_t)reason allowNonSupportedBundleIDs:(BOOL)ds
{
  interactionsCopy = interactions;
  recencyHeuristicLimitNumberOfProxiesByReason = [(_PSHeuristics *)self recencyHeuristicLimitNumberOfProxiesByReason];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v13 = [recencyHeuristicLimitNumberOfProxiesByReason objectForKeyedSubscript:v12];
  integerValue = [v13 integerValue];

  v39 = [_PSHeuristics PSHeuristicsRecencyReasonToString:reason];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v16 = _PSShareSheetExtensionBundleIDToAppBundleIDMapping(ds);
  if ([interactionsCopy count] > index)
  {
    v38 = v16;
    do
    {
      if ([orderedSet count] >= integerValue)
      {
        break;
      }

      v17 = [interactionsCopy objectAtIndexedSubscript:index];
      bundleId = [v17 bundleId];
      if ([v17 mechanism] == 13)
      {
        targetBundleId = [v17 targetBundleId];

        if (targetBundleId)
        {
          targetBundleId2 = [v17 targetBundleId];

          targetBundleId3 = [v17 targetBundleId];
          v22 = [v16 objectForKey:targetBundleId3];

          if (v22)
          {
            targetBundleId4 = [v17 targetBundleId];
            bundleId = [v16 objectForKeyedSubscript:targetBundleId4];
          }

          else
          {
            bundleId = targetBundleId2;
          }
        }
      }

      v24 = +[_PSConstants mobileMessagesBundleId];
      v25 = [bundleId isEqualToString:v24];

      if (v25)
      {
        v26 = [_PSSuggestionProxy alloc];
        domainIdentifier = [v17 domainIdentifier];
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [(_PSSuggestionProxy *)v26 initWithBundleID:bundleId interactionRecipients:domainIdentifier contactID:0 reason:v39 reasonType:v29];

        if (v30)
        {
          goto LABEL_11;
        }
      }

      else
      {
        derivedIntentIdentifier = [v17 derivedIntentIdentifier];

        if (!derivedIntentIdentifier)
        {
          goto LABEL_13;
        }

        v32 = [_PSSuggestionProxy alloc];
        derivedIntentIdentifier2 = [v17 derivedIntentIdentifier];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v30 = [(_PSSuggestionProxy *)v32 initWithBundleID:bundleId interactionRecipients:derivedIntentIdentifier2 contactID:0 reason:v39 reasonType:v35];

        if (v30)
        {
LABEL_11:
          [orderedSet addObject:v30];
        }
      }

      v16 = v38;
LABEL_13:

      ++index;
    }

    while (index < [interactionsCopy count]);
  }

  array = [orderedSet array];

  return array;
}

- (id)returnDocumentToSender:(id)sender
{
  v70 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  attachments = [senderCopy attachments];
  v47 = objc_opt_new();
  v61 = 0;
  v62 = &v61;
  v63 = 0x2050000000;
  v4 = getSYDocumentWorkflowsClientClass_softClass;
  v64 = getSYDocumentWorkflowsClientClass_softClass;
  if (!getSYDocumentWorkflowsClientClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v67 = __getSYDocumentWorkflowsClientClass_block_invoke;
    v68 = &unk_1E7C23BF0;
    v69 = &v61;
    SynapseLibraryCore();
    Class = objc_getClass("SYDocumentWorkflowsClient");
    *(v69[1] + 24) = Class;
    getSYDocumentWorkflowsClientClass_softClass = *(v69[1] + 24);
    v4 = v62[3];
  }

  v6 = v4;
  _Block_object_dispose(&v61, 8);
  v52 = objc_alloc_init(v4);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = attachments;
  v7 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v7)
  {
    v54 = *v58;
    do
    {
      v8 = 0;
      do
      {
        if (*v58 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * v8);
        contentURL = [v9 contentURL];
        if (!contentURL)
        {
          goto LABEL_26;
        }

        contentURL2 = [v9 contentURL];
        if (([contentURL2 isFileURL] & 1) == 0)
        {

LABEL_26:
          v20 = +[_PSLogging heuristicsChannel];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [(_PSHeuristics *)&v55 returnDocumentToSender:v56, v20];
          }

          goto LABEL_28;
        }

        contentURLSandboxExtension = [v9 contentURLSandboxExtension];
        v13 = contentURLSandboxExtension == 0;

        if (v13)
        {
          goto LABEL_26;
        }

        contentURLSandboxExtension2 = [v9 contentURLSandboxExtension];
        v15 = contentURLSandboxExtension2;
        [contentURLSandboxExtension2 bytes];
        sandbox_extension_consume();

        v61 = 0;
        v62 = &v61;
        v63 = 0x2050000000;
        v16 = getSYDocumentAttributesClass_softClass;
        v64 = getSYDocumentAttributesClass_softClass;
        if (!getSYDocumentAttributesClass_softClass)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v67 = __getSYDocumentAttributesClass_block_invoke;
          v68 = &unk_1E7C23BF0;
          v69 = &v61;
          SynapseLibraryCore();
          v17 = objc_getClass("SYDocumentAttributes");
          *(v69[1] + 24) = v17;
          getSYDocumentAttributesClass_softClass = *(v69[1] + 24);
          v16 = v62[3];
        }

        v18 = v16;
        _Block_object_dispose(&v61, 8);
        contentURL3 = [v9 contentURL];
        v20 = [v16 documentAttributesForFileAtURL:contentURL3];

        sender = [v20 sender];
        handle = [sender handle];

        if (!handle)
        {
          goto LABEL_24;
        }

        v23 = +[_PSLogging heuristicsChannel];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_INFO, "Non-nil attributes fetched from Synapse", &buf, 2u);
        }

        v61 = 0;
        v62 = &v61;
        v63 = 0x2050000000;
        v24 = getSYReturnToDocumentRequestClass_softClass;
        v64 = getSYReturnToDocumentRequestClass_softClass;
        if (!getSYReturnToDocumentRequestClass_softClass)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v67 = __getSYReturnToDocumentRequestClass_block_invoke;
          v68 = &unk_1E7C23BF0;
          v69 = &v61;
          SynapseLibraryCore();
          v25 = objc_getClass("SYReturnToDocumentRequest");
          *(v69[1] + 24) = v25;
          getSYReturnToDocumentRequestClass_softClass = *(v69[1] + 24);
          v24 = v62[3];
        }

        v26 = v24;
        _Block_object_dispose(&v61, 8);
        v27 = objc_alloc_init(v24);
        [v27 setDocumentAttributes:v20];
        v28 = NSSelectorFromString(&cfstr_Canperformrequ.isa);
        v29 = objc_opt_respondsToSelector();
        v30 = +[_PSLogging heuristicsChannel];
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
        if (v29)
        {
          if (v31)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_INFO, "Can perform request is available from Synapse", &buf, 2u);
          }

          if (([v52 methodForSelector:v28])(v52, v28, v27, 0))
          {
            sender2 = [v20 sender];
            v32 = [_PSSuggestionProxy alloc];
            sourceBundleIdentifier = [v20 sourceBundleIdentifier];
            v33 = MEMORY[0x1E69978D0];
            handle2 = [sender2 handle];
            v48 = [v33 generateConversationIdFromHandle:handle2];
            handle3 = [sender2 handle];
            v35 = +[_PSConstants returnToSenderReason];
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            preferredFormattedName = [sender2 preferredFormattedName];
            v39 = [(_PSSuggestionProxy *)v32 initWithBundleID:sourceBundleIdentifier interactionRecipients:v48 contactID:0 handle:handle3 reason:v35 reasonType:v37 groupName:preferredFormattedName image:0];

            if (v39)
            {
              [v47 addObject:v39];
            }

LABEL_24:
            sandbox_extension_release();
            goto LABEL_28;
          }
        }

        else
        {
          if (v31)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_INFO, "Synapse SPI not available", &buf, 2u);
          }
        }

        v40 = +[_PSLogging heuristicsChannel];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          contentURL4 = [v9 contentURL];
          LODWORD(buf) = 138477827;
          *(&buf + 4) = contentURL4;
          _os_log_impl(&dword_1B5ED1000, v40, OS_LOG_TYPE_INFO, "Synapse could not perform request for %{private}@", &buf, 0xCu);
        }

LABEL_28:
        ++v8;
      }

      while (v7 != v8);
      v42 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      v7 = v42;
    }

    while (v42);
  }

  if ([v47 count] <= 1)
  {
    v43 = v47;
  }

  else
  {
    v43 = MEMORY[0x1E695E0F0];
  }

  v44 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)hourOfDayProbabilitiesToInteractWithContacts:(id)contacts
{
  v90 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  context = objc_autoreleasePoolPush();
  v53 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = contactsCopy;
  v56 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (v56)
  {
    v54 = *v82;
    v4 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v82 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v81 + 1) + 8 * i);
        identifier = [v6 identifier];
        if (identifier)
        {
          v62 = i;
          array = [*(v4 + 3952) array];
          emailAddresses = [v6 emailAddresses];
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v10 = [emailAddresses countByEnumeratingWithState:&v77 objects:v88 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v78;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v78 != v12)
                {
                  objc_enumerationMutation(emailAddresses);
                }

                value = [*(*(&v77 + 1) + 8 * j) value];
                if ([value length])
                {
                  [array addObject:value];
                }
              }

              v11 = [emailAddresses countByEnumeratingWithState:&v77 objects:v88 count:16];
            }

            while (v11);
          }

          array2 = [*(v4 + 3952) array];
          phoneNumbers = [v6 phoneNumbers];
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v63 = phoneNumbers;
          v17 = [phoneNumbers countByEnumeratingWithState:&v73 objects:v87 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v74;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v74 != v19)
                {
                  objc_enumerationMutation(v63);
                }

                value2 = [*(*(&v73 + 1) + 8 * k) value];
                unformattedInternationalStringValue = [value2 unformattedInternationalStringValue];

                if ([unformattedInternationalStringValue length])
                {
                  [array2 addObject:unformattedInternationalStringValue];
                }
              }

              v18 = [v63 countByEnumeratingWithState:&v73 objects:v87 count:16];
            }

            while (v18);
          }

          v58 = array2;
          v59 = emailAddresses;
          v60 = array;
          v61 = identifier;
          v23 = [array2 arrayByAddingObjectsFromArray:array];
          interactionStore = [(_PSHeuristics *)self interactionStore];
          v57 = v23;
          v25 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:v23 account:0 directions:&unk_1F2D8C360 mechanisms:0 bundleIds:0 store:interactionStore fetchLimit:2000];

          v26 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:24];
          v55 = [v25 count];
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v64 = v25;
          v28 = [v64 countByEnumeratingWithState:&v69 objects:v86 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v70;
            do
            {
              for (m = 0; m != v29; ++m)
              {
                if (*v70 != v30)
                {
                  objc_enumerationMutation(v64);
                }

                startDate = [*(*(&v69 + 1) + 8 * m) startDate];
                v33 = [currentCalendar components:32 fromDate:startDate];

                v34 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v33, "hour")}];
                v35 = MEMORY[0x1E696AD98];
                v36 = [v26 objectForKeyedSubscript:v34];
                v37 = [v35 numberWithInteger:{objc_msgSend(v36, "integerValue") + 1}];
                [v26 setObject:v37 forKeyedSubscript:v34];
              }

              v29 = [v64 countByEnumeratingWithState:&v69 objects:v86 count:16];
            }

            while (v29);
          }

          v38 = [v26 mutableCopy];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v39 = v26;
          v40 = [v39 countByEnumeratingWithState:&v65 objects:v85 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v66;
            do
            {
              for (n = 0; n != v41; ++n)
              {
                if (*v66 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v65 + 1) + 8 * n);
                v45 = MEMORY[0x1E696AD98];
                v46 = [v38 objectForKeyedSubscript:v44];
                v47 = [v45 numberWithDouble:{objc_msgSend(v46, "integerValue") / v55}];
                [v38 setObject:v47 forKeyedSubscript:v44];
              }

              v41 = [v39 countByEnumeratingWithState:&v65 objects:v85 count:16];
            }

            while (v41);
          }

          identifier = v61;
          [v53 setObject:v38 forKeyedSubscript:v61];

          v4 = 0x1E695D000;
          i = v62;
        }
      }

      v56 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
    }

    while (v56);
  }

  objc_autoreleasePoolPop(context);
  v48 = *MEMORY[0x1E69E9840];

  return v53;
}

- (void)updateModelProperties:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Heuristics config: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)peopleAwareSuggestionProxiesForDetectedFaces:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error getting IntelligencePlatform visualIdentifierView: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)inPhoneCallHeuristicSuggestionProxiesWithBundleIds:(os_log_t)log predictionContext:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "handleList: %@, PSSuggestionProxy:%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)returnDocumentToSender:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "Attachment is not valid for Synapse processing", buf, 2u);
}

@end