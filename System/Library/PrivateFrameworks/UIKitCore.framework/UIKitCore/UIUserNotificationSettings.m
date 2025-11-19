@interface UIUserNotificationSettings
+ (UIUserNotificationSettings)settingsForTypes:(UIUserNotificationType)types categories:(NSSet *)categories;
+ (id)settingsForRegisteredSettings:(id)a3 requestedSettings:(id)a4;
+ (id)settingsForUserNotificationTypes:(unint64_t)a3 userNotificationActionSettings:(id)a4;
- (BOOL)isEqual:(id)a3;
- (UIUserNotificationSettings)initWithCoder:(id)a3;
- (UIUserNotificationSettings)initWithTypes:(unint64_t)a3 categories:(id)a4;
- (UIUserNotificationSettings)initWithUserNotificationTypes:(unint64_t)a3 userNotificationActionSettings:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)userNotificationActionSettings;
- (id)validatedSettings;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIUserNotificationSettings

+ (id)settingsForUserNotificationTypes:(unint64_t)a3 userNotificationActionSettings:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithUserNotificationTypes:a3 userNotificationActionSettings:v5];

  return v6;
}

+ (UIUserNotificationSettings)settingsForTypes:(UIUserNotificationType)types categories:(NSSet *)categories
{
  v5 = categories;
  v6 = [objc_alloc(objc_opt_class()) initWithTypes:types categories:v5];

  return v6;
}

+ (id)settingsForRegisteredSettings:(id)a3 requestedSettings:(id)a4
{
  v6 = a4;
  v7 = [a3 types];
  v8 = [v6 types];
  v9 = [v6 categories];

  v10 = [a1 settingsForTypes:v8 & v7 categories:v9];

  return v10;
}

- (UIUserNotificationSettings)initWithUserNotificationTypes:(unint64_t)a3 userNotificationActionSettings:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [UIUserNotificationCategory alloc];
          v13 = [v11 category];
          v14 = [v11 actionsByContext];
          v15 = [(UIUserNotificationCategory *)v12 initWithIdentifier:v13 actionsByContext:v14];

          [v5 addObject:v15];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = [(UIUserNotificationSettings *)self initWithTypes:a3 categories:v5];
  return v16;
}

- (UIUserNotificationSettings)initWithTypes:(unint64_t)a3 categories:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v23.receiver = self;
  v23.super_class = UIUserNotificationSettings;
  v7 = [(UIUserNotificationSettings *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_types = a3;
    v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 copy];
            [(NSSet *)v9 addObject:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    categories = v8->_categories;
    v8->_categories = v9;
  }

  return v8;
}

- (UIUserNotificationSettings)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"kUserNotificationTypesKey"];
  v6 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v6 setWithArray:{v7, v12, v13}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kUserNotificationCategoriesKey"];

  v10 = [(UIUserNotificationSettings *)self initWithTypes:v5 categories:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  types = self->_types;
  v5 = a3;
  [v5 encodeInteger:types forKey:@"kUserNotificationTypesKey"];
  [v5 encodeObject:self->_categories forKey:@"kUserNotificationCategoriesKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  types = self->_types;
  categories = self->_categories;

  return [v4 initWithTypes:types categories:categories];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    types = self->_types;
    v6 = v4;
    v7 = [v6 types];
    categories = self->_categories;
    v9 = [v6 categories];

    v10 = [(NSSet *)categories isEqual:v9];
    if (types == v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"<%@: %p types: ("), objc_opt_class(), self;;
  v4 = v3;
  types = self->_types;
  if ((types & 4) != 0)
  {
    [v3 appendString:@"UIUserNotificationTypeAlert"];
    types = self->_types;
    if ((types & 1) == 0)
    {
LABEL_3:
      if ((types & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      [v4 appendString:@" UIUserNotificationTypeSound"];
      if (self->_types)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((types & 1) == 0)
  {
    goto LABEL_3;
  }

  [v4 appendString:@" UIUserNotificationTypeBadge"];
  types = self->_types;
  if ((types & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (types)
  {
    goto LABEL_5;
  }

LABEL_13:
  [v4 appendString:@"none"];
LABEL_5:
  [v4 appendString:@";"]);
  if ([(NSSet *)self->_categories count])
  {
    [v4 appendFormat:@"categories: %@;", self->_categories];
  }

  [v4 appendString:@">"];

  return v4;
}

- (id)validatedSettings
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSSet count](v2->_categories, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2->_categories;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v17;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      v11 = [v10 validatedCategory];
      v12 = v11 != v10;
      if (v11)
      {
        [v3 addObject:v11];
      }

      v7 |= v12;
    }

    v6 = [(NSSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v6);

  if (v7)
  {
    v13 = [(UIUserNotificationSettings *)v2 copy];

    v14 = v3;
    v4 = *(v13 + 16);
    *(v13 + 16) = v14;
    v2 = v13;
LABEL_12:
  }

  return v2;
}

- (id)userNotificationActionSettings
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSSet count](self->_categories, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_categories;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [UIUserNotificationActionSettings alloc];
        v11 = [v9 identifier];
        v12 = [v9 actionsByContext];
        v13 = [(UIUserNotificationActionSettings *)v10 initWithCategory:v11 actionsByContext:v12];

        [v3 addObject:v13];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

@end