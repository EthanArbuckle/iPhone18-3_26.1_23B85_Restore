@interface PGFeatureValidator
- (PGFeatureValidator)initWithPredicate:(id)predicate featureExtractor:(id)extractor featureName:(id)name;
- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message;
- (int64_t)_isValidEntity:(id)entity featureExtractor:(id)extractor error:(id *)error;
- (int64_t)isValidEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureValidator

- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureValidator" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int64_t)_isValidEntity:(id)entity featureExtractor:(id)extractor error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  extractorCopy = extractor;
  if ([extractorCopy featureLength] >= 1)
  {
    v10 = 0;
    while (1)
    {
      featureName = [(PGFeatureValidator *)self featureName];
      featureNames = [extractorCopy featureNames];
      v13 = [featureNames objectAtIndexedSubscript:v10];
      v14 = [featureName isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (++v10 >= [extractorCopy featureLength])
      {
        goto LABEL_5;
      }
    }

    v19 = [extractorCopy floatVectorWithEntity:entityCopy error:error];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 count];
      if (!error || v10 < v21)
      {
        predicate = [(PGFeatureValidator *)self predicate];
        v28 = MEMORY[0x277CCABB0];
        [v20 floatAtIndex:v10];
        v29 = [v28 numberWithFloat:?];
        v30 = [predicate evaluateWithObject:v29];

        if (v30)
        {
          error = 1;
        }

        else
        {
          error = 2;
        }

        goto LABEL_15;
      }

      v22 = MEMORY[0x277CCACA8];
      name = [extractorCopy name];
      v24 = [v22 stringWithFormat:@"Feature index %lu out of bounds for feature extractor '%@'", v10, name];

      v25 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      v34[0] = v24;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      *error = [v25 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureValidator" code:1 userInfo:v26];
    }

    error = 0;
LABEL_15:

    goto LABEL_16;
  }

LABEL_5:
  if (error)
  {
    v15 = MEMORY[0x277CCACA8];
    featureName2 = [(PGFeatureValidator *)self featureName];
    name2 = [extractorCopy name];
    v18 = [v15 stringWithFormat:@"Feature '%@' not found in feature extractor '%@'", featureName2, name2];
    *error = [(PGFeatureValidator *)self _generateErrorWithErrorCode:0 errorMessage:v18];

    error = 0;
  }

LABEL_16:

  v31 = *MEMORY[0x277D85DE8];
  return error;
}

- (int64_t)isValidEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  featureExtractor = [(PGFeatureValidator *)self featureExtractor];
  v8 = [(PGFeatureValidator *)self _isValidEntity:entityCopy featureExtractor:featureExtractor error:error];

  return v8;
}

- (PGFeatureValidator)initWithPredicate:(id)predicate featureExtractor:(id)extractor featureName:(id)name
{
  predicateCopy = predicate;
  extractorCopy = extractor;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PGFeatureValidator;
  v12 = [(PGFeatureValidator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_predicate, predicate);
    objc_storeStrong(&v13->_featureExtractor, extractor);
    objc_storeStrong(&v13->_featureName, name);
  }

  return v13;
}

@end