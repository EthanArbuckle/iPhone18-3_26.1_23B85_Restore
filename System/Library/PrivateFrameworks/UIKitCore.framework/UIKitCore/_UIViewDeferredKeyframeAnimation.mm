@interface _UIViewDeferredKeyframeAnimation
- (id)_animationFrames;
- (void)_enumerateAnimationFramesForKeyframes:(id)keyframes;
- (void)_finalize;
- (void)addAnimationFrameForValue:(id)value;
- (void)animateFrameAtIndex:(int64_t)index animations:(id)animations;
@end

@implementation _UIViewDeferredKeyframeAnimation

- (id)_animationFrames
{
  if (![(NSMutableArray *)self->_animationFrames count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3165 description:@"Empty keyframe animation?"];
  }

  animationFrames = self->_animationFrames;

  return animationFrames;
}

- (void)addAnimationFrameForValue:(id)value
{
  v8.receiver = self;
  v8.super_class = _UIViewDeferredKeyframeAnimation;
  valueCopy = value;
  [(_UIViewDeferredAnimation *)&v8 addAnimationFrameForValue:valueCopy];
  if (!self->_animationFrames)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    animationFrames = self->_animationFrames;
    self->_animationFrames = v5;
  }

  v7 = [__currentViewAnimationState _updateAnimationFrameWithAnimationProperties:{0, v8.receiver, v8.super_class}];
  [v7 setValue:valueCopy];

  [(NSMutableArray *)self->_animationFrames addObject:v7];
}

- (void)animateFrameAtIndex:(int64_t)index animations:(id)animations
{
  animationsCopy = animations;
  v19.receiver = self;
  v19.super_class = _UIViewDeferredKeyframeAnimation;
  [(_UIViewDeferredAnimation *)&v19 animateFrameAtIndex:index animations:animationsCopy];
  if ([(NSMutableArray *)self->_animationFrames count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:3183 description:@"frameIndex out of bounds"];
  }

  v8 = [(NSMutableArray *)self->_animationFrames objectAtIndexedSubscript:index];
  [v8 startTime];
  v10 = v9;
  [v8 duration];
  v12 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67___UIViewDeferredKeyframeAnimation_animateFrameAtIndex_animations___block_invoke;
  v16[3] = &unk_1E70F4A50;
  v17 = v8;
  v18 = animationsCopy;
  v13 = v8;
  v14 = animationsCopy;
  [UIView addKeyframeWithRelativeStartTime:v16 relativeDuration:v10 animations:v12];
}

- (void)_finalize
{
  v6.receiver = self;
  v6.super_class = _UIViewDeferredKeyframeAnimation;
  [(_UIViewDeferredAnimation *)&v6 _finalize];
  [(NSMutableArray *)self->_animationFrames sortWithOptions:16 usingComparator:&__block_literal_global_640_1];
  v3 = objc_alloc_init(_UIViewAnimationFrame);
  initialValue = [(_UIViewDeferredAnimation *)self initialValue];
  [(_UIViewAnimationFrame *)v3 setValue:initialValue];

  firstObject = [(NSMutableArray *)self->_animationFrames firstObject];
  [firstObject startTime];
  [(_UIViewAnimationFrame *)v3 setDuration:?];

  [(NSMutableArray *)self->_animationFrames insertObject:v3 atIndex:0];
}

- (void)_enumerateAnimationFramesForKeyframes:(id)keyframes
{
  v28 = *MEMORY[0x1E69E9840];
  keyframesCopy = keyframes;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_animationFrames;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    v8 = v5;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v24;
  do
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v23 + 1) + 8 * v10);
      if (v11)
      {
        value = [(NSMutableArray *)v11 value];
        [(NSMutableArray *)v11 startTime];
        v15 = v14;
        [(NSMutableArray *)v11 duration];
        v17 = v16;
        [v12 startTime];
        keyframesCopy[2](keyframesCopy, value, v15, v17, v18);
      }

      v8 = v12;

      ++v10;
      v11 = v8;
    }

    while (v7 != v10);
    v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v7);

  if (v8)
  {
    value2 = [(NSMutableArray *)v8 value];
    [(NSMutableArray *)v8 startTime];
    v21 = v20;
    [(NSMutableArray *)v8 duration];
    keyframesCopy[2](keyframesCopy, value2, v21, v22, 1.0);

LABEL_13:
  }
}

@end