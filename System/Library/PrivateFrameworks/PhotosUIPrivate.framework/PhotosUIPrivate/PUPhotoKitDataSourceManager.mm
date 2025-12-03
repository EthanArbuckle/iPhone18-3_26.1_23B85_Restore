@interface PUPhotoKitDataSourceManager
- (PUPhotoKitDataSourceManager)init;
- (PUPhotoKitDataSourceManager)initWithAssetsDataSourceManager:(id)manager;
- (PUPhotoKitDataSourceManager)initWithPhotosDataSource:(id)source;
- (id)photosDataSourceInterestingAssetReferences:(id)references;
- (void)dealloc;
- (void)photosDataSource:(id)source didChange:(id)change;
- (void)setPhotosDataSource:(id)source;
- (void)updateWithPhotosDataSource:(id)source andDataSourceChange:(id)change;
@end

@implementation PUPhotoKitDataSourceManager

- (id)photosDataSourceInterestingAssetReferences:(id)references
{
  referencesCopy = references;
  photosDataSource = [(PUPhotoKitDataSourceManager *)self photosDataSource];

  if (photosDataSource == referencesCopy)
  {
    delegate = [(PUAssetsDataSourceManager *)self delegate];
    v6 = [delegate assetsDataSourceManagerInterestingAssetReferences:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)photosDataSource:(id)source didChange:(id)change
{
  sourceCopy = source;
  changeCopy = change;
  photosDataSource = [(PUPhotoKitDataSourceManager *)self photosDataSource];

  if (photosDataSource == sourceCopy)
  {
    [(PUPhotoKitDataSourceManager *)self updateWithPhotosDataSource:sourceCopy andDataSourceChange:changeCopy];
  }
}

- (void)setPhotosDataSource:(id)source
{
  sourceCopy = source;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, source);
    [(PXPhotosDataSource *)self->_photosDataSource registerChangeObserver:self];
    photosDataSource = [(PUPhotoKitDataSourceManager *)self updateWithPhotosDataSource:v7 andDataSourceChange:0];
    sourceCopy = v7;
  }

  MEMORY[0x1EEE66BB8](photosDataSource, sourceCopy);
}

- (void)updateWithPhotosDataSource:(id)source andDataSourceChange:(id)change
{
  changeCopy = change;
  immutableCopy = [source immutableCopy];
  v7 = [PUPhotoKitAssetsDataSource alloc];
  assetsDataSource = [(PUAssetsDataSourceManager *)self assetsDataSource];
  identifier = [assetsDataSource identifier];
  v10 = [(PUPhotoKitAssetsDataSource *)v7 initWithImmutablePhotosDataSource:immutableCopy withChange:changeCopy fromDataSourceIdentifier:identifier];

  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v10];
}

- (void)dealloc
{
  [(PXPhotosDataSource *)self->_photosDataSource unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PUPhotoKitDataSourceManager;
  [(PUPhotoKitDataSourceManager *)&v3 dealloc];
}

- (PUPhotoKitDataSourceManager)initWithAssetsDataSourceManager:(id)manager
{
  photosDataSource = [manager photosDataSource];
  v5 = [(PUPhotoKitDataSourceManager *)self initWithPhotosDataSource:photosDataSource];

  return v5;
}

- (PUPhotoKitDataSourceManager)initWithPhotosDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = PUPhotoKitDataSourceManager;
  v6 = [(PUPhotoKitDataSourceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photosDataSource, source);
    [sourceCopy registerChangeObserver:v7];
    [(PUPhotoKitDataSourceManager *)v7 updateWithPhotosDataSource:sourceCopy andDataSourceChange:0];
  }

  return v7;
}

- (PUPhotoKitDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitDataSourceManager.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PUPhotoKitDataSourceManager init]"}];

  abort();
}

@end