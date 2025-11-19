@interface PGFeatureValidator
- (PGFeatureValidator)initWithPredicate:(id)a3 featureExtractor:(id)a4 featureName:(id)a5;
- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4;
- (int64_t)_isValidEntity:(id)a3 featureExtractor:(id)a4 error:(id *)a5;
- (int64_t)isValidEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureValidator

- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureValidator" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int64_t)_isValidEntity:(id)a3 featureExtractor:(id)a4 error:(id *)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v9 featureLength] >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = [(PGFeatureValidator *)self featureName];
      v12 = [v9 featureNames];
      v13 = [v12 objectAtIndexedSubscript:v10];
      v14 = [v11 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (++v10 >= [v9 featureLength])
      {
        goto LABEL_5;
      }
    }

    v19 = [v9 floatVectorWithEntity:v8 error:a5];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 count];
      if (!a5 || v10 < v21)
      {
        v27 = [(PGFeatureValidator *)self predicate];
        v28 = MEMORY[0x277CCABB0];
        [v20 floatAtIndex:v10];
        v29 = [v28 numberWithFloat:?];
        v30 = [v27 evaluateWithObject:v29];

        if (v30)
        {
          a5 = 1;
        }

        else
        {
          a5 = 2;
        }

        goto LABEL_15;
      }

      v22 = MEMORY[0x277CCACA8];
      v23 = [v9 name];
      v24 = [v22 stringWithFormat:@"Feature index %lu out of bounds for feature extractor '%@'", v10, v23];

      v25 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      v34[0] = v24;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      *a5 = [v25 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureValidator" code:1 userInfo:v26];
    }

    a5 = 0;
LABEL_15:

    goto LABEL_16;
  }

LABEL_5:
  if (a5)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [(PGFeatureValidator *)self featureName];
    v17 = [v9 name];
    v18 = [v15 stringWithFormat:@"Feature '%@' not found in feature extractor '%@'", v16, v17];
    *a5 = [(PGFeatureValidator *)self _generateErrorWithErrorCode:0 errorMessage:v18];

    a5 = 0;
  }

LABEL_16:

  v31 = *MEMORY[0x277D85DE8];
  return a5;
}

- (int64_t)isValidEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PGFeatureValidator *)self featureExtractor];
  v8 = [(PGFeatureValidator *)self _isValidEntity:v6 featureExtractor:v7 error:a4];

  return v8;
}

- (PGFeatureValidator)initWithPredicate:(id)a3 featureExtractor:(id)a4 featureName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGFeatureValidator;
  v12 = [(PGFeatureValidator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_predicate, a3);
    objc_storeStrong(&v13->_featureExtractor, a4);
    objc_storeStrong(&v13->_featureName, a5);
  }

  return v13;
}

@end