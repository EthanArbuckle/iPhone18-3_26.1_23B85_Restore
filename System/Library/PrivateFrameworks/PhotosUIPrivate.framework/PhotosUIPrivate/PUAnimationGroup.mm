@interface PUAnimationGroup
+ (id)animationGroupWithAnimations:(id)a3;
+ (void)popAnimationGroup:(id)a3;
+ (void)pushAnimationGroup:(id)a3;
- (BOOL)isReadyToComplete;
- (PUAnimationGroup)superAnimationGroup;
- (double)elapsedTime;
- (id)description;
- (void)addSubAnimationGroup:(id)a3;
- (void)complete;
- (void)completeIfNeeded;
- (void)dealloc;
- (void)finishImmediately;
- (void)setCompletionHandler:(id)a3;
- (void)setElapsedTime:(double)a3;
- (void)setPaused:(BOOL)a3;
- (void)setSuperAnimationGroup:(id)a3;
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
  v2 = [(PUAnimationGroup *)self subAnimationGroups];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) finishImmediately];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)complete
{
  v3 = [(PUAnimationGroup *)self completionHandler];
  if (v3)
  {
    v4 = v3;
    [(PUAnimationGroup *)self setCompletionHandler:0];
    v4[2](v4);
    v3 = v4;
  }
}

- (void)setCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PUAnimationGroup_setCompletionHandler___block_invoke;
    v9[3] = &unk_1E7B80B48;
    v9[4] = self;
    v10 = v4;
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
  v3 = [(PUAnimationGroup *)self superAnimationGroup];
  v4 = v3;
  if (v3)
  {
    [v3 completeIfNeeded];
  }

  else if ([(PUAnimationGroup *)self isReadyToComplete])
  {
    [(PUAnimationGroup *)self complete];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(PUAnimationGroup *)self subAnimationGroups];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) complete];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)isReadyToComplete
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PUAnimationGroup *)self isPaused];
  if (v3)
  {
    return 0;
  }

  v5 = v3;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(PUAnimationGroup *)self subAnimationGroups];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v12 + 1) + 8 * i) isReadyToComplete])
        {
          v4 = 0;
          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)setSuperAnimationGroup:(id)a3
{
  obj = a3;
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

- (void)addSubAnimationGroup:(id)a3
{
  v10 = a3;
  if ([(PUAnimationGroup *)self isPaused])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUAnimationGroup.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"![self isPaused]"}];
  }

  v5 = [(PUAnimationGroup *)self subAnimationGroups];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    subAnimationGroups = self->_subAnimationGroups;
    self->_subAnimationGroups = v6;
  }

  v8 = [(PUAnimationGroup *)self subAnimationGroups];
  [v8 addObject:v10];

  [v10 setSuperAnimationGroup:self];
}

- (void)setPaused:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_paused != a3)
  {
    v3 = a3;
    self->_paused = a3;
    if (a3)
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
    v5 = [(PUAnimationGroup *)self subAnimationGroups];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setPaused:v3];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setElapsedTime:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(PUAnimationGroup *)self subAnimationGroups];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setElapsedTime:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (double)elapsedTime
{
  v2 = [(PUAnimationGroup *)self subAnimationGroups];
  v3 = [v2 firstObject];

  if (v3)
  {
    [v3 elapsedTime];
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

+ (void)popAnimationGroup:(id)a3
{
  v10 = a3;
  if (__currentAnimationGroup != v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PUAnimationGroup.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"__currentAnimationGroup == animationGroup"}];
  }

  v5 = [v10 superAnimationGroup];
  v6 = __currentAnimationGroup;
  __currentAnimationGroup = v5;

  v7 = v10;
  v8 = __rootAnimationGroup;
  if (__rootAnimationGroup == v10)
  {
    __rootAnimationGroup = 0;

    v7 = v10;
  }
}

+ (void)pushAnimationGroup:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PUAnimationGroup.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"animationGroup != nil"}];
  }

  if (__rootAnimationGroup)
  {
    v7 = __currentAnimationGroup;
    if (!__currentAnimationGroup)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"PUAnimationGroup.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"__currentAnimationGroup != nil"}];

      v7 = __currentAnimationGroup;
    }

    [v7 addSubAnimationGroup:v6];
  }

  else
  {
    objc_storeStrong(&__rootAnimationGroup, a3);
  }

  v8 = __currentAnimationGroup;
  __currentAnimationGroup = v6;
}

+ (id)animationGroupWithAnimations:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PUAnimationGroup.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"animations != NULL"}];
  }

  v6 = objc_alloc_init(PUAnimationGroup);
  [PUAnimationGroup pushAnimationGroup:v6];
  v5[2](v5);
  [PUAnimationGroup popAnimationGroup:v6];

  return v6;
}

@end