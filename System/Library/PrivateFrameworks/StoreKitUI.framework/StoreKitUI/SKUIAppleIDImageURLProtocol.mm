@interface SKUIAppleIDImageURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
- (void)_startLoading;
- (void)startLoading;
@end

@implementation SKUIAppleIDImageURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIAppleIDImageURLProtocol canInitWithRequest:];
  }

  v4 = [requestCopy URL];
  scheme = [v4 scheme];

  LOBYTE(v4) = [scheme isEqualToString:@"x-apple-identity-image"];
  return v4;
}

- (void)startLoading
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAppleIDImageURLProtocol startLoading]";
}

void __43__SKUIAppleIDImageURLProtocol_startLoading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startLoading];
}

- (void)_startLoading
{
  request = [(NSURLProtocol *)self request];
  v4 = [request URL];
  query = [v4 query];

  v5 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:query unescapedValues:1];
  v6 = [v5 objectForKey:@"firstName"];
  v7 = [v5 objectForKey:@"lastName"];
  v8 = [v5 objectForKey:@"email"];
  v9 = [v5 objectForKey:@"dsid"];
  if (objc_opt_respondsToSelector())
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = SKUIGetFamilyMemberImage(v6, v7, v8, v10);
  client = [(NSURLProtocol *)self client];
  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x277CBABA8]);
    request2 = [(NSURLProtocol *)self request];
    [request2 URL];
    v20 = v8;
    v15 = v7;
    v17 = v16 = v6;
    v18 = [v13 initWithURL:v17 MIMEType:@"image/png" expectedContentLength:-1 textEncodingName:0];

    [client URLProtocol:self didReceiveResponse:v18 cacheStoragePolicy:1];
    v19 = UIImagePNGRepresentation(v11);
    [client URLProtocol:self didLoadData:v19];

    v6 = v16;
    v7 = v15;
    v8 = v20;
    [client URLProtocolDidFinishLoading:self];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:0 userInfo:0];
    [client URLProtocol:self didFailWithError:v18];
  }
}

+ (void)canInitWithRequest:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIAppleIDImageURLProtocol canInitWithRequest:]";
}

@end