@interface SSVDownloadQueueRequest
- (SSVDownloadQueueRequest)initWithQueueType:(int64_t)a3;
- (SSVDownloadQueueRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)startWithResponseBlock:(id)a3;
@end

@implementation SSVDownloadQueueRequest

- (SSVDownloadQueueRequest)initWithQueueType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SSVDownloadQueueRequest;
  result = [(SSRequest *)&v5 init];
  if (result)
  {
    result->_queueType = a3;
  }

  return result;
}

- (void)startWithResponseBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "[SSVDownloadQueueRequest startWithResponseBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__SSVDownloadQueueRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  [(SSRequest *)self _startWithMessageID:65 messageBlock:v19];
}

void __50__SSVDownloadQueueRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = xpc_dictionary_get_value(v4, "2");
        v6 = [v13 initWithXPCEncoding:v14];

        v7 = xpc_dictionary_get_BOOL(v4, "1");
        v15 = objc_opt_class();
        v8 = SSXPCDictionaryCopyObjectWithClass(v4, "5", v15);
        if (v7)
        {
LABEL_10:
          v9 = dispatch_get_global_queue(0, 0);
          v16 = MEMORY[0x1E69E9820];
          v17 = 3221225472;
          v18 = __50__SSVDownloadQueueRequest_startWithResponseBlock___block_invoke_2;
          v19 = &unk_1E84AD020;
          v10 = *(a1 + 40);
          v21 = v6;
          v22 = v10;
          v23 = v7;
          v20 = v8;
          v11 = v6;
          v12 = v8;
          dispatch_async(v9, &v16);

          goto LABEL_11;
        }

LABEL_8:
        if (!v6)
        {
          v6 = SSError(@"SSErrorDomain", 100, 0, 0);
        }

        goto LABEL_10;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    v8 = 0;
    goto LABEL_8;
  }

LABEL_11:
  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->_queueType);
  return v3;
}

- (SSVDownloadQueueRequest)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSVDownloadQueueRequest;
    v6 = [(SSRequest *)&v8 init];
    if (v6)
    {
      v6->_queueType = xpc_dictionary_get_int64(v5, "0");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end