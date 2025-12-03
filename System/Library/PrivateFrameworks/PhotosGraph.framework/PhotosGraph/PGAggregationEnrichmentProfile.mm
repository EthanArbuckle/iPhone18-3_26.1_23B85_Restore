@interface PGAggregationEnrichmentProfile
- (PGAggregationEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection;
- (double)promotionScoreWithHighlightInfo:(id)info;
@end

@implementation PGAggregationEnrichmentProfile

- (double)promotionScoreWithHighlightInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  childHighlights = [info childHighlights];
  v4 = [childHighlights countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(childHighlights);
        }

        [*(*(&v12 + 1) + 8 * i) promotionScore];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [childHighlights countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (PGAggregationEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = PGAggregationEnrichmentProfile;
  v4 = [(PGDayGroupAbstractEnrichmentProfile *)&v8 initWithCurationManager:manager loggingConnection:connection];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D3AC48]);
    dateRangeTitleGenerator = v4->_dateRangeTitleGenerator;
    v4->_dateRangeTitleGenerator = v5;
  }

  return v4;
}

@end