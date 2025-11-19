@interface SBReversibleLayerPropertyAnimator
- (SBReversibleLayerPropertyAnimator)initWithLayer:(id)a3 keyPath:(id)a4 initialValue:(double)a5 targetValue:(double)a6;
- (double)_inputPercentCompleteForAnimation:(id)a3 outputPercentComplete:(double)a4 precision:(double)a5;
- (double)_outputPercentCompleteForAnimation:(id)a3 inputPercentComplete:(double)a4;
- (double)_percentCompleteForAnimation:(id)a3 time:(double)a4;
- (id)_additiveAnimationForKeyPath:(id)a3 withSettings:(id)a4 beginTime:(id)a5 fromRelativeValue:(double)a6 toRelativeValue:(double)a7;
- (id)_animationWithSettings:(id)a3;
- (void)_animateFromRelativeValue:(double)a3 toRelativeValue:(double)a4 withSettings:(id)a5 beginTime:(id)a6;
- (void)_fireCompletionIfNecessary;
- (void)_reverseWithSettings:(id)a3 directionChangeSettings:(id)a4 headStart:(double)a5;
- (void)animateWithSettings:(id)a3 completion:(id)a4;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)invalidate;
- (void)reverse;
- (void)reverseWithSettings:(id)a3 directionChangeSettings:(id)a4 headStart:(double)a5;
@end

@implementation SBReversibleLayerPropertyAnimator

- (SBReversibleLayerPropertyAnimator)initWithLayer:(id)a3 keyPath:(id)a4 initialValue:(double)a5 targetValue:(double)a6
{
  v11 = a3;
  v12 = a4;
  v20.receiver = self;
  v20.super_class = SBReversibleLayerPropertyAnimator;
  v13 = [(SBReversibleLayerPropertyAnimator *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layer, a3);
    v15 = [v12 copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v14->_initialValue = a5;
    v14->_targetValue = a6;
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
    v3 = [(SBReversibleLayerPropertyAnimator *)self layer];
    v4 = [(SBReversibleLayerPropertyAnimator *)self forwardAnimationKey];
    if (v4)
    {
      [v3 removeAnimationForKey:v4];
    }

    v5 = [(SBReversibleLayerPropertyAnimator *)self forwardOffsetAnimationKey];
    if (v5)
    {
      [v3 removeAnimationForKey:v5];
    }

    v6 = [(SBReversibleLayerPropertyAnimator *)self reversalAnimationKeys];
    if ([v6 count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = v6;
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

            [v3 removeAnimationForKey:{*(*(&v12 + 1) + 8 * v11++), v12}];
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

- (void)animateWithSettings:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_invalidated)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SBReversibleLayerPropertyAnimator_animateWithSettings_completion___block_invoke;
    block[3] = &unk_1E8089600;
    v19 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(SBReversibleLayerPropertyAnimator *)self setStarted:1];
    [(SBReversibleLayerPropertyAnimator *)self setCurrentAnimationSettings:v6];
    [(SBReversibleLayerPropertyAnimator *)self setCompletion:v8];
    [(SBReversibleLayerPropertyAnimator *)self initialValue];
    v10 = v9;
    [(SBReversibleLayerPropertyAnimator *)self targetValue];
    v12 = v11;
    v13 = [(SBReversibleLayerPropertyAnimator *)self layer];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v15 = [(SBReversibleLayerPropertyAnimator *)self keyPath];
    [v13 setValue:v14 forKeyPath:v15];

    v16 = [MEMORY[0x1E698E608] settingsWithDuration:0.001];
    [(SBReversibleLayerPropertyAnimator *)self _animateFromRelativeValue:v16 toRelativeValue:0 withSettings:v10 - v12 beginTime:v10 - v12];
    v17 = [(SBReversibleLayerPropertyAnimator *)self forwardAnimationKey];
    [(SBReversibleLayerPropertyAnimator *)self setForwardOffsetAnimationKey:v17];

    [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:v6 toValue:0 withSettings:v10 beginTime:v12];
  }
}

- (void)reverse
{
  v3 = [(SBReversibleLayerPropertyAnimator *)self currentAnimationSettings];
  [(SBReversibleLayerPropertyAnimator *)self _reverseWithSettings:v3 directionChangeSettings:0 headStart:0.0];
}

- (void)reverseWithSettings:(id)a3 directionChangeSettings:(id)a4 headStart:(double)a5
{
  [(SBReversibleLayerPropertyAnimator *)self _reverseWithSettings:a3 directionChangeSettings:a4 headStart:a5];

  [(SBReversibleLayerPropertyAnimator *)self setReversedWithNewSettings:1];
}

- (void)_reverseWithSettings:(id)a3 directionChangeSettings:(id)a4 headStart:(double)a5
{
  v58 = a3;
  v8 = a4;
  if (!self->_invalidated)
  {
    [(SBReversibleLayerPropertyAnimator *)self setReversalCount:[(SBReversibleLayerPropertyAnimator *)self reversalCount]+ 1];
    v9 = [(SBReversibleLayerPropertyAnimator *)self layer];
    v10 = [(SBReversibleLayerPropertyAnimator *)self forwardAnimationKey];
    v11 = [v9 animationForKey:v10];
    v12 = v11;
    if (v11)
    {
      [v11 beginTime];
      v14 = v13;
      v15 = CACurrentMediaTime();
      if (!BSFloatLessThanFloat())
      {
        [v9 removeAnimationForKey:v10];
LABEL_20:

        goto LABEL_21;
      }

      v16 = [v58 mutableCopy];
      v17 = [(SBReversibleLayerPropertyAnimator *)self currentAnimationSettings];
      v18 = [v17 mutableCopy];

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
        if (v8)
        {
          v24 = v14;
        }

        else
        {
          v24 = v14 + a5;
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
        if (v8 && (BSFloatIsZero() & 1) == 0)
        {
          v41 = [(SBReversibleLayerPropertyAnimator *)self _animationWithSettings:v8];
          [(SBReversibleLayerPropertyAnimator *)self _inputPercentCompleteForAnimation:v41 outputPercentComplete:v31 precision:0.001];
          v43 = v42;
          [v41 duration];
          v45 = v15 - v43 * v44;
          [(SBReversibleLayerPropertyAnimator *)self initialValue];
          v47 = v46;
          [(SBReversibleLayerPropertyAnimator *)self targetValue];
          v49 = v48;
          v50 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
          [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:v8 toValue:v50 withSettings:v47 beginTime:v49];

          [(SBReversibleLayerPropertyAnimator *)self targetValue];
          v52 = v51;
          [(SBReversibleLayerPropertyAnimator *)self initialValue];
          v54 = v53;
          v55 = [MEMORY[0x1E696AD98] numberWithDouble:v45 + a5];
          [(SBReversibleLayerPropertyAnimator *)self _animateFromValue:v8 toValue:v55 withSettings:v52 beginTime:v54];
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
      v23 = [(SBReversibleLayerPropertyAnimator *)self keyPath];
      [v9 setValue:v16 forKeyPath:v23];
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)_animateFromRelativeValue:(double)a3 toRelativeValue:(double)a4 withSettings:(id)a5 beginTime:(id)a6
{
  v10 = a6;
  v11 = a5;
  v19 = [(SBReversibleLayerPropertyAnimator *)self layer];
  v12 = [(SBReversibleLayerPropertyAnimator *)self keyPath];
  v13 = [(SBReversibleLayerPropertyAnimator *)self _additiveAnimationForKeyPath:v12 withSettings:v11 beginTime:v10 fromRelativeValue:a3 toRelativeValue:a4];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [v15 UUIDString];
  v17 = [v14 stringWithFormat:@"%@-%@", v12, v16];

  [(SBReversibleLayerPropertyAnimator *)self setOutstandingCAAnimationCompletionCount:[(SBReversibleLayerPropertyAnimator *)self outstandingCAAnimationCompletionCount]+ 1];
  [v13 setDelegate:self];
  [v13 setRemovedOnCompletion:0];
  [v13 setFillMode:*MEMORY[0x1E69797E8]];
  if ([(SBReversibleLayerPropertyAnimator *)self hasReversed])
  {
    v18 = [(SBReversibleLayerPropertyAnimator *)self reversalAnimationKeys];
    [v18 addObject:v17];
  }

  else
  {
    [(SBReversibleLayerPropertyAnimator *)self setForwardAnimationKey:v17];
  }

  [v19 addAnimation:v13 forKey:v17];
}

- (id)_additiveAnimationForKeyPath:(id)a3 withSettings:(id)a4 beginTime:(id)a5 fromRelativeValue:(double)a6 toRelativeValue:(double)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(SBReversibleLayerPropertyAnimator *)self _animationWithSettings:v13];
  [v15 setKeyPath:v14];

  [v13 delay];
  v17 = v16;

  if (v12)
  {
    [v15 setBeginTimeMode:*MEMORY[0x1E6979588]];
    [v12 doubleValue];
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
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  [v15 setFromValue:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  [v15 setToValue:v20];

  [v15 setAdditive:1];

  return v15;
}

- (id)_animationWithSettings:(id)a3
{
  v3 = a3;
  if ([v3 isSpringAnimation])
  {
    v4 = [MEMORY[0x1E69794A8] animation];
    [v3 applyToCAAnimation:v4];
    [v3 epsilon];
    v6 = v5;

    [v4 durationForEpsilon:v6];
    [v4 setDuration:?];
  }

  else
  {
    v4 = [MEMORY[0x1E6979318] animation];
    [v3 applyToCAAnimation:v4];
  }

  return v4;
}

- (double)_percentCompleteForAnimation:(id)a3 time:(double)a4
{
  v6 = a3;
  [v6 duration];
  v8 = v7;
  v9 = 0.0;
  if (BSFloatGreaterThanFloat())
  {
    v9 = fmin(fmax(a4 / v8, 0.0), 1.0);
    if ((BSFloatIsOne() & 1) == 0 && (BSFloatIsZero() & 1) == 0)
    {
      [(SBReversibleLayerPropertyAnimator *)self _outputPercentCompleteForAnimation:v6 inputPercentComplete:v9];
      v9 = v10;
    }
  }

  return v9;
}

- (double)_inputPercentCompleteForAnimation:(id)a3 outputPercentComplete:(double)a4 precision:(double)a5
{
  v7 = a3;
  v8 = fmin(fmax(a4, 0.0), 1.0);
  if (BSFloatIsOne() & 1) != 0 || (BSFloatIsZero())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.5;
    [(SBReversibleLayerPropertyAnimator *)self _outputPercentCompleteForAnimation:v7 inputPercentComplete:0.5];
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

        [(SBReversibleLayerPropertyAnimator *)self _outputPercentCompleteForAnimation:v7 inputPercentComplete:v9];
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

- (double)_outputPercentCompleteForAnimation:(id)a3 inputPercentComplete:(double)a4
{
  v5 = a3;
  v6 = [v5 timingFunction];
  v8 = v6;
  if (v6)
  {
    *&v7 = a4;
    [v6 _solveForInput:v7];
    a4 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v10 = a4;
    [v5 _solveForInput:v10];
    a4 = v11;
  }

  return a4;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!self->_invalidated)
  {
    [(SBReversibleLayerPropertyAnimator *)self setOutstandingCAAnimationCompletionCount:[(SBReversibleLayerPropertyAnimator *)self outstandingCAAnimationCompletionCount]- 1];
    if (![(SBReversibleLayerPropertyAnimator *)self outstandingCAAnimationCompletionCount])
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(SBReversibleLayerPropertyAnimator *)self layer];
        v8 = [v7 animationKeys];
        *buf = 138412802;
        v27 = v5;
        v28 = 2112;
        v29 = self;
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "animation completed [%@]: %@, layer: %@", buf, 0x20u);
      }

      v9 = [(SBReversibleLayerPropertyAnimator *)self layer];
      v10 = [(SBReversibleLayerPropertyAnimator *)self forwardAnimationKey];
      if (v10)
      {
        [v9 removeAnimationForKey:v10];
      }

      v11 = [(SBReversibleLayerPropertyAnimator *)self forwardOffsetAnimationKey];
      if (v11)
      {
        [v9 removeAnimationForKey:v11];
      }

      if (![(SBReversibleLayerPropertyAnimator *)self isGoingForward])
      {
        v12 = MEMORY[0x1E696AD98];
        [(SBReversibleLayerPropertyAnimator *)self initialValue];
        v13 = [v12 numberWithDouble:?];
        v14 = [(SBReversibleLayerPropertyAnimator *)self keyPath];
        [v9 setValue:v13 forKeyPath:v14];
      }

      v15 = [(SBReversibleLayerPropertyAnimator *)self reversalAnimationKeys];
      if ([v15 count])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v16 = v15;
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

              [v9 removeAnimationForKey:{*(*(&v21 + 1) + 8 * v20++), v21}];
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
  v3 = [(SBReversibleLayerPropertyAnimator *)self completion];
  if (v3)
  {
    v4 = v3;
    [(SBReversibleLayerPropertyAnimator *)self setCompletion:0];
    v4[2](v4, [(SBReversibleLayerPropertyAnimator *)self isGoingForward]);
    v3 = v4;
  }
}

@end