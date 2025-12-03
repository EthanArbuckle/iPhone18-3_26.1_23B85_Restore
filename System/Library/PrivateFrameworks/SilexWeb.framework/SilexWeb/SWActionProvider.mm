@interface SWActionProvider
- (SWActionProvider)initWithMessageHandlerManager:(id)manager actionFactory:(id)factory logger:(id)logger;
- (id)actionTypeText:(unint64_t)text;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
- (void)onAction:(id)action;
@end

@implementation SWActionProvider

- (SWActionProvider)initWithMessageHandlerManager:(id)manager actionFactory:(id)factory logger:(id)logger
{
  managerCopy = manager;
  factoryCopy = factory;
  loggerCopy = logger;
  v16.receiver = self;
  v16.super_class = SWActionProvider;
  v11 = [(SWActionProvider *)&v16 init];
  if (v11)
  {
    array = [MEMORY[0x1E695DF70] array];
    actionBlocks = v11->_actionBlocks;
    v11->_actionBlocks = array;

    objc_storeStrong(&v11->_actionFactory, factory);
    objc_storeStrong(&v11->_logger, logger);
    v14 = [SWWeakMessageHandler handlerWithMessageHandler:v11];
    [managerCopy addMessageHandler:v14 name:@"action"];
  }

  return v11;
}

- (void)onAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    actionBlocks = [(SWActionProvider *)self actionBlocks];
    v5 = [actionCopy copy];

    [actionBlocks addObject:v5];
  }
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  v34 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  name = [messageCopy name];
  v7 = [name isEqualToString:@"action"];

  if (v7)
  {
    logger = [(SWActionProvider *)self logger];
    v9 = MEMORY[0x1E696AEC0];
    actionBlocks = [(SWActionProvider *)self actionBlocks];
    v11 = [actionBlocks count];
    body = [messageCopy body];
    v13 = [v9 stringWithFormat:@"Action: Invoking action %lu blocks. Message: %@", v11, body];
    [logger log:v13];

    body2 = [messageCopy body];
    if (body2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        actionFactory = [(SWActionProvider *)self actionFactory];
        v16 = [actionFactory actionForDictionary:body2];

        if (v16)
        {
          logger2 = [(SWActionProvider *)self logger];
          v18 = MEMORY[0x1E696AEC0];
          v19 = -[SWActionProvider actionTypeText:](self, "actionTypeText:", [v16 type]);
          body3 = [messageCopy body];
          v21 = [v18 stringWithFormat:@"Action: action type %@. Message: %@", v19, body3];
          [logger2 log:v21];

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          actionBlocks2 = [(SWActionProvider *)self actionBlocks];
          v23 = [actionBlocks2 copy];

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

- (id)actionTypeText:(unint64_t)text
{
  if (text - 1 > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E84DB278[text - 1];
  }
}

@end