@interface PXPhotoKitAssetCollectionSortActionPerformer
+ (BOOL)canPerformActionType:(id)type onAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)createStandardActionForAssetCollectionReference:(id)reference withInput:(id)input handler:(id)handler;
+ (id)menuActionItemsForAssetCollection:(id)collection;
+ (id)menuTitleForItemIndex:(int64_t)index assetCollection:(id)collection;
+ (int64_t)menuActionStateForItemIndex:(int64_t)index assetCollection:(id)collection;
+ (void)_handleSortOrderSelected:(int64_t)selected forAssetCollection:(id)collection;
+ (void)performActionForItemAtIndex:(int64_t)index assetCollection:(id)collection;
@end

@implementation PXPhotoKitAssetCollectionSortActionPerformer

+ (void)_handleSortOrderSelected:(int64_t)selected forAssetCollection:(id)collection
{
  v30 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v6 = _PXSortActionTypeForAssetCollection(collectionCopy);
  v7 = PLUIGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 != selected)
  {
    if (v8)
    {
      *buf = 134218242;
      selectedCopy = selected;
      v28 = 2112;
      v29 = collectionCopy;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Sort Action: setting sort key %ld for asset collection %@", buf, 0x16u);
    }

    v9 = [collectionCopy assetCollectionType] == 2 && objc_msgSend(collectionCopy, "assetCollectionSubtype") == 1000000204;
    v10 = [collectionCopy assetCollectionType] == 12;
    if (selected <= 2)
    {
      switch(selected)
      {
        case 1:
          v12 = 0;
          v11 = 0x100000000;
          goto LABEL_19;
        case 2:
          v11 = 0x100000000;
          v12 = 6;
LABEL_19:
          v13 = v11 | v12;
          photoLibrary = [collectionCopy photoLibrary];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __92__PXPhotoKitAssetCollectionSortActionPerformer__handleSortOrderSelected_forAssetCollection___block_invoke;
          v20[3] = &unk_1E7739DB0;
          v24 = v9;
          selectedCopy2 = selected;
          v23 = v13;
          v25 = v10;
          v21 = collectionCopy;
          [photoLibrary performChanges:v20 completionHandler:&__block_literal_global_234_112024];

          v7 = v21;
          goto LABEL_20;
        case 0:
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSortActionResult _PXSortActionResultForType(PXSortActionType)"];
          v17 = currentHandler;
          v18 = v16;
          v19 = 77;
          goto LABEL_24;
      }

LABEL_23:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSortActionResult _PXSortActionResultForType(PXSortActionType)"];
      v17 = currentHandler;
      v18 = v16;
      v19 = 81;
LABEL_24:
      [v17 handleFailureInFunction:v18 file:@"PXPhotoKitAssetCollectionSortActionPerformer.m" lineNumber:v19 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (selected == 3)
    {
      v11 = 0x100000000;
    }

    else
    {
      if (selected != 4)
      {
        goto LABEL_23;
      }

      v11 = 0;
    }

    v12 = 1;
    goto LABEL_19;
  }

  if (v8)
  {
    *buf = 138412290;
    selectedCopy = collectionCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Sort Action: User selected a custom sort key that is already set for %@", buf, 0xCu);
  }

LABEL_20:
}

void __92__PXPhotoKitAssetCollectionSortActionPerformer__handleSortOrderSelected_forAssetCollection___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [MEMORY[0x1E6978AD0] changeRequestForSmartAlbum:*(a1 + 32)];
LABEL_7:
    v5 = v2;
    [v2 setCustomSortKey:*(a1 + 48)];
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  if (*(a1 + 57) != 1)
  {
    v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v3];
    goto LABEL_7;
  }

  v5 = [MEMORY[0x1E6978780] changeRequestForCollectionShare:v3];
  [v5 setCustomSortKey:*(a1 + 48)];
  if (*(a1 + 40) == 2)
  {
    v4 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v4 = *(a1 + 52);
LABEL_9:
  [v5 setCustomSortAscending:v4];
}

void __92__PXPhotoKitAssetCollectionSortActionPerformer__handleSortOrderSelected_forAssetCollection___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v7 = "Sort Action: change request succeeded";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Sort Action: change request failed with error: %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }
}

+ (void)performActionForItemAtIndex:(int64_t)index assetCollection:(id)collection
{
  v7 = [self menuActionItemsForAssetCollection:collection];
  if ([v7 count] > index)
  {
    v5 = [v7 objectAtIndexedSubscript:index];
    handler = [v5 handler];
    handler[2]();
  }
}

+ (int64_t)menuActionStateForItemIndex:(int64_t)index assetCollection:(id)collection
{
  v5 = [self menuActionItemsForAssetCollection:collection];
  if ([v5 count] <= index)
  {
    state = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
    state = [v6 state];
  }

  return state;
}

+ (id)menuTitleForItemIndex:(int64_t)index assetCollection:(id)collection
{
  v5 = [self menuActionItemsForAssetCollection:collection];
  if ([v5 count] <= index)
  {
    title = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
    title = [v6 title];
  }

  return title;
}

+ (id)menuActionItemsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v4 = objc_opt_new();
  v5 = _PXSortActionTypeForAssetCollection(collectionCopy);
  v6 = PXLocalizedStringFromTable(@"PXContentSortingMenuOldestFirst", @"PhotosUICore");
  v7 = [off_1E7721410 alloc];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __82__PXPhotoKitAssetCollectionSortActionPerformer_menuActionItemsForAssetCollection___block_invoke;
  v36[3] = &unk_1E774C648;
  v8 = collectionCopy;
  v37 = v8;
  v9 = [v7 initWithTitle:v6 systemImageName:0 role:0 state:v5 == 3 handler:v36];
  [v4 addObject:v9];

  v10 = PXLocalizedStringFromTable(@"PXContentSortingMenuNewestFirst", @"PhotosUICore");
  v11 = [off_1E7721410 alloc];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __82__PXPhotoKitAssetCollectionSortActionPerformer_menuActionItemsForAssetCollection___block_invoke_2;
  v34 = &unk_1E774C648;
  v12 = v8;
  v35 = v12;
  v13 = [v11 initWithTitle:v10 systemImageName:0 role:0 state:v5 == 4 handler:&v31];
  [v4 addObject:v13];

  if ([v12 px_isSharedAlbum])
  {
    v14 = PXLocalizedStringFromTable(@"PXContentSortingMenuDateAdded", @"PhotosUICore");
    v15 = v5 == 2;
    v16 = [off_1E7721410 alloc];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __82__PXPhotoKitAssetCollectionSortActionPerformer_menuActionItemsForAssetCollection___block_invoke_3;
    v29 = &unk_1E774C648;
    v17 = &v30;
    v30 = v12;
    v18 = &v26;
  }

  else
  {
    v14 = PXLocalizedStringFromTable(@"PXContentSortingMenuCustomOrder", @"PhotosUICore");
    v15 = v5 == 1;
    v16 = [off_1E7721410 alloc];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __82__PXPhotoKitAssetCollectionSortActionPerformer_menuActionItemsForAssetCollection___block_invoke_4;
    v24 = &unk_1E774C648;
    v17 = &v25;
    v25 = v12;
    v18 = &v21;
  }

  v19 = [v16 initWithTitle:v14 systemImageName:0 role:0 state:v15 handler:{v18, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34}];
  [v4 addObject:v19];

  return v4;
}

+ (id)createStandardActionForAssetCollectionReference:(id)reference withInput:(id)input handler:(id)handler
{
  inputCopy = input;
  referenceCopy = reference;
  PXLocalizedStringFromTable(@"PXContentSortingMenuTitle", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  v9 = MEMORY[0x1E69DCAB8];
  v10 = [self systemImageNameForAssetCollectionReference:referenceCopy withInputs:inputCopy];

  [v9 systemImageNamed:v10];
  objc_claimAutoreleasedReturnValue();

  assetCollection = [referenceCopy assetCollection];

  [self menuActionItemsForAssetCollection:assetCollection];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

void __114__PXPhotoKitAssetCollectionSortActionPerformer_createStandardActionForAssetCollectionReference_withInput_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E69DC628];
  v4 = [v2 title];
  v5 = [v2 image];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __114__PXPhotoKitAssetCollectionSortActionPerformer_createStandardActionForAssetCollectionReference_withInput_handler___block_invoke_2;
  v7[3] = &unk_1E7743BF8;
  v7[4] = v2;
  v6 = v2;
  [v3 actionWithTitle:v4 image:v5 identifier:0 handler:v7];
  objc_claimAutoreleasedReturnValue();

  [v6 state];
  UIMenuElementStateFromPXMenuActionState();
}

void __114__PXPhotoKitAssetCollectionSortActionPerformer_createStandardActionForAssetCollectionReference_withInput_handler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2]();
}

+ (BOOL)canPerformActionType:(id)type onAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionSortActionPerformer.m" lineNumber:92 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v12}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionSortActionPerformer.m" lineNumber:92 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v12, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  v8 = [PXCollectionSortOrderUtilities userCanChangeSortOrderInCollection:assetCollection];

  return v8;
}

@end