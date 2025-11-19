@interface PIPhotoEditHelper
+ (BOOL)areCPVAssetsEditable;
+ (BOOL)canInterpretDataWithFormatIdentifier:(id)a3 formatVersion:(id)a4;
+ (BOOL)compositionHasAnyStageEffect:(id)a3;
+ (BOOL)is3DEffect:(id)a3;
+ (BOOL)isAVAssetEditable:(id)a3 reason:(int64_t *)a4;
+ (BOOL)isPortraitEffect:(id)a3;
+ (BOOL)isPortraitStageEffect:(id)a3;
+ (BOOL)updateCropAdjustmentControllerFor:(id)a3 beforeCompositionController:(id)a4 error:(id *)a5;
+ (id)_imageRenderRequestWithComposition:(id)a3 wideGamut:(BOOL)a4;
+ (id)adjustmentConstants;
+ (id)assetIdentifierForURL:(id)a3 type:(id)a4 useEmbeddedPreview:(BOOL)a5;
+ (id)compositionByRemovingVideoAndLivePhotoAdjustments:(id)a3;
+ (id)effectNameForFilterName:(id)a3;
+ (id)filterNameForEffectName:(id)a3;
+ (id)geometryBasedAdjustmentIdentifiers;
+ (id)geometryRequestWithComposition:(id)a3;
+ (id)imagePropertiesRequestWithComposition:(id)a3;
+ (id)imageRenderRequestWithComposition:(id)a3 fillInSize:(CGSize)a4 wideGamut:(BOOL)a5;
+ (id)imageRenderRequestWithComposition:(id)a3 fitInSize:(CGSize)a4 wideGamut:(BOOL)a5;
+ (id)imageSourceWithCIImage:(id)a3 orientation:(int64_t)a4;
+ (id)imageSourceWithURL:(id)a3 type:(id)a4 proxyImage:(id)a5 orientation:(int64_t)a6 useEmbeddedPreview:(BOOL)a7;
+ (id)imageSourceWithURL:(id)a3 type:(id)a4 useEmbeddedPreview:(BOOL)a5;
+ (id)knownFormatsVersionsMap;
+ (id)livePhotoSourceWithPhotoSource:(id)a3 videoSource:(id)a4;
+ (id)newAdjustmentWithIdentifier:(id)a3;
+ (id)newAdjustmentWithName:(id)a3;
+ (id)newComposition;
+ (id)newCompositionControllerWithComposition:(id)a3;
+ (id)pipelineFiltersForCropping;
+ (id)pipelineFiltersForOriginalGeometry;
+ (id)pipelineFiltersForPostInpaintSegmentation;
+ (id)pipelineFiltersForPreInpaintSegmentation;
+ (id)pipelineFiltersForRAWShowingOriginalWithGeometry;
+ (id)pipelineFiltersForShowingOriginal;
+ (id)pipelineFiltersForShowingOriginalWithGeometry;
+ (id)priorityWithLevel:(int64_t)a3;
+ (id)rawAdjustmentWithRawImageProperties:(id)a3;
+ (id)stringForAutoLoopFlavor:(int64_t)a3;
+ (id)validatedCompositionCopyForComposition:(id)a3 mediaType:(int64_t)a4;
+ (id)videoPropertiesRequestWithComposition:(id)a3;
+ (id)videoRenderRequestWithComposition:(id)a3 fitInSize:(CGSize)a4;
+ (id)videoSourceWithURL:(id)a3;
+ (id)videoSourceWithVideoData:(id)a3 orientation:(int64_t)a4;
+ (void)handlePIGlobalSettings:(id)a3;
+ (void)initialize;
+ (void)preheatEditDependencies;
@end

@implementation PIPhotoEditHelper

+ (id)stringForAutoLoopFlavor:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"AutoLoop";
  }

  else
  {
    return off_1E82ACBA0[a3];
  }
}

+ (id)rawAdjustmentWithRawImageProperties:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69B3AD0]) initWithName:@"RAW"];
  v5 = [objc_alloc(MEMORY[0x1E69B3A98]) initWithIdentifier:v4];
  v6 = [v3 availableDecoderVersions];
  v7 = [v6 lastObject];
  [v5 setObject:v7 forKeyedSubscript:@"inputDecoderVersion"];

  v8 = [PIFakeBoost boostParametersFromRawProperties:v3];
  if (v8)
  {
    v9 = +[PIFakeBoost currentVersion];
    [v5 setObject:v9 forKeyedSubscript:@"boostVersion"];

    [v5 setObject:v8 forKeyedSubscript:@"boostParams"];
  }

  v10 = [PIGainMap gainMapParametersFromRawProperties:v3];
  if (v10)
  {
    v11 = +[PIGainMap currentVersion];
    [v5 setObject:v11 forKeyedSubscript:@"gainMapVersion"];

    [v5 setObject:v10 forKeyedSubscript:@"gainMapParameters"];
  }

  return v5;
}

+ (void)preheatEditDependencies
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SkipShaderPrewarm"];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E69B3A58] sharedFactory];
    v5 = [v4 visionSession];
    v6 = objc_alloc_init(MEMORY[0x1E69844D0]);
    v8[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v5 prepareForPerformingRequests:v7 error:0];
  }
}

+ (BOOL)updateCropAdjustmentControllerFor:(id)a3 beforeCompositionController:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 composition];
  v9 = [v7 composition];
  v10 = [PICropAutoCalculator updateCropAdjustment:v8 after:v9 error:a5];

  if (v10)
  {
    v11 = [[PICompositionController alloc] initWithComposition:v10];
    -[PICompositionController setImageOrientation:](v11, "setImageOrientation:", [v7 imageOrientation]);
    [v7 applyChangesFromCompositionController:v11];
  }

  return v10 != 0;
}

+ (BOOL)canInterpretDataWithFormatIdentifier:(id)a3 formatVersion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 knownFormatsVersionsMap];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = 0;
  if (v7 && v9)
  {
    v11 = [PIPhotoEditAdjustmentsVersion versionFromString:v7];
    v10 = [v9 containsObject:v11];
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
  }

  v12 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
  {
    v13 = @"No";
    v16 = 138544130;
    v17 = v6;
    if (v9)
    {
      v14 = @"Yes";
    }

    else
    {
      v14 = @"No";
    }

    v19 = v14;
    v18 = 2112;
    if (v10)
    {
      v13 = @"Yes";
    }

    v20 = 2114;
    v21 = v7;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_INFO, "Can PLPhotoEditPFDataConverter interpret identifier %{public}@? %@. Version %{public}@? %@", &v16, 0x2Au);
  }

  return (v9 != 0) & v10;
}

+ (id)knownFormatsVersionsMap
{
  v32[4] = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E695DFD8];
  v30 = [PIPhotoEditAdjustmentsVersion versionWithMajor:0 minor:1 subMinor:0 platform:@"iOS"];
  v29 = [PIPhotoEditAdjustmentsVersion versionWithMajor:0 minor:2 subMinor:0 platform:@"iOS"];
  v27 = [PIPhotoEditAdjustmentsVersion versionWithMajor:0 minor:1 subMinor:0 platform:@"OSX"];
  v28 = [PIPhotoEditAdjustmentsVersion versionWithMajor:0 minor:2 subMinor:0 platform:@"OSX"];
  v26 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:0 subMinor:0 platform:0];
  v18 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:2 subMinor:0 platform:0];
  v25 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:3 subMinor:0 platform:0];
  v17 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:4 subMinor:0 platform:0];
  v24 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:5 subMinor:0 platform:0];
  v16 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:5 subMinor:1 platform:0];
  v23 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:6 subMinor:0 platform:0];
  v22 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:7 subMinor:0 platform:0];
  v21 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:8 subMinor:0 platform:0];
  v15 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:9 subMinor:0 platform:0];
  v14 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:9 subMinor:1 platform:0];
  v2 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:10 subMinor:0 platform:0];
  v3 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:11 subMinor:0 platform:0];
  v4 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:12 subMinor:0 platform:0];
  v5 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:12 subMinor:1 platform:0];
  v6 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:12 subMinor:2 platform:0];
  v7 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:13 subMinor:0 platform:0];
  v20 = [v19 setWithObjects:{v30, v29, v27, v28, v26, v18, v25, v17, v24, v16, v23, v22, v21, v15, v14, v2, v3, v4, v5, v6, v7, 0}];

  v8 = MEMORY[0x1E695DFD8];
  v9 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:0 subMinor:0 platform:0];
  v10 = [PIPhotoEditAdjustmentsVersion versionWithMajor:1 minor:1 subMinor:0 platform:0];
  v11 = [v8 setWithObjects:{v9, v10, 0}];

  v31[0] = @"com.apple.photo";
  v31[1] = @"com.apple.livephoto";
  v32[0] = v20;
  v32[1] = v20;
  v31[2] = @"com.apple.video";
  v31[3] = @"com.apple.video.slomo";
  v32[2] = v11;
  v32[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];

  return v12;
}

+ (id)geometryBasedAdjustmentIdentifiers
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = +[PIPhotoEditHelper adjustmentConstants];
  v3 = [v2 PICropAdjustmentKey];
  v11[0] = v3;
  v4 = [v2 PIOrientationAdjustmentKey];
  v11[1] = v4;
  v5 = [v2 PIRetouchAdjustmentKey];
  v11[2] = v5;
  v6 = [v2 PIRedEyeAdjustmentKey];
  v11[3] = v6;
  v7 = [v2 PIHighResFusionAdjustmentKey];
  v11[4] = v7;
  v8 = [v2 PIInpaintAdjustmentKey];
  v11[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

+ (id)validatedCompositionCopyForComposition:(id)a3 mediaType:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    [v63 handleFailureInMethod:a2 object:a1 file:@"PIPhotoEditHelper.m" lineNumber:691 description:{@"Invalid parameter not satisfying: %@", @"composition"}];
  }

  v8 = [v7 copy];
  v9 = [a1 adjustmentConstants];
  v10 = [v9 PIAutoLoopAdjustmentKey];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v11 objectForKeyedSubscript:@"recipe"];

    if (!v12)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
      }

      v13 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1C7694000, v13, OS_LOG_TYPE_INFO, "validation issue: recipe is blank on the autoloop adjustment", &buf, 2u);
      }

      v14 = [v9 PIAutoLoopAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:v14];

      v11 = 0;
    }
  }

  v15 = [v11 objectForKeyedSubscript:@"flavor"];
  v16 = v15;
  if (v11 && !v15)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
    }

    v17 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1C7694000, v17, OS_LOG_TYPE_INFO, "validation issue: no flavor specified on the autoloop adjustment", &buf, 2u);
    }

    v18 = [v9 PIAutoLoopAdjustmentKey];
    [v8 setObject:0 forKeyedSubscript:v18];

    v11 = 0;
LABEL_17:
    v66 = 1;
    if (!a4)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a4 != 3 || !v11)
  {
    goto LABEL_17;
  }

  v19 = [v11 objectForKeyedSubscript:@"enabled"];
  v20 = [v19 BOOLValue];

  v21 = @"AutoLoop";
  if ([v16 isEqualToString:@"AutoLoop"])
  {

    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v66 = 0;
    a4 = 2;
    goto LABEL_27;
  }

  v22 = @"Mirror";
  v23 = [v16 isEqualToString:@"Mirror"];

  if (v23 & v20)
  {
    goto LABEL_26;
  }

LABEL_23:
  v66 = 1;
  if ([v8 mediaType] == 2)
  {
    a4 = 3;
LABEL_27:
    [v8 setMediaType:a4];
  }

LABEL_28:
  v24 = [v9 PIRedEyeAdjustmentKey];
  v25 = [v8 objectForKeyedSubscript:v24];

  if (v25)
  {
    v26 = [v25 objectForKeyedSubscript:@"inputCorrectionInfo"];

    if (!v26)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
      }

      v27 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1C7694000, v27, OS_LOG_TYPE_INFO, "validation issue: Missing inputCorrectionInfo on a redeye adjustment", &buf, 2u);
      }

      v28 = [v9 PIRedEyeAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:v28];
    }
  }

  v29 = [v9 PIDepthAdjustmentKey];
  v30 = [v8 objectForKeyedSubscript:v29];

  v70 = v30;
  if (v30)
  {
    v31 = [v30 objectForKeyedSubscript:@"depthInfo"];

    if (!v31)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
      }

      v37 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1C7694000, v37, OS_LOG_TYPE_INFO, "validation issue: Missing depthInfo on a depth adjustment", &buf, 2u);
      }

      v33 = [v9 PIDepthAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:v33];
      goto LABEL_47;
    }

    v32 = [v30 objectForKeyedSubscript:@"aperture"];

    if (!v32)
    {
      v33 = [v30 objectForKeyedSubscript:@"depthInfo"];
      v34 = [v33 objectForKeyedSubscript:@"aperture"];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &unk_1F471F720;
      }

      [v30 setObject:v36 forKeyedSubscript:@"aperture"];

LABEL_47:
    }
  }

  v67 = v25;
  v69 = v11;
  v38 = [v9 PIPortraitAdjustmentKey];
  v39 = [v8 objectForKeyedSubscript:v38];

  if (v39)
  {
    v40 = [v39 objectForKeyedSubscript:@"portraitInfo"];

    if (!v40)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
      }

      v41 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1C7694000, v41, OS_LOG_TYPE_INFO, "validation issue: Missing portraitInfo on a portrait adjustment", &buf, 2u);
      }

      v42 = [v9 PIPortraitAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:v42];
    }
  }

  v68 = v16;
  v43 = [v9 PITrimAdjustmentKey];
  v44 = [v8 objectForKeyedSubscript:v43];

  if (v44)
  {
    v64 = a1;
    v65 = v7;
    v45 = [v44 objectForKeyedSubscript:@"start"];
    v46 = [v44 objectForKeyedSubscript:@"end"];
    v47 = [v44 objectForKeyedSubscript:@"startScale"];
    v48 = [v44 objectForKeyedSubscript:@"endScale"];
    v49 = [v44 objectForKeyedSubscript:@"enabled"];
    v50 = v49;
    if (!v45 || !v46 || !v47 || !v48 || !v49 || (memset(&buf, 0, sizeof(buf)), CMTimeMake(&buf, [v45 longLongValue], objc_msgSend(v47, "intValue")), memset(&v71, 0, sizeof(v71)), CMTimeMake(&v71, objc_msgSend(v46, "longLongValue"), objc_msgSend(v48, "intValue")), (buf.flags & 1) == 0) || (v71.flags & 1) == 0)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
      }

      v51 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1C7694000, v51, OS_LOG_TYPE_INFO, "validation issue: invalid trim startTime or endTime", &buf, 2u);
      }

      v52 = [v9 PITrimAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:v52];
    }

    a1 = v64;
    v7 = v65;
  }

  v53 = [v9 PIMuteAdjustmentKey];
  v54 = [v8 objectForKeyedSubscript:v53];

  if (v54)
  {
    v55 = 1;
  }

  else
  {
    v55 = v66;
  }

  if ((v55 & 1) == 0)
  {
    v56 = [a1 photosSchema];
    v57 = [v56 contents];
    v58 = [v9 PIMuteAdjustmentKey];
    [v57 objectForKeyedSubscript:v58];
    v60 = v59 = a1;

    v54 = [PIPhotoEditHelper newAdjustmentWithIdentifier:v60];
    [v54 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
    v61 = [v9 PIMuteAdjustmentKey];
    [v8 setObject:v54 forKeyedSubscript:v61];

    a1 = v59;
  }

  [a1 handlePIGlobalSettings:v8];

  return v8;
}

+ (void)handlePIGlobalSettings:(id)a3
{
  v16 = a3;
  v3 = +[PIGlobalSettings globalSettings];
  if ([(PIDepthAdjustmentController *)v3 forceGlassesMatteOff])
  {
    v4 = [v16 objectForKeyedSubscript:@"depthEffect"];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = [PIDepthAdjustmentController alloc];
    v6 = [v16 objectForKeyedSubscript:@"depthEffect"];
    v3 = [(PIDepthAdjustmentController *)v5 initWithAdjustment:v6];

    [(PIDepthAdjustmentController *)v3 setGlassesMatteAllowed:MEMORY[0x1E695E110]];
  }

LABEL_5:
  v7 = [v16 objectForKeyedSubscript:@"portraitEffect"];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = +[PIGlobalSettings globalSettings];
  v9 = [v8 forceSpillMatteOff];

  if (v9)
  {
    v10 = MEMORY[0x1E695E110];
  }

  else
  {
    v11 = +[PIGlobalSettings globalSettings];
    v12 = [v11 allowSpillMatteOnOlderPortraitV2Captures];

    if (!v12)
    {
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E695E118];
  }

  v13 = [PIPortraitAdjustmentController alloc];
  v14 = [v16 objectForKeyedSubscript:@"portraitEffect"];
  v15 = [(PIPortraitAdjustmentController *)v13 initWithAdjustment:v14];

  [(PIPortraitAdjustmentController *)v15 setSpillMatteAllowed:v10];
LABEL_11:
}

+ (id)adjustmentConstants
{
  if (adjustmentConstants_once != -1)
  {
    dispatch_once(&adjustmentConstants_once, &__block_literal_global_441);
  }

  v3 = adjustmentConstants_adjustmentConstants;

  return v3;
}

uint64_t __40__PIPhotoEditHelper_adjustmentConstants__block_invoke()
{
  v0 = objc_alloc_init(PIAdjustmentConstants);
  v1 = adjustmentConstants_adjustmentConstants;
  adjustmentConstants_adjustmentConstants = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)newCompositionControllerWithComposition:(id)a3
{
  v3 = a3;
  v4 = [[PICompositionController alloc] initWithComposition:v3];

  return v4;
}

+ (id)pipelineFiltersForRAWShowingOriginalWithGeometry
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_439];
  v3 = +[PIPipelineFilters sourceFilterNoOrientation];
  v6[0] = v3;
  v6[1] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

id __69__PIPhotoEditHelper_pipelineFiltersForRAWShowingOriginalWithGeometry__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  [v7 resetTag:@"/pre-Geometry" input:a4];
  v8 = [v7 getTagWithPath:@"/post-Geometry" error:a5];

  return v8;
}

+ (id)pipelineFiltersForShowingOriginalWithGeometry
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_420];
  v3 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_428];
  v4 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"/ShowOriginalSource"];
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __66__PIPhotoEditHelper_pipelineFiltersForShowingOriginalWithGeometry__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  [v8 resetTag:@"/pre-Trim" input:v7];
  v9 = [v8 getTagWithPath:@"/Trim" error:a5];

  return v9;
}

id __66__PIPhotoEditHelper_pipelineFiltersForShowingOriginalWithGeometry__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  [v8 resetTag:@"/pre-Geometry" input:v7];
  v9 = [v8 getTagWithPath:@"/post-Geometry" error:a5];

  return v9;
}

+ (id)pipelineFiltersForPostInpaintSegmentation
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"/Inpaint"];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)pipelineFiltersForPreInpaintSegmentation
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"/Pre-Inpaint"];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)pipelineFiltersForShowingOriginal
{
  v2 = [objc_opt_class() pipelineFiltersForShowingOriginalWithGeometry];
  v3 = [v2 mutableCopy];

  v4 = +[PIPipelineFilters noCropFilter];
  [v3 addObject:v4];

  return v3;
}

+ (id)pipelineFiltersForOriginalGeometry
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[PIPipelineFilters noGeometryFilter];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)pipelineFiltersForCropping
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[PIPipelineFilters iosCropToolFilter];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)filterNameForEffectName:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__13740;
  v30 = __Block_byref_object_dispose__13741;
  v31 = 0;
  v5 = [s_3DEffectNames allKeys];
  if ([v5 containsObject:v4])
  {
    goto LABEL_4;
  }

  v6 = [s_PortraitEffectNames allKeys];
  if ([v6 containsObject:v4])
  {

LABEL_4:
LABEL_5:
    v7 = v27;
    v8 = v4;
    v9 = v7[5];
    v7[5] = v8;
    goto LABEL_6;
  }

  v12 = [s_effectNames allKeys];
  v13 = [v12 containsObject:v4];

  if (v13)
  {
    goto LABEL_5;
  }

  if ([a1 is3DEffect:v4])
  {
    v14 = s_3DEffectNames;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__PIPhotoEditHelper_filterNameForEffectName___block_invoke;
    v23[3] = &unk_1E82AB0D0;
    v24 = v4;
    v25 = &v26;
    [v14 enumerateKeysAndObjectsUsingBlock:v23];
    v9 = v24;
  }

  else if ([a1 isPortraitEffect:v4])
  {
    v15 = s_PortraitEffectNames;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__PIPhotoEditHelper_filterNameForEffectName___block_invoke_2;
    v20[3] = &unk_1E82AB0D0;
    v21 = v4;
    v22 = &v26;
    [v15 enumerateKeysAndObjectsUsingBlock:v20];
    v9 = v21;
  }

  else
  {
    v16 = s_effectNames;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__PIPhotoEditHelper_filterNameForEffectName___block_invoke_3;
    v17[3] = &unk_1E82AB0D0;
    v18 = v4;
    v19 = &v26;
    [v16 enumerateKeysAndObjectsUsingBlock:v17];
    v9 = v18;
  }

LABEL_6:

  v10 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v10;
}

void __45__PIPhotoEditHelper_filterNameForEffectName___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __45__PIPhotoEditHelper_filterNameForEffectName___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __45__PIPhotoEditHelper_filterNameForEffectName___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)effectNameForFilterName:(id)a3
{
  v4 = a3;
  v5 = [s_3DEffectNames allValues];
  if ([v5 containsObject:v4])
  {
    goto LABEL_4;
  }

  v6 = [s_PortraitEffectNames allValues];
  if ([v6 containsObject:v4])
  {

LABEL_4:
    goto LABEL_5;
  }

  v10 = [s_effectNames allValues];
  v11 = [v10 containsObject:v4];

  if ((v11 & 1) == 0)
  {
    if ([a1 is3DEffect:v4])
    {
      v12 = s_3DEffectNames;
    }

    else if ([a1 isPortraitEffect:v4])
    {
      v12 = s_PortraitEffectNames;
    }

    else
    {
      v12 = s_effectNames;
    }

    v7 = [v12 objectForKeyedSubscript:v4];
    goto LABEL_6;
  }

LABEL_5:
  v7 = v4;
LABEL_6:
  v8 = v7;

  return v8;
}

+ (BOOL)isAVAssetEditable:(id)a3 reason:(int64_t *)a4
{
  v6 = a3;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__PIPhotoEditHelper_isAVAssetEditable_reason___block_invoke;
  v25[3] = &__block_descriptor_40_e8_v16__0q8l;
  v25[4] = a4;
  v7 = MEMORY[0x1CCA61740](v25);
  if ([v6 isReadable])
  {
    if ([v6 isPlayable])
    {
      if ([v6 isExportable])
      {
        v8 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:v6 timeZoneLookup:0];
        if ([v8 isHDR] && (objc_msgSend(MEMORY[0x1E69B3D40], "deviceSupportsHardware10BitHEVCEncoding") & 1) == 0)
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
          }

          v16 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C7694000, v16, OS_LOG_TYPE_DEFAULT, "HDR asset not editable because this device doesn't support 10-bit HEVC encoding", buf, 2u);
          }

          v7[2](v7, 5);
          v10 = 0;
          goto LABEL_31;
        }

        v23 = 0;
        v9 = [MEMORY[0x1E69B3D40] isAVAssetDolbyProfile5:v6 error:&v23];
        v10 = v23;
        if (v9)
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
          }

          v11 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C7694000, v11, OS_LOG_TYPE_DEFAULT, "HDR asset not editable because editing not supported on DolbyVision 5", buf, 2u);
          }

          v7[2](v7, 6);
LABEL_31:
          LOBYTE(v12) = 0;
LABEL_45:

          goto LABEL_16;
        }

        if ([PICinematicVideoUtilities assetIsCinematicVideo:v6])
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
          }

          v14 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_DEFAULT, "CPV asset checking for editability", buf, 2u);
          }

          if ([MEMORY[0x1E69B3D40] isAssetUnsupportedLegacyPortraitVideo:v6])
          {
            v15 = NULogger_13745();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C7694000, v15, OS_LOG_TYPE_DEFAULT, "CPV asset not editable because it's in a legacy, unsupported format", buf, 2u);
            }

            v7[2](v7, 7);
            goto LABEL_31;
          }

          v17 = +[PIGlobalSettings editSettings];
          v18 = [v17 objectForKey:@"overrideVideoEditability"];
          v12 = [v18 BOOLValue];

          if (v12)
          {
            v19 = NULogger_13745();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C7694000, v19, OS_LOG_TYPE_DEFAULT, "CPV asset editable due to override", buf, 2u);
            }

LABEL_44:
            goto LABEL_45;
          }

          v20 = [a1 areCPVAssetsEditable];
          v21 = NULogger_13745();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if ((v20 & 1) == 0)
          {
            if (v22)
            {
              *buf = 0;
              _os_log_impl(&dword_1C7694000, v21, OS_LOG_TYPE_DEFAULT, "CPV asset not editable because CPV assets are not editable on this device", buf, 2u);
            }

            v7[2](v7, 8);
            goto LABEL_44;
          }

          if (v22)
          {
            *buf = 0;
            _os_log_impl(&dword_1C7694000, v21, OS_LOG_TYPE_DEFAULT, "CPV asset is editable", buf, 2u);
          }
        }

        LOBYTE(v12) = 1;
        goto LABEL_45;
      }

      v7[2](v7, 4);
    }

    else
    {
      v7[2](v7, 3);
    }
  }

  else
  {
    v7[2](v7, 2);
  }

  LOBYTE(v12) = 0;
LABEL_16:

  return v12;
}

uint64_t __46__PIPhotoEditHelper_isAVAssetEditable_reason___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *v2 = a2;
  }

  return result;
}

+ (BOOL)areCPVAssetsEditable
{
  if (areCPVAssetsEditable_onceToken != -1)
  {
    dispatch_once(&areCPVAssetsEditable_onceToken, &__block_literal_global_13747);
  }

  if (areCPVAssetsEditable_hasMetalDeviceForPortrait)
  {
    v2 = [MEMORY[0x1E69B3BF8] currentPlatform];
    v3 = [v2 supportsANE];

    if (v3)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
      }

      v4 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C7694000, v4, OS_LOG_TYPE_DEFAULT, "CPV assets are editable", v10, 2u);
      }

      LOBYTE(v5) = 1;
      return v5;
    }

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
    }

    v6 = *MEMORY[0x1E69B3D80];
    v5 = os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      *buf = 0;
      v7 = "CPV assets aren't editable because the device has no ANE";
      v8 = buf;
      goto LABEL_18;
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
    }

    v6 = *MEMORY[0x1E69B3D80];
    v5 = os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v12 = 0;
      v7 = "CPV assets aren't editable because there is no metal device with support for portrait rendering";
      v8 = &v12;
LABEL_18:
      _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

void __41__PIPhotoEditHelper_areCPVAssetsEditable__block_invoke()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v0 = MTLCreateSystemDefaultDevice();
  v1 = v0;
  if (v0)
  {
    v21[0] = v0;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([MEMORY[0x1E69C4FA0] isMetalDeviceSupported:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          areCPVAssetsEditable_hasMetalDeviceForPortrait = 1;
          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
  }

  v8 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    if (areCPVAssetsEditable_hasMetalDeviceForPortrait)
    {
      v9 = "Yes";
    }

    else
    {
      v9 = "No";
    }

    v15 = "No";
    v16 = 2080;
    v17 = v9;
    v18 = 2080;
    v19 = "Yes";
    _os_log_impl(&dword_1C7694000, v8, OS_LOG_TYPE_DEFAULT, "CPV asset editability: onAppleSilicon: %s, hasMetalDeviceForPortrait: %s, oniOS: %s", buf, 0x20u);
  }
}

+ (BOOL)compositionHasAnyStageEffect:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"depthEffect"];
  v6 = [v4 objectForKeyedSubscript:@"portraitEffect"];

  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = [v5 objectForKeyedSubscript:@"enabled"];
  v8 = 0;
  if (![v7 BOOLValue] || !v6)
  {
    goto LABEL_6;
  }

  v9 = [v6 objectForKeyedSubscript:@"enabled"];
  v10 = [v9 BOOLValue];

  if (!v10)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [v6 objectForKeyedSubscript:@"kind"];
  v8 = [a1 isPortraitStageEffect:v7];
LABEL_6:

LABEL_8:
  return v8;
}

+ (BOOL)isPortraitStageEffect:(id)a3
{
  v3 = a3;
  v4 = [s_PortraitStageEffectNames allKeys];
  if ([v4 containsObject:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [s_PortraitStageEffectNames allValues];
    v5 = [v6 containsObject:v3];
  }

  return v5;
}

+ (BOOL)isPortraitEffect:(id)a3
{
  v3 = a3;
  v4 = [s_PortraitEffectNames allKeys];
  if ([v4 containsObject:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [s_PortraitEffectNames allValues];
    v5 = [v6 containsObject:v3];
  }

  return v5;
}

+ (BOOL)is3DEffect:(id)a3
{
  v3 = a3;
  v4 = [s_3DEffectNames allKeys];
  if ([v4 containsObject:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [s_3DEffectNames allValues];
    v5 = [v6 containsObject:v3];
  }

  return v5;
}

+ (id)videoRenderRequestWithComposition:(id)a3 fitInSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v11 = NUAssertLogger_13757();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_13757();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E69B3D30]) initWithComposition:v6];
  [v8 setColorSpace:0];
  [v8 setSampleMode:2];
  v9 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetSize:{width, height}];
  [v8 setScalePolicy:v9];

  return v8;
}

+ (id)priorityWithLevel:(int64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:a3];

  return v3;
}

+ (id)_imageRenderRequestWithComposition:(id)a3 wideGamut:(BOOL)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = NUAssertLogger_13757();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_13757();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E69B3AD8]) initWithComposition:v5];
  v8 = objc_alloc_init(MEMORY[0x1E69B3A90]);
  [v7 setRegionPolicy:v8];

  if (a4)
  {
    [MEMORY[0x1E69B3A10] displayP3ColorSpace];
  }

  else
  {
    [MEMORY[0x1E69B3A10] sRGBColorSpace];
  }
  v9 = ;
  [v7 setColorSpace:v9];
  [v7 setSampleMode:2];
  [v7 setName:@"PIPhotoEditHelper-basic-image"];

  return v7;
}

+ (id)imageRenderRequestWithComposition:(id)a3 fillInSize:(CGSize)a4 wideGamut:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (width <= 0.0 || height <= 0.0)
  {
    v15 = NUAssertLogger_13757();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetSize.width > 0 && targetSize.height > 0"];
      *buf = 138543362;
      v29 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_13757();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v23;
        v30 = 2114;
        v31 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  v11 = [a1 _imageRenderRequestWithComposition:v9 wideGamut:v5];
  v12 = [objc_alloc(MEMORY[0x1E69B3A68]) initWithTargetSize:{width, height}];
  [v11 setScalePolicy:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69B3CC0]);
  [v11 setExtentPolicy:v13];

  [v11 setName:@"PIPhotoEditHelper-fillSquare-image"];

  return v11;
}

+ (id)imageRenderRequestWithComposition:(id)a3 fitInSize:(CGSize)a4 wideGamut:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (width <= 0.0 || height <= 0.0)
  {
    v14 = NUAssertLogger_13757();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetSize.width > 0 && targetSize.height > 0"];
      *buf = 138543362;
      v28 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_13757();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  v11 = [a1 _imageRenderRequestWithComposition:v9 wideGamut:v5];
  v12 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetSize:{width, height}];
  [v11 setScalePolicy:v12];

  [v11 setName:@"PIPhotoEditHelper-targetSize-image"];

  return v11;
}

+ (id)videoPropertiesRequestWithComposition:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = NUAssertLogger_13757();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v21 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger_13757();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(*v9);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  v5 = [objc_alloc(MEMORY[0x1E69B3D28]) initWithComposition:v3];

  return v5;
}

+ (id)imagePropertiesRequestWithComposition:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = NUAssertLogger_13757();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v21 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger_13757();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(*v9);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  v5 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithComposition:v3];

  return v5;
}

+ (id)geometryRequestWithComposition:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = NUAssertLogger_13757();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v21 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger_13757();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(*v9);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  v5 = [objc_alloc(MEMORY[0x1E69B3AA8]) initWithComposition:v3];

  return v5;
}

+ (id)newAdjustmentWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = NUAssertLogger_13757();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v21 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger_13757();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(*v9);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  v5 = [objc_alloc(MEMORY[0x1E69B3A98]) initWithIdentifier:v3];

  return v5;
}

+ (id)newAdjustmentWithName:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v8 = NUAssertLogger_13757();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v22 = v9;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_13757();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(*v10);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v20;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v15;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  v5 = [objc_alloc(MEMORY[0x1E69B3AD0]) initWithName:v3];
  v6 = [objc_alloc(MEMORY[0x1E69B3A98]) initWithIdentifier:v5];

  return v6;
}

+ (id)compositionByRemovingVideoAndLivePhotoAdjustments:(id)a3
{
  v3 = [a3 copy];
  [v3 setObject:0 forKeyedSubscript:@"slomo"];
  [v3 setObject:0 forKeyedSubscript:@"trim"];
  [v3 setObject:0 forKeyedSubscript:@"livePhotoKeyFrame"];
  [v3 setObject:0 forKeyedSubscript:@"videoPosterFrame"];
  [v3 setObject:0 forKeyedSubscript:@"highResFusion"];
  [v3 setObject:0 forKeyedSubscript:@"mute"];
  [v3 setObject:0 forKeyedSubscript:@"autoLoop"];
  [v3 setObject:0 forKeyedSubscript:@"videoStabilize"];
  [v3 setObject:0 forKeyedSubscript:@"videoCrossfadeLoop"];

  return v3;
}

+ (id)newComposition
{
  v2 = +[PISchema registeredPhotosSchemaIdentifier];
  v3 = [objc_alloc(MEMORY[0x1E69B3AA0]) initWithIdentifier:v2];

  return v3;
}

+ (id)livePhotoSourceWithPhotoSource:(id)a3 videoSource:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v17 = NUAssertLogger_13757();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "photoSource != nil"];
      *buf = 138543362;
      v40 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_13757();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v30 = dispatch_get_specific(*v19);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v19 = [v31 callStackSymbols];
        v33 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v30;
        v41 = 2114;
        v42 = v33;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v19;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  v7 = v6;
  if (!v6)
  {
    v24 = NUAssertLogger_13757();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoSource != nil"];
      *buf = 138543362;
      v40 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_13757();
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v40 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v27)
    {
      v34 = dispatch_get_specific(*v19);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      v37 = [v35 callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v40 = v34;
      v41 = 2114;
      v42 = v38;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v8 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v5 assetIdentifier];
  v11 = [v7 assetIdentifier];
  v12 = [v9 stringWithFormat:@"%@+%@", v10, v11];
  [v8 setAssetIdentifier:v12];

  v13 = [v5 definition];
  v14 = [v7 definition];
  v15 = [objc_alloc(MEMORY[0x1E69B3B50]) initWithImageSourceDefinition:v13 videoSourceDefinition:v14];
  [v8 setDefinition:v15];

  return v8;
}

+ (id)videoSourceWithVideoData:(id)a3 orientation:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = NUAssertLogger_13757();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoData != nil"];
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_13757();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  v8 = [v6 nu_digest];
  [v7 setAssetIdentifier:v8];

  v9 = [objc_alloc(MEMORY[0x1E69B3D08]) initWithVideoData:v6 orientation:a4];
  [v7 setDefinition:v9];

  return v7;
}

+ (id)videoSourceWithURL:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v13 = NUAssertLogger_13757();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v27 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_13757();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v21;
        v28 = 2114;
        v29 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v6 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  v7 = [*MEMORY[0x1E6983080] identifier];
  v8 = [a1 assetIdentifierForURL:v5 type:v7 useEmbeddedPreview:0];
  [v6 setAssetIdentifier:v8];

  v9 = objc_alloc(MEMORY[0x1E69B3A60]);
  v10 = [*MEMORY[0x1E6982EE8] identifier];
  v11 = [v9 initWithURL:v5 UTI:v10];

  [v6 setDefinition:v11];

  return v6;
}

+ (id)imageSourceWithCIImage:(id)a3 orientation:(int64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v15 = NUAssertLogger_13757();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v39 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_13757();
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
        v39 = v28;
        v40 = 2114;
        v41 = v31;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v17;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  v6 = v5;
  if ((NUOrientationIsValid() & 1) == 0)
  {
    v22 = NUAssertLogger_13757();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v39 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_13757();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v39 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v25)
    {
      v32 = dispatch_get_specific(*v17);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      v35 = [v33 callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v39 = v32;
      v40 = 2114;
      v41 = v36;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v7 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  [v7 setAssetIdentifier:v9];

  v10 = [objc_alloc(MEMORY[0x1E69B39B0]) initWithCIImage:v6 orientation:a4];
  v11 = objc_alloc(MEMORY[0x1E69B3B88]);
  v37 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v13 = [v11 initWithSourceDefinitions:v12];
  [v7 setDefinition:v13];

  return v7;
}

+ (id)imageSourceWithURL:(id)a3 type:(id)a4 proxyImage:(id)a5 orientation:(int64_t)a6 useEmbeddedPreview:(BOOL)a7
{
  v7 = a7;
  v60 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    v24 = NUAssertLogger_13757();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v57 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_13757();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v42 = dispatch_get_specific(*v26);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v26 = [v43 callStackSymbols];
        v45 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v42;
        v58 = 2114;
        v59 = v45;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v26;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  v15 = v14;
  if (!v14)
  {
    v31 = NUAssertLogger_13757();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v57 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_13757();
    v34 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        v35 = [MEMORY[0x1E696AF00] callStackSymbols];
        v26 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = v26;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_27:

      v39 = _NUAssertFailHandler();
      goto LABEL_28;
    }

LABEL_25:
    if (v34)
    {
      v46 = dispatch_get_specific(*v26);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      v26 = [v47 callStackSymbols];
      v49 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v46;
      v58 = 2114;
      v59 = v49;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if ((NUOrientationIsValid() & 1) == 0)
  {
    v36 = NUAssertLogger_13757();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v57 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_13757();
    v39 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        v40 = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = v41;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v39)
    {
      v50 = dispatch_get_specific(*v26);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      v53 = [v51 callStackSymbols];
      v54 = [v53 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v50;
      v58 = 2114;
      v59 = v54;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_30:

    _NUAssertFailHandler();
  }

  v16 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  v17 = [a1 assetIdentifierForURL:v12 type:v13 useEmbeddedPreview:v7];
  [v16 setAssetIdentifier:v17];

  v18 = [objc_alloc(MEMORY[0x1E69B3A60]) initWithURL:v12 UTI:v13];
  [v18 setUseEmbeddedPreview:v7];
  v19 = [objc_alloc(MEMORY[0x1E69B39B0]) initWithCIImage:v15 orientation:a6];
  v20 = objc_alloc(MEMORY[0x1E69B3B88]);
  v55[0] = v18;
  v55[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v22 = [v20 initWithSourceDefinitions:v21];
  [v16 setDefinition:v22];

  return v16;
}

+ (id)imageSourceWithURL:(id)a3 type:(id)a4 useEmbeddedPreview:(BOOL)a5
{
  v5 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v18 = NUAssertLogger_13757();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_13757();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  v12 = [a1 assetIdentifierForURL:v8 type:v10 useEmbeddedPreview:v5];
  [v11 setAssetIdentifier:v12];

  v13 = [objc_alloc(MEMORY[0x1E69B3A60]) initWithURL:v8 UTI:v10];
  [v13 setUseEmbeddedPreview:v5];
  v14 = objc_alloc(MEMORY[0x1E69B3B88]);
  v31 = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v16 = [v14 initWithSourceDefinitions:v15];
  [v11 setDefinition:v16];

  return v11;
}

+ (id)assetIdentifierForURL:(id)a3 type:(id)a4 useEmbeddedPreview:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v18 = 0;
  [v7 getResourceValue:&v18 forKey:*MEMORY[0x1E695DA98] error:0];
  [v18 timeIntervalSinceReferenceDate];
  v10 = v9;
  if (v8 && ([MEMORY[0x1E6982C40] typeWithIdentifier:v8], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "conformsToType:", *MEMORY[0x1E6982F88]), v11, v12) && a5)
  {
    v13 = @"%@ (preview) %a";
  }

  else
  {
    v13 = @"%@ %a";
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v7 absoluteString];
  v16 = [v14 stringWithFormat:v13, v15, v10];

  return v16;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = s_effectNames;
    s_effectNames = &unk_1F471FFC8;

    v3 = s_3DEffectNames;
    s_3DEffectNames = &unk_1F471FFF0;

    v4 = s_PortraitStageEffectNames;
    s_PortraitStageEffectNames = &unk_1F4720018;

    v7 = [&unk_1F4720040 mutableCopy];
    [v7 addEntriesFromDictionary:&unk_1F4720018];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];
    v6 = s_PortraitEffectNames;
    s_PortraitEffectNames = v5;
  }
}

@end