@interface PUPhotoKitDataSourceManager
- (PUPhotoKitDataSourceManager)init;
- (PUPhotoKitDataSourceManager)initWithAssetsDataSourceManager:(id)a3;
- (PUPhotoKitDataSourceManager)initWithPhotosDataSource:(id)a3;
- (id)photosDataSourceInterestingAssetReferences:(id)a3;
- (void)dealloc;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
- (void)setPhotosDataSource:(id)a3;
- (void)updateWithPhotosDataSource:(id)a3 andDataSourceChange:(id)a4;
@end

@implementation PUPhotoKitDataSourceManager

- (id)photosDataSourceInterestingAssetReferences:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoKitDataSourceManager *)self photosDataSource];

  if (v5 == v4)
  {
    v7 = [(PUAssetsDataSourceManager *)self delegate];
    v6 = [v7 assetsDataSourceManagerInterestingAssetReferences:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PUPhotoKitDataSourceManager *)self photosDataSource];

  if (v7 == v8)
  {
    [(PUPhotoKitDataSourceManager *)self updateWithPhotosDataSource:v8 andDataSourceChange:v6];
  }
}

- (void)setPhotosDataSource:(id)a3
{
  v5 = a3;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != v5)
  {
    v7 = v5;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, a3);
    [(PXPhotosDataSource *)self->_photosDataSource registerChangeObserver:self];
    photosDataSource = [(PUPhotoKitDataSourceManager *)self updateWithPhotosDataSource:v7 andDataSourceChange:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](photosDataSource, v5);
}

- (void)updateWithPhotosDataSource:(id)a3 andDataSourceChange:(id)a4
{
  v6 = a4;
  v11 = [a3 immutableCopy];
  v7 = [PUPhotoKitAssetsDataSource alloc];
  v8 = [(PUAssetsDataSourceManager *)self assetsDataSource];
  v9 = [v8 identifier];
  v10 = [(PUPhotoKitAssetsDataSource *)v7 initWithImmutablePhotosDataSource:v11 withChange:v6 fromDataSourceIdentifier:v9];

  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v10];
}

- (void)dealloc
{
  [(PXPhotosDataSource *)self->_photosDataSource unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PUPhotoKitDataSourceManager;
  [(PUPhotoKitDataSourceManager *)&v3 dealloc];
}

- (PUPhotoKitDataSourceManager)initWithAssetsDataSourceManager:(id)a3
{
  v4 = [a3 photosDataSource];
  v5 = [(PUPhotoKitDataSourceManager *)self initWithPhotosDataSource:v4];

  return v5;
}

- (PUPhotoKitDataSourceManager)initWithPhotosDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUPhotoKitDataSourceManager;
  v6 = [(PUPhotoKitDataSourceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photosDataSource, a3);
    [v5 registerChangeObserver:v7];
    [(PUPhotoKitDataSourceManager *)v7 updateWithPhotosDataSource:v5 andDataSourceChange:0];
  }

  return v7;
}

- (PUPhotoKitDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoKitDataSourceManager.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PUPhotoKitDataSourceManager init]"}];

  abort();
}

@end