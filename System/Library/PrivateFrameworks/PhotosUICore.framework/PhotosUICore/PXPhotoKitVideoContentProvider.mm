@interface PXPhotoKitVideoContentProvider
- (PXPhotoKitVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind requestURLOnly:(BOOL)only;
- (PXPhotoKitVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind requestURLOnly:(BOOL)only resourceReclamationController:(id)controller;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
@end

@implementation PXPhotoKitVideoContentProvider

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  asset = [(PXDisplayAssetVideoContentProvider *)self asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    asset2 = [(PXDisplayAssetVideoContentProvider *)self asset];
    v7 = [queueCopy changeDetailsForObject:asset2];

    if (v7)
    {
      objectAfterChanges = [v7 objectAfterChanges];
      [(PXDisplayAssetVideoContentProvider *)self setAsset:objectAfterChanges];
    }
  }
}

- (PXPhotoKitVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind requestURLOnly:(BOOL)only resourceReclamationController:(id)controller
{
  onlyCopy = only;
  assetCopy = asset;
  v18.receiver = self;
  v18.super_class = PXPhotoKitVideoContentProvider;
  v15 = [(PXDisplayAssetVideoContentProvider *)&v18 initWithAsset:assetCopy mediaProvider:provider deliveryStrategies:strategies audioSessionKind:kind requestURLOnly:onlyCopy resourceReclamationController:controller];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      photoLibrary = [assetCopy photoLibrary];
      [photoLibrary px_registerChangeObserver:v15];
    }
  }

  return v15;
}

- (PXPhotoKitVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind requestURLOnly:(BOOL)only
{
  onlyCopy = only;
  v12 = MEMORY[0x1E69C1AC8];
  strategiesCopy = strategies;
  providerCopy = provider;
  assetCopy = asset;
  v16 = objc_alloc_init(v12);
  v17 = [(PXPhotoKitVideoContentProvider *)self initWithAsset:assetCopy mediaProvider:providerCopy deliveryStrategies:strategiesCopy audioSessionKind:kind requestURLOnly:onlyCopy resourceReclamationController:v16];

  return v17;
}

@end