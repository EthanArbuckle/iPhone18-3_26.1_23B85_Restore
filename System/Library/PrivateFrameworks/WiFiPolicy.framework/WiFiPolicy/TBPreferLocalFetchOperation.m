@interface TBPreferLocalFetchOperation
- (BOOL)_doResults:(id)a3 satisfyFetchRequest:(id)a4 keysToFetchRemotely:(id *)a5 satisfiedKeys:(id *)a6;
- (TBPreferLocalFetchOperation)initWithFetchRequest:(id)a3 dataSource:(id)a4 fetchQueue:(id)a5;
- (id)_tileItemsFromTileKeys:(id)a3;
- (id)name;
- (void)_captureCacheEventWithStatus:(unint64_t)a3 userInfo:(id)a4 error:(id)a5 type:(unint64_t)a6;
- (void)_fetchLocal;
- (void)_fetchRemote;
- (void)_mergeLocalAndRemoteResults:(id)a3;
- (void)finish;
- (void)finishAndCallCompletionWithResponse:(id)a3;
- (void)start;
@end

@implementation TBPreferLocalFetchOperation

- (id)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

void __42__TBPreferLocalFetchOperation__fetchLocal__block_invoke_2(uint64_t a1, void *a2)
{
  v24 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained fetchRequest];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 fetchRequest];
    v8 = [v7 userInfo];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v24 error];

  if (v9)
  {
    v10 = [v24 error];
    v11 = [v10 code];

    if (v11 == 102)
    {
      v12 = 3;
    }

    else
    {
      v19 = [v24 error];
      v20 = [v19 code];

      if (v20 == 103)
      {
        v12 = 2;
      }

      else
      {
        v12 = 4;
      }
    }

    v21 = [v24 error];
    NSLog(&cfstr_SLocalFetchErr.isa, "[TBPreferLocalFetchOperation _fetchLocal]_block_invoke_2", v21);

    v22 = objc_loadWeakRetained((a1 + 32));
    v23 = [v24 error];
    [v22 _captureCacheEventWithStatus:v12 userInfo:v8 error:v23 type:*(a1 + 40)];

    v18 = objc_loadWeakRetained((a1 + 32));
    [v18 _fetchRemote];
  }

  else
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    [v13 setResponse:v24];

    v14 = [v24 results];
    v15 = [v14 count];
    v16 = [v24 tiles];
    NSLog(&cfstr_SResultsDTiles.isa, "-[TBPreferLocalFetchOperation _fetchLocal]_block_invoke_2", v15, [v16 count]);

    v17 = objc_loadWeakRetained((a1 + 32));
    [v17 _captureCacheEventWithStatus:1 userInfo:v8 error:0 type:*(a1 + 40)];

    v18 = objc_loadWeakRetained((a1 + 32));
    [v18 finishAndCallCompletionWithResponse:v24];
  }
}

- (void)start
{
  self->_finished = 0;
  v3 = [MEMORY[0x277CBEAA8] date];
  start = self->_start;
  self->_start = v3;

  v5 = [(TBPreferLocalFetchOperation *)self fetchRequest];
  v6 = [v5 copyWithZone:0];
  [(TBPreferLocalFetchOperation *)self setFetchRequestCopy:v6];

  [(TBPreferLocalFetchOperation *)self _fetchLocal];
}

- (void)_fetchLocal
{
  objc_initWeak(&location, self);
  v3 = [(TBPreferLocalFetchOperation *)self fetchRequest];
  v4 = [v3 descriptor];
  if ([v4 type] == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(TBPreferLocalFetchOperation *)self fetchRequestCopy];
  objc_initWeak(&from, v6);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__TBPreferLocalFetchOperation__fetchLocal__block_invoke;
  v14[3] = &unk_2789C7B00;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  v7 = [(TBPreferLocalFetchOperation *)self fetchRequestCopy];
  [v7 setPreferLocalHandler:v14];

  v12 = MEMORY[0x277D85DD0];
  objc_copyWeak(v13, &location);
  v13[1] = v5;
  v8 = [(TBPreferLocalFetchOperation *)self fetchRequestCopy:v12];
  [v8 setResultsHandler:&v12];

  v9 = [(TBPreferLocalFetchOperation *)self dataSource];
  v10 = [v9 localDataSource];
  v11 = [(TBPreferLocalFetchOperation *)self fetchRequestCopy];
  [v10 executeFetchRequest:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

uint64_t __42__TBPreferLocalFetchOperation__fetchLocal__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  v13 = 0;
  v6 = [WeakRetained _doResults:v3 satisfyFetchRequest:v5 keysToFetchRemotely:&v13 satisfiedKeys:&v12];
  v7 = v13;
  v8 = v12;

  if (v6)
  {
    NSLog(&cfstr_SRequestIsFull.isa, "-[TBPreferLocalFetchOperation _fetchLocal]_block_invoke", [v3 count]);
  }

  else
  {
    NSLog(&cfstr_SRequestUnsati.isa, "[TBPreferLocalFetchOperation _fetchLocal]_block_invoke");
    v9 = objc_loadWeakRetained((a1 + 32));
    [v9 setRemoteKeysToFetch:v7];

    NSLog(&cfstr_KeysNeededToFe.isa, v7);
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 setSatisfiedLocalKeys:v8];

    NSLog(&cfstr_SatisifedLocal.isa, v8);
  }

  return v6;
}

- (void)finish
{
  v3 = [(TBPreferLocalFetchOperation *)self name];
  [(NSDate *)self->_start timeIntervalSinceNow];
  NSLog(&cfstr_FinishedElapse.isa, v3, -v4);

  [(TBPreferLocalFetchOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = 1;

  [(TBPreferLocalFetchOperation *)self didChangeValueForKey:@"isFinished"];
}

- (TBPreferLocalFetchOperation)initWithFetchRequest:(id)a3 dataSource:(id)a4 fetchQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = TBPreferLocalFetchOperation;
  v11 = [(TBPreferLocalFetchOperation *)&v18 init];
  fetchRequest = v11->_fetchRequest;
  v11->_fetchRequest = v8;
  v13 = v8;

  dataSource = v11->_dataSource;
  v11->_dataSource = v9;
  v15 = v9;

  fetchQueue = v11->_fetchQueue;
  v11->_fetchQueue = v10;

  return v11;
}

- (BOOL)_doResults:(id)a3 satisfyFetchRequest:(id)a4 keysToFetchRemotely:(id *)a5 satisfiedKeys:(id *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [v10 descriptor];
  if ([v11 type] == 2)
  {
  }

  else
  {
    v12 = [v10 descriptor];
    v13 = [v12 type];

    if (v13 != 3)
    {
      v25 = [v9 count] != 0;
      goto LABEL_20;
    }
  }

  v14 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [v10 descriptor];
  v16 = [v15 tileItems];

  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v29 + 1) + 8 * i) key];
        [v14 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  v22 = [v9 valueForKey:@"key"];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEB98] setWithArray:v22];
    [v14 minusSet:v23];

    v24 = [v14 count];
    v25 = v24 == 0;
    if (a5 && v24)
    {
      *a5 = [v14 allObjects];
    }

    if (a6)
    {
      v26 = v22;
      *a6 = v22;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)_fetchRemote
{
  v3 = [(TBPreferLocalFetchOperation *)self remoteKeysToFetch];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [(TBPreferLocalFetchOperation *)self fetchRequest];
  v6 = [v5 descriptor];
  if ([v6 type] != 2)
  {
    v7 = [(TBPreferLocalFetchOperation *)self fetchRequest];
    v8 = [v7 descriptor];
    v9 = [v8 type];

    if (v9 == 3)
    {
      goto LABEL_5;
    }

LABEL_6:
    v23 = [TBRemoteFetchAndCacheDataSource alloc];
    v24 = [(TBPreferLocalFetchOperation *)self dataSource];
    v25 = [v24 remoteDataSource];
    v26 = [(TBPreferLocalFetchOperation *)self dataSource];
    v27 = [v26 cacheProvider];
    v11 = [(TBRemoteFetchAndCacheDataSource *)v23 initWithFetchDataSource:v25 cacheProvider:v27];

    v28 = [TBRemoteFetchAndCacheOperation alloc];
    v29 = [(TBPreferLocalFetchOperation *)self fetchRequest];
    v12 = [(TBRemoteFetchAndCacheOperation *)v28 initWithFetchRequest:v29 dataSource:v11];

    [(TBPreferLocalFetchOperation *)self addDependency:v12];
    v30 = [(TBPreferLocalFetchOperation *)self fetchQueue];
    [v30 addOperation:v12];

    objc_initWeak(&location, self);
    objc_initWeak(&from, v12);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __43__TBPreferLocalFetchOperation__fetchRemote__block_invoke_2;
    v31[3] = &unk_2789C7B50;
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, &from);
    [(TBTileFetchRequestDescriptor *)v12 setCompletionBlock:v31];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_7;
  }

LABEL_5:
  v10 = [(TBPreferLocalFetchOperation *)self remoteKeysToFetch];
  v11 = [(TBPreferLocalFetchOperation *)self _tileItemsFromTileKeys:v10];

  v12 = [[TBTileFetchRequestDescriptor alloc] initWithTileItems:v11];
  v13 = [(TBPreferLocalFetchOperation *)self fetchRequest];
  v14 = +[TBTileFetchRequest fetchRequestWithDescriptor:sourcePolicy:cacheable:](TBTileFetchRequest, "fetchRequestWithDescriptor:sourcePolicy:cacheable:", v12, 2, [v13 cacheable]);

  v15 = [TBRemoteFetchAndCacheDataSource alloc];
  v16 = [(TBPreferLocalFetchOperation *)self dataSource];
  v17 = [v16 remoteDataSource];
  v18 = [(TBPreferLocalFetchOperation *)self dataSource];
  v19 = [v18 cacheProvider];
  v20 = [(TBRemoteFetchAndCacheDataSource *)v15 initWithFetchDataSource:v17 cacheProvider:v19];

  v21 = [[TBRemoteFetchAndCacheOperation alloc] initWithFetchRequest:v14 dataSource:v20];
  [(TBPreferLocalFetchOperation *)self addDependency:v21];
  v22 = [(TBPreferLocalFetchOperation *)self fetchQueue];
  [v22 addOperation:v21];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v21);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __43__TBPreferLocalFetchOperation__fetchRemote__block_invoke;
  v34[3] = &unk_2789C7B50;
  objc_copyWeak(&v35, &location);
  objc_copyWeak(&v36, &from);
  [(TBRemoteFetchAndCacheOperation *)v21 setCompletionBlock:v34];
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

LABEL_7:
}

void __43__TBPreferLocalFetchOperation__fetchRemote__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 response];
  [WeakRetained _mergeLocalAndRemoteResults:v3];
}

void __43__TBPreferLocalFetchOperation__fetchRemote__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained response];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setResponse:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 finish];
}

- (void)_mergeLocalAndRemoteResults:(id)a3
{
  v4 = a3;
  v5 = [(TBPreferLocalFetchOperation *)self satisfiedLocalKeys];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [(TBPreferLocalFetchOperation *)self fetchRequest];
  v8 = [v7 descriptor];
  if ([v8 type] != 2)
  {
    v9 = [(TBPreferLocalFetchOperation *)self fetchRequest];
    v10 = [v9 descriptor];
    v11 = [v10 type];

    if (v11 == 3)
    {
      goto LABEL_5;
    }

LABEL_6:
    [(TBPreferLocalFetchOperation *)self finishAndCallCompletionWithResponse:v4];
    goto LABEL_7;
  }

LABEL_5:
  v12 = [(TBPreferLocalFetchOperation *)self satisfiedLocalKeys];
  NSLog(&cfstr_SFetchingRemai.isa, "[TBPreferLocalFetchOperation _mergeLocalAndRemoteResults:]", v12);

  v13 = [(TBPreferLocalFetchOperation *)self satisfiedLocalKeys];
  v14 = [(TBPreferLocalFetchOperation *)self _tileItemsFromTileKeys:v13];

  v15 = [[TBTileFetchRequestDescriptor alloc] initWithTileItems:v14];
  v16 = [TBTileFetchRequest fetchRequestWithDescriptor:v15 sourcePolicy:1 cacheable:0];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__TBPreferLocalFetchOperation__mergeLocalAndRemoteResults___block_invoke;
  v19[3] = &unk_2789C7B78;
  v20 = v4;
  objc_copyWeak(&v21, &location);
  [v16 setResultsHandler:v19];
  v17 = [(TBPreferLocalFetchOperation *)self dataSource];
  v18 = [v17 localDataSource];
  [v18 executeFetchRequest:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

LABEL_7:
}

void __59__TBPreferLocalFetchOperation__mergeLocalAndRemoteResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(TBMutableTileFetchResponse);
  [(TBMutableTileFetchResponse *)v5 addResponse:*(a1 + 32)];
  [(TBMutableTileFetchResponse *)v5 addResponse:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finishAndCallCompletionWithResponse:v5];
}

- (id)_tileItemsFromTileKeys:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [TBTileItemDescriptor tileItemDescriptorWithKey:v11, v15];
          [v4 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)finishAndCallCompletionWithResponse:(id)a3
{
  v4 = a3;
  [(TBPreferLocalFetchOperation *)self setResponse:v4];
  v5 = [(TBPreferLocalFetchOperation *)self fetchRequest];
  v6 = [v5 resultsHandler];
  (v6)[2](v6, v4, 0, 1);

  [(TBPreferLocalFetchOperation *)self finish];
}

- (void)_captureCacheEventWithStatus:(unint64_t)a3 userInfo:(id)a4 error:(id)a5 type:(unint64_t)a6
{
  v15 = a4;
  v9 = a5;
  v10 = [v15 objectForKeyedSubscript:@"staleness"];

  if (v10)
  {
    v11 = [v15 objectForKeyedSubscript:@"staleness"];
    v10 = [v11 unsignedIntegerValue];
  }

  v12 = [v15 objectForKeyedSubscript:@"tileKey"];

  if (v12)
  {
    v13 = [v15 objectForKeyedSubscript:@"tileKey"];
    v12 = [v13 unsignedIntegerValue];
  }

  v14 = [TBCacheAnalyticsEvent cacheAnalyticsEventWithStatus:a3 staleness:v10 tileKey:v12 type:a6 error:v9];
  [TBAnalytics captureEvent:v14];
}

@end