@interface _UIViewDeferredBasicAnimation
- (id)_animationFrames;
- (void)_enumerateAnimationFramesForKeyframes:(id)keyframes;
- (void)addAnimationFrameForValue:(id)value;
- (void)animateFrameAtIndex:(int64_t)index animations:(id)animations;
@end

@implementation _UIViewDeferredBasicAnimation

- (id)_animationFrames
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_finalValue)
  {
    v4[0] = self->_finalValue;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (void)addAnimationFrameForValue:(id)value
{
  v7.receiver = self;
  v7.super_class = _UIViewDeferredBasicAnimation;
  valueCopy = value;
  [(_UIViewDeferredAnimation *)&v7 addAnimationFrameForValue:valueCopy];
  v5 = [__currentViewAnimationState _updateAnimationFrameWithAnimationProperties:{self->_finalValue, v7.receiver, v7.super_class}];
  finalValue = self->_finalValue;
  self->_finalValue = v5;

  [(_UIViewAnimationFrame *)self->_finalValue setValue:valueCopy];
}

- (void)animateFrameAtIndex:(int64_t)index animations:(id)animations
{
  animationsCopy = animations;
  v9.receiver = self;
  v9.super_class = _UIViewDeferredBasicAnimation;
  [(_UIViewDeferredAnimation *)&v9 animateFrameAtIndex:index animations:animationsCopy];
  if (index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3142 description:@"frameIndex out of bounds"];
  }

  animationsCopy[2](animationsCopy, self->_finalValue);
}

- (void)_enumerateAnimationFramesForKeyframes:(id)keyframes
{
  keyframesCopy = keyframes;
  initialValue = [(_UIViewDeferredAnimation *)self initialValue];
  (*(keyframes + 2))(keyframesCopy, initialValue, 0.0, 0.0, 0.0);

  value = [(_UIViewAnimationFrame *)self->_finalValue value];
  (*(keyframes + 2))(keyframesCopy, value, 0.0, 1.0, 1.0);
}

@end