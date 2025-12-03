@interface PEVideoTrimBurnInUtility
+ (id)_compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim:(id)trim trimController:(id)controller cinematographyScript:(id)script error:(id *)error;
+ (id)_error:(int64_t)_error description:(id)description;
+ (id)_fileExtension;
+ (id)_renderComposition:(id)composition toURL:(id)l completion:(id)completion;
+ (id)_renderURLForAssetFilename:(id)filename error:(id *)error;
+ (id)_trimOnlyCompositionControllerFor:(id)for;
+ (id)burnInTrimToNewAsset:(id)asset compositionController:(id)controller asShotCompositionController:(id)compositionController cinematographyScript:(id)script queue:(id)queue completion:(id)completion;
+ (void)_contentEditingInputFor:(id)for completion:(id)completion;
+ (void)_duplicateAsset:(id)asset withNewRenderURL:(id)l asShotCompositionController:(id)controller completion:(id)completion;
@end

@implementation PEVideoTrimBurnInUtility

+ (id)_error:(int64_t)_error description:(id)description
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA068];
  v12[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"PEVideoTrimBurnInUtilityErrorDomain" code:_error userInfo:v8];

  return v9;
}

+ (id)_trimOnlyCompositionControllerFor:(id)for
{
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v4 = [forCopy copy];
  v5 = MEMORY[0x277CBEB98];
  compositionKeys = [v4 compositionKeys];
  v7 = [v5 setWithArray:compositionKeys];
  v8 = [v7 mutableCopy];

  [v8 removeObject:*MEMORY[0x277D3ABD0]];
  [v8 removeObject:*MEMORY[0x277D3ABC8]];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v4 removeAdjustmentWithKey:{*(*(&v15 + 1) + 8 * i), v15}];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [MEMORY[0x277D3AC20] compositionController:v4 setInputOrientation:{objc_msgSend(forCopy, "imageOrientation")}];

  return v4;
}

+ (id)_fileExtension
{
  v2 = +[PEVideoTrimBurnInUtility _fileType];
  preferredFilenameExtension = [v2 preferredFilenameExtension];

  return preferredFilenameExtension;
}

+ (id)_renderURLForAssetFilename:(id)filename error:(id *)error
{
  filenameCopy = filename;
  v6 = filenameCopy;
  if (filenameCopy)
  {
    stringByDeletingPathExtension = [filenameCopy stringByDeletingPathExtension];
    v8 = [stringByDeletingPathExtension stringByAppendingString:@"_trim"];

    v9 = +[PEVideoTrimBurnInUtility _fileExtension];
    v10 = [v8 stringByAppendingPathExtension:v9];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    temporaryDirectory = [defaultManager2 temporaryDirectory];
    v14 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:temporaryDirectory create:1 error:error];

    if (v14)
    {
      v15 = [v14 URLByAppendingPathComponent:v10 isDirectory:0];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing asset filename."];
    if (error)
    {
      [PEVideoTrimBurnInUtility _error:5 description:v10];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

+ (id)_compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim:(id)trim trimController:(id)controller cinematographyScript:(id)script error:(id *)error
{
  trimCopy = trim;
  controllerCopy = controller;
  scriptCopy = script;
  if (error)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEVideoTrimBurnInUtility.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"errorPointer"}];

    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PEVideoTrimBurnInUtility.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"trimController"}];

LABEL_3:
  v14 = [trimCopy copy];
  [v14 removeAdjustmentWithKey:*MEMORY[0x277D3ABD0]];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __141__PEVideoTrimBurnInUtility__compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim_trimController_cinematographyScript_error___block_invoke;
  aBlock[3] = &unk_279A31568;
  v15 = controllerCopy;
  v43 = v15;
  v16 = _Block_copy(aBlock);
  slomoAdjustmentController = [v14 slomoAdjustmentController];

  if (slomoAdjustmentController)
  {
    v18 = *MEMORY[0x277D3ABA8];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __141__PEVideoTrimBurnInUtility__compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim_trimController_cinematographyScript_error___block_invoke_2;
    v40[3] = &unk_279A31590;
    v41 = v16;
    [v14 modifyAdjustmentWithKey:v18 modificationBlock:v40];
  }

  videoPosterFrameAdjustmentController = [v14 videoPosterFrameAdjustmentController];

  if (videoPosterFrameAdjustmentController)
  {
    memset(&v39, 0, sizeof(v39));
    videoPosterFrameAdjustmentController2 = [v14 videoPosterFrameAdjustmentController];
    v21 = videoPosterFrameAdjustmentController2;
    if (videoPosterFrameAdjustmentController2)
    {
      [videoPosterFrameAdjustmentController2 posterFrameTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    (*(v16 + 2))(&v39, v16, &time1);

    time1 = v39;
    time2 = **&MEMORY[0x277CC08F0];
    v22 = CMTimeCompare(&time1, &time2);
    v23 = *MEMORY[0x277D3ABD8];
    if (v22)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __141__PEVideoTrimBurnInUtility__compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim_trimController_cinematographyScript_error___block_invoke_3;
      v35[3] = &__block_descriptor_56_e48_v16__0__PIVideoPosterFrameAdjustmentController_8l;
      v36 = v39;
      [v14 modifyAdjustmentWithKey:v23 modificationBlock:v35];
    }

    else
    {
      [v14 removeAdjustmentWithKey:v23];
    }
  }

  portraitVideoAdjustmentController = [v14 portraitVideoAdjustmentController];

  if (portraitVideoAdjustmentController)
  {
    portraitVideoAdjustmentController2 = [v14 portraitVideoAdjustmentController];
    cinematographyState = [portraitVideoAdjustmentController2 cinematographyState];

    if (scriptCopy || !cinematographyState)
    {
      v28 = *MEMORY[0x277D3AAB0];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __141__PEVideoTrimBurnInUtility__compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim_trimController_cinematographyScript_error___block_invoke_4;
      v32[3] = &unk_279A315D8;
      v33 = v15;
      v34 = scriptCopy;
      [v14 modifyAdjustmentWithKey:v28 modificationBlock:v32];

      v27 = v33;
    }

    else
    {
      *error = [PEVideoTrimBurnInUtility _error:4 description:@"Cinematic adjustment is present, but cinematographyScript is nil."];
      v27 = v14;
      v14 = 0;
    }
  }

  return v14;
}

CMTime *__141__PEVideoTrimBurnInUtility__compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim_trimController_cinematographyScript_error___block_invoke@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  memset(&v13, 0, sizeof(v13));
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 endTime];
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 startTime];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  memset(&rhs, 0, sizeof(rhs));
LABEL_6:
  CMTimeSubtract(&v10.start, &lhs, &rhs);
  lhs = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&v13, &lhs, &v10.start);
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 startTime];
  }

  else
  {
    memset(&v10, 0, 24);
  }

  rhs = *a2;
  CMTimeSubtract(&lhs, &rhs, &v10.start);
  v10 = v13;
  return CMTimeClampToRange(a3, &lhs, &v10);
}

void __141__PEVideoTrimBurnInUtility__compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim_trimController_cinematographyScript_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    [v3 startTime];
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
  }

  (*(v5 + 16))(&v11, v5, &v9);
  v9 = v11;
  v10 = v12;
  [v4 setStartTime:&v9];
  v6 = *(a1 + 32);
  if (v4)
  {
    [v4 endTime];
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
  }

  (*(v6 + 16))(&v7, v6, &v9);
  v9 = v7;
  v10 = v8;
  [v4 setEndTime:&v9];
}

uint64_t __141__PEVideoTrimBurnInUtility__compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim_trimController_cinematographyScript_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 setPosterFrameTime:&v3];
}

void __141__PEVideoTrimBurnInUtility__compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim_trimController_cinematographyScript_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    memset(&start, 0, sizeof(start));
    goto LABEL_5;
  }

  [v4 startTime];
  v5 = *(a1 + 32);
  if (!v5)
  {
LABEL_5:
    memset(&v6, 0, sizeof(v6));
    goto LABEL_6;
  }

  [v5 endTime];
LABEL_6:
  CMTimeRangeFromTimeToTime(&v8, &start, &v6);
  [v3 trimToTimeRange:&v8 usingScript:*(a1 + 40)];
}

+ (void)_contentEditingInputFor:(id)for completion:(id)completion
{
  completionCopy = completion;
  forCopy = for;
  v7 = objc_opt_new();
  [v7 setContentMode:0];
  [v7 setCanHandleRAW:&__block_literal_global_3061];
  [v7 setCanHandleAdjustmentData:&__block_literal_global_95];
  v8 = dispatch_get_global_queue(25, 0);
  [v7 setResultHandlerQueue:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PEVideoTrimBurnInUtility__contentEditingInputFor_completion___block_invoke_3;
  v10[3] = &unk_279A31540;
  v11 = completionCopy;
  v9 = completionCopy;
  [forCopy requestContentEditingInputWithOptions:v7 completionHandler:v10];
}

void __63__PEVideoTrimBurnInUtility__contentEditingInputFor_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD9BA8]];
    if (!v5)
    {
      v5 = [PEVideoTrimBurnInUtility _error:3 description:@"Content editing input request failed."];
    }

    v6 = v5;
    (*(*(a1 + 32) + 16))();
  }
}

+ (void)_duplicateAsset:(id)asset withNewRenderURL:(id)l asShotCompositionController:(id)controller completion:(id)completion
{
  assetCopy = asset;
  lCopy = l;
  controllerCopy = controller;
  completionCopy = completion;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3065;
  v46 = __Block_byref_object_dispose__3066;
  v47 = 0;
  if (!controllerCopy)
  {
    goto LABEL_5;
  }

  v13 = MEMORY[0x277D3A898];
  composition = [controllerCopy composition];
  v41 = 0;
  v15 = [v13 adjustmentInformationForComposition:composition error:&v41];
  v16 = v41;

  if (!v15)
  {
    if (!v16)
    {
      v16 = [PEVideoTrimBurnInUtility _error:2 description:@"Failed to serialize original adjustment data."];
    }

    completionCopy[2](completionCopy, 0, v16);
    goto LABEL_10;
  }

  v17 = objc_alloc(MEMORY[0x277D3B3E8]);
  v18 = [v15 objectForKeyedSubscript:*MEMORY[0x277D3A9C0]];
  v19 = [v15 objectForKeyedSubscript:*MEMORY[0x277D3A9C8]];
  v20 = [v15 objectForKeyedSubscript:*MEMORY[0x277D3A9B8]];
  v21 = [v17 initWithFormatIdentifier:v18 formatVersion:v19 data:v20 baseVersion:0 editorBundleID:0 renderTypes:0];

  if (!v21)
  {
    v29 = [PEVideoTrimBurnInUtility _error:2 description:@"Failed to create asset adjustments from original adjustment information."];
    completionCopy[2](completionCopy, 0, v29);

LABEL_10:
    goto LABEL_11;
  }

  supplementalResourceAAEType = [MEMORY[0x277D3B508] supplementalResourceAAEType];
  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  preferredFilenameExtension = [supplementalResourceAAEType preferredFilenameExtension];
  v25 = [uRLByDeletingPathExtension URLByAppendingPathExtension:preferredFilenameExtension];
  v26 = v43[5];
  v43[5] = v25;

  [v21 writeToURL:v43[5] atomically:0];
LABEL_5:
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__3065;
  v39[4] = __Block_byref_object_dispose__3066;
  v40 = 0;
  photoLibrary = [assetCopy photoLibrary];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __100__PEVideoTrimBurnInUtility__duplicateAsset_withNewRenderURL_asShotCompositionController_completion___block_invoke;
  v34[3] = &unk_279A314B0;
  v35 = assetCopy;
  v36 = lCopy;
  v37 = &v42;
  v38 = v39;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __100__PEVideoTrimBurnInUtility__duplicateAsset_withNewRenderURL_asShotCompositionController_completion___block_invoke_2;
  v30[3] = &unk_279A314D8;
  v32 = completionCopy;
  v33 = v39;
  v28 = photoLibrary;
  v31 = v28;
  [v28 performChanges:v34 completionHandler:v30];

  _Block_object_dispose(v39, 8);
LABEL_11:
  _Block_object_dispose(&v42, 8);
}

void __100__PEVideoTrimBurnInUtility__duplicateAsset_withNewRenderURL_asShotCompositionController_completion___block_invoke(uint64_t a1)
{
  v21 = [MEMORY[0x277CD97D0] creationRequestForAsset];
  v2 = [*(a1 + 32) originalFilename];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) filename];
  }

  v5 = v4;

  v6 = [v5 stringByDeletingPathExtension];

  v7 = +[PEVideoTrimBurnInUtility _fileExtension];
  v8 = [v6 stringByAppendingPathExtension:v7];

  v9 = objc_opt_new();
  [v9 setOriginalFilename:v8];
  v10 = +[PEVideoTrimBurnInUtility _fileType];
  v11 = [v10 identifier];
  [v9 setUniformTypeIdentifier:v11];

  [v9 setShouldMoveFile:1];
  [v21 addResourceWithType:2 fileURL:*(a1 + 40) options:v9];
  v12 = [*(a1 + 32) creationDate];
  [v21 setCreationDate:v12];

  v13 = [*(a1 + 32) location];
  [v21 setLocation:v13];

  [v21 setHidden:{objc_msgSend(*(a1 + 32), "isHidden")}];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277D3B508] supplementalResourceAAEType];
    v16 = [v15 identifier];
    [v14 setUniformTypeIdentifier:v16];

    [v21 addResourceWithType:16 fileURL:*(*(*(a1 + 48) + 8) + 40) options:v14];
  }

  v17 = [v21 placeholderForCreatedAsset];
  v18 = [v17 localIdentifier];
  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

void __100__PEVideoTrimBurnInUtility__duplicateAsset_withNewRenderURL_asShotCompositionController_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = MEMORY[0x277CD97A8];
    v12[0] = *(*(*(a1 + 48) + 8) + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [*(a1 + 32) librarySpecificFetchOptions];
    v10 = [v7 fetchAssetsWithLocalIdentifiers:v8 options:v9];
    v11 = [v10 lastObject];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!v5)
    {
      v6 = [PEVideoTrimBurnInUtility _error:2 description:@"Failed to create new asset."];
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)_renderComposition:(id)composition toURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x277CCAA00];
  lCopy = l;
  compositionCopy = composition;
  defaultManager = [v8 defaultManager];
  v21 = 0;
  [defaultManager removeItemAtURL:lCopy error:&v21];
  v12 = v21;

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:0];
  [v14 setPriority:v15];

  [v14 setBypassOutputSettingsIfNoComposition:1];
  [v14 setApplyVideoOrientationAsMetadata:1];
  [v14 setIncludeCinematicVideoTracks:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__PEVideoTrimBurnInUtility__renderComposition_toURL_completion___block_invoke;
  v19[3] = &unk_279A31488;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = [v13 exportVideoToURL:lCopy composition:compositionCopy options:v14 completion:v19];

  return v17;
}

void __64__PEVideoTrimBurnInUtility__renderComposition_toURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [a2 result:&v7];
  v4 = v7;
  v5 = v4;
  if (v3)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (!v4)
    {
      v5 = [PEVideoTrimBurnInUtility _error:1 description:@"Failed to render video."];
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

+ (id)burnInTrimToNewAsset:(id)asset compositionController:(id)controller asShotCompositionController:(id)compositionController cinematographyScript:(id)script queue:(id)queue completion:(id)completion
{
  assetCopy = asset;
  compositionControllerCopy = compositionController;
  scriptCopy = script;
  queueCopy = queue;
  completionCopy = completion;
  v16 = MEMORY[0x277CCAC48];
  controllerCopy = controller;
  v18 = [v16 progressWithTotalUnitCount:10];
  v19 = [controllerCopy copy];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke;
  aBlock[3] = &unk_279A313E8;
  v20 = queueCopy;
  v53 = v20;
  v21 = completionCopy;
  v54 = v21;
  v22 = _Block_copy(aBlock);
  v40 = v19;
  v23 = [PEVideoTrimBurnInUtility _trimOnlyCompositionControllerFor:v19];
  filename = [assetCopy filename];
  v51 = 0;
  v25 = [PEVideoTrimBurnInUtility _renderURLForAssetFilename:filename error:&v51];
  v26 = v51;
  v27 = v25;
  if (v25)
  {
    v37 = v26;
    v38 = v21;
    v28 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v28, OS_LOG_TYPE_DEFAULT, "PEVideoTrimBurnInUtility beginning render", buf, 2u);
    }

    composition = [v23 composition];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke_59;
    v42[3] = &unk_279A31460;
    v49 = v22;
    v43 = compositionControllerCopy;
    v44 = v40;
    v45 = scriptCopy;
    v46 = assetCopy;
    v47 = v25;
    v30 = v18;
    v48 = v30;
    v31 = [PEVideoTrimBurnInUtility _renderComposition:composition toURL:v47 completion:v42];

    [v30 addChild:v31 withPendingUnitCount:8];
    v32 = v30;
    v33 = scriptCopy;

    v21 = v38;
    v34 = v37;
  }

  else
  {
    v34 = v26;
    (*(v22 + 2))(v22, 0, v26);
    v35 = v18;
    v33 = scriptCopy;
  }

  return v18;
}

void __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = PLPhotoEditGetLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v9 = "PEVideoTrimBurnInUtility successfully burned in trim to new asset";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 2;
    goto LABEL_8;
  }

  if (!v6)
  {
    v7 = [PEVideoTrimBurnInUtility _error:0 description:@"Unknown error."];
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v7;
    v9 = "PEVideoTrimBurnInUtility failed with error: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
LABEL_8:
    _os_log_impl(&dword_25E6E9000, v10, v11, v9, buf, v12);
  }

LABEL_9:

  v13 = *(a1 + 32);
  if (v13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke_56;
    block[3] = &unk_279A313C0;
    v17 = *(a1 + 40);
    v15 = v5;
    v16 = v7;
    dispatch_async(v13, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke_59(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [*(a1 + 40) trimAdjustmentController];
      v8 = *(a1 + 48);
      v19 = 0;
      v9 = [PEVideoTrimBurnInUtility _compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim:v6 trimController:v7 cinematographyScript:v8 error:&v19];
      v6 = v19;

      if (!v9)
      {
        (*(*(a1 + 80) + 16))();
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_DEFAULT, "PEVideoTrimBurnInUtility creating new asset", buf, 2u);
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke_60;
    v13[3] = &unk_279A31438;
    v14 = *(a1 + 72);
    v17 = *(a1 + 80);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    [PEVideoTrimBurnInUtility _duplicateAsset:v11 withNewRenderURL:v12 asShotCompositionController:v9 completion:v13];

    goto LABEL_10;
  }

  (*(*(a1 + 80) + 16))();
LABEL_11:
}

void __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke_60(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [a1[4] setCompletedUnitCount:9];
  if (v5)
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEFAULT, "PEVideoTrimBurnInUtility requesting content editing input", buf, 2u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke_61;
    v8[3] = &unk_279A31410;
    v9 = a1[4];
    v13 = a1[7];
    v10 = a1[5];
    v11 = a1[6];
    v12 = v5;
    [PEVideoTrimBurnInUtility _contentEditingInputFor:v12 completion:v8];
  }

  else
  {
    (*(a1[7] + 2))();
  }
}

void __137__PEVideoTrimBurnInUtility_burnInTrimToNewAsset_compositionController_asShotCompositionController_cinematographyScript_queue_completion___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setCompletedUnitCount:10];
  if (v5)
  {
    v17 = 0;
    v7 = [PESerializationUtility editSourceForContentEditingInput:v5 error:&v17];
    v8 = v17;
    if (v7)
    {
      v9 = *(a1 + 40);
      v10 = [v9 trimAdjustmentController];
      v11 = *(a1 + 48);
      v16 = 0;
      v12 = [PEVideoTrimBurnInUtility _compositionControllerWithNormalizedTemporalAdjustmentsForBurnedInTrim:v9 trimController:v10 cinematographyScript:v11 error:&v16];
      v13 = v16;

      if (v12)
      {
        v14 = [v7 source];
        [v12 setSource:v14 mediaType:{objc_msgSend(v7, "mediaType")}];

        v15 = objc_opt_new();
        [v15 setAsset:*(a1 + 56)];
        [v15 setCompositionController:v12];
        [v15 setContentEditingInput:v5];
        (*(*(a1 + 64) + 16))();
      }

      else
      {
        (*(*(a1 + 64) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

@end