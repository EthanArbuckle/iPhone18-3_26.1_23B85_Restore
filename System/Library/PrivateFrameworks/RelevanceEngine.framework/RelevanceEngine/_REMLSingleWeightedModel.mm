@interface _REMLSingleWeightedModel
- (BOOL)loadModelFromURL:(id)l error:(id *)error;
- (BOOL)saveModelToURL:(id)l error:(id *)error;
- (_REMLSingleWeightedModel)initWithFeatureSet:(id)set priorMean:(float)mean biasFeature:(id)feature modelVarianceEpsilon:(float)epsilon;
- (id)predictWithFeatures:(id)features;
@end

@implementation _REMLSingleWeightedModel

- (_REMLSingleWeightedModel)initWithFeatureSet:(id)set priorMean:(float)mean biasFeature:(id)feature modelVarianceEpsilon:(float)epsilon
{
  setCopy = set;
  v17.receiver = self;
  v17.super_class = _REMLSingleWeightedModel;
  v11 = [(_REMLWeightedModel *)&v17 initWithBiasFeature:feature];
  if (v11)
  {
    *&v12 = mean;
    *&v13 = epsilon;
    v14 = [REMLModel modelWithFeatureSet:setCopy priorMean:v12 modelVarianceEpsilon:v13];
    model = v11->_model;
    v11->_model = v14;
  }

  return v11;
}

- (id)predictWithFeatures:(id)features
{
  model = self->_model;
  featuresCopy = features;
  v6 = [(REMLModel *)model predictWithFeatures:featuresCopy];
  [(_REMLWeightedModel *)self _biasForFeatureSet:featuresCopy];
  v8 = v7;

  LODWORD(v9) = v8;
  [v6 setBias:v9];

  return v6;
}

- (BOOL)saveModelToURL:(id)l error:(id *)error
{
  v6 = [l URLByAppendingPathComponent:@"model"];
  LOBYTE(error) = [(REMLModel *)self->_model saveModelToURL:v6 error:error];

  return error;
}

- (BOOL)loadModelFromURL:(id)l error:(id *)error
{
  v6 = [l URLByAppendingPathComponent:@"model"];
  LOBYTE(error) = [(_REMLWeightedModel *)self _loadModel:self->_model fromURL:v6 error:error];

  return error;
}

@end