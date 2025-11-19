@interface _UILegacyEffectConverter
+ (id)sharedConverter;
- (id)backdropSettingsForBlurStyle:(int64_t)a3;
- (id)vibrancyConfigForHighQualityVibrancyStyle:(int64_t)a3;
- (id)vibrancyConfigForLowQualityVibrancyStyle:(int64_t)a3;
- (id)vibrancyConfigForReducedTransperancyVibrancyStyle:(int64_t)a3;
- (void)applyBackdropSettings:(id)a3 toEffectDescriptor:(id)a4 environment:(id)a5;
- (void)applyVibrancyConfig:(id)a3 toEffectDescriptor:(id)a4;
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

- (id)backdropSettingsForBlurStyle:(int64_t)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)vibrancyConfigForHighQualityVibrancyStyle:(int64_t)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)vibrancyConfigForLowQualityVibrancyStyle:(int64_t)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)vibrancyConfigForReducedTransperancyVibrancyStyle:(int64_t)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (void)applyBackdropSettings:(id)a3 toEffectDescriptor:(id)a4 environment:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 blurRadius];
  v11 = v10;
  [v7 scale];
  if (v11 > 0.0 || v12 > 0.0)
  {
    _UIBlurEffectAddBlurFilterEntry(v8, v9, v11, v12);
  }

  if ([v7 usesGrayscaleTintView])
  {
    if (([v7 lightenGrayscaleWithSourceOver] & 1) != 0 || (objc_msgSend(v7, "grayscaleTintAlpha"), v13 > 0.0))
    {
      if ([v7 lightenGrayscaleWithSourceOver])
      {
        v14 = *MEMORY[0x1E6979C38];
        [v7 grayscaleTintLevel];
        v15 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
        [v7 grayscaleTintAlpha];
      }

      else
      {
        v14 = *MEMORY[0x1E6979D40];
        [v7 grayscaleTintLevel];
        v18 = v17;
        [v7 grayscaleTintAlpha];
        v15 = [UIColor colorWithWhite:v18 alpha:v19];
        v16 = 1.0;
      }

      v20 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v14 color:v15 alpha:v16];

      [v8 addOverlay:v20];
    }
  }

  if ([v7 usesColorTintView])
  {
    v21 = [v7 colorTint];
    if (v21)
    {
      v22 = v21;
      [v7 colorTintAlpha];
      v24 = v23;

      if (v24 > 0.0)
      {
        v25 = *MEMORY[0x1E6979D40];
        v26 = [v7 colorTint];
        [v7 colorTintAlpha];
        v27 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v25 color:v26 alpha:?];
        [v8 addOverlay:v27];
      }
    }
  }

  if ([v7 usesColorBurnTintView])
  {
    [v7 colorBurnTintAlpha];
    if (v28 > 0.0)
    {
      v29 = *MEMORY[0x1E6979850];
      [v7 colorBurnTintLevel];
      v30 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
      [v7 colorBurnTintAlpha];
      v31 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v29 color:v30 alpha:?];
      [v8 addOverlay:v31];
    }
  }

  if ([v7 usesDarkeningTintView])
  {
    [v7 darkeningTintAlpha];
    if (v32 > 0.0)
    {
      v33 = [v7 darkenWithSourceOver];
      v34 = MEMORY[0x1E69798C8];
      if (!v33)
      {
        v34 = MEMORY[0x1E69798C0];
      }

      v35 = *v34;
      [v7 darkeningTintHue];
      v37 = v36;
      [v7 darkeningTintSaturation];
      v39 = v38;
      [v7 darkeningTintBrightness];
      v41 = [UIColor colorWithHue:v37 saturation:v39 brightness:v40 alpha:1.0];
      [v7 darkeningTintAlpha];
      v42 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v35 color:v41 alpha:?];
      [v8 addOverlay:v42];
    }
  }

  [v7 saturationDeltaFactor];
  if (v43 != 1.0)
  {
    [v7 saturationDeltaFactor];
    v44 = [UIColorEffect colorEffectSaturate:?];
    v45 = [v44 _filterEntry];
    [v8 addFilterEntry:v45];
  }

  v46 = [v7 colorOffsetMatrix];

  if (v46)
  {
    v47 = [v7 colorOffsetMatrix];
    v48 = v47;
    if (v47)
    {
      [v47 CAColorMatrixValue];
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
    [v7 colorOffsetAlpha];
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
    v79 = [v78 _filterEntry];
    [v8 addFilterEntry:v79];
  }

  [v7 zoom];
  if (v80 > 0.0)
  {
    [v7 zoom];
    v81 = [_UIZoomEffect zoomEffectWithMagnitude:?];
    v82 = [v81 _viewEntry];
    [v8 addViewEffect:v82];
  }
}

- (void)applyVibrancyConfig:(id)a3 toEffectDescriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 contentConfig];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v8 setTextShouldRenderWithTintColor:1];
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke;
    v16[3] = &unk_1E70F6D48;
    v17 = v8;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke_2;
    v14[3] = &unk_1E70F6D70;
    v15 = v17;
    _UILegacyEffectConvertLayerConfig(v9, v16, v14);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___UILegacyEffectConverter_applyVibrancyConfig_toEffectDescriptor___block_invoke_3;
  v11[3] = &unk_1E70F6DC0;
  v12 = v8;
  v13 = a2;
  v11[4] = self;
  v10 = v8;
  [v7 enumerateLayerConfigs:v11];
}

@end