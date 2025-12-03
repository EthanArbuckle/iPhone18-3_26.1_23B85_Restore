@interface _UIDynamicAnimationGroup
- (BOOL)_animateForInterval:(double)interval;
- (void)_appendSubclassDescription:(id)description atLevel:(int)level;
- (void)_stopAnimation;
- (void)addAnimation:(id)animation;
- (void)dealloc;
- (void)removeAnimation:(id)animation;
- (void)runWithCompletion:(id)completion;
- (void)runWithGroupApplier:(id)applier completion:(id)completion forScreen:(id)screen runLoopMode:(id)mode;
- (void)setAnimations:(id)animations;
@end

@implementation _UIDynamicAnimationGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIDynamicAnimationGroup;
  [(_UIDynamicAnimation *)&v3 dealloc];
}

- (void)_stopAnimation
{
  self->_applier = 0;

  self->_runningAnimations = 0;
  v3.receiver = self;
  v3.super_class = _UIDynamicAnimationGroup;
  [(_UIDynamicAnimation *)&v3 _stopAnimation];
}

- (BOOL)_animateForInterval:(double)interval
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  runningAnimations = self->_runningAnimations;
  v6 = [(NSMutableArray *)runningAnimations countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(runningAnimations);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 _animateForInterval:interval])
        {
          if (!v8)
          {
            v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMutableArray *)runningAnimations countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableArray *)self->_runningAnimations removeObjectsInArray:v8];
  v12 = [(NSMutableArray *)self->_runningAnimations count];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48___UIDynamicAnimationGroup__animateForInterval___block_invoke;
  v22[3] = &unk_1E70F5C78;
  v22[4] = self;
  [(_UIDynamicAnimation *)self _callAppliers:v22 additionalEndAppliers:0 done:v12 == 0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v18 + 1) + 8 * j) _stopAnimation];
      }

      v14 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v14);
  }

  return v12 == 0;
}

- (void)setAnimations:(id)animations
{
  v27 = *MEMORY[0x1E69E9840];
  animations = self->_animations;
  if (animations != animations)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [(NSMutableArray *)animations countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(animations);
          }

          [*(*(&v21 + 1) + 8 * i) _setGrouped:0];
        }

        v7 = [(NSMutableArray *)animations countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [animations countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      v13 = *MEMORY[0x1E695D940];
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(animations);
          }

          v15 = *(*(&v17 + 1) + 8 * j);
          if ([v15 _isGrouped])
          {
            [MEMORY[0x1E695DF30] raise:v13 format:{@"%@ is already in a dynamic animation group. It must be removed before being added to another.", v15}];
          }

          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __42___UIDynamicAnimationGroup_setAnimations___block_invoke;
          v16[3] = &unk_1E70F5CA0;
          v16[4] = self;
          [v15 _cancelWithAppliers:v16];
          [v15 _setGrouped:1];
        }

        v11 = [animations countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v11);
    }

    self->_animations = [animations mutableCopy];
  }
}

- (void)addAnimation:(id)animation
{
  if (animation && ([(NSMutableArray *)self->_animations containsObject:?]& 1) == 0)
  {
    if ([animation _isGrouped])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is already in a dynamic animation group. It must be removed before being added to another.", animation}];
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41___UIDynamicAnimationGroup_addAnimation___block_invoke;
    v6[3] = &unk_1E70F5CA0;
    v6[4] = self;
    [animation _cancelWithAppliers:v6];
    animations = self->_animations;
    if (!animations)
    {
      animations = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
      self->_animations = animations;
    }

    [(NSMutableArray *)animations addObject:animation];
    [animation _setGrouped:1];
    if ((*(&self->super + 20) & 2) != 0)
    {
      [(NSMutableArray *)self->_runningAnimations addObject:animation];
    }
  }
}

- (void)removeAnimation:(id)animation
{
  if ([(NSMutableArray *)self->_animations containsObject:?])
  {
    [(NSMutableArray *)self->_animations removeObject:animation];
    if ((*(&self->super + 20) & 2) != 0)
    {
      [(NSMutableArray *)self->_runningAnimations removeObject:animation];
    }

    if (![(NSMutableArray *)self->_animations count])
    {
    }

    if (![(NSMutableArray *)self->_runningAnimations count])
    {
    }

    [animation _setGrouped:0];
  }
}

- (void)runWithGroupApplier:(id)applier completion:(id)completion forScreen:(id)screen runLoopMode:(id)mode
{
  if (!applier && !self->_applier)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"groupApplier must be non-nil"];
  }

  if ([(NSMutableArray *)self->_animations count])
  {
    if ((*(&self->super + 20) & 2) == 0)
    {
      if (applier)
      {

        self->_applier = [applier copy];
      }

      self->_runningAnimations = [(NSMutableArray *)self->_animations mutableCopy];
      v12.receiver = self;
      v12.super_class = _UIDynamicAnimationGroup;
      [(_UIDynamicAnimation *)&v12 runWithCompletion:completion forScreen:screen runLoopMode:mode];
    }
  }

  else if (completion)
  {
    v11 = *(completion + 2);

    v11(completion, 1);
  }
}

- (void)runWithCompletion:(id)completion
{
  if (!self->_applier)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Dynamic animations without pre-set appliers must be run with an explicit applier. Use runWithValueApplier:completion:"];
  }

  [(_UIDynamicAnimationGroup *)self runWithGroupApplier:0 completion:completion];
}

- (void)_appendSubclassDescription:(id)description atLevel:(int)level
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_animations count])
  {
    [description appendString:@"; animations = {"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    animations = self->_animations;
    v8 = [(NSMutableArray *)animations countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(animations);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ((v11 & 1) == 0)
          {
            [description appendString:{@", "}];
          }

          [v13 _appendDescriptionToString:description atLevel:(level + 1)];
          v11 = 0;
        }

        v9 = [(NSMutableArray *)animations countByEnumeratingWithState:&v15 objects:v19 count:16];
        v11 = 0;
      }

      while (v9);
    }

    [description appendString:@"\n"];
    if (level)
    {
      v14 = 1;
      do
      {
        [description appendString:@"    "];
        ++v14;
      }

      while (v14 <= level);
    }

    [description appendString:@"}"];
  }
}

@end