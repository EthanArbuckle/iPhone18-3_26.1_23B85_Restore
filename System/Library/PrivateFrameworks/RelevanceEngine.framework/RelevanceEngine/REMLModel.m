@interface REMLModel
+ (REMLModel)modelWithFeatureSet:(id)a3 priorMean:(float)a4 modelVarianceEpsilon:(float)a5;
+ (unint64_t)featureBitWidth;
+ (unint64_t)maxFeatureCount;
- (BOOL)saveModelToURL:(id)a3 error:(id *)a4;
- (NSString)name;
- (REMLModel)init;
- (REMLModel)initWithFeatureSet:(id)a3 priorMean:(float)a4 modelVarianceEpsilon:(float)a5;
- (id)predictWithFeatures:(id)a3;
- (id)predictionSetWithFeatures:(id)a3;
- (unint64_t)featureBitWidth;
- (unint64_t)maxFeatureCount;
- (void)_clearCache;
- (void)clearModel;
- (void)setWantsPredictionCache:(BOOL)a3;
@end

@implementation REMLModel

+ (REMLModel)modelWithFeatureSet:(id)a3 priorMean:(float)a4 modelVarianceEpsilon:(float)a5
{
  v7 = a3;
  v8 = objc_opt_class();
  if ([v8 isSubclassOfClass:objc_opt_class()] && (v9 = objc_opt_class(), (objc_msgSend(v9, "isEqual:", objc_opt_class()) & 1) == 0))
  {
    v10 = objc_opt_class();
  }

  else
  {
    if (_fetchedInternalBuildOnceToken_12 != -1)
    {
      +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
    }

    if (_isInternalDevice_12 != 1)
    {
      goto LABEL_10;
    }

    if (REGetDisableAllModelPredictions_onceToken != -1)
    {
      +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
    }

    if (REGetDisableAllModelPredictions__REValueDisableAllModelPredictions == 1)
    {
      v10 = REMLModel;
    }

    else
    {
LABEL_10:
      if (_fetchedInternalBuildOnceToken_12 != -1)
      {
        +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
      }

      if (_isInternalDevice_12 != 1)
      {
        goto LABEL_17;
      }

      if (REGetDisableMLModel_onceToken != -1)
      {
        +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
      }

      if (REGetDisableMLModel__REValueDisableMLModel == 1)
      {
        v10 = REStaticMLModel;
      }

      else
      {
LABEL_17:
        v10 = REBayesianMLModel;
      }
    }
  }

  v11 = [v10 alloc];
  *&v12 = a4;
  *&v13 = a5;
  v14 = [v11 initWithFeatureSet:v7 priorMean:v12 modelVarianceEpsilon:v13];

  return v14;
}

+ (unint64_t)featureBitWidth
{
  if (_fetchedInternalBuildOnceToken_12 != -1)
  {
    +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
  }

  if (_isInternalDevice_12 == 1)
  {
    if (REGetDisableAllModelPredictions_onceToken != -1)
    {
      +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
    }

    if (REGetDisableAllModelPredictions__REValueDisableAllModelPredictions)
    {
      return 64;
    }
  }

  if (_fetchedInternalBuildOnceToken_12 != -1)
  {
    +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
  }

  if (_isInternalDevice_12 != 1)
  {
    goto LABEL_15;
  }

  if (REGetDisableMLModel_onceToken != -1)
  {
    +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
  }

  if (REGetDisableMLModel__REValueDisableMLModel)
  {
    v3 = off_2785F8FA0;
  }

  else
  {
LABEL_15:
    v3 = off_2785F8890;
  }

  v4 = *v3;

  return [(__objc2_class *)v4 featureBitWidth];
}

+ (unint64_t)maxFeatureCount
{
  if (_fetchedInternalBuildOnceToken_12 != -1)
  {
    +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
  }

  if (_isInternalDevice_12 == 1)
  {
    if (REGetDisableAllModelPredictions_onceToken != -1)
    {
      +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
    }

    if (REGetDisableAllModelPredictions__REValueDisableAllModelPredictions)
    {
      return -1;
    }
  }

  if (_fetchedInternalBuildOnceToken_12 != -1)
  {
    +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
  }

  if (_isInternalDevice_12 == 1)
  {
    if (REGetDisableMLModel_onceToken != -1)
    {
      +[REMLModel modelWithFeatureSet:priorMean:modelVarianceEpsilon:];
    }

    if (REGetDisableMLModel__REValueDisableMLModel)
    {
      return -1;
    }
  }

  return +[REBayesianMLModel maxFeatureCount];
}

- (REMLModel)init
{
  v7.receiver = self;
  v7.super_class = REMLModel;
  v2 = [(REMLModel *)&v7 init];
  if (v2)
  {
    v3 = [[REConcurrentDictionary alloc] initWeakToStrongDictionary];
    predictionCache = v2->_predictionCache;
    v2->_predictionCache = v3;

    v2->_wantsPredictionCache = 0;
    v2->_allowsExploreExploit = 1;
    v5 = objc_opt_class();
    v2->_implementsDebugSaving = RESubclassOverridesMethod(v2, v5, sel__saveDebugModelToURL_error_);
  }

  return v2;
}

- (REMLModel)initWithFeatureSet:(id)a3 priorMean:(float)a4 modelVarianceEpsilon:(float)a5
{
  result = [(REMLModel *)self init];
  if (result)
  {
    result->_priorMean = a4;
    result->_varianceEpsilon = a5;
  }

  return result;
}

- (void)setWantsPredictionCache:(BOOL)a3
{
  if (self->_wantsPredictionCache != a3)
  {
    self->_wantsPredictionCache = a3;
    if (!a3)
    {
      [(REConcurrentDictionary *)self->_predictionCache removeAllObjects];
    }
  }
}

- (void)_clearCache
{
  if ([(REMLModel *)self wantsPredictionCache])
  {
    predictionCache = self->_predictionCache;

    [(REConcurrentDictionary *)predictionCache removeAllObjects];
  }
}

- (id)predictWithFeatures:(id)a3
{
  v4 = a3;
  v5 = [(REMLModel *)self wantsPredictionCache];
  if (!v5 || ([(REConcurrentDictionary *)self->_predictionCache objectForKey:v4], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(REMLModel *)self _predictWithFeatures:v4];
    if (v5)
    {
      [(REConcurrentDictionary *)self->_predictionCache setObject:v6 forKey:v4];
    }
  }

  v7 = v6;

  return v7;
}

- (id)predictionSetWithFeatures:(id)a3
{
  v4 = a3;
  v5 = [REMLPredictionSet alloc];
  v6 = [(REMLModel *)self predictWithFeatures:v4];

  v7 = [(REMLPredictionSet *)v5 initWithPrediction:v6];

  return v7;
}

- (BOOL)saveModelToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_implementsDebugSaving)
  {
    if (_fetchedInternalBuildOnceToken_12 != -1)
    {
      [REMLModel saveModelToURL:error:];
    }

    if (_isInternalDevice_12 == 1)
    {
      v7 = [v6 URLByAppendingPathExtension:@"debug"];
      v13 = 0;
      v8 = [(REMLModel *)self _saveDebugModelToURL:v7 error:&v13];
      v9 = v13;
      if (!v8)
      {
        v10 = RELogForDomain(4);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [REMLModel saveModelToURL:v9 error:v10];
        }
      }
    }
  }

  v11 = [(REMLModel *)self _saveModelToURL:v6 error:a4];

  return v11;
}

uint64_t __34__REMLModel_saveModelToURL_error___block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_12 = result;
  return result;
}

- (void)clearModel
{
  [(REConcurrentDictionary *)self->_predictionCache removeAllObjects];

  [(REMLModel *)self _clearModel];
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)featureBitWidth
{
  v2 = objc_opt_class();

  return [v2 featureBitWidth];
}

- (unint64_t)maxFeatureCount
{
  v2 = objc_opt_class();

  return [v2 maxFeatureCount];
}

- (void)saveModelToURL:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "Unable to save debug model: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end