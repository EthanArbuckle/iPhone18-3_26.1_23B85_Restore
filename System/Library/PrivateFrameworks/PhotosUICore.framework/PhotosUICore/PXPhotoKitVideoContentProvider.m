@interface PXPhotoKitVideoContentProvider
- (PXPhotoKitVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7;
- (PXPhotoKitVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7 resourceReclamationController:(id)a8;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
@end

@implementation PXPhotoKitVideoContentProvider

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v9 = a3;
  v4 = [(PXDisplayAssetVideoContentProvider *)self asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(PXDisplayAssetVideoContentProvider *)self asset];
    v7 = [v9 changeDetailsForObject:v6];

    if (v7)
    {
      v8 = [v7 objectAfterChanges];
      [(PXDisplayAssetVideoContentProvider *)self setAsset:v8];
    }
  }
}

- (PXPhotoKitVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7 resourceReclamationController:(id)a8
{
  v9 = a7;
  v14 = a3;
  v18.receiver = self;
  v18.super_class = PXPhotoKitVideoContentProvider;
  v15 = [(PXDisplayAssetVideoContentProvider *)&v18 initWithAsset:v14 mediaProvider:a4 deliveryStrategies:a5 audioSessionKind:a6 requestURLOnly:v9 resourceReclamationController:a8];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v14 photoLibrary];
      [v16 px_registerChangeObserver:v15];
    }
  }

  return v15;
}

- (PXPhotoKitVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7
{
  v7 = a7;
  v12 = MEMORY[0x1E69C1AC8];
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v12);
  v17 = [(PXPhotoKitVideoContentProvider *)self initWithAsset:v15 mediaProvider:v14 deliveryStrategies:v13 audioSessionKind:a6 requestURLOnly:v7 resourceReclamationController:v16];

  return v17;
}

@end