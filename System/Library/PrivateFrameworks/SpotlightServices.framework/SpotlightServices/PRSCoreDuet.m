@interface PRSCoreDuet
- (PRSCoreDuet)initWithStreamName:(id)a3;
- (id)getRankedCategoriesDictionaryWithPredictionWindow:(double)a3 predictionInterval:(double)a4;
- (void)addResultCategoryAndGroupToHistory:(id)a3 groupName:(id)a4 error:(id)a5;
@end

@implementation PRSCoreDuet

- (PRSCoreDuet)initWithStreamName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PRSCoreDuet;
  v5 = [(PRSCoreDuet *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69979A0] knowledgeStore];
    knowledgeStore = v5->_knowledgeStore;
    v5->_knowledgeStore = v6;

    v8 = MEMORY[0x1E6997970];
    v9 = [MEMORY[0x1E6997940] type];
    v10 = [v8 eventStreamWithName:v4 valueType:v9];
    spotlightStream = v5->_spotlightStream;
    v5->_spotlightStream = v10;
  }

  return v5;
}

- (id)getRankedCategoriesDictionaryWithPredictionWindow:(double)a3 predictionInterval:(double)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-a4];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = MEMORY[0x1E6997980];
  spotlightStream = self->_spotlightStream;
  v29 = v6;
  v30 = v5;
  v9 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v6];
  v10 = [v7 histogramQueryForStream:spotlightStream interval:v9];

  v28 = v10;
  v11 = [(_DKKnowledgeStore *)self->_knowledgeStore executeQuery:v10 error:0];
  v12 = [v11 histogram];
  v13 = [v12 mutableCopy];
  v27 = v11;
  v14 = [v11 countOverAllValues];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [v12 allKeys];
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (v14)
        {
          v20 = *(*(&v31 + 1) + 8 * i);
          v21 = [v12 objectForKey:v20];
          [v21 doubleValue];
          v23 = [MEMORY[0x1E696AD98] numberWithDouble:v22 / v14];
          [v13 setValue:v23 forKey:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  v24 = [v13 copy];
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)addResultCategoryAndGroupToHistory:(id)a3 groupName:(id)a4 error:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = MEMORY[0x1E695DF00];
  v12 = v10;
  v13 = [v11 date];
  v14 = [MEMORY[0x1E6997960] eventWithStream:self->_spotlightStream startDate:v13 endDate:v13 identifierStringValue:v12 metadata:0];

  knowledgeStore = self->_knowledgeStore;
  v18[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  LOBYTE(knowledgeStore) = [(_DKKnowledgeStore *)knowledgeStore saveObjects:v16 error:0];

  if ((knowledgeStore & 1) == 0)
  {
    NSLog(&cfstr_ErrorSavingEng.isa);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end