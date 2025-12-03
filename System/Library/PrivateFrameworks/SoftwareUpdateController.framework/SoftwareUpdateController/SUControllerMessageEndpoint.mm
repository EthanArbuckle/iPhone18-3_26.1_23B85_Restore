@interface SUControllerMessageEndpoint
+ (id)sharedEndpoint;
- (SUControllerMessageEndpoint)init;
- (void)sendErrorReply:(id)reply toMessage:(id)message;
- (void)sendMessage:(id)message completion:(id)completion;
- (void)sendMessage:(id)message isCritical:(BOOL)critical completion:(id)completion;
- (void)sendMessage:(id)message withReply:(id)reply;
- (void)sendReply:(id)reply toMessage:(id)message;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)setHandler:(id)handler forMessagesOfType:(id)type;
- (void)setHandler:(id)handler forMessagesOfTypes:(id)types;
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

- (void)sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v7 = +[SUControllerLogger sharedLogger];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageTypeKey];
  v9 = [messageCopy objectForKey:v8];
  [v7 logAtLevel:0 label:"-[SUControllerMessageEndpoint sendMessage:completion:]" format:{@"Trying to send this message over IDS... %@", v9}];

  __assert_rtn("[SUControllerMessageEndpoint sendMessage:completion:]", "SUControllerMessageEndpoint.m", 92, "false");
}

- (void)sendMessage:(id)message isCritical:(BOOL)critical completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = +[SUControllerLogger sharedLogger];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageTypeKey];
  v10 = [messageCopy objectForKey:v9];
  [v8 logAtLevel:0 label:"-[SUControllerMessageEndpoint sendMessage:isCritical:completion:]" format:{@"Trying to send this message over IDS... %@", v10}];

  __assert_rtn("[SUControllerMessageEndpoint sendMessage:isCritical:completion:]", "SUControllerMessageEndpoint.m", 99, "false");
}

- (void)sendMessage:(id)message withReply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  v7 = +[SUControllerLogger sharedLogger];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageTypeKey];
  v9 = [messageCopy objectForKey:v8];
  [v7 logAtLevel:0 label:"-[SUControllerMessageEndpoint sendMessage:withReply:]" format:{@"Trying to send this message over IDS... %@", v9}];

  __assert_rtn("[SUControllerMessageEndpoint sendMessage:withReply:]", "SUControllerMessageEndpoint.m", 120, "false");
}

- (void)sendReply:(id)reply toMessage:(id)message
{
  replyCopy = reply;
  messageCopy = message;
  v7 = +[SUControllerLogger sharedLogger];
  [v7 logAtLevel:0 label:"-[SUControllerMessageEndpoint sendReply:toMessage:]" format:{@"Trying to send this message over IDS... %@", replyCopy}];

  __assert_rtn("[SUControllerMessageEndpoint sendReply:toMessage:]", "SUControllerMessageEndpoint.m", 142, "false");
}

- (void)setHandler:(id)handler forMessagesOfType:(id)type
{
  handlerCopy = handler;
  typeCopy = type;
  queue = [(SUControllerMessageEndpoint *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SUControllerMessageEndpoint_setHandler_forMessagesOfType___block_invoke;
  block[3] = &unk_279CA8638;
  v12 = typeCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = typeCopy;
  v10 = handlerCopy;
  dispatch_sync(queue, block);
}

void __60__SUControllerMessageEndpoint_setHandler_forMessagesOfType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) messageHandlers];
  v2 = MEMORY[0x26D667D10](*(a1 + 48));
  [v3 setObject:v2 forKey:*(a1 + 40)];
}

- (void)setHandler:(id)handler forMessagesOfTypes:(id)types
{
  handlerCopy = handler;
  typesCopy = types;
  queue = [(SUControllerMessageEndpoint *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUControllerMessageEndpoint_setHandler_forMessagesOfTypes___block_invoke;
  block[3] = &unk_279CA8660;
  v12 = typesCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = typesCopy;
  dispatch_sync(queue, block);
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

- (void)sendErrorReply:(id)reply toMessage:(id)message
{
  v17[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  messageCopy = message;
  if (messageCopy)
  {
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:replyCopy requiringSecureCoding:1 error:0];
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageErrorKey];
      v16 = v9;
      v17[0] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v15 = 0;
      v11 = [(SUControllerMessageEndpoint *)self sendMessage:v10 replyingTo:messageCopy expectingResponse:0 isCritical:1 error:&v15];
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
      [v12 logAtLevel:2 label:"-[SUControllerMessageEndpoint sendErrorReply:toMessage:]" format:{@"Failed to archive error '%@'", replyCopy}];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  contextCopy = context;
  v51 = 0;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v51];
  v11 = v51;
  if (!v10)
  {
    v12 = +[SUControllerLogger sharedLogger];
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    uTF8String = [outgoingResponseIdentifier UTF8String];
    [v11 code];
    [v12 logAtLevel:0 label:"-[SUControllerMessageEndpoint service:account:incomingData:fromID:context:]" format:@"Failed to parse IDS message %s: %ld"];
  }

  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];

  if (incomingResponseIdentifier)
  {
    queue = [(SUControllerMessageEndpoint *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__SUControllerMessageEndpoint_service_account_incomingData_fromID_context___block_invoke;
    block[3] = &unk_279CA8688;
    block[4] = self;
    v48 = contextCopy;
    v49 = v11;
    v50 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    if (v10)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:SUControllerMessageTypeKey];
      v21 = [v10 objectForKeyedSubscript:v20];

      if (v21)
      {
        messageHandlers = [(SUControllerMessageEndpoint *)self messageHandlers];
        outgoingResponseIdentifier6 = [messageHandlers objectForKeyedSubscript:v21];

        if (outgoingResponseIdentifier6)
        {
          processingQueue = [(SUControllerMessageEndpoint *)self processingQueue];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __75__SUControllerMessageEndpoint_service_account_incomingData_fromID_context___block_invoke_2;
          v42[3] = &unk_279CA86B0;
          v43 = v21;
          outgoingResponseIdentifier6 = outgoingResponseIdentifier6;
          v46 = outgoingResponseIdentifier6;
          v44 = v10;
          v45 = contextCopy;
          dispatch_async(processingQueue, v42);

          outgoingResponseIdentifier5 = v43;
        }

        else
        {
          v33 = +[SUControllerLogger sharedLogger];
          outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
          uTF8String2 = [outgoingResponseIdentifier2 UTF8String];
          [v33 logAtLevel:0 label:"-[SUControllerMessageEndpoint service:account:incomingData:fromID:context:]" format:{@"No handler for message %s of type %s", uTF8String2, SUControllerMessageTypeKey}];

          outgoingResponseIdentifier5 = SUControllerError(@"SUControllerError", 1, 0, @"No handler for message type '%@'", v36, v37, v38, v39, v21);
          outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
          [(SUControllerMessageEndpoint *)self sendErrorReply:outgoingResponseIdentifier5 toMessage:outgoingResponseIdentifier3];
        }
      }

      else
      {
        v26 = +[SUControllerLogger sharedLogger];
        outgoingResponseIdentifier4 = [contextCopy outgoingResponseIdentifier];
        uTF8String3 = [outgoingResponseIdentifier4 UTF8String];
        [v26 logAtLevel:0 label:"-[SUControllerMessageEndpoint service:account:incomingData:fromID:context:]" format:{@"Got message %s without %s key", uTF8String3, SUControllerMessageTypeKey}];

        outgoingResponseIdentifier6 = SUControllerError(@"SUControllerError", 1, 0, @"Dropping message without '%@' key", v29, v30, v31, v32, SUControllerMessageTypeKey);
        outgoingResponseIdentifier5 = [contextCopy outgoingResponseIdentifier];
        [(SUControllerMessageEndpoint *)self sendErrorReply:outgoingResponseIdentifier6 toMessage:outgoingResponseIdentifier5];
      }
    }

    else
    {
      v21 = SUControllerError(@"SUControllerError", 1, v11, @"Unparseable IDS message", v15, v16, v17, v18, uTF8String);
      outgoingResponseIdentifier6 = [contextCopy outgoingResponseIdentifier];
      [(SUControllerMessageEndpoint *)self sendErrorReply:v21 toMessage:outgoingResponseIdentifier6];
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

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(SUControllerMessageEndpoint *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__SUControllerMessageEndpoint_service_account_identifier_didSendWithSuccess_error___block_invoke;
  v15[3] = &unk_279CA86D8;
  v16 = errorCopy;
  selfCopy = self;
  v18 = identifierCopy;
  successCopy = success;
  v13 = identifierCopy;
  v14 = errorCopy;
  dispatch_async(queue, v15);
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