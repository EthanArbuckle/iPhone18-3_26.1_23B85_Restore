@interface _REMLWeightedModel
+ (id)weightedModelWithDescriptor:(id)a3 featureSet:(id)a4;
- (BOOL)_loadModel:(id)a3 fromURL:(id)a4 error:(id *)a5;
- (_REMLWeightedModel)initWithBiasFeature:(id)a3;
- (float)_biasForFeatureSet:(id)a3;
- (void)_configureMode:(id)a3;
@end

@implementation _REMLWeightedModel

+ (id)weightedModelWithDescriptor:(id)a3 featureSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [(REInteractionDescriptor *)v5 identificationFeature];

  if (v7)
  {
    v8 = [_REMLMultipleWeightedModel alloc];
    v9 = [(REInteractionDescriptor *)v5 identificationFeature];
    [(REInteractionDescriptor *)v5 initialProbability];
    v11 = v10;
    v12 = [(REInteractionDescriptor *)v5 biasFeature];
    [(REInteractionDescriptor *)v5 varianceEpsilon];
    LODWORD(v14) = v13;
    LODWORD(v15) = v11;
    v16 = [(_REMLMultipleWeightedModel *)v8 initWithFeature:v9 featureSet:v6 priorMean:v12 biasFeature:v15 modelVarianceEpsilon:v14];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __61___REMLWeightedModel_weightedModelWithDescriptor_featureSet___block_invoke;
    v34[3] = &unk_2785FD0B8;
    v17 = &v35;
    v35 = v5;
    v18 = v34;
  }

  else
  {
    v19 = [_REMLSingleWeightedModel alloc];
    [(REInteractionDescriptor *)v5 initialProbability];
    v21 = v20;
    v22 = [(REInteractionDescriptor *)v5 biasFeature];
    [(REInteractionDescriptor *)v5 varianceEpsilon];
    LODWORD(v24) = v23;
    LODWORD(v25) = v21;
    v16 = [(_REMLSingleWeightedModel *)v19 initWithFeatureSet:v6 priorMean:v22 biasFeature:v25 modelVarianceEpsilon:v24];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __61___REMLWeightedModel_weightedModelWithDescriptor_featureSet___block_invoke_2;
    v32[3] = &unk_2785FD0B8;
    v17 = &v33;
    v33 = v5;
    v18 = v32;
  }

  [(_REMLMultipleWeightedModel *)v16 enumerateModels:v18];

  descriptor = v16->super._descriptor;
  v16->super._descriptor = v5;
  v27 = v5;

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61___REMLWeightedModel_weightedModelWithDescriptor_featureSet___block_invoke_3;
  v30[3] = &unk_2785FD0B8;
  v28 = v16;
  v31 = v28;
  [(_REMLMultipleWeightedModel *)v28 enumerateModels:v30];

  return v28;
}

- (_REMLWeightedModel)initWithBiasFeature:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _REMLWeightedModel;
  v6 = [(_REMLWeightedModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biasFeature, a3);
  }

  return v7;
}

- (float)_biasForFeatureSet:(id)a3
{
  biasFeature = self->_biasFeature;
  if (!biasFeature)
  {
    return 0.0;
  }

  v4 = [a3 featureValueForFeature:biasFeature];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)_loadModel:(id)a3 fromURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v15 = 0;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v15];

  if (v11 && (v12 = v15, v12 == [v7 requiresDirectory]))
  {
    v13 = [v7 loadModelFromURL:v8 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_configureMode:(id)a3
{
  descriptor = self->_descriptor;
  v6 = a3;
  LOBYTE(descriptor) = [(REInteractionDescriptor *)descriptor enableExploreExploit];
  [(REInteractionDescriptor *)self->_descriptor exploreBias];
  [v6 setAllowsExploreExploit:(fabsf(v5) >= 0.00000011921) & descriptor];
  [(REInteractionDescriptor *)self->_descriptor exploreBias];
  [v6 setExploreExploitModulator:?];
  [(REInteractionDescriptor *)self->_descriptor trainingSimulationExploreBias];
  [v6 setSimulationExploreExploitModulator:?];
  [v6 setWantsPredictionCache:0];
}

@end