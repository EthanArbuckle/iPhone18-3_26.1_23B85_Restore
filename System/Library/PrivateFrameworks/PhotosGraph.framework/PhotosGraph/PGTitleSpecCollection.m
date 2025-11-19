@interface PGTitleSpecCollection
+ (PGTitleSpecCollection)collectionWithSpecPools:(id)a3;
- (PGTitleSpecCollection)initWithSpecPools:(id)a3;
- (id)_allPossibleTitlesWithMomentNodes:(id)a3 forHighlight:(BOOL)a4 argumentEvaluationContext:(id)a5;
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

- (id)_allPossibleTitlesWithMomentNodes:(id)a3 forHighlight:(BOOL)a4 argumentEvaluationContext:(id)a5
{
  v6 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
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
        v13 = [v12 specs];
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              if (v6)
              {
                [*(*(&v25 + 1) + 8 * j) setInsertNonBreakableSpace:1];
              }

              v19 = [v18 titleWithMomentNodes:v8 argumentEvaluationContext:v9];
              if (v19)
              {
                [v10 addObject:v19];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
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

- (PGTitleSpecCollection)initWithSpecPools:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGTitleSpecCollection;
  v6 = [(PGTitleSpecCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specPools, a3);
  }

  return v7;
}

+ (PGTitleSpecCollection)collectionWithSpecPools:(id)a3
{
  v3 = a3;
  v4 = [[PGTitleSpecCollection alloc] initWithSpecPools:v3];

  return v4;
}

@end