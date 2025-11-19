@interface PGGraphOptimizedEdge
- (id)description;
- (id)edgeDescription;
- (void)checkConsistencyOfProperties:(id)a3 withExtraPropertyKeys:(id)a4;
@end

@implementation PGGraphOptimizedEdge

- (void)checkConsistencyOfProperties:(id)a3 withExtraPropertyKeys:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MAEdge *)self propertyDictionary];
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [v8 objectForKey:v14];

        if (!v16)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v15 doubleValue], v17 != 0.0))
          {
            if (([v7 containsObject:v14] & 1) == 0)
            {
              [v23 addObject:v14];
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v18 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      v11 = v18;
    }

    while (v18);
  }

  if ([v23 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v21 = [v23 allObjects];
    v22 = [v21 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v29 = v20;
    v30 = 2112;
    v31 = v22;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@ doesn't support properties { %@ }", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PGGraphOptimizedEdge *)self edgeDescription];
  v5 = [(MAEdge *)self sourceNode];
  v6 = [(MAEdge *)self targetNode];
  v7 = [v3 stringWithFormat:@"%@\n\tsourceNode: %@\n\ttargetNode: %@", v4, v5, v6];

  return v7;
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PGGraphOptimizedEdge *)self label];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

@end