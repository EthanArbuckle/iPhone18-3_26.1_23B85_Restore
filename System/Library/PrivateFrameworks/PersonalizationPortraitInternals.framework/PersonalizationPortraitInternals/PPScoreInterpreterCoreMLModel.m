@interface PPScoreInterpreterCoreMLModel
+ (double)scoreForOutputValue:(id)a3 outputIndexedSubscript:(int64_t)a4;
- (PPScoreInterpreterCoreMLModel)initWithModelPath:(id)a3 features:(id)a4 outputSpecification:(id)a5;
- (double)predictionForEvaluatedFeatures:(id)a3 withOutputIndexedSubscript:(int64_t)a4;
- (void)loadCoreMLModelIfNotAlreadyLoaded;
- (void)loadInstanceVariablesFromFeatures:(id)a3 outputSpecification:(id)a4;
@end

@implementation PPScoreInterpreterCoreMLModel

- (double)predictionForEvaluatedFeatures:(id)a3 withOutputIndexedSubscript:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(PPScoreInterpreterCoreMLModel *)self loadCoreMLModelIfNotAlreadyLoaded];
  v18 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    coreMLModel = self->_coreMLModel;
    v17 = v8;
    v10 = [coreMLModel predictionFromFeatures:v7 error:&v17];
    v11 = v17;

    if (v11)
    {
      v12 = -31337.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ScoreInterpreter - CoreMLModel - Error in predictionFromFeatures: %@", buf, 0xCu);
      }
    }

    else
    {
      v13 = [v10 featureValueForName:self->_coreMLModelOutputName];
      [PPScoreInterpreterCoreMLModel scoreForOutputValue:v13 outputIndexedSubscript:a4];
      v12 = v14;
    }

    v8 = v11;
  }

  else
  {
    v12 = -31337.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ScoreInterpreter - CoreMLModel - Error in initializing MLDictionaryFeatureProvider: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)loadInstanceVariablesFromFeatures:(id)a3 outputSpecification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __87__PPScoreInterpreterCoreMLModel_loadInstanceVariablesFromFeatures_outputSpecification___block_invoke;
  v25 = &unk_278974050;
  v10 = v9;
  v26 = v10;
  v11 = v8;
  v27 = v11;
  [v6 enumerateKeysAndObjectsUsingBlock:&v22];
  v12 = [v11 copy];
  coreMLInputFeatures = self->_coreMLInputFeatures;
  self->_coreMLInputFeatures = v12;

  v14 = [v7 objectForKeyedSubscript:@"outputName"];
  coreMLModelOutputName = self->_coreMLModelOutputName;
  self->_coreMLModelOutputName = v14;

  v16 = [v7 objectForKeyedSubscript:@"outputIndexedSubscript"];
  v17 = [v10 mutableCopy];
  v18 = v17;
  if (v16)
  {
    [v17 addObject:v16];
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  self->_hasOutputIndexedSubscript = v19;
  v20 = [v18 copy];
  argumentsToEvaluate = self->_argumentsToEvaluate;
  self->_argumentsToEvaluate = v20;
}

void __87__PPScoreInterpreterCoreMLModel_loadInstanceVariablesFromFeatures_outputSpecification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[PPScoreInterpreterCoreMLModelFeature alloc] initWithFeatureName:v7];
  [*(a1 + 32) addObject:v5];
  [*(a1 + 40) addObject:v6];
}

- (void)loadCoreMLModelIfNotAlreadyLoaded
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_coreMLModel)
  {
    if (self->_coreMLModelPath)
    {
      v3 = MEMORY[0x277CBFF20];
      v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      v10 = 0;
      v5 = [v3 modelWithContentsOfURL:v4 error:&v10];
      v6 = v10;
      coreMLModel = self->_coreMLModel;
      self->_coreMLModel = v5;

      if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        coreMLModelPath = self->_coreMLModelPath;
        *buf = 138412546;
        v12 = coreMLModelPath;
        v13 = 2112;
        v14 = v6;
        _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error initializing %@ model: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = 0;
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error finding %@ model in assets", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (PPScoreInterpreterCoreMLModel)initWithModelPath:(id)a3 features:(id)a4 outputSpecification:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PPScoreInterpreterCoreMLModel;
  v12 = [(PPScoreInterpreterCoreMLModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_coreMLModelPath, a3);
    [(PPScoreInterpreterCoreMLModel *)v13 loadInstanceVariablesFromFeatures:v10 outputSpecification:v11];
  }

  return v13;
}

+ (double)scoreForOutputValue:(id)a3 outputIndexedSubscript:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 type];
  v7 = v6;
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v10 = [v5 multiArrayValue];
      v11 = [v10 objectAtIndexedSubscript:a4];
      [v11 doubleValue];
      v9 = v14;
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_8;
      }

      v10 = [v5 dictionaryValue];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v12 = [v10 objectForKeyedSubscript:v11];
      [v12 doubleValue];
      v9 = v13;
    }

    goto LABEL_13;
  }

  if (v6 == 1)
  {
    v9 = [v5 int64Value];
    goto LABEL_13;
  }

  if (v6 == 2)
  {
    [v5 doubleValue];
    v9 = v8;
    goto LABEL_13;
  }

LABEL_8:
  v9 = -31337.0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v17 = 134217984;
    v18 = v7;
    _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ScoreInterpreter - CoreMLModel - No valid outputType found for %td", &v17, 0xCu);
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

@end