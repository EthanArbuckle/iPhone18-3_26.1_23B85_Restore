@interface PXContentSyndicationDataSourceManager
+ (id)createCountsController;
- (id)assetFetchResultProvider;
- (id)createAssetsDataSourceManager;
- (id)imageProvider;
- (id)socialLayerHighlightProvider;
@end

@implementation PXContentSyndicationDataSourceManager

+ (id)createCountsController
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:78 description:{@"Method %s is a responsibility of subclass %@", "+[PXContentSyndicationDataSourceManager createCountsController]", v6}];

  abort();
}

- (id)createAssetsDataSourceManager
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:74 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSourceManager createAssetsDataSourceManager]", v6}];

  abort();
}

- (id)socialLayerHighlightProvider
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:70 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSourceManager socialLayerHighlightProvider]", v6}];

  abort();
}

- (id)imageProvider
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:66 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSourceManager imageProvider]", v6}];

  abort();
}

- (id)assetFetchResultProvider
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationDataSource.m" lineNumber:62 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentSyndicationDataSourceManager assetFetchResultProvider]", v6}];

  abort();
}

@end