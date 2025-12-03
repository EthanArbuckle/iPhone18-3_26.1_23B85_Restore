@interface PXPhotoKitAssetCollectionDeleteActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)_confirmAndDeleteWithCompletionHandler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionDeleteActionPerformer

+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = @"trash";
    if (![PXSharedAlbumsUtilities sharedAlbumIsOwned:assetCollection])
    {
      v5 = @"minus.circle";
    }
  }

  else
  {
    v5 = @"trash";
  }

  return v5;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  v6 = PXLocalizedStringFromTable(@"PXAssetCollectionDeleteAlbumActionMenuTitle", @"PhotosUICore");
  assetCollection = [referenceCopy assetCollection];

  if ([assetCollection px_isSharedAlbum])
  {
    v8 = @"PXAssetCollectionDeleteSharedAlbumActionMenuTitle";
    if (([assetCollection px_isOwnedStreamSharedAlbum] & 1) == 0 && !objc_msgSend(assetCollection, "px_isOwnedCloudKitSharedAlbum"))
    {
      v8 = @"PXAssetCollectionUnsubscribeSharedAlbumActionMenuTitle";
    }

    v9 = PXLocalizedStringFromTable(v8, @"PhotosUICore");

    v6 = v9;
  }

  return v6;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  if (![off_1E7721428 destructiveActionsEnabled])
  {
    v8 = 0;
    goto LABEL_6;
  }

  assetCollection = [referenceCopy assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionDeleteActionPerformer.m" lineNumber:32 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v12}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionDeleteActionPerformer.m" lineNumber:32 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v12, px_descriptionForAssertionMessage}];

    goto LABEL_9;
  }

LABEL_4:
  v8 = [assetCollection canPerformEditOperation:6];

LABEL_6:
  return v8;
}

- (void)_confirmAndDeleteWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v6 = [presentationEnvironment canPresentPopovers] ^ 1;

  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  undoManager = [(PXActionPerformer *)self undoManager];
  v9 = PXCollectionDeletionAlertControllerForCollection(assetCollection, 0, v6, undoManager, handlerCopy);

  [(PXActionPerformer *)self presentViewController:v9];
}

- (void)performUserInteractionTask
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __76__PXPhotoKitAssetCollectionDeleteActionPerformer_performUserInteractionTask__block_invoke;
  v2[3] = &unk_1E774B308;
  v2[4] = self;
  [(PXPhotoKitAssetCollectionDeleteActionPerformer *)self _confirmAndDeleteWithCompletionHandler:v2];
}

uint64_t __76__PXPhotoKitAssetCollectionDeleteActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [*(a1 + 32) assetCollection];
    v5 = MEMORY[0x1E6991F28];
    v8 = *MEMORY[0x1E6991E08];
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 sendEvent:@"com.apple.photos.CPAnalytics.albumDeleted" withPayload:v6];
  }

  return [*(a1 + 32) completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end