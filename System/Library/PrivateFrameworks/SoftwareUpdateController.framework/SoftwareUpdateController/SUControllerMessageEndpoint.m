@interface SUControllerMessageEndpoint
+ (id)sharedEndpoint;
- (SUControllerMessageEndpoint)init;
- (void)sendErrorReply:(id)a3 toMessage:(id)a4;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)sendMessage:(id)a3 isCritical:(BOOL)a4 completion:(id)a5;
- (void)sendMessage:(id)a3 withReply:(id)a4;
- (void)sendReply:(id)a3 toMessage:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)setHandler:(id)a3 forMessagesOfType:(id)a4;
- (void)setHandler:(id)a3 forMessagesOfTypes:(id)a4;
@end

@implementation SUControllerMessageEndpoint

+ (id)sharedEndpoint
{
  if (sharedEndpoint_endpointOnce != -1)
  {
    +[SUControllerMessageEndpoint sharedEndpoint];
  }

  v3 = sharedEndpoint_endpoint;

  return v3;
}

uint64_t __45__SUControllerMessageEndpoint_sharedEndpoint__block_invoke()
{
  sharedEndpoint_endpoint = objc_alloc_init(SUControllerMessageEndpoint);

  return MEMORY[0x2821F96F8]();
}

- (SUControllerMessageEndpoint)init
{
  v18.receiver = self;
  v18.super_class = SUControllerMessageEndpoint;
  v2 = [(SUControllerMessageEndpoint *)&v18 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D18770]) initWithService:@"com.apple.private.alloy.otaupdate"];
    service = v2->_service;
    v2->_service = v3;

    v5 = dispatch_queue_create("com.apple.sucontroller.SUControllerMessageEndpoint", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_create("com.apple.sucontroller.ids_endpoint", MEMORY[0x277D85CD8]);
    messageQueue = v2->_messageQueue;
    v2->_messageQueue = v7;

    v9 = dispatch_queue_create("com.apple.sucontrollerd.SUControllerMessageHandler", 0);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    messageHandlers = v2->_messageHandlers;
    v2->_messageHandlers = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessageCompletions = v2->_pendingMessageCompletions;
    v2->_pendingMessageCompletions = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessageReplies = v2->_pendingMessageReplies;
    v2->_pendingMessageReplies = v15;
  }

  return v2;
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SUControllerLogger sharedLogger];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageTypeKey];
  v9 = [v5 objectForKey:v8];
  [v7 logAtLevel:0 label:"-[SUControllerMessageEndpoint sendMessage:completion:]" format:{@"Trying to send this message over IDS... %@", v9}];

  __assert_rtn("[SUControllerMessageEndpoint sendMessage:completion:]", "SUControllerMessageEndpoint.m", 92, "false");
}

- (void)sendMessage:(id)a3 isCritical:(BOOL)a4 completion:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = +[SUControllerLogger sharedLogger];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageTypeKey];
  v10 = [v6 objectForKey:v9];
  [v8 logAtLevel:0 label:"-[SUControllerMessageEndpoint sendMessage:isCritical:completion:]" format:{@"Trying to send this message over IDS... %@", v10}];

  __assert_rtn("[SUControllerMessageEndpoint sendMessage:isCritical:completion:]", "SUControllerMessageEndpoint.m", 99, "false");
}

- (void)sendMessage:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SUControllerLogger sharedLogger];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageTypeKey];
  v9 = [v5 objectForKey:v8];
  [v7 logAtLevel:0 label:"-[SUControllerMessageEndpoint sendMessage:withReply:]" format:{@"Trying to send this message over IDS... %@", v9}];

  __assert_rtn("[SUControllerMessageEndpoint sendMessage:withReply:]", "SUControllerMessageEndpoint.m", 120, "false");
}

- (void)sendReply:(id)a3 toMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SUControllerLogger sharedLogger];
  [v7 logAtLevel:0 label:"-[SUControllerMessageEndpoint sendReply:toMessage:]" format:{@"Trying to send this message over IDS... %@", v5}];

  __assert_rtn("[SUControllerMessageEndpoint sendReply:toMessage:]", "SUControllerMessageEndpoint.m", 142, "false");
}

- (void)setHandler:(id)a3 forMessagesOfType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUControllerMessageEndpoint *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SUControllerMessageEndpoint_setHandler_forMessagesOfType___block_invoke;
  block[3] = &unk_279CA8638;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __60__SUControllerMessageEndpoint_setHandler_forMessagesOfType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) messageHandlers];
  v2 = MEMORY[0x26D667D10](*(a1 + 48));
  [v3 setObject:v2 forKey:*(a1 + 40)];
}

- (void)setHandler:(id)a3 forMessagesOfTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUControllerMessageEndpoint *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUControllerMessageEndpoint_setHandler_forMessagesOfTypes___block_invoke;
  block[3] = &unk_279CA8660;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

void __61__SUControllerMessageEndpoint_setHandler_forMessagesOfTypes___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) messageHandlers];
        v9 = MEMORY[0x26D667D10](*(a1 + 48));
        [v8 setObject:v9 forKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __89__SUControllerMessageEndpoint_sendMessage_replyingTo_expectingResponse_isCritical_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CBEB68] null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    [*(a1 + 32) setObject:v7 forKey:v10];
  }

  *a4 = 0;
}

- (void)sendErrorReply:(id)a3 toMessage:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageErrorKey];
      v16 = v9;
      v17[0] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v15 = 0;
      v11 = [(SUControllerMessageEndpoint *)self sendMessage:v10 replyingTo:v7 expectingResponse:0 isCritical:1 error:&v15];
      v12 = v15;

      if (!v11)
      {
        v13 = +[SUControllerLogger sharedLogger];
        [v13 logAtLevel:2 label:"-[SUControllerMessageEndpoint sendErrorReply:toMessage:]" format:{@"Failed to send error reply: %@", v12}];
      }
    }

    else
    {
      v12 = +[SUControllerLogger sharedLogger];
      [v12 logAtLevel:2 label:"-[SUControllerMessageEndpoint sendErrorReply:toMessage:]" format:{@"Failed to archive error '%@'", v6}];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a7;
  v51 = 0;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:a5 options:0 format:0 error:&v51];
  v11 = v51;
  if (!v10)
  {
    v12 = +[SUControllerLogger sharedLogger];
    v13 = [v9 outgoingResponseIdentifier];
    v41 = [v13 UTF8String];
    [v11 code];
    [v12 logAtLevel:0 label:"-[SUControllerMessageEndpoint service:account:incomingData:fromID:context:]" format:@"Failed to parse IDS message %s: %ld"];
  }

  v14 = [v9 incomingResponseIdentifier];

  if (v14)
  {
    v19 = [(SUControllerMessageEndpoint *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__SUControllerMessageEndpoint_service_account_incomingData_fromID_context___block_invoke;
    block[3] = &unk_279CA8688;
    block[4] = self;
    v48 = v9;
    v49 = v11;
    v50 = v10;
    dispatch_async(v19, block);
  }

  else
  {
    if (v10)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageTypeKey];
      v21 = [v10 objectForKeyedSubscript:v20];

      if (v21)
      {
        v22 = [(SUControllerMessageEndpoint *)self messageHandlers];
        v23 = [v22 objectForKeyedSubscript:v21];

        if (v23)
        {
          v24 = [(SUControllerMessageEndpoint *)self processingQueue];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __75__SUControllerMessageEndpoint_service_account_incomingData_fromID_context___block_invoke_2;
          v42[3] = &unk_279CA86B0;
          v43 = v21;
          v23 = v23;
          v46 = v23;
          v44 = v10;
          v45 = v9;
          dispatch_async(v24, v42);

          v25 = v43;
        }

        else
        {
          v33 = +[SUControllerLogger sharedLogger];
          v34 = [v9 outgoingResponseIdentifier];
          v35 = [v34 UTF8String];
          [v33 logAtLevel:0 label:"-[SUControllerMessageEndpoint service:account:incomingData:fromID:context:]" format:{@"No handler for message %s of type %s", v35, SUControllerMessageTypeKey}];

          v25 = SUControllerError(@"SUControllerError", 1, 0, @"No handler for message type '%@'", v36, v37, v38, v39, v21);
          v40 = [v9 outgoingResponseIdentifier];
          [(SUControllerMessageEndpoint *)self sendErrorReply:v25 toMessage:v40];
        }
      }

      else
      {
        v26 = +[SUControllerLogger sharedLogger];
        v27 = [v9 outgoingResponseIdentifier];
        v28 = [v27 UTF8String];
        [v26 logAtLevel:0 label:"-[SUControllerMessageEndpoint service:account:incomingData:fromID:context:]" format:{@"Got message %s without %s key", v28, SUControllerMessageTypeKey}];

        v23 = SUControllerError(@"SUControllerError", 1, 0, @"Dropping message without '%@' key", v29, v30, v31, v32, SUControllerMessageTypeKey);
        v25 = [v9 outgoingResponseIdentifier];
        [(SUControllerMessageEndpoint *)self sendErrorReply:v23 toMessage:v25];
      }
    }

    else
    {
      v21 = SUControllerError(@"SUControllerError", 1, v11, @"Unparseable IDS message", v15, v16, v17, v18, v41);
      v23 = [v9 outgoingResponseIdentifier];
      [(SUControllerMessageEndpoint *)self sendErrorReply:v21 toMessage:v23];
    }
  }
}

void __75__SUControllerMessageEndpoint_service_account_incomingData_fromID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingMessageReplies];
  v3 = [*(a1 + 40) incomingResponseIdentifier];
  v14 = [v2 objectForKeyedSubscript:v3];

  if (v14)
  {
    if (*(a1 + 48))
    {
      v14[2]();
      goto LABEL_9;
    }

    v6 = *(a1 + 56);
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageErrorKey];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = MEMORY[0x277CCAAC8];
      v10 = objc_opt_class();
      v11 = *(a1 + 56);
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageErrorKey];
      v13 = [v11 objectForKeyedSubscript:v12];
      v4 = [v9 unarchivedObjectOfClass:v10 fromData:v13 error:0];

      (v14[2])(v14, 0, v4);
      goto LABEL_8;
    }

    (v14[2])(v14, *(a1 + 56), 0);
    v4 = [*(a1 + 32) pendingMessageReplies];
    v5 = [*(a1 + 40) incomingResponseIdentifier];
    [v4 removeObjectForKey:v5];
  }

  else
  {
    v4 = +[SUControllerLogger sharedLogger];
    v5 = [*(a1 + 40) incomingResponseIdentifier];
    [v4 logAtLevel:0 label:"-[SUControllerMessageEndpoint service:account:incomingData:fromID:context:]_block_invoke" format:{@"No reply handler set for message identifier %s", objc_msgSend(v5, "UTF8String")}];
  }

LABEL_8:
LABEL_9:
}

void __75__SUControllerMessageEndpoint_service_account_incomingData_fromID_context___block_invoke_2(uint64_t a1)
{
  v2 = +[SUControllerLogger sharedLogger];
  [v2 logAtLevel:2 label:"-[SUControllerMessageEndpoint service:account:incomingData:fromID:context:]_block_invoke_2" format:{@"Received message: %@", *(a1 + 32)}];

  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) outgoingResponseIdentifier];
  (*(v3 + 16))(v3, v4, v5);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  v12 = [(SUControllerMessageEndpoint *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__SUControllerMessageEndpoint_service_account_identifier_didSendWithSuccess_error___block_invoke;
  v15[3] = &unk_279CA86D8;
  v16 = v11;
  v17 = self;
  v18 = v10;
  v19 = a6;
  v13 = v10;
  v14 = v11;
  dispatch_async(v12, v15);
}

void __83__SUControllerMessageEndpoint_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    v17 = SUControllerError(@"SUControllerError", 2, v9, @"failed to send message", a5, a6, a7, a8, v16);
  }

  else
  {
    v17 = 0;
  }

  v10 = [*(a1 + 40) pendingMessageCompletions];
  v11 = [v10 objectForKeyedSubscript:*(a1 + 48)];

  if (v11)
  {
    (v11)[2](v11, v17);
    v12 = [*(a1 + 40) pendingMessageCompletions];
    [v12 removeObjectForKey:*(a1 + 48)];
  }

  v13 = [*(a1 + 40) pendingMessageReplies];
  v14 = [v13 objectForKeyedSubscript:*(a1 + 48)];

  if ((*(a1 + 56) & 1) == 0 && v14)
  {
    (v14)[2](v14, 0, v17);
    v15 = [*(a1 + 40) pendingMessageReplies];
    [v15 removeObjectForKey:*(a1 + 48)];
  }
}

@end