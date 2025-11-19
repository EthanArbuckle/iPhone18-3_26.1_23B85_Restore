@interface UIAnimator
+ (id)sharedAnimator;
- (UIAnimator)init;
- (void)_addAnimation:(id)a3 withDuration:(double)a4 start:(BOOL)a5 startTime:(double)a6;
- (void)_advanceAnimationsOnScreenWithIdentifier:(id)a3 withTimestamp:(double)a4;
- (void)_startAnimation:(id)a3 withStartTime:(double)a4;
- (void)addAnimation:(id)a3 withDuration:(double)a4 start:(BOOL)a5;
- (void)addAnimations:(id)a3 withDuration:(double)a4 start:(BOOL)a5;
- (void)dealloc;
- (void)removeAnimationsForTarget:(id)a3;
- (void)removeAnimationsForTarget:(id)a3 ofKind:(Class)a4;
- (void)startAnimation:(id)a3;
- (void)stopAnimation:(id)a3;
@end

@implementation UIAnimator

+ (id)sharedAnimator
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"sharedAnimator"];
  if (!v4)
  {
    v4 = objc_alloc_init(UIAnimator);
    if (v4)
    {
      [v3 setObject:v4 forKey:@"sharedAnimator"];
    }
  }

  return v4;
}

- (UIAnimator)init
{
  v6.receiver = self;
  v6.super_class = UIAnimator;
  v2 = [(UIAnimator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    animatorScreenLinks = v2->_animatorScreenLinks;
    v2->_animatorScreenLinks = v3;
  }

  return v2;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_animations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(UIAnimator *)self stopAnimation:*(*(&v20 + 1) + 8 * i)];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableDictionary *)self->_animatorScreenLinks allKeys];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * j);
        v14 = [(NSMutableDictionary *)self->_animatorScreenLinks objectForKeyedSubscript:v13];
        [v14 invalidate];

        [(NSMutableDictionary *)self->_animatorScreenLinks removeObjectForKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }

  v15.receiver = self;
  v15.super_class = UIAnimator;
  [(UIAnimator *)&v15 dealloc];
}

- (void)addAnimation:(id)a3 withDuration:(double)a4 start:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = 0.0;
  if (v5)
  {
    currentAnimationTime();
    v8 = v9;
  }

  [(UIAnimator *)self _addAnimation:v10 withDuration:v5 start:a4 startTime:v8];
}

- (void)addAnimations:(id)a3 withDuration:(double)a4 start:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = 0.0;
  v15 = v8;
  if (v5)
  {
    currentAnimationTime();
    v8 = v15;
    v9 = v10;
  }

  v11 = [v8 count];
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = v11 & 0x7FFFFFFF;
    do
    {
      v14 = [v15 objectAtIndex:v12];
      [(UIAnimator *)self _addAnimation:v14 withDuration:v5 start:a4 startTime:v9];

      ++v12;
    }

    while (v13 != v12);
  }
}

- (void)removeAnimationsForTarget:(id)a3
{
  v4 = a3;
  [(UIAnimator *)self removeAnimationsForTarget:v4 ofKind:objc_opt_class()];
}

- (void)removeAnimationsForTarget:(id)a3 ofKind:(Class)a4
{
  v6 = a3;
  animations = self->_animations;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__UIAnimator_removeAnimationsForTarget_ofKind___block_invoke;
  v12[3] = &unk_1E70F5BB8;
  v13 = v6;
  v14 = a4;
  v8 = v6;
  v9 = [(NSMutableArray *)animations indexesOfObjectsPassingTest:v12];
  v10 = [(NSMutableArray *)animations objectsAtIndexes:v9];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__UIAnimator_removeAnimationsForTarget_ofKind___block_invoke_2;
  v11[3] = &unk_1E70F5BE0;
  v11[4] = self;
  [v10 enumerateObjectsWithOptions:2 usingBlock:v11];
}

uint64_t __47__UIAnimator_removeAnimationsForTarget_ofKind___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 target];
  if (v4 == *(a1 + 32))
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void __47__UIAnimator_removeAnimationsForTarget_ofKind___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 8) containsObject:?])
  {
    [*(a1 + 32) stopAnimation:v3];
  }
}

- (void)startAnimation:(id)a3
{
  v4 = a3;
  currentAnimationTime();
  [(UIAnimator *)self _startAnimation:v4 withStartTime:?];
}

- (void)stopAnimation:(id)a3
{
  v4 = a3;
  v5 = [v4 _screenIdentifier];
  v6 = [(NSMutableDictionary *)self->_animatorScreenLinks objectForKeyedSubscript:v5];
  currentAnimationTime();
  [v4 fractionForTime:?];
  v8 = v7;
  if ([v4 state] == 1)
  {
    [v6 setAnimationCount:{(objc_msgSend(v6, "animationCount") - 1)}];
  }

  [v4 markStop];
  if (v6 && ![v6 animationCount])
  {
    [v6 invalidate];
    [(NSMutableDictionary *)self->_animatorScreenLinks removeObjectForKey:v5];
  }

  v15 = v4;
  [(NSMutableArray *)self->_animations removeObject:v15];
  v9 = [v15 completion];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9);
    [v15 setCompletion:0];
  }

  v11 = [v15 delegate];
  if (v11)
  {
    v12 = [v15 action];
    if (v12)
    {
      v13 = v12;
      if (dyld_program_sdk_at_least())
      {
        [v11 v13];
      }

      else
      {
        [v11 performSelector:v13 withObject:v15];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      LODWORD(v14) = v8;
      [v11 animator:self stopAnimation:v15 fraction:v14];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v11 animator:self stopAnimation:v15];
    }
  }
}

- (void)_addAnimation:(id)a3 withDuration:(double)a4 start:(BOOL)a5 startTime:(double)a6
{
  v7 = a5;
  v17 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ([v10 state] == 1)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Animation", &_addAnimation_withDuration_start_startTime____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Attempted to add running animation: %@", &v15, 0xCu);
    }
  }

  else
  {
    [v10 setDuration:UIAnimationDragCoefficient() * a4];
    animations = self->_animations;
    if (!animations)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self->_animations;
      self->_animations = v13;

      animations = self->_animations;
    }

    [(NSMutableArray *)animations addObject:v10];
    if (v7)
    {
      [(UIAnimator *)self _startAnimation:v10 withStartTime:a6];
    }
  }
}

- (void)_startAnimation:(id)a3 withStartTime:(double)a4
{
  v6 = a3;
  if ([v6 state] != 1)
  {
    v7 = [v6 _screenIdentifier];
    v8 = [(NSMutableDictionary *)self->_animatorScreenLinks objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_animatorScreenLinks objectForKeyedSubscript:v7];
      [v9 setAnimationCount:{(objc_msgSend(v9, "animationCount") + 1)}];
    }

    else
    {
      v10 = [v6 _screen];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __44__UIAnimator__startAnimation_withStartTime___block_invoke;
      v18 = &unk_1E70F5C08;
      v19 = self;
      v11 = v7;
      v20 = v11;
      v12 = [UIAnimatorScreenLink startTimerWithScreen:v10 action:&v15];

      [(NSMutableDictionary *)self->_animatorScreenLinks setObject:v12 forKeyedSubscript:v11, v15, v16, v17, v18, v19];
    }

    [v6 markStart:a4];
    self->_lastUpdateTime = a4;
    v13 = [v6 delegate];
    if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 animator:self startAnimation:v6];
    }

    if (__animatorEnabled == 1)
    {
      LODWORD(v14) = 1.0;
      [v6 setProgress:v14];
      [(UIAnimator *)self stopAnimation:v6];
    }
  }
}

- (void)_advanceAnimationsOnScreenWithIdentifier:(id)a3 withTimestamp:(double)a4
{
  v13 = a3;
  v6 = [(NSMutableArray *)self->_animations copy];
  v7 = [v6 count];
  if (v7 >= 1)
  {
    v8 = (v7 & 0x7FFFFFFF) + 1;
    do
    {
      v9 = [v6 objectAtIndex:v8 - 2];
      if ([v9 state] == 1)
      {
        v10 = [v9 _screenIdentifier];

        if (v10 == v13)
        {
          [v9 fractionForTime:a4];
          v12 = v11;
          [v9 progressForFraction:?];
          [v9 setProgress:?];
          if (v12 == 1.0)
          {
            [(UIAnimator *)self stopAnimation:v9];
          }
        }
      }

      --v8;
    }

    while (v8 > 1);
  }

  self->_lastUpdateTime = a4;
}

@end