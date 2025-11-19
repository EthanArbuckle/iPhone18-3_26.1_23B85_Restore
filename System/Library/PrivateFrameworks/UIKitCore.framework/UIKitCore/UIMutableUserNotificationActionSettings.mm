@interface UIMutableUserNotificationActionSettings
- (id)copyWithZone:(_NSZone *)a3;
- (void)setActions:(id)a3 forContext:(unint64_t)a4;
@end

@implementation UIMutableUserNotificationActionSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIUserNotificationActionSettings alloc];
  v5 = [(UIUserNotificationActionSettings *)self category];
  v6 = [(UIUserNotificationActionSettings *)self actionsByContext];
  v7 = [(UIUserNotificationActionSettings *)v4 initWithCategory:v5 actionsByContext:v6];

  return v7;
}

- (void)setActions:(id)a3 forContext:(unint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UIUserNotificationActionSettings *)self actionsByContext];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = v10;

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v6;
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

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v11 setObject:v12 forKey:v19];

  [(UIUserNotificationActionSettings *)self setActionsByContext:v11];
}

@end