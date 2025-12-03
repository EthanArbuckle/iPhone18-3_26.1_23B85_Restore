@interface UIVisualEffectView
+ (void)_setupMaterialVisualization;
- (BOOL)__shouldShowVisualizationForSubclass:(BOOL *)subclass isOtherModule:(BOOL *)module;
- (BOOL)_allowsGroupFiltering;
- (BOOL)assertionActivationStateForType:(unint64_t)type;
- (NSArray)_captureDependents;
- (NSString)_groupName;
- (NSString)description;
- (UIView)contentView;
- (UIVisualEffect)effect;
- (UIVisualEffectView)_captureSource;
- (UIVisualEffectView)initWithCoder:(NSCoder *)coder;
- (UIVisualEffectView)initWithEffect:(UIVisualEffect *)effect;
- (UIVisualEffectView)initWithFrame:(CGRect)frame;
- (_UIVisualEffectBackdropView)_captureView;
- (_UIVisualEffectViewBackdropCaptureGroup)_captureGroup;
- (double)_backdropViewBackgroundColorAlpha;
- (double)_continuousCornerRadius;
- (double)_cornerRadius;
- (id)__markerLayerColorForSubclass:(BOOL)subclass otherModule:(BOOL)module;
- (id)__titleForBackgroundBlurEffect;
- (id)__titleForBlurEffect:(id)effect;
- (id)__titleForContentBlurEffect;
- (id)__titleForMainBlurEffect;
- (id)_cornerCurve;
- (id)_debug;
- (id)_effectDescriptorForEffects:(id)effects usage:(int64_t)usage;
- (id)_initialValueForKey:(id)key;
- (id)_interceptGlassEffect:(id)effect;
- (id)_maskImageForMaskView:(id)view;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (int64_t)_renderMode;
- (void)__vis_layoutSubviews;
- (void)_addCaptureDependent:(id)dependent;
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
- (void)_applyCornerRadiusToSubviews;
- (void)_commonInit;
- (void)_configureEffects;
- (void)_didUpdateContentView;
- (void)_ensureBackgroundHost;
- (void)_ensureContentHostWithView:(id)view;
- (void)_generateBackgroundEffects:(id)effects contentEffects:(id)contentEffects;
- (void)_generateDeferredAnimations:(id)animations;
- (void)_generateEffectAnimations:(id)animations;
- (void)_registerNotifications;
- (void)_removeCaptureDependent:(id)dependent;
- (void)_resetEffect;
- (void)_setAllowsGroupFiltering:(BOOL)filtering;
- (void)_setBackdropViewBackgroundColorAlpha:(double)alpha;
- (void)_setCaptureDependents:(id)dependents;
- (void)_setCaptureView:(id)view;
- (void)_setCornerMask:(id)mask;
- (void)_setCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius continuous:(BOOL)continuous maskedCorners:(unint64_t)corners;
- (void)_setGroupName:(id)name;
- (void)_setIsContentViewStatic:(BOOL)static;
- (void)_setMaskImage:(id)image;
- (void)_setMaskView:(id)view;
- (void)_setRenderMode:(int64_t)mode;
- (void)_setUseReducedTransparencyForContentEffects:(BOOL)effects;
- (void)_unregisterNotifications;
- (void)_updateCaptureDependents;
- (void)_updateCornerTraits;
- (void)_updateEffectBackgroundColor;
- (void)_updateEffectForAccessibilityChanges:(id)changes;
- (void)_updateEffectForReducedTransparency;
- (void)_updateEffectForSnapshotDidEnd:(id)end;
- (void)_updateEffectForSnapshotWillBegin:(id)begin;
- (void)_updateEffectsFromLegacyEffect;
- (void)_updateEnvironmentAndFlagUpdatesIfNecessary:(id)necessary;
- (void)_updateSubView:(id)view frame:(CGRect)frame;
- (void)_updateSubviews;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setAllowsDithering:(BOOL)dithering;
- (void)setBackgroundEffects:(id)effects;
- (void)setBlurQuality:(int64_t)quality;
- (void)setContentEffects:(id)effects;
- (void)setEffect:(UIVisualEffect *)effect;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIVisualEffectView

- (void)_updateEffectsFromLegacyEffect
{
  v10 = 0;
  v11 = 0;
  _UIVisualEffectViewUpgradeLegacyEffect(self->_effect, &v11, &v10);
  v3 = v11;
  *&self->_effectViewFlags = *&self->_effectViewFlags & 0xFE | ![(NSArray *)self->_backgroundEffects isEqualToArray:v11];
  backgroundEffects = self->_backgroundEffects;
  self->_backgroundEffects = v3;
  v9 = v3;

  v5 = v10;
  if ([(NSArray *)self->_contentEffects isEqualToArray:v10])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *&self->_effectViewFlags = *&self->_effectViewFlags & 0xFD | v6;
  contentEffects = self->_contentEffects;
  self->_contentEffects = v5;
  v8 = v5;

  [(UIVisualEffectView *)self _configureEffects];
}

- (void)_configureEffects
{
  if ((*&self->_effectViewFlags & 3) == 0)
  {
    return;
  }

  traitCollection = [(_UIVisualEffectEnvironment *)self->_environment traitCollection];

  if (!traitCollection)
  {
    traitCollection2 = [(UIView *)self traitCollection];
    [(_UIVisualEffectEnvironment *)self->_environment setTraitCollection:traitCollection2];
  }

  +[UIView _isInAnimationBlockWithAnimationsEnabled];
  effectViewFlags = self->_effectViewFlags;
  if (effectViewFlags)
  {
    [(UIVisualEffectView *)self _ensureBackgroundHost];
    WeakRetained = objc_loadWeakRetained(&self->_captureSource);
    v10 = WeakRetained;
    backgroundEffects = self->_backgroundEffects;
    if (WeakRetained)
    {
      v6 = [WeakRetained _effectDescriptorForEffects:backgroundEffects usage:1];
      _captureGroup = [v10 _captureGroup];
      [(_UIVisualEffectHost *)self->_backgroundHost setPrimaryCaptureGroup:_captureGroup];
      contentView = [(_UIVisualEffectHost *)self->_backgroundHost contentView];
      [contentView setCaptureGroup:_captureGroup];
    }

    else
    {
      v6 = [(UIVisualEffectView *)self _effectDescriptorForEffects:backgroundEffects usage:1];
      [(_UIVisualEffectHost *)self->_backgroundHost setPrimaryCaptureGroup:self->_captureGroup];
      captureGroup = self->_captureGroup;
      _captureGroup = [(_UIVisualEffectHost *)self->_backgroundHost contentView];
      [_captureGroup setCaptureGroup:captureGroup];
    }

    v17 = self->_backgroundHost;
    *&self->_effectViewFlags &= ~1u;
    layerHitTestsAsOpaque = [v6 layerHitTestsAsOpaque];
    layer = [(UIView *)self layer];
    [layer setHitTestsAsOpaque:layerHitTestsAsOpaque];

    effectViewFlags = self->_effectViewFlags;
    if ((effectViewFlags & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    v7 = 0;
    goto LABEL_13;
  }

  v6 = 0;
  v17 = 0;
  if ((effectViewFlags & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  [(_UIVisualEffectEnvironment *)self->_environment setUseSimpleVibrancy:(effectViewFlags >> 4) & 1];
  v7 = [(UIVisualEffectView *)self _effectDescriptorForEffects:self->_contentEffects usage:2];
  [(UIVisualEffectView *)self _ensureContentHostWithView:0];
  v8 = self->_contentHost;
  *&self->_effectViewFlags &= ~2u;
LABEL_13:
  [(_UIVisualEffectHost *)v17 setCurrentEffectDescriptor:v6];
  [(_UIVisualEffectHost *)v8 setCurrentEffectDescriptor:v7];
  [(UIVisualEffectView *)self _updateSubviews];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = UIVisualEffectView;
  [(UIView *)&v3 didMoveToSuperview];
  [(UIVisualEffectView *)self _configureEffects];
}

- (void)_commonInit
{
  backgroundEffects = self->_backgroundEffects;
  v4 = MEMORY[0x1E695E0F0];
  self->_backgroundEffects = MEMORY[0x1E695E0F0];

  contentEffects = self->_contentEffects;
  self->_contentEffects = v4;

  v6 = [[_UIVisualEffectEnvironment alloc] initWithHost:self];
  environment = self->_environment;
  self->_environment = v6;

  self->_useLiveMasking = dyld_program_sdk_at_least();
  v8 = objc_alloc_init(_UIVisualEffectViewBackdropCaptureGroup);
  captureGroup = self->_captureGroup;
  self->_captureGroup = v8;

  v10 = objc_opt_new();
  captureDependents = self->_captureDependents;
  self->_captureDependents = v10;

  [(UIView *)self _setShouldAdaptToMaterials:0];
  [(UIView *)self setAllowsGroupBlending:0];
  [(UIView *)self setAllowsGroupOpacity:0];
  [(_UIVisualEffectEnvironment *)self->_environment setAllowsDithering:(*&self->_effectViewFlags >> 2) & 1];
  [(_UIVisualEffectEnvironment *)self->_environment setBlurQuality:self->_blurQuality];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v14 = self->_environment;
  if (userInterfaceIdiom == 3)
  {
    [(_UIVisualEffectEnvironment *)v14 setReducedTransperancy:0];
  }

  else
  {
    traitCollection2 = [(_UIVisualEffectEnvironment *)v14 traitCollection];
    v16 = [traitCollection2 userInterfaceIdiom] != 6 && _AXSEnhanceBackgroundContrastEnabled() != 0;
    [(_UIVisualEffectEnvironment *)self->_environment setReducedTransperancy:v16];
  }

  v17 = [[_UIAssertionController alloc] initWithAssertionSubject:self];
  assertionController = self->_assertionController;
  self->_assertionController = v17;

  [(UIVisualEffectView *)self _setIsContentViewStatic:1];

  [(UIVisualEffectView *)self _registerNotifications];
}

- (void)_registerNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateEffectForAccessibilityChanges_ name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__updateEffectForAccessibilityChanges_ name:@"UIAccessibilityReduceMotionStatusDidChangeNotification" object:0];
}

- (void)_applyCornerRadiusToSubviews
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(UIVisualEffectView *)self _applyCornerMaskToSelf])
  {
    cornerMask = self->__cornerMask;
    layer = [(UIView *)self layer];
    if (cornerMask)
    {
      [(_UIVisualEffectViewCornerMask *)cornerMask _applyToLayer:layer];
    }

    else
    {
      [_UIVisualEffectViewCornerMask _applyZeroMaskToLayer:layer];
    }
  }

  if (self->__cornerMask)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    subviews = [(UIView *)self subviews];
    v6 = [subviews countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(subviews);
          }

          v10 = self->__cornerMask;
          layer2 = [*(*(&v17 + 1) + 8 * i) layer];
          [(_UIVisualEffectViewCornerMask *)v10 _applyToLayer:layer2];
        }

        v7 = [subviews countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    subviews = [(UIView *)self subviews];
    v12 = [subviews countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(subviews);
          }

          layer3 = [*(*(&v21 + 1) + 8 * j) layer];
          [_UIVisualEffectViewCornerMask _applyZeroMaskToLayer:layer3];
        }

        v13 = [subviews countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

- (void)_updateCornerTraits
{
  v3 = *MEMORY[0x1E69796E0];
  cornerMask = self->__cornerMask;
  v14 = v3;
  if (cornerMask)
  {
    [(_UIVisualEffectViewCornerMask *)cornerMask radius];
    v6 = v5;
    appliedCorners = [(_UIVisualEffectViewCornerMask *)self->__cornerMask appliedCorners];
    cornersAreContinuous = [(_UIVisualEffectViewCornerMask *)self->__cornerMask cornersAreContinuous];
    v9 = *MEMORY[0x1E69796E8];
    if (!cornersAreContinuous)
    {
      v9 = v14;
    }

    v10 = v9;

    v14 = v10;
  }

  else
  {
    v6 = 0.0;
    appliedCorners = 15;
  }

  traitOverrides = [(UIView *)self traitOverrides];
  [traitOverrides setCGFloatValue:objc_opt_class() forTrait:v6];

  traitOverrides2 = [(UIView *)self traitOverrides];
  [traitOverrides2 setNSIntegerValue:appliedCorners forTrait:objc_opt_class()];

  traitOverrides3 = [(UIView *)self traitOverrides];
  [traitOverrides3 setObject:v14 forTrait:objc_opt_class()];
}

- (void)layoutSubviews
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = UIVisualEffectView;
  [(UIView *)&v21 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_maskImage)
  {
    _safeMaskView = [(UIView *)self _safeMaskView];
    [_safeMaskView setFrame:{v4, v6, v8, v10}];
  }

  views = [(_UIVisualEffectHost *)self->_backgroundHost views];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [views countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(views);
        }

        [*(*(&v17 + 1) + 8 * v16++) setFrame:{v4, v6, v8, v10}];
      }

      while (v14 != v16);
      v14 = [views countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIVisualEffectView;
  [(UIView *)&v3 didMoveToWindow];
  [(UIVisualEffectView *)self _configureEffects];
}

- (void)dealloc
{
  [(UIVisualEffectView *)self _unregisterNotifications];
  v3.receiver = self;
  v3.super_class = UIVisualEffectView;
  [(UIView *)&v3 dealloc];
}

- (void)_unregisterNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];
}

- (void)_updateSubviews
{
  v3 = MEMORY[0x1E695DFA8];
  subviews = [(UIView *)self subviews];
  v5 = [v3 setWithArray:subviews];

  views = [(_UIVisualEffectHost *)self->_backgroundHost views];
  views2 = [(_UIVisualEffectHost *)self->_contentHost views];
  v8 = views2;
  if (views)
  {
    v9 = views2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (views)
    {
      v10 = views;
    }

    else
    {
      v10 = views2;
    }

    v11 = v10;
  }

  else
  {
    v11 = [views arrayByAddingObjectsFromArray:views2];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __37__UIVisualEffectView__updateSubviews__block_invoke;
  v22[3] = &unk_1E70F6228;
  v22[4] = self;
  v12 = v11;
  v23 = v12;
  v13 = v5;
  v24 = v13;
  [UIView performWithoutAnimation:v22];
  contentView = [(_UIVisualEffectHost *)self->_contentHost contentView];
  v15 = contentView;
  if (contentView)
  {
    superview = [(int8x16_t *)contentView superview];

    if (superview == self)
    {
      traitCollection = [(int8x16_t *)v15 traitCollection];
      v18 = [(UIVisualEffectView *)self _traitCollectionForChildEnvironment:v15];
      _vibrancy = [traitCollection _vibrancy];
      if (_vibrancy != [v18 _vibrancy])
      {
        [(UIView *)v15 _invalidateTraitCollectionAsRoot];
      }
    }
  }
}

void __37__UIVisualEffectView__updateSubviews__block_invoke(id *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a1[4] + 472) |= 0x20u;
  [a1[4] bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = a1[5];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        [a1[4] _updateSubView:v15 frame:{v3, v5, v7, v9}];
        [a1[6] removeObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = a1[6];
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * j) removeFromSuperview];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }

  *(a1[4] + 472) &= ~0x20u;
}

- (UIView)contentView
{
  [(UIVisualEffectView *)self _ensureContentHostWithView:0];
  [(_UIVisualEffectHost *)self->_contentHost setContentViewRequired:1];
  contentView = [(_UIVisualEffectHost *)self->_contentHost contentView];
  superview = [contentView superview];

  if (superview != self)
  {
    [(UIVisualEffectView *)self _updateSubviews];
  }

  contentView2 = [(_UIVisualEffectHost *)self->_contentHost contentView];

  return contentView2;
}

- (void)_ensureBackgroundHost
{
  if (!self->_backgroundHost)
  {
    v5 = objc_alloc_init(_UIVisualEffectBackdropView);
    v3 = [[_UIVisualEffectHost alloc] initWithContentView:v5];
    backgroundHost = self->_backgroundHost;
    self->_backgroundHost = v3;

    [(_UIVisualEffectHost *)self->_backgroundHost setPrimaryCaptureGroup:self->_captureGroup];
  }
}

- (void)_updateCaptureDependents
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_captureDependents;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        _UIVisualEffectViewConfigureDependent(self, *(*(&v8 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_didUpdateContentView
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIVisualEffectContentViewDidUpdateNotification" object:self];
}

- (_UIVisualEffectViewBackdropCaptureGroup)_captureGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    _captureGroup = [WeakRetained _captureGroup];
  }

  else
  {
    _captureGroup = self->_captureGroup;
  }

  v6 = _captureGroup;

  return v6;
}

- (NSString)_groupName
{
  _captureGroup = [(UIVisualEffectView *)self _captureGroup];
  groupName = [_captureGroup groupName];

  return groupName;
}

- (_UIVisualEffectBackdropView)_captureView
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _captureView];
  }

  else
  {
    [(_UIVisualEffectHost *)self->_backgroundHost captureView];
  }
  v5 = ;

  return v5;
}

- (UIVisualEffect)effect
{
  effect = self->_effect;
  if (effect)
  {
    v3 = effect;
  }

  else
  {
    _glassEffect = [(UIView *)self _glassEffect];
    v3 = _glassEffect;
    if (_glassEffect)
    {
      v5 = _glassEffect;
    }
  }

  return v3;
}

- (double)_cornerRadius
{
  cornerMask = self->__cornerMask;
  if (!cornerMask)
  {
    return 0.0;
  }

  [(_UIVisualEffectViewCornerMask *)cornerMask radius];
  return result;
}

- (void)_updateEnvironmentAndFlagUpdatesIfNecessary:(id)necessary
{
  v30 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v5 = [(_UIVisualEffectEnvironment *)self->_environment copy];
  necessaryCopy[2](necessaryCopy);
  effectViewFlags = self->_effectViewFlags;
  if ((~effectViewFlags & 3) != 0)
  {
    traitCollection = [(_UIVisualEffectEnvironment *)self->_environment traitCollection];
    traitCollection2 = [v5 traitCollection];
    v7 = [traitCollection changedTraitsFromTraitCollection:traitCollection2];

    LOBYTE(effectViewFlags) = self->_effectViewFlags;
    if (effectViewFlags)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (effectViewFlags)
    {
      goto LABEL_16;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_backgroundEffects;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v24 + 1) + 8 * i) _needsUpdateForTransitionFromEnvironment:v5 toEnvironment:self->_environment changedTraits:v7 usage:1])
        {
          *&self->_effectViewFlags |= 1u;
          goto LABEL_15;
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  LOBYTE(effectViewFlags) = self->_effectViewFlags;
LABEL_16:
  if ((effectViewFlags & 2) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = self->_contentEffects;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if ([*(*(&v20 + 1) + 8 * j) _needsUpdateForTransitionFromEnvironment:v5 toEnvironment:self->_environment changedTraits:v7 usage:{2, v20}])
          {
            *&self->_effectViewFlags |= 2u;
            goto LABEL_27;
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:
  }
}

- (void)_updateEffectForAccessibilityChanges:(id)changes
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__UIVisualEffectView__updateEffectForAccessibilityChanges___block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(UIVisualEffectView *)self _updateEnvironmentAndFlagUpdatesIfNecessary:v4];
  [(UIVisualEffectView *)self _configureEffects];
}

uint64_t __59__UIVisualEffectView__updateEffectForAccessibilityChanges___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  if ([v2 userInterfaceIdiom] == 3)
  {
    [*(*(a1 + 32) + 456) setReducedTransperancy:0];
  }

  else
  {
    v3 = [*(*(a1 + 32) + 456) traitCollection];
    v4 = [v3 userInterfaceIdiom] != 6 && _AXSEnhanceBackgroundContrastEnabled() != 0;
    [*(*(a1 + 32) + 456) setReducedTransperancy:v4];
  }

  v5 = _AXSReduceMotionEnabled() != 0;
  v6 = *(*(a1 + 32) + 456);

  return [v6 setReducedMotion:v5];
}

- (void)_ensureContentHostWithView:(id)view
{
  viewCopy = view;
  if (!self->_contentHost)
  {
    if (!viewCopy)
    {
      viewCopy = objc_alloc_init([objc_opt_class() _contentViewClass]);
    }

    v7 = viewCopy;
    v5 = [[_UIVisualEffectHost alloc] initWithContentView:viewCopy];
    contentHost = self->_contentHost;
    self->_contentHost = v5;

    [(_UIVisualEffectHost *)self->_contentHost monitorSubviewsOf:v7];
    viewCopy = v7;
  }
}

- (UIVisualEffectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(UIVisualEffectView *)self initWithEffect:0];
  v8 = v7;
  if (v7)
  {
    [(UIView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (UIVisualEffectView)initWithEffect:(UIVisualEffect *)effect
{
  v4 = effect;
  v11.receiver = self;
  v11.super_class = UIVisualEffectView;
  v5 = [(UIView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(UIVisualEffectView *)v5 _commonInit];
    v7 = [(UIVisualEffectView *)v6 _interceptGlassEffect:v4];

    v8 = [(UIVisualEffect *)v7 copy];
    v9 = v6->_effect;
    v6->_effect = v8;

    [(UIVisualEffectView *)v6 _updateEffectsFromLegacyEffect];
    v4 = v7;
  }

  return v6;
}

- (UIVisualEffectView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v24.receiver = self;
  v24.super_class = UIVisualEffectView;
  v5 = [(UIView *)&v24 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UIVisualEffectView *)v5 _commonInit];
    v7 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIVisualEffectViewEffect"];
    v8 = [v7 copy];
    effect = v6->_effect;
    v6->_effect = v8;

    if (!v6->_effect)
    {
      v10 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIVisualEffectViewContentEffects"];
      v11 = [v10 copy];
      v12 = v11;
      v13 = MEMORY[0x1E695E0F0];
      if (v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(&v6->_contentEffects, v14);

      v15 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIVisualEffectViewBackgroundEffects"];
      v16 = [v15 copy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v13;
      }

      objc_storeStrong(&v6->_backgroundEffects, v18);
    }

    v19 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIVisualEffectViewGroupName"];
    [(_UIVisualEffectViewBackdropCaptureGroup *)v6->_captureGroup setGroupName:v19];

    v20 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIVisualEffectViewContentView"];
    if (v20)
    {
      [(UIVisualEffectView *)v6 _ensureContentHostWithView:v20];
      [(_UIVisualEffectHost *)v6->_contentHost setContentViewRequired:1];
    }

    if (v6->_effect)
    {
      [(UIVisualEffectView *)v6 _updateEffectsFromLegacyEffect];
    }

    else
    {
      v21 = [(NSArray *)v6->_backgroundEffects count];
      v22 = *&v6->_effectViewFlags & 0xFE;
      if (v21)
      {
        ++v22;
      }

      *&v6->_effectViewFlags = v22;
      *&v6->_effectViewFlags = *&v6->_effectViewFlags & 0xFD | (2 * ([(NSArray *)v6->_contentEffects count]!= 0));
      [(UIVisualEffectView *)v6 _configureEffects];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIVisualEffectView;
  [(UIView *)&v9 encodeWithCoder:coderCopy];
  effect = self->_effect;
  if (effect)
  {
    v6 = @"UIVisualEffectViewEffect";
  }

  else
  {
    [coderCopy encodeObject:self->_contentEffects forKey:@"UIVisualEffectViewContentEffects"];
    effect = self->_backgroundEffects;
    v6 = @"UIVisualEffectViewBackgroundEffects";
  }

  [coderCopy encodeObject:effect forKey:v6];
  groupName = [(_UIVisualEffectViewBackdropCaptureGroup *)self->_captureGroup groupName];
  [coderCopy encodeObject:groupName forKey:@"UIVisualEffectViewGroupName"];

  contentView = [(_UIVisualEffectHost *)self->_contentHost contentView];
  [coderCopy encodeObject:contentView forKey:@"UIVisualEffectViewContentView"];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__UIVisualEffectView_traitCollectionDidChange___block_invoke;
  v9[3] = &unk_1E70F3590;
  v9[4] = self;
  [(UIVisualEffectView *)self _updateEnvironmentAndFlagUpdatesIfNecessary:v9];
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    effectViewFlags = self->_effectViewFlags;
    if ((effectViewFlags & 2) != 0)
    {
      v6 = [(UIView *)self _deferredAnimationForKey:@"contentEffects"];
      [v6 addAnimationFrameForValue:self->_contentEffects];

      effectViewFlags = self->_effectViewFlags;
    }

    if (effectViewFlags)
    {
      v7 = [(UIView *)self _deferredAnimationForKey:@"backgroundEffects"];
      [v7 addAnimationFrameForValue:self->_backgroundEffects];
    }
  }

  else
  {
    [(UIVisualEffectView *)self _configureEffects];
  }

  v8.receiver = self;
  v8.super_class = UIVisualEffectView;
  [(UIView *)&v8 traitCollectionDidChange:changeCopy];
}

void __47__UIVisualEffectView_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  [*(*(a1 + 32) + 456) setTraitCollection:v2];

  v7 = [*(a1 + 32) traitCollection];
  v3 = [v7 userInterfaceIdiom];
  v4 = *(*(a1 + 32) + 456);
  if (v3 == 3)
  {
    [v4 setReducedTransperancy:0];
  }

  else
  {
    v5 = [v4 traitCollection];
    v6 = [v5 userInterfaceIdiom] != 6 && _AXSEnhanceBackgroundContrastEnabled() != 0;
    [*(*(a1 + 32) + 456) setReducedTransperancy:v6];
  }
}

+ (void)_setupMaterialVisualization
{
  objc_opt_self();
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel_layoutSubviews);
  v2 = objc_opt_class();
  v3 = class_getInstanceMethod(v2, sel___vis_layoutSubviews);

  method_exchangeImplementations(InstanceMethod, v3);
}

- (id)_initialValueForKey:(id)key
{
  keyCopy = key;
  if ([@"effect" isEqualToString:keyCopy])
  {
    effect = self->_effect;
    if (!effect)
    {
      v6 = +[UIVisualEffect emptyEffect];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([@"backgroundEffects" isEqualToString:keyCopy])
  {
    v7 = 512;
LABEL_8:
    effect = *(&self->super.super.super.isa + v7);
LABEL_9:
    v6 = effect;
    goto LABEL_10;
  }

  if ([@"contentEffects" isEqualToString:keyCopy])
  {
    v7 = 520;
    goto LABEL_8;
  }

  v10.receiver = self;
  v10.super_class = UIVisualEffectView;
  v6 = [(UIView *)&v10 _initialValueForKey:keyCopy];
LABEL_10:
  v8 = v6;

  return v8;
}

- (void)_generateEffectAnimations:(id)animations
{
  animationsCopy = animations;
  animationFrames = [animationsCopy animationFrames];
  v6 = [animationFrames count];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0x1E69E9820];
    do
    {
      v13[0] = v9;
      v13[1] = 3221225472;
      v13[2] = __48__UIVisualEffectView__generateEffectAnimations___block_invoke;
      v13[3] = &unk_1E70F6EC0;
      v13[4] = self;
      [animationsCopy animateFrameAtIndex:v8++ animations:v13];
    }

    while (v7 != v8);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__UIVisualEffectView__generateEffectAnimations___block_invoke_2;
  v11[3] = &unk_1E70F6EE8;
  v11[4] = self;
  v12 = animationsCopy;
  v10 = animationsCopy;
  [UIView _addCompletionWithPosition:v11];
}

void __48__UIVisualEffectView__generateEffectAnimations___block_invoke(uint64_t a1, void *a2)
{
  v6 = 0;
  v7 = 0;
  v3 = [a2 value];
  _UIVisualEffectViewUpgradeLegacyEffect(v3, &v7, &v6);

  v4 = v6;
  [*(a1 + 32) setContentEffects:v6];
  v5 = v7;
  [*(a1 + 32) setBackgroundEffects:?];
}

void __48__UIVisualEffectView__generateEffectAnimations___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v5 = [*(a1 + 40) initialValue];
    v6 = *(a1 + 32);
    v7 = *(v6 + 488);
    *(v6 + 488) = v5;
  }
}

- (void)_generateBackgroundEffects:(id)effects contentEffects:(id)contentEffects
{
  effectsCopy = effects;
  contentEffectsCopy = contentEffects;
  v8 = contentEffectsCopy;
  if (effectsCopy)
  {
    [(UIVisualEffectView *)self _ensureBackgroundHost];
    animationFrames = [effectsCopy animationFrames];
    lastObject = [animationFrames lastObject];
    value = [lastObject value];

    WeakRetained = objc_loadWeakRetained(&self->_captureSource);
    v13 = WeakRetained;
    if (WeakRetained)
    {
      v14 = [WeakRetained _effectDescriptorForEffects:value usage:1];
      _captureGroup = [v13 _captureGroup];
      [(_UIVisualEffectHost *)self->_backgroundHost setPrimaryCaptureGroup:_captureGroup];
      contentView = [(_UIVisualEffectHost *)self->_backgroundHost contentView];
      [contentView setCaptureGroup:_captureGroup];
    }

    else
    {
      v14 = [(UIVisualEffectView *)self _effectDescriptorForEffects:value usage:1];
      [(_UIVisualEffectHost *)self->_backgroundHost setPrimaryCaptureGroup:self->_captureGroup];
      captureGroup = self->_captureGroup;
      _captureGroup = [(_UIVisualEffectHost *)self->_backgroundHost contentView];
      [_captureGroup setCaptureGroup:captureGroup];
    }

    v17 = self->_backgroundHost;
    layerHitTestsAsOpaque = [v14 layerHitTestsAsOpaque];
    layer = [(UIView *)self layer];
    [layer setHitTestsAsOpaque:layerHitTestsAsOpaque];

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_5:
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v14 = 0;
  v17 = 0;
  if (!contentEffectsCopy)
  {
    goto LABEL_5;
  }

LABEL_8:
  animationFrames2 = [v8 animationFrames];
  lastObject2 = [animationFrames2 lastObject];
  value2 = [lastObject2 value];
  v19 = [(UIVisualEffectView *)self _effectDescriptorForEffects:value2 usage:2];

  [(UIVisualEffectView *)self _ensureContentHostWithView:0];
  v18 = self->_contentHost;
LABEL_9:
  [(_UIVisualEffectHost *)v17 prepareToTransitionToEffectDescriptor:v14];
  [(_UIVisualEffectHost *)v18 prepareToTransitionToEffectDescriptor:v19];
  [(UIVisualEffectView *)self _updateSubviews];
  if (effectsCopy)
  {
    animationFrames3 = [effectsCopy animationFrames];
    v27 = [animationFrames3 count] - 1;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __64__UIVisualEffectView__generateBackgroundEffects_contentEffects___block_invoke;
    v48[3] = &unk_1E70F6EC0;
    v49 = v17;
    [effectsCopy animateFrameAtIndex:v27 animations:v48];
  }

  if (v8)
  {
    animationFrames4 = [v8 animationFrames];
    v29 = [animationFrames4 count] - 1;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __64__UIVisualEffectView__generateBackgroundEffects_contentEffects___block_invoke_2;
    v46[3] = &unk_1E70F6EC0;
    v47 = v18;
    [v8 animateFrameAtIndex:v29 animations:v46];
  }

  transitionEffectDescriptor = [(_UIVisualEffectHost *)v17 transitionEffectDescriptor];
  transitionEffectDescriptor2 = [(_UIVisualEffectHost *)v18 transitionEffectDescriptor];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __64__UIVisualEffectView__generateBackgroundEffects_contentEffects___block_invoke_3;
  v38[3] = &unk_1E70F6F10;
  v39 = effectsCopy;
  selfCopy = self;
  v41 = v8;
  v42 = transitionEffectDescriptor;
  v43 = v17;
  v44 = transitionEffectDescriptor2;
  v45 = v18;
  v32 = v18;
  v33 = transitionEffectDescriptor2;
  v34 = v17;
  v35 = transitionEffectDescriptor;
  v36 = v8;
  v37 = effectsCopy;
  [UIView _addCompletionWithPosition:v38];
}

void __64__UIVisualEffectView__generateBackgroundEffects_contentEffects___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v4 initialValue];
      [*(a1 + 40) setBackgroundEffects:v5];
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [v6 initialValue];
      [*(a1 + 40) setContentEffects:v7];
    }
  }

  else
  {
    if (*(a1 + 32) && (v8 = *(a1 + 56), [*(a1 + 64) transitionEffectDescriptor], v9 = objc_claimAutoreleasedReturnValue(), v9, v8 == v9))
    {
      [*(a1 + 64) endTransition];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    if (*(a1 + 48) && (v11 = *(a1 + 72), [*(a1 + 80) transitionEffectDescriptor], v12 = objc_claimAutoreleasedReturnValue(), v12, v11 == v12))
    {
      [*(a1 + 80) endTransition];
    }

    else if (!v10)
    {
      return;
    }
  }

  v13 = *(a1 + 40);

  [v13 _updateSubviews];
}

- (void)_generateDeferredAnimations:(id)animations
{
  v15.receiver = self;
  v15.super_class = UIVisualEffectView;
  animationsCopy = animations;
  [(UIView *)&v15 _generateDeferredAnimations:animationsCopy];
  v5 = [(_UIVisualEffectEnvironment *)self->_environment traitCollection:v15.receiver];

  if (!v5)
  {
    traitCollection = [(UIView *)self traitCollection];
    [(_UIVisualEffectEnvironment *)self->_environment setTraitCollection:traitCollection];
  }

  v7 = [animationsCopy objectForKeyedSubscript:@"backgroundEffects"];
  v8 = [animationsCopy objectForKeyedSubscript:@"contentEffects"];
  v9 = [animationsCopy objectForKeyedSubscript:@"effect"];

  if (v7 || v8 || v9)
  {
    if (!v9 || ([v9 animationFrames], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11 > 2))
    {
      animationFrames = [v7 animationFrames];
      if ([animationFrames count] >= 3)
      {
      }

      else
      {
        animationFrames2 = [v8 animationFrames];
        v14 = [animationFrames2 count];

        if (v14 <= 2)
        {
          [(UIVisualEffectView *)self _generateBackgroundEffects:v7 contentEffects:v8];
          goto LABEL_14;
        }
      }

      NSLog(&cfstr_TrueKeyframeAn.isa);
      goto LABEL_14;
    }

    [(UIVisualEffectView *)self _generateEffectAnimations:v9];
  }

LABEL_14:
}

- (void)setEffect:(UIVisualEffect *)effect
{
  v4 = effect;
  v5 = v4;
  if (self->_effect != v4)
  {
LABEL_2:
    v12 = v5;
    v6 = [(UIVisualEffectView *)self _interceptGlassEffect:v5];

    v7 = [(UIView *)self _deferredAnimationForKey:@"effect"];
    v8 = [(UIVisualEffect *)v6 copy];
    v9 = self->_effect;
    self->_effect = v8;

    if (self->_effect)
    {
      [v7 addAnimationFrameForValue:?];
      if (v7)
      {
LABEL_5:

        v5 = v6;
        goto LABEL_7;
      }
    }

    else
    {
      v10 = +[UIVisualEffect emptyEffect];
      [v7 addAnimationFrameForValue:v10];

      if (v7)
      {
        goto LABEL_5;
      }
    }

    [(UIVisualEffectView *)self _updateEffectsFromLegacyEffect];
    goto LABEL_5;
  }

  if (!v4)
  {
    _glassEffect = [(UIView *)self _glassEffect];

    v5 = 0;
    if (_glassEffect)
    {
      goto LABEL_2;
    }

    v5 = 0;
  }

LABEL_7:
}

- (id)_interceptGlassEffect:(id)effect
{
  effectCopy = effect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self _setGlassEffect:effectCopy];
LABEL_5:

    effectCopy = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self _setGlassContainerEffect:effectCopy];
    goto LABEL_5;
  }

  [(UIView *)self _setGlassEffect:0];
LABEL_7:

  return effectCopy;
}

- (void)setBackgroundEffects:(id)effects
{
  effectsCopy = effects;
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1039 description:@"Setting background effects on a dependent visual effect view is not supported"];
  }

  if (effectsCopy)
  {
    v7 = effectsCopy;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v14 = v7;
  if ((_UIVisualEffectAssertEffectConstraints(v7) & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1043 description:{@"backgroundEffects can contain at most 1 UIBlurEffect and 1 UIVibrancyEffect (%@)", v14}];
  }

  if (![(NSArray *)self->_backgroundEffects isEqualToArray:v14])
  {
    if ([(UIView *)self _hasDeferredAnimationForKey:?])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1045 description:@"You cannot animate the effects property alongside the backgroundEffects property. Switch to using backgroundEffects exclusively."];
    }

    v8 = [(UIView *)self _deferredAnimationForKey:@"backgroundEffects"];
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v14 copyItems:1];
    backgroundEffects = self->_backgroundEffects;
    self->_backgroundEffects = v9;

    if (v8)
    {
      [v8 addAnimationFrameForValue:self->_backgroundEffects];
    }

    else
    {
      *&self->_effectViewFlags |= 1u;
      [(UIVisualEffectView *)self _configureEffects];
    }

    [(UIVisualEffectView *)self _updateCaptureDependents];
  }
}

- (void)setContentEffects:(id)effects
{
  effectsCopy = effects;
  if (!effectsCopy)
  {
    effectsCopy = MEMORY[0x1E695E0F0];
  }

  v11 = effectsCopy;
  if ((_UIVisualEffectAssertEffectConstraints(effectsCopy) & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1064 description:{@"contentEffects can contain at most 1 UIBlurEffect and 1 UIVibrancyEffect (%@)", v11}];
  }

  if (![(NSArray *)self->_contentEffects isEqualToArray:v11])
  {
    if ([(UIView *)self _hasDeferredAnimationForKey:?])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1066 description:@"You cannot animate the effects property alongside the contentEffects property. Switch to using contentEffects exclusively."];
    }

    v6 = [(UIView *)self _deferredAnimationForKey:@"contentEffects"];
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v11 copyItems:1];
    contentEffects = self->_contentEffects;
    self->_contentEffects = v7;

    if (v6)
    {
      [v6 addAnimationFrameForValue:self->_contentEffects];
    }

    else
    {
      *&self->_effectViewFlags |= 2u;
      [(UIVisualEffectView *)self _configureEffects];
    }
  }
}

- (id)_effectDescriptorForEffects:(id)effects usage:(int64_t)usage
{
  v19 = *MEMORY[0x1E69E9840];
  effectsCopy = effects;
  v7 = objc_alloc_init(_UIVisualEffectDescriptor);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = effectsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * i) _updateEffectDescriptor:v7 forEnvironment:self->_environment usage:{usage, v14}];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_updateSubView:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  [viewCopy setFrame:{x, y, width, height}];
  [viewCopy setAutoresizingMask:18];
  [viewCopy _setShouldAdaptToMaterials:0];
  cornerMask = self->__cornerMask;
  layer = [viewCopy layer];
  if (cornerMask)
  {
    [(_UIVisualEffectViewCornerMask *)cornerMask _applyToLayer:layer];
  }

  else
  {
    [_UIVisualEffectViewCornerMask _applyZeroMaskToLayer:layer];
  }

  [(UIView *)self addSubview:viewCopy];
}

- (void)_setGroupName:(id)name
{
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_loadWeakRetained(&self->_captureSource);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1205 description:{@"Dependent Visual Effect Views cannot have an independently set group name. Set your group name on on '%@'", v7}];
  }

  [(_UIVisualEffectViewBackdropCaptureGroup *)self->_captureGroup setGroupName:nameCopy];
}

- (void)_setCaptureView:(id)view
{
  v19 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);

  if (!WeakRetained)
  {
    if (!viewCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_loadWeakRetained(&self->_captureSource);
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1217 description:{@"Dependent Visual Effect Views cannot have an independently set capture view. Set your capture view on '%@'", v13}];

  if (viewCopy)
  {
LABEL_3:
    [(UIVisualEffectView *)self _ensureBackgroundHost];
  }

LABEL_4:
  [(_UIVisualEffectHost *)self->_backgroundHost setCaptureView:viewCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_captureDependents;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v11++) _setCaptureView:viewCopy];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (NSArray)_captureDependents
{
  v2 = [(NSMutableArray *)self->_captureDependents copy];

  return v2;
}

- (void)_setCaptureDependents:(id)dependents
{
  v39 = *MEMORY[0x1E69E9840];
  dependentsCopy = dependents;
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1256 description:@"UIVisualEffectView does not support multi-level capture dependents"];
  }

  v7 = MEMORY[0x1E695E0F0];
  if (dependentsCopy)
  {
    v7 = dependentsCopy;
  }

  v8 = v7;

  if (([(NSMutableArray *)self->_captureDependents isEqualToArray:v8]& 1) == 0)
  {
    v28 = a2;
    groupName = [(_UIVisualEffectViewBackdropCaptureGroup *)self->_captureGroup groupName];

    if (!groupName)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIVisualEffectViewCaptureGroupName(%p)", self->_captureGroup];
      [(_UIVisualEffectViewBackdropCaptureGroup *)self->_captureGroup setGroupName:v10];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = self->_captureDependents;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          objc_storeWeak((*(*(&v33 + 1) + 8 * i) + 496), 0);
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v13);
    }

    v16 = [v8 mutableCopy];
    captureDependents = self->_captureDependents;
    self->_captureDependents = v16;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = self->_captureDependents;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        v22 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * v22);
          if ([v23[54] count])
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:v28 object:self file:@"UIVisualEffectView.m" lineNumber:1267 description:{@"Multi-level capture dependencies are not supported (visual effect view %@ has capture dependents)", v23}];
          }

          v24 = objc_loadWeakRetained(v23 + 62);
          v25 = v24;
          if (v24 != self)
          {
            if (v24)
            {
              _UIVisualEffectViewRemoveDependent(v24, v23);
            }

            _UIVisualEffectViewConfigureDependent(self, v23);
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v20);
    }
  }
}

- (void)_addCaptureDependent:(id)dependent
{
  dependentCopy = dependent;
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1282 description:@"UIVisualEffectView does not support multi-level capture dependents"];
  }

  if ([dependentCopy[54] count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1283 description:{@"Multi-level capture dependencies are not supported (visual effect view %@ has capture dependents)", dependentCopy}];
  }

  v6 = objc_loadWeakRetained(dependentCopy + 62);
  v7 = v6;
  if (v6 != self)
  {
    if (v6)
    {
      _UIVisualEffectViewRemoveDependent(v6, dependentCopy);
    }

    [(NSMutableArray *)self->_captureDependents addObject:dependentCopy];
    _UIVisualEffectViewConfigureDependent(self, dependentCopy);
  }
}

- (void)_removeCaptureDependent:(id)dependent
{
  dependentCopy = dependent;
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1297 description:@"UIVisualEffectView does not support multi-level capture dependents"];
  }

  v6 = objc_loadWeakRetained(dependentCopy + 62);

  if (v6 == self)
  {
    _UIVisualEffectViewRemoveDependent(self, dependentCopy);
  }
}

- (int64_t)_renderMode
{
  backgroundHost = self->_backgroundHost;
  if (!backgroundHost)
  {
    return 0;
  }

  contentView = [(_UIVisualEffectHost *)backgroundHost contentView];
  superview = [contentView superview];

  if (superview)
  {
    superview = [contentView renderMode];
  }

  return superview;
}

- (void)_setRenderMode:(int64_t)mode
{
  [(UIVisualEffectView *)self _ensureBackgroundHost];
  contentView = [(_UIVisualEffectHost *)self->_backgroundHost contentView];
  [contentView setRenderMode:mode];
}

- (void)_setCornerRadius:(double)radius
{
  layer = [(UIView *)self layer];
  cornerCurve = [layer cornerCurve];
  v7 = cornerCurve == *MEMORY[0x1E69796E8];

  [(UIVisualEffectView *)self _setCornerRadius:v7 continuous:15 maskedCorners:radius];
}

- (double)_continuousCornerRadius
{
  cornerMask = self->__cornerMask;
  if (!cornerMask)
  {
    return 0.0;
  }

  [(_UIVisualEffectViewCornerMask *)cornerMask radius];
  return result;
}

- (id)_cornerCurve
{
  v3 = *MEMORY[0x1E69796E0];
  if ([(_UIVisualEffectViewCornerMask *)self->__cornerMask cornersAreContinuous])
  {
    v4 = *MEMORY[0x1E69796E8];

    v3 = v4;
  }

  return v3;
}

- (void)_setCornerRadius:(double)radius continuous:(BOOL)continuous maskedCorners:(unint64_t)corners
{
  continuousCopy = continuous;
  v9 = self->__cornerMask;
  v13 = v9;
  if (!v9 || (v10 = [(_UIVisualEffectViewCornerMask *)v9 _isCornerWithRadius:continuousCopy continuous:corners mask:radius], v11 = v13, !v10))
  {
    if (continuousCopy)
    {
      [_UIVisualEffectViewCornerMask continuousCornerMaskWithRadius:radius];
    }

    else
    {
      [_UIVisualEffectViewCornerMask cornerMaskWithRadius:radius];
    }
    v12 = ;

    v14 = [v12 cornerMaskAppliedToCorners:corners];

    v11 = v14;
  }

  v15 = v11;
  [(UIVisualEffectView *)self _setCornerMask:v11];
}

- (void)_setCornerMask:(id)mask
{
  maskCopy = mask;
  cornerMask = self->__cornerMask;
  if (cornerMask != maskCopy)
  {
    v8 = maskCopy;
    if (!maskCopy || !cornerMask || ![(_UIVisualEffectViewCornerMask *)cornerMask isEqual:maskCopy])
    {
      v6 = [(_UIVisualEffectViewCornerMask *)v8 copy];
      v7 = self->__cornerMask;
      self->__cornerMask = v6;

      [(UIVisualEffectView *)self _applyCornerRadiusToSubviews];
    }

    [(UIVisualEffectView *)self _updateCornerTraits];
    maskCopy = v8;
  }
}

- (void)setAllowsDithering:(BOOL)dithering
{
  effectViewFlags = self->_effectViewFlags;
  if (((((effectViewFlags & 4) == 0) ^ dithering) & 1) == 0)
  {
    if (dithering)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&self->_effectViewFlags = effectViewFlags & 0xFB | v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__UIVisualEffectView_setAllowsDithering___block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [(UIVisualEffectView *)self _updateEnvironmentAndFlagUpdatesIfNecessary:v6];
    [(UIVisualEffectView *)self _configureEffects];
  }
}

- (void)setBlurQuality:(int64_t)quality
{
  if (self->_blurQuality != quality)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_blurQuality = quality;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__UIVisualEffectView_setBlurQuality___block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [(UIVisualEffectView *)self _updateEnvironmentAndFlagUpdatesIfNecessary:v6];
    [(UIVisualEffectView *)self _configureEffects];
  }
}

- (id)_maskImageForMaskView:(id)view
{
  viewCopy = view;
  v4 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v4 setPreferredRange:0x7FFFLL];
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [[UIGraphicsImageRenderer alloc] initWithBounds:v4 format:v5, v7, v9, v11];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__UIVisualEffectView__maskImageForMaskView___block_invoke;
  v17[3] = &unk_1E70F6F38;
  v18 = viewCopy;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  v14 = viewCopy;
  v15 = [(UIGraphicsImageRenderer *)v13 imageWithActions:v17];

  return v15;
}

- (void)_setMaskView:(id)view
{
  p_super = view;
  maskView = self->_maskView;
  if (maskView)
  {
    v6 = maskView == p_super;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    _window = [(UIView *)maskView _window];

    if (_window)
    {
      [(UIView *)self->_maskView _recursivelyUpdateCachedWindowForMoveToWindow:?];
      v8 = self->_maskView;
      _window2 = [(UIView *)v8 _window];
      [(UIView *)v8 _didMoveFromWindow:_window2 toWindow:0];
    }
  }

  if (p_super && !self->_useLiveMasking)
  {
    v10 = [UIImageView alloc];
    [(UIView *)p_super frame];
    v11 = [(UIImageView *)v10 initWithFrame:?];
    v12 = [(UIVisualEffectView *)self _maskImageForMaskView:p_super];
    [(UIImageView *)v11 setImage:v12];

    p_super = &v11->super;
  }

  maskImage = self->_maskImage;
  self->_maskImage = 0;

  v14 = self->_maskView;
  self->_maskView = p_super;
  v15 = p_super;

  *(&self->super._viewFlags + 1) = *(&self->super._viewFlags + 1) & 0xFFFFFFFFFFBFFFFFLL | ((v15 != 0) << 22);
  layer = [(UIView *)self->_maskView layer];

  layer2 = [(UIView *)self layer];
  [layer2 setMask:layer];
}

- (void)_setMaskImage:(id)image
{
  imageCopy = image;
  if (self->_maskImage != imageCopy)
  {
    v12 = imageCopy;
    objc_storeStrong(&self->_maskImage, image);
    v6 = [UIImageView alloc];
    [(UIView *)self bounds];
    v7 = [(UIImageView *)v6 initWithFrame:?];
    [(UIView *)v7 setImage:self->_maskImage];
    maskView = self->_maskView;
    self->_maskView = v7;
    v9 = v7;

    layer = [(UIView *)self->_maskView layer];

    layer2 = [(UIView *)self layer];
    [layer2 setMask:layer];

    imageCopy = v12;
  }
}

- (BOOL)_allowsGroupFiltering
{
  contentView = [(_UIVisualEffectHost *)self->_contentHost contentView];
  disableGroupFiltering = [contentView disableGroupFiltering];

  return disableGroupFiltering ^ 1;
}

- (void)_setAllowsGroupFiltering:(BOOL)filtering
{
  filteringCopy = filtering;
  if (!filtering && !self->_contentHost)
  {
    [(UIVisualEffectView *)self _ensureContentHostWithView:0];
  }

  contentView = [(_UIVisualEffectHost *)self->_contentHost contentView];
  [contentView setDisableGroupFiltering:!filteringCopy];
}

- (void)_setIsContentViewStatic:(BOOL)static
{
  staticCopy = static;
  if (static)
  {
    v4 = 0x80;
  }

  else
  {
    v4 = 0;
  }

  *&self->_effectViewFlags = v4 & 0x80 | *&self->_effectViewFlags & 0x7F;
  traitOverrides = [(UIView *)self traitOverrides];
  [traitOverrides setNSIntegerValue:staticCopy forTrait:objc_opt_class()];
}

- (BOOL)assertionActivationStateForType:(unint64_t)type
{
  if (type)
  {
    return 0;
  }

  else
  {
    return ![(UIVisualEffectView *)self _isContentViewStatic:v3];
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (!type)
  {
    [(UIVisualEffectView *)self _setIsContentViewStatic:!state];
  }
}

- (BOOL)__shouldShowVisualizationForSubclass:(BOOL *)subclass isOtherModule:(BOOL *)module
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    if (subclass)
    {
      *subclass = [(UIVisualEffectView *)self isMemberOfClass:objc_opt_class()]^ 1;
    }

    if (module)
    {
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v10 = _UIKitBundle();
      *module = [v9 isEqual:v10] ^ 1;
    }
  }

  return has_internal_diagnostics;
}

- (id)__titleForMainBlurEffect
{
  effect = [(UIVisualEffectView *)self effect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    effect2 = [(UIVisualEffectView *)self effect];
    v6 = [(UIVisualEffectView *)self __titleForBlurEffect:effect2];
  }

  else
  {
    v6 = @"Vibrancy";
  }

  return v6;
}

- (id)__titleForContentBlurEffect
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contentEffects = [(UIVisualEffectView *)self contentEffects];
  v4 = [contentEffects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(contentEffects);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [(UIVisualEffectView *)self __titleForBlurEffect:v8];
          goto LABEL_11;
        }
      }

      v5 = [contentEffects countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)__titleForBackgroundBlurEffect
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  backgroundEffects = [(UIVisualEffectView *)self backgroundEffects];
  v4 = [backgroundEffects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(backgroundEffects);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [(UIVisualEffectView *)self __titleForBlurEffect:v8];
          goto LABEL_11;
        }
      }

      v5 = [backgroundEffects countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)__titleForBlurEffect:(id)effect
{
  effectCopy = effect;
  _style = [effectCopy _style];
  if (_style <= 1206)
  {
    if (_style <= 98)
    {
      v5 = @"ExtraLight";
      switch(_style)
      {
        case 0:
          goto LABEL_69;
        case 1:
          v5 = @"Light";
          break;
        case 2:
          v5 = @"Dark";
          break;
        case 3:
          v5 = @"ExtraDark";
          break;
        case 4:
          v5 = @"Regular";
          break;
        case 5:
          v5 = @"Prominent";
          break;
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
          goto LABEL_59;
        case 11:
        case 16:
          v5 = @"UltraThin";
          break;
        case 12:
        case 17:
          v5 = @"Thin";
          break;
        case 13:
        case 18:
          v5 = @"System";
          break;
        case 14:
        case 19:
          v5 = @"Thick";
          break;
        case 15:
        case 20:
          v5 = @"Chrome";
          break;
        default:
          if (_style != 0x8000000000000000)
          {
            goto LABEL_59;
          }

          v5 = @"Undefined";
          break;
      }

      goto LABEL_69;
    }

    if (_style <= 1199)
    {
      if (_style > 501)
      {
        if ((_style - 1101) < 2)
        {
          v5 = @"ChromeBG";
          goto LABEL_69;
        }

        if (_style == 502)
        {
          v5 = @"LightEmojiKeyboard";
          goto LABEL_69;
        }

        if (_style == 1000)
        {
          v5 = @"Automatic";
          goto LABEL_69;
        }
      }

      else
      {
        switch(_style)
        {
          case 99:
            v5 = @"UltraDark";
            goto LABEL_69;
          case 100:
            v5 = @"UltraColored";
            goto LABEL_69;
          case 501:
            v5 = @"LightKeyboard";
            goto LABEL_69;
        }
      }

LABEL_59:
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"??%zd", objc_msgSend(effectCopy, "_style")];
      goto LABEL_69;
    }

    if (_style > 1202)
    {
      if (_style <= 1204)
      {
        if (_style != 1203)
        {
          goto LABEL_36;
        }

LABEL_52:
        v5 = @"VThickBG";
        goto LABEL_69;
      }

      if (_style == 1205)
      {
LABEL_45:
        v5 = @"VUltraThinBG";
        goto LABEL_69;
      }

LABEL_53:
      v5 = @"VThinBG";
      goto LABEL_69;
    }

    if (_style != 1200)
    {
      if (_style == 1201)
      {
        goto LABEL_45;
      }

      goto LABEL_53;
    }

LABEL_36:
    v5 = @"VRegularBG";
    goto LABEL_69;
  }

  if (_style <= 5000)
  {
    if (_style > 1209)
    {
      switch(_style)
      {
        case 4000:
        case 4005:
          goto LABEL_39;
        case 4001:
        case 4006:
          goto LABEL_38;
        case 4002:
        case 4007:
          v5 = @"ATVAutomatic";
          goto LABEL_69;
        case 4003:
        case 4008:
          goto LABEL_28;
        case 4004:
        case 4009:
          goto LABEL_37;
        case 4010:
          v5 = @"ATVAdaptive";
          goto LABEL_69;
        case 4011:
          v5 = @"ATVAdaptiveLighten";
          goto LABEL_69;
        case 4012:
        case 4013:
          goto LABEL_43;
        case 4014:
        case 4015:
          goto LABEL_18;
        case 4016:
          v5 = @"ATVBlackTextField";
          goto LABEL_69;
        case 4017:
        case 4018:
          goto LABEL_42;
        default:
          if (_style == 1210)
          {
            goto LABEL_53;
          }

          if (_style == 1211)
          {
            goto LABEL_52;
          }

          goto LABEL_59;
      }
    }

    if (_style == 1207)
    {
      goto LABEL_52;
    }

    if (_style != 1208)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (_style <= 5003)
  {
    if (_style == 5001)
    {
LABEL_39:
      v5 = @"ATVSemi";
    }

    else if (_style == 5002)
    {
LABEL_38:
      v5 = @"ATVMedium";
    }

    else
    {
LABEL_28:
      v5 = @"ATVUltra";
    }
  }

  else
  {
    if (_style > 5005)
    {
      if (_style == 5006)
      {
LABEL_43:
        v5 = @"ATVTextField";
        goto LABEL_69;
      }

      if (_style == 5007)
      {
LABEL_42:
        v5 = @"ATVTabBar";
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    if (_style == 5004)
    {
LABEL_37:
      v5 = @"ATVMenu";
    }

    else
    {
LABEL_18:
      v5 = @"ATVAccessory";
    }
  }

LABEL_69:

  return v5;
}

- (id)__markerLayerColorForSubclass:(BOOL)subclass otherModule:(BOOL)module
{
  if (module)
  {
    v5 = +[UIColor systemDarkRedColor];
  }

  else
  {
    if (subclass)
    {
      +[UIColor systemMintColor];
    }

    else
    {
      +[UIColor systemDarkBlueColor];
    }
    v5 = ;
    effect = [(UIVisualEffectView *)self effect];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [effect _style] == 0x8000000000000000)
    {
      v7 = +[UIColor systemCyanColor];

      v5 = v7;
    }
  }

  return v5;
}

- (void)__vis_layoutSubviews
{
  [(UIVisualEffectView *)self __vis_layoutSubviews];
  if (os_variant_has_internal_diagnostics())
  {
    v18 = 0;
    if ([(UIVisualEffectView *)self __shouldShowVisualizationForSubclass:&v18 + 1 isOtherModule:&v18])
    {
      v3 = objc_getAssociatedObject(self, &__UIMaterialMarkerLayerKey);
      if (!v3)
      {
        v3 = objc_alloc_init(_UIViewMarkerLayer);
        objc_setAssociatedObject(self, &__UIMaterialMarkerLayerKey, v3, 1);
      }

      superlayer = [(_UIViewMarkerLayer *)v3 superlayer];

      if (!superlayer)
      {
        layer = [(UIView *)self layer];
        superlayer2 = [layer superlayer];

        layer2 = [(UIView *)self layer];
        v8 = layer2;
        if (superlayer2)
        {
          superlayer3 = [layer2 superlayer];
          [superlayer3 addSublayer:v3];
        }

        else
        {
          [layer2 addSublayer:v3];
        }
      }

      __titleForMainBlurEffect = [(UIVisualEffectView *)self __titleForMainBlurEffect];
      [(_UIViewMarkerLayer *)v3 setLabel:__titleForMainBlurEffect];

      [(_UIViewMarkerLayer *)v3 setLabelAlignment:1];
      __titleForContentBlurEffect = [(UIVisualEffectView *)self __titleForContentBlurEffect];
      if (__titleForContentBlurEffect)
      {
        [(_UIViewMarkerLayer *)v3 setLabel:__titleForContentBlurEffect subLabel:0 withAlignment:0];
      }

      else
      {
        [(_UIViewMarkerLayer *)v3 removeLabelWithAlignment:0];
      }

      __titleForBackgroundBlurEffect = [(UIVisualEffectView *)self __titleForBackgroundBlurEffect];
      if (__titleForBackgroundBlurEffect)
      {
        [(_UIViewMarkerLayer *)v3 setLabel:__titleForBackgroundBlurEffect subLabel:0 withAlignment:5];
      }

      else
      {
        [(_UIViewMarkerLayer *)v3 removeLabelWithAlignment:5];
      }

      v13 = [(UIVisualEffectView *)self __markerLayerColorForSubclass:HIBYTE(v18) otherModule:v18];
      [(_UIViewMarkerLayer *)v3 setAlternateColor:v13];
      [(UIView *)self bounds];
      [(_UIViewMarkerLayer *)v3 setFrame:?];
      superlayer4 = [(_UIViewMarkerLayer *)v3 superlayer];
      layer3 = [(UIView *)self layer];
      superlayer5 = [layer3 superlayer];

      if (superlayer4 == superlayer5)
      {
        layer4 = [(UIView *)self layer];
        [layer4 position];
        [(_UIViewMarkerLayer *)v3 setPosition:?];
      }

      [(_UIViewMarkerLayer *)v3 setZPosition:1000.0];
    }
  }
}

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  subviewCopy = subview;
  toCopy = to;
  if (*&self->_effectViewFlags & 0x20) != 0 && ([subviewCopy conformsToProtocol:&unk_1EFEDA810])
  {
LABEL_7:
    v13.receiver = self;
    v13.super_class = UIVisualEffectView;
    [(UIView *)&v13 _addSubview:subviewCopy positioned:positioned relativeTo:toCopy];
    goto LABEL_8;
  }

  if (!dyld_program_sdk_at_least())
  {
    v12 = *(__UILogGetCategoryCachedImpl("VisualEffect", &_addSubview_positioned_relativeTo____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = subviewCopy;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@ has been added as a subview to %@. Do not add subviews directly to the visual effect view itself, instead add them to the -contentView.", buf, 0x16u);
    }

    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:1855 description:{@"%@ has been added as a subview to %@. Do not add subviews directly to the visual effect view itself, instead add them to the -contentView.", subviewCopy, self}];

LABEL_8:
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = UIVisualEffectView;
  v5 = [(UIView *)&v16 _traitCollectionForChildEnvironment:environmentCopy];
  contentHost = self->_contentHost;
  if (contentHost)
  {
    contentView = [(_UIVisualEffectHost *)contentHost contentView];

    if (contentView == environmentCopy)
    {
      currentEffectDescriptor = [(_UIVisualEffectHost *)self->_contentHost currentEffectDescriptor];
      textShouldRenderWithTintColor = [currentEffectDescriptor textShouldRenderWithTintColor];

      if (textShouldRenderWithTintColor)
      {
        v10 = 2;
LABEL_7:
        v13 = [v5 _traitCollectionByReplacingNSIntegerValue:v10 forTraitToken:0x1EFE325A8];

        v5 = v13;
        goto LABEL_8;
      }

      currentEffectDescriptor2 = [(_UIVisualEffectHost *)self->_backgroundHost currentEffectDescriptor];
      allowsVibrancyInContent = [currentEffectDescriptor2 allowsVibrancyInContent];

      if (allowsVibrancyInContent)
      {
        v10 = 1;
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v14 = v5;

  return v5;
}

- (id)_debug
{
  backgroundEffects = self->_backgroundEffects;
  backgroundHost = self->_backgroundHost;
  v5 = MEMORY[0x1E696AEC0];
  contentEffects = self->_contentEffects;
  contentHost = self->_contentHost;
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);
  v9 = [v5 stringWithFormat:@"backgroundEffects=%@ backgroundHost=%@ contentEffects=%@ contentHost=%@ capture=(source=%@, dependents=%@)", backgroundEffects, backgroundHost, contentEffects, contentHost, WeakRetained, self->_captureDependents];

  return v9;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = UIVisualEffectView;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if ([(_UIVisualEffectHost *)self->_contentHost contentViewRequired])
  {
    [v4 appendString:@" clientRequestedContentView"];
  }

  if (self->_effect)
  {
    [v4 appendFormat:@" effect=%@", self->_effect];
  }

  else
  {
    [v4 appendString:@" effect=none"];
  }

  return v4;
}

- (void)_setBackdropViewBackgroundColorAlpha:(double)alpha
{
  if (alpha <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  *&self->_effectViewFlags = *&self->_effectViewFlags & 0xBF | ((v4 != 0) << 6);
  v5 = v4;
  objc_setAssociatedObject(self, &_UIVisualEffectViewBackdropViewBackgroundColorAlpha, v4, 0x301);
}

- (double)_backdropViewBackgroundColorAlpha
{
  if ((*&self->_effectViewFlags & 0x40) == 0)
  {
    return 0.0;
  }

  v3 = objc_getAssociatedObject(self, &_UIVisualEffectViewBackdropViewBackgroundColorAlpha);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)_setUseReducedTransparencyForContentEffects:(BOOL)effects
{
  effectViewFlags = self->_effectViewFlags;
  if (((((effectViewFlags & 0x10) == 0) ^ effects) & 1) == 0)
  {
    if (effects)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *&self->_effectViewFlags = effectViewFlags & 0xEF | v4;
    if (effects)
    {
      [(UIVisualEffectView *)self _updateEffectForReducedTransparency];
    }

    else
    {
      [(UIVisualEffectView *)self _resetEffect];
    }
  }
}

- (void)_updateEffectForSnapshotWillBegin:(id)begin
{
  window = [(UIView *)self window];

  if (window)
  {
    [(UIVisualEffectView *)self _updateEffectBackgroundColor];

    [(UIVisualEffectView *)self _updateEffectForReducedTransparency];
  }
}

- (void)_updateEffectForSnapshotDidEnd:(id)end
{
  window = [(UIView *)self window];

  if (window)
  {

    [(UIVisualEffectView *)self _resetEffect];
  }
}

- (void)_updateEffectBackgroundColor
{
  v21 = *MEMORY[0x1E69E9840];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_backgroundEffects;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 _isATVStyle] && objc_msgSend(v10, "_isAutomaticStyle"))
          {
            if (userInterfaceStyle == 1000 || userInterfaceStyle == 2)
            {
              v12 = 0.0;
            }

            else
            {
              v12 = 0.7;
            }

            [(UIVisualEffectView *)self _backdropViewBackgroundColorAlpha];
            v14 = [UIColor colorWithWhite:v12 alpha:v13];
            contentView = [(_UIVisualEffectHost *)self->_backgroundHost contentView];
            [contentView setBackgroundColor:v14];

            goto LABEL_19;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }
}

- (void)_resetEffect
{
  contentView = [(_UIVisualEffectHost *)self->_backgroundHost contentView];
  [contentView setBackgroundColor:0];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__UIVisualEffectView__resetEffect__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(UIVisualEffectView *)self _updateEnvironmentAndFlagUpdatesIfNecessary:v4];
  *&self->_effectViewFlags = *&self->_effectViewFlags & 0xED | 2;
  [(UIVisualEffectView *)self _configureEffects];
}

- (void)_updateEffectForReducedTransparency
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__UIVisualEffectView__updateEffectForReducedTransparency__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(UIVisualEffectView *)self _updateEnvironmentAndFlagUpdatesIfNecessary:v3];
  *&self->_effectViewFlags |= 0x10u;
  [(UIVisualEffectView *)self _configureEffects];
}

- (UIVisualEffectView)_captureSource
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSource);

  return WeakRetained;
}

@end