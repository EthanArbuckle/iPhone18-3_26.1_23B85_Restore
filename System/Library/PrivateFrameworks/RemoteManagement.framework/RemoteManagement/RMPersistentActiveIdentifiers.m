@interface RMPersistentActiveIdentifiers
- (RMPersistentActiveIdentifiers)initWithCoder:(id)a3;
- (RMPersistentActiveIdentifiers)initWithConfigurationPayloads:(id)a3;
- (RMPersistentActiveIdentifiers)initWithUniqueIdentifiersByConfigurationType:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMPersistentActiveIdentifiers

- (RMPersistentActiveIdentifiers)initWithConfigurationPayloads:(id)a3
{
  v20 = self;
  v3 = a3;
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
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
        v7 = [v6 declarationType];
        v8 = [v4 objectForKeyedSubscript:v7];
        if (!v8)
        {
          v8 = objc_opt_new();
          [v4 setObject:v8 forKeyedSubscript:v7];
        }

        v9 = [[RMDeclarationUniqueIdentifier alloc] initWithDeclarationPayload:v6];
        [v8 addObject:v9];

        v10 = [v6 assetReferences];
        v11 = [v10 valueForKey:@"asset"];

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

  v18 = [(RMPersistentActiveIdentifiers *)v20 initWithUniqueIdentifiersByConfigurationType:v4];
  return v18;
}

- (RMPersistentActiveIdentifiers)initWithUniqueIdentifiersByConfigurationType:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RMPersistentActiveIdentifiers;
  v5 = [(RMPersistentActiveIdentifiers *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueIdentifiersByConfigurationType = v5->_uniqueIdentifiersByConfigurationType;
    v5->_uniqueIdentifiersByConfigurationType = v6;
  }

  return v5;
}

- (RMPersistentActiveIdentifiers)initWithCoder:(id)a3
{
  v4 = a3;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v10 count:4];
  v6 = [NSSet setWithArray:v5];

  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"uniqueIdentifiersByConfigurationType"];

  if (v7)
  {
    self = [(RMPersistentActiveIdentifiers *)self initWithUniqueIdentifiersByConfigurationType:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMPersistentActiveIdentifiers *)self uniqueIdentifiersByConfigurationType];
  [v4 encodeObject:v5 forKey:@"uniqueIdentifiersByConfigurationType"];
}

@end