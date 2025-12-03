@interface PGYearEnrichmentRule
- (PGYearEnrichmentRule)initWithModelReader:(id)reader loggingConnection:(id)connection;
- (double)promotionScoreForHighlightItemList:(id)list;
@end

@implementation PGYearEnrichmentRule

- (double)promotionScoreForHighlightItemList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sortedChildHighlightItems = [list sortedChildHighlightItems];
  v4 = [sortedChildHighlightItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(sortedChildHighlightItems);
        }

        [*(*(&v12 + 1) + 8 * i) promotionScore];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [sortedChildHighlightItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (PGYearEnrichmentRule)initWithModelReader:(id)reader loggingConnection:(id)connection
{
  readerCopy = reader;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PGYearEnrichmentRule;
  v9 = [(PGYearEnrichmentRule *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modelReader, reader);
    objc_storeStrong(&v10->_loggingConnection, connection);
  }

  return v10;
}

@end