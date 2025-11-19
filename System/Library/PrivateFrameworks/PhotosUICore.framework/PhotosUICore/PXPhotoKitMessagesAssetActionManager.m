@interface PXPhotoKitMessagesAssetActionManager
+ (id)assetActionManagerWithCMMSession:(id)a3;
- (id)_selectionSnapshotForPerformerClass:(Class)a3 applySubsetIfNeeded:(BOOL)a4;
- (void)px_registerAdditionalPerformerClasses;
@end

@implementation PXPhotoKitMessagesAssetActionManager

- (id)_selectionSnapshotForPerformerClass:(Class)a3 applySubsetIfNeeded:(BOOL)a4
{
  v4 = a4;
  v8 = [(PXPhotoKitMessagesAssetActionManager *)self selectionManager];
  v9 = [v8 selectionSnapshot];

  v10 = [v9 dataSource];
  if (!v10)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    [v41 handleFailureInMethod:a2 object:self file:@"PXPhotoKitMessagesAssetActionManager.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v43}];
LABEL_25:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = objc_opt_class();
    v43 = NSStringFromClass(v44);
    v45 = [v10 px_descriptionForAssertionMessage];
    [v41 handleFailureInMethod:a2 object:self file:@"PXPhotoKitMessagesAssetActionManager.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v43, v45}];

    goto LABEL_25;
  }

LABEL_3:
  if (([v9 isAnyItemSelected] & 1) != 0 || (-[PXPhotoKitMessagesAssetActionManager objectReference](self, "objectReference"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    if (([v9 isAnyItemSelected] & 1) != 0 || (objc_msgSend(v10, "containerCollection"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[objc_class canPerformOnImplicitSelectionInContainerCollection:](a3, "canPerformOnImplicitSelectionInContainerCollection:", v17), v17, !v18))
    {
      if ([(objc_class *)a3 canPerformOnSubsetOfSelection]&& v4)
      {
        v22 = objc_alloc_init(off_1E77217C8);
        v23 = [v10 photosDataSource];
        v24 = [v9 selectedIndexPaths];
        v25 = [(PXPhotoKitAssetActionManager *)self person];
        v26 = [(PXPhotoKitAssetActionManager *)self socialGroup];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __96__PXPhotoKitMessagesAssetActionManager__selectionSnapshotForPerformerClass_applySubsetIfNeeded___block_invoke;
        v46[3] = &unk_1E7740DD0;
        v50 = v22;
        v51 = a3;
        v47 = v23;
        v48 = v25;
        v49 = v26;
        v27 = v22;
        v28 = v26;
        v29 = v25;
        v30 = v23;
        [v24 enumerateItemIndexPathsUsingBlock:v46];
        v31 = [[off_1E77218D8 alloc] initWithDataSource:v10 selectedIndexPaths:v27];

        v9 = v31;
      }
    }

    else
    {
      v19 = [off_1E77218D8 alloc];
      v20 = [v10 allItemIndexPaths];
      v21 = [v19 initWithDataSource:v10 selectedIndexPaths:v20];

      v9 = v21;
    }
  }

  else
  {
    v12 = [v9 dataSource];
    v13 = [v12 identifier];
    v14 = [(PXPhotoKitMessagesAssetActionManager *)self objectReference];
    v15 = v14;
    if (v14)
    {
      [v14 indexPath];
      v16 = v53;
    }

    else
    {
      v16 = 0;
      v53 = 0u;
      v54 = 0u;
    }

    if (v13 != v16)
    {
      v32 = [v9 dataSource];
      v33 = [(PXPhotoKitMessagesAssetActionManager *)self objectReference];
      v34 = [v32 objectReferenceForObjectReference:v33];
      [(PXPhotoKitMessagesAssetActionManager *)self setObjectReference:v34];
    }

    v35 = [off_1E77218D8 alloc];
    v36 = [v9 dataSource];
    v37 = [(PXPhotoKitMessagesAssetActionManager *)self objectReference];
    v38 = v37;
    if (v37)
    {
      [v37 indexPath];
    }

    else
    {
      memset(v52, 0, sizeof(v52));
    }

    v39 = [v35 initWithDataSource:v36 selectedIndexPath:v52];

    v9 = v39;
  }

  return v9;
}

void __96__PXPhotoKitMessagesAssetActionManager__selectionSnapshotForPerformerClass_applySubsetIfNeeded___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = [*(a1 + 32) assetCollectionForSection:*(a2 + 1)];
  v5 = *(a1 + 32);
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  v7 = [v5 assetAtSimpleIndexPath:&v10];
  if ([*(a1 + 64) canPerformOnAsset:v7 inAssetCollection:v4 person:*(a1 + 40) socialGroup:*(a1 + 48)])
  {
    v8 = *(a1 + 56);
    v9 = a2[1];
    v10 = *a2;
    v11 = v9;
    [v8 addIndexPath:&v10];
  }
}

- (void)px_registerAdditionalPerformerClasses
{
  v3.receiver = self;
  v3.super_class = PXPhotoKitMessagesAssetActionManager;
  [(PXAssetActionManager *)&v3 px_registerAdditionalPerformerClasses];
  [(PXPhotoKitAssetActionManager *)self registerPerformerClass:objc_opt_class() forType:*off_1E7721A28];
}

+ (id)assetActionManagerWithCMMSession:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 viewModel];
  v6 = [v5 selectionManager];

  v7 = [[a1 alloc] initWithSelectionManager:v6];
  v8 = [v6 dataSourceManager];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitMessagesAssetActionManager assetActionManagerWithCMMSession:]"];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v20 = [v8 px_descriptionForAssertionMessage];
    [v15 handleFailureInFunction:v16 file:@"PXPhotoKitMessagesAssetActionManager.m" lineNumber:24 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionManager.dataSourceManager", v18, v20}];
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitMessagesAssetActionManager assetActionManagerWithCMMSession:]"];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v15 handleFailureInFunction:v16 file:@"PXPhotoKitMessagesAssetActionManager.m" lineNumber:24 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionManager.dataSourceManager", v18}];
  }

LABEL_3:
  [v7 setDataSourceManager:v8];

  v9 = [v4 importStatusManager];
  [v7 setImportStatusManager:v9];

  v10 = [v4 importSessionID];

  [v7 setImportSessionID:v10];
  v11 = MEMORY[0x1E695DFD8];
  v21[0] = *off_1E7721A28;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v13 = [v11 setWithArray:v12];

  [v7 setAllowedActionTypes:v13];

  return v7;
}

@end