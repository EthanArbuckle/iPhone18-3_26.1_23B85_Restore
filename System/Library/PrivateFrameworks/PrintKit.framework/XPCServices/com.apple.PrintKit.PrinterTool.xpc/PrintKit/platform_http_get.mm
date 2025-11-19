@interface platform_http_get
- (NSString)debugDescription;
- (platform_http_get)initWithSession:(id)a3 url:(id)a4 callback:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)start;
@end

@implementation platform_http_get

- (platform_http_get)initWithSession:(id)a3 url:(id)a4 callback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = platform_http_get;
  v12 = [(platform_http_get *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, a3);
    objc_storeStrong(&v13->_url, a4);
    v14 = objc_retainBlock(v11);
    cb = v13->_cb;
    v13->_cb = v14;
  }

  return v13;
}

- (void)start
{
  v6 = [NSMutableURLRequest requestWithURL:self->_url];
  v3 = sub_100006B0C(v6);
  v4 = [(IPPSession *)self->_session URLSession];
  v5 = [v4 dataTaskWithRequest:v6];

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

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v7 = a5;
  v8 = a6;
  v9 = [v7 protectionSpace];
  v10 = [v9 authenticationMethod];

  if ([v10 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v11 = [v7 protectionSpace];
    v12 = [v11 serverTrust];

    if (v12)
    {
      error = 0;
      v13 = [[PKSecTrustWrapper alloc] initWithTrust:v12];
      SecTrustEvaluateWithError([(PKSecTrustWrapper *)v13 trustRef], &error);
      if (error)
      {
        v14 = _PKLogCategory(PKLogCategoryDefault[0]);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v19 = v10;
          v20 = 2114;
          v21 = error;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "challenge %{public}@ has error %{public}@ but allowing", buf, 0x16u);
        }

        CFRelease(error);
        error = 0;
      }

      v15 = [NSURLCredential credentialForTrust:[(PKSecTrustWrapper *)v13 trustRef]];
      v8[2](v8, 0, v15);
    }

    else
    {
      v8[2](v8, 3, 0);
    }
  }

  else
  {
    v16 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "challenge %{public}@ not handled", buf, 0xCu);
    }

    v8[2](v8, 1, 0);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v7 = a5;
  v8 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
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

  v8[2](v8, v12);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v10 = a5;
  v6 = [(NSMutableData *)self->_data length];
  if ([v10 length] + v6 <= 0x100000)
  {
    data = self->_data;
    if (data)
    {
      [(NSMutableData *)data appendData:v10];
    }

    else
    {
      v8 = [v10 mutableCopy];
      v9 = self->_data;
      self->_data = v8;
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
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