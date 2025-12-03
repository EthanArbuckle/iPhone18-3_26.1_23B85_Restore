@interface PXPhotoKitCollectionListCopyInternalURLActionPerformer
+ (BOOL)canPerformOnCollectionList:(id)list;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCollectionListCopyInternalURLActionPerformer

+ (BOOL)canPerformOnCollectionList:(id)list
{
  v3 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v3 canShowInternalUI];

  return canShowInternalUI;
}

- (void)performUserInteractionTask
{
  collectionList = [(PXPhotoKitCollectionListActionPerformer *)self collectionList];
  px_navigationURL = [collectionList px_navigationURL];

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setURL:px_navigationURL];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

@end