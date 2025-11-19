@interface _UIStackedImageConfiguration
+ (CGSize)_scaledSizeForSize:(CGSize)result focusSizeIncrease:(double)a4 selectionStyle:(int64_t)a5;
+ (id)newAppIconConfiguration;
+ (id)newStandardConfiguration;
- (BOOL)isEqual:(id)a3;
- (CACornerRadii)cornerRadii;
- (CGPoint)translationOffset;
- (_UIFocusAnimationConfiguration)focusAnimationConfiguration;
- (_UIStackedImageConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_highContrastFocusIndicatorChanged:(id)a3;
- (void)dealloc;
- (void)setCornerRadii:(CACornerRadii *)a3;
@end

@implementation _UIStackedImageConfiguration

+ (id)newStandardConfiguration
{
  v2 = objc_alloc_init(_UIStackedImageConfiguration);
  v3 = _UISolariumEnabled();
  v4 = _UISolariumMetricsEnabled();
  v5 = _UIFocusSpecularHighlightLayerDefaultFocusSensitivity();
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v6 = _UIInternalPreferencesRevisionVar;
  v7 = 0.2;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v23 = _UIInternalPreference_UISolariumNewStackedImageRenderingSpecularOpacity;
    v7 = 0.2;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UISolariumNewStackedImageRenderingSpecularOpacity)
    {
      while (v6 >= v23)
      {
        _UIInternalPreferenceSync(v6, &_UIInternalPreference_UISolariumNewStackedImageRenderingSpecularOpacity, @"UISolariumNewStackedImageRenderingSpecularOpacity", _UIInternalPreferenceUpdateDouble);
        v23 = _UIInternalPreference_UISolariumNewStackedImageRenderingSpecularOpacity;
        if (v6 == _UIInternalPreference_UISolariumNewStackedImageRenderingSpecularOpacity)
        {
          v7 = 0.2;
          goto LABEL_4;
        }
      }

      v7 = *&qword_1EA95E8E0;
    }
  }

LABEL_4:
  [(_UIStackedImageConfiguration *)v2 setSelectionStyle:0];
  [(_UIStackedImageConfiguration *)v2 setMaximumParallaxImages:5];
  [(_UIStackedImageConfiguration *)v2 setMaximumParallaxDepth:60.0];
  [(_UIStackedImageConfiguration *)v2 setOverlayDepth:1.0];
  [(_UIStackedImageConfiguration *)v2 setOverlayFixedFrame:0];
  [(_UIStackedImageConfiguration *)v2 setZDepth:900.0];
  [(_UIStackedImageConfiguration *)v2 setAdjustMotionForSize:1];
  [(_UIStackedImageConfiguration *)v2 setRotationAmount:0.08];
  v8 = 70.0;
  if (v4)
  {
    v8 = 40.0;
  }

  [(_UIStackedImageConfiguration *)v2 setScaleSizeIncrease:v8];
  [(_UIStackedImageConfiguration *)v2 setPressedScaleAdjustment:0.5];
  [(_UIStackedImageConfiguration *)v2 setTranslationOffset:12.0, 12.0];
  [(_UIStackedImageConfiguration *)v2 setUnmaskedOverlayScaleFactor:1.0];
  v9 = 0.0;
  if (v3)
  {
    v9 = 4.5;
  }

  else
  {
    v5 = 1.3;
  }

  if (v3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0.2;
  }

  if (v3)
  {
    v11 = 0.3;
  }

  else
  {
    v11 = 0.5;
  }

  v12 = 0.18;
  if (v3)
  {
    v13 = 0.18;
  }

  else
  {
    v13 = 0.5;
  }

  if (!v3)
  {
    v12 = 0.2;
  }

  v24 = v12;
  if (v3)
  {
    v14 = 22.5;
  }

  else
  {
    v14 = 35.0;
  }

  if (v3)
  {
    v15 = 6.0;
  }

  else
  {
    v15 = 5.0;
  }

  if (v3)
  {
    v16 = 40.0;
  }

  else
  {
    v16 = 50.0;
  }

  v17 = 22.0;
  if (v3)
  {
    v17 = 20.0;
  }

  v25 = v16;
  v26 = v17;
  if (v3)
  {
    v18 = 4.0;
  }

  else
  {
    v18 = 6.0;
  }

  [(_UIStackedImageConfiguration *)v2 setCornerRadius:v9];
  [(_UIStackedImageConfiguration *)v2 setContinuousCornerRadiusEnabled:v3];
  v19 = *(MEMORY[0x1E6979288] + 16);
  v27[0] = *MEMORY[0x1E6979288];
  v27[1] = v19;
  v20 = *(MEMORY[0x1E6979288] + 48);
  v27[2] = *(MEMORY[0x1E6979288] + 32);
  v27[3] = v20;
  [(_UIStackedImageConfiguration *)v2 setCornerRadii:v27];
  [(_UIStackedImageConfiguration *)v2 setFlatImageContainsCornerRadius:0];
  [(_UIStackedImageConfiguration *)v2 setSpecularHighlightVerticalPosition:0.4];
  [(_UIStackedImageConfiguration *)v2 setSpecularHighlightHorizontalPositionSensitivity:v5];
  [(_UIStackedImageConfiguration *)v2 setSpecularHighlightVerticalPositionSensitivity:v5];
  [(_UIStackedImageConfiguration *)v2 setSpecularOpacity:v10];
  [(_UIStackedImageConfiguration *)v2 setDefaultFocusedShadowOpacity:v11];
  [(_UIStackedImageConfiguration *)v2 setDefaultHighlightedShadowOpacity:v13];
  [(_UIStackedImageConfiguration *)v2 setDefaultUnfocusedShadowOpacity:v24];
  [(_UIStackedImageConfiguration *)v2 setFullBleedFocusedShadowOpacity:0.55];
  [(_UIStackedImageConfiguration *)v2 setFullBleedUnfocusedShadowOpacity:0.15];
  [(_UIStackedImageConfiguration *)v2 setFocusCursorShadowOpacityAdjustment:0.2];
  [(_UIStackedImageConfiguration *)v2 setDefaultFocusedShadowRadius:v14];
  [(_UIStackedImageConfiguration *)v2 setDefaultHighlightedShadowRadius:10.0];
  [(_UIStackedImageConfiguration *)v2 setDefaultUnfocusedShadowRadius:v15];
  [(_UIStackedImageConfiguration *)v2 setFullBleedFocusedShadowRadius:v14];
  [(_UIStackedImageConfiguration *)v2 setFullBleedUnfocusedShadowRadius:v15];
  [(_UIStackedImageConfiguration *)v2 setDefaultFocusedShadowVerticalOffset:v25];
  [(_UIStackedImageConfiguration *)v2 setDefaultHighlightedShadowVerticalOffset:v26];
  [(_UIStackedImageConfiguration *)v2 setDefaultUnfocusedShadowVerticalOffset:v18];
  [(_UIStackedImageConfiguration *)v2 setDefaultSelectedShadowVerticalOffset:v18];
  [(_UIStackedImageConfiguration *)v2 setUseSeparateUnfocusedShadowImage:1];
  [(_UIStackedImageConfiguration *)v2 setPlaceholderImage:0];
  [(_UIStackedImageConfiguration *)v2 setAllowsNonOpaqueShadow:0];
  [(_UIStackedImageConfiguration *)v2 setBoostBrightness:1];
  [(_UIStackedImageConfiguration *)v2 setHueShift:0];
  [(_UIStackedImageConfiguration *)v2 setDisableMask:0];
  [(_UIStackedImageConfiguration *)v2 setFocusCursorEnabled:_AXSHighContrastFocusIndicatorsEnabled() != 0];
  [(_UIStackedImageConfiguration *)v2 setFocusCursorBorderWidth:8.0];
  [(_UIStackedImageConfiguration *)v2 setRadiosityOffset:10.0];
  [(_UIStackedImageConfiguration *)v2 setRadiosityStrength:0.0];
  v21 = [_UIFocusAnimationConfiguration configurationWithStyle:0];
  [v21 focusingBaseDuration];
  [(_UIStackedImageConfiguration *)v2 setShadowSelectionDuration:?];
  [v21 focusingBaseDuration];
  [(_UIStackedImageConfiguration *)v2 setLayerSelectionDuration:?];
  [v21 unfocusingBaseDuration];
  [(_UIStackedImageConfiguration *)v2 setShadowUnselectionDuration:?];
  [v21 unfocusingBaseDuration];
  [(_UIStackedImageConfiguration *)v2 setLayerUnselectionDuration:?];
  [v21 minimumFocusDuration];
  [(_UIStackedImageConfiguration *)v2 setMinimumFocusDuration:?];
  [v21 unfocusingRepositionBaseDuration];
  [(_UIStackedImageConfiguration *)v2 setRepositionUnselectionDuration:?];
  [(_UIStackedImageConfiguration *)v2 layerSelectionDuration];
  [(_UIStackedImageConfiguration *)v2 setPressedDuration:?];
  [(_UIStackedImageConfiguration *)v2 setUnpressedDuration:0.25];
  [(_UIStackedImageConfiguration *)v2 setFullBleedCenteredGrowth:0];
  [(_UIStackedImageConfiguration *)v2 setFullBleedOffset:30.0];
  [(_UIStackedImageConfiguration *)v2 setExpansionAmount:20.0];

  return v2;
}

+ (id)newAppIconConfiguration
{
  v2 = +[_UIStackedImageConfiguration newStandardConfiguration];
  [v2 setCornerRadius:30.0];
  v3 = *(MEMORY[0x1E6979288] + 16);
  v6[0] = *MEMORY[0x1E6979288];
  v6[1] = v3;
  v4 = *(MEMORY[0x1E6979288] + 48);
  v6[2] = *(MEMORY[0x1E6979288] + 32);
  v6[3] = v4;
  [v2 setCornerRadii:v6];
  [v2 setContinuousCornerRadiusEnabled:1.0];
  [v2 setSpecularHighlightVerticalPosition:0.5];
  [v2 setSpecularHighlightVerticalPositionSensitivity:2.5];
  [v2 setHueShift:1];
  [v2 setAdjustMotionForSize:0];
  [v2 setUnmaskedOverlayScaleFactor:0.9];
  [v2 setDefaultUnfocusedShadowRadius:12.0];
  [v2 setDefaultUnfocusedShadowOpacity:0.4];
  [v2 setDefaultUnfocusedShadowVerticalOffset:4.0];
  [v2 setDefaultFocusedShadowRadius:35.0];
  [v2 setDefaultFocusedShadowOpacity:0.3];
  [v2 setDefaultFocusedShadowVerticalOffset:50.0];
  [v2 setDefaultHighlightedShadowRadius:20.0];
  [v2 setDefaultHighlightedShadowOpacity:0.4];
  [v2 setDefaultHighlightedShadowVerticalOffset:20.0];
  [v2 setDefaultSelectedShadowVerticalOffset:4.0];
  return v2;
}

+ (CGSize)_scaledSizeForSize:(CGSize)result focusSizeIncrease:(double)a4 selectionStyle:(int64_t)a5
{
  if (a4 != 0.0)
  {
    if (a5 == 1)
    {
      result.height = result.height + a4;
    }

    else
    {
      v5 = 1.0;
      if (fmin(fabs(result.width), fabs(result.height)) >= 0.00000011920929)
      {
        v5 = result.width / result.height;
      }

      if (result.width <= result.height)
      {
        result.height = result.height + a4;
        result.width = ceil(result.height * v5);
      }

      else
      {
        result.width = result.width + a4;
        result.height = ceil(result.width / v5);
      }
    }
  }

  return result;
}

- (_UIStackedImageConfiguration)init
{
  v5.receiver = self;
  v5.super_class = _UIStackedImageConfiguration;
  v2 = [(_UIStackedImageConfiguration *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__highContrastFocusIndicatorChanged_ name:@"UIAccessibilityHighContrastFocusIndicatorChangedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityHighContrastFocusIndicatorChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIStackedImageConfiguration;
  [(_UIStackedImageConfiguration *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UIStackedImageConfiguration);
  [(_UIStackedImageConfiguration *)v4 setSelectionStyle:[(_UIStackedImageConfiguration *)self selectionStyle]];
  [(_UIStackedImageConfiguration *)v4 setMaximumParallaxImages:[(_UIStackedImageConfiguration *)self maximumParallaxImages]];
  [(_UIStackedImageConfiguration *)self maximumParallaxDepth];
  [(_UIStackedImageConfiguration *)v4 setMaximumParallaxDepth:?];
  [(_UIStackedImageConfiguration *)self overlayDepth];
  [(_UIStackedImageConfiguration *)v4 setOverlayDepth:?];
  [(_UIStackedImageConfiguration *)v4 setOverlayFixedFrame:[(_UIStackedImageConfiguration *)self overlayFixedFrame]];
  [(_UIStackedImageConfiguration *)self zDepth];
  [(_UIStackedImageConfiguration *)v4 setZDepth:?];
  [(_UIStackedImageConfiguration *)v4 setAdjustMotionForSize:[(_UIStackedImageConfiguration *)self adjustMotionForSize]];
  [(_UIStackedImageConfiguration *)self rotationAmount];
  [(_UIStackedImageConfiguration *)v4 setRotationAmount:?];
  [(_UIStackedImageConfiguration *)self scaleSizeIncrease];
  [(_UIStackedImageConfiguration *)v4 setScaleSizeIncrease:?];
  [(_UIStackedImageConfiguration *)self pressedScaleAdjustment];
  [(_UIStackedImageConfiguration *)v4 setPressedScaleAdjustment:?];
  [(_UIStackedImageConfiguration *)self translationOffset];
  [(_UIStackedImageConfiguration *)v4 setTranslationOffset:?];
  [(_UIStackedImageConfiguration *)self unmaskedOverlayScaleFactor];
  [(_UIStackedImageConfiguration *)v4 setUnmaskedOverlayScaleFactor:?];
  [(_UIStackedImageConfiguration *)self cornerRadius];
  [(_UIStackedImageConfiguration *)v4 setCornerRadius:?];
  [(_UIStackedImageConfiguration *)self cornerRadii];
  v7[0] = v7[4];
  v7[1] = v7[5];
  v7[2] = v7[6];
  v7[3] = v7[7];
  [(_UIStackedImageConfiguration *)v4 setCornerRadii:v7];
  [(_UIStackedImageConfiguration *)self isContinuousCornerRadiusEnabled];
  [(_UIStackedImageConfiguration *)v4 setContinuousCornerRadiusEnabled:?];
  [(_UIStackedImageConfiguration *)v4 setFlatImageContainsCornerRadius:[(_UIStackedImageConfiguration *)self flatImageContainsCornerRadius]];
  [(_UIStackedImageConfiguration *)self specularHighlightVerticalPosition];
  [(_UIStackedImageConfiguration *)v4 setSpecularHighlightVerticalPosition:?];
  [(_UIStackedImageConfiguration *)self specularHighlightHorizontalPositionSensitivity];
  [(_UIStackedImageConfiguration *)v4 setSpecularHighlightHorizontalPositionSensitivity:?];
  [(_UIStackedImageConfiguration *)self specularHighlightVerticalPositionSensitivity];
  [(_UIStackedImageConfiguration *)v4 setSpecularHighlightVerticalPositionSensitivity:?];
  [(_UIStackedImageConfiguration *)self specularOpacity];
  [(_UIStackedImageConfiguration *)v4 setSpecularOpacity:?];
  [(_UIStackedImageConfiguration *)self defaultFocusedShadowOpacity];
  [(_UIStackedImageConfiguration *)v4 setDefaultFocusedShadowOpacity:?];
  [(_UIStackedImageConfiguration *)self defaultHighlightedShadowOpacity];
  [(_UIStackedImageConfiguration *)v4 setDefaultHighlightedShadowOpacity:?];
  [(_UIStackedImageConfiguration *)self defaultUnfocusedShadowOpacity];
  [(_UIStackedImageConfiguration *)v4 setDefaultUnfocusedShadowOpacity:?];
  [(_UIStackedImageConfiguration *)self fullBleedFocusedShadowOpacity];
  [(_UIStackedImageConfiguration *)v4 setFullBleedFocusedShadowOpacity:?];
  [(_UIStackedImageConfiguration *)self fullBleedUnfocusedShadowOpacity];
  [(_UIStackedImageConfiguration *)v4 setFullBleedUnfocusedShadowOpacity:?];
  [(_UIStackedImageConfiguration *)self focusCursorShadowOpacityAdjustment];
  [(_UIStackedImageConfiguration *)v4 setFocusCursorShadowOpacityAdjustment:?];
  [(_UIStackedImageConfiguration *)self defaultFocusedShadowRadius];
  [(_UIStackedImageConfiguration *)v4 setDefaultFocusedShadowRadius:?];
  [(_UIStackedImageConfiguration *)self defaultHighlightedShadowRadius];
  [(_UIStackedImageConfiguration *)v4 setDefaultHighlightedShadowRadius:?];
  [(_UIStackedImageConfiguration *)self defaultUnfocusedShadowRadius];
  [(_UIStackedImageConfiguration *)v4 setDefaultUnfocusedShadowRadius:?];
  [(_UIStackedImageConfiguration *)self fullBleedFocusedShadowRadius];
  [(_UIStackedImageConfiguration *)v4 setFullBleedFocusedShadowRadius:?];
  [(_UIStackedImageConfiguration *)self fullBleedUnfocusedShadowRadius];
  [(_UIStackedImageConfiguration *)v4 setFullBleedUnfocusedShadowRadius:?];
  [(_UIStackedImageConfiguration *)self defaultFocusedShadowVerticalOffset];
  [(_UIStackedImageConfiguration *)v4 setDefaultFocusedShadowVerticalOffset:?];
  [(_UIStackedImageConfiguration *)self defaultHighlightedShadowVerticalOffset];
  [(_UIStackedImageConfiguration *)v4 setDefaultHighlightedShadowVerticalOffset:?];
  [(_UIStackedImageConfiguration *)self defaultUnfocusedShadowVerticalOffset];
  [(_UIStackedImageConfiguration *)v4 setDefaultUnfocusedShadowVerticalOffset:?];
  [(_UIStackedImageConfiguration *)self defaultSelectedShadowVerticalOffset];
  [(_UIStackedImageConfiguration *)v4 setDefaultSelectedShadowVerticalOffset:?];
  [(_UIStackedImageConfiguration *)v4 setUseSeparateUnfocusedShadowImage:[(_UIStackedImageConfiguration *)self useSeparateUnfocusedShadowImage]];
  v5 = [(_UIStackedImageConfiguration *)self placeholderImage];
  [(_UIStackedImageConfiguration *)v4 setPlaceholderImage:v5];

  [(_UIStackedImageConfiguration *)v4 setAllowsNonOpaqueShadow:[(_UIStackedImageConfiguration *)self allowsNonOpaqueShadow]];
  [(_UIStackedImageConfiguration *)v4 setBoostBrightness:[(_UIStackedImageConfiguration *)self boostBrightness]];
  [(_UIStackedImageConfiguration *)v4 setHueShift:[(_UIStackedImageConfiguration *)self hueShift]];
  [(_UIStackedImageConfiguration *)v4 setDisableMask:[(_UIStackedImageConfiguration *)self disableMask]];
  [(_UIStackedImageConfiguration *)v4 setFocusCursorEnabled:[(_UIStackedImageConfiguration *)self focusCursorEnabled]];
  [(_UIStackedImageConfiguration *)self focusCursorBorderWidth];
  [(_UIStackedImageConfiguration *)v4 setFocusCursorBorderWidth:?];
  [(_UIStackedImageConfiguration *)self radiosityOffset];
  [(_UIStackedImageConfiguration *)v4 setRadiosityOffset:?];
  [(_UIStackedImageConfiguration *)self radiosityStrength];
  [(_UIStackedImageConfiguration *)v4 setRadiosityStrength:?];
  [(_UIStackedImageConfiguration *)self shadowSelectionDuration];
  [(_UIStackedImageConfiguration *)v4 setShadowSelectionDuration:?];
  [(_UIStackedImageConfiguration *)self shadowUnselectionDuration];
  [(_UIStackedImageConfiguration *)v4 setShadowUnselectionDuration:?];
  [(_UIStackedImageConfiguration *)self repositionUnselectionDuration];
  [(_UIStackedImageConfiguration *)v4 setRepositionUnselectionDuration:?];
  [(_UIStackedImageConfiguration *)self layerSelectionDuration];
  [(_UIStackedImageConfiguration *)v4 setLayerSelectionDuration:?];
  [(_UIStackedImageConfiguration *)self layerUnselectionDuration];
  [(_UIStackedImageConfiguration *)v4 setLayerUnselectionDuration:?];
  [(_UIStackedImageConfiguration *)self minimumFocusDuration];
  [(_UIStackedImageConfiguration *)v4 setMinimumFocusDuration:?];
  [(_UIStackedImageConfiguration *)self pressedDuration];
  [(_UIStackedImageConfiguration *)v4 setPressedDuration:?];
  [(_UIStackedImageConfiguration *)self unpressedDuration];
  [(_UIStackedImageConfiguration *)v4 setUnpressedDuration:?];
  [(_UIStackedImageConfiguration *)v4 setFullBleedCenteredGrowth:[(_UIStackedImageConfiguration *)self fullBleedCenteredGrowth]];
  [(_UIStackedImageConfiguration *)self fullBleedOffset];
  [(_UIStackedImageConfiguration *)v4 setFullBleedOffset:?];
  [(_UIStackedImageConfiguration *)self expansionAmount];
  [(_UIStackedImageConfiguration *)v4 setExpansionAmount:?];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 selectionStyle];
    if (v6 == [(_UIStackedImageConfiguration *)self selectionStyle])
    {
      v7 = [v5 maximumParallaxImages];
      if (v7 == [(_UIStackedImageConfiguration *)self maximumParallaxImages])
      {
        [v5 maximumParallaxDepth];
        v9 = v8;
        [(_UIStackedImageConfiguration *)self maximumParallaxDepth];
        if (vabdd_f64(v9, v10) < 0.00000011920929)
        {
          [v5 overlayDepth];
          v12 = v11;
          [(_UIStackedImageConfiguration *)self overlayDepth];
          if (vabdd_f64(v12, v13) < 0.00000011920929)
          {
            v14 = [v5 overlayFixedFrame];
            if (v14 == [(_UIStackedImageConfiguration *)self overlayFixedFrame])
            {
              [v5 zDepth];
              v16 = v15;
              [(_UIStackedImageConfiguration *)self zDepth];
              if (vabdd_f64(v16, v17) < 0.00000011920929)
              {
                v18 = [v5 adjustMotionForSize];
                if (v18 == [(_UIStackedImageConfiguration *)self adjustMotionForSize])
                {
                  [v5 rotationAmount];
                  v20 = v19;
                  [(_UIStackedImageConfiguration *)self rotationAmount];
                  if (vabdd_f64(v20, v21) < 0.00000011920929)
                  {
                    [v5 scaleSizeIncrease];
                    v23 = v22;
                    [(_UIStackedImageConfiguration *)self scaleSizeIncrease];
                    if (vabdd_f64(v23, v24) < 0.00000011920929)
                    {
                      [v5 pressedScaleAdjustment];
                      v26 = v25;
                      [(_UIStackedImageConfiguration *)self pressedScaleAdjustment];
                      if (vabdd_f64(v26, v27) < 0.00000011920929)
                      {
                        [v5 translationOffset];
                        v29 = v28;
                        v31 = v30;
                        [(_UIStackedImageConfiguration *)self translationOffset];
                        v33 = 0;
                        if (v29 != v34 || v31 != v32)
                        {
                          goto LABEL_43;
                        }

                        [v5 unmaskedOverlayScaleFactor];
                        v36 = v35;
                        [(_UIStackedImageConfiguration *)self unmaskedOverlayScaleFactor];
                        if (vabdd_f64(v36, v37) < 0.00000011920929)
                        {
                          [v5 cornerRadius];
                          v39 = v38;
                          [(_UIStackedImageConfiguration *)self cornerRadius];
                          if (vabdd_f64(v39, v40) < 0.00000011920929)
                          {
                            if (v5)
                            {
                              [v5 cornerRadii];
                            }

                            [(_UIStackedImageConfiguration *)self cornerRadii];
                            if (CACornerRadiiEqualToRadii())
                            {
                              [v5 isContinuousCornerRadiusEnabled];
                              v42 = v41;
                              [(_UIStackedImageConfiguration *)self isContinuousCornerRadiusEnabled];
                              if (v42 == v43)
                              {
                                v44 = [v5 flatImageContainsCornerRadius];
                                if (v44 == [(_UIStackedImageConfiguration *)self flatImageContainsCornerRadius])
                                {
                                  [v5 specularHighlightVerticalPosition];
                                  v46 = v45;
                                  [(_UIStackedImageConfiguration *)self specularHighlightVerticalPosition];
                                  if (vabdd_f64(v46, v47) < 0.00000011920929)
                                  {
                                    [v5 specularHighlightHorizontalPositionSensitivity];
                                    v49 = v48;
                                    [(_UIStackedImageConfiguration *)self specularHighlightHorizontalPositionSensitivity];
                                    if (vabdd_f64(v49, v50) < 0.00000011920929)
                                    {
                                      [v5 specularHighlightVerticalPositionSensitivity];
                                      v52 = v51;
                                      [(_UIStackedImageConfiguration *)self specularHighlightVerticalPositionSensitivity];
                                      if (vabdd_f64(v52, v53) < 0.00000011920929)
                                      {
                                        [v5 specularOpacity];
                                        v55 = v54;
                                        [(_UIStackedImageConfiguration *)self specularOpacity];
                                        if (vabdd_f64(v55, v56) < 0.00000011920929)
                                        {
                                          [v5 defaultFocusedShadowOpacity];
                                          v58 = v57;
                                          [(_UIStackedImageConfiguration *)self defaultFocusedShadowOpacity];
                                          if (vabdd_f64(v58, v59) < 0.00000011920929)
                                          {
                                            [v5 defaultHighlightedShadowOpacity];
                                            v61 = v60;
                                            [(_UIStackedImageConfiguration *)self defaultHighlightedShadowOpacity];
                                            if (vabdd_f64(v61, v62) < 0.00000011920929)
                                            {
                                              [v5 defaultUnfocusedShadowOpacity];
                                              v64 = v63;
                                              [(_UIStackedImageConfiguration *)self defaultUnfocusedShadowOpacity];
                                              if (vabdd_f64(v64, v65) < 0.00000011920929)
                                              {
                                                [v5 fullBleedFocusedShadowOpacity];
                                                v67 = v66;
                                                [(_UIStackedImageConfiguration *)self fullBleedFocusedShadowOpacity];
                                                if (vabdd_f64(v67, v68) < 0.00000011920929)
                                                {
                                                  [v5 fullBleedUnfocusedShadowOpacity];
                                                  v70 = v69;
                                                  [(_UIStackedImageConfiguration *)self fullBleedUnfocusedShadowOpacity];
                                                  if (vabdd_f64(v70, v71) < 0.00000011920929)
                                                  {
                                                    [v5 focusCursorShadowOpacityAdjustment];
                                                    v73 = v72;
                                                    [(_UIStackedImageConfiguration *)self focusCursorShadowOpacityAdjustment];
                                                    if (vabdd_f64(v73, v74) < 0.00000011920929)
                                                    {
                                                      [v5 defaultFocusedShadowRadius];
                                                      v76 = v75;
                                                      [(_UIStackedImageConfiguration *)self defaultFocusedShadowRadius];
                                                      if (vabdd_f64(v76, v77) < 0.00000011920929)
                                                      {
                                                        [v5 defaultHighlightedShadowRadius];
                                                        v79 = v78;
                                                        [(_UIStackedImageConfiguration *)self defaultHighlightedShadowRadius];
                                                        if (vabdd_f64(v79, v80) < 0.00000011920929)
                                                        {
                                                          [v5 defaultUnfocusedShadowRadius];
                                                          v82 = v81;
                                                          [(_UIStackedImageConfiguration *)self defaultUnfocusedShadowRadius];
                                                          if (vabdd_f64(v82, v83) < 0.00000011920929)
                                                          {
                                                            [v5 fullBleedFocusedShadowRadius];
                                                            v85 = v84;
                                                            [(_UIStackedImageConfiguration *)self fullBleedFocusedShadowRadius];
                                                            if (vabdd_f64(v85, v86) < 0.00000011920929)
                                                            {
                                                              [v5 fullBleedUnfocusedShadowRadius];
                                                              v88 = v87;
                                                              [(_UIStackedImageConfiguration *)self fullBleedUnfocusedShadowRadius];
                                                              if (vabdd_f64(v88, v89) < 0.00000011920929)
                                                              {
                                                                [v5 defaultFocusedShadowVerticalOffset];
                                                                v91 = v90;
                                                                [(_UIStackedImageConfiguration *)self defaultFocusedShadowVerticalOffset];
                                                                if (vabdd_f64(v91, v92) < 0.00000011920929)
                                                                {
                                                                  [v5 defaultHighlightedShadowVerticalOffset];
                                                                  v94 = v93;
                                                                  [(_UIStackedImageConfiguration *)self defaultHighlightedShadowVerticalOffset];
                                                                  if (vabdd_f64(v94, v95) < 0.00000011920929)
                                                                  {
                                                                    [v5 defaultUnfocusedShadowVerticalOffset];
                                                                    v97 = v96;
                                                                    [(_UIStackedImageConfiguration *)self defaultUnfocusedShadowVerticalOffset];
                                                                    if (vabdd_f64(v97, v98) < 0.00000011920929)
                                                                    {
                                                                      [v5 defaultSelectedShadowVerticalOffset];
                                                                      v100 = v99;
                                                                      [(_UIStackedImageConfiguration *)self defaultSelectedShadowVerticalOffset];
                                                                      if (vabdd_f64(v100, v101) < 0.00000011920929)
                                                                      {
                                                                        v102 = [v5 useSeparateUnfocusedShadowImage];
                                                                        if (v102 == [(_UIStackedImageConfiguration *)self useSeparateUnfocusedShadowImage])
                                                                        {
                                                                          v104 = [v5 placeholderImage];
                                                                          v105 = [(_UIStackedImageConfiguration *)self placeholderImage];
                                                                          if ([v104 isEqual:v105] && (v106 = objc_msgSend(v5, "allowsNonOpaqueShadow"), v106 == -[_UIStackedImageConfiguration allowsNonOpaqueShadow](self, "allowsNonOpaqueShadow")) && (v107 = objc_msgSend(v5, "boostBrightness"), v107 == -[_UIStackedImageConfiguration boostBrightness](self, "boostBrightness")) && (v108 = objc_msgSend(v5, "hueShift"), v108 == -[_UIStackedImageConfiguration hueShift](self, "hueShift")) && (v109 = objc_msgSend(v5, "disableMask"), v109 == -[_UIStackedImageConfiguration disableMask](self, "disableMask")) && (v110 = objc_msgSend(v5, "focusCursorEnabled"), v110 == -[_UIStackedImageConfiguration focusCursorEnabled](self, "focusCursorEnabled")) && (objc_msgSend(v5, "focusCursorBorderWidth"), v112 = v111, -[_UIStackedImageConfiguration focusCursorBorderWidth](self, "focusCursorBorderWidth"), vabdd_f64(v112, v113) < 0.00000011920929) && (objc_msgSend(v5, "radiosityOffset"), v115 = v114, -[_UIStackedImageConfiguration radiosityOffset](self, "radiosityOffset"), vabdd_f64(v115, v116) < 0.00000011920929) && (objc_msgSend(v5, "radiosityStrength"), v118 = v117, -[_UIStackedImageConfiguration radiosityStrength](self, "radiosityStrength"), vabdd_f64(v118, v119) < 0.00000011920929) && (objc_msgSend(v5, "shadowSelectionDuration"), v121 = v120, -[_UIStackedImageConfiguration shadowSelectionDuration](self, "shadowSelectionDuration"), vabdd_f64(v121, v122) < 0.00000011920929) && (objc_msgSend(v5, "shadowUnselectionDuration"), v124 = v123, -[_UIStackedImageConfiguration shadowUnselectionDuration](self, "shadowUnselectionDuration"), vabdd_f64(v124, v125) < 0.00000011920929) && (objc_msgSend(v5, "repositionUnselectionDuration"), v127 = v126, -[_UIStackedImageConfiguration repositionUnselectionDuration](self, "repositionUnselectionDuration"), vabdd_f64(v127, v128) < 0.00000011920929) && (objc_msgSend(v5, "layerSelectionDuration"), v130 = v129, -[_UIStackedImageConfiguration layerSelectionDuration](self, "layerSelectionDuration"), vabdd_f64(v130, v131) < 0.00000011920929) && (objc_msgSend(v5, "layerUnselectionDuration"), v133 = v132, -[_UIStackedImageConfiguration layerUnselectionDuration](self, "layerUnselectionDuration"), vabdd_f64(v133, v134) < 0.00000011920929) && (objc_msgSend(v5, "minimumFocusDuration"), v136 = v135, -[_UIStackedImageConfiguration minimumFocusDuration](self, "minimumFocusDuration"), vabdd_f64(v136, v137) < 0.00000011920929) && (objc_msgSend(v5, "pressedDuration"), v139 = v138, -[_UIStackedImageConfiguration pressedDuration](self, "pressedDuration"), vabdd_f64(v139, v140) < 0.00000011920929) && (objc_msgSend(v5, "unpressedDuration"), v142 = v141, -[_UIStackedImageConfiguration unpressedDuration](self, "unpressedDuration"), vabdd_f64(v142, v143) < 0.00000011920929) && (v144 = objc_msgSend(v5, "fullBleedCenteredGrowth"), v144 == -[_UIStackedImageConfiguration fullBleedCenteredGrowth](self, "fullBleedCenteredGrowth")) && (objc_msgSend(v5, "fullBleedOffset"), v146 = v145, -[_UIStackedImageConfiguration fullBleedOffset](self, "fullBleedOffset"), vabdd_f64(v146, v147) < 0.00000011920929))
                                                                          {
                                                                            [v5 expansionAmount];
                                                                            v149 = v148;
                                                                            [(_UIStackedImageConfiguration *)self expansionAmount];
                                                                            v151 = vabdd_f64(v149, v150) < 0.00000011920929;
                                                                          }

                                                                          else
                                                                          {
                                                                            v151 = 0;
                                                                          }

                                                                          v33 = v151;
                                                                          goto LABEL_43;
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v33 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v33 = 0;
LABEL_44:

  return v33;
}

- (_UIFocusAnimationConfiguration)focusAnimationConfiguration
{
  v3 = [_UIFocusAnimationConfiguration configurationWithStyle:0];
  [(_UIStackedImageConfiguration *)self layerSelectionDuration];
  [v3 setFocusingBaseDuration:?];
  [(_UIStackedImageConfiguration *)self layerUnselectionDuration];
  [v3 setUnfocusingBaseDuration:?];
  [(_UIStackedImageConfiguration *)self repositionUnselectionDuration];
  [v3 setUnfocusingRepositionBaseDuration:?];
  [(_UIStackedImageConfiguration *)self minimumFocusDuration];
  [v3 setMinimumFocusDuration:?];

  return v3;
}

- (void)_highContrastFocusIndicatorChanged:(id)a3
{
  v4 = _AXSHighContrastFocusIndicatorsEnabled() != 0;

  [(_UIStackedImageConfiguration *)self setFocusCursorEnabled:v4];
}

- (CGPoint)translationOffset
{
  x = self->_translationOffset.x;
  y = self->_translationOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CACornerRadii)cornerRadii
{
  v3 = *&self[6].maxXMaxY.height;
  retstr->minXMaxY = *&self[6].minXMaxY.height;
  retstr->maxXMaxY = v3;
  v4 = *&self[6].minXMinY.height;
  retstr->maxXMinY = *&self[6].maxXMinY.height;
  retstr->minXMinY = v4;
  return self;
}

- (void)setCornerRadii:(CACornerRadii *)a3
{
  minXMaxY = a3->minXMaxY;
  maxXMaxY = a3->maxXMaxY;
  minXMinY = a3->minXMinY;
  self->_cornerRadii.maxXMinY = a3->maxXMinY;
  self->_cornerRadii.minXMinY = minXMinY;
  self->_cornerRadii.minXMaxY = minXMaxY;
  self->_cornerRadii.maxXMaxY = maxXMaxY;
}

@end