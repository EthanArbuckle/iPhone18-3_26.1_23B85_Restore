@interface UIViewKeyframeAnimationState
- (UIViewKeyframeAnimationState)init;
- (id)_createDeferredAnimationForKey:(id)a3 ignoringKeyFrames:(BOOL)a4;
- (id)_updateAnimationFrameWithAnimationProperties:(id)a3;
- (id)animationForLayer:(id)a3 forKey:(id)a4 forView:(id)a5;
- (void)addKeyframeWithRelativeStartTime:(double)a3 relativeDuration:(double)a4 animations:(id)a5;
- (void)cleanupTrackedLayers;
- (void)pop;
- (void)setupWithDuration:(double)a3 delay:(double)a4 view:(id)a5 options:(unint64_t)a6 factory:(id)a7 parentState:(id)a8 start:(id)a9 completion:(id)a10;
@end

@implementation UIViewKeyframeAnimationState

- (UIViewKeyframeAnimationState)init
{
  v6.receiver = self;
  v6.super_class = UIViewKeyframeAnimationState;
  v2 = [(UIViewAnimationState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    keyframeLayers = v2->_keyframeLayers;
    v2->_keyframeLayers = v3;
  }

  return v2;
}

- (void)setupWithDuration:(double)a3 delay:(double)a4 view:(id)a5 options:(unint64_t)a6 factory:(id)a7 parentState:(id)a8 start:(id)a9 completion:(id)a10
{
  v12.receiver = self;
  v12.super_class = UIViewKeyframeAnimationState;
  [(UIViewAnimationState *)&v12 setupWithDuration:a5 delay:a6 view:a7 options:a8 factory:a9 parentState:a10 start:a3 completion:a4];
  self->_calculationMode = (a6 >> 10) & 7;
}

- (id)animationForLayer:(id)a3 forKey:(id)a4 forView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_inFrame)
  {
    v11 = 0;
    if (v8 && v9)
    {
      v12 = objc_getAssociatedObject(v8, &_UITrackedKeyframeActionsForLayerKey);
      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        objc_setAssociatedObject(v8, &_UITrackedKeyframeActionsForLayerKey, v12, 1);
      }

      v13 = [v12 objectForKeyedSubscript:v9];
      if (!v13)
      {
        v13 = objc_alloc_init(_UIViewDeferredKeyframeAnimation);
        [(_UIViewDeferredAnimation *)v13 setKey:v9];
        [(_UIViewDeferredAnimation *)v13 setDuration:self->super._duration];
        v14 = [v10 _initialValueForLayer:v8 keyPath:v9 usePresentationValue:(*(&self->super + 172) >> 1) & 1];
        [(_UIViewDeferredAnimation *)v13 setInitialValue:v14];

        [(_UIViewDeferredAnimation *)v13 setRepeatCount:self->super._repeatCount];
        [(_UIViewDeferredAnimation *)v13 setAutoreverses:(*(&self->super + 172) >> 3) & 1];
        [v12 setObject:v13 forKeyedSubscript:v9];
      }

      [(NSMutableSet *)self->_keyframeLayers addObject:v8];
      v15 = [(NSMutableDictionary *)self->_keyframeLayersForCurrentKeyFrameDict objectForKeyedSubscript:v9];
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [(NSMutableDictionary *)self->_keyframeLayersForCurrentKeyFrameDict setObject:v15 forKeyedSubscript:v9];
      }

      [v15 addObject:v8];

      v11 = 0;
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UIViewKeyframeAnimationState;
    v11 = [(UIViewAnimationState *)&v17 animationForLayer:v8 forKey:v9 forView:v10];
  }

  return v11;
}

- (void)addKeyframeWithRelativeStartTime:(double)a3 relativeDuration:(double)a4 animations:(id)a5
{
  v13 = a5;
  if (self->_inFrame)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:2892 description:@"calls to +[UIView addKeyframeWithStartTime:duration:animations:] cannot be nested within a single keyframe animation"];
  }

  self->_inFrame = 1;
  self->_frameStartTime = a3;
  self->_frameDuration = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  keyframeLayersForCurrentKeyFrameDict = self->_keyframeLayersForCurrentKeyFrameDict;
  self->_keyframeLayersForCurrentKeyFrameDict = v9;

  v13[2]();
  [(NSMutableDictionary *)self->_keyframeLayersForCurrentKeyFrameDict enumerateKeysAndObjectsUsingBlock:&__block_literal_global_501_2];
  v11 = self->_keyframeLayersForCurrentKeyFrameDict;
  self->_keyframeLayersForCurrentKeyFrameDict = 0;

  self->_inFrame = 0;
}

void __93__UIViewKeyframeAnimationState_addKeyframeWithRelativeStartTime_relativeDuration_animations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = &_UITrackedKeyframeActionsForLayerKey;
    v10 = @"backgroundColor";
    do
    {
      v11 = 0;
      v21 = v7;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = objc_getAssociatedObject(v12, v9);
        v14 = [v13 objectForKeyedSubscript:v4];
        v15 = [v12 valueForKeyPath:v4];
        if (!v15)
        {
          if ([(__CFString *)v10 isEqualToString:v4])
          {
            +[UIColor clearColor];
            v16 = v8;
            v17 = v9;
            v18 = v5;
            v20 = v19 = v10;
            v15 = [v20 CGColor];

            v10 = v19;
            v5 = v18;
            v9 = v17;
            v8 = v16;
            v7 = v21;
          }

          else
          {
            v15 = [MEMORY[0x1E6979398] defaultValueForKey:v4];
          }
        }

        [v14 addAnimationFrameForValue:v15];

        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }
}

- (id)_createDeferredAnimationForKey:(id)a3 ignoringKeyFrames:(BOOL)a4
{
  if (self->_inFrame && !a4)
  {
    v5 = objc_alloc_init(_UIViewDeferredKeyframeAnimation);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIViewKeyframeAnimationState;
    v5 = [(UIViewAnimationState *)&v7 _createDeferredAnimationForKey:a3 ignoringKeyFrames:a4];
  }

  return v5;
}

- (id)_updateAnimationFrameWithAnimationProperties:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(_UIViewAnimationFrame);
  }

  [(_UIViewAnimationFrame *)v4 setStartTime:self->_frameStartTime];
  [(_UIViewAnimationFrame *)v4 setDuration:self->_frameDuration];

  return v4;
}

- (void)pop
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = UIViewKeyframeAnimationState;
  [(UIViewAnimationState *)&v22 pop];
  v3 = self->_calculationMode - 1;
  if (v3 > 3)
  {
    v4 = MEMORY[0x1E69795A8];
  }

  else
  {
    v4 = qword_1E712B558[v3];
  }

  v5 = *v4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_keyframeLayers;
  v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_getAssociatedObject(v10, &_UITrackedKeyframeActionsForLayerKey);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __35__UIViewKeyframeAnimationState_pop__block_invoke;
        v14[3] = &unk_1E712AF58;
        v15 = v5;
        v16 = self;
        v17 = v10;
        [v11 enumerateKeysAndObjectsUsingBlock:v14];
      }

      v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v7);
  }

  [(UIViewKeyframeAnimationState *)self cleanupTrackedLayers];
  keyframeLayers = self->_keyframeLayers;
  self->_keyframeLayers = 0;
}

void __35__UIViewKeyframeAnimationState_pop__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 _finalize];
  if (([v6 isEmpty] & 1) == 0)
  {
    v7 = [MEMORY[0x1E6979390] animationWithKeyPath:v5];
    [v6 repeatCount];
    v9 = v8;
    v10 = [v6 autoreverses];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __35__UIViewKeyframeAnimationState_pop__block_invoke_2;
    v18[3] = &unk_1E70F3590;
    v11 = v7;
    v19 = v11;
    [UIView modifyAnimationsWithRepeatCount:v10 autoreverses:v18 animations:v9];
    [v11 setCalculationMode:*(a1 + 32)];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = *(*(a1 + 40) + 56);
    if (v14 == 0.0)
    {
      v15 = [objc_msgSend(*(a1 + 48) "unsafeUnretainedDelegate")];
      [v15 _refreshRate];
      v14 = v16;

      if (v14 == 0.0)
      {
        v14 = 0.0166666667;
      }
    }

    [v6 calculateFrameValues:v12 frameTimes:v13 withFrameInterval:0 valueTransformer:v14];
    [v11 setValues:v12];
    [v11 setKeyTimes:v13];
    if ([UIView _shouldTrackActionWithAnimator:v11])
    {
      v17 = [UIViewPropertyAnimator _trackNonAdditiveAnimationWithAnimator:v11 forLayer:*(a1 + 48) forKey:v5];
    }

    [*(a1 + 48) addAnimation:v11 forKey:v5];
    if ([*(a1 + 40) _isTrackingEnabled])
    {
      [*(a1 + 40) _trackAnimation:v11 withAnimationKey:v5 forKeyPath:v5 inLayer:*(a1 + 48)];
    }
  }
}

- (void)cleanupTrackedLayers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_keyframeLayers;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        objc_setAssociatedObject(*(*(&v7 + 1) + 8 * v6++), &_UITrackedKeyframeActionsForLayerKey, 0, 1);
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end