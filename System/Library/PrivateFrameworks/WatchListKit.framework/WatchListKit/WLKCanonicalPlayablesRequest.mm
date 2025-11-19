@interface WLKCanonicalPlayablesRequest
- (WLKCanonicalPlayablesRequest)initWithCanonicalID:(id)a3;
- (WLKCanonicalPlayablesRequest)initWithStatsID:(id)a3;
- (void)makeRequestWithCompletion:(id)a3;
- (void)makeRequestWithCompletion:(id)a3 canonicalType:(int64_t)a4;
@end

@implementation WLKCanonicalPlayablesRequest

- (WLKCanonicalPlayablesRequest)initWithCanonicalID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = WLKCanonicalPlayablesRequest;
    v5 = [(WLKCanonicalPlayablesRequest *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      canonicalID = v5->_canonicalID;
      v5->_canonicalID = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"canonicalID must be non-nil"];
    v8 = 0;
  }

  return v8;
}

- (WLKCanonicalPlayablesRequest)initWithStatsID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = WLKCanonicalPlayablesRequest;
    v5 = [(WLKCanonicalPlayablesRequest *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      statsID = v5->_statsID;
      v5->_statsID = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"statsID must be non-nil"];
    v8 = 0;
  }

  return v8;
}

- (void)makeRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_canonicalID;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [WLKCanonicalPlayablesRequestOperation alloc];
    v8 = [(WLKRequest *)self caller];
    v9 = [(WLKCanonicalPlayablesRequestOperation *)v7 initWithContentID:v5 caller:v8 isMovie:1];

    objc_initWeak(&location, v9);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__WLKCanonicalPlayablesRequest_makeRequestWithCompletion___block_invoke;
    v19[3] = &unk_279E5F0C0;
    objc_copyWeak(&v22, &location);
    v19[4] = self;
    v10 = v6;
    v20 = v10;
    v21 = v4;
    [(WLKCanonicalPlayablesRequestOperation *)v9 setCompletionBlock:v19];
    v11 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [v11 addOperation:v9];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = [WLKCanonicalPlayablesSiriRequestOperation alloc];
    statsID = self->_statsID;
    v14 = [(WLKRequest *)self caller];
    v10 = [(WLKCanonicalPlayablesSiriRequestOperation *)v12 initWithStatsID:statsID caller:v14];

    objc_initWeak(&location, v10);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__WLKCanonicalPlayablesRequest_makeRequestWithCompletion___block_invoke_2;
    v16[3] = &unk_279E5E660;
    objc_copyWeak(&v18, &location);
    v17 = v4;
    [(WLKCanonicalPlayablesSiriRequestOperation *)v10 setCompletionBlock:v16];
    v15 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [v15 addOperation:v10];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __58__WLKCanonicalPlayablesRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:*(a1 + 40)];
  NSLog(&cfstr_ElapsedTime5f.isa, v4, v6);

  if (*(a1 + 48))
  {
    v7 = [WeakRetained response];
    v8 = *(a1 + 48);
    v9 = [WeakRetained error];
    (*(v8 + 16))(v8, v7, v9);
  }
}

void __58__WLKCanonicalPlayablesRequest_makeRequestWithCompletion___block_invoke_2(uint64_t a1)
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

- (void)makeRequestWithCompletion:(id)a3 canonicalType:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [WLKCanonicalPlayablesRequestOperation alloc];
  canonicalID = self->_canonicalID;
  v10 = [(WLKRequest *)self caller];
  v11 = [(WLKCanonicalPlayablesRequestOperation *)v8 initWithContentID:canonicalID caller:v10 canonicalType:a4];

  objc_initWeak(&location, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__WLKCanonicalPlayablesRequest_makeRequestWithCompletion_canonicalType___block_invoke;
  v15[3] = &unk_279E5F0C0;
  objc_copyWeak(&v18, &location);
  v15[4] = self;
  v12 = v7;
  v16 = v12;
  v13 = v6;
  v17 = v13;
  [(WLKCanonicalPlayablesRequestOperation *)v11 setCompletionBlock:v15];
  v14 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [v14 addOperation:v11];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __72__WLKCanonicalPlayablesRequest_makeRequestWithCompletion_canonicalType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:*(a1 + 40)];
  NSLog(&cfstr_ElapsedTime5f.isa, v4, v6);

  if (*(a1 + 48))
  {
    v7 = [WeakRetained response];
    v8 = *(a1 + 48);
    v9 = [WeakRetained error];
    (*(v8 + 16))(v8, v7, v9);
  }
}

@end