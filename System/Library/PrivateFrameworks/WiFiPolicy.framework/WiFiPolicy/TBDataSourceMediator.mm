@interface TBDataSourceMediator
- (TBDataSourceMediator)initWithLocalStoreDescriptor:(id)descriptor;
- (TBDataSourceMediator)initWithLocalStoreDescriptor:(id)descriptor remoteStore:(id)store;
- (void)executeFetchRequest:(id)request;
- (void)prune3BarsNetworks:(unint64_t)networks completionHandler:(id)handler;
- (void)removeAllWithCompletionHandler:(id)handler;
- (void)removeWithFetchRequest:(id)request;
@end

@implementation TBDataSourceMediator

- (TBDataSourceMediator)initWithLocalStoreDescriptor:(id)descriptor remoteStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = TBDataSourceMediator;
  descriptorCopy = descriptor;
  v8 = [(TBDataSourceMediator *)&v17 init];
  v9 = [TBCoreDataSource alloc];
  v10 = [(TBCoreDataSource *)v9 initWithStoreDescriptor:descriptorCopy, v17.receiver, v17.super_class];

  local = v8->_local;
  v8->_local = v10;

  remote = v8->_remote;
  v8->_remote = storeCopy;
  v13 = storeCopy;

  v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
  fetchQueue = v8->_fetchQueue;
  v8->_fetchQueue = v14;

  return v8;
}

- (TBDataSourceMediator)initWithLocalStoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_alloc_init(TBRemoteDataSource);
  v6 = [(TBDataSourceMediator *)self initWithLocalStoreDescriptor:descriptorCopy remoteStore:v5];

  return v6;
}

- (void)executeFetchRequest:(id)request
{
  requestCopy = request;
  NSLog(&cfstr_SExecutingFetc.isa, "[TBDataSourceMediator executeFetchRequest:]", requestCopy);
  if ([requestCopy sourcePolicy] == 2)
  {
    if ([requestCopy cacheable])
    {
      v4 = [TBRemoteFetchAndCacheDataSource alloc];
      remote = [(TBDataSourceMediator *)self remote];
      local = [(TBDataSourceMediator *)self local];
      v7 = [(TBRemoteFetchAndCacheDataSource *)v4 initWithFetchDataSource:remote cacheProvider:local];

      v8 = [[TBRemoteFetchAndCacheOperation alloc] initWithFetchRequest:requestCopy dataSource:v7];
LABEL_6:
      fetchQueue = [(TBDataSourceMediator *)self fetchQueue];
      [fetchQueue addOperation:v8];

      goto LABEL_11;
    }

    remote = self->_remote;
  }

  else
  {
    if ([requestCopy sourcePolicy] == 3)
    {
      v9 = [TBPreferLocalFetchDataSource alloc];
      local2 = [(TBDataSourceMediator *)self local];
      remote2 = [(TBDataSourceMediator *)self remote];
      local3 = [(TBDataSourceMediator *)self local];
      v7 = [(TBPreferLocalFetchDataSource *)v9 initWithLocalDataSource:local2 remoteDataSource:remote2 cacheProvider:local3];

      v13 = [TBPreferLocalFetchOperation alloc];
      fetchQueue2 = [(TBDataSourceMediator *)self fetchQueue];
      v8 = [(TBPreferLocalFetchOperation *)v13 initWithFetchRequest:requestCopy dataSource:v7 fetchQueue:fetchQueue2];

      goto LABEL_6;
    }

    if ([requestCopy sourcePolicy] != 1)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unhandled source policy" userInfo:0];
      objc_exception_throw(v17);
    }

    remote = self->_local;
  }

  [(TBCoreDataSource *)remote executeFetchRequest:requestCopy];
LABEL_11:
}

- (void)removeWithFetchRequest:(id)request
{
  requestCopy = request;
  NSLog(&cfstr_SRemovingWithF.isa, "[TBDataSourceMediator removeWithFetchRequest:]", requestCopy);
  local = self->_local;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__TBDataSourceMediator_removeWithFetchRequest___block_invoke;
  v7[3] = &unk_2789C73D0;
  v8 = requestCopy;
  v6 = requestCopy;
  [(TBCoreDataSource *)local removeWithFetchRequest:v6 completionHandler:v7];
}

void __47__TBDataSourceMediator_removeWithFetchRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resultsHandler];
  v1 = [[TBLocalFetchResponse alloc] initWithResults:0 entityDescription:0];
  v2[2](v2, v1, 0, 1);
}

- (void)removeAllWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(&cfstr_SRemovingAll.isa, "[TBDataSourceMediator removeAllWithCompletionHandler:]");
  [(TBCoreDataSource *)self->_local removeAllWithCompletionHandler:handlerCopy];
}

- (void)prune3BarsNetworks:(unint64_t)networks completionHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(&cfstr_SPruneLocalSto.isa, "[TBDataSourceMediator prune3BarsNetworks:completionHandler:]", networks);
  [(TBCoreDataSource *)self->_local prune3BarsNetworks:networks completionHandler:handlerCopy];
}

@end