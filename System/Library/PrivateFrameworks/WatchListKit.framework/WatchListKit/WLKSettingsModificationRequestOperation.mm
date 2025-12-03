@interface WLKSettingsModificationRequestOperation
+ (id)_requestURL:(id *)l;
- (WLKSettingsModificationRequestOperation)initWithModifications:(id)modifications;
- (id)_postBody;
- (void)prepareURLRequest:(id)request;
@end

@implementation WLKSettingsModificationRequestOperation

- (WLKSettingsModificationRequestOperation)initWithModifications:(id)modifications
{
  modificationsCopy = modifications;
  v9.receiver = self;
  v9.super_class = WLKSettingsModificationRequestOperation;
  v6 = [(WLKNetworkRequestOperation *)&v9 initWithURLRequest:0 options:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modifications, modifications);
  }

  return v7;
}

- (void)prepareURLRequest:(id)request
{
  requestCopy = request;
  v9 = 0;
  v5 = [objc_opt_class() _requestURL:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v5];
    [v7 setHTTPMethod:@"POST"];
    _postBody = [(WLKSettingsModificationRequestOperation *)self _postBody];
    [v7 setHTTPBody:_postBody];

    [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    requestCopy[2](requestCopy, v7, 0);
  }

  else
  {
    (requestCopy)[2](requestCopy, 0, v6);
  }
}

+ (id)_requestURL:(id *)l
{
  v3 = [MEMORY[0x277D6C480] app];
  v4 = [v3 cachedURLForKey:kBagKeyUpdateWatchListSettings];

  return v4;
}

- (id)_postBody
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    modifications = self->_modifications;
    *buf = 138412290;
    v13 = modifications;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSettingsModificationRequestOperation - posting: %@", buf, 0xCu);
  }

  v5 = self->_modifications;
  v11 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v11];
  v7 = v6;
  v8 = 0;
  if (!v11)
  {
    v8 = v6;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end