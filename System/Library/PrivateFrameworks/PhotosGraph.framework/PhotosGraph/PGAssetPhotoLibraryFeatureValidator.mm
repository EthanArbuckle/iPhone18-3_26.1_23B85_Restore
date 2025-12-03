@interface PGAssetPhotoLibraryFeatureValidator
- (int64_t)isValidEntity:(id)entity error:(id *)error;
@end

@implementation PGAssetPhotoLibraryFeatureValidator

- (int64_t)isValidEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v7 = [PGFeatureExtractorAssetPhotoLibrary alloc];
  featureExtractor = [(PGFeatureValidator *)self featureExtractor];
  v9 = [(PGFeatureExtractorAssetPhotoLibrary *)v7 initWithPhotoLibraryFeatureExtractor:featureExtractor];

  v10 = [(PGFeatureValidator *)self _isValidEntity:entityCopy featureExtractor:v9 error:error];
  return v10;
}

@end