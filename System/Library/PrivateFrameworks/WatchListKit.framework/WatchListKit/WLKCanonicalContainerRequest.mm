@interface WLKCanonicalContainerRequest
- (WLKCanonicalContainerRequest)initWithCanonicalID:(id)d;
- (void)makeRequestWithCompletion:(id)completion;
- (void)makeRequestWithCompletion:(id)completion canonicalType:(int64_t)type;
@end

@implementation WLKCanonicalContainerRequest

- (WLKCanonicalContainerRequest)initWithCanonicalID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v10.receiver = self;
    v10.super_class = WLKCanonicalContainerRequest;
    v6 = [(WLKCanonicalContainerRequest *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_canonicalID, d);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"canonicalID must be non-nil"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)makeRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [WLKCanonicalContainerRequestOperation alloc];
  canonicalID = self->_canonicalID;
  caller = [(WLKRequest *)self caller];
  v9 = [(WLKCanonicalPlayablesRequestOperation *)v6 initWithContentID:canonicalID caller:caller isMovie:0];

  objc_initWeak(&location, v9);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __58__WLKCanonicalContainerRequest_makeRequestWithCompletion___block_invoke;
  v16 = &unk_279E5FA48;
  v10 = date;
  v17 = v10;
  objc_copyWeak(&v19, &location);
  v11 = completionCopy;
  v18 = v11;
  [(WLKCanonicalContainerRequestOperation *)v9 setCompletionBlock:&v13];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v9];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __58__WLKCanonicalContainerRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  NSLog(&cfstr_Wlkcanonicalco.isa, v3);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 40))
  {
    v8 = WeakRetained;
    v5 = [WeakRetained containerResponse];
    v6 = *(a1 + 40);
    v7 = [v8 error];
    (*(v6 + 16))(v6, v5, v7);

    WeakRetained = v8;
  }
}

- (void)makeRequestWithCompletion:(id)completion canonicalType:(int64_t)type
{
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [WLKCanonicalContainerRequestOperation alloc];
  canonicalID = self->_canonicalID;
  caller = [(WLKRequest *)self caller];
  v11 = [(WLKCanonicalPlayablesRequestOperation *)v8 initWithContentID:canonicalID caller:caller canonicalType:type];

  objc_initWeak(&location, v11);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72__WLKCanonicalContainerRequest_makeRequestWithCompletion_canonicalType___block_invoke;
  v18 = &unk_279E5FA48;
  v12 = date;
  v19 = v12;
  objc_copyWeak(&v21, &location);
  v13 = completionCopy;
  v20 = v13;
  [(WLKCanonicalContainerRequestOperation *)v11 setCompletionBlock:&v15];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v11];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __72__WLKCanonicalContainerRequest_makeRequestWithCompletion_canonicalType___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  NSLog(&cfstr_Wlkcanonicalco.isa, v3);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 40))
  {
    v8 = WeakRetained;
    v5 = [WeakRetained containerResponse];
    v6 = *(a1 + 40);
    v7 = [v8 error];
    (*(v6 + 16))(v6, v5, v7);

    WeakRetained = v8;
  }
}

@end