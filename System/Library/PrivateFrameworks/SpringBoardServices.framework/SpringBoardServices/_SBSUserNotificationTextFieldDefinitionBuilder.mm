@interface _SBSUserNotificationTextFieldDefinitionBuilder
- (_SBSUserNotificationTextFieldDefinitionBuilder)init;
- (id)build;
- (void)addTextFieldDefinitionWithConfiguration:(id)configuration;
@end

@implementation _SBSUserNotificationTextFieldDefinitionBuilder

- (_SBSUserNotificationTextFieldDefinitionBuilder)init
{
  v6.receiver = self;
  v6.super_class = _SBSUserNotificationTextFieldDefinitionBuilder;
  v2 = [(_SBSUserNotificationTextFieldDefinitionBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    definitions = v2->_definitions;
    v2->_definitions = v3;
  }

  return v2;
}

- (void)addTextFieldDefinitionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_alloc_init(SBSMutableUserNotificationTextFieldDefinition);
  if (configurationCopy)
  {
    configurationCopy[2](configurationCopy, v4);
  }

  definitions = self->_definitions;
  v6 = [(SBSMutableUserNotificationTextFieldDefinition *)v4 copy];
  [(NSMutableArray *)definitions addObject:v6];
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

        build = [*(*(&v11 + 1) + 8 * i) build];
        if (build)
        {
          [v3 addObject:build];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end