@interface SSRemoteNotificationClient
+ (id)sharedClient;
- (SSRemoteNotificationClient)init;
- (id)popQueuedNotifications;
- (void)dealloc;
- (void)registerForRemoteNotifications;
- (void)unregisterForRemoteNotifications;
@end

@implementation SSRemoteNotificationClient

- (SSRemoteNotificationClient)init
{
  v4.receiver = self;
  v4.super_class = SSRemoteNotificationClient;
  v2 = [(SSRemoteNotificationClient *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.storeservices.SSRemoteNotificationClient", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = SSRemoteNotificationClient;
  [(SSRemoteNotificationClient *)&v3 dealloc];
}

+ (id)sharedClient
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SSRemoteNotificationClient_sharedClient__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  if (sharedClient_sOnce != -1)
  {
    dispatch_once(&sharedClient_sOnce, block);
  }

  return sharedClient_sSharedClient;
}

id __42__SSRemoteNotificationClient_sharedClient__block_invoke()
{
  result = objc_alloc_init(objc_opt_class());
  sharedClient_sSharedClient = result;
  return result;
}

- (id)popQueuedNotifications
{
  v26 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v2 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = shouldLog | 2;
    }

    else
    {
      v4 = shouldLog;
    }

    if (os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 2;
    }

    if (v5)
    {
      LODWORD(v21) = 136446210;
      *(&v21 + 4) = "[SSRemoteNotificationClient popQueuedNotifications]";
      LODWORD(v19) = 12;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v21, v19}];
        free(v7);
        SSFileLog(v2, @"%@", v9, v10, v11, v12, v13, v14, v8);
      }
    }
  }

  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__27;
  v24 = __Block_byref_object_dispose__27;
  v25 = 0;
  v15 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v16 = SSXPCCreateMessageDictionary(79);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52__SSRemoteNotificationClient_popQueuedNotifications__block_invoke;
  v20[3] = &unk_1E84AFD68;
  v20[4] = &v21;
  [(SSXPCConnection *)v15 sendSynchronousMessage:v16 withReply:v20];
  xpc_release(v16);

  v17 = *(*(&v21 + 1) + 40);
  _Block_object_dispose(&v21, 8);
  return v17;
}

void *__52__SSRemoteNotificationClient_popQueuedNotifications__block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = MEMORY[0x1DA6E0380](a2);
    if (result == MEMORY[0x1E69E9E80])
    {
      value = xpc_dictionary_get_value(a2, "0");
      v5 = objc_opt_class();
      result = SSXPCCreateNSArrayFromXPCEncodedArray(value, v5);
      *(*(v3[4] + 8) + 40) = result;
    }
  }

  return result;
}

- (void)registerForRemoteNotifications
{
  v21 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
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
      v20 = "[SSRemoteNotificationClient registerForRemoteNotifications]";
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
  block[2] = __60__SSRemoteNotificationClient_registerForRemoteNotifications__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __60__SSRemoteNotificationClient_registerForRemoteNotifications__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (v1 + 16);
  if (!*(v1 + 16))
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3052000000;
    v7[3] = __Block_byref_object_copy__27;
    v7[4] = __Block_byref_object_dispose__27;
    v7[5] = v1;
    global_queue = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__SSRemoteNotificationClient_registerForRemoteNotifications__block_invoke_2;
    handler[3] = &unk_1E84AFD90;
    handler[4] = v7;
    notify_register_dispatch("com.apple.itunesstored.aps.received", v2, global_queue, handler);
    _Block_object_dispose(v7, 8);
  }

  v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v5 = SSXPCCreateMessageDictionary(80);
  [(SSXPCConnection *)v4 sendSynchronousMessage:v5 withReply:&__block_literal_global_14];
  xpc_release(v5);
}

void __60__SSRemoteNotificationClient_registerForRemoteNotifications__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)unregisterForRemoteNotifications
{
  v21 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
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
      v20 = "[SSRemoteNotificationClient unregisterForRemoteNotifications]";
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
  block[2] = __62__SSRemoteNotificationClient_unregisterForRemoteNotifications__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __62__SSRemoteNotificationClient_unregisterForRemoteNotifications__block_invoke(uint64_t a1)
{
  notify_cancel(*(*(a1 + 32) + 16));
  *(*(a1 + 32) + 16) = 0;
  v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v2 = SSXPCCreateMessageDictionary(81);
  [(SSXPCConnection *)v3 sendSynchronousMessage:v2 withReply:&__block_literal_global_22];
  xpc_release(v2);
}

@end