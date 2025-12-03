@interface PGFacesFromAssetAverageFeatureValidator
- (int64_t)isValidEntity:(id)entity error:(id *)error;
@end

@implementation PGFacesFromAssetAverageFeatureValidator

- (int64_t)isValidEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v7 = [PGFeatureExtractorFacesFromAssetAverage alloc];
  featureExtractor = [(PGFeatureValidator *)self featureExtractor];
  v9 = [(PGFeatureExtractorFacesFromAssetAverage *)v7 initWithFaceFeatureExtractor:featureExtractor name:@"FacesAverage"];

  v10 = [(PGFeatureValidator *)self _isValidEntity:entityCopy featureExtractor:v9 error:error];
  return v10;
}

@end