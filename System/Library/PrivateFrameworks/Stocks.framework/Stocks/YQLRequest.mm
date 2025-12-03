@interface YQLRequest
+ (void)saveDebugString;
- (YQLRequest)init;
- (id)YQLCountryCode;
- (id)YQLLanguageCode;
- (id)_yahooDoppelganger_taskForRequest:(id)request delegate:(id)delegate;
- (id)taskForRequest:(id)request delegate:(id)delegate;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_createDefaultSession;
- (void)_loadDefaultSessionIfNeeded;
- (void)cancel;
- (void)cancelAndInvalidate;
- (void)dealloc;
- (void)didParseData;
- (void)failToParseWithData:(id)data;
- (void)failToParseWithDataSeriesDictionary:(id)dictionary;
- (void)failWithError:(id)error;
- (void)loadRequest:(id)request;
- (void)parseData:(id)data;
@end

@implementation YQLRequest

- (id)_yahooDoppelganger_taskForRequest:(id)request delegate:(id)delegate
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  delegateCopy = delegate;
  if (!activeDoppelgangers)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = activeDoppelgangers;
    activeDoppelgangers = v7;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = preppedDoppelgangers;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v22;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v21 + 1) + 8 * v14);

        if ([v12 matchesRequest:requestCopy])
        {
          [activeDoppelgangers addObject:v12];
          [preppedDoppelgangers removeObject:v12];
          if (delegateCopy)
          {
            [v12 setDelegate:delegateCopy];
          }

          [v12 start];
          hTTPBodyString = v12;
          v19 = hTTPBodyString;
          goto LABEL_16;
        }

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = testHarness;
  v17 = MEMORY[0x277CCACA8];
  hTTPBodyString = [requestCopy HTTPBodyString];
  v9 = [v17 stringWithFormat:@"YahooDoppelganger had no prepared response for the request %@", hTTPBodyString];
  [v16 assertTrue:0 withMessage:v9];
  v19 = 0;
LABEL_16:

  return v19;
}

- (YQLRequest)init
{
  v6.receiver = self;
  v6.super_class = YQLRequest;
  v2 = [(YQLRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(YQLRequest *)v2 _createDefaultSession];
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  defaultSession = self->_defaultSession;
  self->_defaultSession = 0;

  v4.receiver = self;
  v4.super_class = YQLRequest;
  [(YQLRequest *)&v4 dealloc];
}

- (void)_createDefaultSession
{
  defaultSessionConfiguration = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  [defaultSessionConfiguration setSharedContainerIdentifier:@"group.com.apple.stocks"];
  v3 = MEMORY[0x277CBABB8];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v5 = [v3 sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:mainQueue];
  defaultSession = self->_defaultSession;
  self->_defaultSession = v5;
}

- (void)_loadDefaultSessionIfNeeded
{
  if (!self->_defaultSession)
  {
    [(YQLRequest *)self _createDefaultSession];
  }
}

- (id)taskForRequest:(id)request delegate:(id)delegate
{
  requestCopy = request;
  [(YQLRequest *)self _loadDefaultSessionIfNeeded];
  v6 = [(NSURLSession *)self->_defaultSession dataTaskWithRequest:requestCopy];

  return v6;
}

- (void)loadRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  objc_storeStrong(&self->_request, request);
  v6 = [(YQLRequest *)self taskForRequest:self->_request delegate:self];
  dataTask = self->_dataTask;
  self->_dataTask = v6;

  [(NSURLSessionTask *)self->_dataTask resume];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  hTTPBody = [(NSURLRequest *)self->_request HTTPBody];
  v10 = [v8 initWithData:hTTPBody encoding:4];

  v11 = StocksLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSURLSessionTask *)self->_dataTask description];
    v15 = 136315394;
    v16 = "[YQLRequest loadRequest:]";
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_26BAAD000, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v15, 0x16u);
  }

  v13 = StocksLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(YQLRequest *)&self->_request loadRequest:v13];
  }

  v14 = StocksLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(YQLRequest *)v10 loadRequest:v14];
  }
}

- (void)parseData:(id)data
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s to be implemented by subclass", &v4, 0xCu);
  }
}

- (void)didParseData
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s to be implemented by subclass", &v3, 0xCu);
  }
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  v5 = StocksLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(YQLRequest *)self failWithError:errorCopy, v5];
  }

  [(YQLRequest *)self cancel];
}

- (void)failToParseWithData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.stocks" code:4 userInfo:0];
  [(YQLRequest *)self failWithError:v5];

  v6 = StocksLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_26BAAD000, v6, OS_LOG_TYPE_DEFAULT, "#YQLRequest Attempted to parse %@", &v8, 0xCu);
  }
}

- (void)failToParseWithDataSeriesDictionary:(id)dictionary
{
  v13[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"error"];
  if (v5)
  {
    v12 = @"error";
    v6 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.stocks" code:4 userInfo:v7];
  [(YQLRequest *)self failWithError:v8];

  v9 = StocksLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dictionaryCopy;
    _os_log_impl(&dword_26BAAD000, v9, OS_LOG_TYPE_DEFAULT, "#YQLRequest Attempted to parse %@", &v10, 0xCu);
  }
}

- (void)cancel
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = StocksLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSURLSessionTask *)self->_dataTask description];
    v8 = 136315394;
    v9 = "[YQLRequest cancel]";
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_26BAAD000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v8, 0x16u);
  }

  [(NSURLSessionTask *)self->_dataTask cancel];
  dataTask = self->_dataTask;
  self->_dataTask = 0;

  request = self->_request;
  self->_request = 0;

  rawData = self->_rawData;
  self->_rawData = 0;
}

- (void)cancelAndInvalidate
{
  [(NSURLSession *)self->_defaultSession invalidateAndCancel];
  defaultSession = self->_defaultSession;
  self->_defaultSession = 0;
}

+ (void)saveDebugString
{
  v2 = +[NetPreferences sharedPreferences];
  serviceDebuggingPath = [v2 serviceDebuggingPath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager _web_removeFileOnlyAtPath:serviceDebuggingPath];
}

- (id)YQLCountryCode
{
  v2 = +[NetPreferences sharedPreferences];
  stocksCountryCode = [v2 stocksCountryCode];

  return stocksCountryCode;
}

- (id)YQLLanguageCode
{
  v2 = +[NetPreferences sharedPreferences];
  stocksLanguageCode = [v2 stocksLanguageCode];

  return stocksLanguageCode;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  rawData = self->_rawData;
  if (rawData)
  {
    dataCopy = data;
    [(NSMutableData *)rawData appendData:dataCopy];
    v6 = dataCopy;
  }

  else
  {
    v8 = MEMORY[0x277CBEB28];
    dataCopy2 = data;
    v10 = [[v8 alloc] initWithData:dataCopy2];

    v6 = self->_rawData;
    self->_rawData = v10;
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v9 = StocksLogForCategory(0);
  v10 = v9;
  if (errorCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [YQLRequest URLSession:errorCopy task:taskCopy didCompleteWithError:v10];
    }

    [(YQLRequest *)self failWithError:errorCopy];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [taskCopy description];
      v17 = 136315394;
      v18 = "[YQLRequest URLSession:task:didCompleteWithError:]";
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_26BAAD000, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v17, 0x16u);
    }

    rawData = self->_rawData;
    dataTask = self->_dataTask;
    self->_dataTask = 0;
    v14 = rawData;

    request = self->_request;
    self->_request = 0;

    v16 = self->_rawData;
    self->_rawData = 0;

    [(YQLRequest *)self parseData:v14];
  }

  [(YQLRequest *)self cancelAndInvalidate];
}

- (void)loadRequest:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 allHTTPHeaderFields];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_DEBUG, "#YQLRequest headers\n%@", &v4, 0xCu);
}

- (void)loadRequest:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_DEBUG, "#YQLRequest body\n%@", &v2, 0xCu);
}

- (void)failWithError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 localizedDescription];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_26BAAD000, a3, OS_LOG_TYPE_ERROR, "#%@ failWithError %@", &v8, 0x16u);
}

- (void)URLSession:(void *)a1 task:(void *)a2 didCompleteWithError:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 code];
  v6 = [a2 description];
  v7 = 136315650;
  v8 = "[YQLRequest URLSession:task:didCompleteWithError:]";
  v9 = 1024;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&dword_26BAAD000, a3, OS_LOG_TYPE_ERROR, "%s %{errno}d %{public}@", &v7, 0x1Cu);
}

@end