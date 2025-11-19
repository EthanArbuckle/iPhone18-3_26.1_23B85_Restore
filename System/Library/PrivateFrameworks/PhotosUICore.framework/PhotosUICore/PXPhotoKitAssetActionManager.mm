@interface PXPhotoKitAssetActionManager
+ (id)selectedAssetForActionManager:(id)a3;
- (BOOL)canPerformActionType:(id)a3 error:(id *)a4;
- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4;
- (BOOL)isDestructiveActionType:(id)a3;
- (BOOL)shouldEnableActionType:(id)a3 onAsset:(id)a4;
- (BOOL)supportsActionType:(id)a3;
- (PHPhotoLibrary)photoLibrary;
- (PXPhotoKitAssetActionManager)initWithAsset:(id)a3;
- (PXPhotoKitAssetActionManager)initWithSelectionManager:(id)a3;
- (PXPhotoKitAssetActionManager)initWithSuggestion:(id)a3;
- (PXPhotosDataSource)_dataSourceSnapshot;
- (id)_selectionSnapshotForPerformerClass:(Class)a3 applySubsetIfNeeded:(BOOL)a4;
- (id)actionPerformerForActionType:(id)a3;
- (id)activityTypeForActionType:(id)a3;
- (id)barButtonItemForActionType:(id)a3;
- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4;
- (id)menuElementForActionType:(id)a3 image:(id)a4 willStartActionHandler:(id)a5 didEndActionHandler:(id)a6;
- (id)standardActionForActionType:(id)a3;
- (id)systemImageNameForActionType:(id)a3;
- (int64_t)contextMenuCompactTopRowPositionForActionType:(id)a3;
- (int64_t)contextMenuCompactTopRowPriorityForActionType:(id)a3;
- (void)_handleAction:(id)a3 actionType:(id)a4 completionHandler:(id)a5;
- (void)_handleActionPerformerComplete:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_handleBarButtonItem:(id)a3;
- (void)executeActionForActionType:(id)a3 sender:(id)a4 completionHandler:(id)a5;
- (void)performActivity:(id)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)registerPerformerClass:(Class)a3 forType:(id)a4;
- (void)setAdditionalPropertiesFromActionManager:(id)a3;
- (void)setPerson:(id)a3;
- (void)setSocialGroup:(id)a3;
@end

@implementation PXPhotoKitAssetActionManager

- (PXPhotoKitAssetActionManager)initWithSuggestion:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6978630];
  v5 = a3;
  v6 = [v4 fetchKeyAssetsInAssetCollection:v5 options:0];
  v7 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:v5 existingAssetsFetchResult:v6];

  v8 = [[off_1E77218C8 alloc] initWithDataSourceManager:v7];
  [v8 performChanges:&__block_literal_global_18926];
  v9 = [(PXPhotoKitAssetActionManager *)self initWithSelectionManager:v8];
  if (v9)
  {
    v10 = *off_1E7721A70;
    v13[0] = *off_1E7721A68;
    v13[1] = v10;
    v13[2] = *off_1E7721A78;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    [(PXPhotoKitAssetActionManager *)v9 setExcludedContextMenuActionTypes:v11];
  }

  return v9;
}

- (PXPhotoKitAssetActionManager)initWithAsset:(id)a3
{
  v10[3] = *MEMORY[0x1E69E9840];
  v4 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerWithAsset:a3];
  v5 = [[off_1E77218C8 alloc] initWithDataSourceManager:v4];
  [v5 performChanges:&__block_literal_global_363];
  v6 = [(PXPhotoKitAssetActionManager *)self initWithSelectionManager:v5];
  if (v6)
  {
    v7 = *off_1E7721A70;
    v10[0] = *off_1E7721A68;
    v10[1] = v7;
    v10[2] = *off_1E7721A78;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    [(PXPhotoKitAssetActionManager *)v6 setExcludedContextMenuActionTypes:v8];
  }

  return v6;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v4 = a3;
  v7 = [(PXPhotoKitAssetActionManager *)self person];
  v5 = [v4 changeDetailsForObject:?];

  if (v5)
  {
    v6 = [v5 objectAfterChanges];
    [(PXPhotoKitAssetActionManager *)self setPerson:v6];
  }
}

- (void)_handleActionPerformerComplete:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(PXPhotoKitAssetActionManager *)self _activePerformer];

  if (v10 == v8)
  {
    if (v9)
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = @"NO";
        *v13 = 138412802;
        *&v13[4] = v8;
        *&v13[12] = 2112;
        if (v6)
        {
          v12 = @"YES";
        }

        *&v13[14] = v12;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Error performing action:%@ success:%@ error:%@", v13, 0x20u);
      }
    }

    [(PXPhotoKitAssetActionManager *)self _setActivePerformer:0, *v13];
  }
}

- (void)executeActionForActionType:(id)a3 sender:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXPhotoKitAssetActionManager *)self _activePerformer];
  if (v11)
  {
    v12 = v11;
    v13 = [(PXPhotoKitAssetActionManager *)self _activePerformer];
    if ([v13 state] <= 0xA)
    {

      goto LABEL_8;
    }

    v14 = [(PXPhotoKitAssetActionManager *)self canPerformActionType:v8];

    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([(PXPhotoKitAssetActionManager *)self canPerformActionType:v8])
  {
LABEL_6:
    v15 = [(PXPhotoKitAssetActionManager *)self actionPerformerForActionType:v8];
    [(PXPhotoKitAssetActionManager *)self _setActivePerformer:v15];
    objc_initWeak(&location, self);
    [v15 setSender:v9];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__PXPhotoKitAssetActionManager_executeActionForActionType_sender_completionHandler___block_invoke;
    v17[3] = &unk_1E773DBD0;
    objc_copyWeak(&v20, &location);
    v16 = v15;
    v18 = v16;
    v19 = v10;
    [v16 performActionWithCompletionHandler:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

LABEL_8:
}

void __84__PXPhotoKitAssetActionManager_executeActionForActionType_sender_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleActionPerformerComplete:*(a1 + 32) success:a2 error:v7];

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (void)_handleBarButtonItem:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:626 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v6 = [v11 barButtonItem];
      if (!v6)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:621 description:@"Invalid bar button item"];

        v6 = 0;
      }
    }

    v7 = [(PXPhotoKitAssetActionManager *)self _actionTypeByBarButtonItem];
    v8 = [v7 objectForKey:v6];

    [(PXPhotoKitAssetActionManager *)self executeActionForActionType:v8 sender:v11 completionHandler:0];
    v5 = v11;
  }
}

- (void)_handleAction:(id)a3 actionType:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 sender];
  [(PXPhotoKitAssetActionManager *)self executeActionForActionType:v9 sender:v10 completionHandler:v8];
}

- (id)systemImageNameForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return [v6 systemImageNameForActionManager:self];
}

- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v8 = [v7 objectForKeyedSubscript:v6];

  return [v8 localizedTitleForUseCase:a4 actionManager:self];
}

- (void)performActivity:(id)a3
{
  v4 = [a3 actionType];
  [(PXPhotoKitAssetActionManager *)self executeActionForActionType:v4 sender:0 completionHandler:0];
}

- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4
{
  v5 = [a4 actionType];
  LOBYTE(self) = [(PXPhotoKitAssetActionManager *)self canPerformActionType:v5];

  return self;
}

- (id)activityTypeForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 activityTypeWithActionManager:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)standardActionForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(PXPhotoKitAssetActionManager *)self localizedTitleForActionType:v4 useCase:1];
    v8 = [(PXPhotoKitAssetActionManager *)self systemImageNameForActionType:v4];
    if (v8)
    {
      v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v8];
    }

    else
    {
      v9 = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PXPhotoKitAssetActionManager_standardActionForActionType___block_invoke;
    v11[3] = &unk_1E77420C8;
    objc_copyWeak(&v13, &location);
    v12 = v4;
    v6 = [v6 createStandardActionWithTitle:v7 image:v9 handler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __60__PXPhotoKitAssetActionManager_standardActionForActionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [v3 sender];

  [WeakRetained executeActionForActionType:v4 sender:v5 completionHandler:0];
}

- (id)menuElementForActionType:(id)a3 image:(id)a4 willStartActionHandler:(id)a5 didEndActionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v15 = [v14 objectForKeyedSubscript:v10];

  if (v15)
  {
    v16 = [(PXPhotoKitAssetActionManager *)self localizedTitleForActionType:v10 useCase:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __106__PXPhotoKitAssetActionManager_menuElementForActionType_image_willStartActionHandler_didEndActionHandler___block_invoke;
    v19[3] = &unk_1E773DBA8;
    v21 = v12;
    v19[4] = self;
    v20 = v10;
    v22 = v13;
    v17 = [v15 createPreviewActionWithTitle:v16 image:v11 handler:v19];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __106__PXPhotoKitAssetActionManager_menuElementForActionType_image_willStartActionHandler_didEndActionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  [*(a1 + 32) _handleAction:v4 actionType:*(a1 + 40) completionHandler:*(a1 + 56)];
}

- (id)barButtonItemForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    if ([v4 isEqualToString:*off_1E7721B08])
    {
      v7 = sel__handleMoveToLibraryAction_;
    }

    else if ([v4 isEqualToString:*off_1E7721B10])
    {
      v7 = sel__handleMoveToPersonalLibraryAction_;
    }

    else
    {
      v7 = [v4 isEqualToString:*off_1E7721B18] ? sel__handleMoveToSharedLibraryAction_ : sel__handleBarButtonItem_;
    }

    v6 = [v6 createBarButtonItemWithTarget:self action:v7 actionManager:self];
    if (v6)
    {
      v8 = [(PXPhotoKitAssetActionManager *)self _actionTypeByBarButtonItem];
      [v8 setObject:v4 forKey:v6];
    }
  }

  return v6;
}

- (id)actionPerformerForActionType:(id)a3
{
  v4 = a3;
  if (-[PXPhotoKitAssetActionManager canPerformActionType:](self, "canPerformActionType:", v4) && (-[PXPhotoKitAssetActionManager _performerClassByType](self, "_performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:v4], v5, v6))
  {
    v7 = [[v6 alloc] initWithActionType:v4];
    v8 = [(PXPhotoKitAssetActionManager *)self _selectionSnapshotForPerformerClass:v6 applySubsetIfNeeded:1];
    [v7 setSelectionSnapshot:v8];

    v9 = [(PXPhotoKitAssetActionManager *)self dataSourceManager];
    [v7 setPhotoKitDataSourceManager:v9];

    v10 = [(PXPhotoKitAssetActionManager *)self person];
    [v7 setPerson:v10];

    v11 = [(PXPhotoKitAssetActionManager *)self socialGroup];
    [v7 setSocialGroup:v11];

    v12 = [(PXPhotoKitAssetActionManager *)self objectReference];
    [v7 setObjectReference:v12];

    v13 = [(PXPhotoKitAssetActionManager *)self importStatusManager];
    [v7 setImportStatusManager:v13];

    v14 = [(PXPhotoKitAssetActionManager *)self importSessionID];
    [v7 setImportSessionID:v14];

    [v7 setPresentationSource:{-[PXPhotoKitAssetActionManager presentationSource](self, "presentationSource")}];
    v15 = [(PXPhotoKitAssetActionManager *)self selectionManager];
    [v7 setSelectionManager:v15];

    v16 = [(PXActionManager *)self performerDelegate];
    [v7 setDelegate:v16];

    v17 = [(PXPhotoKitAssetActionManager *)self radarConfigurationProvider];
    [v7 setRadarConfigurationProvider:v17];

    [v7 setSupportsAirPlay:{-[PXPhotoKitAssetActionManager supportsAirPlay](self, "supportsAirPlay")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldEnableActionType:(id)a3 onAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:*off_1E7721B88] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *off_1E7721B90))
  {
    LODWORD(self) = [v7 needsSensitivityProtection] ^ 1;
  }

  else if ([v6 isEqualToString:*off_1E7721A28])
  {
    v9 = [(PXPhotoKitAssetActionManager *)self importStatusManager];
    v10 = v9;
    LOBYTE(self) = 0;
    if (v7 && v9)
    {
      v11 = [v9 importStateForAsset:v7];
      if (v11)
      {
        v12 = v11 == 3;
      }

      else
      {
        v12 = 1;
      }

      LOBYTE(self) = v12;
    }
  }

  else
  {
    if ([v6 isEqualToString:*off_1E7721AF8])
    {
      v13 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
      v14 = [v13 objectForKeyedSubscript:v6];

      v15 = [v14 shouldEnableWithActionManager:self];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PXPhotoKitAssetActionManager;
      v15 = [(PXPhotoKitAssetActionManager *)&v16 shouldEnableActionType:v6 onAsset:v7];
    }

    LOBYTE(self) = v15;
  }

  return self;
}

- (int64_t)contextMenuCompactTopRowPositionForActionType:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = a3;
  v5 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return [v6 contextMenuCompactTopRowPosition];
}

- (int64_t)contextMenuCompactTopRowPriorityForActionType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return [v6 contextMenuCompactTopRowPriority];
}

- (BOOL)isDestructiveActionType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return [v6 isActionDestructive];
}

- (BOOL)supportsActionType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (BOOL)canPerformActionType:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PXPhotoKitAssetActionManager *)self _dataSourceSnapshot];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(PXActionManager *)self isActionTypeAllowed:v6];

    if (v9)
    {
      v10 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
      v11 = [v10 objectForKeyedSubscript:v6];

      if (v11)
      {
        v12 = *off_1E7721BE0;
        if ([v6 isEqualToString:*off_1E7721BE0])
        {
          v13 = [(PXActionManager *)self allowedActionTypes];
          v14 = [v13 containsObject:v12];

          if ((v14 & 1) == 0)
          {
            v21 = [(PXActionManager *)self allowedActionTypes];
            v19 = ([v21 containsObject:v12] & 1) != 0 || -[PXPhotoKitAssetActionManager canPerformActionType:](self, "canPerformActionType:", *off_1E7721AF8);

            goto LABEL_13;
          }
        }

        v15 = *off_1E7721B30;
        if (![v6 isEqualToString:*off_1E7721B30] || (-[PXActionManager allowedActionTypes](self, "allowedActionTypes"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v15), v16, v17))
        {
          if ([v11 providesCanPerformError])
          {
            v18 = [v11 canPerformWithActionManager:self error:a4];
          }

          else
          {
            v18 = [v11 canPerformWithActionManager:self];
          }

          v19 = v18;
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_13:
  if (a4 && !v19 && !*a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXPhotoKitActionManagerErrorDomain" code:-2000 debugDescription:@"Cannot perform action"];
  }

  return v19;
}

- (void)registerPerformerClass:(Class)a3 forType:(id)a4
{
  v6 = a4;
  v7 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  [v7 setObject:a3 forKeyedSubscript:v6];
}

- (id)_selectionSnapshotForPerformerClass:(Class)a3 applySubsetIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = [(PXPhotoKitAssetActionManager *)self effectiveSelectionSnapshot];
  v8 = [v7 dataSource];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 isAnyItemSelected];
  if (v9)
  {
    if (v10)
    {
      if ([(objc_class *)a3 canPerformOnSubsetOfSelection]&& v4)
      {
        v11 = objc_alloc_init(off_1E77217C8);
        v12 = [v9 photosDataSource];
        v13 = [v7 selectedIndexPaths];
        v14 = [(PXPhotoKitAssetActionManager *)self person];
        v15 = [(PXPhotoKitAssetActionManager *)self socialGroup];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __88__PXPhotoKitAssetActionManager__selectionSnapshotForPerformerClass_applySubsetIfNeeded___block_invoke;
        v28[3] = &unk_1E7740DD0;
        v32 = v11;
        v33 = a3;
        v29 = v12;
        v30 = v14;
        v31 = v15;
        v16 = v11;
        v17 = v15;
        v18 = v14;
        v19 = v12;
        [v13 enumerateItemIndexPathsUsingBlock:v28];
        v20 = [[off_1E77218D8 alloc] initWithDataSource:v9 selectedIndexPaths:v16];

        v7 = v20;
      }
    }

    else
    {
      v21 = [v9 containerCollection];
      v22 = [(objc_class *)a3 canPerformOnImplicitSelectionInContainerCollection:v21];

      if (v22)
      {
        v23 = [off_1E77218D8 alloc];
        v24 = [v9 allItemIndexPaths];
        v25 = [v23 initWithDataSource:v9 selectedIndexPaths:v24];

        v7 = v25;
      }
    }
  }

  v26 = v7;

  return v7;
}

void __88__PXPhotoKitAssetActionManager__selectionSnapshotForPerformerClass_applySubsetIfNeeded___block_invoke(uint64_t a1, __int128 *a2)
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

- (PXPhotosDataSource)_dataSourceSnapshot
{
  v2 = [(PXPhotoKitAssetActionManager *)self selectionManager];
  v3 = [v2 selectionSnapshot];

  v4 = [v3 dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 dataSource];
    v7 = [v6 photosDataSource];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSocialGroup:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_socialGroup != v5)
  {
    v10 = v5;
    v7 = [(PHSocialGroup *)v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [(PHSocialGroup *)self->_socialGroup photoLibrary];
      objc_storeStrong(&self->_socialGroup, a3);
      v9 = [(PHSocialGroup *)self->_socialGroup photoLibrary];
      if (v8 != v9)
      {
        [v8 px_unregisterChangeObserver:self];
        [v9 px_registerChangeObserver:self];
      }

      v6 = v10;
    }
  }
}

- (void)setPerson:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_person != v5)
  {
    v10 = v5;
    v7 = [(PHPerson *)v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [(PHPerson *)self->_person photoLibrary];
      objc_storeStrong(&self->_person, a3);
      v9 = [(PHPerson *)self->_person photoLibrary];
      if (v8 != v9)
      {
        [v8 px_unregisterChangeObserver:self];
        [v9 px_registerChangeObserver:self];
      }

      v6 = v10;
    }
  }
}

- (PHPhotoLibrary)photoLibrary
{
  v2 = [(PXPhotoKitAssetActionManager *)self dataSourceManager];
  v3 = [v2 photoLibrary];

  return v3;
}

- (void)setAdditionalPropertiesFromActionManager:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXPhotoKitAssetActionManager;
  [(PXPhotoKitAssetActionManager *)&v14 setAdditionalPropertiesFromActionManager:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 importSessionID];
    [(PXPhotoKitAssetActionManager *)self setImportSessionID:v6];

    v7 = [v5 importStatusManager];
    [(PXPhotoKitAssetActionManager *)self setImportStatusManager:v7];

    v8 = [v5 person];
    [(PXPhotoKitAssetActionManager *)self setPerson:v8];

    v9 = [v5 socialGroup];
    [(PXPhotoKitAssetActionManager *)self setSocialGroup:v9];

    v10 = [(PXPhotoKitAssetActionManager *)self dataSourceManager];

    if (!v10)
    {
      v11 = [v5 dataSourceManager];
      [(PXPhotoKitAssetActionManager *)self setDataSourceManager:v11];
    }

    v12 = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
    v13 = [v5 _performerClassByType];
    [v12 addEntriesFromDictionary:v13];
  }
}

- (PXPhotoKitAssetActionManager)initWithSelectionManager:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PXPhotoKitAssetActionManager;
  v5 = [(PXPhotoKitAssetActionManager *)&v15 initWithSelectionManager:v4];
  if (v5)
  {
    v6 = [v4 dataSourceManager];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    dataSourceManager = v5->_dataSourceManager;
    v5->_dataSourceManager = v7;
    v9 = v7;

    v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    actionTypeByBarButtonItem = v5->__actionTypeByBarButtonItem;
    v5->__actionTypeByBarButtonItem = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    performerClassByType = v5->__performerClassByType;
    v5->__performerClassByType = v12;

    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B28];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BA8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721C18];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721C00];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721C10];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721C08];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A28];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B98];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A58];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A98];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A68];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BE8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BF0];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A60];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B78];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B48];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BF8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B50];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B60];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A80];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BD8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A40];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BC0];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BB8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A70];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A78];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AF8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B00];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BE0];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B30];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B58];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A90];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AC0];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AA8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AB8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AB0];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AD0];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B40];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A88];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AD8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AA0];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721BC8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AF0];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B08];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B18];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B10];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B68];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B90];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B38];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721B20];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A50];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721A48];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AE8];
    [(NSMutableDictionary *)v5->__performerClassByType setObject:objc_opt_class() forKeyedSubscript:*off_1E7721AE0];

    [(PXAssetActionManager *)v5 px_registerAdditionalPerformerClasses];
  }

  return v5;
}

+ (id)selectedAssetForActionManager:(id)a3
{
  v3 = a3;
  v4 = [v3 selectionManager];
  v5 = [v4 selectionSnapshot];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v7 px_descriptionForAssertionMessage];
    [v8 handleFailureInFunction:v9 file:@"PXPhotoKitAssetActionManager.m" lineNumber:459 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectedObject", v11, v12}];
    goto LABEL_18;
  }

  v8 = [v3 objectReference];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v19 = objc_opt_class();
    v17 = NSStringFromClass(v19);
    v20 = [v8 px_descriptionForAssertionMessage];
    [v14 handleFailureInFunction:v15 file:@"PXPhotoKitAssetActionManager.m" lineNumber:456 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionManager.objectReference", v17, v20}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v14 handleFailureInFunction:v15 file:@"PXPhotoKitAssetActionManager.m" lineNumber:456 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionManager.objectReference", v17}];
  }

LABEL_6:
  v7 = [v8 asset];
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v18 = objc_opt_class();
    v12 = NSStringFromClass(v18);
    [v9 handleFailureInFunction:v11 file:@"PXPhotoKitAssetActionManager.m" lineNumber:457 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetReference.asset", v12, v23}];
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v21 = objc_opt_class();
    v12 = NSStringFromClass(v21);
    v22 = [v7 px_descriptionForAssertionMessage];
    [v9 handleFailureInFunction:v11 file:@"PXPhotoKitAssetActionManager.m" lineNumber:457 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetReference.asset", v12, v22}];

LABEL_18:
  }

LABEL_9:

  return v7;
}

@end