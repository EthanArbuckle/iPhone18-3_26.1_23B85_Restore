@interface PXPhotoKitCollectionListRearrangeActionPerformer
- (PXPhotoKitCollectionListRearrangeActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitCollectionListRearrangeActionPerformer

- (void)performBackgroundTask
{
  v3 = [PXRearrangeCollectionListAction alloc];
  v4 = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  v5 = [(PXRearrangeCollectionListAction *)v3 initWithCollectionList:v4 movedCollections:self->_sourceCollections targetCollection:self->_targetCollection];

  v6 = [(PXActionPerformer *)self undoManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PXPhotoKitCollectionListRearrangeActionPerformer_performBackgroundTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [(PXAction *)v5 executeWithUndoManager:v6 completionHandler:v7];
}

- (PXPhotoKitCollectionListRearrangeActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5
{
  v9 = a5;
  v20.receiver = self;
  v20.super_class = PXPhotoKitCollectionListRearrangeActionPerformer;
  v10 = [(PXPhotoKitCollectionListActionPerformer *)&v20 initWithActionType:a3 collectionList:a4 parameters:v9];
  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:*off_1E77219C8];
    sourceCollections = v10->_sourceCollections;
    v10->_sourceCollections = v11;

    v13 = [v9 objectForKeyedSubscript:*off_1E77219D0];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [(PHCollection *)v13 px_descriptionForAssertionMessage];
        [v16 handleFailureInMethod:a2 object:v10 file:@"PXPhotoKitCollectionListRearrangeActionPerformer.m" lineNumber:29 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"parameters[PXActionParameterKeyTargetObject]", v18, v19}];
      }
    }

    targetCollection = v10->_targetCollection;
    v10->_targetCollection = v13;
  }

  return v10;
}

@end