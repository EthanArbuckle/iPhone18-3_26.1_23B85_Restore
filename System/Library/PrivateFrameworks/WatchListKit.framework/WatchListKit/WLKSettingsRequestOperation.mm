@interface WLKSettingsRequestOperation
+ (id)_requestURL:(id *)a3;
- (WLKSettingsRequestOperation)init;
- (void)prepareURLRequest:(id)a3;
- (void)processResponse;
@end

@implementation WLKSettingsRequestOperation

- (WLKSettingsRequestOperation)init
{
  v3.receiver = self;
  v3.super_class = WLKSettingsRequestOperation;
  return [(WLKNetworkRequestOperation *)&v3 initWithURLRequest:0 options:0];
}

- (void)prepareURLRequest:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = [objc_opt_class() _requestURL:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = WLKNetworkSignpostLogObject();
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = WLKNetworkSignpostLogObject();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Settings.URLRequest", &unk_272A8884E, &v12, 2u);
    }

    v11 = [MEMORY[0x277CBAB50] requestWithURL:v5];
    [v11 setTimeoutInterval:5.0];
    v4[2](v4, v11, 0);
  }

  else
  {
    (v4)[2](v4, 0, v6);
  }
}

- (void)processResponse
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = WLKNetworkSignpostLogObject();
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v5 = WLKNetworkSignpostLogObject();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_END, v4, "Settings.URLRequest", &unk_272A8884E, &v13, 2u);
  }

  v7 = objc_alloc_init(WLKDictionaryResponseProcessor);
  v8 = [(WLKNetworkRequestOperation *)self data];
  v9 = [(WLKDictionaryResponseProcessor *)v7 processResponseData:v8 error:0];

  objc_storeStrong(&self->_response, v9);
  v10 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    response = self->_response;
    v13 = 138412290;
    v14 = response;
    _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSettingsRequestOperation - response: %@", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_requestURL:(id *)a3
{
  v3 = [MEMORY[0x277D6C480] app];
  v4 = [v3 cachedURLForKey:kBagKeyGetWatchListSettings];

  return v4;
}

@end