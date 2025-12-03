@interface _PSSiriNLRankerUtilities
+ (id)knowledgeEventWithContactPriors:(id)priors interactionId:(id)id;
@end

@implementation _PSSiriNLRankerUtilities

+ (id)knowledgeEventWithContactPriors:(id)priors interactionId:(id)id
{
  v45 = *MEMORY[0x1E69E9840];
  priorsCopy = priors;
  idCopy = id;
  date = [MEMORY[0x1E695DF00] date];
  v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(priorsCopy, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = priorsCopy;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v36 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        contactIdentifier = [v9 contactIdentifier];
        contact = [v9 contact];
        givenName = [contact givenName];

        contact2 = [v9 contact];
        familyName = [contact2 familyName];

        [v9 priorScore];
        v17 = v16;
        rank = [v9 rank];
        modelName = [v9 modelName];
        modelVersion = [v9 modelVersion];
        if (contactIdentifier)
        {
          [v10 setObject:contactIdentifier forKeyedSubscript:@"contactId"];
        }

        if (givenName)
        {
          [v10 setObject:givenName forKeyedSubscript:@"contactGivenName"];
        }

        if (familyName)
        {
          [v10 setObject:familyName forKeyedSubscript:@"contactFamilyName"];
        }

        if (v17 == 0.0)
        {
          [v10 setObject:&unk_1F2D8C798 forKeyedSubscript:@"score"];
        }

        else
        {
          *&v21 = v17;
          v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
          [v10 setObject:v22 forKeyedSubscript:@"score"];
        }

        if (rank)
        {
          v23 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          [v10 setObject:v23 forKeyedSubscript:@"rank"];

          if (!modelName)
          {
            goto LABEL_18;
          }

LABEL_17:
          [v10 setObject:modelName forKeyedSubscript:@"modelName"];
          goto LABEL_18;
        }

        [v10 setObject:&unk_1F2D8B3D0 forKeyedSubscript:@"rank"];
        if (modelName)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (modelVersion)
        {
          [v10 setObject:modelVersion forKeyedSubscript:@"modelVersion"];
        }

        [v37 addObject:v10];

        ++v8;
      }

      while (v7 != v8);
      v24 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      v7 = v24;
    }

    while (v24);
  }

  v25 = [objc_alloc(MEMORY[0x1E69979E0]) initWithIdentifier:@"peopleSuggesterSiriNL" bundleIdentifier:0 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];
  v26 = MEMORY[0x1E6997960];
  peopleSuggesterOutputForSiriNLStream = [MEMORY[0x1E69979E8] peopleSuggesterOutputForSiriNLStream];
  rankedSuggestions = [MEMORY[0x1E69979B0] rankedSuggestions];
  v42 = rankedSuggestions;
  v43 = v37;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v30 = [v26 eventWithStream:peopleSuggesterOutputForSiriNLStream source:v25 startDate:date endDate:date identifierStringValue:idCopy metadata:v29];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

@end