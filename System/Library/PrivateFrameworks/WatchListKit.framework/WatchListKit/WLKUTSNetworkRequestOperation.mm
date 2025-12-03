@interface WLKUTSNetworkRequestOperation
- (WLKUTSNetworkRequestOperation)init;
- (WLKUTSNetworkRequestOperation)initWithRequestProperties:(id)properties;
- (id)responseDictionary;
- (id)shortDescription;
- (void)configureSession;
- (void)handleResult:(id)result error:(id)error;
- (void)prepareURLRequest:(id)request;
@end

@implementation WLKUTSNetworkRequestOperation

- (void)configureSession
{
  v2.receiver = self;
  v2.super_class = WLKUTSNetworkRequestOperation;
  [(WLKNetworkRequestOperation *)&v2 configureSession];
}

- (id)shortDescription
{
  identifier = [(WLKNetworkRequestOperation *)self identifier];
  v4 = identifier;
  v5 = &stru_288206BC0;
  if (identifier)
  {
    v5 = identifier;
  }

  v6 = v5;

  if ([(__CFString *)v6 length]>= 7)
  {
    identifier2 = [(WLKNetworkRequestOperation *)self identifier];
    v8 = [identifier2 substringToIndex:7];

    v6 = v8;
  }

  v9 = MEMORY[0x277CCACA8];
  requestProperties = [(WLKUTSNetworkRequestOperation *)self requestProperties];
  shortDescription = [requestProperties shortDescription];
  v12 = [v9 stringWithFormat:@"%@ %@", v6, shortDescription];

  return v12;
}

- (WLKUTSNetworkRequestOperation)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKUTSNetworkRequestOperation" format:@"-init is not supported"];

  return 0;
}

- (WLKUTSNetworkRequestOperation)initWithRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v8.receiver = self;
  v8.super_class = WLKUTSNetworkRequestOperation;
  v5 = -[WLKNetworkRequestOperation initWithURLRequest:options:](&v8, sel_initWithURLRequest_options_, 0, [propertiesCopy options]);
  v6 = v5;
  if (v5)
  {
    [(WLKUTSNetworkRequestOperation *)v5 setRequestProperties:propertiesCopy];
  }

  return v6;
}

- (void)prepareURLRequest:(id)request
{
  requestCopy = request;
  v5 = WLKNetworkSignpostLogObject();
  signpostIdentifier = [(WLKNetworkRequestOperation *)self signpostIdentifier];
  if (signpostIdentifier - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signpostIdentifier;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "NetworkRequest.Config", &unk_272A8884E, buf, 2u);
    }
  }

  v8 = +[WLKConfigurationManager sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__WLKUTSNetworkRequestOperation_prepareURLRequest___block_invoke;
  v10[3] = &unk_279E60A08;
  v10[4] = self;
  v11 = requestCopy;
  v9 = requestCopy;
  [v8 fetchConfigurationWithOptions:0 cachePolicy:4 queryParameters:0 completion:v10];
}

void __51__WLKUTSNetworkRequestOperation_prepareURLRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKNetworkSignpostLogObject();
  v8 = [*(a1 + 32) signpostIdentifier];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, v9, "NetworkRequest.Config", &unk_272A8884E, v11, 2u);
    }
  }

  if (v5)
  {
    v10 = [*(*(a1 + 32) + 416) URLRequestWithConfiguration:v5];
    *(*(a1 + 32) + 424) = [v5 environmentHash];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)handleResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  response = [resultCopy response];
  allHeaderFields = [response allHeaderFields];
  v10 = [allHeaderFields wlk_caseInsensitiveValueForKey:@"X-Apple-utsk-expired"];

  if (v10)
  {
    v11 = +[WLKConfigurationManager sharedInstance];
    [v11 fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:&__block_literal_global_46];

    v16.receiver = self;
    v16.super_class = WLKUTSNetworkRequestOperation;
    [(WLKNetworkRequestOperation *)&v16 handleResult:resultCopy error:errorCopy];
  }

  else
  {
    allHeaderFields2 = [response allHeaderFields];
    v13 = [allHeaderFields2 wlk_caseInsensitiveValueForKey:@"X-Apple-utsk"];

    if ([v13 length])
    {
      v14 = +[WLKConfigurationManager sharedInstance];
      [v14 _setUtsk:v13];
    }

    v15.receiver = self;
    v15.super_class = WLKUTSNetworkRequestOperation;
    [(WLKNetworkRequestOperation *)&v15 handleResult:resultCopy error:errorCopy];
  }
}

void __52__WLKUTSNetworkRequestOperation_handleResult_error___block_invoke()
{
  v0 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKUTSNetworkRequestOperation - X-Apple-utsk-expired is set to true. Fetches init/config", v1, 2u);
  }
}

- (id)responseDictionary
{
  responseDictionary = self->_responseDictionary;
  if (!responseDictionary)
  {
    v4 = objc_alloc_init(WLKDictionaryResponseProcessor);
    data = [(WLKNetworkRequestOperation *)self data];
    v6 = [(WLKDictionaryResponseProcessor *)v4 processResponseData:data error:0];

    v7 = [v6 wlk_dictionaryForKey:@"data"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    v11 = self->_responseDictionary;
    self->_responseDictionary = v10;

    responseDictionary = self->_responseDictionary;
  }

  return responseDictionary;
}

@end