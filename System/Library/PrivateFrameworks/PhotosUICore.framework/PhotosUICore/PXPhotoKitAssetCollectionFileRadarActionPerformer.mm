@interface PXPhotoKitAssetCollectionFileRadarActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)_presentTTRWorkFlowInViewController:(id)controller context:(int64_t)context attachmentImageUrls:(id)urls attachmentFileUrls:(id)fileUrls;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionFileRadarActionPerformer

- (void)_presentTTRWorkFlowInViewController:(id)controller context:(int64_t)context attachmentImageUrls:(id)urls attachmentFileUrls:(id)fileUrls
{
  [PXTTRWorkflowFactory presentDefaultWorkFlowInViewController:controller withContext:context attachmentImageUrls:urls attachmentFileUrls:fileUrls];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

- (void)performUserInteractionTask
{
  v54[1] = *MEMORY[0x1E69E9840];
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if ([assetCollection assetCollectionType] != 4)
  {
    if ([assetCollection assetCollectionType] == 6)
    {
      v5 = assetCollection;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_11:
          v6 = [[PXHighlightDiagnosticsViewController alloc] initWithHighlight:v5];
          hostViewController = [(PXActionPerformer *)self hostViewController];
          radarAttachmentURLs = [(PXHighlightDiagnosticsViewController *)v6 radarAttachmentURLs];
          selfCopy3 = self;
          v10 = hostViewController;
          v11 = 2;
          v12 = radarAttachmentURLs;
          goto LABEL_12;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v39 = objc_opt_class();
        v38 = NSStringFromClass(v39);
        px_descriptionForAssertionMessage = [v5 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1668 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v38, px_descriptionForAssertionMessage}];
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1668 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v38}];
      }

      goto LABEL_11;
    }

    if ([assetCollection assetCollectionType] == 2)
    {
      socialGroups = [(PXPhotoKitAssetCollectionActionPerformer *)self socialGroups];

      if (socialGroups)
      {
        hostViewController2 = [(PXActionPerformer *)self hostViewController];
        photoLibrary = [assetCollection photoLibrary];
        v16 = [PXPeopleSwiftUtilities fetchAllSocialGroupDetailedDebugDescriptionFor:photoLibrary];

        v17 = PXFeedbackTapToRadarUtilitiesWriteStringToFileWithExtension(v16, @"SocialGroups-Debug", @"txt");
        v54[0] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
        [(PXPhotoKitAssetCollectionFileRadarActionPerformer *)self _presentTTRWorkFlowInViewController:hostViewController2 context:3 attachmentImageUrls:0 attachmentFileUrls:v18];

LABEL_26:
        goto LABEL_27;
      }
    }

    v19 = +[PXFeedbackTapToRadarUtilities captureScreenshot];
    aBlock = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __79__PXPhotoKitAssetCollectionFileRadarActionPerformer_performUserInteractionTask__block_invoke;
    v47 = &unk_1E7749628;
    hostViewController2 = v19;
    v48 = hostViewController2;
    selfCopy2 = self;
    v20 = _Block_copy(&aBlock);
    v21 = +[PXFeedbackTapToRadarUtilities defaultTitlePrefix];
    v22 = [v21 mutableCopy];

    v23 = +[PXFeedbackTapToRadarUtilities defaultDescription];
    v24 = [v23 mutableCopy];

    if (hostViewController2)
    {
      v53 = hostViewController2;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    }

    else
    {
      v25 = 0;
    }

    if ([assetCollection assetCollectionType] == 7)
    {
      [v22 appendString:@"CMM - [TTR] <Insert Bug Title>"];
      [v24 appendString:@"---Moment Share Tap-To-Radar (CMM / iCloud Sharing Link)---\n"];
      [v24 appendFormat:@"Moment Share: %@", assetCollection];
      v52 = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
      hostViewController4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v42 = hostViewController4;
      v43 = v20;
      v27 = @"1073863";
      LOWORD(v41) = 1;
      v28 = @"Photos UI Shared iCloud Link";
    }

    else
    {
      if (![assetCollection px_isSharedLibrarySharingSuggestion])
      {
        hostViewController3 = [(PXActionPerformer *)self hostViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          hostViewController4 = [(PXActionPerformer *)self hostViewController];
          [(PXPhotoKitAssetCollectionFileRadarActionPerformer *)self _presentTTRWorkFlowInViewController:hostViewController4 context:5 attachmentImageUrls:v25 attachmentFileUrls:0];
        }

        else
        {
          [v22 appendString:@"Photos - [TTR] <Insert Bug Title>"];
          v50 = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
          hostViewController4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
          LOWORD(v41) = 1;
          [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v22 description:v24 classification:@"Other Bug" componentID:@"630529" componentName:@"Photos (New Bugs) | iOS" componentVersion:@"all" keyword:0 screenshotURLs:v25 attachmentURLs:0 includeSysDiagnose:v41 includeInternalRelease:hostViewController4 additionalExtensionIdentifiers:v20 completionHandler:aBlock, v45, v46, v47];
        }

        goto LABEL_25;
      }

      [v22 appendString:@"Goldilocks - [TTR] <Insert Bug Title>"];
      [v24 appendString:@"---Shared Library Suggestion Tap-To-Radar---\n"];
      [v24 appendFormat:@"Shared Library Suggestion: %@", assetCollection];
      v51 = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
      hostViewController4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      v42 = hostViewController4;
      v43 = v20;
      v27 = @"1092067";
      LOWORD(v41) = 1;
      v28 = @"Photos UI Goldilocks";
    }

    [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v22 description:v24 classification:@"Other Bug" componentID:v27 componentName:v28 componentVersion:@"iOS" keyword:0 screenshotURLs:v25 attachmentURLs:0 includeSysDiagnose:v41 includeInternalRelease:v42 additionalExtensionIdentifiers:v43 completionHandler:aBlock, v45, v46, v47];
LABEL_25:

    goto LABEL_26;
  }

  v5 = assetCollection;
  if (!v5)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1648 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v33}];
LABEL_33:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v33 = NSStringFromClass(v34);
    px_descriptionForAssertionMessage2 = [v5 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1648 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v33, px_descriptionForAssertionMessage2}];

    goto LABEL_33;
  }

LABEL_4:
  v6 = [[PXMemoryDiagnosticsViewController alloc] initWithMemory:v5];
  [(PXCuratedAssetCollectionDiagnosticsViewController *)v6 setShouldPresentTapToRadar:1];
  hostViewController = [(PXHighlightDiagnosticsViewController *)v6 radarAttachmentURLs];
  radarAttachmentURLs = [(PXActionPerformer *)self hostViewController];
  if ([v5 creationType] == 1)
  {
    [PXGenerativeStoryTTRWorkflowBuilder presentViewController:radarAttachmentURLs memory:v5 attachmentFileUrls:hostViewController];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  if ([v5 creationType])
  {
    goto LABEL_13;
  }

  selfCopy3 = self;
  v10 = radarAttachmentURLs;
  v11 = 4;
  v12 = hostViewController;
LABEL_12:
  [(PXPhotoKitAssetCollectionFileRadarActionPerformer *)selfCopy3 _presentTTRWorkFlowInViewController:v10 context:v11 attachmentImageUrls:0 attachmentFileUrls:v12];
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

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [assetCollection creationType] == 1)
  {
    v7 = @"File MC Radar";
  }

  else
  {
    v8 = @"File Radar";
    if (case == 2)
    {
      v8 = @"(Internal) File Radar";
    }

    v7 = v8;
  }

  return v7;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  v4 = [PXRootSettings sharedInstance:reference];
  canShowInternalUI = [v4 canShowInternalUI];

  return canShowInternalUI;
}

@end