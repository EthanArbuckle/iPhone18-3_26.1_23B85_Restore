@interface PXPhotoKitCollectionListMoveOutActionPerformer
+ (BOOL)canPerformOnCollectionList:(id)list;
+ (id)_grandParentOfCollection:(id)collection;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCollectionListMoveOutActionPerformer

- (void)performBackgroundTask
{
  v10[1] = *MEMORY[0x1E69E9840];
  collectionList = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  v4 = [PXPhotoKitCollectionListMoveOutActionPerformer _grandParentOfCollection:collectionList];
  if (v4)
  {
    v5 = [PXMoveToCollectionListAction alloc];
    v10[0] = collectionList;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(PXMoveToCollectionListAction *)v5 initWithCollections:v6 targetCollectionList:v4];

    undoManager = [(PXActionPerformer *)self undoManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PXPhotoKitCollectionListMoveOutActionPerformer_performBackgroundTask__block_invoke;
    v9[3] = &unk_1E774C5C0;
    v9[4] = self;
    [(PXAction *)v7 executeWithUndoManager:undoManager completionHandler:v9];
  }
}

- (void)performUserInteractionTask
{
  collectionList = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  photoLibrary = [collectionList photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeRootFolder:1];
  v6 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:collectionList options:librarySpecificFetchOptions];
  firstObject = [v6 firstObject];

  if (firstObject && ([MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:firstObject options:librarySpecificFetchOptions], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__PXPhotoKitCollectionListMoveOutActionPerformer_performUserInteractionTask__block_invoke;
    v15[3] = &unk_1E7749210;
    v16 = v9;
    v17 = firstObject;
    selfCopy = self;
    v11 = v9;
    v12 = [presentationEnvironment presentAlertWithConfigurationHandler:v15];

    if (!v12)
    {
      v13 = PLUIGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Failed to present remove confirmation. User must confirm to perform removal.", v14, 2u);
      }

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
    }
  }

  else
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

void __76__PXPhotoKitCollectionListMoveOutActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 px_isTopLevelFolder];
  v6 = MEMORY[0x1E696AEC0];
  if (v5)
  {
    v7 = PXLocalizedStringFromTable(@"PXPhotoKitCollectionListMoveOutActionPerformer_ToAllAlbums_%@_TitleFormat", @"PhotosUICore");
    v8 = [*(a1 + 40) localizedTitle];
    v9 = [v6 localizedStringWithFormat:v7, v8];
  }

  else
  {
    v7 = PXLocalizedStringFromTable(@"PXPhotoKitCollectionListMoveOutActionPerformer_ToUserFolder_%@_%@_TitleFormat", @"PhotosUICore");
    v8 = [*(a1 + 40) localizedTitle];
    v10 = [*(a1 + 32) localizedTitle];
    v9 = [v6 localizedStringWithFormat:v7, v8, v10];
  }

  [v4 setTitle:v9];
  [v4 setStyle:0];
  v11 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PXPhotoKitCollectionListMoveOutActionPerformer_performUserInteractionTask__block_invoke_2;
  v14[3] = &unk_1E774C648;
  v14[4] = *(a1 + 48);
  [v4 addActionWithTitle:v11 style:1 action:v14];
  v12 = PXLocalizedStringFromTable(@"PXPhotoKitCollectionListMoveOutActionPerformerTitle", @"PhotosUICore");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PXPhotoKitCollectionListMoveOutActionPerformer_performUserInteractionTask__block_invoke_3;
  v13[3] = &unk_1E774C648;
  v13[4] = *(a1 + 48);
  [v4 addActionWithTitle:v12 style:0 action:v13];
}

+ (id)_grandParentOfCollection:(id)collection
{
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeRootFolder:1];
  v6 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:collectionCopy options:librarySpecificFetchOptions];

  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:firstObject options:librarySpecificFetchOptions];
    firstObject2 = [v8 firstObject];
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

+ (BOOL)canPerformOnCollectionList:(id)list
{
  v3 = [PXPhotoKitCollectionListMoveOutActionPerformer _grandParentOfCollection:list];
  v4 = v3 != 0;

  return v4;
}

@end