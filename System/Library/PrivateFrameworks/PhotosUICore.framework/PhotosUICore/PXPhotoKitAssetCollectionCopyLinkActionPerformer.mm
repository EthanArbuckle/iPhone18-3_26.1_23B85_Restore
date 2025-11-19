@interface PXPhotoKitAssetCollectionCopyLinkActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitAssetCollectionCopyLinkActionPerformer

- (void)performBackgroundTask
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v4 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2230 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2230 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v12}];
  }

LABEL_3:
  v5 = [v4 shareURL];
  v6 = PLSharingGetLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 pl_redactedShareURL];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Copy Link Action: Copying moment share URL: %{public}@", buf, 0xCu);
    }

    PXCopyURL(v5);
    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Copy Link Action: No URL to copy for moment share %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1004 debugDescription:{@"Missing URL for moment share: %@", v4}];
  }

  [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:v5 != 0 error:v9];
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = [a3 assetCollection];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2209 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v6 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2209 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v11, v13}];

    goto LABEL_6;
  }

LABEL_3:
  v7 = [v6 assetCollectionType] == 7;

  return v7;
}

@end