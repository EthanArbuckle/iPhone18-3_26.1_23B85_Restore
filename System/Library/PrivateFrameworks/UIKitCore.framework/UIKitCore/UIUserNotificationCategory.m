@interface UIUserNotificationCategory
- (BOOL)isEqual:(id)a3;
- (NSArray)actionsForContext:(UIUserNotificationActionContext)context;
- (UIUserNotificationCategory)init;
- (UIUserNotificationCategory)initWithCoder:(NSCoder *)coder;
- (UIUserNotificationCategory)initWithIdentifier:(id)a3 actionsByContext:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)validatedCategory;
- (unint64_t)_maximumActionsForContext:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIUserNotificationCategory

- (UIUserNotificationCategory)init
{
  v3.receiver = self;
  v3.super_class = UIUserNotificationCategory;
  return [(UIUserNotificationCategory *)&v3 init];
}

- (UIUserNotificationCategory)initWithIdentifier:(id)a3 actionsByContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIUserNotificationCategory *)self init];
  v9 = v8;
  if (v8)
  {
    UIUserNotificationCategoryCommonInit(v8, v6, v7);
  }

  return v9;
}

- (UIUserNotificationCategory)initWithCoder:(NSCoder *)coder
{
  v13[4] = *MEMORY[0x1E69E9840];
  v4 = coder;
  v12.receiver = self;
  v12.super_class = UIUserNotificationCategory;
  v5 = [(UIUserNotificationCategory *)&v12 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCategoryIdentifierKey"];
    v7 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v13[3] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
    v9 = [v7 setWithArray:v8];
    v10 = [(NSCoder *)v4 decodeObjectOfClasses:v9 forKey:@"kActionsByContextKey"];

    UIUserNotificationCategoryCommonInit(v5, v6, v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"kCategoryIdentifierKey"];
  [v5 encodeObject:self->_actionsByContext forKey:@"kActionsByContextKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UIMutableUserNotificationCategory alloc];
  identifier = self->_identifier;
  actionsByContext = self->_actionsByContext;

  return [(UIUserNotificationCategory *)v4 initWithIdentifier:identifier actionsByContext:actionsByContext];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[1];
    identifier = self->_identifier;
    v7 = v4;
    LODWORD(v5) = [v5 isEqualToString:identifier];
    v8 = v7[2];

    v9 = v5 & [v8 isEqual:self->_actionsByContext];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (NSArray)actionsForContext:(UIUserNotificationActionContext)context
{
  actionsByContext = self->_actionsByContext;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:context];
  v5 = [(NSDictionary *)actionsByContext objectForKey:v4];

  return v5;
}

- (id)validatedCategory
{
  v2 = self;
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(UIUserNotificationCategory *)self identifier];

  if (!v3)
  {
    NSLog(&cfstr_IgnoringUiuser.isa, v2);
    v20 = 0;
    goto LABEL_24;
  }

  v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](v2->_actionsByContext, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [(NSDictionary *)v2->_actionsByContext allKeys];
  v26 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v26)
  {

LABEL_22:
    v19 = v2;
    goto LABEL_23;
  }

  v5 = 0;
  v23 = *v32;
  v24 = v2;
  obj = v4;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v32 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v31 + 1) + 8 * i);
      v8 = [(NSDictionary *)v2->_actionsByContext objectForKey:v7];
      v9 = -[UIUserNotificationCategory _maximumActionsForContext:](v2, "_maximumActionsForContext:", [v7 unsignedIntegerValue]);
      if ([v8 count] > v9)
      {
        v10 = [v8 subarrayWithRange:{0, v9}];

        v5 = 1;
        v8 = v10;
      }

      v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * j);
            v18 = [v17 validatedAction];
            v5 |= v18 != v17;
            [v11 addObject:v18];
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v14);
      }

      [v25 setObject:v11 forKey:v7];
      v2 = v24;
    }

    v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v26);

  if ((v5 & 1) == 0)
  {
    goto LABEL_22;
  }

  v19 = [objc_alloc(objc_opt_class()) initWithIdentifier:v24->_identifier actionsByContext:v25];
LABEL_23:
  v20 = v19;

LABEL_24:

  return v20;
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