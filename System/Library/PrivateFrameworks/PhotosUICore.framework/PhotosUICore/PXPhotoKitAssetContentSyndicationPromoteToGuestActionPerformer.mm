@interface PXPhotoKitAssetContentSyndicationPromoteToGuestActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitAssetContentSyndicationPromoteToGuestActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v6 = a3;
  v7 = [v6 photoLibrary];
  v8 = [v7 wellKnownPhotoLibraryIdentifier];

  if (v8 == 3)
  {
    v9 = [v6 isGuestAsset] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)performBackgroundTask
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = [v3 firstObject];
  v5 = [v4 photoLibrary];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__PXPhotoKitAssetContentSyndicationPromoteToGuestActionPerformer_performBackgroundTask__block_invoke;
  v8[3] = &unk_1E774C648;
  v9 = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PXPhotoKitAssetContentSyndicationPromoteToGuestActionPerformer_performBackgroundTask__block_invoke_2;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  v6 = v3;
  [v5 performChanges:v8 completionHandler:v7];
}

void __87__PXPhotoKitAssetContentSyndicationPromoteToGuestActionPerformer_performBackgroundTask__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978648] changeRequestForAsset:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 promoteToGuestAsset];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

@end