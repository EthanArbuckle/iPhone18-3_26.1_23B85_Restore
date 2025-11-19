@interface SPCoreSpotlightExtensionsTask
- (void)_performWithExtensionsEnumerator:(id)a3 completionBlock:(id)a4;
- (void)start;
@end

@implementation SPCoreSpotlightExtensionsTask

- (void)_performWithExtensionsEnumerator:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [SPCoreSpotlightExtensionsTask _performWithExtensionsEnumerator:completionBlock:];
  }

  v8 = v7;
  v9 = [(SPCoreSpotlightExtensionsTask *)self performBlock];
  if (!v9)
  {
    [SPCoreSpotlightExtensionsTask _performWithExtensionsEnumerator:completionBlock:];
  }

  v10 = [v6 nextObject];
  if (v10)
  {
    v11 = dispatch_group_create();
    v12 = [(SPCoreSpotlightExtensionsTask *)self performBlock];
    (v12)[2](v12, v10, v11);

    v13 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__SPCoreSpotlightExtensionsTask__performWithExtensionsEnumerator_completionBlock___block_invoke;
    block[3] = &unk_278934F08;
    block[4] = self;
    v15 = v6;
    v16 = v8;
    dispatch_group_notify(v11, v13, block);
  }

  else
  {
    v8[2](v8);
  }
}

void __82__SPCoreSpotlightExtensionsTask__performWithExtensionsEnumerator_completionBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _performWithExtensionsEnumerator:*(a1 + 40) completionBlock:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)start
{
  v3 = [(SPCoreSpotlightExtensionsTask *)self completionBlock];
  if (!v3)
  {
    [SPCoreSpotlightExtensionsTask start];
  }

  v4 = SDTransactionCreate(&unk_2846C9488);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__1;
  v17[4] = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [MEMORY[0x277CC3538] sharedManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__SPCoreSpotlightExtensionsTask_start__block_invoke;
  v13[3] = &unk_2789376B8;
  v16 = v17;
  v7 = v5;
  v14 = v7;
  v15 = self;
  [v6 findExtensionsWithCompletionBlock:v13];

  v8 = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__SPCoreSpotlightExtensionsTask_start__block_invoke_3;
  v10[3] = &unk_2789376E0;
  v11 = v4;
  v12 = v17;
  v10[4] = self;
  v9 = v4;
  dispatch_group_notify(v7, v8, v10);

  _Block_object_dispose(v17, 8);
}

void __38__SPCoreSpotlightExtensionsTask_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = [*(a1 + 40) filterBlock];
    if (v7)
    {
      v8 = [*(a1 + 40) filterBlock];
      v9 = (v8)[2](v8, v5);

      v5 = v9;
    }

    v10 = *(a1 + 40);
    v11 = [v5 objectEnumerator];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__SPCoreSpotlightExtensionsTask_start__block_invoke_2;
    v12[3] = &unk_278934050;
    v13 = *(a1 + 32);
    [v10 _performWithExtensionsEnumerator:v11 completionBlock:v12];
  }
}

void __38__SPCoreSpotlightExtensionsTask_start__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) completionBlock];
  v3[2](v3, *(*(*(a1 + 48) + 8) + 40));

  SDTransactionDone(*(a1 + 40));
  [*(a1 + 32) setPerformBlock:0];
  [*(a1 + 32) setFilterBlock:0];
  [*(a1 + 32) setCompletionBlock:0];

  objc_autoreleasePoolPop(v2);
}

@end