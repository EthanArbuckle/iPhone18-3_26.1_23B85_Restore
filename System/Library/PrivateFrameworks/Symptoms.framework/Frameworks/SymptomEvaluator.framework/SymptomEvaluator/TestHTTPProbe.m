@interface TestHTTPProbe
- (BOOL)isEqual:(id)a3;
- (TestHTTPProbe)initWithQueue:(id)a3;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)stopTest;
- (void)testURL:(id)a3 timeout:(double)a4 interfaceName:(id)a5 userAgent:(id)a6 reply:(id)a7;
@end

@implementation TestHTTPProbe

- (TestHTTPProbe)initWithQueue:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TestHTTPProbe;
  v5 = [(TestProbe *)&v12 initWithQueue:v4];
  if (v5)
  {
    if (v4)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v6 setName:@"TestHTTPQueue"];
      [v6 setMaxConcurrentOperationCount:1];
      [v6 setUnderlyingQueue:v4];
    }

    else
    {
      v6 = 0;
    }

    v7 = MEMORY[0x277CBABB8];
    v8 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    v9 = [v7 sessionWithConfiguration:v8 delegate:v5 delegateQueue:v6];
    urlSession = v5->_urlSession;
    v5->_urlSession = v9;
  }

  return v5;
}

- (void)testURL:(id)a3 timeout:(double)a4 interfaceName:(id)a5 userAgent:(id)a6 reply:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  objc_storeStrong(&self->_urlToTest, a3);
  v16 = a5;
  v17 = [MEMORY[0x277CBAB50] requestWithURL:self->_urlToTest cachePolicy:1 timeoutInterval:a4];
  v18 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceName:v16];

  [v17 setAllowsCellularAccess:{objc_msgSend(v18, "type") == 2}];
  if (v14)
  {
    [v17 setValue:v14 forHTTPHeaderField:@"User-Agent"];
  }

  [(TestProbe *)self setStatus:1];
  urlSession = self->_urlSession;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __63__TestHTTPProbe_testURL_timeout_interfaceName_userAgent_reply___block_invoke;
  v26 = &unk_27898A8F0;
  v27 = self;
  v28 = v15;
  v20 = v15;
  v21 = [(NSURLSession *)urlSession dataTaskWithRequest:v17 completionHandler:&v23];
  urlSessionTask = self->_urlSessionTask;
  self->_urlSessionTask = v21;

  [(NSURLSessionDataTask *)self->_urlSessionTask resume:v23];
  [(TestProbe *)self setRunning:1];
}

void __63__TestHTTPProbe_testURL_timeout_interfaceName_userAgent_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "TestHTTPProbe completion: error:%@", &v17, 0xCu);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v8, v9);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 56);
  *(v12 + 56) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(v14 + 64) = 0;

  [*(a1 + 32) setRunning:0];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopTest
{
  if ([(TestProbe *)self isRunning])
  {
    urlSessionTask = self->_urlSessionTask;

    [(NSURLSessionDataTask *)urlSessionTask cancel];
  }
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_urlSession == v6)
  {
    v8 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "TestHTTPProbe: didBecomeInvalidWithError, %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TestHTTPProbe;
  if ([(TestProbe *)&v9 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 urlToTest];
      v7 = [(TestHTTPProbe *)self urlToTest];
      v5 = [v6 isEqual:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end