@interface PXPhotoKitAssetCollectionStoryDemoActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionStoryDemoActionPerformer

- (void)performUserInteractionTask
{
  assetsDataSource = [(PXAssetCollectionActionPerformer *)self assetsDataSource];
  if (!assetsDataSource)
  {
    goto LABEL_11;
  }

  assetCollectionReference = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v5 = [assetsDataSource assetCollectionReferenceForAssetCollectionReference:assetCollectionReference];

  assetCollection = [v5 assetCollection];
  if (assetCollection || ([assetsDataSource containerCollection], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "canContainAssets"), v10, v11) && (objc_msgSend(assetsDataSource, "containerCollection"), (assetCollection = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = assetCollection;
    v8 = [[PXStoryConfiguration alloc] initWithAssetCollection:assetCollection];
  }

  else
  {
    if ([assetsDataSource numberOfSections] <= 0)
    {

LABEL_11:
      v12 = [PXStoryConfiguration alloc];
      assetCollection2 = [(PXAssetCollectionActionPerformer *)self assetCollection];
      v9 = [(PXStoryConfiguration *)v12 initWithAssetCollection:assetCollection2];

      goto LABEL_12;
    }

    identifier = [assetsDataSource identifier];
    v19 = xmmword_1A5380D10;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [assetsDataSource assetsInSectionIndexPath:&identifier];
    v8 = [[PXStoryConfiguration alloc] initWithAssets:v7];
  }

  v9 = v8;

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PXPhotoKitAssetCollectionStoryDemoActionPerformer_performUserInteractionTask__block_invoke;
  v15[3] = &unk_1E774C620;
  v16 = v9;
  selfCopy = self;
  v14 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __79__PXPhotoKitAssetCollectionStoryDemoActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  v2 = [PXStoryUIFactory viewControllerWithConfiguration:*(a1 + 32) contentViewController:0];
  [*(a1 + 40) presentViewController:v2];
  [*(a1 + 40) completeUserInteractionTaskWithSuccess:1 error:0];
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  v5 = +[PXRootSettings sharedInstance];
  if ([v5 canShowInternalUI])
  {
    v6 = +[PXStorySettings sharedInstance];
    if ([v6 enableDemoAction])
    {
      isKindOfClass = 1;
    }

    else
    {
      assetCollection = [referenceCopy assetCollection];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end