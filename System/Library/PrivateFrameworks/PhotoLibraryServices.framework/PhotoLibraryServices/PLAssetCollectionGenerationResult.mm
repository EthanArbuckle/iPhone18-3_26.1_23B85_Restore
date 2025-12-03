@interface PLAssetCollectionGenerationResult
- (PLAssetCollectionGenerationResult)initWithInsertedOrUpdatedMoments:(id)moments frequentLocationsDidChange:(BOOL)change;
@end

@implementation PLAssetCollectionGenerationResult

- (PLAssetCollectionGenerationResult)initWithInsertedOrUpdatedMoments:(id)moments frequentLocationsDidChange:(BOOL)change
{
  momentsCopy = moments;
  v11.receiver = self;
  v11.super_class = PLAssetCollectionGenerationResult;
  v8 = [(PLAssetCollectionGenerationResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_insertedOrUpdatedMoments, moments);
    v9->_frequentLocationsDidChange = change;
  }

  return v9;
}

@end