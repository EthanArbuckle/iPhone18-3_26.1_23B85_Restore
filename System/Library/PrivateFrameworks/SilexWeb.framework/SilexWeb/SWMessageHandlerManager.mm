@interface SWMessageHandlerManager
- (SWMessageHandlerManager)initWithUserContentController:(id)controller logger:(id)logger;
- (void)addMessageHandler:(id)handler name:(id)name;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation SWMessageHandlerManager

- (SWMessageHandlerManager)initWithUserContentController:(id)controller logger:(id)logger
{
  controllerCopy = controller;
  loggerCopy = logger;
  v14.receiver = self;
  v14.super_class = SWMessageHandlerManager;
  v8 = [(SWMessageHandlerManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_logger, logger);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    messageHandlers = v9->_messageHandlers;
    v9->_messageHandlers = v10;

    v12 = [[SWWeakScriptMessageHandler alloc] initWithScriptMessageHandler:v9];
    [controllerCopy addScriptMessageHandler:v12 name:@"applenews"];
  }

  return v9;
}

- (void)addMessageHandler:(id)handler name:(id)name
{
  handlerCopy = handler;
  nameCopy = name;
  if (handlerCopy && nameCopy)
  {
    messageHandlers = [(SWMessageHandlerManager *)self messageHandlers];
    v8 = [messageHandlers objectForKey:nameCopy];

    if (!v8)
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      messageHandlers2 = [(SWMessageHandlerManager *)self messageHandlers];
      v10 = [nameCopy copy];
      [messageHandlers2 setObject:v8 forKey:v10];
    }

    [v8 addObject:handlerCopy];
  }
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  v38 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  body = [messageCopy body];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [SWMessage alloc];
    body2 = [messageCopy body];
    v10 = [(SWMessage *)v8 initWithDictionary:body2];

    if (v10)
    {
      logger = [(SWMessageHandlerManager *)self logger];
      v12 = MEMORY[0x1E696AEC0];
      name = [(SWMessage *)v10 name];
      body3 = [(SWMessage *)v10 body];
      v15 = objc_claimAutoreleasedReturnValue();
      [logger log:v15];

      frameInfo = [messageCopy frameInfo];
      securityOrigin = [frameInfo securityOrigin];

      v18 = [SWMessageSecurityOrigin alloc];
      protocol = [securityOrigin protocol];
      host = [securityOrigin host];
      frameInfo2 = [messageCopy frameInfo];
      request = [frameInfo2 request];
      v23 = [(SWMessageSecurityOrigin *)v18 initWithProtocol:protocol host:host request:request];

      messageHandlers = [(SWMessageHandlerManager *)self messageHandlers];
      name2 = [(SWMessage *)v10 name];
      v26 = [messageHandlers objectForKey:name2];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v34;
        do
        {
          v31 = 0;
          do
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v33 + 1) + 8 * v31++) didReceiveMessage:v10 securityOrigin:v23];
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v29);
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

@end