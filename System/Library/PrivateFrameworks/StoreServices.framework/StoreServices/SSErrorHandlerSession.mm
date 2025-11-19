@interface SSErrorHandlerSession
- (SSErrorHandlerSession)init;
- (id)valueForProperty:(id)a3;
- (void)_setControlConnection:(id)a3;
- (void)_setErrorProperties:(id)a3;
- (void)_setSessionID:(int64_t)a3;
- (void)dealloc;
- (void)performDefaultHandling;
- (void)redirectToURL:(id)a3;
- (void)retry;
@end

@implementation SSErrorHandlerSession

- (SSErrorHandlerSession)init
{
  v5.receiver = self;
  v5.super_class = SSErrorHandlerSession;
  v2 = [(SSErrorHandlerSession *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSErrorHandlerSession.%p", v2];
    v2->_dispatchQueue = dispatch_queue_create([v3 UTF8String], 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = SSErrorHandlerSession;
  [(SSErrorHandlerSession *)&v4 dealloc];
}

- (void)performDefaultHandling
{
  v21 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 2;
    }

    if (v6)
    {
      v19 = 136446210;
      v20 = "[SSErrorHandlerSession performDefaultHandling]";
      LODWORD(v17) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v19, v17}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SSErrorHandlerSession_performDefaultHandling__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __47__SSErrorHandlerSession_performDefaultHandling__block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(97);
  xpc_dictionary_set_int64(v2, "1", *(*(a1 + 32) + 32));
  xpc_dictionary_set_int64(v2, "2", 0);
  [*(*(a1 + 32) + 8) sendMessage:v2];

  xpc_release(v2);
}

- (void)redirectToURL:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      v21 = 136446210;
      v22 = "[SSErrorHandlerSession redirectToURL:]";
      LODWORD(v19) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v21, v19}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SSErrorHandlerSession_redirectToURL___block_invoke;
  block[3] = &unk_1E84AC458;
  block[4] = self;
  block[5] = a3;
  dispatch_async(dispatchQueue, block);
}

void __39__SSErrorHandlerSession_redirectToURL___block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(97);
  xpc_dictionary_set_int64(v2, "1", *(*(a1 + 32) + 32));
  xpc_dictionary_set_int64(v2, "2", 1);
  SSXPCDictionarySetCFObject(v2, "3", *(a1 + 40));
  [*(*(a1 + 32) + 8) sendMessage:v2];

  xpc_release(v2);
}

- (void)retry
{
  v21 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 2;
    }

    if (v6)
    {
      v19 = 136446210;
      v20 = "[SSErrorHandlerSession retry]";
      LODWORD(v17) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v19, v17}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SSErrorHandlerSession_retry__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __30__SSErrorHandlerSession_retry__block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(97);
  xpc_dictionary_set_int64(v2, "1", *(*(a1 + 32) + 32));
  xpc_dictionary_set_int64(v2, "2", 2);
  [*(*(a1 + 32) + 8) sendMessage:v2];

  xpc_release(v2);
}

- (id)valueForProperty:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__54;
  v11 = __Block_byref_object_dispose__54;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SSErrorHandlerSession_valueForProperty___block_invoke;
  block[3] = &unk_1E84ADF80;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __42__SSErrorHandlerSession_valueForProperty___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)_setControlConnection:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSErrorHandlerSession__setControlConnection___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

void *__47__SSErrorHandlerSession__setControlConnection___block_invoke(void *result)
{
  v1 = *(result[4] + 8);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(v2[4] + 8) = result;
  }

  return result;
}

- (void)_setErrorProperties:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__SSErrorHandlerSession__setErrorProperties___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __45__SSErrorHandlerSession__setErrorProperties___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 24) = result;
  }

  return result;
}

- (void)_setSessionID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSErrorHandlerSession__setSessionID___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

@end