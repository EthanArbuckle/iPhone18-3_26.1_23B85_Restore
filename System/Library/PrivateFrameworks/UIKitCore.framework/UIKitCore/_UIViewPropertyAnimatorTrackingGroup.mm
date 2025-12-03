@interface _UIViewPropertyAnimatorTrackingGroup
- (BOOL)isReversed;
- (BOOL)isRunning;
- (_UIViewPropertyAnimatorTrackingGroup)initWithAnimators:(id)animators;
- (double)fractionComplete;
- (int64_t)state;
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(double)factor;
- (void)finishAnimationAtPosition:(int64_t)position;
- (void)setFractionComplete:(double)complete;
- (void)setReversed:(BOOL)reversed;
- (void)startAnimationAfterDelay:(double)delay;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation _UIViewPropertyAnimatorTrackingGroup

- (_UIViewPropertyAnimatorTrackingGroup)initWithAnimators:(id)animators
{
  animatorsCopy = animators;
  v9.receiver = self;
  v9.super_class = _UIViewPropertyAnimatorTrackingGroup;
  v6 = [(_UIViewPropertyAnimatorTrackingGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trackingAnimators, animators);
  }

  return v7;
}

- (void)addAnimations:(id)animations
{
  trackingAnimators = self->_trackingAnimators;
  animationsCopy = animations;
  firstObject = [(NSArray *)trackingAnimators firstObject];
  [firstObject addAnimations:animationsCopy];
}

- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(double)factor
{
  parametersCopy = parameters;
  trackingAnimators = self->_trackingAnimators;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93___UIViewPropertyAnimatorTrackingGroup_continueAnimationWithTimingParameters_durationFactor___block_invoke;
  v9[3] = &unk_1E70F6178;
  v10 = parametersCopy;
  factorCopy = factor;
  v8 = parametersCopy;
  [(NSArray *)trackingAnimators enumerateObjectsUsingBlock:v9];
}

- (void)addCompletion:(id)completion
{
  trackingAnimators = self->_trackingAnimators;
  completionCopy = completion;
  firstObject = [(NSArray *)trackingAnimators firstObject];
  [firstObject addCompletion:completionCopy];
}

- (int64_t)state
{
  firstObject = [(NSArray *)self->_trackingAnimators firstObject];
  state = [firstObject state];

  return state;
}

- (BOOL)isRunning
{
  firstObject = [(NSArray *)self->_trackingAnimators firstObject];
  isRunning = [firstObject isRunning];

  return isRunning;
}

- (BOOL)isReversed
{
  firstObject = [(NSArray *)self->_trackingAnimators firstObject];
  isReversed = [firstObject isReversed];

  return isReversed;
}

- (void)setReversed:(BOOL)reversed
{
  trackingAnimators = self->_trackingAnimators;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52___UIViewPropertyAnimatorTrackingGroup_setReversed___block_invoke;
  v4[3] = &__block_descriptor_33_e39_v32__0__UIViewPropertyAnimator_8Q16_B24l;
  reversedCopy = reversed;
  [(NSArray *)trackingAnimators enumerateObjectsUsingBlock:v4];
}

- (double)fractionComplete
{
  firstObject = [(NSArray *)self->_trackingAnimators firstObject];
  [firstObject fractionComplete];
  v4 = v3;

  return v4;
}

- (void)setFractionComplete:(double)complete
{
  trackingAnimators = self->_trackingAnimators;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60___UIViewPropertyAnimatorTrackingGroup_setFractionComplete___block_invoke;
  v4[3] = &__block_descriptor_40_e39_v32__0__UIViewPropertyAnimator_8Q16_B24l;
  *&v4[4] = complete;
  [(NSArray *)trackingAnimators enumerateObjectsUsingBlock:v4];
}

- (void)startAnimationAfterDelay:(double)delay
{
  trackingAnimators = self->_trackingAnimators;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65___UIViewPropertyAnimatorTrackingGroup_startAnimationAfterDelay___block_invoke;
  v4[3] = &__block_descriptor_40_e39_v32__0__UIViewPropertyAnimator_8Q16_B24l;
  *&v4[4] = delay;
  [(NSArray *)trackingAnimators enumerateObjectsUsingBlock:v4];
}

- (void)stopAnimation:(BOOL)animation
{
  trackingAnimators = self->_trackingAnimators;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54___UIViewPropertyAnimatorTrackingGroup_stopAnimation___block_invoke;
  v4[3] = &__block_descriptor_33_e39_v32__0__UIViewPropertyAnimator_8Q16_B24l;
  animationCopy = animation;
  [(NSArray *)trackingAnimators enumerateObjectsUsingBlock:v4];
}

- (void)finishAnimationAtPosition:(int64_t)position
{
  trackingAnimators = self->_trackingAnimators;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66___UIViewPropertyAnimatorTrackingGroup_finishAnimationAtPosition___block_invoke;
  v4[3] = &__block_descriptor_40_e39_v32__0__UIViewPropertyAnimator_8Q16_B24l;
  v4[4] = position;
  [(NSArray *)trackingAnimators enumerateObjectsUsingBlock:v4];
}

@end