@interface PXAssetsAction
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
- (PXAssetsAction)initWithAsset:(id)asset;
- (PXAssetsAction)initWithAssets:(id)assets;
- (PXAssetsAction)initWithPhotoLibrary:(id)library;
- (void)performAssetChanges:(id)changes completionHandler:(id)handler;
@end

@implementation PXAssetsAction

- (void)performAssetChanges:(id)changes completionHandler:(id)handler
{
  changesCopy = changes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXAssetsAction_performAssetChanges_completionHandler___block_invoke;
  v8[3] = &unk_1E774C2F0;
  v8[4] = self;
  v9 = changesCopy;
  v7 = changesCopy;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:handler];
}

void __56__PXAssetsAction_performAssetChanges_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) assets];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x1E6978648] changeRequestForAsset:*(*(&v8 + 1) + 8 * v6)];
        (*(*(a1 + 40) + 16))();

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (PXAssetsAction)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsAction.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXAssetsAction initWithPhotoLibrary:]"}];

  abort();
}

- (PXAssetsAction)initWithAsset:(id)asset
{
  v10 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = MEMORY[0x1E695DEC8];
  assetCopy2 = asset;
  v6 = [v4 arrayWithObjects:&assetCopy count:1];

  v7 = [(PXAssetsAction *)self initWithAssets:v6, assetCopy, v10];
  return v7;
}

- (PXAssetsAction)initWithAssets:(id)assets
{
  assetsCopy = assets;
  firstObject = [assetsCopy firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    photoLibrary = [firstObject photoLibrary];
    v13.receiver = self;
    v13.super_class = PXAssetsAction;
    v8 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:photoLibrary];

    if (v8)
    {
      v9 = [assetsCopy copy];
      assets = v8->_assets;
      v8->_assets = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsAction.m" lineNumber:23 description:{@"Method %s is a responsibility of subclass %@", "+[PXAssetsAction canPerformOnAsset:inAssetCollection:]", v11}];

  abort();
}

@end