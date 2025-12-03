@interface PXContentSyndicationEmptyDataSourceManager
+ (id)createCountsController;
- (id)allAssetsFetchResult;
- (id)createAssetsDataSourceManager;
- (id)createInitialDataSource;
@end

@implementation PXContentSyndicationEmptyDataSourceManager

+ (id)createCountsController
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationEmptyDataSource.m" lineNumber:57 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)createAssetsDataSourceManager
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationEmptyDataSource.m" lineNumber:53 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)allAssetsFetchResult
{
  v9 = 0;
  v4 = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:3 error:&v9];
  v5 = v9;
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationEmptyDataSource.m" lineNumber:47 description:{@"Error trying to access the syndication library for returning an empty fetch result in PXContentSyndicationEmptyDataSource: %@", v5}];
  }

  v6 = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:v4];

  return v6;
}

- (id)createInitialDataSource
{
  v2 = objc_alloc_init(PXContentSyndicationEmptyDataSource);

  return v2;
}

@end