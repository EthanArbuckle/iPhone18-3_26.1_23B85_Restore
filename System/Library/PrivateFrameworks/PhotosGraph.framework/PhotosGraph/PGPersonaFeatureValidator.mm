@interface PGPersonaFeatureValidator
- (int64_t)isValidEntity:(id)entity graph:(id)graph assetFetchOptionPropertySet:(id)set error:(id *)error;
@end

@implementation PGPersonaFeatureValidator

- (int64_t)isValidEntity:(id)entity graph:(id)graph assetFetchOptionPropertySet:(id)set error:(id *)error
{
  entityCopy = entity;
  setCopy = set;
  graphCopy = graph;
  +[PGFeatureExtractorPhotoLibraryAverage resetPreCalculatedFeatureVector];
  v13 = [(PGFeatureAggregationValidator *)self _composeFeatureExtractorWithGraph:graphCopy error:error];

  if (v13)
  {
    v14 = [[PGFeatureExtractorPhotoLibraryAverage alloc] initWithAssetFeatureExtractor:v13 assetFetchOptionPropertySet:setCopy];
    v15 = [[PGFeatureExtractorAssetPhotoLibrary alloc] initWithPhotoLibraryFeatureExtractor:v14];
    v16 = [(PGFeatureValidator *)self _isValidEntity:entityCopy featureExtractor:v15 error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end