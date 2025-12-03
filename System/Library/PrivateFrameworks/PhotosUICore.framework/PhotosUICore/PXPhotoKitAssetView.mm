@interface PXPhotoKitAssetView
- (void)setAsset:(id)asset;
- (void)setPhotoLibrary:(id)library;
@end

@implementation PXPhotoKitAssetView

- (void)setPhotoLibrary:(id)library
{
  libraryCopy = library;
  v6 = libraryCopy;
  if (self->_photoLibrary != libraryCopy)
  {
    v11 = libraryCopy;
    v7 = [(PHPhotoLibrary *)libraryCopy isEqual:?];
    v6 = v11;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_photoLibrary, library);
      v6 = v11;
      if (self->_photoLibrary)
      {
        v8 = objc_alloc_init(MEMORY[0x1E6978860]);
        v9 = [[PXPhotoKitUIMediaProvider alloc] initWithImageManager:v8 library:self->_photoLibrary];
        v10 = [PXSimulatedUIMediaProvider defaultMediaProviderWithMediaProvider:v9];

        [(PXDisplayAssetView *)self setMediaProvider:v10];
        v6 = v11;
      }
    }
  }
}

- (void)setAsset:(id)asset
{
  v6.receiver = self;
  v6.super_class = PXPhotoKitAssetView;
  assetCopy = asset;
  [(PXDisplayAssetView *)&v6 setAsset:assetCopy];
  photoLibrary = [assetCopy photoLibrary];

  [(PXPhotoKitAssetView *)self setPhotoLibrary:photoLibrary];
}

@end