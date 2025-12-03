@interface _UIFloatingContentView
- (BOOL)_applyKeyPathsAndRelativeValues:(id)values forMotionEffect:(id)effect;
- (BOOL)_effectiveUseShadowImage;
- (BOOL)_hasPotentialSolariumImpactedContent;
- (BOOL)clipsContentToBounds;
- (BOOL)isBackgroundMaterialSetForState:(unint64_t)state;
- (CGPath)_shadowPathForSize:(CGSize)size radius:(double)radius;
- (CGPoint)focusScaleAnchorPoint;
- (CGPoint)highContrastFocusIndicatorOutset;
- (CGRect)shadowContentsCenter;
- (CGSize)asymmetricFocusedSizeIncrease;
- (CGSize)asymmetricPressedScaleFactor;
- (CGSize)asymmetricPressedSizeIncrease;
- (CGSize)asymmetricScaleFactor;
- (CGSize)pressedShadowExpansion;
- (CGSize)shadowExpansion;
- (CGSize)shadowSize;
- (CGSize)unfocusedShadowExpansion;
- (UIView)contentView;
- (UIView)visualEffectContainerView;
- (_UIFloatingContentView)initWithFrame:(CGRect)frame;
- (_UIFloatingContentViewDelegate)floatingContentDelegate;
- (_UIFocusAnimationConfiguration)focusAnimationConfiguration;
- (double)_legacy_effectiveShadowOpacity;
- (double)_test_currentShadowOpacity;
- (double)shadowOpacityForUserInterfaceStyle:(int64_t)style;
- (id)_focusedFrameGuideCreateIfNecessary:(BOOL)necessary;
- (id)backgroundColorForState:(unint64_t)state;
- (id)backgroundMaterialForState:(unint64_t)state;
- (id)glassForState:(unint64_t)state;
- (void)_createPunchoutShadowView;
- (void)_installContentMotionEffects;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_layoutContentView;
- (void)_layoutHighContrastFocusIndicator;
- (void)_layoutShadow;
- (void)_legacy_layoutShadow;
- (void)_legacy_updateShadowContentsScaleForPrimaryState:(unint64_t)state;
- (void)_legacy_updateShadowLayer;
- (void)_legacy_updateShadowOpacityForPrimaryState:(unint64_t)state;
- (void)_legacy_updateTransformForPrimaryState:(unint64_t)state;
- (void)_modern_updateTransformForPrimaryState:(unint64_t)state;
- (void)_setControlState:(unint64_t)state withAnimationCoordinator:(id)coordinator;
- (void)_setShadowImageIfNeeded;
- (void)_uninstallContentMotionEffects;
- (void)_updateContainerLayerQualityForPrimaryState:(unint64_t)state;
- (void)_updateCornerRadius:(double)radius;
- (void)_updateCornerRadiusLayers;
- (void)_updateDefaultBackgroundFillsForHighlightStyle:(int64_t)style;
- (void)_updateFocusedFrameGuideConstraintsIfApplicable;
- (void)_updateHighContrastFocusIndicatorForPrimaryState:(unint64_t)state;
- (void)_updateHighContrastFocusIndicatorView;
- (void)_updateHighlightViewForPrimaryState:(unint64_t)state;
- (void)_updateMarkerLayerIfPresent;
- (void)_updatePunchoutShadowLayer;
- (void)_updateScaleFactor;
- (void)_updateShadowLayer;
- (void)_updateTransformForPrimaryState:(unint64_t)state;
- (void)_updateUnfocusedBorderView;
- (void)_updateViewPropertiesForHighlightStyle:(int64_t)style;
- (void)addContentMotionEffect:(id)effect;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeBackgroundMaterialForState:(unint64_t)state;
- (void)removeGlassForState:(unint64_t)state;
- (void)removeSecondaryBackdropView;
- (void)setAsymmetricFocusedSizeIncrease:(CGSize)increase;
- (void)setAsymmetricPressedScaleFactor:(CGSize)factor;
- (void)setAsymmetricPressedSizeIncrease:(CGSize)increase;
- (void)setAsymmetricScaleFactor:(CGSize)factor;
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
- (void)setBackgroundMaterial:(id)material forState:(unint64_t)state;
- (void)setBounds:(CGRect)bounds;
- (void)setClipsContentToBounds:(BOOL)bounds;
- (void)setContentMotion:(id)motion;
- (void)setContentMotionRotation:(CGPoint)rotation translation:(CGPoint)translation;
- (void)setContinuousCornerEnabled:(BOOL)enabled;
- (void)setControlState:(unint64_t)state animated:(BOOL)animated;
- (void)setCornerCurve:(id)curve;
- (void)setCornerRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
- (void)setGlass:(id)glass forState:(unint64_t)state;
- (void)setHighContrastFocusIndicatorCornerRadius:(double)radius;
- (void)setHighlightStyle:(int64_t)style;
- (void)setPressedShadowExpansion:(CGSize)expansion;
- (void)setPressedShadowOpacity:(double)opacity;
- (void)setPressedShadowRadius:(double)radius;
- (void)setPressedShadowVerticalOffset:(double)offset;
- (void)setRoundContentWhenDeselected:(BOOL)deselected;
- (void)setScalesBackwards:(BOOL)backwards;
- (void)setSecondaryBackdropView:(id)view;
- (void)setShadowContentsCenter:(CGRect)center;
- (void)setShadowEnabled:(BOOL)enabled;
- (void)setShadowImage:(id)image stretchable:(BOOL)stretchable;
- (void)setShadowOpacity:(double)opacity forUserInterfaceStyle:(int64_t)style;
- (void)setUnfocusedBorderOpacity:(double)opacity;
- (void)setUnfocusedShadowOpacity:(double)opacity;
- (void)setUnfocusedShadowRadius:(double)radius;
- (void)setUnfocusedShadowVerticalOffset:(double)offset;
- (void)setUseShadowImage:(BOOL)image;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UIFloatingContentView

- (_UIFloatingContentView)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = _UIFloatingContentView;
  v3 = [(UIView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v4->_backgroundColorsByState = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v13 = _UIInternalPreferenceUsesDefault(&unk_1ED48AA08, @"UISolariumFloatingContentViewSpecularHighlightOpacity", _UIInternalPreferenceUpdateDouble);
    v14 = *&qword_1ED48AA10;
    if (v13)
    {
      v14 = 0.1;
    }

    v4->_focusSpecularHighlightOpacity = v14;
    v15 = _UIInternalPreferenceUsesDefault(algn_1ED48AA18, @"UISolariumFloatingContentViewUnfocusedBorderOpacity", _UIInternalPreferenceUpdateDouble);
    v16 = *&qword_1ED48AA20;
    if (v15)
    {
      v16 = 0.05;
    }

    v4->_unfocusedBorderOpacity = v16;
    [(UIView *)v4 setOpaque:0];
    v17 = [(UIView *)[_UIFloatingContentTransformView alloc] initWithFrame:v6, v8, v10, v12];
    transformView = v4->_transformView;
    v4->_transformView = v17;

    [(UIView *)v4->_transformView setClipsToBounds:0];
    [(UIView *)v4 addSubview:v4->_transformView];
    v19 = [(UIView *)[_UIFloatingContentCornerRadiusAnimatingScreenScaleInheritingView alloc] initWithFrame:v6, v8, v10, v12];
    containerView = v4->_containerView;
    v4->_containerView = v19;

    [(UIView *)v4->_containerView setOpaque:0];
    [(UIView *)v4->_containerView setBackgroundColor:0];
    [(UIView *)v4->_transformView addSubview:v4->_containerView];
    v21 = [(UIView *)[_UIFloatingContentCornerRadiusAnimatingView alloc] initWithFrame:v6, v8, v10, v12];
    highlightView = v4->_highlightView;
    v4->_highlightView = v21;

    [(UIView *)v4->_containerView addSubview:v4->_highlightView];
    [(UIView *)v4 setEdgesPreservingSuperviewLayoutMargins:15];
    [(UIView *)v4->_transformView setEdgesPreservingSuperviewLayoutMargins:15];
    [(UIView *)v4->_containerView setEdgesPreservingSuperviewLayoutMargins:15];
    [(UIView *)v4->_highlightView setEdgesPreservingSuperviewLayoutMargins:15];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __40___UIFloatingContentView_initWithFrame___block_invoke;
    v26[3] = &unk_1E70F3590;
    v23 = v4;
    v27 = v23;
    [UIView _performSystemAppearanceModifications:v26];
    if (_UIFloatingContentViewEnablePunchoutShadow())
    {
      [(_UIFloatingContentView *)v23 _createPunchoutShadowView];
    }

    [(_UIFloatingContentView *)v23 _updateViewPropertiesForHighlightStyle:v23->_highlightStyle];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v23 selector:sel__updateHighContrastFocusIndicatorView name:@"UIAccessibilityHighContrastFocusIndicatorChangedNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  backgroundColorsByState = self->_backgroundColorsByState;
  if (backgroundColorsByState)
  {
    CFRelease(backgroundColorsByState);
  }

  glassesByState = self->_glassesByState;
  if (glassesByState)
  {
    CFRelease(glassesByState);
  }

  backgroundMaterialsByState = self->_backgroundMaterialsByState;
  if (backgroundMaterialsByState)
  {
    CFRelease(backgroundMaterialsByState);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityHighContrastFocusIndicatorChangedNotification" object:0];

  v7.receiver = self;
  v7.super_class = _UIFloatingContentView;
  [(UIView *)&v7 dealloc];
}

- (_UIFloatingContentViewDelegate)floatingContentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_floatingContentViewDelegate);

  return WeakRetained;
}

- (BOOL)_applyKeyPathsAndRelativeValues:(id)values forMotionEffect:(id)effect
{
  valuesCopy = values;
  if ([(_UIFloatingContentView *)self _shouldAppearToFloatForPrimaryState:[(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]]])
  {
    v6 = [valuesCopy objectForKey:@"focusDirectionX"];
    [v6 doubleValue];
    v8 = v7;
    v9 = [valuesCopy objectForKey:@"focusDirectionY"];
    [v9 doubleValue];
    self->_focusDirection.x = v8;
    self->_focusDirection.y = v10;

    [(_UIFloatingContentView *)self _updateTransformForPrimaryState:[(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]]];
  }

  return 1;
}

- (void)setContentMotion:(id)motion
{
  v15[2] = *MEMORY[0x1E69E9840];
  motionCopy = motion;
  v6 = motionCopy;
  if (self->_contentMotion != motionCopy && ![(_UIFloatingMotionConfiguration *)motionCopy isEqual:?])
  {
    objc_storeStrong(&self->_contentMotion, motion);
    [(_UIFloatingMotionConfiguration *)v6 rotation];
    self->_contentRotation.x = v7;
    self->_contentRotation.y = v8;
    [(_UIFloatingMotionConfiguration *)v6 translation];
    self->_contentTranslation.x = v9;
    self->_contentTranslation.y = v10;
    [(NSMutableArray *)self->_contentMotionEffects removeAllObjects];
    v11 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"focusDirectionX" type:0];
    [(UIInterpolatingMotionEffect *)v11 setMinimumRelativeValue:&unk_1EFE2E248];
    [(UIInterpolatingMotionEffect *)v11 setMaximumRelativeValue:&unk_1EFE2E258];
    v12 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"focusDirectionY" type:1];
    [(UIInterpolatingMotionEffect *)v12 setMinimumRelativeValue:&unk_1EFE2E248];
    [(UIInterpolatingMotionEffect *)v12 setMaximumRelativeValue:&unk_1EFE2E258];
    v13 = objc_alloc_init(UIMotionEffectGroup);
    v15[0] = v11;
    v15[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(UIMotionEffectGroup *)v13 setMotionEffects:v14];

    [(_UIFloatingContentView *)self addContentMotionEffect:v13];
  }
}

- (void)setContentMotionRotation:(CGPoint)rotation translation:(CGPoint)translation
{
  v5 = [[_UIFloatingMotionConfiguration alloc] _initWithTranslation:translation.x rotation:translation.y, rotation.x, rotation.y];
  [(_UIFloatingContentView *)self setContentMotion:v5];
}

- (void)addContentMotionEffect:(id)effect
{
  effectCopy = effect;
  contentMotionEffects = self->_contentMotionEffects;
  v8 = effectCopy;
  if (!contentMotionEffects)
  {
    v6 = objc_opt_new();
    v7 = self->_contentMotionEffects;
    self->_contentMotionEffects = v6;

    effectCopy = v8;
    contentMotionEffects = self->_contentMotionEffects;
  }

  [(NSMutableArray *)contentMotionEffects addObject:effectCopy];
}

- (void)_installContentMotionEffects
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_contentMotionEffects;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        motionEffects = [(UIView *)self motionEffects];
        v10 = [motionEffects containsObject:v8];

        if ((v10 & 1) == 0)
        {
          [(UIView *)self addMotionEffect:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_uninstallContentMotionEffects
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_contentMotionEffects;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        motionEffects = [(UIView *)self motionEffects];
        v10 = [motionEffects containsObject:v8];

        if (v10)
        {
          [(UIView *)self removeMotionEffect:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)setHighlightStyle:(int64_t)style
{
  if (self->_highlightStyle != style)
  {
    self->_highlightStyle = style;
    [(_UIFloatingContentView *)self _updateViewPropertiesForHighlightStyle:?];

    [(_UIFloatingContentView *)self _updateUnfocusedBorderView];
  }
}

- (void)_updateDefaultBackgroundFillsForHighlightStyle:(int64_t)style
{
  if (self->_highlightStyle == 1 && _UISolariumEnabled() && ((_UIInternalPreferenceUsesDefault(&_MergedGlobals_924, @"UISolariumFloatingContentViewEnableBackgroundFills", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48A90C))
  {
    v6 = [UIColor colorWithWhite:1.0 alpha:0.3];
    v7 = [UIColor colorWithWhite:1.0 alpha:0.6];
    [v7 alphaComponent];
    v9 = [UIColor colorWithWhite:1.0 alpha:v8];
    [v7 alphaComponent];
    v41 = [UIColor colorWithWhite:1.0 alpha:v10 * 0.888888889];
    v11 = [UIColor colorWithWhite:1.0 alpha:0.1];
    v12 = [UIColor colorWithWhite:1.0 alpha:0.2];
    [v12 alphaComponent];
    v14 = [UIColor colorWithWhite:1.0 alpha:v13];
    [v12 alphaComponent];
    v39 = [UIColor colorWithWhite:1.0 alpha:v15 * 0.888888889];
    if ((_UIInternalPreferenceUsesDefault(&dword_1ED48A910, @"UISolariumFloatingContentViewDebugBackgroundFills", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48A914)
    {
      v36 = [UIColor colorWithRed:1.0 green:0.6 blue:0.6 alpha:1.0];
      v35 = [UIColor colorWithRed:0.6 green:0.6 blue:1.0 alpha:1.0];
      v34 = [UIColor colorWithRed:0.6 green:1.0 blue:0.6 alpha:1.0];
      v33 = [UIColor colorWithRed:1.0 green:0.6 blue:1.0 alpha:1.0];
      [UIColor colorWithRed:0.7 green:0.3 blue:0.3 alpha:1.0];
      v37 = v14;
      v17 = v16 = v9;
      [UIColor colorWithRed:0.3 green:0.3 blue:0.7 alpha:1.0];
      v18 = v11;
      v20 = v19 = v6;
      v21 = [UIColor colorWithRed:0.3 green:0.7 blue:0.3 alpha:1.0];
      [UIColor colorWithRed:0.7 green:0.3 blue:0.7 alpha:1.0];

      v6 = v19;
      v11 = v18;

      v9 = v16;
      v14 = v37;
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __73___UIFloatingContentView__updateDefaultBackgroundFillsForHighlightStyle___block_invoke;
    v51[3] = &unk_1E70F6F60;
    v52 = v11;
    v53 = v6;
    v38 = v6;
    v22 = v11;
    v23 = [UIColor colorWithDynamicProvider:v51];
    [(_UIFloatingContentView *)self setBackgroundColor:v23 forState:0];

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __73___UIFloatingContentView__updateDefaultBackgroundFillsForHighlightStyle___block_invoke_2;
    v48[3] = &unk_1E70F6F60;
    v49 = v12;
    v50 = v7;
    v24 = v7;
    v25 = v12;
    v26 = [UIColor colorWithDynamicProvider:v48];
    [(_UIFloatingContentView *)self setBackgroundColor:v26 forState:8];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __73___UIFloatingContentView__updateDefaultBackgroundFillsForHighlightStyle___block_invoke_3;
    v45[3] = &unk_1E70F6F60;
    v46 = v14;
    v47 = v9;
    v27 = v9;
    v28 = v14;
    v29 = [UIColor colorWithDynamicProvider:v45];
    [(_UIFloatingContentView *)self setBackgroundColor:v29 forState:1];

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __73___UIFloatingContentView__updateDefaultBackgroundFillsForHighlightStyle___block_invoke_4;
    v42[3] = &unk_1E70F6F60;
    v43 = v39;
    v44 = v41;
    v30 = v41;
    v31 = v39;
    v32 = [UIColor colorWithDynamicProvider:v42];
    [(_UIFloatingContentView *)self setBackgroundColor:v32 forState:4];
  }

  else
  {
    v4 = [UIColor colorWithWhite:1.0 alpha:0.9];
    [(_UIFloatingContentView *)self setBackgroundColor:v4 forState:8];

    v5 = [UIColor colorWithWhite:1.0 alpha:0.9];
    [(_UIFloatingContentView *)self setBackgroundColor:v5 forState:1];

    v40 = [UIColor colorWithWhite:1.0 alpha:0.8];
    [(_UIFloatingContentView *)self setBackgroundColor:v40 forState:4];
  }
}

- (void)_updateViewPropertiesForHighlightStyle:(int64_t)style
{
  v5 = *MEMORY[0x1E69796E8];
  if (style)
  {
    v6 = 0.18;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = 40.0;
  if (!style)
  {
    v7 = 20.0;
  }

  v30 = v7;
  if (style)
  {
    v8 = 22.5;
  }

  else
  {
    v8 = 15.0;
  }

  if (_UISolariumEnabled())
  {
    v9 = 0;
  }

  else
  {
    v9 = _UISolariumMetricsEnabled();
  }

  v10 = _UISolariumMetricsEnabled();
  if (!v10 || v9)
  {
    v14 = xmmword_18A6785E0;
    v17 = xmmword_18A6785F0;
    v15 = 0uLL;
    v8 = 20.0;
    v6 = 0.0;
    v16 = 0x3FC999999999999ALL;
  }

  else
  {
    v11 = vdup_n_s32(style == 0);
    v12.i64[0] = v11.u32[0];
    v12.i64[1] = v11.u32[1];
    v13 = vcltzq_s64(vshlq_n_s64(v12, 0x3FuLL));
    v14 = vbslq_s8(v13, xmmword_18A6785C0, xmmword_18A6785B0);
    v15 = vbicq_s8(xmmword_18A6785D0, v13);
    v16 = 0x3FD3333333333333;
    v17 = vdupq_lane_s64(0x3FD3333333333333, 0);
    *v17.i64 = v30;
  }

  v18 = vdup_n_s32(style == 0);
  v19 = 40.0;
  v31[1] = 3221225472;
  v20 = 8.0;
  if (!style)
  {
    v19 = 8.0;
  }

  v21 = 20.0;
  if (!style)
  {
    v21 = 2.0;
  }

  if (v10)
  {
    v20 = v21;
  }

  else
  {
    v19 = 30.0;
  }

  v22.i64[0] = v18.u32[0];
  v22.i64[1] = v18.u32[1];
  v23 = vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL));
  v31[0] = MEMORY[0x1E69E9820];
  v31[2] = __65___UIFloatingContentView__updateViewPropertiesForHighlightStyle___block_invoke;
  v31[3] = &unk_1E70F6F88;
  styleCopy = style;
  v34 = 0x4012000000000000;
  v31[4] = self;
  v32 = v5;
  v46 = style == 0;
  v35 = v19;
  v36 = v20;
  __asm { FMOV            V6.2D, #0.5 }

  v37 = _Q6;
  v38 = v8;
  v39 = v17;
  v40 = v16;
  v41 = v14;
  v42 = v15;
  v43 = v6;
  v44 = vbslq_s8(v23, xmmword_18A678630, xmmword_18A678620);
  v45 = vbslq_s8(v23, xmmword_18A678610, xmmword_18A678600);
  v29 = v5;
  [UIView _performSystemAppearanceModifications:v31];
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [UIView alloc];
    [(UIView *)self bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    v6 = self->_contentView;
    self->_contentView = v5;

    [(UIView *)self->_contentView setEdgesPreservingSuperviewLayoutMargins:15];
    containerView = self->_containerView;
    v8 = self->_contentView;
    if (self->_specularView)
    {
      [(UIView *)containerView insertSubview:v8 belowSubview:?];
    }

    else
    {
      [(UIView *)containerView addSubview:v8];
    }

    [(UIView *)self setNeedsLayout];
    contentView = self->_contentView;
  }

  return contentView;
}

- (UIView)visualEffectContainerView
{
  visualEffectContainerView = self->_visualEffectContainerView;
  if (!visualEffectContainerView)
  {
    v4 = [_UIFloatingContentCornerRadiusAnimatingView alloc];
    [(UIView *)self bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    v6 = self->_visualEffectContainerView;
    self->_visualEffectContainerView = v5;

    [(UIView *)self->_visualEffectContainerView setEdgesPreservingSuperviewLayoutMargins:15];
    [(UIView *)self->_visualEffectContainerView setOpaque:0];
    [(UIView *)self->_visualEffectContainerView setBackgroundColor:0];
    layer = [(UIView *)self->_visualEffectContainerView layer];
    [layer setCornerCurve:self->_cornerCurve];

    layer2 = [(UIView *)self->_visualEffectContainerView layer];
    [layer2 setCornerRadius:self->_cornerRadius];

    layer3 = [(UIView *)self->_visualEffectContainerView layer];
    [layer3 setAllowsGroupOpacity:0];

    layer4 = [(UIView *)self->_visualEffectContainerView layer];
    [layer4 setAllowsGroupBlending:0];

    [(UIView *)self->_visualEffectContainerView setClipsToBounds:0];
    [(UIView *)self->_visualEffectContainerView setAlpha:1.0];
    [(UIView *)self->_transformView insertSubview:self->_visualEffectContainerView belowSubview:self->_containerView];
    visualEffectContainerView = self->_visualEffectContainerView;
  }

  return visualEffectContainerView;
}

- (void)setSecondaryBackdropView:(id)view
{
  viewCopy = view;
  secondaryBackdropView = self->_secondaryBackdropView;
  v11 = viewCopy;
  if (secondaryBackdropView)
  {
    if (secondaryBackdropView == viewCopy)
    {
      goto LABEL_7;
    }

    [(UIView *)secondaryBackdropView removeFromSuperview];
    v7 = self->_secondaryBackdropView;
    self->_secondaryBackdropView = 0;
  }

  objc_storeStrong(&self->_secondaryBackdropView, view);
  visualEffectContainerView = [(_UIFloatingContentView *)self visualEffectContainerView];
  [visualEffectContainerView addSubview:self->_secondaryBackdropView];

  v9 = self->_secondaryBackdropView;
  [(UIView *)self->_visualEffectContainerView bounds];
  [(UIView *)v9 setFrame:?];
  if (![(UIView *)self->_visualEffectContainerView clipsToBounds])
  {
    [(UIView *)self->_visualEffectContainerView setClipsToBounds:1];
  }

  layer = [(UIView *)self->_secondaryBackdropView layer];
  [layer setCornerRadius:0.0];

  viewCopy = v11;
LABEL_7:
}

- (void)removeSecondaryBackdropView
{
  secondaryBackdropView = self->_secondaryBackdropView;
  if (secondaryBackdropView)
  {
    [(UIView *)secondaryBackdropView removeFromSuperview];
    v4 = self->_secondaryBackdropView;
    self->_secondaryBackdropView = 0;
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_originalCornerRadius != radius)
  {
    self->_originalCornerRadius = radius;
    [(_UIFloatingContentView *)self _updateCornerRadius:?];
  }
}

- (void)setCornerCurve:(id)curve
{
  if (self->_cornerCurve != curve)
  {
    self->_cornerCurve = curve;
    [(_UIFloatingContentView *)self _updateCornerRadiusLayers];
  }
}

- (void)setContinuousCornerEnabled:(BOOL)enabled
{
  v3 = MEMORY[0x1E69796E8];
  if (!enabled)
  {
    v3 = MEMORY[0x1E69796E0];
  }

  [(_UIFloatingContentView *)self setCornerCurve:*v3];
}

- (void)_updateCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    v5 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];

    [(_UIFloatingContentView *)self _updateTransformForPrimaryState:v5];
  }
}

- (void)_updateCornerRadiusLayers
{
  v3 = [(_UIFloatingContentView *)self _shouldApplyCornerRadiusForPrimaryState:[(_UIFloatingContentView *)self _primaryStateForState:self->_controlState]];
  layer = [(UIView *)self->_containerView layer];
  [layer setCornerCurve:self->_cornerCurve];

  layer2 = [(UIView *)self->_containerView layer];
  v6 = layer2;
  cornerRadius = 0.0;
  if (v3)
  {
    cornerRadius = self->_cornerRadius;
  }

  [layer2 setCornerRadius:cornerRadius];

  layer3 = [(UIView *)self->_highlightView layer];
  [layer3 setCornerCurve:self->_cornerCurve];

  layer4 = [(UIView *)self->_highlightView layer];
  [layer4 setCornerRadius:self->_cornerRadius];

  layer5 = [(UIView *)self->_visualEffectContainerView layer];
  [layer5 setCornerCurve:self->_cornerCurve];

  layer6 = [(UIView *)self->_visualEffectContainerView layer];
  [layer6 setCornerRadius:self->_cornerRadius];

  unfocusedBorderView = self->_unfocusedBorderView;
  if (unfocusedBorderView)
  {
    layer7 = [(UIView *)unfocusedBorderView layer];
    [layer7 setCornerCurve:self->_cornerCurve];

    layer8 = [(UIView *)self->_unfocusedBorderView layer];
    [layer8 setCornerRadius:self->_cornerRadius];
  }

  punchoutShadowView = self->_punchoutShadowView;
  if (punchoutShadowView)
  {
    layer9 = [(UIView *)punchoutShadowView layer];
    [layer9 setCornerCurve:self->_cornerCurve];

    layer10 = [(UIView *)self->_punchoutShadowView layer];
    [layer10 setCornerRadius:self->_cornerRadius];
  }

  [(_UIFloatingContentView *)self _layoutHighContrastFocusIndicator];
}

- (void)setRoundContentWhenDeselected:(BOOL)deselected
{
  if (self->_roundContentWhenDeselected != deselected)
  {
    self->_roundContentWhenDeselected = deselected;
    v5 = [(_UIFloatingContentView *)self _shouldApplyCornerRadiusForPrimaryState:[(_UIFloatingContentView *)self _primaryStateForState:self->_controlState]];
    layer = [(UIView *)self->_containerView layer];
    [layer setCornerCurve:self->_cornerCurve];

    layer2 = [(UIView *)self->_containerView layer];
    cornerRadius = 0.0;
    if (v5)
    {
      cornerRadius = self->_cornerRadius;
    }

    v9 = layer2;
    [layer2 setCornerRadius:cornerRadius];
  }
}

- (_UIFocusAnimationConfiguration)focusAnimationConfiguration
{
  focusAnimationConfiguration = self->_focusAnimationConfiguration;
  if (!focusAnimationConfiguration)
  {
    _defaultFocusAnimationConfiguration = [objc_opt_class() _defaultFocusAnimationConfiguration];
    v5 = self->_focusAnimationConfiguration;
    self->_focusAnimationConfiguration = _defaultFocusAnimationConfiguration;

    focusAnimationConfiguration = self->_focusAnimationConfiguration;
  }

  return focusAnimationConfiguration;
}

- (id)backgroundColorForState:(unint64_t)state
{
  if ([(_UIFloatingContentView *)self _primaryStateForState:?]!= state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:866 description:@"_UIFloatingContentView: getting properties for mixed states is unsupported"];
  }

  backgroundColorsByState = self->_backgroundColorsByState;

  return CFDictionaryGetValue(backgroundColorsByState, state);
}

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  value = color;
  if ([(_UIFloatingContentView *)self _primaryStateForState:state]!= state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:873 description:@"_UIFloatingContentView: setting properties for mixed states is unsupported"];
  }

  backgroundColorsByState = self->_backgroundColorsByState;
  if (value)
  {
    CFDictionarySetValue(backgroundColorsByState, state, value);
  }

  else
  {
    CFDictionaryRemoveValue(backgroundColorsByState, state);
  }

  if ([(_UIFloatingContentView *)self _primaryStateForState:self->_controlState]== state)
  {
    [(_UIFloatingContentView *)self _updateHighlightViewForPrimaryState:state];
  }
}

- (id)glassForState:(unint64_t)state
{
  if (_UISolariumEnabled() && self->_glassesByState)
  {
    if ([(_UIFloatingContentView *)self _primaryStateForState:state]!= state)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:889 description:@"_UIFloatingContentView: getting properties for mixed states is unsupported"];
    }

    v6 = CFDictionaryGetValue(self->_glassesByState, state);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setGlass:(id)glass forState:(unint64_t)state
{
  value = glass;
  if (_UISolariumEnabled())
  {
    if ([(_UIFloatingContentView *)self _primaryStateForState:state]!= state)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:900 description:@"_UIFloatingContentView: setting properties for mixed states is unsupported"];
    }

    glassesByState = self->_glassesByState;
    if (!glassesByState)
    {
      glassesByState = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      self->_glassesByState = glassesByState;
    }

    CFDictionarySetValue(glassesByState, state, value);
    if ([(_UIFloatingContentView *)self _primaryStateForState:self->_controlState]== state)
    {
      [(_UIFloatingContentView *)self _applyGlassMaterialsWithPrimaryState:state focusDirection:self->_highlightStyle forHighlightStyle:self->_focusDirection.x, self->_focusDirection.y];
    }
  }
}

- (void)removeGlassForState:(unint64_t)state
{
  if (_UISolariumEnabled() && self->_glassesByState)
  {
    if ([(_UIFloatingContentView *)self _primaryStateForState:state]!= state)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:917 description:@"_UIFloatingContentView: setting properties for mixed states is unsupported"];
    }

    if (CFDictionaryContainsKey(self->_glassesByState, state))
    {
      CFDictionaryRemoveValue(self->_glassesByState, state);
      if ([(_UIFloatingContentView *)self _primaryStateForState:self->_controlState]== state)
      {
        highlightStyle = self->_highlightStyle;
        x = self->_focusDirection.x;
        y = self->_focusDirection.y;

        [(_UIFloatingContentView *)self _applyGlassMaterialsWithPrimaryState:state focusDirection:highlightStyle forHighlightStyle:x, y];
      }
    }
  }
}

- (id)backgroundMaterialForState:(unint64_t)state
{
  if (_UISolariumEnabled() && self->_backgroundMaterialsByState)
  {
    if ([(_UIFloatingContentView *)self _primaryStateForState:state]!= state)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:932 description:@"_UIFloatingContentView: getting properties for mixed states is unsupported"];
    }

    v6 = CFDictionaryGetValue(self->_backgroundMaterialsByState, state);
    null = [MEMORY[0x1E695DFB0] null];

    if (v6 == null)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setBackgroundMaterial:(id)material forState:(unint64_t)state
{
  materialCopy = material;
  if (_UISolariumEnabled())
  {
    if ([(_UIFloatingContentView *)self _primaryStateForState:state]!= state)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:945 description:@"_UIFloatingContentView: setting properties for mixed states is unsupported"];
    }

    backgroundMaterialsByState = self->_backgroundMaterialsByState;
    if (!backgroundMaterialsByState)
    {
      backgroundMaterialsByState = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      self->_backgroundMaterialsByState = backgroundMaterialsByState;
    }

    null = materialCopy;
    if (!materialCopy)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    CFDictionarySetValue(backgroundMaterialsByState, state, null);
    if ([(_UIFloatingContentView *)self _primaryStateForState:self->_controlState]== state)
    {
      [(_UIFloatingContentView *)self _applyGlassMaterialsWithPrimaryState:state focusDirection:self->_highlightStyle forHighlightStyle:self->_focusDirection.x, self->_focusDirection.y];
    }
  }
}

- (void)removeBackgroundMaterialForState:(unint64_t)state
{
  if (_UISolariumEnabled() && self->_backgroundMaterialsByState)
  {
    if ([(_UIFloatingContentView *)self _primaryStateForState:state]!= state)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:966 description:@"_UIFloatingContentView: setting properties for mixed states is unsupported"];
    }

    if (CFDictionaryContainsKey(self->_backgroundMaterialsByState, state))
    {
      CFDictionaryRemoveValue(self->_backgroundMaterialsByState, state);
      if ([(_UIFloatingContentView *)self _primaryStateForState:self->_controlState]== state)
      {
        highlightStyle = self->_highlightStyle;
        x = self->_focusDirection.x;
        y = self->_focusDirection.y;

        [(_UIFloatingContentView *)self _applyGlassMaterialsWithPrimaryState:state focusDirection:highlightStyle forHighlightStyle:x, y];
      }
    }
  }
}

- (BOOL)isBackgroundMaterialSetForState:(unint64_t)state
{
  v6 = _UISolariumEnabled();
  if (v6)
  {
    if (self->_backgroundMaterialsByState)
    {
      if ([(_UIFloatingContentView *)self _primaryStateForState:state]!= state)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingContentView.m" lineNumber:983 description:@"_UIFloatingContentView: checking properties for mixed states is unsupported"];
      }

      LOBYTE(v6) = CFDictionaryContainsKey(self->_backgroundMaterialsByState, state) != 0;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)setShadowImage:(id)image stretchable:(BOOL)stretchable
{
  imageCopy = image;
  if ((_UIFloatingContentViewEnablePunchoutShadow() & 1) == 0)
  {
    self->_useShadowImage = 1;
    self->_stretchableShadowImage = stretchable;
    if (!stretchable)
    {
      self->_unfocusedShadowVerticalOffset = 0.0;
      self->_shadowVerticalOffset = 0.0;
    }

    objc_storeStrong(&self->_shadowImage, image);
    [(_UIFloatingContentView *)self _updateShadowLayer];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setUseShadowImage:(BOOL)image
{
  if (self->_useShadowImage != image)
  {
    self->_useShadowImage = image;
    [(_UIFloatingContentView *)self _updateShadowLayer];

    [(UIView *)self setNeedsLayout];
  }
}

- (BOOL)_effectiveUseShadowImage
{
  if (_UIFloatingContentViewEnablePunchoutShadow())
  {
    return 0;
  }

  return [(_UIFloatingContentView *)self useShadowImage];
}

- (void)setShadowEnabled:(BOOL)enabled
{
  if (self->_shadowEnabled != enabled)
  {
    self->_shadowEnabled = enabled;
    [(_UIFloatingContentView *)self _updateShadowLayer];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setScalesBackwards:(BOOL)backwards
{
  if (self->_scalesBackwards != backwards)
  {
    self->_scalesBackwards = backwards;
  }
}

- (CGPath)_shadowPathForSize:(CGSize)size radius:(double)radius
{
  height = size.height;
  width = size.width;
  if (qword_1EA990AC8 != -1)
  {
    dispatch_once(&qword_1EA990AC8, &__block_literal_global_48);
  }

  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *v27 = width;
  *&v27[1] = height;
  [(_UIFloatingContentView *)self cornerRadius];
  v27[2] = v16;
  *&v27[3] = radius;
  v28 = self->_cornerCurve;
  v17 = [MEMORY[0x1E696B098] valueWithBytes:v27 objCType:"{?={CGSize=dd}dd@}"];
  cGPath = [_MergedGlobals_24 objectForKey:v17];
  if (!cGPath)
  {
    v19 = round(v9 + (v13 - width) * 0.5);
    v20 = round(v11 + (v15 - height) * 0.5);
    if ([(_UIFloatingContentView *)self isContinuousCornerEnabled])
    {
      [(_UIFloatingContentView *)self cornerRadius];
      v22 = v21;
      [(_UIFloatingContentView *)self cornerRadius];
      [UIBezierPath _continuousRoundedRectBezierPath:-1 withRoundedCorners:16 cornerRadius:v19 segments:v20, width, height, v22, v23];
    }

    else
    {
      [(_UIFloatingContentView *)self cornerRadius];
      [UIBezierPath bezierPathWithRoundedRect:v19 cornerRadius:v20, width, height, v25];
    }
    v24 = ;
    cGPath = [v24 CGPath];

    if (cGPath)
    {
      [_MergedGlobals_24 setObject:cGPath forKey:v17];
    }
  }

  return cGPath;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = _UIFloatingContentView;
  changeCopy = change;
  [(UIView *)&v6 traitCollectionDidChange:changeCopy];
  v5 = [(UIView *)self traitCollection:v6.receiver];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  v6.receiver = self;
  v6.super_class = _UIFloatingContentView;
  [(UIView *)&v6 _intrinsicContentSizeInvalidatedForChildView:viewCopy];
  if ([(_UIFloatingContentView *)self forwardsSubviewIntrinsicContentSizeInvalidationsToSuperview])
  {
    superview = [(UIView *)self superview];
    [superview _intrinsicContentSizeInvalidatedForChildView:viewCopy];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIFloatingContentView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIFloatingContentView *)self _setShadowImageIfNeeded];
  [(_UIFloatingContentView *)self _layoutContentView];
  [(_UIFloatingContentView *)self _updateScaleFactor];
  [(_UIFloatingContentView *)self _updateTransformForPrimaryState:[(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]]];
  [(_UIFloatingContentView *)self _layoutShadow];
  [(_UIFloatingContentView *)self _layoutHighContrastFocusIndicator];
  [(_UIFloatingContentView *)self _updateMarkerLayerIfPresent];
}

- (BOOL)_hasPotentialSolariumImpactedContent
{
  v15 = *MEMORY[0x1E69E9840];
  allValues = [(__CFDictionary *)self->_backgroundColorsByState allValues];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * i) alphaComponent];
        v5 |= v8 > 0.999999881;
      }

      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_updateMarkerLayerIfPresent
{
  if (os_variant_has_internal_diagnostics() && (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_VisualizeUIViews, @"VisualizeUIViews", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48A8C4)
  {
    v4 = objc_getAssociatedObject(self, &__UIViewMarkerLayerKey);
    if (v4)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v4 setLabelAlignment:8];
      [(_UIFloatingContentView *)self cornerRadius];
      [v4 setCornerRadius:?];
      if ([(_UIFloatingContentView *)self _hasPotentialSolariumImpactedContent])
      {
        v3 = +[UIColor systemDarkOrangeColor];
        [v4 setAlternateColor:v3];
      }

      [v4 setZPosition:100.0];
      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (void)_layoutContentView
{
  [(UIView *)self bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MidY = CGRectGetMidY(v19);
  [(UIView *)self->_containerView bounds];
  if (width != v10 || height != v9)
  {
    [(UIView *)self->_transformView setBounds:x, y, width, height];
    [(UIView *)self->_transformView setCenter:MidX, MidY];
    [(UIView *)self->_visualEffectContainerView setBounds:x, y, width, height];
    [(UIView *)self->_visualEffectContainerView setCenter:MidX, MidY];
    [(UIView *)self->_containerView setBounds:x, y, width, height];
    [(UIView *)self->_containerView setCenter:MidX, MidY];
    [(UIView *)self->_contentView setBounds:x, y, width, height];
    [(UIView *)self->_contentView setCenter:MidX, MidY];
    [(UIView *)self->_highlightView setBounds:x, y, width, height];
    [(UIView *)self->_highlightView setCenter:MidX, MidY];
    specularView = self->_specularView;
    if (specularView)
    {
      [(UIView *)specularView setBounds:x, y, width, height];
      [(UIView *)self->_specularView setCenter:MidX, MidY];
    }

    unfocusedBorderView = self->_unfocusedBorderView;
    if (unfocusedBorderView)
    {
      [(UIView *)unfocusedBorderView setBounds:x, y, width, height];
      [(UIView *)self->_unfocusedBorderView setCenter:MidX, MidY];
    }

    punchoutShadowView = self->_punchoutShadowView;
    if (punchoutShadowView)
    {
      [(UIView *)punchoutShadowView setBounds:x, y, width, height];
      [(UIView *)self->_punchoutShadowView setCenter:MidX, MidY];
    }

    secondaryBackdropView = self->_secondaryBackdropView;
    if (secondaryBackdropView)
    {
      [(UIView *)secondaryBackdropView setBounds:x, y, width, height];
      v16 = self->_secondaryBackdropView;

      [(UIView *)v16 setCenter:MidX, MidY];
    }
  }
}

- (void)_layoutShadow
{
  if (_UIFloatingContentViewEnablePunchoutShadow())
  {

    [(_UIFloatingContentView *)self _updatePunchoutShadowLayer];
  }

  else
  {

    [(_UIFloatingContentView *)self _legacy_layoutShadow];
  }
}

- (void)_createPunchoutShadowView
{
  v3 = [UIView alloc];
  [(UIView *)self->_transformView bounds];
  v4 = [(UIView *)v3 initWithFrame:?];
  punchoutShadowView = self->_punchoutShadowView;
  self->_punchoutShadowView = v4;

  [(UIView *)self->_transformView insertSubview:self->_punchoutShadowView atIndex:0];
  layer = [(UIView *)self->_punchoutShadowView layer];
  v6 = +[UIColor blackColor];
  [layer setShadowColor:{objc_msgSend(v6, "CGColor")}];

  [layer setPunchoutShadow:1];
  [layer setShadowPathIsBounds:1];
}

- (void)_updatePunchoutShadowLayer
{
  shadowEnabled = self->_shadowEnabled;
  punchoutShadowView = self->_punchoutShadowView;
  if (shadowEnabled)
  {
    [(UIView *)punchoutShadowView setHidden:0];
    layer = [(UIView *)self->_punchoutShadowView layer];
    v5 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];
    [(_UIFloatingContentView *)self unfocusedShadowRadius];
    v7 = v6;
    [(_UIFloatingContentView *)self unfocusedShadowVerticalOffset];
    v9 = v8;
    [(_UIFloatingContentView *)self unfocusedShadowOpacity];
    if (v5 == 8)
    {
      [(_UIFloatingContentView *)self shadowRadius];
      v7 = v14;
      [(_UIFloatingContentView *)self shadowVerticalOffset];
      v9 = v15;
      traitCollection = [(UIView *)self traitCollection];
      -[_UIFloatingContentView shadowOpacityForUserInterfaceStyle:](self, "shadowOpacityForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
      v13 = v17;
    }

    else
    {
      if (v5 == 1)
      {
        [(_UIFloatingContentView *)self pressedShadowRadius];
        v7 = v11;
        [(_UIFloatingContentView *)self pressedShadowVerticalOffset];
        v9 = v12;
        [(_UIFloatingContentView *)self pressedShadowOpacity];
      }

      v13 = v10;
    }

    [layer setShadowRadius:v7];
    [layer setShadowOffset:{0.0, v9}];
    *&v18 = v13;
    [layer setShadowOpacity:v18];
  }

  else
  {

    [(UIView *)punchoutShadowView setHidden:1];
  }
}

- (void)_legacy_layoutShadow
{
  if ([(_UIFloatingContentView *)self isShadowEnabled])
  {
    v3 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];
    v4 = [(_UIFloatingContentView *)self _shouldAppearToFloatForPrimaryState:v3];
    _effectiveUseShadowImage = [(_UIFloatingContentView *)self _effectiveUseShadowImage];
    [(UIView *)self bounds];
    v9 = v8;
    v11 = v10;
    if (_effectiveUseShadowImage)
    {
      if (self->_stretchableShadowImage)
      {
        [(_UIFloatingContentView *)self shadowSize];
        v14 = v12 == *MEMORY[0x1E695F060];
        v15 = v13 == *(MEMORY[0x1E695F060] + 8);
        if (v14 && v15)
        {
          v16 = v11;
        }

        else
        {
          v16 = v13;
        }

        if (v14 && v15)
        {
          v17 = v9;
        }

        else
        {
          v17 = v12;
        }

        [(_UIFloatingContentView *)self shadowRadius];
        v19 = v18 / 20.0;
        if (v4)
        {
          [(_UIFloatingContentView *)self shadowRadius];
          v21 = v20;
          [(_UIFloatingContentView *)self shadowExpansion];
        }

        else
        {
          [(_UIFloatingContentView *)self unfocusedShadowRadius];
          v21 = v35;
          [(_UIFloatingContentView *)self unfocusedShadowExpansion];
        }

        v36 = v22;
        v37 = v23;
        v38 = v17 / v19;
        v39 = v16 / v19;
        if (v3 == 1)
        {
          highlightStyle = self->_highlightStyle;
          if (highlightStyle)
          {
            if (highlightStyle == 1)
            {
              [(_UIFloatingContentView *)self shadowRadius];
              v42 = v41;
              [(_UIFloatingContentView *)self unfocusedShadowRadius];
              v21 = (v42 + v43) * 0.5;
              v36 = v36 * 0.5;
              v37 = v37 * 0.5;
            }
          }

          else
          {
            v21 = v21 * 0.25;
            v36 = v22 * 0.34;
            v37 = v23 * 0.34;
          }
        }

        _disableOutsetShadowPath = [(_UIFloatingContentView *)self _disableOutsetShadowPath];
        if (_disableOutsetShadowPath)
        {
          v50 = v21;
        }

        else
        {
          v50 = v37;
        }

        if (_disableOutsetShadowPath)
        {
          v51 = v21;
        }

        else
        {
          v51 = v36;
        }

        v9 = v38 + v51 + v51;
        v11 = v39 + v50 + v50;
      }

      else
      {
        shadowImage = self->_shadowImage;
        if (shadowImage)
        {
          [(UIImage *)shadowImage size];
          v9 = v28;
          [(UIImage *)self->_shadowImage size];
          v11 = v29;
        }
      }

      [(UIView *)self bounds];
      v54 = round(v53 + (v52 - v9) * 0.5);
      legacyShadowView = self->_legacyShadowView;
      v58 = round(v56 + (v55 - v11) * 0.5);

      [(UIView *)legacyShadowView setFrame:v54, v58, v9, v11];
    }

    else
    {
      v24 = v6;
      v25 = v7;
      if (v4)
      {
        [(_UIFloatingContentView *)self shadowRadius];
      }

      else
      {
        [(_UIFloatingContentView *)self unfocusedShadowRadius];
      }

      v30 = v26;
      if (v3 == 1)
      {
        v31 = self->_highlightStyle;
        if (v31)
        {
          if (v31 == 1)
          {
            [(_UIFloatingContentView *)self shadowRadius];
            v33 = v32;
            [(_UIFloatingContentView *)self unfocusedShadowRadius];
            v30 = (v33 + v34) * 0.5;
          }
        }

        else
        {
          v30 = v26 * 0.25;
        }

        v9 = v9 - v30;
        v11 = v11 - v30;
      }

      [(UIView *)self->_legacyShadowView setBounds:v24, v25, v9, v11];
      v61.origin.x = v24;
      v61.origin.y = v25;
      v61.size.width = v9;
      v61.size.height = v11;
      MidX = CGRectGetMidX(v61);
      v62.origin.x = v24;
      v62.origin.y = v25;
      v62.size.width = v9;
      v62.size.height = v11;
      [(UIView *)self->_legacyShadowView setCenter:MidX, CGRectGetMidY(v62)];
      v45 = [(_UIFloatingContentView *)self _shadowPathForSize:v9 radius:v11, v30];
      layer = [(UIView *)self->_legacyShadowView layer];
      [layer setShadowPath:v45];

      cornerCurve = self->_cornerCurve;
      layer2 = [(UIView *)self->_legacyShadowView layer];
      [layer2 setCornerCurve:cornerCurve];

      layer3 = [(UIView *)self->_legacyShadowView layer];
      [layer3 setShadowRadius:v30];
    }
  }
}

- (void)_layoutHighContrastFocusIndicator
{
  highContrastFocusIndicatorView = self->_highContrastFocusIndicatorView;
  if (highContrastFocusIndicatorView)
  {
    layer = [(UIView *)highContrastFocusIndicatorView layer];
    [layer borderWidth];
    v6 = v5 + v5;
    layer2 = [(UIView *)self->_highContrastFocusIndicatorView layer];
    [layer2 borderWidth];
    y = v8 + v8;

    if (self->_highContrastFocusIndicatorOutset.x == *MEMORY[0x1E695EFF8] && self->_highContrastFocusIndicatorOutset.y == *(MEMORY[0x1E695EFF8] + 8))
    {
      x = v6;
    }

    else
    {
      y = self->_highContrastFocusIndicatorOutset.y;
      x = self->_highContrastFocusIndicatorOutset.x;
    }

    [(UIView *)self->_containerView frame];
    v19 = CGRectInset(v18, -x, -y);
    [(UIView *)self->_highContrastFocusIndicatorView setFrame:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
    v11 = _UISolariumMetricsEnabled();
    cornerCurve = self->_cornerCurve;
    layer3 = [(UIView *)self->_highContrastFocusIndicatorView layer];
    [layer3 setCornerCurve:cornerCurve];

    highContrastFocusIndicatorCornerRadius = self->_highContrastFocusIndicatorCornerRadius;
    if (highContrastFocusIndicatorCornerRadius <= 0.0)
    {
      if (x >= y)
      {
        v15 = x;
      }

      else
      {
        v15 = y;
      }

      if (!v11)
      {
        v15 = 1.0;
      }

      highContrastFocusIndicatorCornerRadius = v15 + self->_cornerRadius;
    }

    layer4 = [(UIView *)self->_highContrastFocusIndicatorView layer];
    [layer4 setCornerRadius:highContrastFocusIndicatorCornerRadius];
  }
}

- (void)setControlState:(unint64_t)state animated:(BOOL)animated
{
  if (animated)
  {
    focusAnimationConfiguration = [(_UIFloatingContentView *)self focusAnimationConfiguration];
    if ((state & 8) != 0)
    {
      [UIFocusAnimationCoordinator _focusingAnimationCoordinatorWithConfiguration:focusAnimationConfiguration inContext:0];
    }

    else
    {
      [UIFocusAnimationCoordinator _unfocusingAnimationCoordinatorWithConfiguration:focusAnimationConfiguration inContext:0];
    }
    v8 = ;

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  [(_UIFloatingContentView *)self _setControlState:state withAnimationCoordinator:v7];
  [v9 _animate];
}

- (void)_setControlState:(unint64_t)state withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  controlState = self->_controlState;
  if (controlState != state)
  {
    self->_controlState = state;
    v8 = [(_UIFloatingContentView *)self _primaryStateForState:state];
    if (v8 == 1)
    {
      if ((state & 8) != 0)
      {
        v8 = 1;
      }

      else if (dyld_program_sdk_at_least())
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }
    }

    v9 = [(_UIFloatingContentView *)self _shouldAppearToFloatForPrimaryState:v8];
    if (v8)
    {
      [(_UIFloatingContentView *)self _updateContainerLayerQualityForPrimaryState:v8];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68___UIFloatingContentView__setControlState_withAnimationCoordinator___block_invoke;
    aBlock[3] = &unk_1E70F35E0;
    aBlock[4] = self;
    v21 = v8 == 0;
    v10 = _Block_copy(aBlock);
    v11 = [coordinatorCopy activeFocusAnimation] == 1;
    _activeConfiguration = [coordinatorCopy _activeConfiguration];
    [_activeConfiguration unfocusingBackgroundFadeDurationPercentage];
    v14 = v13;

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68___UIFloatingContentView__setControlState_withAnimationCoordinator___block_invoke_2;
    v17[3] = &unk_1E70F6FB0;
    v17[4] = self;
    v17[5] = v8;
    v18 = v9;
    v19 = v11;
    v17[6] = v14;
    v17[7] = controlState;
    v15 = _Block_copy(v17);
    v16 = v15;
    if (coordinatorCopy)
    {
      [coordinatorCopy addCoordinatedAnimations:v15 completion:v10];
    }

    else
    {
      if (v15)
      {
        (*(v15 + 2))(v15);
      }

      if (v10)
      {
        v10[2](v10);
      }
    }
  }
}

- (void)setClipsContentToBounds:(BOOL)bounds
{
  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView setClipsToBounds:bounds];
  }
}

- (BOOL)clipsContentToBounds
{
  containerView = self->_containerView;
  if (containerView)
  {
    LOBYTE(containerView) = [(UIView *)containerView clipsToBounds];
  }

  return containerView;
}

- (void)setHighContrastFocusIndicatorCornerRadius:(double)radius
{
  self->_highContrastFocusIndicatorCornerRadius = radius;
  layer = [(UIView *)self->_highContrastFocusIndicatorView layer];
  [layer setCornerRadius:radius];
}

- (void)_updateHighContrastFocusIndicatorView
{
  if (self->_showsHighContrastFocusIndicator && _AXSHighContrastFocusIndicatorsEnabled())
  {
    if (!self->_highContrastFocusIndicatorView)
    {
      v3 = [UIView alloc];
      [(UIView *)self bounds];
      v4 = [(UIView *)v3 initWithFrame:?];
      highContrastFocusIndicatorView = self->_highContrastFocusIndicatorView;
      self->_highContrastFocusIndicatorView = v4;

      v6 = +[UIColor whiteColor];
      cGColor = [v6 CGColor];
      layer = [(UIView *)self->_highContrastFocusIndicatorView layer];
      [layer setBorderColor:cGColor];

      layer2 = [(UIView *)self->_highContrastFocusIndicatorView layer];
      [layer2 setBorderWidth:8.0];

      [(UIView *)self->_transformView insertSubview:self->_highContrastFocusIndicatorView atIndex:0];
      [(_UIFloatingContentView *)self _layoutHighContrastFocusIndicator];
      v10 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];

      [(_UIFloatingContentView *)self _updateHighContrastFocusIndicatorForPrimaryState:v10];
    }
  }

  else
  {
    v11 = self->_highContrastFocusIndicatorView;
    if (v11)
    {
      [(UIView *)v11 removeFromSuperview];
      v12 = self->_highContrastFocusIndicatorView;
      self->_highContrastFocusIndicatorView = 0;
    }
  }
}

- (void)_updateUnfocusedBorderView
{
  unfocusedBorderView = self->_unfocusedBorderView;
  if (unfocusedBorderView)
  {
    [(UIView *)unfocusedBorderView setHidden:self->_highlightStyle != 1];
    if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumFloatingContentViewUnfocusedBorderWidth, @"UISolariumFloatingContentViewUnfocusedBorderWidth", _UIInternalPreferenceUpdateDouble))
    {
      v4 = 1.0;
    }

    else
    {
      v4 = *&qword_1EA95E138;
    }

    layer = [(UIView *)self->_unfocusedBorderView layer];
    [layer setBorderWidth:v4];

    if ((self->_controlState & 8) != 0)
    {
      +[UIColor clearColor];
    }

    else
    {
      [UIColor colorWithWhite:1.0 alpha:self->_unfocusedBorderOpacity];
    }
    v9 = ;
    v6 = v9;
    cGColor = [v9 CGColor];
    layer2 = [(UIView *)self->_unfocusedBorderView layer];
    [layer2 setBorderColor:cGColor];
  }
}

- (void)_updateShadowLayer
{
  if (_UIFloatingContentViewEnablePunchoutShadow())
  {

    [(_UIFloatingContentView *)self _updatePunchoutShadowLayer];
  }

  else
  {

    [(_UIFloatingContentView *)self _legacy_updateShadowLayer];
  }
}

- (double)_legacy_effectiveShadowOpacity
{
  traitCollection = [(UIView *)self traitCollection];
  -[_UIFloatingContentView shadowOpacityForUserInterfaceStyle:](self, "shadowOpacityForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
  v5 = v4;

  return v5;
}

- (void)_legacy_updateShadowOpacityForPrimaryState:(unint64_t)state
{
  [(_UIFloatingContentView *)self _legacy_effectiveShadowOpacity];
  v6 = v5;
  unfocusedShadowOpacity = v5;
  if (![(_UIFloatingContentView *)self _shouldAppearToFloatForPrimaryState:state])
  {
    unfocusedShadowOpacity = self->_unfocusedShadowOpacity;
  }

  if ([(_UIFloatingContentView *)self _effectiveUseShadowImage])
  {
    if (state == 1)
    {
      highlightStyle = self->_highlightStyle;
      if (highlightStyle)
      {
        if (highlightStyle == 1)
        {
          unfocusedShadowOpacity = (v6 + self->_unfocusedShadowOpacity) * 0.5;
        }
      }

      else
      {
        unfocusedShadowOpacity = v6 * 0.75;
      }
    }

    layer = [(UIView *)self->_legacyShadowView layer];
    *&v14 = unfocusedShadowOpacity;
    v15 = layer;
    [layer setOpacity:v14];
  }

  else
  {
    layer2 = [(UIView *)self->_legacyShadowView layer];
    LODWORD(v10) = 1.0;
    [layer2 setOpacity:v10];

    layer3 = [(UIView *)self->_legacyShadowView layer];
    *&v12 = unfocusedShadowOpacity;
    v15 = layer3;
    [layer3 setShadowOpacity:v12];
  }
}

- (void)_legacy_updateShadowLayer
{
  isShadowEnabled = [(_UIFloatingContentView *)self isShadowEnabled];
  legacyShadowView = self->_legacyShadowView;
  if (isShadowEnabled)
  {
    if (!legacyShadowView)
    {
      v5 = [UIView alloc];
      [(UIView *)self bounds];
      v6 = [(UIView *)v5 initWithFrame:?];
      v7 = self->_legacyShadowView;
      self->_legacyShadowView = v6;

      [(UIView *)self insertSubview:self->_legacyShadowView atIndex:0];
      legacyShadowView = self->_legacyShadowView;
    }

    layer = [(UIView *)legacyShadowView layer];
    [(UIView *)layer setZPosition:-1000.0];
    if ([(_UIFloatingContentView *)self _effectiveUseShadowImage])
    {
      shadowImage = [(_UIFloatingContentView *)self shadowImage];
      [(UIView *)self->_legacyShadowView setOpaque:0];
      [(UIView *)self->_legacyShadowView setBackgroundColor:0];
      -[UIView setContents:](layer, "setContents:", [shadowImage CGImage]);
      if (self->_stretchableShadowImage)
      {
        [(_UIFloatingContentView *)self shadowContentsCenter];
      }

      else
      {
        v11 = 1.0;
        v9 = 0.0;
        v10 = 0.0;
        v12 = 1.0;
      }

      [(UIView *)layer setContentsCenter:v9, v10, v11, v12];
      [(UIView *)layer setShadowOpacity:0.0];
      [(UIView *)layer setOpacity:0.0];
      [(UIView *)layer setShadowRadius:0.0];
      [(UIView *)layer setZPosition:-1000.0];
    }

    else
    {
      [(UIView *)layer setContents:0];
      [(UIView *)layer setContentsCenter:0.0, 0.0, 1.0, 1.0];
      traitCollection = [(UIView *)self traitCollection];
      -[_UIFloatingContentView shadowOpacityForUserInterfaceStyle:](self, "shadowOpacityForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
      *&v15 = v15;
      [(UIView *)layer setShadowOpacity:v15];

      cornerCurve = [(_UIFloatingContentView *)self cornerCurve];
      [(UIView *)layer setCornerCurve:cornerCurve];

      [(_UIFloatingContentView *)self shadowRadius];
      [(UIView *)layer setShadowRadius:?];
    }

    [(_UIFloatingContentView *)self _layoutShadow];
    v17 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];
    [(_UIFloatingContentView *)self _legacy_updateShadowOpacityForPrimaryState:v17];
    [(_UIFloatingContentView *)self _updateTransformForPrimaryState:v17];
    v13 = layer;
  }

  else
  {
    [(UIView *)legacyShadowView removeFromSuperview];
    v13 = self->_legacyShadowView;
    self->_legacyShadowView = 0;
  }
}

- (void)setShadowContentsCenter:(CGRect)center
{
  height = center.size.height;
  width = center.size.width;
  y = center.origin.y;
  x = center.origin.x;
  p_shadowContentsCenter = &self->_shadowContentsCenter;
  if (!CGRectEqualToRect(self->_shadowContentsCenter, center))
  {
    p_shadowContentsCenter->origin.x = x;
    p_shadowContentsCenter->origin.y = y;
    p_shadowContentsCenter->size.width = width;
    p_shadowContentsCenter->size.height = height;
    if (self->_stretchableShadowImage)
    {
      layer = [(UIView *)self->_legacyShadowView layer];
      [layer setContentsCenter:{x, y, width, height}];
    }
  }
}

- (void)setShadowOpacity:(double)opacity forUserInterfaceStyle:(int64_t)style
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65___UIFloatingContentView_setShadowOpacity_forUserInterfaceStyle___block_invoke;
  v5[3] = &unk_1E70F6848;
  v5[4] = self;
  v5[5] = style;
  *&v5[6] = opacity;
  [UIView _performSystemAppearanceModifications:v5];
  [(_UIFloatingContentView *)self _updateShadowLayer];
}

- (double)shadowOpacityForUserInterfaceStyle:(int64_t)style
{
  v3 = style == 2 || style == 1000;
  v4 = 41;
  if (v3)
  {
    v4 = 40;
  }

  return *(&self->super.super.super.isa + OBJC_IVAR____UIFloatingContentView__backgroundColorsByState[v4]);
}

- (double)_test_currentShadowOpacity
{
  if (_UIFloatingContentViewEnablePunchoutShadow())
  {
    layer = [(UIView *)self->_punchoutShadowView layer];
    [layer shadowOpacity];
  }

  else
  {
    layer = [(UIView *)self->_legacyShadowView layer];
    [layer opacity];
  }

  v5 = v4;

  return v5;
}

- (void)setUnfocusedShadowOpacity:(double)opacity
{
  if (self->_unfocusedShadowOpacity != opacity)
  {
    self->_unfocusedShadowOpacity = opacity;
    if (_UIFloatingContentViewEnablePunchoutShadow())
    {

      [(_UIFloatingContentView *)self _updatePunchoutShadowLayer];
    }

    else
    {
      v4 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];

      [(_UIFloatingContentView *)self _legacy_updateShadowOpacityForPrimaryState:v4];
    }
  }
}

- (void)setUnfocusedShadowVerticalOffset:(double)offset
{
  if (self->_unfocusedShadowVerticalOffset != offset)
  {
    self->_unfocusedShadowVerticalOffset = offset;
    if (_UIFloatingContentViewEnablePunchoutShadow())
    {

      [(_UIFloatingContentView *)self _updatePunchoutShadowLayer];
    }

    else
    {
      v4 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];

      [(_UIFloatingContentView *)self _updateTransformForPrimaryState:v4];
    }
  }
}

- (void)setUnfocusedShadowRadius:(double)radius
{
  if (self->_unfocusedShadowRadius != radius)
  {
    self->_unfocusedShadowRadius = radius;
    if (_UIFloatingContentViewEnablePunchoutShadow())
    {

      [(_UIFloatingContentView *)self _updatePunchoutShadowLayer];
    }

    else
    {

      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)setPressedShadowRadius:(double)radius
{
  if (self->_pressedShadowRadius != radius)
  {
    self->_pressedShadowRadius = radius;
    if (_UIFloatingContentViewEnablePunchoutShadow())
    {

      [(_UIFloatingContentView *)self _updatePunchoutShadowLayer];
    }

    else
    {

      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)setPressedShadowVerticalOffset:(double)offset
{
  if (self->_pressedShadowVerticalOffset != offset)
  {
    self->_pressedShadowVerticalOffset = offset;
    if (_UIFloatingContentViewEnablePunchoutShadow())
    {

      [(_UIFloatingContentView *)self _updatePunchoutShadowLayer];
    }

    else
    {
      v4 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];

      [(_UIFloatingContentView *)self _updateTransformForPrimaryState:v4];
    }
  }
}

- (void)setPressedShadowExpansion:(CGSize)expansion
{
  if (self->_pressedShadowExpansion.width == expansion.width && self->_pressedShadowExpansion.height == expansion.height)
  {
    self->_pressedShadowExpansion = expansion;
    v6 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];

    [(_UIFloatingContentView *)self _updateTransformForPrimaryState:v6];
  }
}

- (void)setPressedShadowOpacity:(double)opacity
{
  if (self->_pressedShadowOpacity != opacity)
  {
    self->_pressedShadowOpacity = opacity;
    if (_UIFloatingContentViewEnablePunchoutShadow())
    {

      [(_UIFloatingContentView *)self _updatePunchoutShadowLayer];
    }

    else
    {
      v4 = [(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]];

      [(_UIFloatingContentView *)self _legacy_updateShadowOpacityForPrimaryState:v4];
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _UIFloatingContentView;
  [(UIView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_UIFloatingContentView *)self _layoutContentView];
  [(_UIFloatingContentView *)self _updateScaleFactor];
  if (_UISolariumMetricsEnabled())
  {
    [(_UIFloatingContentView *)self _updateTransformForPrimaryState:[(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]]];
    [(_UIFloatingContentView *)self _layoutShadow];
    [(_UIFloatingContentView *)self _layoutHighContrastFocusIndicator];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIFloatingContentView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UIFloatingContentView *)self _layoutContentView];
  [(_UIFloatingContentView *)self _updateScaleFactor];
  if (_UISolariumMetricsEnabled())
  {
    [(_UIFloatingContentView *)self _updateTransformForPrimaryState:[(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]]];
    [(_UIFloatingContentView *)self _layoutShadow];
    [(_UIFloatingContentView *)self _layoutHighContrastFocusIndicator];
  }
}

- (void)setUnfocusedBorderOpacity:(double)opacity
{
  if (self->_unfocusedBorderOpacity != opacity)
  {
    self->_unfocusedBorderOpacity = opacity;
    [(_UIFloatingContentView *)self _updateUnfocusedBorderView];
  }
}

- (void)setAsymmetricScaleFactor:(CGSize)factor
{
  self->_asymmetricScaleFactor = factor;
  self->_customScale = 1;
  self->_symmetricScale = 0;
}

- (void)setAsymmetricFocusedSizeIncrease:(CGSize)increase
{
  self->_asymmetricFocusedSizeIncrease = increase;
  self->_customScale = 0;
  self->_symmetricScale = 0;
}

- (void)setAsymmetricPressedScaleFactor:(CGSize)factor
{
  self->_asymmetricPressedScaleFactor = factor;
  self->_customScale = 1;
  self->_symmetricScale = 0;
}

- (void)setAsymmetricPressedSizeIncrease:(CGSize)increase
{
  self->_asymmetricPressedSizeIncrease = increase;
  self->_customScale = 0;
  self->_symmetricScale = 0;
}

- (void)_updateScaleFactor
{
  if (!self->_customScale)
  {
    [(UIView *)self bounds];
    v5 = 1.0;
    if (v3 <= 0.0)
    {
      v7 = 1.0;
      v8 = 1.0;
      v9 = 1.0;
    }

    else
    {
      v6 = v4;
      v7 = 1.0;
      v8 = 1.0;
      v9 = 1.0;
      if (v4 > 0.0)
      {
        v10 = v3;
        if (self->_symmetricScale)
        {
          [(_UIFloatingContentView *)self focusedSizeIncrease];
          v12 = v11;
          [(_UIFloatingContentView *)self pressedSizeIncrease];
          if (v10 <= v6)
          {
            v8 = (v6 + v12) / v6;
            v5 = (v6 + v13) / v6;
          }

          else
          {
            v8 = (v10 + v12) / v10;
            v5 = (v10 + v13) / v10;
          }

          v7 = v5;
          v9 = v8;
        }

        else
        {
          [(_UIFloatingContentView *)self asymmetricFocusedSizeIncrease];
          v9 = (v10 + v14) / v10;
          [(_UIFloatingContentView *)self asymmetricPressedSizeIncrease];
          v7 = (v10 + v15) / v10;
          [(_UIFloatingContentView *)self asymmetricFocusedSizeIncrease];
          v8 = (v6 + v16) / v6;
          [(_UIFloatingContentView *)self asymmetricPressedSizeIncrease];
          v5 = (v6 + v17) / v6;
        }
      }
    }

    if (v9 != self->_asymmetricScaleFactor.width || v8 != self->_asymmetricScaleFactor.height)
    {
      self->_asymmetricScaleFactor.width = v9;
      self->_asymmetricScaleFactor.height = v8;
      [(_UIFloatingContentView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
    }

    if (v7 != self->_asymmetricPressedScaleFactor.width || v5 != self->_asymmetricPressedScaleFactor.height)
    {
      self->_asymmetricPressedScaleFactor.width = v7;
      self->_asymmetricPressedScaleFactor.height = v5;

      [(_UIFloatingContentView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
    }
  }
}

- (void)_updateContainerLayerQualityForPrimaryState:(unint64_t)state
{
  if ([(_UIFloatingContentView *)self _shouldAppearToFloatForPrimaryState:state])
  {
    v4 = self->_contentRotation.y != *(MEMORY[0x1E695EFF8] + 8) || self->_contentRotation.x != *MEMORY[0x1E695EFF8];
  }

  else
  {
    v4 = 0;
  }

  layer = [(UIView *)self->_containerView layer];
  [layer setAllowsEdgeAntialiasing:v4];

  layer2 = [(UIView *)self->_containerView layer];
  [layer2 setShouldRasterize:v4];
}

- (void)_updateHighlightViewForPrimaryState:(unint64_t)state
{
  v4 = [(_UIFloatingContentView *)self backgroundColorForState:state];
  [(UIView *)self->_highlightView setBackgroundColor:v4];
}

- (void)_updateTransformForPrimaryState:(unint64_t)state
{
  if (_UISolariumMetricsEnabled())
  {

    [(_UIFloatingContentView *)self _modern_updateTransformForPrimaryState:state];
  }

  else
  {

    [(_UIFloatingContentView *)self _legacy_updateTransformForPrimaryState:state];
  }
}

- (void)_legacy_updateTransformForPrimaryState:(unint64_t)state
{
  v5 = *(MEMORY[0x1E69792E8] + 48);
  v76 = *(MEMORY[0x1E69792E8] + 32);
  v77 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 80);
  v78 = *(MEMORY[0x1E69792E8] + 64);
  v79 = *(MEMORY[0x1E69792E8] + 80);
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v74 = *MEMORY[0x1E69792E8];
  v75 = v7;
  v8 = *(MEMORY[0x1E69792E8] + 88);
  v9 = *(MEMORY[0x1E69792E8] + 112);
  v72 = *(MEMORY[0x1E69792E8] + 96);
  v73 = v9;
  *&v71.m31 = v78;
  *&v71.m33 = v6;
  *&v71.m41 = v72;
  *&v71.m43 = v9;
  *&v71.m11 = v74;
  *&v71.m13 = v7;
  *&v71.m21 = v76;
  *&v71.m23 = v5;
  v67 = v76;
  v68 = v5;
  v69 = v78;
  m33 = v79;
  v65 = v74;
  v66 = v7;
  v63 = v72;
  v64 = v9;
  v55 = v74;
  v56 = v78;
  *&v62.m31 = v78;
  *&v62.m33 = v6;
  v51 = v6;
  v52 = v9;
  v53 = v72;
  v54 = v7;
  *&v62.m41 = v72;
  *&v62.m43 = v9;
  *&v62.m11 = v74;
  *&v62.m13 = v7;
  v57 = v5;
  v58 = v76;
  *&v62.m21 = v76;
  *&v62.m23 = v5;
  m34 = v8;
  if ([(_UIFloatingContentView *)self _effectiveUseShadowImage])
  {
    [(_UIFloatingContentView *)self shadowRadius];
    CATransform3DMakeScale(&v61, v11 / 20.0, v11 / 20.0, 1.0);
    v67 = *&v61.m21;
    v68 = *&v61.m23;
    v69 = *&v61.m31;
    m33 = v61.m33;
    v65 = *&v61.m11;
    v66 = *&v61.m13;
    m34 = v61.m34;
    v63 = *&v61.m41;
    v64 = *&v61.m43;
  }

  if ([(_UIFloatingContentView *)self _shouldAppearToFloatForPrimaryState:state])
  {
    p_asymmetricScaleFactor = &self->_asymmetricScaleFactor;
    if (fabs(self->_asymmetricScaleFactor.width) < 2.22044605e-16 || fabs(self->_asymmetricScaleFactor.height) < 2.22044605e-16)
    {
      [(_UIFloatingContentView *)self _updateScaleFactor];
    }

    shadowVerticalOffset = self->_shadowVerticalOffset;
    if (state == 1)
    {
      highlightStyle = self->_highlightStyle;
      if (highlightStyle)
      {
        if (highlightStyle == 1)
        {
          shadowVerticalOffset = (shadowVerticalOffset + self->_unfocusedShadowVerticalOffset) * 0.5;
        }
      }

      else
      {
        shadowVerticalOffset = shadowVerticalOffset * 0.4;
      }
    }

    *&a.m21 = v67;
    *&a.m23 = v68;
    *&a.m31 = v69;
    a.m33 = m33;
    *&a.m11 = v65;
    *&a.m13 = v66;
    a.m34 = m34;
    *&a.m41 = v63;
    *&a.m43 = v64;
    CATransform3DTranslate(&v61, &a, 0.0, shadowVerticalOffset, 0.0);
    v67 = *&v61.m21;
    v68 = *&v61.m23;
    v69 = *&v61.m31;
    m33 = v61.m33;
    v65 = *&v61.m11;
    v66 = *&v61.m13;
    v17 = v61.m34;
    v63 = *&v61.m41;
    v64 = *&v61.m43;
    v18 = *p_asymmetricScaleFactor;
    v19 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3CB0000000000000uLL), vabsq_f64(*p_asymmetricScaleFactor)));
    if (v19.i32[0] & v19.i32[1])
    {
      goto LABEL_31;
    }

    if (state == 1)
    {
      v20 = self->_highlightStyle;
      if (!v20)
      {
        __asm { FMOV            V1.2D, #-1.0 }

        v26 = vaddq_f64(v18, _Q1);
        __asm { FMOV            V1.2D, #0.25 }

        goto LABEL_19;
      }

      if (v20 == 1)
      {
        __asm { FMOV            V1.2D, #-1.0 }

        v26 = vaddq_f64(v18, _Q1);
        __asm { FMOV            V1.2D, #0.5 }

LABEL_19:
        v29 = vmulq_f64(v26, _Q1);
        __asm { FMOV            V1.2D, #1.0 }

        v18 = vaddq_f64(v29, _Q1);
      }
    }

    v31 = v18.f64[1];
    sx = v18.f64[0];
    if (self->_focusScaleAnchorPoint.x == 0.5 && self->_focusScaleAnchorPoint.y == 0.5)
    {
      CATransform3DMakeScale(&v61, v18.f64[0], v18.f64[1], 1.0);
    }

    else
    {
      [(UIView *)self bounds];
      v33 = v32 * 0.5;
      v35 = v34 * 0.5;
      [(UIView *)self bounds];
      v37 = self->_focusScaleAnchorPoint.x * v36 - v33;
      [(UIView *)self bounds];
      v39 = self->_focusScaleAnchorPoint.y * v38 - v35;
      CATransform3DMakeTranslation(&v61, v37, v39, 0.0);
      v76 = *&v61.m21;
      v77 = *&v61.m23;
      v78 = *&v61.m31;
      v79 = v61.m33;
      v74 = *&v61.m11;
      v75 = *&v61.m13;
      v72 = *&v61.m41;
      v73 = *&v61.m43;
      a = v61;
      CATransform3DScale(&v61, &a, sx, v31, 1.0);
      v76 = *&v61.m21;
      v77 = *&v61.m23;
      v78 = *&v61.m31;
      v79 = v61.m33;
      v74 = *&v61.m11;
      v75 = *&v61.m13;
      v72 = *&v61.m41;
      v73 = *&v61.m43;
      a = v61;
      CATransform3DTranslate(&v61, &a, -v37, -v39, 0.0);
    }

    v76 = *&v61.m21;
    v77 = *&v61.m23;
    v78 = *&v61.m31;
    v79 = v61.m33;
    v74 = *&v61.m11;
    v75 = *&v61.m13;
    v72 = *&v61.m41;
    v73 = *&v61.m43;
    if (sx <= v31 || sx == 0.0)
    {
      if (v31 == 0.0 || sx >= v31)
      {
        goto LABEL_31;
      }

      v61 = v71;
      v41 = sx / v31;
      v40 = 1.0;
    }

    else
    {
      *&v61.m31 = v56;
      *&v61.m33 = v51;
      *&v61.m41 = v53;
      *&v61.m43 = v52;
      *&v61.m11 = v55;
      *&v61.m13 = v54;
      *&v61.m21 = v58;
      *&v61.m23 = v57;
      v40 = v31 / sx;
      v41 = 1.0;
    }

    CATransform3DScale(&v71, &v61, v40, v41, 1.0);
LABEL_31:
    v42 = self->_contentRotation.y * self->_focusDirection.y;
    *&a.m21 = v76;
    *&a.m23 = v77;
    *&a.m31 = v78;
    *&a.m11 = v74;
    *&a.m13 = v75;
    a.m33 = v79;
    a.m34 = -0.001;
    *&a.m41 = v72;
    *&a.m43 = v73;
    CATransform3DRotate(&v61, &a, v42, 1.0, 0.0, 0.0);
    v76 = *&v61.m21;
    v77 = *&v61.m23;
    v78 = *&v61.m31;
    v79 = v61.m33;
    v74 = *&v61.m11;
    v75 = *&v61.m13;
    v72 = *&v61.m41;
    v73 = *&v61.m43;
    v43 = -(self->_focusDirection.x * self->_contentRotation.x);
    a = v61;
    CATransform3DRotate(&v61, &a, v43, 0.0, 1.0, 0.0);
    v76 = *&v61.m21;
    v77 = *&v61.m23;
    v78 = *&v61.m31;
    v79 = v61.m33;
    v74 = *&v61.m11;
    v75 = *&v61.m13;
    v72 = *&v61.m41;
    v73 = *&v61.m43;
    v44 = self->_contentTranslation.x * self->_focusDirection.x;
    v45 = self->_contentTranslation.y * self->_focusDirection.y;
    a = v61;
    CATransform3DTranslate(&v61, &a, v44, v45, 0.0);
    v76 = *&v61.m21;
    v77 = *&v61.m23;
    v78 = *&v61.m31;
    v79 = v61.m33;
    v74 = *&v61.m11;
    v75 = *&v61.m13;
    v8 = v61.m34;
    v72 = *&v61.m41;
    v73 = *&v61.m43;
    *&a.m21 = v67;
    *&a.m23 = v68;
    *&a.m31 = v69;
    a.m33 = m33;
    *&a.m11 = v65;
    *&a.m13 = v66;
    a.m34 = v17;
    *&a.m41 = v63;
    *&a.m43 = v64;
    b = v61;
    CATransform3DConcat(&v61, &a, &b);
    v67 = *&v61.m21;
    v68 = *&v61.m23;
    v69 = *&v61.m31;
    m33 = v61.m33;
    v65 = *&v61.m11;
    v66 = *&v61.m13;
    v16 = v61.m34;
    v63 = *&v61.m41;
    v64 = *&v61.m43;
    CATransform3DMakeScale(&v62, self->_visualEffectContainerViewScaleFactor, self->_visualEffectContainerViewScaleFactor, 1.0);
    goto LABEL_32;
  }

  unfocusedShadowVerticalOffset = self->_unfocusedShadowVerticalOffset;
  *&a.m21 = v67;
  *&a.m23 = v68;
  *&a.m31 = v69;
  a.m33 = m33;
  *&a.m11 = v65;
  *&a.m13 = v66;
  a.m34 = m34;
  *&a.m41 = v63;
  *&a.m43 = v64;
  CATransform3DTranslate(&v61, &a, 0.0, unfocusedShadowVerticalOffset, 0.0);
  v67 = *&v61.m21;
  v68 = *&v61.m23;
  v69 = *&v61.m31;
  m33 = v61.m33;
  v65 = *&v61.m11;
  v66 = *&v61.m13;
  v63 = *&v61.m41;
  v64 = *&v61.m43;
  v16 = -0.001;
LABEL_32:
  layer = [(UIView *)self->_transformView layer];
  *&v61.m21 = v76;
  *&v61.m23 = v77;
  *&v61.m31 = v78;
  v61.m33 = v79;
  *&v61.m11 = v74;
  *&v61.m13 = v75;
  v61.m34 = v8;
  *&v61.m41 = v72;
  *&v61.m43 = v73;
  [layer setTransform:&v61];

  layer2 = [(UIView *)self->_contentView layer];
  v61 = v71;
  [layer2 setTransform:&v61];

  layer3 = [(UIView *)self->_legacyShadowView layer];
  *&v61.m21 = v67;
  *&v61.m23 = v68;
  *&v61.m31 = v69;
  v61.m33 = m33;
  *&v61.m11 = v65;
  *&v61.m13 = v66;
  v61.m34 = v16;
  *&v61.m41 = v63;
  *&v61.m43 = v64;
  [layer3 setTransform:&v61];

  layer4 = [(UIView *)self->_visualEffectContainerView layer];
  v61 = v62;
  [layer4 setTransform:&v61];
}

- (void)_modern_updateTransformForPrimaryState:(unint64_t)state
{
  v5 = *(MEMORY[0x1E69792E8] + 48);
  v143 = *(MEMORY[0x1E69792E8] + 32);
  v144 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 80);
  v145 = *(MEMORY[0x1E69792E8] + 64);
  v146 = *(MEMORY[0x1E69792E8] + 80);
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v141 = *MEMORY[0x1E69792E8];
  v142 = v7;
  v8 = *(MEMORY[0x1E69792E8] + 88);
  v9 = *(MEMORY[0x1E69792E8] + 112);
  v139 = *(MEMORY[0x1E69792E8] + 96);
  v140 = v9;
  *&v138.m31 = v145;
  *&v138.m33 = v6;
  v105 = v6;
  v106 = v9;
  *&v138.m41 = v139;
  *&v138.m43 = v9;
  *&v138.m11 = v141;
  *&v138.m13 = v7;
  *&v138.m21 = v143;
  *&v138.m23 = v5;
  v118 = v5;
  v121 = v143;
  v134 = v143;
  v135 = v5;
  v108 = v7;
  v110 = v145;
  v136 = v145;
  m33 = v146;
  v115 = v141;
  v132 = v141;
  v133 = v7;
  v107 = v139;
  v130 = v139;
  v131 = v9;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  width = v14;
  height = v16;
  originalCornerRadius = self->_originalCornerRadius;
  m34 = v8;
  if ([(_UIFloatingContentView *)self _effectiveUseShadowImage])
  {
    [(_UIFloatingContentView *)self shadowRadius];
    CATransform3DMakeScale(&v129, v20 / 20.0, v20 / 20.0, 1.0);
    v134 = *&v129.m21;
    v135 = *&v129.m23;
    v136 = *&v129.m31;
    m33 = v129.m33;
    v132 = *&v129.m11;
    v133 = *&v129.m13;
    m34 = v129.m34;
    v130 = *&v129.m41;
    v131 = *&v129.m43;
  }

  v21 = [(_UIFloatingContentView *)self _shouldAppearToFloatForPrimaryState:state];
  if (!v21)
  {
    unfocusedShadowVerticalOffset = self->_unfocusedShadowVerticalOffset;
    *&a.m21 = v134;
    *&a.m23 = v135;
    *&a.m31 = v136;
    a.m33 = m33;
    *&a.m11 = v132;
    *&a.m13 = v133;
    a.m34 = m34;
    *&a.m41 = v130;
    *&a.m43 = v131;
    CATransform3DTranslate(&v129, &a, 0.0, unfocusedShadowVerticalOffset, 0.0);
    v134 = *&v129.m21;
    v135 = *&v129.m23;
    v136 = *&v129.m31;
    m33 = v129.m33;
    v132 = *&v129.m11;
    v133 = *&v129.m13;
    v130 = *&v129.m41;
    v131 = *&v129.m43;
    v32 = v13;
    v33 = v11;
    v116 = -0.001;
    goto LABEL_73;
  }

  v104 = m34;
  v22 = originalCornerRadius;
  v23 = 43;
  if (state == 1)
  {
    v23 = 48;
  }

  v24 = (self + OBJC_IVAR____UIFloatingContentView__backgroundColorsByState[v23]);
  v25 = *v24;
  v26 = fabs(*v24);
  if (v26 < 2.22044605e-16 || (v27 = v24[1], v28 = fabs(v27), v28 < 2.22044605e-16))
  {
    [(_UIFloatingContentView *)self _updateScaleFactor];
    v25 = *v24;
    v27 = v24[1];
    v26 = fabs(*v24);
    v28 = fabs(v27);
  }

  v112 = v13;
  v113 = v11;
  if (v26 >= 2.22044605e-16 || v28 >= 2.22044605e-16)
  {
    v34 = width * (v25 + -1.0);
    v124 = v22;
    v103 = height * (v27 + -1.0);
    if (self->_focusScaleAnchorPoint.x == 0.5 && self->_focusScaleAnchorPoint.y == 0.5)
    {
      v147.origin.y = v112;
      v147.origin.x = v11;
      v147.size.width = width;
      v147.size.height = height;
      v148 = CGRectInset(v147, v34 * -0.5, height * (v27 + -1.0) * -0.5);
    }

    else
    {
      [(UIView *)self bounds];
      v36 = v35 * 0.5;
      v38 = v37 * 0.5;
      [(UIView *)self bounds];
      v40 = self->_focusScaleAnchorPoint.x * v39 - v36;
      [(UIView *)self bounds];
      v42 = self->_focusScaleAnchorPoint.y * v41 - v38;
      memset(&v129, 0, sizeof(v129));
      CATransform3DMakeTranslation(&v129, v40, v42, 0.0);
      b = v129;
      CATransform3DScale(&a, &b, v25, v27, 1.0);
      v129 = a;
      b = a;
      CATransform3DTranslate(&a, &b, -v40, -v42, 0.0);
      v129 = a;
      CA_CGRectApplyTransform();
    }

    x = v148.origin.x;
    y = v148.origin.y;
    width = v148.size.width;
    height = v148.size.height;
    v45 = fmin(v25, v27);
    *&v129.m31 = v110;
    *&v129.m33 = v105;
    *&v129.m41 = v107;
    *&v129.m43 = v106;
    *&v129.m11 = v115;
    *&v129.m13 = v108;
    *&v129.m21 = v121;
    *&v129.m23 = v118;
    CATransform3DTranslate(&v138, &v129, v34 * 0.5, v103 * 0.5, 0.0);
    a = v138;
    CATransform3DScale(&v129, &a, v45, v45, 1.0);
    v138 = v129;
    v30 = v124 * v27;
    v13 = y;
    v29 = x;
  }

  else
  {
    v29 = v11;
    v30 = v22;
  }

  v46 = _UIInternalPreferenceUsesDefault(&unk_1ED48A948, @"UISolariumFloatingContentViewOverrideRotationX", _UIInternalPreferenceUpdateDouble);
  v47 = *&qword_1ED48A950;
  if (v46)
  {
    v47 = -1.0;
  }

  if (v47 < 0.0)
  {
    v47 = self->_contentRotation.x;
  }

  v117 = v47;
  v122 = v13;
  v48 = _UIInternalPreferenceUsesDefault(&unk_1ED48A958, @"UISolariumFloatingContentViewOverrideRotationY", _UIInternalPreferenceUpdateDouble);
  v49 = *&qword_1ED48A960;
  if (v48)
  {
    v49 = -1.0;
  }

  if (v49 < 0.0)
  {
    v49 = self->_contentRotation.y;
  }

  v109 = v49;
  if (_UIInternalPreferenceUsesDefault(&unk_1ED48A968, @"UISolariumFloatingContentViewOverrideTranslationX", _UIInternalPreferenceUpdateDouble))
  {
    v50 = -1.0;
  }

  else
  {
    v50 = *&qword_1ED48A970;
  }

  if (v50 < 0.0)
  {
    v50 = self->_contentTranslation.x;
  }

  v111 = height;
  if (_UIInternalPreferenceUsesDefault(&unk_1ED48A978, @"UISolariumFloatingContentViewOverrideTranslationY", _UIInternalPreferenceUpdateDouble))
  {
    v51 = -1.0;
  }

  else
  {
    v51 = *&qword_1ED48A980;
  }

  if (v51 < 0.0)
  {
    v51 = self->_contentTranslation.y;
  }

  [(UIView *)self bounds];
  v53 = v52;
  [(UIView *)self bounds];
  v55 = v54;
  v56 = _UIInternalPreferenceUsesDefault(&unk_1ED48A918, @"UISolariumFloatingContentViewModifyTransformMode", _UIInternalPreferenceUpdateInteger);
  v57 = qword_1ED48A920;
  if (v56)
  {
    v57 = 3;
  }

  v125 = v30;
  v114 = width;
  v119 = v29;
  if (v57 == 3)
  {
    if (_UIInternalPreferenceUsesDefault(&unk_1ED48A9C8, @"UISolariumFloatingContentViewModifyTransformMinWidth", _UIInternalPreferenceUpdateDouble))
    {
      v67 = 320.0;
    }

    else
    {
      v67 = *&qword_1ED48A9D0;
    }

    v68 = _UIInternalPreferenceUsesDefault(algn_1ED48A9D8, @"UISolariumFloatingContentViewModifyTransformMaxWidth", _UIInternalPreferenceUpdateDouble);
    v69 = *&qword_1ED48A9E0;
    if (v68)
    {
      v69 = 1760.0;
    }

    v59 = fmax(fmin((v53 - v67) / (v69 - v67), 1.0), 0.0);
    if (_UIInternalPreferenceUsesDefault(algn_1ED48A9E8, @"UISolariumFloatingContentViewModifyTransformMinHeight", _UIInternalPreferenceUpdateDouble))
    {
      v70 = 190.0;
    }

    else
    {
      v70 = *&qword_1ED48A9F0;
    }

    v71 = _UIInternalPreferenceUsesDefault(algn_1ED48A9F8, @"UISolariumFloatingContentViewModifyTransformMaxHeight", _UIInternalPreferenceUpdateDouble);
    v72 = *&qword_1ED48AA00;
    if (v71)
    {
      v72 = 680.0;
    }

    v58 = fmax(fmin((v55 - v70) / (v72 - v70), 1.0), 0.0);
    goto LABEL_66;
  }

  if (v57 == 2)
  {
    if (v53 >= v55)
    {
      v60 = v53;
    }

    else
    {
      v60 = v55;
    }

    if (_UIInternalPreferenceUsesDefault(&unk_1ED48A9A8, @"UISolariumFloatingContentViewModifyTransformMinSize", _UIInternalPreferenceUpdateDouble))
    {
      v61 = 320.0;
    }

    else
    {
      v61 = *&qword_1ED48A9B0;
    }

    v66 = _UIInternalPreferenceUsesDefault(algn_1ED48A9B8, @"UISolariumFloatingContentViewModifyTransformMaxSize", _UIInternalPreferenceUpdateDouble);
    v63 = qword_1ED48A9C0;
    v64 = v66 == 0;
    v65 = 1760.0;
    goto LABEL_52;
  }

  v58 = 0.0;
  v59 = 0.0;
  if (v57 == 1)
  {
    v60 = v53 * v55;
    if (_UIInternalPreferenceUsesDefault(&unk_1ED48A988, @"UISolariumFloatingContentViewModifyTransformMinArea", _UIInternalPreferenceUpdateDouble))
    {
      v61 = 60800.0;
    }

    else
    {
      v61 = *&qword_1ED48A990;
    }

    v62 = _UIInternalPreferenceUsesDefault(algn_1ED48A998, @"UISolariumFloatingContentViewModifyTransformMaxArea", _UIInternalPreferenceUpdateDouble);
    v63 = qword_1ED48A9A0;
    v64 = v62 == 0;
    v65 = 985600.0;
LABEL_52:
    if (!v64)
    {
      *&v63 = v65;
    }

    v58 = fmax(fmin((v60 - v61) / (*&v63 - v61), 1.0), 0.0);
    v59 = v58;
  }

LABEL_66:
  v73 = _UIInternalPreferenceUsesDefault(&unk_1ED48A928, @"UISolariumFloatingContentViewModifyRotationStrength", _UIInternalPreferenceUpdateDouble);
  v74 = *&qword_1ED48A930;
  if (v73)
  {
    v74 = 0.1;
  }

  v75 = 1.0 - v59 + v59 * v74;
  v76 = 1.0 - v58 + v58 * v74;
  v77 = _UIInternalPreferenceUsesDefault(algn_1ED48A938, @"UISolariumFloatingContentViewModifyTranslationStrength", _UIInternalPreferenceUpdateDouble);
  v78 = *&qword_1ED48A940;
  if (v77)
  {
    v78 = 2.0;
  }

  v79 = self->_focusDirection.y;
  v80 = v75 * -(self->_focusDirection.x * v117);
  v81 = v50 * self->_focusDirection.x * (1.0 - v59 + v59 * v78);
  *&a.m21 = v143;
  *&a.m23 = v144;
  v82 = (1.0 - v58 + v58 * v78) * (v51 * v79);
  *&a.m31 = v145;
  *&a.m11 = v141;
  *&a.m13 = v142;
  a.m33 = v146;
  a.m34 = -0.001;
  *&a.m41 = v139;
  *&a.m43 = v140;
  CATransform3DRotate(&v129, &a, v76 * (v109 * v79), 1.0, 0.0, 0.0);
  v143 = *&v129.m21;
  v144 = *&v129.m23;
  v145 = *&v129.m31;
  v146 = v129.m33;
  v141 = *&v129.m11;
  v142 = *&v129.m13;
  v139 = *&v129.m41;
  v140 = *&v129.m43;
  a = v129;
  CATransform3DRotate(&v129, &a, v80, 0.0, 1.0, 0.0);
  v143 = *&v129.m21;
  v144 = *&v129.m23;
  v145 = *&v129.m31;
  v146 = v129.m33;
  v141 = *&v129.m11;
  v142 = *&v129.m13;
  v139 = *&v129.m41;
  v140 = *&v129.m43;
  a = v129;
  CATransform3DTranslate(&v129, &a, v81, v82, 0.0);
  v143 = *&v129.m21;
  v144 = *&v129.m23;
  v145 = *&v129.m31;
  v146 = v129.m33;
  v141 = *&v129.m11;
  v142 = *&v129.m13;
  v8 = v129.m34;
  v83 = 30;
  if (state == 1)
  {
    v83 = 42;
  }

  v84 = *(&self->super.super.super.isa + OBJC_IVAR____UIFloatingContentView__backgroundColorsByState[v83]);
  v139 = *&v129.m41;
  v140 = *&v129.m43;
  *&a.m21 = v134;
  *&a.m23 = v135;
  *&a.m31 = v136;
  a.m33 = m33;
  *&a.m11 = v132;
  *&a.m13 = v133;
  a.m34 = v104;
  *&a.m41 = v130;
  *&a.m43 = v131;
  CATransform3DTranslate(&v129, &a, 0.0, v84, 0.0);
  v134 = *&v129.m21;
  v135 = *&v129.m23;
  v136 = *&v129.m31;
  m33 = v129.m33;
  v132 = *&v129.m11;
  v133 = *&v129.m13;
  v130 = *&v129.m41;
  v131 = *&v129.m43;
  a = v129;
  b = v138;
  CATransform3DConcat(&v129, &a, &b);
  v134 = *&v129.m21;
  v135 = *&v129.m23;
  v136 = *&v129.m31;
  m33 = v129.m33;
  v132 = *&v129.m11;
  v133 = *&v129.m13;
  v130 = *&v129.m41;
  v131 = *&v129.m43;
  a = v129;
  *&b.m21 = v143;
  *&b.m23 = v144;
  *&b.m31 = v145;
  b.m33 = v146;
  *&b.m11 = v141;
  *&b.m13 = v142;
  b.m34 = v8;
  *&b.m41 = v139;
  *&b.m43 = v140;
  CATransform3DConcat(&v129, &a, &b);
  v134 = *&v129.m21;
  v135 = *&v129.m23;
  v136 = *&v129.m31;
  m33 = v129.m33;
  v132 = *&v129.m11;
  v133 = *&v129.m13;
  v116 = v129.m34;
  v130 = *&v129.m41;
  v131 = *&v129.m43;
  originalCornerRadius = v125;
  height = v111;
  v11 = v113;
  width = v114;
  v13 = v112;
  v32 = v122;
  v33 = v119;
LABEL_73:
  v126 = originalCornerRadius;
  layer = [(UIView *)self->_transformView layer];
  *&v129.m21 = v143;
  *&v129.m23 = v144;
  *&v129.m31 = v145;
  v129.m33 = v146;
  *&v129.m11 = v141;
  *&v129.m13 = v142;
  v129.m34 = v8;
  *&v129.m41 = v139;
  *&v129.m43 = v140;
  [layer setTransform:&v129];

  [(UIView *)self->_containerView setFrame:v33, v32, width, height];
  [(UIView *)self->_highlightView setFrame:v11, v13, width, height];
  v120 = v33;
  v123 = v32;
  v86 = width;
  v87 = width;
  v88 = height;
  [(UIView *)self->_visualEffectContainerView setFrame:v33, v32, v87, height];
  [(_UIFloatingContentView *)self _layoutHighContrastFocusIndicator];
  if (self->_secondaryBackdropView)
  {
    [(UIView *)self->_visualEffectContainerView bounds];
    [(UIView *)self->_secondaryBackdropView setFrame:?];
    [(UIView *)self->_secondaryBackdropView setNeedsLayout];
    [(UIView *)self->_secondaryBackdropView layoutIfNeeded];
  }

  layer2 = [(UIView *)self->_contentView layer];
  v129 = v138;
  [layer2 setTransform:&v129];

  [(UIView *)self->_containerView bounds];
  v90 = v149.origin.x;
  v91 = v149.origin.y;
  v92 = v149.size.width;
  v93 = v149.size.height;
  MidX = CGRectGetMidX(v149);
  v150.origin.x = v90;
  v150.origin.y = v91;
  v150.size.width = v92;
  v150.size.height = v93;
  MidY = CGRectGetMidY(v150);
  punchoutShadowView = self->_punchoutShadowView;
  if (punchoutShadowView)
  {
    [(UIView *)punchoutShadowView setFrame:v120, v123, v86, v88];
  }

  legacyShadowView = self->_legacyShadowView;
  if (legacyShadowView)
  {
    layer3 = [(UIView *)legacyShadowView layer];
    *&v129.m21 = v134;
    *&v129.m23 = v135;
    *&v129.m31 = v136;
    v129.m33 = m33;
    *&v129.m11 = v132;
    *&v129.m13 = v133;
    v129.m34 = v116;
    *&v129.m41 = v130;
    *&v129.m43 = v131;
    [layer3 setTransform:&v129];
  }

  specularView = self->_specularView;
  if (specularView)
  {
    [(UIView *)specularView setBounds:v90, v91, v92, v93];
    [(UIView *)self->_specularView setCenter:MidX, MidY];
    specularHighlightLayer = [(_UIFocusSpecularHighlightView *)self->_specularView specularHighlightLayer];
    [specularHighlightLayer updateTransformWithFocused:v21];

    specularHighlightLayer2 = [(_UIFocusSpecularHighlightView *)self->_specularView specularHighlightLayer];
    [specularHighlightLayer2 updateForFocusDirection:v21 isFocused:{self->_focusDirection.x, self->_focusDirection.y}];
  }

  unfocusedBorderView = self->_unfocusedBorderView;
  if (unfocusedBorderView)
  {
    [(UIView *)unfocusedBorderView setBounds:v90, v91, v92, v93];
    [(UIView *)self->_unfocusedBorderView setCenter:MidX, MidY];
  }

  self->_cornerRadius = v126;
  [(_UIFloatingContentView *)self _updateCornerRadiusLayers];
}

- (void)_updateHighContrastFocusIndicatorForPrimaryState:(unint64_t)state
{
  v4 = [(_UIFloatingContentView *)self _shouldAppearToFloatForPrimaryState:state];
  v5 = 0.0;
  if (v4)
  {
    v5 = 1.0;
  }

  highContrastFocusIndicatorView = self->_highContrastFocusIndicatorView;

  [(UIView *)highContrastFocusIndicatorView setAlpha:v5];
}

- (void)_legacy_updateShadowContentsScaleForPrimaryState:(unint64_t)state
{
  if (self->_legacyShadowView)
  {
    v4 = 1.0;
    if (state == 1)
    {
      v4 = 2.0;
    }

    if (state == 8)
    {
      v5 = 1.05;
    }

    else
    {
      v5 = v4;
    }

    [MEMORY[0x1E6979518] animationDuration];
    v7 = v6;
    animationTimingFunction = [MEMORY[0x1E6979518] animationTimingFunction];
    v8 = MEMORY[0x1E6979518];
    +[UIView inheritedAnimationDuration];
    [v8 setAnimationDuration:?];
    v9 = MEMORY[0x1E6979518];
    LODWORD(v10) = 1.0;
    LODWORD(v11) = 1.0;
    v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v10 :v11];
    [v9 setAnimationTimingFunction:v12];

    v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contentsScale"];
    [v13 setFromValue:&unk_1EFE2FB48];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    [v13 setToValue:v14];

    layer = [(UIView *)self->_legacyShadowView layer];
    [layer setContentsScale:v5];

    layer2 = [(UIView *)self->_legacyShadowView layer];
    [layer2 addAnimation:v13 forKey:@"ShadowViewContentsScaleAnimation"];

    [MEMORY[0x1E6979518] setAnimationTimingFunction:animationTimingFunction];
    [MEMORY[0x1E6979518] setAnimationDuration:v7];
  }
}

- (void)_setShadowImageIfNeeded
{
  if (!self->_shadowImage)
  {
    v5[7] = v2;
    v5[8] = v3;
    if ([(_UIFloatingContentView *)self _effectiveUseShadowImage])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __49___UIFloatingContentView__setShadowImageIfNeeded__block_invoke;
      v5[3] = &unk_1E70F3590;
      v5[4] = self;
      [UIView _performSystemAppearanceModifications:v5];
    }
  }
}

- (id)_focusedFrameGuideCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v15[4] = *MEMORY[0x1E69E9840];
  v5 = objc_getAssociatedObject(self, &_focusedFrameGuideCreateIfNecessary__focusedFrameGuideKey);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !necessaryCopy;
  }

  if (!v6)
  {
    v5 = objc_alloc_init(UILayoutGuide);
    objc_setAssociatedObject(self, &_focusedFrameGuideCreateIfNecessary__focusedFrameGuideKey, v5, 1);
    [(UIView *)self addLayoutGuide:v5];
    [(UILayoutGuide *)v5 _setLockedToOwningView:1];
    [(UILayoutGuide *)v5 setIdentifier:@"_UIFloatingContentViewFocusedFrameGuide"];
    v7 = [MEMORY[0x1E69977A0] constraintWithItem:v5 attribute:3 relatedBy:0 toItem:self attribute:3];
    v8 = [MEMORY[0x1E69977A0] constraintWithItem:v5 attribute:1 relatedBy:0 toItem:self attribute:1];
    v9 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:4 relatedBy:0 toItem:v5 attribute:4];
    v10 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:2 relatedBy:0 toItem:v5 attribute:2];
    [v7 setIdentifier:@"focusedFrameGuide-topConstraint"];
    [v8 setIdentifier:@"focusedFrameGuide-leftConstraint"];
    [v9 setIdentifier:@"focusedFrameGuide-bottomConstraint"];
    [v10 setIdentifier:@"focusedFrameGuide-rightConstraint"];
    v15[0] = v7;
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
    [(UILayoutGuide *)v5 _setSystemConstraints:v11];

    [(_UIFloatingContentView *)self _updateFocusedFrameGuideConstraintsIfApplicable];
    v12 = MEMORY[0x1E69977A0];
    _systemConstraints = [(UILayoutGuide *)v5 _systemConstraints];
    [v12 activateConstraints:_systemConstraints];
  }

  return v5;
}

- (void)_updateFocusedFrameGuideConstraintsIfApplicable
{
  v3 = [(_UIFloatingContentView *)self _focusedFrameGuideCreateIfNecessary:0];
  if (v3)
  {
    v31 = v3;
    if ([(_UIFloatingContentView *)self _primaryStateForState:[(_UIFloatingContentView *)self controlState]]== 1)
    {
      [(_UIFloatingContentView *)self asymmetricPressedScaleFactor];
    }

    else
    {
      [(_UIFloatingContentView *)self asymmetricScaleFactor];
    }

    v6 = v4;
    v7 = v5;
    [(UIView *)self bounds];
    v10 = v8 > 0.0;
    v11 = v9 > 0.0;
    if (v10 && v11)
    {
      v12 = v8 - v6 * v8;
    }

    else
    {
      v12 = 0.0;
    }

    if (v10 && v11)
    {
      v13 = v9 - v7 * v9;
    }

    else
    {
      v13 = 0.0;
    }

    _systemConstraints = [v31 _systemConstraints];
    v15 = [_systemConstraints objectAtIndexedSubscript:0];
    [v15 constant];
    v17 = v16;

    if (v17 != v13)
    {
      v18 = [_systemConstraints objectAtIndexedSubscript:0];
      [v18 setConstant:v13];
    }

    v19 = [_systemConstraints objectAtIndexedSubscript:1];
    [v19 constant];
    v21 = v20;

    if (v21 != v12)
    {
      v22 = [_systemConstraints objectAtIndexedSubscript:1];
      [v22 setConstant:v12];
    }

    v23 = [_systemConstraints objectAtIndexedSubscript:2];
    [v23 constant];
    v25 = v24;

    if (v25 != v13)
    {
      v26 = [_systemConstraints objectAtIndexedSubscript:2];
      [v26 setConstant:v13];
    }

    v27 = [_systemConstraints objectAtIndexedSubscript:3];
    [v27 constant];
    v29 = v28;

    if (v29 != v12)
    {
      v30 = [_systemConstraints objectAtIndexedSubscript:3];
      [v30 setConstant:v12];
    }

    v3 = v31;
  }
}

- (CGPoint)focusScaleAnchorPoint
{
  x = self->_focusScaleAnchorPoint.x;
  y = self->_focusScaleAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)shadowExpansion
{
  width = self->_shadowExpansion.width;
  height = self->_shadowExpansion.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)shadowContentsCenter
{
  x = self->_shadowContentsCenter.origin.x;
  y = self->_shadowContentsCenter.origin.y;
  width = self->_shadowContentsCenter.size.width;
  height = self->_shadowContentsCenter.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)shadowSize
{
  width = self->_shadowSize.width;
  height = self->_shadowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)unfocusedShadowExpansion
{
  width = self->_unfocusedShadowExpansion.width;
  height = self->_unfocusedShadowExpansion.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)asymmetricScaleFactor
{
  width = self->_asymmetricScaleFactor.width;
  height = self->_asymmetricScaleFactor.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)asymmetricFocusedSizeIncrease
{
  width = self->_asymmetricFocusedSizeIncrease.width;
  height = self->_asymmetricFocusedSizeIncrease.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)asymmetricPressedScaleFactor
{
  width = self->_asymmetricPressedScaleFactor.width;
  height = self->_asymmetricPressedScaleFactor.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)asymmetricPressedSizeIncrease
{
  width = self->_asymmetricPressedSizeIncrease.width;
  height = self->_asymmetricPressedSizeIncrease.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)pressedShadowExpansion
{
  width = self->_pressedShadowExpansion.width;
  height = self->_pressedShadowExpansion.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)highContrastFocusIndicatorOutset
{
  x = self->_highContrastFocusIndicatorOutset.x;
  y = self->_highContrastFocusIndicatorOutset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end