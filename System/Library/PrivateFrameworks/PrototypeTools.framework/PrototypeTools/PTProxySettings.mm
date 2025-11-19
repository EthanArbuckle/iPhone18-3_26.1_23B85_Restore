@interface PTProxySettings
+ (id)proxyWithDefinition:(id)a3;
+ (id)settingsOrProxyWithDefinition:(id)a3;
- (PTProxySettings)init;
- (PTProxySettings)initWithDefaultValues;
- (id)_createChildForKey:(id)a3;
- (id)_initWithDefinition:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)module;
- (void)restoreDefaultValues;
- (void)restoreFromArchiveDictionary:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation PTProxySettings

+ (id)proxyWithDefinition:(id)a3
{
  v3 = a3;
  v4 = [[PTProxySettings alloc] _initWithDefinition:v3];

  return v4;
}

+ (id)settingsOrProxyWithDefinition:(id)a3
{
  v3 = a3;
  if ([v3 allSettingsClassesExistAndHaveCorrectVersion])
  {
    v4 = [v3 settingsClass];

    v5 = [[v4 alloc] initWithDefaultValues];
  }

  else
  {
    v5 = [PTProxySettings proxyWithDefinition:v3];
  }

  return v5;
}

- (id)_initWithDefinition:(id)a3
{
  v5 = a3;
  v6 = [v5 structure];
  v11.receiver = self;
  v11.super_class = PTProxySettings;
  v7 = [(PTSettings *)&v11 _initWithClassStructure:v6];

  if (v7)
  {
    objc_storeStrong(v7 + 7, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = v7[6];
    v7[6] = v8;

    [v7 _createChildrenAndOutlets];
    [v7 restoreDefaultValues];
  }

  return v7;
}

- (id)module
{
  v2 = [(PTProxySettingsDefinition *)self->_definition module];
  v3 = [v2 copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "_initWithDefinition:", self->_definition}];
  [v4 applySettings:self];
  return v4;
}

- (void)restoreDefaultValues
{
  [(PTSettings *)self _sendWillRestoreDefaults];
  v3 = [(PTProxySettingsDefinition *)self->_definition defaultValueArchive];
  [(PTSettings *)self _applyArchiveDictionary:v3];

  [(PTSettings *)self _sendDidRestoreDefaults];
}

- (void)restoreFromArchiveDictionary:(id)a3
{
  definition = self->_definition;
  v6 = a3;
  v5 = [(PTProxySettingsDefinition *)definition defaultValueArchive];
  [(PTSettings *)self _applyArchiveDictionary:v5];

  [(PTSettings *)self _applyArchiveDictionary:v6];
}

- (id)_createChildForKey:(id)a3
{
  definition = self->_definition;
  v4 = a3;
  v5 = [(PTProxySettingsDefinition *)definition childDefinitions];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [PTProxySettings settingsOrProxyWithDefinition:v6];

  return v7;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(PTProxySettingsDefinition *)self->_definition structure];
  v8 = [v7 childKeys];
  v9 = [v8 containsObject:v6];

  v10 = [v7 outletKeys];
  v11 = [v10 containsObject:v6];

  v12 = [v7 leafKeys];
  v13 = [v12 containsObject:v6];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || v13 && (!v14 || PTObjectIsRecursivelyPlistable(v14)))
  {
    [(NSMutableDictionary *)self->_values setObject:v14 forKeyedSubscript:v6];
  }

  [(PTSettings *)self invalidateValueForKey:v6];
}

- (PTProxySettings)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"PTProxySettings forbids -init. Use +proxyForSettings: instead."];

  return 0;
}

- (PTProxySettings)initWithDefaultValues
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"PTProxySettings forbids -initWithDefaultValues. Use +proxyForSettings: instead."];

  return 0;
}

@end