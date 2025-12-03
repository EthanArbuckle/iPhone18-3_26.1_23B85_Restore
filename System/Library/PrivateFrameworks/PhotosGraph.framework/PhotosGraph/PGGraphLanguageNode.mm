@interface PGGraphLanguageNode
+ (id)filter;
+ (id)filterWithLocaleIdentifiers:(id)identifiers;
- (BOOL)hasProperties:(id)properties;
- (PGGraphLanguageNode)initWithLocaleIdentifier:(id)identifier;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
@end

@implementation PGGraphLanguageNode

- (id)propertyForKey:(id)key
{
  v10 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"localeIdentifier"])
  {
    v5 = self->_localeIdentifier;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = keyCopy;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphLanguageNode.", &v8, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  localeIdentifier = self->_localeIdentifier;
  v6 = @"localeIdentifier";
  v7[0] = localeIdentifier;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"localeIdentifier"];
    v7 = v6;
    v8 = !v6 || [v6 isEqual:self->_localeIdentifier];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PGGraphLanguageNode)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PGGraphLanguageNode;
  v6 = [(PGGraphNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, identifier);
  }

  return v7;
}

+ (id)filterWithLocaleIdentifiers:(id)identifiers
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C78];
  identifiersCopy = identifiers;
  v5 = [v3 alloc];
  v10 = @"localeIdentifier";
  v11[0] = identifiersCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithLabel:@"Language" domain:205 properties:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Language" domain:205];

  return v2;
}

@end