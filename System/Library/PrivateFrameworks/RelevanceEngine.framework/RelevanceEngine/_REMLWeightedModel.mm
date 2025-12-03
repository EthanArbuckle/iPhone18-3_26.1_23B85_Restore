@interface _REMLWeightedModel
+ (id)weightedModelWithDescriptor:(id)descriptor featureSet:(id)set;
- (BOOL)_loadModel:(id)model fromURL:(id)l error:(id *)error;
- (_REMLWeightedModel)initWithBiasFeature:(id)feature;
- (float)_biasForFeatureSet:(id)set;
- (void)_configureMode:(id)mode;
@end

@implementation _REMLWeightedModel

+ (id)weightedModelWithDescriptor:(id)descriptor featureSet:(id)set
{
  descriptorCopy = descriptor;
  setCopy = set;
  identificationFeature = [(REInteractionDescriptor *)descriptorCopy identificationFeature];

  if (identificationFeature)
  {
    v8 = [_REMLMultipleWeightedModel alloc];
    identificationFeature2 = [(REInteractionDescriptor *)descriptorCopy identificationFeature];
    [(REInteractionDescriptor *)descriptorCopy initialProbability];
    v11 = v10;
    biasFeature = [(REInteractionDescriptor *)descriptorCopy biasFeature];
    [(REInteractionDescriptor *)descriptorCopy varianceEpsilon];
    LODWORD(v14) = v13;
    LODWORD(v15) = v11;
    v16 = [(_REMLMultipleWeightedModel *)v8 initWithFeature:identificationFeature2 featureSet:setCopy priorMean:biasFeature biasFeature:v15 modelVarianceEpsilon:v14];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __61___REMLWeightedModel_weightedModelWithDescriptor_featureSet___block_invoke;
    v34[3] = &unk_2785FD0B8;
    v17 = &v35;
    v35 = descriptorCopy;
    v18 = v34;
  }

  else
  {
    v19 = [_REMLSingleWeightedModel alloc];
    [(REInteractionDescriptor *)descriptorCopy initialProbability];
    v21 = v20;
    biasFeature2 = [(REInteractionDescriptor *)descriptorCopy biasFeature];
    [(REInteractionDescriptor *)descriptorCopy varianceEpsilon];
    LODWORD(v24) = v23;
    LODWORD(v25) = v21;
    v16 = [(_REMLSingleWeightedModel *)v19 initWithFeatureSet:setCopy priorMean:biasFeature2 biasFeature:v25 modelVarianceEpsilon:v24];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __61___REMLWeightedModel_weightedModelWithDescriptor_featureSet___block_invoke_2;
    v32[3] = &unk_2785FD0B8;
    v17 = &v33;
    v33 = descriptorCopy;
    v18 = v32;
  }

  [(_REMLMultipleWeightedModel *)v16 enumerateModels:v18];

  descriptor = v16->super._descriptor;
  v16->super._descriptor = descriptorCopy;
  v27 = descriptorCopy;

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61___REMLWeightedModel_weightedModelWithDescriptor_featureSet___block_invoke_3;
  v30[3] = &unk_2785FD0B8;
  v28 = v16;
  v31 = v28;
  [(_REMLMultipleWeightedModel *)v28 enumerateModels:v30];

  return v28;
}

- (_REMLWeightedModel)initWithBiasFeature:(id)feature
{
  featureCopy = feature;
  v9.receiver = self;
  v9.super_class = _REMLWeightedModel;
  v6 = [(_REMLWeightedModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biasFeature, feature);
  }

  return v7;
}

- (float)_biasForFeatureSet:(id)set
{
  biasFeature = self->_biasFeature;
  if (!biasFeature)
  {
    return 0.0;
  }

  v4 = [set featureValueForFeature:biasFeature];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)_loadModel:(id)model fromURL:(id)l error:(id *)error
{
  modelCopy = model;
  lCopy = l;
  v15 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v11 = [defaultManager fileExistsAtPath:path isDirectory:&v15];

  if (v11 && (v12 = v15, v12 == [modelCopy requiresDirectory]))
  {
    v13 = [modelCopy loadModelFromURL:lCopy error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_configureMode:(id)mode
{
  descriptor = self->_descriptor;
  modeCopy = mode;
  LOBYTE(descriptor) = [(REInteractionDescriptor *)descriptor enableExploreExploit];
  [(REInteractionDescriptor *)self->_descriptor exploreBias];
  [modeCopy setAllowsExploreExploit:(fabsf(v5) >= 0.00000011921) & descriptor];
  [(REInteractionDescriptor *)self->_descriptor exploreBias];
  [modeCopy setExploreExploitModulator:?];
  [(REInteractionDescriptor *)self->_descriptor trainingSimulationExploreBias];
  [modeCopy setSimulationExploreExploitModulator:?];
  [modeCopy setWantsPredictionCache:0];
}

@end