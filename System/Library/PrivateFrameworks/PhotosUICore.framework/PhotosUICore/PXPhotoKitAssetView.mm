@interface PXPhotoKitAssetView
- (void)setAsset:(id)a3;
- (void)setPhotoLibrary:(id)a3;
@end

@implementation PXPhotoKitAssetView

- (void)setPhotoLibrary:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_photoLibrary != v5)
  {
    v11 = v5;
    v7 = [(PHPhotoLibrary *)v5 isEqual:?];
    v6 = v11;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_photoLibrary, a3);
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

- (void)setAsset:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXPhotoKitAssetView;
  v4 = a3;
  [(PXDisplayAssetView *)&v6 setAsset:v4];
  v5 = [v4 photoLibrary];

  [(PXPhotoKitAssetView *)self setPhotoLibrary:v5];
}

@end