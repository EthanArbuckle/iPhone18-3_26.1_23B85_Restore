@interface PSCNAutocompleteFeedbackTracker
@end

@implementation PSCNAutocompleteFeedbackTracker

void __66___PSCNAutocompleteFeedbackTracker_logImpressionsFromAccumulator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v17 = a2;
  v22 = objc_opt_class();
  v21 = [*(a1 + 40) vendedSuggestionEvents];
  v20 = [v21 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = [v20 vendedSuggestions];
  v19 = [*(a1 + 40) vendedSuggestionEvents];
  v18 = [v19 objectAtIndexedSubscript:*(a1 + 48)];
  v5 = [v18 bundleIdentifier];
  v6 = [*(a1 + 40) vendedSuggestionEvents];
  v7 = [v6 objectAtIndexedSubscript:*(a1 + 48)];
  v8 = [v7 vendedSuggestions];
  v9 = [v8 suggestions];
  v10 = [v9 firstObject];
  v11 = [v10 trialID];
  v12 = [v22 defaultSubmodelImpressionWithFeedback:v4 submodel:v17 bundleID:v5 trialID:v11 isImplicit:*(*(a1 + 32) + 56)];
  v23 = [v12 mutableCopy];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) metricsForSubmodelImpressions];
  v15 = [v14 objectAtIndexedSubscript:*(a1 + 48)];
  v16 = [v15 objectForKeyedSubscript:v17];

  [v13 annotateImpression:v23 withStatistics:v16];
  (*(*(*(a1 + 32) + 40) + 16))();
}

@end