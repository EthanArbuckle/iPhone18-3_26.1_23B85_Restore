@interface PGYearEnrichmentRule
- (PGYearEnrichmentRule)initWithModelReader:(id)a3 loggingConnection:(id)a4;
- (double)promotionScoreForHighlightItemList:(id)a3;
@end

@implementation PGYearEnrichmentRule

- (double)promotionScoreForHighlightItemList:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 sortedChildHighlightItems];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) promotionScore];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (PGYearEnrichmentRule)initWithModelReader:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGYearEnrichmentRule;
  v9 = [(PGYearEnrichmentRule *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modelReader, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
  }

  return v10;
}

@end