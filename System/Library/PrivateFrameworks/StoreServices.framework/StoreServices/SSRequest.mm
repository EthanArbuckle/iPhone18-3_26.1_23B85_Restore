@interface SSRequest
- (BOOL)shouldCancelAfterTaskExpiration;
- (BOOL)start;
- (SSRequestDelegate)delegate;
- (id)_initSSRequest;
- (void)__beginBackgroundTask;
- (void)__endBackgroundTask;
- (void)_beginBackgroundTask;
- (void)_cancelBackgroundTaskExpirationTimer;
- (void)_endBackgroundTask;
- (void)_expireBackgroundTask;
- (void)_shutdownRequest;
- (void)_shutdownRequestWithMessageID:(int64_t)d;
- (void)_startWithMessageID:(int64_t)d messageBlock:(id)block;
- (void)cancel;
- (void)dealloc;
- (void)disconnect;
- (void)setShouldCancelAfterTaskExpiration:(BOOL)expiration;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSRequest

- (id)_initSSRequest
{
  v7.receiver = self;
  v7.super_class = SSRequest;
  v2 = [(SSRequest *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.%@.%p", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_callState = 0;
  }

  return v2;
}

- (void)dealloc
{
  taskAssertion = self->_taskAssertion;
  if (taskAssertion)
  {
    [(BKSProcessAssertion *)taskAssertion invalidate];
    v4 = self->_taskAssertion;
    self->_taskAssertion = 0;
  }

  backgroundTaskExpirationTimer = self->_backgroundTaskExpirationTimer;
  if (backgroundTaskExpirationTimer)
  {
    dispatch_source_cancel(backgroundTaskExpirationTimer);
  }

  [(SSXPCConnection *)self->_requestConnection setDisconnectBlock:0];
  [(SSXPCConnection *)self->_responseConnection setMessageBlock:0];
  v6.receiver = self;
  v6.super_class = SSRequest;
  [(SSRequest *)&v6 dealloc];
}

- (void)cancel
{
  v20 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v18 = 136446210;
      v19 = "[SSRequest cancel]";
      LODWORD(v16) = 12;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v18, v16}];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__SSRequest_cancel__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)disconnect
{
  v20 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v18 = 136446210;
      v19 = "[SSRequest disconnect]";
      LODWORD(v16) = 12;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v18, v16}];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SSRequest_disconnect__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __18__SSRequest_start__block_invoke;
  v3[3] = &unk_1E84AD730;
  v3[4] = self;
  [(SSRequest *)self startWithCompletionBlock:v3];
  return 1;
}

void __18__SSRequest_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __18__SSRequest_start__block_invoke_2;
  v5[3] = &unk_1E84AC028;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __18__SSRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 request:*(a1 + 32) didFailWithError:*(a1 + 40)];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 requestDidFinish:*(a1 + 32)];
  }
}

- (void)startWithCompletionBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    v5 = SSError(@"SSErrorDomain", 100, 0, 0);
    (*(block + 2))(blockCopy, v5);
  }
}

- (void)setShouldCancelAfterTaskExpiration:(BOOL)expiration
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SSRequest_setShouldCancelAfterTaskExpiration___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  expirationCopy = expiration;
  dispatch_sync(dispatchQueue, v4);
}

- (BOOL)shouldCancelAfterTaskExpiration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SSRequest_shouldCancelAfterTaskExpiration__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_beginBackgroundTask
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SSRequest__beginBackgroundTask__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)_endBackgroundTask
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SSRequest__endBackgroundTask__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_shutdownRequest
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SSRequest__shutdownRequest__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_startWithMessageID:(int64_t)d messageBlock:(id)block
{
  blockCopy = block;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  copyXPCEncoding = [(SSRequest *)self copyXPCEncoding];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SSRequest__startWithMessageID_messageBlock___block_invoke;
  block[3] = &unk_1E84AD7F8;
  block[4] = self;
  v14 = &v16;
  v9 = blockCopy;
  v13 = v9;
  dCopy = d;
  v10 = copyXPCEncoding;
  v12 = v10;
  dispatch_sync(dispatchQueue, block);
  if (*(v17 + 24) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Request already started"];
  }

  _Block_object_dispose(&v16, 8);
}

void __46__SSRequest__startWithMessageID_messageBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[5] || v2[6])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    [v2 __beginBackgroundTask];
    v3 = [objc_opt_class() _allowMultipleCallbacks];
    objc_initWeak(&location, *(a1 + 32));
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(*(a1 + 32) + 40);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__SSRequest__startWithMessageID_messageBlock___block_invoke_2;
    v18[3] = &unk_1E84AD780;
    objc_copyWeak(&v20, &location);
    v21 = v3;
    v19 = *(a1 + 48);
    [v7 setDisconnectBlock:v18];
    v8 = objc_alloc_init(SSXPCConnection);
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;

    v11 = *(*(a1 + 32) + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__SSRequest__startWithMessageID_messageBlock___block_invoke_4;
    v14[3] = &unk_1E84AD7D0;
    objc_copyWeak(&v16, &location);
    v17 = v3;
    v15 = *(a1 + 48);
    [v11 setMessageBlock:v14];
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "0", *(a1 + 64));
    xpc_dictionary_set_value(v12, "1", *(a1 + 40));
    v13 = [*(*(a1 + 32) + 48) createXPCEndpoint];
    xpc_dictionary_set_value(v12, "2", v13);
    [*(*(a1 + 32) + 40) sendMessage:v12];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __46__SSRequest__startWithMessageID_messageBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SSRequest__startWithMessageID_messageBlock___block_invoke_3;
    block[3] = &unk_1E84AD758;
    v6 = WeakRetained;
    v8 = *(a1 + 48);
    v7 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

void __46__SSRequest__startWithMessageID_messageBlock___block_invoke_3(uint64_t a1)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(a1 + 32) + 64), &v2, 1uLL, memory_order_relaxed, memory_order_relaxed);
  if (!v2 || *(a1 + 48) == 1)
  {
    v3 = [*(*(a1 + 32) + 48) messageBlock];
    if (v3)
    {
      v4 = *(a1 + 40);

      if (v4)
      {
        v5 = *(*(a1 + 40) + 16);

        v5();
      }
    }
  }
}

void __46__SSRequest__startWithMessageID_messageBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__SSRequest__startWithMessageID_messageBlock___block_invoke_5;
    v7[3] = &unk_1E84AD7A8;
    v8 = WeakRetained;
    v11 = *(a1 + 48);
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

uint64_t __46__SSRequest__startWithMessageID_messageBlock___block_invoke_5(uint64_t result)
{
  v1 = result;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(result + 32) + 64), &v2, 1uLL, memory_order_relaxed, memory_order_relaxed);
  if (!v2 || *(result + 56) == 1)
  {
    if (*(result + 48))
    {
      result = *(result + 40);
      if (result)
      {
        result = MEMORY[0x1DA6E0380]();
        if (result == MEMORY[0x1E69E9E80])
        {
          v3 = *(*(v1 + 48) + 16);

          return v3();
        }
      }
    }
  }

  return result;
}

- (void)__beginBackgroundTask
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_taskAssertion)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.itunesstored.%@.%p", objc_opt_class(), self];
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = shouldLog | 2;
    }

    else
    {
      v6 = shouldLog;
    }

    oSLogObject = [v4 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v29 = 138412290;
      v30 = objc_opt_class();
      v8 = v30;
      LODWORD(v26) = 12;
      v25 = &v29;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_13:

        v16 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:getpid() flags:5 reason:4 name:v3 withHandler:0];
        taskAssertion = self->_taskAssertion;
        self->_taskAssertion = v16;

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v29, v26}];
      free(v9);
      SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
    }

    goto LABEL_13;
  }

LABEL_14:
  [(SSRequest *)self _cancelBackgroundTaskExpirationTimer];
  v18 = [SSWeakReference weakReferenceWithObject:self];
  v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  backgroundTaskExpirationTimer = self->_backgroundTaskExpirationTimer;
  self->_backgroundTaskExpirationTimer = v19;

  v21 = self->_backgroundTaskExpirationTimer;
  v22 = dispatch_time(0, 25000000000);
  dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0);
  v23 = self->_backgroundTaskExpirationTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __34__SSRequest___beginBackgroundTask__block_invoke;
  handler[3] = &unk_1E84AC050;
  v28 = v18;
  v24 = v18;
  dispatch_source_set_event_handler(v23, handler);
  dispatch_resume(self->_backgroundTaskExpirationTimer);
}

void __34__SSRequest___beginBackgroundTask__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) object];
  v2 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v15) = 138412290;
  *(&v15 + 4) = objc_opt_class();
  v6 = *(&v15 + 4);
  LODWORD(v14) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v15, v14, v15}];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
LABEL_11:
  }

  [v1 _endBackgroundTask];
}

- (void)_cancelBackgroundTaskExpirationTimer
{
  backgroundTaskExpirationTimer = self->_backgroundTaskExpirationTimer;
  if (backgroundTaskExpirationTimer)
  {
    dispatch_source_cancel(backgroundTaskExpirationTimer);
    v4 = self->_backgroundTaskExpirationTimer;
    self->_backgroundTaskExpirationTimer = 0;
  }
}

- (void)__endBackgroundTask
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_taskAssertion)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      LODWORD(v18) = 138412290;
      *(&v18 + 4) = objc_opt_class();
      v7 = *(&v18 + 4);
      LODWORD(v17) = 12;
      v16 = &v18;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_13:

        [(BKSProcessAssertion *)self->_taskAssertion invalidate];
        taskAssertion = self->_taskAssertion;
        self->_taskAssertion = 0;

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v18, v17, v18}];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
    }

    goto LABEL_13;
  }

LABEL_14:
  [(SSRequest *)self _cancelBackgroundTaskExpirationTimer];
}

- (void)_expireBackgroundTask
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v21 = 138412290;
  v22 = objc_opt_class();
  v7 = v22;
  LODWORD(v18) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v21, v18}];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }

  disconnectBlock = [(SSXPCConnection *)self->_requestConnection disconnectBlock];
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSRequest__expireBackgroundTask__block_invoke;
  block[3] = &unk_1E84AC338;
  block[4] = self;
  v20 = disconnectBlock;
  v17 = disconnectBlock;
  dispatch_async(v16, block);

  [(SSRequest *)self _cancelBackgroundTaskExpirationTimer];
}

void __34__SSRequest__expireBackgroundTask__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSRequest__expireBackgroundTask__block_invoke_2;
  block[3] = &unk_1E84AC050;
  block[4] = v3;
  dispatch_async(v4, block);
}

uint64_t __34__SSRequest__expireBackgroundTask__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[16])
  {
    v2 = 63;
  }

  else
  {
    v2 = 64;
  }

  return [v1 _shutdownRequestWithMessageID:v2];
}

- (void)_shutdownRequestWithMessageID:(int64_t)d
{
  requestConnection = self->_requestConnection;
  if (requestConnection)
  {
    if (d)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v6, "0", d);
      [(SSXPCConnection *)self->_requestConnection sendMessage:v6];

      requestConnection = self->_requestConnection;
    }

    [(SSXPCConnection *)requestConnection setDisconnectBlock:0];
    v7 = self->_requestConnection;
    self->_requestConnection = 0;
  }

  [(SSXPCConnection *)self->_responseConnection setMessageBlock:0];
  responseConnection = self->_responseConnection;
  self->_responseConnection = 0;

  [(SSRequest *)self __endBackgroundTask];
}

- (SSRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end