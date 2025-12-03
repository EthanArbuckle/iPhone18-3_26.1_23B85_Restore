@interface PGTitleSpecCollection
+ (PGTitleSpecCollection)collectionWithSpecPools:(id)pools;
- (PGTitleSpecCollection)initWithSpecPools:(id)pools;
- (id)_allPossibleTitlesWithMomentNodes:(id)nodes forHighlight:(BOOL)highlight argumentEvaluationContext:(id)context;
- (id)description;
@end

@implementation PGTitleSpecCollection

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGTitleSpecCollection;
  v4 = [(PGTitleSpecCollection *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ \n\tspecPools %@", v4, self->_specPools];

  return v5;
}

- (id)_allPossibleTitlesWithMomentNodes:(id)nodes forHighlight:(BOOL)highlight argumentEvaluationContext:(id)context
{
  highlightCopy = highlight;
  v35 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  contextCopy = context;
  v10 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_specPools;
  v24 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        specs = [v12 specs];
        v14 = [specs countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(specs);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              if (highlightCopy)
              {
                [*(*(&v25 + 1) + 8 * j) setInsertNonBreakableSpace:1];
              }

              v19 = [v18 titleWithMomentNodes:nodesCopy argumentEvaluationContext:contextCopy];
              if (v19)
              {
                [v10 addObject:v19];
              }
            }

            v15 = [specs countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v15);
        }
      }

      v24 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (PGTitleSpecCollection)initWithSpecPools:(id)pools
{
  poolsCopy = pools;
  v9.receiver = self;
  v9.super_class = PGTitleSpecCollection;
  v6 = [(PGTitleSpecCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specPools, pools);
  }

  return v7;
}

+ (PGTitleSpecCollection)collectionWithSpecPools:(id)pools
{
  poolsCopy = pools;
  v4 = [[PGTitleSpecCollection alloc] initWithSpecPools:poolsCopy];

  return v4;
}

@end