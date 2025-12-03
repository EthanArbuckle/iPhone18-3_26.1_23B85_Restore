@interface _UILegacyEffectConverter
+ (id)sharedConverter;
- (id)backdropSettingsForBlurStyle:(int64_t)style;
- (id)vibrancyConfigForHighQualityVibrancyStyle:(int64_t)style;
- (id)vibrancyConfigForLowQualityVibrancyStyle:(int64_t)style;
- (id)vibrancyConfigForReducedTransperancyVibrancyStyle:(int64_t)style;
- (void)applyBackdropSettings:(id)settings toEffectDescriptor:(id)descriptor environment:(id)environment;
- (void)applyVibrancyConfig:(id)config toEffectDescriptor:(id)descriptor;
@end

@implementation _UILegacyEffectConverter

+ (id)sharedConverter
{
  if (qword_1ED49C8E0 != -1)
  {
    dispatch_once(&qword_1ED49C8E0, &__block_literal_global_46);
  }

  v3 = _MergedGlobals_999;

  return v3;
}

- (id)backdropSettingsForBlurStyle:(int64_t)style
{
  v3 = objc_opt_new();

  return v3;
}

- (id)vibrancyConfigForHighQualityVibrancyStyle:(int64_t)style
{
  v3 = objc_opt_new();

  return v3;
}

- (id)vibrancyConfigForLowQualityVibrancyStyle:(int64_t)style
{
  v3 = objc_opt_new();

  return v3;
}

- (id)vibrancyConfigForReducedTransperancyVibrancyStyle:(int64_t)style
{
  v3 = objc_opt_new();

  return v3;
}

- (void)applyBackdropSettings:(id)settings toEffectDescriptor:(id)descriptor environment:(id)environment
{
  settingsCopy = settings;
  descriptorCopy = descriptor;
  environmentCopy = environment;
  [settingsCopy blurRadius];
  v11 = v10;
  [settingsCopy scale];
  if (v11 > 0.0 || v12 > 0.0)
  {
    _UIBlurEffectAddBlurFilterEntry(descriptorCopy, environmentCopy, v11, v12);
  }

  if ([settingsCopy usesGrayscaleTintView])
  {
    if (([settingsCopy lightenGrayscaleWithSourceOver] & 1) != 0 || (objc_msgSend(settingsCopy, "grayscaleTintAlpha"), v13 > 0.0))
    {
      if ([settingsCopy lightenGrayscaleWithSourceOver])
      {
        v14 = *MEMORY[0x1E6979C38];
        [settingsCopy grayscaleTintLevel];
        v15 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
        [settingsCopy grayscaleTintAlpha];
      }

      else
      {
        v14 = *MEMORY[0x1E6979D40];
        [settingsCopy grayscaleTintLevel];
        v18 = v17;
        [settingsCopy grayscaleTintAlpha];
        v15 = [UIColor colorWithWhite:v18 alpha:v19];
        v16 = 1.0;
      }

      v20 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v14 color:v15 alpha:v16];

      [descriptorCopy addOverlay:v20];
    }
  }

  if ([settingsCopy usesColorTintView])
  {
    colorTint = [settingsCopy colorTint];
    if (colorTint)
    {
      v22 = colorTint;
      [settingsCopy colorTintAlpha];
      v24 = v23;

      if (v24 > 0.0)
      {
        v25 = *MEMORY[0x1E6979D40];
        colorTint2 = [settingsCopy colorTint];
        [settingsCopy colorTintAlpha];
        v27 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v25 color:colorTint2 alpha:?];
        [descriptorCopy addOverlay:v27];
      }
    }
  }

  if ([settingsCopy usesColorBurnTintView])
  {
    [settingsCopy colorBurnTintAlpha];
    if (v28 > 0.0)
    {
      v29 = *MEMORY[0x1E6979850];
      [settingsCopy colorBurnTintLevel];
      v30 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
      [settingsCopy colorBurnTintAlpha];
      v31 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v29 color:v30 alpha:?];
      [descriptorCopy addOverlay:v31];
    }
  }

  if ([settingsCopy usesDarkeningTintView])
  {
    [settingsCopy darkeningTintAlpha];
    if (v32 > 0.0)
    {
      darkenWithSourceOver = [settingsCopy darkenWithSourceOver];
      v34 = MEMORY[0x1E69798C8];
      if (!darkenWithSourceOver)
      {
        v34 = MEMORY[0x1E69798C0];
      }

      v35 = *v34;
      [settingsCopy darkeningTintHue];
      v37 = v36;
      [settingsCopy darkeningTintSaturation];
      v39 = v38;
      [settingsCopy darkeningTintBrightness];
      v41 = [UIColor colorWithHue:v37 saturation:v39 brightness:v40 alpha:1.0];
      [settingsCopy darkeningTintAlpha];
      v42 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v35 color:v41 alpha:?];
      [descriptorCopy addOverlay:v42];
    }
  }

  [settingsCopy saturationDeltaFactor];
  if (v43 != 1.0)
  {
    [settingsCopy saturationDeltaFactor];
    v44 = [UIColorEffect colorEffectSaturate:?];
    _filterEntry = [v44 _filterEntry];
    [descriptorCopy addFilterEntry:_filterEntry];
  }

  colorOffsetMatrix = [settingsCopy colorOffsetMatrix];

  if (colorOffsetMatrix)
  {
    colorOffsetMatrix2 = [settingsCopy colorOffsetMatrix];
    v48 = colorOffsetMatrix2;
    if (colorOffsetMatrix2)
    {
      [colorOffsetMatrix2 CAColorMatrixValue];
      v83 = v101;
      v85 = v102;
      v50 = v104;
      v49 = v105;
      v51 = v106;
      v91 = v107;
      v92 = v100;
      v86 = v103;
      v88 = v108;
      v89 = v109;
      v94 = v110;
      v95 = v111;
      v52 = v112;
      v53 = v114;
      v97 = v113;
      v98 = v115;
      v54 = v116;
      v55 = v117;
      v56 = v118;
    }

    else
    {
      v56 = 0;
      v55 = 0.0;
      v54 = 0;
      v98 = 0;
      v53 = 0.0;
      v95 = 0.0;
      v97 = 0.0;
      v52 = 0.0;
      v92 = 0.0;
      v94 = 0.0;
      v88 = 0;
      v89 = 0;
      v91 = 0.0;
      v51 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      v85 = 0.0;
      v86 = 0.0;
      v83 = 0;
    }

    v60 = v91;
    v58 = v92;
    v61 = HIDWORD(v98);
    v62 = v98;
    v64 = v95;
    v63 = v97;
    v65 = v94;
    v67 = v88;
    v66 = v89;
    v69 = v85;
    v68 = v86;
    v70 = v83;
  }

  else
  {
    [settingsCopy colorOffsetAlpha];
    v58 = v57 * 0.8 + 1.0 - v57;
    v59 = (1.0 - v57) * 0.0;
    v50 = v59 - v57 * 0.5;
    v53 = v57 * 0.5 + v59;
    v49 = v57 * 0.9 + v59;
    v51 = v57 + 1.0 - v57;
    v60 = v57 * 0.1 + v59;
    v52 = v57 * 0.5 + 1.0 - v57;
    v55 = 1.0;
    v56 = 0;
    v54 = 0;
    v61 = 0;
    v62 = 0;
    v63 = v53;
    v64 = v53;
    v65 = v53;
    v66 = 0;
    v67 = 0;
    v68 = v53;
    v69 = v50;
    v70 = 0;
  }

  v96 = __PAIR64__(LODWORD(v63), LODWORD(v64));
  v84 = __PAIR64__(LODWORD(v49), LODWORD(v51));
  v99 = __PAIR64__(v61, v62);
  v87 = __PAIR64__(LODWORD(v53), LODWORD(v52));
  v100 = v58;
  v90 = __PAIR64__(v56, v54);
  v93 = __PAIR64__(LODWORD(v65), LODWORD(v55));
  v101 = v70;
  v102 = v69;
  v103 = v68;
  v104 = v50;
  v105 = v49;
  v106 = v51;
  v107 = v60;
  v108 = v67;
  v109 = v66;
  v110 = v65;
  v111 = v64;
  v112 = v52;
  v113 = v63;
  v114 = v53;
  v115 = __PAIR64__(v61, v62);
  v116 = v54;
  v117 = v55;
  v118 = v56;
  v71 = v58;
  v72 = v60;
  v73 = v66;
  v74 = v67;
  v75 = v68;
  v76 = v69;
  v77 = v70;
  if (!_UICAColorMatrixIsIdentity(&v100))
  {
    v100 = v71;
    v101 = v77;
    v102 = v76;
    v103 = v75;
    v104 = v50;
    v105 = *(&v84 + 1);
    v106 = *&v84;
    v107 = v72;
    v108 = v74;
    v109 = v73;
    v110 = *(&v93 + 1);
    v111 = *&v96;
    v112 = *&v87;
    v113 = *(&v96 + 1);
    v114 = *(&v87 + 1);
    v115 = v99;
    v116 = v90;
    v117 = *&v93;
    v118 = HIDWORD(v90);
    v78 = [UIColorEffect _colorEffectCAMatrix:&v100];
    _filterEntry2 = [v78 _filterEntry];
    [descriptorCopy addFilterEntry:_filterEntry2];
  }

  [settingsCopy zoom];
  if (v80 > 0.0)
  {
    [settingsCopy zoom];
    v81 = [_UIZoomEffect zoomEffectWithMagnitude:?];
    _viewEntry = [v81 _viewEntry];
    [descriptorCopy addViewEffect:_viewEntry];
  }
}

- (void)applyVibrancyConfig:(id)config toEffectDescriptor:(id)descriptor
{
  configCopy = config;
  descriptorCopy = descriptor;
  contentConfig = [configCopy contentConfig];
  if (contentConfig)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [descriptorCopy setTextShouldRenderWithTintColor:1];
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke;
    v16[3] = &unk_1E70F6D48;
    v17 = descriptorCopy;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke_2;
    v14[3] = &unk_1E70F6D70;
    v15 = v17;
    _UILegacyEffectConvertLayerConfig(contentConfig, v16, v14);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke_3;
  v11[3] = &unk_1E70F6DC0;
  v12 = descriptorCopy;
  v13 = a2;
  v11[4] = self;
  v10 = descriptorCopy;
  [configCopy enumerateLayerConfigs:v11];
}

@end