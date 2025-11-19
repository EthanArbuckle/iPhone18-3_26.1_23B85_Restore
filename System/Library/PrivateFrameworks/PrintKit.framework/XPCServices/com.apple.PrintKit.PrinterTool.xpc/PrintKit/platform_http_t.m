@interface platform_http_t
- (id)createTransactionResult:(id)a3 response:(id)a4 data:(id)a5;
- (id)finishStreamedIPPRequest;
- (id)httpResponseForError:(id)a3;
- (id)makeTask:(id)a3 forRequest:(const Real_IPP_Message *)a4;
- (id)sendSingleIPPRequest:(const Real_IPP_Message *)a3;
- (id)startStreamedIPPRequest:(const Real_IPP_Message *)a3;
- (int64_t)writeIPPDocumentPayload:(const char *)a3 length:(unint64_t)a4;
- (platform_http_t)initWithURL:(id)a3 session:(id)a4;
- (void)_streamedTaskCompleted:(id)a3 response:(id)a4 data:(id)a5;
- (void)_teardownTask;
- (void)sendSingleIPPRequest:(const Real_IPP_Message *)a3 completionHandler:(id)a4;
@end

@implementation platform_http_t

- (platform_http_t)initWithURL:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = platform_http_t;
  v9 = [(platform_http_t *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_session, a4);
  }

  return v10;
}

- (id)makeTask:(id)a3 forRequest:(const Real_IPP_Message *)a4
{
  v6 = a3;
  v7 = [[IPPSessionTransaction alloc] initWithURL:self->_url ippRequest:a4->var1 session:self->_session];
  v8 = [NSString stringWithFormat:@"%@(%@)", self->_logLeader, v6];
  [(IPPSessionTransaction *)v7 prependLogLeader:v8];

  add = atomic_fetch_add(dword_1000C4B58, 1u);
  self->_seq = add;
  v10 = [NSString stringWithFormat:@"<platform_http(%p) seq %d, %@>", self, add, v6];
  logLeader = self->_logLeader;
  self->_logLeader = v10;

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
  v12 = [(IPPSession *)self->_session controlLogging];

  if (v12)
  {
    v13 = [(IPPSession *)self->_session controlLogging];
    [v13 preserveRequest:a4->var1 forSequence:self->_seq];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v7;
}

- (void)sendSingleIPPRequest:(const Real_IPP_Message *)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(platform_http_t *)self makeTask:@"single" forRequest:a3];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100009388;
  v12 = &unk_100095560;
  v13 = self;
  v8 = v6;
  v14 = v8;
  [v7 setTransactionCompletedCallback:&v9];
  [(platform_http_t *)self debugLogIPP:"SEND_IPP" ipp:a3->var1, v9, v10, v11, v12, v13];
  [v7 start];
}

- (id)sendSingleIPPRequest:(const Real_IPP_Message *)a3
{
  v4 = self;
  if (object_isClass(v4))
  {
    [NSString stringWithUTF8String:"[platform_http_t sendSingleIPPRequest:]"];
  }

  else
  {
    [NSString stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v4, "[platform_http_t sendSingleIPPRequest:]"];
  }
  v5 = ;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009714;
  v8[3] = &unk_100095588;
  v8[4] = v4;
  v8[5] = a3;
  v6 = sub_1000095D0(v5, v8, 30.0);

  return v6;
}

- (id)httpResponseForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:NSURLErrorDomain];

  if (!v6)
  {
    v8 = 1;
    goto LABEL_9;
  }

  v7 = [v4 code];
  v8 = 1;
  if (v7 <= -1013)
  {
    if ((v7 + 1206) >= 7)
    {
      if (v7 == -1013)
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

  if (v7 > -1002)
  {
    if (v7 == -1001)
    {
      goto LABEL_8;
    }

    if (v7 == -999)
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
    if ((v7 + 1006) < 4)
    {
LABEL_8:
      v8 = 5;
      goto LABEL_9;
    }

    if (v7 == -1012)
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
    v13 = v4;
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

- (id)createTransactionResult:(id)a3 response:(id)a4 data:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v22 = [(platform_http_t *)self httpResponseForError:v8];
    v23 = [v8 domain];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"transport %@/%d", v23, [v8 code]);

    goto LABEL_22;
  }

  v11 = [v9 statusCode];
  if (v11 != 200)
  {
    v24 = [http_ipp_response_t alloc];
    if ((v11 - 500) >= 0x64)
    {
      v25 = 1;
    }

    else
    {
      v25 = 5;
    }

    if (v11 == 401)
    {
      v25 = 3;
    }

    if (v11 == 100)
    {
      v26 = 2;
    }

    else
    {
      v26 = v25;
    }

    v22 = [(http_ipp_response_t *)v24 initWithTransportStatus:v26];
    v27 = [NSString stringWithFormat:@"http statusCode: %d", v11];
    goto LABEL_21;
  }

  v12 = v10;
  v13 = [v9 valueForHTTPHeaderField:@"Content-Type"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 lowercaseString];
    v16 = [v15 hasPrefix:@"application/ipp"];

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
  v32 = [(IPPSession *)self->_session controlLogging];

  if (v32)
  {
    v33 = [(http_ipp_response_t *)v28 ippResponse];

    if (v33)
    {
      v34 = [(IPPSession *)self->_session controlLogging];
      v35 = [(http_ipp_response_t *)v28 ippResponse];
      [v34 preserveResponse:v35 forSequence:self->_seq];
    }

    else
    {
      if (!v21)
      {
        v21 = @"Unknown";
      }

      v34 = [(IPPSession *)self->_session controlLogging];
      [v34 preserveResponseFailure:v21 forSequence:self->_seq];
    }
  }

  return v28;
}

- (void)_streamedTaskCompleted:(id)a3 response:(id)a4 data:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(platform_http_t *)self createTransactionResult:v13 response:v8 data:v9];
  streamedTaskResponse = self->_streamedTaskResponse;
  self->_streamedTaskResponse = v10;

  streamedTask = self->_streamedTask;
  self->_streamedTask = 0;
}

- (id)startStreamedIPPRequest:(const Real_IPP_Message *)a3
{
  v5 = [(platform_http_t *)self makeTask:@"streamed" forRequest:a3];
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
  [(platform_http_t *)self debugLogIPP:"SEND_IPP" ipp:a3->var1, v17, v18, v19, v20];
  [(IPPSessionTransaction *)self->_streamedTask start];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v13 = [(IPPSessionTransaction *)self->_streamedTask transportError];
  if (v13)
  {
    [(platform_http_t *)self _teardownTask];
    v14 = [(platform_http_t *)self httpResponseForError:v13];
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

- (int64_t)writeIPPDocumentPayload:(const char *)a3 length:(unint64_t)a4
{
  streamedTask = self->_streamedTask;
  if (!streamedTask || (v6 = a4, [(IPPSessionTransaction *)streamedTask writeDocumentDataBlocking:a3 length:?], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [(platform_http_t *)self _teardownTask:a3];
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
    v7 = [(http_ipp_response_t *)self->_streamedTaskResponse ippResponse];
    [(platform_http_t *)self debugLogIPP:"RECV_IPP" ipp:v7];
  }

  [(IPPSessionTransaction *)self->_streamedTask invalidate];
  v8 = self->_streamedTaskResponse;

  return v8;
}

@end