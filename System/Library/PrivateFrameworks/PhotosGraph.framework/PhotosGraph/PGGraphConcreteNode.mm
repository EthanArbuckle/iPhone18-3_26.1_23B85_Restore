@interface PGGraphConcreteNode
- (BOOL)hasProperties;
- (PGGraphConcreteNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)_stringValueForPropertyWithKey:(id)key;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
- (id)propertyKeys;
- (unint64_t)propertiesCount;
- (void)enumeratePropertiesUsingBlock:(id)block;
@end

@implementation PGGraphConcreteNode

- (void)enumeratePropertiesUsingBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  properties = selfCopy->_properties;
  if (properties)
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    keyEnumerator = [(NSMutableDictionary *)properties keyEnumerator];
    v8 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = *v15;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)selfCopy->_properties objectForKeyedSubscript:v11];
        blockCopy[2](blockCopy, v11, v12, &v18);

        if (v18)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

- (id)propertyDictionary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:selfCopy->_properties];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)propertyKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  properties = selfCopy->_properties;
  if (properties && [(NSMutableDictionary *)properties count])
  {
    v4 = MEMORY[0x277CBEB98];
    allKeys = [(NSMutableDictionary *)selfCopy->_properties allKeys];
    v6 = [v4 setWithArray:allKeys];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (unint64_t)propertiesCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_properties count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)hasProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_properties count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  properties = selfCopy->_properties;
  if (properties)
  {
    v7 = [(NSMutableDictionary *)properties objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_stringValueForPropertyWithKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(PGGraphConcreteNode *)self propertyForKey:keyCopy];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = ([v5 methodForSelector:sel_stringValue])(v5, sel_stringValue);
    goto LABEL_4;
  }

  v10 = +[PGLogging sharedLogging];
  loggingConnection = [v10 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = keyCopy;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Unsupported type for property %@: %@. Returning nil.", &v12, 0x16u);
  }

  v7 = 0;
LABEL_5:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (PGGraphConcreteNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = PGGraphConcreteNode;
  v10 = [(PGGraphNode *)&v16 init];
  if (v10)
  {
    v11 = [labelCopy copy];
    label = v10->_label;
    v10->_label = v11;

    v10->_domain = domain;
    v13 = [propertiesCopy mutableCopy];
    properties = v10->_properties;
    v10->_properties = v13;
  }

  return v10;
}

@end