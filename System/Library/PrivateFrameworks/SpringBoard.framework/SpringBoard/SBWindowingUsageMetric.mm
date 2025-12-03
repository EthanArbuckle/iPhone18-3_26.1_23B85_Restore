@interface SBWindowingUsageMetric
- (SBWindowingUsageMetric)init;
- (id)_stageItemsInContext:(id)context;
- (int64_t)_multitaskingModeForContext:(id)context;
- (void)_flushStageWithItems:(id)items multitaskingMode:(int64_t)mode;
@end

@implementation SBWindowingUsageMetric

- (SBWindowingUsageMetric)init
{
  v17.receiver = self;
  v17.super_class = SBWindowingUsageMetric;
  v2 = [(SBAnalyticsStateMachineEventHandler *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_initialMultitaskingMode = 0;
    itemsOnStage = v2->_itemsOnStage;
    v2->_itemsOnStage = 0;

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __30__SBWindowingUsageMetric_init__block_invoke;
    v15[3] = &unk_2783BD218;
    v5 = v3;
    v16 = v5;
    v6 = [SBAnalyticsStateMachineEdge edgeFromState:0 transition:v15];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __30__SBWindowingUsageMetric_init__block_invoke_2;
    v13 = &unk_2783BD218;
    v7 = v5;
    v14 = v7;
    v8 = [SBAnalyticsStateMachineEdge edgeFromState:1 transition:&v10];
    [(SBAnalyticsStateMachineEventHandler *)v7 addEdge:v6, v10, v11, v12, v13];
    [(SBAnalyticsStateMachineEventHandler *)v7 addEdge:v8];
  }

  return v3;
}

uint64_t __30__SBWindowingUsageMetric_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 67)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = a3;
  *(*(a1 + 32) + 24) = [v4 _multitaskingModeForContext:v5];
  v6 = [*(a1 + 32) _stageItemsInContext:v5];

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;

  return 1;
}

uint64_t __30__SBWindowingUsageMetric_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 68)
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 _stageItemsInContext:v5];
  v7 = [*(a1 + 32) _multitaskingModeForContext:v5];

  [v4 _flushStageWithItems:v6 multitaskingMode:v7];
  *(*(a1 + 32) + 24) = 0;
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;

  return 0;
}

- (id)_stageItemsInContext:(id)context
{
  eventPayload = [context eventPayload];
  v4 = [eventPayload objectForKeyedSubscript:*MEMORY[0x277D675A0]];
  v5 = [MEMORY[0x277CBEB58] set];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SBWindowingUsageMetric__stageItemsInContext___block_invoke;
  v8[3] = &unk_2783BED40;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __47__SBWindowingUsageMetric__stageItemsInContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x277D675A8];
  v6 = a2;
  v7 = [a3 objectForKeyedSubscript:v5];
  v8 = [v7 BOOLValue];

  v9 = [[SBWindowingUsageStageItem alloc] initWithSceneIdentifier:v6 maximized:v8];
  [*(a1 + 32) addObject:v9];
}

- (int64_t)_multitaskingModeForContext:(id)context
{
  eventPayload = [context eventPayload];
  v4 = [eventPayload objectForKeyedSubscript:*MEMORY[0x277D675C8]];
  v5 = [v4 objectForKey:*MEMORY[0x277D675D0]];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (void)_flushStageWithItems:(id)items multitaskingMode:(int64_t)mode
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__SBWindowingUsageMetric__flushStageWithItems_multitaskingMode___block_invoke;
    v8[3] = &unk_2783B1160;
    v9 = itemsCopy;
    modeCopy = mode;
    v7 = MEMORY[0x223D6F7F0](v8);
    v6 = v7;
    AnalyticsSendEventLazy();
  }
}

id __64__SBWindowingUsageMetric__flushStageWithItems_multitaskingMode___block_invoke(uint64_t a1)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBWindowingUsageMetric__flushStageWithItems_multitaskingMode___block_invoke_2;
  v9[3] = &unk_2783BED68;
  v9[4] = &v10;
  v9[5] = &v14;
  [v2 enumerateObjectsUsingBlock:v9];
  v18[0] = @"activeMultitaskingSetting";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v19[0] = v3;
  v18[1] = @"numberOfAppsOnStage";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v19[1] = v4;
  v18[2] = @"numberOfMaximizedApps";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v11[3]];
  v19[2] = v5;
  v18[3] = @"numberOfWindowedApps";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v15[3]];
  v19[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

uint64_t __64__SBWindowingUsageMetric__flushStageWithItems_multitaskingMode___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isMaximized];
  v4 = 40;
  if (result)
  {
    v4 = 32;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
  return result;
}

@end