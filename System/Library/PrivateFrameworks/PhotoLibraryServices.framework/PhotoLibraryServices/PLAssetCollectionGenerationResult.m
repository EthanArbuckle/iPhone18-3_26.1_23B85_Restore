@interface PLAssetCollectionGenerationResult
- (PLAssetCollectionGenerationResult)initWithInsertedOrUpdatedMoments:(id)a3 frequentLocationsDidChange:(BOOL)a4;
@end

@implementation PLAssetCollectionGenerationResult

- (PLAssetCollectionGenerationResult)initWithInsertedOrUpdatedMoments:(id)a3 frequentLocationsDidChange:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PLAssetCollectionGenerationResult;
  v8 = [(PLAssetCollectionGenerationResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_insertedOrUpdatedMoments, a3);
    v9->_frequentLocationsDidChange = a4;
  }

  return v9;
}

@end