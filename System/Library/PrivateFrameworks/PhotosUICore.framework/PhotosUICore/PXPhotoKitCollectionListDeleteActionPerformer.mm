@interface PXPhotoKitCollectionListDeleteActionPerformer
- (void)_confirmAndDeleteWithCompletionHandler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCollectionListDeleteActionPerformer

- (void)_confirmAndDeleteWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v6 = [presentationEnvironment canPresentPopovers] ^ 1;

  collectionList = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  undoManager = [(PXActionPerformer *)self undoManager];
  v9 = PXCollectionDeletionAlertControllerForCollection(collectionList, 0, v6, undoManager, handlerCopy);

  [(PXActionPerformer *)self presentViewController:v9];
}

- (void)performUserInteractionTask
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __75__PXPhotoKitCollectionListDeleteActionPerformer_performUserInteractionTask__block_invoke;
  v2[3] = &unk_1E774B308;
  v2[4] = self;
  [(PXPhotoKitCollectionListDeleteActionPerformer *)self _confirmAndDeleteWithCompletionHandler:v2];
}

@end