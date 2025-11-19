@interface SWNavigationBarConfigurationManager
- (SWNavigationBarConfigurationManager)initWithMessageHandlerManager:(id)a3 logger:(id)a4;
- (id)shareItemsFromDictionary:(id)a3;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
@end

@implementation SWNavigationBarConfigurationManager

- (SWNavigationBarConfigurationManager)initWithMessageHandlerManager:(id)a3 logger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SWNavigationBarConfigurationManager;
  v8 = [(SWNavigationBarConfigurationManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_logger, a4);
    v10 = [SWWeakMessageHandler handlerWithMessageHandler:v9];
    [v6 addMessageHandler:v10 name:@"navigationBarConfiguration"];
  }

  return v9;
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v22 = a3;
  v5 = [v22 name];
  v6 = [v5 isEqualToString:@"navigationBarConfiguration"];

  v7 = v22;
  if (v6)
  {
    v8 = [v22 body];
    v9 = [v8 objectForKeyedSubscript:@"title"];

    v10 = [v22 body];
    v11 = [v10 objectForKeyedSubscript:@"shareConfiguration"];

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
    v18 = [(SWNavigationBarConfigurationManager *)self logger];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ShareConfiguration: Web content provided share configuration"];
    [v18 log:v19];

    v20 = [(SWNavigationBarConfigurationManager *)self navigationBarConfigurationBlock];

    if (v20)
    {
      v21 = [(SWNavigationBarConfigurationManager *)self navigationBarConfigurationBlock];
      (v21)[2](v21, v17);
    }

    v7 = v22;
  }
}

- (id)shareItemsFromDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
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
        v9 = [v8 objectForKeyedSubscript:{@"kind", v16}];
        if ([v9 isEqualToString:@"URL"])
        {
          v10 = [v8 objectForKeyedSubscript:@"value"];
          v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
          if (v11)
          {
            v12 = [[SWURLShareItem alloc] initWithURL:v11];
            [v16 addObject:v12];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end