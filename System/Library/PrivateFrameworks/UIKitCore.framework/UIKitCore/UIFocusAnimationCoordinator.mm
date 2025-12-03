@interface UIFocusAnimationCoordinator
+ (id)_focusAnimationCoordinatorForAnimationType:(int64_t)type withConfiguration:(id)configuration inContext:(id)context;
- (_UIFocusAnimationConfiguration)_activeConfiguration;
- (double)_activeAnimationDuration;
- (double)_animationDelay;
- (double)_focusingAnimationDuration;
- (double)_unfocusingAnimationDuration;
- (double)_unfocusingRepositionAnimationDuration;
- (id)_configurationForFocusAnimation:(int64_t)animation;
- (id)_initWithFocusUpdateContext:(id)context;
- (unint64_t)_animationOptions;
- (void)_animate;
- (void)_animateFocusAnimation:(int64_t)animation;
- (void)_cancelFocusAnimation:(int64_t)animation;
- (void)_configureWithFocusUpdateContext:(id)context;
- (void)_consumeBlocks:(id)blocks;
- (void)_consumeBlocks:(id)blocks withAnimationContext:(id)context;
- (void)_setConfiguration:(id)configuration forFocusAnimation:(int64_t)animation;
- (void)addCoordinatedAnimations:(void *)animations completion:(void *)completion;
- (void)addCoordinatedAnimationsForAnimation:(int64_t)animation animations:(id)animations completion:(id)completion;
- (void)addCoordinatedFocusingAnimations:(void *)animations completion:(void *)completion;
- (void)addCoordinatedUnfocusingAnimations:(void *)animations completion:(void *)completion;
@end

@implementation UIFocusAnimationCoordinator

- (_UIFocusAnimationConfiguration)_activeConfiguration
{
  activeFocusAnimation = [(UIFocusAnimationCoordinator *)self activeFocusAnimation];

  return [(UIFocusAnimationCoordinator *)self _configurationForFocusAnimation:activeFocusAnimation];
}

- (double)_focusingAnimationDuration
{
  _activeConfiguration = [(UIFocusAnimationCoordinator *)self _activeConfiguration];
  [_activeConfiguration focusingBaseDuration];
  v5 = v4;
  _activeConfiguration2 = [(UIFocusAnimationCoordinator *)self _activeConfiguration];
  _focusUpdateContext = [(UIFocusAnimationCoordinator *)self _focusUpdateContext];
  [_activeConfiguration2 _focusingVelocityBasedDurationScaleFactorForAnimationInContext:_focusUpdateContext];
  v9 = v5 * v8;

  return v9;
}

- (double)_unfocusingAnimationDuration
{
  _activeConfiguration = [(UIFocusAnimationCoordinator *)self _activeConfiguration];
  [_activeConfiguration unfocusingBaseDuration];
  v5 = v4;
  _activeConfiguration2 = [(UIFocusAnimationCoordinator *)self _activeConfiguration];
  _focusUpdateContext = [(UIFocusAnimationCoordinator *)self _focusUpdateContext];
  [_activeConfiguration2 _unfocusingVelocityBasedDurationScaleFactorForAnimationInContext:_focusUpdateContext];
  v9 = v5 * v8;

  return v9;
}

+ (id)_focusAnimationCoordinatorForAnimationType:(int64_t)type withConfiguration:(id)configuration inContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusAnimationCoordinator.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v11 = [[self alloc] _initWithFocusUpdateContext:contextCopy];
  [v11 _setConfiguration:configurationCopy forFocusAnimation:type];
  [v11 _prepareForFocusAnimation:type];

  return v11;
}

- (id)_initWithFocusUpdateContext:(id)context
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = UIFocusAnimationCoordinator;
  v6 = [(UIFocusAnimationCoordinator *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_focusUpdateContext, context);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    focusingAnimations = v7->_focusingAnimations;
    v7->_focusingAnimations = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    legacyFocusingAnimations = v7->_legacyFocusingAnimations;
    v7->_legacyFocusingAnimations = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unfocusingAnimations = v7->_unfocusingAnimations;
    v7->_unfocusingAnimations = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    legacyUnfocusingAnimations = v7->_legacyUnfocusingAnimations;
    v7->_legacyUnfocusingAnimations = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    focusingCompletions = v7->_focusingCompletions;
    v7->_focusingCompletions = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unfocusingCompletions = v7->_unfocusingCompletions;
    v7->_unfocusingCompletions = v18;

    if (contextCopy)
    {
      [(UIFocusAnimationCoordinator *)v7 _configureWithFocusUpdateContext:contextCopy];
    }
  }

  return v7;
}

- (void)_configureWithFocusUpdateContext:(id)context
{
  contextCopy = context;
  v30 = contextCopy;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusAnimationCoordinator.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    contextCopy = 0;
  }

  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v7 = [previouslyFocusedView _preferredConfigurationForFocusAnimation:1 inContext:v30];

  if (v7)
  {
    [(UIFocusAnimationCoordinator *)self _setConfiguration:v7 forFocusAnimation:1];
  }

  nextFocusedView = [v30 nextFocusedView];
  v9 = [nextFocusedView _preferredConfigurationForFocusAnimation:0 inContext:v30];
  if (v9)
  {
    v10 = v9;
    v11 = _UIFocusAnimationDestinationViewDistanceOffscreen(v30);
    if (v11 > 0.0)
    {
      v12 = v11;
      _focusSystem = [nextFocusedView _focusSystem];
      behavior = [_focusSystem behavior];

      if (behavior)
      {
        v15 = [v10 copy];

        if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48ADD0, @"AnimationDelayTimeLimit"))
        {
          v16 = 0.75;
        }

        else
        {
          v16 = *&qword_1ED48ADD8;
        }

        v17 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_934, @"AnimationDelayTimeFactor");
        v18 = *&qword_1ED48ADB8;
        if (v17)
        {
          v18 = 0.0005;
        }

        v19 = v12 * v18;
        v20 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48ADC0, @"AnimationDelayTimeConstant");
        v21 = *&qword_1ED48ADC8;
        if (v20)
        {
          v21 = 0.1;
        }

        v22 = fmax(v19 + v21, 0.0);
        if (v16 <= v22)
        {
          v22 = v16;
        }

        [v15 setFocusingDelay:v22];
        if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48ADF0, @"AnimationExtraTimeLimit"))
        {
          v23 = 0.1;
        }

        else
        {
          v23 = *&qword_1ED48ADF8;
        }

        v24 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48ADE0, @"AnimationExtraTimeFactor");
        v25 = *&qword_1ED48ADE8;
        if (v24)
        {
          v25 = 0.0015;
        }

        v26 = fmax(v12 * v25, 0.0);
        if (v23 <= v26)
        {
          v27 = v23;
        }

        else
        {
          v27 = v26;
        }

        [v15 focusingBaseDuration];
        [v15 setFocusingBaseDuration:v28 + v27];
        [v15 setFocusingDurationScaleFactorLowerBound:1.0];
        [v15 setFocusingDurationScaleFactorUpperBound:1.0];
        v10 = v15;
      }
    }

    [(UIFocusAnimationCoordinator *)self _setConfiguration:v10 forFocusAnimation:0];
  }
}

- (unint64_t)_animationOptions
{
  _activeConfiguration = [(UIFocusAnimationCoordinator *)self _activeConfiguration];
  animationOptions = [_activeConfiguration animationOptions];

  return animationOptions;
}

- (double)_animationDelay
{
  if ([(UIFocusAnimationCoordinator *)self activeFocusAnimation])
  {
    return 0.0;
  }

  _activeConfiguration = [(UIFocusAnimationCoordinator *)self _activeConfiguration];
  [_activeConfiguration focusingDelay];
  v6 = v5;

  return v6;
}

- (double)_activeAnimationDuration
{
  if ([(UIFocusAnimationCoordinator *)self activeFocusAnimation])
  {
    if ([(UIFocusAnimationCoordinator *)self activeFocusAnimation]== 1)
    {

      [(UIFocusAnimationCoordinator *)self _unfocusingAnimationDuration];
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(UIFocusAnimationCoordinator *)self _focusingAnimationDuration];
  }

  return result;
}

- (double)_unfocusingRepositionAnimationDuration
{
  _activeConfiguration = [(UIFocusAnimationCoordinator *)self _activeConfiguration];
  [_activeConfiguration unfocusingRepositionBaseDuration];
  v5 = v4;
  _activeConfiguration2 = [(UIFocusAnimationCoordinator *)self _activeConfiguration];
  _focusUpdateContext = [(UIFocusAnimationCoordinator *)self _focusUpdateContext];
  [_activeConfiguration2 _unfocusingRepositionVelocityBasedDurationScaleFactorForAnimationInContext:_focusUpdateContext];
  v9 = v5 * v8;

  return v9;
}

- (void)_setConfiguration:(id)configuration forFocusAnimation:(int64_t)animation
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v8 = configurationCopy;
    _isLocked = [(UIFocusAnimationCoordinator *)self _isLocked];
    configurationCopy = v8;
    if (!_isLocked)
    {
      if (animation)
      {
        [(UIFocusAnimationCoordinator *)self setUnfocusingConfiguration:v8];
      }

      else
      {
        [(UIFocusAnimationCoordinator *)self setFocusingConfiguration:v8];
      }

      configurationCopy = v8;
    }
  }
}

- (id)_configurationForFocusAnimation:(int64_t)animation
{
  if (animation || !self->_focusingConfiguration)
  {
    unfocusingConfiguration = self->_unfocusingConfiguration;
    if (!unfocusingConfiguration)
    {
      v4 = [_UIFocusAnimationConfiguration configurationWithStyle:0];
      goto LABEL_7;
    }
  }

  else
  {
    unfocusingConfiguration = self->_focusingConfiguration;
  }

  v4 = [(_UIFocusAnimationConfiguration *)unfocusingConfiguration copy];
LABEL_7:

  return v4;
}

- (void)_consumeBlocks:(id)blocks
{
  v13 = *MEMORY[0x1E69E9840];
  blocksCopy = blocks;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [blocksCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(blocksCopy);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [blocksCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [blocksCopy removeAllObjects];
}

- (void)_consumeBlocks:(id)blocks withAnimationContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  blocksCopy = blocks;
  contextCopy = context;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [blocksCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(blocksCopy);
        }

        (*(*(*(&v11 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [blocksCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [blocksCopy removeAllObjects];
}

- (void)addCoordinatedAnimations:(void *)animations completion:(void *)completion
{
  v6 = completion;
  v7 = animations;
  [(UIFocusAnimationCoordinator *)self addCoordinatedAnimationsForAnimation:[(UIFocusAnimationCoordinator *)self activeFocusAnimation] animations:v7 completion:v6];
}

- (void)addCoordinatedAnimationsForAnimation:(int64_t)animation animations:(id)animations completion:(id)completion
{
  aBlock = animations;
  completionCopy = completion;
  if (aBlock)
  {
    v9 = 56;
    if (!animation)
    {
      v9 = 40;
    }

    v10 = *(&self->super.isa + v9);
    v11 = _Block_copy(aBlock);
    [v10 addObject:v11];
  }

  if (completionCopy)
  {
    v12 = 72;
    if (!animation)
    {
      v12 = 64;
    }

    v13 = *(&self->super.isa + v12);
    v14 = _Block_copy(completionCopy);
    [v13 addObject:v14];
  }
}

- (void)addCoordinatedFocusingAnimations:(void *)animations completion:(void *)completion
{
  aBlock = animations;
  v6 = completion;
  if (aBlock)
  {
    focusingAnimations = self->_focusingAnimations;
    v8 = _Block_copy(aBlock);
    [(NSMutableArray *)focusingAnimations addObject:v8];
  }

  if (v6)
  {
    focusingCompletions = self->_focusingCompletions;
    v10 = _Block_copy(v6);
    [(NSMutableArray *)focusingCompletions addObject:v10];
  }
}

- (void)addCoordinatedUnfocusingAnimations:(void *)animations completion:(void *)completion
{
  aBlock = animations;
  v6 = completion;
  if (aBlock)
  {
    unfocusingAnimations = self->_unfocusingAnimations;
    v8 = _Block_copy(aBlock);
    [(NSMutableArray *)unfocusingAnimations addObject:v8];
  }

  if (v6)
  {
    unfocusingCompletions = self->_unfocusingCompletions;
    v10 = _Block_copy(v6);
    [(NSMutableArray *)unfocusingCompletions addObject:v10];
  }
}

- (void)_animate
{
  activeFocusAnimation = [(UIFocusAnimationCoordinator *)self activeFocusAnimation];

  [(UIFocusAnimationCoordinator *)self _animateFocusAnimation:activeFocusAnimation];
}

- (void)_animateFocusAnimation:(int64_t)animation
{
  v5 = [(UIFocusAnimationCoordinator *)self _configurationForFocusAnimation:?];
  if (animation)
  {
    [(UIFocusAnimationCoordinator *)self _unfocusingAnimationDuration];
    v7 = v6;
    v8 = 0.0;
    v9 = 72;
    v10 = 48;
    v11 = 56;
  }

  else
  {
    [(UIFocusAnimationCoordinator *)self _focusingAnimationDuration];
    v7 = v12;
    [v5 focusingDelay];
    v8 = v13;
    v9 = 64;
    v10 = 32;
    v11 = 40;
  }

  v14 = *(&self->super.isa + v11);
  v15 = *(&self->super.isa + v10);
  v16 = *(&self->super.isa + v9);
  v17 = [[_UIFocusAnimationContext alloc] initWithDuration:v7];
  if (fabs(v7) < 2.22044605e-16 || _AXSReduceMotionEnabled())
  {
    [(UIFocusAnimationCoordinator *)self _consumeBlocks:v14];
    [(UIFocusAnimationCoordinator *)self _consumeBlocks:v15 withAnimationContext:v17];
    [(UIFocusAnimationCoordinator *)self _consumeBlocks:v16];
  }

  else
  {
    animationOptions = [v5 animationOptions];
    if (fabs(v8) >= 2.22044605e-16)
    {
      v19 = animationOptions | 0x800;
    }

    else
    {
      v19 = animationOptions;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__UIFocusAnimationCoordinator__animateFocusAnimation___block_invoke;
    v22[3] = &unk_1E70F6B40;
    v22[4] = self;
    v23 = v15;
    v24 = v17;
    v25 = v14;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__UIFocusAnimationCoordinator__animateFocusAnimation___block_invoke_2;
    v20[3] = &unk_1E70F3C60;
    v20[4] = self;
    v21 = v16;
    [UIView animateWithDuration:v19 delay:v22 options:v20 animations:v7 completion:0.0];
  }
}

uint64_t __54__UIFocusAnimationCoordinator__animateFocusAnimation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _consumeBlocks:*(a1 + 40) withAnimationContext:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 _consumeBlocks:v3];
}

- (void)_cancelFocusAnimation:(int64_t)animation
{
  v3 = 72;
  if (!animation)
  {
    v3 = 64;
  }

  [(UIFocusAnimationCoordinator *)self _consumeBlocks:*(&self->super.isa + v3)];
}

@end