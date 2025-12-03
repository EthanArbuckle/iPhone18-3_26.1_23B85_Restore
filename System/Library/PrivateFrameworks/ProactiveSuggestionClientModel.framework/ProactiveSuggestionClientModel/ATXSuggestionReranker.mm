@interface ATXSuggestionReranker
- (ATXSuggestionReranker)initWithClientModelSuggestions:(id)suggestions promoteSuggestionsFromClientModel:(id)model hyperParameters:(id)parameters;
- (ATXSuggestionReranker)initWithProactiveSuggestions:(id)suggestions hyperParameters:(id)parameters;
- (id)constructConfidenceCategoryDictionaryForClientModelSuggestions;
- (id)convertConfidenceCategoryDictionaryToArray:(id)array;
- (id)initializeConfidenceCategoryToSuggestionsDictionary;
- (id)rerankedSuggestions;
@end

@implementation ATXSuggestionReranker

- (id)rerankedSuggestions
{
  constructConfidenceCategoryDictionaryForClientModelSuggestions = [(ATXSuggestionReranker *)self constructConfidenceCategoryDictionaryForClientModelSuggestions];
  v4 = [(ATXSuggestionReranker *)self convertConfidenceCategoryDictionaryToArray:constructConfidenceCategoryDictionaryForClientModelSuggestions];

  return v4;
}

- (id)constructConfidenceCategoryDictionaryForClientModelSuggestions
{
  v35 = *MEMORY[0x1E69E9840];
  initializeConfidenceCategoryToSuggestionsDictionary = [(ATXSuggestionReranker *)self initializeConfidenceCategoryToSuggestionsDictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(ATXSuggestionReranker *)self clientModelPriorityOrder];
  v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v22)
  {
    v21 = *v30;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v4;
        v5 = *(*(&v29 + 1) + 8 * v4);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v6 = [(NSDictionary *)self->_clientModelSuggestions objectForKeyedSubscript:v5];
        suggestions = [v6 suggestions];

        v24 = suggestions;
        v8 = [suggestions countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v26;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(v24);
              }

              v12 = *(*(&v25 + 1) + 8 * i);
              if (self->_promotedClientModelId && [v5 isEqualToString:?])
              {
                scoreSpecification = [v12 scoreSpecification];
                [scoreSpecification setSuggestedConfidenceCategory:4];
              }

              v14 = MEMORY[0x1E696AD98];
              scoreSpecification2 = [v12 scoreSpecification];
              v16 = [v14 numberWithInteger:{objc_msgSend(scoreSpecification2, "suggestedConfidenceCategory")}];
              v17 = [initializeConfidenceCategoryToSuggestionsDictionary objectForKeyedSubscript:v16];
              [v17 addObject:v12];
            }

            v9 = [v24 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v9);
        }

        v4 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v22);
  }

  v18 = *MEMORY[0x1E69E9840];

  return initializeConfidenceCategoryToSuggestionsDictionary;
}

- (id)initializeConfidenceCategoryToSuggestionsDictionary
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v2 setObject:v3 forKeyedSubscript:&unk_1F5A412F0];

  v4 = objc_opt_new();
  [v2 setObject:v4 forKeyedSubscript:&unk_1F5A41308];

  v5 = objc_opt_new();
  [v2 setObject:v5 forKeyedSubscript:&unk_1F5A41320];

  v6 = objc_opt_new();
  [v2 setObject:v6 forKeyedSubscript:&unk_1F5A41338];

  return v2;
}

- (ATXSuggestionReranker)initWithProactiveSuggestions:(id)suggestions hyperParameters:(id)parameters
{
  selfCopy = self;
  v44 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  parametersCopy = parameters;
  v6 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        clientModelSpecification = [v12 clientModelSpecification];
        clientModelId = [clientModelSpecification clientModelId];

        v16 = [v6 objectForKeyedSubscript:clientModelId];

        if (!v16)
        {
          v17 = objc_opt_new();
          [v6 setObject:v17 forKeyedSubscript:clientModelId];
        }

        v18 = [v6 objectForKeyedSubscript:{clientModelId, selfCopy}];
        [v18 addObject:v12];

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v19 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v34 + 1) + 8 * v24);
        v26 = [ATXClientModelCacheUpdate alloc];
        v27 = [v20 objectForKeyedSubscript:v25];
        v28 = [(ATXClientModelCacheUpdate *)v26 initWithClientModelId:v25 suggestions:v27 feedbackMetadata:0 responseForRealTimeRequest:0];

        [v19 setObject:v28 forKeyedSubscript:v25];
        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v22);
  }

  v29 = [(ATXSuggestionReranker *)selfCopy initWithClientModelSuggestions:v19 promoteSuggestionsFromClientModel:0 hyperParameters:parametersCopy];
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (ATXSuggestionReranker)initWithClientModelSuggestions:(id)suggestions promoteSuggestionsFromClientModel:(id)model hyperParameters:(id)parameters
{
  suggestionsCopy = suggestions;
  modelCopy = model;
  parametersCopy = parameters;
  v17.receiver = self;
  v17.super_class = ATXSuggestionReranker;
  v12 = [(ATXSuggestionReranker *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientModelSuggestions, suggestions);
    v14 = [modelCopy copy];
    promotedClientModelId = v13->_promotedClientModelId;
    v13->_promotedClientModelId = v14;

    objc_storeStrong(&v13->_blendingLayerHyperParameters, parameters);
  }

  return v13;
}

- (id)convertConfidenceCategoryDictionaryToArray:(id)array
{
  v30 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = 4;
  do
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v8 = [arrayCopy objectForKeyedSubscript:v7];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          promotedClientModelId = self->_promotedClientModelId;
          clientModelSpecification = [v13 clientModelSpecification];
          clientModelId = [clientModelSpecification clientModelId];
          LODWORD(promotedClientModelId) = [(NSString *)promotedClientModelId isEqualToString:clientModelId];

          if (promotedClientModelId)
          {
            v17 = v4;
          }

          else
          {
            v17 = v5;
          }

          [v17 addObject:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v6 = v23 - 1;
  }

  while (v23 > 1);
  if ([v4 count])
  {
    v18 = [v4 arrayByAddingObjectsFromArray:v5];
  }

  else
  {
    v18 = v5;
  }

  v19 = v18;

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end