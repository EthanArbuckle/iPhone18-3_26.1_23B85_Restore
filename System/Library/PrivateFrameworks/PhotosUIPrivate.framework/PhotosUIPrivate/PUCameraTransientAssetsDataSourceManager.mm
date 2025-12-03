@interface PUCameraTransientAssetsDataSourceManager
- (PUCameraTransientAssetsDataSourceManager)initWithTransientDataSource:(id)source;
- (void)_updateWithTransientDataSource:(id)source;
@end

@implementation PUCameraTransientAssetsDataSourceManager

- (void)_updateWithTransientDataSource:(id)source
{
  sourceCopy = source;
  _containingAssetCollection = [(PUCameraTransientAssetsDataSourceManager *)self _containingAssetCollection];
  uuids = [sourceCopy uuids];
  transientAssetMapping = [sourceCopy transientAssetMapping];
  transientBurstMapping = [sourceCopy transientBurstMapping];

  v8 = [[PUCameraTransientAssetsDataSource alloc] initWithUUIDs:uuids mapping:transientAssetMapping representativeMapping:transientBurstMapping inAssetCollection:_containingAssetCollection];
  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v8];
}

- (PUCameraTransientAssetsDataSourceManager)initWithTransientDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = PUCameraTransientAssetsDataSourceManager;
  v6 = [(PUCameraTransientAssetsDataSourceManager *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0];
    containingAssetCollection = v6->__containingAssetCollection;
    v6->__containingAssetCollection = v7;

    objc_storeStrong(&v6->__transientDataSource, source);
    [sourceCopy registerChangeObserver:v6];
    [(PUCameraTransientAssetsDataSourceManager *)v6 _updateWithTransientDataSource:sourceCopy];
    v9 = v6;
  }

  return v6;
}

@end