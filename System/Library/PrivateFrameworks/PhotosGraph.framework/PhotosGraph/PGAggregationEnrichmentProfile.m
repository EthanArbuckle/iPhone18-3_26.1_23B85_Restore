@interface PGAggregationEnrichmentProfile
- (PGAggregationEnrichmentProfile)initWithCurationManager:(id)a3 loggingConnection:(id)a4;
- (double)promotionScoreWithHighlightInfo:(id)a3;
@end

@implementation PGAggregationEnrichmentProfile

- (double)promotionScoreWithHighlightInfo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 childHighlights];
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

- (PGAggregationEnrichmentProfile)initWithCurationManager:(id)a3 loggingConnection:(id)a4
{
  v8.receiver = self;
  v8.super_class = PGAggregationEnrichmentProfile;
  v4 = [(PGDayGroupAbstractEnrichmentProfile *)&v8 initWithCurationManager:a3 loggingConnection:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D3AC48]);
    dateRangeTitleGenerator = v4->_dateRangeTitleGenerator;
    v4->_dateRangeTitleGenerator = v5;
  }

  return v4;
}

@end