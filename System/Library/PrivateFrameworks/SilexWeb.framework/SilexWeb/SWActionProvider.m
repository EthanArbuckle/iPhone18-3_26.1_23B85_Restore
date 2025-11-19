@interface SWActionProvider
- (SWActionProvider)initWithMessageHandlerManager:(id)a3 actionFactory:(id)a4 logger:(id)a5;
- (id)actionTypeText:(unint64_t)a3;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
- (void)onAction:(id)a3;
@end

@implementation SWActionProvider

- (SWActionProvider)initWithMessageHandlerManager:(id)a3 actionFactory:(id)a4 logger:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SWActionProvider;
  v11 = [(SWActionProvider *)&v16 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF70] array];
    actionBlocks = v11->_actionBlocks;
    v11->_actionBlocks = v12;

    objc_storeStrong(&v11->_actionFactory, a4);
    objc_storeStrong(&v11->_logger, a5);
    v14 = [SWWeakMessageHandler handlerWithMessageHandler:v11];
    [v8 addMessageHandler:v14 name:@"action"];
  }

  return v11;
}

- (void)onAction:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(SWActionProvider *)self actionBlocks];
    v5 = [v4 copy];

    [v6 addObject:v5];
  }
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"action"];

  if (v7)
  {
    v8 = [(SWActionProvider *)self logger];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(SWActionProvider *)self actionBlocks];
    v11 = [v10 count];
    v12 = [v5 body];
    v13 = [v9 stringWithFormat:@"Action: Invoking action %lu blocks. Message: %@", v11, v12];
    [v8 log:v13];

    v14 = [v5 body];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [(SWActionProvider *)self actionFactory];
        v16 = [v15 actionForDictionary:v14];

        if (v16)
        {
          v17 = [(SWActionProvider *)self logger];
          v18 = MEMORY[0x1E696AEC0];
          v19 = -[SWActionProvider actionTypeText:](self, "actionTypeText:", [v16 type]);
          v20 = [v5 body];
          v21 = [v18 stringWithFormat:@"Action: action type %@. Message: %@", v19, v20];
          [v17 log:v21];

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v22 = [(SWActionProvider *)self actionBlocks];
          v23 = [v22 copy];

          v24 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v30;
            do
            {
              v27 = 0;
              do
              {
                if (*v30 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                (*(*(*(&v29 + 1) + 8 * v27++) + 16))();
              }

              while (v25 != v27);
              v25 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
            }

            while (v25);
          }
        }
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)actionTypeText:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E84DB278[a3 - 1];
  }
}

@end