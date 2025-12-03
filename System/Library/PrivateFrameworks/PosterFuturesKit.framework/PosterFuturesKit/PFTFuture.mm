@interface PFTFuture
+ (id)_joinMany:(id)many;
+ (id)cancelledFuture;
+ (id)chain:(id)chain;
+ (id)flatMap:(id)map withBlock:(id)block continuationScheduler:(id)scheduler schedulerProvider:(id)provider;
+ (id)future;
+ (id)futureWithBlock:(id)block;
+ (id)futureWithBlock:(id)block scheduler:(id)scheduler;
+ (id)futureWithBlock:(id)block scheduler:(id)scheduler schedulerProvider:(id)provider;
+ (id)futureWithBlock:(id)block schedulerProvider:(id)provider;
+ (id)futureWithError:(id)error;
+ (id)futureWithResult:(id)result;
+ (id)join:(id)join;
+ (id)lazyFutureWithBlock:(id)block;
+ (id)promiseFuture;
+ (id)recover:(id)recover withBlock:(id)block onErrorScheduler:(id)scheduler schedulerProvider:(id)provider;
+ (id)sequence:(id)sequence;
+ (void)finishPromise:(id)promise withFuture:(id)future;
- (BOOL)cancel;
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)finishWithError:(id)error;
- (BOOL)finishWithResult:(id)result;
- (NSString)description;
- (PFTFuture)init;
- (PFTFuture)initWithImpl:(id)impl;
- (PFTFuture)initWithSchedulerProvider:(id)provider;
- (id)flatMap:(id)map;
- (id)flatMap:(id)map continuationScheduler:(id)scheduler;
- (id)recover:(id)recover;
- (id)recover:(id)recover onErrorScheduler:(id)scheduler;
- (id)result:(id *)result;
- (id)resultWithTimeout:(double)timeout error:(id *)error;
- (id)timeoutAfter:(double)after scheduler:(id)scheduler cleanup:(id)cleanup;
- (id)trackWithActivity:(id)activity;
- (void)_flushCompletionBlocks;
- (void)addCompletionBlock:(id)block;
- (void)addCompletionBlock:(id)block scheduler:(id)scheduler;
- (void)addFailureBlock:(id)block scheduler:(id)scheduler;
- (void)addSuccessBlock:(id)block andFailureBlock:(id)failureBlock;
- (void)addSuccessBlock:(id)block andFailureBlock:(id)failureBlock scheduler:(id)scheduler;
- (void)addSuccessBlock:(id)block scheduler:(id)scheduler;
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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)future
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)futureWithResult:(id)result
{
  resultCopy = result;
  v5 = [[_PFTConstantFutureImpl alloc] initWithResult:resultCopy];

  v6 = [[self alloc] initWithImpl:v5];

  return v6;
}

+ (id)futureWithError:(id)error
{
  errorCopy = error;
  v5 = [[_PFTFailedFutureImpl alloc] initWithError:errorCopy];

  v6 = [[self alloc] initWithImpl:v5];

  return v6;
}

+ (id)cancelledFuture
{
  v3 = +[PFTError userCanceledError];
  v4 = [self futureWithError:v3];

  return v4;
}

+ (id)futureWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[PFTSchedulerProvider defaultProvider];
  v6 = [self futureWithBlock:blockCopy schedulerProvider:v5];

  return v6;
}

+ (id)futureWithBlock:(id)block scheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v8 = +[PFTSchedulerProvider defaultProvider];
  v9 = [self futureWithBlock:blockCopy scheduler:schedulerCopy schedulerProvider:v8];

  return v9;
}

+ (id)futureWithBlock:(id)block schedulerProvider:(id)provider
{
  providerCopy = provider;
  blockCopy = block;
  v8 = +[PFTScheduler immediateScheduler];
  v9 = [self futureWithBlock:blockCopy scheduler:v8 schedulerProvider:providerCopy];

  return v9;
}

+ (id)futureWithBlock:(id)block scheduler:(id)scheduler schedulerProvider:(id)provider
{
  blockCopy = block;
  schedulerCopy = scheduler;
  v8 = objc_alloc_init(PFTPromise);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __57__PFTFuture_futureWithBlock_scheduler_schedulerProvider___block_invoke;
  v16 = &unk_279A52AE8;
  v17 = v8;
  v18 = blockCopy;
  v9 = v8;
  v10 = blockCopy;
  [schedulerCopy performBlock:&v13];

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

+ (id)lazyFutureWithBlock:(id)block
{
  v4 = [_PFTBlockFutureImpl lazyImplWithBlock:block];
  v5 = [[self alloc] initWithImpl:v4];

  return v5;
}

+ (id)flatMap:(id)map withBlock:(id)block continuationScheduler:(id)scheduler schedulerProvider:(id)provider
{
  blockCopy = block;
  schedulerCopy = scheduler;
  providerCopy = provider;
  mapCopy = map;
  v14 = [[PFTPromise alloc] initWithSchedulerProvider:providerCopy];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__PFTFuture_flatMap_withBlock_continuationScheduler_schedulerProvider___block_invoke;
  v23[3] = &unk_279A53508;
  v26 = blockCopy;
  selfCopy = self;
  v15 = v14;
  v24 = v15;
  v25 = schedulerCopy;
  v16 = schedulerCopy;
  v17 = blockCopy;
  [mapCopy addSuccessBlock:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__PFTFuture_flatMap_withBlock_continuationScheduler_schedulerProvider___block_invoke_4;
  v21[3] = &unk_279A53530;
  v22 = v15;
  v18 = v15;
  [mapCopy addFailureBlock:v21];
  future = [(PFTPromise *)v18 future];
  [future addCalculationDependency:mapCopy];

  return future;
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

+ (id)recover:(id)recover withBlock:(id)block onErrorScheduler:(id)scheduler schedulerProvider:(id)provider
{
  blockCopy = block;
  schedulerCopy = scheduler;
  providerCopy = provider;
  recoverCopy = recover;
  v14 = [[PFTPromise alloc] initWithSchedulerProvider:providerCopy];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__PFTFuture_recover_withBlock_onErrorScheduler_schedulerProvider___block_invoke;
  v26[3] = &unk_279A53558;
  v15 = v14;
  v27 = v15;
  [recoverCopy addSuccessBlock:v26];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__PFTFuture_recover_withBlock_onErrorScheduler_schedulerProvider___block_invoke_2;
  v21[3] = &unk_279A53580;
  v24 = blockCopy;
  selfCopy = self;
  v22 = v15;
  v23 = schedulerCopy;
  v16 = schedulerCopy;
  v17 = v15;
  v18 = blockCopy;
  [recoverCopy addFailureBlock:v21];
  future = [(PFTPromise *)v17 future];
  [future addCalculationDependency:recoverCopy];

  return future;
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

+ (void)finishPromise:(id)promise withFuture:(id)future
{
  promiseCopy = promise;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__PFTFuture_finishPromise_withFuture___block_invoke;
  v11[3] = &unk_279A53558;
  v6 = promiseCopy;
  v12 = v6;
  futureCopy = future;
  [futureCopy addSuccessBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__PFTFuture_finishPromise_withFuture___block_invoke_2;
  v9[3] = &unk_279A53530;
  v10 = v6;
  v8 = v6;
  [futureCopy addFailureBlock:v9];
}

+ (id)chain:(id)chain
{
  chainCopy = chain;
  firstObject = [chainCopy firstObject];
  pft_tail = [chainCopy pft_tail];

  if (off_2870E41C0(&__block_literal_global_4, pft_tail))
  {
    v7 = firstObject;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __19__PFTFuture_chain___block_invoke;
    v15[3] = &unk_279A535A8;
    selfCopy = self;
    v8 = pft_tail;
    v16 = v8;
    v9 = [firstObject flatMap:v15];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __19__PFTFuture_chain___block_invoke_2;
    v12[3] = &unk_279A535D0;
    selfCopy2 = self;
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

+ (id)sequence:(id)sequence
{
  v28 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  if (off_2870E41C0(&__block_literal_global_4, sequenceCopy))
  {
    v4 = [PFTFuture futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    firstObject = [sequenceCopy firstObject];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = sequenceCopy;
    pft_tail = [sequenceCopy pft_tail];
    v8 = [pft_tail countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        v12 = firstObject;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(pft_tail);
          }

          v13 = *(*(&v23 + 1) + 8 * v11);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __22__PFTFuture_sequence___block_invoke;
          v20[3] = &unk_279A535F8;
          v21 = array;
          v22 = v13;
          firstObject = [v12 flatMap:v20];

          ++v11;
          v12 = firstObject;
        }

        while (v9 != v11);
        v9 = [pft_tail countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __22__PFTFuture_sequence___block_invoke_2;
    v18[3] = &unk_279A53620;
    v19 = array;
    v14 = array;
    v4 = [firstObject flatMap:v18];

    sequenceCopy = v17;
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

+ (id)join:(id)join
{
  joinCopy = join;
  v4 = [joinCopy count];
  if (v4 == 1)
  {
    firstObject = [joinCopy firstObject];
    v6 = [PFTFuture _joinOne:firstObject];
  }

  else
  {
    if (v4)
    {
      [PFTFuture _joinMany:joinCopy];
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

+ (id)_joinMany:(id)many
{
  v32 = *MEMORY[0x277D85DE8];
  manyCopy = many;
  v4 = objc_alloc_init(PFTPromise);
  v5 = [PFTScheduler synchronousSerialDispatchQueueWithName:@"com.apple.PosterFuturesKit.future.join"];
  v6 = [manyCopy count];
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  {
    null = [MEMORY[0x277CBEB68] null];
    [i addObject:null];
  }

  v9 = [manyCopy mutableCopy];
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
  [manyCopy enumerateObjectsUsingBlock:v26];
  future = [(PFTPromise *)v12 future];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = manyCopy;
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

        [future addCalculationDependency:{*(*(&v22 + 1) + 8 * j), v22}];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];

  return future;
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

- (PFTFuture)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[_PFTBlockFutureImpl alloc] initWithSchedulerProvider:providerCopy];

  v6 = [(PFTFuture *)self initWithImpl:v5];
  return v6;
}

- (PFTFuture)initWithImpl:(id)impl
{
  implCopy = impl;
  v12.receiver = self;
  v12.super_class = PFTFuture;
  v6 = [(PFTFuture *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
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
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)result:(id *)result
{
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [(PFTFuture *)self resultBeforeDate:distantFuture error:result];

  return v6;
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:timeout];
  v7 = [(PFTFuture *)self resultBeforeDate:v6 error:error];

  return v7;
}

- (id)timeoutAfter:(double)after scheduler:(id)scheduler cleanup:(id)cleanup
{
  schedulerCopy = scheduler;
  cleanupCopy = cleanup;
  if (!schedulerCopy)
  {
    schedulerCopy = +[PFTScheduler mainThreadScheduler];
  }

  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__PFTFuture_timeoutAfter_scheduler_cleanup___block_invoke;
  v20[3] = &unk_279A52C88;
  objc_copyWeak(&v22, &location);
  v10 = cleanupCopy;
  v21 = v10;
  v11 = [schedulerCopy afterDelay:v20 performBlock:after];
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

- (BOOL)finishWithResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
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

  v7 = [(PFTFuture *)self finishWithResult:resultCopy error:0];

  return v7;
}

- (BOOL)finishWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
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

  v7 = [(PFTFuture *)self finishWithResult:0 error:errorCopy];

  return v7;
}

- (BOOL)cancelWithReason:(id)reason
{
  v12[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = reasonCopy;
  if (reasonCopy)
  {
    v11 = *MEMORY[0x277CCA470];
    v12[0] = reasonCopy;
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

- (void)addSuccessBlock:(id)block scheduler:(id)scheduler
{
  blockCopy = block;
  schedulerCopy = scheduler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__PFTFuture_addSuccessBlock_scheduler___block_invoke;
  v10[3] = &unk_279A53708;
  v11 = schedulerCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
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

- (void)addFailureBlock:(id)block scheduler:(id)scheduler
{
  blockCopy = block;
  schedulerCopy = scheduler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__PFTFuture_addFailureBlock_scheduler___block_invoke;
  v10[3] = &unk_279A53730;
  v11 = schedulerCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
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

- (void)addSuccessBlock:(id)block andFailureBlock:(id)failureBlock
{
  blockCopy = block;
  failureBlockCopy = failureBlock;
  if (blockCopy)
  {
    [(PFTFuture *)self addSuccessBlock:blockCopy];
  }

  if (failureBlockCopy)
  {
    [(PFTFuture *)self addFailureBlock:failureBlockCopy];
  }
}

- (void)addSuccessBlock:(id)block andFailureBlock:(id)failureBlock scheduler:(id)scheduler
{
  blockCopy = block;
  failureBlockCopy = failureBlock;
  schedulerCopy = scheduler;
  if (blockCopy)
  {
    [(PFTFuture *)self addSuccessBlock:blockCopy scheduler:schedulerCopy];
  }

  if (failureBlockCopy)
  {
    [(PFTFuture *)self addFailureBlock:failureBlockCopy scheduler:schedulerCopy];
  }
}

- (void)addCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__PFTFuture_addCompletionBlock___block_invoke;
    v8[3] = &unk_279A53758;
    v9 = blockCopy;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__PFTFuture_addCompletionBlock___block_invoke_2;
    v6[3] = &unk_279A53780;
    v7 = v9;
    [(PFTFuture *)self addSuccessBlock:v8 andFailureBlock:v6];
  }
}

- (void)addCompletionBlock:(id)block scheduler:(id)scheduler
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__PFTFuture_addCompletionBlock_scheduler___block_invoke;
    v10[3] = &unk_279A53758;
    v11 = blockCopy;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__PFTFuture_addCompletionBlock_scheduler___block_invoke_2;
    v8[3] = &unk_279A53780;
    v9 = v11;
    [(PFTFuture *)self addSuccessBlock:v10 andFailureBlock:v8 scheduler:scheduler];
  }
}

- (id)trackWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (activityCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__PFTFuture_trackWithActivity___block_invoke;
    v9[3] = &unk_279A53558;
    v10 = activityCopy;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__PFTFuture_trackWithActivity___block_invoke_2;
    v7[3] = &unk_279A53530;
    v8 = v10;
    [(PFTFuture *)self addSuccessBlock:v9 andFailureBlock:v7];
  }

  return self;
}

- (id)flatMap:(id)map
{
  mapCopy = map;
  v5 = +[PFTSchedulerProvider defaultProvider];
  v6 = [(PFTFuture *)self flatMap:mapCopy continuationScheduler:0 schedulerProvider:v5];

  return v6;
}

- (id)flatMap:(id)map continuationScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  mapCopy = map;
  v8 = +[PFTSchedulerProvider defaultProvider];
  v9 = [(PFTFuture *)self flatMap:mapCopy continuationScheduler:schedulerCopy schedulerProvider:v8];

  return v9;
}

- (id)recover:(id)recover
{
  recoverCopy = recover;
  v5 = +[PFTSchedulerProvider defaultProvider];
  v6 = [(PFTFuture *)self recover:recoverCopy onErrorScheduler:0 schedulerProvider:v5];

  return v6;
}

- (id)recover:(id)recover onErrorScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  recoverCopy = recover;
  v8 = +[PFTSchedulerProvider defaultProvider];
  v9 = [(PFTFuture *)self recover:recoverCopy onErrorScheduler:schedulerCopy schedulerProvider:v8];

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