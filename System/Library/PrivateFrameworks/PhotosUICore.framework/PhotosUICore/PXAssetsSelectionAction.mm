@interface PXAssetsSelectionAction
- (PXAssetsSelectionAction)initWithSelectionSnapshot:(id)snapshot;
- (PXFastEnumeration)selectedAssets;
- (void)enumerateSelectedAssetIndexSetsUsingBlock:(id)block;
@end

@implementation PXAssetsSelectionAction

- (PXFastEnumeration)selectedAssets
{
  selectionSnapshot = [(PXAssetsSelectionAction *)self selectionSnapshot];
  allItemsEnumerator = [selectionSnapshot allItemsEnumerator];

  return allItemsEnumerator;
}

- (void)enumerateSelectedAssetIndexSetsUsingBlock:(id)block
{
  blockCopy = block;
  photosDataSource = [(PXAssetsSelectionAction *)self photosDataSource];
  selectionSnapshot = [(PXAssetsSelectionAction *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PXAssetsSelectionAction_enumerateSelectedAssetIndexSetsUsingBlock___block_invoke;
  v10[3] = &unk_1E772F018;
  v11 = photosDataSource;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = photosDataSource;
  [selectedIndexPaths enumerateItemIndexSetsUsingBlock:v10];
}

void __69__PXAssetsSelectionAction_enumerateSelectedAssetIndexSetsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v9 = [v6 assetCollectionForSection:a3];
  v8 = [*(a1 + 32) assetsInSection:a3];
  (*(*(a1 + 40) + 16))();
}

- (PXAssetsSelectionAction)initWithSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  dataSource = [snapshotCopy dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSelectionAction.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v14, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSelectionAction.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v14}];
  }

LABEL_3:
  photosDataSource = [dataSource photosDataSource];
  photoLibrary = [photosDataSource photoLibrary];
  v17.receiver = self;
  v17.super_class = PXAssetsSelectionAction;
  v10 = [(PXPhotosAction *)&v17 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_selectionSnapshot, snapshot);
    objc_storeStrong(&v10->_photosDataSource, photosDataSource);
  }

  return v10;
}

@end