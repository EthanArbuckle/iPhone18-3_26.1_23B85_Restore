@interface PXEditMemoryAction
- (PXEditMemoryAction)initWithMemory:(id)a3 photosGraphData:(id)a4 storyColorGradeKind:(int64_t)a5 keyAsset:(id)a6 userCuratedAssets:(id)a7 customUserAssetsEdit:(id)a8;
- (void)_changePhotosGraphData:(id)a3 storyColorGradeKind:(int64_t)a4 keyAsset:(id)a5 userCuratedAssets:(id)a6 customUserAssetsEdit:(id)a7 completionHandler:(id)a8;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXEditMemoryAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v9 = [(PXEditMemoryAction *)self undoPhotosGraphData];
  v5 = [(PXEditMemoryAction *)self undoStoryColorGradeKind];
  v6 = [(PXEditMemoryAction *)self undoKeyAsset];
  v7 = [(PXEditMemoryAction *)self undoUserCuratedAssets];
  v8 = [(PXEditMemoryAction *)self undoCustomUserAssetsEdit];
  [(PXEditMemoryAction *)self _changePhotosGraphData:v9 storyColorGradeKind:v5 keyAsset:v6 userCuratedAssets:v7 customUserAssetsEdit:v8 completionHandler:v4];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v9 = [(PXEditMemoryAction *)self redoPhotosGraphData];
  v5 = [(PXEditMemoryAction *)self redoStoryColorGradeKind];
  v6 = [(PXEditMemoryAction *)self redoKeyAsset];
  v7 = [(PXEditMemoryAction *)self redoUserCuratedAssets];
  v8 = [(PXEditMemoryAction *)self redoCustomUserAssetsEdit];
  [(PXEditMemoryAction *)self _changePhotosGraphData:v9 storyColorGradeKind:v5 keyAsset:v6 userCuratedAssets:v7 customUserAssetsEdit:v8 completionHandler:v4];
}

- (void)_changePhotosGraphData:(id)a3 storyColorGradeKind:(int64_t)a4 keyAsset:(id)a5 userCuratedAssets:(id)a6 customUserAssetsEdit:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(PXEditMemoryAction *)self memory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __131__PXEditMemoryAction__changePhotosGraphData_storyColorGradeKind_keyAsset_userCuratedAssets_customUserAssetsEdit_completionHandler___block_invoke;
  v25[3] = &unk_1E772FD10;
  v26 = v19;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = a4;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  v24 = v19;
  [(PXPhotosAction *)self performChanges:v25 completionHandler:v18];
}

void __131__PXEditMemoryAction__changePhotosGraphData_storyColorGradeKind_keyAsset_userCuratedAssets_customUserAssetsEdit_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E6978900] changeRequestForMemory:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v3 setPhotosGraphData:?];
  }

  if (*(a1 + 72))
  {
    [v3 setStoryColorGradeKind:?];
  }

  if (*(a1 + 48))
  {
    [v3 setKeyAsset:?];
  }

  if (*(a1 + 56))
  {
    [v3 setUserCuratedAssets:?];
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    [v2 assets];
    if (objc_claimAutoreleasedReturnValue())
    {
      [*(a1 + 64) assets];
      objc_claimAutoreleasedReturnValue();
      PXDisplayAssetFetchResultFastEnumeration();
    }

    [v3 setCustomUserAssets:0];
  }
}

- (PXEditMemoryAction)initWithMemory:(id)a3 photosGraphData:(id)a4 storyColorGradeKind:(int64_t)a5 keyAsset:(id)a6 userCuratedAssets:(id)a7 customUserAssetsEdit:(id)a8
{
  v13 = a3;
  v15 = a3;
  v16 = a4;
  v36 = a6;
  v17 = a7;
  obj = a8;
  v18 = a8;
  v19 = [v15 photoLibrary];
  v37.receiver = self;
  v37.super_class = PXEditMemoryAction;
  v20 = [(PXPhotosAction *)&v37 initWithPhotoLibrary:v19];

  v21 = v16;
  if (v20)
  {
    objc_storeStrong(&v20->_memory, v13);
    objc_storeStrong(&v20->_redoPhotosGraphData, a4);
    if (v16)
    {
      v22 = MEMORY[0x1E69788F0];
      v13 = [v15 photosGraphProperties];
      v23 = v22;
      v21 = v16;
      v24 = [v23 px_photosGraphDataFromProperties:v13 error:0];
    }

    else
    {
      v24 = 0;
    }

    objc_storeStrong(&v20->_undoPhotosGraphData, v24);
    if (v21)
    {
    }

    v20->_redoStoryColorGradeKind = a5;
    if (a5)
    {
      v25 = [v15 storyColorGradeKind];
    }

    else
    {
      v25 = 0;
    }

    v20->_undoStoryColorGradeKind = v25;
    objc_storeStrong(&v20->_redoKeyAsset, a6);
    if (v36)
    {
      v13 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v15 options:0];
      v26 = [v13 firstObject];
    }

    else
    {
      v26 = 0;
    }

    objc_storeStrong(&v20->_undoKeyAsset, v26);
    if (v36)
    {
    }

    if (v17)
    {
      PXDisplayAssetFetchResultFastEnumeration();
    }

    objc_storeStrong(&v20->_redoUserCuratedAssets, 0);
    objc_storeStrong(&v20->_undoUserCuratedAssets, 0);
    v27 = MEMORY[0x1E6978630];
    v28 = [v15 photoLibrary];
    v29 = [v28 librarySpecificFetchOptions];
    v30 = [v27 fetchCustomUserAssetsInMemory:v15 options:v29];

    if (v18)
    {
      objc_storeStrong(&v20->_redoCustomUserAssetsEdit, obja);
      v31 = [[PXMemoryCustomUserAssetsEdit alloc] initWithAssets:v30];
    }

    else
    {
      [v30 count];
      redoCustomUserAssetsEdit = v20->_redoCustomUserAssetsEdit;
      v20->_redoCustomUserAssetsEdit = 0;

      v31 = 0;
    }

    v21 = v16;
    objc_storeStrong(&v20->_undoCustomUserAssetsEdit, v31);
    if (v18)
    {
    }
  }

  return v20;
}

@end