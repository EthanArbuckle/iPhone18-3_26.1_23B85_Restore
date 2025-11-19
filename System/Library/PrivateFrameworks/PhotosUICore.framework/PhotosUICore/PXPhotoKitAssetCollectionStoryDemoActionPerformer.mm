@interface PXPhotoKitAssetCollectionStoryDemoActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionStoryDemoActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXAssetCollectionActionPerformer *)self assetsDataSource];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v5 = [v3 assetCollectionReferenceForAssetCollectionReference:v4];

  v6 = [v5 assetCollection];
  if (v6 || ([v3 containerCollection], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "canContainAssets"), v10, v11) && (objc_msgSend(v3, "containerCollection"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [[PXStoryConfiguration alloc] initWithAssetCollection:v6];
  }

  else
  {
    if ([v3 numberOfSections] <= 0)
    {

LABEL_11:
      v12 = [PXStoryConfiguration alloc];
      v13 = [(PXAssetCollectionActionPerformer *)self assetCollection];
      v9 = [(PXStoryConfiguration *)v12 initWithAssetCollection:v13];

      goto LABEL_12;
    }

    v18 = [v3 identifier];
    v19 = xmmword_1A5380D10;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [v3 assetsInSectionIndexPath:&v18];
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
  v17 = self;
  v14 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __79__PXPhotoKitAssetCollectionStoryDemoActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  v2 = [PXStoryUIFactory viewControllerWithConfiguration:*(a1 + 32) contentViewController:0];
  [*(a1 + 40) presentViewController:v2];
  [*(a1 + 40) completeUserInteractionTaskWithSuccess:1 error:0];
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = a3;
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
      v8 = [v4 assetCollection];
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