@interface SSDownloadHandler
- (BOOL)_sendAuthenticationSessionWithMessage:(id)message;
- (BOOL)_sendSessionCancelWithMessage:(id)message;
- (BOOL)_sendSessionHandleWithMessage:(id)message;
- (BOOL)_sendSessionPauseWithMessage:(id)message;
- (BOOL)sessionsNeedPowerAssertion;
- (BOOL)sessionsShouldBlockOtherDownloads;
- (NSArray)downloadPhasesToIgnore;
- (SSDownloadHandler)init;
- (SSDownloadHandlerDelegate)delegate;
- (id)_controlConnection;
- (id)_newSessionWithMessage:(id)message;
- (id)description;
- (void)_connectToDaemon;
- (void)_handleMessage:(id)message fromServerConnection:(id)connection;
- (void)_sendDisconnectMessage;
- (void)_setValue:(id)value forProperty:(const char *)property;
- (void)dealloc;
- (void)resetDisavowedSessions;
- (void)setDelegate:(id)delegate;
- (void)setDownloadPhasesToIgnore:(id)ignore;
- (void)setSessionsNeedPowerAssertion:(BOOL)assertion;
- (void)setSessionsShouldBlockOtherDownloads:(BOOL)downloads;
@end

@implementation SSDownloadHandler

- (SSDownloadHandler)init
{
  v11.receiver = self;
  v11.super_class = SSDownloadHandler;
  v2 = [(SSDownloadHandler *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_sessionsNeedPowerAssertion = 257;
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.storeservices.SSDownloadHandler.%p", v2];
    v3->_dispatchQueue = dispatch_queue_create([v4 UTF8String], 0);

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.storeservices.SSDownloadHandler.delegate.%p", v3];
    v3->_delegateQueue = dispatch_queue_create([v5 UTF8String], 0);

    v6 = CFUUIDCreate(0);
    v3->_handlerID = *&CFUUIDGetUUIDBytes(v6);
    CFRelease(v6);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __DaemonLaunchNotification_0, @"com.apple.iTunesStore.daemon.launched", 0, CFNotificationSuspensionBehaviorCoalesce);
    dispatchQueue = v3->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__SSDownloadHandler_init__block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = v3;
    dispatch_async(dispatchQueue, block);
  }

  return v3;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__SSDownloadHandler_dealloc__block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
    dispatch_release(self->_dispatchQueue);
  }

  v6.receiver = self;
  v6.super_class = SSDownloadHandler;
  [(SSDownloadHandler *)&v6 dealloc];
}

void __28__SSDownloadHandler_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setMessageBlock:0];

  v2 = *(*(a1 + 32) + 8);
}

- (SSDownloadHandlerDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__SSDownloadHandler_delegate__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __29__SSDownloadHandler_delegate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSArray)downloadPhasesToIgnore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSDownloadHandler_downloadPhasesToIgnore__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __43__SSDownloadHandler_downloadPhasesToIgnore__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)resetDisavowedSessions
{
  v20 = *MEMORY[0x1E69E9840];
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
      v18 = 136446210;
      v19 = "[SSDownloadHandler resetDisavowedSessions]";
      LODWORD(v17) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v18, v17}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v16, "0", 40);
  xpc_dictionary_set_int64(v16, "1", self->_handlerID);
  [(SSXPCConnection *)self->_controlConnection sendMessage:v16];
  xpc_release(v16);
}

- (BOOL)sessionsNeedPowerAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSDownloadHandler_sessionsNeedPowerAssertion__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)sessionsShouldBlockOtherDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SSDownloadHandler_sessionsShouldBlockOtherDownloads__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDelegate:(id)delegate
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSDownloadHandler_setDelegate___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = delegate;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setDownloadPhasesToIgnore:(id)ignore
{
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SSDownloadHandler_setDownloadPhasesToIgnore___block_invoke;
  v8[3] = &unk_1E84AC458;
  v8[4] = self;
  v8[5] = ignore;
  dispatch_sync(dispatchQueue, v8);
  if (ignore)
  {
    v6 = SSXPCCreateXPCObjectFromCFObject(ignore);
  }

  else
  {
    v6 = xpc_null_create();
  }

  v7 = v6;
  [(SSDownloadHandler *)self _setValue:v6 forProperty:"1"];
  xpc_release(v7);
}

uint64_t __47__SSDownloadHandler_setDownloadPhasesToIgnore___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 40);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 40) = result;
  }

  return result;
}

- (void)setSessionsNeedPowerAssertion:(BOOL)assertion
{
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSDownloadHandler_setSessionsNeedPowerAssertion___block_invoke;
  v7[3] = &unk_1E84AD498;
  v7[4] = self;
  assertionCopy = assertion;
  dispatch_sync(dispatchQueue, v7);
  v6 = xpc_BOOL_create(assertion);
  [(SSDownloadHandler *)self _setValue:v6 forProperty:"0"];
  xpc_release(v6);
}

- (void)setSessionsShouldBlockOtherDownloads:(BOOL)downloads
{
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SSDownloadHandler_setSessionsShouldBlockOtherDownloads___block_invoke;
  v7[3] = &unk_1E84AD498;
  v7[4] = self;
  downloadsCopy = downloads;
  dispatch_sync(dispatchQueue, v7);
  v6 = xpc_BOOL_create(downloads);
  [(SSDownloadHandler *)self _setValue:v6 forProperty:"2"];
  xpc_release(v6);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSDownloadHandler_description__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __32__SSDownloadHandler_description__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4.receiver = *(a1 + 32);
  v4.super_class = SSDownloadHandler;
  result = [v2 initWithFormat:@"%@: Blocks: %d, Ignores: (%@)", objc_msgSendSuper2(&v4, sel_description), *(*(a1 + 32) + 65), *(*(a1 + 32) + 40)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_connectToDaemon
{
  v43 = *MEMORY[0x1E69E9840];
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
      v39 = 136446210;
      v40 = "[SSDownloadHandler _connectToDaemon]";
      LODWORD(v36) = 12;
      v35 = &v39;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v39, v36}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  v16 = [SSWeakReference weakReferenceWithObject:self, v35];
  if (!self->_controlConnection)
  {
    v17 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    self->_controlConnection = v17;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __37__SSDownloadHandler__connectToDaemon__block_invoke;
    v38[3] = &unk_1E84AC408;
    v38[4] = v16;
    [(SSXPCConnection *)v17 setDisconnectBlock:v38];
  }

  if (!self->_observerConnection)
  {
    v18 = objc_alloc_init(SSXPCConnection);
    self->_observerConnection = v18;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __37__SSDownloadHandler__connectToDaemon__block_invoke_2;
    v37[3] = &unk_1E84B0848;
    v37[4] = v16;
    [(SSXPCConnection *)v18 setMessageBlock:v37];
  }

  v19 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = shouldLog2 | 2;
  }

  else
  {
    v21 = shouldLog2;
  }

  if (!os_log_type_enabled([v19 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v21 &= 2u;
  }

  if (v21)
  {
    v22 = objc_opt_class();
    handlerID = self->_handlerID;
    v39 = 138412546;
    v40 = v22;
    v41 = 2048;
    v42 = handlerID;
    LODWORD(v36) = 22;
    v24 = _os_log_send_and_compose_impl();
    if (v24)
    {
      v25 = v24;
      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v39, v36}];
      free(v25);
      SSFileLog(v19, @"%@", v27, v28, v29, v30, v31, v32, v26);
    }
  }

  v33 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v33, "0", 3);
  xpc_dictionary_set_int64(v33, "1", self->_handlerID);
  xpc_dictionary_set_BOOL(v33, "3", self->_sessionsShouldBlockOtherDownloads);
  SSXPCDictionarySetCFObject(v33, "4", self->_downloadPhasesToIgnore);
  xpc_dictionary_set_BOOL(v33, "5", self->_sessionsNeedPowerAssertion);
  createXPCEndpoint = [(SSXPCConnection *)self->_observerConnection createXPCEndpoint];
  xpc_dictionary_set_value(v33, "2", createXPCEndpoint);
  xpc_release(createXPCEndpoint);
  [(SSXPCConnection *)self->_controlConnection sendMessage:v33];
  xpc_release(v33);
}

uint64_t __37__SSDownloadHandler__connectToDaemon__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];

  return [v1 _sendDisconnectMessage];
}

uint64_t __37__SSDownloadHandler__connectToDaemon__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) object];

  return [v5 _handleMessage:a2 fromServerConnection:a3];
}

- (id)_controlConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSDownloadHandler__controlConnection__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __39__SSDownloadHandler__controlConnection__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_handleMessage:(id)message fromServerConnection:(id)connection
{
  xpc_retain(message);
  xpc_retain(connection);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSDownloadHandler__handleMessage_fromServerConnection___block_invoke;
  block[3] = &unk_1E84AD640;
  block[4] = message;
  block[5] = self;
  block[6] = connection;
  dispatch_async(dispatchQueue, block);
}

void __57__SSDownloadHandler__handleMessage_fromServerConnection___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "0");
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

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = *(*(a1 + 40) + 48);
    v25 = 138412802;
    v26 = v6;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = int64;
    LODWORD(v21) = 32;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v25, v21}];
      free(v9);
      SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v10);
    }
  }

  if ((int64 - 1000) <= 5 && ((1 << (int64 + 24)) & 0x27) != 0)
  {
    xpc_retain(*(a1 + 32));
    xpc_retain(*(a1 + 48));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(*(a1 + 40) + 24);
    block[2] = __57__SSDownloadHandler__handleMessage_fromServerConnection___block_invoke_27;
    block[3] = &unk_1E84B0870;
    block[4] = v17;
    v24 = int64;
    v23 = v18;
    dispatch_async(v19, block);
  }

  else if (int64)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    xpc_connection_send_message(*(a1 + 48), reply);
    xpc_release(reply);
  }

  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 48));
}

void __57__SSDownloadHandler__handleMessage_fromServerConnection___block_invoke_27(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v3 = 0;
  v4 = *(a1 + 56);
  if (v4 > 1001)
  {
    if (v4 == 1002)
    {
      v5 = [*(a1 + 40) _sendSessionPauseWithMessage:*(a1 + 32)];
    }

    else
    {
      if (v4 != 1005)
      {
        goto LABEL_11;
      }

      v5 = [*(a1 + 40) _sendAuthenticationSessionWithMessage:*(a1 + 32)];
    }
  }

  else if (v4 == 1000)
  {
    v5 = [*(a1 + 40) _sendSessionHandleWithMessage:*(a1 + 32)];
  }

  else
  {
    if (v4 != 1001)
    {
      goto LABEL_11;
    }

    v5 = [*(a1 + 40) _sendSessionCancelWithMessage:*(a1 + 32)];
  }

  v3 = v5;
LABEL_11:
  xpc_dictionary_set_BOOL(reply, "0", v3);
  xpc_connection_send_message(*(a1 + 48), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  v6 = *(a1 + 48);

  xpc_release(v6);
}

- (id)_newSessionWithMessage:(id)message
{
  v5 = [SSDownloadHandlerSession alloc];
  _controlConnection = [(SSDownloadHandler *)self _controlConnection];

  return [(SSDownloadHandlerSession *)v5 _initWithMessage:message controlConnection:_controlConnection];
}

- (BOOL)_sendAuthenticationSessionWithMessage:(id)message
{
  delegate = [(SSDownloadHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [(SSDownloadSession *)[SSDownloadAuthenticationSession alloc] _initWithMessage:message controlConnection:[(SSDownloadHandler *)self _controlConnection]];
    selfCopy = self;
    [(SSDownloadHandlerDelegate *)delegate downloadHandler:self handleAuthenticationSession:v7];
  }

  return v6 & 1;
}

- (void)_sendDisconnectMessage
{
  delegate = [(SSDownloadHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;

    [(SSDownloadHandlerDelegate *)delegate downloadHandlerDidDisconnect:self];
  }
}

- (BOOL)_sendSessionCancelWithMessage:(id)message
{
  delegate = [(SSDownloadHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [(SSDownloadHandler *)self _newSessionWithMessage:message];
    selfCopy = self;
    [(SSDownloadHandlerDelegate *)delegate downloadHandler:self cancelSession:v7];
  }

  return v6 & 1;
}

- (BOOL)_sendSessionHandleWithMessage:(id)message
{
  delegate = [(SSDownloadHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [(SSDownloadHandler *)self _newSessionWithMessage:message];
    selfCopy = self;
    [(SSDownloadHandlerDelegate *)delegate downloadHandler:self handleSession:v7];
  }

  return v6 & 1;
}

- (BOOL)_sendSessionPauseWithMessage:(id)message
{
  delegate = [(SSDownloadHandler *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [(SSDownloadHandler *)self _newSessionWithMessage:message];
  selfCopy = self;
  v8 = [(SSDownloadHandlerDelegate *)delegate downloadHandler:self pauseSession:v6];

  return v8;
}

- (void)_setValue:(id)value forProperty:(const char *)property
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

    if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_FAULT))
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
      v24 = "[SSDownloadHandler _setValue:forProperty:]";
      LODWORD(v22) = 12;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v23, v22}];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v20, "0", 31);
  xpc_dictionary_set_int64(v20, "1", self->_handlerID);
  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v21, property, value);
  xpc_dictionary_set_value(v20, "2", v21);
  xpc_release(v21);
  [(SSXPCConnection *)self->_controlConnection sendMessage:v20];
  xpc_release(v20);
}

@end