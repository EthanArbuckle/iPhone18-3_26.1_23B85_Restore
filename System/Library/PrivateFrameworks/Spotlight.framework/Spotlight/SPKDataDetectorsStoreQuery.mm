@interface SPKDataDetectorsStoreQuery
- (void)cancel;
- (void)start;
@end

@implementation SPKDataDetectorsStoreQuery

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = SPKDataDetectorsStoreQuery;
  [(SPKQuery *)&v3 cancel];
  [(SSDataDetectorResultGenerator *)self->_generator cancel];
}

- (void)start
{
  v10.receiver = self;
  v10.super_class = SPKDataDetectorsStoreQuery;
  [(SPKQuery *)&v10 start];
  if (![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:6])
  {
    userQueryString = [(SPKQuery *)self userQueryString];
    v4 = [userQueryString mutableCopy];

    v5 = objc_alloc_init(MEMORY[0x277D658E0]);
    generator = self->_generator;
    self->_generator = v5;

    v7 = self->_generator;
    queryId = [(SPKQuery *)self queryId];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__SPKDataDetectorsStoreQuery_start__block_invoke;
    v9[3] = &unk_279CFEB38;
    v9[4] = self;
    [(SSDataDetectorResultGenerator *)v7 getResultSections:v4 queryId:queryId completion:v9];
  }
}

void __35__SPKDataDetectorsStoreQuery_start__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(*(a1 + 32) sourceKind:"queryGroupId") sections:{6, v5}];
    [v3 setTopHitIsIn:1];
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v3);
  }
}

@end