@interface IPPSession
+ (id)globalSession;
- (id)_initWithBundleIdentifier:(id)a3 clientID:(int)a4 completeConfiguraton:(id)a5;
- (id)debugDescription;
- (id)getLogLeader;
- (id)httpWithURL:(id)a3;
- (id)ippBrowseInfo:(id)a3;
- (id)ippEndpoint:(id)a3;
- (id)ippURL:(id)a3;
- (void)dealloc;
@end

@implementation IPPSession

+ (id)globalSession
{
  if (qword_1000C7B88 != -1)
  {
    sub_100060328();
  }

  v3 = qword_1000C7B80;

  return v3;
}

- (id)_initWithBundleIdentifier:(id)a3 clientID:(int)a4 completeConfiguraton:(id)a5
{
  v9 = a3;
  v10 = a5;
  v34.receiver = self;
  v34.super_class = IPPSession;
  v11 = [(IPPSession *)&v34 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientBundleIdentifier, a3);
    v12->_clientID = a4;
    v13 = [[IPPSessionDelegate alloc] initWithClientID:v12->_clientID];
    sessionDelegate = v12->_sessionDelegate;
    v12->_sessionDelegate = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.printing.IPPNetworkSession", v15);
    workQueue = v12->_workQueue;
    v12->_workQueue = v16;

    v18 = objc_opt_new();
    operationQueue = v12->_operationQueue;
    v12->_operationQueue = v18;

    [(NSOperationQueue *)v12->_operationQueue setUnderlyingQueue:v12->_workQueue];
    [(NSOperationQueue *)v12->_operationQueue setMaxConcurrentOperationCount:1];
    v20 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v20 setTimeoutIntervalForRequest:30.0];
    [v20 setHTTPMaximumConnectionsPerHost:4];
    [v20 setURLCache:0];
    [v20 setURLCredentialStorage:0];
    v21 = [NSSet setWithArray:&off_1000B8FB8];
    [v20 set_suppressedAutoAddedHTTPHeaders:v21];

    [v20 set_enableOAuthBearerTokenChallenges:1];
    v22 = [NSBundle bundleWithIdentifier:@"com.apple.framework.PrintKit"];
    v23 = v22;
    if (!v22 || ([v22 infoDictionary], v24 = objc_claimAutoreleasedReturnValue(), (v25 = v24) == 0) || (objc_msgSend(v24, "objectForKeyedSubscript:", kCFBundleVersionKey), v26 = objc_claimAutoreleasedReturnValue(), v25, !v26))
    {
      v26 = @"Unknown";
    }

    v27 = @"com.apple.prinkit";
    if (v9)
    {
      v27 = v9;
    }

    v39[0] = @"X-PrintKit-Origin";
    v39[1] = @"X-PrintKit-Version";
    v40[0] = v27;
    v40[1] = v26;
    v28 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v20 setHTTPAdditionalHeaders:v28];

    if (v9)
    {
      [v20 set_sourceApplicationBundleIdentifier:v9];
    }

    [v20 set_sourceApplicationSecondaryIdentifier:@"com.apple.PrintKit.PrinterTool"];
    if (v10)
    {
      v10[2](v10, v20);
    }

    v29 = [NSURLSession sessionWithConfiguration:v20 delegate:v12->_sessionDelegate delegateQueue:v12->_operationQueue];
    URLSession = v12->_URLSession;
    v12->_URLSession = v29;

    v31 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v12->_URLSession;
      *buf = 138543618;
      v36 = v32;
      v37 = 2114;
      v38 = v9;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Created - session %{public}@ ident %{public}@", buf, 0x16u);
    }
  }

  return v12;
}

- (void)dealloc
{
  [(NSURLSession *)self->_URLSession invalidateAndCancel];
  URLSession = self->_URLSession;
  self->_URLSession = 0;

  v4.receiver = self;
  v4.super_class = IPPSession;
  [(IPPSession *)&v4 dealloc];
}

- (id)getLogLeader
{
  if (self->_clientID)
  {
    [NSString stringWithFormat:@"%@<%p> { client %d }", objc_opt_class(), self, self->_clientID];
  }

  else
  {
    [NSString stringWithFormat:@"GlobalSession<%p>", self, v4, v5];
  }
  v2 = ;

  return v2;
}

- (id)debugDescription
{
  v3 = [(IPPSession *)self getLogLeader];
  v4 = [(NSURLSession *)self->_URLSession configuration];
  v5 = [v4 HTTPAdditionalHeaders];
  v6 = [NSString stringWithFormat:@"%@ - http headers: %@", v3, v5];

  return v6;
}

- (id)httpWithURL:(id)a3
{
  v4 = a3;
  v5 = [[platform_http_t alloc] initWithURL:v4 session:self];

  return v5;
}

- (id)ippURL:(id)a3
{
  v4 = a3;
  v5 = [[IPPURL alloc] initWithSession:self url:v4];

  return v5;
}

- (id)ippEndpoint:(id)a3
{
  v4 = a3;
  v5 = [[IPPEndpoint alloc] initWithSession:self endpoint:v4];

  return v5;
}

- (id)ippBrowseInfo:(id)a3
{
  v4 = a3;
  v5 = [[IPPBrowseInfo alloc] initWithSession:self browseInfo:v4];

  return v5;
}

@end