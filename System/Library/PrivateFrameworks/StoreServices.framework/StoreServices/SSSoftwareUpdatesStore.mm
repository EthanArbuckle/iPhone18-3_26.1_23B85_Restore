@interface SSSoftwareUpdatesStore
- (SSSoftwareUpdatesStore)init;
- (void)clearExpiredUpdateHistoryWithCompletionBlock:(id)block;
- (void)dealloc;
- (void)getUpdatesWithCompletionBlock:(id)block;
- (void)hideApplicationBadgeForPendingUpdates;
- (void)reloadFromServerWithCompletionBlock:(id)block;
- (void)removeUpdateBulletins;
- (void)showApplicationBadgeForPendingUpdates;
@end

@implementation SSSoftwareUpdatesStore

- (SSSoftwareUpdatesStore)init
{
  v12.receiver = self;
  v12.super_class = SSSoftwareUpdatesStore;
  v2 = [(SSSoftwareUpdatesStore *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSSoftwareUpdatesStore.%p", v2];
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v4;

    v6 = dispatch_queue_create([v3 UTF8String], 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v6;

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSSoftwareUpdatesStore.callout.%p", v2];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v9;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.updatesstorechanged", 0);
  v4.receiver = self;
  v4.super_class = SSSoftwareUpdatesStore;
  [(SSSoftwareUpdatesStore *)&v4 dealloc];
}

- (void)clearExpiredUpdateHistoryWithCompletionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, 0, 0);
  }
}

- (void)getUpdatesWithCompletionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, MEMORY[0x1E695E0F0]);
  }
}

- (void)hideApplicationBadgeForPendingUpdates
{
  v19 = *MEMORY[0x1E69E9840];
  if (!SSIsInternalBuild() || !_os_feature_enabled_impl())
  {
    goto LABEL_16;
  }

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

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  v17 = 136446210;
  v18 = "[SSSoftwareUpdatesStore hideApplicationBadgeForPendingUpdates]";
  LODWORD(v16) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v16}];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_14:
  }

LABEL_16:
  if (self->_connection)
  {
    v15 = SSXPCCreateMessageDictionary(118);
    [(SSXPCConnection *)self->_connection sendMessage:v15];
  }
}

- (void)reloadFromServerWithCompletionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
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
      v23 = "[SSSoftwareUpdatesStore reloadFromServerWithCompletionBlock:]";
      LODWORD(v19) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v22, v19}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SSSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke;
  block[3] = &unk_1E84AC360;
  block[4] = self;
  v21 = blockCopy;
  v18 = blockCopy;
  dispatch_async(dispatchQueue, block);
}

void __62__SSSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(106);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SSSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_2;
  v6[3] = &unk_1E84AE540;
  v6[4] = v4;
  v7 = v3;
  [v5 sendMessage:v2 withReply:v6];
}

void __62__SSSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
  {
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = xpc_dictionary_get_value(v4, "1");
    v5 = [v6 initWithXPCEncoding:v7];
  }

  else
  {
    v5 = SSError(@"SSErrorDomain", 111, 0, 0);
  }

  v8 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__SSSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_3;
  v11[3] = &unk_1E84AC338;
  v9 = *(a1 + 40);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(v8, v11);
}

- (void)removeUpdateBulletins
{
  if (self->_connection)
  {
    v3 = SSXPCCreateMessageDictionary(121);
    [(SSXPCConnection *)self->_connection sendMessage:v3];
  }
}

- (void)showApplicationBadgeForPendingUpdates
{
  if (self->_connection)
  {
    v3 = SSXPCCreateMessageDictionary(119);
    [(SSXPCConnection *)self->_connection sendMessage:v3];
  }
}

@end