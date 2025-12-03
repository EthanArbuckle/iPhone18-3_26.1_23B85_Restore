@interface PXPhotoKitAssetActionManager
+ (id)selectedAssetForActionManager:(id)manager;
- (BOOL)canPerformActionType:(id)type error:(id *)error;
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (BOOL)isDestructiveActionType:(id)type;
- (BOOL)shouldEnableActionType:(id)type onAsset:(id)asset;
- (BOOL)supportsActionType:(id)type;
- (PHPhotoLibrary)photoLibrary;
- (PXPhotoKitAssetActionManager)initWithAsset:(id)asset;
- (PXPhotoKitAssetActionManager)initWithSelectionManager:(id)manager;
- (PXPhotoKitAssetActionManager)initWithSuggestion:(id)suggestion;
- (PXPhotosDataSource)_dataSourceSnapshot;
- (id)_selectionSnapshotForPerformerClass:(Class)class applySubsetIfNeeded:(BOOL)needed;
- (id)actionPerformerForActionType:(id)type;
- (id)activityTypeForActionType:(id)type;
- (id)barButtonItemForActionType:(id)type;
- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case;
- (id)menuElementForActionType:(id)type image:(id)image willStartActionHandler:(id)handler didEndActionHandler:(id)actionHandler;
- (id)standardActionForActionType:(id)type;
- (id)systemImageNameForActionType:(id)type;
- (int64_t)contextMenuCompactTopRowPositionForActionType:(id)type;
- (int64_t)contextMenuCompactTopRowPriorityForActionType:(id)type;
- (void)_handleAction:(id)action actionType:(id)type completionHandler:(id)handler;
- (void)_handleActionPerformerComplete:(id)complete success:(BOOL)success error:(id)error;
- (void)_handleBarButtonItem:(id)item;
- (void)executeActionForActionType:(id)type sender:(id)sender completionHandler:(id)handler;
- (void)performActivity:(id)activity;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)registerPerformerClass:(Class)class forType:(id)type;
- (void)setAdditionalPropertiesFromActionManager:(id)manager;
- (void)setPerson:(id)person;
- (void)setSocialGroup:(id)group;
@end

@implementation PXPhotoKitAssetActionManager

- (PXPhotoKitAssetActionManager)initWithSuggestion:(id)suggestion
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6978630];
  suggestionCopy = suggestion;
  v6 = [v4 fetchKeyAssetsInAssetCollection:suggestionCopy options:0];
  v7 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:suggestionCopy existingAssetsFetchResult:v6];

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

- (PXPhotoKitAssetActionManager)initWithAsset:(id)asset
{
  v10[3] = *MEMORY[0x1E69E9840];
  v4 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerWithAsset:asset];
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

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  person = [(PXPhotoKitAssetActionManager *)self person];
  v5 = [queueCopy changeDetailsForObject:?];

  if (v5)
  {
    objectAfterChanges = [v5 objectAfterChanges];
    [(PXPhotoKitAssetActionManager *)self setPerson:objectAfterChanges];
  }
}

- (void)_handleActionPerformerComplete:(id)complete success:(BOOL)success error:(id)error
{
  successCopy = success;
  v16 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  errorCopy = error;
  _activePerformer = [(PXPhotoKitAssetActionManager *)self _activePerformer];

  if (_activePerformer == completeCopy)
  {
    if (errorCopy)
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = @"NO";
        *v13 = 138412802;
        *&v13[4] = completeCopy;
        *&v13[12] = 2112;
        if (successCopy)
        {
          v12 = @"YES";
        }

        *&v13[14] = v12;
        v14 = 2112;
        v15 = errorCopy;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Error performing action:%@ success:%@ error:%@", v13, 0x20u);
      }
    }

    [(PXPhotoKitAssetActionManager *)self _setActivePerformer:0, *v13];
  }
}

- (void)executeActionForActionType:(id)type sender:(id)sender completionHandler:(id)handler
{
  typeCopy = type;
  senderCopy = sender;
  handlerCopy = handler;
  _activePerformer = [(PXPhotoKitAssetActionManager *)self _activePerformer];
  if (_activePerformer)
  {
    v12 = _activePerformer;
    _activePerformer2 = [(PXPhotoKitAssetActionManager *)self _activePerformer];
    if ([_activePerformer2 state] <= 0xA)
    {

      goto LABEL_8;
    }

    v14 = [(PXPhotoKitAssetActionManager *)self canPerformActionType:typeCopy];

    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([(PXPhotoKitAssetActionManager *)self canPerformActionType:typeCopy])
  {
LABEL_6:
    v15 = [(PXPhotoKitAssetActionManager *)self actionPerformerForActionType:typeCopy];
    [(PXPhotoKitAssetActionManager *)self _setActivePerformer:v15];
    objc_initWeak(&location, self);
    [v15 setSender:senderCopy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__PXPhotoKitAssetActionManager_executeActionForActionType_sender_completionHandler___block_invoke;
    v17[3] = &unk_1E773DBD0;
    objc_copyWeak(&v20, &location);
    v16 = v15;
    v18 = v16;
    v19 = handlerCopy;
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

- (void)_handleBarButtonItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v11 = itemCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      barButtonItem = v11;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:626 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      barButtonItem = [v11 barButtonItem];
      if (!barButtonItem)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:621 description:@"Invalid bar button item"];

        barButtonItem = 0;
      }
    }

    _actionTypeByBarButtonItem = [(PXPhotoKitAssetActionManager *)self _actionTypeByBarButtonItem];
    v8 = [_actionTypeByBarButtonItem objectForKey:barButtonItem];

    [(PXPhotoKitAssetActionManager *)self executeActionForActionType:v8 sender:v11 completionHandler:0];
    itemCopy = v11;
  }
}

- (void)_handleAction:(id)action actionType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  sender = [action sender];
  [(PXPhotoKitAssetActionManager *)self executeActionForActionType:typeCopy sender:sender completionHandler:handlerCopy];
}

- (id)systemImageNameForActionType:(id)type
{
  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  return [v6 systemImageNameForActionManager:self];
}

- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case
{
  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v8 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  return [v8 localizedTitleForUseCase:case actionManager:self];
}

- (void)performActivity:(id)activity
{
  actionType = [activity actionType];
  [(PXPhotoKitAssetActionManager *)self executeActionForActionType:actionType sender:0 completionHandler:0];
}

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  actionType = [activity actionType];
  LOBYTE(self) = [(PXPhotoKitAssetActionManager *)self canPerformActionType:actionType];

  return self;
}

- (id)activityTypeForActionType:(id)type
{
  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [_performerClassByType objectForKeyedSubscript:typeCopy];

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

- (id)standardActionForActionType:(id)type
{
  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(PXPhotoKitAssetActionManager *)self localizedTitleForActionType:typeCopy useCase:1];
    v8 = [(PXPhotoKitAssetActionManager *)self systemImageNameForActionType:typeCopy];
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
    v12 = typeCopy;
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

- (id)menuElementForActionType:(id)type image:(id)image willStartActionHandler:(id)handler didEndActionHandler:(id)actionHandler
{
  typeCopy = type;
  imageCopy = image;
  handlerCopy = handler;
  actionHandlerCopy = actionHandler;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v15 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  if (v15)
  {
    v16 = [(PXPhotoKitAssetActionManager *)self localizedTitleForActionType:typeCopy useCase:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __106__PXPhotoKitAssetActionManager_menuElementForActionType_image_willStartActionHandler_didEndActionHandler___block_invoke;
    v19[3] = &unk_1E773DBA8;
    v21 = handlerCopy;
    v19[4] = self;
    v20 = typeCopy;
    v22 = actionHandlerCopy;
    v17 = [v15 createPreviewActionWithTitle:v16 image:imageCopy handler:v19];
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

- (id)barButtonItemForActionType:(id)type
{
  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    if ([typeCopy isEqualToString:*off_1E7721B08])
    {
      v7 = sel__handleMoveToLibraryAction_;
    }

    else if ([typeCopy isEqualToString:*off_1E7721B10])
    {
      v7 = sel__handleMoveToPersonalLibraryAction_;
    }

    else
    {
      v7 = [typeCopy isEqualToString:*off_1E7721B18] ? sel__handleMoveToSharedLibraryAction_ : sel__handleBarButtonItem_;
    }

    v6 = [v6 createBarButtonItemWithTarget:self action:v7 actionManager:self];
    if (v6)
    {
      _actionTypeByBarButtonItem = [(PXPhotoKitAssetActionManager *)self _actionTypeByBarButtonItem];
      [_actionTypeByBarButtonItem setObject:typeCopy forKey:v6];
    }
  }

  return v6;
}

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  if (-[PXPhotoKitAssetActionManager canPerformActionType:](self, "canPerformActionType:", typeCopy) && (-[PXPhotoKitAssetActionManager _performerClassByType](self, "_performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:typeCopy], v5, v6))
  {
    v7 = [[v6 alloc] initWithActionType:typeCopy];
    v8 = [(PXPhotoKitAssetActionManager *)self _selectionSnapshotForPerformerClass:v6 applySubsetIfNeeded:1];
    [v7 setSelectionSnapshot:v8];

    dataSourceManager = [(PXPhotoKitAssetActionManager *)self dataSourceManager];
    [v7 setPhotoKitDataSourceManager:dataSourceManager];

    person = [(PXPhotoKitAssetActionManager *)self person];
    [v7 setPerson:person];

    socialGroup = [(PXPhotoKitAssetActionManager *)self socialGroup];
    [v7 setSocialGroup:socialGroup];

    objectReference = [(PXPhotoKitAssetActionManager *)self objectReference];
    [v7 setObjectReference:objectReference];

    importStatusManager = [(PXPhotoKitAssetActionManager *)self importStatusManager];
    [v7 setImportStatusManager:importStatusManager];

    importSessionID = [(PXPhotoKitAssetActionManager *)self importSessionID];
    [v7 setImportSessionID:importSessionID];

    [v7 setPresentationSource:{-[PXPhotoKitAssetActionManager presentationSource](self, "presentationSource")}];
    selectionManager = [(PXPhotoKitAssetActionManager *)self selectionManager];
    [v7 setSelectionManager:selectionManager];

    performerDelegate = [(PXActionManager *)self performerDelegate];
    [v7 setDelegate:performerDelegate];

    radarConfigurationProvider = [(PXPhotoKitAssetActionManager *)self radarConfigurationProvider];
    [v7 setRadarConfigurationProvider:radarConfigurationProvider];

    [v7 setSupportsAirPlay:{-[PXPhotoKitAssetActionManager supportsAirPlay](self, "supportsAirPlay")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldEnableActionType:(id)type onAsset:(id)asset
{
  typeCopy = type;
  assetCopy = asset;
  if (([typeCopy isEqualToString:*off_1E7721B88] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721B90))
  {
    LODWORD(self) = [assetCopy needsSensitivityProtection] ^ 1;
  }

  else if ([typeCopy isEqualToString:*off_1E7721A28])
  {
    importStatusManager = [(PXPhotoKitAssetActionManager *)self importStatusManager];
    v10 = importStatusManager;
    LOBYTE(self) = 0;
    if (assetCopy && importStatusManager)
    {
      v11 = [importStatusManager importStateForAsset:assetCopy];
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
    if ([typeCopy isEqualToString:*off_1E7721AF8])
    {
      _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
      v14 = [_performerClassByType objectForKeyedSubscript:typeCopy];

      v15 = [v14 shouldEnableWithActionManager:self];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PXPhotoKitAssetActionManager;
      v15 = [(PXPhotoKitAssetActionManager *)&v16 shouldEnableActionType:typeCopy onAsset:assetCopy];
    }

    LOBYTE(self) = v15;
  }

  return self;
}

- (int64_t)contextMenuCompactTopRowPositionForActionType:(id)type
{
  if (!type)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  return [v6 contextMenuCompactTopRowPosition];
}

- (int64_t)contextMenuCompactTopRowPriorityForActionType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  return [v6 contextMenuCompactTopRowPriority];
}

- (BOOL)isDestructiveActionType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  return [v6 isActionDestructive];
}

- (BOOL)supportsActionType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  v6 = [_performerClassByType objectForKeyedSubscript:typeCopy];

  return v6 != 0;
}

- (BOOL)canPerformActionType:(id)type error:(id *)error
{
  typeCopy = type;
  _dataSourceSnapshot = [(PXPhotoKitAssetActionManager *)self _dataSourceSnapshot];
  v8 = _dataSourceSnapshot;
  if (typeCopy && _dataSourceSnapshot)
  {
    v9 = [(PXActionManager *)self isActionTypeAllowed:typeCopy];

    if (v9)
    {
      _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
      v11 = [_performerClassByType objectForKeyedSubscript:typeCopy];

      if (v11)
      {
        v12 = *off_1E7721BE0;
        if ([typeCopy isEqualToString:*off_1E7721BE0])
        {
          allowedActionTypes = [(PXActionManager *)self allowedActionTypes];
          v14 = [allowedActionTypes containsObject:v12];

          if ((v14 & 1) == 0)
          {
            allowedActionTypes2 = [(PXActionManager *)self allowedActionTypes];
            v19 = ([allowedActionTypes2 containsObject:v12] & 1) != 0 || -[PXPhotoKitAssetActionManager canPerformActionType:](self, "canPerformActionType:", *off_1E7721AF8);

            goto LABEL_13;
          }
        }

        v15 = *off_1E7721B30;
        if (![typeCopy isEqualToString:*off_1E7721B30] || (-[PXActionManager allowedActionTypes](self, "allowedActionTypes"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v15), v16, v17))
        {
          if ([v11 providesCanPerformError])
          {
            v18 = [v11 canPerformWithActionManager:self error:error];
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
  if (error && !v19 && !*error)
  {
    *error = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXPhotoKitActionManagerErrorDomain" code:-2000 debugDescription:@"Cannot perform action"];
  }

  return v19;
}

- (void)registerPerformerClass:(Class)class forType:(id)type
{
  typeCopy = type;
  _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
  [_performerClassByType setObject:class forKeyedSubscript:typeCopy];
}

- (id)_selectionSnapshotForPerformerClass:(Class)class applySubsetIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  effectiveSelectionSnapshot = [(PXPhotoKitAssetActionManager *)self effectiveSelectionSnapshot];
  dataSource = [effectiveSelectionSnapshot dataSource];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = dataSource;
  }

  else
  {
    v9 = 0;
  }

  isAnyItemSelected = [effectiveSelectionSnapshot isAnyItemSelected];
  if (v9)
  {
    if (isAnyItemSelected)
    {
      if ([(objc_class *)class canPerformOnSubsetOfSelection]&& neededCopy)
      {
        v11 = objc_alloc_init(off_1E77217C8);
        photosDataSource = [v9 photosDataSource];
        selectedIndexPaths = [effectiveSelectionSnapshot selectedIndexPaths];
        person = [(PXPhotoKitAssetActionManager *)self person];
        socialGroup = [(PXPhotoKitAssetActionManager *)self socialGroup];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __88__PXPhotoKitAssetActionManager__selectionSnapshotForPerformerClass_applySubsetIfNeeded___block_invoke;
        v28[3] = &unk_1E7740DD0;
        v32 = v11;
        classCopy = class;
        v29 = photosDataSource;
        v30 = person;
        v31 = socialGroup;
        v16 = v11;
        v17 = socialGroup;
        v18 = person;
        v19 = photosDataSource;
        [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v28];
        v20 = [[off_1E77218D8 alloc] initWithDataSource:v9 selectedIndexPaths:v16];

        effectiveSelectionSnapshot = v20;
      }
    }

    else
    {
      containerCollection = [v9 containerCollection];
      v22 = [(objc_class *)class canPerformOnImplicitSelectionInContainerCollection:containerCollection];

      if (v22)
      {
        v23 = [off_1E77218D8 alloc];
        allItemIndexPaths = [v9 allItemIndexPaths];
        v25 = [v23 initWithDataSource:v9 selectedIndexPaths:allItemIndexPaths];

        effectiveSelectionSnapshot = v25;
      }
    }
  }

  v26 = effectiveSelectionSnapshot;

  return effectiveSelectionSnapshot;
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
  selectionManager = [(PXPhotoKitAssetActionManager *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource = [selectionSnapshot dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dataSource2 = [selectionSnapshot dataSource];
    photosDataSource = [dataSource2 photosDataSource];
  }

  else
  {
    photosDataSource = 0;
  }

  return photosDataSource;
}

- (void)setSocialGroup:(id)group
{
  groupCopy = group;
  v6 = groupCopy;
  if (self->_socialGroup != groupCopy)
  {
    v10 = groupCopy;
    v7 = [(PHSocialGroup *)groupCopy isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      photoLibrary = [(PHSocialGroup *)self->_socialGroup photoLibrary];
      objc_storeStrong(&self->_socialGroup, group);
      photoLibrary2 = [(PHSocialGroup *)self->_socialGroup photoLibrary];
      if (photoLibrary != photoLibrary2)
      {
        [photoLibrary px_unregisterChangeObserver:self];
        [photoLibrary2 px_registerChangeObserver:self];
      }

      v6 = v10;
    }
  }
}

- (void)setPerson:(id)person
{
  personCopy = person;
  v6 = personCopy;
  if (self->_person != personCopy)
  {
    v10 = personCopy;
    v7 = [(PHPerson *)personCopy isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      photoLibrary = [(PHPerson *)self->_person photoLibrary];
      objc_storeStrong(&self->_person, person);
      photoLibrary2 = [(PHPerson *)self->_person photoLibrary];
      if (photoLibrary != photoLibrary2)
      {
        [photoLibrary px_unregisterChangeObserver:self];
        [photoLibrary2 px_registerChangeObserver:self];
      }

      v6 = v10;
    }
  }
}

- (PHPhotoLibrary)photoLibrary
{
  dataSourceManager = [(PXPhotoKitAssetActionManager *)self dataSourceManager];
  photoLibrary = [dataSourceManager photoLibrary];

  return photoLibrary;
}

- (void)setAdditionalPropertiesFromActionManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = PXPhotoKitAssetActionManager;
  [(PXPhotoKitAssetActionManager *)&v14 setAdditionalPropertiesFromActionManager:managerCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = managerCopy;
    importSessionID = [v5 importSessionID];
    [(PXPhotoKitAssetActionManager *)self setImportSessionID:importSessionID];

    importStatusManager = [v5 importStatusManager];
    [(PXPhotoKitAssetActionManager *)self setImportStatusManager:importStatusManager];

    person = [v5 person];
    [(PXPhotoKitAssetActionManager *)self setPerson:person];

    socialGroup = [v5 socialGroup];
    [(PXPhotoKitAssetActionManager *)self setSocialGroup:socialGroup];

    dataSourceManager = [(PXPhotoKitAssetActionManager *)self dataSourceManager];

    if (!dataSourceManager)
    {
      dataSourceManager2 = [v5 dataSourceManager];
      [(PXPhotoKitAssetActionManager *)self setDataSourceManager:dataSourceManager2];
    }

    _performerClassByType = [(PXPhotoKitAssetActionManager *)self _performerClassByType];
    _performerClassByType2 = [v5 _performerClassByType];
    [_performerClassByType addEntriesFromDictionary:_performerClassByType2];
  }
}

- (PXPhotoKitAssetActionManager)initWithSelectionManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PXPhotoKitAssetActionManager;
  v5 = [(PXPhotoKitAssetActionManager *)&v15 initWithSelectionManager:managerCopy];
  if (v5)
  {
    dataSourceManager = [managerCopy dataSourceManager];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = dataSourceManager;
    }

    else
    {
      v7 = 0;
    }

    dataSourceManager = v5->_dataSourceManager;
    v5->_dataSourceManager = v7;
    v9 = v7;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    actionTypeByBarButtonItem = v5->__actionTypeByBarButtonItem;
    v5->__actionTypeByBarButtonItem = weakToStrongObjectsMapTable;

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

+ (id)selectedAssetForActionManager:(id)manager
{
  managerCopy = manager;
  selectionManager = [managerCopy selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  firstObject = [selectionSnapshot firstObject];

  if (firstObject)
  {
    asset = firstObject;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    currentHandler3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
    [currentHandler handleFailureInFunction:currentHandler3 file:@"PXPhotoKitAssetActionManager.m" lineNumber:459 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectedObject", v11, px_descriptionForAssertionMessage}];
    goto LABEL_18;
  }

  currentHandler = [managerCopy objectReference];
  if (currentHandler)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v19 = objc_opt_class();
    v17 = NSStringFromClass(v19);
    px_descriptionForAssertionMessage2 = [currentHandler px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInFunction:v15 file:@"PXPhotoKitAssetActionManager.m" lineNumber:456 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionManager.objectReference", v17, px_descriptionForAssertionMessage2}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler2 handleFailureInFunction:v15 file:@"PXPhotoKitAssetActionManager.m" lineNumber:456 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionManager.objectReference", v17}];
  }

LABEL_6:
  asset = [currentHandler asset];
  if (!asset)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v18 = objc_opt_class();
    px_descriptionForAssertionMessage = NSStringFromClass(v18);
    [currentHandler3 handleFailureInFunction:v11 file:@"PXPhotoKitAssetActionManager.m" lineNumber:457 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetReference.asset", px_descriptionForAssertionMessage, v23}];
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXPhotoKitAssetActionManager selectedAssetForActionManager:]"];
    v21 = objc_opt_class();
    px_descriptionForAssertionMessage = NSStringFromClass(v21);
    px_descriptionForAssertionMessage3 = [asset px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInFunction:v11 file:@"PXPhotoKitAssetActionManager.m" lineNumber:457 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetReference.asset", px_descriptionForAssertionMessage, px_descriptionForAssertionMessage3}];

LABEL_18:
  }

LABEL_9:

  return asset;
}

@end