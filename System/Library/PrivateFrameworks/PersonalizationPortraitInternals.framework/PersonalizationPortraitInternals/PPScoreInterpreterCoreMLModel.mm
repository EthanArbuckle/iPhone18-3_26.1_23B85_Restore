@interface PPScoreInterpreterCoreMLModel
+ (double)scoreForOutputValue:(id)value outputIndexedSubscript:(int64_t)subscript;
- (PPScoreInterpreterCoreMLModel)initWithModelPath:(id)path features:(id)features outputSpecification:(id)specification;
- (double)predictionForEvaluatedFeatures:(id)features withOutputIndexedSubscript:(int64_t)subscript;
- (void)loadCoreMLModelIfNotAlreadyLoaded;
- (void)loadInstanceVariablesFromFeatures:(id)features outputSpecification:(id)specification;
@end

@implementation PPScoreInterpreterCoreMLModel

- (double)predictionForEvaluatedFeatures:(id)features withOutputIndexedSubscript:(int64_t)subscript
{
  v21 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  [(PPScoreInterpreterCoreMLModel *)self loadCoreMLModelIfNotAlreadyLoaded];
  v18 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:featuresCopy error:&v18];
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
      [PPScoreInterpreterCoreMLModel scoreForOutputValue:v13 outputIndexedSubscript:subscript];
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

- (void)loadInstanceVariablesFromFeatures:(id)features outputSpecification:(id)specification
{
  featuresCopy = features;
  specificationCopy = specification;
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
  [featuresCopy enumerateKeysAndObjectsUsingBlock:&v22];
  v12 = [v11 copy];
  coreMLInputFeatures = self->_coreMLInputFeatures;
  self->_coreMLInputFeatures = v12;

  v14 = [specificationCopy objectForKeyedSubscript:@"outputName"];
  coreMLModelOutputName = self->_coreMLModelOutputName;
  self->_coreMLModelOutputName = v14;

  v16 = [specificationCopy objectForKeyedSubscript:@"outputIndexedSubscript"];
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

- (PPScoreInterpreterCoreMLModel)initWithModelPath:(id)path features:(id)features outputSpecification:(id)specification
{
  pathCopy = path;
  featuresCopy = features;
  specificationCopy = specification;
  v15.receiver = self;
  v15.super_class = PPScoreInterpreterCoreMLModel;
  v12 = [(PPScoreInterpreterCoreMLModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_coreMLModelPath, path);
    [(PPScoreInterpreterCoreMLModel *)v13 loadInstanceVariablesFromFeatures:featuresCopy outputSpecification:specificationCopy];
  }

  return v13;
}

+ (double)scoreForOutputValue:(id)value outputIndexedSubscript:(int64_t)subscript
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  type = [valueCopy type];
  v7 = type;
  if (type > 4)
  {
    if (type == 5)
    {
      multiArrayValue = [valueCopy multiArrayValue];
      v11 = [multiArrayValue objectAtIndexedSubscript:subscript];
      [v11 doubleValue];
      int64Value = v14;
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_8;
      }

      multiArrayValue = [valueCopy dictionaryValue];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:subscript];
      v12 = [multiArrayValue objectForKeyedSubscript:v11];
      [v12 doubleValue];
      int64Value = v13;
    }

    goto LABEL_13;
  }

  if (type == 1)
  {
    int64Value = [valueCopy int64Value];
    goto LABEL_13;
  }

  if (type == 2)
  {
    [valueCopy doubleValue];
    int64Value = v8;
    goto LABEL_13;
  }

LABEL_8:
  int64Value = -31337.0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v17 = 134217984;
    v18 = v7;
    _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ScoreInterpreter - CoreMLModel - No valid outputType found for %td", &v17, 0xCu);
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return int64Value;
}

@end