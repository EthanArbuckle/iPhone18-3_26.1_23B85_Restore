@interface NetDiagnosticsShim
- (BOOL)netDiagnosticTaskStatusWithReply:(id)reply;
- (BOOL)startNetDiagnosticTaskWithOptions:(id)options reply:(id)reply;
- (BOOL)stopNetDiagnosticTaskWithReply:(id)reply;
- (NetDiagnosticsShim)initWithTaskName:(id)name queue:(id)queue;
- (id)_connectionForServiceNamed:(const char *)named queue:(id)queue connectionInvalidHandler:(id)handler;
- (id)createNotificationListener;
- (void)connectToNetDiagnosticsd;
- (void)dealloc;
- (void)invalidateConnections;
- (void)sendNotificationListener;
@end

@implementation NetDiagnosticsShim

- (NetDiagnosticsShim)initWithTaskName:(id)name queue:(id)queue
{
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  queueCopy = queue;
  v31.receiver = self;
  v31.super_class = NetDiagnosticsShim;
  v9 = [(NetDiagnosticsShim *)&v31 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v9->_taskName, name);
  if (!queueCopy)
  {
    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Passing in a nil queue to NetDiagnosticsShim is NOT recommended!!!", buf, 2u);
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.symptoms.%@.netdiag.msg.queue", nameCopy];
    nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.symptoms.%@.netdiag.msg.queue", nameCopy];
    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v17 = dispatch_queue_create([nameCopy UTF8String], v16);
    netDiagMsgQueue = v10->_netDiagMsgQueue;
    v10->_netDiagMsgQueue = v17;

    if (v10->_netDiagMsgQueue)
    {
      v19 = dispatch_queue_create([nameCopy2 UTF8String], v16);
      netDiagConnQueue = v10->_netDiagConnQueue;
      v10->_netDiagConnQueue = v19;

      if (v10->_netDiagConnQueue)
      {

LABEL_23:
        goto LABEL_24;
      }

      v26 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v27 = nameCopy2;
      v23 = v26;
      uTF8String = [nameCopy2 UTF8String];
      *buf = 136315138;
      v33 = uTF8String;
      v25 = "Couldn't create _netDiagConnQueue %s";
    }

    else
    {
      v21 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        goto LABEL_22;
      }

      v22 = nameCopy;
      v23 = v21;
      uTF8String2 = [nameCopy UTF8String];
      *buf = 136315138;
      v33 = uTF8String2;
      v25 = "Couldn't create _netDiagMsgQueue for %s";
    }

    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);

    goto LABEL_21;
  }

  objc_storeStrong(&v10->_netDiagMsgQueue, queue);
  if (!v10->_netDiagMsgQueue)
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "require non-nil _netDiagMsgQueue";
      goto LABEL_14;
    }

LABEL_15:
    nameCopy = v10;
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  objc_storeStrong(&v10->_netDiagConnQueue, queue);
  if (!v10->_netDiagConnQueue)
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "require non-nil _netDiagConnQueue";
LABEL_14:
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_24:

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)connectToNetDiagnosticsd
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_netDiagServiceConnection)
  {
    if (self->_netDiagMsgQueue)
    {
      netDiagConnQueue = self->_netDiagConnQueue;
      if (netDiagConnQueue)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __46__NetDiagnosticsShim_connectToNetDiagnosticsd__block_invoke;
        v14[3] = &unk_27898A0C8;
        v14[4] = self;
        v5 = [(NetDiagnosticsShim *)self _connectionForServiceNamed:kNetDiagXPCService[0] queue:netDiagConnQueue connectionInvalidHandler:v14];
        netDiagServiceConnection = self->_netDiagServiceConnection;
        self->_netDiagServiceConnection = v5;

        if (self->_netDiagServiceConnection)
        {
          createNotificationListener = [(NetDiagnosticsShim *)self createNotificationListener];
          netDiagNotificationListener = self->_netDiagNotificationListener;
          self->_netDiagNotificationListener = createNotificationListener;

          if (self->_netDiagNotificationListener)
          {
            [(NetDiagnosticsShim *)self sendNotificationListener];
            goto LABEL_2;
          }

          v13 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_2;
          }

          v10 = v13;
          taskName = [(NetDiagnosticsShim *)self taskName];
          *buf = 138412290;
          v16 = taskName;
          v12 = "Can't create a listener for notifications for %@";
        }

        else
        {
          v9 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_2;
          }

          v10 = v9;
          taskName = [(NetDiagnosticsShim *)self taskName];
          *buf = 138412290;
          v16 = taskName;
          v12 = "Can't connect to XPC service for %@";
        }

        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
      }
    }
  }

LABEL_2:
  v2 = *MEMORY[0x277D85DE8];
}

void __46__NetDiagnosticsShim_connectToNetDiagnosticsd__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)dealloc
{
  [(NetDiagnosticsShim *)self invalidateConnections];
  v3.receiver = self;
  v3.super_class = NetDiagnosticsShim;
  [(NetDiagnosticsShim *)&v3 dealloc];
}

- (void)invalidateConnections
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    taskName = [(NetDiagnosticsShim *)self taskName];
    v13 = 138412290;
    v14 = taskName;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "Invalidating connections (%@)", &v13, 0xCu);
  }

  netDiagServiceConnection = self->_netDiagServiceConnection;
  if (netDiagServiceConnection)
  {
    xpc_connection_cancel(netDiagServiceConnection);
    v7 = self->_netDiagServiceConnection;
    self->_netDiagServiceConnection = 0;
  }

  netDiagNotificationConnection = self->_netDiagNotificationConnection;
  if (netDiagNotificationConnection)
  {
    xpc_connection_cancel(netDiagNotificationConnection);
    v9 = self->_netDiagNotificationConnection;
    self->_netDiagNotificationConnection = 0;
  }

  netDiagNotificationListener = self->_netDiagNotificationListener;
  if (netDiagNotificationListener)
  {
    xpc_connection_cancel(netDiagNotificationListener);
    v11 = self->_netDiagNotificationListener;
    self->_netDiagNotificationListener = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)startNetDiagnosticTaskWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"taskName"];
    if ([v9 UTF8String] && *objc_msgSend(v9, "UTF8String"))
    {
      xpc_dictionary_set_string(v8, kNetDiagCommand[0], kNetDiagCmdTaskRun[0]);
      xpc_dictionary_set_string(v8, kNetDiagKey[0], [v9 UTF8String]);
      v10 = [optionsCopy objectForKeyedSubscript:@"filename"];
      if ([v10 UTF8String] && *objc_msgSend(v10, "UTF8String"))
      {
        xpc_dictionary_set_string(v8, kNetDiagTaskFilePath[0], [v10 UTF8String]);
      }

      v11 = [optionsCopy objectForKeyedSubscript:@"taskFileUserID"];
      v12 = v11;
      if (v11)
      {
        xpc_dictionary_set_int64(v8, kNetDiagTaskFileUserID[0], [v11 longLongValue]);
      }

      v13 = [optionsCopy objectForKeyedSubscript:@"taskFileGroupID"];
      v14 = v13;
      if (v13)
      {
        xpc_dictionary_set_int64(v8, kNetDiagTaskFileGroupID[0], [v13 longLongValue]);
      }

      v15 = [optionsCopy objectForKeyedSubscript:@"taskFileMode"];
      v16 = v15;
      if (v15)
      {
        xpc_dictionary_set_int64(v8, kNetDiagTaskFileMode[0], [v15 longLongValue]);
      }

      v17 = [optionsCopy objectForKeyedSubscript:@"taskFileDicts"];
      v37 = v17;
      if (v17 && [v17 count])
      {
        v18 = _CFXPCCreateXPCObjectFromCFObject();
        if (v18)
        {
          xpc_dictionary_set_value(v8, kNetDiagTaskFilePaths[0], v18);
        }
      }

      v40 = v12;
      v19 = [optionsCopy objectForKeyedSubscript:@"taskGNISensitive"];
      v20 = v19;
      if (v19)
      {
        xpc_dictionary_set_BOOL(v8, kNetDiagTaskGNISensitive[0], [v19 BOOLValue]);
      }

      v39 = v14;
      v21 = [optionsCopy objectForKeyedSubscript:{@"taskGNISysConfig", v20}];
      v22 = v21;
      if (v21)
      {
        xpc_dictionary_set_BOOL(v8, kNetDiagTaskGNISysConfig[0], [v21 BOOLValue]);
      }

      v41 = v10;
      v23 = [optionsCopy objectForKeyedSubscript:@"taskGNINDFInfo"];
      v24 = v23;
      if (v23)
      {
        xpc_dictionary_set_BOOL(v8, kNetDiagTaskGNINDFInfo[0], [v23 BOOLValue]);
      }

      v25 = [optionsCopy objectForKeyedSubscript:@"taskArchiveBaseSize"];
      v26 = v25;
      if (v25)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveBaseSize[0], [v25 unsignedIntegerValue]);
      }

      v38 = v16;
      v27 = [optionsCopy objectForKeyedSubscript:@"taskArchiveBaseDuration"];

      if (v27)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveBaseDuration[0], [v27 unsignedIntegerValue]);
      }

      v28 = [optionsCopy objectForKeyedSubscript:@"taskArchiveTTLSize"];

      if (v28)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveTTLSize[0], [v28 unsignedIntegerValue]);
      }

      v29 = [optionsCopy objectForKeyedSubscript:@"taskArchiveTTLDuration"];

      if (v29)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveTTLDuration[0], [v29 unsignedIntegerValue]);
      }

      v30 = [optionsCopy objectForKeyedSubscript:@"taskArchiveHVSize"];

      if (v30)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveHVSize[0], [v30 unsignedIntegerValue]);
      }

      v31 = [optionsCopy objectForKeyedSubscript:@"taskArchiveHVDuration"];

      if (v31)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveHVDuration[0], [v31 integerValue]);
      }

      [(NetDiagnosticsShim *)self connectToNetDiagnosticsd];
      netDiagServiceConnection = self->_netDiagServiceConnection;
      netDiagMsgQueue = self->_netDiagMsgQueue;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __62__NetDiagnosticsShim_startNetDiagnosticTaskWithOptions_reply___block_invoke;
      handler[3] = &unk_2789901D8;
      v44 = replyCopy;
      v43 = v9;
      xpc_connection_send_message_with_reply(netDiagServiceConnection, v8, netDiagMsgQueue, handler);

      v34 = 1;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

void __62__NetDiagnosticsShim_startNetDiagnosticTaskWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238389170]();
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "kNetDiagCmdTaskRun failed!", buf, 2u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v15 = @"error";
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"An XPC error occurred while processing task: %@. (kNetDiagCmdTaskRun failure)", *(a1 + 32)];
      v16[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v8 errorWithDomain:v9 code:5 userInfo:v11];
      (*(v7 + 16))(v7, 0, v12);
    }
  }

  else if (v4 == MEMORY[0x277D86468] && *(a1 + 40))
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)stopNetDiagnosticTaskWithReply:(id)reply
{
  replyCopy = reply;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    xpc_dictionary_set_string(v5, kNetDiagCommand[0], kNetDiagCmdTaskStop[0]);
    xpc_dictionary_set_string(v6, kNetDiagKey[0], [(NSString *)self->_taskName UTF8String]);
    [(NetDiagnosticsShim *)self connectToNetDiagnosticsd];
    netDiagServiceConnection = self->_netDiagServiceConnection;
    netDiagMsgQueue = self->_netDiagMsgQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__NetDiagnosticsShim_stopNetDiagnosticTaskWithReply___block_invoke;
    v10[3] = &unk_2789901D8;
    v10[4] = self;
    v11 = replyCopy;
    xpc_connection_send_message_with_reply(netDiagServiceConnection, v6, netDiagMsgQueue, v10);
  }

  return v6 != 0;
}

void __53__NetDiagnosticsShim_stopNetDiagnosticTaskWithReply___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238389170]();
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "kNetDiagCmdTaskStop failed!", buf, 2u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v15 = @"error";
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stopping %@ failed!", *(*(a1 + 32) + 56)];
      v16[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v8 errorWithDomain:v9 code:5 userInfo:v11];
      (*(v7 + 16))(v7, 0, v12);
    }
  }

  else if (v4 == MEMORY[0x277D86468] && *(a1 + 40))
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)netDiagnosticTaskStatusWithReply:(id)reply
{
  replyCopy = reply;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = xpc_array_create(0, 0);
    if (v6)
    {
      v7 = xpc_string_create([(NSString *)self->_taskName UTF8String]);
      v8 = v7 != 0;
      if (v7)
      {
        xpc_array_append_value(v6, v7);
        xpc_dictionary_set_value(v5, kNetDiagKeyArray[0], v6);
        xpc_dictionary_set_string(v5, kNetDiagCommand[0], kNetDiagCmdTasksStatus[0]);
        [(NetDiagnosticsShim *)self connectToNetDiagnosticsd];
        netDiagServiceConnection = self->_netDiagServiceConnection;
        netDiagMsgQueue = self->_netDiagMsgQueue;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __55__NetDiagnosticsShim_netDiagnosticTaskStatusWithReply___block_invoke;
        v12[3] = &unk_2789901D8;
        v12[4] = self;
        v13 = replyCopy;
        xpc_connection_send_message_with_reply(netDiagServiceConnection, v5, netDiagMsgQueue, v12);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __55__NetDiagnosticsShim_netDiagnosticTaskStatusWithReply___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238389170]();
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "kNetDiagCmdTasksStatus failed!", buf, 2u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v15 = @"error";
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stopping %@ failed!", *(*(a1 + 32) + 56)];
      v16[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v8 errorWithDomain:v9 code:5 userInfo:v11];
      (*(v7 + 16))(v7, 0, v12);
    }
  }

  else if (v4 == MEMORY[0x277D86468] && *(a1 + 40))
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)createNotificationListener
{
  v3 = xpc_connection_create(0, self->_netDiagConnQueue);
  v4 = v3;
  if (v3)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__NetDiagnosticsShim_createNotificationListener__block_invoke;
    handler[3] = &unk_27898D680;
    handler[4] = self;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v4);
    v5 = v4;
  }

  else
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Couldn't create progress connection", buf, 2u);
    }
  }

  return v4;
}

void __48__NetDiagnosticsShim_createNotificationListener__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = MEMORY[0x238389170]();
  v6 = MEMORY[0x238389020](v4);
  if (v6)
  {
    free(v6);
  }

  if (v5 == MEMORY[0x277D86480])
  {
    if (v4 == MEMORY[0x277D86420])
    {
      v22 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v23 = *(a1 + 32);
      v9 = v22;
      v10 = [v23 taskName];
      *buf = 138412290;
      v27 = v10;
      v11 = "received XPC_ERROR_TERMINATION_IMMINENT for %@";
    }

    else
    {
      if (v4 != MEMORY[0x277D863F8])
      {
        goto LABEL_18;
      }

      v14 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v15 = *(a1 + 32);
      v9 = v14;
      v10 = [v15 taskName];
      *buf = 138412290;
      v27 = v10;
      v11 = "progress connection is closed for %@";
    }

    v12 = v9;
    v13 = OS_LOG_TYPE_DEBUG;
    goto LABEL_17;
  }

  if (v5 == MEMORY[0x277D86450])
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 24);
    if (v17)
    {
      xpc_connection_cancel(v17);
      v18 = *(a1 + 32);
      v19 = *(v18 + 24);
      *(v18 + 24) = 0;

      v16 = *(a1 + 32);
    }

    objc_storeStrong((v16 + 24), a2);
    xpc_connection_set_target_queue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 40));
    v20 = *(a1 + 32);
    v21 = *(v20 + 24);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__NetDiagnosticsShim_createNotificationListener__block_invoke_61;
    handler[3] = &unk_27898D680;
    handler[4] = v20;
    xpc_connection_set_event_handler(v21, handler);
    xpc_connection_resume(*(*(a1 + 32) + 24));
  }

  else
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 taskName];
      *buf = 138412290;
      v27 = v10;
      v11 = "unknown xpc_type_t for %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_INFO;
LABEL_17:
      _os_log_impl(&dword_23255B000, v12, v13, v11, buf, 0xCu);
    }
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

void __48__NetDiagnosticsShim_createNotificationListener__block_invoke_61(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238389170]();
  if (v4 != MEMORY[0x277D86468])
  {
    if (v4 != MEMORY[0x277D86480])
    {
      v5 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "unknown message type", &v22, 2u);
      }

      goto LABEL_21;
    }

    if (!*(*(a1 + 32) + 24))
    {
      goto LABEL_21;
    }

    if (v3 == MEMORY[0x277D863F0])
    {
      v19 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      v20 = *(a1 + 32);
      v11 = v19;
      v14 = [v20 taskName];
      v22 = 138412290;
      v23 = v14;
      v15 = "Interrupted connection to XPC service (%@)";
    }

    else
    {
      if (v3 != MEMORY[0x277D863F8])
      {
        goto LABEL_21;
      }

      v12 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      v13 = *(a1 + 32);
      v11 = v12;
      v14 = [v13 taskName];
      v22 = 138412290;
      v23 = v14;
      v15 = "Connection Invalid error for XPC service (%@)";
    }

    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, v15, &v22, 0xCu);

LABEL_20:
    goto LABEL_21;
  }

  string = xpc_dictionary_get_string(v3, kNetDiagNotifTaskStatusChanged[0]);
  int64 = xpc_dictionary_get_int64(v3, kNetDiagValue[0]);
  if (string)
  {
    v8 = int64;
    v9 = *(*(a1 + 32) + 48);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 32) + 48);
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    [v10 netDiagnosticTaskStatusChangedFor:v11 toStatus:v8];
    goto LABEL_20;
  }

  v16 = MEMORY[0x238389020](v3);
  if (v16)
  {
    v17 = v16;
    v18 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v22 = 136315138;
      v23 = v17;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "task_name seems to be NULL. dict: %s", &v22, 0xCu);
    }

    free(v17);
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationListener
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_string(v3, kNetDiagCommand[0], kNetDiagCmdNotifier[0]);
    xpc_dictionary_set_connection(v4, kNetDiagConnection[0], self->_netDiagNotificationListener);
    xpc_connection_send_message_with_reply(self->_netDiagServiceConnection, v4, self->_netDiagMsgQueue, &__block_literal_global_57);
  }

  else
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "xpc_dictionary_create", v6, 2u);
    }
  }
}

uint64_t __46__NetDiagnosticsShim_sendNotificationListener__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x238389020](a3);
  if (v3)
  {
    free(v3);
  }

  return 1;
}

- (id)_connectionForServiceNamed:(const char *)named queue:(id)queue connectionInvalidHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mach_service = xpc_connection_create_mach_service(named, queue, 2uLL);
  if (mach_service)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __80__NetDiagnosticsShim__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke;
    handler[3] = &unk_278990240;
    handler[4] = self;
    namedCopy = named;
    v15 = handlerCopy;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(mach_service);
    v10 = mach_service;
  }

  else
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      namedCopy2 = named;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Can't connect to XPC service: %s", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return mach_service;
}

void __80__NetDiagnosticsShim__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238389170]();
  v5 = MEMORY[0x238389020](v3);

  if (v5)
  {
    free(v5);
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (!*(a1[4] + 8))
    {
      goto LABEL_21;
    }

    if (v3 == MEMORY[0x277D863F0])
    {
      v19 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      v20 = a1[6];
      v21 = a1[4];
      v11 = v19;
      v12 = [v21 taskName];
      v28 = 136315394;
      v29 = v20;
      v30 = 2112;
      v31 = v12;
      v13 = "Interrupted connection to XPC service %s (%@)";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEBUG;
      goto LABEL_7;
    }

    v16 = debuggabilityLogHandle;
    if (v3 != MEMORY[0x277D863F8])
    {
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v17 = a1[6];
      v18 = a1[4];
      v11 = v16;
      v12 = [v18 taskName];
      v28 = 136315394;
      v29 = v17;
      v30 = 2112;
      v31 = v12;
      v13 = "Unexpected error for XPC service %s (%@)";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v22 = a1[6];
      v23 = a1[4];
      v24 = v16;
      v25 = [v23 taskName];
      v28 = 136315394;
      v29 = v22;
      v30 = 2112;
      v31 = v25;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Connection Invalid error for XPC service %s (%@)", &v28, 0x16u);
    }

    v26 = a1[5];
    if (v26)
    {
      (*(v26 + 16))();
    }
  }

  else
  {
    v6 = MEMORY[0x277D86468];
    v7 = debuggabilityLogHandle;
    v8 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
    if (v4 == v6)
    {
      if (v8)
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Received XPC_TYPE_DICTIONARY", &v28, 2u);
      }
    }

    else if (v8)
    {
      v9 = a1[6];
      v10 = a1[4];
      v11 = v7;
      v12 = [v10 taskName];
      v28 = 136315394;
      v29 = v9;
      v30 = 2112;
      v31 = v12;
      v13 = "Received unexpected event for XPC service %s (%@)";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_23255B000, v14, v15, v13, &v28, 0x16u);
    }
  }

LABEL_21:
  v27 = *MEMORY[0x277D85DE8];
}

@end