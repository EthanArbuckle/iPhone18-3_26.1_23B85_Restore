@interface PUCameraTransientAssetsDataSourceManager
- (PUCameraTransientAssetsDataSourceManager)initWithTransientDataSource:(id)a3;
- (void)_updateWithTransientDataSource:(id)a3;
@end

@implementation PUCameraTransientAssetsDataSourceManager

- (void)_updateWithTransientDataSource:(id)a3
{
  v4 = a3;
  v9 = [(PUCameraTransientAssetsDataSourceManager *)self _containingAssetCollection];
  v5 = [v4 uuids];
  v6 = [v4 transientAssetMapping];
  v7 = [v4 transientBurstMapping];

  v8 = [[PUCameraTransientAssetsDataSource alloc] initWithUUIDs:v5 mapping:v6 representativeMapping:v7 inAssetCollection:v9];
  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v8];
}

- (PUCameraTransientAssetsDataSourceManager)initWithTransientDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PUCameraTransientAssetsDataSourceManager;
  v6 = [(PUCameraTransientAssetsDataSourceManager *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0];
    containingAssetCollection = v6->__containingAssetCollection;
    v6->__containingAssetCollection = v7;

    objc_storeStrong(&v6->__transientDataSource, a3);
    [v5 registerChangeObserver:v6];
    [(PUCameraTransientAssetsDataSourceManager *)v6 _updateWithTransientDataSource:v5];
    v9 = v6;
  }

  return v6;
}

@end