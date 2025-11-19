@interface TBRemoteFetchAndCacheOperation
- (TBRemoteFetchAndCacheOperation)initWithFetchRequest:(id)a3 dataSource:(id)a4;
- (id)name;
- (void)finish;
- (void)start;
@end

@implementation TBRemoteFetchAndCacheOperation

- (TBRemoteFetchAndCacheOperation)initWithFetchRequest:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TBRemoteFetchAndCacheOperation;
  v8 = [(TBRemoteFetchAndCacheOperation *)&v13 init];
  fetchRequest = v8->_fetchRequest;
  v8->_fetchRequest = v6;
  v10 = v6;

  dataSource = v8->_dataSource;
  v8->_dataSource = v7;

  return v8;
}

- (void)start
{
  self->_finished = 0;
  v3 = [MEMORY[0x277CBEAA8] date];
  start = self->_start;
  self->_start = v3;

  objc_initWeak(&location, self);
  v5 = [(TBRemoteFetchAndCacheOperation *)self fetchRequest];
  v6 = [v5 copyWithZone:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__TBRemoteFetchAndCacheOperation_start__block_invoke;
  v9[3] = &unk_2789C8428;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [v6 setResultsHandler:v9];
  v7 = [(TBRemoteFetchAndCacheOperation *)self dataSource];
  v8 = [v7 fetchDataSource];
  [v8 executeFetchRequest:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __39__TBRemoteFetchAndCacheOperation_start__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained dataSource];
  v11 = [v10 cacheProvider];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __39__TBRemoteFetchAndCacheOperation_start__block_invoke_2;
  v21 = &unk_2789C8400;
  v12 = v7;
  v22 = v12;
  v13 = v8;
  v23 = v13;
  v25 = a4;
  objc_copyWeak(&v24, (a1 + 40));
  [v11 cacheFetchResponse:v12 completionHandler:&v18];

  v14 = [*(a1 + 32) fetchRequest];
  v15 = [v14 resultsHandler];

  if (v15)
  {
    v16 = [*(a1 + 32) fetchRequest];
    v17 = [v16 resultsHandler];
    (v17)[2](v17, v12, 0, a4);
  }

  objc_destroyWeak(&v24);
}

void __39__TBRemoteFetchAndCacheOperation_start__block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_SCompletedCach.isa, "[TBRemoteFetchAndCacheOperation start]_block_invoke_2", *(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setResponse:v3];

    NSLog(&cfstr_SFinishingCach.isa, "[TBRemoteFetchAndCacheOperation start]_block_invoke_2");
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 finish];
  }
}

- (void)finish
{
  v3 = [(TBRemoteFetchAndCacheOperation *)self name];
  [(NSDate *)self->_start timeIntervalSinceNow];
  NSLog(&cfstr_FinishedElapse.isa, v3, -v4);

  [(TBRemoteFetchAndCacheOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = 1;

  [(TBRemoteFetchAndCacheOperation *)self didChangeValueForKey:@"isFinished"];
}

- (id)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end