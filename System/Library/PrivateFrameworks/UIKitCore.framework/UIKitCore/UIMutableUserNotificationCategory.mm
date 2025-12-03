@interface UIMutableUserNotificationCategory
- (id)copyWithZone:(_NSZone *)zone;
- (void)setActions:(NSArray *)actions forContext:(UIUserNotificationActionContext)context;
@end

@implementation UIMutableUserNotificationCategory

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIUserNotificationCategory alloc];
  identifier = [(UIUserNotificationCategory *)self identifier];
  actionsByContext = [(UIUserNotificationCategory *)self actionsByContext];
  v7 = [(UIUserNotificationCategory *)v4 initWithIdentifier:identifier actionsByContext:actionsByContext];

  return v7;
}

- (void)setActions:(NSArray *)actions forContext:(UIUserNotificationActionContext)context
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = actions;
  actionsByContext = [(UIUserNotificationCategory *)self actionsByContext];
  v8 = [actionsByContext mutableCopy];
  v9 = v8;
  if (v8)
  {
    dictionary = v8;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = dictionary;

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v6;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 addObject:{v18, v20}];
        }
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:context];
  [v11 setObject:v12 forKey:v19];

  [(UIUserNotificationCategory *)self setActionsByContext:v11];
}

@end