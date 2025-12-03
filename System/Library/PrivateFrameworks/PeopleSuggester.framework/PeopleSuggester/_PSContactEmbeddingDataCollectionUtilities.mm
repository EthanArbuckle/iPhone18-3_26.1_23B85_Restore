@interface _PSContactEmbeddingDataCollectionUtilities
+ (id)prepareAllEventsFromContactEmbeddingsDict:(id)dict;
+ (id)prepareEventArrayFromEmbeddingDict:(id)dict forUser:(id)user sessionId:(id)id;
+ (id)prepareEventFromContactEmbedding:(id)embedding contactId:(id)id;
@end

@implementation _PSContactEmbeddingDataCollectionUtilities

+ (id)prepareEventFromContactEmbedding:(id)embedding contactId:(id)id
{
  v46 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  idCopy = id;
  v35 = objc_alloc_init(ContactEmbeddingAnalysisPETNeuralNetEmbedding);
  v6 = [embeddingCopy objectForKey:@"last_layer_before_activation"];
  v7 = [v6 count];
  v32 = &v32;
  v8 = &v32 - ((4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v40 + 1) + 8 * i) floatValue];
        *&v8[4 * v12++] = v15;
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v11);
  }

  [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)v35 setEmbeddings:v8 count:v7];
  v16 = objc_alloc_init(ContactEmbeddingAnalysisPETNeuralNetEmbedding);
  v34 = embeddingCopy;
  v17 = [embeddingCopy objectForKey:@"last_layer_after_activation"];
  v18 = [v17 count];
  v19 = &v32 - ((4 * v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v37;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v36 + 1) + 8 * j) floatValue];
        *&v19[4 * v23++] = v26;
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v22);
  }

  [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)v16 setEmbeddings:v19 count:v18];
  v27 = objc_alloc_init(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent);
  v28 = idCopy;
  [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)v27 setContactId:idCopy];
  v29 = v35;
  [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)v27 setEmbeddingsBeforeActivation:v35];
  [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)v27 setEmbeddingsAfterActivation:v16];

  v30 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)prepareAllEventsFromContactEmbeddingsDict:(id)dict
{
  v22 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = dictCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, v17}];
        v13 = [self prepareEventFromContactEmbedding:v12 contactId:v11];
        [v5 setObject:v13 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)prepareEventArrayFromEmbeddingDict:(id)dict forUser:(id)user sessionId:(id)id
{
  v25 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  userCopy = user;
  idCopy = id;
  v10 = objc_alloc_init(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = dictCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v12 objectForKey:{*(*(&v20 + 1) + 8 * i), v20}];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)v10 setContactEmbeddings:v11];
  [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)v10 setUserId:userCopy];
  [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)v10 setSessinobd:idCopy];

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

@end