@interface PGGraphRelationsFeatureValidator
- (int64_t)isValidEntity:(id)a3 error:(id *)a4;
- (int64_t)isValidEntity:(id)a3 graph:(id)a4 error:(id *)a5;
@end

@implementation PGGraphRelationsFeatureValidator

- (int64_t)isValidEntity:(id)a3 graph:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [PGFeatureExtractorGraphRelations alloc];
    v11 = [(PGFeatureValidator *)self featureExtractor];
    v12 = [(PGFeatureExtractorGraphRelations *)v10 initWithGraph:v9 featureExtractor:v11];

    v13 = [(PGFeatureValidator *)self _isValidEntity:v8 featureExtractor:v12 error:a5];
  }

  else if (a5)
  {
    [(PGFeatureValidator *)self _generateErrorWithErrorCode:3 errorMessage:@"Graph is invalid"];
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)isValidEntity:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"[PGGraphRelationsFeatureValidator isValidEntity] method is not available. Please use [PGGraphRelationsFeatureValidator isValidEntity:graph]." userInfo:0];
  objc_exception_throw(v5);
}

@end