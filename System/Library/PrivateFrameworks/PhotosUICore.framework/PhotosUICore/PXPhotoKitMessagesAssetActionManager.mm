@interface PXPhotoKitMessagesAssetActionManager
+ (id)assetActionManagerWithCMMSession:(id)session;
- (id)_selectionSnapshotForPerformerClass:(Class)class applySubsetIfNeeded:(BOOL)needed;
- (void)px_registerAdditionalPerformerClasses;
@end

@implementation PXPhotoKitMessagesAssetActionManager

- (id)_selectionSnapshotForPerformerClass:(Class)class applySubsetIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  selectionManager = [(PXPhotoKitMessagesAssetActionManager *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource = [selectionSnapshot dataSource];
  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitMessagesAssetActionManager.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v43}];
LABEL_25:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = objc_opt_class();
    v43 = NSStringFromClass(v44);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitMessagesAssetActionManager.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v43, px_descriptionForAssertionMessage}];

    goto LABEL_25;
  }

LABEL_3:
  if (([selectionSnapshot isAnyItemSelected] & 1) != 0 || (-[PXPhotoKitMessagesAssetActionManager objectReference](self, "objectReference"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    if (([selectionSnapshot isAnyItemSelected] & 1) != 0 || (objc_msgSend(dataSource, "containerCollection"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[objc_class canPerformOnImplicitSelectionInContainerCollection:](class, "canPerformOnImplicitSelectionInContainerCollection:", v17), v17, !v18))
    {
      if ([(objc_class *)class canPerformOnSubsetOfSelection]&& neededCopy)
      {
        v22 = objc_alloc_init(off_1E77217C8);
        photosDataSource = [dataSource photosDataSource];
        selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
        person = [(PXPhotoKitAssetActionManager *)self person];
        socialGroup = [(PXPhotoKitAssetActionManager *)self socialGroup];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __96__PXPhotoKitMessagesAssetActionManager__selectionSnapshotForPerformerClass_applySubsetIfNeeded___block_invoke;
        v46[3] = &unk_1E7740DD0;
        v50 = v22;
        classCopy = class;
        v47 = photosDataSource;
        v48 = person;
        v49 = socialGroup;
        v27 = v22;
        v28 = socialGroup;
        v29 = person;
        v30 = photosDataSource;
        [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v46];
        v31 = [[off_1E77218D8 alloc] initWithDataSource:dataSource selectedIndexPaths:v27];

        selectionSnapshot = v31;
      }
    }

    else
    {
      v19 = [off_1E77218D8 alloc];
      allItemIndexPaths = [dataSource allItemIndexPaths];
      v21 = [v19 initWithDataSource:dataSource selectedIndexPaths:allItemIndexPaths];

      selectionSnapshot = v21;
    }
  }

  else
  {
    dataSource2 = [selectionSnapshot dataSource];
    identifier = [dataSource2 identifier];
    objectReference = [(PXPhotoKitMessagesAssetActionManager *)self objectReference];
    v15 = objectReference;
    if (objectReference)
    {
      [objectReference indexPath];
      v16 = v53;
    }

    else
    {
      v16 = 0;
      v53 = 0u;
      v54 = 0u;
    }

    if (identifier != v16)
    {
      dataSource3 = [selectionSnapshot dataSource];
      objectReference2 = [(PXPhotoKitMessagesAssetActionManager *)self objectReference];
      v34 = [dataSource3 objectReferenceForObjectReference:objectReference2];
      [(PXPhotoKitMessagesAssetActionManager *)self setObjectReference:v34];
    }

    v35 = [off_1E77218D8 alloc];
    dataSource4 = [selectionSnapshot dataSource];
    objectReference3 = [(PXPhotoKitMessagesAssetActionManager *)self objectReference];
    v38 = objectReference3;
    if (objectReference3)
    {
      [objectReference3 indexPath];
    }

    else
    {
      memset(v52, 0, sizeof(v52));
    }

    v39 = [v35 initWithDataSource:dataSource4 selectedIndexPath:v52];

    selectionSnapshot = v39;
  }

  return selectionSnapshot;
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

+ (id)assetActionManagerWithCMMSession:(id)session
{
  v21[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  viewModel = [sessionCopy viewModel];
  selectionManager = [viewModel selectionManager];

  v7 = [[self alloc] initWithSelectionManager:selectionManager];
  dataSourceManager = [selectionManager dataSourceManager];
  if (dataSourceManager)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitMessagesAssetActionManager assetActionManagerWithCMMSession:]"];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    px_descriptionForAssertionMessage = [dataSourceManager px_descriptionForAssertionMessage];
    [currentHandler handleFailureInFunction:v16 file:@"PXPhotoKitMessagesAssetActionManager.m" lineNumber:24 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionManager.dataSourceManager", v18, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitMessagesAssetActionManager assetActionManagerWithCMMSession:]"];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [currentHandler handleFailureInFunction:v16 file:@"PXPhotoKitMessagesAssetActionManager.m" lineNumber:24 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionManager.dataSourceManager", v18}];
  }

LABEL_3:
  [v7 setDataSourceManager:dataSourceManager];

  importStatusManager = [sessionCopy importStatusManager];
  [v7 setImportStatusManager:importStatusManager];

  importSessionID = [sessionCopy importSessionID];

  [v7 setImportSessionID:importSessionID];
  v11 = MEMORY[0x1E695DFD8];
  v21[0] = *off_1E7721A28;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v13 = [v11 setWithArray:v12];

  [v7 setAllowedActionTypes:v13];

  return v7;
}

@end