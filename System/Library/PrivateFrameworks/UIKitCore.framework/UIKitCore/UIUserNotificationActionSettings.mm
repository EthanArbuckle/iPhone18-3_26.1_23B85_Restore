@interface UIUserNotificationActionSettings
- (BOOL)isEqual:(id)equal;
- (UIUserNotificationActionSettings)initWithCategory:(id)category actionsByContext:(id)context;
- (UIUserNotificationActionSettings)initWithCoder:(id)coder;
- (id)actionsForContext:(unint64_t)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)validatedSettings;
- (unint64_t)_maximumActionsForContext:(unint64_t)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIUserNotificationActionSettings

- (UIUserNotificationActionSettings)initWithCategory:(id)category actionsByContext:(id)context
{
  categoryCopy = category;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = UIUserNotificationActionSettings;
  v8 = [(UIUserNotificationActionSettings *)&v14 init];
  if (v8)
  {
    v9 = [categoryCopy copy];
    category = v8->_category;
    v8->_category = v9;

    v11 = [contextCopy copy];
    actionsByContext = v8->_actionsByContext;
    v8->_actionsByContext = v11;
  }

  return v8;
}

- (UIUserNotificationActionSettings)initWithCoder:(id)coder
{
  v12[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCategoryKey"];
  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kActionsByContextKey"];

  v10 = [(UIUserNotificationActionSettings *)self initWithCategory:v5 actionsByContext:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  category = self->_category;
  coderCopy = coder;
  [coderCopy encodeObject:category forKey:@"kCategoryKey"];
  [coderCopy encodeObject:self->_actionsByContext forKey:@"kActionsByContextKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UIMutableUserNotificationActionSettings alloc];
  category = self->_category;
  actionsByContext = self->_actionsByContext;

  return [(UIUserNotificationActionSettings *)v4 initWithCategory:category actionsByContext:actionsByContext];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy[1];
    category = self->_category;
    v7 = equalCopy;
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

- (id)actionsForContext:(unint64_t)context
{
  actionsByContext = self->_actionsByContext;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:context];
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
  allKeys = [(NSDictionary *)self->_actionsByContext allKeys];
  v25 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v4 = 0;
    obj = allKeys;
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
              validatedAction = [v16 validatedAction];
              v4 |= validatedAction != v16;
              [v10 addObject:validatedAction];
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

- (unint64_t)_maximumActionsForContext:(unint64_t)context
{
  if (context == 1)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

@end