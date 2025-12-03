@interface platform_http_get
- (NSString)debugDescription;
- (platform_http_get)initWithSession:(id)session url:(id)url callback:(id)callback;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)start;
@end

@implementation platform_http_get

- (platform_http_get)initWithSession:(id)session url:(id)url callback:(id)callback
{
  sessionCopy = session;
  urlCopy = url;
  callbackCopy = callback;
  v17.receiver = self;
  v17.super_class = platform_http_get;
  v12 = [(platform_http_get *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, session);
    objc_storeStrong(&v13->_url, url);
    v14 = objc_retainBlock(callbackCopy);
    cb = v13->_cb;
    v13->_cb = v14;
  }

  return v13;
}

- (void)start
{
  v6 = [NSMutableURLRequest requestWithURL:self->_url];
  v3 = sub_100006B0C(v6);
  uRLSession = [(IPPSession *)self->_session URLSession];
  v5 = [uRLSession dataTaskWithRequest:v6];

  [v5 setDelegate:self];
  [v5 resume];
}

- (NSString)debugDescription
{
  v6.receiver = self;
  v6.super_class = platform_http_get;
  v3 = [(platform_http_get *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ { session %@, endpoint %@ }", v3, self->_session, self->_url];

  return v4;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];

  if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    protectionSpace2 = [challengeCopy protectionSpace];
    serverTrust = [protectionSpace2 serverTrust];

    if (serverTrust)
    {
      error = 0;
      v13 = [[PKSecTrustWrapper alloc] initWithTrust:serverTrust];
      SecTrustEvaluateWithError([(PKSecTrustWrapper *)v13 trustRef], &error);
      if (error)
      {
        v14 = _PKLogCategory(PKLogCategoryDefault[0]);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v19 = authenticationMethod;
          v20 = 2114;
          v21 = error;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "challenge %{public}@ has error %{public}@ but allowing", buf, 0x16u);
        }

        CFRelease(error);
        error = 0;
      }

      v15 = [NSURLCredential credentialForTrust:[(PKSecTrustWrapper *)v13 trustRef]];
      handlerCopy[2](handlerCopy, 0, v15);
    }

    else
    {
      handlerCopy[2](handlerCopy, 3, 0);
    }
  }

  else
  {
    v16 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = authenticationMethod;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "challenge %{public}@ not handled", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = responseCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v10;
  if (v10 && [v10 statusCode] == 200)
  {
    v12 = 1;
  }

  else
  {
    v13 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "not using response", v14, 2u);
    }

    v12 = 0;
  }

  handlerCopy[2](handlerCopy, v12);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v6 = [(NSMutableData *)self->_data length];
  if ([dataCopy length] + v6 <= 0x100000)
  {
    data = self->_data;
    if (data)
    {
      [(NSMutableData *)data appendData:dataCopy];
    }

    else
    {
      v8 = [dataCopy mutableCopy];
      v9 = self->_data;
      self->_data = v8;
    }
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v6 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableData *)self->_data length];
    v13[0] = 67109120;
    v13[1] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetch completed with %d bytes", v13, 8u);
  }

  cb = self->_cb;
  p_cb = &self->_cb;
  v10 = p_cb[1];
  cb[2]();
  v11 = *p_cb;
  *p_cb = 0;

  v12 = p_cb[1];
  p_cb[1] = 0;
}

@end