@interface PXPhotoKitAssetCollectionDebugCurationActionPerformer
+ (BOOL)_isCollectionSupported:(id)supported;
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionDebugCurationActionPerformer

- (void)performUserInteractionTask
{
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = assetCollection;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = [[PXMemoryDiagnosticsViewController alloc] initWithMemory:v4];
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      px_descriptionForAssertionMessage = [v4 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2609 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v11, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2609 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v11}];
    }

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2615 description:@"Unexpected collection type"];

    abort();
  }

  v6 = assetCollection;
  if (!v6)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2612 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v14}];
LABEL_20:

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v14 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage2 = [v6 px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2612 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v14, px_descriptionForAssertionMessage2}];

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

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2593 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2593 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v12}];
  }

LABEL_3:
  v7 = +[PXRootSettings sharedInstance];
  if ([v7 canShowInternalUI])
  {
    v8 = [self _isCollectionSupported:assetCollection];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isCollectionSupported:(id)supported
{
  supportedCopy = supported;
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