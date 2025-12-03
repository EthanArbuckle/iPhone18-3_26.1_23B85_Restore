@interface SWNavigationBarConfigurationManager
- (SWNavigationBarConfigurationManager)initWithMessageHandlerManager:(id)manager logger:(id)logger;
- (id)shareItemsFromDictionary:(id)dictionary;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
@end

@implementation SWNavigationBarConfigurationManager

- (SWNavigationBarConfigurationManager)initWithMessageHandlerManager:(id)manager logger:(id)logger
{
  managerCopy = manager;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = SWNavigationBarConfigurationManager;
  v8 = [(SWNavigationBarConfigurationManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_logger, logger);
    v10 = [SWWeakMessageHandler handlerWithMessageHandler:v9];
    [managerCopy addMessageHandler:v10 name:@"navigationBarConfiguration"];
  }

  return v9;
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  messageCopy = message;
  name = [messageCopy name];
  v6 = [name isEqualToString:@"navigationBarConfiguration"];

  v7 = messageCopy;
  if (v6)
  {
    body = [messageCopy body];
    v9 = [body objectForKeyedSubscript:@"title"];

    body2 = [messageCopy body];
    v11 = [body2 objectForKeyedSubscript:@"shareConfiguration"];

    if (v11 && ([v11 objectForKeyedSubscript:@"title"], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [v11 objectForKeyedSubscript:@"title"];
      v14 = [v11 objectForKeyedSubscript:@"items"];
      v15 = [(SWNavigationBarConfigurationManager *)self shareItemsFromDictionary:v14];
      v16 = [[SWShareConfiguration alloc] initWithTitle:v13 shareItems:v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = [[SWNavigationBarConfiguration alloc] initWithTitle:v9 shareConfiguration:v16];
    logger = [(SWNavigationBarConfigurationManager *)self logger];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ShareConfiguration: Web content provided share configuration"];
    [logger log:v19];

    navigationBarConfigurationBlock = [(SWNavigationBarConfigurationManager *)self navigationBarConfigurationBlock];

    if (navigationBarConfigurationBlock)
    {
      navigationBarConfigurationBlock2 = [(SWNavigationBarConfigurationManager *)self navigationBarConfigurationBlock];
      (navigationBarConfigurationBlock2)[2](navigationBarConfigurationBlock2, v17);
    }

    v7 = messageCopy;
  }
}

- (id)shareItemsFromDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = dictionaryCopy;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:{@"kind", array}];
        if ([v9 isEqualToString:@"URL"])
        {
          v10 = [v8 objectForKeyedSubscript:@"value"];
          v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
          if (v11)
          {
            v12 = [[SWURLShareItem alloc] initWithURL:v11];
            [array addObject:v12];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end