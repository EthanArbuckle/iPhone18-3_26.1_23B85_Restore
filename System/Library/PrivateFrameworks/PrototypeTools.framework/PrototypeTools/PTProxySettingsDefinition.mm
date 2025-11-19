@interface PTProxySettingsDefinition
+ (id)definitionForSettingsClass:(Class)a3;
- (BOOL)allSettingsClassesExistAndHaveCorrectVersion;
- (BOOL)isEqual:(id)a3;
- (Class)settingsClass;
- (PTProxySettingsDefinition)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTProxySettingsDefinition

+ (id)definitionForSettingsClass:(Class)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [PTSettingsClassStructure structureForSettingsClass:a3];
  v5 = [v4 filteredForProxySettings];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 childKeys];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = +[PTProxySettingsDefinition definitionForSettingsClass:](PTProxySettingsDefinition, "definitionForSettingsClass:", [v5 childClassForKey:v12]);
        [v6 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = [[a3 alloc] initWithDefaultValues];
  v15 = [v14 archiveDictionary];
  v16 = [(objc_class *)a3 settingsControllerModule];
  v17 = [v16 _remoteEditingWhitelistedModule];

  v18 = objc_alloc_init(PTProxySettingsDefinition);
  [(PTProxySettingsDefinition *)v18 setStructure:v5];
  [(PTProxySettingsDefinition *)v18 setChildDefinitions:v6];
  [(PTProxySettingsDefinition *)v18 setDefaultValueArchive:v15];
  [(PTProxySettingsDefinition *)v18 setModule:v17];

  return v18;
}

- (Class)settingsClass
{
  v2 = [(PTSettingsClassStructure *)self->_structure settingsClassName];
  v3 = NSClassFromString(v2);

  if ([(objc_class *)v3 isSubclassOfClass:objc_opt_class()])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)allSettingsClassesExistAndHaveCorrectVersion
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(PTProxySettingsDefinition *)self settingsClass];
  if (!v3)
  {
    return 0;
  }

  v4 = [(objc_class *)v3 settingsVersionNumber];
  if (v4 != [(PTSettingsClassStructure *)self->_structure settingsClassVersion])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSDictionary *)self->_childDefinitions allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v12 + 1) + 8 * i) allSettingsClassesExistAndHaveCorrectVersion])
        {
          v10 = 0;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_14:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(PTProxySettingsDefinition *)v4 isMemberOfClass:objc_opt_class()]&& BSEqualObjects() && BSEqualObjects() && BSEqualObjects())
  {
    v5 = BSEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_structure];
  v5 = [v3 appendObject:self->_childDefinitions];
  v6 = [v3 appendObject:self->_defaultValueArchive];
  v7 = [v3 appendObject:self->_module];
  v8 = [v3 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  structure = self->_structure;
  v5 = a3;
  [v5 encodeObject:structure forKey:@"structure"];
  [v5 encodeObject:self->_childDefinitions forKey:@"childDefinitions"];
  [v5 encodeObject:self->_defaultValueArchive forKey:@"defaultValueArchive"];
  [v5 encodeObject:self->_module forKey:@"module"];
}

- (PTProxySettingsDefinition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PTProxySettingsDefinition *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"structure"];
    structure = v5->_structure;
    v5->_structure = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"childDefinitions"];
    objc_opt_class();
    objc_opt_class();
    if ((PTValidateDictionary(v12) & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ expected String->%@ dictionary for '%@', got %@", @"PTProxySettingsDescription", @"PTProxySettingsDescription", @"childDefinitions", v12}];
    }

    childDefinitions = v5->_childDefinitions;
    v5->_childDefinitions = v12;
    v14 = v12;

    v15 = PTPlistableClasses();
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"defaultValueArchive"];
    defaultValueArchive = v5->_defaultValueArchive;
    v5->_defaultValueArchive = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"module"];
    module = v5->_module;
    v5->_module = v18;
  }

  return v5;
}

@end