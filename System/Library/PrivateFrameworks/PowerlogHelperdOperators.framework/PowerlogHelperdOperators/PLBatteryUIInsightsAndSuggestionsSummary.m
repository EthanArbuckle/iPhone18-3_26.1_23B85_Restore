@interface PLBatteryUIInsightsAndSuggestionsSummary
- (id)getResultFromCacheForSuggestionResponseType:(int64_t)a3;
- (id)result;
- (void)run;
@end

@implementation PLBatteryUIInsightsAndSuggestionsSummary

- (void)run
{
  v18 = objc_opt_new();
  v3 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self getResultFromCacheForSuggestionResponseType:9];
  if ([v3 count])
  {
    v4 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self autolockSuggestion];
    [v18 addObject:v4];
  }

  v5 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self getResultFromCacheForSuggestionResponseType:10];
  if ([v5 count])
  {
    v6 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self autoBrightnessSuggestion];
    [v18 addObject:v6];
  }

  v7 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self getResultFromCacheForSuggestionResponseType:11];
  v8 = [v7 count];
  v9 = v18;
  if (v8)
  {
    v10 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self reduceBrightnessSuggestion];
    [v18 addObject:v10];

    v9 = v18;
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  suggestionSummaryResult = self->_suggestionSummaryResult;
  self->_suggestionSummaryResult = v11;

  v13 = objc_opt_new();
  v14 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self getResultFromCacheForSuggestionResponseType:8];
  if ([v14 count])
  {
    v15 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self recentUsageInsight];
    [v13 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  insightSummaryResult = self->_insightSummaryResult;
  self->_insightSummaryResult = v16;
}

- (id)result
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(NSArray *)self->_suggestionSummaryResult count])
  {
    suggestionSummaryResult = self->_suggestionSummaryResult;
    v15 = @"suggestionSummary";
    v16[0] = suggestionSummaryResult;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 addEntriesFromDictionary:v5];
  }

  if ([(NSArray *)self->_insightSummaryResult count])
  {
    insightSummaryResult = self->_insightSummaryResult;
    v13 = @"insightSummary";
    v14 = insightSummaryResult;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v3 addEntriesFromDictionary:v7];
  }

  if ([v3 count])
  {
    v11 = @"insightsAndSuggestionsSummaryKey";
    v12 = v3;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getResultFromCacheForSuggestionResponseType:(int64_t)a3
{
  v5 = PLBatteryUsageUIKeyFromConfiguration();
  v6 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self responderService];
  v7 = [v6 responseCache];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:v5];
  v11 = [v10 objectForKeyedSubscript:@"result"];

  return v11;
}

@end