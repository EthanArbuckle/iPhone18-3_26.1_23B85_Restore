@interface WLKSiriBestPlayablesRequest
- (WLKSiriBestPlayablesRequest)init;
- (WLKSiriBestPlayablesRequest)initWithStatsIDs:(id)a3;
- (void)makeRequestWithCompletion:(id)a3;
@end

@implementation WLKSiriBestPlayablesRequest

- (WLKSiriBestPlayablesRequest)init
{
  [(WLKSiriBestPlayablesRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WLKSiriBestPlayablesRequest)initWithStatsIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WLKSiriBestPlayablesRequest;
  v5 = [(WLKSiriBestPlayablesRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    statsIDs = v5->_statsIDs;
    v5->_statsIDs = v6;
  }

  return v5;
}

- (void)makeRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [WLKSiriBestPlayableForStatsIDsOperation alloc];
  v6 = [(WLKSiriBestPlayablesRequest *)self statsIDs];
  v7 = [(WLKRequest *)self caller];
  v8 = [(WLKSiriBestPlayableForStatsIDsOperation *)v5 initWithStatsIDs:v6 caller:v7];

  objc_initWeak(&location, v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__WLKSiriBestPlayablesRequest_makeRequestWithCompletion___block_invoke;
  v11[3] = &unk_279E5E660;
  objc_copyWeak(&v13, &location);
  v9 = v4;
  v12 = v9;
  [(WLKSiriBestPlayableForStatsIDsOperation *)v8 setCompletionBlock:v11];
  v10 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [v10 addOperation:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __57__WLKSiriBestPlayablesRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v6 = WeakRetained;
    v3 = [WeakRetained response];
    v4 = *(a1 + 32);
    v5 = [v6 error];
    (*(v4 + 16))(v4, v3, v5);

    WeakRetained = v6;
  }
}

@end