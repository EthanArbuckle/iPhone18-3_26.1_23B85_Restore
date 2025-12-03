@interface SRTrialConfiguration
+ (id)configuration;
- (SRTrialConfiguration)init;
- (id)clientsForNamespace:(id)namespace;
- (id)debugDescription;
- (id)namespaceTypes;
- (id)namespaceTypesForClient:(id)client;
- (void)clear;
- (void)setParameterName:(id)name namespaceId:(id)id;
- (void)setProperties:(id)properties client:(id)client;
@end

@implementation SRTrialConfiguration

- (SRTrialConfiguration)init
{
  v12.receiver = self;
  v12.super_class = SRTrialConfiguration;
  v2 = [(SRTrialConfiguration *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v2->_properties;
    v2->_properties = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    namespaceDescription = v2->_namespaceDescription;
    v2->_namespaceDescription = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    namespaceMap = v2->_namespaceMap;
    v2->_namespaceMap = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    parameterMap = v2->_parameterMap;
    v2->_parameterMap = v9;
  }

  return v2;
}

+ (id)configuration
{
  v2 = objc_alloc_init(SRTrialConfiguration);

  return v2;
}

- (id)namespaceTypes
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_parameterMap;
  v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v27 + 1) + 8 * v4);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = [(NSMutableDictionary *)self->_parameterMap objectForKeyedSubscript:v5];
        v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v24;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v24 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v23 + 1) + 8 * i);
              v12 = [v3 objectForKeyedSubscript:v11];
              if (!v12)
              {
                v12 = objc_alloc_init(SRNamespaceType);
                v13 = [(NSMutableDictionary *)self->_namespaceDescription objectForKeyedSubscript:v11];
                [(SRNamespaceType *)v12 setNamespaceName:v13];

                [(SRNamespaceType *)v12 setNamespaceId:v11];
                [v3 setObject:v12 forKey:v11];
              }

              [(SRNamespaceType *)v12 addParameterName:v5];
            }

            v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v8);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  v14 = MEMORY[0x1E695DFD8];
  allValues = [v3 allValues];
  v16 = [v14 setWithArray:allValues];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)debugDescription
{
  v3 = [&stru_1F2422260 mutableCopy];
  v4 = v3;
  if (self->_properties)
  {
    [v3 appendFormat:@"properties: %@\n", self->_properties];
  }

  if (self->_namespaceDescription)
  {
    [v4 appendFormat:@"namespaceDescription: %@\n", self->_namespaceDescription];
  }

  if (self->_properties)
  {
    [v4 appendFormat:@"namespaceMap: %@\n", self->_namespaceMap];
  }

  if (self->_parameterMap)
  {
    [v4 appendFormat:@"parameterMap: %@\n", self->_parameterMap];
  }

  return v4;
}

- (void)setProperties:(id)properties client:(id)client
{
  propertiesCopy = properties;
  clientCopy = client;
  v7 = [propertiesCopy objectForKeyedSubscript:@"namespaceId"];
  v8 = [propertiesCopy objectForKeyedSubscript:@"namespaceName"];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [(NSMutableDictionary *)self->_namespaceMap objectForKeyedSubscript:clientCopy];

    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(NSMutableDictionary *)self->_namespaceMap setObject:v11 forKeyedSubscript:clientCopy];
    }

    v12 = [(NSMutableDictionary *)self->_namespaceMap objectForKeyedSubscript:clientCopy];
    [v12 addObject:v7];

    [(NSMutableDictionary *)self->_properties setObject:propertiesCopy forKeyedSubscript:v7];
    [(NSMutableDictionary *)self->_namespaceDescription setObject:v9 forKeyedSubscript:v7];
  }
}

- (void)setParameterName:(id)name namespaceId:(id)id
{
  nameCopy = name;
  parameterMap = self->_parameterMap;
  idCopy = id;
  v8 = [(NSMutableDictionary *)parameterMap objectForKeyedSubscript:nameCopy];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_parameterMap setObject:v9 forKeyedSubscript:nameCopy];
  }

  v10 = [(NSMutableDictionary *)self->_parameterMap objectForKeyedSubscript:nameCopy];
  [v10 addObject:idCopy];
}

- (id)namespaceTypesForClient:(id)client
{
  v38 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = clientCopy;
  [(NSMutableDictionary *)self->_namespaceMap objectForKeyedSubscript:clientCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v32 + 1) + 8 * v6);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = self->_parameterMap;
        v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v28 + 1) + 8 * i);
              v14 = [(NSMutableDictionary *)self->_parameterMap objectForKeyedSubscript:v13];
              v15 = [v14 containsObject:v7];

              if (v15)
              {
                v16 = [v5 objectForKeyedSubscript:v7];
                if (!v16)
                {
                  v16 = objc_alloc_init(SRNamespaceType);
                  v17 = [(NSMutableDictionary *)self->_namespaceDescription objectForKeyedSubscript:v7];
                  [(SRNamespaceType *)v16 setNamespaceName:v17];

                  [(SRNamespaceType *)v16 setNamespaceId:v7];
                  [v5 setObject:v16 forKey:v7];
                }

                [(SRNamespaceType *)v16 addParameterName:v13];
              }
            }

            v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v10);
        }

        v6 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  v18 = MEMORY[0x1E695DFD8];
  allValues = [v5 allValues];
  v20 = [v18 setWithArray:allValues];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)clientsForNamespace:(id)namespace
{
  v24 = *MEMORY[0x1E69E9840];
  namespaceCopy = namespace;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_namespaceMap;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_namespaceMap objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [(NSMutableDictionary *)self->_namespaceMap objectForKeyedSubscript:v10];
          v14 = [v13 containsObject:namespaceCopy];

          if (v14)
          {
            [array addObject:v10];
          }
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x1E695DFD8] setWithArray:array];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)clear
{
  [(NSMutableDictionary *)self->_properties removeAllObjects];
  [(NSMutableDictionary *)self->_namespaceDescription removeAllObjects];
  [(NSMutableDictionary *)self->_parameterMap removeAllObjects];
  namespaceMap = self->_namespaceMap;

  [(NSMutableDictionary *)namespaceMap removeAllObjects];
}

@end