@interface _PSContactEmbedding
- (_PSContactEmbedding)init;
- (_PSContactEmbedding)initWithModel:(id)model;
- (id)convertToNSArrayFromMLMultiArray:(id)array;
- (id)getEmbeddingForContact:(id)contact;
- (id)getEmbeddingFromFeatureDict:(id)dict;
- (id)getEmbeddingsForContacts:(id)contacts;
@end

@implementation _PSContactEmbedding

- (_PSContactEmbedding)init
{
  v3 = [_PSContactEmbeddingUtilities loadModelFromUrlResource:@"cloud_mlp_with_embedding"];
  if (v3)
  {
    self = [(_PSContactEmbedding *)self initWithModel:v3];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_PSContactEmbedding)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _PSContactEmbedding;
  v6 = [(_PSContactEmbedding *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (id)getEmbeddingForContact:(id)contact
{
  contactCopy = contact;
  v5 = objc_alloc_init(_PSContactEmbeddingFeatureExtractor);
  v6 = [(_PSContactEmbeddingFeatureExtractor *)v5 featureInputForContact:contactCopy];

  v7 = [(_PSContactEmbedding *)self getEmbeddingFromFeatureDict:v6];

  return v7;
}

- (id)getEmbeddingsForContacts:(id)contacts
{
  v25 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v18 = objc_alloc_init(_PSContactEmbeddingFeatureExtractor);
  v5 = [(_PSContactEmbeddingFeatureExtractor *)v18 featureInputsForContacts:contactsCopy];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = contactsCopy;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        identifier = [v11 identifier];
        v14 = [v5 objectForKey:identifier];
        v15 = [(_PSContactEmbedding *)self getEmbeddingFromFeatureDict:v14];
        [v6 setObject:v15 forKey:identifier];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)getEmbeddingFromFeatureDict:(id)dict
{
  v39 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v26 = [_PSContactEmbeddingUtilities prepareFeatureInputFromFeatureDict:?];
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v25 setObject:v26 forKey:@"input1"];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v4 = getMLDictionaryFeatureProviderClass_softClass_1;
  v37 = getMLDictionaryFeatureProviderClass_softClass_1;
  if (!getMLDictionaryFeatureProviderClass_softClass_1)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __getMLDictionaryFeatureProviderClass_block_invoke_1;
    v33[3] = &unk_1E7C23BF0;
    v33[4] = &v34;
    __getMLDictionaryFeatureProviderClass_block_invoke_1(v33);
    v4 = v35[3];
  }

  v5 = v4;
  _Block_object_dispose(&v34, 8);
  v32 = 0;
  v24 = [[v4 alloc] initWithDictionary:v25 error:&v32];
  v23 = v32;
  if (v23)
  {
    v6 = +[_PSLogging contactEmbeddingChannel];
    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_PSContactEmbedding *)v23 getEmbeddingFromFeatureDict:v6];
      v8 = 0;
      v7 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    model = [(_PSContactEmbedding *)self model];
    v31 = 0;
    v10 = [model predictionFromFeatures:v24 error:&v31];
    v21 = v31;

    if (v21)
    {
      v11 = +[_PSLogging contactEmbeddingChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_PSContactEmbedding *)v21 getEmbeddingFromFeatureDict:v11];
      }

      v8 = 0;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = [&unk_1F2D8C3F0 countByEnumeratingWithState:&v27 objects:v38 count:16];
      if (v12)
      {
        v13 = *v28;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(&unk_1F2D8C3F0);
            }

            v15 = *(*(&v27 + 1) + 8 * i);
            v16 = [v10 featureValueForName:{v15, v21}];
            objectValue = [v16 objectValue];

            v18 = [(_PSContactEmbedding *)self convertToNSArrayFromMLMultiArray:objectValue];
            [v11 setObject:v18 forKey:v15];
          }

          v12 = [&unk_1F2D8C3F0 countByEnumeratingWithState:&v27 objects:v38 count:16];
        }

        while (v12);
      }

      v8 = [v11 copy];
    }

    v7 = v21;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)convertToNSArrayFromMLMultiArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [arrayCopy objectAtIndexedSubscript:i];
      [v5 setObject:v7 atIndexedSubscript:i];
    }
  }

  v8 = [v5 copy];

  return v8;
}

- (void)getEmbeddingFromFeatureDict:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error while preparing input for contact embedding model: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getEmbeddingFromFeatureDict:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error while getting output from contact embedding model: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end