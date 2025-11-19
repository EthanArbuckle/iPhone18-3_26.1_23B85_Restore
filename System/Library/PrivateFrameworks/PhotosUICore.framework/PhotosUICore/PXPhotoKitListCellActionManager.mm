@interface PXPhotoKitListCellActionManager
- (PXPhotoKitListCellActionManager)initWithCollectionList:(id)a3;
- (id)actionPerformerForActionType:(id)a3 parameters:(id)a4;
- (id)actionTypeForGenericType:(id)a3;
@end

@implementation PXPhotoKitListCellActionManager

- (id)actionPerformerForActionType:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotoKitListCellActionManager *)self performerClassByType];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [v9 alloc];
    v11 = [(PXPhotoKitListCellActionManager *)self collectionList];
    v9 = [v10 initWithActionType:v6 collectionList:v11 parameters:v7];

    v12 = [(PXActionManager *)self performerDelegate];
    [(objc_class *)v9 setDelegate:v12];
  }

  return v9;
}

- (id)actionTypeForGenericType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitListCellActionManager *)self mediaTypeActionTypeByGenericType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (PXPhotoKitListCellActionManager)initWithCollectionList:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXPhotoKitListCellActionManager;
  v6 = [(PXPhotoKitListCellActionManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionList, a3);
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