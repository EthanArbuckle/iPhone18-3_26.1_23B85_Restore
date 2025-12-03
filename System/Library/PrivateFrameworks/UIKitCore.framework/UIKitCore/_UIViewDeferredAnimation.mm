@interface _UIViewDeferredAnimation
- (NSArray)animationFrames;
- (id)description;
- (void)addAnimationFrameForValue:(id)value;
- (void)animateFrameAtIndex:(int64_t)index animations:(id)animations;
- (void)calculateFrameValues:(id)values frameTimes:(id)times withFrameInterval:(double)interval valueTransformer:(id)transformer;
@end

@implementation _UIViewDeferredAnimation

- (NSArray)animationFrames
{
  if (!self->_finalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3046 description:@"You cannot get animation frames from an animation that has not been finalized"];
  }

  return [(_UIViewDeferredAnimation *)self _animationFrames];
}

- (void)addAnimationFrameForValue:(id)value
{
  valueCopy = value;
  v6 = valueCopy;
  if (self->_finalized)
  {
    v11 = valueCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3052 description:@"You can only add values to animations that have not yet been finalized"];

    v6 = v11;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (valueCopy)
  {
    goto LABEL_5;
  }

  v10 = v6;
  v7 = [(NSString *)self->_key hasPrefix:@"filters.glassBackground."];
  v6 = v10;
  if (!v7)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3053 description:{@"You must provide a value (key=%@)", self->_key}];

    v6 = v10;
  }

LABEL_5:
}

- (void)animateFrameAtIndex:(int64_t)index animations:(id)animations
{
  animationsCopy = animations;
  if (self->_finalized)
  {
    if (animationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = animationsCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3067 description:@"You can only add frames from animations that have been finalized"];

    animationsCopy = v9;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v10 = animationsCopy;
  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3068 description:@"animations must be non-nil"];

  animationsCopy = v10;
LABEL_3:
}

- (void)calculateFrameValues:(id)values frameTimes:(id)times withFrameInterval:(double)interval valueTransformer:(id)transformer
{
  valuesCopy = values;
  timesCopy = times;
  transformerCopy = transformer;
  if (!self->_finalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3082 description:@"You can only calculate keyframes from animations that have been finalized"];
  }

  if (![(_UIViewDeferredAnimation *)self isEmpty]&& valuesCopy | timesCopy)
  {
    duration = self->_duration;
    v17[1] = 3221225472;
    v17[0] = MEMORY[0x1E69E9820];
    v17[2] = __95___UIViewDeferredAnimation_calculateFrameValues_frameTimes_withFrameInterval_valueTransformer___block_invoke;
    v17[3] = &unk_1E712AF80;
    v15 = interval / duration;
    v20 = transformerCopy;
    v18 = valuesCopy;
    v19 = timesCopy;
    v21 = v15;
    [(_UIViewDeferredAnimation *)self _enumerateAnimationFramesForKeyframes:v17];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = _UIViewDeferredAnimation;
  v4 = [(_UIViewDeferredAnimation *)&v8 description];
  v5 = [v3 stringWithFormat:@"%@ key=%@ duration=%f initialValue=%@", v4, self->_key, *&self->_duration, self->_initialValue];

  if (self->_finalized)
  {
    _animationFrames = [(_UIViewDeferredAnimation *)self _animationFrames];
    [v5 appendFormat:@" animationFrames=%@", _animationFrames];
  }

  return v5;
}

@end