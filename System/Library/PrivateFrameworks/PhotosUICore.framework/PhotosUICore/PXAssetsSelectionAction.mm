@interface PXAssetsSelectionAction
- (PXAssetsSelectionAction)initWithSelectionSnapshot:(id)a3;
- (PXFastEnumeration)selectedAssets;
- (void)enumerateSelectedAssetIndexSetsUsingBlock:(id)a3;
@end

@implementation PXAssetsSelectionAction

- (PXFastEnumeration)selectedAssets
{
  v2 = [(PXAssetsSelectionAction *)self selectionSnapshot];
  v3 = [v2 allItemsEnumerator];

  return v3;
}

- (void)enumerateSelectedAssetIndexSetsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsSelectionAction *)self photosDataSource];
  v6 = [(PXAssetsSelectionAction *)self selectionSnapshot];
  v7 = [v6 selectedIndexPaths];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PXAssetsSelectionAction_enumerateSelectedAssetIndexSetsUsingBlock___block_invoke;
  v10[3] = &unk_1E772F018;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [v7 enumerateItemIndexSetsUsingBlock:v10];
}

void __69__PXAssetsSelectionAction_enumerateSelectedAssetIndexSetsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v9 = [v6 assetCollectionForSection:a3];
  v8 = [*(a1 + 32) assetsInSection:a3];
  (*(*(a1 + 40) + 16))();
}

- (PXAssetsSelectionAction)initWithSelectionSnapshot:(id)a3
{
  v6 = a3;
  v7 = [v6 dataSource];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v7 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXAssetsSelectionAction.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v14, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXAssetsSelectionAction.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v14}];
  }

LABEL_3:
  v8 = [v7 photosDataSource];
  v9 = [v8 photoLibrary];
  v17.receiver = self;
  v17.super_class = PXAssetsSelectionAction;
  v10 = [(PXPhotosAction *)&v17 initWithPhotoLibrary:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_selectionSnapshot, a3);
    objc_storeStrong(&v10->_photosDataSource, v8);
  }

  return v10;
}

@end