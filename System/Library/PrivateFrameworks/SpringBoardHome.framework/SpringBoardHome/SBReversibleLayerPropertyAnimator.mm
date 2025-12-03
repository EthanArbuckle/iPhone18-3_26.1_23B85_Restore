@interface SBReversibleLayerPropertyAnimator
- (SBReversibleLayerPropertyAnimator)initWithLayer:(id)layer keyPath:(id)path initialValue:(double)value targetValue:(double)targetValue;
- (double)_inputPercentCompleteForAnimation:(id)animation outputPercentComplete:(double)complete precision:(double)precision;
- (double)_outputPercentCompleteForAnimation:(id)animation inputPercentComplete:(double)complete;
- (double)_percentCompleteForAnimation:(id)animation time:(double)time;
- (id)_additiveAnimationForKeyPath:(id)path withSettings:(id)settings beginTime:(id)time fromRelativeValue:(double)value toRelativeValue:(double)relativeValue;
- (id)_animationWithSettings:(id)settings;
- (void)_animateFromRelativeValue:(double)value toRelativeValue:(double)relativeValue withSettings:(id)settings beginTime:(id)time;
- (void)_fireCompletionIfNecessary;
- (void)_reverseWithSettings:(id)settings directionChangeSettings:(id)changeSettings headStart:(double)start;
- (void)animateWithSettings:(id)settings completion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)invalidate;
- (void)reverse;
- (void)reverseWithSettings:(id)settings directionChangeSettings:(id)changeSettings headStart:(double)start;
@end

@implementation SBReversibleLayerPropertyAnimator

- (SBReversibleLayerPropertyAnimator)initWithLayer:(id)layer keyPath:(id)path initialValue:(double)value targetValue:(double)targetValue
{
  layerCopy = layer;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = SBReversibleLayerPropertyAnimator;
  v13 = [(SBReversibleLayerPropertyAnimator *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layer, layer);
    v15 = [pathCopy copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v14->_initialValue = value;
    v14->_targetValue = targetValue;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    reversalAnimationKeys = v14->_reversalAnimationKeys;
    v14->_reversalAnimationKeys = v17;

    v14->_invalidated = 0;
  }

  return v14;
}

- (void)invalidate
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    layer = [(SBReversibleLayerPropertyAnimator *)self layer];
    forwardAnimationKey = [(SBReversibleLayerPropertyAnimator *)self forwardAnimationKey];
    if (forwardAnimationKey)
    {
      [layer removeAnimationForKey:forwardAnimationKey];
    }

    forwardOffsetAnimationKey = [(SBReversibleLayerPropertyAnimator *)self forwardOffsetAnimationKey];
    if (forwardOffsetAnimationKey)
    {
      [layer removeAnimationForKey:forwardOffsetAnimationKey];
    }

    reversalAnimationKeys = [(SBReversibleLayerPropertyAnimator *)self reversalAnimationKeys];
    if ([reversalAnimationKeys count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = reversalAnimationKeys;
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [layer removeAnimationForKey:{*(*(&v12 + 1) + 8 * v11++), v12}];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }

    [(SBReversibleLayerPropertyAnimator *)self _fireCompletionIfNecessary];
  }
}

- (void)animateWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_invalidated)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SBReversibleLayerPropertyAnimator_animateWithSettings_completion___block_invoke;
    block[3] = &unk_1E8089600;
    v19 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(SBReversibleLayerPropertyAnimator *)self setStarted:1];
    [(SBReversibleLayerPropertyAnimator *)self setCurrentAnimationSettings:settingsCopy];
    [(SBReversibleLayerPropertyAnimator *)self setCompletion:v8];
    [(SBReversibleLayerPropertyAnimator *)self initialValue];
    v10 = v9;
    [(SBReversibleLayerPropertyAnimator *)self targetValue];
    v12 = v11;
    layer = [(SBReversibleLayerPropertyAnimator *)self layer];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    keyPath = [(SBReversibleLayerPropertyAnimator *)self keyPath];
    [layer setValue:v14 forKeyPath:keyPath];

    v16 = [MEMORY[0x1E698E608] settingsWithDuration:0.001];
    [(SBReversibleLayerPropertyAnimator *)self _animateFromRelativeValue:v16 toRelativeValue:0 withSettings:v10 - v12 beginTime:v10 - v12];
    forwardAnimationKey = [(SBReversibleLayerPropertyAnimator *)self forwardAnimationKey];
    [(SBReversibleLayerPropertyAnimator *)self setForwardOffsetAnimationKey:forwardAnimationKey];

    [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:settingsCopy toValue:0 withSettings:v10 beginTime:v12];
  }
}

- (void)reverse
{
  currentAnimationSettings = [(SBReversibleLayerPropertyAnimator *)self currentAnimationSettings];
  [(SBReversibleLayerPropertyAnimator *)self _reverseWithSettings:currentAnimationSettings directionChangeSettings:0 headStart:0.0];
}

- (void)reverseWithSettings:(id)settings directionChangeSettings:(id)changeSettings headStart:(double)start
{
  [(SBReversibleLayerPropertyAnimator *)self _reverseWithSettings:settings directionChangeSettings:changeSettings headStart:start];

  [(SBReversibleLayerPropertyAnimator *)self setReversedWithNewSettings:1];
}

- (void)_reverseWithSettings:(id)settings directionChangeSettings:(id)changeSettings headStart:(double)start
{
  settingsCopy = settings;
  changeSettingsCopy = changeSettings;
  if (!self->_invalidated)
  {
    [(SBReversibleLayerPropertyAnimator *)self setReversalCount:[(SBReversibleLayerPropertyAnimator *)self reversalCount]+ 1];
    layer = [(SBReversibleLayerPropertyAnimator *)self layer];
    forwardAnimationKey = [(SBReversibleLayerPropertyAnimator *)self forwardAnimationKey];
    v11 = [layer animationForKey:forwardAnimationKey];
    v12 = v11;
    if (v11)
    {
      [v11 beginTime];
      v14 = v13;
      v15 = CACurrentMediaTime();
      if (!BSFloatLessThanFloat())
      {
        [layer removeAnimationForKey:forwardAnimationKey];
LABEL_20:

        goto LABEL_21;
      }

      v16 = [settingsCopy mutableCopy];
      currentAnimationSettings = [(SBReversibleLayerPropertyAnimator *)self currentAnimationSettings];
      v18 = [currentAnimationSettings mutableCopy];

      if (BSEqualObjects())
      {
        [v16 setDelay:0.0];
        if ([(SBReversibleLayerPropertyAnimator *)self isGoingForward])
        {
          [(SBReversibleLayerPropertyAnimator *)self initialValue];
          v20 = v19;
          [(SBReversibleLayerPropertyAnimator *)self targetValue];
        }

        else
        {
          [(SBReversibleLayerPropertyAnimator *)self targetValue];
          v20 = v57;
          [(SBReversibleLayerPropertyAnimator *)self initialValue];
        }

        [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:v16 toValue:0 withSettings:v20 beginTime:v21];
      }

      else
      {
        [v18 setDelay:0.0];
        if (changeSettingsCopy)
        {
          v24 = v14;
        }

        else
        {
          v24 = v14 + start;
        }

        [(SBReversibleLayerPropertyAnimator *)self targetValue];
        v26 = v25;
        [(SBReversibleLayerPropertyAnimator *)self initialValue];
        v28 = v27;
        v29 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
        [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:v18 toValue:v29 withSettings:v26 beginTime:v28];

        [(SBReversibleLayerPropertyAnimator *)self _percentCompleteForAnimation:v12 time:v15 - v14 + fmax((0.08 - (v15 - v14)) / 0.08, 0.0) * 0.04];
        v31 = v30;
        [(SBReversibleLayerPropertyAnimator *)self initialValue];
        v33 = v32;
        [(SBReversibleLayerPropertyAnimator *)self targetValue];
        v35 = v34;
        [(SBReversibleLayerPropertyAnimator *)self initialValue];
        v37 = v33 + v31 * (v35 - v36);
        [(SBReversibleLayerPropertyAnimator *)self initialValue];
        v39 = v37 - v38;
        v40 = [MEMORY[0x1E698E608] settingsWithDuration:0.001];
        [(SBReversibleLayerPropertyAnimator *)self _animateFromRelativeValue:v40 toRelativeValue:0 withSettings:v39 beginTime:v39];
        if (changeSettingsCopy && (BSFloatIsZero() & 1) == 0)
        {
          v41 = [(SBReversibleLayerPropertyAnimator *)self _animationWithSettings:changeSettingsCopy];
          [(SBReversibleLayerPropertyAnimator *)self _inputPercentCompleteForAnimation:v41 outputPercentComplete:v31 precision:0.001];
          v43 = v42;
          [v41 duration];
          v45 = v15 - v43 * v44;
          [(SBReversibleLayerPropertyAnimator *)self initialValue];
          v47 = v46;
          [(SBReversibleLayerPropertyAnimator *)self targetValue];
          v49 = v48;
          v50 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
          [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:changeSettingsCopy toValue:v50 withSettings:v47 beginTime:v49];

          [(SBReversibleLayerPropertyAnimator *)self targetValue];
          v52 = v51;
          [(SBReversibleLayerPropertyAnimator *)self initialValue];
          v54 = v53;
          start = [MEMORY[0x1E696AD98] numberWithDouble:v45 + start];
          [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:changeSettingsCopy toValue:start withSettings:v52 beginTime:v54];
        }

        [(SBReversibleLayerPropertyAnimator *)self initialValue];
        [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:v16 toValue:0 withSettings:v37 beginTime:v56];
      }
    }

    else
    {
      v22 = MEMORY[0x1E696AD98];
      [(SBReversibleLayerPropertyAnimator *)self initialValue];
      v16 = [v22 numberWithDouble:?];
      keyPath = [(SBReversibleLayerPropertyAnimator *)self keyPath];
      [layer setValue:v16 forKeyPath:keyPath];
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)_animateFromRelativeValue:(double)value toRelativeValue:(double)relativeValue withSettings:(id)settings beginTime:(id)time
{
  timeCopy = time;
  settingsCopy = settings;
  layer = [(SBReversibleLayerPropertyAnimator *)self layer];
  keyPath = [(SBReversibleLayerPropertyAnimator *)self keyPath];
  v13 = [(SBReversibleLayerPropertyAnimator *)self _additiveAnimationForKeyPath:keyPath withSettings:settingsCopy beginTime:timeCopy fromRelativeValue:value toRelativeValue:relativeValue];

  v14 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v17 = [v14 stringWithFormat:@"%@-%@", keyPath, uUIDString];

  [(SBReversibleLayerPropertyAnimator *)self setOutstandingCAAnimationCompletionCount:[(SBReversibleLayerPropertyAnimator *)self outstandingCAAnimationCompletionCount]+ 1];
  [v13 setDelegate:self];
  [v13 setRemovedOnCompletion:0];
  [v13 setFillMode:*MEMORY[0x1E69797E8]];
  if ([(SBReversibleLayerPropertyAnimator *)self hasReversed])
  {
    reversalAnimationKeys = [(SBReversibleLayerPropertyAnimator *)self reversalAnimationKeys];
    [reversalAnimationKeys addObject:v17];
  }

  else
  {
    [(SBReversibleLayerPropertyAnimator *)self setForwardAnimationKey:v17];
  }

  [layer addAnimation:v13 forKey:v17];
}

- (id)_additiveAnimationForKeyPath:(id)path withSettings:(id)settings beginTime:(id)time fromRelativeValue:(double)value toRelativeValue:(double)relativeValue
{
  timeCopy = time;
  settingsCopy = settings;
  pathCopy = path;
  v15 = [(SBReversibleLayerPropertyAnimator *)self _animationWithSettings:settingsCopy];
  [v15 setKeyPath:pathCopy];

  [settingsCopy delay];
  v17 = v16;

  if (timeCopy)
  {
    [v15 setBeginTimeMode:*MEMORY[0x1E6979588]];
    [timeCopy doubleValue];
    v17 = v17 + v18;
  }

  else
  {
    if (BSFloatIsZero())
    {
      goto LABEL_6;
    }

    [v15 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  }

  [v15 setBeginTime:v17];
LABEL_6:
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [v15 setFromValue:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:relativeValue];
  [v15 setToValue:v20];

  [v15 setAdditive:1];

  return v15;
}

- (id)_animationWithSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy isSpringAnimation])
  {
    animation = [MEMORY[0x1E69794A8] animation];
    [settingsCopy applyToCAAnimation:animation];
    [settingsCopy epsilon];
    v6 = v5;

    [animation durationForEpsilon:v6];
    [animation setDuration:?];
  }

  else
  {
    animation = [MEMORY[0x1E6979318] animation];
    [settingsCopy applyToCAAnimation:animation];
  }

  return animation;
}

- (double)_percentCompleteForAnimation:(id)animation time:(double)time
{
  animationCopy = animation;
  [animationCopy duration];
  v8 = v7;
  v9 = 0.0;
  if (BSFloatGreaterThanFloat())
  {
    v9 = fmin(fmax(time / v8, 0.0), 1.0);
    if ((BSFloatIsOne() & 1) == 0 && (BSFloatIsZero() & 1) == 0)
    {
      [(SBReversibleLayerPropertyAnimator *)self _outputPercentCompleteForAnimation:animationCopy inputPercentComplete:v9];
      v9 = v10;
    }
  }

  return v9;
}

- (double)_inputPercentCompleteForAnimation:(id)animation outputPercentComplete:(double)complete precision:(double)precision
{
  animationCopy = animation;
  v8 = fmin(fmax(complete, 0.0), 1.0);
  if (BSFloatIsOne() & 1) != 0 || (BSFloatIsZero())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.5;
    [(SBReversibleLayerPropertyAnimator *)self _outputPercentCompleteForAnimation:animationCopy inputPercentComplete:0.5];
    if (BSFloatGreaterThanFloat())
    {
      v11 = 0.0;
      v12 = 1.0;
      v13 = 101;
      v14 = 0.5;
      while (--v13)
      {
        v15 = BSFloatLessThanFloat();
        if (v15)
        {
          v9 = v14 + (v12 - v14) * 0.5;
        }

        else
        {
          v9 = v14 + (v14 - v11) * -0.5;
        }

        if (v15)
        {
          v11 = v14;
        }

        else
        {
          v12 = v14;
        }

        [(SBReversibleLayerPropertyAnimator *)self _outputPercentCompleteForAnimation:animationCopy inputPercentComplete:v9];
        v14 = v9;
        if ((BSFloatGreaterThanFloat() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v9 = v14;
    }
  }

LABEL_4:

  return v9;
}

- (double)_outputPercentCompleteForAnimation:(id)animation inputPercentComplete:(double)complete
{
  animationCopy = animation;
  timingFunction = [animationCopy timingFunction];
  v8 = timingFunction;
  if (timingFunction)
  {
    *&v7 = complete;
    [timingFunction _solveForInput:v7];
    complete = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v10 = complete;
    [animationCopy _solveForInput:v10];
    complete = v11;
  }

  return complete;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v32 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  if (!self->_invalidated)
  {
    [(SBReversibleLayerPropertyAnimator *)self setOutstandingCAAnimationCompletionCount:[(SBReversibleLayerPropertyAnimator *)self outstandingCAAnimationCompletionCount]- 1];
    if (![(SBReversibleLayerPropertyAnimator *)self outstandingCAAnimationCompletionCount])
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        layer = [(SBReversibleLayerPropertyAnimator *)self layer];
        animationKeys = [layer animationKeys];
        *buf = 138412802;
        v27 = stopCopy;
        v28 = 2112;
        selfCopy = self;
        v30 = 2112;
        v31 = animationKeys;
        _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "animation completed [%@]: %@, layer: %@", buf, 0x20u);
      }

      layer2 = [(SBReversibleLayerPropertyAnimator *)self layer];
      forwardAnimationKey = [(SBReversibleLayerPropertyAnimator *)self forwardAnimationKey];
      if (forwardAnimationKey)
      {
        [layer2 removeAnimationForKey:forwardAnimationKey];
      }

      forwardOffsetAnimationKey = [(SBReversibleLayerPropertyAnimator *)self forwardOffsetAnimationKey];
      if (forwardOffsetAnimationKey)
      {
        [layer2 removeAnimationForKey:forwardOffsetAnimationKey];
      }

      if (![(SBReversibleLayerPropertyAnimator *)self isGoingForward])
      {
        v12 = MEMORY[0x1E696AD98];
        [(SBReversibleLayerPropertyAnimator *)self initialValue];
        v13 = [v12 numberWithDouble:?];
        keyPath = [(SBReversibleLayerPropertyAnimator *)self keyPath];
        [layer2 setValue:v13 forKeyPath:keyPath];
      }

      reversalAnimationKeys = [(SBReversibleLayerPropertyAnimator *)self reversalAnimationKeys];
      if ([reversalAnimationKeys count])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v16 = reversalAnimationKeys;
        v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v22;
          do
          {
            v20 = 0;
            do
            {
              if (*v22 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [layer2 removeAnimationForKey:{*(*(&v21 + 1) + 8 * v20++), v21}];
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v18);
        }
      }

      [(SBReversibleLayerPropertyAnimator *)self _fireCompletionIfNecessary];
    }
  }
}

- (void)_fireCompletionIfNecessary
{
  completion = [(SBReversibleLayerPropertyAnimator *)self completion];
  if (completion)
  {
    v4 = completion;
    [(SBReversibleLayerPropertyAnimator *)self setCompletion:0];
    v4[2](v4, [(SBReversibleLayerPropertyAnimator *)self isGoingForward]);
    completion = v4;
  }
}

@end