@interface UBUnblockService
+ (id)sharedInstance;
- (UBUnblockService)init;
- (id)_init;
- (id)handleReactiveRecoveryRequest:(id)a3;
- (int)setupAndActivate:(unint64_t)a3;
- (void)dealloc;
- (void)handleIncomingMessage:(id)a3;
- (void)init;
- (void)openListenerConnection;
@end

@implementation UBUnblockService

- (void)openListenerConnection
{
  if (self->_listenerConnection)
  {
    v2 = *__error();
    v3 = _ublogt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270397000, v3, OS_LOG_TYPE_DEFAULT, "The listener connection to com.apple.unblock is already up and active.", buf, 2u);
    }

LABEL_12:

    *__error() = v2;
    return;
  }

  v5 = dispatch_workloop_create("com.apple.unblock.workloop");
  workloop = self->_workloop;
  self->_workloop = v5;

  v7 = self->_workloop;
  if (!v7)
  {
    v2 = *__error();
    v3 = _ublogt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockService(XPCHandling) openListenerConnection];
    }

    goto LABEL_12;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.unblock", v7, 1uLL);
  listenerConnection = self->_listenerConnection;
  self->_listenerConnection = mach_service;

  if (!self->_listenerConnection)
  {
    v13 = *__error();
    v14 = _ublogt();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockService(XPCHandling) openListenerConnection];
    }

    *__error() = v13;
    goto LABEL_16;
  }

  if (xpc_connection_set_peer_entitlement_matches_value_requirement())
  {
    v10 = *__error();
    v11 = _ublogt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockService(XPCHandling) openListenerConnection];
    }

    *__error() = v10;
    xpc_connection_cancel(self->_listenerConnection);
    v12 = self->_listenerConnection;
    self->_listenerConnection = 0;

LABEL_16:
    v15 = self->_workloop;
    self->_workloop = 0;

    return;
  }

  v16 = self->_listenerConnection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__UBUnblockService_XPCHandling__openListenerConnection__block_invoke;
  handler[3] = &unk_279E02D88;
  handler[4] = self;
  xpc_connection_set_event_handler(v16, handler);
  v17 = *__error();
  v18 = _ublogt();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270397000, v18, OS_LOG_TYPE_DEFAULT, "Resuming com.apple.unblock listener connection", buf, 2u);
  }

  *__error() = v17;
  xpc_connection_resume(self->_listenerConnection);
}

- (id)handleReactiveRecoveryRequest:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  length = 0;
  data = xpc_dictionary_get_data(v3, "UBStuckServicesDataKey", &length);
  if (data)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
    v41 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v6 error:&v41];
    v8 = v41;
    if (v8)
    {
      v9 = v8;
      v10 = *__error();
      v11 = _ublogt();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockService(XPCHandling) handleReactiveRecoveryRequest:];
      }

      v12 = 0;
      *__error() = v10;
    }

    else
    {
      v40 = 0;
      v15 = xpc_dictionary_get_data(v3, "UBStackshotDataKey", &v40);
      if (!v15)
      {
        v16 = *__error();
        v17 = _ublogt();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270397000, v17, OS_LOG_TYPE_DEFAULT, "Received NULL stackshot data. A new live stackshot will be taken", buf, 2u);
        }

        *__error() = v16;
      }

      string = xpc_dictionary_get_string(v3, "UBClientName");
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = v19;
      if (string)
      {
        v21 = [v19 initWithUTF8String:string];
      }

      else
      {
        v22 = xpc_dictionary_get_remote_connection(v3);
        v21 = [v20 initWithFormat:@"pid [%d]", xpc_connection_get_pid(v22)];
      }

      v23 = [[UBUnblockReactiveRecovery alloc] initForStuckServices:v7 clientName:v21];
      v24 = v23;
      if (v15)
      {
        [v23 useStackshotBuffer:v15 size:v40];
      }

      v38 = 0;
      v25 = [v24 recover:0 error:&v38];
      v9 = v38;
      if (v25)
      {
        v37 = v9;
        v34 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v37];
        v26 = v37;

        if (v26)
        {
          bytes = v21;
          v27 = *__error();
          v28 = _ublogt();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [UBUnblockService(XPCHandling) handleReactiveRecoveryRequest:];
          }

          v12 = 0;
          *__error() = v27;
          v21 = bytes;
        }

        else
        {
          reply = xpc_dictionary_create_reply(v3);
          v12 = reply;
          if (reply)
          {
            xpc_dictionary_set_int64(reply, "UBResultKey", 0);
            xpc_dictionary_set_data(v12, "UBStuckServicesResultsDataKey", [v34 bytes], objc_msgSend(v34, "length"));
            v32 = v12;
          }
        }

        v9 = v26;
      }

      else
      {
        bytesa = v21;
        v29 = *__error();
        v30 = _ublogt();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [UBUnblockService(XPCHandling) handleReactiveRecoveryRequest:];
        }

        v12 = 0;
        *__error() = v29;
        v21 = bytesa;
      }
    }
  }

  else
  {
    v13 = *__error();
    v14 = _ublogt();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockService(XPCHandling) handleReactiveRecoveryRequest:];
    }

    v12 = 0;
    *__error() = v13;
  }

  objc_autoreleasePoolPop(v4);

  return v12;
}

- (void)handleIncomingMessage:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = *__error();
  v7 = _ublogt();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockService(XPCHandling) handleIncomingMessage:];
  }

  *__error() = v6;
  if (xpc_dictionary_get_uint64(v4, "UBRequestKey") == 1)
  {
    if (self->_options)
    {
      v11 = *__error();
      v12 = _ublogt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockService(XPCHandling) handleIncomingMessage:];
      }

      *__error() = v11;
    }

    else
    {
      reply = [(UBUnblockService *)self handleReactiveRecoveryRequest:v4];
      if (reply)
      {
LABEL_14:
        v13 = xpc_dictionary_get_remote_connection(v4);
        xpc_connection_send_message(v13, reply);

        goto LABEL_15;
      }
    }

    reply = xpc_dictionary_create_reply(v4);
    xpc_dictionary_set_int64(reply, "UBResultKey", -1);
    goto LABEL_14;
  }

  v9 = *__error();
  v10 = _ublogt();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [UBUnblockService(XPCHandling) handleIncomingMessage:];
  }

  *__error() = v9;
LABEL_15:
  objc_autoreleasePoolPop(v5);
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UBUnblockService sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = UBUnblockService;
  v2 = [(UBUnblockService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    listenerConnection = v2->_listenerConnection;
    v2->_listenerConnection = 0;

    workloop = v3->_workloop;
    v3->_workloop = 0;
  }

  return v3;
}

- (UBUnblockService)init
{
  v3 = *__error();
  v4 = _ublogt();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [UBUnblockService init];
  }

  *__error() = v3;
  return 0;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  listenerConnection = self->_listenerConnection;
  if (listenerConnection)
  {
    v4 = *__error();
    v5 = _ublogt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270397000, v5, OS_LOG_TYPE_DEFAULT, "Canceling com.apple.unblock listener xpc connection.", buf, 2u);
    }

    *__error() = v4;
    xpc_connection_cancel(self->_listenerConnection);
    listenerConnection = self->_listenerConnection;
  }

  self->_listenerConnection = 0;

  workloop = self->_workloop;
  self->_workloop = 0;

  os_unfair_lock_unlock(&self->_lock);
  v7.receiver = self;
  v7.super_class = UBUnblockService;
  [(UBUnblockService *)&v7 dealloc];
}

- (int)setupAndActivate:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_options = a3;
  [(UBUnblockService *)self openListenerConnection];
  listenerConnection = self->_listenerConnection;
  os_unfair_lock_unlock(&self->_lock);
  if (listenerConnection)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)init
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end