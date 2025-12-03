@interface UIVisualEffectBackingHost
- (BOOL)_hasDeferredAnimations;
- (UIView)view;
- (id)_effectDescriptorForEffects:(id)effects usage:(int64_t)usage;
- (id)_initialValueForKey:(id)key;
- (id)_mergedTraitCollection;
- (id)initForView:(id)view;
- (void)_configureEffects;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_ensureBackgroundHost;
- (void)_ensureContentHost;
- (void)_generateBackgroundEffects:(id)effects contentEffects:(id)contentEffects;
- (void)_generateDeferredAnimations:(id)animations;
- (void)_registerNotifications;
- (void)_setCaptureGroupName:(id)name;
- (void)_unregisterNotifications;
- (void)_updateContentViewVibrancyTraitOverride:(id)override;
- (void)_updateEffectForAccessibilityChanges:(id)changes;
- (void)_updateEnvironmentAndFlagUpdatesIfNecessary:(id)necessary;
- (void)_updateSubviews;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)invalidateCaptureGroupName;
- (void)setBackgroundEffects:(id)effects;
- (void)setContentEffects:(id)effects;
- (void)setVisualEffect:(id)effect;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIVisualEffectBackingHost

- (id)_mergedTraitCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  traitCollection = [WeakRetained traitCollection];

  return traitCollection;
}

- (void)_configureEffects
{
  if ((*&self->_flags & 3) == 0)
  {
    return;
  }

  selfCopy = self;
  ++selfCopy->_reentrantCount;
  v17 = selfCopy;
  traitCollection = [(_UIVisualEffectEnvironment *)selfCopy->_environment traitCollection];

  if (!traitCollection)
  {
    _mergedTraitCollection = [(UIVisualEffectBackingHost *)v17 _mergedTraitCollection];
    [(_UIVisualEffectEnvironment *)v17->_environment setTraitCollection:_mergedTraitCollection];
  }

  if (*&self->_flags)
  {
    [(UIVisualEffectBackingHost *)v17 _ensureBackgroundHost];
    v8 = [(UIVisualEffectBackingHost *)v17 _effectDescriptorForEffects:v17->_backgroundEffects usage:1];
    [(_UIVisualEffectHost *)v17->_backgroundHost setPrimaryCaptureGroup:v17->_captureGroup];
    if ((*&self->_flags & 8) == 0)
    {
      captureGroup = v17->_captureGroup;
      contentView = [(_UIVisualEffectHost *)v17->_backgroundHost contentView];
      [contentView setCaptureGroup:captureGroup];
    }

    v7 = v17->_backgroundHost;
    *&self->_flags &= ~1u;
    layerHitTestsAsOpaque = [v8 layerHitTestsAsOpaque];
    WeakRetained = objc_loadWeakRetained(&v17->_view);
    layer = [WeakRetained layer];
    [layer setHitTestsAsOpaque:layerHitTestsAsOpaque];

    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v7 = 0;
  v8 = 0;
  if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  [(UIVisualEffectBackingHost *)v17 _ensureContentHost];
  v9 = [(UIVisualEffectBackingHost *)v17 _effectDescriptorForEffects:v17->_contentEffects usage:2];
  v10 = v17->_contentHost;
  *&self->_flags &= ~2u;
LABEL_12:
  [(_UIVisualEffectHost *)v7 setCurrentEffectDescriptor:v8];
  [(_UIVisualEffectHost *)v10 setCurrentEffectDescriptor:v9];
  [(UIVisualEffectBackingHost *)v17 _updateSubviews];
  --v17->_reentrantCount;
  v16 = objc_loadWeakRetained(&v17->_view);
  [(UIView *)v16 _backing_unwrapIfPossible];
}

- (void)_registerNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateEffectForAccessibilityChanges_ name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];
}

- (void)invalidateCaptureGroupName
{
  if (self->_captureGroupName)
  {
    captureGroup = self->_captureGroup;

    [(_UIVisualEffectViewBackdropCaptureGroup *)captureGroup setGroupName:?];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    weakRetained = [v4 stringWithFormat:@"%p", WeakRetained];
    [(_UIVisualEffectViewBackdropCaptureGroup *)self->_captureGroup setGroupName:weakRetained];
  }
}

- (void)_ensureContentHost
{
  if (!self->_contentHost)
  {
    v4 = [_UIVisualEffectHost alloc];
    v5 = [_UIVisualEffectBackingFakeView alloc];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v7 = [(_UIVisualEffectBackingFakeView *)v5 initWithClientView:WeakRetained];
    v8 = [(_UIVisualEffectHost *)v4 initWithContentView:v7];
    contentHost = self->_contentHost;
    self->_contentHost = v8;

    v10 = self->_contentHost;

    [(_UIVisualEffectHost *)v10 setContentViewRequired:1];
  }
}

- (void)_updateSubviews
{
  v3 = MEMORY[0x1E695DFA8];
  visualEffectSubviews = [(UIVisualEffectBackingHost *)self visualEffectSubviews];
  v5 = [v3 setWithArray:visualEffectSubviews];

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

  v12 = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__UIVisualEffectBackingHost__updateSubviews__block_invoke;
  v17[3] = &unk_1E70F6228;
  v17[4] = self;
  v18 = v11;
  v19 = v5;
  v13 = v5;
  v14 = v12;
  [UIView performWithoutAnimation:v17];
  v15 = [v14 copy];
  [(UIVisualEffectBackingHost *)self setVisualEffectSubviews:v15];

  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(UIVisualEffectBackingHost *)self _updateContentViewVibrancyTraitOverride:WeakRetained];
}

void __44__UIVisualEffectBackingHost__updateSubviews__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 8) |= 4u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(a1 + 40) bs_reverse];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = [(UIView *)v7 _backing_outermostLayer];
          [v8 setZPosition:-2.0];

          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
          v10 = WeakRetained;
          if (v7)
          {
            v11 = WeakRetained == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            [(UIView *)WeakRetained _backing_addPrivateSubview:v7 positioned:0 relativeTo:0];
          }
        }

        [*(a1 + 48) removeObject:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(a1 + 48);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        v18 = objc_loadWeakRetained((*(a1 + 32) + 56));
        [(UIView *)v18 _backing_removePrivateSubview:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  *(*(a1 + 32) + 8) &= ~4u;
}

- (void)didMoveToSuperview
{
  [(UIVisualEffectBackingHost *)self invalidateCaptureGroupName];

  [(UIVisualEffectBackingHost *)self _configureEffects];
}

- (BOOL)_hasDeferredAnimations
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (([(UIView *)WeakRetained _hasDeferredAnimationForKey:?]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_view);
    v4 = [(UIView *)v5 _hasDeferredAnimationForKey:?];
  }

  return v4;
}

- (void)dealloc
{
  [(UIVisualEffectBackingHost *)self _unregisterNotifications];
  v3.receiver = self;
  v3.super_class = UIVisualEffectBackingHost;
  [(UIVisualEffectBackingHost *)&v3 dealloc];
}

- (void)_unregisterNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];
}

- (void)_ensureBackgroundHost
{
  if ([(NSArray *)self->_backgroundEffects count]== 1)
  {
    v3 = [(NSArray *)self->_backgroundEffects objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  if (!self->_backgroundHost || ((isKindOfClass ^ ((*&self->_flags & 8) == 0)) & 1) == 0)
  {
    if (isKindOfClass)
    {
      v8 = objc_alloc_init(_UIVisualEffectBackgroundView);
      v5 = *&self->_flags | 8;
    }

    else
    {
      v8 = objc_alloc_init(_UIVisualEffectBackdropView);
      v5 = *&self->_flags & 0xF7;
    }

    *&self->_flags = v5;
    v6 = [[_UIVisualEffectHost alloc] initWithContentView:v8];
    backgroundHost = self->_backgroundHost;
    self->_backgroundHost = v6;

    [(_UIVisualEffectHost *)self->_backgroundHost setPrimaryCaptureGroup:self->_captureGroup];
  }
}

- (id)initForView:(id)view
{
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = UIVisualEffectBackingHost;
  v5 = [(UIVisualEffectBackingHost *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, viewCopy);
    v7 = [[_UIVisualEffectEnvironment alloc] initWithHost:v6];
    environment = v6->_environment;
    v6->_environment = v7;

    [(_UIVisualEffectEnvironment *)v6->_environment setBlurQuality:0];
    WeakRetained = objc_loadWeakRetained(&v6->_view);
    traitCollection = [WeakRetained traitCollection];
    v11 = [traitCollection userInterfaceIdiom] != 3 && _AXSEnhanceBackgroundContrastEnabled() != 0;
    [(_UIVisualEffectEnvironment *)v6->_environment setReducedTransperancy:v11];

    v12 = objc_alloc_init(_UIVisualEffectViewBackdropCaptureGroup);
    captureGroup = v6->_captureGroup;
    v6->_captureGroup = v12;

    contentEffects = v6->_contentEffects;
    v15 = MEMORY[0x1E695E0F0];
    v6->_contentEffects = MEMORY[0x1E695E0F0];

    backgroundEffects = v6->_backgroundEffects;
    v6->_backgroundEffects = v15;

    [(UIVisualEffectBackingHost *)v6 _registerNotifications];
    [(UIVisualEffectBackingHost *)v6 invalidateCaptureGroupName];
  }

  return v6;
}

- (void)_setCaptureGroupName:(id)name
{
  objc_storeStrong(&self->_captureGroupName, name);

  [(UIVisualEffectBackingHost *)self invalidateCaptureGroupName];
}

- (void)setBackgroundEffects:(id)effects
{
  effectsCopy = effects;
  v5 = self->_backgroundEffects;
  v6 = effectsCopy;
  v12 = v6;
  if (v5 == v6)
  {

LABEL_11:
    v8 = v12;
    goto LABEL_12;
  }

  if (!v6 || !v5)
  {

LABEL_8:
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v5 = [WeakRetained _deferredAnimationForKey:@"backgroundEffects"];

    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v12 copyItems:1];
    backgroundEffects = self->_backgroundEffects;
    self->_backgroundEffects = v10;

    if (v5)
    {
      [(NSArray *)v5 addAnimationFrameForValue:self->_backgroundEffects];
    }

    else
    {
      *&self->_flags |= 1u;
      [(UIVisualEffectBackingHost *)self _configureEffects];
    }

    goto LABEL_11;
  }

  v7 = [(NSArray *)v5 isEqual:v6];

  v8 = v12;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_12:
}

- (void)setVisualEffect:(id)effect
{
  v4 = [effect copy];
  visualEffect = self->_visualEffect;
  self->_visualEffect = v4;

  v6 = 0;
  v7 = 0;
  _UIVisualEffectViewUpgradeLegacyEffect(self->_visualEffect, &v7, &v6);
  [(UIVisualEffectBackingHost *)self setContentEffects:v6];
  [(UIVisualEffectBackingHost *)self setBackgroundEffects:v7];
}

- (void)setContentEffects:(id)effects
{
  effectsCopy = effects;
  contentEffects = self->_contentEffects;
  v5 = MEMORY[0x1E695E0F0];
  if (!contentEffects)
  {
    contentEffects = MEMORY[0x1E695E0F0];
  }

  v6 = contentEffects;
  if (effectsCopy)
  {
    v7 = effectsCopy;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  if (![(NSArray *)v6 isEqualToArray:v8])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [WeakRetained _deferredAnimationForKey:@"contentEffects"];

    v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v8 copyItems:1];
    v12 = self->_contentEffects;
    self->_contentEffects = v11;

    if (v10)
    {
      [v10 addAnimationFrameForValue:self->_contentEffects];
    }

    else
    {
      *&self->_flags |= 2u;
      [(UIVisualEffectBackingHost *)self _configureEffects];
    }
  }
}

- (void)_updateEnvironmentAndFlagUpdatesIfNecessary:(id)necessary
{
  v30 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v5 = [(_UIVisualEffectEnvironment *)self->_environment copy];
  necessaryCopy[2](necessaryCopy);
  flags = self->_flags;
  if ((~*&flags & 3) != 0)
  {
    traitCollection = [(_UIVisualEffectEnvironment *)self->_environment traitCollection];
    traitCollection2 = [v5 traitCollection];
    v7 = [traitCollection changedTraitsFromTraitCollection:traitCollection2];

    *&flags = self->_flags;
    if (*&flags)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (*&flags)
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
          *&self->_flags |= 1u;
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

  *&flags = self->_flags;
LABEL_16:
  if ((*&flags & 2) == 0)
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
            *&self->_flags |= 2u;
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
  v4[2] = __66__UIVisualEffectBackingHost__updateEffectForAccessibilityChanges___block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(UIVisualEffectBackingHost *)self _updateEnvironmentAndFlagUpdatesIfNecessary:v4];
  [(UIVisualEffectBackingHost *)self _configureEffects];
}

uint64_t __66__UIVisualEffectBackingHost__updateEffectForAccessibilityChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = [WeakRetained traitCollection];
  v4 = [v3 userInterfaceIdiom] != 3 && _AXSEnhanceBackgroundContrastEnabled() != 0;
  [*(*(a1 + 32) + 64) setReducedTransperancy:v4];

  v5 = _AXSReduceMotionEnabled() != 0;
  v6 = *(*(a1 + 32) + 64);

  return [v6 setReducedMotion:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(_UIVisualEffectEnvironment *)self->_environment traitCollection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__UIVisualEffectBackingHost_traitCollectionDidChange___block_invoke;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  [(UIVisualEffectBackingHost *)self _updateEnvironmentAndFlagUpdatesIfNecessary:v10];
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    flags = self->_flags;
    if ((flags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      v7 = [WeakRetained _deferredAnimationForKey:@"contentEffects"];

      [v7 addAnimationFrameForValue:self->_contentEffects];
      flags = self->_flags;
    }

    if (flags)
    {
      v8 = objc_loadWeakRetained(&self->_view);
      v9 = [v8 _deferredAnimationForKey:@"backgroundEffects"];

      [v9 addAnimationFrameForValue:self->_backgroundEffects];
    }
  }

  else
  {
    [(UIVisualEffectBackingHost *)self _configureEffects];
  }
}

void __54__UIVisualEffectBackingHost_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mergedTraitCollection];
  [*(*(a1 + 32) + 64) setTraitCollection:v2];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = [WeakRetained traitCollection];
  v4 = [v3 userInterfaceIdiom] != 3 && _AXSEnhanceBackgroundContrastEnabled() != 0;
  [*(*(a1 + 32) + 64) setReducedTransperancy:v4];
}

- (void)_generateDeferredAnimations:(id)animations
{
  environment = self->_environment;
  animationsCopy = animations;
  traitCollection = [(_UIVisualEffectEnvironment *)environment traitCollection];

  if (!traitCollection)
  {
    _mergedTraitCollection = [(UIVisualEffectBackingHost *)self _mergedTraitCollection];
    [(_UIVisualEffectEnvironment *)self->_environment setTraitCollection:_mergedTraitCollection];
  }

  v15 = [animationsCopy objectForKeyedSubscript:@"backgroundEffects"];
  v9 = [animationsCopy objectForKeyedSubscript:@"contentEffects"];
  v10 = [animationsCopy objectForKeyedSubscript:@"effect"];

  if (v15 || v9 || v10)
  {
    animationFrames = [v15 animationFrames];
    if ([animationFrames count] >= 3)
    {
    }

    else
    {
      animationFrames2 = [v9 animationFrames];
      v13 = [animationFrames2 count];

      if (v13 <= 2)
      {
        [(UIVisualEffectBackingHost *)self _generateBackgroundEffects:v15 contentEffects:v9];
        goto LABEL_11;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectBackingHost.m" lineNumber:415 description:@"This should not exist."];
  }

LABEL_11:
}

- (void)_generateBackgroundEffects:(id)effects contentEffects:(id)contentEffects
{
  effectsCopy = effects;
  contentEffectsCopy = contentEffects;
  selfCopy = self;
  v9 = selfCopy;
  ++selfCopy->_reentrantCount;
  if (effectsCopy)
  {
    [(UIVisualEffectBackingHost *)selfCopy _ensureBackgroundHost];
    animationFrames = [effectsCopy animationFrames];
    lastObject = [animationFrames lastObject];
    value = [lastObject value];

    v13 = [(UIVisualEffectBackingHost *)v9 _effectDescriptorForEffects:value usage:1];
    [(_UIVisualEffectHost *)v9->_backgroundHost setPrimaryCaptureGroup:v9->_captureGroup];
    if ((*&v9->_flags & 8) == 0)
    {
      captureGroup = v9->_captureGroup;
      contentView = [(_UIVisualEffectHost *)v9->_backgroundHost contentView];
      [contentView setCaptureGroup:captureGroup];
    }

    v16 = v9->_backgroundHost;
    layerHitTestsAsOpaque = [v13 layerHitTestsAsOpaque];
    WeakRetained = objc_loadWeakRetained(&v9->_view);
    layer = [WeakRetained layer];
    [layer setHitTestsAsOpaque:layerHitTestsAsOpaque];

    if (contentEffectsCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = 0;
    v16 = 0;
    if (contentEffectsCopy)
    {
LABEL_5:
      [(UIVisualEffectBackingHost *)v9 _ensureContentHost];
      animationFrames2 = [contentEffectsCopy animationFrames];
      lastObject2 = [animationFrames2 lastObject];
      value2 = [lastObject2 value];
      v23 = [(UIVisualEffectBackingHost *)v9 _effectDescriptorForEffects:value2 usage:2];

      v24 = v9->_contentHost;
      goto LABEL_8;
    }
  }

  v23 = 0;
  v24 = 0;
LABEL_8:
  [(_UIVisualEffectHost *)v16 prepareToTransitionToEffectDescriptor:v13];
  [(_UIVisualEffectHost *)v24 prepareToTransitionToEffectDescriptor:v23];
  v25 = objc_loadWeakRetained(&v9->_view);
  v26 = v25[22];
  if (v26)
  {
    v26 = v26[5];
  }

  v27 = v26;

  if (v27 == v9)
  {
    [(UIVisualEffectBackingHost *)v9 _updateSubviews];
    if (effectsCopy)
    {
      animationFrames3 = [effectsCopy animationFrames];
      v29 = [animationFrames3 count] - 1;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __71__UIVisualEffectBackingHost__generateBackgroundEffects_contentEffects___block_invoke;
      v48[3] = &unk_1E70F6EC0;
      v49 = v16;
      [effectsCopy animateFrameAtIndex:v29 animations:v48];
    }

    if (contentEffectsCopy)
    {
      animationFrames4 = [contentEffectsCopy animationFrames];
      v31 = [animationFrames4 count] - 1;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __71__UIVisualEffectBackingHost__generateBackgroundEffects_contentEffects___block_invoke_2;
      v46[3] = &unk_1E70F6EC0;
      v47 = v24;
      [contentEffectsCopy animateFrameAtIndex:v31 animations:v46];
    }

    transitionEffectDescriptor = [(_UIVisualEffectHost *)v16 transitionEffectDescriptor];
    transitionEffectDescriptor2 = [(_UIVisualEffectHost *)v24 transitionEffectDescriptor];
    objc_initWeak(&location, v9);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __71__UIVisualEffectBackingHost__generateBackgroundEffects_contentEffects___block_invoke_3;
    v36[3] = &unk_1E710B768;
    objc_copyWeak(&v44, &location);
    v37 = effectsCopy;
    v38 = contentEffectsCopy;
    v34 = transitionEffectDescriptor;
    v39 = v34;
    v40 = v16;
    v35 = transitionEffectDescriptor2;
    v41 = v35;
    v42 = v24;
    v43 = v9;
    [UIView _addCompletionWithPosition:v36];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }
}

void __71__UIVisualEffectBackingHost__generateBackgroundEffects_contentEffects___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_17;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [v5 initialValue];
      [WeakRetained setBackgroundEffects:v6];
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = [v7 initialValue];
      [WeakRetained setContentEffects:v8];
    }

    goto LABEL_16;
  }

  if (*(a1 + 32) && (v9 = *(a1 + 48), [*(a1 + 56) transitionEffectDescriptor], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 == v10))
  {
    [*(a1 + 56) endTransition];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 40))
  {
    v12 = *(a1 + 64);
    v13 = [*(a1 + 72) transitionEffectDescriptor];

    if (v12 == v13)
    {
      [*(a1 + 72) endTransition];
      goto LABEL_16;
    }
  }

  if (v11)
  {
LABEL_16:
    [WeakRetained _updateSubviews];
  }

LABEL_17:
  --*(*(a1 + 80) + 48);
  v14 = objc_loadWeakRetained((*(a1 + 80) + 56));
  [(UIView *)v14 _backing_unwrapIfPossible];
}

- (id)_initialValueForKey:(id)key
{
  keyCopy = key;
  if ([@"backgroundEffects" isEqualToString:keyCopy])
  {
    v5 = 40;
LABEL_5:
    v6 = *(&self->super.isa + v5);
    goto LABEL_7;
  }

  if ([@"contentEffects" isEqualToString:keyCopy])
  {
    v5 = 32;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
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

- (void)_updateContentViewVibrancyTraitOverride:(id)override
{
  backgroundHost = self->_backgroundHost;
  overrideCopy = override;
  currentEffectDescriptor = [(_UIVisualEffectHost *)backgroundHost currentEffectDescriptor];
  allowsVibrancyInContent = [currentEffectDescriptor allowsVibrancyInContent];

  if (allowsVibrancyInContent)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  [overrideCopy _setOverrideVibrancyTrait:v6];
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  selfCopy = self;
  contentHost = selfCopy->_contentHost;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_view);
  [(_UIVisualEffectHost *)contentHost _view:WeakRetained willMoveToWindow:toWindow];

  v7 = objc_loadWeakRetained(&selfCopy->_view);
  v8 = v7[22];
  if (v8)
  {
    v8 = v8[5];
  }

  v9 = v8;

  v10 = selfCopy;
  if (v9 == selfCopy)
  {
    [(UIVisualEffectBackingHost *)selfCopy didMoveToWindow];
    v10 = selfCopy;
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end