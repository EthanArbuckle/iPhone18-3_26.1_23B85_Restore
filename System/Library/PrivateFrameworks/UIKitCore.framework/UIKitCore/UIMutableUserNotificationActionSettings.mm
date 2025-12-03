@interface UIMutableUserNotificationActionSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setActions:(id)actions forContext:(unint64_t)context;
@end

@implementation UIMutableUserNotificationActionSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIUserNotificationActionSettings alloc];
  category = [(UIUserNotificationActionSettings *)self category];
  actionsByContext = [(UIUserNotificationActionSettings *)self actionsByContext];
  v7 = [(UIUserNotificationActionSettings *)v4 initWithCategory:category actionsByContext:actionsByContext];

  return v7;
}

- (void)setActions:(id)actions forContext:(unint64_t)context
{
  v25 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  actionsByContext = [(UIUserNotificationActionSettings *)self actionsByContext];
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

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = actionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:context];
  [v11 setObject:v12 forKey:v19];

  [(UIUserNotificationActionSettings *)self setActionsByContext:v11];
}

@end