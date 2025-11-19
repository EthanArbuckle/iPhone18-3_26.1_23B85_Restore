@interface WLKSettingsModificationRequestOperation
+ (id)_requestURL:(id *)a3;
- (WLKSettingsModificationRequestOperation)initWithModifications:(id)a3;
- (id)_postBody;
- (void)prepareURLRequest:(id)a3;
@end

@implementation WLKSettingsModificationRequestOperation

- (WLKSettingsModificationRequestOperation)initWithModifications:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WLKSettingsModificationRequestOperation;
  v6 = [(WLKNetworkRequestOperation *)&v9 initWithURLRequest:0 options:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modifications, a3);
  }

  return v7;
}

- (void)prepareURLRequest:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [objc_opt_class() _requestURL:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v5];
    [v7 setHTTPMethod:@"POST"];
    v8 = [(WLKSettingsModificationRequestOperation *)self _postBody];
    [v7 setHTTPBody:v8];

    [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v4[2](v4, v7, 0);
  }

  else
  {
    (v4)[2](v4, 0, v6);
  }
}

+ (id)_requestURL:(id *)a3
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