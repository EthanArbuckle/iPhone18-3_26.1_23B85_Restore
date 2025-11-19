@interface PGPersonaFeatureValidator
- (int64_t)isValidEntity:(id)a3 graph:(id)a4 assetFetchOptionPropertySet:(id)a5 error:(id *)a6;
@end

@implementation PGPersonaFeatureValidator

- (int64_t)isValidEntity:(id)a3 graph:(id)a4 assetFetchOptionPropertySet:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  +[PGFeatureExtractorPhotoLibraryAverage resetPreCalculatedFeatureVector];
  v13 = [(PGFeatureAggregationValidator *)self _composeFeatureExtractorWithGraph:v12 error:a6];

  if (v13)
  {
    v14 = [[PGFeatureExtractorPhotoLibraryAverage alloc] initWithAssetFeatureExtractor:v13 assetFetchOptionPropertySet:v11];
    v15 = [[PGFeatureExtractorAssetPhotoLibrary alloc] initWithPhotoLibraryFeatureExtractor:v14];
    v16 = [(PGFeatureValidator *)self _isValidEntity:v10 featureExtractor:v15 error:a6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end