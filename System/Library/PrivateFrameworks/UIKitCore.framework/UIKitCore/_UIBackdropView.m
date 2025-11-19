@interface _UIBackdropView
+ (id)allBackdropViews;
+ (void)adjustGraphicsQualityForAccessibilityIfNeeded:(id)a3;
+ (void)setAllBackdropViewsToGraphicsQuality:(int64_t)a3;
- (BOOL)requiresTintViews;
- (UIView)contentView;
- (_UIBackdropView)initWithFrame:(CGRect)a3 autosizesToFitSuperview:(BOOL)a4 settings:(id)a5;
- (_UIBackdropView)initWithFrame:(CGRect)a3 privateStyle:(int64_t)a4;
- (_UIBackdropView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (_UIBackdropView)initWithPrivateStyle:(int64_t)a3;
- (_UIBackdropView)initWithStyle:(int64_t)a3;
- (id)filters;
- (void)_applyCornerRadiusToSubviews;
- (void)_setBlursBackground:(BOOL)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)_transitionToGraphicsQuality:(int64_t)a3;
- (void)_updateBackdropGroupName;
- (void)_updateFilters;
- (void)addBackdropEffectViewIfNeededForSettings:(id)a3;
- (void)addColorBurnTintViewIfNeededForSettings:(id)a3;
- (void)addColorTintViewIfNeededForSettings:(id)a3;
- (void)addContentViewIfNeededForSettings:(id)a3;
- (void)addDarkeningTintViewIfNeededForSettings:(id)a3;
- (void)addGrayscaleTintViewIfNeededForSettings:(id)a3;
- (void)addObserver:(id)a3;
- (void)adjustTintImplementationIfNeeded:(id)a3;
- (void)applySettings:(id)a3;
- (void)applySettingsWithBuiltInAnimation:(id)a3;
- (void)computeAndApplySettingsForTransition;
- (void)dealloc;
- (void)didCallRenderInContextOnBackdropViewLayer;
- (void)didMoveToSuperview;
- (void)ensureProperSubviewOrdering;
- (void)layoutSubviews;
- (void)prepareForTransitionToSettings:(id)a3;
- (void)removeMaskViews;
- (void)removeObserver:(id)a3;
- (void)setAppliesOutputSettingsAutomatically:(BOOL)a3;
- (void)setBackdropVisible:(BOOL)a3;
- (void)setBlurFilterWithRadius:(double)a3 blurQuality:(id)a4;
- (void)setBlurQuality:(id)a3;
- (void)setBlurRadius:(double)a3;
- (void)setColorBurnTintMaskImage:(id)a3;
- (void)setColorOffsetFilterForSettings:(id)a3;
- (void)setColorTintMaskImage:(id)a3;
- (void)setConfiguration:(int64_t)a3;
- (void)setDarkeningTintMaskImage:(id)a3;
- (void)setFilterMaskImage:(id)a3;
- (void)setGrayscaleTintMaskImage:(id)a3;
- (void)setGroupName:(id)a3;
- (void)setInputSettings:(id)a3;
- (void)setMaskImage:(id)a3 onLayer:(id)a4;
- (void)setMaskMode:(int64_t)a3;
- (void)setObserver:(id)a3;
- (void)setOutputSettings:(id)a3;
- (void)setSaturationDeltaFactor:(double)a3;
- (void)setShouldRasterizeEffectsView:(BOOL)a3;
- (void)setTintFilterForSettings:(id)a3;
- (void)setTintOpacity:(double)a3;
- (void)setUsesZoom;
- (void)settingsDidChange:(id)a3;
- (void)transitionComplete;
- (void)transitionIncrementallyToSettings:(id)a3 weighting:(double)a4;
- (void)transitionIncrementallyToStyle:(int64_t)a3 weighting:(double)a4;
- (void)transitionToColor:(id)a3;
- (void)transitionToSettings:(id)a3;
- (void)transitionToStyle:(int64_t)a3;
- (void)updateMaskViewForView:(id)a3 flag:(int64_t)a4;
- (void)updateMaskViewsForView:(id)a3;
- (void)updateSubviewHierarchyIfNeededForSettings:(id)a3;
- (void)willCallRenderInContextOnBackdropViewLayer;
@end

@implementation _UIBackdropView

- (void)ensureProperSubviewOrdering
{
  v3 = [(_UIBackdropView *)self backdropEffectView];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIBackdropView *)self backdropEffectView];
    v6 = [v5 superview];

    if (!v6)
    {
      v7 = [(_UIBackdropView *)self backdropEffectView];
      [(UIView *)self addSubview:v7];

      v8 = [(_UIBackdropView *)self inputSettings];
      v9 = [v8 isBackdropVisible];

      if ((v9 & 1) == 0)
      {
        [(_UIBackdropView *)self setBackdropVisibilitySetOnce:0];
        [(_UIBackdropView *)self setBackdropVisible:0];
      }
    }
  }

  v10 = [(_UIBackdropView *)self grayscaleTintView];
  if (v10)
  {
    v11 = v10;
    v12 = [(_UIBackdropView *)self grayscaleTintView];
    v13 = [v12 superview];

    if (!v13)
    {
      v14 = [(_UIBackdropView *)self grayscaleTintView];
      [(UIView *)self addSubview:v14];
    }
  }

  v15 = [(_UIBackdropView *)self colorTintView];
  if (v15)
  {
    v16 = v15;
    v17 = [(_UIBackdropView *)self colorTintView];
    v18 = [v17 superview];

    if (!v18)
    {
      v19 = [(_UIBackdropView *)self colorTintView];
      [(UIView *)self addSubview:v19];
    }
  }

  v20 = [(_UIBackdropView *)self colorBurnTintView];
  if (v20)
  {
    v21 = v20;
    v22 = [(_UIBackdropView *)self colorBurnTintView];
    v23 = [v22 superview];

    if (!v23)
    {
      v24 = [(_UIBackdropView *)self colorBurnTintView];
      [(UIView *)self addSubview:v24];
    }
  }

  v25 = [(_UIBackdropView *)self darkeningTintView];
  if (v25)
  {
    v26 = v25;
    v27 = [(_UIBackdropView *)self darkeningTintView];
    v28 = [v27 superview];

    if (!v28)
    {
      v29 = [(_UIBackdropView *)self darkeningTintView];
      [(UIView *)self addSubview:v29];
    }
  }

  contentView = self->_contentView;
  if (contentView)
  {
    v31 = [(UIView *)contentView superview];

    if (!v31)
    {
      [(UIView *)self addSubview:self->_contentView];
    }
  }

  [(UIView *)self setNeedsLayout];
  v32 = [(_UIBackdropView *)self backdropEffectView];

  if (v32)
  {
    v33 = [(_UIBackdropView *)self backdropEffectView];
    [(UIView *)self sendSubviewToBack:v33];

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  v35 = [(_UIBackdropView *)self grayscaleTintView];

  if (v35)
  {
    v36 = [(UIView *)self subviews];
    v37 = [(_UIBackdropView *)self grayscaleTintView];
    v38 = [v36 indexOfObject:v37];

    if (v38 != v34)
    {
      v39 = [(_UIBackdropView *)self grayscaleTintView];
      [(UIView *)self exchangeSubviewAtIndex:v34 withSubviewAtIndex:v39];
    }

    ++v34;
  }

  v40 = [(_UIBackdropView *)self colorTintView];

  if (v40)
  {
    v41 = [(UIView *)self subviews];
    v42 = [(_UIBackdropView *)self colorTintView];
    v43 = [v41 indexOfObject:v42];

    if (v43 != v34)
    {
      v44 = [(_UIBackdropView *)self colorTintView];
      [(UIView *)self exchangeSubviewAtIndex:v34 withSubviewAtIndex:v44];
    }

    ++v34;
  }

  v45 = [(_UIBackdropView *)self colorBurnTintView];

  if (v45)
  {
    v46 = [(UIView *)self subviews];
    v47 = [(_UIBackdropView *)self colorBurnTintView];
    v48 = [v46 indexOfObject:v47];

    if (v48 != v34)
    {
      v49 = [(_UIBackdropView *)self colorBurnTintView];
      [(UIView *)self exchangeSubviewAtIndex:v34 withSubviewAtIndex:v49];
    }

    ++v34;
  }

  v50 = [(_UIBackdropView *)self darkeningTintView];

  if (v50)
  {
    v51 = [(UIView *)self subviews];
    v52 = [(_UIBackdropView *)self darkeningTintView];
    v53 = [v51 indexOfObject:v52];

    if (v53 != v34)
    {
      v54 = [(_UIBackdropView *)self darkeningTintView];
      [(UIView *)self exchangeSubviewAtIndex:v34 withSubviewAtIndex:v54];
    }
  }

  if (self->_contentView)
  {

    [(UIView *)self bringSubviewToFront:?];
  }
}

- (void)_applyCornerRadiusToSubviews
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_cornerRadiusIsContinuous)
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v3 = [(UIView *)self subviews];
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          if (v8 != self->_contentView)
          {
            [(UIView *)v8 _setContinuousCornerRadius:self->_cornerRadius];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    *(&v14 + 1) = 0;
    v15 = 0uLL;
    v3 = [(UIView *)self subviews];
    v9 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v3);
          }

          v13 = *(*(&v14 + 1) + 8 * j);
          if (v13 != self->_contentView)
          {
            [(UIView *)v13 _setCornerRadius:self->_cornerRadius];
          }
        }

        v10 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v10);
    }
  }
}

- (void)didMoveToSuperview
{
  [(_UIBackdropView *)self _updateBackdropGroupName];
  if ([(_UIBackdropView *)self autosizesToFitSuperview])
  {
    v3 = [(UIView *)self superview];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    [(UIView *)self setFrame:0.0, 0.0, Width, CGRectGetHeight(v15)];
  }

  [(_UIBackdropView *)self setApplySettingsAfterLayout:[(_UIBackdropView *)self appliesOutputSettingsAutomatically]];

  [(UIView *)self setNeedsLayout];
}

- (void)_updateBackdropGroupName
{
  v9 = self->_groupName;
  if (self->_autoGroup)
  {
    v3 = [(UIView *)self window];

    if (v3)
    {
      v4 = [(UIView *)self traitCollection];
      v5 = objc_opt_self();
      v6 = [v4 objectForTrait:v5];

      v9 = v6;
    }
  }

  v7 = [(_UIBackdropView *)self backdropEffectView];
  v8 = [v7 backdropLayer];
  [v8 setGroupName:v9];
}

- (void)_updateFilters
{
  v4 = [(_UIBackdropView *)self filters];
  v3 = [(UIView *)self->_backdropEffectView layer];
  [v3 setFilters:v4];
}

- (id)filters
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_applySaturationBeforeBlur && self->_colorSaturateFilter)
  {
    [v3 addObject:?];
  }

  if (self->_gaussianBlurFilter)
  {
    [v4 addObject:?];
  }

  if (!self->_applySaturationBeforeBlur && self->_colorSaturateFilter)
  {
    [v4 addObject:?];
  }

  if (self->_tintFilter)
  {
    [v4 addObject:?];
  }

  if (self->_colorOffsetFilter)
  {
    [v4 addObject:?];
  }

  return v4;
}

+ (id)allBackdropViews
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  v2 = _UIBackdropViewQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___UIBackdropView_allBackdropViews__block_invoke;
  block[3] = &unk_1E70F2F20;
  block[4] = &v6;
  dispatch_sync(v2, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (void)adjustGraphicsQualityForAccessibilityIfNeeded:(id)a3
{
  v4 = _AXSEnhanceBackgroundContrastEnabled() != 0;
  if (_MergedGlobals_69 != v4)
  {
    _MergedGlobals_69 = v4;
    v5 = +[UIDevice currentDevice];
    v6 = [v5 _graphicsQuality];

    if (_MergedGlobals_69)
    {
      v7 = 10;
    }

    else
    {
      v7 = v6;
    }

    [a1 setAllBackdropViewsToGraphicsQuality:v7];
  }
}

+ (void)setAllBackdropViewsToGraphicsQuality:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a1 allBackdropViews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) _transitionToGraphicsQuality:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_transitionToGraphicsQuality:(int64_t)a3
{
  v5 = [(_UIBackdropView *)self graphicsQualityChangeDelegate];

  if (!v5 || (-[_UIBackdropView graphicsQualityChangeDelegate](self, "graphicsQualityChangeDelegate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 backdropView:self willChangeToGraphicsQuality:a3], v11 = objc_claimAutoreleasedReturnValue(), v6, (v7 = v11) == 0))
  {
    v8 = [(_UIBackdropView *)self inputSettings];
    v12 = [_UIBackdropViewSettings settingsPreservingHintsFromSettings:v8 graphicsQuality:a3];

    v7 = v12;
  }

  v13 = v7;
  [(_UIBackdropView *)self transitionToSettings:?];
  v9 = [(_UIBackdropView *)self graphicsQualityChangeDelegate];

  if (v9)
  {
    v10 = [(_UIBackdropView *)self graphicsQualityChangeDelegate];
    [v10 backdropView:self didChangeToGraphicsQuality:a3];
  }
}

- (_UIBackdropView)initWithFrame:(CGRect)a3 autosizesToFitSuperview:(BOOL)a4 settings:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = _UIBackdropView;
  v12 = [(UIView *)&v29 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    v15 = _UIBackdropViewQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___AddToAllBackdropViews_block_invoke;
    block[3] = &unk_1E70F3590;
    v31 = v14;
    v16 = v14;
    dispatch_sync(v15, block);

    v17 = [(_UIBackdropView *)v16 backdropViewLayer];
    [v17 setBackdropView:v16];

    [(_UIBackdropView *)v16 setAutosizesToFitSuperview:v5];
    if ([(_UIBackdropView *)v16 autosizesToFitSuperview])
    {
      [(UIView *)v16 setAutoresizingMask:18];
    }

    if (!v11)
    {
      NSLog(&cfstr_WarningCalling_0.isa);
      v11 = objc_alloc_init(+[_UIBackdropView defaultSettingsClass]);
    }

    v18 = _AXSEnhanceBackgroundContrastEnabled();
    _MergedGlobals_69 = v18 != 0;
    if (v18)
    {
      v19 = [_UIBackdropViewSettings settingsPreservingHintsFromSettings:v11 graphicsQuality:10];

      v11 = v19;
    }

    [(_UIBackdropView *)v16 setInputSettings:v11];
    if ([v11 style])
    {
      v20 = +[_UIBackdropViewSettings settingsForStyle:](_UIBackdropViewSettings, "settingsForStyle:", [v11 style]);
    }

    else
    {
      v20 = objc_alloc_init(objc_opt_class());
    }

    v21 = v20;
    [(_UIBackdropView *)v16 setOutputSettings:v20];

    -[_UIBackdropView setStyle:](v16, "setStyle:", [v11 style]);
    v22 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(_UIBackdropView *)v16 setObservers:v22];

    [(UIView *)v16 setOpaque:0];
    [(UIView *)v16 setUserInteractionEnabled:0];
    [(_UIBackdropView *)v16 setAppliesOutputSettingsAnimationDuration:0.25];
    v23 = [(UIView *)v16 layer];
    [v23 setAllowsGroupBlending:0];

    v24 = [(UIView *)v16 layer];
    [v24 setAllowsGroupOpacity:0];

    v25 = [(_UIBackdropView *)v16 inputSettings];
    [(_UIBackdropView *)v16 updateSubviewHierarchyIfNeededForSettings:v25];

    v26 = [(_UIBackdropView *)v16 inputSettings];
    [(_UIBackdropView *)v16 applySettings:v26];

    v27 = v16;
  }

  return v13;
}

- (_UIBackdropView)initWithStyle:(int64_t)a3
{
  v4 = [_UIBackdropViewSettings settingsForStyle:a3];
  v5 = [(_UIBackdropView *)self initWithFrame:1 autosizesToFitSuperview:v4 settings:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v5;
}

- (_UIBackdropView)initWithPrivateStyle:(int64_t)a3
{
  v4 = [_UIBackdropViewSettings settingsForStyle:a3];
  v5 = [(_UIBackdropView *)self initWithFrame:1 autosizesToFitSuperview:v4 settings:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v5;
}

- (_UIBackdropView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [_UIBackdropViewSettings settingsForStyle:a4];
  v10 = [(_UIBackdropView *)self initWithFrame:0 autosizesToFitSuperview:v9 settings:x, y, width, height];

  return v10;
}

- (_UIBackdropView)initWithFrame:(CGRect)a3 privateStyle:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [_UIBackdropViewSettings settingsForStyle:a4];
  v10 = [(_UIBackdropView *)self initWithFrame:0 autosizesToFitSuperview:v9 settings:x, y, width, height];

  return v10;
}

- (void)dealloc
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = _UIBackdropViewQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___RemoveFromAllBackdropViews_block_invoke;
  block[3] = &unk_1E70F3590;
  v13 = v2;
  v4 = v2;
  dispatch_sync(v3, block);

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [(_UIBackdropView *)v4 computeAndApplySettingsNotificationObserver];

  if (v6)
  {
    v7 = [(_UIBackdropView *)v4 computeAndApplySettingsNotificationObserver];
    [v5 removeObserver:v7];

    computeAndApplySettingsNotificationObserver = v4->_computeAndApplySettingsNotificationObserver;
    v4->_computeAndApplySettingsNotificationObserver = 0;
  }

  v14[0] = @"UIApplicationDidBecomeActiveNotification";
  v14[1] = @"UIAccessibilityReduceTransparencyStatusDidChangeNotification";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(NSNotificationCenter *)v5 _uiRemoveObserver:v4 names:v9];

  [(_UIBackdropView *)v4 setComputesColorSettings:0];
  v4->_observer = 0;
  observers = v4->_observers;
  v4->_observers = 0;

  [(_UIBackdropViewSettings *)v4->_inputSettings setBackdrop:0];
  [(_UIBackdropViewSettings *)v4->_outputSettings setBackdrop:0];
  [(_UIBackdropViewSettings *)v4->_savedInputSettingsDuringRenderInContext setBackdrop:0];

  v11.receiver = v4;
  v11.super_class = _UIBackdropView;
  [(UIView *)&v11 dealloc];
}

- (void)setGroupName:(id)a3
{
  if (self->_groupName != a3)
  {
    v4 = [a3 copy];
    groupName = self->_groupName;
    self->_groupName = v4;
  }

  [(_UIBackdropView *)self _updateBackdropGroupName];
}

- (void)_setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    self->_cornerRadiusIsContinuous = 0;
    [(_UIBackdropView *)self _applyCornerRadiusToSubviews];
  }
}

- (void)_setContinuousCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    self->_cornerRadiusIsContinuous = 1;
    [(_UIBackdropView *)self _applyCornerRadiusToSubviews];
  }
}

- (void)setInputSettings:(id)a3
{
  v4 = a3;
  [(_UIBackdropViewSettings *)self->_inputSettings setBackdrop:0];
  inputSettings = self->_inputSettings;
  self->_inputSettings = v4;
  v6 = v4;

  [(_UIBackdropViewSettings *)self->_inputSettings setBackdrop:self];
}

- (void)setOutputSettings:(id)a3
{
  v4 = a3;
  [(_UIBackdropViewSettings *)self->_outputSettings setBackdrop:0];
  outputSettings = self->_outputSettings;
  self->_outputSettings = v4;
  v6 = v4;

  [(_UIBackdropViewSettings *)self->_outputSettings setBackdrop:self];
}

- (void)settingsDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIBackdropView *)self outputSettings];

  if (v5 != v4)
  {
    v6 = [(_UIBackdropView *)self inputSettings];

    if (v6 == v4 && ![(_UIBackdropView *)self applyingBackdropChanges])
    {
      if ([(_UIBackdropView *)self appliesOutputSettingsAutomatically])
      {
        v7 = [(_UIBackdropView *)self inputSettings];

        if (v7 == v4)
        {
          v8 = [(_UIBackdropView *)self outputSettings];
          v9 = [(_UIBackdropView *)self inputSettings];
          [v8 computeOutputSettingsUsingModel:v9];
        }

        v10 = [(_UIBackdropView *)self outputSettings];
        [(_UIBackdropView *)self applySettingsWithBuiltInAnimation:v10];
      }

      [(_UIBackdropView *)self updateSubviewHierarchyIfNeededForSettings:v4];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = [(_UIBackdropView *)self observers];
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v16 + 1) + 8 * v15++) backdropViewDidChange:self];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)setShouldRasterizeEffectsView:(BOOL)a3
{
  v3 = a3;
  if ([(_UIBackdropViewSettings *)self->_inputSettings zoomsBack])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_UIBackdropView *)self backdropEffectView];
    v7 = [v6 layer];
    v8 = [v7 meshTransform];
    v5 = v8 != 0;
  }

  v10 = [(_UIBackdropView *)self backdropEffectView];
  v9 = [v10 backdropLayer];
  [v9 setShouldRasterize:v5 | v3];
}

- (void)willCallRenderInContextOnBackdropViewLayer
{
  v3 = [(_UIBackdropView *)self inputSettings];
  v4 = [v3 graphicsQuality];

  if (v4 != 10)
  {
    v7 = [(_UIBackdropView *)self inputSettings];
    v5 = [v7 combinedTintColor];
    v6 = [v5 colorWithAlphaComponent:1.0];
    [(UIView *)self setBackgroundColor:v6];
  }
}

- (void)didCallRenderInContextOnBackdropViewLayer
{
  v3 = [(_UIBackdropView *)self inputSettings];
  v4 = [v3 graphicsQuality];

  if (v4 != 10)
  {

    [(UIView *)self setBackgroundColor:0];
  }
}

- (void)setObserver:(id)a3
{
  observer = self->_observer;
  v5 = a3;
  [(_UIBackdropView *)self removeObserver:observer];
  self->_observer = v5;
  [(_UIBackdropView *)self addObserver:?];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(_UIBackdropView *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(_UIBackdropView *)self observers];
  [v5 removeObject:v4];
}

- (void)setAppliesOutputSettingsAutomatically:(BOOL)a3
{
  self->_appliesOutputSettingsAutomatically = a3;
  if (a3)
  {
    v4 = [(_UIBackdropView *)self inputSettings];
    v5 = [v4 requiresColorStatistics];
  }

  else
  {
    if (![(_UIBackdropView *)self appliesOutputSettingsAutomaticallyEnabledComputesColorSettings])
    {
      return;
    }

    v5 = 0;
  }

  [(_UIBackdropView *)self setComputesColorSettings:v5];

  [(_UIBackdropView *)self setAppliesOutputSettingsAutomaticallyEnabledComputesColorSettings:v5];
}

- (void)layoutSubviews
{
  v29 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = _UIBackdropView;
  [(UIView *)&v27 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [(UIView *)self subviews];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        [v16 setFrame:{v4, v6, v8, v10}];
        v17 = [v16 layer];
        v18 = [v17 mask];
        [v18 setFrame:{v4, v6, v8, v10}];

        [v16 setNeedsDisplay];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v13);
  }

  if ([(_UIBackdropView *)self applySettingsAfterLayout])
  {
    [(_UIBackdropView *)self setApplySettingsAfterLayout:0];
    v19 = [(_UIBackdropView *)self outputSettings];
    v20 = [(_UIBackdropView *)self inputSettings];
    [v19 computeOutputSettingsUsingModel:v20];

    v21 = [(_UIBackdropView *)self outputSettings];
    [(_UIBackdropView *)self applySettings:v21];

    v22 = [(_UIBackdropView *)self outputSettings];
    [(_UIBackdropView *)self adjustTintImplementationIfNeeded:v22];
  }
}

- (void)setMaskImage:(id)a3 onLayer:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mask];
    v9 = [v8 contents];

    if (v9 != v12)
    {
      v10 = [v7 mask];
      v11 = v12;
      if (v12)
      {
        if (!v10)
        {
          v10 = [MEMORY[0x1E6979398] layer];
          [v7 setMask:v10];
          [v10 setDelegate:self];
          v11 = v12;
        }

        [v10 setContents:{objc_msgSend(v11, "CGImage")}];
        [(UIView *)self setNeedsLayout];
      }

      else
      {
        [v7 setMask:0];
      }
    }
  }
}

- (void)setFilterMaskImage:(id)a3
{
  objc_storeStrong(&self->_filterMaskImage, a3);
  v5 = a3;
  v7 = [(_UIBackdropView *)self backdropEffectView];
  v6 = [v7 layer];
  [(_UIBackdropView *)self setMaskImage:v5 onLayer:v6];
}

- (void)setGrayscaleTintMaskImage:(id)a3
{
  objc_storeStrong(&self->_grayscaleTintMaskImage, a3);
  v5 = a3;
  v7 = [(_UIBackdropView *)self grayscaleTintView];
  v6 = [v7 layer];
  [(_UIBackdropView *)self setMaskImage:v5 onLayer:v6];
}

- (void)setColorTintMaskImage:(id)a3
{
  objc_storeStrong(&self->_colorTintMaskImage, a3);
  v5 = a3;
  v7 = [(_UIBackdropView *)self colorTintView];
  v6 = [v7 layer];
  [(_UIBackdropView *)self setMaskImage:v5 onLayer:v6];
}

- (void)setColorBurnTintMaskImage:(id)a3
{
  objc_storeStrong(&self->_colorBurnTintMaskImage, a3);
  v5 = a3;
  v7 = [(_UIBackdropView *)self colorBurnTintView];
  v6 = [v7 layer];
  [(_UIBackdropView *)self setMaskImage:v5 onLayer:v6];
}

- (void)setDarkeningTintMaskImage:(id)a3
{
  objc_storeStrong(&self->_darkeningTintMaskImage, a3);
  v5 = a3;
  v7 = [(_UIBackdropView *)self darkeningTintView];
  v6 = [v7 layer];
  [(_UIBackdropView *)self setMaskImage:v5 onLayer:v6];
}

- (void)updateMaskViewForView:(id)a3 flag:(int64_t)a4
{
  v34 = a3;
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v6 = [(_UIBackdropView *)self grayscaleTintMaskViewMap];
      v7 = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];
      v8 = [(_UIBackdropView *)self grayscaleTintView];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_66;
      }

      v6 = [(_UIBackdropView *)self colorTintMaskViewMap];
      v7 = [(_UIBackdropView *)self colorTintMaskViewContainer];
      v8 = [(_UIBackdropView *)self colorTintView];
    }
  }

  else
  {
    switch(a4)
    {
      case 4:
        v6 = [(_UIBackdropView *)self filterMaskViewMap];
        v7 = [(_UIBackdropView *)self filterMaskViewContainer];
        v8 = [(_UIBackdropView *)self backdropEffectView];
        break;
      case 8:
        v6 = [(_UIBackdropView *)self colorBurnTintMaskViewMap];
        v7 = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];
        v8 = [(_UIBackdropView *)self colorBurnTintView];
        break;
      case 16:
        v6 = [(_UIBackdropView *)self darkeningTintMaskViewMap];
        v7 = [(_UIBackdropView *)self darkeningTintMaskViewContainer];
        v8 = [(_UIBackdropView *)self darkeningTintView];
        break;
      default:
        goto LABEL_66;
    }
  }

  v9 = v8;
  v10 = [v34 _backdropMaskViewForFlag:a4];
  v11 = [v34 _generateBackdropMaskViewForFlag:a4];
  v12 = [MEMORY[0x1E696B098] valueWithPointer:v34];
  v13 = 1;
  if (v10 && v11 != v10)
  {
    v13 = v11 == 0;
    if (v11)
    {
      [v10 frame];
      [v11 setFrame:?];
    }

    [v10 removeFromSuperview];
    [v6 removeObjectForKey:v12];
  }

  if (v11)
  {
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
    }

    v32 = v12;
    if (!v7 && v9)
    {
      v14 = [UIView alloc];
      [(UIView *)self bounds];
      v7 = [(UIView *)v14 initWithFrame:?];
      if (![(_UIBackdropView *)self maskMode])
      {
        v15 = +[UIColor blackColor];
        [(UIView *)v7 setBackgroundColor:v15];
      }

      [(UIView *)v7 setOpaque:0, v32];
      [(UIView *)v7 setUserInteractionEnabled:0];
      [(UIView *)v7 setAutoresizingMask:18];
      [v9 _setMaskView:v7];
      [v9 setNeedsLayout];
    }

    [(UIView *)v7 addSubview:v11, v32];
    v16 = [v34 superview];
    contentView = self->_contentView;

    v18 = !v13;
    if (v16 == contentView)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      [v11 bounds];
      [(UIView *)self convertRect:v34 fromView:?];
      [v11 setFrame:?];
    }

    v12 = v33;
    [v6 setObject:v11 forKey:v33];
    if (![(_UIBackdropView *)self maskMode])
    {
      v19 = *MEMORY[0x1E6979D58];
      v20 = [v11 layer];
      v21 = v19;
      v12 = v33;
      [v20 setCompositingFilter:v21];
    }

    if (a4 <= 3)
    {
      if (a4 == 1)
      {
        v30 = [(_UIBackdropView *)self grayscaleTintMaskViewMap];

        if (!v30 && v6)
        {
          [(_UIBackdropView *)self setGrayscaleTintMaskViewMap:v6];
        }

        v31 = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];

        if (v7 && !v31)
        {
          [(_UIBackdropView *)self setGrayscaleTintMaskViewContainer:v7];
        }
      }

      else
      {
        v24 = [(_UIBackdropView *)self colorTintMaskViewMap];

        if (!v24 && v6)
        {
          [(_UIBackdropView *)self setColorTintMaskViewMap:v6];
        }

        v25 = [(_UIBackdropView *)self colorTintMaskViewContainer];

        if (v7 && !v25)
        {
          [(_UIBackdropView *)self setColorTintMaskViewContainer:v7];
        }
      }
    }

    else if (a4 == 4)
    {
      v26 = [(_UIBackdropView *)self filterMaskViewMap];

      if (!v26 && v6)
      {
        [(_UIBackdropView *)self setFilterMaskViewMap:v6];
      }

      v27 = [(_UIBackdropView *)self filterMaskViewContainer];

      if (v7 && !v27)
      {
        [(_UIBackdropView *)self setFilterMaskViewContainer:v7];
      }
    }

    else if (a4 == 8)
    {
      v28 = [(_UIBackdropView *)self colorBurnTintMaskViewMap];

      if (!v28 && v6)
      {
        [(_UIBackdropView *)self setColorBurnTintMaskViewMap:v6];
      }

      v29 = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];

      if (v7 && !v29)
      {
        [(_UIBackdropView *)self setColorBurnTintMaskViewContainer:v7];
      }
    }

    else
    {
      v22 = [(_UIBackdropView *)self darkeningTintMaskViewMap];

      if (!v22 && v6)
      {
        [(_UIBackdropView *)self setDarkeningTintMaskViewMap:v6];
      }

      v23 = [(_UIBackdropView *)self darkeningTintMaskViewContainer];

      if (v7 && !v23)
      {
        [(_UIBackdropView *)self setDarkeningTintMaskViewContainer:v7];
      }
    }
  }

LABEL_66:
}

- (void)updateMaskViewsForView:(id)a3
{
  v17 = a3;
  v4 = [(_UIBackdropView *)self simulatesMasks];
  v5 = [v17 _backdropMaskViewFlags];
  if (v4)
  {
    if (v5)
    {
      [(_UIBackdropView *)self applyOverlayBlendModeToView:v17];
    }

    else
    {
      [(_UIBackdropView *)self removeOverlayBlendModeFromView:v17];
    }
  }

  else if (v5 || ([v17 _backdropMaskViews], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    if (![(_UIBackdropView *)self updateMaskViewsForViewReentrancyGuard])
    {
      [(_UIBackdropView *)self setUpdateMaskViewsForViewReentrancyGuard:1];
      v8 = [v17 _backdropMaskViewFlags];
      v9 = [v17 _backdropMaskViewFlags];
      v10 = [MEMORY[0x1E696B098] valueWithPointer:v17];
      v11 = [(_UIBackdropView *)self partialMaskViews];
      v12 = v11;
      if (v8 == 7 || !v9)
      {
        [v11 removeObject:v10];
      }

      else
      {

        if (!v12)
        {
          v13 = [MEMORY[0x1E695DFA8] set];
          [(_UIBackdropView *)self setPartialMaskViews:v13];
        }

        v12 = [(_UIBackdropView *)self partialMaskViews];
        [v12 addObject:v10];
      }

      [(_UIBackdropView *)self updateMaskViewForView:v17 flag:1];
      [(_UIBackdropView *)self updateMaskViewForView:v17 flag:2];
      [(_UIBackdropView *)self updateMaskViewForView:v17 flag:8];
      [(_UIBackdropView *)self updateMaskViewForView:v17 flag:16];
      [(_UIBackdropView *)self updateMaskViewForView:v17 flag:4];
      v14 = [v17 superview];
      if (v14)
      {
        v15 = v14;
        do
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 _addScrollViewScrollObserver:v17];
          }

          v16 = [v15 superview];

          v15 = v16;
        }

        while (v16);
      }

      [(_UIBackdropView *)self setUpdateMaskViewsForViewReentrancyGuard:0];
    }
  }
}

- (void)setMaskMode:(int64_t)a3
{
  v73 = *MEMORY[0x1E69E9840];
  if (![(_UIBackdropView *)self simulatesMasks])
  {
    maskMode = self->_maskMode;
    self->_maskMode = a3;
    if (maskMode != a3)
    {
      if ([(_UIBackdropView *)self maskMode])
      {
        v6 = 0;
        v7 = 0;
      }

      else
      {
        v7 = +[UIColor blackColor];
        v6 = *MEMORY[0x1E6979D58];
      }

      v8 = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];
      [v8 setBackgroundColor:v7];

      v9 = [(_UIBackdropView *)self colorTintMaskViewContainer];
      [v9 setBackgroundColor:v7];

      v10 = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];
      [v10 setBackgroundColor:v7];

      v11 = [(_UIBackdropView *)self darkeningTintMaskViewContainer];
      [v11 setBackgroundColor:v7];

      v12 = [(_UIBackdropView *)self filterMaskViewContainer];
      [v12 setBackgroundColor:v7];

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v13 = [(_UIBackdropView *)self grayscaleTintMaskViewMap];
      v14 = [v13 allValues];

      v15 = [v14 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v65;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v65 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v64 + 1) + 8 * i) layer];
            [v19 setCompositingFilter:v6];
          }

          v16 = [v14 countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v16);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v20 = [(_UIBackdropView *)self colorTintMaskViewMap];
      v21 = [v20 allValues];

      v22 = [v21 countByEnumeratingWithState:&v60 objects:v71 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v61;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v61 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v60 + 1) + 8 * j) layer];
            [v26 setCompositingFilter:v6];
          }

          v23 = [v21 countByEnumeratingWithState:&v60 objects:v71 count:16];
        }

        while (v23);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v27 = [(_UIBackdropView *)self colorBurnTintMaskViewMap];
      v28 = [v27 allValues];

      v29 = [v28 countByEnumeratingWithState:&v56 objects:v70 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v57;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v57 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [*(*(&v56 + 1) + 8 * k) layer];
            [v33 setCompositingFilter:v6];
          }

          v30 = [v28 countByEnumeratingWithState:&v56 objects:v70 count:16];
        }

        while (v30);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v34 = [(_UIBackdropView *)self darkeningTintMaskViewMap];
      v35 = [v34 allValues];

      v36 = [v35 countByEnumeratingWithState:&v52 objects:v69 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v53;
        do
        {
          for (m = 0; m != v37; ++m)
          {
            if (*v53 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [*(*(&v52 + 1) + 8 * m) layer];
            [v40 setCompositingFilter:v6];
          }

          v37 = [v35 countByEnumeratingWithState:&v52 objects:v69 count:16];
        }

        while (v37);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v41 = [(_UIBackdropView *)self filterMaskViewMap];
      v42 = [v41 allValues];

      v43 = [v42 countByEnumeratingWithState:&v48 objects:v68 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v49;
        do
        {
          for (n = 0; n != v44; ++n)
          {
            if (*v49 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = [*(*(&v48 + 1) + 8 * n) layer];
            [v47 setCompositingFilter:v6];
          }

          v44 = [v42 countByEnumeratingWithState:&v48 objects:v68 count:16];
        }

        while (v44);
      }
    }
  }
}

- (void)removeMaskViews
{
  if (![(_UIBackdropView *)self simulatesMasks])
  {
    v3 = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];
    v4 = [v3 subviews];
    [v4 makeObjectsPerformSelector:sel_removeFromSuperview];

    v5 = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];
    [v5 removeFromSuperview];

    [(_UIBackdropView *)self setGrayscaleTintMaskViewContainer:0];
    v6 = [(_UIBackdropView *)self colorTintMaskViewContainer];
    v7 = [v6 subviews];
    [v7 makeObjectsPerformSelector:sel_removeFromSuperview];

    v8 = [(_UIBackdropView *)self colorTintMaskViewContainer];
    [v8 removeFromSuperview];

    [(_UIBackdropView *)self setColorTintMaskViewContainer:0];
    v9 = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];
    v10 = [v9 subviews];
    [v10 makeObjectsPerformSelector:sel_removeFromSuperview];

    v11 = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];
    [v11 removeFromSuperview];

    [(_UIBackdropView *)self setColorBurnTintMaskViewContainer:0];
    v12 = [(_UIBackdropView *)self darkeningTintMaskViewContainer];
    v13 = [v12 subviews];
    [v13 makeObjectsPerformSelector:sel_removeFromSuperview];

    v14 = [(_UIBackdropView *)self darkeningTintMaskViewContainer];
    [v14 removeFromSuperview];

    [(_UIBackdropView *)self setDarkeningTintMaskViewContainer:0];
    v15 = [(_UIBackdropView *)self filterMaskViewContainer];
    v16 = [v15 subviews];
    [v16 makeObjectsPerformSelector:sel_removeFromSuperview];

    v17 = [(_UIBackdropView *)self filterMaskViewContainer];
    [v17 removeFromSuperview];

    [(_UIBackdropView *)self setFilterMaskViewContainer:0];
    v18 = [(_UIBackdropView *)self grayscaleTintView];
    [v18 _setMaskView:0];

    v19 = [(_UIBackdropView *)self colorTintView];
    [v19 _setMaskView:0];

    v20 = [(_UIBackdropView *)self colorBurnTintView];
    [v20 _setMaskView:0];

    v21 = [(_UIBackdropView *)self darkeningTintView];
    [v21 _setMaskView:0];

    v22 = [(_UIBackdropView *)self backdropEffectView];
    [v22 _setMaskView:0];
  }
}

- (void)setBlurRadius:(double)a3
{
  if (self->__blurRadius != a3 || ![(_UIBackdropView *)self blurRadiusSetOnce])
  {
    [(_UIBackdropView *)self setBlurRadiusSetOnce:1];
    [(_UIBackdropView *)self setBlurFilterWithRadius:@"default" blurQuality:a3];
    self->__blurRadius = a3;
  }
}

- (void)setBlurQuality:(id)a3
{
  if (self->__blurQuality != a3)
  {
    v4 = a3;
    [(_UIBackdropView *)self blurRadius];
    [(_UIBackdropView *)self setBlurFilterWithRadius:v4 blurQuality:?];
    v5 = [v4 copy];

    blurQuality = self->__blurQuality;
    self->__blurQuality = v5;
  }
}

- (void)setBlurFilterWithRadius:(double)a3 blurQuality:(id)a4
{
  v24 = a4;
  v6 = [(_UIBackdropView *)self backdropEffectView];

  if (v6)
  {
    if (qword_1ED49AF80 != -1)
    {
      dispatch_once(&qword_1ED49AF80, &__block_literal_global_680);
    }

    if ((byte_1ED49AF59 & 1) == 0)
    {
      v7 = [(_UIBackdropView *)self gaussianBlurFilter];

      if (v7)
      {
LABEL_19:
        if (self->__blurRadius != a3)
        {
          v16 = [(_UIBackdropView *)self backdropEffectView];
          v17 = [v16 layer];
          v18 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
          [v17 setValue:v18 forKeyPath:@"filters.gaussianBlur.inputRadius"];

          v19 = [(_UIBackdropView *)self backdropEffectView];
          v20 = [v19 layer];
          v21 = [v20 valueForKeyPath:@"filters.gaussianBlur"];
          [(_UIBackdropView *)self setGaussianBlurFilter:v21];

          self->__blurRadius = a3;
        }

        if (([(__CFString *)v24 isEqualToString:self->__blurQuality]& 1) == 0)
        {
          v22 = [(_UIBackdropView *)self backdropEffectView];
          v23 = [v22 layer];
          [v23 setValue:v24 forKeyPath:@"filters.gaussianBlur.inputQuality"];
        }

        goto LABEL_23;
      }

      v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      [v8 setValue:v9 forKey:@"inputRadius"];

      v10 = v24;
      if (!v24)
      {
        v11 = [(_UIBackdropView *)self inputSettings];
        if ([v11 graphicsQuality] == 10)
        {
        }

        else
        {
          if (qword_1ED49AF88 != -1)
          {
            dispatch_once(&qword_1ED49AF88, &__block_literal_global_686);
          }

          v13 = byte_1ED49AF5A;

          if ((v13 & 1) == 0)
          {
            v10 = @"default";
            goto LABEL_16;
          }
        }

        v10 = @"low";
      }

LABEL_16:
      v24 = v10;
      if (!self->__blurQuality)
      {
        v14 = [(__CFString *)v10 copy];
        blurQuality = self->__blurQuality;
        self->__blurQuality = v14;
      }

      [v8 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
      [v8 setValue:v24 forKey:@"inputQuality"];
      [v8 setName:@"gaussianBlur"];
      [(_UIBackdropView *)self setGaussianBlurFilter:v8];
      [(_UIBackdropView *)self _updateFilters];

      goto LABEL_19;
    }
  }

  else
  {
    v12 = [(_UIBackdropView *)self gaussianBlurFilter];

    if (v12)
    {
      [(_UIBackdropView *)self setGaussianBlurFilter:0];
      [(_UIBackdropView *)self _updateFilters];
    }
  }

LABEL_23:
}

- (void)setSaturationDeltaFactor:(double)a3
{
  colorSaturateFilter = self->_colorSaturateFilter;
  if (self->_backdropEffectView)
  {
    if (!colorSaturateFilter)
    {
      v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      [v6 setValue:v7 forKey:@"inputAmount"];

      [v6 setName:@"colorSaturate"];
      v8 = self->_colorSaturateFilter;
      self->_colorSaturateFilter = v6;

      [(_UIBackdropView *)self _updateFilters];
    }

    if (self->__saturationDeltaFactor != a3)
    {
      v9 = [(UIView *)self->_backdropEffectView layer];
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      [v9 setValue:v10 forKeyPath:@"filters.colorSaturate.inputAmount"];

      self->__saturationDeltaFactor = a3;
    }
  }

  else if (colorSaturateFilter)
  {
    self->_colorSaturateFilter = 0;

    [(_UIBackdropView *)self _updateFilters];
  }
}

- (void)setTintFilterForSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backdropEffectView)
  {
    v39 = 0.0;
    v40 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v6 = 0.0;
    v7 = v4[16];
    if (v7)
    {
      [v7 getRed:&v40 green:&v39 blue:&v38 alpha:&v37];
      v8 = *(v5 + 17) * v37;
      v37 = v8;
      v9 = 1.0 - v8;
    }

    else
    {
      v9 = 1.0;
      v8 = 0.0;
    }

    if (*(v5 + 305) == 1)
    {
      v6 = *(v5 + 12);
    }

    v11 = *(v5 + 11);
    v12 = v9 * (v6 * v11);
    v13 = v9 * (1.0 - v6);
    v14 = v12 + v8 * v40;
    v15 = v12 + v8 * v39;
    v16 = v12 + v8 * v38;
    if (!self->_tintFilter)
    {
      v17 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
      [v17 setName:@"colorMatrix"];
      v22 = v13;
      v23 = 0;
      v24 = 0;
      v25 = v14;
      v26 = 0;
      v27 = v13;
      v28 = 0;
      v29 = v15;
      v30 = 0;
      v31 = v13;
      v32 = 0;
      v33 = v16;
      v34 = 0;
      v35 = 0;
      v36 = 1065353216;
      v18 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v22];
      [v17 setValue:v18 forKey:@"inputColorMatrix"];

      tintFilter = self->_tintFilter;
      self->_tintFilter = v17;

      [(_UIBackdropView *)self _updateFilters];
      v11 = *(v5 + 11);
    }

    if (vabdd_f64(self->_colorMatrixGrayscaleTintLevel, v11) > 0.00000011920929 || vabdd_f64(self->_colorMatrixGrayscaleTintAlpha, *(v5 + 12)) > 0.00000011920929 || vabdd_f64(self->_colorMatrixColorTintAlpha, *(v5 + 17)) > 0.00000011920929)
    {
      goto LABEL_16;
    }

    if (![(UIColor *)self->_colorMatrixColorTint isEqual:*(v5 + 16)])
    {
      v11 = *(v5 + 11);
LABEL_16:
      self->_colorMatrixGrayscaleTintLevel = v11;
      self->_colorMatrixGrayscaleTintAlpha = *(v5 + 12);
      objc_storeStrong(&self->_colorMatrixColorTint, *(v5 + 16));
      self->_colorMatrixColorTintAlpha = *(v5 + 17);
      v20 = [(UIView *)self->_backdropEffectView layer];
      v22 = v13;
      v23 = 0;
      v24 = 0;
      v25 = v14;
      v26 = 0;
      v27 = v13;
      v28 = 0;
      v29 = v15;
      v30 = 0;
      v31 = v13;
      v32 = 0;
      v33 = v16;
      v34 = 0;
      v35 = 0;
      v36 = 1065353216;
      v21 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v22];
      [v20 setValue:v21 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];
    }
  }

  else
  {
    v10 = self->_tintFilter;
    if (v10)
    {
      self->_tintFilter = 0;

      [(_UIBackdropView *)self _updateFilters];
    }
  }
}

- (void)setBackdropVisible:(BOOL)a3
{
  v3 = a3;
  if (self->__backdropVisible != a3 || !self->_backdropVisibilitySetOnce)
  {
    self->_backdropVisibilitySetOnce = 1;
    v5 = [(_UIBackdropEffectView *)self->_backdropEffectView backdropLayer];
    [v5 setEnabled:v3];

    self->__backdropVisible = v3;
    if (v3 || [(_UIBackdropViewSettings *)self->_inputSettings requiresBackdropLayer])
    {
      backdropEffectView = self->_backdropEffectView;
      if (backdropEffectView)
      {
        v7 = [(UIView *)backdropEffectView superview];

        if (!v7)
        {

          [(_UIBackdropView *)self ensureProperSubviewOrdering];
        }
      }
    }

    else
    {
      v8 = self->_backdropEffectView;

      [(UIView *)v8 removeFromSuperview];
    }
  }
}

- (void)setUsesZoom
{
  v5 = MeshTransformForZoom(0.0);
  v3 = [(_UIBackdropView *)self backdropEffectView];
  v4 = [v3 backdropLayer];
  [v4 setMeshTransform:v5];
}

- (void)_setBlursBackground:(BOOL)a3
{
  v3 = a3;
  self->_blursBackground = a3;
  if ([(_UIBackdropView *)self configuration]!= 1)
  {
    [(_UIBackdropView *)self setConfiguration:1];
  }

  v5 = [(_UIBackdropView *)self effectView];
  [v5 setAlpha:v3];
}

- (void)prepareForTransitionToSettings:(id)a3
{
  v4 = a3;
  [(_UIBackdropView *)self setApplyingTransition:1];
  v5 = [(_UIBackdropView *)self inputSettings];
  v6 = [v5 style] == -2;

  v7 = [v4 style];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___UIBackdropView_prepareForTransitionToSettings___block_invoke;
  v9[3] = &unk_1E70F67F8;
  v9[4] = self;
  v10 = v4;
  v11 = v6;
  v12 = v7 == -2;
  v8 = v4;
  [UIView performWithoutAnimation:v9];
}

- (void)transitionToStyle:(int64_t)a3
{
  v4 = [_UIBackdropViewSettings settingsForStyle:a3];
  [(_UIBackdropView *)self prepareForTransitionToSettings:v4];
  [(_UIBackdropView *)self computeAndApplySettingsForTransition];
}

- (void)transitionToColor:(id)a3
{
  v4 = a3;
  v5 = [_UIBackdropViewSettings settingsForStyle:2040];
  [v5 setColorTint:v4];

  [v5 setColorTintAlpha:1.0];
  [(_UIBackdropView *)self prepareForTransitionToSettings:v5];
  [(_UIBackdropView *)self computeAndApplySettingsForTransition];
}

- (void)transitionToSettings:(id)a3
{
  [(_UIBackdropView *)self prepareForTransitionToSettings:a3];

  [(_UIBackdropView *)self computeAndApplySettingsForTransition];
}

- (void)transitionIncrementallyToSettings:(id)a3 weighting:(double)a4
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_outputSettings;
  }

  else
  {
    v7 = [[_UIBackdropViewSettingsCombiner alloc] initWithDefaultValuesForGraphicsQuality:0];
    v8 = [(_UIBackdropViewSettings *)self->_inputSettings colorSettings];
    [(_UIBackdropViewSettings *)v7 setColorSettings:v8];

    [(_UIBackdropViewSettingsCombiner *)v7 setInputSettingsA:self->_inputSettings];
    [(_UIBackdropViewSettingsCombiner *)v7 setInputSettingsB:v11];
    [(_UIBackdropView *)self prepareForTransitionToSettings:v7];
    v6 = self->_outputSettings;
    v9 = [(_UIBackdropViewSettingsCombiner *)v7 inputSettingsA];
    [(_UIBackdropViewSettings *)v6 setInputSettingsA:v9];

    v10 = [(_UIBackdropViewSettingsCombiner *)v7 inputSettingsB];
    [(_UIBackdropViewSettings *)v6 setInputSettingsB:v10];

    self->_style = -3;
  }

  [(_UIBackdropViewSettings *)v6 setWeighting:a4];
  [(_UIBackdropViewSettings *)v6 computeOutputSettingsUsingModel:self->_inputSettings];
  [(_UIBackdropView *)self applySettings:v6];
}

- (void)transitionIncrementallyToStyle:(int64_t)a3 weighting:(double)a4
{
  v6 = [_UIBackdropViewSettings settingsForStyle:a3];
  [(_UIBackdropView *)self transitionIncrementallyToSettings:v6 weighting:a4];
}

- (void)transitionComplete
{
  if (self->_applyingTransition)
  {
    [(_UIBackdropViewSettings *)self->_outputSettings computeOutputSettingsUsingModel:self->_inputSettings];
    [(_UIBackdropView *)self adjustTintImplementationIfNeeded:self->_outputSettings];
    if (!self->_transitioningBetweenMaterialsRequiringRasterizationAndAlphaHack)
    {
      [(_UIBackdropViewSettings *)self->_inputSettings scale];
      v4 = v3;
      v5 = [(_UIBackdropEffectView *)self->_backdropEffectView backdropLayer];
      [v5 setScale:v4];
    }

    [(_UIBackdropView *)self setBackdropVisible:[(_UIBackdropViewSettings *)self->_inputSettings isBackdropVisible]];
    self->_applyingTransition = 0;
  }
}

- (UIView)contentView
{
  if ([(_UIBackdropView *)self contentViewAccessorGuard])
  {
    p_contentView = &self->_contentView;
  }

  else
  {
    [(_UIBackdropView *)self setContentViewAccessorGuard:1];
    p_contentView = &self->_contentView;
    if (!self->_contentView)
    {
      [(_UIBackdropView *)self setContentViewAccessed:1];
      v4 = [(_UIBackdropView *)self inputSettings];
      [(_UIBackdropView *)self updateSubviewHierarchyIfNeededForSettings:v4];
    }

    [(_UIBackdropView *)self setContentViewAccessorGuard:0];
  }

  v5 = *p_contentView;

  return v5;
}

- (void)updateSubviewHierarchyIfNeededForSettings:(id)a3
{
  v4 = a3;
  [(_UIBackdropView *)self addBackdropEffectViewIfNeededForSettings:v4];
  [(_UIBackdropView *)self addGrayscaleTintViewIfNeededForSettings:v4];
  [(_UIBackdropView *)self addColorTintViewIfNeededForSettings:v4];
  [(_UIBackdropView *)self addColorBurnTintViewIfNeededForSettings:v4];
  [(_UIBackdropView *)self addContentViewIfNeededForSettings:v4];
  [(_UIBackdropView *)self addDarkeningTintViewIfNeededForSettings:v4];

  [(_UIBackdropView *)self ensureProperSubviewOrdering];

  [(_UIBackdropView *)self _applyCornerRadiusToSubviews];
}

- (void)addBackdropEffectViewIfNeededForSettings:(id)a3
{
  v9 = a3;
  if (([v9 usesBackdropEffectView] & 1) != 0 || -[_UIBackdropView computesColorSettings](self, "computesColorSettings") || objc_msgSend(v9, "requiresBackdropLayer"))
  {
    v4 = [(_UIBackdropView *)self backdropEffectView];

    if (!v4)
    {
      v5 = objc_alloc_init(_UIBackdropEffectView);
      [(UIView *)self bounds];
      [(UIView *)v5 setFrame:?];
      v6 = [(UIView *)v5 layer];
      [v6 setAllowsEdgeAntialiasing:0];

      groupName = self->_groupName;
      v8 = [(_UIBackdropEffectView *)v5 backdropLayer];
      [v8 setGroupName:groupName];

      [(_UIBackdropView *)self setBackdropEffectView:v5];
      [(_UIBackdropView *)self setAppliesOutputSettingsAutomatically:1];
    }
  }
}

- (void)addGrayscaleTintViewIfNeededForSettings:(id)a3
{
  v7 = a3;
  if (![v7 usesGrayscaleTintView] || (-[_UIBackdropView grayscaleTintView](self, "grayscaleTintView"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([v7 usesGrayscaleTintView])
    {
      v5 = [UIView alloc];
      v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v6 setOpaque:0];
      [(UIView *)v6 setAutoresizingMask:18];
      [(UIView *)v6 setUserInteractionEnabled:0];
      [(UIView *)v6 setAlpha:0.0];
      [(UIView *)self bounds];
      [(UIView *)v6 setFrame:?];
      [(_UIBackdropView *)self setGrayscaleTintView:v6];
      [(_UIBackdropView *)self setAppliesOutputSettingsAutomatically:1];
    }
  }
}

- (void)addColorTintViewIfNeededForSettings:(id)a3
{
  v7 = a3;
  if (![v7 usesColorTintView] || (-[_UIBackdropView colorTintView](self, "colorTintView"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([v7 usesColorTintView])
    {
      v5 = [UIView alloc];
      v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v6 setOpaque:0];
      [(UIView *)v6 setAutoresizingMask:18];
      [(UIView *)v6 setUserInteractionEnabled:0];
      [(UIView *)v6 setAlpha:0.0];
      [(UIView *)self bounds];
      [(UIView *)v6 setFrame:?];
      [(_UIBackdropView *)self setColorTintView:v6];
      [(_UIBackdropView *)self setAppliesOutputSettingsAutomatically:1];
    }
  }
}

- (void)addColorBurnTintViewIfNeededForSettings:(id)a3
{
  v9 = a3;
  if (![v9 usesColorBurnTintView] || (-[_UIBackdropView colorBurnTintView](self, "colorBurnTintView"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([v9 usesColorBurnTintView])
    {
      v5 = [UIView alloc];
      v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v6 setOpaque:0];
      [(UIView *)v6 setAutoresizingMask:18];
      [(UIView *)v6 setUserInteractionEnabled:0];
      [(UIView *)v6 setAlpha:0.0];
      [(UIView *)self bounds];
      [(UIView *)v6 setFrame:?];
      v7 = *MEMORY[0x1E6979850];
      v8 = [(UIView *)v6 layer];
      [v8 setCompositingFilter:v7];

      [(_UIBackdropView *)self setColorBurnTintView:v6];
      [(_UIBackdropView *)self setAppliesOutputSettingsAutomatically:1];
    }
  }
}

- (void)addDarkeningTintViewIfNeededForSettings:(id)a3
{
  v10 = a3;
  if (![v10 usesDarkeningTintView] || !self->_darkeningTintView)
  {
    if ([v10 usesDarkeningTintView])
    {
      v4 = [UIView alloc];
      v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v5 setOpaque:0];
      [(UIView *)v5 setAutoresizingMask:18];
      [(UIView *)self bounds];
      [(UIView *)v5 setFrame:?];
      v6 = *MEMORY[0x1E69798C0];
      v7 = [(UIView *)v5 layer];
      [v7 setCompositingFilter:v6];

      v8 = [UIColor colorWithHue:0.619444444 saturation:0.2 brightness:0.64 alpha:1.0];
      [(UIView *)v5 setBackgroundColor:v8];

      [(UIView *)v5 setAlpha:0.2];
      [(_UIBackdropView *)self setDarkeningTintView:v5];
    }

    else
    {
      v9 = [(_UIBackdropView *)self darkeningTintView];
      [v9 removeFromSuperview];

      [(_UIBackdropView *)self setDarkeningTintView:0];
    }
  }
}

- (void)addContentViewIfNeededForSettings:(id)a3
{
  v6 = a3;
  if ((![v6 usesContentView] || !self->_contentView) && objc_msgSend(v6, "usesContentView") && -[_UIBackdropView contentViewAccessed](self, "contentViewAccessed"))
  {
    v4 = [_UIBackdropContentView alloc];
    v5 = [(_UIBackdropContentView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v5 setOpaque:0];
    [(UIView *)v5 setAutoresizingMask:18];
    [(UIView *)self bounds];
    [(UIView *)v5 setFrame:?];
    [(_UIBackdropView *)self setContentView:v5];
  }
}

- (BOOL)requiresTintViews
{
  if ([(_UIBackdropView *)self configuration]== 1)
  {
    return 1;
  }

  if ([(_UIBackdropView *)self configuration]== 2)
  {
    return 0;
  }

  v4 = [(_UIBackdropView *)self partialMaskViews];
  v5 = [v4 count];

  if (v5)
  {
    return 1;
  }

  v7 = [(_UIBackdropView *)self inputSettings];
  v8 = [v7 grayscaleTintMaskImage];

  v9 = [(_UIBackdropView *)self inputSettings];
  v10 = [v9 colorTintMaskImage];

  v11 = [(_UIBackdropView *)self inputSettings];
  v12 = [v11 filterMaskImage];

  if (!v8 && !v10 && !v12 || (v3 = 1, v8 == v10) && v10 == v12 && v8 == v12)
  {
    v13 = [(_UIBackdropView *)self inputSettings];
    v14 = [v13 graphicsQuality];

    if (v14 == 10 || (-[_UIBackdropView inputSettings](self, "inputSettings"), v15 = objc_claimAutoreleasedReturnValue(), [v15 blurRadius], v17 = v16, v15, v17 < 0.00000011920929) || -[_UIBackdropView applyingTransition](self, "applyingTransition"))
    {
      v3 = 1;
    }

    else
    {
      v18 = [(_UIBackdropView *)self inputSettings];
      v3 = [v18 usesColorTintView];
    }
  }

  return v3;
}

- (void)adjustTintImplementationIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(_UIBackdropView *)self tintFilter];

  [v4 grayscaleTintAlpha];
  if (v6 <= 0.00000011920929)
  {
    [v4 colorTintAlpha];
    v7 = v8 > 0.00000011920929;
  }

  else
  {
    v7 = 1;
  }

  v9 = [(_UIBackdropView *)self requiresTintViews];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52___UIBackdropView_adjustTintImplementationIfNeeded___block_invoke;
  v11[3] = &unk_1E70F6820;
  v13 = v5 != 0;
  v14 = v9;
  v11[4] = self;
  v12 = v4;
  v15 = v7;
  v10 = v4;
  [UIView performWithoutAnimation:v11];
}

- (void)setConfiguration:(int64_t)a3
{
  if (self->_configuration != a3)
  {
    self->_configuration = a3;
    v5 = [(_UIBackdropView *)self outputSettings];
    v6 = [(_UIBackdropView *)self inputSettings];
    [v5 computeOutputSettingsUsingModel:v6];

    v7 = [(_UIBackdropView *)self outputSettings];
    [(_UIBackdropView *)self adjustTintImplementationIfNeeded:v7];
  }
}

- (void)computeAndApplySettingsForTransition
{
  v3 = [(_UIBackdropView *)self outputSettings];
  v4 = [(_UIBackdropView *)self inputSettings];
  [v3 computeOutputSettingsUsingModel:v4];

  v5 = [(_UIBackdropView *)self outputSettings];
  [(_UIBackdropView *)self applySettings:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55___UIBackdropView_computeAndApplySettingsForTransition__block_invoke;
  aBlock[3] = &unk_1E70F5AC0;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  if (![UIView _addCompletion:v6])
  {
    v6[2](v6, 1);
  }

  v7 = [(_UIBackdropView *)self observers];
  v8 = [v7 allObjects];
  [v8 makeObjectsPerformSelector:sel_backdropViewDidChange_ withObject:self];
}

- (void)applySettingsWithBuiltInAnimation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_applyingTransition)
  {
    appliesOutputSettingsAnimationDuration = self->_appliesOutputSettingsAnimationDuration;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53___UIBackdropView_applySettingsWithBuiltInAnimation___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v9 = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53___UIBackdropView_applySettingsWithBuiltInAnimation___block_invoke_2;
    v7[3] = &unk_1E70F5AC0;
    v7[4] = self;
    [UIView animateWithDuration:4 delay:v8 options:v7 animations:appliesOutputSettingsAnimationDuration completion:0.0];
  }
}

- (void)setColorOffsetFilterForSettings:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_backdropEffectView)
  {
    if (*(v4 + 310) == 1)
    {
      v8 = *(v4 + 40);
      if (v8)
      {
        [v8 CAColorMatrixValue];
        v28 = v30;
        v27 = v31;
        v9 = v32;
        v26 = v34;
        v24 = v33;
        v25 = v35;
        v10 = v36;
        [MEMORY[0x1E6979378] filterWithType:{*MEMORY[0x1E6979880], v29, v11}];
      }

      else
      {
        v13 = v7[39];
        v14 = 1.0 - v13;
        *&v15 = v13 * 0.8 + 1.0 - v13;
        v6.f64[0] = (1.0 - v13) * 0.0;
        v16 = vmulq_n_f64(xmmword_18A677ED0, v13);
        *&v17.f64[0] = *&vsubq_f64(v6, v16);
        v17.f64[1] = vaddq_f64(vdupq_lane_s64(*&v6, 0), v16).f64[1];
        v18 = vcvt_f32_f64(v17);
        *&v19 = v13 + 1.0 - v13;
        *&v13 = v13 * 0.1 + v6.f64[0];
        v6.f64[1] = v14;
        *&v6.f64[0] = vcvt_f32_f64(vaddq_f64(vdupq_lane_s64(*&v16.f64[0], 0), v6));
        v27 = LODWORD(v6.f64[0]);
        v26 = vzip1q_s32(v6, vdupq_lane_s32(*&v6.f64[0], 0));
        v24 = __PAIR64__(LODWORD(v13), v19);
        v25 = v26.u32[0];
        v10 = 1065353216;
        v28 = v18.i32[0];
        v9 = v18;
        [MEMORY[0x1E6979378] filterWithType:{*MEMORY[0x1E6979880], v15, v5}];
      }
      v20 = ;
      v29 = v23;
      v30 = v28;
      v31 = v27;
      v32 = v9;
      v33 = v24;
      v34 = v26;
      v35 = v25;
      v36 = v10;
      v21 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v29];
      [v20 setValue:v21 forKey:@"inputColorMatrix"];

      colorOffsetFilter = self->_colorOffsetFilter;
      self->_colorOffsetFilter = v20;

      goto LABEL_9;
    }
  }

  else
  {
    v12 = self->_colorOffsetFilter;
    if (v12)
    {
      self->_colorOffsetFilter = 0;

LABEL_9:
      [(_UIBackdropView *)self _updateFilters];
    }
  }
}

- (void)applySettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 3);
    if (self->_style == v6)
    {
      v7 = "_UIMonochromaticTreatment";
      if (!self->_applyingTransition && *(v4 + 328) != 1)
      {
        goto LABEL_31;
      }

      if (self->_tintFilter)
      {
        [(_UIBackdropView *)self setTintFilterForSettings:v4];
      }

      [(_UIBackdropView *)self setColorOffsetFilterForSettings:v5];
      v8 = 1.0;
      v9 = 1.0;
      if ((v5[15] & 1) == 0)
      {
        v9 = v5[12];
      }

      v10 = [UIColor colorWithWhite:v5[11] alpha:v9];
      [(UIView *)self->_grayscaleTintView setBackgroundColor:v10];

      if (*(v5 + 120) == 1)
      {
        v8 = v5[12];
      }

      [(UIView *)self->_grayscaleTintView setAlpha:v8];
      [(_UIBackdropView *)self setGrayscaleTintMaskImage:*(v5 + 14)];
      v11 = v5[13];
      v12 = [(UIView *)self->_grayscaleTintView layer];
      v13 = [v12 mask];
      *&v14 = v11;
      [v13 setOpacity:v14];

      v15 = *(v5 + 120);
      if (v15 == 1)
      {
        v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C38]];
      }

      else
      {
        v16 = 0;
      }

      v17 = [(UIView *)self->_grayscaleTintView layer];
      [v17 setCompositingFilter:v16];

      if (v15)
      {
      }

      [(UIView *)self->_colorTintView setBackgroundColor:*(v5 + 16)];
      [(UIView *)self->_colorTintView setAlpha:v5[17]];
      [(_UIBackdropView *)self setColorTintMaskImage:*(v5 + 19)];
      v18 = v5[18];
      v19 = [(UIView *)self->_colorTintView layer];
      v20 = [v19 mask];
      *&v21 = v18;
      [v20 setOpacity:v21];

      v22 = [UIColor colorWithWhite:v5[20] alpha:1.0];
      [(UIView *)self->_colorBurnTintView setBackgroundColor:v22];

      [(UIView *)self->_colorBurnTintView setAlpha:v5[21]];
      [(_UIBackdropView *)self setColorBurnTintMaskImage:*(v5 + 22)];
      [(UIView *)self->_darkeningTintView setAlpha:v5[23]];
      v23 = [UIColor colorWithHue:v5[24] saturation:v5[25] brightness:v5[26] alpha:1.0];
      [(UIView *)self->_darkeningTintView setBackgroundColor:v23];

      [(_UIBackdropView *)self setDarkeningTintMaskImage:*(v5 + 27)];
      v24 = MEMORY[0x1E69798C8];
      if (!*(v5 + 224))
      {
        v24 = MEMORY[0x1E69798C0];
      }

      v25 = [MEMORY[0x1E6979378] filterWithType:*v24];
      v26 = [(UIView *)self->_darkeningTintView layer];
      [v26 setCompositingFilter:v25];

      [(_UIBackdropView *)self setBlurFilterWithRadius:*(v5 + 30) blurQuality:v5[29]];
      [(_UIBackdropView *)self setSaturationDeltaFactor:v5[31]];
      [(_UIBackdropView *)self setFilterMaskImage:*(v5 + 33)];
      v27 = [(UIView *)self->_backdropEffectView layer];
      v28 = v5[32];
      v29 = [v27 mask];
      *&v30 = v28;
      [v29 setOpacity:v30];

      v31 = v5[10];
      v32 = [(_UIBackdropView *)self backdropEffectView];
      [v32 setZoom:v31];

      if (self->_transitioningBetweenMaterialsRequiringRasterizationAndAlphaHack)
      {
        +[UIView _currentAnimationDuration];
        v7 = "_UIMonochromaticTreatment";
        if (v33 <= 0.0)
        {
          v36 = 0.075;
          v35 = 0.025;
        }

        else
        {
          v34 = v33 * 60.0;
          v35 = 1.0 / v34;
          v36 = 2.0 / v34;
        }

        v37 = v5[10];
        v38 = [(_UIBackdropView *)self backdropEffectView];
        v39 = v38;
        if (v37 <= 0.0)
        {
          [v38 setAlpha:1.0];

          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __33___UIBackdropView_applySettings___block_invoke_3;
          v47[3] = &unk_1E70F6848;
          *&v47[5] = v35;
          *&v47[6] = v36;
          v47[4] = self;
          v40 = v47;
        }

        else
        {
          [v38 setAlpha:0.0];

          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __33___UIBackdropView_applySettings___block_invoke;
          v48[3] = &unk_1E70F6848;
          *&v48[5] = v35;
          *&v48[6] = v36;
          v48[4] = self;
          v40 = v48;
        }

        [UIView animateKeyframesWithDuration:0 delay:v40 options:0 animations:0.0 completion:0.0];
      }

      else
      {
        v46[0] = MEMORY[0x1E69E9820];
        v7 = "_UIMonochromaticTreatment";
        v46[1] = 3221225472;
        v46[2] = __33___UIBackdropView_applySettings___block_invoke_5;
        v46[3] = &unk_1E70F3590;
        v46[4] = self;
        [UIView performWithoutAnimation:v46];
      }

      if (!self->_applyingTransition)
      {
LABEL_31:
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = *(v7 + 235);
        v44[2] = __33___UIBackdropView_applySettings___block_invoke_6;
        v44[3] = &unk_1E70F35B8;
        v44[4] = self;
        v41 = v5;
        v45 = v41;
        [UIView performWithoutAnimation:v44];
        if (!self->_transitioningBetweenMaterialsRequiringRasterizationAndAlphaHack)
        {
          v42 = v41[36];
          v43 = [(_UIBackdropEffectView *)self->_backdropEffectView backdropLayer];
          [v43 setScale:v42];
        }
      }
    }

    else
    {
      NSLog(&cfstr_WarningTriedTo_0.isa, self->_style, v6);
    }
  }

  else
  {
    NSLog(&cfstr_WarningTriedTo.isa, self);
  }
}

- (void)setTintOpacity:(double)a3
{
  v18 = [(_UIBackdropView *)self inputSettings];
  v5 = [v18 lightenGrayscaleWithSourceOver];
  v6 = 1.0;
  if (v5)
  {
    [v18 grayscaleTintAlpha];
  }

  v7 = v6 * a3;
  v8 = [(_UIBackdropView *)self grayscaleTintView];
  [v8 setAlpha:v7];

  [v18 colorTintAlpha];
  v10 = v9 * a3;
  v11 = [(_UIBackdropView *)self colorTintView];
  [v11 setAlpha:v10];

  [v18 colorBurnTintAlpha];
  v13 = v12 * a3;
  v14 = [(_UIBackdropView *)self colorBurnTintView];
  [v14 setAlpha:v13];

  [v18 darkeningTintAlpha];
  v16 = v15 * a3;
  v17 = [(_UIBackdropView *)self darkeningTintView];
  [v17 setAlpha:v16];
}

@end