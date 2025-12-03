@interface _ICQMegaBackupNetworkRequest
- (NSDictionary)requestHeaders;
- (_ICQMegaBackupNetworkRequest)initWithRequestURL:(id)l URLSession:(id)session queue:(id)queue;
- (id)_createURLRequestWithError:(id *)error;
- (id)_dictionaryFromData:(id)data response:(id)response error:(id *)error;
- (id)_errorForURLRequestError:(id)error;
- (id)errorForUnsuccessfulResponse:(id)response body:(id)body;
- (void)_completeWithError:(id)error;
- (void)_performURLRequest:(id)request;
- (void)handleURLResponse:(id)response data:(id)data error:(id)error;
- (void)invalidate;
- (void)resumeWithCompletionHandler:(id)handler;
@end

@implementation _ICQMegaBackupNetworkRequest

- (_ICQMegaBackupNetworkRequest)initWithRequestURL:(id)l URLSession:(id)session queue:(id)queue
{
  lCopy = l;
  sessionCopy = session;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = _ICQMegaBackupNetworkRequest;
  v11 = [(_ICQMegaBackupNetworkRequest *)&v15 init];
  if (v11)
  {
    v12 = [lCopy copy];
    requestURL = v11->_requestURL;
    v11->_requestURL = v12;

    objc_storeStrong(&v11->_queue, queue);
    objc_storeStrong(&v11->_URLSession, session);
  }

  return v11;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSURLSessionTask *)self->_URLSessionTask cancel];
  URLSessionTask = self->_URLSessionTask;
  self->_URLSessionTask = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)resumeWithCompletionHandler:(id)handler
{
  queue = self->_queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  v6 = [handlerCopy copy];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  v10 = 0;
  v8 = [(_ICQMegaBackupNetworkRequest *)self _createURLRequestWithError:&v10];
  v9 = v10;
  if (v8)
  {
    [(_ICQMegaBackupNetworkRequest *)self _performURLRequest:v8];
  }

  else
  {
    [(_ICQMegaBackupNetworkRequest *)self _completeWithError:v9];
  }
}

- (void)handleURLResponse:(id)response data:(id)data error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  [(NSURLSessionTask *)self->_URLSessionTask cancel];
  URLSessionTask = self->_URLSessionTask;
  self->_URLSessionTask = 0;

  v12 = responseCopy;
  v13 = [v12 URL];
  absoluteString = [v13 absoluteString];

  statusCode = [v12 statusCode];
  if (v12)
  {
    v16 = statusCode;
    if (dataCopy)
    {
      v27 = 0;
      v17 = [(_ICQMegaBackupNetworkRequest *)self _dictionaryFromData:dataCopy response:v12 error:&v27];
      v18 = v27;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v20 = _ICQGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [dataCopy length];
      *buf = 138413058;
      v29 = absoluteString;
      v30 = 2050;
      v31 = v16;
      v32 = 2050;
      v33 = v21;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "Received response %@ Status Code: %{public}lu (%{public}lu bytes): %@", buf, 0x2Au);
    }

    v22 = _ICQGetLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      allHeaderFields = [v12 allHeaderFields];
      *buf = 138412546;
      v29 = absoluteString;
      v30 = 2114;
      v31 = allHeaderFields;
      _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, "Response %@ headers: %{public}@", buf, 0x16u);
    }

    if (v16 != 200 && !v18)
    {
      if (v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = MEMORY[0x277CBEC10];
      }

      v18 = [(_ICQMegaBackupNetworkRequest *)self errorForUnsuccessfulResponse:v12 body:v24];
    }

    if (v17 && !v18)
    {
      v25 = [(_ICQMegaBackupNetworkRequest *)self handleResponse:v12 body:v17];
LABEL_24:
      v18 = v25;
      goto LABEL_25;
    }

    if (!v18)
    {
LABEL_23:
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_ICQMegaBackupErrorDomain" code:0 userInfo:0];
      goto LABEL_24;
    }
  }

  else
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = errorCopy;
      _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "Received error for request: %{public}@", buf, 0xCu);
    }

    v18 = [(_ICQMegaBackupNetworkRequest *)self _errorForURLRequestError:errorCopy];
    v17 = 0;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  [(_ICQMegaBackupNetworkRequest *)self _completeWithError:v18];

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_dictionaryFromData:(id)data response:(id)response error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  responseCopy = response;
  if (![dataCopy length])
  {
    v12 = MEMORY[0x277CBEC10];
    goto LABEL_30;
  }

  mIMEType = [responseCopy MIMEType];
  v26 = 0;
  v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v26];
  v11 = v26;
  if (!v10)
  {
    if ([mIMEType isEqualToString:@"application/json"])
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Malormed JSON", buf, 2u);
      }

      if (error)
      {
        v14 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA7E8];
        v32[0] = v11;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        *error = [v14 errorWithDomain:@"_ICQMegaBackupErrorDomain" code:2 userInfo:v15];
      }

      goto LABEL_27;
    }

    if (![mIMEType isEqualToString:@"text/plain"])
    {
      goto LABEL_21;
    }

    if ([dataCopy length] > 0x3FF)
    {
      v20 = _ICQGetLogSystem();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

LABEL_21:
        if ([responseCopy statusCode] != 200)
        {
          v12 = MEMORY[0x277CBEC10];
          goto LABEL_29;
        }

        v16 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
LABEL_25:

          if (error)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:@"_ICQMegaBackupErrorDomain" code:2 userInfo:0];
            *error = v12 = 0;
            goto LABEL_29;
          }

LABEL_27:
          v12 = 0;
          goto LABEL_29;
        }

        *buf = 138543362;
        v28 = mIMEType;
        v17 = "Unexpected response format with Content-Type %{public}@";
        v18 = v16;
        v19 = 12;
LABEL_24:
        _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        goto LABEL_25;
      }

      v21 = [responseCopy URL];
      v23 = [dataCopy length];
      *buf = 138412546;
      v28 = v21;
      v29 = 2050;
      v30 = v23;
      _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "Received large text response from %@ (%{public}lu bytes)", buf, 0x16u);
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
      v21 = _ICQGetLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [responseCopy URL];
        *buf = 138412546;
        v28 = v22;
        v29 = 2114;
        v30 = v20;
        _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "Received text response from %@: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v17 = "Non-dict JSON";
    v18 = v16;
    v19 = 2;
    goto LABEL_24;
  }

  v12 = v10;
LABEL_29:

LABEL_30:
  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)errorForUnsuccessfulResponse:(id)response body:(id)body
{
  v12 = *MEMORY[0x277D85DE8];
  statusCode = [response statusCode];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134349056;
    v11 = statusCode;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Received status code response: %{public}ld", &v10, 0xCu);
  }

  if (statusCode == 429)
  {
    v6 = 6;
  }

  else
  {
    v6 = 3;
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_ICQMegaBackupErrorDomain" code:v6 userInfo:0];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_createURLRequestWithError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  bodyJSON = [(_ICQMegaBackupNetworkRequest *)self bodyJSON];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:bodyJSON])
  {
    v17 = 0;
    v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:bodyJSON options:0 error:&v17];
    v8 = v17;

    objc_autoreleasePoolPop(v5);
    if (v7)
    {
      v9 = objc_alloc(MEMORY[0x277CCAB70]);
      requestURL = [(_ICQMegaBackupNetworkRequest *)self requestURL];
      v11 = [v9 initWithURL:requestURL];

      requestHeaders = [(_ICQMegaBackupNetworkRequest *)self requestHeaders];
      [v11 setAllHTTPHeaderFields:requestHeaders];

      [(_ICQMegaBackupNetworkRequest *)self addAdditionalRequestHeaders:v11];
      [v11 setHTTPBody:v7];
      [v11 setHTTPMethod:@"POST"];
      goto LABEL_13;
    }
  }

  else
  {

    objc_autoreleasePoolPop(v5);
    v8 = 0;
  }

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Invalid request body", v16, 2u);
  }

  if (!error)
  {
    v11 = 0;
    goto LABEL_14;
  }

  if (v8)
  {
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v8;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v7 = 0;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:@"_ICQMegaBackupErrorDomain" code:0 userInfo:v7];
  *error = v11 = 0;
LABEL_13:

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSDictionary)requestHeaders
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"application/json" forKeyedSubscript:@"Content-Type"];
  additionalRequestHeaders = [(_ICQMegaBackupNetworkRequest *)self additionalRequestHeaders];
  [v3 addEntriesFromDictionary:additionalRequestHeaders];

  v5 = [v3 copy];

  return v5;
}

- (id)_errorForURLRequestError:(id)error
{
  v27[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  if (v5)
  {
    code = [errorCopy code];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA068];
    if (code == -1002)
    {
      v24[0] = *MEMORY[0x277CCA7E8];
      v24[1] = v8;
      v25[0] = errorCopy;
      v25[1] = @"Bad URL";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v10 = v7;
      v11 = 1;
    }

    else if (code == -1001)
    {
      v26[0] = *MEMORY[0x277CCA7E8];
      v26[1] = v8;
      v27[0] = errorCopy;
      v27[1] = @"Timed out";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
      v10 = v7;
      v11 = 4;
    }

    else
    {
      v22[0] = *MEMORY[0x277CCA7E8];
      v22[1] = v8;
      v23[0] = errorCopy;
      v23[1] = @"Network failure";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v10 = v7;
      v11 = 5;
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CBEB38]);
    v20 = *MEMORY[0x277CCA068];
    v21 = @"Unknown URL request errro";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v9 = [v12 initWithDictionary:v13];

    if (errorCopy)
    {
      v18 = *MEMORY[0x277CCA7E8];
      v19 = errorCopy;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [v9 addEntriesFromDictionary:v14];
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = 0;
  }

  v15 = [v10 errorWithDomain:@"_ICQMegaBackupErrorDomain" code:v11 userInfo:v9];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_performURLRequest:(id)request
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  URLSession = self->_URLSession;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51___ICQMegaBackupNetworkRequest__performURLRequest___block_invoke;
  v13[3] = &unk_27A651838;
  v13[4] = self;
  v6 = [(NSURLSession *)URLSession dataTaskWithRequest:requestCopy completionHandler:v13];
  URLSessionTask = self->_URLSessionTask;
  self->_URLSessionTask = v6;

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    hTTPBody = [requestCopy HTTPBody];
    v11 = [hTTPBody length];
    *buf = 138412802;
    v15 = requestCopy;
    v16 = 2112;
    v17 = allHTTPHeaderFields;
    v18 = 2050;
    v19 = v11;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Sending request %@ %@ (%{public}lu body bytes)", buf, 0x20u);
  }

  [(NSURLSessionTask *)self->_URLSessionTask resume];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [errorCopy copy];
  error = self->_error;
  self->_error = v4;

  v6 = _Block_copy(self->_completionHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, self, errorCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

@end