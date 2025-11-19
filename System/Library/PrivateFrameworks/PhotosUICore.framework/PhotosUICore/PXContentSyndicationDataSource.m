@interface PXContentSyndicationDataSource
- (NSDate)mostRecentlyAddedDate;
- (id)allAssetsFetchResult;
- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)collectionAtIndexPath:(id)a3;
- (id)collectionListForSection:(int64_t)a3;
- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)countForCollection:(id)a3;
@end

@implementation PXContentSyndicationDataSource

- (int64_t)countForCollection:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:50 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSource countForCollection:]", v8}];

  abort();
}

- (id)collectionListForSection:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:46 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSource collectionListForSection:]", v7}];

  abort();
}

- (id)collectionAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:42 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSource collectionAtIndexPath:]", v8}];

  abort();
}

- (NSDate)mostRecentlyAddedDate
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:30 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSource mostRecentlyAddedDate]", v6}];

  abort();
}

- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:26 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSource assetCollectionAtItemIndexPath:]", v7}];

  abort();
}

- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:22 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSource contentSyndicationItemAtItemIndexPath:]", v7}];

  abort();
}

- (id)allAssetsFetchResult
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:18 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSource allAssetsFetchResult]", v6}];

  abort();
}

@end