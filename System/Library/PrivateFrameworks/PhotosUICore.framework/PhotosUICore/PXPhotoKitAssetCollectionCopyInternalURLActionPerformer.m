@interface PXPhotoKitAssetCollectionCopyInternalURLActionPerformer
+ (BOOL)canPerformOn:(id)a3;
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionCopyInternalURLActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  if (a3 == 2)
  {
    return @"(Internal) Copy URL";
  }

  else
  {
    return @"Copy URL";
  }
}

+ (BOOL)canPerformOn:(id)a3
{
  v3 = a3;
  v4 = +[PXRootSettings sharedInstance];
  if ([v4 canShowInternalUI])
  {
    v5 = [v3 count] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = [PXRootSettings sharedInstance:a3];
  v5 = [v4 canShowInternalUI];

  return v5;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v4 = [v3 firstObject];

  if (v4)
  {
    v7 = [v4 px_navigationURL];
  }

  else
  {
    v5 = [(PXAssetCollectionActionPerformer *)self assetCollection];
    v7 = [v5 px_navigationURL];
  }

  v6 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v6 setURL:v7];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

@end