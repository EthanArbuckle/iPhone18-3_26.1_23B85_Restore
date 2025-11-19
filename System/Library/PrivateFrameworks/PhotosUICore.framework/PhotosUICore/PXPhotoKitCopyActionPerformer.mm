@interface PXPhotoKitCopyActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)_performCopy;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCopyActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v6 = a3;
  if (![v6 isPhoto] || (objc_msgSend(v6, "isTrashed") & 1) != 0 || (objc_msgSend(v6, "isRecoveredAsset") & 1) != 0)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [v6 needsSensitivityProtection] ^ 1;
  }

  return v7;
}

- (void)_performCopy
{
  v3 = PXDefaultAssetSharingHelperClass();
  v4 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PXPhotoKitCopyActionPerformer__performCopy__block_invoke;
  v5[3] = &unk_1E774C5C0;
  v5[4] = self;
  [v3 copyAssets:v4 completionHandler:v5];
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = [PXSharingConfidentialityController confidentialWarningRequiredForAssets:v3];

  if (v4)
  {
    v7[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PXPhotoKitCopyActionPerformer_performUserInteractionTask__block_invoke;
    v8[3] = &unk_1E7749600;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PXPhotoKitCopyActionPerformer_performUserInteractionTask__block_invoke_2;
    v7[3] = &unk_1E7749600;
    v5 = [PXSharingConfidentialityController confidentialityAlertWithConfirmAction:v8 abortAction:v7];
    if (![(PXActionPerformer *)self presentViewController:v5])
    {
      v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present confidentiality alert"];
      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v6];
    }
  }

  else
  {

    [(PXPhotoKitCopyActionPerformer *)self _performCopy];
  }
}

void __59__PXPhotoKitCopyActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"User cancelled because of confidentiality alert"];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

@end