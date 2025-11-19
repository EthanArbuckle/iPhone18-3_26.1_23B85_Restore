@interface PXPhotoKitTTRForLemonadeCollectionsActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitTTRForLemonadeCollectionsActionPerformer

- (void)performUserInteractionTask
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(PXActionPerformer *)self hostViewController];
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if ([v4 isTransient])
  {
    v5 = [v4 localizedTitle];
    v6 = +[PXLemonadeDocumentsUtilities documentsLocalizedTitles];
    v7 = [v6 containsObject:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = MEMORY[0x1E6978630];
  v10 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v11 = [v9 fetchAssetsInAssetCollection:v10 options:0];

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

  [PXTTRWorkflowFactory presentDefaultWorkFlowInViewController:v3 withContext:v7 attachmentFileUrls:v8];
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = [PXRootSettings sharedInstance:a3];
  v5 = [v4 canShowInternalUI];

  return v5;
}

@end