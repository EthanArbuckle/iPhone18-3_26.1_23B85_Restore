@interface PSInteractionsStatistics
@end

@implementation PSInteractionsStatistics

void __140___PSInteractionsStatistics_StaticFeatures__computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId_interactionRecord___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v2 = computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId_interactionRecord___pasExprOnceResult;
  computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId_interactionRecord___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __90___PSInteractionsStatistics_StaticFeatures__computeNumberOfAppsSharedFromWithConversation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  [v4 setValue:v7 forFeature:@"numberOfAppsSharedFromWithConversation" andConversationId:v6];
}

void __49___PSInteractionsStatistics_descriptionRedacted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v8 = [*(a1 + 40) privatizedConversationId:v5];
    [v7 appendFormat:@"conversationId: %@ \n", v8];
  }

  else
  {
    [v7 appendFormat:@"conversationId: %@ \n", v5];
  }

  [*(a1 + 32) appendFormat:@"\tnumberOfFeatures: %tu \n", objc_msgSend(v6, "count")];
  if ((*(a1 + 48) & 1) == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49___PSInteractionsStatistics_descriptionRedacted___block_invoke_2;
    v14[3] = &unk_1E7C23C90;
    v15 = *(a1 + 32);
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
  }

  v9 = *(a1 + 32);
  v10 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v5];
  [v9 appendFormat:@"\tnumberOfProperties: %tu \n", objc_msgSend(v10, "count")];

  if ((*(a1 + 48) & 1) == 0)
  {
    v11 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49___PSInteractionsStatistics_descriptionRedacted___block_invoke_3;
    v12[3] = &unk_1E7C23C68;
    v13 = *(a1 + 32);
    [v11 enumerateKeysAndObjectsUsingBlock:v12];
  }
}

void __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"sharingInteractions.%@", v7];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
}

void __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"communicationInteractions.%@", v7];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
}

@end