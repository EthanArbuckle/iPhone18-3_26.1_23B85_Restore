@interface SSVShowDialogRequest
- (SSVShowDialogRequest)initWithEncodedDialog:(id)a3;
- (SSVShowDialogRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)startWithDialogResponseBlock:(id)a3;
@end

@implementation SSVShowDialogRequest

- (SSVShowDialogRequest)initWithEncodedDialog:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSVShowDialogRequest;
  v6 = [(SSRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialog, a3);
  }

  return v7;
}

- (void)startWithDialogResponseBlock:(id)a3
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
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v22 = "[SSVShowDialogRequest startWithDialogResponseBlock:]";
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
  v19[2] = __53__SSVShowDialogRequest_startWithDialogResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  [(SSRequest *)self _startWithMessageID:134 messageBlock:v19];
}

void __53__SSVShowDialogRequest_startWithDialogResponseBlock___block_invoke(uint64_t a1, void *a2)
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

      v8 = [SSVDialogResponse alloc];
      v9 = xpc_dictionary_get_value(v4, "1");
      v10 = [(SSVDialogResponse *)v8 initWithXPCEncoding:v9];
    }

    if (!(v10 | v7))
    {
      v7 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__SSVShowDialogRequest_startWithDialogResponseBlock___block_invoke_2;
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

- (SSVShowDialogRequest)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SSVShowDialogRequest;
  v5 = [(SSRequest *)&v9 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(v4, "0");
    dialog = v5->_dialog;
    v5->_dialog = v6;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v3, "0", self->_dialog);
  return v3;
}

@end