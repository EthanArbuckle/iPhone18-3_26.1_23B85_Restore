@interface PXAssetsAction
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
- (PXAssetsAction)initWithAsset:(id)a3;
- (PXAssetsAction)initWithAssets:(id)a3;
- (PXAssetsAction)initWithPhotoLibrary:(id)a3;
- (void)performAssetChanges:(id)a3 completionHandler:(id)a4;
@end

@implementation PXAssetsAction

- (void)performAssetChanges:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXAssetsAction_performAssetChanges_completionHandler___block_invoke;
  v8[3] = &unk_1E774C2F0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:a4];
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

- (PXAssetsAction)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXAssetsAction.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXAssetsAction initWithPhotoLibrary:]"}];

  abort();
}

- (PXAssetsAction)initWithAsset:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(PXAssetsAction *)self initWithAssets:v6, v9, v10];
  return v7;
}

- (PXAssetsAction)initWithAssets:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 photoLibrary];
    v13.receiver = self;
    v13.super_class = PXAssetsAction;
    v8 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:v7];

    if (v8)
    {
      v9 = [v4 copy];
      assets = v8->_assets;
      v8->_assets = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:a1 file:@"PXAssetsAction.m" lineNumber:23 description:{@"Method %s is a responsibility of subclass %@", "+[PXAssetsAction canPerformOnAsset:inAssetCollection:]", v11}];

  abort();
}

@end