@interface _SBSUserNotificationButtonDefinitionBuilder
- (_SBSUserNotificationButtonDefinitionBuilder)init;
- (id)build;
- (void)addButtonDefinitionWithTitle:(id)a3 withConfiguration:(id)a4;
@end

@implementation _SBSUserNotificationButtonDefinitionBuilder

- (_SBSUserNotificationButtonDefinitionBuilder)init
{
  v6.receiver = self;
  v6.super_class = _SBSUserNotificationButtonDefinitionBuilder;
  v2 = [(_SBSUserNotificationButtonDefinitionBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    definitions = v2->_definitions;
    v2->_definitions = v3;
  }

  return v2;
}

- (void)addButtonDefinitionWithTitle:(id)a3 withConfiguration:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    [_SBSUserNotificationButtonDefinitionBuilder addButtonDefinitionWithTitle:a2 withConfiguration:self];
  }

  v8 = [(SBSUserNotificationButtonDefinition *)[SBSMutableUserNotificationButtonDefinition alloc] initWithTitle:v11];
  if (v7)
  {
    v7[2](v7, v8);
  }

  definitions = self->_definitions;
  v10 = [(SBSMutableUserNotificationButtonDefinition *)v8 copy];
  [(NSMutableArray *)definitions addObject:v10];
}

- (id)build
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_definitions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) build];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addButtonDefinitionWithTitle:(uint64_t)a1 withConfiguration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationButtonDefinition.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"title"}];
}

@end