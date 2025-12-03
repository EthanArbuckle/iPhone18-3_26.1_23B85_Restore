@interface PXPhotoKitAssetCollectionCopyInternalURLActionPerformer
+ (BOOL)canPerformOn:(id)on;
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionCopyInternalURLActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  if (case == 2)
  {
    return @"(Internal) Copy URL";
  }

  else
  {
    return @"Copy URL";
  }
}

+ (BOOL)canPerformOn:(id)on
{
  onCopy = on;
  v4 = +[PXRootSettings sharedInstance];
  if ([v4 canShowInternalUI])
  {
    v5 = [onCopy count] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  v4 = [PXRootSettings sharedInstance:reference];
  canShowInternalUI = [v4 canShowInternalUI];

  return canShowInternalUI;
}

- (void)performUserInteractionTask
{
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  firstObject = [people firstObject];

  if (firstObject)
  {
    px_navigationURL = [firstObject px_navigationURL];
  }

  else
  {
    assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
    px_navigationURL = [assetCollection px_navigationURL];
  }

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setURL:px_navigationURL];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

@end