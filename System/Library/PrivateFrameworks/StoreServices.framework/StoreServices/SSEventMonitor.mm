@interface SSEventMonitor
- (SSEventMonitor)init;
- (SSEventMonitorDelegate)delegate;
- (void)_connectEventConnection;
- (void)_handleMessage:(id)message fromServerConnection:(id)connection;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation SSEventMonitor

- (SSEventMonitor)init
{
  v5.receiver = self;
  v5.super_class = SSEventMonitor;
  v2 = [(SSEventMonitor *)&v5 init];
  if (v2)
  {
    v2->_delegateQueue = dispatch_queue_create("com.apple.StoreServices.SSEventMonitor.delegate", 0);
    v2->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSEventMonitor", 0);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __DaemonLaunchNotification_2, @"com.apple.iTunesStore.daemon.launched", 0, CFNotificationSuspensionBehaviorCoalesce);
    [(SSEventMonitor *)v2 _connectEventConnection];
  }

  return v2;
}

- (void)_connectEventConnection
{
  v27 = *MEMORY[0x1E69E9840];
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

    if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 2;
    }

    if (v6)
    {
      LODWORD(v22) = 136446210;
      *(&v22 + 4) = "[SSEventMonitor _connectEventConnection]";
      LODWORD(v20) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v22, v20}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  if (!self->_eventConnection)
  {
    *&v22 = 0;
    *(&v22 + 1) = &v22;
    v23 = 0x3052000000;
    v24 = __Block_byref_object_copy__41;
    v25 = __Block_byref_object_dispose__41;
    selfCopy = self;
    v16 = objc_alloc_init(SSXPCConnection);
    self->_eventConnection = v16;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __41__SSEventMonitor__connectEventConnection__block_invoke;
    v21[3] = &unk_1E84B0C10;
    v21[4] = self;
    v21[5] = &v22;
    [(SSXPCConnection *)v16 setMessageBlock:v21];
    _Block_object_dispose(&v22, 8);
  }

  v17 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "0", 50);
  createXPCEndpoint = [(SSXPCConnection *)self->_eventConnection createXPCEndpoint];
  xpc_dictionary_set_value(v18, "1", createXPCEndpoint);
  xpc_release(createXPCEndpoint);
  [(SSXPCConnection *)v17 sendMessage:v18];
  xpc_release(v18);
}

void __41__SSEventMonitor__connectEventConnection__block_invoke(uint64_t a1, void *a2, xpc_object_t object)
{
  xpc_retain(object);
  xpc_retain(a2);
  v6 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSEventMonitor__connectEventConnection__block_invoke_2;
  block[3] = &unk_1E84ADF80;
  v7 = *(a1 + 40);
  block[5] = object;
  block[6] = v7;
  block[4] = a2;
  dispatch_async(v6, block);
}

void __41__SSEventMonitor__connectEventConnection__block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 48) + 8) + 40) _handleMessage:*(a1 + 32) fromServerConnection:*(a1 + 40)];
  xpc_release(*(a1 + 32));
  v2 = *(a1 + 40);

  xpc_release(v2);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.iTunesStore.daemon.launched", 0);
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_sync(dispatchQueue, &__block_literal_global_19);
    dispatch_release(self->_dispatchQueue);
  }

  [(SSXPCConnection *)self->_eventConnection setMessageBlock:0];

  v6.receiver = self;
  v6.super_class = SSEventMonitor;
  [(SSEventMonitor *)&v6 dealloc];
}

- (SSEventMonitorDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__41;
  v10 = __Block_byref_object_dispose__41;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__SSEventMonitor_delegate__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __26__SSEventMonitor_delegate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setDelegate:(id)delegate
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__SSEventMonitor_setDelegate___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = delegate;
  dispatch_sync(dispatchQueue, v4);
}

- (void)_handleMessage:(id)message fromServerConnection:(id)connection
{
  objc_opt_class();
  v6 = SSXPCDictionaryCopyCFObjectWithClass(message, "0");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass(message, "1");
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SSEventMonitor__handleMessage_fromServerConnection___block_invoke;
    block[3] = &unk_1E84AD640;
    block[4] = self;
    block[5] = v6;
    block[6] = v7;
    dispatch_async(delegateQueue, block);
  }
}

void __54__SSEventMonitor__handleMessage_fromServerConnection___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  [v2 eventMonitor:a1[4] receivedEventWithName:a1[5] userInfo:a1[6]];
}

@end