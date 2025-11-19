@interface _PSFamilyMLModel
- (BOOL)isFamilyContact:(id)a3;
- (_PSFamilyMLModel)init;
- (_PSFamilyMLModel)initWithActivity:(id)a3;
- (_PSFamilyMLModel)initWithModels:(id)a3;
- (id)defaultPredictionForInputFeatures:(id)a3;
- (id)ensemblePredictionForInputFeatures:(id)a3;
- (id)familiesPredictionForContacts:(id)a3 withMaxSuggestion:(int64_t)a4;
- (id)familyProbability:(id)a3;
- (id)getFeatureDictForContact:(id)a3;
- (id)getModelWithModelName:(id)a3;
- (id)getPredictionFromModel:(id)a3 withInputFeatures:(id)a4;
- (id)loadModelFromUrlResource:(id)a3;
- (id)predictionForContact:(id)a3;
- (id)predictionForContact:(id)a3 featureDict:(id)a4;
- (void)commonInit;
- (void)initializeModels;
@end

@implementation _PSFamilyMLModel

- (_PSFamilyMLModel)init
{
  v5.receiver = self;
  v5.super_class = _PSFamilyMLModel;
  v2 = [(_PSFamilyMLModel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_PSFamilyMLModel *)v2 initializeModels];
  }

  return v3;
}

- (_PSFamilyMLModel)initWithActivity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PSFamilyMLModel;
  v6 = [(_PSFamilyMLModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activity, a3);
    [(_PSFamilyMLModel *)v7 initializeModels];
  }

  return v7;
}

- (_PSFamilyMLModel)initWithModels:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PSFamilyMLModel;
  v6 = [(_PSFamilyMLModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_models, a3);
  }

  return v7;
}

- (void)initializeModels
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 count];
  v5 = [a1 allKeys];
  v7 = 134218498;
  v8 = 4;
  v9 = 2048;
  v10 = v4;
  v11 = 2114;
  v12 = v5;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Failed to load all %tu models (successfully loaded %tu models: %{public}@)", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)commonInit
{
  v3 = self->_activity;
  v4 = objc_alloc(MEMORY[0x1E69C5D58]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30___PSFamilyMLModel_commonInit__block_invoke;
  v8[3] = &unk_1E7C255C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 initWithBlock:v8];
  extractor = self->_extractor;
  self->_extractor = v6;
}

- (BOOL)isFamilyContact:(id)a3
{
  v3 = [(_PSFamilyMLModel *)self predictionForContact:a3];
  v4 = [v3 featureValueForName:@"labelFinal"];
  v5 = [v4 int64Value];

  return v5 != 0;
}

- (id)familyProbability:(id)a3
{
  v3 = [(_PSFamilyMLModel *)self predictionForContact:a3];
  v4 = [v3 featureValueForName:@"classProbability"];
  v5 = [v4 dictionaryValue];

  return v5;
}

- (id)familiesPredictionForContacts:(id)a3 withMaxSuggestion:(int64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [(_PSFamilyMLModel *)self familyProbability:v11];
        v13 = [v12 objectForKey:&unk_1F2D8B568];

        v36[0] = v11;
        v36[1] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
        if (v6)
        {
          [v6 insertObject:v14 atIndex:{objc_msgSend(v6, "indexOfObject:inSortedRange:options:usingComparator:", v14, 0, objc_msgSend(v6, "count"), 1024, &__block_literal_global_13)}];
          if ([v6 count] > a4)
          {
            [v6 removeLastObject];
          }
        }

        else
        {
          [0 addObject:v14];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v27 + 1) + 8 * j) firstObject];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  v22 = [v15 copy];
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)predictionForContact:(id)a3 featureDict:(id)a4
{
  v5 = a4;
  if ([_PSFamilyUtilities featureDictionaryPassesHeuristic:v5])
  {
    v9 = 0;
    v6 = [objc_alloc(getMLDictionaryFeatureProviderClass_0()) initWithDictionary:v5 error:&v9];
    v7 = [(_PSFamilyMLModel *)self ensemblePredictionForInputFeatures:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)predictionForContact:(id)a3
{
  v4 = a3;
  v5 = [(_PSFamilyMLModel *)self getFeatureDictForContact:v4];
  v6 = [(_PSFamilyMLModel *)self predictionForContact:v4 featureDict:v5];

  return v6;
}

- (id)getFeatureDictForContact:(id)a3
{
  extractor = self->_extractor;
  v4 = a3;
  v5 = [(_PASLazyResult *)extractor result];
  v6 = [v5 featureInputForContact:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = v7;

  return v7;
}

- (id)getModelWithModelName:(id)a3
{
  v4 = a3;
  v5 = [(_PSFamilyMLModel *)self models];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)loadModelFromUrlResource:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:v3 withExtension:@"mlmodelc"];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v6 = getMLModelClass_softClass_2;
  v18 = getMLModelClass_softClass_2;
  if (!getMLModelClass_softClass_2)
  {
    v13[1] = MEMORY[0x1E69E9820];
    v13[2] = 3221225472;
    v13[3] = __getMLModelClass_block_invoke_2;
    v13[4] = &unk_1E7C23BF0;
    v14 = &v15;
    CoreMLLibraryCore_2();
    v16[3] = objc_getClass("MLModel");
    getMLModelClass_softClass_2 = *(v14[1] + 24);
    v6 = v16[3];
  }

  v7 = v6;
  _Block_object_dispose(&v15, 8);
  v13[0] = 0;
  v8 = [v6 modelWithContentsOfURL:v5 error:v13];
  v9 = v13[0];
  if (v9)
  {
    v10 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(_PSFamilyMLModel *)v5 loadModelFromUrlResource:v9, v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)defaultPredictionForInputFeatures:(id)a3
{
  v4 = a3;
  v5 = [(_PSFamilyMLModel *)self defaultModelForPrediction];
  v11 = 0;
  v6 = [v5 predictionFromFeatures:v4 error:&v11];

  v7 = v11;
  if (v7)
  {
    v8 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSFamilyMLModel defaultPredictionForInputFeatures:];
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)ensemblePredictionForInputFeatures:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(_PSFamilyMLModel *)self getPredictionFromModel:@"model_dt" withInputFeatures:v4];
  v7 = [v6 featureValueForName:@"labelFinal"];
  v8 = [v7 int64Value];

  v9 = [v6 featureValueForName:@"classProbability"];
  v10 = [v9 dictionaryValue];

  v60 = v10;
  [v5 addObject:v10];
  v11 = [(_PSFamilyMLModel *)self getPredictionFromModel:@"model_rf" withInputFeatures:v4];
  v12 = [v11 featureValueForName:@"labelFinal"];
  v13 = [v12 int64Value];

  v14 = v13 + v8;
  v59 = v11;
  v15 = [v11 featureValueForName:@"classProbability"];
  v16 = [v15 dictionaryValue];

  [v5 addObject:v16];
  v17 = [(_PSFamilyMLModel *)self getPredictionFromModel:@"model_gbdt" withInputFeatures:v4];
  v18 = [v17 featureValueForName:@"labelFinal"];
  v19 = [v18 int64Value];

  v20 = v14 + v19;
  v21 = [v17 featureValueForName:@"classProbability"];
  v22 = [v21 dictionaryValue];

  v58 = v22;
  [v5 addObject:v22];
  v23 = [(_PSFamilyMLModel *)self getPredictionFromModel:@"IP_model_gbdt" withInputFeatures:v4];
  v24 = [v23 featureValueForName:@"target"];
  v25 = [v24 int64Value];

  v26 = v20 + 3 * v25;
  v57 = v23;
  v27 = [v23 featureValueForName:@"classProbability"];
  v28 = [v27 dictionaryValue];

  v56 = v28;
  [v5 addObject:v28];
  v29 = v26 > 1;
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v31 = v5;
  v32 = [v31 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v32)
  {
    v33 = v32;
    v54 = v29;
    v55 = v4;
    v34 = v17;
    v35 = v16;
    v36 = v6;
    v37 = *v63;
    v38 = 0.0;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v63 != v37)
        {
          objc_enumerationMutation(v31);
        }

        v40 = [*(*(&v62 + 1) + 8 * i) objectForKey:{&unk_1F2D8B568, v54, v55}];
        [v40 doubleValue];
        v42 = v41;

        v38 = v38 + v42;
      }

      v33 = [v31 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v33);
    v43 = v38 * 0.25;
    v6 = v36;
    v16 = v35;
    v17 = v34;
    v29 = v54;
    v4 = v55;
  }

  else
  {
    v43 = 0.0;
  }

  v44 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
  [v30 setObject:v44 forKey:&unk_1F2D8B568];

  v45 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v43];
  [v30 setObject:v45 forKey:&unk_1F2D8B580];

  v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v46 setObject:v30 forKey:@"classProbability"];
  v47 = [MEMORY[0x1E696AD98] numberWithLongLong:v29];
  [v46 setObject:v47 forKey:@"labelFinal"];

  v61 = 0;
  v48 = [objc_alloc(getMLDictionaryFeatureProviderClass_0()) initWithDictionary:v46 error:&v61];
  v49 = v61;
  if (v49)
  {
    v50 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [_PSFamilyMLModel ensemblePredictionForInputFeatures:];
    }

    v51 = 0;
  }

  else
  {
    v51 = v48;
  }

  v52 = *MEMORY[0x1E69E9840];

  return v51;
}

- (id)getPredictionFromModel:(id)a3 withInputFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_PSFamilyMLModel *)self getModelWithModelName:v6];
  v14 = 0;
  v9 = [v8 predictionFromFeatures:v7 error:&v14];

  v10 = v14;
  if (v10)
  {
    v11 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSFamilyMLModel getPredictionFromModel:withInputFeatures:];
    }

    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (void)loadModelFromUrlResource:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 absoluteString];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_FAULT, "Error loading compiled CoreML Model from path %@ : %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)defaultPredictionForInputFeatures:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_ERROR, "Error while making prediction from features: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)ensemblePredictionForInputFeatures:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_ERROR, "Error while preparing prediction result for ensemble modeling:  %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)getPredictionFromModel:withInputFeatures:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1B5ED1000, v1, OS_LOG_TYPE_ERROR, "Error while using %@ model to make prediction from features: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end