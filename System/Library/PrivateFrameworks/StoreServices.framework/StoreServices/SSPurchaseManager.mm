@interface SSPurchaseManager
- (BOOL)_resultForReply:(id)reply error:(id *)error;
- (BOOL)_shouldInvalidateSubscriptionStatusForPurchaseResponse:(id)response;
- (NSString)managerIdentifier;
- (SSPurchaseManager)initWithManagerIdentifier:(id)identifier;
- (SSPurchaseManagerDelegate)delegate;
- (id)_newEncodedArrayWithPurchaseIdentifiers:(id)identifiers;
- (id)_newEncodedArrayWithPurchases:(id)purchases;
- (id)_requestConnection;
- (id)_responseConnection;
- (void)_connectToDaemon;
- (void)_handleAuthenticateRequest:(id)request fromConnection:(id)connection;
- (void)_handleMessage:(id)message fromConnection:(id)connection;
- (void)_handlePurchasesFinished:(id)finished fromConnection:(id)connection;
- (void)_reconnectForDaemonLaunch;
- (void)_sendCompletionBlock:(id)block forGetPurchasesReply:(id)reply;
- (void)_sendCompletionBlock:(id)block forStandardReply:(id)reply;
- (void)_sendMessage:(int64_t)message withPurchaseIdentifiers:(id)identifiers afterPurchase:(id)purchase completionBlock:(id)block;
- (void)_sendMessage:(int64_t)message withPurchases:(id)purchases afterPurchase:(id)purchase completionBlock:(id)block;
- (void)addPurchases:(id)purchases withCompletionBlock:(id)block;
- (void)cancelPurchases:(id)purchases withCompletionBlock:(id)block;
- (void)dealloc;
- (void)getPurchasesUsingBlock:(id)block;
- (void)insertPurchases:(id)purchases afterPurchase:(id)purchase withCompletionBlock:(id)block;
- (void)movePurchases:(id)purchases afterPurchase:(id)purchase withCompletionBlock:(id)block;
- (void)setDelegate:(id)delegate;
@end

@implementation SSPurchaseManager

- (void)_connectToDaemon
{
  v23 = *MEMORY[0x1E69E9840];
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
      v21 = 136446210;
      v22 = "[SSPurchaseManager _connectToDaemon]";
      LODWORD(v20) = 12;
      v19 = &v21;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v21, v20}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  v16 = SSXPCCreateMessageDictionary(104);
  SSXPCDictionarySetCFObject(v16, "1", self->_managerIdentifier);
  v17 = [-[SSPurchaseManager _responseConnection](self "_responseConnection")];
  if (v17)
  {
    v18 = v17;
    xpc_dictionary_set_value(v16, "2", v17);
    xpc_release(v18);
  }

  +[SSAuthenticateRequest localAuthenticationAvailable];
  xpc_dictionary_set_BOOL(v16, "3", 0);
  [-[SSPurchaseManager _requestConnection](self "_requestConnection")];
  xpc_release(v16);
}

- (id)_responseConnection
{
  result = self->_responseConnection;
  if (!result)
  {
    self->_responseConnection = objc_alloc_init(SSXPCConnection);
    v4 = [SSWeakReference weakReferenceWithObject:self];
    responseConnection = self->_responseConnection;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__SSPurchaseManager__responseConnection__block_invoke;
    v6[3] = &unk_1E84B0848;
    v6[4] = v4;
    [(SSXPCConnection *)responseConnection setMessageBlock:v6];
    return self->_responseConnection;
  }

  return result;
}

- (id)_requestConnection
{
  result = self->_requestConnection;
  if (!result)
  {
    result = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    self->_requestConnection = result;
  }

  return result;
}

uint64_t __40__SSPurchaseManager__responseConnection__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) object];

  return [v5 _handleMessage:a2 fromConnection:a3];
}

- (SSPurchaseManager)initWithManagerIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = SSPurchaseManager;
  v4 = [(SSPurchaseManager *)&v9 init];
  if (v4)
  {
    v4->_managerIdentifier = [identifier copy];
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSPurchaseManager.%@.%p", identifier, v4];
    v4->_dispatchQueue = dispatch_queue_create([v5 UTF8String], 0);

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSPurchaseManager.completion.%@.%p", identifier, v4];
    v4->_completionBlockQueue = dispatch_queue_create([v6 UTF8String], 0);

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, __DaemonLaunchNotification_4, @"com.apple.iTunesStore.daemon.launched", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.iTunesStore.daemon.launched", 0);
  completionBlockQueue = self->_completionBlockQueue;
  if (completionBlockQueue)
  {
    dispatch_release(completionBlockQueue);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  [(SSXPCConnection *)self->_responseConnection setMessageBlock:0];
  v6.receiver = self;
  v6.super_class = SSPurchaseManager;
  [(SSPurchaseManager *)&v6 dealloc];
}

- (void)addPurchases:(id)purchases withCompletionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 2;
    }

    if (v10)
    {
      v23 = 136446210;
      v24 = "[SSPurchaseManager addPurchases:withCompletionBlock:]";
      LODWORD(v21) = 12;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v23, v21}];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SSPurchaseManager_addPurchases_withCompletionBlock___block_invoke;
  block[3] = &unk_1E84ADFD0;
  block[4] = self;
  block[5] = purchases;
  block[6] = block;
  dispatch_async(dispatchQueue, block);
}

- (void)cancelPurchases:(id)purchases withCompletionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 2;
    }

    if (v10)
    {
      v23 = 136446210;
      v24 = "[SSPurchaseManager cancelPurchases:withCompletionBlock:]";
      LODWORD(v21) = 12;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v23, v21}];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSPurchaseManager_cancelPurchases_withCompletionBlock___block_invoke;
  block[3] = &unk_1E84ADFD0;
  block[4] = self;
  block[5] = purchases;
  block[6] = block;
  dispatch_async(dispatchQueue, block);
}

- (SSPurchaseManagerDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__63;
  v10 = __Block_byref_object_dispose__63;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__SSPurchaseManager_delegate__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __29__SSPurchaseManager_delegate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)getPurchasesUsingBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
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

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      v21 = 136446210;
      v22 = "[SSPurchaseManager getPurchasesUsingBlock:]";
      LODWORD(v19) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v21, v19}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SSPurchaseManager_getPurchasesUsingBlock___block_invoke;
  block[3] = &unk_1E84AF318;
  block[4] = self;
  block[5] = block;
  dispatch_async(dispatchQueue, block);
}

void __44__SSPurchaseManager_getPurchasesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = SSXPCCreateMessageDictionary(100);
  v3 = [SSWeakReference weakReferenceWithObject:*(a1 + 32)];
  v4 = [*(a1 + 32) _requestConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SSPurchaseManager_getPurchasesUsingBlock___block_invoke_2;
  v6[3] = &unk_1E84AFB40;
  v5 = *(a1 + 40);
  v6[4] = v3;
  v6[5] = v5;
  [v4 sendMessage:v2 withReply:v6];
  xpc_release(v2);
}

uint64_t __44__SSPurchaseManager_getPurchasesUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  return [v4 _sendCompletionBlock:v5 forGetPurchasesReply:a2];
}

- (void)insertPurchases:(id)purchases afterPurchase:(id)purchase withCompletionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 2;
    }

    if (v12)
    {
      v25 = 136446210;
      v26 = "[SSPurchaseManager insertPurchases:afterPurchase:withCompletionBlock:]";
      LODWORD(v23) = 12;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v25, v23}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SSPurchaseManager_insertPurchases_afterPurchase_withCompletionBlock___block_invoke;
  block[3] = &unk_1E84B2800;
  block[4] = self;
  block[5] = purchases;
  block[6] = purchase;
  block[7] = block;
  dispatch_async(dispatchQueue, block);
}

- (NSString)managerIdentifier
{
  v2 = self->_managerIdentifier;

  return v2;
}

- (void)movePurchases:(id)purchases afterPurchase:(id)purchase withCompletionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 2;
    }

    if (v12)
    {
      v25 = 136446210;
      v26 = "[SSPurchaseManager movePurchases:afterPurchase:withCompletionBlock:]";
      LODWORD(v23) = 12;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v25, v23}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SSPurchaseManager_movePurchases_afterPurchase_withCompletionBlock___block_invoke;
  block[3] = &unk_1E84B2800;
  block[4] = self;
  block[5] = purchases;
  block[6] = purchase;
  block[7] = block;
  dispatch_async(dispatchQueue, block);
}

- (void)setDelegate:(id)delegate
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSPurchaseManager_setDelegate___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = delegate;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __33__SSPurchaseManager_setDelegate___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(result + 40);
  if (!v2)
  {
    return [*(result + 32) _connectToDaemon];
  }

  return result;
}

- (void)_handleMessage:(id)message fromConnection:(id)connection
{
  int64 = xpc_dictionary_get_int64(message, "0");
  if (int64 == 1101)
  {

    [(SSPurchaseManager *)self _handlePurchasesFinished:message fromConnection:connection];
  }

  else if (int64 == 1100)
  {

    [(SSPurchaseManager *)self _handleAuthenticateRequest:message fromConnection:connection];
  }
}

- (void)_handleAuthenticateRequest:(id)request fromConnection:(id)connection
{
  v40 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(request, "1");
  if (value)
  {
    v8 = [[SSAuthenticationContext alloc] initWithXPCEncoding:value];
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = shouldLog | 2;
      }

      else
      {
        v12 = shouldLog;
      }

      if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v36 = 138543618;
        v37 = objc_opt_class();
        v38 = 2114;
        logUUID = [(SSAuthenticationContext *)v8 logUUID];
        LODWORD(v34) = 22;
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v36, v34}];
          free(v14);
          SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, v15);
        }
      }

      v22 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v8];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __63__SSPurchaseManager__handleAuthenticateRequest_fromConnection___block_invoke;
      v35[3] = &unk_1E84B2828;
      v35[4] = self;
      v35[5] = v8;
      v35[6] = request;
      v35[7] = connection;
      [(SSAuthenticateRequest *)v22 startWithAuthenticateResponseBlock:v35];
    }

    else
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v24 = shouldLog2 | 2;
      }

      else
      {
        v24 = shouldLog2;
      }

      if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v24 &= 2u;
      }

      if (v24)
      {
        v36 = 138543362;
        v37 = objc_opt_class();
        LODWORD(v34) = 12;
        v25 = _os_log_send_and_compose_impl();
        if (v25)
        {
          v26 = v25;
          v27 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, &v36, v34}];
          free(v26);
          SSFileLog(v10, @"%@", v28, v29, v30, v31, v32, v33, v27);
        }
      }
    }
  }
}

void __63__SSPurchaseManager__handleAuthenticateRequest_fromConnection___block_invoke(uint64_t a1, SSAuthenticateResponse *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [*(a1 + 40) logUUID];
    v24 = 138543874;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = a3;
    LODWORD(v23) = 32;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v23}];
      free(v12);
      SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v13);
    }
  }

  if (!a2)
  {
    if (!a3)
    {
      a3 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    a2 = objc_alloc_init(SSAuthenticateResponse);
    [(SSAuthenticateResponse *)a2 setAuthenticateResponseType:0];
    [(SSAuthenticateResponse *)a2 setError:a3];
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v21 = [(SSAuthenticateResponse *)a2 copyXPCEncoding];
  if (v21)
  {
    v22 = v21;
    xpc_dictionary_set_value(reply, "0", v21);
    xpc_release(v22);
  }

  xpc_connection_send_message(*(a1 + 56), reply);
  xpc_release(reply);
}

- (void)_handlePurchasesFinished:(id)finished fromConnection:(id)connection
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = [(SSPurchaseManager *)self delegate:finished];
  if (objc_opt_respondsToSelector())
  {
    v7 = xpc_array_create(0, 0);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    value = xpc_dictionary_get_value(finished, "1");
    v10 = value;
    if (value && MEMORY[0x1DA6E0380](value) == MEMORY[0x1E69E9E50])
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __61__SSPurchaseManager__handlePurchasesFinished_fromConnection___block_invoke;
      applier[3] = &unk_1E84B2850;
      applier[4] = self;
      applier[5] = v7;
      applier[6] = v8;
      applier[7] = &v30;
      xpc_array_apply(v10, applier);
    }

    if (*(v31 + 24) == 1)
    {
      [+[SSVSubscriptionStatusCoordinator _existingSharedCoordinator](SSVSubscriptionStatusCoordinator "_existingSharedCoordinator")];
    }

    if ([v8 count])
    {
      completionBlockQueue = self->_completionBlockQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__SSPurchaseManager__handlePurchasesFinished_fromConnection___block_invoke_2;
      block[3] = &unk_1E84AD640;
      block[4] = v6;
      block[5] = self;
      block[6] = v8;
      dispatch_async(completionBlockQueue, block);
    }

    if (xpc_array_get_count(v7))
    {
      if (SSIsInternalBuild() && _os_feature_enabled_impl())
      {
        v12 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v12)
        {
          v12 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v12 shouldLog];
        shouldLogToDisk = [v12 shouldLogToDisk];
        oSLogObject = [v12 OSLogObject];
        if (shouldLogToDisk)
        {
          shouldLog |= 2u;
        }

        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          v16 = shouldLog;
        }

        else
        {
          v16 = shouldLog & 2;
        }

        if (v16)
        {
          v34 = 136446210;
          v35 = "[SSPurchaseManager _handlePurchasesFinished:fromConnection:]";
          LODWORD(v27) = 12;
          v17 = _os_log_send_and_compose_impl();
          if (v17)
          {
            v18 = v17;
            v19 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v34, v27}];
            free(v18);
            SSFileLog(v12, @"%@", v20, v21, v22, v23, v24, v25, v19);
          }
        }
      }

      v26 = SSXPCCreateMessageDictionary(101);
      SSXPCDictionarySetCFObject(v26, "1", self->_managerIdentifier);
      xpc_dictionary_set_value(v26, "2", v7);
      [-[SSPurchaseManager _requestConnection](self "_requestConnection")];
      xpc_release(v26);
    }

    xpc_release(v7);
    _Block_object_dispose(&v30, 8);
  }
}

uint64_t __61__SSPurchaseManager__handlePurchasesFinished_fromConnection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1DA6E0380](a3) == MEMORY[0x1E69E9E80])
  {
    v5 = [[SSPurchaseResponse alloc] initWithXPCEncoding:a3];
    if (v5)
    {
      v6 = v5;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _shouldInvalidateSubscriptionStatusForPurchaseResponse:v5];
      }

      xpc_array_set_int64(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, [[(SSPurchaseResponse *)v6 purchase] uniqueIdentifier]);
      [*(a1 + 48) addObject:v6];
    }
  }

  return 1;
}

- (id)_newEncodedArrayWithPurchaseIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = xpc_array_create(0, 0);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [identifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(identifiers);
        }

        xpc_array_set_int64(v4, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v10 + 1) + 8 * v8++) uniqueIdentifier]);
      }

      while (v6 != v8);
      v6 = [identifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_newEncodedArrayWithPurchases:(id)purchases
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = xpc_array_create(0, 0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [purchases countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(purchases);
        }

        copyXPCEncoding = [*(*(&v12 + 1) + 8 * v8) copyXPCEncoding];
        if (copyXPCEncoding)
        {
          v10 = copyXPCEncoding;
          xpc_array_append_value(v4, copyXPCEncoding);
          xpc_release(v10);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [purchases countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_reconnectForDaemonLaunch
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SSPurchaseManager__reconnectForDaemonLaunch__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_resultForReply:(id)reply error:(id *)error
{
  if (reply == MEMORY[0x1E69E9E18])
  {
    v6 = 121;
LABEL_6:
    v7 = SSError(@"SSErrorDomain", v6, 0, 0);
    v8 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!reply || MEMORY[0x1DA6E0380](reply, a2) != MEMORY[0x1E69E9E80])
  {
    v6 = 111;
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(reply, "1")}];
  v8 = xpc_dictionary_get_BOOL(reply, "0");
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v8)
  {
    *error = v7;
  }

LABEL_9:
  v9 = v7;
  return v8;
}

- (void)_sendCompletionBlock:(id)block forGetPurchasesReply:(id)reply
{
  if (block)
  {
    v13 = 0;
    if ([(SSPurchaseManager *)self _resultForReply:reply error:&v13]&& (value = xpc_dictionary_get_value(reply, "2")) != 0 && (v8 = value, MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9E50]))
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __63__SSPurchaseManager__sendCompletionBlock_forGetPurchasesReply___block_invoke;
      applier[3] = &unk_1E84AD708;
      applier[4] = v9;
      xpc_array_apply(v8, applier);
    }

    else
    {
      v9 = 0;
    }

    completionBlockQueue = self->_completionBlockQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SSPurchaseManager__sendCompletionBlock_forGetPurchasesReply___block_invoke_2;
    block[3] = &unk_1E84AD618;
    block[4] = v9;
    block[5] = v13;
    block[6] = block;
    dispatch_async(completionBlockQueue, block);
  }
}

uint64_t __63__SSPurchaseManager__sendCompletionBlock_forGetPurchasesReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[SSPurchase alloc] initWithXPCEncoding:a3];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

- (void)_sendCompletionBlock:(id)block forStandardReply:(id)reply
{
  if (block)
  {
    v10 = 0;
    v6 = [(SSPurchaseManager *)self _resultForReply:reply error:&v10];
    completionBlockQueue = self->_completionBlockQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__SSPurchaseManager__sendCompletionBlock_forStandardReply___block_invoke;
    v8[3] = &unk_1E84B1C08;
    v9 = v6;
    v8[4] = v10;
    v8[5] = block;
    dispatch_async(completionBlockQueue, v8);
  }
}

- (void)_sendMessage:(int64_t)message withPurchaseIdentifiers:(id)identifiers afterPurchase:(id)purchase completionBlock:(id)block
{
  v10 = SSXPCCreateMessageDictionary(message);
  SSXPCDictionarySetCFObject(v10, "1", self->_managerIdentifier);
  if (purchase)
  {
    xpc_dictionary_set_int64(v10, "3", [purchase uniqueIdentifier]);
  }

  v11 = [(SSPurchaseManager *)self _newEncodedArrayWithPurchaseIdentifiers:identifiers];
  xpc_dictionary_set_value(v10, "2", v11);
  xpc_release(v11);
  v12 = [SSWeakReference weakReferenceWithObject:self];
  _requestConnection = [(SSPurchaseManager *)self _requestConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__SSPurchaseManager__sendMessage_withPurchaseIdentifiers_afterPurchase_completionBlock___block_invoke;
  v14[3] = &unk_1E84AFB40;
  v14[4] = v12;
  v14[5] = block;
  [_requestConnection sendMessage:v10 withReply:v14];
  xpc_release(v10);
}

uint64_t __88__SSPurchaseManager__sendMessage_withPurchaseIdentifiers_afterPurchase_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  return [v4 _sendCompletionBlock:v5 forStandardReply:a2];
}

- (void)_sendMessage:(int64_t)message withPurchases:(id)purchases afterPurchase:(id)purchase completionBlock:(id)block
{
  v10 = SSXPCCreateMessageDictionary(message);
  SSXPCDictionarySetCFObject(v10, "1", self->_managerIdentifier);
  if (purchase)
  {
    xpc_dictionary_set_int64(v10, "3", [purchase uniqueIdentifier]);
  }

  v11 = [(SSPurchaseManager *)self _newEncodedArrayWithPurchases:purchases];
  xpc_dictionary_set_value(v10, "2", v11);
  xpc_release(v11);
  v12 = [SSWeakReference weakReferenceWithObject:self];
  _requestConnection = [(SSPurchaseManager *)self _requestConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__SSPurchaseManager__sendMessage_withPurchases_afterPurchase_completionBlock___block_invoke;
  v14[3] = &unk_1E84AFB40;
  v14[4] = v12;
  v14[5] = block;
  [_requestConnection sendMessage:v10 withReply:v14];
  xpc_release(v10);
}

uint64_t __78__SSPurchaseManager__sendMessage_withPurchases_afterPurchase_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  return [v4 _sendCompletionBlock:v5 forStandardReply:a2];
}

- (BOOL)_shouldInvalidateSubscriptionStatusForPurchaseResponse:(id)response
{
  if ([response error])
  {
    return 0;
  }

  purchase = [response purchase];
  v6 = [objc_msgSend(purchase "requestProperties")];
  if (v6)
  {
    if (![v6 isEqualToString:@"buyProduct"])
    {
      return 0;
    }
  }

  buyParameters = [purchase buyParameters];
  if (!buyParameters)
  {
    return 0;
  }

  return [buyParameters containsString:@"STDQ"];
}

@end