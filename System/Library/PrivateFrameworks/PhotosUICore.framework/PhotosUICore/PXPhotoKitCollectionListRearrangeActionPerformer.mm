@interface PXPhotoKitCollectionListRearrangeActionPerformer
- (PXPhotoKitCollectionListRearrangeActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitCollectionListRearrangeActionPerformer

- (void)performBackgroundTask
{
  v3 = [PXRearrangeCollectionListAction alloc];
  collectionList = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  v5 = [(PXRearrangeCollectionListAction *)v3 initWithCollectionList:collectionList movedCollections:self->_sourceCollections targetCollection:self->_targetCollection];

  undoManager = [(PXActionPerformer *)self undoManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PXPhotoKitCollectionListRearrangeActionPerformer_performBackgroundTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [(PXAction *)v5 executeWithUndoManager:undoManager completionHandler:v7];
}

- (PXPhotoKitCollectionListRearrangeActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters
{
  parametersCopy = parameters;
  v20.receiver = self;
  v20.super_class = PXPhotoKitCollectionListRearrangeActionPerformer;
  v10 = [(PXPhotoKitCollectionListActionPerformer *)&v20 initWithActionType:type collectionList:list parameters:parametersCopy];
  if (v10)
  {
    v11 = [parametersCopy objectForKeyedSubscript:*off_1E77219C8];
    sourceCollections = v10->_sourceCollections;
    v10->_sourceCollections = v11;

    v13 = [parametersCopy objectForKeyedSubscript:*off_1E77219D0];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        px_descriptionForAssertionMessage = [(PHCollection *)v13 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXPhotoKitCollectionListRearrangeActionPerformer.m" lineNumber:29 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"parameters[PXActionParameterKeyTargetObject]", v18, px_descriptionForAssertionMessage}];
      }
    }

    targetCollection = v10->_targetCollection;
    v10->_targetCollection = v13;
  }

  return v10;
}

@end