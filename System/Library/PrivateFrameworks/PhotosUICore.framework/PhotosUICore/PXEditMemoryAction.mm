@interface PXEditMemoryAction
- (PXEditMemoryAction)initWithMemory:(id)memory photosGraphData:(id)data storyColorGradeKind:(int64_t)kind keyAsset:(id)asset userCuratedAssets:(id)assets customUserAssetsEdit:(id)edit;
- (void)_changePhotosGraphData:(id)data storyColorGradeKind:(int64_t)kind keyAsset:(id)asset userCuratedAssets:(id)assets customUserAssetsEdit:(id)edit completionHandler:(id)handler;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXEditMemoryAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  undoPhotosGraphData = [(PXEditMemoryAction *)self undoPhotosGraphData];
  undoStoryColorGradeKind = [(PXEditMemoryAction *)self undoStoryColorGradeKind];
  undoKeyAsset = [(PXEditMemoryAction *)self undoKeyAsset];
  undoUserCuratedAssets = [(PXEditMemoryAction *)self undoUserCuratedAssets];
  undoCustomUserAssetsEdit = [(PXEditMemoryAction *)self undoCustomUserAssetsEdit];
  [(PXEditMemoryAction *)self _changePhotosGraphData:undoPhotosGraphData storyColorGradeKind:undoStoryColorGradeKind keyAsset:undoKeyAsset userCuratedAssets:undoUserCuratedAssets customUserAssetsEdit:undoCustomUserAssetsEdit completionHandler:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  redoPhotosGraphData = [(PXEditMemoryAction *)self redoPhotosGraphData];
  redoStoryColorGradeKind = [(PXEditMemoryAction *)self redoStoryColorGradeKind];
  redoKeyAsset = [(PXEditMemoryAction *)self redoKeyAsset];
  redoUserCuratedAssets = [(PXEditMemoryAction *)self redoUserCuratedAssets];
  redoCustomUserAssetsEdit = [(PXEditMemoryAction *)self redoCustomUserAssetsEdit];
  [(PXEditMemoryAction *)self _changePhotosGraphData:redoPhotosGraphData storyColorGradeKind:redoStoryColorGradeKind keyAsset:redoKeyAsset userCuratedAssets:redoUserCuratedAssets customUserAssetsEdit:redoCustomUserAssetsEdit completionHandler:actionCopy];
}

- (void)_changePhotosGraphData:(id)data storyColorGradeKind:(int64_t)kind keyAsset:(id)asset userCuratedAssets:(id)assets customUserAssetsEdit:(id)edit completionHandler:(id)handler
{
  dataCopy = data;
  assetCopy = asset;
  assetsCopy = assets;
  editCopy = edit;
  handlerCopy = handler;
  memory = [(PXEditMemoryAction *)self memory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __131__PXEditMemoryAction__changePhotosGraphData_storyColorGradeKind_keyAsset_userCuratedAssets_customUserAssetsEdit_completionHandler___block_invoke;
  v25[3] = &unk_1E772FD10;
  v26 = memory;
  v27 = dataCopy;
  v28 = assetCopy;
  v29 = assetsCopy;
  v30 = editCopy;
  kindCopy = kind;
  v20 = editCopy;
  v21 = assetsCopy;
  v22 = assetCopy;
  v23 = dataCopy;
  v24 = memory;
  [(PXPhotosAction *)self performChanges:v25 completionHandler:handlerCopy];
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

- (PXEditMemoryAction)initWithMemory:(id)memory photosGraphData:(id)data storyColorGradeKind:(int64_t)kind keyAsset:(id)asset userCuratedAssets:(id)assets customUserAssetsEdit:(id)edit
{
  memoryCopy = memory;
  memoryCopy2 = memory;
  dataCopy = data;
  assetCopy = asset;
  assetsCopy = assets;
  obj = edit;
  editCopy = edit;
  photoLibrary = [memoryCopy2 photoLibrary];
  v37.receiver = self;
  v37.super_class = PXEditMemoryAction;
  v20 = [(PXPhotosAction *)&v37 initWithPhotoLibrary:photoLibrary];

  v21 = dataCopy;
  if (v20)
  {
    objc_storeStrong(&v20->_memory, memoryCopy);
    objc_storeStrong(&v20->_redoPhotosGraphData, data);
    if (dataCopy)
    {
      v22 = MEMORY[0x1E69788F0];
      memoryCopy = [memoryCopy2 photosGraphProperties];
      v23 = v22;
      v21 = dataCopy;
      v24 = [v23 px_photosGraphDataFromProperties:memoryCopy error:0];
    }

    else
    {
      v24 = 0;
    }

    objc_storeStrong(&v20->_undoPhotosGraphData, v24);
    if (v21)
    {
    }

    v20->_redoStoryColorGradeKind = kind;
    if (kind)
    {
      storyColorGradeKind = [memoryCopy2 storyColorGradeKind];
    }

    else
    {
      storyColorGradeKind = 0;
    }

    v20->_undoStoryColorGradeKind = storyColorGradeKind;
    objc_storeStrong(&v20->_redoKeyAsset, asset);
    if (assetCopy)
    {
      memoryCopy = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:memoryCopy2 options:0];
      firstObject = [memoryCopy firstObject];
    }

    else
    {
      firstObject = 0;
    }

    objc_storeStrong(&v20->_undoKeyAsset, firstObject);
    if (assetCopy)
    {
    }

    if (assetsCopy)
    {
      PXDisplayAssetFetchResultFastEnumeration();
    }

    objc_storeStrong(&v20->_redoUserCuratedAssets, 0);
    objc_storeStrong(&v20->_undoUserCuratedAssets, 0);
    v27 = MEMORY[0x1E6978630];
    photoLibrary2 = [memoryCopy2 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];
    v30 = [v27 fetchCustomUserAssetsInMemory:memoryCopy2 options:librarySpecificFetchOptions];

    if (editCopy)
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

    v21 = dataCopy;
    objc_storeStrong(&v20->_undoCustomUserAssetsEdit, v31);
    if (editCopy)
    {
    }
  }

  return v20;
}

@end