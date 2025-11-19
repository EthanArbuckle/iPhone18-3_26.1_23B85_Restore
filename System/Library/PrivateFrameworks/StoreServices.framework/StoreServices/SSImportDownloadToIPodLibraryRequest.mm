@interface SSImportDownloadToIPodLibraryRequest
- (SSImportDownloadToIPodLibraryRequest)initWithDownloadMetadata:(id)a3;
- (SSImportDownloadToIPodLibraryRequest)initWithPurchase:(id)a3;
- (SSImportDownloadToIPodLibraryRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)startWithResponseBlock:(id)a3;
@end

@implementation SSImportDownloadToIPodLibraryRequest

- (SSImportDownloadToIPodLibraryRequest)initWithDownloadMetadata:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSImportDownloadToIPodLibraryRequest;
  v6 = [(SSRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downloadMetadata, a3);
  }

  return v7;
}

- (SSImportDownloadToIPodLibraryRequest)initWithPurchase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSImportDownloadToIPodLibraryRequest;
  v6 = [(SSRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchaseResponse, a3);
  }

  return v7;
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
      v22 = "[SSImportDownloadToIPodLibraryRequest startWithResponseBlock:]";
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
  v19[2] = __63__SSImportDownloadToIPodLibraryRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  [(SSRequest *)self _startWithMessageID:66 messageBlock:v19];
}

void __63__SSImportDownloadToIPodLibraryRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
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
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v12 = xpc_dictionary_get_value(v4, "2");
        v6 = [v11 initWithXPCEncoding:v12];

        v7 = xpc_dictionary_get_BOOL(v4, "1");
        if (v7)
        {
LABEL_10:
          v8 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __63__SSImportDownloadToIPodLibraryRequest_startWithResponseBlock___block_invoke_2;
          block[3] = &unk_1E84B08A8;
          v9 = *(a1 + 40);
          v16 = v7;
          v14 = v6;
          v15 = v9;
          v10 = v6;
          dispatch_async(v8, block);

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
    goto LABEL_8;
  }

LABEL_11:
  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = [(SSPurchaseResponse *)self->_purchaseResponse copyXPCEncoding];
  if (v4)
  {
    xpc_dictionary_set_value(v3, "0", v4);
  }

  v5 = [(SSDownloadMetadata *)self->_downloadMetadata copyXPCEncoding];
  if (v5)
  {
    xpc_dictionary_set_value(v3, "1", v5);
  }

  return v3;
}

- (SSImportDownloadToIPodLibraryRequest)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v14.receiver = self;
    v14.super_class = SSImportDownloadToIPodLibraryRequest;
    v6 = [(SSRequest *)&v14 init];
    if (v6)
    {
      v8 = xpc_dictionary_get_value(v5, "0");
      if (v8)
      {
        v9 = [[SSPurchaseResponse alloc] initWithXPCEncoding:v8];
        purchaseResponse = v6->_purchaseResponse;
        v6->_purchaseResponse = v9;
      }

      v11 = xpc_dictionary_get_value(v5, "1");
      if (v11)
      {
        v12 = [[SSDownloadMetadata alloc] initWithXPCEncoding:v11];
        downloadMetadata = v6->_downloadMetadata;
        v6->_downloadMetadata = v12;
      }
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end