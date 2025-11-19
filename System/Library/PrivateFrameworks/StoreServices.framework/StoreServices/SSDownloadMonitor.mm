@interface SSDownloadMonitor
- (SSDownloadMonitor)init;
- (SSDownloadMonitorDelegate)delegate;
- (id)_connection;
- (id)_copyItemsWithReply:(id)a3 error:(id *)a4;
- (void)_reloadForChangeNotification;
- (void)dealloc;
- (void)getMonitorItemsWithCompletionBlock:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SSDownloadMonitor

- (SSDownloadMonitor)init
{
  v9.receiver = self;
  v9.super_class = SSDownloadMonitor;
  v2 = [(SSDownloadMonitor *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSDownloadMonitor.%p", v2];
    v2->_dispatchQueue = dispatch_queue_create([v3 UTF8String], 0);

    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSDownloadMonitor.%p.delegate", v2];
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    v2->_delegateQueue = v5;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, global_queue);

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __DownloadMonitorChanged, @"com.apple.itunesstored.downloadmonitorchanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.downloadmonitorchanged", 0);
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v6.receiver = self;
  v6.super_class = SSDownloadMonitor;
  [(SSDownloadMonitor *)&v6 dealloc];
}

- (SSDownloadMonitorDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__83;
  v10 = __Block_byref_object_dispose__83;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__SSDownloadMonitor_delegate__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __29__SSDownloadMonitor_delegate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)getMonitorItemsWithCompletionBlock:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SSDownloadMonitor_getMonitorItemsWithCompletionBlock___block_invoke;
  v4[3] = &unk_1E84AF318;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

void __56__SSDownloadMonitor_getMonitorItemsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(109);
  v3 = [*(a1 + 32) _connection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SSDownloadMonitor_getMonitorItemsWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E84AC760;
  v5 = *(a1 + 32);
  [v3 sendMessage:v2 withReply:v4];
  xpc_release(v2);
}

void __56__SSDownloadMonitor_getMonitorItemsWithCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v7 = 0;
    v3 = [*(a1 + 32) _copyItemsWithReply:a2 error:&v7];
    v4 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__SSDownloadMonitor_getMonitorItemsWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E84AD618;
    v5 = *(a1 + 40);
    v6[4] = v3;
    v6[5] = v7;
    v6[6] = v5;
    dispatch_async(v4, v6);
  }
}

- (void)setDelegate:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSDownloadMonitor_setDelegate___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (id)_connection
{
  result = self->_connection;
  if (!result)
  {
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    self->_connection = v4;
    [(SSXPCConnection *)v4 setReplyQueue:self->_dispatchQueue];
    return self->_connection;
  }

  return result;
}

- (id)_copyItemsWithReply:(id)a3 error:(id *)a4
{
  if (a3 == MEMORY[0x1E69E9E18])
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 121;
LABEL_6:
    v8 = [v6 errorWithDomain:@"SSErrorDomain" code:v7 userInfo:0];
    v9 = 0;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_7;
  }

  if (!a3 || MEMORY[0x1DA6E0380](a3, a2) != MEMORY[0x1E69E9E80])
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 111;
    goto LABEL_6;
  }

  value = xpc_dictionary_get_value(a3, "0");
  v9 = value;
  if (value)
  {
    if (MEMORY[0x1DA6E0380](value) == MEMORY[0x1E69E9E50])
    {
      v12 = objc_opt_class();
      v9 = SSXPCCreateNSArrayFromXPCEncodedArray(v9, v12);
    }

    else
    {
      v9 = 0;
    }
  }

  objc_opt_class();
  v8 = SSXPCDictionaryCopyCFObjectWithClass(a3, "1");
  v13 = v8;
  if (a4)
  {
LABEL_7:
    if (!v9)
    {
      *a4 = v8;
    }
  }

  return v9;
}

- (void)_reloadForChangeNotification
{
  if (objc_opt_respondsToSelector())
  {
    v3 = SSXPCCreateMessageDictionary(109);
    v4 = [(SSDownloadMonitor *)self _connection];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__SSDownloadMonitor__reloadForChangeNotification__block_invoke;
    v5[3] = &unk_1E84AF2C8;
    v5[4] = self;
    [v4 sendMessage:v3 withReply:v5];
    xpc_release(v3);
  }
}

void __49__SSDownloadMonitor__reloadForChangeNotification__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _copyItemsWithReply:a2 error:0];
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__SSDownloadMonitor__reloadForChangeNotification__block_invoke_2;
    v7[3] = &unk_1E84AC458;
    v7[4] = v5;
    v7[5] = v4;
    dispatch_async(v6, v7);
  }
}

uint64_t __49__SSDownloadMonitor__reloadForChangeNotification__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v2 downloadMonitor:v5 didReloadWithItems:v6];
  }

  return result;
}

@end