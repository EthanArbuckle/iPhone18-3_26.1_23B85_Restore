@interface WLKSubscriptionDataRequestOperation
+ (id)_requestURL:(id *)a3;
- (WLKSubscriptionDataRequestOperation)init;
- (void)prepareURLRequest:(id)a3;
- (void)processResponse;
@end

@implementation WLKSubscriptionDataRequestOperation

- (WLKSubscriptionDataRequestOperation)init
{
  v3.receiver = self;
  v3.super_class = WLKSubscriptionDataRequestOperation;
  return [(WLKNetworkRequestOperation *)&v3 initWithURLRequest:0 options:0];
}

- (void)prepareURLRequest:(id)a3
{
  v3 = a3;
  v7 = 0;
  v4 = [objc_opt_class() _requestURL:&v7];
  v5 = v7;
  if (v4)
  {
    v6 = [MEMORY[0x277CBAB50] requestWithURL:v4];
    [v6 setTimeoutInterval:15.0];
    v3[2](v3, v6, 0);
  }

  else
  {
    (v3)[2](v3, 0, v5);
  }
}

- (void)processResponse
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(WLKDictionaryResponseProcessor);
  v4 = [(WLKNetworkRequestOperation *)self data];
  v5 = [(WLKDictionaryResponseProcessor *)v3 processResponseData:v4 error:0];

  objc_storeStrong(&self->_response, v5);
  v6 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    response = self->_response;
    v9 = 138412290;
    v10 = response;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSubscriptionDataRequestOperation - response: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)_requestURL:(id *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v4 = [v3 stringForKey:@"SubscriptionSyncTestEndpointURL"];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v6 = [MEMORY[0x277D6C480] app];
    v5 = [v6 urlForKey:@"tvSubscriptionStatus"];
  }

  return v5;
}

@end