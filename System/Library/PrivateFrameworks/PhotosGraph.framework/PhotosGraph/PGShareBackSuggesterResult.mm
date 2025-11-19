@interface PGShareBackSuggesterResult
+ (id)momentNodesForSuggesterResults:(id)a3;
- (PGShareBackSuggesterResult)initWithInputs:(id)a3 processingValue:(unsigned __int16)a4 momentNodes:(id)a5;
- (id)description;
@end

@implementation PGShareBackSuggesterResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGShareBackSuggesterResult;
  v4 = [(PGShareBackSuggesterResult *)&v9 description];
  [(PGShareBackSuggesterResult *)self processingValue];
  v5 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v6 = [(PGShareBackSuggesterResult *)self momentNodes];
  v7 = [v3 stringWithFormat:@"%@ - Reason: %@ - momentNodes: %@", v4, v5, v6];

  return v7;
}

- (PGShareBackSuggesterResult)initWithInputs:(id)a3 processingValue:(unsigned __int16)a4 momentNodes:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PGShareBackSuggesterResult;
  v10 = [(PGShareBackSuggesterResult *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    suggesterInputs = v10->_suggesterInputs;
    v10->_suggesterInputs = v11;

    v13 = [v9 copy];
    momentNodes = v10->_momentNodes;
    v10->_momentNodes = v13;

    v10->_processingValue = a4;
  }

  return v10;
}

+ (id)momentNodesForSuggesterResults:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) momentNodes];
        [v4 unionSet:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end