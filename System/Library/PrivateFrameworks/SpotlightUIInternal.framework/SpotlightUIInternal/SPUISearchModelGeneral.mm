@interface SPUISearchModelGeneral
- (BOOL)forceStableResults;
- (BOOL)infinitePatience;
- (BOOL)queryInProgress;
- (BOOL)shouldEnableOCR;
- (NSString)rankingDebugLog;
- (SPUISearchModelGeneral)init;
- (int64_t)maxUISuggestions;
- (void)activate;
- (void)clear;
- (void)deactivate;
- (void)purgeMemory;
- (void)setForceStableResults:(BOOL)results;
- (void)setInfinitePatience:(BOOL)patience;
- (void)setMaxUISuggestions:(int64_t)suggestions;
- (void)updateWithQueryContext:(id)context;
- (void)updatesDisabled;
- (void)updatesEnabled;
@end

@implementation SPUISearchModelGeneral

- (SPUISearchModelGeneral)init
{
  v10.receiver = self;
  v10.super_class = SPUISearchModelGeneral;
  v2 = [(SPUISearchModelGeneral *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("SPUISearchModel workQueue", v4);
    v6 = *(v2 + 10);
    *(v2 + 10) = v5;

    v7 = objc_alloc_init(MEMORY[0x277D65728]);
    v8 = *(v2 + 9);
    *(v2 + 9) = v7;

    dispatch_async(*(v2 + 10), &__block_literal_global_649);
  }

  return v2;
}

void __30__SPUISearchModelGeneral_init__block_invoke()
{
  v0 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v0 loadAllParametersForClient:@"Spotlight"];

  v1 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v1 loadAllParametersForClient:@"SpotlightKnowledge"];

  v2 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v2 loadAllParametersForClient:@"Mail"];
}

- (void)clear
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SPUISearchModelGeneral_clear__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

uint64_t __31__SPUISearchModelGeneral_clear__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queryTask];
  [v2 clear];

  v3 = *(a1 + 32);

  return [v3 setQueryTask:0];
}

- (void)setInfinitePatience:(BOOL)patience
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SPUISearchModelGeneral_setInfinitePatience___block_invoke;
  block[3] = &unk_279D07068;
  objc_copyWeak(&v7, &location);
  patienceCopy = patience;
  dispatch_async(workQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__SPUISearchModelGeneral_setInfinitePatience___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setInfinitePatience:*(a1 + 40)];
}

- (BOOL)infinitePatience
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SPUISearchModelGeneral_infinitePatience__block_invoke;
  v5[3] = &unk_279D06D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__SPUISearchModelGeneral_infinitePatience__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) infinitePatience];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setForceStableResults:(BOOL)results
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SPUISearchModelGeneral_setForceStableResults___block_invoke;
  v4[3] = &unk_279D06D40;
  v4[4] = self;
  resultsCopy = results;
  dispatch_async(workQueue, v4);
}

void __48__SPUISearchModelGeneral_setForceStableResults___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) queryTask];
  [v2 setForceStableResults:v1];
}

- (BOOL)forceStableResults
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SPUISearchModelGeneral_forceStableResults__block_invoke;
  v5[3] = &unk_279D06D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __44__SPUISearchModelGeneral_forceStableResults__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queryTask];
  *(*(*(a1 + 40) + 8) + 24) = [v2 forceStableResults];
}

- (void)updatesDisabled
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SPUISearchModelGeneral_updatesDisabled__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __41__SPUISearchModelGeneral_updatesDisabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) queryTask];
  [v1 disableUpdates];
}

- (BOOL)queryInProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SPUISearchModelGeneral_queryInProgress__block_invoke;
  v5[3] = &unk_279D07090;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return (v3 & 1) == 0;
}

void __41__SPUISearchModelGeneral_queryInProgress__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastResponse];

  v3 = *(a1 + 32);
  if (v2)
  {
    v8 = [v3 lastResponse];
    v4 = [v8 task];
    v5 = [*(a1 + 32) queryTask];
    if (v4 == v5)
    {
      v7 = [*(a1 + 32) lastResponse];
      *(*(*(a1 + 40) + 8) + 24) = [v7 state] == 4;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v6 = v8;
  }

  else
  {
    v6 = [v3 queryTask];
    *(*(*(a1 + 40) + 8) + 24) = v6 == 0;
  }
}

- (void)updatesEnabled
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SPUISearchModelGeneral_updatesEnabled__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __40__SPUISearchModelGeneral_updatesEnabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) queryTask];
  [v1 enableUpdates];
}

- (void)activate
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SPUISearchModelGeneral_activate__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_async(workQueue, block);
}

id __34__SPUISearchModelGeneral_activate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  [v2 activate];

  v4.receiver = *(a1 + 32);
  v4.super_class = SPUISearchModelGeneral;
  return objc_msgSendSuper2(&v4, sel_activate);
}

- (void)deactivate
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SPUISearchModelGeneral_deactivate__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __36__SPUISearchModelGeneral_deactivate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  [v2 deactivate];

  v6.receiver = *(a1 + 32);
  v6.super_class = SPUISearchModelGeneral;
  objc_msgSendSuper2(&v6, sel_deactivate);
  v3 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v3 loadAllParametersForClient:@"Spotlight"];

  v4 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v4 loadAllParametersForClient:@"SpotlightKnowledge"];

  v5 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v5 loadAllParametersForClient:@"Mail"];
}

- (void)setMaxUISuggestions:(int64_t)suggestions
{
  session = [(SPUISearchModelGeneral *)self session];
  [session setMaxUISuggestions:suggestions];
}

- (int64_t)maxUISuggestions
{
  session = [(SPUISearchModelGeneral *)self session];
  maxUISuggestions = [session maxUISuggestions];

  return maxUISuggestions;
}

- (BOOL)shouldEnableOCR
{
  v36 = *MEMORY[0x277D85DE8];
  if (shouldEnableOCR_onceToken != -1)
  {
    [SPUISearchModelGeneral shouldEnableOCR];
  }

  [MEMORY[0x277CBEAF8] preferredLanguages];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = v33 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
  v4 = v2;
  if (v3)
  {
    v5 = v3;
    v6 = *v31;
    v4 = v2;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v30 + 1) + 8 * i)];
        languageCode = [v8 languageCode];
        v10 = [languageCode isEqualToString:@"yue"];

        if (v10)
        {
          v11 = [v4 arrayByAddingObject:@"zh"];

          v4 = v11;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:shouldEnableOCR_supportedLocaleStrings forPreferences:v4];
  v13 = MEMORY[0x277CBEAF8];
  firstObject = [v12 firstObject];
  v15 = [v13 localeWithLocaleIdentifier:firstObject];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = *v27;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{*(*(&v26 + 1) + 8 * j), v26}];
        languageCode2 = [v20 languageCode];
        languageCode3 = [v15 languageCode];
        v23 = [languageCode2 isEqualToString:languageCode3];

        if (v23)
        {
          LOBYTE(v17) = 1;
          goto LABEL_22;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

void __41__SPUISearchModelGeneral_shouldEnableOCR__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277CE2DB0]);
  v0 = [v2 supportedRecognitionLanguagesAndReturnError:0];
  v1 = shouldEnableOCR_supportedLocaleStrings;
  shouldEnableOCR_supportedLocaleStrings = v0;
}

- (void)updateWithQueryContext:(id)context
{
  contextCopy = context;
  workQueue = self->_workQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SPUISearchModelGeneral_updateWithQueryContext___block_invoke;
  v8[3] = &unk_279D070B8;
  v8[4] = self;
  v9 = contextCopy;
  v6 = contextCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v8);
  dispatch_async(workQueue, v7);
}

void __49__SPUISearchModelGeneral_updateWithQueryContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queryTask];
  [v2 cancel];

  [*(a1 + 32) invalidate];
  if (([*(a1 + 32) shouldEnableOCR] & 1) == 0)
  {
    [*(a1 + 40) setDisableOCR:1];
  }

  v3 = [*(a1 + 32) session];
  v4 = [v3 queryTaskWithContext:*(a1 + 40)];
  [*(a1 + 32) setQueryTask:v4];

  [*(a1 + 32) setForceStableResults:0];
  v5 = *(a1 + 32);
  if (v5[1])
  {
    v6 = [*(a1 + 32) queryTask];
    [v6 disableUpdates];

    v5 = *(a1 + 32);
  }

  v7 = [v5 queryTask];
  [v7 setDelegate:v5];

  if ([MEMORY[0x277D4C898] isIpad])
  {
    v8 = 6;
  }

  else
  {
    v8 = 4;
  }

  v9 = [*(a1 + 32) queryTask];
  [v9 setMaxTopHitAppResults:v8];

  v10 = [*(a1 + 32) queryTask];
  [v10 start];
}

- (void)purgeMemory
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SPUISearchModelGeneral_purgeMemory__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __37__SPUISearchModelGeneral_purgeMemory__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = SPUISearchModelGeneral;
  objc_msgSendSuper2(&v3, sel_purgeMemory);
  v2 = [*(a1 + 32) session];
  [v2 setLastSections:MEMORY[0x277CBEBF8] forQuery:0];
}

- (NSString)rankingDebugLog
{
  queryTask = [(SPUISearchModel *)self queryTask];
  rankingDebugLog = [queryTask rankingDebugLog];

  return rankingDebugLog;
}

@end