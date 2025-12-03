@interface TestHTTPProbe
- (BOOL)isEqual:(id)equal;
- (TestHTTPProbe)initWithQueue:(id)queue;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)stopTest;
- (void)testURL:(id)l timeout:(double)timeout interfaceName:(id)name userAgent:(id)agent reply:(id)reply;
@end

@implementation TestHTTPProbe

- (TestHTTPProbe)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = TestHTTPProbe;
  v5 = [(TestProbe *)&v12 initWithQueue:queueCopy];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v6 setName:@"TestHTTPQueue"];
      [v6 setMaxConcurrentOperationCount:1];
      [v6 setUnderlyingQueue:queueCopy];
    }

    else
    {
      v6 = 0;
    }

    v7 = MEMORY[0x277CBABB8];
    ephemeralSessionConfiguration = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    v9 = [v7 sessionWithConfiguration:ephemeralSessionConfiguration delegate:v5 delegateQueue:v6];
    urlSession = v5->_urlSession;
    v5->_urlSession = v9;
  }

  return v5;
}

- (void)testURL:(id)l timeout:(double)timeout interfaceName:(id)name userAgent:(id)agent reply:(id)reply
{
  lCopy = l;
  agentCopy = agent;
  replyCopy = reply;
  objc_storeStrong(&self->_urlToTest, l);
  nameCopy = name;
  v17 = [MEMORY[0x277CBAB50] requestWithURL:self->_urlToTest cachePolicy:1 timeoutInterval:timeout];
  v18 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceName:nameCopy];

  [v17 setAllowsCellularAccess:{objc_msgSend(v18, "type") == 2}];
  if (agentCopy)
  {
    [v17 setValue:agentCopy forHTTPHeaderField:@"User-Agent"];
  }

  [(TestProbe *)self setStatus:1];
  urlSession = self->_urlSession;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __63__TestHTTPProbe_testURL_timeout_interfaceName_userAgent_reply___block_invoke;
  v26 = &unk_27898A8F0;
  selfCopy = self;
  v28 = replyCopy;
  v20 = replyCopy;
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

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  if (self->_urlSession == sessionCopy)
  {
    v8 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "TestHTTPProbe: didBecomeInvalidWithError, %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = TestHTTPProbe;
  if ([(TestProbe *)&v9 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      urlToTest = [equalCopy urlToTest];
      urlToTest2 = [(TestHTTPProbe *)self urlToTest];
      v5 = [urlToTest isEqual:urlToTest2];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end