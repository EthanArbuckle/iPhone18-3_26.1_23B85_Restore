@interface _UIMainMenuCommandInvocationNotification
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuCommandInvocationNotification)initWithCoder:(id)coder;
- (id)_initWithCategoryMenuSessionMap:(id)map fallbackMenuIdentifier:(id)identifier;
- (id)description;
- (id)invokedCommandCategoryMenuIdentifierForSession:(id)session;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuCommandInvocationNotification

- (id)_initWithCategoryMenuSessionMap:(id)map fallbackMenuIdentifier:(id)identifier
{
  mapCopy = map;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = _UIMainMenuCommandInvocationNotification;
  v8 = [(_UIMainMenuCommandInvocationNotification *)&v12 init];
  if (v8)
  {
    v9 = [mapCopy copy];
    categoryMenuSessionMap = v8->_categoryMenuSessionMap;
    v8->_categoryMenuSessionMap = v9;

    objc_storeStrong(&v8->_fallbackMenuIdentifier, identifier);
  }

  return v8;
}

- (id)invokedCommandCategoryMenuIdentifierForSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (!sessionCopy || (categoryMenuSessionMap = self->_categoryMenuSessionMap, [sessionCopy identifier], v7 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](categoryMenuSessionMap, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = self->_fallbackMenuIdentifier;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  categoryMenuSessionMap = self->_categoryMenuSessionMap;
  coderCopy = coder;
  [coderCopy encodeObject:categoryMenuSessionMap forKey:@"CategoryMenuSessionMap"];
  [coderCopy encodeObject:self->_fallbackMenuIdentifier forKey:@"FallbackMenuIdentifier"];
}

- (_UIMainMenuCommandInvocationNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuCommandInvocationNotification *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v6 setWithObjects:{v7, v8, v9, 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"CategoryMenuSessionMap"];
    categoryMenuSessionMap = v5->_categoryMenuSessionMap;
    v5->_categoryMenuSessionMap = v11;

    v13 = objc_opt_self();
    v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"FallbackMenuIdentifier"];
    fallbackMenuIdentifier = v5->_fallbackMenuIdentifier;
    v5->_fallbackMenuIdentifier = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  build = [v3 build];

  return build;
}

@end