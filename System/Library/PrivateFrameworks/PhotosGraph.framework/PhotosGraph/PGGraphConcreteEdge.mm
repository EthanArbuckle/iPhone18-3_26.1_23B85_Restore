@interface PGGraphConcreteEdge
- (BOOL)hasProperties;
- (PGGraphConcreteEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
- (id)propertyKeys;
- (unint64_t)propertiesCount;
- (void)enumeratePropertiesUsingBlock:(id)a3;
@end

@implementation PGGraphConcreteEdge

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

- (PGGraphConcreteEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v12 = a3;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = PGGraphConcreteEdge;
  v14 = [(PGGraphEdge *)&v20 initWithSourceNode:a4 targetNode:a5];
  if (v14)
  {
    v15 = [v12 copy];
    label = v14->_label;
    v14->_label = v15;

    v14->_domain = a6;
    v17 = [v13 mutableCopy];
    properties = v14->_properties;
    v14->_properties = v17;
  }

  return v14;
}

@end