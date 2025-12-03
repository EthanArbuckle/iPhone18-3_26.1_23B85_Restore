@interface WLKSiriSearchRequest
- (WLKSiriSearchRequest)initWithQuery:(id)query;
- (void)makeRequestWithCompletion:(id)completion;
@end

@implementation WLKSiriSearchRequest

- (WLKSiriSearchRequest)initWithQuery:(id)query
{
  queryCopy = query;
  v9.receiver = self;
  v9.super_class = WLKSiriSearchRequest;
  v5 = [(WLKSiriSearchRequest *)&v9 init];
  if (v5)
  {
    v6 = [queryCopy copy];
    query = v5->_query;
    v5->_query = v6;
  }

  return v5;
}

- (void)makeRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [WLKSiriSearchRequestOperation alloc];
  query = self->_query;
  caller = [(WLKRequest *)self caller];
  v8 = [(WLKSiriSearchRequestOperation *)v5 initWithQuery:query caller:caller];

  objc_initWeak(&location, v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__WLKSiriSearchRequest_makeRequestWithCompletion___block_invoke;
  v11[3] = &unk_279E5E660;
  objc_copyWeak(&v13, &location);
  v9 = completionCopy;
  v12 = v9;
  [(WLKSiriSearchRequestOperation *)v8 setCompletionBlock:v11];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __50__WLKSiriSearchRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
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