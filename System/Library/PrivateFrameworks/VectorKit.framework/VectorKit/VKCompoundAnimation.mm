@interface VKCompoundAnimation
- (BOOL)running;
- (BOOL)runsForever;
- (BOOL)timed;
- (VKCompoundAnimation)initWithAnimations:(id)animations;
- (double)duration;
- (void)onTimerFired:(double)fired;
- (void)pause;
- (void)resume;
- (void)setDuration:(double)duration;
- (void)setRunsForever:(BOOL)forever;
- (void)startWithRunner:(id)runner;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation VKCompoundAnimation

- (void)onTimerFired:(double)fired
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VKCompoundAnimation;
  [(VKAnimation *)&v17 onTimerFired:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_animations;
  v6 = 0;
  v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = *(v10 + 40);
        if (v11 == 1)
        {
          [*(*(&v13 + 1) + 8 * i) onTimerFired:{fired, v13}];
          v11 = *(v10 + 40);
        }

        v6 |= (v11 - 1) < 2;
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  groupStepHandler = self->_groupStepHandler;
  if (groupStepHandler)
  {
    groupStepHandler[2]();
  }

  if ((v6 & 1) == 0 && ![(VKCompoundAnimation *)self runsForever])
  {
    self->super._state = 3;
  }
}

- (void)stopAnimation:(BOOL)animation
{
  animationCopy = animation;
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VKCompoundAnimation;
  [(VKAnimation *)&v14 stopAnimation:?];
  groupStepHandler = self->_groupStepHandler;
  self->_groupStepHandler = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = self->_animations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) stopAnimation:{animationCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (VKCompoundAnimation)initWithAnimations:(id)animations
{
  animationsCopy = animations;
  v16.receiver = self;
  v16.super_class = VKCompoundAnimation;
  v5 = [(VKCompoundAnimation *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    animations = v5->_animations;
    v5->_animations = v6;

    v15 = &v17;
    v8 = animationsCopy;
    if (v8)
    {
      v9 = v8;
      do
      {
        animations = [(VKCompoundAnimation *)v5 animations];
        [animations addObject:v9];

        v11 = v15++;
        v12 = *v11;

        v9 = v12;
      }

      while (v12);
    }

    v13 = v5;
  }

  return v5;
}

- (void)resume
{
  v13 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VKCompoundAnimation;
  [(VKAnimation *)&v11 resume];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = self->_animations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) resume];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)pause
{
  v13 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VKCompoundAnimation;
  [(VKAnimation *)&v11 pause];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = self->_animations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) pause];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)startWithRunner:(id)runner
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VKCompoundAnimation;
  [(VKAnimation *)&v12 startWithRunner:runner];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = self->_animations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        *(*(*(&v8 + 1) + 8 * v7++) + 40) = 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)timed
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_animations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v8 + 1) + 8 * i) timed] & 1) == 0)
        {
          v6 = 0;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (void)setDuration:(double)duration
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_animations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) setDuration:{duration, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (double)duration
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_animations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * i) duration];
        v5 = fmax(v7, v5);
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setRunsForever:(BOOL)forever
{
  foreverCopy = forever;
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_animations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) setRunsForever:{foreverCopy, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)runsForever
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_animations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) runsForever])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)running
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_animations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) running])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end