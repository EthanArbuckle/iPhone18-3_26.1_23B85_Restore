@interface PXPhotoKitAssetCollectionMoveOutActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)_grandParentOfCollection:(id)a3;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionMoveOutActionPerformer

- (void)performBackgroundTask
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v5 = [v4 assetCollection];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v5 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionMoveOutActionPerformer.m" lineNumber:78 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollectionReference.assetCollection", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionMoveOutActionPerformer.m" lineNumber:78 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollectionReference.assetCollection", v13}];
  }

LABEL_3:
  v6 = [PXPhotoKitAssetCollectionMoveOutActionPerformer _grandParentOfCollection:v5];
  if (v6)
  {
    v7 = [PXMoveToCollectionListAction alloc];
    v17[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v9 = [(PXMoveToCollectionListAction *)v7 initWithCollections:v8 targetCollectionList:v6];

    v10 = [(PXActionPerformer *)self undoManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PXPhotoKitAssetCollectionMoveOutActionPerformer_performBackgroundTask__block_invoke;
    v16[3] = &unk_1E774C5C0;
    v16[4] = self;
    [(PXAction *)v9 executeWithUndoManager:v10 completionHandler:v16];
  }
}

- (void)performUserInteractionTask
{
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v5 = [v4 assetCollection];

  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionMoveOutActionPerformer.m" lineNumber:37 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollectionReference.assetCollection", v18}];
LABEL_14:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v20 = [v5 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionMoveOutActionPerformer.m" lineNumber:37 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollectionReference.assetCollection", v18, v20}];

    goto LABEL_14;
  }

LABEL_3:
  v6 = [v5 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  [v7 setIncludeRootFolder:1];
  v8 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:v5 options:v7];
  v9 = [v8 firstObject];

  if (v9 && ([MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:v9 options:v7], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = [(PXActionPerformer *)self presentationEnvironment];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__PXPhotoKitAssetCollectionMoveOutActionPerformer_performUserInteractionTask__block_invoke;
    v22[3] = &unk_1E7749210;
    v23 = v11;
    v24 = v9;
    v25 = self;
    v13 = v11;
    v14 = [v12 presentAlertWithConfigurationHandler:v22];

    if (!v14)
    {
      v15 = PLUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Failed to present remove confirmation. User must confirm to perform removal.", buf, 2u);
      }

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
    }
  }

  else
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

void __77__PXPhotoKitAssetCollectionMoveOutActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 px_isTopLevelFolder];
  v6 = MEMORY[0x1E696AEC0];
  if (v5)
  {
    v7 = PXLocalizedStringFromTable(@"PXPhotoKitAssetCollectionMoveOutActionPerformer_ToAllAlbums_%@_TitleFormat", @"PhotosUICore");
    v8 = [*(a1 + 40) localizedTitle];
    v9 = [v6 localizedStringWithFormat:v7, v8];
  }

  else
  {
    v7 = PXLocalizedStringFromTable(@"PXPhotoKitAssetCollectionMoveOutActionPerformer_ToUserFolder_%@_%@_TitleFormat", @"PhotosUICore");
    v8 = [*(a1 + 40) localizedTitle];
    v10 = [*(a1 + 32) localizedTitle];
    v9 = [v6 localizedStringWithFormat:v7, v8, v10];
  }

  [v4 setTitle:v9];
  [v4 setStyle:0];
  v11 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__PXPhotoKitAssetCollectionMoveOutActionPerformer_performUserInteractionTask__block_invoke_2;
  v14[3] = &unk_1E774C648;
  v14[4] = *(a1 + 48);
  [v4 addActionWithTitle:v11 style:1 action:v14];
  v12 = PXLocalizedStringFromTable(@"PXPhotoKitAssetCollectionMoveOutActionPerformerTitle", @"PhotosUICore");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PXPhotoKitAssetCollectionMoveOutActionPerformer_performUserInteractionTask__block_invoke_3;
  v13[3] = &unk_1E774C648;
  v13[4] = *(a1 + 48);
  [v4 addActionWithTitle:v12 style:0 action:v13];
}

+ (id)_grandParentOfCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setIncludeRootFolder:1];
  v6 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:v3 options:v5];

  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:v7 options:v5];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionMoveOutActionPerformer.m" lineNumber:28 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionMoveOutActionPerformer.m" lineNumber:28 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v12}];
  }

LABEL_3:
  if ([v6 px_isRegularAlbum])
  {
    v7 = [PXPhotoKitAssetCollectionMoveOutActionPerformer _grandParentOfCollection:v6];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end