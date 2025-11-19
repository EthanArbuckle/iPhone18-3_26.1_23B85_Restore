@interface PXSortCollectionAction
- (PXSortCollectionAction)initWithCollection:(id)a3 sortType:(PXSortCollectionActionSortType)a4;
- (void)_performPeopleVirtualCollectionActionWithCompletion:(id)a3;
- (void)performAction:(id)a3;
- (void)performChangeToSortType:(PXSortCollectionActionSortType)a3 completeCallback:(id)a4;
- (void)performUndo:(id)a3;
@end

@implementation PXSortCollectionAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  [(PXSortCollectionAction *)self performChangeToSortType:[(PXSortCollectionAction *)self originalSortType] completeCallback:v4];
}

- (void)performAction:(id)a3
{
  v6 = a3;
  v4 = [(PXSortCollectionAction *)self collection];
  v5 = [v4 px_isPeopleVirtualCollection];

  if (v5)
  {
    [(PXSortCollectionAction *)self _performPeopleVirtualCollectionActionWithCompletion:v6];
  }

  else
  {
    [(PXSortCollectionAction *)self performChangeToSortType:[(PXSortCollectionAction *)self sortType] completeCallback:v6];
  }
}

- (void)performChangeToSortType:(PXSortCollectionActionSortType)a3 completeCallback:(id)a4
{
  v6 = a4;
  v7 = [(PXSortCollectionAction *)self collection];
  v8 = [(PXSortCollectionAction *)self originalCollectionContent];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PXSortCollectionAction_performChangeToSortType_completeCallback___block_invoke;
  v11[3] = &unk_1E7741058;
  sortKey = a3.sortKey;
  ascending = a3.ascending;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(PXPhotosAction *)self performChanges:v11 completionHandler:v6];
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

- (void)_performPeopleVirtualCollectionActionWithCompletion:(id)a3
{
  v12 = a3;
  v4 = [(PXSortCollectionAction *)self sortType];
  v5 = [(PXPhotosAction *)self photoLibrary];
  v6 = [PXPeopleUtilities currentSortOrderFor:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4.sortKey == 5;
  }

  v8 = !v7 && (*&v4 & 0x100000000) == 0;
  v9 = 1;
  if (v8)
  {
    v9 = 2;
  }

  if (v4.sortKey)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PXPhotosAction *)self photoLibrary];
  [PXPeopleUtilities setSortOrder:v10 toPhotoLibrary:v11];

  v12[2](v12, 1, 0);
}

- (PXSortCollectionAction)initWithCollection:(id)a3 sortType:(PXSortCollectionActionSortType)a4
{
  v7 = a3;
  v8 = [v7 photoLibrary];
  v17.receiver = self;
  v17.super_class = PXSortCollectionAction;
  v9 = [(PXPhotosAction *)&v17 initWithPhotoLibrary:v8];

  if (!v9)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_collection, a3);
  v9->_sortType = a4;
  v10 = [(PXPhotosAction *)v9 standardFetchOptions];
  if ([v7 canContainAssets])
  {
    v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v7 options:v10];
LABEL_6:
    originalCollectionContent = v9->_originalCollectionContent;
    v9->_originalCollectionContent = v11;

    goto LABEL_7;
  }

  if ([v7 canContainCollections])
  {
    v11 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v7 options:v10];
    goto LABEL_6;
  }

LABEL_7:
  v13 = [v7 customSortKey];
  v14 = [v7 customSortAscending];
  v15 = 0x100000000;
  if (!v14)
  {
    v15 = 0;
  }

  v9->_originalSortType = (v15 | v13);

LABEL_10:
  return v9;
}

@end