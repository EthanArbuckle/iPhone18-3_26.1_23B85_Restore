@interface PGGraphRelationsFeatureValidator
- (int64_t)isValidEntity:(id)entity error:(id *)error;
- (int64_t)isValidEntity:(id)entity graph:(id)graph error:(id *)error;
@end

@implementation PGGraphRelationsFeatureValidator

- (int64_t)isValidEntity:(id)entity graph:(id)graph error:(id *)error
{
  entityCopy = entity;
  graphCopy = graph;
  if (graphCopy)
  {
    v10 = [PGFeatureExtractorGraphRelations alloc];
    featureExtractor = [(PGFeatureValidator *)self featureExtractor];
    v12 = [(PGFeatureExtractorGraphRelations *)v10 initWithGraph:graphCopy featureExtractor:featureExtractor];

    v13 = [(PGFeatureValidator *)self _isValidEntity:entityCopy featureExtractor:v12 error:error];
  }

  else if (error)
  {
    [(PGFeatureValidator *)self _generateErrorWithErrorCode:3 errorMessage:@"Graph is invalid"];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)isValidEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"[PGGraphRelationsFeatureValidator isValidEntity] method is not available. Please use [PGGraphRelationsFeatureValidator isValidEntity:graph]." userInfo:0];
  objc_exception_throw(v5);
}

@end