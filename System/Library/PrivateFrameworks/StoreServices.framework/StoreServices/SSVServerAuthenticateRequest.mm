@interface SSVServerAuthenticateRequest
- (SSVServerAuthenticateRequest)initWithEncodedDialog:(id)dialog;
- (SSVServerAuthenticateRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithAuthenticateResponse:(id)response;
@end

@implementation SSVServerAuthenticateRequest

- (SSVServerAuthenticateRequest)initWithEncodedDialog:(id)dialog
{
  dialogCopy = dialog;
  v9.receiver = self;
  v9.super_class = SSVServerAuthenticateRequest;
  v6 = [(SSRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialog, dialog);
  }

  return v7;
}

- (void)startWithAuthenticateResponse:(id)response
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
      v22 = "[SSVServerAuthenticateRequest startWithAuthenticateResponse:]";
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
  v19[2] = __62__SSVServerAuthenticateRequest_startWithAuthenticateResponse___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = responseCopy;
  v17 = responseCopy;
  [(SSRequest *)self _startWithMessageID:132 messageBlock:v19];
}

void __62__SSVServerAuthenticateRequest_startWithAuthenticateResponse___block_invoke(uint64_t a1, void *a2)
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

      v8 = [SSVServerAuthenticateResponse alloc];
      v9 = xpc_dictionary_get_value(v4, "1");
      v10 = [(SSVServerAuthenticateResponse *)v8 initWithXPCEncoding:v9];
    }

    if (!(v10 | v7))
    {
      v7 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SSVServerAuthenticateRequest_startWithAuthenticateResponse___block_invoke_2;
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

- (SSVServerAuthenticateRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v13.receiver = self;
  v13.super_class = SSVServerAuthenticateRequest;
  v5 = [(SSRequest *)&v13 init];
  if (v5)
  {
    v6 = [SSAuthenticationContext alloc];
    v7 = xpc_dictionary_get_value(encodingCopy, "0");
    v8 = [(SSAuthenticationContext *)v6 initWithXPCEncoding:v7];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v8;

    v10 = xpc_dictionary_get_value(encodingCopy, "1");
    dialog = v5->_dialog;
    v5->_dialog = v10;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_authenticationContext);
  xpc_dictionary_set_value(v3, "1", self->_dialog);
  return v3;
}

@end