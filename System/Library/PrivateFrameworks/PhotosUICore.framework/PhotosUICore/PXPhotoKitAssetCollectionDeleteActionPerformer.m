@interface PXPhotoKitAssetCollectionDeleteActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)_confirmAndDeleteWithCompletionHandler:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionDeleteActionPerformer

+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = [a3 assetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = @"trash";
    if (![PXSharedAlbumsUtilities sharedAlbumIsOwned:v4])
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

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v5 = a4;
  v6 = PXLocalizedStringFromTable(@"PXAssetCollectionDeleteAlbumActionMenuTitle", @"PhotosUICore");
  v7 = [v5 assetCollection];

  if ([v7 px_isSharedAlbum])
  {
    v8 = @"PXAssetCollectionDeleteSharedAlbumActionMenuTitle";
    if (([v7 px_isOwnedStreamSharedAlbum] & 1) == 0 && !objc_msgSend(v7, "px_isOwnedCloudKitSharedAlbum"))
    {
      v8 = @"PXAssetCollectionUnsubscribeSharedAlbumActionMenuTitle";
    }

    v9 = PXLocalizedStringFromTable(v8, @"PhotosUICore");

    v6 = v9;
  }

  return v6;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = a3;
  if (![off_1E7721428 destructiveActionsEnabled])
  {
    v8 = 0;
    goto LABEL_6;
  }

  v7 = [v6 assetCollection];
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionDeleteActionPerformer.m" lineNumber:32 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v12}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v7 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionDeleteActionPerformer.m" lineNumber:32 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v12, v14}];

    goto LABEL_9;
  }

LABEL_4:
  v8 = [v7 canPerformEditOperation:6];

LABEL_6:
  return v8;
}

- (void)_confirmAndDeleteWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXActionPerformer *)self presentationEnvironment];
  v6 = [v5 canPresentPopovers] ^ 1;

  v7 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v8 = [(PXActionPerformer *)self undoManager];
  v9 = PXCollectionDeletionAlertControllerForCollection(v7, 0, v6, v8, v4);

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