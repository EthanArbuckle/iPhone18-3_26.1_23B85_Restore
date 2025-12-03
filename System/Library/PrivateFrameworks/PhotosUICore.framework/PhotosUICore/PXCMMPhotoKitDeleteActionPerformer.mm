@interface PXCMMPhotoKitDeleteActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PXCMMPhotoKitDeleteActionPerformer

- (void)performUserInteractionTask
{
  v8[1] = *MEMORY[0x1E69E9840];
  session = [(PXCMMActionPerformer *)self session];
  momentShare = [session momentShare];

  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v8[0] = momentShare;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PXCMMPhotoKitDeleteActionPerformer_performUserInteractionTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  PXTrashMomentShares(v6, presentationEnvironment, v7);
}

@end