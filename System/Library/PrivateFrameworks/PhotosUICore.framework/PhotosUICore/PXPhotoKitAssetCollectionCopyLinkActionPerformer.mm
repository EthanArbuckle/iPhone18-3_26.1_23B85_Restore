@interface PXPhotoKitAssetCollectionCopyLinkActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitAssetCollectionCopyLinkActionPerformer

- (void)performBackgroundTask
{
  v17 = *MEMORY[0x1E69E9840];
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2230 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2230 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v12}];
  }

LABEL_3:
  shareURL = [assetCollection shareURL];
  v6 = PLSharingGetLog();
  v7 = v6;
  if (shareURL)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      pl_redactedShareURL = [shareURL pl_redactedShareURL];
      *buf = 138543362;
      v16 = pl_redactedShareURL;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Copy Link Action: Copying moment share URL: %{public}@", buf, 0xCu);
    }

    PXCopyURL(shareURL);
    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = assetCollection;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Copy Link Action: No URL to copy for moment share %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1004 debugDescription:{@"Missing URL for moment share: %@", assetCollection}];
  }

  [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:shareURL != 0 error:v9];
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2209 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2209 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v11, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  v7 = [assetCollection assetCollectionType] == 7;

  return v7;
}

@end