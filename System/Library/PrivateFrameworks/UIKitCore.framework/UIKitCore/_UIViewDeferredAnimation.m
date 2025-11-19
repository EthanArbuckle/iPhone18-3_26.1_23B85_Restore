@interface _UIViewDeferredAnimation
- (NSArray)animationFrames;
- (id)description;
- (void)addAnimationFrameForValue:(id)a3;
- (void)animateFrameAtIndex:(int64_t)a3 animations:(id)a4;
- (void)calculateFrameValues:(id)a3 frameTimes:(id)a4 withFrameInterval:(double)a5 valueTransformer:(id)a6;
@end

@implementation _UIViewDeferredAnimation

- (NSArray)animationFrames
{
  if (!self->_finalized)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3046 description:@"You cannot get animation frames from an animation that has not been finalized"];
  }

  return [(_UIViewDeferredAnimation *)self _animationFrames];
}

- (void)addAnimationFrameForValue:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_finalized)
  {
    v11 = v5;
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3052 description:@"You can only add values to animations that have not yet been finalized"];

    v6 = v11;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  v10 = v6;
  v7 = [(NSString *)self->_key hasPrefix:@"filters.glassBackground."];
  v6 = v10;
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3053 description:{@"You must provide a value (key=%@)", self->_key}];

    v6 = v10;
  }

LABEL_5:
}

- (void)animateFrameAtIndex:(int64_t)a3 animations:(id)a4
{
  v6 = a4;
  if (self->_finalized)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = v6;
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3067 description:@"You can only add frames from animations that have been finalized"];

    v6 = v9;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v10 = v6;
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3068 description:@"animations must be non-nil"];

  v6 = v10;
LABEL_3:
}

- (void)calculateFrameValues:(id)a3 frameTimes:(id)a4 withFrameInterval:(double)a5 valueTransformer:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!self->_finalized)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3082 description:@"You can only calculate keyframes from animations that have been finalized"];
  }

  if (![(_UIViewDeferredAnimation *)self isEmpty]&& v11 | v12)
  {
    duration = self->_duration;
    v17[1] = 3221225472;
    v17[0] = MEMORY[0x1E69E9820];
    v17[2] = __95___UIViewDeferredAnimation_calculateFrameValues_frameTimes_withFrameInterval_valueTransformer___block_invoke;
    v17[3] = &unk_1E712AF80;
    v15 = a5 / duration;
    v20 = v13;
    v18 = v11;
    v19 = v12;
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
    v6 = [(_UIViewDeferredAnimation *)self _animationFrames];
    [v5 appendFormat:@" animationFrames=%@", v6];
  }

  return v5;
}

@end