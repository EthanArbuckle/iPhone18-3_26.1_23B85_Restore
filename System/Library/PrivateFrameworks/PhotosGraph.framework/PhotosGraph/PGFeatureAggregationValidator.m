@interface PGFeatureAggregationValidator
- (PGFeatureAggregationValidator)initWithPredicate:(id)a3 featureExtractor:(id)a4 featureExtractorType:(int64_t)a5 featureName:(id)a6;
- (id)_composeFeatureExtractorWithGraph:(id)a3 error:(id *)a4;
- (int64_t)featureValidatorType;
- (int64_t)isValidEntity:(id)a3 error:(id *)a4;
- (int64_t)isValidEntity:(id)a3 graph:(id)a4 assetFetchOptionPropertySet:(id)a5 error:(id *)a6;
@end

@implementation PGFeatureAggregationValidator

- (id)_composeFeatureExtractorWithGraph:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [(PGFeatureAggregationValidator *)self featureExtractorType];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (!v7)
      {
        if (a4)
        {
          v12 = @"Graph is invalid";
          v13 = self;
          v14 = 3;
          goto LABEL_15;
        }

LABEL_16:
        v4 = 0;
        goto LABEL_17;
      }

      v15 = [PGFeatureExtractorGraphRelations alloc];
      v10 = [(PGFeatureValidator *)self featureExtractor];
      v11 = [(PGFeatureExtractorGraphRelations *)v15 initWithGraph:v7 featureExtractor:v10];
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_17;
      }

      v9 = [PGFeatureExtractorFacesFromAssetAverage alloc];
      v10 = [(PGFeatureValidator *)self featureExtractor];
      v11 = [(PGFeatureExtractorFacesFromAssetAverage *)v9 initWithFaceFeatureExtractor:v10 name:@"FacesAverage"];
    }

    v4 = v11;

    goto LABEL_17;
  }

  if (!v8)
  {
    if (a4)
    {
      v12 = @"Unknown feature vector type is not supported";
      v13 = self;
      v14 = 2;
LABEL_15:
      [(PGFeatureValidator *)v13 _generateErrorWithErrorCode:v14 errorMessage:v12];
      *a4 = v4 = 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v8 == 1)
  {
    v4 = [(PGFeatureValidator *)self featureExtractor];
  }

LABEL_17:

  return v4;
}

- (int64_t)isValidEntity:(id)a3 graph:(id)a4 assetFetchOptionPropertySet:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 stringWithFormat:@"Subclasses must override %@", v15];
  v17 = [v12 exceptionWithName:v13 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (int64_t)isValidEntity:(id)a3 error:(id *)a4
{
  v4 = a3;
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

- (PGFeatureAggregationValidator)initWithPredicate:(id)a3 featureExtractor:(id)a4 featureExtractorType:(int64_t)a5 featureName:(id)a6
{
  v8.receiver = self;
  v8.super_class = PGFeatureAggregationValidator;
  result = [(PGFeatureValidator *)&v8 initWithPredicate:a3 featureExtractor:a4 featureName:a6];
  if (result)
  {
    result->_featureExtractorType = a5;
  }

  return result;
}

@end