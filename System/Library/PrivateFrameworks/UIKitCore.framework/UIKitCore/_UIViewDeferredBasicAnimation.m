@interface _UIViewDeferredBasicAnimation
- (id)_animationFrames;
- (void)_enumerateAnimationFramesForKeyframes:(id)a3;
- (void)addAnimationFrameForValue:(id)a3;
- (void)animateFrameAtIndex:(int64_t)a3 animations:(id)a4;
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

- (void)addAnimationFrameForValue:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIViewDeferredBasicAnimation;
  v4 = a3;
  [(_UIViewDeferredAnimation *)&v7 addAnimationFrameForValue:v4];
  v5 = [__currentViewAnimationState _updateAnimationFrameWithAnimationProperties:{self->_finalValue, v7.receiver, v7.super_class}];
  finalValue = self->_finalValue;
  self->_finalValue = v5;

  [(_UIViewAnimationFrame *)self->_finalValue setValue:v4];
}

- (void)animateFrameAtIndex:(int64_t)a3 animations:(id)a4
{
  v7 = a4;
  v9.receiver = self;
  v9.super_class = _UIViewDeferredBasicAnimation;
  [(_UIViewDeferredAnimation *)&v9 animateFrameAtIndex:a3 animations:v7];
  if (a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3142 description:@"frameIndex out of bounds"];
  }

  v7[2](v7, self->_finalValue);
}

- (void)_enumerateAnimationFramesForKeyframes:(id)a3
{
  v5 = a3;
  v6 = [(_UIViewDeferredAnimation *)self initialValue];
  (*(a3 + 2))(v5, v6, 0.0, 0.0, 0.0);

  v7 = [(_UIViewAnimationFrame *)self->_finalValue value];
  (*(a3 + 2))(v5, v7, 0.0, 1.0, 1.0);
}

@end