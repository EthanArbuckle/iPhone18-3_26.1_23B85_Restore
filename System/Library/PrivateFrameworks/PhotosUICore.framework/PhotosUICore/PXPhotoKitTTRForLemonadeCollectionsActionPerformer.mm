@interface PXPhotoKitTTRForLemonadeCollectionsActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitTTRForLemonadeCollectionsActionPerformer

- (void)performUserInteractionTask
{
  v23 = *MEMORY[0x1E69E9840];
  hostViewController = [(PXActionPerformer *)self hostViewController];
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if ([assetCollection isTransient])
  {
    localizedTitle = [assetCollection localizedTitle];
    v6 = +[PXLemonadeDocumentsUtilities documentsLocalizedTitles];
    v7 = [v6 containsObject:localizedTitle];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = MEMORY[0x1E6978630];
  assetCollection2 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v11 = [v9 fetchAssetsInAssetCollection:assetCollection2 options:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [PXFeedbackTapToRadarUtilities detailedDebugDescriptionFileForAsset:*(*(&v18 + 1) + 8 * v16), v18];
        if (v17)
        {
          [v8 addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [PXTTRWorkflowFactory presentDefaultWorkFlowInViewController:hostViewController withContext:v7 attachmentFileUrls:v8];
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  v4 = [PXRootSettings sharedInstance:reference];
  canShowInternalUI = [v4 canShowInternalUI];

  return canShowInternalUI;
}

@end