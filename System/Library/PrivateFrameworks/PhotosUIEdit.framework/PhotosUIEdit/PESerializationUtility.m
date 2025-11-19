@interface PESerializationUtility
+ (BOOL)adjustmentDataIsSupported:(id)a3;
+ (id)compositionControllerForContentEditingInput:(id)a3 asShot:(BOOL)a4 error:(id *)a5;
+ (id)compositionControllerForContentEditingInput:(id)a3 asShot:(BOOL)a4 source:(id)a5 error:(id *)a6;
+ (id)contentEditingOutputForContentEditingInput:(id)a3 compositionController:(id)a4 asset:(id)a5 async:(BOOL)a6 onlyChangingOriginalChoice:(BOOL)a7;
+ (id)editSourceForContentEditingInput:(id)a3 useRawDisplaySizeImage:(BOOL)a4 useEmbeddedPreview:(BOOL)a5 error:(id *)a6;
+ (id)exportCompositionController:(id)a3 forContentEditingOutput:(id)a4 settings:(id)a5 completionQueue:(id)a6 completion:(id)a7;
+ (int64_t)_playbackStyleForAutoLoopController:(id)a3;
+ (unsigned)_playbackVariationForAutoLoopController:(id)a3;
@end

@implementation PESerializationUtility

+ (unsigned)_playbackVariationForAutoLoopController:(id)a3
{
  v3 = a3;
  if ([v3 enabled])
  {
    v4 = [v3 flavor];
    v5 = PIAutoLoopFlavorFromString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)_playbackStyleForAutoLoopController:(id)a3
{
  v3 = a3;
  if ([v3 enabled])
  {
    v4 = [v3 flavor];
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

+ (id)exportCompositionController:(id)a3 forContentEditingOutput:(id)a4 settings:(id)a5 completionQueue:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v14)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = [MEMORY[0x277CCA890] currentHandler];
    [v54 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"contentEditingOutput != nil"}];

    if (v13)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v55 = [MEMORY[0x277CCA890] currentHandler];
  [v55 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:480 description:{@"Invalid parameter not satisfying: %@", @"compositionController != nil"}];

  if (v15)
  {
LABEL_4:
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_41:
    v57 = [MEMORY[0x277CCA890] currentHandler];
    [v57 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"completionQueue != nil"}];

    if (v17)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_40:
  v56 = [MEMORY[0x277CCA890] currentHandler];
  [v56 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:481 description:{@"Invalid parameter not satisfying: %@", @"settings != nil"}];

  if (!v16)
  {
    goto LABEL_41;
  }

LABEL_5:
  if (v17)
  {
    goto LABEL_6;
  }

LABEL_42:
  v58 = [MEMORY[0x277CCA890] currentHandler];
  [v58 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];

LABEL_6:
  v62 = PLPhotoEditGetLog();
  v18 = os_signpost_id_generate(v62);
  v19 = [v14 renderedContentURL];
  if (v19)
  {
  }

  else if (([v14 isAsyncAdjustment] & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__PESerializationUtility_exportCompositionController_forContentEditingOutput_settings_completionQueue_completion___block_invoke;
    block[3] = &unk_279A31028;
    v76 = v17;
    dispatch_async(v16, block);
    v50 = 0;

    goto LABEL_35;
  }

  v20 = MEMORY[0x277D3A938];
  v21 = [v13 composition];
  v61 = [v20 validatedCompositionCopyForComposition:v21 mediaType:{objc_msgSend(v13, "mediaType")}];

  LODWORD(v21) = [v14 isAsyncAdjustment];
  v22 = PLPhotoEditGetLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  v59 = v15;
  v60 = v16;
  if (!v21)
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v22, OS_LOG_TYPE_DEFAULT, "Exporting image for sync adjustment", buf, 2u);
    }

    v25 = objc_opt_new();
    v26 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:0];
    [v25 setPriority:v26];

    v27 = [v14 renderedContentURL];
    [v25 setPrimaryURL:v27];

    v28 = [v14 renderedVideoComplementContentURL];
    [v25 setVideoComplementURL:v28];

    v29 = [v14 renderedVideoPosterURL];
    [v25 setVideoPosterFrameURL:v29];

    [v25 setApplyVideoOrientationAsMetadata:{objc_msgSend(v15, "applyVideoOrientationAsMetadata")}];
    [v25 setExportSidecarData:1];
    v30 = [v13 brushStrokeHistory];
    [v25 setBrushStrokeHistory:v30];

    v31 = [v13 autoLoopAdjustmentController];
    if (![v31 enabled])
    {
      goto LABEL_30;
    }

    v32 = [v31 flavor];
    PIAutoLoopFlavorFromString();
    v33 = PIAutoLoopFlavorProducesOnlyVideo();

    if (!v33)
    {
      goto LABEL_30;
    }

    v34 = MEMORY[0x277D3B508];
    v35 = [v14 renderedVideoPosterURL];
    v36 = [v35 pathExtension];
    v37 = [v34 typeWithFilenameExtension:v36];

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
        v40 = v17;
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
        v65 = v14;
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

  v24 = [v14 mediaType];
  if (v24 == 2)
  {
    [v14 renderedVideoPosterURL];
  }

  else
  {
    [v14 renderedPreviewContentURL];
  }
  v39 = ;
  v40 = v17;
  v25 = objc_opt_new();
  v41 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:1];
  [v25 setPriority:v41];

  v42 = [v59 scalePolicy];
  [v25 setScalePolicy:v42];

  [v25 setEnableHDR:v24 != 2];
  [v25 setExportSidecarData:1];
  v43 = [v13 brushStrokeHistory];
  [v25 setBrushStrokeHistory:v43];

  v44 = v62;
  v45 = v44;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v18, "LeavingEditRender-Async", " enableTelemetry=YES ", buf, 2u);
  }

  v31 = objc_alloc_init(MEMORY[0x277D3A878]);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __114__PESerializationUtility_exportCompositionController_forContentEditingOutput_settings_completionQueue_completion___block_invoke_134;
  v67[3] = &unk_279A30A30;
  v46 = &v68;
  v68 = v45;
  v73 = v18;
  v47 = &v69;
  v48 = &v70;
  v69 = v14;
  v70 = v39;
  v71 = v60;
  v72 = v40;
  v49 = v39;
  [v31 exportImageToURL:v49 composition:v61 options:v25 completion:v67];

  v50 = 0;
LABEL_34:

  v15 = v59;
  v16 = v60;
  v17 = v40;

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

+ (id)contentEditingOutputForContentEditingInput:(id)a3 compositionController:(id)a4 asset:(id)a5 async:(BOOL)a6 onlyChangingOriginalChoice:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v81 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_45:
    v67 = [MEMORY[0x277CCA890] currentHandler];
    [v67 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"compositionController != nil"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_46;
  }

  v66 = [MEMORY[0x277CCA890] currentHandler];
  [v66 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"contentEditingInput != nil"}];

  if (!v14)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_46:
  v68 = [MEMORY[0x277CCA890] currentHandler];
  [v68 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:388 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

LABEL_4:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v15 isLivePhoto];
  v19 = objc_alloc_init(MEMORY[0x277CD9860]);
  v20 = v19;
  v74 = v19;
  if (v7)
  {
    [v19 setOnlyChangingOriginalChoice:1];
  }

  else
  {
    [v19 setAsyncAdjustment:v8];
    v21 = [v15 uniformTypeIdentifier];
    if (v21)
    {
      v22 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v21];
      v23 = [v22 conformsToType:*MEMORY[0x277CE1F10]];
    }

    else
    {
      v23 = 0;
    }

    v20 = v74;
    [v74 setPreferHEICForRenderedImages:{v23 | (objc_msgSend(v17, "mediaSubtypes") >> 23) & 1}];
    if (v18)
    {
      v24 = [v14 autoLoopAdjustmentController];
      v20 = v74;
      [v74 setPlaybackStyle:{+[PESerializationUtility _playbackStyleForAutoLoopController:](PESerializationUtility, "_playbackStyleForAutoLoopController:", v24)}];
    }
  }

  v25 = [objc_alloc(MEMORY[0x277CD9858]) initWithContentEditingInput:v13 withOptions:v20];
  v75 = v14;
  if (!v7)
  {
    v72 = v17;
    v26 = v13;
    if (v17)
    {
      v27 = [v17 exifOrientation];
    }

    else
    {
      v27 = 1;
    }

    v28 = MEMORY[0x277D3AD10];
    v29 = [v15 pixelWidth];
    v30 = [v15 pixelHeight];
    [v15 duration];
    v31 = [v28 exportPropertiesWithImageWidth:v29 imageHeight:v30 exifOrientation:v27 duration:?];
    v32 = objc_opt_new();
    v78 = 0;
    v79 = 0;
    v33 = [v32 dataFromCompositionController:v75 outFormatIdentifier:&v79 outFormatVersion:&v78 exportProperties:v31];
    v34 = v79;
    v35 = v78;

    v36 = [objc_alloc(MEMORY[0x277CD97A0]) initWithFormatIdentifier:v34 formatVersion:v35 data:v33];
    [v25 setAdjustmentData:v36];

    v13 = v26;
    v37 = [v26 originalAdjustmentData];
    if (v37)
    {
      v38 = v37;
      v39 = [v26 adjustmentData];

      if (!v39)
      {
        v40 = [v26 originalAdjustmentData];
        v41 = [v40 adjustmentRenderTypes];
        v42 = [v25 adjustmentData];
        [v42 setAdjustmentRenderTypes:v41];
      }
    }

    v14 = v75;
    v17 = v72;
  }

  if (v18)
  {
    v43 = [v14 autoLoopAdjustmentController];
    v44 = [PESerializationUtility _playbackVariationForAutoLoopController:v43];

    v14 = v75;
    if (v44 != [v15 playbackVariation])
    {
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      [v25 setPlaybackVariation:v45];
    }
  }

  if ([v25 isAsyncAdjustment])
  {
    v46 = objc_alloc(MEMORY[0x277D2CFB0]);
    v47 = [v14 composition];
    v48 = [v46 initWithComposition:v47];

    [v48 setName:@"+[PESerializationUtility contentEditingOutputForContentEditingInput:]-Geometry"];
    v77 = 0;
    v49 = [v48 submitSynchronous:&v77];
    v50 = v77;
    v51 = [v49 geometry];

    v71 = v50;
    if (v51)
    {
      v52 = [v51 size];
      v54 = v53;
      v14 = v75;
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

      v52 = [v15 pixelWidth];
      v54 = [v15 pixelHeight];
      v14 = v75;
      if ((v54 | v52) < 0)
      {
        v69 = [MEMORY[0x277CCA890] currentHandler];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
        [v69 handleFailureInFunction:v70 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];

        v14 = v75;
      }
    }

    [v25 setFullSizeRenderWidth:v52];
    [v25 setFullSizeRenderHeight:v54];
    if ([v14 mediaType] == 2)
    {
      v73 = v17;
      v56 = v13;
      v57 = objc_alloc(MEMORY[0x277D2D030]);
      v58 = [v14 composition];
      v59 = [v57 initWithComposition:v58];

      [v59 setName:@"+[PESerializationUtility contentEditingOutputForContentEditingInput:]-VideoAttributes"];
      v76 = 0;
      v60 = [v59 submitSynchronous:&v76];
      v61 = v76;
      v62 = [v60 videoAttributes];

      if (v62)
      {
        [v62 duration];
        [v25 setFullSizeRenderDuration:CMTimeGetSeconds(&buf)];
        v14 = v75;
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

        v14 = v75;
        v61 = v63;
      }

      v13 = v56;
      v17 = v73;
    }
  }

  return v25;
}

+ (BOOL)adjustmentDataIsSupported:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 data];
  v6 = [v3 formatIdentifier];
  v7 = [v3 formatVersion];

  v13 = 0;
  v8 = [v4 loadCompositionFrom:v5 formatIdentifier:v6 formatVersion:v7 sidecarData:0 error:&v13];
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

+ (id)compositionControllerForContentEditingInput:(id)a3 asShot:(BOOL)a4 source:(id)a5 error:(id *)a6
{
  v8 = a4;
  v115 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = [MEMORY[0x277CCA890] currentHandler];
    [v90 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"contentEditingInput != nil"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v91 = [MEMORY[0x277CCA890] currentHandler];
  [v91 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"source != nil"}];

LABEL_3:
  if (!a6)
  {
    v92 = [MEMORY[0x277CCA890] currentHandler];
    [v92 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v14 = [v11 originalAdjustmentData];
  v15 = [v11 adjustmentData];
  v96 = v14;
  v97 = v13;
  v95 = v15;
  if (v8)
  {
    if (v14)
    {
      v16 = objc_opt_new();
      v17 = [v14 data];
      v18 = [v14 formatIdentifier];
      v19 = [v14 formatVersion];
      v112 = 0;
      v20 = [v16 loadCompositionFrom:v17 formatIdentifier:v18 formatVersion:v19 sidecarData:0 error:&v112];
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
      v52 = v20;
      if (v20)
      {
LABEL_40:
        v53 = [MEMORY[0x277D3A938] newCompositionControllerWithComposition:v52];
        v54 = [v53 adjustmentConstants];
        v55 = [v13 source];
        [v53 setSource:v55 mediaType:{objc_msgSend(v13, "mediaType")}];

        if ([v11 mediaType] == 2 && (objc_msgSend(v11, "mediaSubtypes") & 0x20000) != 0)
        {
          v56 = [v53 slomoAdjustmentController];

          if (!v56)
          {
            v57 = [v54 PISlomoAdjustmentKey];
            v107[0] = MEMORY[0x277D85DD0];
            v107[1] = 3221225472;
            v107[2] = __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke;
            v107[3] = &unk_279A30940;
            v108 = v11;
            [v53 modifyAdjustmentWithKey:v57 modificationBlock:v107];
          }
        }

        v94 = v11;
        v58 = [v53 depthAdjustmentController];
        v59 = v58;
        if (v58)
        {
          v60 = [v58 capturedFocusRect];
          v61 = [v59 focusRect];

          if (v60 && !v61)
          {
            v62 = *MEMORY[0x277D3AA20];
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke_2;
            v105[3] = &unk_279A30968;
            v106 = v60;
            [v53 modifyAdjustmentWithKey:v62 modificationBlock:v105];
          }
        }

        v93 = v52;
        v63 = [v53 semanticStyleAdjustmentController];

        if (!v63)
        {
          v64 = dispatch_group_create();
          dispatch_group_enter(v64);
          v65 = objc_alloc(MEMORY[0x277D3A970]);
          v66 = [v53 composition];
          v67 = [v65 initWithComposition:v66];

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
        v70 = [v53 composition];
        v71 = [v69 imagePropertiesRequestWithComposition:v70];

        [v71 setName:@"PAEditSupport-compositionControllerDeserialization"];
        v101 = 0;
        v72 = [v71 submitSynchronous:&v101];
        v73 = v101;
        v74 = [v72 properties];

        v75 = v54;
        if (!v74)
        {
          v84 = v73;
          v51 = 0;
          *a6 = v73;
LABEL_66:

          v21 = v93;
          v11 = v94;
          v28 = v98;
          goto LABEL_67;
        }

        v76 = [v74 rawProperties];
        if (v76)
        {
          v77 = [v53 rawAdjustmentController];

          if (v77)
          {
            v78 = [v53 rawAdjustmentController];
            v79 = [v78 inputDecoderVersion];

            v80 = [v76 availableDecoderVersions];
            v81 = [v80 containsObject:v79];

            v54 = v75;
            if (v81)
            {
              goto LABEL_59;
            }
          }

          v82 = [v54 PIRawAdjustmentKey];
          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = __90__PESerializationUtility_compositionControllerForContentEditingInput_asShot_source_error___block_invoke_95;
          v99[3] = &unk_279A309E0;
          v100 = v76;
          [v53 modifyAdjustmentWithKey:v82 modificationBlock:v99];

          v83 = v100;
        }

        else
        {
          v83 = [v54 PIRawAdjustmentKey];
          [v53 removeAdjustmentWithKey:v83];
        }

LABEL_59:
        v85 = [v74 orientation];
        if ((NUOrientationIsValid() & 1) == 0)
        {
          v86 = PLPhotoEditGetLog();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v114) = v85;
            _os_log_impl(&dword_25E6E9000, v86, OS_LOG_TYPE_ERROR, "PESerializationUtility image orientation from the image properties is invalid: %d", buf, 8u);
          }

          v85 = 1;
        }

        [MEMORY[0x277D3AC20] compositionController:v53 setInputOrientation:v85];
        v87 = [v98 brushStrokeHistory];

        v13 = v97;
        if (v87)
        {
          v88 = [v98 brushStrokeHistory];
          [v53 setBrushStrokeHistory:v88];
        }

        v51 = v53;

        goto LABEL_66;
      }

LABEL_39:
      v52 = [MEMORY[0x277D3A938] newComposition];
      goto LABEL_40;
    }

    if (v15)
    {
      v33 = v15;
      v34 = objc_alloc(MEMORY[0x277D3A870]);
      v35 = [MEMORY[0x277D3A938] newComposition];
      v21 = [v34 initWithComposition:v35];

      v36 = objc_opt_new();
      v37 = [v33 data];
      v38 = [v33 formatIdentifier];
      v39 = [v33 formatVersion];
      v111 = 0;
      v40 = [v36 loadCompositionFrom:v37 formatIdentifier:v38 formatVersion:v39 sidecarData:0 error:&v111];
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
        v44 = [v11 fullSizeImageURL];
        v45 = [v43 initWithMediaURL:v44 timeZoneLookup:0];

        v46 = [v11 livePhoto];
        v47 = [PESupport repairedAsShotCompositionController:v21 forCurrentCompositionController:v42 isLivePhoto:v46 != 0 metadata:v45];

        v20 = [v47 composition];

        v21 = v47;
      }

      else
      {
        v20 = 0;
      }

      v13 = v97;

      v98 = 0;
      goto LABEL_37;
    }

LABEL_27:
    v98 = 0;
    goto LABEL_39;
  }

  if (v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = v14;
  }

  v24 = v23;
  if (!v24)
  {
    goto LABEL_27;
  }

  v21 = v24;
  v25 = [v11 adjustmentSecondaryDataURL];

  if (!v25)
  {
LABEL_18:
    v29 = objc_opt_new();
    v30 = [v21 data];
    v31 = [v21 formatIdentifier];
    v32 = [v21 formatVersion];
    v109 = 0;
    v98 = v25;
    v20 = [v29 loadCompositionFrom:v30 formatIdentifier:v31 formatVersion:v32 sidecarData:v25 error:&v109];
    v22 = v109;

    if (!v20)
    {
      v48 = PLPhotoEditGetLog();
      v13 = v97;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v114 = v22;
        _os_log_impl(&dword_25E6E9000, v48, OS_LOG_TYPE_ERROR, "PESerializationUtility persistence manager deserialized with error: %@", buf, 0xCu);
      }

      v20 = 0;
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  v26 = MEMORY[0x277D3A8A8];
  v27 = [v11 adjustmentSecondaryDataURL];
  v110 = 0;
  v25 = [v26 loadFromURL:v27 error:&v110];
  v28 = v110;

  if (v25)
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
  *a6 = v28;
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

+ (id)compositionControllerForContentEditingInput:(id)a3 asShot:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [PESerializationUtility editSourceForContentEditingInput:v7 useRawDisplaySizeImage:0 useEmbeddedPreview:0 error:a5];
  if (v8)
  {
    v9 = [PESerializationUtility compositionControllerForContentEditingInput:v7 asShot:v6 source:v8 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)editSourceForContentEditingInput:(id)a3 useRawDisplaySizeImage:(BOOL)a4 useEmbeddedPreview:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v44[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (v11)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"contentEditingInput != nil"}];

    if (a6)
    {
      goto LABEL_3;
    }
  }

  v38 = [MEMORY[0x277CCA890] currentHandler];
  [v38 handleFailureInMethod:a2 object:a1 file:@"PESerializationUtility.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

LABEL_3:
  v12 = [v11 mediaType];
  if ((v12 - 2) < 2)
  {
    v20 = [v11 videoURL];
    if (!v20)
    {
      v23 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA068];
      v42 = @"Missing video URL";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v25 = v23;
      v26 = 2;
LABEL_20:
      *a6 = [v25 errorWithDomain:@"PESerializationUtilityErrorDomain" code:v26 userInfo:v24];

      v14 = 0;
      v21 = 0;
      goto LABEL_23;
    }

    v14 = v20;
    v21 = [objc_alloc(MEMORY[0x277D3AD98]) initWithVideoURL:v20];
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        v21 = 0;
        goto LABEL_24;
      }

      v13 = [v11 fullSizeImageURL];
      if (v13)
      {
        v14 = v13;
        v15 = [v11 uniformTypeIdentifier];
        if (v15 && ([MEMORY[0x277CE1CB8] typeWithIdentifier:v15], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "conformsToType:", *MEMORY[0x277CE1E48]), v16, v17) && !v8)
        {
          v18 = [v11 displaySizeImage];
          v19 = 0;
        }

        else
        {
          v19 = [v11 displaySizeImage];
        }

        v27 = [objc_alloc(MEMORY[0x277D3AD28]) initWithURL:v14 type:v15 image:v19 useEmbeddedPreview:v7];
        v28 = [v11 livePhoto];
        v29 = v28;
        if (v28)
        {
          v30 = MEMORY[0x277CBEBC0];
          v31 = [v28 videoComplement];
          v32 = [v31 videoPath];
          v33 = [v30 fileURLWithPath:v32];

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
    *a6 = v21 = 0;
  }

LABEL_23:

LABEL_24:

  return v21;
}

@end