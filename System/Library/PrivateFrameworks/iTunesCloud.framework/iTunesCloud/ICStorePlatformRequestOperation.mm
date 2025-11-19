@interface ICStorePlatformRequestOperation
- (ICStorePlatformRequestOperation)initWithPlatformRequest:(id)a3;
- (ICStorePlatformRequestOperation)initWithPlatformRequest:(id)a3 usingURLSession:(id)a4;
- (id)_URLRequestWithBaseURL:(id)a3;
- (id)_requestContext;
- (void)_enqueueDataRequest:(id)a3;
- (void)_executePersonalized;
- (void)_executeUnpersonalized;
- (void)_finishWithResponse:(id)a3 error:(id)a4;
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)a3;
@end

@implementation ICStorePlatformRequestOperation

- (id)_URLRequestWithBaseURL:(id)a3
{
  v4 = a3;
  v5 = [(ICStorePlatformRequest *)self->_platformRequest queryItems];
  v6 = [v5 mutableCopy];

  if ([(ICStorePlatformRequest *)self->_platformRequest shouldIgnoreCache])
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];

    v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"buster" value:v8];
    [v6 addObject:v9];
  }

  v10 = [v4 ic_URLByAppendingQueryItems:v6];
  v11 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v10];
  v12 = [(ICStorePlatformRequest *)self->_platformRequest HTTPHeaders];
  [v11 setAllHTTPHeaderFields:v12];

  [(ICStorePlatformRequest *)self->_platformRequest timeoutInterval];
  [v11 setTimeoutInterval:?];

  return v11;
}

- (id)_requestContext
{
  v3 = [(ICStorePlatformRequest *)self->_platformRequest personalizationStyle];
  switch(v3)
  {
    case 0:
      v6 = objc_alloc_init(ICURLResponseAuthenticationProvider);
      goto LABEL_8;
    case 1:
      v4 = [ICStoreURLResponseAuthenticationProvider alloc];
      v5 = 1;
      goto LABEL_6;
    case 2:
      v4 = [ICStoreURLResponseAuthenticationProvider alloc];
      v5 = 2;
LABEL_6:
      v6 = [(ICURLResponseAuthenticationProvider *)v4 initWithUserInteractionLevel:v5];
LABEL_8:
      v7 = v6;
      goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  v8 = [(ICStorePlatformRequest *)self->_platformRequest requestContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__ICStorePlatformRequestOperation__requestContext__block_invoke;
  v12[3] = &unk_1E7BF91F0;
  v13 = v7;
  v9 = v7;
  v10 = [v8 copyWithBlock:v12];

  return v10;
}

- (void)_finishWithResponse:(id)a3 error:(id)a4
{
  v6 = a4;
  responseHandler = self->_responseHandler;
  v9 = v6;
  if (responseHandler)
  {
    responseHandler[2](responseHandler, a3, v6);
    v8 = self->_responseHandler;
    self->_responseHandler = 0;

    v6 = v9;
  }

  [(ICStorePlatformRequestOperation *)self finishWithError:v6];
}

- (void)_executeUnpersonalized
{
  v3 = [(ICStorePlatformRequestOperation *)self _requestContext];
  v4 = +[ICURLBagProvider sharedBagProvider];
  v5 = [(ICStorePlatformRequestOperation *)self qualityOfService];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__ICStorePlatformRequestOperation__executeUnpersonalized__block_invoke;
  v6[3] = &unk_1E7BF7AF8;
  v6[4] = self;
  v6[5] = v3;
  [v4 getBagForRequestContext:v3 qualityOfService:v5 forceRefetch:0 withCompletionHandler:v6];
}

void __57__ICStorePlatformRequestOperation__executeUnpersonalized__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [a2 urlForBagKey:@"storeplatform-lookup-url-unpersonalized"];
    v14 = v4;
    if (v4)
    {
      v5 = [*(a1 + 32) _URLRequestWithBaseURL:v4];
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = [MEMORY[0x1E695DF00] date];
      [v7 timeIntervalSince1970];
      v9 = [v6 initWithFormat:@"%.0f", v8];

      [v5 setValue:v9 forHTTPHeaderField:@"X-JS-TIMESTAMP"];
      v10 = [[ICStoreURLRequest alloc] initWithURLRequest:v5 requestContext:*(a1 + 40)];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"StorePlatform personalized:0"];
      [(ICURLRequest *)v10 setRequestName:v11];

      v12 = +[ICJSSignConfiguration storePlatformConfiguration];
      [(ICStoreURLRequest *)v10 setJSSignConfiguration:v12];

      [(ICStoreURLRequest *)v10 setShouldUseMescalSigning:0];
      [*(a1 + 32) _enqueueDataRequest:v10];
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [*(a1 + 32) _finishWithResponse:0 error:v5];
    }
  }

  else
  {
    v13 = *(a1 + 32);

    [v13 _finishWithResponse:0 error:a3];
  }
}

- (void)_executePersonalized
{
  v3 = [(ICStorePlatformRequestOperation *)self _requestContext];
  v4 = +[ICURLBagProvider sharedBagProvider];
  v5 = [(ICStorePlatformRequestOperation *)self qualityOfService];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__ICStorePlatformRequestOperation__executePersonalized__block_invoke;
  v6[3] = &unk_1E7BF7AF8;
  v6[4] = self;
  v6[5] = v3;
  [v4 getBagForRequestContext:v3 qualityOfService:v5 forceRefetch:0 withCompletionHandler:v6];
}

void __55__ICStorePlatformRequestOperation__executePersonalized__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [a2 urlForBagKey:@"storeplatform-lookup-url"];
    v9 = v4;
    if (v4)
    {
      v5 = [*(a1 + 32) _URLRequestWithBaseURL:v4];
      v6 = [[ICStoreURLRequest alloc] initWithURLRequest:v5 requestContext:*(a1 + 40)];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"StorePlatform personalized:1"];
      [(ICURLRequest *)v6 setRequestName:v7];

      [*(a1 + 32) _enqueueDataRequest:v6];
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [*(a1 + 32) _finishWithResponse:0 error:v5];
    }
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 _finishWithResponse:0 error:a3];
  }
}

- (void)_enqueueDataRequest:(id)a3
{
  v4 = a3;
  [(ICStorePlatformRequest *)self->_platformRequest retryDelay];
  [v4 setRetryDelay:?];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ICStorePlatformRequestOperation__enqueueDataRequest___block_invoke;
  block[3] = &unk_1E7BFA078;
  block[4] = self;
  v6 = v4;
  v12 = v6;
  dispatch_barrier_async(accessQueue, block);
  urlSession = self->_urlSession;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ICStorePlatformRequestOperation__enqueueDataRequest___block_invoke_2;
  v9[3] = &unk_1E7BF7AB0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(ICURLSession *)urlSession enqueueDataRequest:v8 withCompletionHandler:v9];
}

void __55__ICStorePlatformRequestOperation__enqueueDataRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 288);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __55__ICStorePlatformRequestOperation__enqueueDataRequest___block_invoke_3;
  v17 = &unk_1E7BFA078;
  v18 = v8;
  v19 = v7;
  dispatch_barrier_async(v9, &v14);
  if (v5)
  {
    v10 = [ICStorePlatformResponse alloc];
    v11 = [*(*(a1 + 32) + 320) itemIdentifiers];
    v12 = [(ICStorePlatformResponse *)v10 initWithURLResponse:v5 requestedItemIdentifiers:v11];

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 underlyingError:v6 debugDescription:@"Failed to run SP lookup"];
    }
  }

  else
  {
    v13 = v6;
    v12 = 0;
  }

  [*(a1 + 32) _finishWithResponse:v12 error:{v13, v14, v15, v16, v17, v18}];
}

void __55__ICStorePlatformRequestOperation__enqueueDataRequest___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 296);
  if (v3 == v2)
  {
    *(v1 + 296) = 0;
  }
}

- (void)finishWithError:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICStorePlatformRequestOperation;
  [(ICAsyncOperation *)&v5 finishWithError:a3];
  strongSelf = self->_strongSelf;
  self->_strongSelf = 0;
}

- (void)execute
{
  if ([(ICStorePlatformRequestOperation *)self isCancelled])
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
    [(ICStorePlatformRequestOperation *)self _finishWithResponse:0 error:v4];
  }

  else
  {
    objc_storeStrong(&self->_strongSelf, self);
    v3 = [(ICStorePlatformRequest *)self->_platformRequest personalizationStyle];
    if ((v3 - 1) >= 2)
    {
      if (!v3)
      {

        [(ICStorePlatformRequestOperation *)self _executeUnpersonalized];
      }
    }

    else
    {

      [(ICStorePlatformRequestOperation *)self _executePersonalized];
    }
  }
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = ICStorePlatformRequestOperation;
  [(ICStorePlatformRequestOperation *)&v5 cancel];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ICStorePlatformRequestOperation_cancel__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __41__ICStorePlatformRequestOperation_cancel__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 296))
  {
    return [*(v1 + 312) cancelRequest:?];
  }

  return result;
}

- (ICStorePlatformRequestOperation)initWithPlatformRequest:(id)a3 usingURLSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ICStorePlatformRequestOperation;
  v8 = [(ICAsyncOperation *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.iTunesCloud.ICStorePlatformRequestOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v9;

    v11 = [v6 copy];
    platformRequest = v8->_platformRequest;
    v8->_platformRequest = v11;

    objc_storeStrong(&v8->_urlSession, a4);
    -[ICStorePlatformRequestOperation setQualityOfService:](v8, "setQualityOfService:", [v6 qualityOfService]);
  }

  return v8;
}

- (ICStorePlatformRequestOperation)initWithPlatformRequest:(id)a3
{
  v4 = a3;
  v5 = +[ICURLSessionManager defaultSession];
  v6 = [(ICStorePlatformRequestOperation *)self initWithPlatformRequest:v4 usingURLSession:v5];

  return v6;
}

@end