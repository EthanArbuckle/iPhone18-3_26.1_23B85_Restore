@interface PXPhotoKitCollectionListCopyInternalURLActionPerformer
+ (BOOL)canPerformOnCollectionList:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCollectionListCopyInternalURLActionPerformer

+ (BOOL)canPerformOnCollectionList:(id)a3
{
  v3 = +[PXRootSettings sharedInstance];
  v4 = [v3 canShowInternalUI];

  return v4;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  v5 = [v3 px_navigationURL];

  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v4 setURL:v5];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

@end