@interface PXPhotoKitCollectionListRenameActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCollectionListRenameActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  v4 = [(PXActionPerformer *)self undoManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PXPhotoKitCollectionListRenameActionPerformer_performUserInteractionTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  v5 = PXCollectionRenameActionAlertController(v3, v4, v7);

  if (![(PXActionPerformer *)self presentViewController:v5])
  {
    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present collection list rename alert"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

@end