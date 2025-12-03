@interface PGShareBackSuggesterResult
+ (id)momentNodesForSuggesterResults:(id)results;
- (PGShareBackSuggesterResult)initWithInputs:(id)inputs processingValue:(unsigned __int16)value momentNodes:(id)nodes;
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
  momentNodes = [(PGShareBackSuggesterResult *)self momentNodes];
  v7 = [v3 stringWithFormat:@"%@ - Reason: %@ - momentNodes: %@", v4, v5, momentNodes];

  return v7;
}

- (PGShareBackSuggesterResult)initWithInputs:(id)inputs processingValue:(unsigned __int16)value momentNodes:(id)nodes
{
  inputsCopy = inputs;
  nodesCopy = nodes;
  v16.receiver = self;
  v16.super_class = PGShareBackSuggesterResult;
  v10 = [(PGShareBackSuggesterResult *)&v16 init];
  if (v10)
  {
    v11 = [inputsCopy copy];
    suggesterInputs = v10->_suggesterInputs;
    v10->_suggesterInputs = v11;

    v13 = [nodesCopy copy];
    momentNodes = v10->_momentNodes;
    v10->_momentNodes = v13;

    v10->_processingValue = value;
  }

  return v10;
}

+ (id)momentNodesForSuggesterResults:(id)results
{
  v18 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = resultsCopy;
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

        momentNodes = [*(*(&v13 + 1) + 8 * i) momentNodes];
        [v4 unionSet:momentNodes];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end