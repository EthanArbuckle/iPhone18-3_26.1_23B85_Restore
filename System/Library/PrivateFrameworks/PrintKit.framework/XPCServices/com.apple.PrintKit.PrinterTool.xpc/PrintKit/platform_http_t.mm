@interface platform_http_t
- (id)createTransactionResult:(id)result response:(id)response data:(id)data;
- (id)finishStreamedIPPRequest;
- (id)httpResponseForError:(id)error;
- (id)makeTask:(id)task forRequest:(const Real_IPP_Message *)request;
- (id)sendSingleIPPRequest:(const Real_IPP_Message *)request;
- (id)startStreamedIPPRequest:(const Real_IPP_Message *)request;
- (int64_t)writeIPPDocumentPayload:(const char *)payload length:(unint64_t)length;
- (platform_http_t)initWithURL:(id)l session:(id)session;
- (void)_streamedTaskCompleted:(id)completed response:(id)response data:(id)data;
- (void)_teardownTask;
- (void)sendSingleIPPRequest:(const Real_IPP_Message *)request completionHandler:(id)handler;
@end

@implementation platform_http_t

- (platform_http_t)initWithURL:(id)l session:(id)session
{
  lCopy = l;
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = platform_http_t;
  v9 = [(platform_http_t *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_session, session);
  }

  return v10;
}

- (id)makeTask:(id)task forRequest:(const Real_IPP_Message *)request
{
  taskCopy = task;
  v7 = [[IPPSessionTransaction alloc] initWithURL:self->_url ippRequest:request->var1 session:self->_session];
  taskCopy = [NSString stringWithFormat:@"%@(%@)", self->_logLeader, taskCopy];
  [(IPPSessionTransaction *)v7 prependLogLeader:taskCopy];

  add = atomic_fetch_add(dword_1000C4B58, 1u);
  self->_seq = add;
  taskCopy2 = [NSString stringWithFormat:@"<platform_http(%p) seq %d, %@>", self, add, taskCopy];
  logLeader = self->_logLeader;
  self->_logLeader = taskCopy2;

  [(IPPSessionTransaction *)v7 prependLogLeader:self->_logLeader];
  if (self->_trust_callback)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100008E60;
    v19[3] = &unk_1000954C0;
    v19[4] = self;
    [(IPPSessionTransaction *)v7 setTrust_callback:v19];
  }

  if (self->_pass_callback)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100009018;
    v18[3] = &unk_100095510;
    v18[4] = self;
    [(IPPSessionTransaction *)v7 setPass_callback:v18];
  }

  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009200;
  v15[3] = &unk_100095538;
  objc_copyWeak(&v16, &location);
  [(IPPSessionTransaction *)v7 setBoundInterfaceSet_callback:v15];
  controlLogging = [(IPPSession *)self->_session controlLogging];

  if (controlLogging)
  {
    controlLogging2 = [(IPPSession *)self->_session controlLogging];
    [controlLogging2 preserveRequest:request->var1 forSequence:self->_seq];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v7;
}

- (void)sendSingleIPPRequest:(const Real_IPP_Message *)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(platform_http_t *)self makeTask:@"single" forRequest:request];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100009388;
  v12 = &unk_100095560;
  selfCopy = self;
  v8 = handlerCopy;
  v14 = v8;
  [v7 setTransactionCompletedCallback:&v9];
  [(platform_http_t *)self debugLogIPP:"SEND_IPP" ipp:request->var1, v9, v10, v11, v12, selfCopy];
  [v7 start];
}

- (id)sendSingleIPPRequest:(const Real_IPP_Message *)request
{
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [NSString stringWithUTF8String:"[platform_http_t sendSingleIPPRequest:]"];
  }

  else
  {
    [NSString stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "[platform_http_t sendSingleIPPRequest:]"];
  }
  v5 = ;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009714;
  v8[3] = &unk_100095588;
  v8[4] = selfCopy;
  v8[5] = request;
  v6 = sub_1000095D0(v5, v8, 30.0);

  return v6;
}

- (id)httpResponseForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:NSURLErrorDomain];

  if (!v6)
  {
    v8 = 1;
    goto LABEL_9;
  }

  code = [errorCopy code];
  v8 = 1;
  if (code <= -1013)
  {
    if ((code + 1206) >= 7)
    {
      if (code == -1013)
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 4;
    }

    goto LABEL_9;
  }

  if (code > -1002)
  {
    if (code == -1001)
    {
      goto LABEL_8;
    }

    if (code == -999)
    {
      if (self->_userCanceledAuth)
      {
        v8 = 6;
      }

      else
      {
        v8 = 3;
      }
    }
  }

  else
  {
    if ((code + 1006) < 4)
    {
LABEL_8:
      v8 = 5;
      goto LABEL_9;
    }

    if (code == -1012)
    {
      v8 = 6;
    }
  }

LABEL_9:
  v9 = [[http_ipp_response_t alloc] initWithTransportStatus:v8];
  v10 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = errorCopy;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "transport error: %{public}@ => %{public}@", &v12, 0x16u);
  }

  return v9;
}

- (void)_teardownTask
{
  streamedTask = self->_streamedTask;
  self->_streamedTask = 0;

  [(IPPSessionTransaction *)self->_streamedTask setTransactionCompletedCallback:0];
  streamedTaskFinishedSemaphore = self->_streamedTaskFinishedSemaphore;
  self->_streamedTaskFinishedSemaphore = 0;
}

- (id)createTransactionResult:(id)result response:(id)response data:(id)data
{
  resultCopy = result;
  responseCopy = response;
  dataCopy = data;
  if (!responseCopy)
  {
    v22 = [(platform_http_t *)self httpResponseForError:resultCopy];
    domain = [resultCopy domain];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"transport %@/%d", domain, [resultCopy code]);

    goto LABEL_22;
  }

  statusCode = [responseCopy statusCode];
  if (statusCode != 200)
  {
    v24 = [http_ipp_response_t alloc];
    if ((statusCode - 500) >= 0x64)
    {
      v25 = 1;
    }

    else
    {
      v25 = 5;
    }

    if (statusCode == 401)
    {
      v25 = 3;
    }

    if (statusCode == 100)
    {
      v26 = 2;
    }

    else
    {
      v26 = v25;
    }

    v22 = [(http_ipp_response_t *)v24 initWithTransportStatus:v26];
    v27 = [NSString stringWithFormat:@"http statusCode: %d", statusCode];
    goto LABEL_21;
  }

  v12 = dataCopy;
  v13 = [responseCopy valueForHTTPHeaderField:@"Content-Type"];
  v14 = v13;
  if (v13)
  {
    lowercaseString = [v13 lowercaseString];
    v16 = [lowercaseString hasPrefix:@"application/ipp"];

    if (v16)
    {
LABEL_5:
      v17 = [PKIPP responseFromData:v12];
      if (v17)
      {
        if (self->_boundInterfaceFixer)
        {
          v18 = _PKLogCategory(PKLogCategoryDefault[0]);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rewriting urls in ipp response for bound interface", buf, 2u);
          }

          v19 = [v17 rewriteURLAttributes:self->_boundInterfaceFixer];

          v17 = v19;
        }

        v20 = [[http_ipp_response_t alloc] initWithResponse:v17 transportStatus:0];

        v21 = 0;
        v22 = v20;
LABEL_22:
        v28 = v22;
        if (v22)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v22 = 0;
      v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"couldn't parse ipp data (length %d)", [v12 length]);
LABEL_21:
      v21 = v27;
      goto LABEL_22;
    }
  }

  else if ([v12 length] >= 9 && (v29 = objc_msgSend(v12, "bytes"), v30 = objc_msgSend(v12, "length"), *v29 == 2))
  {
    v31 = v30[v29 - 1];

    if (v31 == 3)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v21 = @"data not ipp";
LABEL_30:
  v28 = [[http_ipp_response_t alloc] initWithTransportStatus:1];
LABEL_31:
  controlLogging = [(IPPSession *)self->_session controlLogging];

  if (controlLogging)
  {
    ippResponse = [(http_ipp_response_t *)v28 ippResponse];

    if (ippResponse)
    {
      controlLogging2 = [(IPPSession *)self->_session controlLogging];
      ippResponse2 = [(http_ipp_response_t *)v28 ippResponse];
      [controlLogging2 preserveResponse:ippResponse2 forSequence:self->_seq];
    }

    else
    {
      if (!v21)
      {
        v21 = @"Unknown";
      }

      controlLogging2 = [(IPPSession *)self->_session controlLogging];
      [controlLogging2 preserveResponseFailure:v21 forSequence:self->_seq];
    }
  }

  return v28;
}

- (void)_streamedTaskCompleted:(id)completed response:(id)response data:(id)data
{
  completedCopy = completed;
  responseCopy = response;
  dataCopy = data;
  v10 = [(platform_http_t *)self createTransactionResult:completedCopy response:responseCopy data:dataCopy];
  streamedTaskResponse = self->_streamedTaskResponse;
  self->_streamedTaskResponse = v10;

  streamedTask = self->_streamedTask;
  self->_streamedTask = 0;
}

- (id)startStreamedIPPRequest:(const Real_IPP_Message *)request
{
  v5 = [(platform_http_t *)self makeTask:@"streamed" forRequest:request];
  streamedTask = self->_streamedTask;
  self->_streamedTask = v5;

  if (self->_documentCompression)
  {
    v7 = [DocumentCompressor documentCompresorForName:?];
    [(IPPSessionTransaction *)self->_streamedTask setDocumentCompressor:v7];
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000A170;
  v24[3] = &unk_100095380;
  v8 = dispatch_semaphore_create(0);
  v25 = v8;
  [(IPPSessionTransaction *)self->_streamedTask setInitialPayloadSentCallback:v24];
  v9 = dispatch_semaphore_create(0);
  streamedTaskFinishedSemaphore = self->_streamedTaskFinishedSemaphore;
  self->_streamedTaskFinishedSemaphore = v9;

  v11 = self->_streamedTaskFinishedSemaphore;
  objc_initWeak(&location, self);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10000A178;
  v20 = &unk_1000955B0;
  objc_copyWeak(&v22, &location);
  v12 = v11;
  v21 = v12;
  [(IPPSessionTransaction *)self->_streamedTask setTransactionCompletedCallback:&v17];
  [(platform_http_t *)self debugLogIPP:"SEND_IPP" ipp:request->var1, v17, v18, v19, v20];
  [(IPPSessionTransaction *)self->_streamedTask start];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  transportError = [(IPPSessionTransaction *)self->_streamedTask transportError];
  if (transportError)
  {
    [(platform_http_t *)self _teardownTask];
    v14 = [(platform_http_t *)self httpResponseForError:transportError];
  }

  else
  {
    v14 = [[http_ipp_response_t alloc] initWithTransportStatus:2];
  }

  v15 = v14;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v15;
}

- (int64_t)writeIPPDocumentPayload:(const char *)payload length:(unint64_t)length
{
  streamedTask = self->_streamedTask;
  if (!streamedTask || (v6 = length, [(IPPSessionTransaction *)streamedTask writeDocumentDataBlocking:payload length:?], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [(platform_http_t *)self _teardownTask:payload];
    return -1;
  }

  return v6;
}

- (id)finishStreamedIPPRequest
{
  streamedTask = self->_streamedTask;
  if (streamedTask && self->_streamedTaskFinishedSemaphore)
  {
    [(IPPSessionTransaction *)streamedTask finishedWriting];
    dispatch_semaphore_wait(self->_streamedTaskFinishedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  streamedTaskResponse = self->_streamedTaskResponse;
  if (!streamedTaskResponse)
  {
    v5 = [[http_ipp_response_t alloc] initWithTransportStatus:1];
    v6 = self->_streamedTaskResponse;
    self->_streamedTaskResponse = v5;

    streamedTaskResponse = self->_streamedTaskResponse;
  }

  if (![(http_ipp_response_t *)streamedTaskResponse transportStatus])
  {
    ippResponse = [(http_ipp_response_t *)self->_streamedTaskResponse ippResponse];
    [(platform_http_t *)self debugLogIPP:"RECV_IPP" ipp:ippResponse];
  }

  [(IPPSessionTransaction *)self->_streamedTask invalidate];
  v8 = self->_streamedTaskResponse;

  return v8;
}

@end