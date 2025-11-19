@interface PXPhotoKitAssetCollectionFileRadarActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)_presentTTRWorkFlowInViewController:(id)a3 context:(int64_t)a4 attachmentImageUrls:(id)a5 attachmentFileUrls:(id)a6;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionFileRadarActionPerformer

- (void)_presentTTRWorkFlowInViewController:(id)a3 context:(int64_t)a4 attachmentImageUrls:(id)a5 attachmentFileUrls:(id)a6
{
  [PXTTRWorkflowFactory presentDefaultWorkFlowInViewController:a3 withContext:a4 attachmentImageUrls:a5 attachmentFileUrls:a6];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

- (void)performUserInteractionTask
{
  v54[1] = *MEMORY[0x1E69E9840];
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if ([v4 assetCollectionType] != 4)
  {
    if ([v4 assetCollectionType] == 6)
    {
      v5 = v4;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_11:
          v6 = [[PXHighlightDiagnosticsViewController alloc] initWithHighlight:v5];
          v7 = [(PXActionPerformer *)self hostViewController];
          v8 = [(PXHighlightDiagnosticsViewController *)v6 radarAttachmentURLs];
          v9 = self;
          v10 = v7;
          v11 = 2;
          v12 = v8;
          goto LABEL_12;
        }

        v36 = [MEMORY[0x1E696AAA8] currentHandler];
        v39 = objc_opt_class();
        v38 = NSStringFromClass(v39);
        v40 = [v5 px_descriptionForAssertionMessage];
        [v36 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1668 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v38, v40}];
      }

      else
      {
        v36 = [MEMORY[0x1E696AAA8] currentHandler];
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        [v36 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1668 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v38}];
      }

      goto LABEL_11;
    }

    if ([v4 assetCollectionType] == 2)
    {
      v13 = [(PXPhotoKitAssetCollectionActionPerformer *)self socialGroups];

      if (v13)
      {
        v14 = [(PXActionPerformer *)self hostViewController];
        v15 = [v4 photoLibrary];
        v16 = [PXPeopleSwiftUtilities fetchAllSocialGroupDetailedDebugDescriptionFor:v15];

        v17 = PXFeedbackTapToRadarUtilitiesWriteStringToFileWithExtension(v16, @"SocialGroups-Debug", @"txt");
        v54[0] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
        [(PXPhotoKitAssetCollectionFileRadarActionPerformer *)self _presentTTRWorkFlowInViewController:v14 context:3 attachmentImageUrls:0 attachmentFileUrls:v18];

LABEL_26:
        goto LABEL_27;
      }
    }

    v19 = +[PXFeedbackTapToRadarUtilities captureScreenshot];
    aBlock = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __79__PXPhotoKitAssetCollectionFileRadarActionPerformer_performUserInteractionTask__block_invoke;
    v47 = &unk_1E7749628;
    v14 = v19;
    v48 = v14;
    v49 = self;
    v20 = _Block_copy(&aBlock);
    v21 = +[PXFeedbackTapToRadarUtilities defaultTitlePrefix];
    v22 = [v21 mutableCopy];

    v23 = +[PXFeedbackTapToRadarUtilities defaultDescription];
    v24 = [v23 mutableCopy];

    if (v14)
    {
      v53 = v14;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    }

    else
    {
      v25 = 0;
    }

    if ([v4 assetCollectionType] == 7)
    {
      [v22 appendString:@"CMM - [TTR] <Insert Bug Title>"];
      [v24 appendString:@"---Moment Share Tap-To-Radar (CMM / iCloud Sharing Link)---\n"];
      [v24 appendFormat:@"Moment Share: %@", v4];
      v52 = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v42 = v26;
      v43 = v20;
      v27 = @"1073863";
      LOWORD(v41) = 1;
      v28 = @"Photos UI Shared iCloud Link";
    }

    else
    {
      if (![v4 px_isSharedLibrarySharingSuggestion])
      {
        v29 = [(PXActionPerformer *)self hostViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v26 = [(PXActionPerformer *)self hostViewController];
          [(PXPhotoKitAssetCollectionFileRadarActionPerformer *)self _presentTTRWorkFlowInViewController:v26 context:5 attachmentImageUrls:v25 attachmentFileUrls:0];
        }

        else
        {
          [v22 appendString:@"Photos - [TTR] <Insert Bug Title>"];
          v50 = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
          LOWORD(v41) = 1;
          [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v22 description:v24 classification:@"Other Bug" componentID:@"630529" componentName:@"Photos (New Bugs) | iOS" componentVersion:@"all" keyword:0 screenshotURLs:v25 attachmentURLs:0 includeSysDiagnose:v41 includeInternalRelease:v26 additionalExtensionIdentifiers:v20 completionHandler:aBlock, v45, v46, v47];
        }

        goto LABEL_25;
      }

      [v22 appendString:@"Goldilocks - [TTR] <Insert Bug Title>"];
      [v24 appendString:@"---Shared Library Suggestion Tap-To-Radar---\n"];
      [v24 appendFormat:@"Shared Library Suggestion: %@", v4];
      v51 = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      v42 = v26;
      v43 = v20;
      v27 = @"1092067";
      LOWORD(v41) = 1;
      v28 = @"Photos UI Goldilocks";
    }

    [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v22 description:v24 classification:@"Other Bug" componentID:v27 componentName:v28 componentVersion:@"iOS" keyword:0 screenshotURLs:v25 attachmentURLs:0 includeSysDiagnose:v41 includeInternalRelease:v42 additionalExtensionIdentifiers:v43 completionHandler:aBlock, v45, v46, v47];
LABEL_25:

    goto LABEL_26;
  }

  v5 = v4;
  if (!v5)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [v31 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1648 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v33}];
LABEL_33:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v33 = NSStringFromClass(v34);
    v35 = [v5 px_descriptionForAssertionMessage];
    [v31 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1648 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v33, v35}];

    goto LABEL_33;
  }

LABEL_4:
  v6 = [[PXMemoryDiagnosticsViewController alloc] initWithMemory:v5];
  [(PXCuratedAssetCollectionDiagnosticsViewController *)v6 setShouldPresentTapToRadar:1];
  v7 = [(PXHighlightDiagnosticsViewController *)v6 radarAttachmentURLs];
  v8 = [(PXActionPerformer *)self hostViewController];
  if ([v5 creationType] == 1)
  {
    [PXGenerativeStoryTTRWorkflowBuilder presentViewController:v8 memory:v5 attachmentFileUrls:v7];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  if ([v5 creationType])
  {
    goto LABEL_13;
  }

  v9 = self;
  v10 = v8;
  v11 = 4;
  v12 = v7;
LABEL_12:
  [(PXPhotoKitAssetCollectionFileRadarActionPerformer *)v9 _presentTTRWorkFlowInViewController:v10 context:v11 attachmentImageUrls:0 attachmentFileUrls:v12];
LABEL_13:

LABEL_27:
}

uint64_t __79__PXPhotoKitAssetCollectionFileRadarActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    [v2 removeItemAtURL:*(a1 + 32) error:0];
  }

  v3 = *(a1 + 40);

  return [v3 completeUserInteractionTaskWithSuccess:1 error:0];
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v6 = [a4 assetCollection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 creationType] == 1)
  {
    v7 = @"File MC Radar";
  }

  else
  {
    v8 = @"File Radar";
    if (a3 == 2)
    {
      v8 = @"(Internal) File Radar";
    }

    v7 = v8;
  }

  return v7;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = [PXRootSettings sharedInstance:a3];
  v5 = [v4 canShowInternalUI];

  return v5;
}

@end