@interface _UIMainMenuCommandInvocationNotification
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuCommandInvocationNotification)initWithCoder:(id)a3;
- (id)_initWithCategoryMenuSessionMap:(id)a3 fallbackMenuIdentifier:(id)a4;
- (id)description;
- (id)invokedCommandCategoryMenuIdentifierForSession:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuCommandInvocationNotification

- (id)_initWithCategoryMenuSessionMap:(id)a3 fallbackMenuIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _UIMainMenuCommandInvocationNotification;
  v8 = [(_UIMainMenuCommandInvocationNotification *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    categoryMenuSessionMap = v8->_categoryMenuSessionMap;
    v8->_categoryMenuSessionMap = v9;

    objc_storeStrong(&v8->_fallbackMenuIdentifier, a4);
  }

  return v8;
}

- (id)invokedCommandCategoryMenuIdentifierForSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (categoryMenuSessionMap = self->_categoryMenuSessionMap, [v4 identifier], v7 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](categoryMenuSessionMap, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = self->_fallbackMenuIdentifier;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  categoryMenuSessionMap = self->_categoryMenuSessionMap;
  v5 = a3;
  [v5 encodeObject:categoryMenuSessionMap forKey:@"CategoryMenuSessionMap"];
  [v5 encodeObject:self->_fallbackMenuIdentifier forKey:@"FallbackMenuIdentifier"];
}

- (_UIMainMenuCommandInvocationNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuCommandInvocationNotification *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v6 setWithObjects:{v7, v8, v9, 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"CategoryMenuSessionMap"];
    categoryMenuSessionMap = v5->_categoryMenuSessionMap;
    v5->_categoryMenuSessionMap = v11;

    v13 = objc_opt_self();
    v14 = [v4 decodeObjectOfClass:v13 forKey:@"FallbackMenuIdentifier"];
    fallbackMenuIdentifier = v5->_fallbackMenuIdentifier;
    v5->_fallbackMenuIdentifier = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      categoryMenuSessionMap = v7->_categoryMenuSessionMap;
      v9 = self->_categoryMenuSessionMap;
      v10 = categoryMenuSessionMap;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        v12 = [(NSDictionary *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_17;
        }
      }

      fallbackMenuIdentifier = self->_fallbackMenuIdentifier;
      v14 = v7->_fallbackMenuIdentifier;
      v9 = fallbackMenuIdentifier;
      v15 = v14;
      v11 = v15;
      if (v9 == v15)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = 0;
        if (v9 && v15)
        {
          LOBYTE(v12) = [(NSDictionary *)v9 isEqual:v15];
        }
      }

      goto LABEL_16;
    }

    LOBYTE(v12) = 0;
  }

LABEL_18:

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendDictionarySection:self->_categoryMenuSessionMap withName:@"categoryMenuSessionMap" skipIfEmpty:0];
  v4 = [v3 appendObject:self->_fallbackMenuIdentifier withName:@"fallbackMenuIdentifier"];
  v5 = [v3 build];

  return v5;
}

@end