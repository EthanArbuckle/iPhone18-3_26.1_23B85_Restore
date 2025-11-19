@interface PXPhotoKitPrintAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitPrintAssetActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v6 = a4;
  if ([MEMORY[0x1E69C5A18] isPrintingAvailable])
  {
    v7 = [v6 isTrashBin] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  v3 = PXDefaultAssetSharingHelperClass();
  v4 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = *MEMORY[0x1E69CDAF0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PXPhotoKitPrintAssetActionPerformer_performUserInteractionTask__block_invoke;
  v6[3] = &unk_1E772C7B0;
  v6[4] = self;
  [v3 prepareAssets:v4 forActivityType:v5 completion:v6];
}

void __65__PXPhotoKitPrintAssetActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2, uint64_t a3)
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
    v8[2] = __65__PXPhotoKitPrintAssetActionPerformer_performUserInteractionTask__block_invoke_2;
    v8[3] = &unk_1E772C788;
    v8[4] = *(a1 + 32);
    [v6 presentAnimated:1 completionHandler:v8];
  }
}

@end