@interface PTProxySettingsDefinition
+ (id)definitionForSettingsClass:(Class)class;
- (BOOL)allSettingsClassesExistAndHaveCorrectVersion;
- (BOOL)isEqual:(id)equal;
- (Class)settingsClass;
- (PTProxySettingsDefinition)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PTProxySettingsDefinition

+ (id)definitionForSettingsClass:(Class)class
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [PTSettingsClassStructure structureForSettingsClass:class];
  filteredForProxySettings = [v4 filteredForProxySettings];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  childKeys = [filteredForProxySettings childKeys];
  v8 = [childKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(childKeys);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = +[PTProxySettingsDefinition definitionForSettingsClass:](PTProxySettingsDefinition, "definitionForSettingsClass:", [filteredForProxySettings childClassForKey:v12]);
        [dictionary setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [childKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  initWithDefaultValues = [[class alloc] initWithDefaultValues];
  archiveDictionary = [initWithDefaultValues archiveDictionary];
  settingsControllerModule = [(objc_class *)class settingsControllerModule];
  _remoteEditingWhitelistedModule = [settingsControllerModule _remoteEditingWhitelistedModule];

  v18 = objc_alloc_init(PTProxySettingsDefinition);
  [(PTProxySettingsDefinition *)v18 setStructure:filteredForProxySettings];
  [(PTProxySettingsDefinition *)v18 setChildDefinitions:dictionary];
  [(PTProxySettingsDefinition *)v18 setDefaultValueArchive:archiveDictionary];
  [(PTProxySettingsDefinition *)v18 setModule:_remoteEditingWhitelistedModule];

  return v18;
}

- (Class)settingsClass
{
  settingsClassName = [(PTSettingsClassStructure *)self->_structure settingsClassName];
  v3 = NSClassFromString(settingsClassName);

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
  settingsClass = [(PTProxySettingsDefinition *)self settingsClass];
  if (!settingsClass)
  {
    return 0;
  }

  settingsVersionNumber = [(objc_class *)settingsClass settingsVersionNumber];
  if (settingsVersionNumber != [(PTSettingsClassStructure *)self->_structure settingsClassVersion])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSDictionary *)self->_childDefinitions allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if (![*(*(&v12 + 1) + 8 * i) allSettingsClassesExistAndHaveCorrectVersion])
        {
          v10 = 0;
          goto LABEL_14;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else if ([(PTProxySettingsDefinition *)equalCopy isMemberOfClass:objc_opt_class()]&& BSEqualObjects() && BSEqualObjects() && BSEqualObjects())
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_structure];
  v5 = [builder appendObject:self->_childDefinitions];
  v6 = [builder appendObject:self->_defaultValueArchive];
  v7 = [builder appendObject:self->_module];
  v8 = [builder hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  structure = self->_structure;
  coderCopy = coder;
  [coderCopy encodeObject:structure forKey:@"structure"];
  [coderCopy encodeObject:self->_childDefinitions forKey:@"childDefinitions"];
  [coderCopy encodeObject:self->_defaultValueArchive forKey:@"defaultValueArchive"];
  [coderCopy encodeObject:self->_module forKey:@"module"];
}

- (PTProxySettingsDefinition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PTProxySettingsDefinition *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"structure"];
    structure = v5->_structure;
    v5->_structure = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"childDefinitions"];
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
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"defaultValueArchive"];
    defaultValueArchive = v5->_defaultValueArchive;
    v5->_defaultValueArchive = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"module"];
    module = v5->_module;
    v5->_module = v18;
  }

  return v5;
}

@end