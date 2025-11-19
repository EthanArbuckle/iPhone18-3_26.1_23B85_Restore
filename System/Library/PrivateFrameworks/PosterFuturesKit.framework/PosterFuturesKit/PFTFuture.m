@interface PFTFuture
+ (id)_joinMany:(id)a3;
+ (id)cancelledFuture;
+ (id)chain:(id)a3;
+ (id)flatMap:(id)a3 withBlock:(id)a4 continuationScheduler:(id)a5 schedulerProvider:(id)a6;
+ (id)future;
+ (id)futureWithBlock:(id)a3;
+ (id)futureWithBlock:(id)a3 scheduler:(id)a4;
+ (id)futureWithBlock:(id)a3 scheduler:(id)a4 schedulerProvider:(id)a5;
+ (id)futureWithBlock:(id)a3 schedulerProvider:(id)a4;
+ (id)futureWithError:(id)a3;
+ (id)futureWithResult:(id)a3;
+ (id)join:(id)a3;
+ (id)lazyFutureWithBlock:(id)a3;
+ (id)promiseFuture;
+ (id)recover:(id)a3 withBlock:(id)a4 onErrorScheduler:(id)a5 schedulerProvider:(id)a6;
+ (id)sequence:(id)a3;
+ (void)finishPromise:(id)a3 withFuture:(id)a4;
- (BOOL)cancel;
- (BOOL)cancelWithReason:(id)a3;
- (BOOL)finishWithError:(id)a3;
- (BOOL)finishWithResult:(id)a3;
- (NSString)description;
- (PFTFuture)init;
- (PFTFuture)initWithImpl:(id)a3;
- (PFTFuture)initWithSchedulerProvider:(id)a3;
- (id)flatMap:(id)a3;
- (id)flatMap:(id)a3 continuationScheduler:(id)a4;
- (id)recover:(id)a3;
- (id)recover:(id)a3 onErrorScheduler:(id)a4;
- (id)result:(id *)a3;
- (id)resultWithTimeout:(double)a3 error:(id *)a4;
- (id)timeoutAfter:(double)a3 scheduler:(id)a4 cleanup:(id)a5;
- (id)trackWithActivity:(id)a3;
- (void)_flushCompletionBlocks;
- (void)addCompletionBlock:(id)a3;
- (void)addCompletionBlock:(id)a3 scheduler:(id)a4;
- (void)addFailureBlock:(id)a3 scheduler:(id)a4;
- (void)addSuccessBlock:(id)a3 andFailureBlock:(id)a4;
- (void)addSuccessBlock:(id)a3 andFailureBlock:(id)a4 scheduler:(id)a5;
- (void)addSuccessBlock:(id)a3 scheduler:(id)a4;
@end

@implementation PFTFuture

- (BOOL)cancel
{
  impl = self->_impl;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = self->_impl;

  return [(PFTFutureImpl *)v4 cancel];
}

+ (id)promiseFuture
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)future
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)futureWithResult:(id)a3
{
  v4 = a3;
  v5 = [[_PFTConstantFutureImpl alloc] initWithResult:v4];

  v6 = [[a1 alloc] initWithImpl:v5];

  return v6;
}

+ (id)futureWithError:(id)a3
{
  v4 = a3;
  v5 = [[_PFTFailedFutureImpl alloc] initWithError:v4];

  v6 = [[a1 alloc] initWithImpl:v5];

  return v6;
}

+ (id)cancelledFuture
{
  v3 = +[PFTError userCanceledError];
  v4 = [a1 futureWithError:v3];

  return v4;
}

+ (id)futureWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[PFTSchedulerProvider defaultProvider];
  v6 = [a1 futureWithBlock:v4 schedulerProvider:v5];

  return v6;
}

+ (id)futureWithBlock:(id)a3 scheduler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PFTSchedulerProvider defaultProvider];
  v9 = [a1 futureWithBlock:v7 scheduler:v6 schedulerProvider:v8];

  return v9;
}

+ (id)futureWithBlock:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PFTScheduler immediateScheduler];
  v9 = [a1 futureWithBlock:v7 scheduler:v8 schedulerProvider:v6];

  return v9;
}

+ (id)futureWithBlock:(id)a3 scheduler:(id)a4 schedulerProvider:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PFTPromise);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __57__PFTFuture_futureWithBlock_scheduler_schedulerProvider___block_invoke;
  v16 = &unk_279A52AE8;
  v17 = v8;
  v18 = v6;
  v9 = v8;
  v10 = v6;
  [v7 performBlock:&v13];

  v11 = [(PFTPromise *)v9 future:v13];

  return v11;
}

void __57__PFTFuture_futureWithBlock_scheduler_schedulerProvider___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  v3 = (*(v2 + 16))();
  v4 = v5;
  [*(a1 + 32) finishWithResult:v3 error:v4];
}

+ (id)lazyFutureWithBlock:(id)a3
{
  v4 = [_PFTBlockFutureImpl lazyImplWithBlock:a3];
  v5 = [[a1 alloc] initWithImpl:v4];

  return v5;
}

+ (id)flatMap:(id)a3 withBlock:(id)a4 continuationScheduler:(id)a5 schedulerProvider:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [[PFTPromise alloc] initWithSchedulerProvider:v12];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__PFTFuture_flatMap_withBlock_continuationScheduler_schedulerProvider___block_invoke;
  v23[3] = &unk_279A53508;
  v26 = v10;
  v27 = a1;
  v15 = v14;
  v24 = v15;
  v25 = v11;
  v16 = v11;
  v17 = v10;
  [v13 addSuccessBlock:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__PFTFuture_flatMap_withBlock_continuationScheduler_schedulerProvider___block_invoke_4;
  v21[3] = &unk_279A53530;
  v22 = v15;
  v18 = v15;
  [v13 addFailureBlock:v21];
  v19 = [(PFTPromise *)v18 future];
  [v19 addCalculationDependency:v13];

  return v19;
}

void __71__PFTFuture_flatMap_withBlock_continuationScheduler_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__PFTFuture_flatMap_withBlock_continuationScheduler_schedulerProvider___block_invoke_2;
  v11[3] = &unk_279A534E0;
  v14 = *(a1 + 48);
  v4 = v3;
  v5 = *(a1 + 56);
  v12 = v4;
  v15 = v5;
  v13 = *(a1 + 32);
  v6 = MEMORY[0x25F8CF560](v11);
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__PFTFuture_flatMap_withBlock_continuationScheduler_schedulerProvider___block_invoke_3;
    v9[3] = &unk_279A52CD8;
    v10 = v6;
    [v8 performBlock:v9];
  }

  else
  {
    v6[2](v6);
  }
}

void __71__PFTFuture_flatMap_withBlock_continuationScheduler_schedulerProvider___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = (*(*(a1 + 48) + 16))();
  [*(a1 + 56) finishPromise:*(a1 + 40) withFuture:v4];
  v3 = [*(a1 + 40) future];
  [v3 addCalculationDependency:v4];
}

+ (id)recover:(id)a3 withBlock:(id)a4 onErrorScheduler:(id)a5 schedulerProvider:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [[PFTPromise alloc] initWithSchedulerProvider:v12];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__PFTFuture_recover_withBlock_onErrorScheduler_schedulerProvider___block_invoke;
  v26[3] = &unk_279A53558;
  v15 = v14;
  v27 = v15;
  [v13 addSuccessBlock:v26];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__PFTFuture_recover_withBlock_onErrorScheduler_schedulerProvider___block_invoke_2;
  v21[3] = &unk_279A53580;
  v24 = v10;
  v25 = a1;
  v22 = v15;
  v23 = v11;
  v16 = v11;
  v17 = v15;
  v18 = v10;
  [v13 addFailureBlock:v21];
  v19 = [(PFTPromise *)v17 future];
  [v19 addCalculationDependency:v13];

  return v19;
}

void __66__PFTFuture_recover_withBlock_onErrorScheduler_schedulerProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__PFTFuture_recover_withBlock_onErrorScheduler_schedulerProvider___block_invoke_3;
  v11[3] = &unk_279A534E0;
  v14 = *(a1 + 48);
  v4 = v3;
  v5 = *(a1 + 56);
  v12 = v4;
  v15 = v5;
  v13 = *(a1 + 32);
  v6 = MEMORY[0x25F8CF560](v11);
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__PFTFuture_recover_withBlock_onErrorScheduler_schedulerProvider___block_invoke_4;
    v9[3] = &unk_279A52CD8;
    v10 = v6;
    [v8 performBlock:v9];
  }

  else
  {
    v6[2](v6);
  }
}

void __66__PFTFuture_recover_withBlock_onErrorScheduler_schedulerProvider___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 48) + 16))();
  [*(a1 + 56) finishPromise:*(a1 + 40) withFuture:v3];
}

+ (void)finishPromise:(id)a3 withFuture:(id)a4
{
  v5 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__PFTFuture_finishPromise_withFuture___block_invoke;
  v11[3] = &unk_279A53558;
  v6 = v5;
  v12 = v6;
  v7 = a4;
  [v7 addSuccessBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__PFTFuture_finishPromise_withFuture___block_invoke_2;
  v9[3] = &unk_279A53530;
  v10 = v6;
  v8 = v6;
  [v7 addFailureBlock:v9];
}

+ (id)chain:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v4 pft_tail];

  if (off_2870E41C0(&__block_literal_global_4, v6))
  {
    v7 = v5;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __19__PFTFuture_chain___block_invoke;
    v15[3] = &unk_279A535A8;
    v17 = a1;
    v8 = v6;
    v16 = v8;
    v9 = [v5 flatMap:v15];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __19__PFTFuture_chain___block_invoke_2;
    v12[3] = &unk_279A535D0;
    v14 = a1;
    v13 = v8;
    v10 = [v9 recover:v12];

    v7 = v10;
  }

  return v7;
}

id __19__PFTFuture_chain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_2870E42E0(&__block_literal_global_9, v3);
  v5 = *(a1 + 40);
  if (v4)
  {
    [v5 chain:*(a1 + 32)];
  }

  else
  {
    [v5 futureWithResult:v3];
  }
  v6 = ;

  return v6;
}

+ (id)sequence:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (off_2870E41C0(&__block_literal_global_4, v3))
  {
    v4 = [PFTFuture futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [v3 firstObject];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v3;
    v7 = [v3 pft_tail];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        v12 = v6;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * v11);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __22__PFTFuture_sequence___block_invoke;
          v20[3] = &unk_279A535F8;
          v21 = v5;
          v22 = v13;
          v6 = [v12 flatMap:v20];

          ++v11;
          v12 = v6;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __22__PFTFuture_sequence___block_invoke_2;
    v18[3] = &unk_279A53620;
    v19 = v5;
    v14 = v5;
    v4 = [v6 flatMap:v18];

    v3 = v17;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

id __22__PFTFuture_sequence___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 40);

  return v3;
}

PFTFuture *__22__PFTFuture_sequence___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 32);

  return [PFTFuture futureWithResult:v3];
}

+ (id)join:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 == 1)
  {
    v5 = [v3 firstObject];
    v6 = [PFTFuture _joinOne:v5];
  }

  else
  {
    if (v4)
    {
      [PFTFuture _joinMany:v3];
    }

    else
    {
      +[PFTFuture _joinZero];
    }
    v6 = ;
  }

  return v6;
}

id __22__PFTFuture__joinOne___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v8 count:1];
  v5 = [PFTFuture futureWithResult:v4, v8, v9];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_joinMany:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(PFTPromise);
  v5 = [PFTScheduler synchronousSerialDispatchQueueWithName:@"com.apple.PosterFuturesKit.future.join"];
  v6 = [v3 count];
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  {
    v8 = [MEMORY[0x277CBEB68] null];
    [i addObject:v8];
  }

  v9 = [v3 mutableCopy];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __23__PFTFuture__joinMany___block_invoke;
  v26[3] = &unk_279A536E0;
  v10 = v9;
  v27 = v10;
  v11 = i;
  v28 = v11;
  v12 = v4;
  v29 = v12;
  v13 = v5;
  v30 = v13;
  [v3 enumerateObjectsUsingBlock:v26];
  v14 = [(PFTPromise *)v12 future];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v3;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 addCalculationDependency:{*(*(&v22 + 1) + 8 * j), v22}];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

void __23__PFTFuture__joinMany___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  objc_initWeak(&location, v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __23__PFTFuture__joinMany___block_invoke_2;
  v11[3] = &unk_279A53668;
  objc_copyWeak(v15, &location);
  v12 = a1[4];
  v13 = a1[5];
  v15[1] = a3;
  v14 = a1[6];
  [v5 addSuccessBlock:v11 scheduler:a1[7]];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__PFTFuture__joinMany___block_invoke_3;
  v6[3] = &unk_279A536B8;
  v7 = a1[7];
  objc_copyWeak(&v10, &location);
  v8 = a1[4];
  v9 = a1[6];
  [v5 addFailureBlock:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __23__PFTFuture__joinMany___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) indexOfObject:WeakRetained];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [*(a1 + 40) replaceObjectAtIndex:*(a1 + 64) withObject:v6];
    [*(a1 + 32) removeObjectAtIndex:v5];
    if (off_2870E41C0(&__block_literal_global_4, *(a1 + 32)))
    {
      [*(a1 + 48) finishWithResult:*(a1 + 40)];
    }
  }
}

void __23__PFTFuture__joinMany___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __23__PFTFuture__joinMany___block_invoke_4;
  v16[3] = &unk_279A53690;
  objc_copyWeak(&v19, (a1 + 56));
  v17 = *(a1 + 40);
  v6 = v4;
  v18 = v6;
  [v5 performBlock:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  [*(a1 + 48) finishWithError:v3];
  objc_destroyWeak(&v19);

  v11 = *MEMORY[0x277D85DE8];
}

void __23__PFTFuture__joinMany___block_invoke_4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [a1[4] indexOfObject:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1[4] removeObjectAtIndex:v2];
    [a1[5] setArray:a1[4]];
    [a1[4] removeAllObjects];
  }
}

- (PFTFuture)init
{
  v3 = +[PFTSchedulerProvider defaultProvider];
  v4 = [(PFTFuture *)self initWithSchedulerProvider:v3];

  return v4;
}

- (PFTFuture)initWithSchedulerProvider:(id)a3
{
  v4 = a3;
  v5 = [[_PFTBlockFutureImpl alloc] initWithSchedulerProvider:v4];

  v6 = [(PFTFuture *)self initWithImpl:v5];
  return v6;
}

- (PFTFuture)initWithImpl:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PFTFuture;
  v6 = [(PFTFuture *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    calculationDependencies = v7->_calculationDependencies;
    v7->_calculationDependencies = v8;

    v10 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __24__PFTFuture_description__block_invoke;
  v10 = &unk_279A52B88;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)result:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [(PFTFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v7 = [(PFTFuture *)self resultBeforeDate:v6 error:a4];

  return v7;
}

- (id)timeoutAfter:(double)a3 scheduler:(id)a4 cleanup:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = +[PFTScheduler mainThreadScheduler];
  }

  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__PFTFuture_timeoutAfter_scheduler_cleanup___block_invoke;
  v20[3] = &unk_279A52C88;
  objc_copyWeak(&v22, &location);
  v10 = v9;
  v21 = v10;
  v11 = [v8 afterDelay:v20 performBlock:a3];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__PFTFuture_timeoutAfter_scheduler_cleanup___block_invoke_2;
  v18[3] = &unk_279A53558;
  v19 = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__PFTFuture_timeoutAfter_scheduler_cleanup___block_invoke_3;
  v16[3] = &unk_279A53530;
  v12 = v19;
  v17 = v12;
  [(PFTFuture *)self addSuccessBlock:v18 andFailureBlock:v16];
  v13 = v17;
  v14 = v12;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v14;
}

void __44__PFTFuture_timeoutAfter_scheduler_cleanup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = +[PFTError timeoutError];
    [v5 finishWithError:v3];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    WeakRetained = v5;
  }
}

- (BOOL)finishWithResult:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = PFTLogFutures();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PFTFuture finishWithResult:v5];
    }

    v6 = PFTLogFutures();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PFTFuture finishWithResult:];
    }

    PFTFutureThrowProtocolExceptionWithReason(@"result must be non-nil", 0);
  }

  v7 = [(PFTFuture *)self finishWithResult:v4 error:0];

  return v7;
}

- (BOOL)finishWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = PFTLogFutures();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PFTFuture finishWithError:v5];
    }

    v6 = PFTLogFutures();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PFTFuture finishWithResult:];
    }

    PFTFutureThrowProtocolExceptionWithReason(@"error must be non-nil", 0);
  }

  v7 = [(PFTFuture *)self finishWithResult:0 error:v4];

  return v7;
}

- (BOOL)cancelWithReason:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = *MEMORY[0x277CCA470];
    v12[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:v6];
  v8 = [(PFTFuture *)self finishWithError:v7];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)addSuccessBlock:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__PFTFuture_addSuccessBlock_scheduler___block_invoke;
  v10[3] = &unk_279A53708;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(PFTFuture *)self addSuccessBlock:v10];
}

void __39__PFTFuture_addSuccessBlock_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PFTFuture_addSuccessBlock_scheduler___block_invoke_2;
  v7[3] = &unk_279A52AE8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (void)addFailureBlock:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__PFTFuture_addFailureBlock_scheduler___block_invoke;
  v10[3] = &unk_279A53730;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(PFTFuture *)self addFailureBlock:v10];
}

void __39__PFTFuture_addFailureBlock_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PFTFuture_addFailureBlock_scheduler___block_invoke_2;
  v7[3] = &unk_279A52AE8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (void)addSuccessBlock:(id)a3 andFailureBlock:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(PFTFuture *)self addSuccessBlock:v7];
  }

  if (v6)
  {
    [(PFTFuture *)self addFailureBlock:v6];
  }
}

- (void)addSuccessBlock:(id)a3 andFailureBlock:(id)a4 scheduler:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v10)
  {
    [(PFTFuture *)self addSuccessBlock:v10 scheduler:v9];
  }

  if (v8)
  {
    [(PFTFuture *)self addFailureBlock:v8 scheduler:v9];
  }
}

- (void)addCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__PFTFuture_addCompletionBlock___block_invoke;
    v8[3] = &unk_279A53758;
    v9 = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__PFTFuture_addCompletionBlock___block_invoke_2;
    v6[3] = &unk_279A53780;
    v7 = v9;
    [(PFTFuture *)self addSuccessBlock:v8 andFailureBlock:v6];
  }
}

- (void)addCompletionBlock:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__PFTFuture_addCompletionBlock_scheduler___block_invoke;
    v10[3] = &unk_279A53758;
    v11 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__PFTFuture_addCompletionBlock_scheduler___block_invoke_2;
    v8[3] = &unk_279A53780;
    v9 = v11;
    [(PFTFuture *)self addSuccessBlock:v10 andFailureBlock:v8 scheduler:a4];
  }
}

- (id)trackWithActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__PFTFuture_trackWithActivity___block_invoke;
    v9[3] = &unk_279A53558;
    v10 = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__PFTFuture_trackWithActivity___block_invoke_2;
    v7[3] = &unk_279A53530;
    v8 = v10;
    [(PFTFuture *)self addSuccessBlock:v9 andFailureBlock:v7];
  }

  return self;
}

- (id)flatMap:(id)a3
{
  v4 = a3;
  v5 = +[PFTSchedulerProvider defaultProvider];
  v6 = [(PFTFuture *)self flatMap:v4 continuationScheduler:0 schedulerProvider:v5];

  return v6;
}

- (id)flatMap:(id)a3 continuationScheduler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PFTSchedulerProvider defaultProvider];
  v9 = [(PFTFuture *)self flatMap:v7 continuationScheduler:v6 schedulerProvider:v8];

  return v9;
}

- (id)recover:(id)a3
{
  v4 = a3;
  v5 = +[PFTSchedulerProvider defaultProvider];
  v6 = [(PFTFuture *)self recover:v4 onErrorScheduler:0 schedulerProvider:v5];

  return v6;
}

- (id)recover:(id)a3 onErrorScheduler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PFTSchedulerProvider defaultProvider];
  v9 = [(PFTFuture *)self recover:v7 onErrorScheduler:v6 schedulerProvider:v8];

  return v9;
}

- (void)_flushCompletionBlocks
{
  impl = self->_impl;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_impl;

    [(PFTFutureImpl *)v4 _flushCompletionBlocks];
  }
}

- (void)finishWithResult:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_4(&dword_25ED8F000, v1, v2, "Call stack: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end