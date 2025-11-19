@interface PGAssetPhotoLibraryFeatureValidator
- (int64_t)isValidEntity:(id)a3 error:(id *)a4;
@end

@implementation PGAssetPhotoLibraryFeatureValidator

- (int64_t)isValidEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PGFeatureExtractorAssetPhotoLibrary alloc];
  v8 = [(PGFeatureValidator *)self featureExtractor];
  v9 = [(PGFeatureExtractorAssetPhotoLibrary *)v7 initWithPhotoLibraryFeatureExtractor:v8];

  v10 = [(PGFeatureValidator *)self _isValidEntity:v6 featureExtractor:v9 error:a4];
  return v10;
}

@end