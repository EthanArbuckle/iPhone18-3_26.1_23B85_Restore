@interface RUIHTTPRequest
+ (id)invalidResponseErrorWithResponse:(id)response;
+ (id)safeBaseURL;
- (BOOL)receivedValidResponse:(id)response forRequest:(id)request;
- (RUIHTTPRequest)init;
- (id)delegate;
- (void)_finishedLoading;
- (void)_loadRequestMain:(id)main;
- (void)_preLoadCancel;
- (void)dealloc;
- (void)failWithError:(id)error forRequest:(id)request;
- (void)loadRequest:(id)request;
- (void)loadStatusChanged;
- (void)parseData:(id)data;
- (void)parseData:(id)data completion:(id)completion;
- (void)shouldLoadRequest:(id)request completionHandler:(id)handler;
@end

@implementation RUIHTTPRequest

+ (id)invalidResponseErrorWithResponse:(id)response
{
  v9[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = @"statusCode";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(responseCopy, "statusCode")}];
    v8[1] = RUIHTTPResponseKey;
    v9[0] = v4;
    v9[1] = responseCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:RUIHTTPRequestErrorDomain code:3 userInfo:v5];

  return v6;
}

+ (id)safeBaseURL
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v4 = MEMORY[0x277CBEBC0];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-remoteui://%@/", uUIDString];
  v6 = [v4 URLWithString:v5];

  if (!v6)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-remoteui://remoteui/"];
    v6 = [v7 URLWithString:v8];
  }

  return v6;
}

- (RUIHTTPRequest)init
{
  v3.receiver = self;
  v3.super_class = RUIHTTPRequest;
  return [(RUIHTTPRequest *)&v3 init];
}

- (void)dealloc
{
  if (self->_dataTask && _isInternalInstall())
  {
    v3 = _RUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v3, OS_LOG_TYPE_DEFAULT, "RUIHTTPRequest dealloc, canceling active reqeust", buf, 2u);
    }
  }

  [(RUIHTTPRequest *)self cancel];
  [(NSURLSession *)self->_urlSession invalidateAndCancel];
  v4.receiver = self;
  v4.super_class = RUIHTTPRequest;
  [(RUIHTTPRequest *)&v4 dealloc];
}

- (void)_finishedLoading
{
  --_loadingRequestCount;
  dataTask = self->_dataTask;
  self->_dataTask = 0;

  [(RUIHTTPRequest *)self loadStatusChanged];
}

- (void)_loadRequestMain:(id)main
{
  mainCopy = main;
  [(RUIHTTPRequest *)self _preLoadCancel];
  if (_isInternalInstall())
  {
    v5 = _RUILoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_INFO, "Querying overrides before loading the request...", buf, 2u);
    }
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__RUIHTTPRequest__loadRequestMain___block_invoke;
  v6[3] = &unk_2782E84D0;
  v6[4] = self;
  [(RUIHTTPRequest *)self shouldLoadRequest:mainCopy completionHandler:v6];
}

void __35__RUIHTTPRequest__loadRequestMain___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = *(a1 + 32);
    if (!*(v8 + 24))
    {
      v9 = [v8 sessionConfiguration];
      if (!v9)
      {
        v9 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      }

      v10 = [*(a1 + 32) urlSessionDelegate];
      v11 = MEMORY[0x277CCAD30];
      v12 = [MEMORY[0x277CCABD8] mainQueue];
      v13 = [v11 sessionWithConfiguration:v9 delegate:v10 delegateQueue:v12];
      v14 = *(a1 + 32);
      v15 = *(v14 + 24);
      *(v14 + 24) = v13;

      v8 = *(a1 + 32);
    }

    objc_storeStrong((v8 + 8), a2);
    v16 = [v6 HTTPMethod];
    v17 = [v16 lowercaseString];
    v18 = [v17 isEqualToString:@"post"];

    isInternalInstall = _isInternalInstall();
    if (v18)
    {
      if (isInternalInstall)
      {
        v20 = _RUILoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(*(a1 + 32) + 8) URL];
          *buf = 138412290;
          v35 = v21;
          _os_log_impl(&dword_21B93D000, v20, OS_LOG_TYPE_DEFAULT, "RUIHTTPRequest POST, URL = %@", buf, 0xCu);
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if (isInternalInstall)
    {
      v20 = _RUILoggingFacility();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v6 HTTPMethod];
        v22 = [*(*(a1 + 32) + 8) URL];
        *buf = 138412546;
        v35 = v21;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_21B93D000, v20, OS_LOG_TYPE_DEFAULT, "RUIHTTPRequest %@, URL = %@", buf, 0x16u);

        goto LABEL_13;
      }

LABEL_14:
    }

    v23 = *(a1 + 32);
    v24 = *(v23 + 24);
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __35__RUIHTTPRequest__loadRequestMain___block_invoke_30;
    v31 = &unk_2782E84A8;
    v32 = v23;
    v33 = v6;
    v25 = [v24 dataTaskWithRequest:v33 completionHandler:&v28];
    v26 = *(a1 + 32);
    v27 = *(v26 + 16);
    *(v26 + 16) = v25;

    [*(*(a1 + 32) + 16) resume];
    [*(a1 + 32) _startedLoading];
  }
}

void __35__RUIHTTPRequest__loadRequestMain___block_invoke_30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RUIHTTPRequest__loadRequestMain___block_invoke_2;
  block[3] = &unk_2782E8480;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v19 = v11;
  v20 = v7;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__RUIHTTPRequest__loadRequestMain___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) receivedValidResponse:*(a1 + 48) forRequest:*(a1 + 56)];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && _isInternalInstall())
  {
    v3 = _RUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 48) allHeaderFields];
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_21B93D000, v3, OS_LOG_TYPE_DEFAULT, "Response Headers: %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5[2])
  {
    [v5 _finishedLoading];
  }

  if (v2)
  {
    [*(a1 + 40) willParseData];
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__RUIHTTPRequest__loadRequestMain___block_invoke_31;
    v11[3] = &unk_2782E7F30;
    v11[4] = v6;
    [v6 parseData:v7 completion:v11];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (v8)
    {
      [*(a1 + 40) failWithError:v8 forRequest:*(a1 + 56)];
    }

    else
    {
      v10 = [RUIHTTPRequest invalidResponseErrorWithResponse:*(a1 + 48)];
      [v9 failWithError:v10 forRequest:*(a1 + 56)];
    }
  }
}

void __35__RUIHTTPRequest__loadRequestMain___block_invoke_31(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RUIHTTPRequest__loadRequestMain___block_invoke_2_32;
  block[3] = &unk_2782E7F30;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)loadRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__RUIHTTPRequest_loadRequest___block_invoke;
  v6[3] = &unk_2782E84F8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)shouldLoadRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(RUIHTTPRequest *)self handleWillLoadRequest:request];
  (*(handler + 2))(handlerCopy, v8, 0);
}

- (void)_preLoadCancel
{
  dataTask = self->_dataTask;
  if (dataTask)
  {
    [(NSURLSessionDataTask *)dataTask cancel];
    [(RUIHTTPRequest *)self _finishedLoading];
  }

  request = self->_request;
  self->_request = 0;
}

- (void)loadStatusChanged
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:RUIHTTPRequestLoadingStatusDidChangeNotification object:self];
}

- (void)parseData:(id)data
{
  v3 = NSStringFromSelector(a2);
  NSLog(&cfstr_ToBeImplemente.isa, v3);
}

- (void)parseData:(id)data completion:(id)completion
{
  completionCopy = completion;
  [(RUIHTTPRequest *)self parseData:data];
  completionCopy[2]();
}

- (void)failWithError:(id)error forRequest:(id)request
{
  v4 = NSStringFromSelector(a2);
  NSLog(&cfstr_ToBeImplemente.isa, v4);
}

- (BOOL)receivedValidResponse:(id)response forRequest:(id)request
{
  v11 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = responseCopy;
    if (_isInternalInstall())
    {
      v6 = _RUILoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        statusCode = [v5 statusCode];
        _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "RUIHTTPRequest Response StatusCode: %ld", &v9, 0xCu);
      }
    }

    v7 = ([v5 statusCode] - 600) < 0xFFFFFFFFFFFFFF38;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end