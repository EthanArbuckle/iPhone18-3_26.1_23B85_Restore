@interface IPPSessionTransaction
- (IPPSessionTransaction)initWithURL:(id)a3 ippRequest:(id)a4 session:(id)a5;
- (id)getLogLeader;
- (id)writeDocumentData0:(const char *)a3 length:(unint64_t)a4;
- (id)writeDocumentDataBlocking:(const char *)a3 length:(unint64_t)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)_send0_initialPayload:(id)a3;
- (void)_send1_sendClearToSendBody:(BOOL)a3;
- (void)dealloc;
- (void)finishedWriting;
- (void)finishedWriting0;
- (void)invalidate;
- (void)prependLogLeader:(id)a3;
- (void)start;
- (void)updateInitialPayloadUserName:(id)a3;
@end

@implementation IPPSessionTransaction

- (IPPSessionTransaction)initWithURL:(id)a3 ippRequest:(id)a4 session:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = IPPSessionTransaction;
  v12 = [(IPPSessionTransaction *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, a3);
    v14 = [v10 copy];
    initialRequest = v13->_initialRequest;
    v13->_initialRequest = v14;

    v13->_canResendInitialRequest = 0;
    objc_storeStrong(&v13->_session, a5);
    v16 = [(IPPSession *)v13->_session URLSession];
    if (!v16)
    {
      __assert_rtn("[IPPSessionTransaction initWithURL:ippRequest:session:]", "platform_http.mm", 404, "_session.URLSession");
    }

    v17 = [(IPPSession *)v13->_session workQueue];
    taskQueue = v13->_taskQueue;
    v13->_taskQueue = v17;
  }

  return v13;
}

- (void)dealloc
{
  if (self->_transactionCompletedCallback)
  {
    v3 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "transactionCompletedCallback was never invoked", buf, 2u);
    }
  }

  v4.receiver = self;
  v4.super_class = IPPSessionTransaction;
  [(IPPSessionTransaction *)&v4 dealloc];
}

- (void)prependLogLeader:(id)a3
{
  v6 = a3;
  v4 = [NSString stringWithFormat:@"%@: ", v6];
  logLeader = self->_logLeader;
  self->_logLeader = v4;
}

- (id)getLogLeader
{
  logLeader = self->_logLeader;
  [(IPPSessionTransaction *)self description];
  if (logLeader)
    v3 = {;
    v4 = [NSString stringWithFormat:@"%@: %@", logLeader, v3];
  }

  else
    v4 = {;
  }

  return v4;
}

- (void)start
{
  v3 = self->_url;
  v4 = [(NSURL *)v3 scheme];
  v5 = [v4 lowercaseString];

  if (([v5 isEqualToString:@"https"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"ipps"))
  {
    v6 = @"https";
  }

  else
  {
    v6 = @"http";
  }

  v21 = PKURLByReplacingScheme(v6, v3);

  transportError = self->_transportError;
  self->_transportError = 0;

  v8 = [NSMutableURLRequest alloc];
  v9 = [(IPPSession *)self->_session URLSession];
  v10 = [v9 configuration];
  [v10 timeoutIntervalForRequest];
  v11 = [v8 initWithURL:v21 cachePolicy:1 timeoutInterval:?];

  v12 = sub_100006B0C(v11);
  if (v12)
  {
    v13 = [(IPPSessionTransaction *)self boundInterfaceSet_callback];

    if (v13)
    {
      v14 = [(IPPSessionTransaction *)self boundInterfaceSet_callback];
      (v14)[2](v14, v12);
    }
  }

  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/ipp" forHTTPHeaderField:@"Content-Type"];
  [v11 setValue:@"deflate forHTTPHeaderField:{gzip, identity", @"Accept-Encoding"}];
  v15 = [v21 host];
  if ([v15 hasSuffix:@"."])
  {
    v16 = [v15 stringByReplacingCharactersInRange:objc_msgSend(v15 withString:{"length") - 1, 1, &stru_1000A4BB0}];
    [v11 setValue:v16 forHTTPHeaderField:@"Host"];
  }

  self->_canResendInitialRequest = self->_initialPayloadSentCallback == 0;
  [v11 setValue:@"chunked" forHTTPHeaderField:@"Transfer-Encoding"];
  v17 = [(IPPSession *)self->_session URLSession];
  v18 = [v17 uploadTaskWithStreamedRequest:v11];
  objc_storeWeak(&self->_task, v18);

  WeakRetained = objc_loadWeakRetained(&self->_task);
  [WeakRetained setDelegate:self];

  v20 = objc_loadWeakRetained(&self->_task);
  [v20 resume];
}

- (id)writeDocumentData0:(const char *)a3 length:(unint64_t)a4
{
  dispatch_assert_queue_V2(self->_taskQueue);
  outputStream = self->_outputStream;
  if (self->_documentCompressor)
  {
    v8 = outputStream;
    documentCompressor = self->_documentCompressor;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100006FB4;
    v20[3] = &unk_1000951F8;
    v21 = v8;
    v10 = v8;
    v11 = [(DocumentCompressor *)documentCompressor compressChunk:a3 length:a4 completionHandler:v20];

    if (v11)
    {
LABEL_3:
      self->_ctWritten += a4;
      goto LABEL_8;
    }
  }

  else if (sub_100006E6C(outputStream, a3, a4))
  {
    goto LABEL_3;
  }

  v12 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    ctWritten = self->_ctWritten;
    *buf = 134217984;
    v23 = ctWritten;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "writeDocumentData0: failed after writing %ld uncompressed", buf, 0xCu);
  }

  v14 = [NSError errorWithDomain:NSURLErrorDomain code:-3003 userInfo:0];
  transportError = self->_transportError;
  self->_transportError = v14;

  [(NSOutputStream *)self->_outputStream close];
  v16 = self->_outputStream;
  self->_outputStream = 0;

  inputStream = self->_inputStream;
  self->_inputStream = 0;

LABEL_8:
  v18 = self->_transportError;

  return v18;
}

- (id)writeDocumentDataBlocking:(const char *)a3 length:(unint64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000070B0;
  v12 = sub_1000070C0;
  v13 = 0;
  taskQueue = self->_taskQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000070C8;
  v7[3] = &unk_100095358;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  v7[7] = a4;
  dispatch_sync(taskQueue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)finishedWriting0
{
  outputStream = self->_outputStream;
  if (outputStream && self->_documentCompressor)
  {
    v4 = outputStream;
    documentCompressor = self->_documentCompressor;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000072C4;
    v9[3] = &unk_1000951F8;
    v10 = v4;
    v6 = v4;
    [(DocumentCompressor *)documentCompressor finalChunkCompletionHandler:v9];

    outputStream = self->_outputStream;
  }

  [(NSOutputStream *)outputStream close];
  v7 = self->_outputStream;
  self->_outputStream = 0;

  inputStream = self->_inputStream;
  self->_inputStream = 0;
}

- (void)finishedWriting
{
  taskQueue = self->_taskQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007340;
  block[3] = &unk_100095380;
  block[4] = self;
  dispatch_async(taskQueue, block);
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_task);
  [WeakRetained setDelegate:0];

  [(IPPSessionTransaction *)self setTrust_callback:0];
  [(IPPSessionTransaction *)self setPass_callback:0];
  [(IPPSessionTransaction *)self setBoundInterfaceSet_callback:0];
  [(IPPSessionTransaction *)self setInitialPayloadSentCallback:0];

  [(IPPSessionTransaction *)self setTransactionCompletedCallback:0];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v10 protectionSpace];
  v13 = [v12 authenticationMethod];

  v14 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v36 = v9;
    v37 = 2114;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "task %{public}@ received challenge %{public}@", buf, 0x16u);
  }

  if ([v13 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v15 = objc_retainBlock(self->_trust_callback);
    v16 = [v10 protectionSpace];
    v17 = [v16 serverTrust];

    if (!v17)
    {
      v11[2](v11, 3, 0);
      goto LABEL_13;
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000077EC;
    v31[3] = &unk_1000953D0;
    v32 = [[PKSecTrustWrapper alloc] initWithTrust:v17];
    v34 = v15;
    v33 = v9;
    v18 = v15;
    v19 = v32;
    v20 = objc_retainBlock(v31);
  }

  else
  {
    if ([v13 isEqualToString:NSURLAuthenticationMethodClientCertificate])
    {
      goto LABEL_11;
    }

    pass_callback = self->_pass_callback;
    if (!pass_callback)
    {
      goto LABEL_11;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100007AA8;
    v27[3] = &unk_1000953F8;
    v30 = objc_retainBlock(pass_callback);
    v28 = v10;
    v29 = v9;
    v19 = v30;
    v20 = objc_retainBlock(v27);

    v18 = v30;
  }

  if (v20)
  {
    objc_initWeak(buf, self);
    v22 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007B48;
    block[3] = &unk_100095448;
    v24 = v20;
    v25 = v11;
    v15 = v20;
    objc_copyWeak(&v26, buf);
    dispatch_async(v22, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
LABEL_13:

    goto LABEL_14;
  }

LABEL_11:
  v11[2](v11, 1, 0);
LABEL_14:
}

- (void)updateInitialPayloadUserName:(id)a3
{
  v5 = a3;
  if (v5)
  {
    initialRequest = self->_initialRequest;
    v7 = NSStringFromSelector(a2);
    sub_10000B498(v8, initialRequest, v7);

    sub_100007DBC(v8, v5);
    sub_10000B548(v8);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(self->_taskQueue);
  p_outputStream = &self->_outputStream;
  outputStream = self->_outputStream;
  if (outputStream)
  {
    [(NSOutputStream *)outputStream close];
    v11 = *p_outputStream;
    *p_outputStream = 0;
  }

  if (self->_initialPayloadSentCallback || self->_canResendInitialRequest)
  {
    v12 = [(ipp_t *)self->_initialRequest dataRepresentation];
    v13 = [v12 length];
    if (v13 <= 0x8000)
    {
      v14 = 0x8000;
    }

    else
    {
      v14 = v13;
    }

    v20 = 0;
    v21 = 0;
    [NSInputStream getBoundStreamsWithBufferSize:v14 inputStream:&v21 outputStream:&v20];
    v15 = v21;
    v16 = v21;
    v17 = v20;
    v18 = v20;
    [v18 open];
    if ([v18 streamStatus] == 2)
    {
      objc_storeStrong(&self->_inputStream, v15);
      objc_storeStrong(&self->_outputStream, v17);
      v8[2](v8, v16);
      [(IPPSessionTransaction *)self _send0_initialPayload:v12];
      if (self->_canResendInitialRequest)
      {
        [(IPPSessionTransaction *)self finishedWriting];
      }
    }

    else
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    v19 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "body stream already spent", buf, 2u);
    }

    v8[2](v8, 0);
    [v7 cancel];
  }
}

- (void)_send0_initialPayload:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_taskQueue);
  outputStream = self->_outputStream;
  if (outputStream)
  {
    v6 = outputStream;
    v7 = v4;
    v8 = sub_100006E6C(v6, [v7 bytes], objc_msgSend(v7, "length"));

    if (v8)
    {
      objc_initWeak(location, self);
      v9 = [(IPPSession *)self->_session workQueue];
      tlsRetry = self->_tlsRetry;
      v11 = dispatch_time(0, 3000000000);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000082A0;
      v16[3] = &unk_100095470;
      objc_copyWeak(&v17, location);
      v18 = tlsRetry;
      dispatch_after(v11, v9, v16);
      objc_destroyWeak(&v17);

      objc_destroyWeak(location);
    }

    else
    {
      v13 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Couldn't send initial payload to output stream", location, 2u);
      }

      [(NSOutputStream *)self->_outputStream close];
      inputStream = self->_inputStream;
      self->_inputStream = 0;

      v15 = self->_outputStream;
      self->_outputStream = 0;
    }
  }

  else
  {
    v12 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "no stream to write to", location, 2u);
    }
  }
}

- (void)_send1_sendClearToSendBody:(BOOL)a3
{
  if (self->_tlsRetry != a3)
  {
    v4 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Retry with TLS changed, so not signaling";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if (self->_httpResponse)
  {
    v4 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "We already got a response";
      v6 = &v9;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = objc_retainBlock(self->_initialPayloadSentCallback);
  initialPayloadSentCallback = self->_initialPayloadSentCallback;
  self->_initialPayloadSentCallback = 0;

  if (v8)
  {
    v8[2]();
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a5;
  v10 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
    objc_storeStrong(&self->_httpResponse, a5);
    if ([v11 statusCode] == 426)
    {
      v12 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "redirect to TLS received", &v16, 2u);
      }

      v13 = 0;
      self->_tlsRetry = 1;
      p_super = &self->_httpResponse->super.super;
      self->_httpResponse = 0;
    }

    else if (self->_initialPayloadSentCallback)
    {
      p_super = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "never started additional payload", &v16, 2u);
      }

      v13 = 0;
    }

    else
    {
      p_super = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "response received and we've sent initial payload", &v16, 2u);
      }

      v13 = 1;
    }

    v10[2](v10, v13);
  }

  else
  {
    v15 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "non http response received %{public}@", &v16, 0xCu);
    }

    v10[2](v10, 0);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_initialPayloadSentCallback)
  {
    __assert_rtn("[IPPSessionTransaction URLSession:dataTask:didReceiveData:]", "platform_http.mm", 901, "_initialPayloadSentCallback == nil");
  }

  responseData = self->_responseData;
  if (responseData)
  {
    [(NSMutableData *)responseData appendData:v9];
  }

  else
  {
    v11 = [v9 mutableCopy];
    v12 = self->_responseData;
    self->_responseData = v11;
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_tlsRetry)
  {
    v11 = [(NSURL *)self->_url scheme];
    v12 = [v11 lowercaseString];

    if ([v12 isEqualToString:@"ipp"])
    {
      v13 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Retrying with TLS", v20, 2u);
      }

      v14 = PKURLByReplacingScheme(@"ipps", self->_url);
      url = self->_url;
      self->_url = v14;

      [(IPPSessionTransaction *)self start];
      goto LABEL_11;
    }
  }

  objc_storeStrong(&self->_transportError, a5);
  initialPayloadSentCallback = self->_initialPayloadSentCallback;
  if (initialPayloadSentCallback)
  {
    v12 = objc_retainBlock(initialPayloadSentCallback);
    v17 = self->_initialPayloadSentCallback;
    self->_initialPayloadSentCallback = 0;

    v12[2](v12);
LABEL_11:

    goto LABEL_12;
  }

  transactionCompletedCallback = self->_transactionCompletedCallback;
  if (transactionCompletedCallback)
  {
    v12 = objc_retainBlock(transactionCompletedCallback);
    v19 = self->_transactionCompletedCallback;
    self->_transactionCompletedCallback = 0;

    (v12[2])(v12, v10, self->_httpResponse, self->_responseData);
    goto LABEL_11;
  }

LABEL_12:
}

@end