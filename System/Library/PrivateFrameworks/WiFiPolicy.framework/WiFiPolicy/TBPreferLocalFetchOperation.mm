@interface TBPreferLocalFetchOperation
- (BOOL)_doResults:(id)results satisfyFetchRequest:(id)request keysToFetchRemotely:(id *)remotely satisfiedKeys:(id *)keys;
- (TBPreferLocalFetchOperation)initWithFetchRequest:(id)request dataSource:(id)source fetchQueue:(id)queue;
- (id)_tileItemsFromTileKeys:(id)keys;
- (id)name;
- (void)_captureCacheEventWithStatus:(unint64_t)status userInfo:(id)info error:(id)error type:(unint64_t)type;
- (void)_fetchLocal;
- (void)_fetchRemote;
- (void)_mergeLocalAndRemoteResults:(id)results;
- (void)finish;
- (void)finishAndCallCompletionWithResponse:(id)response;
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
  date = [MEMORY[0x277CBEAA8] date];
  start = self->_start;
  self->_start = date;

  fetchRequest = [(TBPreferLocalFetchOperation *)self fetchRequest];
  v6 = [fetchRequest copyWithZone:0];
  [(TBPreferLocalFetchOperation *)self setFetchRequestCopy:v6];

  [(TBPreferLocalFetchOperation *)self _fetchLocal];
}

- (void)_fetchLocal
{
  objc_initWeak(&location, self);
  fetchRequest = [(TBPreferLocalFetchOperation *)self fetchRequest];
  descriptor = [fetchRequest descriptor];
  if ([descriptor type] == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  fetchRequestCopy = [(TBPreferLocalFetchOperation *)self fetchRequestCopy];
  objc_initWeak(&from, fetchRequestCopy);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__TBPreferLocalFetchOperation__fetchLocal__block_invoke;
  v14[3] = &unk_2789C7B00;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  fetchRequestCopy2 = [(TBPreferLocalFetchOperation *)self fetchRequestCopy];
  [fetchRequestCopy2 setPreferLocalHandler:v14];

  v12 = MEMORY[0x277D85DD0];
  objc_copyWeak(v13, &location);
  v13[1] = v5;
  v8 = [(TBPreferLocalFetchOperation *)self fetchRequestCopy:v12];
  [v8 setResultsHandler:&v12];

  dataSource = [(TBPreferLocalFetchOperation *)self dataSource];
  localDataSource = [dataSource localDataSource];
  fetchRequestCopy3 = [(TBPreferLocalFetchOperation *)self fetchRequestCopy];
  [localDataSource executeFetchRequest:fetchRequestCopy3];

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
  name = [(TBPreferLocalFetchOperation *)self name];
  [(NSDate *)self->_start timeIntervalSinceNow];
  NSLog(&cfstr_FinishedElapse.isa, name, -v4);

  [(TBPreferLocalFetchOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = 1;

  [(TBPreferLocalFetchOperation *)self didChangeValueForKey:@"isFinished"];
}

- (TBPreferLocalFetchOperation)initWithFetchRequest:(id)request dataSource:(id)source fetchQueue:(id)queue
{
  requestCopy = request;
  sourceCopy = source;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = TBPreferLocalFetchOperation;
  v11 = [(TBPreferLocalFetchOperation *)&v18 init];
  fetchRequest = v11->_fetchRequest;
  v11->_fetchRequest = requestCopy;
  v13 = requestCopy;

  dataSource = v11->_dataSource;
  v11->_dataSource = sourceCopy;
  v15 = sourceCopy;

  fetchQueue = v11->_fetchQueue;
  v11->_fetchQueue = queueCopy;

  return v11;
}

- (BOOL)_doResults:(id)results satisfyFetchRequest:(id)request keysToFetchRemotely:(id *)remotely satisfiedKeys:(id *)keys
{
  v34 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  requestCopy = request;
  descriptor = [requestCopy descriptor];
  if ([descriptor type] == 2)
  {
  }

  else
  {
    descriptor2 = [requestCopy descriptor];
    type = [descriptor2 type];

    if (type != 3)
    {
      v25 = [resultsCopy count] != 0;
      goto LABEL_20;
    }
  }

  v14 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  descriptor3 = [requestCopy descriptor];
  tileItems = [descriptor3 tileItems];

  v17 = [tileItems countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(tileItems);
        }

        v21 = [*(*(&v29 + 1) + 8 * i) key];
        [v14 addObject:v21];
      }

      v18 = [tileItems countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  v22 = [resultsCopy valueForKey:@"key"];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEB98] setWithArray:v22];
    [v14 minusSet:v23];

    v24 = [v14 count];
    v25 = v24 == 0;
    if (remotely && v24)
    {
      *remotely = [v14 allObjects];
    }

    if (keys)
    {
      v26 = v22;
      *keys = v22;
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
  remoteKeysToFetch = [(TBPreferLocalFetchOperation *)self remoteKeysToFetch];
  if (!remoteKeysToFetch)
  {
    goto LABEL_6;
  }

  v4 = remoteKeysToFetch;
  fetchRequest = [(TBPreferLocalFetchOperation *)self fetchRequest];
  descriptor = [fetchRequest descriptor];
  if ([descriptor type] != 2)
  {
    fetchRequest2 = [(TBPreferLocalFetchOperation *)self fetchRequest];
    descriptor2 = [fetchRequest2 descriptor];
    type = [descriptor2 type];

    if (type == 3)
    {
      goto LABEL_5;
    }

LABEL_6:
    v23 = [TBRemoteFetchAndCacheDataSource alloc];
    dataSource = [(TBPreferLocalFetchOperation *)self dataSource];
    remoteDataSource = [dataSource remoteDataSource];
    dataSource2 = [(TBPreferLocalFetchOperation *)self dataSource];
    cacheProvider = [dataSource2 cacheProvider];
    v11 = [(TBRemoteFetchAndCacheDataSource *)v23 initWithFetchDataSource:remoteDataSource cacheProvider:cacheProvider];

    v28 = [TBRemoteFetchAndCacheOperation alloc];
    fetchRequest3 = [(TBPreferLocalFetchOperation *)self fetchRequest];
    v12 = [(TBRemoteFetchAndCacheOperation *)v28 initWithFetchRequest:fetchRequest3 dataSource:v11];

    [(TBPreferLocalFetchOperation *)self addDependency:v12];
    fetchQueue = [(TBPreferLocalFetchOperation *)self fetchQueue];
    [fetchQueue addOperation:v12];

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
  remoteKeysToFetch2 = [(TBPreferLocalFetchOperation *)self remoteKeysToFetch];
  v11 = [(TBPreferLocalFetchOperation *)self _tileItemsFromTileKeys:remoteKeysToFetch2];

  v12 = [[TBTileFetchRequestDescriptor alloc] initWithTileItems:v11];
  fetchRequest4 = [(TBPreferLocalFetchOperation *)self fetchRequest];
  v14 = +[TBTileFetchRequest fetchRequestWithDescriptor:sourcePolicy:cacheable:](TBTileFetchRequest, "fetchRequestWithDescriptor:sourcePolicy:cacheable:", v12, 2, [fetchRequest4 cacheable]);

  v15 = [TBRemoteFetchAndCacheDataSource alloc];
  dataSource3 = [(TBPreferLocalFetchOperation *)self dataSource];
  remoteDataSource2 = [dataSource3 remoteDataSource];
  dataSource4 = [(TBPreferLocalFetchOperation *)self dataSource];
  cacheProvider2 = [dataSource4 cacheProvider];
  v20 = [(TBRemoteFetchAndCacheDataSource *)v15 initWithFetchDataSource:remoteDataSource2 cacheProvider:cacheProvider2];

  v21 = [[TBRemoteFetchAndCacheOperation alloc] initWithFetchRequest:v14 dataSource:v20];
  [(TBPreferLocalFetchOperation *)self addDependency:v21];
  fetchQueue2 = [(TBPreferLocalFetchOperation *)self fetchQueue];
  [fetchQueue2 addOperation:v21];

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

- (void)_mergeLocalAndRemoteResults:(id)results
{
  resultsCopy = results;
  satisfiedLocalKeys = [(TBPreferLocalFetchOperation *)self satisfiedLocalKeys];
  if (!satisfiedLocalKeys)
  {
    goto LABEL_6;
  }

  v6 = satisfiedLocalKeys;
  fetchRequest = [(TBPreferLocalFetchOperation *)self fetchRequest];
  descriptor = [fetchRequest descriptor];
  if ([descriptor type] != 2)
  {
    fetchRequest2 = [(TBPreferLocalFetchOperation *)self fetchRequest];
    descriptor2 = [fetchRequest2 descriptor];
    type = [descriptor2 type];

    if (type == 3)
    {
      goto LABEL_5;
    }

LABEL_6:
    [(TBPreferLocalFetchOperation *)self finishAndCallCompletionWithResponse:resultsCopy];
    goto LABEL_7;
  }

LABEL_5:
  satisfiedLocalKeys2 = [(TBPreferLocalFetchOperation *)self satisfiedLocalKeys];
  NSLog(&cfstr_SFetchingRemai.isa, "[TBPreferLocalFetchOperation _mergeLocalAndRemoteResults:]", satisfiedLocalKeys2);

  satisfiedLocalKeys3 = [(TBPreferLocalFetchOperation *)self satisfiedLocalKeys];
  v14 = [(TBPreferLocalFetchOperation *)self _tileItemsFromTileKeys:satisfiedLocalKeys3];

  v15 = [[TBTileFetchRequestDescriptor alloc] initWithTileItems:v14];
  v16 = [TBTileFetchRequest fetchRequestWithDescriptor:v15 sourcePolicy:1 cacheable:0];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__TBPreferLocalFetchOperation__mergeLocalAndRemoteResults___block_invoke;
  v19[3] = &unk_2789C7B78;
  v20 = resultsCopy;
  objc_copyWeak(&v21, &location);
  [v16 setResultsHandler:v19];
  dataSource = [(TBPreferLocalFetchOperation *)self dataSource];
  localDataSource = [dataSource localDataSource];
  [localDataSource executeFetchRequest:v16];

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

- (id)_tileItemsFromTileKeys:(id)keys
{
  v20 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = keysCopy;
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

- (void)finishAndCallCompletionWithResponse:(id)response
{
  responseCopy = response;
  [(TBPreferLocalFetchOperation *)self setResponse:responseCopy];
  fetchRequest = [(TBPreferLocalFetchOperation *)self fetchRequest];
  resultsHandler = [fetchRequest resultsHandler];
  (resultsHandler)[2](resultsHandler, responseCopy, 0, 1);

  [(TBPreferLocalFetchOperation *)self finish];
}

- (void)_captureCacheEventWithStatus:(unint64_t)status userInfo:(id)info error:(id)error type:(unint64_t)type
{
  infoCopy = info;
  errorCopy = error;
  unsignedIntegerValue = [infoCopy objectForKeyedSubscript:@"staleness"];

  if (unsignedIntegerValue)
  {
    v11 = [infoCopy objectForKeyedSubscript:@"staleness"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];
  }

  unsignedIntegerValue2 = [infoCopy objectForKeyedSubscript:@"tileKey"];

  if (unsignedIntegerValue2)
  {
    v13 = [infoCopy objectForKeyedSubscript:@"tileKey"];
    unsignedIntegerValue2 = [v13 unsignedIntegerValue];
  }

  v14 = [TBCacheAnalyticsEvent cacheAnalyticsEventWithStatus:status staleness:unsignedIntegerValue tileKey:unsignedIntegerValue2 type:type error:errorCopy];
  [TBAnalytics captureEvent:v14];
}

@end