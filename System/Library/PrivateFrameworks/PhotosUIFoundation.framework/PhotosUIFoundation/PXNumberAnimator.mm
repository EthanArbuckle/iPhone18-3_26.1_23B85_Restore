@interface PXNumberAnimator
- (NSString)description;
- (PXNumberAnimator)initWithValue:(double)value epsilon:(double)epsilon;
- (PXNumberAnimatorDisplayLinkTarget)displayLinkTarget;
- (double)approximateVelocity;
- (id)_createDisplayLinkDeferredStart:(BOOL)start;
- (void)_configureDisplayLink:(id)link;
- (void)_setAnimating:(BOOL)animating deferredStart:(BOOL)start;
- (void)_setPresentationValue:(double)value;
- (void)_updateIfNeeded;
- (void)_updatePresentationValueIfNeeded;
- (void)advanceAnimationsToFractionComplete:(double)complete;
- (void)didPerformChanges;
- (void)handleDisplayLink:(id)link;
- (void)performChanges:(id)changes;
- (void)performChangesUsingBezierCurveWithDuration:(double)duration controlPoints:(float)points :(float)a5 :(float)a6 :(float)a7 changes:(id)changes;
- (void)performChangesUsingSpringAnimationWithStiffness:(double)stiffness dampingRatio:(double)ratio initialVelocity:(double)velocity changes:(id)changes;
- (void)performChangesWithDuration:(double)duration curve:(int64_t)curve changes:(id)changes;
- (void)performChangesWithoutAnimation:(id)animation;
- (void)setPrepareForAnimation:(BOOL)animation;
- (void)setValue:(double)value animateImmediately:(BOOL)immediately;
@end

@implementation PXNumberAnimator

- (void)_updateIfNeeded
{
  if ([(PXNumberAnimator *)self _needsUpdate])
  {
    [(PXNumberAnimator *)self _updatePresentationValueIfNeeded];
    if ([(PXNumberAnimator *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXNumberAnimator.m" lineNumber:363 description:@"update still needed after update pass"];
    }
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXNumberAnimator;
  [(PXObservable *)&v3 didPerformChanges];
  [(PXNumberAnimator *)self _updateIfNeeded];
}

- (void)_updatePresentationValueIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.presentationValue)
  {
    self->_needsUpdateFlags.presentationValue = 0;
    skipFirstNumberWhenAnimationStart = self->_skipFirstNumberWhenAnimationStart;
    v4 = 0.0;
    if (skipFirstNumberWhenAnimationStart)
    {
      self->_skipFirstNumberWhenAnimationStart = 0;
      if ([(NSMutableArray *)self->_animations count])
      {
        if (![(PXNumberAnimator *)self isAnimating])
        {
          [(PXNumberAnimator *)self _setAnimating:1 deferredStart:0];
          v4 = (1.0 / [(PXDisplayLink *)self->_displayLink preferredFramesPerSecond]);
        }
      }
    }

    [(PXDisplayLink *)self->_displayLink targetTimestamp];
    v6 = v5;
    if (v5 != 0.0 || skipFirstNumberWhenAnimationStart)
    {
      [(PXDisplayLink *)self->_displayLink currentMediaTime];
      if (v8 > v6)
      {
        v6 = v8;
      }
    }

    [(PXNumberAnimator *)self value];
    v10 = v9;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [(NSMutableArray *)self->_animations copy];
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      v15 = v6 - v4;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          [v17 startTime];
          if (v6 > 0.0 && v18 == 0.0)
          {
            prepareForAnimation = [(PXNumberAnimator *)self prepareForAnimation];
            v20 = v15;
            if (prepareForAnimation)
            {
              [(PXDisplayLink *)self->_displayLink timestamp];
              if (v20 == 0.0)
              {
                v20 = v6;
              }
            }

            [v17 setStartTime:v20];
          }

          [v17 setCurrentMediaTime:v6];
          if ([v17 completed])
          {
            [(NSMutableArray *)self->_animations removeObject:v17];
          }

          else
          {
            [v17 currentValue];
            v10 = v10 + v21;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }

    [(PXNumberAnimator *)self _setPresentationValue:v10];
    self->_currentTime = v6;
    [(PXNumberAnimator *)self _setAnimating:[(NSMutableArray *)self->_animations count]!= 0];
    label = [(PXNumberAnimator *)self label];
    [(PXNumberAnimator *)self value];
    [(PXNumberAnimator *)self presentationValue];
    [(NSMutableArray *)self->_animations count];
    selfCopy = self;
    v24 = label;
    if (kdebug_is_enabled())
    {
      v29 = selfCopy;
      if (v24)
      {
        [v24 cStringUsingEncoding:4];
        [v24 length];
        __memcpy_chk();
      }

      kdebug_trace();
    }
  }
}

- (double)approximateVelocity
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_animations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) approximateVelocity];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (PXNumberAnimatorDisplayLinkTarget)displayLinkTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_displayLinkTarget);

  return WeakRetained;
}

- (void)setValue:(double)value animateImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  value = self->_value;
  self->_value = value;
  if (![(PXNumberAnimator *)self prepareForAnimation]|| !immediatelyCopy)
  {
    [(PXNumberAnimator *)self _invalidatePresentationValue];
  }

  type = self->_currentAnimationSpec.type;
  if (type == 1)
  {
    [(NSMutableArray *)self->_animations removeAllObjects];
    goto LABEL_22;
  }

  v10 = value - value;
  if (type > 2)
  {
    if (type == 3)
    {
      v11 = PXValueSpringAnimation;
    }

    else
    {
      if (type != 4 || self->_currentAnimationSpec.duration <= 0.0)
      {
        goto LABEL_22;
      }

      v11 = PXCubicBezierAnimation;
    }

    goto LABEL_15;
  }

  if (type == 2)
  {
    if (self->_currentAnimationSpec.duration <= 0.0)
    {
      goto LABEL_22;
    }

    v11 = PXValueDefaultAnimation;
LABEL_15:
    v12 = [v11 alloc];
    v13 = *&self->_currentAnimationSpec.initialVelocity;
    v20[2] = *&self->_currentAnimationSpec.stiffness;
    v20[3] = v13;
    v21 = *&self->_currentAnimationSpec.controlPoint2x;
    v14 = *&self->_currentAnimationSpec.curve;
    v20[0] = *&self->_currentAnimationSpec.type;
    v20[1] = v14;
    v15 = [v12 initWithFromValue:v20 currentMediaTime:v10 spec:0.0];
    if (v15)
    {
      if (immediatelyCopy)
      {
        [(PXNumberAnimator *)self _setAnimating:1 deferredStart:0];
      }

      animations = self->_animations;
      if (!animations)
      {
        array = [MEMORY[0x1E695DF70] array];
        v18 = self->_animations;
        self->_animations = array;

        animations = self->_animations;
      }

      [(NSMutableArray *)animations addObject:v15];
    }

    goto LABEL_22;
  }

  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNumberAnimator.m" lineNumber:303 description:@"unexpected animation type"];

    abort();
  }

LABEL_22:
  [(PXObservable *)self signalChange:1];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  isBeingMutated = self->_isBeingMutated;
  self->_isBeingMutated = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__PXNumberAnimator_performChanges___block_invoke;
  v8[3] = &unk_1E7BB72D8;
  v9 = changesCopy;
  v7.receiver = self;
  v7.super_class = PXNumberAnimator;
  v6 = changesCopy;
  [(PXObservable *)&v7 performChanges:v8];
  self->_isBeingMutated = isBeingMutated;
}

- (void)handleDisplayLink:(id)link
{
  if (self->_displayLink == link)
  {
    v6[5] = v3;
    v6[6] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__PXNumberAnimator_handleDisplayLink___block_invoke;
    v6[3] = &unk_1E7BB72B0;
    v6[4] = self;
    v5.receiver = self;
    v5.super_class = PXNumberAnimator;
    [(PXObservable *)&v5 performChanges:v6];
  }
}

- (void)setPrepareForAnimation:(BOOL)animation
{
  if (self->_prepareForAnimation != animation)
  {
    self->_prepareForAnimation = animation;
    reusableDisplayLink = self->_reusableDisplayLink;
    if (animation)
    {
      if (reusableDisplayLink || self->_displayLink)
      {
        return;
      }

      v5 = [(PXNumberAnimator *)self _createDisplayLinkDeferredStart:0];
    }

    else
    {
      if (!reusableDisplayLink)
      {
        return;
      }

      [(PXDisplayLink *)reusableDisplayLink invalidate];
      v5 = 0;
    }

    v6 = self->_reusableDisplayLink;
    self->_reusableDisplayLink = v5;

    MEMORY[0x1EEE66BB8](v5, v6);
  }
}

- (void)_configureDisplayLink:(id)link
{
  linkCopy = link;
  highFrameRateReason = [(PXNumberAnimator *)self highFrameRateReason];
  [linkCopy setHighFrameRateReason:highFrameRateReason];
  if (highFrameRateReason)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [linkCopy setFrameRateRangeType:v5];
}

- (id)_createDisplayLinkDeferredStart:(BOOL)start
{
  startCopy = start;
  displayLinkTarget = [(PXNumberAnimator *)self displayLinkTarget];
  v6 = displayLinkTarget;
  if (displayLinkTarget)
  {
    selfCopy = displayLinkTarget;
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  v9 = [[PXDisplayLink alloc] initWithWeakTarget:v8 selector:sel_handleDisplayLink_ deferredStart:startCopy];

  return v9;
}

- (void)_setAnimating:(BOOL)animating deferredStart:(BOOL)start
{
  displayLink = self->_displayLink;
  if ((displayLink != 0) == animating)
  {
    return;
  }

  if (displayLink)
  {
    v6 = 1;
  }

  else
  {
    v6 = !animating;
  }

  if (!v6)
  {
    startCopy = start;
    v8 = self->_reusableDisplayLink;
    reusableDisplayLink = self->_reusableDisplayLink;
    self->_reusableDisplayLink = 0;

    if (!v8)
    {
      v8 = [(PXNumberAnimator *)self _createDisplayLinkDeferredStart:startCopy];
    }

    [(PXNumberAnimator *)self _configureDisplayLink:v8];
    goto LABEL_17;
  }

  if (displayLink && !animating)
  {
    if ([(PXNumberAnimator *)self prepareForAnimation])
    {
      objc_storeStrong(&self->_reusableDisplayLink, self->_displayLink);
    }

    else
    {
      [(PXDisplayLink *)self->_displayLink invalidate];
    }

    v8 = 0;
LABEL_17:
    v10 = self->_displayLink;
    self->_displayLink = v8;
  }

  [(PXObservable *)self signalChange:4, start];
}

- (void)_setPresentationValue:(double)value
{
  if (self->_presentationValue != value)
  {
    self->_presentationValue = value;
    [(PXObservable *)self signalChange:2];
  }
}

- (void)advanceAnimationsToFractionComplete:(double)complete
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_animations count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_animations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = fmax(fmin(complete, 1.0), 0.0);
      v9 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          [v11 startTime];
          if (v12 != 0.0)
          {
            [v11 duration];
            if (v13 != 0.0)
            {
              [v11 currentMediaTime];
              v15 = v14;
              [v11 duration];
              v17 = v15 - v16 * v8;
              [v11 startTime];
              v19 = v17 - v18;
              if (v19 < 0.0)
              {
                [v11 startTime];
                [v11 setStartTime:v19 + v20];
              }
            }
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }
}

- (void)performChangesUsingBezierCurveWithDuration:(double)duration controlPoints:(float)points :(float)a5 :(float)a6 :(float)a7 changes:(id)changes
{
  changesCopy = changes;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__PXNumberAnimator_performChangesUsingBezierCurveWithDuration_controlPoints__::changes___block_invoke;
  v16[3] = &unk_1E7BB7288;
  durationCopy = duration;
  pointsCopy = points;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v16[4] = self;
  v17 = changesCopy;
  v15 = changesCopy;
  [(PXNumberAnimator *)self performChanges:v16];
}

__n128 __88__PXNumberAnimator_performChangesUsingBezierCurveWithDuration_controlPoints__::changes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 104;
  v7 = *(*(a1 + 32) + 136);
  v8 = *(*(a1 + 32) + 152);
  v9 = *(*(a1 + 32) + 168);
  v5 = *v2;
  v6 = *(*(a1 + 32) + 120);
  *(v2 + 8) = *(a1 + 48);
  *(*(a1 + 32) + 104) = 4;
  *(*(a1 + 32) + 160) = *(a1 + 56);
  *(*(a1 + 32) + 164) = *(a1 + 60);
  *(*(a1 + 32) + 168) = *(a1 + 64);
  *(*(a1 + 32) + 172) = *(a1 + 68);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32) + 104;
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 64) = v9;
  result = v6;
  *v3 = v5;
  *(v3 + 16) = v6;
  return result;
}

- (void)performChangesUsingSpringAnimationWithStiffness:(double)stiffness dampingRatio:(double)ratio initialVelocity:(double)velocity changes:(id)changes
{
  velocityCopy = velocity;
  v21 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  if ((*&velocity & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v12 = PXAssertGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = velocityCopy;
      _os_log_error_impl(&dword_1B3F73000, v12, OS_LOG_TYPE_ERROR, "Invalid initial velocity:%.3f correcting...", buf, 0xCu);
    }

    velocityCopy = 0.0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__PXNumberAnimator_performChangesUsingSpringAnimationWithStiffness_dampingRatio_initialVelocity_changes___block_invoke;
  v14[3] = &unk_1E7BB7288;
  stiffnessCopy = stiffness;
  ratioCopy = ratio;
  v18 = velocityCopy;
  v14[4] = self;
  v15 = changesCopy;
  v13 = changesCopy;
  [(PXNumberAnimator *)self performChanges:v14];
}

__n128 __105__PXNumberAnimator_performChangesUsingSpringAnimationWithStiffness_dampingRatio_initialVelocity_changes___block_invoke(void *a1, void *a2)
{
  v3 = (a1[4] + 104);
  v11 = *(a1[4] + 136);
  v12 = *(a1[4] + 152);
  v13 = *(a1[4] + 168);
  v9 = *v3;
  v10 = *(a1[4] + 120);
  *v3 = 3;
  *(a1[4] + 136) = a1[6];
  *(a1[4] + 144) = a1[7];
  *(a1[4] + 152) = a1[8];
  v4 = a1[4];
  v5 = a2;
  [v4 epsilon];
  *(a1[4] + 128) = v6;
  (*(a1[5] + 16))();

  v7 = a1[4] + 104;
  *(v7 + 32) = v11;
  *(v7 + 48) = v12;
  *(v7 + 64) = v13;
  result = v10;
  *v7 = v9;
  *(v7 + 16) = v10;
  return result;
}

- (void)performChangesWithDuration:(double)duration curve:(int64_t)curve changes:(id)changes
{
  changesCopy = changes;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PXNumberAnimator_performChangesWithDuration_curve_changes___block_invoke;
  v10[3] = &unk_1E7BB7CC0;
  durationCopy = duration;
  curveCopy = curve;
  v10[4] = self;
  v11 = changesCopy;
  v9 = changesCopy;
  [(PXNumberAnimator *)self performChanges:v10];
}

__n128 __61__PXNumberAnimator_performChangesWithDuration_curve_changes___block_invoke(void *a1)
{
  v2 = (a1[4] + 104);
  v7 = *(a1[4] + 136);
  v8 = *(a1[4] + 152);
  v9 = *(a1[4] + 168);
  v5 = *v2;
  v6 = *(a1[4] + 120);
  *v2 = 2;
  *(a1[4] + 112) = a1[6];
  *(a1[4] + 120) = a1[7];
  (*(a1[5] + 16))();
  v3 = a1[4] + 104;
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 64) = v9;
  result = v6;
  *v3 = v5;
  *(v3 + 16) = v6;
  return result;
}

- (void)performChangesWithoutAnimation:(id)animation
{
  animationCopy = animation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PXNumberAnimator_performChangesWithoutAnimation___block_invoke;
  v6[3] = &unk_1E7BB7C70;
  v6[4] = self;
  v7 = animationCopy;
  v5 = animationCopy;
  [(PXNumberAnimator *)self performChanges:v6];
}

__n128 __51__PXNumberAnimator_performChangesWithoutAnimation___block_invoke(uint64_t a1)
{
  v2 = (*(a1 + 32) + 104);
  v7 = *(*(a1 + 32) + 136);
  v8 = *(*(a1 + 32) + 152);
  v9 = *(*(a1 + 32) + 168);
  v5 = *v2;
  v6 = *(*(a1 + 32) + 120);
  *v2 = 1;
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32) + 104;
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 64) = v9;
  result = v6;
  *v3 = v5;
  *(v3 + 16) = v6;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PXNumberAnimator *)self label];
  v7 = label;
  if (label)
  {
    v8 = label;
  }

  else
  {
    v8 = &stru_1F2B87EE0;
  }

  [(PXNumberAnimator *)self value];
  v10 = v9;
  [(PXNumberAnimator *)self presentationValue];
  v12 = v11;
  isAnimating = [(PXNumberAnimator *)self isAnimating];
  v14 = @"NO";
  if (isAnimating)
  {
    v14 = @"YES";
  }

  v15 = v14;
  v16 = [v3 stringWithFormat:@"<%@:%p %@ value:%.3f presentationValue:%.3f isAnimating:%@ animations:%lu>", v5, self, v8, v10, v12, v15, -[NSMutableArray count](self->_animations, "count")];;

  return v16;
}

- (PXNumberAnimator)initWithValue:(double)value epsilon:(double)epsilon
{
  v7.receiver = self;
  v7.super_class = PXNumberAnimator;
  result = [(PXObservable *)&v7 init];
  if (result)
  {
    result->_presentationValue = value;
    result->_value = value;
    result->_epsilon = epsilon;
  }

  return result;
}

@end