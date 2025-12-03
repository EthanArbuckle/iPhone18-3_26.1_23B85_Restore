@interface _REMLMultipleWeightedModel
- (BOOL)loadModelFromURL:(id)l error:(id *)error;
- (BOOL)saveModelToURL:(id)l error:(id *)error;
- (NSDictionary)models;
- (_REMLMultipleWeightedModel)initWithFeature:(id)feature featureSet:(id)set priorMean:(float)mean biasFeature:(id)biasFeature modelVarianceEpsilon:(float)epsilon;
- (id)_modelForFeatureMap:(id)map;
- (id)_modelForKey:(id)key;
- (id)predictWithFeatures:(id)features;
- (void)enumerateModels:(id)models;
- (void)trainModelWithFeatureMap:(id)map positiveEvent:(id)event;
@end

@implementation _REMLMultipleWeightedModel

- (_REMLMultipleWeightedModel)initWithFeature:(id)feature featureSet:(id)set priorMean:(float)mean biasFeature:(id)biasFeature modelVarianceEpsilon:(float)epsilon
{
  featureCopy = feature;
  setCopy = set;
  v20.receiver = self;
  v20.super_class = _REMLMultipleWeightedModel;
  v15 = [(_REMLWeightedModel *)&v20 initWithBiasFeature:biasFeature];
  v16 = v15;
  if (v15)
  {
    v15->_priorMean = mean;
    objc_storeStrong(&v15->_identificationFeature, feature);
    objc_storeStrong(&v16->_featureSet, set);
    v16->_varianceEpsilon = epsilon;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    models = v16->_models;
    v16->_models = dictionary;

    v16->_lock._os_unfair_lock_opaque = 0;
  }

  return v16;
}

- (void)enumerateModels:(id)models
{
  modelsCopy = models;
  os_unfair_lock_lock(&self->_lock);
  models = self->_models;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46___REMLMultipleWeightedModel_enumerateModels___block_invoke;
  v7[3] = &unk_2785FD108;
  v8 = modelsCopy;
  v6 = modelsCopy;
  [(NSMutableDictionary *)models enumerateKeysAndObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_modelForFeatureMap:(id)map
{
  v4 = REDescriptionForTaggedPointer([map valueForFeature:self->_identificationFeature]);
  v5 = [(_REMLMultipleWeightedModel *)self _modelForKey:v4];

  return v5;
}

- (id)_modelForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_models objectForKeyedSubscript:keyCopy];
  if (!v5)
  {
    *&v6 = self->_priorMean;
    *&v7 = self->_varianceEpsilon;
    v5 = [REMLModel modelWithFeatureSet:self->_featureSet priorMean:v6 modelVarianceEpsilon:v7];
    [(_REMLWeightedModel *)self _configureMode:v5];
    [(NSMutableDictionary *)self->_models setObject:v5 forKeyedSubscript:keyCopy];
  }

  return v5;
}

- (void)trainModelWithFeatureMap:(id)map positiveEvent:(id)event
{
  eventCopy = event;
  mapCopy = map;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(_REMLMultipleWeightedModel *)self _modelForFeatureMap:mapCopy];
  [v8 trainWithFeatures:mapCopy positiveEvent:eventCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)predictWithFeatures:(id)features
{
  featuresCopy = features;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_REMLMultipleWeightedModel *)self _modelForFeatureMap:featuresCopy];
  v6 = [v5 predictWithFeatures:featuresCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(_REMLWeightedModel *)self _biasForFeatureSet:featuresCopy];
  v8 = v7;

  LODWORD(v9) = v8;
  [v6 setBias:v9];

  return v6;
}

- (BOOL)saveModelToURL:(id)l error:(id *)error
{
  lCopy = l;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24;
  v18 = __Block_byref_object_dispose__24;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51___REMLMultipleWeightedModel_saveModelToURL_error___block_invoke;
  v10[3] = &unk_2785FD130;
  v12 = &v20;
  v7 = lCopy;
  v11 = v7;
  v13 = &v14;
  [(_REMLMultipleWeightedModel *)self enumerateModels:v10];
  if (error)
  {
    *error = v15[5];
  }

  v8 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

- (BOOL)loadModelFromURL:(id)l error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager contentsOfDirectoryAtPath:path error:error];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        os_unfair_lock_lock(&self->_lock);
        v15 = [(_REMLMultipleWeightedModel *)self _modelForKey:v14];
        v16 = [lCopy URLByAppendingPathComponent:v14];
        v17 = [v16 URLByAppendingPathComponent:@"model"];

        LODWORD(v16) = [v15 loadModelFromURL:v17 error:error];
        os_unfair_lock_unlock(&self->_lock);

        if (!v16)
        {
          v18 = 0;
          goto LABEL_11;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSDictionary)models
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_models copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end