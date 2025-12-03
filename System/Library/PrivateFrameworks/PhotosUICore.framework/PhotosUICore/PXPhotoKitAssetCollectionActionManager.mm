@interface PXPhotoKitAssetCollectionActionManager
+ (PXPhotoKitAssetCollectionActionManager)actionManagerWithDataSourceManager:(id)manager;
- (BOOL)canPerformActionType:(id)type assetCollectionReference:(id)reference;
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (BOOL)isDestructiveActionType:(id)type;
- (BOOL)supportsActionType:(id)type;
- (Class)_possiblePerformerClassForActionType:(id)type assetCollectionReference:(id)reference requireThatPerformerCanPerformAction:(BOOL)action;
- (PXAssetsDataSource)assetsDataSource;
- (PXDisplayTitleInfo)displayTitleInfo;
- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory;
- (PXPhotoKitAssetCollectionActionManager)initWithAssetCollection:(id)collection displayTitleInfo:(id)info;
- (PXPhotoKitAssetCollectionActionManager)initWithAssetCollectionReference:(id)reference displayTitleInfo:(id)info;
- (id)actionPerformerForActionType:(id)type assetCollectionReference:(id)reference;
- (id)actionPerformerForActionType:(id)type parameters:(id)parameters;
- (id)activityTypeForActionType:(id)type;
- (id)barButtonItemForActionType:(id)type;
- (id)contextMenuElementsWithHandler:(id)handler;
- (id)displayTitleInfoForAssetCollection:(id)collection;
- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case assetCollectionReference:(id)reference;
- (id)menuElementsForActionType:(id)type assetCollectionReference:(id)reference;
- (id)standardActionForActionType:(id)type;
- (id)systemImageNameForActionType:(id)type assetCollectionReference:(id)reference;
- (void)_executeActionTypeIfPossible:(id)possible menuElement:(id)element;
- (void)_handleActionPerformerComplete:(id)complete success:(BOOL)success error:(id)error;
- (void)_handleBarButtonItem:(id)item;
- (void)performActivity:(id)activity;
@end

@implementation PXPhotoKitAssetCollectionActionManager

- (void)performActivity:(id)activity
{
  actionType = [activity actionType];
  [(PXPhotoKitAssetCollectionActionManager *)self _executeActionTypeIfPossible:actionType menuElement:0];
}

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityCopy = activity;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (!assetCollectionReference)
  {
    PXAssertGetLog();
  }

  actionType = [activityCopy actionType];
  v8 = [(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:actionType assetCollectionReference:assetCollectionReference];

  actionType2 = [activityCopy actionType];
  v10 = [(objc_class *)v8 canPerformActionType:actionType2 onAssetCollectionReference:assetCollectionReference withInputs:self];

  return v10;
}

- (void)_handleActionPerformerComplete:(id)complete success:(BOOL)success error:(id)error
{
  successCopy = success;
  v16 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  errorCopy = error;
  _activePerformer = [(PXPhotoKitAssetCollectionActionManager *)self _activePerformer];

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

    [(PXPhotoKitAssetCollectionActionManager *)self _setActivePerformer:0, *v13];
  }
}

- (void)_executeActionTypeIfPossible:(id)possible menuElement:(id)element
{
  possibleCopy = possible;
  elementCopy = element;
  _activePerformer = [(PXPhotoKitAssetCollectionActionManager *)self _activePerformer];
  if (_activePerformer)
  {
    v9 = _activePerformer;
    _activePerformer2 = [(PXPhotoKitAssetCollectionActionManager *)self _activePerformer];
    if ([_activePerformer2 state] <= 0xA)
    {

      goto LABEL_12;
    }

    v11 = [(PXAssetCollectionActionManager *)self canPerformActionType:possibleCopy];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else if (![(PXAssetCollectionActionManager *)self canPerformActionType:possibleCopy])
  {
    goto LABEL_12;
  }

  v12 = [(PXAssetCollectionActionManager *)self actionPerformerForActionType:possibleCopy];
  performerDelegate = [(PXActionManager *)self performerDelegate];
  [v12 setDelegate:performerDelegate];

  socialGroups = [(PXPhotoKitAssetCollectionActionManager *)self socialGroups];
  [v12 setSocialGroups:socialGroups];

  v15 = elementCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v12 setSendingAction:v16];
  [(PXPhotoKitAssetCollectionActionManager *)self _setActivePerformer:v12];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__PXPhotoKitAssetCollectionActionManager__executeActionTypeIfPossible_menuElement___block_invoke;
  v18[3] = &unk_1E774B2A0;
  objc_copyWeak(&v20, &location);
  v17 = v12;
  v19 = v17;
  [v17 performActionWithCompletionHandler:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

LABEL_12:
}

void __83__PXPhotoKitAssetCollectionActionManager__executeActionTypeIfPossible_menuElement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleActionPerformerComplete:*(a1 + 32) success:a2 error:v5];
}

- (void)_handleBarButtonItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    _actionTypeByBarButtonItem = [(PXPhotoKitAssetCollectionActionManager *)self _actionTypeByBarButtonItem];
    v6 = [_actionTypeByBarButtonItem objectForKey:itemCopy];

    [(PXPhotoKitAssetCollectionActionManager *)self _executeActionTypeIfPossible:v6 menuElement:0];
  }
}

- (id)activityTypeForActionType:(id)type
{
  typeCopy = type;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (!assetCollectionReference)
  {
    PXAssertGetLog();
  }

  v6 = [(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:typeCopy assetCollectionReference:assetCollectionReference];
  if (v6)
  {
    v7 = [(PXPhotoKitAssetCollectionActionManager *)self localizedTitleForActionType:typeCopy useCase:2 assetCollectionReference:assetCollectionReference];
    v8 = [(PXPhotoKitAssetCollectionActionManager *)self systemImageNameForActionType:typeCopy assetCollectionReference:assetCollectionReference];
    v6 = [(objc_class *)v6 createActivityWithTitle:v7 actionType:typeCopy actionSystemImageName:v8];
    [(objc_class *)v6 setActionDelegate:self];
  }

  activityType = [(objc_class *)v6 activityType];

  return activityType;
}

- (id)standardActionForActionType:(id)type
{
  location[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (!assetCollectionReference)
  {
    PXAssertGetLog();
  }

  v6 = [(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:typeCopy assetCollectionReference:assetCollectionReference];
  if (v6)
  {
    v7 = v6;
    objc_initWeak(location, self);
    assetCollectionReference2 = [(PXAssetCollectionActionManager *)self assetCollectionReference];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__PXPhotoKitAssetCollectionActionManager_standardActionForActionType___block_invoke;
    v11[3] = &unk_1E7730838;
    objc_copyWeak(&v13, location);
    v12 = typeCopy;
    v9 = [(objc_class *)v7 createStandardActionForAssetCollectionReference:assetCollectionReference2 withInput:self handler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __70__PXPhotoKitAssetCollectionActionManager_standardActionForActionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _executeActionTypeIfPossible:*(a1 + 32) menuElement:v3];
}

- (id)barButtonItemForActionType:(id)type
{
  typeCopy = type;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (!assetCollectionReference)
  {
    PXAssertGetLog();
  }

  v6 = [(objc_class *)[(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:typeCopy assetCollectionReference:assetCollectionReference requireThatPerformerCanPerformAction:0] createBarButtonItemForAssetCollectionReference:assetCollectionReference withTarget:self action:sel__handleBarButtonItem_];
  if (v6)
  {
    _actionTypeByBarButtonItem = [(PXPhotoKitAssetCollectionActionManager *)self _actionTypeByBarButtonItem];
    [_actionTypeByBarButtonItem setObject:typeCopy forKey:v6];
  }

  return v6;
}

- (id)menuElementsForActionType:(id)type assetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v7 = [(objc_class *)[(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:type assetCollectionReference:referenceCopy] menuElementsForAssetCollectionReference:referenceCopy withInputs:self];

  return v7;
}

- (id)contextMenuElementsWithHandler:(id)handler
{
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  primaryActionTypes = [off_1E7721430 primaryActionTypes];
  v7 = [(PXActionManager *)self actionItemsForActionTypes:primaryActionTypes handler:handlerCopy];
  [array addObjectsFromArray:v7];

  v8 = objc_opt_new();
  [array addObject:v8];

  secondaryActionTypes = [off_1E7721430 secondaryActionTypes];
  v10 = [(PXActionManager *)self actionItemsForActionTypes:secondaryActionTypes handler:handlerCopy];
  [array addObjectsFromArray:v10];

  v11 = +[PXRootSettings sharedInstance];
  LODWORD(v10) = [v11 canShowInternalUI];

  if (v10)
  {
    v12 = objc_opt_new();
    [array addObject:v12];

    internalActionTypes = [off_1E7721430 internalActionTypes];
    v14 = [(PXActionManager *)self actionItemsForActionTypes:internalActionTypes handler:handlerCopy];
    v15 = [off_1E7721420 menuWithTitle:@" Internal" childElements:v14];
    [array addObject:v15];
  }

  return array;
}

- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory
{
  performerDelegate = [(PXActionManager *)self performerDelegate];
  if (objc_opt_respondsToSelector())
  {
    performerDelegate2 = [(PXActionManager *)self performerDelegate];
    memoryAssetsActionFactory = [performerDelegate2 memoryAssetsActionFactory];
  }

  else
  {
    memoryAssetsActionFactory = 0;
  }

  return memoryAssetsActionFactory;
}

- (Class)_possiblePerformerClassForActionType:(id)type assetCollectionReference:(id)reference requireThatPerformerCanPerformAction:(BOOL)action
{
  actionCopy = action;
  typeCopy = type;
  referenceCopy = reference;
  v10 = referenceCopy;
  v11 = 0;
  if (typeCopy)
  {
    if (referenceCopy)
    {
      performerClassByType = [(PXPhotoKitAssetCollectionActionManager *)self performerClassByType];
      v11 = [performerClassByType objectForKeyedSubscript:typeCopy];

      if (actionCopy && ![v11 canPerformActionType:typeCopy onAssetCollectionReference:v10 withInputs:self])
      {
        v11 = 0;
      }
    }
  }

  v13 = v11;

  return v11;
}

- (id)systemImageNameForActionType:(id)type assetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v7 = [(objc_class *)[(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:type assetCollectionReference:referenceCopy] systemImageNameForAssetCollectionReference:referenceCopy withInputs:self];

  return v7;
}

- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case assetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v9 = [(objc_class *)[(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:type assetCollectionReference:referenceCopy] localizedTitleForUseCase:case assetCollectionReference:referenceCopy withInputs:self];

  return v9;
}

- (id)actionPerformerForActionType:(id)type assetCollectionReference:(id)reference
{
  referenceCopy = reference;
  typeCopy = type;
  v8 = [(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:typeCopy assetCollectionReference:referenceCopy];
  assetCollection = [referenceCopy assetCollection];
  v10 = [(PXPhotoKitAssetCollectionActionManager *)self displayTitleInfoForAssetCollection:assetCollection];

  v11 = [v8 alloc];
  v12 = [v11 initWithActionType:typeCopy assetCollectionReference:referenceCopy parameters:MEMORY[0x1E695E0F8]];

  performerDelegate = [(PXActionManager *)self performerDelegate];
  [v12 setDelegate:performerDelegate];

  people = [(PXPhotoKitAssetCollectionActionManager *)self people];
  [v12 setPeople:people];

  socialGroups = [(PXPhotoKitAssetCollectionActionManager *)self socialGroups];
  [v12 setSocialGroups:socialGroups];

  dropTargetAssetReference = [(PXAssetCollectionActionManager *)self dropTargetAssetReference];
  [v12 setDropTargetAssetReference:dropTargetAssetReference];

  dropSession = [(PXAssetCollectionActionManager *)self dropSession];
  [v12 setDropSession:dropSession];

  dragSession = [(PXAssetCollectionActionManager *)self dragSession];
  [v12 setDragSession:dragSession];

  assetsDataSourceManager = [(PXAssetCollectionActionManager *)self assetsDataSourceManager];
  dataSource = [assetsDataSourceManager dataSource];
  [v12 setAssetsDataSource:dataSource];

  assetsFetchResult = [(PXAssetCollectionActionManager *)self assetsFetchResult];
  [v12 setAssetsFetchResult:assetsFetchResult];

  [v12 setDisplayTitleInfo:v10];

  return v12;
}

- (id)actionPerformerForActionType:(id)type parameters:(id)parameters
{
  typeCopy = type;
  parametersCopy = parameters;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  v9 = [(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:typeCopy assetCollectionReference:assetCollectionReference];
  if (v9)
  {
    v10 = [[v9 alloc] initWithActionType:typeCopy assetCollectionReference:assetCollectionReference parameters:parametersCopy];
    performerDelegate = [(PXActionManager *)self performerDelegate];
    [v10 setDelegate:performerDelegate];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isDestructiveActionType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  performerClassByType = [(PXPhotoKitAssetCollectionActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  return [v6 isActionDestructive];
}

- (BOOL)supportsActionType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  performerClassByType = [(PXPhotoKitAssetCollectionActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  return v6 != 0;
}

- (BOOL)canPerformActionType:(id)type assetCollectionReference:(id)reference
{
  typeCopy = type;
  referenceCopy = reference;
  if ([(PXActionManager *)self isActionTypeAllowed:typeCopy])
  {
    v8 = [(PXPhotoKitAssetCollectionActionManager *)self _possiblePerformerClassForActionType:typeCopy assetCollectionReference:referenceCopy]!= 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXAssetsDataSource)assetsDataSource
{
  assetsDataSourceManager = [(PXAssetCollectionActionManager *)self assetsDataSourceManager];
  dataSource = [assetsDataSourceManager dataSource];

  return dataSource;
}

- (id)displayTitleInfoForAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:385 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  displayTitleInfo = [(PXPhotoKitAssetCollectionActionManager *)self displayTitleInfo];
  v7 = displayTitleInfo;
  if (displayTitleInfo)
  {
    v8 = displayTitleInfo;
  }

  else
  {
    v8 = [[PXDisplayTitleInfo alloc] initWithAssetCollection:collectionCopy useVerboseSmartDescription:0];
  }

  v9 = v8;

  return v9;
}

- (PXDisplayTitleInfo)displayTitleInfo
{
  internalDisplayTitleInfo = self->_internalDisplayTitleInfo;
  if (!internalDisplayTitleInfo)
  {
    assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
    assetCollection = [assetCollectionReference assetCollection];

    if (assetCollection)
    {
      v6 = [[PXDisplayTitleInfo alloc] initWithAssetCollection:assetCollection useVerboseSmartDescription:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = self->_internalDisplayTitleInfo;
    self->_internalDisplayTitleInfo = v6;

    internalDisplayTitleInfo = self->_internalDisplayTitleInfo;
  }

  return internalDisplayTitleInfo;
}

- (PXPhotoKitAssetCollectionActionManager)initWithAssetCollectionReference:(id)reference displayTitleInfo:(id)info
{
  v16[57] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = PXPhotoKitAssetCollectionActionManager;
  v8 = [(PXAssetCollectionActionManager *)&v14 initWithAssetCollectionReference:reference];
  if (v8)
  {
    v15[0] = *off_1E7721CC0;
    v16[0] = objc_opt_class();
    v15[1] = *off_1E7721DE8;
    v16[1] = objc_opt_class();
    v15[2] = *off_1E7721D08;
    v16[2] = objc_opt_class();
    v15[3] = *off_1E7721DF8;
    v16[3] = objc_opt_class();
    v15[4] = *off_1E7721CF8;
    v16[4] = objc_opt_class();
    v15[5] = *off_1E7721D98;
    v16[5] = objc_opt_class();
    v15[6] = *off_1E7721DD8;
    v16[6] = objc_opt_class();
    v15[7] = *off_1E7721D10;
    v16[7] = objc_opt_class();
    v15[8] = *off_1E7721CD8;
    v16[8] = objc_opt_class();
    v15[9] = *off_1E7721D58;
    v16[9] = objc_opt_class();
    v15[10] = *off_1E7721CE0;
    v16[10] = objc_opt_class();
    v15[11] = *off_1E7721D88;
    v16[11] = objc_opt_class();
    v15[12] = *off_1E7721D18;
    v16[12] = objc_opt_class();
    v15[13] = *off_1E7721CB0;
    v16[13] = objc_opt_class();
    v15[14] = *off_1E7721C48;
    v16[14] = objc_opt_class();
    v15[15] = *off_1E7721C68;
    v16[15] = objc_opt_class();
    v15[16] = *off_1E7721C70;
    v16[16] = objc_opt_class();
    v15[17] = *off_1E7721C50;
    v16[17] = objc_opt_class();
    v15[18] = *off_1E7721C60;
    v16[18] = objc_opt_class();
    v15[19] = *off_1E7721C58;
    v16[19] = objc_opt_class();
    v15[20] = *off_1E7721DA0;
    v16[20] = objc_opt_class();
    v15[21] = *off_1E7721DD0;
    v16[21] = objc_opt_class();
    v15[22] = *off_1E7721D70;
    v16[22] = objc_opt_class();
    v15[23] = *off_1E7721DE0;
    v16[23] = objc_opt_class();
    v15[24] = *off_1E7721D68;
    v16[24] = objc_opt_class();
    v15[25] = *off_1E7721D30;
    v16[25] = objc_opt_class();
    v15[26] = *off_1E7721DB0;
    v16[26] = objc_opt_class();
    v15[27] = *off_1E7721DB8;
    v16[27] = objc_opt_class();
    v15[28] = *off_1E7721DC0;
    v16[28] = objc_opt_class();
    v15[29] = *off_1E7721DC8;
    v16[29] = objc_opt_class();
    v15[30] = *off_1E7721DF0;
    v16[30] = objc_opt_class();
    v15[31] = *off_1E7721CB8;
    v16[31] = objc_opt_class();
    v15[32] = *off_1E7721C80;
    v16[32] = objc_opt_class();
    v15[33] = *off_1E7721C30;
    v16[33] = objc_opt_class();
    v15[34] = *off_1E7721D00;
    v16[34] = objc_opt_class();
    v15[35] = *off_1E7721D38;
    v16[35] = objc_opt_class();
    v15[36] = *off_1E7721DA8;
    v16[36] = objc_opt_class();
    v15[37] = *off_1E7721D50;
    v16[37] = objc_opt_class();
    v15[38] = *off_1E7721CA8;
    v16[38] = objc_opt_class();
    v15[39] = *off_1E7721C98;
    v16[39] = objc_opt_class();
    v15[40] = *off_1E7721CA0;
    v16[40] = objc_opt_class();
    v15[41] = *off_1E7721CE8;
    v16[41] = objc_opt_class();
    v15[42] = *off_1E7721D90;
    v16[42] = objc_opt_class();
    v15[43] = *off_1E7721CF0;
    v16[43] = objc_opt_class();
    v15[44] = *off_1E7721C28;
    v16[44] = objc_opt_class();
    v15[45] = *off_1E7721D60;
    v16[45] = objc_opt_class();
    v15[46] = *off_1E7721C40;
    v16[46] = objc_opt_class();
    v15[47] = *off_1E7721C90;
    v16[47] = objc_opt_class();
    v15[48] = *off_1E7721D20;
    v16[48] = objc_opt_class();
    v15[49] = *off_1E7721D78;
    v16[49] = objc_opt_class();
    v15[50] = *off_1E7721C78;
    v16[50] = objc_opt_class();
    v15[51] = *off_1E7721D80;
    v16[51] = objc_opt_class();
    v15[52] = *off_1E7721D48;
    v16[52] = objc_opt_class();
    v15[53] = *off_1E7721C88;
    v16[53] = objc_opt_class();
    v15[54] = *off_1E7721CC8;
    v16[54] = objc_opt_class();
    v15[55] = *off_1E7721CD0;
    v16[55] = objc_opt_class();
    v15[56] = *off_1E7721D40;
    v16[56] = objc_opt_class();
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:57];
    performerClassByType = v8->_performerClassByType;
    v8->_performerClassByType = v9;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    actionTypeByBarButtonItem = v8->__actionTypeByBarButtonItem;
    v8->__actionTypeByBarButtonItem = weakToStrongObjectsMapTable;

    objc_storeStrong(&v8->_internalDisplayTitleInfo, info);
  }

  return v8;
}

- (PXPhotoKitAssetCollectionActionManager)initWithAssetCollection:(id)collection displayTitleInfo:(id)info
{
  infoCopy = info;
  collectionCopy = collection;
  v8 = [off_1E7721488 alloc];
  v12 = *off_1E7721F68;
  v13 = xmmword_1A5380D10;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [v8 initWithAssetCollection:collectionCopy keyAssetReference:0 indexPath:&v12];

  v10 = [(PXPhotoKitAssetCollectionActionManager *)self initWithAssetCollectionReference:v9 displayTitleInfo:infoCopy];
  return v10;
}

+ (PXPhotoKitAssetCollectionActionManager)actionManagerWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  dataSource = [managerCopy dataSource];
  containerCollection = [dataSource containerCollection];

  if (containerCollection)
  {
    v8 = containerCollection;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:369 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v13, px_descriptionForAssertionMessage}];
    }

    v9 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v8 displayTitleInfo:0];
    [(PXAssetCollectionActionManager *)v9 setAssetsDataSourceManager:managerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end