@interface REMLLinearModel
- (BOOL)_loadModelFromURL:(id)l error:(id *)error;
- (BOOL)_saveModelToURL:(id)l error:(id *)error;
- (REMLLinearModel)initWithFeatureSet:(id)set interactionDescriptors:(id)descriptors;
- (float)_getAveragePrediction;
- (float)_getNormalizedEntropy;
- (id)_predictWithFeatures:(id)features;
- (id)predictionSetWithFeatures:(id)features;
- (int64_t)_getNumberOfCoordinates;
- (unint64_t)_getTotalExampleCount;
- (unint64_t)_getTotalPositiveCount;
- (void)_clearCache;
- (void)_enumerateModelsForFeatureMap:(id)map usingBlock:(id)block;
- (void)setMetricsRecorder:(id)recorder;
- (void)trainWithFeatures:(id)features positiveEvent:(id)event interaction:(id)interaction;
@end

@implementation REMLLinearModel

- (REMLLinearModel)initWithFeatureSet:(id)set interactionDescriptors:(id)descriptors
{
  v29 = *MEMORY[0x277D85DE8];
  setCopy = set;
  descriptorsCopy = descriptors;
  v27.receiver = self;
  v27.super_class = REMLLinearModel;
  v8 = [(REMLModel *)&v27 initWithFeatureSet:setCopy priorMean:0.0 modelVarianceEpsilon:0.0];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = descriptorsCopy;
    v10 = descriptorsCopy;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [_REMLWeightedModel weightedModelWithDescriptor:v15 featureSet:setCopy];
          name = [v15 name];
          [v9 setObject:v16 forKeyedSubscript:name];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }

    v18 = [v9 copy];
    models = v8->_models;
    v8->_models = v18;

    descriptorsCopy = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)trainWithFeatures:(id)features positiveEvent:(id)event interaction:(id)interaction
{
  v12.receiver = self;
  v12.super_class = REMLLinearModel;
  interactionCopy = interaction;
  eventCopy = event;
  featuresCopy = features;
  [(REMLModel *)&v12 trainWithFeatures:featuresCopy positiveEvent:eventCopy];
  v11 = [(NSDictionary *)self->_models objectForKeyedSubscript:interactionCopy, v12.receiver, v12.super_class];

  [v11 trainModelWithFeatureMap:featuresCopy positiveEvent:eventCopy];
}

- (void)_clearCache
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = REMLLinearModel;
  [(REMLModel *)&v13 _clearCache];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSDictionary *)self->_models allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7++) enumerateModels:&__block_literal_global_54];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateModelsForFeatureMap:(id)map usingBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  blockCopy = block;
  if (blockCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = self->_models;
    v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v16 = blockCopy + 16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [(NSDictionary *)self->_models objectForKeyedSubscript:v12, v16];
          selectionFeature = [v13 selectionFeature];
          if (!selectionFeature || [mapCopy hasValueForFeature:selectionFeature] && REBooleanValueForTaggedPointer(objc_msgSend(mapCopy, "valueForFeature:", selectionFeature)))
          {
            (*(blockCopy + 2))(blockCopy, v12, v13);
          }
        }

        v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)predictionSetWithFeatures:(id)features
{
  featuresCopy = features;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_models, "count")}];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __45__REMLLinearModel_predictionSetWithFeatures___block_invoke;
  v16 = &unk_2785FCFF8;
  v17 = v5;
  v18 = featuresCopy;
  v6 = featuresCopy;
  v7 = v5;
  [(REMLLinearModel *)self _enumerateModelsForFeatureMap:v6 usingBlock:&v13];
  v8 = [REMLPredictionSet alloc];
  v9 = [(REMLModel *)self predictWithFeatures:v6, v13, v14, v15, v16];
  v10 = [v7 copy];
  v11 = [(REMLPredictionSet *)v8 initWithPrediction:v9 predictionMap:v10];

  return v11;
}

void __45__REMLLinearModel_predictionSetWithFeatures___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 predictWithFeatures:v5];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_predictWithFeatures:(id)features
{
  v58 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v5 = REMLExplanationsEnabled();
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    v7 = 0;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __40__REMLLinearModel__predictWithFeatures___block_invoke;
  v28[3] = &unk_2785FD020;
  v8 = featuresCopy;
  v29 = v8;
  v36 = v6;
  v9 = v7;
  v30 = v9;
  v31 = &v37;
  v32 = &v53;
  v33 = &v49;
  v34 = &v45;
  v35 = &v41;
  [(REMLLinearModel *)self _enumerateModelsForFeatureMap:v8 usingBlock:v28];
  v10 = v38;
  v11 = v54;
  v54[6] = v54[6] / v38[6];
  v12 = v50;
  v50[6] = v50[6] / v10[6];
  v13 = v46;
  v46[6] = v46[6] / v10[6];
  v42[6] = v42[6] / v10[6];
  *&v14 = v13[6];
  *&v15 = v11[6];
  *&v16 = v12[6];
  v17 = [REMLPrediction predictionWithProbability:v14 mean:v15 variance:v16 pessimistic:?];
  if (REMLExplanationsEnabled())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v57 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addExplanation:{*(*(&v24 + 1) + 8 * i), v24}];
        }

        v19 = [v18 countByEnumeratingWithState:&v24 objects:v57 count:16];
      }

      while (v19);
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

void __40__REMLLinearModel__predictWithFeatures___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  v4 = [v18 predictWithFeatures:*(a1 + 32)];
  v5 = v4;
  if (*(a1 + 88) == 1)
  {
    v6 = *(a1 + 40);
    v7 = [v4 explanations];
    [v6 unionSet:v7];
  }

  [v18 weight];
  v9 = v8;
  *(*(*(a1 + 48) + 8) + 24) = v8 + *(*(*(a1 + 48) + 8) + 24);
  [v5 probability];
  v11 = v10;
  [v5 bias];
  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + (v9 * (v11 + v12));
  [v5 variance];
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + (v9 * v13);
  [v5 probability];
  v15 = v14;
  [v5 bias];
  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + (v9 * (v15 + v16));
  [v5 pessimistic];
  *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24) + (v9 * v17);
}

- (BOOL)_saveModelToURL:(id)l error:(id *)error
{
  lCopy = l;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  models = self->_models;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__REMLLinearModel__saveModelToURL_error___block_invoke;
  v11[3] = &unk_2785FD048;
  v8 = lCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  [(NSDictionary *)models enumerateKeysAndObjectsUsingBlock:v11];
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __41__REMLLinearModel__saveModelToURL_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [*(a1 + 32) URLByAppendingPathComponent:a2];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v8 path];
  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v12 = [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  v15 = *(*(a1 + 40) + 8);
  v17 = *(v15 + 40);
  v16 = [v7 saveModelToURL:v8 error:&v17];
  objc_storeStrong((v15 + 40), v17);
  if ((v16 & 1) == 0)
  {
LABEL_3:
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (BOOL)_loadModelFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  models = self->_models;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__REMLLinearModel__loadModelFromURL_error___block_invoke;
  v11[3] = &unk_2785FD048;
  v8 = lCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  [(NSDictionary *)models enumerateKeysAndObjectsUsingBlock:v11];
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __43__REMLLinearModel__loadModelFromURL_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = [v7 URLByAppendingPathComponent:a2];
  v10 = *(a1[5] + 8);
  obj = *(v10 + 40);
  v11 = [v8 loadModelFromURL:v9 error:&obj];

  objc_storeStrong((v10 + 40), obj);
  if ((v11 & 1) == 0)
  {
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (float)_getAveragePrediction
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__REMLLinearModel__getAveragePrediction__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__REMLLinearModel__getAveragePrediction__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getAveragePrediction];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (float)_getNormalizedEntropy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__REMLLinearModel__getNormalizedEntropy__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__REMLLinearModel__getNormalizedEntropy__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getNormalizedEntropy];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (int64_t)_getNumberOfCoordinates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__REMLLinearModel__getNumberOfCoordinates__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __42__REMLLinearModel__getNumberOfCoordinates__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getNumberOfCoordinates];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)_getTotalExampleCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__REMLLinearModel__getTotalExampleCount__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__REMLLinearModel__getTotalExampleCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getTotalExampleCount];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)_getTotalPositiveCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__REMLLinearModel__getTotalPositiveCount__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __41__REMLLinearModel__getTotalPositiveCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getTotalPositiveCount];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setMetricsRecorder:(id)recorder
{
  recorderCopy = recorder;
  v9.receiver = self;
  v9.super_class = REMLLinearModel;
  [(REMLModel *)&v9 setMetricsRecorder:recorderCopy];
  models = self->_models;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__REMLLinearModel_setMetricsRecorder___block_invoke;
  v7[3] = &unk_2785FD0E0;
  v8 = recorderCopy;
  v6 = recorderCopy;
  [(NSDictionary *)models enumerateKeysAndObjectsUsingBlock:v7];
}

void __38__REMLLinearModel_setMetricsRecorder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__REMLLinearModel_setMetricsRecorder___block_invoke_2;
  v4[3] = &unk_2785FD0B8;
  v5 = *(a1 + 32);
  [a3 enumerateModels:v4];
}

@end