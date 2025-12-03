@interface _UIBackdropView
+ (id)allBackdropViews;
+ (void)adjustGraphicsQualityForAccessibilityIfNeeded:(id)needed;
+ (void)setAllBackdropViewsToGraphicsQuality:(int64_t)quality;
- (BOOL)requiresTintViews;
- (UIView)contentView;
- (_UIBackdropView)initWithFrame:(CGRect)frame autosizesToFitSuperview:(BOOL)superview settings:(id)settings;
- (_UIBackdropView)initWithFrame:(CGRect)frame privateStyle:(int64_t)style;
- (_UIBackdropView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (_UIBackdropView)initWithPrivateStyle:(int64_t)style;
- (_UIBackdropView)initWithStyle:(int64_t)style;
- (id)filters;
- (void)_applyCornerRadiusToSubviews;
- (void)_setBlursBackground:(BOOL)background;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)_transitionToGraphicsQuality:(int64_t)quality;
- (void)_updateBackdropGroupName;
- (void)_updateFilters;
- (void)addBackdropEffectViewIfNeededForSettings:(id)settings;
- (void)addColorBurnTintViewIfNeededForSettings:(id)settings;
- (void)addColorTintViewIfNeededForSettings:(id)settings;
- (void)addContentViewIfNeededForSettings:(id)settings;
- (void)addDarkeningTintViewIfNeededForSettings:(id)settings;
- (void)addGrayscaleTintViewIfNeededForSettings:(id)settings;
- (void)addObserver:(id)observer;
- (void)adjustTintImplementationIfNeeded:(id)needed;
- (void)applySettings:(id)settings;
- (void)applySettingsWithBuiltInAnimation:(id)animation;
- (void)computeAndApplySettingsForTransition;
- (void)dealloc;
- (void)didCallRenderInContextOnBackdropViewLayer;
- (void)didMoveToSuperview;
- (void)ensureProperSubviewOrdering;
- (void)layoutSubviews;
- (void)prepareForTransitionToSettings:(id)settings;
- (void)removeMaskViews;
- (void)removeObserver:(id)observer;
- (void)setAppliesOutputSettingsAutomatically:(BOOL)automatically;
- (void)setBackdropVisible:(BOOL)visible;
- (void)setBlurFilterWithRadius:(double)radius blurQuality:(id)quality;
- (void)setBlurQuality:(id)quality;
- (void)setBlurRadius:(double)radius;
- (void)setColorBurnTintMaskImage:(id)image;
- (void)setColorOffsetFilterForSettings:(id)settings;
- (void)setColorTintMaskImage:(id)image;
- (void)setConfiguration:(int64_t)configuration;
- (void)setDarkeningTintMaskImage:(id)image;
- (void)setFilterMaskImage:(id)image;
- (void)setGrayscaleTintMaskImage:(id)image;
- (void)setGroupName:(id)name;
- (void)setInputSettings:(id)settings;
- (void)setMaskImage:(id)image onLayer:(id)layer;
- (void)setMaskMode:(int64_t)mode;
- (void)setObserver:(id)observer;
- (void)setOutputSettings:(id)settings;
- (void)setSaturationDeltaFactor:(double)factor;
- (void)setShouldRasterizeEffectsView:(BOOL)view;
- (void)setTintFilterForSettings:(id)settings;
- (void)setTintOpacity:(double)opacity;
- (void)setUsesZoom;
- (void)settingsDidChange:(id)change;
- (void)transitionComplete;
- (void)transitionIncrementallyToSettings:(id)settings weighting:(double)weighting;
- (void)transitionIncrementallyToStyle:(int64_t)style weighting:(double)weighting;
- (void)transitionToColor:(id)color;
- (void)transitionToSettings:(id)settings;
- (void)transitionToStyle:(int64_t)style;
- (void)updateMaskViewForView:(id)view flag:(int64_t)flag;
- (void)updateMaskViewsForView:(id)view;
- (void)updateSubviewHierarchyIfNeededForSettings:(id)settings;
- (void)willCallRenderInContextOnBackdropViewLayer;
@end

@implementation _UIBackdropView

- (void)ensureProperSubviewOrdering
{
  backdropEffectView = [(_UIBackdropView *)self backdropEffectView];
  if (backdropEffectView)
  {
    v4 = backdropEffectView;
    backdropEffectView2 = [(_UIBackdropView *)self backdropEffectView];
    superview = [backdropEffectView2 superview];

    if (!superview)
    {
      backdropEffectView3 = [(_UIBackdropView *)self backdropEffectView];
      [(UIView *)self addSubview:backdropEffectView3];

      inputSettings = [(_UIBackdropView *)self inputSettings];
      isBackdropVisible = [inputSettings isBackdropVisible];

      if ((isBackdropVisible & 1) == 0)
      {
        [(_UIBackdropView *)self setBackdropVisibilitySetOnce:0];
        [(_UIBackdropView *)self setBackdropVisible:0];
      }
    }
  }

  grayscaleTintView = [(_UIBackdropView *)self grayscaleTintView];
  if (grayscaleTintView)
  {
    v11 = grayscaleTintView;
    grayscaleTintView2 = [(_UIBackdropView *)self grayscaleTintView];
    superview2 = [grayscaleTintView2 superview];

    if (!superview2)
    {
      grayscaleTintView3 = [(_UIBackdropView *)self grayscaleTintView];
      [(UIView *)self addSubview:grayscaleTintView3];
    }
  }

  colorTintView = [(_UIBackdropView *)self colorTintView];
  if (colorTintView)
  {
    v16 = colorTintView;
    colorTintView2 = [(_UIBackdropView *)self colorTintView];
    superview3 = [colorTintView2 superview];

    if (!superview3)
    {
      colorTintView3 = [(_UIBackdropView *)self colorTintView];
      [(UIView *)self addSubview:colorTintView3];
    }
  }

  colorBurnTintView = [(_UIBackdropView *)self colorBurnTintView];
  if (colorBurnTintView)
  {
    v21 = colorBurnTintView;
    colorBurnTintView2 = [(_UIBackdropView *)self colorBurnTintView];
    superview4 = [colorBurnTintView2 superview];

    if (!superview4)
    {
      colorBurnTintView3 = [(_UIBackdropView *)self colorBurnTintView];
      [(UIView *)self addSubview:colorBurnTintView3];
    }
  }

  darkeningTintView = [(_UIBackdropView *)self darkeningTintView];
  if (darkeningTintView)
  {
    v26 = darkeningTintView;
    darkeningTintView2 = [(_UIBackdropView *)self darkeningTintView];
    superview5 = [darkeningTintView2 superview];

    if (!superview5)
    {
      darkeningTintView3 = [(_UIBackdropView *)self darkeningTintView];
      [(UIView *)self addSubview:darkeningTintView3];
    }
  }

  contentView = self->_contentView;
  if (contentView)
  {
    superview6 = [(UIView *)contentView superview];

    if (!superview6)
    {
      [(UIView *)self addSubview:self->_contentView];
    }
  }

  [(UIView *)self setNeedsLayout];
  backdropEffectView4 = [(_UIBackdropView *)self backdropEffectView];

  if (backdropEffectView4)
  {
    backdropEffectView5 = [(_UIBackdropView *)self backdropEffectView];
    [(UIView *)self sendSubviewToBack:backdropEffectView5];

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  grayscaleTintView4 = [(_UIBackdropView *)self grayscaleTintView];

  if (grayscaleTintView4)
  {
    subviews = [(UIView *)self subviews];
    grayscaleTintView5 = [(_UIBackdropView *)self grayscaleTintView];
    v38 = [subviews indexOfObject:grayscaleTintView5];

    if (v38 != v34)
    {
      grayscaleTintView6 = [(_UIBackdropView *)self grayscaleTintView];
      [(UIView *)self exchangeSubviewAtIndex:v34 withSubviewAtIndex:grayscaleTintView6];
    }

    ++v34;
  }

  colorTintView4 = [(_UIBackdropView *)self colorTintView];

  if (colorTintView4)
  {
    subviews2 = [(UIView *)self subviews];
    colorTintView5 = [(_UIBackdropView *)self colorTintView];
    v43 = [subviews2 indexOfObject:colorTintView5];

    if (v43 != v34)
    {
      colorTintView6 = [(_UIBackdropView *)self colorTintView];
      [(UIView *)self exchangeSubviewAtIndex:v34 withSubviewAtIndex:colorTintView6];
    }

    ++v34;
  }

  colorBurnTintView4 = [(_UIBackdropView *)self colorBurnTintView];

  if (colorBurnTintView4)
  {
    subviews3 = [(UIView *)self subviews];
    colorBurnTintView5 = [(_UIBackdropView *)self colorBurnTintView];
    v48 = [subviews3 indexOfObject:colorBurnTintView5];

    if (v48 != v34)
    {
      colorBurnTintView6 = [(_UIBackdropView *)self colorBurnTintView];
      [(UIView *)self exchangeSubviewAtIndex:v34 withSubviewAtIndex:colorBurnTintView6];
    }

    ++v34;
  }

  darkeningTintView4 = [(_UIBackdropView *)self darkeningTintView];

  if (darkeningTintView4)
  {
    subviews4 = [(UIView *)self subviews];
    darkeningTintView5 = [(_UIBackdropView *)self darkeningTintView];
    v53 = [subviews4 indexOfObject:darkeningTintView5];

    if (v53 != v34)
    {
      darkeningTintView6 = [(_UIBackdropView *)self darkeningTintView];
      [(UIView *)self exchangeSubviewAtIndex:v34 withSubviewAtIndex:darkeningTintView6];
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
    subviews = [(UIView *)self subviews];
    v4 = [subviews countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          if (v8 != self->_contentView)
          {
            [(UIView *)v8 _setContinuousCornerRadius:self->_cornerRadius];
          }
        }

        v5 = [subviews countByEnumeratingWithState:&v18 objects:v23 count:16];
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
    subviews = [(UIView *)self subviews];
    v9 = [subviews countByEnumeratingWithState:&v14 objects:v22 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v13 = *(*(&v14 + 1) + 8 * j);
          if (v13 != self->_contentView)
          {
            [(UIView *)v13 _setCornerRadius:self->_cornerRadius];
          }
        }

        v10 = [subviews countByEnumeratingWithState:&v14 objects:v22 count:16];
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
    superview = [(UIView *)self superview];
    [superview frame];
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
    window = [(UIView *)self window];

    if (window)
    {
      traitCollection = [(UIView *)self traitCollection];
      v5 = objc_opt_self();
      v6 = [traitCollection objectForTrait:v5];

      v9 = v6;
    }
  }

  backdropEffectView = [(_UIBackdropView *)self backdropEffectView];
  backdropLayer = [backdropEffectView backdropLayer];
  [backdropLayer setGroupName:v9];
}

- (void)_updateFilters
{
  filters = [(_UIBackdropView *)self filters];
  layer = [(UIView *)self->_backdropEffectView layer];
  [layer setFilters:filters];
}

- (id)filters
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_applySaturationBeforeBlur && self->_colorSaturateFilter)
  {
    [array addObject:?];
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

+ (void)adjustGraphicsQualityForAccessibilityIfNeeded:(id)needed
{
  v4 = _AXSEnhanceBackgroundContrastEnabled() != 0;
  if (_MergedGlobals_69 != v4)
  {
    _MergedGlobals_69 = v4;
    v5 = +[UIDevice currentDevice];
    _graphicsQuality = [v5 _graphicsQuality];

    if (_MergedGlobals_69)
    {
      v7 = 10;
    }

    else
    {
      v7 = _graphicsQuality;
    }

    [self setAllBackdropViewsToGraphicsQuality:v7];
  }
}

+ (void)setAllBackdropViewsToGraphicsQuality:(int64_t)quality
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allBackdropViews = [self allBackdropViews];
  v5 = [allBackdropViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allBackdropViews);
        }

        [*(*(&v9 + 1) + 8 * v8++) _transitionToGraphicsQuality:quality];
      }

      while (v6 != v8);
      v6 = [allBackdropViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_transitionToGraphicsQuality:(int64_t)quality
{
  graphicsQualityChangeDelegate = [(_UIBackdropView *)self graphicsQualityChangeDelegate];

  if (!graphicsQualityChangeDelegate || (-[_UIBackdropView graphicsQualityChangeDelegate](self, "graphicsQualityChangeDelegate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 backdropView:self willChangeToGraphicsQuality:quality], v11 = objc_claimAutoreleasedReturnValue(), v6, (v7 = v11) == 0))
  {
    inputSettings = [(_UIBackdropView *)self inputSettings];
    v12 = [_UIBackdropViewSettings settingsPreservingHintsFromSettings:inputSettings graphicsQuality:quality];

    v7 = v12;
  }

  v13 = v7;
  [(_UIBackdropView *)self transitionToSettings:?];
  graphicsQualityChangeDelegate2 = [(_UIBackdropView *)self graphicsQualityChangeDelegate];

  if (graphicsQualityChangeDelegate2)
  {
    graphicsQualityChangeDelegate3 = [(_UIBackdropView *)self graphicsQualityChangeDelegate];
    [graphicsQualityChangeDelegate3 backdropView:self didChangeToGraphicsQuality:quality];
  }
}

- (_UIBackdropView)initWithFrame:(CGRect)frame autosizesToFitSuperview:(BOOL)superview settings:(id)settings
{
  superviewCopy = superview;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  v29.receiver = self;
  v29.super_class = _UIBackdropView;
  height = [(UIView *)&v29 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    v14 = height;
    v15 = _UIBackdropViewQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___AddToAllBackdropViews_block_invoke;
    block[3] = &unk_1E70F3590;
    v31 = v14;
    v16 = v14;
    dispatch_sync(v15, block);

    backdropViewLayer = [(_UIBackdropView *)v16 backdropViewLayer];
    [backdropViewLayer setBackdropView:v16];

    [(_UIBackdropView *)v16 setAutosizesToFitSuperview:superviewCopy];
    if ([(_UIBackdropView *)v16 autosizesToFitSuperview])
    {
      [(UIView *)v16 setAutoresizingMask:18];
    }

    if (!settingsCopy)
    {
      NSLog(&cfstr_WarningCalling_0.isa);
      settingsCopy = objc_alloc_init(+[_UIBackdropView defaultSettingsClass]);
    }

    v18 = _AXSEnhanceBackgroundContrastEnabled();
    _MergedGlobals_69 = v18 != 0;
    if (v18)
    {
      v19 = [_UIBackdropViewSettings settingsPreservingHintsFromSettings:settingsCopy graphicsQuality:10];

      settingsCopy = v19;
    }

    [(_UIBackdropView *)v16 setInputSettings:settingsCopy];
    if ([settingsCopy style])
    {
      v20 = +[_UIBackdropViewSettings settingsForStyle:](_UIBackdropViewSettings, "settingsForStyle:", [settingsCopy style]);
    }

    else
    {
      v20 = objc_alloc_init(objc_opt_class());
    }

    v21 = v20;
    [(_UIBackdropView *)v16 setOutputSettings:v20];

    -[_UIBackdropView setStyle:](v16, "setStyle:", [settingsCopy style]);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(_UIBackdropView *)v16 setObservers:weakObjectsHashTable];

    [(UIView *)v16 setOpaque:0];
    [(UIView *)v16 setUserInteractionEnabled:0];
    [(_UIBackdropView *)v16 setAppliesOutputSettingsAnimationDuration:0.25];
    layer = [(UIView *)v16 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(UIView *)v16 layer];
    [layer2 setAllowsGroupOpacity:0];

    inputSettings = [(_UIBackdropView *)v16 inputSettings];
    [(_UIBackdropView *)v16 updateSubviewHierarchyIfNeededForSettings:inputSettings];

    inputSettings2 = [(_UIBackdropView *)v16 inputSettings];
    [(_UIBackdropView *)v16 applySettings:inputSettings2];

    v27 = v16;
  }

  return v13;
}

- (_UIBackdropView)initWithStyle:(int64_t)style
{
  v4 = [_UIBackdropViewSettings settingsForStyle:style];
  v5 = [(_UIBackdropView *)self initWithFrame:1 autosizesToFitSuperview:v4 settings:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v5;
}

- (_UIBackdropView)initWithPrivateStyle:(int64_t)style
{
  v4 = [_UIBackdropViewSettings settingsForStyle:style];
  v5 = [(_UIBackdropView *)self initWithFrame:1 autosizesToFitSuperview:v4 settings:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v5;
}

- (_UIBackdropView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [_UIBackdropViewSettings settingsForStyle:style];
  height = [(_UIBackdropView *)self initWithFrame:0 autosizesToFitSuperview:v9 settings:x, y, width, height];

  return height;
}

- (_UIBackdropView)initWithFrame:(CGRect)frame privateStyle:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [_UIBackdropViewSettings settingsForStyle:style];
  height = [(_UIBackdropView *)self initWithFrame:0 autosizesToFitSuperview:v9 settings:x, y, width, height];

  return height;
}

- (void)dealloc
{
  v14[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = _UIBackdropViewQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___RemoveFromAllBackdropViews_block_invoke;
  block[3] = &unk_1E70F3590;
  v13 = selfCopy;
  v4 = selfCopy;
  dispatch_sync(v3, block);

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  computeAndApplySettingsNotificationObserver = [(_UIBackdropView *)v4 computeAndApplySettingsNotificationObserver];

  if (computeAndApplySettingsNotificationObserver)
  {
    computeAndApplySettingsNotificationObserver2 = [(_UIBackdropView *)v4 computeAndApplySettingsNotificationObserver];
    [defaultCenter removeObserver:computeAndApplySettingsNotificationObserver2];

    computeAndApplySettingsNotificationObserver = v4->_computeAndApplySettingsNotificationObserver;
    v4->_computeAndApplySettingsNotificationObserver = 0;
  }

  v14[0] = @"UIApplicationDidBecomeActiveNotification";
  v14[1] = @"UIAccessibilityReduceTransparencyStatusDidChangeNotification";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:v9];

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

- (void)setGroupName:(id)name
{
  if (self->_groupName != name)
  {
    v4 = [name copy];
    groupName = self->_groupName;
    self->_groupName = v4;
  }

  [(_UIBackdropView *)self _updateBackdropGroupName];
}

- (void)_setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    self->_cornerRadiusIsContinuous = 0;
    [(_UIBackdropView *)self _applyCornerRadiusToSubviews];
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    self->_cornerRadiusIsContinuous = 1;
    [(_UIBackdropView *)self _applyCornerRadiusToSubviews];
  }
}

- (void)setInputSettings:(id)settings
{
  settingsCopy = settings;
  [(_UIBackdropViewSettings *)self->_inputSettings setBackdrop:0];
  inputSettings = self->_inputSettings;
  self->_inputSettings = settingsCopy;
  v6 = settingsCopy;

  [(_UIBackdropViewSettings *)self->_inputSettings setBackdrop:self];
}

- (void)setOutputSettings:(id)settings
{
  settingsCopy = settings;
  [(_UIBackdropViewSettings *)self->_outputSettings setBackdrop:0];
  outputSettings = self->_outputSettings;
  self->_outputSettings = settingsCopy;
  v6 = settingsCopy;

  [(_UIBackdropViewSettings *)self->_outputSettings setBackdrop:self];
}

- (void)settingsDidChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  outputSettings = [(_UIBackdropView *)self outputSettings];

  if (outputSettings != changeCopy)
  {
    inputSettings = [(_UIBackdropView *)self inputSettings];

    if (inputSettings == changeCopy && ![(_UIBackdropView *)self applyingBackdropChanges])
    {
      if ([(_UIBackdropView *)self appliesOutputSettingsAutomatically])
      {
        inputSettings2 = [(_UIBackdropView *)self inputSettings];

        if (inputSettings2 == changeCopy)
        {
          outputSettings2 = [(_UIBackdropView *)self outputSettings];
          inputSettings3 = [(_UIBackdropView *)self inputSettings];
          [outputSettings2 computeOutputSettingsUsingModel:inputSettings3];
        }

        outputSettings3 = [(_UIBackdropView *)self outputSettings];
        [(_UIBackdropView *)self applySettingsWithBuiltInAnimation:outputSettings3];
      }

      [(_UIBackdropView *)self updateSubviewHierarchyIfNeededForSettings:changeCopy];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      observers = [(_UIBackdropView *)self observers];
      v12 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(observers);
            }

            [*(*(&v16 + 1) + 8 * v15++) backdropViewDidChange:self];
          }

          while (v13 != v15);
          v13 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)setShouldRasterizeEffectsView:(BOOL)view
{
  viewCopy = view;
  if ([(_UIBackdropViewSettings *)self->_inputSettings zoomsBack])
  {
    v5 = 1;
  }

  else
  {
    backdropEffectView = [(_UIBackdropView *)self backdropEffectView];
    layer = [backdropEffectView layer];
    meshTransform = [layer meshTransform];
    v5 = meshTransform != 0;
  }

  backdropEffectView2 = [(_UIBackdropView *)self backdropEffectView];
  backdropLayer = [backdropEffectView2 backdropLayer];
  [backdropLayer setShouldRasterize:v5 | viewCopy];
}

- (void)willCallRenderInContextOnBackdropViewLayer
{
  inputSettings = [(_UIBackdropView *)self inputSettings];
  graphicsQuality = [inputSettings graphicsQuality];

  if (graphicsQuality != 10)
  {
    inputSettings2 = [(_UIBackdropView *)self inputSettings];
    combinedTintColor = [inputSettings2 combinedTintColor];
    v6 = [combinedTintColor colorWithAlphaComponent:1.0];
    [(UIView *)self setBackgroundColor:v6];
  }
}

- (void)didCallRenderInContextOnBackdropViewLayer
{
  inputSettings = [(_UIBackdropView *)self inputSettings];
  graphicsQuality = [inputSettings graphicsQuality];

  if (graphicsQuality != 10)
  {

    [(UIView *)self setBackgroundColor:0];
  }
}

- (void)setObserver:(id)observer
{
  observer = self->_observer;
  observerCopy = observer;
  [(_UIBackdropView *)self removeObserver:observer];
  self->_observer = observerCopy;
  [(_UIBackdropView *)self addObserver:?];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(_UIBackdropView *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(_UIBackdropView *)self observers];
  [observers removeObject:observerCopy];
}

- (void)setAppliesOutputSettingsAutomatically:(BOOL)automatically
{
  self->_appliesOutputSettingsAutomatically = automatically;
  if (automatically)
  {
    inputSettings = [(_UIBackdropView *)self inputSettings];
    requiresColorStatistics = [inputSettings requiresColorStatistics];
  }

  else
  {
    if (![(_UIBackdropView *)self appliesOutputSettingsAutomaticallyEnabledComputesColorSettings])
    {
      return;
    }

    requiresColorStatistics = 0;
  }

  [(_UIBackdropView *)self setComputesColorSettings:requiresColorStatistics];

  [(_UIBackdropView *)self setAppliesOutputSettingsAutomaticallyEnabledComputesColorSettings:requiresColorStatistics];
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
  subviews = [(UIView *)self subviews];
  v12 = [subviews countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        [v16 setFrame:{v4, v6, v8, v10}];
        layer = [v16 layer];
        mask = [layer mask];
        [mask setFrame:{v4, v6, v8, v10}];

        [v16 setNeedsDisplay];
      }

      v13 = [subviews countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v13);
  }

  if ([(_UIBackdropView *)self applySettingsAfterLayout])
  {
    [(_UIBackdropView *)self setApplySettingsAfterLayout:0];
    outputSettings = [(_UIBackdropView *)self outputSettings];
    inputSettings = [(_UIBackdropView *)self inputSettings];
    [outputSettings computeOutputSettingsUsingModel:inputSettings];

    outputSettings2 = [(_UIBackdropView *)self outputSettings];
    [(_UIBackdropView *)self applySettings:outputSettings2];

    outputSettings3 = [(_UIBackdropView *)self outputSettings];
    [(_UIBackdropView *)self adjustTintImplementationIfNeeded:outputSettings3];
  }
}

- (void)setMaskImage:(id)image onLayer:(id)layer
{
  imageCopy = image;
  layerCopy = layer;
  v7 = layerCopy;
  if (layerCopy)
  {
    mask = [layerCopy mask];
    contents = [mask contents];

    if (contents != imageCopy)
    {
      mask2 = [v7 mask];
      v11 = imageCopy;
      if (imageCopy)
      {
        if (!mask2)
        {
          mask2 = [MEMORY[0x1E6979398] layer];
          [v7 setMask:mask2];
          [mask2 setDelegate:self];
          v11 = imageCopy;
        }

        [mask2 setContents:{objc_msgSend(v11, "CGImage")}];
        [(UIView *)self setNeedsLayout];
      }

      else
      {
        [v7 setMask:0];
      }
    }
  }
}

- (void)setFilterMaskImage:(id)image
{
  objc_storeStrong(&self->_filterMaskImage, image);
  imageCopy = image;
  backdropEffectView = [(_UIBackdropView *)self backdropEffectView];
  layer = [backdropEffectView layer];
  [(_UIBackdropView *)self setMaskImage:imageCopy onLayer:layer];
}

- (void)setGrayscaleTintMaskImage:(id)image
{
  objc_storeStrong(&self->_grayscaleTintMaskImage, image);
  imageCopy = image;
  grayscaleTintView = [(_UIBackdropView *)self grayscaleTintView];
  layer = [grayscaleTintView layer];
  [(_UIBackdropView *)self setMaskImage:imageCopy onLayer:layer];
}

- (void)setColorTintMaskImage:(id)image
{
  objc_storeStrong(&self->_colorTintMaskImage, image);
  imageCopy = image;
  colorTintView = [(_UIBackdropView *)self colorTintView];
  layer = [colorTintView layer];
  [(_UIBackdropView *)self setMaskImage:imageCopy onLayer:layer];
}

- (void)setColorBurnTintMaskImage:(id)image
{
  objc_storeStrong(&self->_colorBurnTintMaskImage, image);
  imageCopy = image;
  colorBurnTintView = [(_UIBackdropView *)self colorBurnTintView];
  layer = [colorBurnTintView layer];
  [(_UIBackdropView *)self setMaskImage:imageCopy onLayer:layer];
}

- (void)setDarkeningTintMaskImage:(id)image
{
  objc_storeStrong(&self->_darkeningTintMaskImage, image);
  imageCopy = image;
  darkeningTintView = [(_UIBackdropView *)self darkeningTintView];
  layer = [darkeningTintView layer];
  [(_UIBackdropView *)self setMaskImage:imageCopy onLayer:layer];
}

- (void)updateMaskViewForView:(id)view flag:(int64_t)flag
{
  viewCopy = view;
  if (flag <= 3)
  {
    if (flag == 1)
    {
      grayscaleTintMaskViewMap = [(_UIBackdropView *)self grayscaleTintMaskViewMap];
      grayscaleTintMaskViewContainer = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];
      grayscaleTintView = [(_UIBackdropView *)self grayscaleTintView];
    }

    else
    {
      if (flag != 2)
      {
        goto LABEL_66;
      }

      grayscaleTintMaskViewMap = [(_UIBackdropView *)self colorTintMaskViewMap];
      grayscaleTintMaskViewContainer = [(_UIBackdropView *)self colorTintMaskViewContainer];
      grayscaleTintView = [(_UIBackdropView *)self colorTintView];
    }
  }

  else
  {
    switch(flag)
    {
      case 4:
        grayscaleTintMaskViewMap = [(_UIBackdropView *)self filterMaskViewMap];
        grayscaleTintMaskViewContainer = [(_UIBackdropView *)self filterMaskViewContainer];
        grayscaleTintView = [(_UIBackdropView *)self backdropEffectView];
        break;
      case 8:
        grayscaleTintMaskViewMap = [(_UIBackdropView *)self colorBurnTintMaskViewMap];
        grayscaleTintMaskViewContainer = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];
        grayscaleTintView = [(_UIBackdropView *)self colorBurnTintView];
        break;
      case 16:
        grayscaleTintMaskViewMap = [(_UIBackdropView *)self darkeningTintMaskViewMap];
        grayscaleTintMaskViewContainer = [(_UIBackdropView *)self darkeningTintMaskViewContainer];
        grayscaleTintView = [(_UIBackdropView *)self darkeningTintView];
        break;
      default:
        goto LABEL_66;
    }
  }

  v9 = grayscaleTintView;
  v10 = [viewCopy _backdropMaskViewForFlag:flag];
  v11 = [viewCopy _generateBackdropMaskViewForFlag:flag];
  v12 = [MEMORY[0x1E696B098] valueWithPointer:viewCopy];
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
    [grayscaleTintMaskViewMap removeObjectForKey:v12];
  }

  if (v11)
  {
    if (!grayscaleTintMaskViewMap)
    {
      grayscaleTintMaskViewMap = [MEMORY[0x1E695DF90] dictionary];
    }

    v32 = v12;
    if (!grayscaleTintMaskViewContainer && v9)
    {
      v14 = [UIView alloc];
      [(UIView *)self bounds];
      grayscaleTintMaskViewContainer = [(UIView *)v14 initWithFrame:?];
      if (![(_UIBackdropView *)self maskMode])
      {
        v15 = +[UIColor blackColor];
        [(UIView *)grayscaleTintMaskViewContainer setBackgroundColor:v15];
      }

      [(UIView *)grayscaleTintMaskViewContainer setOpaque:0, v32];
      [(UIView *)grayscaleTintMaskViewContainer setUserInteractionEnabled:0];
      [(UIView *)grayscaleTintMaskViewContainer setAutoresizingMask:18];
      [v9 _setMaskView:grayscaleTintMaskViewContainer];
      [v9 setNeedsLayout];
    }

    [(UIView *)grayscaleTintMaskViewContainer addSubview:v11, v32];
    superview = [viewCopy superview];
    contentView = self->_contentView;

    v18 = !v13;
    if (superview == contentView)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      [v11 bounds];
      [(UIView *)self convertRect:viewCopy fromView:?];
      [v11 setFrame:?];
    }

    v12 = v33;
    [grayscaleTintMaskViewMap setObject:v11 forKey:v33];
    if (![(_UIBackdropView *)self maskMode])
    {
      v19 = *MEMORY[0x1E6979D58];
      layer = [v11 layer];
      v21 = v19;
      v12 = v33;
      [layer setCompositingFilter:v21];
    }

    if (flag <= 3)
    {
      if (flag == 1)
      {
        grayscaleTintMaskViewMap2 = [(_UIBackdropView *)self grayscaleTintMaskViewMap];

        if (!grayscaleTintMaskViewMap2 && grayscaleTintMaskViewMap)
        {
          [(_UIBackdropView *)self setGrayscaleTintMaskViewMap:grayscaleTintMaskViewMap];
        }

        grayscaleTintMaskViewContainer2 = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];

        if (grayscaleTintMaskViewContainer && !grayscaleTintMaskViewContainer2)
        {
          [(_UIBackdropView *)self setGrayscaleTintMaskViewContainer:grayscaleTintMaskViewContainer];
        }
      }

      else
      {
        colorTintMaskViewMap = [(_UIBackdropView *)self colorTintMaskViewMap];

        if (!colorTintMaskViewMap && grayscaleTintMaskViewMap)
        {
          [(_UIBackdropView *)self setColorTintMaskViewMap:grayscaleTintMaskViewMap];
        }

        colorTintMaskViewContainer = [(_UIBackdropView *)self colorTintMaskViewContainer];

        if (grayscaleTintMaskViewContainer && !colorTintMaskViewContainer)
        {
          [(_UIBackdropView *)self setColorTintMaskViewContainer:grayscaleTintMaskViewContainer];
        }
      }
    }

    else if (flag == 4)
    {
      filterMaskViewMap = [(_UIBackdropView *)self filterMaskViewMap];

      if (!filterMaskViewMap && grayscaleTintMaskViewMap)
      {
        [(_UIBackdropView *)self setFilterMaskViewMap:grayscaleTintMaskViewMap];
      }

      filterMaskViewContainer = [(_UIBackdropView *)self filterMaskViewContainer];

      if (grayscaleTintMaskViewContainer && !filterMaskViewContainer)
      {
        [(_UIBackdropView *)self setFilterMaskViewContainer:grayscaleTintMaskViewContainer];
      }
    }

    else if (flag == 8)
    {
      colorBurnTintMaskViewMap = [(_UIBackdropView *)self colorBurnTintMaskViewMap];

      if (!colorBurnTintMaskViewMap && grayscaleTintMaskViewMap)
      {
        [(_UIBackdropView *)self setColorBurnTintMaskViewMap:grayscaleTintMaskViewMap];
      }

      colorBurnTintMaskViewContainer = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];

      if (grayscaleTintMaskViewContainer && !colorBurnTintMaskViewContainer)
      {
        [(_UIBackdropView *)self setColorBurnTintMaskViewContainer:grayscaleTintMaskViewContainer];
      }
    }

    else
    {
      darkeningTintMaskViewMap = [(_UIBackdropView *)self darkeningTintMaskViewMap];

      if (!darkeningTintMaskViewMap && grayscaleTintMaskViewMap)
      {
        [(_UIBackdropView *)self setDarkeningTintMaskViewMap:grayscaleTintMaskViewMap];
      }

      darkeningTintMaskViewContainer = [(_UIBackdropView *)self darkeningTintMaskViewContainer];

      if (grayscaleTintMaskViewContainer && !darkeningTintMaskViewContainer)
      {
        [(_UIBackdropView *)self setDarkeningTintMaskViewContainer:grayscaleTintMaskViewContainer];
      }
    }
  }

LABEL_66:
}

- (void)updateMaskViewsForView:(id)view
{
  viewCopy = view;
  simulatesMasks = [(_UIBackdropView *)self simulatesMasks];
  _backdropMaskViewFlags = [viewCopy _backdropMaskViewFlags];
  if (simulatesMasks)
  {
    if (_backdropMaskViewFlags)
    {
      [(_UIBackdropView *)self applyOverlayBlendModeToView:viewCopy];
    }

    else
    {
      [(_UIBackdropView *)self removeOverlayBlendModeFromView:viewCopy];
    }
  }

  else if (_backdropMaskViewFlags || ([viewCopy _backdropMaskViews], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    if (![(_UIBackdropView *)self updateMaskViewsForViewReentrancyGuard])
    {
      [(_UIBackdropView *)self setUpdateMaskViewsForViewReentrancyGuard:1];
      _backdropMaskViewFlags2 = [viewCopy _backdropMaskViewFlags];
      _backdropMaskViewFlags3 = [viewCopy _backdropMaskViewFlags];
      v10 = [MEMORY[0x1E696B098] valueWithPointer:viewCopy];
      partialMaskViews = [(_UIBackdropView *)self partialMaskViews];
      partialMaskViews2 = partialMaskViews;
      if (_backdropMaskViewFlags2 == 7 || !_backdropMaskViewFlags3)
      {
        [partialMaskViews removeObject:v10];
      }

      else
      {

        if (!partialMaskViews2)
        {
          v13 = [MEMORY[0x1E695DFA8] set];
          [(_UIBackdropView *)self setPartialMaskViews:v13];
        }

        partialMaskViews2 = [(_UIBackdropView *)self partialMaskViews];
        [partialMaskViews2 addObject:v10];
      }

      [(_UIBackdropView *)self updateMaskViewForView:viewCopy flag:1];
      [(_UIBackdropView *)self updateMaskViewForView:viewCopy flag:2];
      [(_UIBackdropView *)self updateMaskViewForView:viewCopy flag:8];
      [(_UIBackdropView *)self updateMaskViewForView:viewCopy flag:16];
      [(_UIBackdropView *)self updateMaskViewForView:viewCopy flag:4];
      superview = [viewCopy superview];
      if (superview)
      {
        v15 = superview;
        do
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 _addScrollViewScrollObserver:viewCopy];
          }

          superview2 = [v15 superview];

          v15 = superview2;
        }

        while (superview2);
      }

      [(_UIBackdropView *)self setUpdateMaskViewsForViewReentrancyGuard:0];
    }
  }
}

- (void)setMaskMode:(int64_t)mode
{
  v73 = *MEMORY[0x1E69E9840];
  if (![(_UIBackdropView *)self simulatesMasks])
  {
    maskMode = self->_maskMode;
    self->_maskMode = mode;
    if (maskMode != mode)
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

      grayscaleTintMaskViewContainer = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];
      [grayscaleTintMaskViewContainer setBackgroundColor:v7];

      colorTintMaskViewContainer = [(_UIBackdropView *)self colorTintMaskViewContainer];
      [colorTintMaskViewContainer setBackgroundColor:v7];

      colorBurnTintMaskViewContainer = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];
      [colorBurnTintMaskViewContainer setBackgroundColor:v7];

      darkeningTintMaskViewContainer = [(_UIBackdropView *)self darkeningTintMaskViewContainer];
      [darkeningTintMaskViewContainer setBackgroundColor:v7];

      filterMaskViewContainer = [(_UIBackdropView *)self filterMaskViewContainer];
      [filterMaskViewContainer setBackgroundColor:v7];

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      grayscaleTintMaskViewMap = [(_UIBackdropView *)self grayscaleTintMaskViewMap];
      allValues = [grayscaleTintMaskViewMap allValues];

      v15 = [allValues countByEnumeratingWithState:&v64 objects:v72 count:16];
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
              objc_enumerationMutation(allValues);
            }

            layer = [*(*(&v64 + 1) + 8 * i) layer];
            [layer setCompositingFilter:v6];
          }

          v16 = [allValues countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v16);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      colorTintMaskViewMap = [(_UIBackdropView *)self colorTintMaskViewMap];
      allValues2 = [colorTintMaskViewMap allValues];

      v22 = [allValues2 countByEnumeratingWithState:&v60 objects:v71 count:16];
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
              objc_enumerationMutation(allValues2);
            }

            layer2 = [*(*(&v60 + 1) + 8 * j) layer];
            [layer2 setCompositingFilter:v6];
          }

          v23 = [allValues2 countByEnumeratingWithState:&v60 objects:v71 count:16];
        }

        while (v23);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      colorBurnTintMaskViewMap = [(_UIBackdropView *)self colorBurnTintMaskViewMap];
      allValues3 = [colorBurnTintMaskViewMap allValues];

      v29 = [allValues3 countByEnumeratingWithState:&v56 objects:v70 count:16];
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
              objc_enumerationMutation(allValues3);
            }

            layer3 = [*(*(&v56 + 1) + 8 * k) layer];
            [layer3 setCompositingFilter:v6];
          }

          v30 = [allValues3 countByEnumeratingWithState:&v56 objects:v70 count:16];
        }

        while (v30);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      darkeningTintMaskViewMap = [(_UIBackdropView *)self darkeningTintMaskViewMap];
      allValues4 = [darkeningTintMaskViewMap allValues];

      v36 = [allValues4 countByEnumeratingWithState:&v52 objects:v69 count:16];
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
              objc_enumerationMutation(allValues4);
            }

            layer4 = [*(*(&v52 + 1) + 8 * m) layer];
            [layer4 setCompositingFilter:v6];
          }

          v37 = [allValues4 countByEnumeratingWithState:&v52 objects:v69 count:16];
        }

        while (v37);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      filterMaskViewMap = [(_UIBackdropView *)self filterMaskViewMap];
      allValues5 = [filterMaskViewMap allValues];

      v43 = [allValues5 countByEnumeratingWithState:&v48 objects:v68 count:16];
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
              objc_enumerationMutation(allValues5);
            }

            layer5 = [*(*(&v48 + 1) + 8 * n) layer];
            [layer5 setCompositingFilter:v6];
          }

          v44 = [allValues5 countByEnumeratingWithState:&v48 objects:v68 count:16];
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
    grayscaleTintMaskViewContainer = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];
    subviews = [grayscaleTintMaskViewContainer subviews];
    [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

    grayscaleTintMaskViewContainer2 = [(_UIBackdropView *)self grayscaleTintMaskViewContainer];
    [grayscaleTintMaskViewContainer2 removeFromSuperview];

    [(_UIBackdropView *)self setGrayscaleTintMaskViewContainer:0];
    colorTintMaskViewContainer = [(_UIBackdropView *)self colorTintMaskViewContainer];
    subviews2 = [colorTintMaskViewContainer subviews];
    [subviews2 makeObjectsPerformSelector:sel_removeFromSuperview];

    colorTintMaskViewContainer2 = [(_UIBackdropView *)self colorTintMaskViewContainer];
    [colorTintMaskViewContainer2 removeFromSuperview];

    [(_UIBackdropView *)self setColorTintMaskViewContainer:0];
    colorBurnTintMaskViewContainer = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];
    subviews3 = [colorBurnTintMaskViewContainer subviews];
    [subviews3 makeObjectsPerformSelector:sel_removeFromSuperview];

    colorBurnTintMaskViewContainer2 = [(_UIBackdropView *)self colorBurnTintMaskViewContainer];
    [colorBurnTintMaskViewContainer2 removeFromSuperview];

    [(_UIBackdropView *)self setColorBurnTintMaskViewContainer:0];
    darkeningTintMaskViewContainer = [(_UIBackdropView *)self darkeningTintMaskViewContainer];
    subviews4 = [darkeningTintMaskViewContainer subviews];
    [subviews4 makeObjectsPerformSelector:sel_removeFromSuperview];

    darkeningTintMaskViewContainer2 = [(_UIBackdropView *)self darkeningTintMaskViewContainer];
    [darkeningTintMaskViewContainer2 removeFromSuperview];

    [(_UIBackdropView *)self setDarkeningTintMaskViewContainer:0];
    filterMaskViewContainer = [(_UIBackdropView *)self filterMaskViewContainer];
    subviews5 = [filterMaskViewContainer subviews];
    [subviews5 makeObjectsPerformSelector:sel_removeFromSuperview];

    filterMaskViewContainer2 = [(_UIBackdropView *)self filterMaskViewContainer];
    [filterMaskViewContainer2 removeFromSuperview];

    [(_UIBackdropView *)self setFilterMaskViewContainer:0];
    grayscaleTintView = [(_UIBackdropView *)self grayscaleTintView];
    [grayscaleTintView _setMaskView:0];

    colorTintView = [(_UIBackdropView *)self colorTintView];
    [colorTintView _setMaskView:0];

    colorBurnTintView = [(_UIBackdropView *)self colorBurnTintView];
    [colorBurnTintView _setMaskView:0];

    darkeningTintView = [(_UIBackdropView *)self darkeningTintView];
    [darkeningTintView _setMaskView:0];

    backdropEffectView = [(_UIBackdropView *)self backdropEffectView];
    [backdropEffectView _setMaskView:0];
  }
}

- (void)setBlurRadius:(double)radius
{
  if (self->__blurRadius != radius || ![(_UIBackdropView *)self blurRadiusSetOnce])
  {
    [(_UIBackdropView *)self setBlurRadiusSetOnce:1];
    [(_UIBackdropView *)self setBlurFilterWithRadius:@"default" blurQuality:radius];
    self->__blurRadius = radius;
  }
}

- (void)setBlurQuality:(id)quality
{
  if (self->__blurQuality != quality)
  {
    qualityCopy = quality;
    [(_UIBackdropView *)self blurRadius];
    [(_UIBackdropView *)self setBlurFilterWithRadius:qualityCopy blurQuality:?];
    v5 = [qualityCopy copy];

    blurQuality = self->__blurQuality;
    self->__blurQuality = v5;
  }
}

- (void)setBlurFilterWithRadius:(double)radius blurQuality:(id)quality
{
  qualityCopy = quality;
  backdropEffectView = [(_UIBackdropView *)self backdropEffectView];

  if (backdropEffectView)
  {
    if (qword_1ED49AF80 != -1)
    {
      dispatch_once(&qword_1ED49AF80, &__block_literal_global_680);
    }

    if ((byte_1ED49AF59 & 1) == 0)
    {
      gaussianBlurFilter = [(_UIBackdropView *)self gaussianBlurFilter];

      if (gaussianBlurFilter)
      {
LABEL_19:
        if (self->__blurRadius != radius)
        {
          backdropEffectView2 = [(_UIBackdropView *)self backdropEffectView];
          layer = [backdropEffectView2 layer];
          v18 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
          [layer setValue:v18 forKeyPath:@"filters.gaussianBlur.inputRadius"];

          backdropEffectView3 = [(_UIBackdropView *)self backdropEffectView];
          layer2 = [backdropEffectView3 layer];
          v21 = [layer2 valueForKeyPath:@"filters.gaussianBlur"];
          [(_UIBackdropView *)self setGaussianBlurFilter:v21];

          self->__blurRadius = radius;
        }

        if (([(__CFString *)qualityCopy isEqualToString:self->__blurQuality]& 1) == 0)
        {
          backdropEffectView4 = [(_UIBackdropView *)self backdropEffectView];
          layer3 = [backdropEffectView4 layer];
          [layer3 setValue:qualityCopy forKeyPath:@"filters.gaussianBlur.inputQuality"];
        }

        goto LABEL_23;
      }

      v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
      [v8 setValue:v9 forKey:@"inputRadius"];

      v10 = qualityCopy;
      if (!qualityCopy)
      {
        inputSettings = [(_UIBackdropView *)self inputSettings];
        if ([inputSettings graphicsQuality] == 10)
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
      qualityCopy = v10;
      if (!self->__blurQuality)
      {
        v14 = [(__CFString *)v10 copy];
        blurQuality = self->__blurQuality;
        self->__blurQuality = v14;
      }

      [v8 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
      [v8 setValue:qualityCopy forKey:@"inputQuality"];
      [v8 setName:@"gaussianBlur"];
      [(_UIBackdropView *)self setGaussianBlurFilter:v8];
      [(_UIBackdropView *)self _updateFilters];

      goto LABEL_19;
    }
  }

  else
  {
    gaussianBlurFilter2 = [(_UIBackdropView *)self gaussianBlurFilter];

    if (gaussianBlurFilter2)
    {
      [(_UIBackdropView *)self setGaussianBlurFilter:0];
      [(_UIBackdropView *)self _updateFilters];
    }
  }

LABEL_23:
}

- (void)setSaturationDeltaFactor:(double)factor
{
  colorSaturateFilter = self->_colorSaturateFilter;
  if (self->_backdropEffectView)
  {
    if (!colorSaturateFilter)
    {
      v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:factor];
      [v6 setValue:v7 forKey:@"inputAmount"];

      [v6 setName:@"colorSaturate"];
      v8 = self->_colorSaturateFilter;
      self->_colorSaturateFilter = v6;

      [(_UIBackdropView *)self _updateFilters];
    }

    if (self->__saturationDeltaFactor != factor)
    {
      layer = [(UIView *)self->_backdropEffectView layer];
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:factor];
      [layer setValue:v10 forKeyPath:@"filters.colorSaturate.inputAmount"];

      self->__saturationDeltaFactor = factor;
    }
  }

  else if (colorSaturateFilter)
  {
    self->_colorSaturateFilter = 0;

    [(_UIBackdropView *)self _updateFilters];
  }
}

- (void)setTintFilterForSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (self->_backdropEffectView)
  {
    v39 = 0.0;
    v40 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v6 = 0.0;
    v7 = settingsCopy[16];
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
      layer = [(UIView *)self->_backdropEffectView layer];
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
      [layer setValue:v21 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];
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

- (void)setBackdropVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (self->__backdropVisible != visible || !self->_backdropVisibilitySetOnce)
  {
    self->_backdropVisibilitySetOnce = 1;
    backdropLayer = [(_UIBackdropEffectView *)self->_backdropEffectView backdropLayer];
    [backdropLayer setEnabled:visibleCopy];

    self->__backdropVisible = visibleCopy;
    if (visibleCopy || [(_UIBackdropViewSettings *)self->_inputSettings requiresBackdropLayer])
    {
      backdropEffectView = self->_backdropEffectView;
      if (backdropEffectView)
      {
        superview = [(UIView *)backdropEffectView superview];

        if (!superview)
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
  backdropEffectView = [(_UIBackdropView *)self backdropEffectView];
  backdropLayer = [backdropEffectView backdropLayer];
  [backdropLayer setMeshTransform:v5];
}

- (void)_setBlursBackground:(BOOL)background
{
  backgroundCopy = background;
  self->_blursBackground = background;
  if ([(_UIBackdropView *)self configuration]!= 1)
  {
    [(_UIBackdropView *)self setConfiguration:1];
  }

  effectView = [(_UIBackdropView *)self effectView];
  [effectView setAlpha:backgroundCopy];
}

- (void)prepareForTransitionToSettings:(id)settings
{
  settingsCopy = settings;
  [(_UIBackdropView *)self setApplyingTransition:1];
  inputSettings = [(_UIBackdropView *)self inputSettings];
  v6 = [inputSettings style] == -2;

  style = [settingsCopy style];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___UIBackdropView_prepareForTransitionToSettings___block_invoke;
  v9[3] = &unk_1E70F67F8;
  v9[4] = self;
  v10 = settingsCopy;
  v11 = v6;
  v12 = style == -2;
  v8 = settingsCopy;
  [UIView performWithoutAnimation:v9];
}

- (void)transitionToStyle:(int64_t)style
{
  v4 = [_UIBackdropViewSettings settingsForStyle:style];
  [(_UIBackdropView *)self prepareForTransitionToSettings:v4];
  [(_UIBackdropView *)self computeAndApplySettingsForTransition];
}

- (void)transitionToColor:(id)color
{
  colorCopy = color;
  v5 = [_UIBackdropViewSettings settingsForStyle:2040];
  [v5 setColorTint:colorCopy];

  [v5 setColorTintAlpha:1.0];
  [(_UIBackdropView *)self prepareForTransitionToSettings:v5];
  [(_UIBackdropView *)self computeAndApplySettingsForTransition];
}

- (void)transitionToSettings:(id)settings
{
  [(_UIBackdropView *)self prepareForTransitionToSettings:settings];

  [(_UIBackdropView *)self computeAndApplySettingsForTransition];
}

- (void)transitionIncrementallyToSettings:(id)settings weighting:(double)weighting
{
  settingsCopy = settings;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_outputSettings;
  }

  else
  {
    v7 = [[_UIBackdropViewSettingsCombiner alloc] initWithDefaultValuesForGraphicsQuality:0];
    colorSettings = [(_UIBackdropViewSettings *)self->_inputSettings colorSettings];
    [(_UIBackdropViewSettings *)v7 setColorSettings:colorSettings];

    [(_UIBackdropViewSettingsCombiner *)v7 setInputSettingsA:self->_inputSettings];
    [(_UIBackdropViewSettingsCombiner *)v7 setInputSettingsB:settingsCopy];
    [(_UIBackdropView *)self prepareForTransitionToSettings:v7];
    v6 = self->_outputSettings;
    inputSettingsA = [(_UIBackdropViewSettingsCombiner *)v7 inputSettingsA];
    [(_UIBackdropViewSettings *)v6 setInputSettingsA:inputSettingsA];

    inputSettingsB = [(_UIBackdropViewSettingsCombiner *)v7 inputSettingsB];
    [(_UIBackdropViewSettings *)v6 setInputSettingsB:inputSettingsB];

    self->_style = -3;
  }

  [(_UIBackdropViewSettings *)v6 setWeighting:weighting];
  [(_UIBackdropViewSettings *)v6 computeOutputSettingsUsingModel:self->_inputSettings];
  [(_UIBackdropView *)self applySettings:v6];
}

- (void)transitionIncrementallyToStyle:(int64_t)style weighting:(double)weighting
{
  v6 = [_UIBackdropViewSettings settingsForStyle:style];
  [(_UIBackdropView *)self transitionIncrementallyToSettings:v6 weighting:weighting];
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
      backdropLayer = [(_UIBackdropEffectView *)self->_backdropEffectView backdropLayer];
      [backdropLayer setScale:v4];
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
      inputSettings = [(_UIBackdropView *)self inputSettings];
      [(_UIBackdropView *)self updateSubviewHierarchyIfNeededForSettings:inputSettings];
    }

    [(_UIBackdropView *)self setContentViewAccessorGuard:0];
  }

  v5 = *p_contentView;

  return v5;
}

- (void)updateSubviewHierarchyIfNeededForSettings:(id)settings
{
  settingsCopy = settings;
  [(_UIBackdropView *)self addBackdropEffectViewIfNeededForSettings:settingsCopy];
  [(_UIBackdropView *)self addGrayscaleTintViewIfNeededForSettings:settingsCopy];
  [(_UIBackdropView *)self addColorTintViewIfNeededForSettings:settingsCopy];
  [(_UIBackdropView *)self addColorBurnTintViewIfNeededForSettings:settingsCopy];
  [(_UIBackdropView *)self addContentViewIfNeededForSettings:settingsCopy];
  [(_UIBackdropView *)self addDarkeningTintViewIfNeededForSettings:settingsCopy];

  [(_UIBackdropView *)self ensureProperSubviewOrdering];

  [(_UIBackdropView *)self _applyCornerRadiusToSubviews];
}

- (void)addBackdropEffectViewIfNeededForSettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy usesBackdropEffectView] & 1) != 0 || -[_UIBackdropView computesColorSettings](self, "computesColorSettings") || objc_msgSend(settingsCopy, "requiresBackdropLayer"))
  {
    backdropEffectView = [(_UIBackdropView *)self backdropEffectView];

    if (!backdropEffectView)
    {
      v5 = objc_alloc_init(_UIBackdropEffectView);
      [(UIView *)self bounds];
      [(UIView *)v5 setFrame:?];
      layer = [(UIView *)v5 layer];
      [layer setAllowsEdgeAntialiasing:0];

      groupName = self->_groupName;
      backdropLayer = [(_UIBackdropEffectView *)v5 backdropLayer];
      [backdropLayer setGroupName:groupName];

      [(_UIBackdropView *)self setBackdropEffectView:v5];
      [(_UIBackdropView *)self setAppliesOutputSettingsAutomatically:1];
    }
  }
}

- (void)addGrayscaleTintViewIfNeededForSettings:(id)settings
{
  settingsCopy = settings;
  if (![settingsCopy usesGrayscaleTintView] || (-[_UIBackdropView grayscaleTintView](self, "grayscaleTintView"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([settingsCopy usesGrayscaleTintView])
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

- (void)addColorTintViewIfNeededForSettings:(id)settings
{
  settingsCopy = settings;
  if (![settingsCopy usesColorTintView] || (-[_UIBackdropView colorTintView](self, "colorTintView"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([settingsCopy usesColorTintView])
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

- (void)addColorBurnTintViewIfNeededForSettings:(id)settings
{
  settingsCopy = settings;
  if (![settingsCopy usesColorBurnTintView] || (-[_UIBackdropView colorBurnTintView](self, "colorBurnTintView"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([settingsCopy usesColorBurnTintView])
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
      layer = [(UIView *)v6 layer];
      [layer setCompositingFilter:v7];

      [(_UIBackdropView *)self setColorBurnTintView:v6];
      [(_UIBackdropView *)self setAppliesOutputSettingsAutomatically:1];
    }
  }
}

- (void)addDarkeningTintViewIfNeededForSettings:(id)settings
{
  settingsCopy = settings;
  if (![settingsCopy usesDarkeningTintView] || !self->_darkeningTintView)
  {
    if ([settingsCopy usesDarkeningTintView])
    {
      v4 = [UIView alloc];
      v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v5 setOpaque:0];
      [(UIView *)v5 setAutoresizingMask:18];
      [(UIView *)self bounds];
      [(UIView *)v5 setFrame:?];
      v6 = *MEMORY[0x1E69798C0];
      layer = [(UIView *)v5 layer];
      [layer setCompositingFilter:v6];

      v8 = [UIColor colorWithHue:0.619444444 saturation:0.2 brightness:0.64 alpha:1.0];
      [(UIView *)v5 setBackgroundColor:v8];

      [(UIView *)v5 setAlpha:0.2];
      [(_UIBackdropView *)self setDarkeningTintView:v5];
    }

    else
    {
      darkeningTintView = [(_UIBackdropView *)self darkeningTintView];
      [darkeningTintView removeFromSuperview];

      [(_UIBackdropView *)self setDarkeningTintView:0];
    }
  }
}

- (void)addContentViewIfNeededForSettings:(id)settings
{
  settingsCopy = settings;
  if ((![settingsCopy usesContentView] || !self->_contentView) && objc_msgSend(settingsCopy, "usesContentView") && -[_UIBackdropView contentViewAccessed](self, "contentViewAccessed"))
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

  partialMaskViews = [(_UIBackdropView *)self partialMaskViews];
  v5 = [partialMaskViews count];

  if (v5)
  {
    return 1;
  }

  inputSettings = [(_UIBackdropView *)self inputSettings];
  grayscaleTintMaskImage = [inputSettings grayscaleTintMaskImage];

  inputSettings2 = [(_UIBackdropView *)self inputSettings];
  colorTintMaskImage = [inputSettings2 colorTintMaskImage];

  inputSettings3 = [(_UIBackdropView *)self inputSettings];
  filterMaskImage = [inputSettings3 filterMaskImage];

  if (!grayscaleTintMaskImage && !colorTintMaskImage && !filterMaskImage || (usesColorTintView = 1, grayscaleTintMaskImage == colorTintMaskImage) && colorTintMaskImage == filterMaskImage && grayscaleTintMaskImage == filterMaskImage)
  {
    inputSettings4 = [(_UIBackdropView *)self inputSettings];
    graphicsQuality = [inputSettings4 graphicsQuality];

    if (graphicsQuality == 10 || (-[_UIBackdropView inputSettings](self, "inputSettings"), v15 = objc_claimAutoreleasedReturnValue(), [v15 blurRadius], v17 = v16, v15, v17 < 0.00000011920929) || -[_UIBackdropView applyingTransition](self, "applyingTransition"))
    {
      usesColorTintView = 1;
    }

    else
    {
      inputSettings5 = [(_UIBackdropView *)self inputSettings];
      usesColorTintView = [inputSettings5 usesColorTintView];
    }
  }

  return usesColorTintView;
}

- (void)adjustTintImplementationIfNeeded:(id)needed
{
  neededCopy = needed;
  tintFilter = [(_UIBackdropView *)self tintFilter];

  [neededCopy grayscaleTintAlpha];
  if (v6 <= 0.00000011920929)
  {
    [neededCopy colorTintAlpha];
    v7 = v8 > 0.00000011920929;
  }

  else
  {
    v7 = 1;
  }

  requiresTintViews = [(_UIBackdropView *)self requiresTintViews];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52___UIBackdropView_adjustTintImplementationIfNeeded___block_invoke;
  v11[3] = &unk_1E70F6820;
  v13 = tintFilter != 0;
  v14 = requiresTintViews;
  v11[4] = self;
  v12 = neededCopy;
  v15 = v7;
  v10 = neededCopy;
  [UIView performWithoutAnimation:v11];
}

- (void)setConfiguration:(int64_t)configuration
{
  if (self->_configuration != configuration)
  {
    self->_configuration = configuration;
    outputSettings = [(_UIBackdropView *)self outputSettings];
    inputSettings = [(_UIBackdropView *)self inputSettings];
    [outputSettings computeOutputSettingsUsingModel:inputSettings];

    outputSettings2 = [(_UIBackdropView *)self outputSettings];
    [(_UIBackdropView *)self adjustTintImplementationIfNeeded:outputSettings2];
  }
}

- (void)computeAndApplySettingsForTransition
{
  outputSettings = [(_UIBackdropView *)self outputSettings];
  inputSettings = [(_UIBackdropView *)self inputSettings];
  [outputSettings computeOutputSettingsUsingModel:inputSettings];

  outputSettings2 = [(_UIBackdropView *)self outputSettings];
  [(_UIBackdropView *)self applySettings:outputSettings2];

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

  observers = [(_UIBackdropView *)self observers];
  allObjects = [observers allObjects];
  [allObjects makeObjectsPerformSelector:sel_backdropViewDidChange_ withObject:self];
}

- (void)applySettingsWithBuiltInAnimation:(id)animation
{
  animationCopy = animation;
  v5 = animationCopy;
  if (!self->_applyingTransition)
  {
    appliesOutputSettingsAnimationDuration = self->_appliesOutputSettingsAnimationDuration;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53___UIBackdropView_applySettingsWithBuiltInAnimation___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v9 = animationCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53___UIBackdropView_applySettingsWithBuiltInAnimation___block_invoke_2;
    v7[3] = &unk_1E70F5AC0;
    v7[4] = self;
    [UIView animateWithDuration:4 delay:v8 options:v7 animations:appliesOutputSettingsAnimationDuration completion:0.0];
  }
}

- (void)setColorOffsetFilterForSettings:(id)settings
{
  settingsCopy = settings;
  v7 = settingsCopy;
  if (self->_backdropEffectView)
  {
    if (*(settingsCopy + 310) == 1)
    {
      v8 = *(settingsCopy + 40);
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

- (void)applySettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    v6 = *(settingsCopy + 3);
    if (self->_style == v6)
    {
      v7 = "_UIMonochromaticTreatment";
      if (!self->_applyingTransition && *(settingsCopy + 328) != 1)
      {
        goto LABEL_31;
      }

      if (self->_tintFilter)
      {
        [(_UIBackdropView *)self setTintFilterForSettings:settingsCopy];
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
      layer = [(UIView *)self->_grayscaleTintView layer];
      mask = [layer mask];
      *&v14 = v11;
      [mask setOpacity:v14];

      v15 = *(v5 + 120);
      if (v15 == 1)
      {
        v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C38]];
      }

      else
      {
        v16 = 0;
      }

      layer2 = [(UIView *)self->_grayscaleTintView layer];
      [layer2 setCompositingFilter:v16];

      if (v15)
      {
      }

      [(UIView *)self->_colorTintView setBackgroundColor:*(v5 + 16)];
      [(UIView *)self->_colorTintView setAlpha:v5[17]];
      [(_UIBackdropView *)self setColorTintMaskImage:*(v5 + 19)];
      v18 = v5[18];
      layer3 = [(UIView *)self->_colorTintView layer];
      mask2 = [layer3 mask];
      *&v21 = v18;
      [mask2 setOpacity:v21];

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
      layer4 = [(UIView *)self->_darkeningTintView layer];
      [layer4 setCompositingFilter:v25];

      [(_UIBackdropView *)self setBlurFilterWithRadius:*(v5 + 30) blurQuality:v5[29]];
      [(_UIBackdropView *)self setSaturationDeltaFactor:v5[31]];
      [(_UIBackdropView *)self setFilterMaskImage:*(v5 + 33)];
      layer5 = [(UIView *)self->_backdropEffectView layer];
      v28 = v5[32];
      mask3 = [layer5 mask];
      *&v30 = v28;
      [mask3 setOpacity:v30];

      v31 = v5[10];
      backdropEffectView = [(_UIBackdropView *)self backdropEffectView];
      [backdropEffectView setZoom:v31];

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
        backdropEffectView2 = [(_UIBackdropView *)self backdropEffectView];
        v39 = backdropEffectView2;
        if (v37 <= 0.0)
        {
          [backdropEffectView2 setAlpha:1.0];

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
          [backdropEffectView2 setAlpha:0.0];

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
          backdropLayer = [(_UIBackdropEffectView *)self->_backdropEffectView backdropLayer];
          [backdropLayer setScale:v42];
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

- (void)setTintOpacity:(double)opacity
{
  inputSettings = [(_UIBackdropView *)self inputSettings];
  lightenGrayscaleWithSourceOver = [inputSettings lightenGrayscaleWithSourceOver];
  v6 = 1.0;
  if (lightenGrayscaleWithSourceOver)
  {
    [inputSettings grayscaleTintAlpha];
  }

  v7 = v6 * opacity;
  grayscaleTintView = [(_UIBackdropView *)self grayscaleTintView];
  [grayscaleTintView setAlpha:v7];

  [inputSettings colorTintAlpha];
  v10 = v9 * opacity;
  colorTintView = [(_UIBackdropView *)self colorTintView];
  [colorTintView setAlpha:v10];

  [inputSettings colorBurnTintAlpha];
  v13 = v12 * opacity;
  colorBurnTintView = [(_UIBackdropView *)self colorBurnTintView];
  [colorBurnTintView setAlpha:v13];

  [inputSettings darkeningTintAlpha];
  v16 = v15 * opacity;
  darkeningTintView = [(_UIBackdropView *)self darkeningTintView];
  [darkeningTintView setAlpha:v16];
}

@end