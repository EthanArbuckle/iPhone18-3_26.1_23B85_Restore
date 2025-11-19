@interface PXPhotoKitCollectionListCreateCollectionActionPerformer
+ (id)localizedTitleForActionType:(id)a3 collectionList:(id)a4;
+ (id)systemImageNameForCollectionList:(id)a3 actionType:(id)a4;
- (void)performUserInteractionTask;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation PXPhotoKitCollectionListCreateCollectionActionPerformer

+ (id)systemImageNameForCollectionList:(id)a3 actionType:(id)a4
{
  v4 = a4;
  if ([v4 isEqualToString:@"PXCollectionListActionTypeCreateAlbum"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PXCollectionListActionTypeCreateAlbumWithPhotosPicker"))
  {
    v5 = @"rectangle.stack.badge.plus";
  }

  else if ([v4 isEqualToString:@"PXCollectionListActionTypeCreateFolder"])
  {
    v5 = @"folder.badge.plus";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)localizedTitleForActionType:(id)a3 collectionList:(id)a4
{
  v4 = localizedTitleForActionType_collectionList__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&localizedTitleForActionType_collectionList__onceToken, &__block_literal_global_56145);
  }

  v6 = [localizedTitleForActionType_collectionList__titles objectForKeyedSubscript:v5];

  return v6;
}

void __102__PXPhotoKitCollectionListCreateCollectionActionPerformer_localizedTitleForActionType_collectionList___block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"PXCollectionListActionTypeCreateAlbum";
  v0 = PXLocalizedStringFromTable(@"CREATE_NEW_ALBUM", @"PhotosUICore");
  v8[0] = v0;
  v7[1] = @"PXCollectionListActionTypeCreateAlbumWithPhotosPicker";
  v1 = PXLocalizedStringFromTable(@"CREATE_NEW_ALBUM", @"PhotosUICore");
  v8[1] = v1;
  v7[2] = @"PXCollectionListActionTypeCreateSharedAlbum";
  v2 = PXLocalizedStringFromTable(@"CREATE_NEW_SHARED_ALBUM", @"PhotosUICore");
  v8[2] = v2;
  v7[3] = @"PXCollectionListActionTypeCreateSmartAlbum";
  v3 = PXLocalizedStringFromTable(@"CREATE_NEW_SMART_ALBUM", @"PhotosUICore");
  v8[3] = v3;
  v7[4] = @"PXCollectionListActionTypeCreateFolder";
  v4 = PXLocalizedStringFromTable(@"CREATE_NEW_FOLDER", @"PhotosUICore");
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = localizedTitleForActionType_collectionList__titles;
  localizedTitleForActionType_collectionList__titles = v5;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "Picker in collection list action manually dismissed with no picked assets for collection list: %@", &v7, 0xCu);
  }

  v6 = [(PXPhotoKitCollectionListCreateCollectionActionPerformer *)self finishedPickingBlock];
  v6[2](v6, MEMORY[0x1E695E0F0]);

  [(PXPhotoKitCollectionListCreateCollectionActionPerformer *)self setFinishedPickingBlock:0];
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a4;
  [a3 dismissViewControllerAnimated:1 completion:0];
  PXMap();
}

- (void)performUserInteractionTask
{
  v4 = [(PXActionPerformer *)self actionType];
  if ([v4 isEqualToString:@"PXCollectionListActionTypeCreateAlbumWithPhotosPicker"])
  {

LABEL_4:
    v7 = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
    v8 = [(PXPhotoKitCollectionListCreateCollectionActionPerformer *)self preselectedAssets];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PXPhotoKitCollectionListCreateCollectionActionPerformer_performUserInteractionTask__block_invoke;
    v13[3] = &unk_1E7733098;
    v13[4] = self;
    v13[5] = a2;
    v9 = [PXLemonadeCollectionCustomizationAlbumsFactory albumsCustomizationViewControllerWithRootCollectionList:v7 preselectedAssets:v8 completion:v13];

LABEL_5:
    [v9 setModalPresentationStyle:2];
    [(PXActionPerformer *)self presentViewController:v9];

    return;
  }

  v5 = [(PXActionPerformer *)self actionType];
  v6 = [v5 isEqualToString:@"PXCollectionListActionTypeCreateAlbum"];

  if (v6)
  {
    goto LABEL_4;
  }

  v10 = [(PXActionPerformer *)self actionType];
  v11 = [v10 isEqualToString:@"PXCollectionListActionTypeCreateFolder"];

  if (v11)
  {
    v7 = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PXPhotoKitCollectionListCreateCollectionActionPerformer_performUserInteractionTask__block_invoke_2;
    v12[3] = &unk_1E7733098;
    v12[4] = self;
    v12[5] = a2;
    v9 = [PXLemonadeCollectionCustomizationFoldersFactory foldersCustomizationViewControllerWithRootCollectionList:v7 completion:v12];
    goto LABEL_5;
  }
}

void __85__PXPhotoKitCollectionListCreateCollectionActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v11 px_descriptionForAssertionMessage];
      [v5 handleFailureInMethod:v6 object:v7 file:@"PXPhotoKitCollectionListCreateCollectionActionPerformer.m" lineNumber:79 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"createdCollection", v9, v10}];
    }
  }

  [*(a1 + 32) setCreatedCollection:v11];

  [*(a1 + 32) completeUserInteractionTaskWithSuccess:a2 error:0];
}

void __85__PXPhotoKitCollectionListCreateCollectionActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v11 px_descriptionForAssertionMessage];
      [v5 handleFailureInMethod:v6 object:v7 file:@"PXPhotoKitCollectionListCreateCollectionActionPerformer.m" lineNumber:94 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"createdCollection", v9, v10}];
    }
  }

  [*(a1 + 32) setCreatedCollection:v11];

  [*(a1 + 32) completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end