@interface PGGraphConcreteNode
- (BOOL)hasProperties;
- (PGGraphConcreteNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (id)_stringValueForPropertyWithKey:(id)a3;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
- (id)propertyKeys;
- (unint64_t)propertiesCount;
- (void)enumeratePropertiesUsingBlock:(id)a3;
@end

@implementation PGGraphConcreteNode

- (void)enumeratePropertiesUsingBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  properties = v5->_properties;
  if (properties)
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSMutableDictionary *)properties keyEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = *v15;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)v5->_properties objectForKeyedSubscript:v11];
        v4[2](v4, v11, v12, &v18);

        if (v18)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  objc_sync_exit(v5);

  v13 = *MEMORY[0x277D85DE8];
}

- (id)propertyDictionary
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2->_properties];
  objc_sync_exit(v2);

  return v3;
}

- (id)propertyKeys
{
  v2 = self;
  objc_sync_enter(v2);
  properties = v2->_properties;
  if (properties && [(NSMutableDictionary *)properties count])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [(NSMutableDictionary *)v2->_properties allKeys];
    v6 = [v4 setWithArray:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  objc_sync_exit(v2);

  return v6;
}

- (unint64_t)propertiesCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_properties count];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)hasProperties
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_properties count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  properties = v5->_properties;
  if (properties)
  {
    v7 = [(NSMutableDictionary *)properties objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v5);

  return v7;
}

- (id)_stringValueForPropertyWithKey:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGGraphConcreteNode *)self propertyForKey:v4];
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
  v11 = [v10 loggingConnection];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Unsupported type for property %@: %@. Returning nil.", &v12, 0x16u);
  }

  v7 = 0;
LABEL_5:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (PGGraphConcreteNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PGGraphConcreteNode;
  v10 = [(PGGraphNode *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    label = v10->_label;
    v10->_label = v11;

    v10->_domain = a4;
    v13 = [v9 mutableCopy];
    properties = v10->_properties;
    v10->_properties = v13;
  }

  return v10;
}

@end