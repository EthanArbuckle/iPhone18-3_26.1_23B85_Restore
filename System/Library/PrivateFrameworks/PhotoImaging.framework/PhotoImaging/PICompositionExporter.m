@interface PICompositionExporter
+ (BOOL)_lowMemoryModeSupportedForComposition:(id)a3 pixelSize:(id)a4;
+ (id)resetImageProperties:(id)a3 preserveRegions:(BOOL)a4;
+ (void)setMetadataConverter:(id)a3;
- (PICompositionExporter)init;
- (id)addImageProperties:(id)a3 composition:(id)a4 options:(id)a5 error:(id *)a6;
- (id)addVideoProperties:(id)a3 composition:(id)a4 options:(id)a5 error:(id *)a6;
- (id)archiveURLForSidecarData:(id)a3;
- (id)exportComposition:(id)a3 options:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (id)exportVideoToURL:(id)a3 composition:(id)a4 options:(id)a5 completion:(id)a6;
- (id)saveSidecarData:(id)a3 error:(id *)a4;
- (id)variationForFlavor:(id)a3;
- (void)_exportVideoToURL:(id)a3 composition:(id)a4 options:(id)a5 properties:(id)a6 progress:(id)a7 completion:(id)a8;
- (void)exportImageToDataWithComposition:(id)a3 options:(id)a4 completion:(id)a5;
- (void)exportImageToURL:(id)a3 composition:(id)a4 options:(id)a5 completion:(id)a6;
- (void)prepareAuxiliaryImagesFetchProperties:(id)a3 options:(id)a4 completion:(id)a5;
- (void)prepareImageExportRequest:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation PICompositionExporter

- (void)_exportVideoToURL:(id)a3 composition:(id)a4 options:(id)a5 properties:(id)a6 progress:(id)a7 completion:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v17 = MEMORY[0x1E69B3D10];
  v18 = a6;
  v19 = a3;
  v20 = [[v17 alloc] initWithComposition:v13 destinationURL:v19];

  [v20 setName:@"PICompositionExporter-video"];
  v21 = [v14 priority];
  [v20 setPriority:v21];

  v22 = [v14 scalePolicy];
  [v20 setScalePolicy:v22];

  [v20 setRequireHardwareEncoder:{objc_msgSend(v14, "requireHardwareEncoder")}];
  v23 = [v18 metadata];

  [v20 setMetadata:v23];
  [v20 setIncludeCinematicVideoTracks:{objc_msgSend(v14, "includeCinematicVideoTracks")}];
  [v20 setComputeDigest:{objc_msgSend(v14, "computeDigest")}];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![v14 applyVideoOrientationAsMetadata])
  {
    v29 = 0;
    goto LABEL_25;
  }

  v25 = [[PICompositionController alloc] initWithComposition:v13];
  v26 = [(PICompositionController *)v25 autoLoopAdjustmentController];
  if ([v26 enabled])
  {
    v27 = [v26 flavor];
    v28 = [v27 isEqualToString:@"Mirror"];
  }

  else
  {
    v28 = 0;
  }

  v42 = v15;
  if ([v26 enabled])
  {
    v30 = [v26 flavor];
    v31 = [v30 isEqualToString:@"AutoLoop"];
  }

  else
  {
    v31 = 0;
  }

  v32 = [(PICompositionController *)v25 orientationAdjustmentController];
  v33 = v32;
  if (v32)
  {
    [v32 orientation];
  }

  if ((v28 | v31))
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v34 = *MEMORY[0x1E69B3D80];
    if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v35 = "Skipping applyVideoOrientationAsMetadata. Bounces and Autoloops are not supported. Falling back to burned-in orientation.";
    goto LABEL_21;
  }

  if (!NUOrientationHasFlip())
  {
    v29 = 1;
    goto LABEL_24;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v34 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v35 = "Skipping applyVideoOrientationAsMetadata. Flipped orientations are not supported. Falling back to burned-in orientation.";
LABEL_21:
    _os_log_impl(&dword_1C7694000, v34, OS_LOG_TYPE_INFO, v35, buf, 2u);
  }

LABEL_22:
  v29 = 0;
LABEL_24:

  v15 = v43;
LABEL_25:
  [v20 setApplyOrientationAsMetadata:v29];
  [v20 setPipelineFilters:v24];
  [v20 setBypassOutputSettingsIfNoComposition:{objc_msgSend(v14, "bypassOutputSettingsIfNoComposition")}];
  v36 = [v20 outputSettings];
  v37 = [v36 mutableCopy];

  v38 = [v14 videoCodecType];
  if (v38)
  {
    [v37 setObject:v38 forKey:*MEMORY[0x1E6987CB0]];
  }

  [v20 setOutputSettings:v37];
  if ([v14 preserveSourceColorSpace])
  {
    [v20 setColorSpace:0];
  }

  else
  {
    v39 = [v14 colorSpace];

    if (v39)
    {
      v40 = [v14 colorSpace];
      [v20 setColorSpace:v40];
    }
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __94__PICompositionExporter__exportVideoToURL_composition_options_properties_progress_completion___block_invoke;
  v44[3] = &unk_1E82ACA08;
  v45 = v16;
  v41 = v16;
  [v20 submitWithProgress:v15 completion:v44];
}

void __94__PICompositionExporter__exportVideoToURL_composition_options_properties_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = [a2 result:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = objc_alloc_init(PICompositionExportResult);
    v6 = [v3 geometry];
    [(PICompositionExportResult *)v5 setGeometry:v6];

    v7 = [v3 digest];
    [(PICompositionExportResult *)v5 setDigest:v7];

    v8 = [v3 destinationURL];
    [(PICompositionExportResult *)v5 setExportedFileURL:v8];

    v9 = *(a1 + 32);
    v10 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v5];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v11 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Failed to export video: %@", buf, 0xCu);
    }

    v12 = *(a1 + 32);
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v12 + 16))(v12, v5);
  }
}

- (id)addVideoProperties:(id)a3 composition:(id)a4 options:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
  {
    v28 = NUAssertLogger_8250();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v43 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v32 = NUAssertLogger_8250();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(*v30);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v36;
        v44 = 2114;
        v45 = v40;
        _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v35;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v13 = v12;
  v14 = [[PICompositionController alloc] initWithComposition:v11];
  v15 = [(PICompositionController *)v14 autoLoopAdjustmentController];
  v41 = v10;
  if ([v15 enabled])
  {
    v16 = [v15 recipe];
    v17 = [v10 mutableCopy];
    if (v16)
    {
      [PIMakerNoteUtilities removeAssetIdentifierFromMetadataArray:v17];

      v18 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v17 = [v10 mutableCopy];
  }

  v18 = 1;
LABEL_7:
  v19 = [v13 pairingIdentifier];

  if (v19)
  {
    v20 = [v13 pairingIdentifier];
    [PIMakerNoteUtilities addAssetIdentifier:v20 toMetadataArray:v17];
  }

  if (v18)
  {
    goto LABEL_13;
  }

  v21 = [v15 flavor];
  v22 = [(PICompositionExporter *)self variationForFlavor:v21];

  if (v22)
  {
    v23 = [objc_opt_class() metadataConverter];
    v24 = [v23 videoMetadataForVariation:v22 error:a6];

    if (v24)
    {
      [v17 addObjectsFromArray:v24];

LABEL_13:
      v24 = [v17 copy];
      goto LABEL_16;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69B3A48];
    v26 = [v15 flavor];
    *a6 = [v25 invalidError:@"Unknown autoloop flavor" object:v26];

    v24 = 0;
  }

LABEL_16:

  return v24;
}

- (id)addImageProperties:(id)a3 composition:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[PICompositionController alloc] initWithComposition:v10];
  v13 = [v9 mutableCopy];
  v14 = [v11 pairingIdentifier];

  if (v14)
  {
    v15 = [v11 pairingIdentifier];
    [PIMakerNoteUtilities addAssetIdentifier:v15 toMetadataDictionary:v13];
  }

  v16 = [(PICompositionController *)v12 autoLoopAdjustmentController];
  if ([v16 enabled])
  {
    v17 = [v16 flavor];
    v18 = [v17 isEqualToString:@"LongExposure"];

    if (v18)
    {
      v19 = [objc_opt_class() metadataConverter];
      v20 = [(PICompositionExporter *)self variationForFlavor:@"LongExposure"];
      v21 = [v19 setImageVariation:v20 properties:v13 error:a6];

      if (!v21)
      {
        v26 = 0;
        goto LABEL_53;
      }
    }
  }

  v22 = [objc_opt_class() metadataConverter];
  v23 = [v22 photoProcessingFlagsFromProperties:v9 error:a6];

  if (v23)
  {
    v24 = [(PICompositionController *)v12 depthAdjustmentController];
    v62 = v11;
    if ([v23 integerValue])
    {
      v25 = 1;
    }

    else
    {
      v25 = [v24 enabled];
    }

    v63 = [(PICompositionController *)v12 semanticEnhanceAdjustmentController];
    v60 = v10;
    v61 = v24;
    if (!(v25 | [v63 enabled]))
    {
      goto LABEL_35;
    }

    v27 = [v23 integerValue];
    if ([v24 enabled])
    {
      v28 = v27 | 0x40;
    }

    else
    {
      v28 = v27 & 0xFFFFFFBF;
    }

    v29 = [(PICompositionController *)v12 livePhotoKeyFrameAdjustmentController];
    v30 = v29;
    if (v29 && ([v29 keyFrameTime], (v65 & 1) != 0) || objc_msgSend(v16, "enabled"))
    {
      if ((v28 & 2) != 0)
      {
        v28 = v28 & 0xFFFFFFFD;
      }

      v58 = 1;
    }

    else
    {
      v58 = 0;
    }

    v31 = v28 & 0xFFFFFFFFFFFF7FFFLL;
    if ([v63 enabled])
    {
      v32 = 0x8000;
    }

    else
    {
      v32 = 0;
    }

    v33 = [objc_opt_class() metadataConverter];
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v32 | v31];
    v35 = [v33 setPhotoProcessingFlags:v34 properties:v13 error:a6];

    if (!v35)
    {
      v26 = 0;
      v10 = v60;
      v24 = v61;
      goto LABEL_51;
    }

    v36 = *MEMORY[0x1E696D9B0];
    v56 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
    v37 = [v56 mutableCopy];
    [v13 setObject:v37 forKeyedSubscript:v36];
    v38 = [v61 enabled];
    v39 = *MEMORY[0x1E696D988];
    if (v38)
    {
      [v37 setObject:&unk_1F471EB80 forKeyedSubscript:*MEMORY[0x1E696D988]];
LABEL_34:
      v10 = v60;

      v24 = v61;
LABEL_35:
      v42 = [objc_opt_class() metadataConverter];
      v30 = [v42 photoFeatureFlags:v9 error:a6];

      if (v30)
      {
        v59 = [(PICompositionController *)v12 portraitAdjustmentController];
        if ([v30 intValue] && ((objc_msgSend(v59, "enabled") & 1) != 0 || objc_msgSend(v24, "enabled")))
        {
          v43 = [v30 unsignedIntegerValue];
          v44 = [objc_opt_class() metadataConverter];
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43 & 0xFFFFFFFE];
          v46 = [v44 setPhotoFeatureFlags:v45 properties:v13 error:a6];

          v24 = v61;
          if (!v46)
          {
            v26 = 0;
            v10 = v60;
            goto LABEL_50;
          }
        }

        if ([v62 optimizeForSharing])
        {
          [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D350]];
        }

        v10 = v60;
        v47 = [v60 objectForKeyedSubscript:@"semanticStyle"];
        if (v47)
        {
          v48 = [v47 settings];
          v49 = PISemanticStyleMakerNotePropertiesFromSettings(v48);

          v50 = [objc_opt_class() metadataConverter];
          [v50 addSemanticStyleMakeNoteProperties:v49 toImageProperties:v13];
        }

        else
        {
          v49 = [v9 objectForKeyedSubscript:{*MEMORY[0x1E696DE30], 0}];
          v51 = *MEMORY[0x1E6986850];
          v52 = [v49 objectForKeyedSubscript:*MEMORY[0x1E6986850]];

          if (!v52)
          {
            v24 = v61;
            goto LABEL_48;
          }

          v53 = [v49 objectForKeyedSubscript:v51];
          v50 = [v53 mutableCopy];

          [v50 setObject:&unk_1F471EBB0 forKey:*MEMORY[0x1E6986870]];
          v54 = [objc_opt_class() metadataConverter];
          [v54 addSemanticStyleMakeNoteProperties:v50 toImageProperties:v13];

          v24 = v61;
        }

LABEL_48:
        v26 = [v13 copy];

LABEL_50:
        goto LABEL_51;
      }

      v26 = 0;
LABEL_51:

      v11 = v62;
      goto LABEL_52;
    }

    v40 = [v37 objectForKeyedSubscript:*MEMORY[0x1E696D988]];
    v41 = [v40 intValue];
    if ((v41 - 2) >= 3)
    {
      if (v41 != 8)
      {
        goto LABEL_33;
      }
    }

    else if (!v58)
    {
LABEL_33:

      goto LABEL_34;
    }

    [v37 setObject:&unk_1F471EB98 forKeyedSubscript:v39];
    goto LABEL_33;
  }

  v26 = 0;
LABEL_52:

LABEL_53:

  return v26;
}

- (void)prepareAuxiliaryImagesFetchProperties:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E69B3968];
  v10 = a3;
  v11 = [[v9 alloc] initWithComposition:v10];

  [v11 setName:@"PICompositionExporter-auxPropertiesRequest"];
  v12 = [v7 priority];
  [v11 setPriority:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__PICompositionExporter_prepareAuxiliaryImagesFetchProperties_options_completion___block_invoke;
  v16[3] = &unk_1E82AC510;
  v18 = v11;
  v19 = v8;
  v17 = v7;
  v13 = v11;
  v14 = v7;
  v15 = v8;
  [v13 submit:v16];
}

void __82__PICompositionExporter_prepareAuxiliaryImagesFetchProperties_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v3 = [a2 result:&v43];
  v4 = v43;
  if (v3)
  {
    v5 = objc_alloc_init(PICompositionExportAuxiliaryResult);
    v6 = [v3 properties];
    [(PICompositionExportAuxiliaryResult *)v5 setProperties:v6];

    v7 = [v3 properties];
    v8 = [v7 size];
    [(PICompositionExportResult *)v5 setInputSize:v8, v9];

    if ([v3 canPropagateOriginalAuxiliaryData])
    {
      v10 = *(a1 + 48);
      v11 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v5];
      (*(v10 + 16))(v10, v11);
    }

    else
    {
      v28 = v4;
      [MEMORY[0x1E69B3C60] begin];
      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v29 = v3;
      v11 = [v3 properties];
      [*(a1 + 32) auxiliaryImageTypes];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v42 = 0u;
      v13 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v40;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v39 + 1) + 8 * i);
            v18 = NUAuxiliaryImageTypeFromString();
            v19 = [v11 auxiliaryImagePropertiesForType:v18];

            if (v19)
            {
              v20 = [objc_alloc(MEMORY[0x1E69B3960]) initWithRequest:*(a1 + 40)];
              [v20 setSkipRenderIfNotRequired:1];
              [v20 setAuxiliaryImageType:v18];
              v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PICompositionExporter-%@", v17];
              [v20 setName:v21];

              if ([*(a1 + 32) optimizeForBackgroundProcessing])
              {
                [v20 setShouldUseLowMemoryMode:1];
                [v20 setIsOneShot:1];
              }

              if ([*(a1 + 32) applyImageOrientationAsMetadata])
              {
                v22 = +[PIPipelineFilters orientationAsMetaDataFilter];
                v44 = v22;
                v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
                [v20 setPipelineFilters:v23];
              }

              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v36[2] = __82__PICompositionExporter_prepareAuxiliaryImagesFetchProperties_options_completion___block_invoke_2;
              v36[3] = &unk_1E82AA740;
              v37 = v31;
              v38 = v17;
              [v20 submit:v36];
            }
          }

          v14 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v14);
      }

      v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v25 = dispatch_queue_create("PICompositionExporter.imageProperties.transaction", v24);

      v26 = MEMORY[0x1E69B3C60];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __82__PICompositionExporter_prepareAuxiliaryImagesFetchProperties_options_completion___block_invoke_467;
      v32[3] = &unk_1E82ABF90;
      v33 = v5;
      v34 = v31;
      v35 = *(a1 + 48);
      v27 = v31;
      [v26 commitAndNotifyOnQueue:v25 withBlock:v32];

      v4 = v28;
      v3 = v29;
    }
  }

  else
  {
    v12 = *(a1 + 48);
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v12 + 16))(v12, v5);
  }
}

void __82__PICompositionExporter_prepareAuxiliaryImagesFetchProperties_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = [a2 result:&v13];
  v4 = v13;
  v5 = v4;
  if (v3)
  {
    v6 = *(a1 + 32);
    v7 = [v3 auxiliaryImage];
    [v6 setObject:v7 forKey:*(a1 + 40)];
  }

  else
  {
    v8 = [v4 code];
    v9 = *MEMORY[0x1E69B3D78];
    if (v8 == 13)
    {
      if (v9 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
      }

      v10 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_INFO, "Aux image can be obtained from original data, skipped: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v9 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
      }

      v12 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "failed to render auxiliary image data: %@", buf, 0xCu);
      }
    }
  }
}

void __82__PICompositionExporter_prepareAuxiliaryImagesFetchProperties_options_completion___block_invoke_467(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setAuxiliaryImages:v2];

  v3 = *(a1 + 48);
  v4 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:*(a1 + 32)];
  (*(v3 + 16))(v3, v4);
}

- (void)prepareImageExportRequest:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PICompositionExporter_prepareImageExportRequest_options_completion___block_invoke;
  v14[3] = &unk_1E82AC230;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(PICompositionExporter *)self prepareAuxiliaryImagesFetchProperties:v12 options:v11 completion:v14];
}

void __70__PICompositionExporter_prepareImageExportRequest_options_completion___block_invoke(void *a1, void *a2)
{
  v36 = 0;
  v3 = [a2 result:&v36];
  v4 = v36;
  if (v3)
  {
    v5 = [v3 properties];
    v6 = [v5 metadata];

    v7 = [objc_opt_class() resetImageProperties:v6 preserveRegions:0];

    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v35 = 0;
    v11 = [v8 addImageProperties:v7 composition:v9 options:v10 error:&v35];
    v12 = v35;

    v13 = [a1[6] metadataProcessor];

    if (v13)
    {
      v14 = [a1[6] metadataProcessor];
      v15 = (v14)[2](v14, v11);

      v11 = v15;
    }

    if (!v11)
    {
      if (!v12)
      {
        v12 = [MEMORY[0x1E69B3A48] unknownError:@"unable to prepare image properties" object:0];
      }

      v18 = a1[7];
      v19 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v12];
      (*(v18 + 16))(v18, v19);
      goto LABEL_14;
    }

    v16 = [a1[5] objectForKeyedSubscript:@"depthEffect"];
    if (v16)
    {
    }

    else
    {
      v20 = [a1[5] objectForKeyedSubscript:@"portraitEffect"];

      if (!v20)
      {
        v21 = 0;
        goto LABEL_13;
      }
    }

    v21 = [MEMORY[0x1E69B3AB0] disableIOSurfacePortaitExport] ^ 1;
LABEL_13:
    v19 = [objc_alloc(MEMORY[0x1E69B3B08]) initWithComposition:a1[5]];
    [v19 setName:@"PICompositionExporter-image"];
    v22 = [a1[6] priority];
    [v19 setPriority:v22];

    v23 = [a1[6] colorSpace];
    [v19 setColorSpace:v23];

    v24 = [a1[6] scalePolicy];
    [v19 setScalePolicy:v24];

    [v19 setImageProperties:v11];
    v25 = [v3 auxiliaryImages];
    [v19 setAuxImages:v25];

    [v19 setRenderWithIOSurface:v21];
    v26 = [a1[6] auxiliaryImageTypes];
    [v19 setAuxiliaryImageTypes:v26];

    v27 = objc_alloc_init(PICompositionExportImagePrepareResult);
    [(PICompositionExportImagePrepareResult *)v27 setRequest:v19];
    v28 = [v3 inputSize];
    [(PICompositionExportImagePrepareResult *)v27 setInputSize:v28, v29];
    v30 = [v3 properties];
    -[PICompositionExportImagePrepareResult setInputIsHDR:](v27, "setInputIsHDR:", [v30 isHDR]);

    v31 = [v3 properties];
    v32 = [v31 colorSpace];
    [(PICompositionExportImagePrepareResult *)v27 setInputColorSpace:v32];

    v33 = a1[7];
    v34 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v27];
    (*(v33 + 16))(v33, v34);

LABEL_14:
    goto LABEL_15;
  }

  v17 = a1[7];
  v12 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  (*(v17 + 16))(v17, v12);
LABEL_15:
}

- (id)variationForFlavor:(id)a3
{
  v3 = variationForFlavor__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&variationForFlavor__onceToken, &__block_literal_global_438);
  }

  v5 = [variationForFlavor__map objectForKeyedSubscript:v4];

  return v5;
}

void __44__PICompositionExporter_variationForFlavor___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"AutoLoop";
  v2[1] = @"Mirror";
  v3[0] = &unk_1F471EB38;
  v3[1] = &unk_1F471EB50;
  v2[2] = @"LongExposure";
  v3[2] = &unk_1F471EB68;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = variationForFlavor__map;
  variationForFlavor__map = v0;
}

- (id)saveSidecarData:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v15 = NUAssertLogger_8250();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sidecarData != nil"];
      *buf = 138543362;
      v38 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_8250();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(*v17);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v17 = [v29 callStackSymbols];
        v31 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v28;
        v39 = 2114;
        v40 = v31;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v17;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_24;
  }

  if (!a4)
  {
    v22 = NUAssertLogger_8250();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v38 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_8250();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v38 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_26;
    }

LABEL_24:
    if (v25)
    {
      v32 = dispatch_get_specific(*v17);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      v35 = [v33 callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v38 = v32;
      v39 = 2114;
      v40 = v36;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_26:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [(PICompositionExporter *)self archiveURLForSidecarData:v6];
  v9 = [v8 URLByDeletingLastPathComponent];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:a4];

  v12 = 0;
  if (v11)
  {
    if ([v7 saveToURL:v8 error:a4])
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v12 = v13;
  }

  return v12;
}

- (id)archiveURLForSidecarData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PICompositionExporter.m" lineNumber:726 description:{@"Invalid parameter not satisfying: %@", @"sidecarData != nil"}];
  }

  v6 = [v5 sourceIdentifier];
  v7 = [v6 length];

  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PICompositionExporter.m" lineNumber:727 description:@"Invalid sidecar data source identifier"];
  }

  v8 = objc_alloc(MEMORY[0x1E695DFF8]);
  v9 = NSTemporaryDirectory();
  v10 = [v8 initFileURLWithPath:v9];

  v11 = [v10 URLByAppendingPathComponent:@"com.apple.PhotoImaging.Sidecar"];

  v12 = [v5 sourceIdentifier];
  v13 = [v11 URLByAppendingPathComponent:v12];

  v14 = [v13 URLByAppendingPathExtension:@"aar"];

  return v14;
}

- (id)exportComposition:(id)a3 options:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v120 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  queue = a5;
  v65 = a6;
  v68 = v9;
  v11 = [v9 mediaType];
  if (v11 < 2)
  {
LABEL_6:
    v63 = 0;
    v15 = 0;
    v67 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  if (v11 == 2)
  {
    v16 = [v10 videoPosterFrameURL];
    if (v16)
    {
      v17 = [v9 objectForKeyedSubscript:@"videoPosterFrame"];
      LODWORD(v63) = v17 != 0;
    }

    else
    {
      LODWORD(v63) = 0;
    }

    v14 = 0;
    v15 = 0;
    v67 = 0;
    HIDWORD(v63) = 1;
  }

  else
  {
    if (v11 == 3)
    {
      v12 = [v10 videoComplementURL];

      if (v12)
      {
        v13 = [MEMORY[0x1E696AFB0] UUID];
        v67 = [v13 UUIDString];

        v63 = 0;
        v14 = 1;
        v15 = 1;
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    v63 = 0;
    v14 = 0;
    v15 = 0;
    v67 = 0;
  }

LABEL_12:
  v18 = [v10 imageExportFormat];
  v19 = [v10 videoCodecType];
  v20 = v19;
  if (!v15)
  {
    if (HIDWORD(v63) && !v19 || v18 | v19)
    {
      goto LABEL_47;
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_28;
  }

  if (v18 && v19)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) != 0 && v20 == *MEMORY[0x1E6987CF0] || (v22 & (v20 == *MEMORY[0x1E6987CE8])) != 0)
    {
      goto LABEL_47;
    }

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v23 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *v116 = 138543618;
      *&v116[4] = v20;
      *&v116[12] = 2114;
      *&v116[14] = v18;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Unexpected Live Photo export format pairing. Video codec (%{public}@) and image export format (%{public}@)", v116, 0x16u);
    }

    v24 = [MEMORY[0x1E69B3A48] mismatchError:@"Expecting HEIF/HEVC or JPEG/H264 when exporting Live Photo still and video complement" object:0];
    if (!v24)
    {
      goto LABEL_47;
    }

LABEL_91:
    v33 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v24];
    v65[2](v65, v33);
    v56 = 0;
    goto LABEL_87;
  }

  if (v18 || !v19)
  {
    if (v18 && !v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = MEMORY[0x1E6987CF0];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = [MEMORY[0x1E69B3A48] unsupportedError:@"Unexpected image export format when attempting to export Live Photo" object:v18];
          v20 = 0;
          if (v24)
          {
            goto LABEL_91;
          }

          goto LABEL_47;
        }

        v31 = MEMORY[0x1E6987CE8];
      }

      v20 = *v31;
      goto LABEL_47;
    }

LABEL_28:
    v25 = MEMORY[0x1E69C08F0];
    v26 = [v10 primaryURL];
    v27 = [v26 pathExtension];
    v28 = [v25 typeWithFilenameExtension:v27];

    if ([v28 conformsToType:*MEMORY[0x1E6983138]])
    {
      v29 = objc_alloc_init(MEMORY[0x1E69B3AF8]);
      v30 = MEMORY[0x1E6987CF0];
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x1E69B3B00]);
      [v29 setCompressionQuality:0.9];
      v30 = MEMORY[0x1E6987CE8];
    }

    v32 = *v30;
    v20 = v32;
    v18 = v29;
    goto LABEL_47;
  }

  if (v19 == *MEMORY[0x1E6987CF0])
  {
    v18 = objc_alloc_init(MEMORY[0x1E69B3AF8]);
  }

  else if (v19 == *MEMORY[0x1E6987CE8])
  {
    v18 = objc_alloc_init(MEMORY[0x1E69B3B00]);
    [v18 setCompressionQuality:0.9];
  }

  else
  {
    v24 = [MEMORY[0x1E69B3A48] unsupportedError:@"Unexpected video codec when attempting to export Live Photo" object:v19];
    v18 = 0;
    if (v24)
    {
      goto LABEL_91;
    }
  }

LABEL_47:
  v33 = objc_alloc_init(PICompositionExporterVideoOptions);
  [(PICompositionExporterOptions *)v33 setPairingIdentifier:v67];
  v34 = [v10 priority];
  [(PICompositionExporterOptions *)v33 setPriority:v34];

  [(PICompositionExporterVideoOptions *)v33 setVideoCodecType:v20];
  -[PICompositionExporterVideoOptions setApplyVideoOrientationAsMetadata:](v33, "setApplyVideoOrientationAsMetadata:", [v10 applyVideoOrientationAsMetadata]);
  v35 = objc_alloc_init(PICompositionExporterImageOptions);
  [(PICompositionExporterOptions *)v35 setPairingIdentifier:v67];
  v36 = [v10 priority];
  [(PICompositionExporterOptions *)v35 setPriority:v36];

  [(PICompositionExporterImageOptions *)v35 setImageExportFormat:v18];
  -[PICompositionExporterImageOptions setApplyImageOrientationAsMetadata:](v35, "setApplyImageOrientationAsMetadata:", [v10 applyImageOrientationAsMetadata]);
  -[PICompositionExporterImageOptions setOptimizeForBackgroundProcessing:](v35, "setOptimizeForBackgroundProcessing:", [v10 optimizeForBackgroundProcessing]);
  v37 = [v10 auxiliaryImageTypes];
  [(PICompositionExporterImageOptions *)v35 setAuxiliaryImageTypes:v37];

  if (v14)
  {
    [(PICompositionExporterImageOptions *)v35 setEnableHDR:1];
  }

  v38 = dispatch_group_create();
  *v116 = 0;
  *&v116[8] = v116;
  *&v116[16] = 0x3032000000;
  v117 = __Block_byref_object_copy__8275;
  v118 = __Block_byref_object_dispose__8276;
  v119 = 0;
  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x3032000000;
  v111[3] = __Block_byref_object_copy__8275;
  v111[4] = __Block_byref_object_dispose__8276;
  v112 = 0;
  v109[0] = 0;
  v109[1] = v109;
  v109[2] = 0x3032000000;
  v109[3] = __Block_byref_object_copy__8275;
  v109[4] = __Block_byref_object_dispose__8276;
  v110 = 0;
  v107[0] = 0;
  v107[1] = v107;
  v107[2] = 0x3032000000;
  v107[3] = __Block_byref_object_copy__8275;
  v107[4] = __Block_byref_object_dispose__8276;
  v108 = 0;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x3032000000;
  v105[3] = __Block_byref_object_copy__8275;
  v105[4] = __Block_byref_object_dispose__8276;
  v106 = 0;
  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x3032000000;
  v103[3] = __Block_byref_object_copy__8275;
  v103[4] = __Block_byref_object_dispose__8276;
  v104 = 0;
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x3010000000;
  v101[3] = &unk_1C788B126;
  v102 = *MEMORY[0x1E69B3910];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v39 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    v61 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    v60 = [MEMORY[0x1E696AD98] numberWithBool:HIDWORD(v63)];
    v58 = [MEMORY[0x1E696AD98] numberWithBool:v63];
    *buf = 138544130;
    *&buf[4] = v62;
    *&buf[12] = 2114;
    *&buf[14] = v61;
    *&buf[22] = 2114;
    v114 = v60;
    LOWORD(v115) = 2114;
    *(&v115 + 2) = v58;
    v59 = v58;
    _os_log_debug_impl(&dword_1C7694000, v39, OS_LOG_TYPE_DEBUG, "Export Composition: exportImage: %{public}@ / exportVideoComplement: %{public}@ / exportVideo: %{public}@ / exportVideoPosterFrame: %{public}@", buf, 0x2Au);
  }

  if (v14)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v40 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7694000, v40, OS_LOG_TYPE_DEBUG, "Export Composition: exporting image", buf, 2u);
    }

    dispatch_group_enter(v38);
    v41 = [v10 primaryURL];
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke;
    v96[3] = &unk_1E82AA6A0;
    v98 = v116;
    v99 = v103;
    v100 = v101;
    v97 = v38;
    [(PICompositionExporter *)self exportImageToURL:v41 composition:v68 options:v35 completion:v96];
  }

  if (v15)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v42 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7694000, v42, OS_LOG_TYPE_DEBUG, "Export Composition: exporting video complement", buf, 2u);
    }

    dispatch_group_enter(v38);
    v43 = [v10 videoCodecType];
    [(PICompositionExporterVideoOptions *)v33 setVideoCodecType:v43];

    v44 = [v10 videoComplementURL];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_405;
    v93[3] = &unk_1E82AA6C8;
    v95 = v111;
    v94 = v38;
    v45 = [(PICompositionExporter *)self exportVideoToURL:v44 composition:v68 options:v33 completion:v93];
  }

  else
  {
    v45 = 0;
  }

  if (HIDWORD(v63))
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v46 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7694000, v46, OS_LOG_TYPE_DEBUG, "Export Composition: exporting video", buf, 2u);
    }

    dispatch_group_enter(v38);
    [(PICompositionExporterVideoOptions *)v33 setBypassOutputSettingsIfNoComposition:1];
    v47 = [v10 primaryURL];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_406;
    v88[3] = &unk_1E82AA6A0;
    v90 = v109;
    v91 = v103;
    v92 = v101;
    v89 = v38;
    v48 = [(PICompositionExporter *)self exportVideoToURL:v47 composition:v68 options:v33 completion:v88];

    v45 = v48;
  }

  if (v63)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v49 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7694000, v49, OS_LOG_TYPE_DEBUG, "Export Composition: exporting video poster frame", buf, 2u);
    }

    v50 = objc_alloc_init(PICompositionExporterImageOptions);
    dispatch_group_enter(v38);
    v51 = [v10 videoPosterFrameURL];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_407;
    v85[3] = &unk_1E82AA6C8;
    v87 = v107;
    v86 = v38;
    [(PICompositionExporter *)self exportImageToURL:v51 composition:v68 options:v50 completion:v85];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v114 = __Block_byref_object_copy__8275;
  *&v115 = __Block_byref_object_dispose__8276;
  *(&v115 + 1) = 0;
  if ([v10 exportSidecarData])
  {
    v52 = [[PICompositionSidecarData alloc] initWithComposition:v68];
    v53 = [v10 brushStrokeHistory];
    [(PICompositionSidecarData *)v52 setBrushStrokeHistory:v53];

    if (![(PICompositionSidecarData *)v52 isEmpty])
    {
      dispatch_group_enter(v38);
      sidecarDataExportQueue = self->_sidecarDataExportQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_408;
      block[3] = &unk_1E82AA6F0;
      v83 = buf;
      block[4] = self;
      v81 = v52;
      v84 = v105;
      v82 = v38;
      dispatch_async(sidecarDataExportQueue, block);
    }
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v55 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    *v79 = 0;
    _os_log_debug_impl(&dword_1C7694000, v55, OS_LOG_TYPE_DEBUG, "Export Composition: waiting on notify", v79, 2u);
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_409;
  v69[3] = &unk_1E82AA718;
  v71 = v116;
  v72 = v111;
  v73 = v109;
  v74 = v107;
  v75 = v105;
  v70 = v65;
  v76 = v103;
  v77 = v101;
  v78 = buf;
  dispatch_group_notify(v38, queue, v69);
  v24 = v45;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v101, 8);
  _Block_object_dispose(v103, 8);

  _Block_object_dispose(v105, 8);
  _Block_object_dispose(v107, 8);

  _Block_object_dispose(v109, 8);
  _Block_object_dispose(v111, 8);

  _Block_object_dispose(v116, 8);
  v56 = v24;
LABEL_87:

  return v56;
}

void __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = [v4 geometry];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v4 inputSize];
  v9 = *(*(a1 + 56) + 8);
  *(v9 + 32) = v8;
  *(v9 + 40) = v10;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v11 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_debug_impl(&dword_1C7694000, v11, OS_LOG_TYPE_DEBUG, "Export Composition: exporting image complete", v12, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_405(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v5 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1C7694000, v5, OS_LOG_TYPE_DEBUG, "Export Composition: exporting video complement complete", v6, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_406(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = [v4 geometry];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v4 inputSize];
  v9 = *(*(a1 + 56) + 8);
  *(v9 + 32) = v8;
  *(v9 + 40) = v10;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v11 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_debug_impl(&dword_1C7694000, v11, OS_LOG_TYPE_DEBUG, "Export Composition: exporting video complete", v12, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_407(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v5 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1C7694000, v5, OS_LOG_TYPE_DEBUG, "Export Composition: exporting video poster frame complete", v6, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_408(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 64) + 8);
  obj = 0;
  v5 = [v2 saveSidecarData:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  dispatch_group_leave(*(a1 + 48));
}

void __78__PICompositionExporter_exportComposition_options_completionQueue_completion___block_invoke_409(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v3 = MEMORY[0x1E69B3D80];
  v4 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20) = 0;
    _os_log_debug_impl(&dword_1C7694000, v4, OS_LOG_TYPE_DEBUG, "Export Composition: notify triggered", &v20, 2u);
  }

  v5 = *(*(a1[5] + 8) + 40);
  if (v5)
  {
    v6 = v5;
  }

  v7 = *(*(a1[6] + 8) + 40);
  if (v7)
  {
    v8 = v7;

    v5 = v8;
  }

  v9 = *(*(a1[7] + 8) + 40);
  if (v9)
  {
    v10 = v9;

    v5 = v10;
  }

  v11 = *(*(a1[8] + 8) + 40);
  if (v11)
  {
    v12 = v11;

    v5 = v12;
  }

  v13 = *(*(a1[9] + 8) + 40);
  if (v13)
  {
    v14 = v13;

    v5 = v14;
LABEL_16:
    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v15 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543362;
      v21 = v5;
      _os_log_debug_impl(&dword_1C7694000, v15, OS_LOG_TYPE_DEBUG, "Export Composition: calling completion with error: %{public}@", &v20, 0xCu);
    }

    v16 = a1[4];
    v17 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v5];
    goto LABEL_21;
  }

  if (v5)
  {
    goto LABEL_16;
  }

  v5 = objc_alloc_init(PICompositionExportAuxiliaryResult);
  [(PICompositionExportResult *)v5 setGeometry:*(*(a1[10] + 8) + 40)];
  [(PICompositionExportResult *)v5 setInputSize:*(*(a1[11] + 8) + 32), *(*(a1[11] + 8) + 40)];
  [(PICompositionExportResult *)v5 setSidecarDataURL:*(*(a1[12] + 8) + 40)];
  if (*v2 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v19 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138543362;
    v21 = v5;
    _os_log_debug_impl(&dword_1C7694000, v19, OS_LOG_TYPE_DEBUG, "Export Composition: calling completion with result: %{public}@", &v20, 0xCu);
  }

  v16 = a1[4];
  v17 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v5];
LABEL_21:
  v18 = v17;
  (*(v16 + 16))(v16, v17);
}

- (id)exportVideoToURL:(id)a3 composition:(id)a4 options:(id)a5 completion:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
  v15 = [objc_alloc(MEMORY[0x1E69B3D28]) initWithComposition:v11];
  [v15 setName:@"PICompositionExporter-videoProperties"];
  v16 = [v12 priority];
  [v15 setPriority:v16];

  v37 = 0;
  v17 = [v15 submitSynchronous:&v37];
  v18 = v37;
  v19 = [v17 properties];

  if (v19)
  {
    v35 = v10;
    v20 = [v19 metadata];
    v36 = v18;
    v34 = self;
    v21 = [(PICompositionExporter *)self addVideoProperties:v20 composition:v11 options:v12 error:&v36];
    v22 = v36;

    v23 = [v12 metadataProcessor];

    if (v23)
    {
      v24 = [v12 metadataProcessor];
      v25 = (v24)[2](v24, v21);

      v21 = v25;
    }

    if (v21)
    {
      v26 = [objc_alloc(MEMORY[0x1E69B3D68]) initWithProperties:v19];
      [v26 setMetadata:v21];
      [(PICompositionExporter *)v34 _exportVideoToURL:v35 composition:v11 options:v12 properties:v26 progress:v14 completion:v13];
      v27 = v14;

      v10 = v35;
      v18 = v22;
    }

    else
    {
      v18 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to prepare video metadata" object:v19 underlyingError:v22];

      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
      }

      v10 = v35;
      v30 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v39 = v35;
        v40 = 2112;
        v41 = v18;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Error exporting video to '%@': %@", buf, 0x16u);
      }

      v31 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v18];
      v13[2](v13, v31);

      v32 = v14;
    }
  }

  else
  {
    v28 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v18];
    v13[2](v13, v28);

    v29 = v14;
  }

  return v14;
}

- (void)exportImageToDataWithComposition:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PICompositionExporter_exportImageToDataWithComposition_options_completion___block_invoke;
  v12[3] = &unk_1E82ACC00;
  v13 = v8;
  v14 = v9;
  v10 = v8;
  v11 = v9;
  [(PICompositionExporter *)self prepareImageExportRequest:a3 options:v10 completion:v12];
}

void __77__PICompositionExporter_exportImageToDataWithComposition_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = [a2 result:&v18];
  v4 = v18;
  if (v3)
  {
    v5 = [v3 request];
    v6 = [v3 inputSize];
    v8 = v7;
    [v5 setRenderToData:1];
    v9 = [*(a1 + 32) imageExportFormatForURL:0 isHDR:0];
    [v5 setFormat:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([*(a1 + 32) applyImageOrientationAsMetadata])
    {
      v11 = +[PIPipelineFilters orientationAsMetaDataFilter];
      [v10 addObject:v11];
    }

    [v5 setPipelineFilters:v10];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__PICompositionExporter_exportImageToDataWithComposition_options_completion___block_invoke_376;
    v14[3] = &unk_1E82AA678;
    v15 = *(a1 + 40);
    v16 = v6;
    v17 = v8;
    [v5 submit:v14];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
    }

    v12 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Failed to export image to data: %@", buf, 0xCu);
    }

    v13 = *(a1 + 40);
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v13 + 16))(v13, v5);
  }
}

void __77__PICompositionExporter_exportImageToDataWithComposition_options_completion___block_invoke_376(void *a1, void *a2)
{
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = objc_alloc_init(PICompositionExportDataResult);
    v6 = [v3 geometry];
    [(PICompositionExportResult *)v5 setGeometry:v6];

    [(PICompositionExportResult *)v5 setInputSize:a1[5], a1[6]];
    v7 = [v3 destinationData];
    [(PICompositionExportDataResult *)v5 setData:v7];

    v8 = a1[4];
    v9 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v5];
    (*(v8 + 16))(v8, v9);

    v4 = v9;
  }

  else
  {
    v10 = a1[4];
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v10 + 16))(v10, v5);
  }
}

- (void)exportImageToURL:(id)a3 composition:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__PICompositionExporter_exportImageToURL_composition_options_completion___block_invoke;
  v18[3] = &unk_1E82AA650;
  v22 = self;
  v23 = v13;
  v19 = v10;
  v20 = v12;
  v21 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v13;
  v17 = v10;
  [(PICompositionExporter *)self prepareImageExportRequest:v14 options:v15 completion:v18];
}

void __73__PICompositionExporter_exportImageToURL_composition_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v3 = [a2 result:&v32];
  v4 = v32;
  if (v3)
  {
    if ([*(a1 + 40) exportSidecarData])
    {
      v5 = [[PICompositionSidecarData alloc] initWithComposition:*(a1 + 48)];
      v6 = [*(a1 + 40) brushStrokeHistory];
      [(PICompositionSidecarData *)v5 setBrushStrokeHistory:v6];

      if ([(PICompositionSidecarData *)v5 isEmpty])
      {
        v7 = 0;
      }

      else
      {
        v10 = *(a1 + 56);
        v31 = 0;
        v7 = [v10 saveSidecarData:v5 error:&v31];
        v11 = v31;

        if (!v7)
        {
          v22 = *(a1 + 64);
          v12 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v11];
          (*(v22 + 16))(v22, v12);
          v4 = v11;
LABEL_26:

          goto LABEL_27;
        }

        v4 = v11;
      }
    }

    else
    {
      v7 = 0;
    }

    v12 = [v3 request];
    v13 = [v3 inputSize];
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = +[PIPipelineFilters oneShotPortraitV2ExportFilter];
    [v16 addObject:v17];

    [v12 setApplyOrientationAsMetadata:{objc_msgSend(*(a1 + 40), "applyImageOrientationAsMetadata")}];
    if ([objc_opt_class() _lowMemoryModeSupportedForComposition:*(a1 + 48) pixelSize:{v13, v15}])
    {
      v18 = [*(a1 + 40) optimizeForBackgroundProcessing];
    }

    else
    {
      v18 = 0;
    }

    [v12 setShouldUseLowMemoryMode:v18];
    [v12 setDestinationURL:*(a1 + 32)];
    v19 = [v3 inputIsHDR];
    v20 = [*(a1 + 40) imageExportFormatForURL:*(a1 + 32) isHDR:v19];
    if (v19 && [*(a1 + 40) enableHDR] && objc_msgSend(v20, "supportsHDR"))
    {
      v21 = [v3 inputColorSpace];
      if ([v21 isHDR])
      {
        [v12 setColorSpace:v21];
      }

      else
      {
        v25 = [MEMORY[0x1E69B3A10] itur2100PQColorSpace];
        [v12 setColorSpace:v25];
      }

      [v12 setRenderWithIOSurface:1];
    }

    [v12 setFormat:v20];
    [v12 setPipelineFilters:v16];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__PICompositionExporter_exportImageToURL_composition_options_completion___block_invoke_373;
    v26[3] = &unk_1E82AA628;
    v23 = *(a1 + 64);
    v29 = v13;
    v30 = v15;
    v27 = v7;
    v28 = v23;
    v5 = v7;
    [v12 submit:v26];

    goto LABEL_26;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_526);
  }

  v8 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 32);
    *buf = 138412546;
    v34 = v24;
    v35 = 2112;
    v36 = v4;
    _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Failed to export image to %@: %@", buf, 0x16u);
  }

  v9 = *(a1 + 64);
  v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  (*(v9 + 16))(v9, v5);
LABEL_27:
}

void __73__PICompositionExporter_exportImageToURL_composition_options_completion___block_invoke_373(void *a1, void *a2)
{
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = objc_alloc_init(PICompositionExportResult);
    v6 = [v3 geometry];
    [(PICompositionExportResult *)v5 setGeometry:v6];

    [(PICompositionExportResult *)v5 setInputSize:a1[6], a1[7]];
    v7 = [v3 destinationURL];
    [(PICompositionExportResult *)v5 setExportedFileURL:v7];

    [(PICompositionExportResult *)v5 setSidecarDataURL:a1[4]];
    v8 = a1[5];
    v9 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v5];
    (*(v8 + 16))(v8, v9);

    v4 = v9;
  }

  else
  {
    v10 = a1[5];
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v10 + 16))(v10, v5);
  }
}

- (PICompositionExporter)init
{
  if (init_onceToken != -1)
  {
    dispatch_once(&init_onceToken, &__block_literal_global_8300);
  }

  v8.receiver = self;
  v8.super_class = PICompositionExporter;
  v3 = [(PICompositionExporter *)&v8 init];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("PICompositionExporter.sidecarDataExport", v4);
  sidecarDataExportQueue = v3->_sidecarDataExportQueue;
  v3->_sidecarDataExportQueue = v5;

  return v3;
}

void __29__PICompositionExporter_init__block_invoke()
{
  if (!sMetadataConverter)
  {
    v0 = objc_alloc_init(_PICompositionExporterMetadataConverter);
    v1 = sMetadataConverter;
    sMetadataConverter = v0;

    MEMORY[0x1EEE66BB8](v0, v1);
  }
}

+ (id)resetImageProperties:(id)a3 preserveRegions:(BOOL)a4
{
  v5 = [a3 mutableCopy];
  [v5 removeObjectForKey:*MEMORY[0x1E696DE78]];
  v6 = *MEMORY[0x1E696DF28];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
  v8 = [v7 mutableCopy];

  if (v8)
  {
    [v8 removeObjectForKey:*MEMORY[0x1E696DF58]];
    [v5 setObject:v8 forKeyedSubscript:v6];
  }

  if (!a4)
  {
    v9 = *MEMORY[0x1E696D8B0];
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696D8B0]];
    v11 = [v10 mutableCopy];

    if (v11)
    {
      [v11 removeObjectForKey:@"Regions"];
      [v5 setObject:v11 forKeyedSubscript:v9];
    }
  }

  v12 = [v5 copy];

  return v12;
}

+ (BOOL)_lowMemoryModeSupportedForComposition:(id)a3 pixelSize:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"depthEffect"];
  v8 = v7;
  if (v7 && ([v7 objectForKeyedSubscript:@"enabled"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v10))
  {
    v11 = ((var0 * var1) / 1000000.0 > 20.0) & ![PIPhotoEditHelper compositionHasAnyStageEffect:v6];
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

+ (void)setMetadataConverter:(id)a3
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_alloc_init(_PICompositionExporterMetadataConverter);
  }

  v5 = sMetadataConverter;
  sMetadataConverter = v4;
}

@end