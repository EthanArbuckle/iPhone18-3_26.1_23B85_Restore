@interface RMPersistentActiveIdentifiers
- (RMPersistentActiveIdentifiers)initWithCoder:(id)coder;
- (RMPersistentActiveIdentifiers)initWithConfigurationPayloads:(id)payloads;
- (RMPersistentActiveIdentifiers)initWithUniqueIdentifiersByConfigurationType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMPersistentActiveIdentifiers

- (RMPersistentActiveIdentifiers)initWithConfigurationPayloads:(id)payloads
{
  selfCopy = self;
  payloadsCopy = payloads;
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = payloadsCopy;
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        declarationType = [v6 declarationType];
        v8 = [v4 objectForKeyedSubscript:declarationType];
        if (!v8)
        {
          v8 = objc_opt_new();
          [v4 setObject:v8 forKeyedSubscript:declarationType];
        }

        v9 = [[RMDeclarationUniqueIdentifier alloc] initWithDeclarationPayload:v6];
        [v8 addObject:v9];

        assetReferences = [v6 assetReferences];
        v11 = [assetReferences valueForKey:@"asset"];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [[RMDeclarationUniqueIdentifier alloc] initWithDeclarationPayload:*(*(&v24 + 1) + 8 * j)];
              [v8 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  v18 = [(RMPersistentActiveIdentifiers *)selfCopy initWithUniqueIdentifiersByConfigurationType:v4];
  return v18;
}

- (RMPersistentActiveIdentifiers)initWithUniqueIdentifiersByConfigurationType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = RMPersistentActiveIdentifiers;
  v5 = [(RMPersistentActiveIdentifiers *)&v9 init];
  if (v5)
  {
    v6 = [typeCopy copy];
    uniqueIdentifiersByConfigurationType = v5->_uniqueIdentifiersByConfigurationType;
    v5->_uniqueIdentifiersByConfigurationType = v6;
  }

  return v5;
}

- (RMPersistentActiveIdentifiers)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v10 count:4];
  v6 = [NSSet setWithArray:v5];

  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"uniqueIdentifiersByConfigurationType"];

  if (v7)
  {
    self = [(RMPersistentActiveIdentifiers *)self initWithUniqueIdentifiersByConfigurationType:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifiersByConfigurationType = [(RMPersistentActiveIdentifiers *)self uniqueIdentifiersByConfigurationType];
  [coderCopy encodeObject:uniqueIdentifiersByConfigurationType forKey:@"uniqueIdentifiersByConfigurationType"];
}

@end