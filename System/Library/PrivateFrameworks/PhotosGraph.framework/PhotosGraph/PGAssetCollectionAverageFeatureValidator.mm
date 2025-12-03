@interface PGAssetCollectionAverageFeatureValidator
- (int64_t)isValidEntity:(id)entity graph:(id)graph assetFetchOptionPropertySet:(id)set error:(id *)error;
@end

@implementation PGAssetCollectionAverageFeatureValidator

- (int64_t)isValidEntity:(id)entity graph:(id)graph assetFetchOptionPropertySet:(id)set error:(id *)error
{
  entityCopy = entity;
  setCopy = set;
  v12 = [(PGFeatureAggregationValidator *)self _composeFeatureExtractorWithGraph:graph error:error];
  if (v12)
  {
    v13 = [[PGFeatureExtractorAssetCollectionAverage alloc] initWithAssetFeatureExtractor:v12 assetFetchOptionPropertySet:setCopy name:@"AssetCollectionAverage"];
    v14 = [(PGFeatureValidator *)self _isValidEntity:entityCopy featureExtractor:v13 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end