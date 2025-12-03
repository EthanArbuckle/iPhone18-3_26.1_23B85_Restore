@interface PXPhotoKitCollectionListActionManager
- (BOOL)canPerformActionType:(id)type;
- (BOOL)isDestructiveActionType:(id)type;
- (PXPhotoKitCollectionListActionManager)initWithCollectionList:(id)list;
- (id)actionPerformerForActionType:(id)type parameters:(id)parameters;
- (id)actionTypeForGenericType:(id)type;
- (id)contextMenuElementsWithHandler:(id)handler;
- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case;
- (id)systemImageNameForActionType:(id)type;
- (int64_t)menuActionStateForActionType:(id)type;
@end

@implementation PXPhotoKitCollectionListActionManager

- (id)contextMenuElementsWithHandler:(id)handler
{
  v20[3] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v20[0] = @"PXCollectionListActionTypeSortByDateModified";
  v20[1] = @"PXCollectionListActionTypeSortByName";
  v20[2] = @"PXCollectionListActionTypeSortByCustom";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v7 = [(PXActionManager *)self actionItemsForActionTypes:v6 handler:handlerCopy];
  [array addObjectsFromArray:v7];

  v19[0] = @"PXCollectionListActionTypeCustomize";
  v19[1] = @"PXCollectionListActionTypeMoveOut";
  v19[2] = @"PXCollectionListActionTypeCreateAlbumWithPhotosPicker";
  v19[3] = @"PXCollectionListActionTypeCreateFolder";
  v19[4] = @"PXCollectionListActionTypeDelete";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
  v9 = [(PXActionManager *)self actionItemsForActionTypes:v8 handler:handlerCopy];

  if ([v9 count])
  {
    v10 = objc_opt_new();
    [array addObject:v10];

    [array addObjectsFromArray:v9];
  }

  v11 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v11 canShowInternalUI];

  if (canShowInternalUI)
  {
    v13 = objc_opt_new();
    [array addObject:v13];

    v18 = @"PXCollectionListActionTypeCopyInternalURL";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [(PXActionManager *)self actionItemsForActionTypes:v14 handler:handlerCopy];
    v16 = [off_1E7721420 menuWithTitle:@" Internal" childElements:v15];
    [array addObject:v16];
  }

  return array;
}

- (int64_t)menuActionStateForActionType:(id)type
{
  typeCopy = type;
  performerClassByType = [(PXPhotoKitCollectionListActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    collectionList = [(PXPhotoKitCollectionListActionManager *)self collectionList];
    v8 = [v6 menuActionStateForCollectionList:collectionList actionType:typeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isDestructiveActionType:(id)type
{
  typeCopy = type;
  performerClassByType = [(PXPhotoKitCollectionListActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  if (!v6)
  {
    return 0;
  }

  return [v6 isActionDestructive];
}

- (id)systemImageNameForActionType:(id)type
{
  typeCopy = type;
  performerClassByType = [(PXPhotoKitCollectionListActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    collectionList = [(PXPhotoKitCollectionListActionManager *)self collectionList];
    v8 = [v6 systemImageNameForCollectionList:collectionList actionType:typeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case
{
  typeCopy = type;
  performerClassByType = [(PXPhotoKitCollectionListActionManager *)self performerClassByType];
  v7 = [performerClassByType objectForKeyedSubscript:typeCopy];

  if (v7)
  {
    collectionList = [(PXPhotoKitCollectionListActionManager *)self collectionList];
    v9 = [v7 localizedTitleForActionType:typeCopy collectionList:collectionList];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)actionPerformerForActionType:(id)type parameters:(id)parameters
{
  typeCopy = type;
  parametersCopy = parameters;
  performerClassByType = [(PXPhotoKitCollectionListActionManager *)self performerClassByType];
  v9 = [performerClassByType objectForKeyedSubscript:typeCopy];

  if (v9)
  {
    v10 = [v9 alloc];
    collectionList = [(PXPhotoKitCollectionListActionManager *)self collectionList];
    v9 = [v10 initWithActionType:typeCopy collectionList:collectionList parameters:parametersCopy];

    performerDelegate = [(PXActionManager *)self performerDelegate];
    [(objc_class *)v9 setDelegate:performerDelegate];
  }

  return v9;
}

- (id)actionTypeForGenericType:(id)type
{
  typeCopy = type;
  collectionListActionTypeByGenericType = [(PXPhotoKitCollectionListActionManager *)self collectionListActionTypeByGenericType];
  v6 = [collectionListActionTypeByGenericType objectForKeyedSubscript:typeCopy];

  return v6;
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  performerClassByType = [(PXPhotoKitCollectionListActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    collectionList = [(PXPhotoKitCollectionListActionManager *)self collectionList];
    if ([v6 canPerformOnCollectionList:collectionList])
    {
      v8 = [(PXActionManager *)self isActionTypeAllowed:typeCopy];
      v9 = typeCopy == @"PXCollectionListActionTypeCopyInternalURL" || v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PXPhotoKitCollectionListActionManager)initWithCollectionList:(id)list
{
  v18[13] = *MEMORY[0x1E69E9840];
  listCopy = list;
  v14.receiver = self;
  v14.super_class = PXPhotoKitCollectionListActionManager;
  v6 = [(PXPhotoKitCollectionListActionManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionList, list);
    v17[0] = @"PXCollectionListActionTypeRename";
    v18[0] = objc_opt_class();
    v17[1] = @"PXCollectionListActionTypeCustomize";
    v18[1] = objc_opt_class();
    v17[2] = @"PXCollectionListActionTypeMoveOut";
    v18[2] = objc_opt_class();
    v17[3] = @"PXCollectionListActionTypeRearrange";
    v18[3] = objc_opt_class();
    v17[4] = @"PXCollectionListActionTypeMove";
    v18[4] = objc_opt_class();
    v17[5] = @"PXCollectionListActionTypeCreateAlbumWithPhotosPicker";
    v18[5] = objc_opt_class();
    v17[6] = @"PXCollectionListActionTypeCreateFolder";
    v18[6] = objc_opt_class();
    v17[7] = @"PXCollectionListActionTypeCreateSharedAlbum";
    v18[7] = objc_opt_class();
    v17[8] = @"PXCollectionListActionTypeDelete";
    v18[8] = objc_opt_class();
    v17[9] = @"PXCollectionListActionTypeCopyInternalURL";
    v18[9] = objc_opt_class();
    v17[10] = @"PXCollectionListActionTypeSortByName";
    v18[10] = objc_opt_class();
    v17[11] = @"PXCollectionListActionTypeSortByCustom";
    v18[11] = objc_opt_class();
    v17[12] = @"PXCollectionListActionTypeSortByDateModified";
    v18[12] = objc_opt_class();
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:13];
    performerClassByType = v7->_performerClassByType;
    v7->_performerClassByType = v8;

    v10 = *off_1E7721A08;
    v15[0] = *off_1E77219D8;
    v15[1] = v10;
    v16[0] = @"PXCollectionListActionTypeMove";
    v16[1] = @"PXCollectionListActionTypeRearrange";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    collectionListActionTypeByGenericType = v7->_collectionListActionTypeByGenericType;
    v7->_collectionListActionTypeByGenericType = v11;
  }

  return v7;
}

@end