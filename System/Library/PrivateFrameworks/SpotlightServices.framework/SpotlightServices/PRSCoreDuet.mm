@interface PRSCoreDuet
- (PRSCoreDuet)initWithStreamName:(id)name;
- (id)getRankedCategoriesDictionaryWithPredictionWindow:(double)window predictionInterval:(double)interval;
- (void)addResultCategoryAndGroupToHistory:(id)history groupName:(id)name error:(id)error;
@end

@implementation PRSCoreDuet

- (PRSCoreDuet)initWithStreamName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = PRSCoreDuet;
  v5 = [(PRSCoreDuet *)&v13 init];
  if (v5)
  {
    knowledgeStore = [MEMORY[0x1E69979A0] knowledgeStore];
    knowledgeStore = v5->_knowledgeStore;
    v5->_knowledgeStore = knowledgeStore;

    v8 = MEMORY[0x1E6997970];
    type = [MEMORY[0x1E6997940] type];
    v10 = [v8 eventStreamWithName:nameCopy valueType:type];
    spotlightStream = v5->_spotlightStream;
    v5->_spotlightStream = v10;
  }

  return v5;
}

- (id)getRankedCategoriesDictionaryWithPredictionWindow:(double)window predictionInterval:(double)interval
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-interval];
  date = [MEMORY[0x1E695DF00] date];
  v7 = MEMORY[0x1E6997980];
  spotlightStream = self->_spotlightStream;
  v29 = date;
  v30 = v5;
  v9 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:date];
  v10 = [v7 histogramQueryForStream:spotlightStream interval:v9];

  v28 = v10;
  v11 = [(_DKKnowledgeStore *)self->_knowledgeStore executeQuery:v10 error:0];
  histogram = [v11 histogram];
  v13 = [histogram mutableCopy];
  v27 = v11;
  countOverAllValues = [v11 countOverAllValues];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [histogram allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        if (countOverAllValues)
        {
          v20 = *(*(&v31 + 1) + 8 * i);
          v21 = [histogram objectForKey:v20];
          [v21 doubleValue];
          v23 = [MEMORY[0x1E696AD98] numberWithDouble:v22 / countOverAllValues];
          [v13 setValue:v23 forKey:v20];
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  v24 = [v13 copy];
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)addResultCategoryAndGroupToHistory:(id)history groupName:(id)name error:(id)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  historyCopy = history;
  nameCopy = name;
  v9 = nameCopy;
  if (nameCopy)
  {
    v10 = nameCopy;
  }

  else
  {
    v10 = historyCopy;
  }

  v11 = MEMORY[0x1E695DF00];
  v12 = v10;
  date = [v11 date];
  v14 = [MEMORY[0x1E6997960] eventWithStream:self->_spotlightStream startDate:date endDate:date identifierStringValue:v12 metadata:0];

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