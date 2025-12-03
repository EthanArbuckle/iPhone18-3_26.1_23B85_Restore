@interface PXPhotoKitCollectionListCreateCollectionActionPerformer
+ (id)localizedTitleForActionType:(id)type collectionList:(id)list;
+ (id)systemImageNameForCollectionList:(id)list actionType:(id)type;
- (void)performUserInteractionTask;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation PXPhotoKitCollectionListCreateCollectionActionPerformer

+ (id)systemImageNameForCollectionList:(id)list actionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PXCollectionListActionTypeCreateAlbum"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"PXCollectionListActionTypeCreateAlbumWithPhotosPicker"))
  {
    v5 = @"rectangle.stack.badge.plus";
  }

  else if ([typeCopy isEqualToString:@"PXCollectionListActionTypeCreateFolder"])
  {
    v5 = @"folder.badge.plus";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)localizedTitleForActionType:(id)type collectionList:(id)list
{
  v4 = localizedTitleForActionType_collectionList__onceToken;
  typeCopy = type;
  if (v4 != -1)
  {
    dispatch_once(&localizedTitleForActionType_collectionList__onceToken, &__block_literal_global_56145);
  }

  v6 = [localizedTitleForActionType_collectionList__titles objectForKeyedSubscript:typeCopy];

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

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v9 = *MEMORY[0x1E69E9840];
  collectionList = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = collectionList;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "Picker in collection list action manually dismissed with no picked assets for collection list: %@", &v7, 0xCu);
  }

  finishedPickingBlock = [(PXPhotoKitCollectionListCreateCollectionActionPerformer *)self finishedPickingBlock];
  finishedPickingBlock[2](finishedPickingBlock, MEMORY[0x1E695E0F0]);

  [(PXPhotoKitCollectionListCreateCollectionActionPerformer *)self setFinishedPickingBlock:0];
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v6 = *MEMORY[0x1E69E9840];
  pickingCopy = picking;
  [picker dismissViewControllerAnimated:1 completion:0];
  PXMap();
}

- (void)performUserInteractionTask
{
  actionType = [(PXActionPerformer *)self actionType];
  if ([actionType isEqualToString:@"PXCollectionListActionTypeCreateAlbumWithPhotosPicker"])
  {

LABEL_4:
    collectionList = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
    preselectedAssets = [(PXPhotoKitCollectionListCreateCollectionActionPerformer *)self preselectedAssets];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PXPhotoKitCollectionListCreateCollectionActionPerformer_performUserInteractionTask__block_invoke;
    v13[3] = &unk_1E7733098;
    v13[4] = self;
    v13[5] = a2;
    v9 = [PXLemonadeCollectionCustomizationAlbumsFactory albumsCustomizationViewControllerWithRootCollectionList:collectionList preselectedAssets:preselectedAssets completion:v13];

LABEL_5:
    [v9 setModalPresentationStyle:2];
    [(PXActionPerformer *)self presentViewController:v9];

    return;
  }

  actionType2 = [(PXActionPerformer *)self actionType];
  v6 = [actionType2 isEqualToString:@"PXCollectionListActionTypeCreateAlbum"];

  if (v6)
  {
    goto LABEL_4;
  }

  actionType3 = [(PXActionPerformer *)self actionType];
  v11 = [actionType3 isEqualToString:@"PXCollectionListActionTypeCreateFolder"];

  if (v11)
  {
    collectionList = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PXPhotoKitCollectionListCreateCollectionActionPerformer_performUserInteractionTask__block_invoke_2;
    v12[3] = &unk_1E7733098;
    v12[4] = self;
    v12[5] = a2;
    v9 = [PXLemonadeCollectionCustomizationFoldersFactory foldersCustomizationViewControllerWithRootCollectionList:collectionList completion:v12];
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