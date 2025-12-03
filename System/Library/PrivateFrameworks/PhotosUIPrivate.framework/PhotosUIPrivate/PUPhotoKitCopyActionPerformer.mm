@interface PUPhotoKitCopyActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
- (void)_performCopy;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitCopyActionPerformer

- (void)_performCopy
{
  v3 = PXDefaultAssetSharingHelperClass();
  assets = [(PUAssetActionPerformer *)self assets];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PUPhotoKitCopyActionPerformer__performCopy__block_invoke;
  v5[3] = &unk_1E7B80280;
  v5[4] = self;
  [v3 copyAssets:assets completionHandler:v5];
}

- (void)performUserInteractionTask
{
  v3 = MEMORY[0x1E69C3A10];
  assets = [(PUAssetActionPerformer *)self assets];
  LODWORD(v3) = [v3 confidentialWarningRequiredForAssets:assets];

  if (v3)
  {
    v7[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PUPhotoKitCopyActionPerformer_performUserInteractionTask__block_invoke;
    v8[3] = &unk_1E7B7E148;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PUPhotoKitCopyActionPerformer_performUserInteractionTask__block_invoke_2;
    v7[3] = &unk_1E7B7E148;
    v5 = [MEMORY[0x1E69C3A10] confidentialityAlertWithConfirmAction:v8 abortAction:v7];
    if (![(PUAssetActionPerformer *)self presentViewController:v5])
    {
      v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present confidentiality alert"];
      [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v6];
    }
  }

  else
  {

    [(PUPhotoKitCopyActionPerformer *)self _performCopy];
  }
}

void __59__PUPhotoKitCopyActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"User cancelled because of confidentiality alert"];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([asset isPhoto])
  {
    v6 = [collectionCopy isTrashBin] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end