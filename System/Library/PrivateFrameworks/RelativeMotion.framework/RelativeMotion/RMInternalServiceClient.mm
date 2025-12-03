@interface RMInternalServiceClient
- (RMInternalServiceClient)initWithQueue:(id)queue;
- (void)disconnectAllClientsWithReply:(id)reply;
- (void)disconnectClient:(id)client withReply:(id)reply;
- (void)getNumClientsWithReply:(id)reply;
- (void)handleSpiIncomingMessage:(id)message data:(id)data replyBlock:(id)block;
- (void)invalidate;
- (void)listClientsWithReply:(id)reply;
- (void)parseSpiErrorReply:(id)reply forMessage:(id)message;
@end

@implementation RMInternalServiceClient

- (RMInternalServiceClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = RMInternalServiceClient;
  v5 = [(RMInternalServiceClient *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(RMInternalServiceClient *)v5 setQueue:queueCopy];
    v7 = [RMConnectionClient alloc];
    queue = [(RMInternalServiceClient *)v6 queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__RMInternalServiceClient_initWithQueue___block_invoke;
    v14[3] = &unk_279AF54B0;
    v9 = v6;
    v15 = v9;
    v10 = [(RMConnectionClient *)&v7->super.isa initWithQueue:queue serviceName:@"com.apple.relatived.internal" messageHandler:v14];
    [(RMInternalServiceClient *)v9 setSpiClient:v10];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__RMInternalServiceClient_initWithQueue___block_invoke_2;
    v12[3] = &unk_279AF5258;
    v13 = v9;
    dispatch_async(queueCopy, v12);
  }

  return v6;
}

void __41__RMInternalServiceClient_initWithQueue___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) spiClient];
  [(RMConnectionClient *)v1 connect];
}

- (void)invalidate
{
  queue = [(RMInternalServiceClient *)self queue];
  dispatch_assert_queue_V2(queue);

  spiClient = [(RMInternalServiceClient *)self spiClient];
  [(RMConnectionClient *)spiClient invalidate];

  [(RMInternalServiceClient *)self setSpiClient:0];
}

- (void)handleSpiIncomingMessage:(id)message data:(id)data replyBlock:(id)block
{
  v5 = [(RMInternalServiceClient *)self queue:message];
  dispatch_assert_queue_V2(v5);
}

- (void)parseSpiErrorReply:(id)reply forMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  messageCopy = message;
  if (replyCopy)
  {
    v12 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:replyCopy error:&v12];
    v8 = v12;
    if (v7)
    {
      if (onceToken_InternalService_Default != -1)
      {
        [RMInternalServiceClient parseSpiErrorReply:forMessage:];
      }

      v9 = logObject_InternalService_Default;
      if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = messageCopy;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_261A9A000, v9, OS_LOG_TYPE_ERROR, "Error recived to SPI %@: %@", buf, 0x16u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

  if (onceToken_InternalService_Default != -1)
  {
    [RMInternalServiceClient parseSpiErrorReply:forMessage:];
  }

  v10 = logObject_InternalService_Default;
  if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_261A9A000, v10, OS_LOG_TYPE_ERROR, "Can't unarchive the SPI error data: %@", buf, 0xCu);
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getNumClientsWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(RMInternalServiceClient *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RMInternalServiceClient_getNumClientsWithReply___block_invoke;
  v7[3] = &unk_279AF5500;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __50__RMInternalServiceClient_getNumClientsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) spiClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__RMInternalServiceClient_getNumClientsWithReply___block_invoke_2;
  v4[3] = &unk_279AF54D8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [(RMConnectionClient *)v2 sendMessage:0 withData:v4 reply:?];
}

void __50__RMInternalServiceClient_getNumClientsWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 isEqualToString:@"RMSpiError"])
  {
    if (v5)
    {
      [*(a1 + 32) parseSpiErrorReply:v5 forMessage:@"RMSpiGetNumClients"];
    }

LABEL_11:
    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  if (!v5)
  {
    if (onceToken_InternalService_Default != -1)
    {
      __50__RMInternalServiceClient_getNumClientsWithReply___block_invoke_2_cold_2();
    }

    v9 = logObject_InternalService_Default;
    if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_261A9A000, v9, OS_LOG_TYPE_ERROR, "No data in getNumClients reply", buf, 2u);
    }

    goto LABEL_11;
  }

  v12 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v6 integerValue]);
  }

  else
  {
    if (v7)
    {
      if (onceToken_InternalService_Default != -1)
      {
        [RMInternalServiceClient parseSpiErrorReply:forMessage:];
      }

      v10 = logObject_InternalService_Default;
      if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_261A9A000, v10, OS_LOG_TYPE_ERROR, "Error received from GetNumClients: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), -1);
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)disconnectAllClientsWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(RMInternalServiceClient *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RMInternalServiceClient_disconnectAllClientsWithReply___block_invoke;
  v7[3] = &unk_279AF5500;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __57__RMInternalServiceClient_disconnectAllClientsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) spiClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__RMInternalServiceClient_disconnectAllClientsWithReply___block_invoke_2;
  v4[3] = &unk_279AF54D8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [(RMConnectionClient *)v2 sendMessage:0 withData:v4 reply:?];
}

void __57__RMInternalServiceClient_disconnectAllClientsWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 isEqualToString:@"RMSpiError"])
  {
    if (v5)
    {
      [*(a1 + 32) parseSpiErrorReply:v5 forMessage:@"RMSpiDisconnectAllClients"];
    }

LABEL_11:
    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  if (!v5)
  {
    if (onceToken_InternalService_Default != -1)
    {
      __50__RMInternalServiceClient_getNumClientsWithReply___block_invoke_2_cold_2();
    }

    v9 = logObject_InternalService_Default;
    if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_261A9A000, v9, OS_LOG_TYPE_ERROR, "No data in disconnectAllClients reply", buf, 2u);
    }

    goto LABEL_11;
  }

  v12 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v6 integerValue]);
  }

  else
  {
    if (v7)
    {
      if (onceToken_InternalService_Default != -1)
      {
        [RMInternalServiceClient parseSpiErrorReply:forMessage:];
      }

      v10 = logObject_InternalService_Default;
      if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_261A9A000, v10, OS_LOG_TYPE_ERROR, "Error received from disconnectClient: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), -1);
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)disconnectClient:(id)client withReply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  queue = [(RMInternalServiceClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RMInternalServiceClient_disconnectClient_withReply___block_invoke;
  block[3] = &unk_279AF5528;
  block[4] = self;
  v12 = clientCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = clientCopy;
  dispatch_async(queue, block);
}

void __54__RMInternalServiceClient_disconnectClient_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) spiClient];
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(a1 + 40) requiringSecureCoding:1 error:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__RMInternalServiceClient_disconnectClient_withReply___block_invoke_2;
  v4[3] = &unk_279AF54D8;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [(RMConnectionClient *)v2 sendMessage:v3 withData:v4 reply:?];
}

void __54__RMInternalServiceClient_disconnectClient_withReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 isEqualToString:@"RMSpiError"])
  {
    if (v5)
    {
      [*(a1 + 32) parseSpiErrorReply:v5 forMessage:@"RMSpiGetNumClients"];
    }

LABEL_11:
    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  if (!v5)
  {
    if (onceToken_InternalService_Default != -1)
    {
      __50__RMInternalServiceClient_getNumClientsWithReply___block_invoke_2_cold_2();
    }

    v9 = logObject_InternalService_Default;
    if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_261A9A000, v9, OS_LOG_TYPE_ERROR, "No data in disconnectClient reply", buf, 2u);
    }

    goto LABEL_11;
  }

  v12 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v6 integerValue]);
  }

  else
  {
    if (v7)
    {
      if (onceToken_InternalService_Default != -1)
      {
        [RMInternalServiceClient parseSpiErrorReply:forMessage:];
      }

      v10 = logObject_InternalService_Default;
      if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_261A9A000, v10, OS_LOG_TYPE_ERROR, "Error received from disconnectClient: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), -1);
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)listClientsWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(RMInternalServiceClient *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__RMInternalServiceClient_listClientsWithReply___block_invoke;
  v7[3] = &unk_279AF5500;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __48__RMInternalServiceClient_listClientsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) spiClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__RMInternalServiceClient_listClientsWithReply___block_invoke_2;
  v4[3] = &unk_279AF54D8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [(RMConnectionClient *)v2 sendMessage:0 withData:v4 reply:?];
}

void __48__RMInternalServiceClient_listClientsWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 isEqualToString:@"RMSpiError"])
  {
    if (v5)
    {
      [*(a1 + 32) parseSpiErrorReply:v5 forMessage:@"RMSpiGetNumClients"];
    }

LABEL_11:
    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  if (!v5)
  {
    if (onceToken_InternalService_Default != -1)
    {
      __50__RMInternalServiceClient_getNumClientsWithReply___block_invoke_2_cold_2();
    }

    v13 = logObject_InternalService_Default;
    if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_261A9A000, v13, OS_LOG_TYPE_ERROR, "No data in listClientsWithReply reply", buf, 2u);
    }

    goto LABEL_11;
  }

  v6 = MEMORY[0x277CCAAC8];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v16 = 0;
  v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v11)
    {
      if (onceToken_InternalService_Default != -1)
      {
        [RMInternalServiceClient parseSpiErrorReply:forMessage:];
      }

      v14 = logObject_InternalService_Default;
      if (os_log_type_enabled(logObject_InternalService_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_261A9A000, v14, OS_LOG_TYPE_ERROR, "Error received from listClientsWithReply: %@", buf, 0xCu);
      }
    }

    v12 = *(*(a1 + 40) + 16);
  }

  v12();

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
}

@end