@interface SSVPushNotificationRequest
- (BOOL)start;
- (SSVPushNotificationRequest)initWithPushNotificationParameters:(id)parameters;
- (SSVPushNotificationRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVPushNotificationRequest

- (SSVPushNotificationRequest)initWithPushNotificationParameters:(id)parameters
{
  parametersCopy = parameters;
  v9.receiver = self;
  v9.super_class = SSVPushNotificationRequest;
  v5 = [(SSRequest *)&v9 init];
  if (v5)
  {
    v6 = [parametersCopy copy];
    parameters = v5->_parameters;
    v5->_parameters = v6;
  }

  return v5;
}

- (void)startWithResponseBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
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
      v22 = "[SSVPushNotificationRequest startWithResponseBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__SSVPushNotificationRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:127 messageBlock:v19];
}

void __53__SSVPushNotificationRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v7 = SSError(@"SSErrorDomain", 121, 0, 0);
      v10 = 0;
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = xpc_dictionary_get_value(v4, "2");
      v7 = [v5 initWithXPCEncoding:v6];

      v8 = [SSURLConnectionResponse alloc];
      v9 = xpc_dictionary_get_value(v4, "1");
      v10 = [(SSURLConnectionResponse *)v8 initWithXPCEncoding:v9];
    }

    if (!(v10 | v7))
    {
      v7 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__SSVPushNotificationRequest_startWithResponseBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v12 = *(a1 + 40);
    v17 = v7;
    v18 = v12;
    v16 = v10;
    v13 = v7;
    v14 = v10;
    dispatch_async(v11, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__SSVPushNotificationRequest_start__block_invoke;
  v3[3] = &unk_1E84AF0B8;
  v3[4] = self;
  [(SSVPushNotificationRequest *)self startWithResponseBlock:v3];
  return 1;
}

void __35__SSVPushNotificationRequest_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSVPushNotificationRequest_start__block_invoke_2;
  block[3] = &unk_1E84AC078;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __35__SSVPushNotificationRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 requestDidFinish:*(a1 + 32)];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 request:*(a1 + 32) didFailWithError:*(a1 + 48)];
  }
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__SSVPushNotificationRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84AE260;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVPushNotificationRequest *)self startWithResponseBlock:v6];
}

uint64_t __55__SSVPushNotificationRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSVPushNotificationRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v12.receiver = self;
    v12.super_class = SSVPushNotificationRequest;
    v6 = [(SSRequest *)&v12 init];
    if (v6)
    {
      v8 = [SSVPushNotificationParameters alloc];
      v9 = xpc_dictionary_get_value(v5, "50");
      v10 = [(SSVPushNotificationParameters *)v8 initWithXPCEncoding:v9];
      parameters = v6->_parameters;
      v6->_parameters = v10;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "50", self->_parameters);
  return v3;
}

@end