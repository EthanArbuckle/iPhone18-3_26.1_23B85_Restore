@interface PXSortCollectionAction
- (PXSortCollectionAction)initWithCollection:(id)collection sortType:(PXSortCollectionActionSortType)type;
- (void)_performPeopleVirtualCollectionActionWithCompletion:(id)completion;
- (void)performAction:(id)action;
- (void)performChangeToSortType:(PXSortCollectionActionSortType)type completeCallback:(id)callback;
- (void)performUndo:(id)undo;
@end

@implementation PXSortCollectionAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  [(PXSortCollectionAction *)self performChangeToSortType:[(PXSortCollectionAction *)self originalSortType] completeCallback:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  collection = [(PXSortCollectionAction *)self collection];
  px_isPeopleVirtualCollection = [collection px_isPeopleVirtualCollection];

  if (px_isPeopleVirtualCollection)
  {
    [(PXSortCollectionAction *)self _performPeopleVirtualCollectionActionWithCompletion:actionCopy];
  }

  else
  {
    [(PXSortCollectionAction *)self performChangeToSortType:[(PXSortCollectionAction *)self sortType] completeCallback:actionCopy];
  }
}

- (void)performChangeToSortType:(PXSortCollectionActionSortType)type completeCallback:(id)callback
{
  callbackCopy = callback;
  collection = [(PXSortCollectionAction *)self collection];
  originalCollectionContent = [(PXSortCollectionAction *)self originalCollectionContent];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PXSortCollectionAction_performChangeToSortType_completeCallback___block_invoke;
  v11[3] = &unk_1E7741058;
  sortKey = type.sortKey;
  ascending = type.ascending;
  v12 = collection;
  v13 = originalCollectionContent;
  v9 = originalCollectionContent;
  v10 = collection;
  [(PXPhotosAction *)self performChanges:v11 completionHandler:callbackCopy];
}

void __67__PXSortCollectionAction_performChangeToSortType_completeCallback___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) canContainAssets];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3;
    v5 = [v4 assetCollectionType] == 1 && objc_msgSend(v4, "assetCollectionSubtype") == 101;
    v6 = [v4 assetCollectionType];
    if ([v4 assetCollectionType] == 2 && objc_msgSend(v4, "assetCollectionSubtype") == 1000000204)
    {
      v7 = [MEMORY[0x1E6978AD0] changeRequestForSmartAlbum:v4];
    }

    else if (([v4 canPerformEditOperation:5] | v5))
    {
      v7 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v4];
    }

    else
    {
      if (([v4 canPerformEditOperation:5] & 1) == 0 && v6 != 12)
      {
        v8 = PLUIGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 32);
          *buf = 138412290;
          v12 = v9;
          _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Failed change sort order for %@", buf, 0xCu);
        }

        goto LABEL_20;
      }

      v7 = [MEMORY[0x1E6978780] changeRequestForCollectionShare:v4];
    }

    v8 = v7;
    [v7 setCustomSortKey:*(a1 + 48)];
    [v8 setCustomSortAscending:*(a1 + 52)];
LABEL_20:

    return;
  }

  if ([v3 canContainCollections])
  {
    v10 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 32) childCollections:*(a1 + 40)];
    [v10 setCustomSortKey:*(a1 + 48)];
    [v10 setCustomSortAscending:*(a1 + 52)];
  }
}

- (void)_performPeopleVirtualCollectionActionWithCompletion:(id)completion
{
  completionCopy = completion;
  sortType = [(PXSortCollectionAction *)self sortType];
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  v6 = [PXPeopleUtilities currentSortOrderFor:photoLibrary];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = sortType.sortKey == 5;
  }

  v8 = !v7 && (*&sortType & 0x100000000) == 0;
  v9 = 1;
  if (v8)
  {
    v9 = 2;
  }

  if (sortType.sortKey)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  photoLibrary2 = [(PXPhotosAction *)self photoLibrary];
  [PXPeopleUtilities setSortOrder:v10 toPhotoLibrary:photoLibrary2];

  completionCopy[2](completionCopy, 1, 0);
}

- (PXSortCollectionAction)initWithCollection:(id)collection sortType:(PXSortCollectionActionSortType)type
{
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  v17.receiver = self;
  v17.super_class = PXSortCollectionAction;
  v9 = [(PXPhotosAction *)&v17 initWithPhotoLibrary:photoLibrary];

  if (!v9)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_collection, collection);
  v9->_sortType = type;
  standardFetchOptions = [(PXPhotosAction *)v9 standardFetchOptions];
  if ([collectionCopy canContainAssets])
  {
    v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:collectionCopy options:standardFetchOptions];
LABEL_6:
    originalCollectionContent = v9->_originalCollectionContent;
    v9->_originalCollectionContent = v11;

    goto LABEL_7;
  }

  if ([collectionCopy canContainCollections])
  {
    v11 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:collectionCopy options:standardFetchOptions];
    goto LABEL_6;
  }

LABEL_7:
  customSortKey = [collectionCopy customSortKey];
  customSortAscending = [collectionCopy customSortAscending];
  v15 = 0x100000000;
  if (!customSortAscending)
  {
    v15 = 0;
  }

  v9->_originalSortType = (v15 | customSortKey);

LABEL_10:
  return v9;
}

@end