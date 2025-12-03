@interface SWInteractionProvider
- (SWInteractionProvider)initWithMessageHandlerManager:(id)manager documentStateProvider:(id)provider interactionFactory:(id)factory logger:(id)logger;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
- (void)onChange:(id)change;
@end

@implementation SWInteractionProvider

- (SWInteractionProvider)initWithMessageHandlerManager:(id)manager documentStateProvider:(id)provider interactionFactory:(id)factory logger:(id)logger
{
  managerCopy = manager;
  providerCopy = provider;
  factoryCopy = factory;
  loggerCopy = logger;
  v24.receiver = self;
  v24.super_class = SWInteractionProvider;
  v14 = [(SWInteractionProvider *)&v24 init];
  if (v14)
  {
    array = [MEMORY[0x1E695DF70] array];
    blocks = v14->_blocks;
    v14->_blocks = array;

    objc_storeStrong(&v14->_interactionFactory, factory);
    objc_storeStrong(&v14->_logger, logger);
    v17 = [SWWeakMessageHandler handlerWithMessageHandler:v14];
    [managerCopy addMessageHandler:v17 name:@"presentable"];

    v18 = [SWWeakMessageHandler handlerWithMessageHandler:v14];
    [managerCopy addMessageHandler:v18 name:@"update"];

    v19 = [SWWeakMessageHandler handlerWithMessageHandler:v14];
    [managerCopy addMessageHandler:v19 name:@"interaction"];

    objc_initWeak(&location, v14);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __103__SWInteractionProvider_initWithMessageHandlerManager_documentStateProvider_interactionFactory_logger___block_invoke;
    v21[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v22, &location);
    [providerCopy onLoad:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __103__SWInteractionProvider_initWithMessageHandlerManager_documentStateProvider_interactionFactory_logger___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[1];
  WeakRetained[1] = 0;
}

- (void)onChange:(id)change
{
  if (change)
  {
    changeCopy = change;
    blocks = [(SWInteractionProvider *)self blocks];
    v5 = [changeCopy copy];

    [blocks addObject:v5];
  }
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  v39 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  name = [messageCopy name];
  v7 = [name isEqualToString:@"interaction"];

  if (v7)
  {
    logger = [(SWInteractionProvider *)self logger];
    v9 = MEMORY[0x1E696AEC0];
    interactionBlock = [(SWInteractionProvider *)self interactionBlock];
    body = [messageCopy body];
    v12 = [v9 stringWithFormat:@"Interaction: Invoking interaction, hasBlock=%d, Message: %@", interactionBlock != 0, body];
    [logger log:v12];

    interactionBlock2 = [(SWInteractionProvider *)self interactionBlock];

    if (interactionBlock2)
    {
      interactionBlock3 = [(SWInteractionProvider *)self interactionBlock];
      interactionBlock3[2]();
    }
  }

  else
  {
    body2 = [messageCopy body];
    v16 = [body2 objectForKey:@"interaction"];

    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        interactionFactory = [(SWInteractionProvider *)self interactionFactory];
        v18 = [interactionFactory interactionForDictionary:v16];

        interaction = [(SWInteractionProvider *)self interaction];
        v20 = [v18 isEqual:interaction];

        if ((v20 & 1) == 0 && v18)
        {
          logger2 = [(SWInteractionProvider *)self logger];
          v22 = MEMORY[0x1E696AEC0];
          type = [(SWInteraction *)self->_interaction type];
          type2 = [v18 type];
          body3 = [messageCopy body];
          v26 = [v22 stringWithFormat:@"Interaction: Changing interaction type from %lu to %lu. Message: %@", type, type2, body3];
          [logger2 log:v26];

          objc_storeStrong(&self->_interaction, v18);
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          blocks = [(SWInteractionProvider *)self blocks];
          v28 = [blocks copy];

          v29 = [v28 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v35;
            do
            {
              v32 = 0;
              do
              {
                if (*v35 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                (*(*(*(&v34 + 1) + 8 * v32++) + 16))();
              }

              while (v30 != v32);
              v30 = [v28 countByEnumeratingWithState:&v34 objects:v38 count:16];
            }

            while (v30);
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

@end