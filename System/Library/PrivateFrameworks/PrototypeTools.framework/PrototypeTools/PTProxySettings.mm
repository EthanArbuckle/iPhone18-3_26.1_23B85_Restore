@interface PTProxySettings
+ (id)proxyWithDefinition:(id)definition;
+ (id)settingsOrProxyWithDefinition:(id)definition;
- (PTProxySettings)init;
- (PTProxySettings)initWithDefaultValues;
- (id)_createChildForKey:(id)key;
- (id)_initWithDefinition:(id)definition;
- (id)copyWithZone:(_NSZone *)zone;
- (id)module;
- (void)restoreDefaultValues;
- (void)restoreFromArchiveDictionary:(id)dictionary;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation PTProxySettings

+ (id)proxyWithDefinition:(id)definition
{
  definitionCopy = definition;
  v4 = [[PTProxySettings alloc] _initWithDefinition:definitionCopy];

  return v4;
}

+ (id)settingsOrProxyWithDefinition:(id)definition
{
  definitionCopy = definition;
  if ([definitionCopy allSettingsClassesExistAndHaveCorrectVersion])
  {
    settingsClass = [definitionCopy settingsClass];

    initWithDefaultValues = [[settingsClass alloc] initWithDefaultValues];
  }

  else
  {
    initWithDefaultValues = [PTProxySettings proxyWithDefinition:definitionCopy];
  }

  return initWithDefaultValues;
}

- (id)_initWithDefinition:(id)definition
{
  definitionCopy = definition;
  structure = [definitionCopy structure];
  v11.receiver = self;
  v11.super_class = PTProxySettings;
  v7 = [(PTSettings *)&v11 _initWithClassStructure:structure];

  if (v7)
  {
    objc_storeStrong(v7 + 7, definition);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = v7[6];
    v7[6] = dictionary;

    [v7 _createChildrenAndOutlets];
    [v7 restoreDefaultValues];
  }

  return v7;
}

- (id)module
{
  module = [(PTProxySettingsDefinition *)self->_definition module];
  v3 = [module copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initWithDefinition:", self->_definition}];
  [v4 applySettings:self];
  return v4;
}

- (void)restoreDefaultValues
{
  [(PTSettings *)self _sendWillRestoreDefaults];
  defaultValueArchive = [(PTProxySettingsDefinition *)self->_definition defaultValueArchive];
  [(PTSettings *)self _applyArchiveDictionary:defaultValueArchive];

  [(PTSettings *)self _sendDidRestoreDefaults];
}

- (void)restoreFromArchiveDictionary:(id)dictionary
{
  definition = self->_definition;
  dictionaryCopy = dictionary;
  defaultValueArchive = [(PTProxySettingsDefinition *)definition defaultValueArchive];
  [(PTSettings *)self _applyArchiveDictionary:defaultValueArchive];

  [(PTSettings *)self _applyArchiveDictionary:dictionaryCopy];
}

- (id)_createChildForKey:(id)key
{
  definition = self->_definition;
  keyCopy = key;
  childDefinitions = [(PTProxySettingsDefinition *)definition childDefinitions];
  v6 = [childDefinitions objectForKeyedSubscript:keyCopy];

  v7 = [PTProxySettings settingsOrProxyWithDefinition:v6];

  return v7;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  structure = [(PTProxySettingsDefinition *)self->_definition structure];
  childKeys = [structure childKeys];
  v9 = [childKeys containsObject:keyCopy];

  outletKeys = [structure outletKeys];
  v11 = [outletKeys containsObject:keyCopy];

  leafKeys = [structure leafKeys];
  v13 = [leafKeys containsObject:keyCopy];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || v13 && (!valueCopy || PTObjectIsRecursivelyPlistable(valueCopy)))
  {
    [(NSMutableDictionary *)self->_values setObject:valueCopy forKeyedSubscript:keyCopy];
  }

  [(PTSettings *)self invalidateValueForKey:keyCopy];
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