@interface RMSubscribedConfigurationReference
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReference:(id)reference;
- (RMSubscribedConfigurationReference)initWithCoder:(id)coder;
- (RMSubscribedConfigurationReference)initWithDeclaration:(id)declaration subscriberStore:(id)store assets:(id)assets;
- (id)_resolveDynamicDeclaration:(id)declaration;
- (id)assetWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMSubscribedConfigurationReference

- (RMSubscribedConfigurationReference)initWithDeclaration:(id)declaration subscriberStore:(id)store assets:(id)assets
{
  declarationCopy = declaration;
  storeCopy = store;
  assetsCopy = assets;
  v16.receiver = self;
  v16.super_class = RMSubscribedConfigurationReference;
  v11 = [(RMSubscribedConfigurationReference *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(RMSubscribedConfigurationReference *)v11 _resolveDynamicDeclaration:declarationCopy];
    declaration = v12->_declaration;
    v12->_declaration = v13;

    objc_storeStrong(&v12->_store, store);
    objc_storeStrong(&v12->_assets, assets);
  }

  return v12;
}

- (id)_resolveDynamicDeclaration:(id)declaration
{
  declarationCopy = declaration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [declarationCopy serializeWithType:0];
    v12 = 0;
    v5 = [MEMORY[0x277D46018] load:v4 serializationType:0 error:&v12];
    v6 = v12;
    subscribedConfigurationReference = [MEMORY[0x277D45F58] subscribedConfigurationReference];
    v8 = subscribedConfigurationReference;
    if (v5)
    {
      v9 = v5;
      if (os_log_type_enabled(subscribedConfigurationReference, OS_LOG_TYPE_DEBUG))
      {
        [(RMSubscribedConfigurationReference *)v5 _resolveDynamicDeclaration:v8];
        v9 = v5;
      }
    }

    else
    {
      v9 = declarationCopy;
      if (os_log_type_enabled(subscribedConfigurationReference, OS_LOG_TYPE_ERROR))
      {
        [(RMSubscribedConfigurationReference *)v6 _resolveDynamicDeclaration:v8];
        v9 = declarationCopy;
      }
    }

    v10 = v9;
  }

  else
  {
    v10 = declarationCopy;
  }

  return v10;
}

- (id)assetWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  assets = [(RMSubscribedConfigurationReference *)self assets];
  v6 = [assets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(assets);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        declarationIdentifier = [v9 declarationIdentifier];
        v11 = [declarationIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [assets countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (RMSubscribedConfigurationReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"declaration"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"store"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"assets"];

  v11 = [(RMSubscribedConfigurationReference *)self initWithDeclaration:v5 subscriberStore:v6 assets:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  declaration = [(RMSubscribedConfigurationReference *)self declaration];
  [coderCopy encodeObject:declaration forKey:@"declaration"];

  store = [(RMSubscribedConfigurationReference *)self store];
  [coderCopy encodeObject:store forKey:@"store"];

  assets = [(RMSubscribedConfigurationReference *)self assets];
  [coderCopy encodeObject:assets forKey:@"assets"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMSubscribedConfigurationReference *)self isEqualToReference:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToReference:(id)reference
{
  referenceCopy = reference;
  declaration = [(RMSubscribedConfigurationReference *)self declaration];
  declarationType = [declaration declarationType];
  declaration2 = [referenceCopy declaration];
  declarationType2 = [declaration2 declarationType];
  if ([declarationType isEqualToString:declarationType2])
  {
    declaration3 = [(RMSubscribedConfigurationReference *)self declaration];
    declarationIdentifier = [declaration3 declarationIdentifier];
    declaration4 = [referenceCopy declaration];
    declarationIdentifier2 = [declaration4 declarationIdentifier];
    if ([declarationIdentifier isEqualToString:declarationIdentifier2])
    {
      v24 = declaration3;
      declaration5 = [(RMSubscribedConfigurationReference *)self declaration];
      declarationServerToken = [declaration5 declarationServerToken];
      declaration6 = [referenceCopy declaration];
      [declaration6 declarationServerToken];
      v22 = v25 = declarationServerToken;
      if ([declarationServerToken isEqualToString:?])
      {
        store = [(RMSubscribedConfigurationReference *)self store];
        store2 = [referenceCopy store];
        v21 = store;
        if ([store isEqual:?])
        {
          assets = [(RMSubscribedConfigurationReference *)self assets];
          v16 = [assets count];
          assets2 = [referenceCopy assets];
          v17 = v16 == [assets2 count];
        }

        else
        {
          v17 = 0;
        }

        declaration3 = v24;
      }

      else
      {
        v17 = 0;
        declaration3 = v24;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_resolveDynamicDeclaration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_261E36000, a2, OS_LOG_TYPE_DEBUG, "Resolved dynamic configuration: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_resolveDynamicDeclaration:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_261E36000, a2, OS_LOG_TYPE_ERROR, "Failed to resolve dynamic configuration: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end