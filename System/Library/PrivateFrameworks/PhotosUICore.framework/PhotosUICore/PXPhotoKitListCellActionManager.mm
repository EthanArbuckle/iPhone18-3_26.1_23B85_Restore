@interface PXPhotoKitListCellActionManager
- (PXPhotoKitListCellActionManager)initWithCollectionList:(id)list;
- (id)actionPerformerForActionType:(id)type parameters:(id)parameters;
- (id)actionTypeForGenericType:(id)type;
@end

@implementation PXPhotoKitListCellActionManager

- (id)actionPerformerForActionType:(id)type parameters:(id)parameters
{
  typeCopy = type;
  parametersCopy = parameters;
  performerClassByType = [(PXPhotoKitListCellActionManager *)self performerClassByType];
  v9 = [performerClassByType objectForKeyedSubscript:typeCopy];

  if (v9)
  {
    v10 = [v9 alloc];
    collectionList = [(PXPhotoKitListCellActionManager *)self collectionList];
    v9 = [v10 initWithActionType:typeCopy collectionList:collectionList parameters:parametersCopy];

    performerDelegate = [(PXActionManager *)self performerDelegate];
    [(objc_class *)v9 setDelegate:performerDelegate];
  }

  return v9;
}

- (id)actionTypeForGenericType:(id)type
{
  typeCopy = type;
  mediaTypeActionTypeByGenericType = [(PXPhotoKitListCellActionManager *)self mediaTypeActionTypeByGenericType];
  v6 = [mediaTypeActionTypeByGenericType objectForKeyedSubscript:typeCopy];

  return v6;
}

- (PXPhotoKitListCellActionManager)initWithCollectionList:(id)list
{
  v17[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  v13.receiver = self;
  v13.super_class = PXPhotoKitListCellActionManager;
  v6 = [(PXPhotoKitListCellActionManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionList, list);
    v16 = @"PXPhotosListCellActionTypeReorder";
    v17[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    performerClassByType = v7->_performerClassByType;
    v7->_performerClassByType = v8;

    v14 = *off_1E7721A08;
    v15 = @"PXPhotosListCellActionTypeReorder";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    mediaTypeActionTypeByGenericType = v7->_mediaTypeActionTypeByGenericType;
    v7->_mediaTypeActionTypeByGenericType = v10;
  }

  return v7;
}

@end