@interface RELocalTrainingContext
@end

@implementation RELocalTrainingContext

void __46___RELocalTrainingContext_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

void __46___RELocalTrainingContext__handleInvalidation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setExportedObject:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 32) + 56);
  if (v4)
  {
    (*(v4 + 16))();
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = 0;
  }
}

void __86___RELocalTrainingContext_performTrainingWithElements_events_interactions_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) relevanceEngine];
  v3 = [v2 trainingManager];

  if (!v3)
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Training context must be added to a relevance engine before trying to train", v4, v5, v6, v7, v8, v9, v12);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86___RELocalTrainingContext_performTrainingWithElements_events_interactions_completion___block_invoke_2;
  block[3] = &unk_2785FB098;
  v10 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = v3;
  v18 = *(a1 + 32);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v11 = v3;
  dispatch_async(v10, block);
}

void __86___RELocalTrainingContext_performTrainingWithElements_events_interactions_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) count];
  v4 = [*(a1 + 48) count];
  if (v3 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v2 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v2;
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v9 = [*(a1 + 40) objectAtIndexedSubscript:i];
      v10 = [v9 BOOLValue];

      v11 = [*(a1 + 48) objectAtIndexedSubscript:i];
      [*(a1 + 56) _performTrainingForPredictionElement:v8 isPositiveEvent:v10 interaction:v11 context:*(a1 + 64)];
    }
  }

  v12 = *(a1 + 72);
  v13 = *(a1 + 80);

  dispatch_async(v12, v13);
}

uint64_t __67___RELocalTrainingContext_updateRemoteAttribute_forKey_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAttribute:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

@end