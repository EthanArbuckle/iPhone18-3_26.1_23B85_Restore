@interface PGGraphNode
- (BOOL)isEqualToNode:(id)a3;
- (MANodeFilter)entityFilter;
- (PGGraphNode)init;
- (id)keywordDescription;
- (id)propertyForKey:(id)a3;
- (id)shortDescription;
- (unint64_t)propertiesCount;
- (void)setWeight:(float)a3;
@end

@implementation PGGraphNode

- (unint64_t)propertiesCount
{
  v2 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (id)propertyForKey:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PGLogging sharedLogging];
  v6 = [v5 loggingConnection];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = objc_opt_class();
  }

  v10.receiver = self;
  v10.super_class = PGGraphNode;
  v7 = [(MANode *)&v10 propertyForKey:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(MANode *)self identifier];
  v6 = [(PGGraphNode *)self label];
  v7 = [v3 stringWithFormat:@"[%@ %p] id:[%lu] label:[%@]", v4, self, v5, v6];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ edgesCount:[%ld] inEdgesCount:[%ld] outEdgesCount:[%ld]", v7, -[MANode edgesCount](self, "edgesCount"), -[MANode inEdgesCount](self, "inEdgesCount"), -[MANode outEdgesCount](self, "outEdgesCount")];

  return v8;
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (v4 == self)
  {
    v9 = 1;
    goto LABEL_11;
  }

  v6 = [(PGGraphNode *)self domain];
  if (v6 == [(PGGraphNode *)v5 domain])
  {
    v7 = [(PGGraphNode *)self label];
    v8 = [(PGGraphNode *)v5 label];
    v9 = (v7 == v8 || [v7 isEqualToString:v8]) && -[MANode hasEqualPropertiesToNode:](self, "hasEqualPropertiesToNode:", v5);
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (void)setWeight:(float)a3
{
  v3 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v3);
}

- (id)keywordDescription
{
  v3 = [(PGGraphNode *)self label];
  v4 = [(PGGraphNode *)self name];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(PGGraphNode *)self UUID];
  }

  v6 = v5;
  if (v5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", v3, v5];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", v3, v9];
  }
  v7 = ;

  return v7;
}

- (MANodeFilter)entityFilter
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(MANode *)self propertyDictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [&unk_284485478 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(&unk_284485478);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      v9 = [v3 objectForKeyedSubscript:v8];

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [&unk_284485478 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v21 = v8;
    v10 = [v3 objectForKeyedSubscript:v8];
    v22 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    if (v11)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v11 = v3;
LABEL_12:
  v12 = objc_alloc(MEMORY[0x277D22C78]);
  v13 = [(PGGraphNode *)self label];
  v14 = [v12 initWithLabel:v13 domain:-[PGGraphNode domain](self properties:{"domain"), v11}];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (PGGraphNode)init
{
  v3.receiver = self;
  v3.super_class = PGGraphNode;
  return [(MANode *)&v3 init];
}

@end