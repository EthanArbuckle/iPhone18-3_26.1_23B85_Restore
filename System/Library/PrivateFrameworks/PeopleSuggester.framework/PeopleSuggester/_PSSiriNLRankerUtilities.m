@interface _PSSiriNLRankerUtilities
+ (id)knowledgeEventWithContactPriors:(id)a3 interactionId:(id)a4;
@end

@implementation _PSSiriNLRankerUtilities

+ (id)knowledgeEventWithContactPriors:(id)a3 interactionId:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34 = a4;
  v33 = [MEMORY[0x1E695DF00] date];
  v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
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
        v11 = [v9 contactIdentifier];
        v12 = [v9 contact];
        v13 = [v12 givenName];

        v14 = [v9 contact];
        v15 = [v14 familyName];

        [v9 priorScore];
        v17 = v16;
        v18 = [v9 rank];
        v19 = [v9 modelName];
        v20 = [v9 modelVersion];
        if (v11)
        {
          [v10 setObject:v11 forKeyedSubscript:@"contactId"];
        }

        if (v13)
        {
          [v10 setObject:v13 forKeyedSubscript:@"contactGivenName"];
        }

        if (v15)
        {
          [v10 setObject:v15 forKeyedSubscript:@"contactFamilyName"];
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

        if (v18)
        {
          v23 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          [v10 setObject:v23 forKeyedSubscript:@"rank"];

          if (!v19)
          {
            goto LABEL_18;
          }

LABEL_17:
          [v10 setObject:v19 forKeyedSubscript:@"modelName"];
          goto LABEL_18;
        }

        [v10 setObject:&unk_1F2D8B3D0 forKeyedSubscript:@"rank"];
        if (v19)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v20)
        {
          [v10 setObject:v20 forKeyedSubscript:@"modelVersion"];
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
  v27 = [MEMORY[0x1E69979E8] peopleSuggesterOutputForSiriNLStream];
  v28 = [MEMORY[0x1E69979B0] rankedSuggestions];
  v42 = v28;
  v43 = v37;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v30 = [v26 eventWithStream:v27 source:v25 startDate:v33 endDate:v33 identifierStringValue:v34 metadata:v29];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

@end