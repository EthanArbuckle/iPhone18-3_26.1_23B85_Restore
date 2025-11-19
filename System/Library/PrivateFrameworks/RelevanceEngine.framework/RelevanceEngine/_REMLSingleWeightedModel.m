@interface _REMLSingleWeightedModel
- (BOOL)loadModelFromURL:(id)a3 error:(id *)a4;
- (BOOL)saveModelToURL:(id)a3 error:(id *)a4;
- (_REMLSingleWeightedModel)initWithFeatureSet:(id)a3 priorMean:(float)a4 biasFeature:(id)a5 modelVarianceEpsilon:(float)a6;
- (id)predictWithFeatures:(id)a3;
@end

@implementation _REMLSingleWeightedModel

- (_REMLSingleWeightedModel)initWithFeatureSet:(id)a3 priorMean:(float)a4 biasFeature:(id)a5 modelVarianceEpsilon:(float)a6
{
  v10 = a3;
  v17.receiver = self;
  v17.super_class = _REMLSingleWeightedModel;
  v11 = [(_REMLWeightedModel *)&v17 initWithBiasFeature:a5];
  if (v11)
  {
    *&v12 = a4;
    *&v13 = a6;
    v14 = [REMLModel modelWithFeatureSet:v10 priorMean:v12 modelVarianceEpsilon:v13];
    model = v11->_model;
    v11->_model = v14;
  }

  return v11;
}

- (id)predictWithFeatures:(id)a3
{
  model = self->_model;
  v5 = a3;
  v6 = [(REMLModel *)model predictWithFeatures:v5];
  [(_REMLWeightedModel *)self _biasForFeatureSet:v5];
  v8 = v7;

  LODWORD(v9) = v8;
  [v6 setBias:v9];

  return v6;
}

- (BOOL)saveModelToURL:(id)a3 error:(id *)a4
{
  v6 = [a3 URLByAppendingPathComponent:@"model"];
  LOBYTE(a4) = [(REMLModel *)self->_model saveModelToURL:v6 error:a4];

  return a4;
}

- (BOOL)loadModelFromURL:(id)a3 error:(id *)a4
{
  v6 = [a3 URLByAppendingPathComponent:@"model"];
  LOBYTE(a4) = [(_REMLWeightedModel *)self _loadModel:self->_model fromURL:v6 error:a4];

  return a4;
}

@end