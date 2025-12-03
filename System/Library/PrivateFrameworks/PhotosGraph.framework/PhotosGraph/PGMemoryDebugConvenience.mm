@interface PGMemoryDebugConvenience
+ (id)memoryDebugInformationWithMomentNodes:(id)nodes meaningLabels:(id)labels serviceManager:(id)manager;
@end

@implementation PGMemoryDebugConvenience

+ (id)memoryDebugInformationWithMomentNodes:(id)nodes meaningLabels:(id)labels serviceManager:(id)manager
{
  v45 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  labelsCopy = labels;
  managerCopy = manager;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [MEMORY[0x277CBEB58] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = nodesCopy;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = [v14 debugDictionaryWithServiceManager:{managerCopy, v29}];
        [v31 addObject:v15];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __95__PGMemoryDebugConvenience_memoryDebugInformationWithMomentNodes_meaningLabels_serviceManager___block_invoke;
        v37[3] = &unk_278886918;
        v38 = v9;
        [v14 enumerateMeaningfulEventsUsingBlock:v37];
      }

      v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  v16 = v29;
  [v29 setObject:v31 forKeyedSubscript:@"backingMoments"];
  if ([labelsCopy count])
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * j);
          if (labelsCopy)
          {
            meaningLabels = [*(*(&v33 + 1) + 8 * j) meaningLabels];
            v25 = [meaningLabels intersectsSet:labelsCopy];

            if (!v25)
            {
              continue;
            }
          }

          v26 = [v23 debugDictionaryWithServiceManager:{managerCopy, v29}];
          [v17 addObject:v26];
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v20);
    }

    v16 = v29;
    [v29 setObject:v17 forKeyedSubscript:@"collectionsInfo"];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v16;
}

@end