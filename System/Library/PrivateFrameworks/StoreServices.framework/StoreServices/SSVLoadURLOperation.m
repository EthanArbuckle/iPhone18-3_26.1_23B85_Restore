@interface SSVLoadURLOperation
- (BOOL)_shouldRetryAfterMachineDataRequest:(id)a3;
- (BOOL)isITunesStoreRequest;
- (BOOL)recordsMetrics;
- (NSCachedURLResponse)cachedURLResponse;
- (NSHTTPURLResponse)URLResponse;
- (NSNumber)metricsLoadURLSamplingPercentage;
- (NSNumber)metricsLoadURLSamplingPercentageCachedResponses;
- (NSNumber)metricsLoadURLSessionDuration;
- (NSString)referrerApplicationName;
- (NSString)referrerURLString;
- (NSString)storeFrontSuffix;
- (SSMetricsPageEvent)metricsPageEvent;
- (SSVFairPlaySAPSession)SAPSession;
- (SSVLoadURLOperation)initWithData:(id)a3 fromOperation:(id)a4;
- (SSVLoadURLOperation)initWithURL:(id)a3;
- (SSVLoadURLOperation)initWithURLRequest:(id)a3;
- (SSVLoadURLOperation)initWithURLRequestProperties:(id)a3;
- (SSVLoadURLOperationDelegate)delegate;
- (SSVSAPSignaturePolicy)SAPSignaturePolicy;
- (SSVURLDataConsumer)dataConsumer;
- (id)_dataForCachedResponse:(_CFCachedURLResponse *)a3;
- (id)_initSSVLoadURLOperation;
- (id)_newURLRequestWithRedirectURL:(id)a3;
- (id)_outputForData:(id)a3 error:(id *)a4;
- (id)outputBlock;
- (id)prepareRequestBlock;
- (int)_runRunLoopUntilStopped;
- (int64_t)machineDataStyle;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithEvent:(id)a5 error:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_addMachineDataHeadersToRequest:(id)a3 withAccountIdentifier:(id)a4;
- (void)_addSAPSignatureToRequest:(id)a3;
- (void)_applyResponseToMetrics:(id)a3;
- (void)_configureWithURLBagInterpreter:(id)a3;
- (void)_createAuthKitSession;
- (void)_finishWithData:(id)a3;
- (void)_finishWithOutput:(id)a3 error:(id)a4;
- (void)_loadURLBagInterpreter;
- (void)_releaseOutputBlocks;
- (void)_runOnce;
- (void)_stopIfCancelled;
- (void)_stopRunLoop;
- (void)cancel;
- (void)configureWithURLBag:(id)a3;
- (void)configureWithURLBagDictionary:(id)a3;
- (void)main;
- (void)setDataConsumer:(id)a3;
- (void)setITunesStoreRequest:(BOOL)a3;
- (void)setMachineDataStyle:(int64_t)a3;
- (void)setOutputBlock:(id)a3;
- (void)setPrepareRequestBlock:(id)a3;
- (void)setRecordsMetrics:(BOOL)a3;
- (void)setReferrerApplicationName:(id)a3;
- (void)setReferrerURLString:(id)a3;
- (void)setSAPSession:(id)a3;
- (void)setSAPSignaturePolicy:(id)a3;
- (void)setStoreFrontSuffix:(id)a3;
@end

@implementation SSVLoadURLOperation

- (id)_initSSVLoadURLOperation
{
  v6.receiver = self;
  v6.super_class = SSVLoadURLOperation;
  v2 = [(SSVLoadURLOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVLoadURLOperation", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_iTunesStoreRequest = 1;
    v2->_shouldSuppressCookies = 0;
    v2->_shouldSuppressUserInfo = 0;
    v2->_attribution = 0;
    v2->_recordsMetrics = 1;
  }

  return v2;
}

- (SSVLoadURLOperation)initWithData:(id)a3 fromOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SSVLoadURLOperation *)self _initSSVLoadURLOperation];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 35, a3);
    v10->_iTunesStoreRequest = [v8 isITunesStoreRequest];
    v10->_shouldSuppressCookies = [v8 shouldSuppressCookies];
    v10->_shouldSuppressUserInfo = [v8 shouldSuppressUserInfo];
    v11 = [v8 metricsPageEvent];
    metricsPageEvent = v10->_metricsPageEvent;
    v10->_metricsPageEvent = v11;

    v10->_recordsMetrics = [v8 recordsMetrics];
    v13 = [v8 storeFrontSuffix];
    storeFrontSuffix = v10->_storeFrontSuffix;
    v10->_storeFrontSuffix = v13;

    v15 = [v8 URLRequest];
    urlRequest = v10->_urlRequest;
    v10->_urlRequest = v15;
  }

  return v10;
}

- (SSVLoadURLOperation)initWithURL:(id)a3
{
  v4 = [MEMORY[0x1E696AF68] requestWithURL:a3];
  v5 = [(SSVLoadURLOperation *)self initWithURLRequest:v4];

  return v5;
}

- (SSVLoadURLOperation)initWithURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(SSVLoadURLOperation *)self _initSSVLoadURLOperation];
  if (v5)
  {
    v6 = [v4 copy];
    urlRequest = v5->_urlRequest;
    v5->_urlRequest = v6;
  }

  return v5;
}

- (SSVLoadURLOperation)initWithURLRequestProperties:(id)a3
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E696AD68]);
  v7 = [v5 URL];
  v8 = [v5 cachePolicy];
  [v5 timeoutInterval];
  v9 = [v6 initWithURL:v7 cachePolicy:v8 timeoutInterval:?];

  v10 = [v5 HTTPBody];
  [v9 setHTTPBody:v10];

  v11 = [v5 HTTPMethod];
  [v9 setHTTPMethod:v11];

  [v9 setNetworkServiceType:{objc_msgSend(v5, "networkServiceType")}];
  v12 = [v5 HTTPHeaders];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__SSVLoadURLOperation_initWithURLRequestProperties___block_invoke;
  v16[3] = &unk_1E84ADD90;
  v13 = v9;
  v17 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v16];
  if (objc_opt_respondsToSelector())
  {
    [v13 _CFURLRequest];
    if (([v5 shouldDecodeResponse] & 1) == 0)
    {
      _CFURLRequestSetProtocolProperty();
    }
  }

  v14 = [(SSVLoadURLOperation *)self initWithURLRequest:v13];
  if (v14)
  {
    -[SSVLoadURLOperation setITunesStoreRequest:](v14, "setITunesStoreRequest:", [v5 isITunesStoreRequest]);
    -[SSVLoadURLOperation setMachineDataStyle:](v14, "setMachineDataStyle:", [v5 machineDataStyle]);
    objc_storeStrong(&v14->_requestProperties, a3);
  }

  return v14;
}

- (NSCachedURLResponse)cachedURLResponse
{
  v2 = [(SSVLoadURLOperation *)self _newURLRequestWithRedirectURL:0];
  v3 = [MEMORY[0x1E696AF18] sharedURLCache];
  v4 = [v3 cachedResponseForRequest:v2];

  return v4;
}

- (void)configureWithURLBag:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SSVLoadURLOperation_configureWithURLBag___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __43__SSVLoadURLOperation_configureWithURLBag___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 432), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 440);
  *(v2 + 440) = 0;
}

- (void)configureWithURLBagDictionary:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SSVLoadURLOperation_configureWithURLBagDictionary___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __53__SSVLoadURLOperation_configureWithURLBagDictionary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 432);
  *(v2 + 432) = 0;

  v4 = [[SSVURLBagInterpreter alloc] initWithURLBagDictionary:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 440);
  *(v5 + 440) = v4;
}

- (SSVURLDataConsumer)dataConsumer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SSVLoadURLOperation_dataConsumer__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)isITunesStoreRequest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SSVLoadURLOperation_isITunesStoreRequest__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int64_t)machineDataStyle
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSVLoadURLOperation_machineDataStyle__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (SSMetricsPageEvent)metricsPageEvent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSVLoadURLOperation_metricsPageEvent__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)outputBlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SSVLoadURLOperation_outputBlock__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = MEMORY[0x1DA6DFBB0](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__SSVLoadURLOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 320) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)prepareRequestBlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SSVLoadURLOperation_prepareRequestBlock__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = MEMORY[0x1DA6DFBB0](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__SSVLoadURLOperation_prepareRequestBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 328) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)recordsMetrics
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SSVLoadURLOperation_recordsMetrics__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSString)referrerApplicationName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SSVLoadURLOperation_referrerApplicationName__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __46__SSVLoadURLOperation_referrerApplicationName__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 360) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)referrerURLString
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SSVLoadURLOperation_referrerURLString__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__SSVLoadURLOperation_referrerURLString__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 368) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SSVFairPlaySAPSession)SAPSession
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSVLoadURLOperation_SAPSession__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (SSVSAPSignaturePolicy)SAPSignaturePolicy
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SSVLoadURLOperation_SAPSignaturePolicy__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__SSVLoadURLOperation_SAPSignaturePolicy__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 400) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setDataConsumer:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SSVLoadURLOperation_setDataConsumer___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __39__SSVLoadURLOperation_setDataConsumer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 264) != v1)
  {
    objc_storeStrong((v2 + 264), v1);
  }
}

- (void)setITunesStoreRequest:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__SSVLoadURLOperation_setITunesStoreRequest___block_invoke;
  v3[3] = &unk_1E84AD070;
  v3[4] = self;
  v4 = a3;
  [(SSVLoadURLOperation *)self dispatchAsync:v3];
}

- (void)setMachineDataStyle:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__SSVLoadURLOperation_setMachineDataStyle___block_invoke;
  v3[3] = &unk_1E84ADDB8;
  v3[4] = self;
  v3[5] = a3;
  [(SSVLoadURLOperation *)self dispatchAsync:v3];
}

- (void)setOutputBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SSVLoadURLOperation_setOutputBlock___block_invoke;
  v6[3] = &unk_1E84AC360;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __38__SSVLoadURLOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 320) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 320);
    *(v5 + 320) = v4;
  }
}

- (void)setPrepareRequestBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SSVLoadURLOperation_setPrepareRequestBlock___block_invoke;
  v6[3] = &unk_1E84AC360;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __46__SSVLoadURLOperation_setPrepareRequestBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 328) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 328);
    *(v5 + 328) = v4;
  }
}

- (void)setRecordsMetrics:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__SSVLoadURLOperation_setRecordsMetrics___block_invoke;
  v3[3] = &unk_1E84AD070;
  v3[4] = self;
  v4 = a3;
  [(SSVLoadURLOperation *)self dispatchAsync:v3];
}

- (void)setReferrerApplicationName:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SSVLoadURLOperation_setReferrerApplicationName___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __50__SSVLoadURLOperation_setReferrerApplicationName___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 360) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 360);
    *(v5 + 360) = v4;
  }
}

- (void)setReferrerURLString:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SSVLoadURLOperation_setReferrerURLString___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __44__SSVLoadURLOperation_setReferrerURLString___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 368) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 368);
    *(v5 + 368) = v4;
  }
}

- (void)setSAPSession:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SSVLoadURLOperation_setSAPSession___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __37__SSVLoadURLOperation_setSAPSession___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 392) != v1)
  {
    objc_storeStrong((v2 + 392), v1);
  }
}

- (void)setSAPSignaturePolicy:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SSVLoadURLOperation_setSAPSignaturePolicy___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __45__SSVLoadURLOperation_setSAPSignaturePolicy___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 400) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 400);
    *(v5 + 400) = v4;
  }
}

- (void)setStoreFrontSuffix:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SSVLoadURLOperation_setStoreFrontSuffix___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __43__SSVLoadURLOperation_setStoreFrontSuffix___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 416) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 416);
    *(v5 + 416) = v4;
  }
}

- (NSString)storeFrontSuffix
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSVLoadURLOperation_storeFrontSuffix__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSHTTPURLResponse)URLResponse
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SSVLoadURLOperation_URLResponse__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVLoadURLOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__SSVLoadURLOperation_URLResponse__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 376) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = SSVLoadURLOperation;
  [(SSVLoadURLOperation *)&v3 cancel];
  [(SSVLoadURLOperation *)self _stopRunLoop];
}

- (void)main
{
  if (self->_inputData)
  {
    [(SSVLoadURLOperation *)self _finishWithData:?];
  }

  else
  {
    if (![(SSVLoadURLOperation *)self shouldSuppressUserInfo])
    {
      [(SSVLoadURLOperation *)self _createAuthKitSession];
    }

    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 1;
    while (*(v6 + 24) == 1)
    {
      v3 = objc_autoreleasePoolPush();
      [(SSVLoadURLOperation *)self _runOnce];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __27__SSVLoadURLOperation_main__block_invoke;
      v4[3] = &unk_1E84ABF40;
      v4[4] = self;
      v4[5] = &v5;
      [(SSVLoadURLOperation *)self dispatchSync:v4];
      objc_autoreleasePoolPop(v3);
    }

    _Block_object_dispose(&v5, 8);
  }

  [(SSVLoadURLOperation *)self setPrepareRequestBlock:0];
}

- (NSNumber)metricsLoadURLSessionDuration
{
  v3 = [(SSVLoadURLOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SSVLoadURLOperation *)self delegate];
    v6 = [v5 metricsLoadURLSessionDuration];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)metricsLoadURLSamplingPercentage
{
  v3 = [(SSVLoadURLOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SSVLoadURLOperation *)self delegate];
    v6 = [v5 metricsLoadURLSamplingPercentage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)metricsLoadURLSamplingPercentageCachedResponses
{
  v3 = [(SSVLoadURLOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SSVLoadURLOperation *)self delegate];
    v6 = [v5 metricsLoadURLSamplingPercentageCachedResponses];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithEvent:(id)a5 error:(id)a6
{
  v119 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v60 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    [(SSVLoadURLOperation *)self _finishWithOutput:0 error:v12];
    [(SSVLoadURLOperation *)self _stopRunLoop];
    goto LABEL_41;
  }

  v13 = v10;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__10;
  v109 = __Block_byref_object_dispose__10;
  v110 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__10;
  v99 = __Block_byref_object_dispose__10;
  v100 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__10;
  v93 = __Block_byref_object_dispose__10;
  v94 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__10;
  v87 = __Block_byref_object_dispose__10;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__10;
  v81 = __Block_byref_object_dispose__10;
  v82 = 0;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __66__SSVLoadURLOperation_URLSession_task_didCompleteWithEvent_error___block_invoke;
  v69[3] = &unk_1E84ADDE0;
  v69[4] = self;
  v70 = v11;
  v71 = &v105;
  v72 = &v101;
  v73 = &v95;
  v74 = &v89;
  v75 = &v83;
  v76 = &v77;
  [(SSVLoadURLOperation *)self dispatchSync:v69];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  shouldRetry = self->_shouldRetry;
  if (v96[5])
  {
    if (v84[5])
    {
      v14 = [v78[5] allHeaderFields];
      v15 = HeaderValueForKey(v14, @"X-Apple-ActionSignature");

      if (!v15 || ([v84[5] dataToSignWithURLResponse:v78[5] responseData:v90[5]], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(objc_alloc(MEMORY[0x1E695DEF0]), "initWithBase64EncodedString:options:", v15, 0), v18 = objc_msgSend(v96[5], "verifyData:withSignature:error:", v16, v17, 0), v17, v16, v15, (v18 & 1) == 0))
      {
        v37 = SSError(@"SSErrorDomain", 122, 0, 0);
        v38 = 0;
        *(v66 + 24) = 0;
        goto LABEL_38;
      }
    }
  }

  v19 = v78[5];
  if (v19 && *(v102 + 24) == 1)
  {
    v58 = [v19 allHeaderFields];
    v59 = HeaderValueForKey(v58, @"X-Set-Apple-Store-Front");
    if (![v59 length])
    {
      goto LABEL_25;
    }

    v20 = +[SSLogConfig sharedAccountsConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    v22 = [v20 shouldLogToDisk];
    v23 = [v20 OSLogObject];
    v24 = v23;
    if (v22)
    {
      v25 = v21 | 2;
    }

    else
    {
      v25 = v21;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 2;
    }

    if (v26)
    {
      v10 = v13;
      v27 = objc_opt_class();
      v57 = [v78[5] URL];
      v56 = +[SSAccountStore defaultStore];
      v55 = [v56 activeAccount];
      v28 = [v55 hashedDescription];
      v29 = SSHashIfNeeded(v59);
      v111 = 138544130;
      v112 = v27;
      v113 = 2114;
      v114 = v57;
      v115 = 2114;
      v116 = v28;
      v117 = 2114;
      v118 = v29;
      LODWORD(v54) = 42;
      v53 = &v111;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
LABEL_24:

        v39 = +[SSDevice currentDevice];
        v40 = [v60 originalRequest];
        v41 = v78[5];
        v42 = +[SSAccountStore defaultStore];
        v43 = [v42 activeAccount];
        [v39 setStoreFrontIdentifier:v59 forRequest:v40 response:v41 account:v43];

LABEL_25:
        v44 = [SSMachineDataRequest alloc];
        v45 = [(SSMachineDataRequest *)v44 initWithURLResponse:v78[5]];
        if (v45 && [(SSVLoadURLOperation *)self _shouldRetryAfterMachineDataRequest:v45])
        {
          v46 = [v78[5] URL];
          redirectURL = self->_redirectURL;
          self->_redirectURL = v46;

          *(v66 + 24) = 1;
          self->_shouldRetry = 1;
        }

        goto LABEL_29;
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v111, v54}];
      free(v30);
      SSFileLog(v20, @"%@", v31, v32, v33, v34, v35, v36, v24);
    }

    else
    {
      v10 = v13;
    }

    goto LABEL_24;
  }

LABEL_29:
  v48 = v106[5];
  v49 = v90[5];
  if (v48)
  {
    v50 = v78[5];
    v64 = 0;
    v38 = [v48 objectForData:v49 response:v50 error:&v64];
    v37 = v64;
    if (!v38)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v38 = v49;
    v37 = 0;
    if (!v38)
    {
LABEL_33:
      if (*(v102 + 24) == 1)
      {
        v51 = SSVProtocolRedirectURLForResponse(v78[5], v90[5]);
        v52 = v51;
        if (v51)
        {
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __66__SSVLoadURLOperation_URLSession_task_didCompleteWithEvent_error___block_invoke_33;
          v61[3] = &unk_1E84ADE08;
          v61[4] = self;
          v62 = v51;
          v63 = &v65;
          [(SSVLoadURLOperation *)self dispatchSync:v61];
        }
      }

      v38 = 0;
    }
  }

LABEL_38:
  if ((v66[3] & 1) == 0)
  {
    [(SSVLoadURLOperation *)self _finishWithOutput:v38 error:v37];
  }

  [(SSVLoadURLOperation *)self _stopRunLoop];
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v95, 8);

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v105, 8);

LABEL_41:
}

void __66__SSVLoadURLOperation_URLSession_task_didCompleteWithEvent_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 312);
  if (v3)
  {
    [v3 setReferringAppName:*(v2 + 360)];
    [*(*(a1 + 32) + 312) setReferringURL:*(*(a1 + 32) + 368)];
    v4 = *(*(a1 + 32) + 312);
    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSince1970];
    [v4 setResponseEndTime:?];

    v2 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {
      [*(v2 + 312) setCachedResponse:{objc_msgSend(v6, "cachedResponse")}];
      [*(*(a1 + 32) + 312) setConnectionReused:{objc_msgSend(*(a1 + 40), "connectionReused")}];
      v7 = *(*(a1 + 32) + 312);
      v8 = [*(a1 + 40) clientCorrelationKey];
      [v7 setClientCorrelationKey:v8];

      v9 = *(*(a1 + 32) + 312);
      [*(a1 + 40) connectionEndTime];
      [v9 setConnectionEndTime:?];
      v10 = *(*(a1 + 32) + 312);
      [*(a1 + 40) connectionStartTime];
      [v10 setConnectionStartTime:?];
      [*(*(a1 + 32) + 312) setConnectionStartNStatRXBytes:{objc_msgSend(*(a1 + 40), "connectionStartNStatRXBytes")}];
      [*(*(a1 + 32) + 312) setConnectionStartNStatTXBytes:{objc_msgSend(*(a1 + 40), "connectionStartNStatTXBytes")}];
      [*(*(a1 + 32) + 312) setConnectionStopNStatRXBytes:{objc_msgSend(*(a1 + 40), "connectionStopNStatRXBytes")}];
      [*(*(a1 + 32) + 312) setConnectionStopNStatTXBytes:{objc_msgSend(*(a1 + 40), "connectionStopNStatTXBytes")}];
      v11 = *(*(a1 + 32) + 312);
      [*(a1 + 40) domainLookupEndTime];
      [v11 setDomainLookupEndTime:?];
      v12 = *(*(a1 + 32) + 312);
      [*(a1 + 40) domainLookupStartTime];
      [v12 setDomainLookupStartTime:?];
      v13 = *(*(a1 + 32) + 312);
      [*(a1 + 40) fetchStartTime];
      [v13 setFetchStartTime:?];
      [*(*(a1 + 32) + 312) setRedirectCount:{objc_msgSend(*(a1 + 40), "redirectCount")}];
      v14 = *(*(a1 + 32) + 312);
      [*(a1 + 40) redirectEndTime];
      [v14 setRedirectEndTime:?];
      v15 = *(*(a1 + 32) + 312);
      [*(a1 + 40) redirectStartTime];
      [v15 setRedirectStartTime:?];
      v16 = *(*(a1 + 32) + 312);
      [*(a1 + 40) requestStartTime];
      [v16 setRequestStartTime:?];
      v17 = *(*(a1 + 32) + 312);
      [*(a1 + 40) responseEndTime];
      [v17 setResponseEndTime:?];
      v18 = *(*(a1 + 32) + 312);
      [*(a1 + 40) responseStartTime];
      [v18 setResponseStartTime:?];
      v19 = *(*(a1 + 32) + 312);
      [*(a1 + 40) secureConnectionStartTime];
      [v19 setSecureConnectionStartTime:?];
      [*(*(a1 + 32) + 312) setXPSamplingForced:{objc_msgSend(*(a1 + 40), "xpSamplingForced")}];
      v20 = *(*(a1 + 32) + 312);
      [*(a1 + 40) xpSessionDuration];
      [v20 setXPSessionDuration:?];
      v21 = *(*(a1 + 32) + 312);
      [*(a1 + 40) xpSamplingPercentageUsers];
      [v21 setXPSamplingPercentageUsers:?];
      v22 = *(*(a1 + 32) + 312);
      [*(a1 + 40) xpSamplingPercentageCachedResponses];
      [v22 setXPSamplingPercentageCachedResponses:?];
      v2 = *(a1 + 32);
    }
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(v2 + 264));
  *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 32) + 288);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 392));
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(a1 + 32) + 256));
  v23 = *(a1 + 32);
  v24 = *(v23 + 440);
  v25 = [*(v23 + 376) URL];
  v26 = [v24 mescalSignaturePolicyForResponseURL:v25];
  v27 = *(*(a1 + 80) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(*(a1 + 32) + 376));
  v29 = *(a1 + 32);
  v30 = *(v29 + 256);
  *(v29 + 256) = 0;
}

void __66__SSVLoadURLOperation_URLSession_task_didCompleteWithEvent_error___block_invoke_33(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 336);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 336);
    *(v4 + 336) = v3;

    v2 = *(*(a1 + 32) + 336);
  }

  if ([v2 count] <= 4 && (objc_msgSend(*(*(a1 + 32) + 336), "containsObject:", *(a1 + 40)) & 1) == 0)
  {
    [*(*(a1 + 32) + 336) addObject:*(a1 + 40)];
    objc_storeStrong((*(a1 + 32) + 352), *(a1 + 40));
    v6 = *(a1 + 32);
    if (*(v6 + 352))
    {
      *(v6 + 408) = 1;
      v6 = *(a1 + 32);
    }

    *(*(*(a1 + 48) + 8) + 24) = *(v6 + 408);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v15 = a5;
  v8 = a6;
  v9 = [v15 protectionSpace];
  v10 = [v9 authenticationMethod];

  if (!-[SSVLoadURLOperation isITunesStoreRequest](self, "isITunesStoreRequest") || ![v10 isEqualToString:*MEMORY[0x1E696A968]])
  {
    v12 = [v15 sender];
    v13 = 0;
    v14 = objc_opt_respondsToSelector() & 1;
    goto LABEL_8;
  }

  if (([MEMORY[0x1E698C890] QAMode] & 1) != 0 || (objc_msgSend(MEMORY[0x1E698C890], "ignoreServerTrustEvaluation") & 1) != 0 || SSDebugShouldIgnoreExtendedValidation())
  {
    v11 = MEMORY[0x1E696AF30];
    v12 = [v15 protectionSpace];
    v13 = [v11 credentialForTrust:{objc_msgSend(v12, "serverTrust")}];
    v14 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v13 = 0;
  v14 = 1;
LABEL_9:
  v8[2](v8, v14, v13);
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__SSVLoadURLOperation_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  v22[3] = &unk_1E84ABFD8;
  v22[4] = self;
  v22[5] = &v23;
  [(SSVLoadURLOperation *)self dispatchSync:v22];
  if (v14)
  {
    if (*(v24 + 24) == 1)
    {
      v17 = +[SSAccountStore defaultStore];
      v18 = [v17 activeAccount];

      v19 = +[SSVCookieStorage sharedStorage];
      [v19 setCookiesForHTTPResponse:v14 account:v18];
    }

    v20 = [v15 URL];
    v21 = [(SSVLoadURLOperation *)self _newURLRequestWithRedirectURL:v20];

    v15 = v21;
  }

  v16[2](v16, v15);
  _Block_object_dispose(&v23, 8);
}

void __95__SSVLoadURLOperation_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 312);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSince1970];
    [v3 setRequestStartTime:?];

    v2 = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = *(v2 + 288);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SSVLoadURLOperation_URLSession_dataTask_didReceiveData___block_invoke;
  v8[3] = &unk_1E84AC028;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(SSVLoadURLOperation *)self dispatchSync:v8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__SSVLoadURLOperation_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v22[3] = &unk_1E84AC028;
  v22[4] = self;
  v12 = v11;
  v23 = v12;
  [(SSVLoadURLOperation *)self dispatchAsync:v22];
  if ([(SSVLoadURLOperation *)self isITunesStoreRequest])
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __80__SSVLoadURLOperation_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2;
    v19 = &unk_1E84AC028;
    v20 = self;
    v21 = v8;
    [(SSVLoadURLOperation *)self dispatchAsync:&v16];
    v13 = [SSAccountStore defaultStore:v16];
    v14 = [v13 activeAccount];

    v15 = +[SSVCookieStorage sharedStorage];
    [v15 setCookiesForHTTPResponse:v12 account:v14];
  }

  v9[2](v9, 1);
}

void __80__SSVLoadURLOperation_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[39])
  {
    [v2 _applyResponseToMetrics:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 312);
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSince1970];
    [v3 setResponseStartTime:?];

    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = v2 + 47;

  objc_storeStrong(v6, v5);
}

void *__80__SSVLoadURLOperation_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 248);
  if (result)
  {
    v4 = 0;
    result = [result handleResponse:*(a1 + 40) forRequest:*(v2 + 456) shouldRetry:&v4];
    if (v4 == 1)
    {
      *(*(a1 + 32) + 408) = 1;
    }
  }

  return result;
}

- (void)_configureWithURLBagInterpreter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__SSVLoadURLOperation__configureWithURLBagInterpreter___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVLoadURLOperation *)self dispatchAsync:v6];
}

void __55__SSVLoadURLOperation__configureWithURLBagInterpreter___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 440) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 440);
    *(v5 + 440) = v4;

    v7 = *(a1 + 32);
    if (!*(v7 + 416))
    {
      v8 = [*(v7 + 440) storeFrontSuffix];
      v9 = *(a1 + 32);
      v10 = *(v9 + 416);
      *(v9 + 416) = v8;
    }
  }
}

- (void)_addMachineDataHeadersToRequest:(id)a3 withAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__SSVLoadURLOperation__addMachineDataHeadersToRequest_withAccountIdentifier___block_invoke;
  v10[3] = &unk_1E84AC078;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(SSVLoadURLOperation *)self dispatchSync:v10];
}

void __77__SSVLoadURLOperation__addMachineDataHeadersToRequest_withAccountIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  if (v3 == 3)
  {
LABEL_7:
    v7 = *(a1 + 48);
    v6 = -1;
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v8 = *(v2 + 440);
    v9 = [*(a1 + 48) URL];
    LODWORD(v8) = [v8 shouldSendAnonymousMachineIdentifierForURL:v9];

    if (!v8)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 != 1)
  {
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    return;
  }

  v5 = *(a1 + 48);
  v6 = [v4 unsignedLongLongValue];
  v7 = v5;
LABEL_8:

  SSVAnisetteAddHeadersToURLRequest(v7, v6, 0);
}

- (void)_addSAPSignatureToRequest:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __49__SSVLoadURLOperation__addSAPSignatureToRequest___block_invoke;
  v13 = &unk_1E84ADE30;
  v14 = self;
  v16 = &v24;
  v5 = v4;
  v15 = v5;
  v17 = &v18;
  [(SSVLoadURLOperation *)self dispatchSync:&v10];
  v6 = v25[5];
  if (v6 && v19[5])
  {
    v7 = [v6 dataToSignWithURLRequest:{v5, v10, v11, v12, v13, v14}];
    if (v7)
    {
      v8 = [v19[5] signatureWithData:v7 error:0];
      v9 = [v8 base64EncodedStringWithOptions:0];
      if (v9)
      {
        [v5 setValue:v9 forHTTPHeaderField:@"X-Apple-ActionSignature"];
      }
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
}

void __49__SSVLoadURLOperation__addSAPSignatureToRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 400);
  if (!v2)
  {
    return;
  }

  v3 = [v2 policyType];
  if (v3 == 2)
  {
    v9 = [*(*(a1 + 32) + 400) copy];
    v10 = *(*(a1 + 48) + 8);
    v5 = *(v10 + 40);
    *(v10 + 40) = v9;
    goto LABEL_6;
  }

  if (v3 == 1)
  {
    v4 = *(*(a1 + 32) + 440);
    v5 = [*(a1 + 40) URL];
    v6 = [v4 mescalSignaturePolicyForRequestURL:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

LABEL_6:
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    return;
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 392);
  if (v12)
  {
    v13 = *(*(a1 + 56) + 8);
    v14 = v12;
    v15 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  else
  {
    if (!*(v11 + 440))
    {
      return;
    }

    v16 = +[SSVFairPlaySAPSession sharedDefaultSession];
    v17 = *(*(a1 + 56) + 8);
    v15 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

- (void)_applyResponseToMetrics:(id)a3
{
  v4 = a3;
  v12 = [v4 allHeaderFields];
  metricsPageEvent = self->_metricsPageEvent;
  v6 = [v4 URL];

  v7 = [v6 absoluteString];
  [(SSMetricsBaseEvent *)metricsPageEvent setPageURL:v7];

  v8 = self->_metricsPageEvent;
  v9 = HeaderValueForKey(v12, @"X-Apple-Application-Instance");
  [(SSMetricsPageEvent *)v8 setServerApplicationInstance:v9];

  v10 = self->_metricsPageEvent;
  v11 = HeaderValueForKey(v12, @"Apple-Timing-App");
  [(SSMetricsPageEvent *)v10 setServerTiming:v11];
}

- (void)_createAuthKitSession
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__SSVLoadURLOperation__createAuthKitSession__block_invoke;
  v2[3] = &unk_1E84AC050;
  v2[4] = self;
  [(SSVLoadURLOperation *)self dispatchSync:v2];
}

void __44__SSVLoadURLOperation__createAuthKitSession__block_invoke(uint64_t a1)
{
  v2 = SSVAuthKitFramework();
  v3 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Akappleidsessi.isa, v2));
  v4 = *(a1 + 32);
  v5 = *(v4 + 248);
  *(v4 + 248) = v3;
}

- (id)_dataForCachedResponse:(_CFCachedURLResponse *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = CFCachedURLResponseCopyReceiverDataArray();
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 objectAtIndex:0];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [v4 appendData:{*(*(&v11 + 1) + 8 * i), v11}];
          }

          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_finishWithData:(id)a3
{
  v6 = 0;
  v4 = [(SSVLoadURLOperation *)self _outputForData:a3 error:&v6];
  v5 = v6;
  [(SSVLoadURLOperation *)self _finishWithOutput:v4 error:v5];
}

- (void)_finishWithOutput:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SSVLoadURLOperation *)self outputBlock];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v9, v6);
    [(SSVLoadURLOperation *)self _releaseOutputBlocks];
  }
}

- (void)_loadURLBagInterpreter
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(SSVLoadURLOperation *)self bag];

  if (v3)
  {
    v4 = [(SSVLoadURLOperation *)self bag];
    v5 = [[SSVURLBagInterpreter alloc] initWithSSBag:v4];
    goto LABEL_17;
  }

  v4 = self->_urlBag;
  if (!v4)
  {
    v6 = [SSURLBagContext contextWithBagType:0];
    v4 = [[SSURLBag alloc] initWithURLBagContext:v6];
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      LODWORD(v21) = 138412290;
      *(&v21 + 4) = objc_opt_class();
      v11 = *(&v21 + 4);
      LODWORD(v20) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        goto LABEL_16;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v21, v20, v21}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v10);
    }

    goto LABEL_15;
  }

LABEL_16:
  v5 = [[SSVURLBagInterpreter alloc] initWithURLBag:v4];
LABEL_17:
  v19 = v5;

  if (v19)
  {
    [(SSVLoadURLOperation *)self _configureWithURLBagInterpreter:v19];
  }
}

- (id)_newURLRequestWithRedirectURL:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSURLRequest *)self->_urlRequest mutableCopy];
  [v5 setHTTPShouldUsePipelining:1];
  if (v4)
  {
    [v5 setURL:v4];
  }

  [v5 _CFURLRequest];
  CFURLRequestSetShouldStartSynchronously();
  v6 = [v5 valueForHTTPHeaderField:@"Accept-Language"];

  if (!v6)
  {
    v7 = [objc_opt_class() currentAcceptLanguage];
    [v5 setValue:v7 forHTTPHeaderField:@"Accept-Language"];
  }

  v8 = [v5 valueForHTTPHeaderField:@"User-Agent"];

  if (!v8)
  {
    v9 = SSVDefaultUserAgent();
    if (v9)
    {
      [v5 setValue:v9 forHTTPHeaderField:@"User-Agent"];
    }
  }

  v10 = SSViTunesStoreFramework();
  v11 = [SSVWeakLinkedClassForString(&cfstr_Isnetworkobser.isa v10)];
  v12 = [v11 connectionTypeHeader];

  if ([v12 length])
  {
    [v5 setValue:v12 forHTTPHeaderField:@"X-Apple-Connection-Type"];
  }

  if ([(SSVLoadURLOperation *)self isITunesStoreRequest])
  {
    if ([(SSVLoadURLOperation *)self shouldSuppressUserInfo])
    {
      v13 = 0;
    }

    else
    {
      v14 = +[SSAccountStore defaultStore];
      v13 = [v14 activeAccount];
    }

    v15 = [v13 uniqueIdentifier];
    if (![(SSVLoadURLOperation *)self shouldSuppressUserInfo])
    {
      v16 = [v5 valueForHTTPHeaderField:@"X-Dsid"];

      if (!v16 && v15)
      {
        v17 = [v15 stringValue];
        [v5 setValue:v17 forHTTPHeaderField:@"X-Dsid"];
      }

      v18 = [v5 valueForHTTPHeaderField:@"iCloud-DSID"];

      if (!v18)
      {
        v19 = +[SSVAppleAccountStore sharedAccountStore];
        v20 = [v19 primaryAppleAccount];

        v21 = [v20 aa_personID];
        if (v21)
        {
          [v5 setValue:v21 forHTTPHeaderField:@"iCloud-DSID"];
        }
      }
    }

    if ([v13 isNewCustomer])
    {
      v22 = [v5 URL];
      v23 = URLByAppendingQueryParameter(v22, @"newCustomer", @"true");

      [v5 setURL:v23];
    }

    if (SSDebugShouldSendCacheBuster())
    {
      v24 = [MEMORY[0x1E696AFB0] UUID];
      v25 = [v24 UUIDString];

      if (v25)
      {
        v26 = [v5 URL];
        v27 = URLByAppendingQueryParameter(v26, @"buster", v25);

        [v5 setURL:v27];
      }
    }

    if (![(SSVLoadURLOperation *)self shouldSuppressCookies])
    {
      v28 = +[SSVCookieStorage sharedStorage];
      v29 = [v5 URL];
      v30 = [v28 cookieHeadersForURL:v29 account:v13];

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __53__SSVLoadURLOperation__newURLRequestWithRedirectURL___block_invoke;
      v59[3] = &unk_1E84ADD90;
      v60 = v5;
      [v30 enumerateKeysAndObjectsUsingBlock:v59];
    }

    [v5 setHTTPShouldHandleCookies:0];
    v31 = [v5 valueForHTTPHeaderField:@"X-Apple-Store-Front"];

    if (!v31)
    {
      v32 = SSVStoreFrontIdentifierForAccount(v13);
      if (v32)
      {
        v33 = v32;
        v34 = [(SSVLoadURLOperation *)self storeFrontSuffix];
        if (v34)
        {
          v35 = [v33 stringByAppendingString:v34];

          v33 = v35;
        }

        [v5 setValue:v33 forHTTPHeaderField:@"X-Apple-Store-Front"];
      }
    }

    if ((SSIsAppStoreDaemon() & 1) == 0)
    {
      v36 = +[SSDevice currentDevice];
      v37 = [v5 valueForHTTPHeaderField:@"X-Apple-Software-Cuid"];

      if (!v37)
      {
        v38 = [v36 softwareLibraryIdentifier];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 setValue:v38 forHTTPHeaderField:@"X-Apple-Software-Cuid"];
        }
      }
    }

    authKitSession = self->_authKitSession;
    if (authKitSession)
    {
      v53 = v15;
      v54 = v4;
      v40 = v13;
      v41 = [(AKAppleIDSession *)authKitSession appleIDHeadersForRequest:v5];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v56;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v56 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v55 + 1) + 8 * i);
            v47 = [v41 objectForKeyedSubscript:v46];
            [v5 setValue:v47 forHTTPHeaderField:v46];
          }

          v43 = [v41 countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v43);
      }

      v13 = v40;
      v15 = v53;
      v4 = v54;
    }

    [(SSVLoadURLOperation *)self _addMachineDataHeadersToRequest:v5 withAccountIdentifier:v15];
    [(SSVLoadURLOperation *)self _addSAPSignatureToRequest:v5];
    v48 = [(SSVLoadURLOperation *)self mainDocumentURL];

    if (v48)
    {
      v49 = [(SSVLoadURLOperation *)self mainDocumentURL];
      [v5 setMainDocumentURL:v49];
    }

    [v5 setAttribution:{-[SSVLoadURLOperation attribution](self, "attribution")}];
  }

  v50 = [(SSVLoadURLOperation *)self prepareRequestBlock];
  v51 = v50;
  if (v50)
  {
    (*(v50 + 16))(v50, v5);
  }

  return v5;
}

void __53__SSVLoadURLOperation__newURLRequestWithRedirectURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) valueForHTTPHeaderField:v9];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 stringByAppendingFormat:@" %@", v5];;

    v5 = v8;
  }

  [*(a1 + 32) setValue:v5 forHTTPHeaderField:v9];
}

- (id)_outputForData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(SSVLoadURLOperation *)self dataConsumer];
    if (v7)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__10;
      v19 = __Block_byref_object_dispose__10;
      v20 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__SSVLoadURLOperation__outputForData_error___block_invoke;
      v14[3] = &unk_1E84ABF40;
      v14[4] = self;
      v14[5] = &v15;
      [(SSVLoadURLOperation *)self dispatchSync:v14];
      v8 = v16[5];
      v13 = 0;
      v9 = [v7 objectForData:v6 response:v8 error:&v13];
      v10 = v13;
      _Block_object_dispose(&v15, 8);
    }

    else
    {
      v9 = v6;
      v10 = 0;
    }

    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v11 = v10;
    *a4 = v10;
  }

LABEL_10:

  return v9;
}

- (void)_releaseOutputBlocks
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__SSVLoadURLOperation__releaseOutputBlocks__block_invoke;
  v2[3] = &unk_1E84AC050;
  v2[4] = self;
  [(SSVLoadURLOperation *)self dispatchAsync:v2];
}

void __43__SSVLoadURLOperation__releaseOutputBlocks__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 320);
  *(v1 + 320) = 0;
}

- (void)_runOnce
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v3 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __31__SSVLoadURLOperation__runOnce__block_invoke;
  v11[3] = &unk_1E84ADE58;
  v11[4] = self;
  v4 = v3;
  v12 = v4;
  v13 = &v24;
  v14 = &v16;
  v15 = v22;
  [(SSVLoadURLOperation *)self dispatchSync:v11];
  if (*(v25 + 24) == 1)
  {
    [(SSVLoadURLOperation *)self _loadURLBagInterpreter];
  }

  v5 = [(SSVLoadURLOperation *)self _newURLRequestWithRedirectURL:v17[5]];
  v6 = +[SSURLSessionManager sharedManager];
  v7 = [v6 dataTaskWithRequest:v5 delegate:self];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__SSVLoadURLOperation__runOnce__block_invoke_2;
  v10[3] = &unk_1E84AC050;
  v10[4] = self;
  [(SSVLoadURLOperation *)self dispatchSync:v10];
  v8 = dispatch_get_global_queue(0, 0);
  dispatch_async(v8, &__block_literal_global_4);
  [v7 resume];
  [(SSVLoadURLOperation *)self performSelector:sel__stopIfCancelled withObject:0 afterDelay:0.0];
  [(SSVLoadURLOperation *)self _runRunLoopUntilStopped];
  [v7 cancel];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopIfCancelled object:0];
  dispatch_async(v8, &__block_literal_global_85);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__SSVLoadURLOperation__runOnce__block_invoke_5;
  v9[3] = &unk_1E84AC050;
  v9[4] = self;
  [(SSVLoadURLOperation *)self dispatchSync:v9];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);
}

void __31__SSVLoadURLOperation__runOnce__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  objc_storeStrong((*(a1 + 32) + 384), *(a1 + 40));
  v5 = *(a1 + 32);
  if (*(v5 + 288) != 1 || *(v5 + 440))
  {
    goto LABEL_10;
  }

  if (*(v5 + 304) == 2)
  {
    goto LABEL_4;
  }

  v6 = *(v5 + 400);
  if (v6)
  {
    v7 = [v6 policyType];
    if (v7 == 2)
    {
      *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 392) == 0;
    }

    else if (v7 == 1)
    {
LABEL_4:
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

LABEL_10:
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 352));
  v8 = *(a1 + 32);
  v9 = *(v8 + 352);
  *(v8 + 352) = 0;

  *(*(a1 + 32) + 408) = 0;
  if (*(*(a1 + 32) + 344) == 1)
  {
    v10 = objc_alloc_init(SSMetricsPageEvent);
    v11 = *(a1 + 32);
    v12 = *(v11 + 312);
    *(v11 + 312) = v10;

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void __31__SSVLoadURLOperation__runOnce__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 312);
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF00] date];
    [v2 timeIntervalSince1970];
    [v1 setRequestStartTime:?];
  }
}

void __31__SSVLoadURLOperation__runOnce__block_invoke_3()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"SSVNetworkingDidStartNotification" object:0];
}

void __31__SSVLoadURLOperation__runOnce__block_invoke_4()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"SSVNetworkingDidStopNotification" object:0];
}

void __31__SSVLoadURLOperation__runOnce__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 256);
  *(v2 + 256) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 384);
  *(v4 + 384) = 0;
}

- (int)_runRunLoopUntilStopped
{
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__keepAliveTimer_ selector:0 userInfo:0 repeats:1.79769313e308];
  self->_stopped = 0;
  v4 = *MEMORY[0x1E695E8E0];
  do
  {
    v5 = objc_autoreleasePoolPush();
    v6 = CFRunLoopRunInMode(v4, 10.0, 0);
    objc_autoreleasePoolPop(v5);
  }

  while (!self->_stopped && (v6 - 1) > 1);
  [v3 invalidate];

  return v6;
}

- (BOOL)_shouldRetryAfterMachineDataRequest:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (v4)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v18 = 0;
    v5 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__SSVLoadURLOperation__shouldRetryAfterMachineDataRequest___block_invoke;
    v14[3] = &unk_1E84ADE80;
    v16 = v17;
    v6 = v5;
    v15 = v6;
    [v4 startWithCompletionBlock:v14];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__SSVLoadURLOperation__shouldRetryAfterMachineDataRequest___block_invoke_2;
    v9[3] = &unk_1E84ADEA8;
    v12 = v17;
    v13 = &v19;
    v10 = v4;
    v11 = self;
    [(SSVLoadURLOperation *)self dispatchSync:v9];

    _Block_object_dispose(v17, 8);
    v7 = *(v20 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v7 & 1;
}

uint64_t __59__SSVLoadURLOperation__shouldRetryAfterMachineDataRequest___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = [*(a1 + 32) actionName];
    v3 = [v2 isEqualToString:@"RP"];

    v4 = *(a1 + 40);
    if (v3)
    {
      *(v4 + 296) = 0;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      ++*(v4 + 296);
      *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 40) + 296) < 2;
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  result = [*(a1 + 32) protocolVersion];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  *(*(a1 + 40) + 304) = v6;
  return result;
}

- (void)_stopIfCancelled
{
  if ([(SSVLoadURLOperation *)self isCancelled])
  {

    [(SSVLoadURLOperation *)self _stopRunLoop];
  }
}

- (void)_stopRunLoop
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SSVLoadURLOperation__stopRunLoop__block_invoke;
  v7[3] = &unk_1E84ABF40;
  v7[4] = self;
  v7[5] = &v8;
  [(SSVLoadURLOperation *)self dispatchSync:v7];
  v3 = v9[5];
  if (v3)
  {
    v4 = [v3 getCFRunLoop];
    v5 = *MEMORY[0x1E695E8E0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__SSVLoadURLOperation__stopRunLoop__block_invoke_2;
    block[3] = &unk_1E84AC050;
    block[4] = self;
    CFRunLoopPerformBlock(v4, v5, block);
    CFRunLoopWakeUp(v4);
    CFRunLoopStop(v4);
  }

  _Block_object_dispose(&v8, 8);
}

- (SSVLoadURLOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end