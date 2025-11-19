@interface PUPhotoKitPrintActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitPrintActionPerformer

- (void)performUserInteractionTask
{
  v3 = PXDefaultAssetSharingHelperClass();
  v4 = [(PUAssetActionPerformer *)self assets];
  v5 = *MEMORY[0x1E69CDAF0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PUPhotoKitPrintActionPerformer_performUserInteractionTask__block_invoke;
  v6[3] = &unk_1E7B7BB90;
  v6[4] = self;
  [v3 prepareAssets:v4 forActivityType:v5 completion:v6];
}

void __60__PUPhotoKitPrintActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:a3];
  }

  else
  {
    v6 = [MEMORY[0x1E69C5A18] sharedPrintController];
    v7 = PXDefaultPrintInfo();
    [v6 setPrintInfo:v7];

    [v6 setPrintingItems:v5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PUPhotoKitPrintActionPerformer_performUserInteractionTask__block_invoke_2;
    v8[3] = &unk_1E7B7BB68;
    v8[4] = *(a1 + 32);
    [v6 presentAnimated:1 completionHandler:v8];
  }
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a4;
  if ([MEMORY[0x1E69C5A18] isPrintingAvailable])
  {
    v5 = [v4 isTrashBin] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end