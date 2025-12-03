@interface PXPhotoKitCollectionListMoveActionPerformer
- (PXPhotoKitCollectionListMoveActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitCollectionListMoveActionPerformer

- (void)performBackgroundTask
{
  v3 = [[PXMoveToCollectionListAction alloc] initWithCollections:self->_sourceCollections targetCollectionList:self->_collectionList];
  undoManager = [(PXActionPerformer *)self undoManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PXPhotoKitCollectionListMoveActionPerformer_performBackgroundTask__block_invoke;
  v5[3] = &unk_1E774C5C0;
  v5[4] = self;
  [(PXAction *)v3 executeWithUndoManager:undoManager completionHandler:v5];
}

- (PXPhotoKitCollectionListMoveActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters
{
  listCopy = list;
  parametersCopy = parameters;
  v16.receiver = self;
  v16.super_class = PXPhotoKitCollectionListMoveActionPerformer;
  v11 = [(PXPhotoKitCollectionListActionPerformer *)&v16 initWithActionType:type collectionList:listCopy parameters:parametersCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_collectionList, list);
    v13 = [parametersCopy objectForKeyedSubscript:*off_1E77219C0];
    sourceCollections = v12->_sourceCollections;
    v12->_sourceCollections = v13;
  }

  return v12;
}

@end