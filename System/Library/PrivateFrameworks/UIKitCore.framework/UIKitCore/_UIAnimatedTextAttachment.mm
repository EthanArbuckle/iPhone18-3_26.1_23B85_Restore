@interface _UIAnimatedTextAttachment
- (_UIAnimatedTextAttachment)init;
- (void)_initiateAnimationUsingSpringBehavior:(id)behavior;
- (void)_updatePresentationValues;
- (void)addAlongsideAnimation:(id)animation;
- (void)addCompletionHandler:(id)handler;
- (void)animateToTargetHeight:(double)height delay:(double)delay usingSpringBehavior:(id)behavior;
- (void)setBounds:(CGRect)bounds;
@end

@implementation _UIAnimatedTextAttachment

- (_UIAnimatedTextAttachment)init
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _UIAnimatedTextAttachment;
  v2 = [(_UIAnimatedTextAttachment *)&v15 init];
  if (v2)
  {
    _UIGraphicsBeginImageContextWithOptions(0, 0, 1.0, 1.0, 1.0);
    v3 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    [(_UIAnimatedTextAttachment *)v2 setImage:v3];

    v4 = objc_alloc_init(UIViewFloatAnimatableProperty);
    heightAnimationProperty = v2->_heightAnimationProperty;
    v2->_heightAnimationProperty = v4;

    array = [MEMORY[0x1E695DF70] array];
    animateAlongsideHandlers = v2->_animateAlongsideHandlers;
    v2->_animateAlongsideHandlers = array;

    array2 = [MEMORY[0x1E695DF70] array];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = array2;

    objc_initWeak(&location, v2);
    v16[0] = v2->_heightAnimationProperty;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33___UIAnimatedTextAttachment_init__block_invoke;
    v12[3] = &unk_1E70F5A28;
    objc_copyWeak(&v13, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v10 presentationValueChangedCallback:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9.receiver = self;
  v9.super_class = _UIAnimatedTextAttachment;
  [(_UIAnimatedTextAttachment *)&v9 setBounds:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39___UIAnimatedTextAttachment_setBounds___block_invoke;
  v8[3] = &unk_1E70F3B20;
  v8[4] = self;
  *&v8[5] = x;
  *&v8[6] = y;
  *&v8[7] = width;
  *&v8[8] = height;
  [UIView performWithoutAnimation:v8];
}

- (void)addAlongsideAnimation:(id)animation
{
  animateAlongsideHandlers = self->_animateAlongsideHandlers;
  v5 = [animation copy];
  v4 = _Block_copy(v5);
  [(NSMutableArray *)animateAlongsideHandlers addObject:v4];
}

- (void)addCompletionHandler:(id)handler
{
  completionHandlers = self->_completionHandlers;
  v5 = [handler copy];
  v4 = _Block_copy(v5);
  [(NSMutableArray *)completionHandlers addObject:v4];
}

- (void)animateToTargetHeight:(double)height delay:(double)delay usingSpringBehavior:(id)behavior
{
  behaviorCopy = behavior;
  self->_targetHeight = height;
  if (!behaviorCopy)
  {
    behaviorCopy = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
  }

  v9 = behaviorCopy;
  if (delay <= 0.0)
  {
    [(_UIAnimatedTextAttachment *)self _initiateAnimationUsingSpringBehavior:behaviorCopy];
  }

  else
  {
    [(_UIAnimatedTextAttachment *)self performSelector:sel__initiateAnimationUsingSpringBehavior_ withObject:behaviorCopy afterDelay:delay];
  }
}

- (void)_initiateAnimationUsingSpringBehavior:(id)behavior
{
  behaviorCopy = behavior;
  [(_UIAnimatedTextAttachment *)self targetHeight];
  v6[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___UIAnimatedTextAttachment__initiateAnimationUsingSpringBehavior___block_invoke;
  v7[3] = &unk_1E70F32F0;
  v7[4] = self;
  v7[5] = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___UIAnimatedTextAttachment__initiateAnimationUsingSpringBehavior___block_invoke_2;
  v6[3] = &unk_1E70F3FD8;
  [UIView _animateUsingSpringBehavior:behaviorCopy tracking:0 animations:v7 completion:v6];
}

- (void)_updatePresentationValues
{
  [(_UIAnimatedTextAttachment *)self bounds];
  v4 = v3;
  v6 = v5;
  [(_UIAnimatedTextAttachment *)self bounds];
  v8 = v7;
  [(UIViewFloatAnimatableProperty *)self->_heightAnimationProperty presentationValue];
  [(_UIAnimatedTextAttachment *)self setBounds:v4, v6, v8, v9];
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v11 = *(invalidationHandler + 2);

    v11();
  }
}

@end