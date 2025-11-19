@interface SSVRepairApplicationRequest
- (SSVRepairApplicationRequest)initWithBundleID:(id)a3 accountIdentifier:(id)a4 claimStyle:(int64_t)a5;
- (SSVRepairApplicationRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)startWithResponseBlock:(id)a3;
@end

@implementation SSVRepairApplicationRequest

- (SSVRepairApplicationRequest)initWithBundleID:(id)a3 accountIdentifier:(id)a4 claimStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = SSVRepairApplicationRequest;
  v10 = [(SSRequest *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_claimStyle = a5;
    v12 = [v8 copy];
    bundleID = v11->_bundleID;
    v11->_bundleID = v12;

    v14 = [v9 copy];
    accountDSID = v11->_accountDSID;
    v11->_accountDSID = v14;
  }

  return v11;
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
      v22 = "[SSVRepairApplicationRequest startWithResponseBlock:]";
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
  v19[2] = __54__SSVRepairApplicationRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  [(SSRequest *)self _startWithMessageID:148 messageBlock:v19];
}

void __54__SSVRepairApplicationRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
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
        objc_opt_class();
        v7 = SSXPCDictionaryCopyCFObjectWithClass(v4, "3");
        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = xpc_dictionary_get_value(v4, "2");
        v6 = [v13 initWithXPCEncoding:v14];

        v8 = xpc_dictionary_get_BOOL(v4, "1");
        if (v8)
        {
LABEL_10:
          v9 = dispatch_get_global_queue(0, 0);
          v15 = MEMORY[0x1E69E9820];
          v16 = 3221225472;
          v17 = __54__SSVRepairApplicationRequest_startWithResponseBlock___block_invoke_2;
          v18 = &unk_1E84AD020;
          v10 = *(a1 + 40);
          v20 = v6;
          v21 = v10;
          v22 = v8;
          v19 = v7;
          v11 = v6;
          v12 = v7;
          dispatch_async(v9, &v15);

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
  SSXPCDictionarySetObject(v3, "0", self->_bundleID);
  SSXPCDictionarySetObject(v3, "1", self->_accountDSID);
  xpc_dictionary_set_int64(v3, "2", self->_claimStyle);
  return v3;
}

- (SSVRepairApplicationRequest)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v14.receiver = self;
    v14.super_class = SSVRepairApplicationRequest;
    v6 = [(SSRequest *)&v14 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      bundleID = v6->_bundleID;
      v6->_bundleID = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      accountDSID = v6->_accountDSID;
      v6->_accountDSID = v12;

      v6->_claimStyle = xpc_dictionary_get_int64(v5, "2");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end