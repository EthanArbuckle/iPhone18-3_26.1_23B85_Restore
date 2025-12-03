@interface PIPhotoEditHelper
+ (BOOL)areCPVAssetsEditable;
+ (BOOL)canInterpretDataWithFormatIdentifier:(id)identifier formatVersion:(id)version;
+ (BOOL)compositionHasAnyStageEffect:(id)effect;
+ (BOOL)is3DEffect:(id)effect;
+ (BOOL)isAVAssetEditable:(id)editable reason:(int64_t *)reason;
+ (BOOL)isPortraitEffect:(id)effect;
+ (BOOL)isPortraitStageEffect:(id)effect;
+ (BOOL)updateCropAdjustmentControllerFor:(id)for beforeCompositionController:(id)controller error:(id *)error;
+ (id)_imageRenderRequestWithComposition:(id)composition wideGamut:(BOOL)gamut;
+ (id)adjustmentConstants;
+ (id)assetIdentifierForURL:(id)l type:(id)type useEmbeddedPreview:(BOOL)preview;
+ (id)compositionByRemovingVideoAndLivePhotoAdjustments:(id)adjustments;
+ (id)effectNameForFilterName:(id)name;
+ (id)filterNameForEffectName:(id)name;
+ (id)geometryBasedAdjustmentIdentifiers;
+ (id)geometryRequestWithComposition:(id)composition;
+ (id)imagePropertiesRequestWithComposition:(id)composition;
+ (id)imageRenderRequestWithComposition:(id)composition fillInSize:(CGSize)size wideGamut:(BOOL)gamut;
+ (id)imageRenderRequestWithComposition:(id)composition fitInSize:(CGSize)size wideGamut:(BOOL)gamut;
+ (id)imageSourceWithCIImage:(id)image orientation:(int64_t)orientation;
+ (id)imageSourceWithURL:(id)l type:(id)type proxyImage:(id)image orientation:(int64_t)orientation useEmbeddedPreview:(BOOL)preview;
+ (id)imageSourceWithURL:(id)l type:(id)type useEmbeddedPreview:(BOOL)preview;
+ (id)knownFormatsVersionsMap;
+ (id)livePhotoSourceWithPhotoSource:(id)source videoSource:(id)videoSource;
+ (id)newAdjustmentWithIdentifier:(id)identifier;
+ (id)newAdjustmentWithName:(id)name;
+ (id)newComposition;
+ (id)newCompositionControllerWithComposition:(id)composition;
+ (id)pipelineFiltersForCropping;
+ (id)pipelineFiltersForOriginalGeometry;
+ (id)pipelineFiltersForPostInpaintSegmentation;
+ (id)pipelineFiltersForPreInpaintSegmentation;
+ (id)pipelineFiltersForRAWShowingOriginalWithGeometry;
+ (id)pipelineFiltersForShowingOriginal;
+ (id)pipelineFiltersForShowingOriginalWithGeometry;
+ (id)priorityWithLevel:(int64_t)level;
+ (id)rawAdjustmentWithRawImageProperties:(id)properties;
+ (id)stringForAutoLoopFlavor:(int64_t)flavor;
+ (id)validatedCompositionCopyForComposition:(id)composition mediaType:(int64_t)type;
+ (id)videoPropertiesRequestWithComposition:(id)composition;
+ (id)videoRenderRequestWithComposition:(id)composition fitInSize:(CGSize)size;
+ (id)videoSourceWithURL:(id)l;
+ (id)videoSourceWithVideoData:(id)data orientation:(int64_t)orientation;
+ (void)handlePIGlobalSettings:(id)settings;
+ (void)initialize;
+ (void)preheatEditDependencies;
@end

@implementation PIPhotoEditHelper

+ (id)stringForAutoLoopFlavor:(int64_t)flavor
{
  if (flavor > 3)
  {
    return @"AutoLoop";
  }

  else
  {
    return off_1E82ACBA0[flavor];
  }
}

+ (id)rawAdjustmentWithRawImageProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [objc_alloc(MEMORY[0x1E69B3AD0]) initWithName:@"RAW"];
  v5 = [objc_alloc(MEMORY[0x1E69B3A98]) initWithIdentifier:v4];
  availableDecoderVersions = [propertiesCopy availableDecoderVersions];
  lastObject = [availableDecoderVersions lastObject];
  [v5 setObject:lastObject forKeyedSubscript:@"inputDecoderVersion"];

  v8 = [PIFakeBoost boostParametersFromRawProperties:propertiesCopy];
  if (v8)
  {
    v9 = +[PIFakeBoost currentVersion];
    [v5 setObject:v9 forKeyedSubscript:@"boostVersion"];

    [v5 setObject:v8 forKeyedSubscript:@"boostParams"];
  }

  v10 = [PIGainMap gainMapParametersFromRawProperties:propertiesCopy];
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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SkipShaderPrewarm"];

  if ((v3 & 1) == 0)
  {
    mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
    visionSession = [mEMORY[0x1E69B3A58] visionSession];
    v6 = objc_alloc_init(MEMORY[0x1E69844D0]);
    v8[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [visionSession prepareForPerformingRequests:v7 error:0];
  }
}

+ (BOOL)updateCropAdjustmentControllerFor:(id)for beforeCompositionController:(id)controller error:(id *)error
{
  forCopy = for;
  composition = [controller composition];
  composition2 = [forCopy composition];
  v10 = [PICropAutoCalculator updateCropAdjustment:composition after:composition2 error:error];

  if (v10)
  {
    v11 = [[PICompositionController alloc] initWithComposition:v10];
    -[PICompositionController setImageOrientation:](v11, "setImageOrientation:", [forCopy imageOrientation]);
    [forCopy applyChangesFromCompositionController:v11];
  }

  return v10 != 0;
}

+ (BOOL)canInterpretDataWithFormatIdentifier:(id)identifier formatVersion:(id)version
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  versionCopy = version;
  knownFormatsVersionsMap = [self knownFormatsVersionsMap];
  v9 = [knownFormatsVersionsMap objectForKeyedSubscript:identifierCopy];

  v10 = 0;
  if (versionCopy && v9)
  {
    v11 = [PIPhotoEditAdjustmentsVersion versionFromString:versionCopy];
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
    v17 = identifierCopy;
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
    v21 = versionCopy;
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
  pICropAdjustmentKey = [v2 PICropAdjustmentKey];
  v11[0] = pICropAdjustmentKey;
  pIOrientationAdjustmentKey = [v2 PIOrientationAdjustmentKey];
  v11[1] = pIOrientationAdjustmentKey;
  pIRetouchAdjustmentKey = [v2 PIRetouchAdjustmentKey];
  v11[2] = pIRetouchAdjustmentKey;
  pIRedEyeAdjustmentKey = [v2 PIRedEyeAdjustmentKey];
  v11[3] = pIRedEyeAdjustmentKey;
  pIHighResFusionAdjustmentKey = [v2 PIHighResFusionAdjustmentKey];
  v11[4] = pIHighResFusionAdjustmentKey;
  pIInpaintAdjustmentKey = [v2 PIInpaintAdjustmentKey];
  v11[5] = pIInpaintAdjustmentKey;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

+ (id)validatedCompositionCopyForComposition:(id)composition mediaType:(int64_t)type
{
  compositionCopy = composition;
  if (!compositionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PIPhotoEditHelper.m" lineNumber:691 description:{@"Invalid parameter not satisfying: %@", @"composition"}];
  }

  v8 = [compositionCopy copy];
  adjustmentConstants = [self adjustmentConstants];
  pIAutoLoopAdjustmentKey = [adjustmentConstants PIAutoLoopAdjustmentKey];
  v11 = [v8 objectForKeyedSubscript:pIAutoLoopAdjustmentKey];

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

      pIAutoLoopAdjustmentKey2 = [adjustmentConstants PIAutoLoopAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:pIAutoLoopAdjustmentKey2];

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

    pIAutoLoopAdjustmentKey3 = [adjustmentConstants PIAutoLoopAdjustmentKey];
    [v8 setObject:0 forKeyedSubscript:pIAutoLoopAdjustmentKey3];

    v11 = 0;
LABEL_17:
    v66 = 1;
    if (!type)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (type != 3 || !v11)
  {
    goto LABEL_17;
  }

  v19 = [v11 objectForKeyedSubscript:@"enabled"];
  bOOLValue = [v19 BOOLValue];

  v21 = @"AutoLoop";
  if ([v16 isEqualToString:@"AutoLoop"])
  {

    if ((bOOLValue & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v66 = 0;
    type = 2;
    goto LABEL_27;
  }

  v22 = @"Mirror";
  v23 = [v16 isEqualToString:@"Mirror"];

  if (v23 & bOOLValue)
  {
    goto LABEL_26;
  }

LABEL_23:
  v66 = 1;
  if ([v8 mediaType] == 2)
  {
    type = 3;
LABEL_27:
    [v8 setMediaType:type];
  }

LABEL_28:
  pIRedEyeAdjustmentKey = [adjustmentConstants PIRedEyeAdjustmentKey];
  v25 = [v8 objectForKeyedSubscript:pIRedEyeAdjustmentKey];

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

      pIRedEyeAdjustmentKey2 = [adjustmentConstants PIRedEyeAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:pIRedEyeAdjustmentKey2];
    }
  }

  pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
  v30 = [v8 objectForKeyedSubscript:pIDepthAdjustmentKey];

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

      pIDepthAdjustmentKey2 = [adjustmentConstants PIDepthAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:pIDepthAdjustmentKey2];
      goto LABEL_47;
    }

    v32 = [v30 objectForKeyedSubscript:@"aperture"];

    if (!v32)
    {
      pIDepthAdjustmentKey2 = [v30 objectForKeyedSubscript:@"depthInfo"];
      v34 = [pIDepthAdjustmentKey2 objectForKeyedSubscript:@"aperture"];
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
  pIPortraitAdjustmentKey = [adjustmentConstants PIPortraitAdjustmentKey];
  v39 = [v8 objectForKeyedSubscript:pIPortraitAdjustmentKey];

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

      pIPortraitAdjustmentKey2 = [adjustmentConstants PIPortraitAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:pIPortraitAdjustmentKey2];
    }
  }

  v68 = v16;
  pITrimAdjustmentKey = [adjustmentConstants PITrimAdjustmentKey];
  v44 = [v8 objectForKeyedSubscript:pITrimAdjustmentKey];

  if (v44)
  {
    selfCopy = self;
    v65 = compositionCopy;
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

      pITrimAdjustmentKey2 = [adjustmentConstants PITrimAdjustmentKey];
      [v8 setObject:0 forKeyedSubscript:pITrimAdjustmentKey2];
    }

    self = selfCopy;
    compositionCopy = v65;
  }

  pIMuteAdjustmentKey = [adjustmentConstants PIMuteAdjustmentKey];
  v54 = [v8 objectForKeyedSubscript:pIMuteAdjustmentKey];

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
    photosSchema = [self photosSchema];
    contents = [photosSchema contents];
    pIMuteAdjustmentKey2 = [adjustmentConstants PIMuteAdjustmentKey];
    [contents objectForKeyedSubscript:pIMuteAdjustmentKey2];
    v60 = v59 = self;

    v54 = [PIPhotoEditHelper newAdjustmentWithIdentifier:v60];
    [v54 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
    pIMuteAdjustmentKey3 = [adjustmentConstants PIMuteAdjustmentKey];
    [v8 setObject:v54 forKeyedSubscript:pIMuteAdjustmentKey3];

    self = v59;
  }

  [self handlePIGlobalSettings:v8];

  return v8;
}

+ (void)handlePIGlobalSettings:(id)settings
{
  settingsCopy = settings;
  v3 = +[PIGlobalSettings globalSettings];
  if ([(PIDepthAdjustmentController *)v3 forceGlassesMatteOff])
  {
    v4 = [settingsCopy objectForKeyedSubscript:@"depthEffect"];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = [PIDepthAdjustmentController alloc];
    v6 = [settingsCopy objectForKeyedSubscript:@"depthEffect"];
    v3 = [(PIDepthAdjustmentController *)v5 initWithAdjustment:v6];

    [(PIDepthAdjustmentController *)v3 setGlassesMatteAllowed:MEMORY[0x1E695E110]];
  }

LABEL_5:
  v7 = [settingsCopy objectForKeyedSubscript:@"portraitEffect"];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = +[PIGlobalSettings globalSettings];
  forceSpillMatteOff = [v8 forceSpillMatteOff];

  if (forceSpillMatteOff)
  {
    v10 = MEMORY[0x1E695E110];
  }

  else
  {
    v11 = +[PIGlobalSettings globalSettings];
    allowSpillMatteOnOlderPortraitV2Captures = [v11 allowSpillMatteOnOlderPortraitV2Captures];

    if (!allowSpillMatteOnOlderPortraitV2Captures)
    {
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E695E118];
  }

  v13 = [PIPortraitAdjustmentController alloc];
  v14 = [settingsCopy objectForKeyedSubscript:@"portraitEffect"];
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

+ (id)newCompositionControllerWithComposition:(id)composition
{
  compositionCopy = composition;
  v4 = [[PICompositionController alloc] initWithComposition:compositionCopy];

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
  pipelineFiltersForShowingOriginalWithGeometry = [objc_opt_class() pipelineFiltersForShowingOriginalWithGeometry];
  v3 = [pipelineFiltersForShowingOriginalWithGeometry mutableCopy];

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

+ (id)filterNameForEffectName:(id)name
{
  nameCopy = name;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__13740;
  v30 = __Block_byref_object_dispose__13741;
  v31 = 0;
  allKeys = [s_3DEffectNames allKeys];
  if ([allKeys containsObject:nameCopy])
  {
    goto LABEL_4;
  }

  allKeys2 = [s_PortraitEffectNames allKeys];
  if ([allKeys2 containsObject:nameCopy])
  {

LABEL_4:
LABEL_5:
    v7 = v27;
    v8 = nameCopy;
    v9 = v7[5];
    v7[5] = v8;
    goto LABEL_6;
  }

  allKeys3 = [s_effectNames allKeys];
  v13 = [allKeys3 containsObject:nameCopy];

  if (v13)
  {
    goto LABEL_5;
  }

  if ([self is3DEffect:nameCopy])
  {
    v14 = s_3DEffectNames;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__PIPhotoEditHelper_filterNameForEffectName___block_invoke;
    v23[3] = &unk_1E82AB0D0;
    v24 = nameCopy;
    v25 = &v26;
    [v14 enumerateKeysAndObjectsUsingBlock:v23];
    v9 = v24;
  }

  else if ([self isPortraitEffect:nameCopy])
  {
    v15 = s_PortraitEffectNames;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__PIPhotoEditHelper_filterNameForEffectName___block_invoke_2;
    v20[3] = &unk_1E82AB0D0;
    v21 = nameCopy;
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
    v18 = nameCopy;
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

+ (id)effectNameForFilterName:(id)name
{
  nameCopy = name;
  allValues = [s_3DEffectNames allValues];
  if ([allValues containsObject:nameCopy])
  {
    goto LABEL_4;
  }

  allValues2 = [s_PortraitEffectNames allValues];
  if ([allValues2 containsObject:nameCopy])
  {

LABEL_4:
    goto LABEL_5;
  }

  allValues3 = [s_effectNames allValues];
  v11 = [allValues3 containsObject:nameCopy];

  if ((v11 & 1) == 0)
  {
    if ([self is3DEffect:nameCopy])
    {
      v12 = s_3DEffectNames;
    }

    else if ([self isPortraitEffect:nameCopy])
    {
      v12 = s_PortraitEffectNames;
    }

    else
    {
      v12 = s_effectNames;
    }

    v7 = [v12 objectForKeyedSubscript:nameCopy];
    goto LABEL_6;
  }

LABEL_5:
  v7 = nameCopy;
LABEL_6:
  v8 = v7;

  return v8;
}

+ (BOOL)isAVAssetEditable:(id)editable reason:(int64_t *)reason
{
  editableCopy = editable;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__PIPhotoEditHelper_isAVAssetEditable_reason___block_invoke;
  v25[3] = &__block_descriptor_40_e8_v16__0q8l;
  v25[4] = reason;
  v7 = MEMORY[0x1CCA61740](v25);
  if ([editableCopy isReadable])
  {
    if ([editableCopy isPlayable])
    {
      if ([editableCopy isExportable])
      {
        v8 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:editableCopy timeZoneLookup:0];
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
        v9 = [MEMORY[0x1E69B3D40] isAVAssetDolbyProfile5:editableCopy error:&v23];
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
          LOBYTE(bOOLValue) = 0;
LABEL_45:

          goto LABEL_16;
        }

        if ([PICinematicVideoUtilities assetIsCinematicVideo:editableCopy])
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

          if ([MEMORY[0x1E69B3D40] isAssetUnsupportedLegacyPortraitVideo:editableCopy])
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
          bOOLValue = [v18 BOOLValue];

          if (bOOLValue)
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

          areCPVAssetsEditable = [self areCPVAssetsEditable];
          v21 = NULogger_13745();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if ((areCPVAssetsEditable & 1) == 0)
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

        LOBYTE(bOOLValue) = 1;
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

  LOBYTE(bOOLValue) = 0;
LABEL_16:

  return bOOLValue;
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
    currentPlatform = [MEMORY[0x1E69B3BF8] currentPlatform];
    supportsANE = [currentPlatform supportsANE];

    if (supportsANE)
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

+ (BOOL)compositionHasAnyStageEffect:(id)effect
{
  effectCopy = effect;
  v5 = [effectCopy objectForKeyedSubscript:@"depthEffect"];
  v6 = [effectCopy objectForKeyedSubscript:@"portraitEffect"];

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
  bOOLValue = [v9 BOOLValue];

  if (!bOOLValue)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [v6 objectForKeyedSubscript:@"kind"];
  v8 = [self isPortraitStageEffect:v7];
LABEL_6:

LABEL_8:
  return v8;
}

+ (BOOL)isPortraitStageEffect:(id)effect
{
  effectCopy = effect;
  allKeys = [s_PortraitStageEffectNames allKeys];
  if ([allKeys containsObject:effectCopy])
  {
    v5 = 1;
  }

  else
  {
    allValues = [s_PortraitStageEffectNames allValues];
    v5 = [allValues containsObject:effectCopy];
  }

  return v5;
}

+ (BOOL)isPortraitEffect:(id)effect
{
  effectCopy = effect;
  allKeys = [s_PortraitEffectNames allKeys];
  if ([allKeys containsObject:effectCopy])
  {
    v5 = 1;
  }

  else
  {
    allValues = [s_PortraitEffectNames allValues];
    v5 = [allValues containsObject:effectCopy];
  }

  return v5;
}

+ (BOOL)is3DEffect:(id)effect
{
  effectCopy = effect;
  allKeys = [s_3DEffectNames allKeys];
  if ([allKeys containsObject:effectCopy])
  {
    v5 = 1;
  }

  else
  {
    allValues = [s_3DEffectNames allValues];
    v5 = [allValues containsObject:effectCopy];
  }

  return v5;
}

+ (id)videoRenderRequestWithComposition:(id)composition fitInSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
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
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = compositionCopy;
  v8 = [objc_alloc(MEMORY[0x1E69B3D30]) initWithComposition:compositionCopy];
  [v8 setColorSpace:0];
  [v8 setSampleMode:2];
  v9 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetSize:{width, height}];
  [v8 setScalePolicy:v9];

  return v8;
}

+ (id)priorityWithLevel:(int64_t)level
{
  v3 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:level];

  return v3;
}

+ (id)_imageRenderRequestWithComposition:(id)composition wideGamut:(BOOL)gamut
{
  v28 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
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
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = compositionCopy;
  v7 = [objc_alloc(MEMORY[0x1E69B3AD8]) initWithComposition:compositionCopy];
  v8 = objc_alloc_init(MEMORY[0x1E69B3A90]);
  [v7 setRegionPolicy:v8];

  if (gamut)
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

+ (id)imageRenderRequestWithComposition:(id)composition fillInSize:(CGSize)size wideGamut:(BOOL)gamut
{
  gamutCopy = gamut;
  height = size.height;
  width = size.width;
  v32 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
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
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v23;
        v30 = 2114;
        v31 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = compositionCopy;
  v11 = [self _imageRenderRequestWithComposition:compositionCopy wideGamut:gamutCopy];
  v12 = [objc_alloc(MEMORY[0x1E69B3A68]) initWithTargetSize:{width, height}];
  [v11 setScalePolicy:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69B3CC0]);
  [v11 setExtentPolicy:v13];

  [v11 setName:@"PIPhotoEditHelper-fillSquare-image"];

  return v11;
}

+ (id)imageRenderRequestWithComposition:(id)composition fitInSize:(CGSize)size wideGamut:(BOOL)gamut
{
  gamutCopy = gamut;
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
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
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = compositionCopy;
  v11 = [self _imageRenderRequestWithComposition:compositionCopy wideGamut:gamutCopy];
  v12 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetSize:{width, height}];
  [v11 setScalePolicy:v12];

  [v11 setName:@"PIPhotoEditHelper-targetSize-image"];

  return v11;
}

+ (id)videoPropertiesRequestWithComposition:(id)composition
{
  v24 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
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
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = compositionCopy;
  v5 = [objc_alloc(MEMORY[0x1E69B3D28]) initWithComposition:compositionCopy];

  return v5;
}

+ (id)imagePropertiesRequestWithComposition:(id)composition
{
  v24 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
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
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = compositionCopy;
  v5 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithComposition:compositionCopy];

  return v5;
}

+ (id)geometryRequestWithComposition:(id)composition
{
  v24 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
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
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = compositionCopy;
  v5 = [objc_alloc(MEMORY[0x1E69B3AA8]) initWithComposition:compositionCopy];

  return v5;
}

+ (id)newAdjustmentWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
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
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = identifierCopy;
  v5 = [objc_alloc(MEMORY[0x1E69B3A98]) initWithIdentifier:identifierCopy];

  return v5;
}

+ (id)newAdjustmentWithName:(id)name
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
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
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v20;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v15;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = nameCopy;
  v5 = [objc_alloc(MEMORY[0x1E69B3AD0]) initWithName:nameCopy];
  v6 = [objc_alloc(MEMORY[0x1E69B3A98]) initWithIdentifier:v5];

  return v6;
}

+ (id)compositionByRemovingVideoAndLivePhotoAdjustments:(id)adjustments
{
  v3 = [adjustments copy];
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

+ (id)livePhotoSourceWithPhotoSource:(id)source videoSource:(id)videoSource
{
  v43 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  videoSourceCopy = videoSource;
  if (!sourceCopy)
  {
    v17 = NUAssertLogger_13757();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "photoSource != nil"];
      *buf = 138543362;
      v40 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_13757();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v30 = dispatch_get_specific(*callStackSymbols);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v30;
        v41 = 2114;
        v42 = v33;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  v7 = videoSourceCopy;
  if (!videoSourceCopy)
  {
    v24 = NUAssertLogger_13757();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoSource != nil"];
      *buf = 138543362;
      v40 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_13757();
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v40 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v27)
    {
      v34 = dispatch_get_specific(*callStackSymbols);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      callStackSymbols4 = [v35 callStackSymbols];
      v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
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
  assetIdentifier = [sourceCopy assetIdentifier];
  assetIdentifier2 = [v7 assetIdentifier];
  v12 = [v9 stringWithFormat:@"%@+%@", assetIdentifier, assetIdentifier2];
  [v8 setAssetIdentifier:v12];

  definition = [sourceCopy definition];
  definition2 = [v7 definition];
  v15 = [objc_alloc(MEMORY[0x1E69B3B50]) initWithImageSourceDefinition:definition videoSourceDefinition:definition2];
  [v8 setDefinition:v15];

  return v8;
}

+ (id)videoSourceWithVideoData:(id)data orientation:(int64_t)orientation
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
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
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = dataCopy;
  v7 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  nu_digest = [v6 nu_digest];
  [v7 setAssetIdentifier:nu_digest];

  v9 = [objc_alloc(MEMORY[0x1E69B3D08]) initWithVideoData:v6 orientation:orientation];
  [v7 setDefinition:v9];

  return v7;
}

+ (id)videoSourceWithURL:(id)l
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
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
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v21;
        v28 = 2114;
        v29 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = lCopy;
  v6 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  identifier = [*MEMORY[0x1E6983080] identifier];
  v8 = [self assetIdentifierForURL:v5 type:identifier useEmbeddedPreview:0];
  [v6 setAssetIdentifier:v8];

  v9 = objc_alloc(MEMORY[0x1E69B3A60]);
  identifier2 = [*MEMORY[0x1E6982EE8] identifier];
  v11 = [v9 initWithURL:v5 UTI:identifier2];

  [v6 setDefinition:v11];

  return v6;
}

+ (id)imageSourceWithCIImage:(id)image orientation:(int64_t)orientation
{
  v42 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!imageCopy)
  {
    v15 = NUAssertLogger_13757();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v39 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_13757();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(*callStackSymbols);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v31;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  v6 = imageCopy;
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

    callStackSymbols = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_13757();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v39 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v25)
    {
      v32 = dispatch_get_specific(*callStackSymbols);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      callStackSymbols4 = [v33 callStackSymbols];
      v36 = [callStackSymbols4 componentsJoinedByString:@"\n"];
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v7 setAssetIdentifier:uUIDString];

  v10 = [objc_alloc(MEMORY[0x1E69B39B0]) initWithCIImage:v6 orientation:orientation];
  v11 = objc_alloc(MEMORY[0x1E69B3B88]);
  v37 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v13 = [v11 initWithSourceDefinitions:v12];
  [v7 setDefinition:v13];

  return v7;
}

+ (id)imageSourceWithURL:(id)l type:(id)type proxyImage:(id)image orientation:(int64_t)orientation useEmbeddedPreview:(BOOL)preview
{
  previewCopy = preview;
  v60 = *MEMORY[0x1E69E9840];
  lCopy = l;
  typeCopy = type;
  imageCopy = image;
  if (!lCopy)
  {
    v24 = NUAssertLogger_13757();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v57 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_13757();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v42 = dispatch_get_specific(*callStackSymbols);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols = [v43 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v42;
        v58 = 2114;
        v59 = v45;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  v15 = imageCopy;
  if (!imageCopy)
  {
    v31 = NUAssertLogger_13757();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v57 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_13757();
    v34 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_27:

      v39 = _NUAssertFailHandler();
      goto LABEL_28;
    }

LABEL_25:
    if (v34)
    {
      v46 = dispatch_get_specific(*callStackSymbols);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      callStackSymbols = [v47 callStackSymbols];
      v49 = [callStackSymbols componentsJoinedByString:@"\n"];
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

    callStackSymbols = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_13757();
    v39 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = v41;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v39)
    {
      v50 = dispatch_get_specific(*callStackSymbols);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      callStackSymbols5 = [v51 callStackSymbols];
      v54 = [callStackSymbols5 componentsJoinedByString:@"\n"];
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
  v17 = [self assetIdentifierForURL:lCopy type:typeCopy useEmbeddedPreview:previewCopy];
  [v16 setAssetIdentifier:v17];

  v18 = [objc_alloc(MEMORY[0x1E69B3A60]) initWithURL:lCopy UTI:typeCopy];
  [v18 setUseEmbeddedPreview:previewCopy];
  v19 = [objc_alloc(MEMORY[0x1E69B39B0]) initWithCIImage:v15 orientation:orientation];
  v20 = objc_alloc(MEMORY[0x1E69B3B88]);
  v55[0] = v18;
  v55[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v22 = [v20 initWithSourceDefinitions:v21];
  [v16 setDefinition:v22];

  return v16;
}

+ (id)imageSourceWithURL:(id)l type:(id)type useEmbeddedPreview:(BOOL)preview
{
  previewCopy = preview;
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  typeCopy = type;
  if (!lCopy)
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
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = typeCopy;
  v11 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  v12 = [self assetIdentifierForURL:lCopy type:v10 useEmbeddedPreview:previewCopy];
  [v11 setAssetIdentifier:v12];

  v13 = [objc_alloc(MEMORY[0x1E69B3A60]) initWithURL:lCopy UTI:v10];
  [v13 setUseEmbeddedPreview:previewCopy];
  v14 = objc_alloc(MEMORY[0x1E69B3B88]);
  v31 = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v16 = [v14 initWithSourceDefinitions:v15];
  [v11 setDefinition:v16];

  return v11;
}

+ (id)assetIdentifierForURL:(id)l type:(id)type useEmbeddedPreview:(BOOL)preview
{
  lCopy = l;
  typeCopy = type;
  v18 = 0;
  [lCopy getResourceValue:&v18 forKey:*MEMORY[0x1E695DA98] error:0];
  [v18 timeIntervalSinceReferenceDate];
  v10 = v9;
  if (typeCopy && ([MEMORY[0x1E6982C40] typeWithIdentifier:typeCopy], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "conformsToType:", *MEMORY[0x1E6982F88]), v11, v12) && preview)
  {
    v13 = @"%@ (preview) %a";
  }

  else
  {
    v13 = @"%@ %a";
  }

  v14 = MEMORY[0x1E696AEC0];
  absoluteString = [lCopy absoluteString];
  v16 = [v14 stringWithFormat:v13, absoluteString, v10];

  return v16;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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