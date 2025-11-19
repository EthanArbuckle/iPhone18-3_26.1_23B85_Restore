@interface SUCompletionsResponse
- (SUCompletionsResponse)initWithPropertyList:(id)a3;
- (void)dealloc;
@end

@implementation SUCompletionsResponse

- (SUCompletionsResponse)initWithPropertyList:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SUCompletionsResponse;
  v4 = [(SUCompletionsResponse *)&v18 init];
  if (v4)
  {
    v5 = [a3 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_title = v5;
    }

    v6 = [a3 objectForKey:@"hints"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = [[SUCompletionItem alloc] initWithPropertyList:*(*(&v14 + 1) + 8 * v11)];
            [(NSArray *)v7 addObject:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v9);
      }

      v4->_completionItems = v7;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUCompletionsResponse;
  [(SUCompletionsResponse *)&v3 dealloc];
}

@end