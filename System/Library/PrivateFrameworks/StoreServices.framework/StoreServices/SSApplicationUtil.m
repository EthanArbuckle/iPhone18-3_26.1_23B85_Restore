@interface SSApplicationUtil
- (SSApplicationUtil)init;
- (id)_connection;
- (void)restartApplication:(id)a3;
@end

@implementation SSApplicationUtil

- (SSApplicationUtil)init
{
  v8.receiver = self;
  v8.super_class = SSApplicationUtil;
  v2 = [(SSApplicationUtil *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storeservices.applicationutils", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = v2->_serialQueue;
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, v6);
  }

  return v2;
}

- (void)restartApplication:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
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
      v22 = 136446210;
      v23 = "[SSApplicationUtil restartApplication:]";
      LODWORD(v19) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v22, v19}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
    }

    goto LABEL_15;
  }

LABEL_16:
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSApplicationUtil_restartApplication___block_invoke;
  block[3] = &unk_1E84AC360;
  block[4] = self;
  v21 = v4;
  v18 = v4;
  dispatch_async(serialQueue, block);
}

void __40__SSApplicationUtil_restartApplication___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "0", 165);
  v3 = [*(a1 + 32) _connection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SSApplicationUtil_restartApplication___block_invoke_2;
  v5[3] = &unk_1E84ABEF0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 sendMessage:v2 withReply:v5];
}

void __40__SSApplicationUtil_restartApplication___block_invoke_2(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 40))
  {
    objc_opt_class();
    v6 = SSXPCDictionaryCopyCFObjectWithClass(v4, "0");
    v7 = [(__CFArray *)v6 intValue];
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v9 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (!v11)
      {
        goto LABEL_30;
      }

      v13 = objc_opt_class();
      v14 = v13;
      v34 = 138412546;
      v35 = v13;
      v36 = 1024;
      v37 = [(__CFArray *)v6 intValue];
      LODWORD(v30) = 18;
    }

    else
    {
      if (!v8)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v18 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v19 = v18 | 2;
      }

      else
      {
        v19 = v18;
      }

      v12 = [v9 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v19 &= 2u;
      }

      if (!v19)
      {
        goto LABEL_30;
      }

      v34 = 138412290;
      v35 = objc_opt_class();
      v14 = v35;
      LODWORD(v30) = 12;
    }

    v20 = _os_log_send_and_compose_impl();

    if (!v20)
    {
      goto LABEL_31;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v34, v30}];
    free(v20);
    SSFileLog(v9, @"%@", v21, v22, v23, v24, v25, v26, v12);
LABEL_30:

    goto LABEL_31;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
  }

  else
  {
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
    {
      objc_opt_class();
      v27 = SSXPCDictionaryCopyCFObjectWithClass(v4, "0");
      if ([(__CFArray *)v27 intValue])
      {
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = xpc_dictionary_get_value(v4, "1");
        v15 = [v28 initWithXPCEncoding:v29];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_18;
    }

    v5 = 111;
  }

  v15 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_18:
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSApplicationUtil_restartApplication___block_invoke_3;
  block[3] = &unk_1E84AC338;
  v17 = *(a1 + 40);
  v32 = v15;
  v33 = v17;
  v6 = v15;
  dispatch_async(v16, block);

  v9 = v33;
LABEL_31:
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v5 = self->_connection;
    self->_connection = v4;

    connection = self->_connection;
  }

  return connection;
}

@end