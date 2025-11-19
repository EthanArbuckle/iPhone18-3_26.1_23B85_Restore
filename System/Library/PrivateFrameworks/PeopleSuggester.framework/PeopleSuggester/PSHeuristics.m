@interface PSHeuristics
@end

@implementation PSHeuristics

void __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke()
{
  v0 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_DEFAULT, "Successfully read MLSE.ShareSheet.ConversationUserInteraction Biome stream", v1, 2u);
  }
}

BOOL __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [v3 eventBody];
  v6 = [v5 timestamp];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v4 - v7;
  v9 = *(a1 + 48);

  if (v8 <= v9)
  {
    v10 = [v3 eventBody];
    v11 = [v10 conversationId];

    v12 = [v3 eventBody];
    v13 = [v12 eventType] != 1;

    v14 = [v3 eventBody];
    v15 = [v14 timestamp];

    v16 = *(a1 + 32);
    v17 = [[_PSHyperRecentActivity alloc] initWithDate:v15 activityType:v13 conversationId:v11];
    [v16 addObject:v17];
  }

  return v8 <= v9;
}

void __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_2()
{
  v0 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_DEFAULT, "Successfully read App.InFocus Biome stream", v1, 2u);
  }
}

BOOL __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_139(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [v3 eventBody];
  v6 = [v5 absoluteTimestamp];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v4 - v7;
  v9 = *(a1 + 48);

  if (v8 <= v9)
  {
    v10 = [v3 eventBody];
    v11 = [v10 bundleID];
    if ([v11 isEqualToString:@"com.apple.MobileSMS"])
    {
      v12 = [v3 eventBody];
      v13 = [v12 starting];

      v14 = ~v13 & 1;
    }

    else
    {

      v14 = 1;
    }

    v15 = [v3 eventBody];
    v16 = [v15 absoluteTimestamp];

    v17 = *(a1 + 32);
    v18 = [[_PSHyperRecentActivity alloc] initWithDate:v16 activityType:v14 conversationId:0];
    [v17 addObject:v18];
  }

  return v8 <= v9;
}

uint64_t __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_2_143(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [v3 doubleValue];
  v5 = v4 > *(a1 + 40);

  return v5;
}

uint64_t __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void __90___PSHeuristics_hyperRecentViewedThreadHeuristicSuggestionProxiesForInteractionStatistics__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_PSSuggestionProxy alloc];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(_PSSuggestionProxy *)v4 initWithBundleID:@"com.apple.MobileSMS" interactionRecipients:v3 contactID:0 reason:@"Hyper-recent opened thread - PS Rewrite" reasonType:v7];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
}

BOOL __132___PSHeuristics_hyperRecentHeuristicSuggestionProxiesForInteractionStatistics_forStatName_withRecencyMargin_maxNumberOfSuggestions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueOrDefaultValueForFeature:*(a1 + 40) forConversationId:a2];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_1F2D8C7B8;
  }

  [v3 doubleValue];
  v6 = v5;

  return v6 < *(a1 + 48);
}

uint64_t __132___PSHeuristics_hyperRecentHeuristicSuggestionProxiesForInteractionStatistics_forStatName_withRecencyMargin_maxNumberOfSuggestions___block_invoke_155(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v5 valueOrDefaultValueForFeature:v6 forConversationId:a2];
  v9 = [*(a1 + 32) valueOrDefaultValueForFeature:*(a1 + 40) forConversationId:v7];

  v10 = [v8 compare:v9];
  return v10;
}

_PSSuggestionProxy *__132___PSHeuristics_hyperRecentHeuristicSuggestionProxiesForInteractionStatistics_forStatName_withRecencyMargin_maxNumberOfSuggestions___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 56) <= a3)
  {
    v11 = 0;
  }

  else
  {
    v4 = a2;
    v5 = [_PSSuggestionProxy alloc];
    v6 = [*(a1 + 32) bundleIdForConversationId:v4];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Hyper-recent heuristic (%@) - PS Rewrite", *(a1 + 40)];
    v8 = *(a1 + 48);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(_PSSuggestionProxy *)v5 initWithBundleID:v6 interactionRecipients:v4 contactID:0 reason:v7 reasonType:v10];
  }

  return v11;
}

id __62___PSHeuristics_peopleAwareSuggestionProxiesForDetectedFaces___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) personForIdentifier:a2];
  v3 = [v2 contactIdentifiers];
  v4 = [v3 firstObject];

  return v4;
}

double __108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v7 = *(a1 + 32);
    v8 = [v5 firstObject];
    v9 = [v7 valueForFeature:v8 forConversationId:v6];
    [v9 doubleValue];
    v11 = v10;

    v21 = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke_2;
    v14[3] = &unk_1E7C25BF8;
    v15 = *(a1 + 32);
    v16 = v6;
    v17 = &v18;
    [v5 enumerateObjectsUsingBlock:v14];
    v12 = v19[3];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

void __108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v11 = v3;
  v5 = [*(a1 + 32) valueOrDefaultValueForFeature:? forConversationId:?];
  [v5 doubleValue];
  v7 = v6;
  v8 = *(*(*(a1 + 48) + 8) + 24);

  if (v7 > v8)
  {
    v9 = [*(a1 + 32) valueOrDefaultValueForFeature:v11 forConversationId:*(a1 + 40)];
    [v9 doubleValue];
    *(*(*(a1 + 48) + 8) + 24) = v10;
  }
}

BOOL __108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v5 + 16);
  v8 = a3;
  v9 = v7(v5, v6, a2);
  v10 = *(a1 + 32);
  v11 = (*(*(a1 + 40) + 16))();

  return v9 < v11;
}

_PSSuggestionProxy *__108___PSHeuristics_heuristicsFromInteractionsStatistics_forStatsNames_threshold_maxNumberOfSuggestions_reason___block_invoke_5(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 56) <= a3)
  {
    v11 = 0;
  }

  else
  {
    v4 = a2;
    v5 = [_PSSuggestionProxy alloc];
    v6 = [*(a1 + 32) bundleIdForConversationId:v4];
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(_PSSuggestionProxy *)v5 initWithBundleID:v6 interactionRecipients:v4 contactID:0 reason:v8 reasonType:v10];
  }

  return v11;
}

BOOL __98___PSHeuristics_hyperRecentHeuristicSuggestionProxiesWithReferenceDate_predictionContextBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v4 = [v3 compare:*(a1 + 32)] != -1;

  return v4;
}

@end