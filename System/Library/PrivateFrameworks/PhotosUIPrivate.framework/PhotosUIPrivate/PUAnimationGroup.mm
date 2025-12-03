@interface PUAnimationGroup
+ (id)animationGroupWithAnimations:(id)animations;
+ (void)popAnimationGroup:(id)group;
+ (void)pushAnimationGroup:(id)group;
- (BOOL)isReadyToComplete;
- (PUAnimationGroup)superAnimationGroup;
- (double)elapsedTime;
- (id)description;
- (void)addSubAnimationGroup:(id)group;
- (void)complete;
- (void)completeIfNeeded;
- (void)dealloc;
- (void)finishImmediately;
- (void)setCompletionHandler:(id)handler;
- (void)setElapsedTime:(double)time;
- (void)setPaused:(BOOL)paused;
- (void)setSuperAnimationGroup:(id)group;
@end

@implementation PUAnimationGroup

- (PUAnimationGroup)superAnimationGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_superAnimationGroup);

  return WeakRetained;
}

- (id)description
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v26.receiver = self;
  v26.super_class = PUAnimationGroup;
  v4 = [(PUAnimationGroup *)&v26 description];
  v5 = [v3 stringWithFormat:@"%@ {\n", v4];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(PUAnimationGroup *)self subAnimationGroups];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v22 + 1) + 8 * i) description];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 componentsSeparatedByString:@"\n"];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v5 appendFormat:@"  %@\n", *(*(&v18 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  [v5 appendString:@"}"];

  return v5;
}

- (void)finishImmediately
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  subAnimationGroups = [(PUAnimationGroup *)self subAnimationGroups];
  v3 = [subAnimationGroups countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(subAnimationGroups);
        }

        [*(*(&v7 + 1) + 8 * v6++) finishImmediately];
      }

      while (v4 != v6);
      v4 = [subAnimationGroups countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)complete
{
  completionHandler = [(PUAnimationGroup *)self completionHandler];
  if (completionHandler)
  {
    v4 = completionHandler;
    [(PUAnimationGroup *)self setCompletionHandler:0];
    v4[2](v4);
    completionHandler = v4;
  }
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PUAnimationGroup_setCompletionHandler___block_invoke;
    v9[3] = &unk_1E7B80B48;
    v9[4] = self;
    v10 = handlerCopy;
    v6 = [v9 copy];
    completionHandler = self->_completionHandler;
    self->_completionHandler = v6;

    v8 = v10;
  }

  else
  {
    v8 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)completeIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  superAnimationGroup = [(PUAnimationGroup *)self superAnimationGroup];
  v4 = superAnimationGroup;
  if (superAnimationGroup)
  {
    [superAnimationGroup completeIfNeeded];
  }

  else if ([(PUAnimationGroup *)self isReadyToComplete])
  {
    [(PUAnimationGroup *)self complete];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subAnimationGroups = [(PUAnimationGroup *)self subAnimationGroups];
    v6 = [subAnimationGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(subAnimationGroups);
          }

          [*(*(&v10 + 1) + 8 * i) complete];
        }

        v7 = [subAnimationGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)isReadyToComplete
{
  v17 = *MEMORY[0x1E69E9840];
  isPaused = [(PUAnimationGroup *)self isPaused];
  if (isPaused)
  {
    return 0;
  }

  v5 = isPaused;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subAnimationGroups = [(PUAnimationGroup *)self subAnimationGroups];
  v7 = [subAnimationGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v4 = !v5;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(subAnimationGroups);
        }

        if (![*(*(&v12 + 1) + 8 * i) isReadyToComplete])
        {
          v4 = 0;
          goto LABEL_14;
        }
      }

      v8 = [subAnimationGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v4 = 1;
  }

LABEL_14:

  return v4;
}

- (void)setSuperAnimationGroup:(id)group
{
  obj = group;
  WeakRetained = objc_loadWeakRetained(&self->_superAnimationGroup);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_storeWeak(&self->_superAnimationGroup, obj);

    v5 = obj;
    if (!obj)
    {
      [(PUAnimationGroup *)self completeIfNeeded];
      v5 = 0;
    }
  }
}

- (void)addSubAnimationGroup:(id)group
{
  groupCopy = group;
  if ([(PUAnimationGroup *)self isPaused])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAnimationGroup.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"![self isPaused]"}];
  }

  subAnimationGroups = [(PUAnimationGroup *)self subAnimationGroups];

  if (!subAnimationGroups)
  {
    array = [MEMORY[0x1E695DF70] array];
    subAnimationGroups = self->_subAnimationGroups;
    self->_subAnimationGroups = array;
  }

  subAnimationGroups2 = [(PUAnimationGroup *)self subAnimationGroups];
  [subAnimationGroups2 addObject:groupCopy];

  [groupCopy setSuperAnimationGroup:self];
}

- (void)setPaused:(BOOL)paused
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_paused != paused)
  {
    pausedCopy = paused;
    self->_paused = paused;
    if (paused)
    {
      [(PUAnimationGroup *)self pauseAnimations];
    }

    else
    {
      [(PUAnimationGroup *)self resumeAnimations];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subAnimationGroups = [(PUAnimationGroup *)self subAnimationGroups];
    v6 = [subAnimationGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(subAnimationGroups);
          }

          [*(*(&v10 + 1) + 8 * v9++) setPaused:pausedCopy];
        }

        while (v7 != v9);
        v7 = [subAnimationGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setElapsedTime:(double)time
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subAnimationGroups = [(PUAnimationGroup *)self subAnimationGroups];
  v5 = [subAnimationGroups countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(subAnimationGroups);
        }

        [*(*(&v9 + 1) + 8 * v8++) setElapsedTime:time];
      }

      while (v6 != v8);
      v6 = [subAnimationGroups countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (double)elapsedTime
{
  subAnimationGroups = [(PUAnimationGroup *)self subAnimationGroups];
  firstObject = [subAnimationGroups firstObject];

  if (firstObject)
  {
    [firstObject elapsedTime];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(NSMutableArray *)self->_subAnimationGroups copy];
  if ([v3 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__PUAnimationGroup_dealloc__block_invoke;
    block[3] = &unk_1E7B80DD0;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v4.receiver = self;
  v4.super_class = PUAnimationGroup;
  [(PUAnimationGroup *)&v4 dealloc];
}

void __27__PUAnimationGroup_dealloc__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        [v6 setSuperAnimationGroup:{0, v7}];
        [v6 completeIfNeeded];
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

+ (void)popAnimationGroup:(id)group
{
  groupCopy = group;
  if (__currentAnimationGroup != groupCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAnimationGroup.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"__currentAnimationGroup == animationGroup"}];
  }

  superAnimationGroup = [groupCopy superAnimationGroup];
  v6 = __currentAnimationGroup;
  __currentAnimationGroup = superAnimationGroup;

  v7 = groupCopy;
  v8 = __rootAnimationGroup;
  if (__rootAnimationGroup == groupCopy)
  {
    __rootAnimationGroup = 0;

    v7 = groupCopy;
  }
}

+ (void)pushAnimationGroup:(id)group
{
  groupCopy = group;
  if (!groupCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAnimationGroup.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"animationGroup != nil"}];
  }

  if (__rootAnimationGroup)
  {
    v7 = __currentAnimationGroup;
    if (!__currentAnimationGroup)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAnimationGroup.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"__currentAnimationGroup != nil"}];

      v7 = __currentAnimationGroup;
    }

    [v7 addSubAnimationGroup:groupCopy];
  }

  else
  {
    objc_storeStrong(&__rootAnimationGroup, group);
  }

  v8 = __currentAnimationGroup;
  __currentAnimationGroup = groupCopy;
}

+ (id)animationGroupWithAnimations:(id)animations
{
  animationsCopy = animations;
  if (!animationsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAnimationGroup.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"animations != NULL"}];
  }

  v6 = objc_alloc_init(PUAnimationGroup);
  [PUAnimationGroup pushAnimationGroup:v6];
  animationsCopy[2](animationsCopy);
  [PUAnimationGroup popAnimationGroup:v6];

  return v6;
}

@end