@interface PXPhotoKitCollectionListDeleteActionPerformer
- (void)_confirmAndDeleteWithCompletionHandler:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCollectionListDeleteActionPerformer

- (void)_confirmAndDeleteWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXActionPerformer *)self presentationEnvironment];
  v6 = [v5 canPresentPopovers] ^ 1;

  v7 = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  v8 = [(PXActionPerformer *)self undoManager];
  v9 = PXCollectionDeletionAlertControllerForCollection(v7, 0, v6, v8, v4);

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