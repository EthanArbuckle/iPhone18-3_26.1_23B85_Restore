@interface PXCreateAssetCollectionAction
- (NSArray)unsavedSyndicatedAssets;
- (NSArray)userLibraryAssets;
- (PHAssetCollection)createdAssetCollection;
- (PXContentSyndicationPhotoKitAssetGroup)assetGroup;
- (PXCreateAssetCollectionAction)initWithTitle:(id)title parentCollectionList:(id)list selectedAssets:(id)assets keyAsset:(id)asset;
- (void)performAction:(id)action;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXCreateAssetCollectionAction

- (void)performRedo:(id)redo
{
  redoCopy = redo;
  createdAssetCollection = [(PXCreateAssetCollectionAction *)self createdAssetCollection];
  v6 = createdAssetCollection;
  if (createdAssetCollection)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PXCreateAssetCollectionAction_performRedo___block_invoke;
    v7[3] = &unk_1E774C648;
    v8 = createdAssetCollection;
    [(PXPhotosAction *)self performChanges:v7 completionHandler:redoCopy];

    redoCopy = v8;
  }

  else
  {
    (*(redoCopy + 2))(redoCopy, 0, 0);
  }
}

void __45__PXCreateAssetCollectionAction_performRedo___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978660];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 undeleteAssetCollections:v2];
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  createdAssetCollection = [(PXCreateAssetCollectionAction *)self createdAssetCollection];
  v6 = createdAssetCollection;
  if (createdAssetCollection)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PXCreateAssetCollectionAction_performUndo___block_invoke;
    v7[3] = &unk_1E774C648;
    v8 = createdAssetCollection;
    [(PXPhotosAction *)self performChanges:v7 completionHandler:undoCopy];

    undoCopy = v8;
  }

  else
  {
    (*(undoCopy + 2))(undoCopy, 0, 0);
  }
}

void __45__PXCreateAssetCollectionAction_performUndo___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978660];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 deleteAssetCollections:v2];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  unsavedSyndicatedAssets = [(PXCreateAssetCollectionAction *)self unsavedSyndicatedAssets];
  v5 = [unsavedSyndicatedAssets count];

  if (v5)
  {
    (*(actionCopy + 2))(actionCopy, 0, 0);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__PXCreateAssetCollectionAction_performAction___block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [(PXPhotosAction *)self performChanges:v7 completionHandler:actionCopy];
  }
}

void __47__PXCreateAssetCollectionAction_performAction___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978660];
  v3 = [*(a1 + 32) title];
  v4 = [v2 creationRequestForAssetCollectionWithTitle:v3];

  [v4 setCustomSortKey:1];
  [v4 setCustomSortAscending:1];
  v5 = [*(a1 + 32) assetGroup];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = [v5 userLibraryAssets];
    v8 = [v6 initWithArray:v7];

    v9 = [v5 syndicationIdentifiers];
    v10 = [*(a1 + 32) photoLibrary];
    v11 = PXContentSyndicationUserLibraryAssetsFromSyndicationIdentifiers(v9, v10, 0);

    [v8 addObjectsFromArray:v11];
    v12 = MEMORY[0x1E6978630];
    v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v29[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v15 = [v12 px_orderedAssetsFromAssets:v8 sortDescriptors:v14];

    [v4 addAssets:v15];
  }

  v16 = [*(a1 + 32) keyAsset];
  if (v16)
  {
    [v4 setCustomKeyAsset:v16];
  }

  v17 = [v4 placeholderForCreatedAssetCollection];
  v18 = [v17 localIdentifier];
  [*(a1 + 32) setCreatedCollectionIdentifier:v18];

  v19 = [*(a1 + 32) parentCollectionList];
  v20 = [PXPhotoKitCollectionsDataSourceManager standardDataSourceManagerForCollectionList:v19];

  v21 = [v20 collectionsFetchResult];
  v22 = [v20 indexOfFirstReorderableCollection];
  v23 = MEMORY[0x1E6978768];
  v24 = [*(a1 + 32) parentCollectionList];
  v25 = [v23 changeRequestForCollectionList:v24 childCollections:v21];

  v28 = v17;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v27 = [MEMORY[0x1E696AC90] indexSetWithIndex:v22];
  [v25 insertChildCollections:v26 atIndexes:v27];

  [PXTipsAppDonation donateSignalForEvent:2];
}

- (PHAssetCollection)createdAssetCollection
{
  v15[1] = *MEMORY[0x1E69E9840];
  createdCollectionIdentifier = [(PXCreateAssetCollectionAction *)self createdCollectionIdentifier];
  v4 = createdCollectionIdentifier;
  createdAssetCollection = self->_createdAssetCollection;
  if (createdAssetCollection)
  {
    v6 = 1;
  }

  else
  {
    v6 = createdCollectionIdentifier == 0;
  }

  if (!v6)
  {
    v7 = MEMORY[0x1E6978650];
    v15[0] = createdCollectionIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
    v10 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:standardFetchOptions];
    firstObject = [v10 firstObject];
    v12 = self->_createdAssetCollection;
    self->_createdAssetCollection = firstObject;

    createdAssetCollection = self->_createdAssetCollection;
  }

  v13 = createdAssetCollection;

  return createdAssetCollection;
}

- (NSArray)unsavedSyndicatedAssets
{
  assetGroup = [(PXCreateAssetCollectionAction *)self assetGroup];
  unsavedSyndicatedAssets = [assetGroup unsavedSyndicatedAssets];

  return unsavedSyndicatedAssets;
}

- (NSArray)userLibraryAssets
{
  assetGroup = [(PXCreateAssetCollectionAction *)self assetGroup];
  userLibraryAssets = [assetGroup userLibraryAssets];

  return userLibraryAssets;
}

- (PXContentSyndicationPhotoKitAssetGroup)assetGroup
{
  assetGroup = self->_assetGroup;
  if (!assetGroup)
  {
    v4 = [PXContentSyndicationPhotoKitAssetGroup alloc];
    selectedAssets = [(PXCreateAssetCollectionAction *)self selectedAssets];
    v6 = [(PXContentSyndicationPhotoKitAssetGroup *)v4 initWithAssets:selectedAssets];
    v7 = self->_assetGroup;
    self->_assetGroup = v6;

    assetGroup = self->_assetGroup;
  }

  return assetGroup;
}

- (PXCreateAssetCollectionAction)initWithTitle:(id)title parentCollectionList:(id)list selectedAssets:(id)assets keyAsset:(id)asset
{
  titleCopy = title;
  listCopy = list;
  assetsCopy = assets;
  assetCopy = asset;
  photoLibrary = [listCopy photoLibrary];
  v19.receiver = self;
  v19.super_class = PXCreateAssetCollectionAction;
  v15 = [(PXPhotosAction *)&v19 initWithPhotoLibrary:photoLibrary];

  if (v15)
  {
    v16 = [titleCopy copy];
    title = v15->_title;
    v15->_title = v16;

    objc_storeStrong(&v15->_parentCollectionList, list);
    objc_storeStrong(&v15->_selectedAssets, assets);
    objc_storeStrong(&v15->_keyAsset, asset);
  }

  return v15;
}

@end