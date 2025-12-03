@interface _UIAnimatedTextSpacer
- (CGRect)presentationFrameForTextLayoutFragmentFrame:(CGRect)result;
- (_UIAnimatedTextSpacer)initWithSpringBehavior:(id)behavior delay:(double)delay duration:(double)duration;
- (id)beginExplicitHeightAnimationFromSource:(double)source toDestination:(double)destination;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_clearAnimationState;
- (void)_finalizeAnimation;
- (void)_startAnimation;
- (void)_updateAnimationWithPresentationValue:(double)value;
- (void)animateHeightFromSource:(double)source destination:(double)destination;
- (void)dealloc;
@end

@implementation _UIAnimatedTextSpacer

- (_UIAnimatedTextSpacer)initWithSpringBehavior:(id)behavior delay:(double)delay duration:(double)duration
{
  v21[1] = *MEMORY[0x1E69E9840];
  behaviorCopy = behavior;
  v20.receiver = self;
  v20.super_class = _UIAnimatedTextSpacer;
  v10 = [(_UIAnimatedTextSpacer *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_springBehavior, behavior);
    v11->_delay = delay;
    v11->_duration = duration;
    v12 = objc_alloc_init(UIViewFloatAnimatableProperty);
    heightAnimationProperty = v11->_heightAnimationProperty;
    v11->_heightAnimationProperty = v12;

    objc_initWeak(&location, v11);
    v21[0] = v11->_heightAnimationProperty;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63___UIAnimatedTextSpacer_initWithSpringBehavior_delay_duration___block_invoke;
    v16[3] = &unk_1E70F2F80;
    objc_copyWeak(&v18, &location);
    v17 = v11;
    [UIView _createTransformerWithInputAnimatableProperties:v14 presentationValueChangedCallback:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _UIAnimatedTextSpacer;
  [(_UIAnimatedTextSpacer *)&v2 dealloc];
}

- (void)_clearAnimationState
{
  self->_targetHeight = 0.0;
  heightAnimationProperty = self->_heightAnimationProperty;
  self->_heightAnimationProperty = 0;
  self->_height = 0.0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)_updateAnimationWithPresentationValue:(double)value
{
  self->_height = value;
  layoutInvalidator = self->_layoutInvalidator;
  if (layoutInvalidator)
  {
    layoutInvalidator[2]();
  }
}

- (void)_finalizeAnimation
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a2);
  }

  [(_UIAnimatedTextSpacer *)self _clearAnimationState];
}

- (void)_startAnimation
{
  [(UIViewFloatAnimatableProperty *)self->_heightAnimationProperty setValue:self->_height];
  v3 = self->_springBehavior;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40___UIAnimatedTextSpacer__startAnimation__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40___UIAnimatedTextSpacer__startAnimation__block_invoke_2;
  v9[3] = &unk_1E70F3668;
  objc_copyWeak(&v10, &location);
  v5 = _Block_copy(v9);
  v6 = v5;
  if (self->_springBehavior)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40___UIAnimatedTextSpacer__startAnimation__block_invoke_3;
    v7[3] = &unk_1E7103030;
    v8 = v5;
    [UIView _animateUsingSpringBehavior:v3 tracking:0 animations:v4 completion:v7];
  }

  else
  {
    [UIView animateWithDuration:0 delay:v4 options:v5 animations:self->_duration completion:self->_delay];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)animateHeightFromSource:(double)source destination:(double)destination
{
  if (![(_UIAnimatedTextSpacer *)self isAnimating])
  {
    self->_targetHeight = destination;
    self->_height = source;
    if (self->_delay <= 0.0)
    {

      [(_UIAnimatedTextSpacer *)self _startAnimation];
    }

    else
    {

      [(_UIAnimatedTextSpacer *)self performSelector:sel__startAnimation withObject:0 afterDelay:?];
    }
  }
}

- (id)beginExplicitHeightAnimationFromSource:(double)source toDestination:(double)destination
{
  if ([(_UIAnimatedTextSpacer *)self isAnimating])
  {
    v7 = 0;
  }

  else
  {
    self->_targetHeight = destination;
    self->_height = source;
    v8 = objc_alloc_init(_UIAnimatedTextSpacerAnimationInfo);
    [(_UIAnimatedTextSpacerAnimationInfo *)v8 setStartHeight:source];
    [(_UIAnimatedTextSpacerAnimationInfo *)v8 setEndHeight:destination];
    objc_initWeak(&location, self);
    v9 = [_UIConcreteAnimatedTextSpacerAnimation alloc];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78___UIAnimatedTextSpacer_beginExplicitHeightAnimationFromSource_toDestination___block_invoke;
    v13[3] = &unk_1E710CAC0;
    objc_copyWeak(&v14, &location);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78___UIAnimatedTextSpacer_beginExplicitHeightAnimationFromSource_toDestination___block_invoke_2;
    v11[3] = &unk_1E70F5A28;
    objc_copyWeak(&v12, &location);
    v7 = [(_UIConcreteAnimatedTextSpacerAnimation *)v9 initWithAnimationInfo:v8 updateBlock:v13 finalizeBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (CGRect)presentationFrameForTextLayoutFragmentFrame:(CGRect)result
{
  height = self->_height;
  result.size.height = height;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  springBehavior = self->_springBehavior;
  delay = self->_delay;
  duration = self->_duration;

  return [v4 initWithSpringBehavior:springBehavior delay:delay duration:duration];
}

@end