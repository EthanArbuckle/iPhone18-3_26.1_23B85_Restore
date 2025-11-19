@interface SSVDirectUploadQueue
- (NSArray)uploadKinds;
- (SSVDirectUploadQueue)initWithUploadKinds:(id)a3;
- (id)_outboundConnection;
- (void)_establishInboundConnection;
- (void)_handleAddUploadsMessage:(id)a3;
- (void)_handleChangeUploadsMessage:(id)a3;
- (void)_handleInboundMessage:(id)a3 connection:(id)a4;
- (void)_handleRemoveUploadsMessage:(id)a3;
- (void)_sendObserversUploadsDidChange;
- (void)_sendSimpleMessage:(id)a3 completionBlock:(id)a4;
- (void)addUploadObserver:(id)a3;
- (void)cancelAllUploadsWithCompletionBlock:(id)a3;
- (void)cancelUploads:(id)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)getUploadsWithCompletionBlock:(id)a3;
- (void)pauseAllUploadsWithCompletionBlock:(id)a3;
- (void)pauseUploads:(id)a3 completionBlock:(id)a4;
- (void)removeUploadObserver:(id)a3;
- (void)resumeAllUploadsWithCompletionBlock:(id)a3;
- (void)resumeUploads:(id)a3 completionBlock:(id)a4;
@end

@implementation SSVDirectUploadQueue

- (SSVDirectUploadQueue)initWithUploadKinds:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have upload kinds"];
  }

  v20.receiver = self;
  v20.super_class = SSVDirectUploadQueue;
  v5 = [(SSVDirectUploadQueue *)&v20 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.StoreServices.SSVDirectUploadQueue", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    v8 = dispatch_queue_create("com.apple.StoreServices.SSVDirectUploadQueue.observers", 0);
    observerQueue = v5->_observerQueue;
    v5->_observerQueue = v8;

    v10 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    observers = v5->_observers;
    v5->_observers = v10;

    v12 = [v4 copy];
    uploadKinds = v5->_uploadKinds;
    v5->_uploadKinds = v12;

    objc_initWeak(&location, v5);
    v14 = [(__CFString *)@"com.apple.iTunesStore.daemon.launched" UTF8String];
    v15 = v5->_accessQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__SSVDirectUploadQueue_initWithUploadKinds___block_invoke;
    v17[3] = &unk_1E84ACFA8;
    objc_copyWeak(&v18, &location);
    notify_register_dispatch(v14, &v5->_daemonLaunchToken, v15, v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __44__SSVDirectUploadQueue_initWithUploadKinds___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained[5] count];
    v2 = v4;
    if (v3)
    {
      [v4 _establishInboundConnection];
      v2 = v4;
    }
  }
}

- (void)dealloc
{
  notify_cancel(self->_daemonLaunchToken);
  v3.receiver = self;
  v3.super_class = SSVDirectUploadQueue;
  [(SSVDirectUploadQueue *)&v3 dealloc];
}

- (void)addUploadObserver:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SSVDirectUploadQueue_addUploadObserver___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

uint64_t __42__SSVDirectUploadQueue_addUploadObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _establishInboundConnection];
}

- (void)cancelAllUploadsWithCompletionBlock:(id)a3
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
      v23 = "[SSVDirectUploadQueue cancelAllUploadsWithCompletionBlock:]";
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
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SSVDirectUploadQueue_cancelAllUploadsWithCompletionBlock___block_invoke;
  block[3] = &unk_1E84AC360;
  block[4] = self;
  v21 = v4;
  v18 = v4;
  dispatch_async(accessQueue, block);
}

void __60__SSVDirectUploadQueue_cancelAllUploadsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(154);
  xpc_dictionary_set_BOOL(v2, "2", 1);
  [*(a1 + 32) _sendSimpleMessage:v2 completionBlock:*(a1 + 40)];
}

- (void)cancelUploads:(id)a3 completionBlock:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v28 = 136446210;
      v29 = "[SSVDirectUploadQueue cancelUploads:completionBlock:]";
      LODWORD(v23) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v28, v23}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, v11);
    }

    goto LABEL_15;
  }

LABEL_16:
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SSVDirectUploadQueue_cancelUploads_completionBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  v25 = v6;
  v26 = self;
  v27 = v7;
  v21 = v7;
  v22 = v6;
  dispatch_async(accessQueue, block);
}

void __54__SSVDirectUploadQueue_cancelUploads_completionBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SSXPCCreateMessageDictionary(154);
  v3 = xpc_array_create(0, 0);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        xpc_array_set_int64(v3, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v9 + 1) + 8 * v8++) persistentIdentifier]);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  xpc_dictionary_set_value(v2, "1", v3);
  [*(a1 + 40) _sendSimpleMessage:v2 completionBlock:*(a1 + 48)];
}

- (void)getUploadsWithCompletionBlock:(id)a3
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
      v23 = "[SSVDirectUploadQueue getUploadsWithCompletionBlock:]";
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
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SSVDirectUploadQueue_getUploadsWithCompletionBlock___block_invoke;
  block[3] = &unk_1E84AC360;
  block[4] = self;
  v21 = v4;
  v18 = v4;
  dispatch_async(accessQueue, block);
}

void __54__SSVDirectUploadQueue_getUploadsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(155);
  SSXPCDictionarySetCFObject(v2, "1", *(*(a1 + 32) + 56));
  v3 = *(*(a1 + 32) + 32);
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) _outboundConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SSVDirectUploadQueue_getUploadsWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E84B2D18;
  objc_copyWeak(&v10, &location);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v9 = v5;
  v6 = v3;
  v8 = v6;
  [v4 sendMessage:v2 withReply:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__SSVDirectUploadQueue_getUploadsWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v25 = 0;
  isValidReply = _isValidReply(v3, &v25);
  v6 = v25;
  v7 = v6;
  if (isValidReply)
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = xpc_dictionary_get_value(v3, "1");
    v10 = [v8 initWithXPCEncoding:v9];

    v11 = xpc_dictionary_get_value(v3, "2");
    v12 = objc_opt_class();
    v13 = SSXPCCreateNSArrayFromXPCEncodedArray(v11, v12);

    if (WeakRetained && v13)
    {
      v14 = WeakRetained[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__SSVDirectUploadQueue_getUploadsWithCompletionBlock___block_invoke_3;
      block[3] = &unk_1E84AC028;
      v13 = v13;
      v15 = *(a1 + 32);
      v23 = v13;
      v24 = v15;
      dispatch_async(v14, block);
    }
  }

  else
  {
    v13 = 0;
    v10 = v6;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = *(a1 + 40);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__SSVDirectUploadQueue_getUploadsWithCompletionBlock___block_invoke_4;
    v18[3] = &unk_1E84ABEC8;
    v21 = v16;
    v19 = v13;
    v20 = v10;
    dispatch_async(v17, v18);
  }
}

void __54__SSVDirectUploadQueue_getUploadsWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = *(*(a1 + 40) + 64);
        if (v9 && (v10 = [v9 indexOfObject:{*(*(&v14 + 1) + 8 * v7), v14}], v10 != 0x7FFFFFFFFFFFFFFFLL))
        {
          v11 = [*(*(a1 + 40) + 64) objectAtIndex:v10];
          [v11 _adoptStatusFromUpload:v8];
          [v2 addObject:v11];
        }

        else
        {
          [v2 addObject:{v8, v14}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 64);
  *(v12 + 64) = v2;
}

- (void)pauseAllUploadsWithCompletionBlock:(id)a3
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
      v23 = "[SSVDirectUploadQueue pauseAllUploadsWithCompletionBlock:]";
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
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SSVDirectUploadQueue_pauseAllUploadsWithCompletionBlock___block_invoke;
  block[3] = &unk_1E84AC360;
  block[4] = self;
  v21 = v4;
  v18 = v4;
  dispatch_async(accessQueue, block);
}

void __59__SSVDirectUploadQueue_pauseAllUploadsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(156);
  xpc_dictionary_set_BOOL(v2, "2", 1);
  [*(a1 + 32) _sendSimpleMessage:v2 completionBlock:*(a1 + 40)];
}

- (void)pauseUploads:(id)a3 completionBlock:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v28 = 136446210;
      v29 = "[SSVDirectUploadQueue pauseUploads:completionBlock:]";
      LODWORD(v23) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v28, v23}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, v11);
    }

    goto LABEL_15;
  }

LABEL_16:
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SSVDirectUploadQueue_pauseUploads_completionBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  v25 = v6;
  v26 = self;
  v27 = v7;
  v21 = v7;
  v22 = v6;
  dispatch_async(accessQueue, block);
}

void __53__SSVDirectUploadQueue_pauseUploads_completionBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SSXPCCreateMessageDictionary(156);
  v3 = xpc_array_create(0, 0);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        xpc_array_set_int64(v3, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v9 + 1) + 8 * v8++) persistentIdentifier]);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  xpc_dictionary_set_value(v2, "1", v3);
  [*(a1 + 40) _sendSimpleMessage:v2 completionBlock:*(a1 + 48)];
}

- (void)removeUploadObserver:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SSVDirectUploadQueue_removeUploadObserver___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

- (void)resumeAllUploadsWithCompletionBlock:(id)a3
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
      v23 = "[SSVDirectUploadQueue resumeAllUploadsWithCompletionBlock:]";
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
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SSVDirectUploadQueue_resumeAllUploadsWithCompletionBlock___block_invoke;
  block[3] = &unk_1E84AC360;
  block[4] = self;
  v21 = v4;
  v18 = v4;
  dispatch_async(accessQueue, block);
}

void __60__SSVDirectUploadQueue_resumeAllUploadsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(158);
  xpc_dictionary_set_BOOL(v2, "2", 1);
  [*(a1 + 32) _sendSimpleMessage:v2 completionBlock:*(a1 + 40)];
}

- (void)resumeUploads:(id)a3 completionBlock:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v28 = 136446210;
      v29 = "[SSVDirectUploadQueue resumeUploads:completionBlock:]";
      LODWORD(v23) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v28, v23}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, v11);
    }

    goto LABEL_15;
  }

LABEL_16:
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SSVDirectUploadQueue_resumeUploads_completionBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  v25 = v6;
  v26 = self;
  v27 = v7;
  v21 = v7;
  v22 = v6;
  dispatch_async(accessQueue, block);
}

void __54__SSVDirectUploadQueue_resumeUploads_completionBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SSXPCCreateMessageDictionary(158);
  v3 = xpc_array_create(0, 0);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        xpc_array_set_int64(v3, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v9 + 1) + 8 * v8++) persistentIdentifier]);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  xpc_dictionary_set_value(v2, "1", v3);
  [*(a1 + 40) _sendSimpleMessage:v2 completionBlock:*(a1 + 48)];
}

- (NSArray)uploadKinds
{
  v2 = [(NSArray *)self->_uploadKinds copy];

  return v2;
}

- (void)_establishInboundConnection
{
  location[3] = *MEMORY[0x1E69E9840];
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

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      LODWORD(location[0]) = 136446210;
      *(location + 4) = "[SSVDirectUploadQueue _establishInboundConnection]";
      LODWORD(v24) = 12;
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, location, v24}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }

    else
    {
    }
  }

  if (!self->_inboundConnection)
  {
    if ([(NSHashTable *)self->_observers count])
    {
      v16 = objc_alloc_init(SSXPCConnection);
      inboundConnection = self->_inboundConnection;
      self->_inboundConnection = v16;

      v18 = self->_accessQueue;
      objc_initWeak(location, self);
      v19 = self->_inboundConnection;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __51__SSVDirectUploadQueue__establishInboundConnection__block_invoke;
      v25[3] = &unk_1E84B2D40;
      v20 = v18;
      v26 = v20;
      objc_copyWeak(&v27, location);
      [(SSXPCConnection *)v19 setMessageBlock:v25];
      v21 = SSXPCCreateMessageDictionary(157);
      SSXPCDictionarySetCFObject(v21, "1", self->_uploadKinds);
      v22 = [(SSXPCConnection *)self->_inboundConnection createXPCEndpoint];
      xpc_dictionary_set_value(v21, "2", v22);
      v23 = [(SSVDirectUploadQueue *)self _outboundConnection];
      [v23 sendMessage:v21];

      objc_destroyWeak(&v27);
      objc_destroyWeak(location);
    }
  }
}

void __51__SSVDirectUploadQueue__establishInboundConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SSVDirectUploadQueue__establishInboundConnection__block_invoke_2;
  block[3] = &unk_1E84AE328;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void __51__SSVDirectUploadQueue__establishInboundConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleInboundMessage:*(a1 + 32) connection:*(a1 + 40)];
}

- (void)_handleAddUploadsMessage:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_uploads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v11, "persistentIdentifier")}];
        [v5 setObject:v11 forKey:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v13 = xpc_dictionary_get_value(v4, "2");
  v14 = v13;
  v15 = MEMORY[0x1E69E9E50];
  if (v13 && MEMORY[0x1DA6E0380](v13) == v15)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __49__SSVDirectUploadQueue__handleAddUploadsMessage___block_invoke;
    applier[3] = &unk_1E84AC3D8;
    v24 = v5;
    xpc_array_apply(v14, applier);
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  uploads = self->_uploads;
  self->_uploads = v16;

  v18 = xpc_dictionary_get_value(v4, "1");
  v19 = v18;
  if (v18 && MEMORY[0x1DA6E0380](v18) == v15)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__SSVDirectUploadQueue__handleAddUploadsMessage___block_invoke_2;
    v20[3] = &unk_1E84B0670;
    v21 = v5;
    v22 = self;
    xpc_array_apply(v19, v20);
  }

  if ([(NSHashTable *)self->_observers count])
  {
    [(SSVDirectUploadQueue *)self _sendObserversUploadsDidChange];
  }
}

uint64_t __49__SSVDirectUploadQueue__handleAddUploadsMessage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SSVDirectUpload alloc] initWithXPCEncoding:v4];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{-[SSVDirectUpload persistentIdentifier](v5, "persistentIdentifier")}];
    v7 = [*(a1 + 32) objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      [v7 _adoptStatusFromUpload:v5];
    }

    else
    {
      [*(a1 + 32) setObject:v5 forKey:v6];
    }
  }

  return 1;
}

uint64_t __49__SSVDirectUploadQueue__handleAddUploadsMessage___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9EB0])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:xpc_int64_get_value(v4)];
    v6 = [*(a1 + 32) objectForKey:v5];
    if (v6)
    {
      [*(*(a1 + 40) + 64) addObject:v6];
    }
  }

  return 1;
}

- (void)_handleChangeUploadsMessage:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_uploads count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = xpc_dictionary_get_value(v4, "1");
    v7 = v6;
    if (v6 && MEMORY[0x1DA6E0380](v6) == MEMORY[0x1E69E9E50])
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __52__SSVDirectUploadQueue__handleChangeUploadsMessage___block_invoke;
      applier[3] = &unk_1E84B0670;
      applier[4] = self;
      v16 = v5;
      xpc_array_apply(v7, applier);
    }

    if ([v5 count] && -[NSHashTable count](self->_observers, "count"))
    {
      v8 = [(NSHashTable *)self->_observers copy];
      observerQueue = self->_observerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__SSVDirectUploadQueue__handleChangeUploadsMessage___block_invoke_2;
      block[3] = &unk_1E84AC078;
      v12 = v8;
      v13 = self;
      v14 = v5;
      v10 = v8;
      dispatch_async(observerQueue, block);
    }
  }
}

uint64_t __52__SSVDirectUploadQueue__handleChangeUploadsMessage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SSVDirectUpload alloc] initWithXPCEncoding:v4];

  v6 = [*(*(a1 + 32) + 64) indexOfObject:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(*(a1 + 32) + 64) objectAtIndex:v6];
    [v7 _adoptStatusFromUpload:v5];
    [*(a1 + 40) addObject:v7];
  }

  return 1;
}

void __52__SSVDirectUploadQueue__handleChangeUploadsMessage___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 uploadQueue:*(a1 + 40) statusDidChangeForUploads:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_handleInboundMessage:(id)a3 connection:(id)a4
{
  v8 = a3;
  int64 = xpc_dictionary_get_int64(v8, "0");
  v6 = int64;
  if (int64 <= 1013)
  {
    if (!int64)
    {
      goto LABEL_10;
    }

    if (int64 == 1013)
    {
      [(SSVDirectUploadQueue *)self _handleAddUploadsMessage:v8];
      goto LABEL_10;
    }

LABEL_8:
    v7 = objc_opt_class();
    NSLog(&cfstr_UnrecognizedMe.isa, v7, v6);
    goto LABEL_10;
  }

  if (int64 != 1014)
  {
    if (int64 == 1015)
    {
      [(SSVDirectUploadQueue *)self _handleRemoveUploadsMessage:v8];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  [(SSVDirectUploadQueue *)self _handleChangeUploadsMessage:v8];
LABEL_10:
}

- (void)_handleRemoveUploadsMessage:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = xpc_dictionary_get_value(v4, "1");
  v6 = v5;
  if (v5 && MEMORY[0x1DA6E0380](v5) == MEMORY[0x1E69E9E50])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__SSVDirectUploadQueue__handleRemoveUploadsMessage___block_invoke;
    v7[3] = &unk_1E84B2D88;
    v7[4] = self;
    v7[5] = &v8;
    xpc_array_apply(v6, v7);
  }

  if (*(v9 + 24) == 1 && [(NSHashTable *)self->_observers count])
  {
    [(SSVDirectUploadQueue *)self _sendObserversUploadsDidChange];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __52__SSVDirectUploadQueue__handleRemoveUploadsMessage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v4);
    v6 = *(*(a1 + 32) + 64);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__SSVDirectUploadQueue__handleRemoveUploadsMessage___block_invoke_2;
    v9[3] = &__block_descriptor_40_e32_B32__0__SSVDirectUpload_8Q16_B24l;
    v9[4] = value;
    v7 = [v6 indexOfObjectPassingTest:v9];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(*(a1 + 32) + 64) removeObjectAtIndex:v7];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return 1;
}

- (id)_outboundConnection
{
  outboundConnection = self->_outboundConnection;
  if (!outboundConnection)
  {
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v5 = self->_outboundConnection;
    self->_outboundConnection = v4;

    outboundConnection = self->_outboundConnection;
  }

  return outboundConnection;
}

- (void)_sendObserversUploadsDidChange
{
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [(NSMutableArray *)self->_uploads copy];
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SSVDirectUploadQueue__sendObserversUploadsDidChange__block_invoke;
  block[3] = &unk_1E84AC078;
  v9 = v3;
  v10 = self;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(observerQueue, block);
}

void __54__SSVDirectUploadQueue__sendObserversUploadsDidChange__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 uploadQueue:*(a1 + 40) uploadsDidChange:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_sendSimpleMessage:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = self->_observerQueue;
  v8 = a3;
  v9 = [(SSVDirectUploadQueue *)self _outboundConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__SSVDirectUploadQueue__sendSimpleMessage_completionBlock___block_invoke;
  v12[3] = &unk_1E84ABEF0;
  v13 = v7;
  v14 = v6;
  v10 = v7;
  v11 = v6;
  [v9 sendMessage:v8 withReply:v12];
}

void __59__SSVDirectUploadQueue__sendSimpleMessage_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v16 = 0;
    LODWORD(v5) = _isValidReply(v3, &v16);
    v6 = v16;
    if (v5)
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v7 = xpc_dictionary_get_value(v4, "1");
      v8 = [v5 initWithXPCEncoding:v7];

      LOBYTE(v5) = xpc_dictionary_get_BOOL(v4, "2");
      v6 = v8;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__SSVDirectUploadQueue__sendSimpleMessage_completionBlock___block_invoke_2;
    v12[3] = &unk_1E84B08A8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v15 = v5;
    v13 = v6;
    v14 = v10;
    v11 = v6;
    dispatch_async(v9, v12);
  }
}

@end