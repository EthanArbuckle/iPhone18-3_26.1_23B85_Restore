@interface SSTransactionStore
+ (id)defaultStore;
- (SSTransactionStore)init;
- (void)releaseKeepAliveWithTransactionID:(id)d;
- (void)takeKeepAliveWithTransactionID:(id)d;
@end

@implementation SSTransactionStore

- (SSTransactionStore)init
{
  v11.receiver = self;
  v11.super_class = SSTransactionStore;
  v2 = [(SSTransactionStore *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transactionCount = v2->_transactionCount;
    v2->_transactionCount = v3;

    v5 = objc_opt_new();
    transactionStore = v2->_transactionStore;
    v2->_transactionStore = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.storeservices.TransactionStore", v7);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v8;
  }

  return v2;
}

+ (id)defaultStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSTransactionStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultStore_onceToken != -1)
  {
    dispatch_once(&defaultStore_onceToken, block);
  }

  v2 = defaultStore_transactionStore;

  return v2;
}

void __34__SSTransactionStore_defaultStore__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = defaultStore_transactionStore;
  defaultStore_transactionStore = v0;
}

- (void)takeKeepAliveWithTransactionID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SSTransactionStore_takeKeepAliveWithTransactionID___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

void __53__SSTransactionStore_takeKeepAliveWithTransactionID___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 8) countForObject:*(a1 + 40)];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  v4 = v3;
  if (v2 != 1)
  {
    if (!v3)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v17 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v4 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = *(a1 + 40);
      v30 = 138543362;
      v31 = v21;
      LODWORD(v29) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
        goto LABEL_27;
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v30, v29}];
      free(v22);
      SSFileLog(v4, @"%@", v23, v24, v25, v26, v27, v28, v19);
    }

    goto LABEL_27;
  }

  if (!v3)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 40);
  v30 = 138543362;
  v31 = v9;
  LODWORD(v29) = 12;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v30, v29}];
    free(v10);
    SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v7);
LABEL_13:
  }

  [*(a1 + 40) UTF8String];
  v4 = os_transaction_create();
  [*(*(a1 + 32) + 16) setObject:v4 forKeyedSubscript:*(a1 + 40)];
LABEL_27:
}

- (void)releaseKeepAliveWithTransactionID:(id)d
{
  dCopy = d;
  v5 = dispatch_time(0, 15000000000);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__SSTransactionStore_releaseKeepAliveWithTransactionID___block_invoke;
  v8[3] = &unk_1E84AC028;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_after(v5, dispatchQueue, v8);
}

void __56__SSTransactionStore_releaseKeepAliveWithTransactionID___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 8) countForObject:*(a1 + 40)];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 2;
    }

    if (v8)
    {
      v9 = *(a1 + 40);
      v30 = 138543362;
      v31 = v9;
      LODWORD(v29) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_14:

        return;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v30, v29}];
      free(v10);
      SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v7);
    }

    goto LABEL_14;
  }

  if (!v3)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v17 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v4 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = *(a1 + 40);
  v30 = 138543362;
  v31 = v21;
  LODWORD(v29) = 12;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v30, v29}];
    free(v22);
    SSFileLog(v4, @"%@", v23, v24, v25, v26, v27, v28, v19);
LABEL_26:
  }

  [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
}

@end