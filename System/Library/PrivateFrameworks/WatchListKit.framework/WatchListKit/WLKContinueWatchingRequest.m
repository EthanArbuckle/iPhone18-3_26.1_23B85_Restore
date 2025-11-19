@interface WLKContinueWatchingRequest
- (WLKContinueWatchingRequest)init;
- (void)makeRequestWithCompletion:(id)a3;
@end

@implementation WLKContinueWatchingRequest

- (WLKContinueWatchingRequest)init
{
  v3.receiver = self;
  v3.super_class = WLKContinueWatchingRequest;
  result = [(WLKContinueWatchingRequest *)&v3 init];
  if (result)
  {
    result->_allowAuthentication = 1;
  }

  return result;
}

- (void)makeRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WLKContinueWatchingRequestOperation);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__WLKContinueWatchingRequest_makeRequestWithCompletion___block_invoke;
  v8[3] = &unk_279E5E9E8;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  v6 = v4;
  v9 = v6;
  [(WLKContinueWatchingRequestOperation *)v5 setCompletionBlock:v8];
  v7 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [v7 addOperation:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __56__WLKContinueWatchingRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = [v2 response];
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 3, v3);
  }

  if (*(a1 + 32))
  {
    v4 = [v2 response];
    v5 = v4 != 0;

    v6 = *(a1 + 32);
    v7 = [v2 error];
    (*(v6 + 16))(v6, v5, v7);
  }
}

@end