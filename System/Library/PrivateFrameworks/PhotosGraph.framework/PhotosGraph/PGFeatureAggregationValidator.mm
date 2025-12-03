@interface PGFeatureAggregationValidator
- (PGFeatureAggregationValidator)initWithPredicate:(id)predicate featureExtractor:(id)extractor featureExtractorType:(int64_t)type featureName:(id)name;
- (id)_composeFeatureExtractorWithGraph:(id)graph error:(id *)error;
- (int64_t)featureValidatorType;
- (int64_t)isValidEntity:(id)entity error:(id *)error;
- (int64_t)isValidEntity:(id)entity graph:(id)graph assetFetchOptionPropertySet:(id)set error:(id *)error;
@end

@implementation PGFeatureAggregationValidator

- (id)_composeFeatureExtractorWithGraph:(id)graph error:(id *)error
{
  graphCopy = graph;
  featureExtractorType = [(PGFeatureAggregationValidator *)self featureExtractorType];
  if (featureExtractorType > 1)
  {
    if (featureExtractorType == 2)
    {
      if (!graphCopy)
      {
        if (error)
        {
          v12 = @"Graph is invalid";
          selfCopy2 = self;
          v14 = 3;
          goto LABEL_15;
        }

LABEL_16:
        featureExtractor2 = 0;
        goto LABEL_17;
      }

      v15 = [PGFeatureExtractorGraphRelations alloc];
      featureExtractor = [(PGFeatureValidator *)self featureExtractor];
      v11 = [(PGFeatureExtractorGraphRelations *)v15 initWithGraph:graphCopy featureExtractor:featureExtractor];
    }

    else
    {
      if (featureExtractorType != 3)
      {
        goto LABEL_17;
      }

      v9 = [PGFeatureExtractorFacesFromAssetAverage alloc];
      featureExtractor = [(PGFeatureValidator *)self featureExtractor];
      v11 = [(PGFeatureExtractorFacesFromAssetAverage *)v9 initWithFaceFeatureExtractor:featureExtractor name:@"FacesAverage"];
    }

    featureExtractor2 = v11;

    goto LABEL_17;
  }

  if (!featureExtractorType)
  {
    if (error)
    {
      v12 = @"Unknown feature vector type is not supported";
      selfCopy2 = self;
      v14 = 2;
LABEL_15:
      [(PGFeatureValidator *)selfCopy2 _generateErrorWithErrorCode:v14 errorMessage:v12];
      *error = featureExtractor2 = 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (featureExtractorType == 1)
  {
    featureExtractor2 = [(PGFeatureValidator *)self featureExtractor];
  }

LABEL_17:

  return featureExtractor2;
}

- (int64_t)isValidEntity:(id)entity graph:(id)graph assetFetchOptionPropertySet:(id)set error:(id *)error
{
  entityCopy = entity;
  graphCopy = graph;
  setCopy = set;
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 stringWithFormat:@"Subclasses must override %@", v15];
  v17 = [v12 exceptionWithName:v13 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (int64_t)isValidEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"isValidEntity:error method is not available. Please use isValidEntity:graph:assetFetchOptionPropertySet." userInfo:0];
  objc_exception_throw(v5);
}

- (int64_t)featureValidatorType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"Subclasses must override %@", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (PGFeatureAggregationValidator)initWithPredicate:(id)predicate featureExtractor:(id)extractor featureExtractorType:(int64_t)type featureName:(id)name
{
  v8.receiver = self;
  v8.super_class = PGFeatureAggregationValidator;
  result = [(PGFeatureValidator *)&v8 initWithPredicate:predicate featureExtractor:extractor featureName:name];
  if (result)
  {
    result->_featureExtractorType = type;
  }

  return result;
}

@end