@interface SWInteractionProvider
- (SWInteractionProvider)initWithMessageHandlerManager:(id)a3 documentStateProvider:(id)a4 interactionFactory:(id)a5 logger:(id)a6;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
- (void)onChange:(id)a3;
@end

@implementation SWInteractionProvider

- (SWInteractionProvider)initWithMessageHandlerManager:(id)a3 documentStateProvider:(id)a4 interactionFactory:(id)a5 logger:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = SWInteractionProvider;
  v14 = [(SWInteractionProvider *)&v24 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    blocks = v14->_blocks;
    v14->_blocks = v15;

    objc_storeStrong(&v14->_interactionFactory, a5);
    objc_storeStrong(&v14->_logger, a6);
    v17 = [SWWeakMessageHandler handlerWithMessageHandler:v14];
    [v10 addMessageHandler:v17 name:@"presentable"];

    v18 = [SWWeakMessageHandler handlerWithMessageHandler:v14];
    [v10 addMessageHandler:v18 name:@"update"];

    v19 = [SWWeakMessageHandler handlerWithMessageHandler:v14];
    [v10 addMessageHandler:v19 name:@"interaction"];

    objc_initWeak(&location, v14);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __103__SWInteractionProvider_initWithMessageHandlerManager_documentStateProvider_interactionFactory_logger___block_invoke;
    v21[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v22, &location);
    [v11 onLoad:v21];
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

- (void)onChange:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(SWInteractionProvider *)self blocks];
    v5 = [v4 copy];

    [v6 addObject:v5];
  }
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"interaction"];

  if (v7)
  {
    v8 = [(SWInteractionProvider *)self logger];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(SWInteractionProvider *)self interactionBlock];
    v11 = [v5 body];
    v12 = [v9 stringWithFormat:@"Interaction: Invoking interaction, hasBlock=%d, Message: %@", v10 != 0, v11];
    [v8 log:v12];

    v13 = [(SWInteractionProvider *)self interactionBlock];

    if (v13)
    {
      v14 = [(SWInteractionProvider *)self interactionBlock];
      v14[2]();
    }
  }

  else
  {
    v15 = [v5 body];
    v16 = [v15 objectForKey:@"interaction"];

    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [(SWInteractionProvider *)self interactionFactory];
        v18 = [v17 interactionForDictionary:v16];

        v19 = [(SWInteractionProvider *)self interaction];
        v20 = [v18 isEqual:v19];

        if ((v20 & 1) == 0 && v18)
        {
          v21 = [(SWInteractionProvider *)self logger];
          v22 = MEMORY[0x1E696AEC0];
          v23 = [(SWInteraction *)self->_interaction type];
          v24 = [v18 type];
          v25 = [v5 body];
          v26 = [v22 stringWithFormat:@"Interaction: Changing interaction type from %lu to %lu. Message: %@", v23, v24, v25];
          [v21 log:v26];

          objc_storeStrong(&self->_interaction, v18);
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v27 = [(SWInteractionProvider *)self blocks];
          v28 = [v27 copy];

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