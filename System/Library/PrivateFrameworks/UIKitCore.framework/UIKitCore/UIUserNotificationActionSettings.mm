@interface UIUserNotificationActionSettings
- (BOOL)isEqual:(id)a3;
- (UIUserNotificationActionSettings)initWithCategory:(id)a3 actionsByContext:(id)a4;
- (UIUserNotificationActionSettings)initWithCoder:(id)a3;
- (id)actionsForContext:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)validatedSettings;
- (unint64_t)_maximumActionsForContext:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIUserNotificationActionSettings

- (UIUserNotificationActionSettings)initWithCategory:(id)a3 actionsByContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UIUserNotificationActionSettings;
  v8 = [(UIUserNotificationActionSettings *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    category = v8->_category;
    v8->_category = v9;

    v11 = [v7 copy];
    actionsByContext = v8->_actionsByContext;
    v8->_actionsByContext = v11;
  }

  return v8;
}

- (UIUserNotificationActionSettings)initWithCoder:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCategoryKey"];
  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kActionsByContextKey"];

  v10 = [(UIUserNotificationActionSettings *)self initWithCategory:v5 actionsByContext:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  category = self->_category;
  v5 = a3;
  [v5 encodeObject:category forKey:@"kCategoryKey"];
  [v5 encodeObject:self->_actionsByContext forKey:@"kActionsByContextKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UIMutableUserNotificationActionSettings alloc];
  category = self->_category;
  actionsByContext = self->_actionsByContext;

  return [(UIUserNotificationActionSettings *)v4 initWithCategory:category actionsByContext:actionsByContext];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[1];
    category = self->_category;
    v7 = v4;
    LODWORD(v5) = [v5 isEqualToString:category];
    v8 = v7[2];

    v9 = v5 & [v8 isEqual:self->_actionsByContext];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)actionsForContext:(unint64_t)a3
{
  actionsByContext = self->_actionsByContext;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)actionsByContext objectForKey:v4];

  return v5;
}

- (id)validatedSettings
{
  v36 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](self->_actionsByContext, "count")}];
  v24 = v23 = self;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [(NSDictionary *)self->_actionsByContext allKeys];
  v25 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v4 = 0;
    obj = v3;
    v22 = *v31;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [(NSDictionary *)v23->_actionsByContext objectForKey:v6];
        v8 = [(UIUserNotificationActionSettings *)v23 _maximumActionsForContext:v6];
        if ([v7 count] > v8)
        {
          v9 = [v7 subarrayWithRange:{0, v8}];

          v4 = 1;
          v7 = v9;
        }

        v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = v7;
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * j);
              v17 = [v16 validatedAction];
              v4 |= v17 != v16;
              [v10 addObject:v17];
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v13);
        }

        [v24 setObject:v10 forKey:v6];
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);

    if (v4)
    {
      v18 = [objc_alloc(objc_opt_class()) initWithCategory:v23->_category actionsByContext:v24];
      goto LABEL_21;
    }
  }

  else
  {
  }

  v18 = v23;
LABEL_21:
  v19 = v18;

  return v19;
}

- (unint64_t)_maximumActionsForContext:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

@end