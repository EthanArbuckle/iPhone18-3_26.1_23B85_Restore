@interface SWMessageHandlerManager
- (SWMessageHandlerManager)initWithUserContentController:(id)a3 logger:(id)a4;
- (void)addMessageHandler:(id)a3 name:(id)a4;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation SWMessageHandlerManager

- (SWMessageHandlerManager)initWithUserContentController:(id)a3 logger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SWMessageHandlerManager;
  v8 = [(SWMessageHandlerManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_logger, a4);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    messageHandlers = v9->_messageHandlers;
    v9->_messageHandlers = v10;

    v12 = [[SWWeakScriptMessageHandler alloc] initWithScriptMessageHandler:v9];
    [v6 addScriptMessageHandler:v12 name:@"applenews"];
  }

  return v9;
}

- (void)addMessageHandler:(id)a3 name:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11 && v6)
  {
    v7 = [(SWMessageHandlerManager *)self messageHandlers];
    v8 = [v7 objectForKey:v6];

    if (!v8)
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = [(SWMessageHandlerManager *)self messageHandlers];
      v10 = [v6 copy];
      [v9 setObject:v8 forKey:v10];
    }

    [v8 addObject:v11];
  }
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 body];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [SWMessage alloc];
    v9 = [v5 body];
    v10 = [(SWMessage *)v8 initWithDictionary:v9];

    if (v10)
    {
      v11 = [(SWMessageHandlerManager *)self logger];
      v12 = MEMORY[0x1E696AEC0];
      v13 = [(SWMessage *)v10 name];
      v14 = [(SWMessage *)v10 body];
      v15 = objc_claimAutoreleasedReturnValue();
      [v11 log:v15];

      v16 = [v5 frameInfo];
      v17 = [v16 securityOrigin];

      v18 = [SWMessageSecurityOrigin alloc];
      v19 = [v17 protocol];
      v20 = [v17 host];
      v21 = [v5 frameInfo];
      v22 = [v21 request];
      v23 = [(SWMessageSecurityOrigin *)v18 initWithProtocol:v19 host:v20 request:v22];

      v24 = [(SWMessageHandlerManager *)self messageHandlers];
      v25 = [(SWMessage *)v10 name];
      v26 = [v24 objectForKey:v25];

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