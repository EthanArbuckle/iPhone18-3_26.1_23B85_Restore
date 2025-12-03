@interface WLKContentPlayRequest
- (WLKContentPlayRequest)initWithCanonicalID:(id)d;
- (void)makeRequestWithCompletion:(id)completion;
@end

@implementation WLKContentPlayRequest

- (WLKContentPlayRequest)initWithCanonicalID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v10.receiver = self;
    v10.super_class = WLKContentPlayRequest;
    v6 = [(WLKContentPlayRequest *)&v10 init];
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
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)makeRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [WLKContentPlayRequestOperation alloc];
  canonicalID = self->_canonicalID;
  caller = [(WLKRequest *)self caller];
  v8 = [(WLKContentPlayRequestOperation *)v5 initWithCanonicalID:canonicalID caller:caller];

  objc_initWeak(&location, v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__WLKContentPlayRequest_makeRequestWithCompletion___block_invoke;
  v11[3] = &unk_279E5E660;
  objc_copyWeak(&v13, &location);
  v9 = completionCopy;
  v12 = v9;
  [(WLKContentPlayRequestOperation *)v8 setCompletionBlock:v11];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __51__WLKContentPlayRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
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