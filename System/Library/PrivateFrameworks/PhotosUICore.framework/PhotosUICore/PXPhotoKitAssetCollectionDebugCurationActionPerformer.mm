@interface PXPhotoKitAssetCollectionDebugCurationActionPerformer
+ (BOOL)_isCollectionSupported:(id)a3;
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionDebugCurationActionPerformer

- (void)performUserInteractionTask
{
  v20 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v20;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = [[PXMemoryDiagnosticsViewController alloc] initWithMemory:v4];
        goto LABEL_9;
      }

      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      v16 = [v4 px_descriptionForAssertionMessage];
      [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2609 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v11, v16}];
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2609 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v11}];
    }

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2615 description:@"Unexpected collection type"];

    abort();
  }

  v6 = v20;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2612 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v14}];
LABEL_20:

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v14 = NSStringFromClass(v17);
    v18 = [v6 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2612 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v14, v18}];

    goto LABEL_20;
  }

LABEL_8:
  v5 = [[PXHighlightDiagnosticsViewController alloc] initWithHighlight:v6];
LABEL_9:
  v7 = v5;

  if ([(PXActionPerformer *)self presentViewController:v7])
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"PXPhotoKitAssetCollectionDebugCurationActionPerformer: Failed to present view controller"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v8];
  }
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = [a3 assetCollection];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v6 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2593 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2593 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v12}];
  }

LABEL_3:
  v7 = +[PXRootSettings sharedInstance];
  if ([v7 canShowInternalUI])
  {
    v8 = [a1 _isCollectionSupported:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isCollectionSupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end