@interface PESerializationUtility
+ (BOOL)adjustmentDataIsSupported:(id)supported;
+ (id)compositionControllerForContentEditingInput:(id)input asShot:(BOOL)shot error:(id *)error;
+ (id)compositionControllerForContentEditingInput:(id)input asShot:(BOOL)shot source:(id)source error:(id *)error;
+ (id)contentEditingOutputForContentEditingInput:(id)input compositionController:(id)controller asset:(id)asset async:(BOOL)async onlyChangingOriginalChoice:(BOOL)choice;
+ (id)editSourceForContentEditingInput:(id)input useRawDisplaySizeImage:(BOOL)image useEmbeddedPreview:(BOOL)preview error:(id *)error;
+ (id)exportCompositionController:(id)controller forContentEditingOutput:(id)output settings:(id)settings completionQueue:(id)queue completion:(id)completion;
+ (int64_t)_playbackStyleForAutoLoopController:(id)controller;
+ (unsigned)_playbackVariationForAutoLoopController:(id)controller;
@end

@implementation PESerializationUtility

+ (unsigned)_playbackVariationForAutoLoopController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy enabled])
  {
    flavor = [controllerCopy flavor];
    v5 = PIAutoLoopFlavorFromString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)_playbackStyleForAutoLoopController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy enabled])
  {
    flavor = [controllerCopy flavor];
    PIAutoLoopFlavorFromString();

    if (PIAutoLoopFlavorProducesOnlyVideo())
    {
      v5 = 5;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

+ (id)exportCompositionController:(id)controller forContentEditingOutput:(id)output settings:(id)settings completionQueue:(id)queue completion:(id)completion
{
  controllerCopy = controller;
  outputCopy = output;
  settingsCopy = settings;
  queueCopy = queue;
  completionCopy = completion;
  if (outputCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"contentEditingOutput != nil"}];

    if (controllerCopy)
    {
LABEL_3:
      if (settingsCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:480 description:{@"Invalid parameter not satisfying: %@", @"compositionController != nil"}];

  if (settingsCopy)
  {
LABEL_4:
    if (queueCopy)
    {
      goto LABEL_5;
    }

LABEL_41:
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"completionQueue != nil"}];

    if (completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_40:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:481 description:{@"Invalid parameter not satisfying: %@", @"settings != nil"}];

  if (!queueCopy)
  {
    goto LABEL_41;
  }

LABEL_5:
  if (completionCopy)
  {
    goto LABEL_6;
  }

LABEL_42:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];

LABEL_6:
  v62 = PLPhotoEditGetLog();
  v18 = os_signpost_id_generate(v62);
  renderedContentURL = [outputCopy renderedContentURL];
  if (renderedContentURL)
  {
  }

  else if (([outputCopy isAsyncAdjustment] & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__PESerializationUtility_exportCompositionController_forContentEditingOutput_settings_completionQueue_completion___block_invoke;
    block[3] = &unk_279A31028;
    v76 = completionCopy;
    dispatch_async(queueCopy, block);
    v50 = 0;

    goto LABEL_35;
  }

  v20 = MEMORY[0x277D3A938];
  composition = [controllerCopy composition];
  v61 = [v20 validatedCompositionCopyForComposition:composition mediaType:{objc_msgSend(controllerCopy, "mediaType")}];

  LODWORD(composition) = [outputCopy isAsyncAdjustment];
  v22 = PLPhotoEditGetLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  v59 = settingsCopy;
  v60 = queueCopy;
  if (!composition)
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v22, OS_LOG_TYPE_DEFAULT, "Exporting image for sync adjustment", buf, 2u);
    }

    v25 = objc_opt_new();
    v26 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:0];
    [v25 setPriority:v26];

    renderedContentURL2 = [outputCopy renderedContentURL];
    [v25 setPrimaryURL:renderedContentURL2];

    renderedVideoComplementContentURL = [outputCopy renderedVideoComplementContentURL];
    [v25 setVideoComplementURL:renderedVideoComplementContentURL];

    renderedVideoPosterURL = [outputCopy renderedVideoPosterURL];
    [v25 setVideoPosterFrameURL:renderedVideoPosterURL];

    [v25 setApplyVideoOrientationAsMetadata:{objc_msgSend(settingsCopy, "applyVideoOrientationAsMetadata")}];
    [v25 setExportSidecarData:1];
    brushStrokeHistory = [controllerCopy brushStrokeHistory];
    [v25 setBrushStrokeHistory:brushStrokeHistory];

    autoLoopAdjustmentController = [controllerCopy autoLoopAdjustmentController];
    if (![autoLoopAdjustmentController enabled])
    {
      goto LABEL_30;
    }

    flavor = [autoLoopAdjustmentController flavor];
    PIAutoLoopFlavorFromString();
    v33 = PIAutoLoopFlavorProducesOnlyVideo();

    if (!v33)
    {
      goto LABEL_30;
    }

    v34 = MEMORY[0x277D3B508];
    renderedVideoPosterURL2 = [outputCopy renderedVideoPosterURL];
    pathExtension = [renderedVideoPosterURL2 pathExtension];
    v37 = [v34 typeWithFilenameExtension:pathExtension];

    if ([v37 conformsToType:*MEMORY[0x277CE1DC0]])
    {
      v38 = MEMORY[0x277CE62F8];
    }

    else
    {
      if (![v37 conformsToType:*MEMORY[0x277CE1D90]])
      {
LABEL_29:

LABEL_30:
        v40 = completionCopy;
        v51 = v62;
        v52 = v51;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E6E9000, v52, OS_SIGNPOST_INTERVAL_BEGIN, v18, "LeavingEditRender-Sync", " enableTelemetry=YES ", buf, 2u);
        }

        v49 = objc_alloc_init(MEMORY[0x277D3A878]);
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __114__PESerializationUtility_exportCompositionController_forContentEditingOutput_settings_completionQueue_completion___block_invoke_138;
        v63[3] = &unk_279A30A58;
        v46 = &v64;
        v64 = v52;
        v66[1] = v18;
        v47 = &v65;
        v65 = outputCopy;
        v48 = v66;
        v66[0] = v40;
        v50 = [v49 exportComposition:v61 options:v25 completionQueue:v60 completion:v63];
        goto LABEL_34;
      }

      v38 = MEMORY[0x277CE6300];
    }

    [v25 setVideoCodecType:*v38];
    goto LABEL_29;
  }

  if (v23)
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v22, OS_LOG_TYPE_DEFAULT, "Exporting image for async adjustment", buf, 2u);
  }

  mediaType = [outputCopy mediaType];
  if (mediaType == 2)
  {
    [outputCopy renderedVideoPosterURL];
  }

  else
  {
    [outputCopy renderedPreviewContentURL];
  }
  v39 = ;
  v40 = completionCopy;
  v25 = objc_opt_new();
  v41 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:1];
  [v25 setPriority:v41];

  scalePolicy = [v59 scalePolicy];
  [v25 setScalePolicy:scalePolicy];

  [v25 setEnableHDR:mediaType != 2];
  [v25 setExportSidecarData:1];
  brushStrokeHistory2 = [controllerCopy brushStrokeHistory];
  [v25 setBrushStrokeHistory:brushStrokeHistory2];

  v44 = v62;
  v45 = v44;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v18, "LeavingEditRender-Async", " enableTelemetry=YES ", buf, 2u);
  }

  autoLoopAdjustmentController = objc_alloc_init(MEMORY[0x277D3A878]);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __114__PESerializationUtility_exportCompositionController_forContentEditingOutput_settings_completionQueue_completion___block_invoke_134;
  v67[3] = &unk_279A30A30;
  v46 = &v68;
  v68 = v45;
  v73 = v18;
  v47 = &v69;
  v48 = &v70;
  v69 = outputCopy;
  v70 = v39;
  v71 = v60;
  v72 = v40;
  v49 = v39;
  [autoLoopAdjustmentController exportImageToURL:v49 composition:v61 options:v25 completion:v67];

  v50 = 0;
LABEL_34:

  settingsCopy = v59;
  queueCopy = v60;
  completionCopy = v40;

LABEL_35:

  return v50;
}

void __114__PESerializationUtility_exportCompositionController_forContentEditingOutput_settings_completionQueue_completion___block_invoke_134(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 72);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v5, OS_SIGNPOST_INTERVAL_END, v6, "LeavingEditRender-Async", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = 0;
  v7 = [v3 result:&v19];
  v8 = v19;
  if (v7)
  {
    v9 = [v7 sidecarDataURL];
    [*(a1 + 40) setAdjustmentSecondaryDataURL:v9];

    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_DEFAULT, "Exported image to: %@", buf, 0xCu);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__PESerializationUtility_exportCompositionController_forContentEditingOutput_settings_completionQueue_completion___block_invoke_135;
  v15[3] = &unk_279A30A08;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v18 = v7 != 0;
  v16 = v8;
  v17 = v13;
  v14 = v8;
  dispatch_async(v12, v15);
}

void __114__PESerializationUtility_exportCompositionController_forContentEditingOutput_settings_completionQueue_completion___block_invoke_138(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v5, OS_SIGNPOST_INTERVAL_END, v6, "LeavingEditRender-Sync", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = 0;
  v7 = [v3 result:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [v7 sidecarDataURL];
    [*(a1 + 40) setAdjustmentSecondaryDataURL:v9];
  }

  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v7)
    {
      v11 = @"YES";
    }

    *buf = 138412290;
    v14 = v11;
    _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_DEFAULT, "Synchronous image export complete with success: %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
}

+ (id)contentEditingOutputForContentEditingInput:(id)input compositionController:(id)controller asset:(id)asset async:(BOOL)async onlyChangingOriginalChoice:(BOOL)choice
{
  choiceCopy = choice;
  asyncCopy = async;
  v81 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  controllerCopy = controller;
  assetCopy = asset;
  if (inputCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }

LABEL_45:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"compositionController != nil"}];

    if (assetCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_46;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"contentEditingInput != nil"}];

  if (!controllerCopy)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (assetCopy)
  {
    goto LABEL_4;
  }

LABEL_46:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:388 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

LABEL_4:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = assetCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  isLivePhoto = [assetCopy isLivePhoto];
  v19 = objc_alloc_init(MEMORY[0x277CD9860]);
  v20 = v19;
  v74 = v19;
  if (choiceCopy)
  {
    [v19 setOnlyChangingOriginalChoice:1];
  }

  else
  {
    [v19 setAsyncAdjustment:asyncCopy];
    uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
    if (uniformTypeIdentifier)
    {
      v22 = [MEMORY[0x277CE1CB8] typeWithIdentifier:uniformTypeIdentifier];
      v23 = [v22 conformsToType:*MEMORY[0x277CE1F10]];
    }

    else
    {
      v23 = 0;
    }

    v20 = v74;
    [v74 setPreferHEICForRenderedImages:{v23 | (objc_msgSend(v17, "mediaSubtypes") >> 23) & 1}];
    if (isLivePhoto)
    {
      autoLoopAdjustmentController = [controllerCopy autoLoopAdjustmentController];
      v20 = v74;
      [v74 setPlaybackStyle:{+[PESerializationUtility _playbackStyleForAutoLoopController:](PESerializationUtility, "_playbackStyleForAutoLoopController:", autoLoopAdjustmentController)}];
    }
  }

  v25 = [objc_alloc(MEMORY[0x277CD9858]) initWithContentEditingInput:inputCopy withOptions:v20];
  v75 = controllerCopy;
  if (!choiceCopy)
  {
    v72 = v17;
    v26 = inputCopy;
    if (v17)
    {
      exifOrientation = [v17 exifOrientation];
    }

    else
    {
      exifOrientation = 1;
    }

    v28 = MEMORY[0x277D3AD10];
    pixelWidth = [assetCopy pixelWidth];
    pixelHeight = [assetCopy pixelHeight];
    [assetCopy duration];
    v31 = [v28 exportPropertiesWithImageWidth:pixelWidth imageHeight:pixelHeight exifOrientation:exifOrientation duration:?];
    v32 = objc_opt_new();
    v78 = 0;
    v79 = 0;
    v33 = [v32 dataFromCompositionController:v75 outFormatIdentifier:&v79 outFormatVersion:&v78 exportProperties:v31];
    v34 = v79;
    v35 = v78;

    v36 = [objc_alloc(MEMORY[0x277CD97A0]) initWithFormatIdentifier:v34 formatVersion:v35 data:v33];
    [v25 setAdjustmentData:v36];

    inputCopy = v26;
    originalAdjustmentData = [v26 originalAdjustmentData];
    if (originalAdjustmentData)
    {
      v38 = originalAdjustmentData;
      adjustmentData = [v26 adjustmentData];

      if (!adjustmentData)
      {
        originalAdjustmentData2 = [v26 originalAdjustmentData];
        adjustmentRenderTypes = [originalAdjustmentData2 adjustmentRenderTypes];
        adjustmentData2 = [v25 adjustmentData];
        [adjustmentData2 setAdjustmentRenderTypes:adjustmentRenderTypes];
      }
    }

    controllerCopy = v75;
    v17 = v72;
  }

  if (isLivePhoto)
  {
    autoLoopAdjustmentController2 = [controllerCopy autoLoopAdjustmentController];
    v44 = [PESerializationUtility _playbackVariationForAutoLoopController:autoLoopAdjustmentController2];

    controllerCopy = v75;
    if (v44 != [assetCopy playbackVariation])
    {
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      [v25 setPlaybackVariation:v45];
    }
  }

  if ([v25 isAsyncAdjustment])
  {
    v46 = objc_alloc(MEMORY[0x277D2CFB0]);
    composition = [controllerCopy composition];
    v48 = [v46 initWithComposition:composition];

    [v48 setName:@"+[PESerializationUtility contentEditingOutputForContentEditingInput:]-Geometry"];
    v77 = 0;
    v49 = [v48 submitSynchronous:&v77];
    v50 = v77;
    geometry = [v49 geometry];

    v71 = v50;
    if (geometry)
    {
      pixelWidth2 = [geometry size];
      pixelHeight2 = v53;
      controllerCopy = v75;
    }

    else
    {
      v55 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = v50;
        _os_log_impl(&dword_25E6E9000, v55, OS_LOG_TYPE_DEFAULT, "Failed to request geometry with error: %@", &buf, 0xCu);
      }

      pixelWidth2 = [assetCopy pixelWidth];
      pixelHeight2 = [assetCopy pixelHeight];
      controllerCopy = v75;
      if ((pixelHeight2 | pixelWidth2) < 0)
      {
        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
        [currentHandler4 handleFailureInFunction:v70 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];

        controllerCopy = v75;
      }
    }

    [v25 setFullSizeRenderWidth:pixelWidth2];
    [v25 setFullSizeRenderHeight:pixelHeight2];
    if ([controllerCopy mediaType] == 2)
    {
      v73 = v17;
      v56 = inputCopy;
      v57 = objc_alloc(MEMORY[0x277D2D030]);
      composition2 = [controllerCopy composition];
      v59 = [v57 initWithComposition:composition2];

      [v59 setName:@"+[PESerializationUtility contentEditingOutputForContentEditingInput:]-VideoAttributes"];
      v76 = 0;
      v60 = [v59 submitSynchronous:&v76];
      v61 = v76;
      videoAttributes = [v60 videoAttributes];

      if (videoAttributes)
      {
        [videoAttributes duration];
        [v25 setFullSizeRenderDuration:CMTimeGetSeconds(&buf)];
        controllerCopy = v75;
      }

      else
      {
        v63 = v61;
        v64 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v63;
          _os_log_impl(&dword_25E6E9000, v64, OS_LOG_TYPE_DEFAULT, "Failed to request video attributes with error: %@", &buf, 0xCu);
        }

        controllerCopy = v75;
        v61 = v63;
      }

      inputCopy = v56;
      v17 = v73;
    }
  }

  return v25;
}

+ (BOOL)adjustmentDataIsSupported:(id)supported
{
  v16 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  v4 = objc_opt_new();
  data = [supportedCopy data];
  formatIdentifier = [supportedCopy formatIdentifier];
  formatVersion = [supportedCopy formatVersion];

  v13 = 0;
  v8 = [v4 loadCompositionFrom:data formatIdentifier:formatIdentifier formatVersion:formatVersion sidecarData:0 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_DEFAULT, "PESerializationUtility adjustment data is not supported: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v8 != 0;
  }

  return v11;
}

+ (id)compositionControllerForContentEditingInput:(id)input asShot:(BOOL)shot source:(id)source error:(id *)error
{
  shotCopy = shot;
  v115 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  sourceCopy = source;
  v13 = sourceCopy;
  if (inputCopy)
  {
    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"contentEditingInput != nil"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"source != nil"}];

LABEL_3:
  if (!error)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  originalAdjustmentData = [inputCopy originalAdjustmentData];
  adjustmentData = [inputCopy adjustmentData];
  v96 = originalAdjustmentData;
  v97 = v13;
  v95 = adjustmentData;
  if (shotCopy)
  {
    if (originalAdjustmentData)
    {
      v16 = objc_opt_new();
      data = [originalAdjustmentData data];
      formatIdentifier = [originalAdjustmentData formatIdentifier];
      formatVersion = [originalAdjustmentData formatVersion];
      v112 = 0;
      composition3 = [v16 loadCompositionFrom:data formatIdentifier:formatIdentifier formatVersion:formatVersion sidecarData:0 error:&v112];
      v21 = v112;

      if (!v21)
      {
        v98 = 0;
        v13 = v97;
        goto LABEL_38;
      }

      v22 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v114 = v21;
        _os_log_impl(&dword_25E6E9000, v22, OS_LOG_TYPE_ERROR, "PESerializationUtility persistence manager deserialized with error: %@", buf, 0xCu);
      }

      v98 = 0;
LABEL_19:
      v13 = v97;
LABEL_37:

LABEL_38:
      newComposition = composition3;
      if (composition3)
      {
LABEL_40:
        v53 = [MEMORY[0x277D3A938] newCompositionControllerWithComposition:newComposition];
        adjustmentConstants = [v53 adjustmentConstants];
        source = [v13 source];
        [v53 setSource:source mediaType:{objc_msgSend(v13, "mediaType")}];

        if ([inputCopy mediaType] == 2 && (objc_msgSend(inputCopy, "mediaSubtypes") & 0x20000) != 0)
        {
          slomoAdjustmentController = [v53 slomoAdjustmentController];

          if (!slomoAdjustmentController)
          {
            pISlomoAdjustmentKey = [adjustmentConstants PISlomoAdjustmentKey];
            v107[0] = MEMORY[0x277D85DD0];
            v107[1] = 3221225472;
            v107[2] = __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke;
            v107[3] = &unk_279A30940;
            v108 = inputCopy;
            [v53 modifyAdjustmentWithKey:pISlomoAdjustmentKey modificationBlock:v107];
          }
        }

        v94 = inputCopy;
        depthAdjustmentController = [v53 depthAdjustmentController];
        v59 = depthAdjustmentController;
        if (depthAdjustmentController)
        {
          capturedFocusRect = [depthAdjustmentController capturedFocusRect];
          focusRect = [v59 focusRect];

          if (capturedFocusRect && !focusRect)
          {
            v62 = *MEMORY[0x277D3AA20];
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke_2;
            v105[3] = &unk_279A30968;
            v106 = capturedFocusRect;
            [v53 modifyAdjustmentWithKey:v62 modificationBlock:v105];
          }
        }

        v93 = newComposition;
        semanticStyleAdjustmentController = [v53 semanticStyleAdjustmentController];

        if (!semanticStyleAdjustmentController)
        {
          v64 = dispatch_group_create();
          dispatch_group_enter(v64);
          v65 = objc_alloc(MEMORY[0x277D3A970]);
          composition = [v53 composition];
          v67 = [v65 initWithComposition:composition];

          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke_3;
          v102[3] = &unk_279A309B8;
          v103 = v53;
          v104 = v64;
          v68 = v64;
          [v67 submit:v102];
          dispatch_group_wait(v68, 0xFFFFFFFFFFFFFFFFLL);
        }

        v69 = MEMORY[0x277D3A938];
        composition2 = [v53 composition];
        v71 = [v69 imagePropertiesRequestWithComposition:composition2];

        [v71 setName:@"PAEditSupport-compositionControllerDeserialization"];
        v101 = 0;
        v72 = [v71 submitSynchronous:&v101];
        v73 = v101;
        properties = [v72 properties];

        v75 = adjustmentConstants;
        if (!properties)
        {
          v84 = v73;
          v51 = 0;
          *error = v73;
LABEL_66:

          v21 = v93;
          inputCopy = v94;
          v28 = v98;
          goto LABEL_67;
        }

        rawProperties = [properties rawProperties];
        if (rawProperties)
        {
          rawAdjustmentController = [v53 rawAdjustmentController];

          if (rawAdjustmentController)
          {
            rawAdjustmentController2 = [v53 rawAdjustmentController];
            inputDecoderVersion = [rawAdjustmentController2 inputDecoderVersion];

            availableDecoderVersions = [rawProperties availableDecoderVersions];
            v81 = [availableDecoderVersions containsObject:inputDecoderVersion];

            adjustmentConstants = v75;
            if (v81)
            {
              goto LABEL_59;
            }
          }

          pIRawAdjustmentKey = [adjustmentConstants PIRawAdjustmentKey];
          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke_95;
          v99[3] = &unk_279A309E0;
          v100 = rawProperties;
          [v53 modifyAdjustmentWithKey:pIRawAdjustmentKey modificationBlock:v99];

          pIRawAdjustmentKey2 = v100;
        }

        else
        {
          pIRawAdjustmentKey2 = [adjustmentConstants PIRawAdjustmentKey];
          [v53 removeAdjustmentWithKey:pIRawAdjustmentKey2];
        }

LABEL_59:
        orientation = [properties orientation];
        if ((NUOrientationIsValid() & 1) == 0)
        {
          v86 = PLPhotoEditGetLog();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v114) = orientation;
            _os_log_impl(&dword_25E6E9000, v86, OS_LOG_TYPE_ERROR, "PESerializationUtility image orientation from the image properties is invalid: %d", buf, 8u);
          }

          orientation = 1;
        }

        [MEMORY[0x277D3AC20] compositionController:v53 setInputOrientation:orientation];
        brushStrokeHistory = [v98 brushStrokeHistory];

        v13 = v97;
        if (brushStrokeHistory)
        {
          brushStrokeHistory2 = [v98 brushStrokeHistory];
          [v53 setBrushStrokeHistory:brushStrokeHistory2];
        }

        v51 = v53;

        goto LABEL_66;
      }

LABEL_39:
      newComposition = [MEMORY[0x277D3A938] newComposition];
      goto LABEL_40;
    }

    if (adjustmentData)
    {
      v33 = adjustmentData;
      v34 = objc_alloc(MEMORY[0x277D3A870]);
      newComposition2 = [MEMORY[0x277D3A938] newComposition];
      v21 = [v34 initWithComposition:newComposition2];

      v36 = objc_opt_new();
      data2 = [v33 data];
      formatIdentifier2 = [v33 formatIdentifier];
      formatVersion2 = [v33 formatVersion];
      v111 = 0;
      v40 = [v36 loadCompositionFrom:data2 formatIdentifier:formatIdentifier2 formatVersion:formatVersion2 sidecarData:0 error:&v111];
      v22 = v111;

      if (v22)
      {
        v41 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v114 = v22;
          _os_log_impl(&dword_25E6E9000, v41, OS_LOG_TYPE_ERROR, "PESerializationUtility persistence manager deserialized with error: %@", buf, 0xCu);
        }
      }

      if (v40)
      {
        v42 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:v40];
        v43 = objc_alloc(MEMORY[0x277D3B458]);
        fullSizeImageURL = [inputCopy fullSizeImageURL];
        v45 = [v43 initWithMediaURL:fullSizeImageURL timeZoneLookup:0];

        livePhoto = [inputCopy livePhoto];
        v47 = [PESupport repairedAsShotCompositionController:v21 forCurrentCompositionController:v42 isLivePhoto:livePhoto != 0 metadata:v45];

        composition3 = [v47 composition];

        v21 = v47;
      }

      else
      {
        composition3 = 0;
      }

      v13 = v97;

      v98 = 0;
      goto LABEL_37;
    }

LABEL_27:
    v98 = 0;
    goto LABEL_39;
  }

  if (adjustmentData)
  {
    v23 = adjustmentData;
  }

  else
  {
    v23 = originalAdjustmentData;
  }

  v24 = v23;
  if (!v24)
  {
    goto LABEL_27;
  }

  v21 = v24;
  adjustmentSecondaryDataURL = [inputCopy adjustmentSecondaryDataURL];

  if (!adjustmentSecondaryDataURL)
  {
LABEL_18:
    v29 = objc_opt_new();
    data3 = [v21 data];
    formatIdentifier3 = [v21 formatIdentifier];
    formatVersion3 = [v21 formatVersion];
    v109 = 0;
    v98 = adjustmentSecondaryDataURL;
    composition3 = [v29 loadCompositionFrom:data3 formatIdentifier:formatIdentifier3 formatVersion:formatVersion3 sidecarData:adjustmentSecondaryDataURL error:&v109];
    v22 = v109;

    if (!composition3)
    {
      v48 = PLPhotoEditGetLog();
      v13 = v97;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v114 = v22;
        _os_log_impl(&dword_25E6E9000, v48, OS_LOG_TYPE_ERROR, "PESerializationUtility persistence manager deserialized with error: %@", buf, 0xCu);
      }

      composition3 = 0;
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  v26 = MEMORY[0x277D3A8A8];
  adjustmentSecondaryDataURL2 = [inputCopy adjustmentSecondaryDataURL];
  v110 = 0;
  adjustmentSecondaryDataURL = [v26 loadFromURL:adjustmentSecondaryDataURL2 error:&v110];
  v28 = v110;

  if (adjustmentSecondaryDataURL)
  {

    goto LABEL_18;
  }

  v49 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v114 = v28;
    _os_log_impl(&dword_25E6E9000, v49, OS_LOG_TYPE_ERROR, "PESerializationUtility sidecar data could not be loaded: %@", buf, 0xCu);
  }

  v50 = v28;
  v51 = 0;
  *error = v28;
LABEL_67:

  return v51;
}

void __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3B518];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 audiovisualAsset];
  v6 = [v2 defaultSlowMotionAdjustmentsForAsset:v5];

  memset(&v10, 0, sizeof(v10));
  if (v6)
  {
    [v6 slowMotionTimeRange];
  }

  *&v8.start.value = *&v10.start.value;
  v8.start.epoch = v10.start.epoch;
  [v4 setStartTime:&v8];
  v8 = v10;
  CMTimeRangeGetEnd(&v9, &v8);
  v8.start = v9;
  [v4 setEndTime:&v8];
  [v6 slowMotionRate];
  [v4 setRate:v7];
}

void __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v3 = [a2 result:&v14];
  v4 = v14;
  v5 = v4;
  if (v4)
  {
    if ([v4 code] != 9)
    {
      v6 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [v5 localizedDescription];
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&dword_25E6E9000, v6, OS_LOG_TYPE_ERROR, "PESerializationUtility error while running semantic style autocalc: %@", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  else if (v3)
  {
    v8 = [v3 allKeys];
    v9 = [v8 count];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *MEMORY[0x277D3AB10];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke_4;
      v12[3] = &unk_279A30990;
      v13 = v3;
      [v10 modifyAdjustmentWithKey:v11 modificationBlock:v12];
      v6 = v13;
LABEL_8:
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke_95(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3A938];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 rawAdjustmentWithRawImageProperties:v3];
  [v4 setFromAdjustment:v5];
}

+ (id)compositionControllerForContentEditingInput:(id)input asShot:(BOOL)shot error:(id *)error
{
  shotCopy = shot;
  inputCopy = input;
  v8 = [PESerializationUtility editSourceForContentEditingInput:inputCopy useRawDisplaySizeImage:0 useEmbeddedPreview:0 error:error];
  if (v8)
  {
    v9 = [PESerializationUtility compositionControllerForContentEditingInput:inputCopy asShot:shotCopy source:v8 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)editSourceForContentEditingInput:(id)input useRawDisplaySizeImage:(BOOL)image useEmbeddedPreview:(BOOL)preview error:(id *)error
{
  previewCopy = preview;
  imageCopy = image;
  v44[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (inputCopy)
  {
    if (error)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"contentEditingInput != nil"}];

    if (error)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PESerializationUtility.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

LABEL_3:
  mediaType = [inputCopy mediaType];
  if ((mediaType - 2) < 2)
  {
    videoURL = [inputCopy videoURL];
    if (!videoURL)
    {
      v23 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA068];
      v42 = @"Missing video URL";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v25 = v23;
      v26 = 2;
LABEL_20:
      *error = [v25 errorWithDomain:@"PESerializationUtilityErrorDomain" code:v26 userInfo:v24];

      v14 = 0;
      v21 = 0;
      goto LABEL_23;
    }

    v14 = videoURL;
    v21 = [objc_alloc(MEMORY[0x277D3AD98]) initWithVideoURL:videoURL];
  }

  else
  {
    if (mediaType)
    {
      if (mediaType != 1)
      {
        v21 = 0;
        goto LABEL_24;
      }

      fullSizeImageURL = [inputCopy fullSizeImageURL];
      if (fullSizeImageURL)
      {
        v14 = fullSizeImageURL;
        uniformTypeIdentifier = [inputCopy uniformTypeIdentifier];
        if (uniformTypeIdentifier && ([MEMORY[0x277CE1CB8] typeWithIdentifier:uniformTypeIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "conformsToType:", *MEMORY[0x277CE1E48]), v16, v17) && !imageCopy)
        {
          displaySizeImage = [inputCopy displaySizeImage];
          displaySizeImage2 = 0;
        }

        else
        {
          displaySizeImage2 = [inputCopy displaySizeImage];
        }

        v27 = [objc_alloc(MEMORY[0x277D3AD28]) initWithURL:v14 type:uniformTypeIdentifier image:displaySizeImage2 useEmbeddedPreview:previewCopy];
        livePhoto = [inputCopy livePhoto];
        v29 = livePhoto;
        if (livePhoto)
        {
          v30 = MEMORY[0x277CBEBC0];
          videoComplement = [livePhoto videoComplement];
          videoPath = [videoComplement videoPath];
          v33 = [v30 fileURLWithPath:videoPath];

          v34 = [objc_alloc(MEMORY[0x277D3AD98]) initWithVideoURL:v33];
          v21 = [objc_alloc(MEMORY[0x277D3ACB8]) initWithPhotoSource:v27 videoComplement:v34];
        }

        else
        {
          v21 = v27;
        }

        goto LABEL_23;
      }

      v35 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA068];
      v44[0] = @"Missing image URL";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v25 = v35;
      v26 = 1;
      goto LABEL_20;
    }

    v22 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA068];
    v40 = @"Unknown media type";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v22 errorWithDomain:@"PESerializationUtilityErrorDomain" code:0 userInfo:v14];
    *error = v21 = 0;
  }

LABEL_23:

LABEL_24:

  return v21;
}

@end