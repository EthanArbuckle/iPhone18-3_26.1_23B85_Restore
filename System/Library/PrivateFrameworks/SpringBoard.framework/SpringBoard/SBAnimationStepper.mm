@interface SBAnimationStepper
- (SBAnimationStepper)initWithAnimationSettings:(id)settings;
- (double)_nextCommitTime;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_adjustDurationForLongestAnimation;
- (void)_checkForCompletion;
- (void)_displayLinkFired:(id)fired;
- (void)_displayLinkFiredForBackwardToStart:(id)start;
- (void)_makeSubviewTree:(id)tree fromView:(id)view;
- (void)_setStepPercentage:(double)percentage;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)finishSteppingBackwardToStartWithCompletion:(id)completion;
- (void)finishSteppingForwardToEndWithCompletion:(id)completion;
- (void)invalidate;
- (void)setStepPercentage:(double)percentage;
- (void)startSteppingAnimationsInView:(id)view;
@end

@implementation SBAnimationStepper

- (SBAnimationStepper)initWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v16.receiver = self;
  v16.super_class = SBAnimationStepper;
  v5 = [(SBAnimationStepper *)&v16 init];
  if (v5)
  {
    v6 = [settingsCopy copy];
    animationSettings = v5->_animationSettings;
    v5->_animationSettings = v6;

    v8 = [MEMORY[0x277CF0D38] factoryWithSettings:settingsCopy];
    effectiveSettings = [v8 effectiveSettings];
    [effectiveSettings duration];
    v5->_duration = v10;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    views = v5->_views;
    v5->_views = v11;

    v5->_adjustsDurationForLongestAnimation = 1;
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    finishedAnimatingViews = v5->_finishedAnimatingViews;
    v5->_finishedAnimatingViews = v13;
  }

  return v5;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)startSteppingAnimationsInView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    value = viewCopy;
    v5 = [(NSMutableSet *)self->_views containsObject:viewCopy];
    viewCopy = value;
    if ((v5 & 1) == 0)
    {
      [value layoutIfNeeded];
      [(NSMutableSet *)self->_views addObject:value];
      layer = [value layer];
      [(SBAnimationStepper *)self _nextCommitTime];
      [layer setBeginTime:?];
      [layer setSpeed:0.0];
      [layer beginTime];
      [layer setTimeOffset:?];
      if ([(SBAnimationStepper *)self adjustsDurationForLongestAnimation])
      {
        [(SBAnimationStepper *)self _adjustDurationForLongestAnimation];
      }

      animation = [MEMORY[0x277CD9DF8] animation];
      [animation setDuration:self->_duration];
      [animation setRemovedOnCompletion:1];
      [animation setDelegate:self];
      v8 = [layer animationForKey:@"SBAnimationStepper"];

      if (v8)
      {
        [SBAnimationStepper startSteppingAnimationsInView:];
      }

      [layer addAnimation:animation forKey:@"SBAnimationStepper"];
      v9 = [layer animationForKey:@"SBAnimationStepper"];

      objc_setAssociatedObject(v9, &SBAnimationStepperViewForAnimationKey, value, 0);
      viewCopy = value;
    }
  }
}

- (void)_adjustDurationForLongestAnimation
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = self->_views;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBAnimationStepper *)self _makeSubviewTree:v3 fromView:*(*(&v34 + 1) + 8 * i)];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  selfCopy = self;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v12 = 0.0;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        layer = [*(*(&v30 + 1) + 8 * j) layer];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        animationKeys = [layer animationKeys];
        v16 = [animationKeys countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(animationKeys);
              }

              v20 = [layer animationForKey:*(*(&v26 + 1) + 8 * k)];
              [v20 duration];
              if (fabs(v21) != INFINITY && v21 > v12)
              {
                v12 = v21;
              }
            }

            v17 = [animationKeys countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v17);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  duration = selfCopy->_duration;
  if (v12 >= duration)
  {
    duration = v12;
  }

  selfCopy->_duration = duration;
}

- (void)_makeSubviewTree:(id)tree fromView:(id)view
{
  v18 = *MEMORY[0x277D85DE8];
  treeCopy = tree;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews = [view subviews];
  v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [treeCopy addObject:v12];
        [(SBAnimationStepper *)self _makeSubviewTree:treeCopy fromView:v12];
      }

      v9 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    views = self->_views;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__SBAnimationStepper_invalidate__block_invoke;
    v6[3] = &unk_2783B78C0;
    v6[4] = self;
    v6[5] = a2;
    [(NSMutableSet *)views enumerateObjectsUsingBlock:v6];
    [(NSMutableSet *)self->_views removeAllObjects];
    [(NSMutableSet *)self->_finishedAnimatingViews removeAllObjects];
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;

    completion = self->_completion;
    self->_completion = 0;
  }
}

void __32__SBAnimationStepper_invalidate__block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 layer];
  LODWORD(v3) = 1.0;
  [v8 setSpeed:v3];
  [v8 setBeginTime:0.0];
  [v8 setTimeOffset:0.0];
  v4 = [v8 animationForKey:@"SBAnimationStepper"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 delegate];
    v7 = *(a1 + 32);

    if (v6 != v7)
    {
      __32__SBAnimationStepper_invalidate__block_invoke_cold_1();
    }

    [v8 removeAnimationForKey:@"SBAnimationStepper"];
  }
}

- (void)finishSteppingForwardToEndWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_invalidated)
  {
    [SBAnimationStepper finishSteppingForwardToEndWithCompletion:];
  }

  if (self->_completion)
  {
    [SBAnimationStepper finishSteppingForwardToEndWithCompletion:];
  }

  self->_finishingForward = 1;
  v5 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v5;

  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  [(SBAnimationStepper *)self _nextCommitTime];
  views = self->_views;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SBAnimationStepper_finishSteppingForwardToEndWithCompletion___block_invoke;
  v10[3] = &__block_descriptor_40_e20_v24__0__UIView_8_B16l;
  v10[4] = v9;
  [(NSMutableSet *)views enumerateObjectsUsingBlock:v10];
  [(SBAnimationStepper *)self _checkForCompletion];
}

void __63__SBAnimationStepper_finishSteppingForwardToEndWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 layer];
  [v4 setBeginTime:*(a1 + 32)];
  LODWORD(v3) = 1.0;
  [v4 setSpeed:v3];
}

- (void)finishSteppingBackwardToStartWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_invalidated)
  {
    [SBAnimationStepper finishSteppingBackwardToStartWithCompletion:];
  }

  if (self->_completion)
  {
    [SBAnimationStepper finishSteppingBackwardToStartWithCompletion:];
  }

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];

  if (currentRunLoop != mainRunLoop)
  {
    [SBAnimationStepper finishSteppingBackwardToStartWithCompletion:];
  }

  self->_finishingBackward = 1;
  v6 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v6;

  v8 = CACurrentMediaTime();
  percentage = self->_percentage;
  v10 = self->_duration * percentage;
  self->_finishBackwardTimestamp = v8;
  self->_finishBackwardDuration = v10;
  self->_finishBackwardPercentage = percentage;
  [(CADisplayLink *)self->_displayLink invalidate];
  v11 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFiredForBackwardToStart_];
  displayLink = self->_displayLink;
  self->_displayLink = v11;

  v13 = self->_displayLink;
  currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(CADisplayLink *)v13 addToRunLoop:currentRunLoop2 forMode:*MEMORY[0x277CBE738]];

  [(SBAnimationStepper *)self _displayLinkFiredForBackwardToStart:0];
}

- (void)_checkForCompletion
{
  v3 = [(NSMutableSet *)self->_finishedAnimatingViews count];
  if (v3 == [(NSMutableSet *)self->_views count])
  {
    self->_completed = 1;
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;

    completion = self->_completion;
    if (completion)
    {
      completion[2](completion, 1);
      v6 = self->_completion;
      self->_completion = 0;
    }
  }
}

- (void)_setStepPercentage:(double)percentage
{
  self->_percentage = fmin(fmax(percentage, 0.0), 1.0);
  views = self->_views;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SBAnimationStepper__setStepPercentage___block_invoke;
  v4[3] = &unk_2783B7908;
  v4[4] = self;
  [(NSMutableSet *)views enumerateObjectsUsingBlock:v4];
}

void __41__SBAnimationStepper__setStepPercentage___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 layer];
  [v4 setSpeed:0.0];
  [v4 beginTime];
  [v4 setTimeOffset:v3 + *(*(a1 + 32) + 120) * *(*(a1 + 32) + 48)];
}

- (void)_displayLinkFired:(id)fired
{
  firedCopy = fired;
  if (!self->_invalidated && !self->_completed)
  {
    v15 = firedCopy;
    v5 = CACurrentMediaTime();
    animatedSteppingTargetPercent = self->_animatedSteppingTargetPercent;
    percentage = self->_percentage;
    duration = self->_duration;
    v9 = duration * vabdd_f64(animatedSteppingTargetPercent, percentage);
    v10 = percentage + (animatedSteppingTargetPercent - percentage) * fmin(fmax((v5 - self->_animatedSteppingTimestamp) / (duration * vabdd_f64(animatedSteppingTargetPercent, self->_animatedSteppingStartPercent)), 0.0), 1.0);
    if (v15)
    {
      [v15 duration];
      v12 = v11;
    }

    else
    {
      v12 = 0.017;
    }

    v13 = BSFloatEqualToFloat();
    if (v9 <= v12 || v13)
    {
      self->_animatingToStepPercent = 0;
      [(CADisplayLink *)self->_displayLink invalidate];
      displayLink = self->_displayLink;
      self->_displayLink = 0;

      v10 = self->_animatedSteppingTargetPercent;
    }

    [(SBAnimationStepper *)self _setStepPercentage:v10];
    firedCopy = v15;
  }
}

- (void)_displayLinkFiredForBackwardToStart:(id)start
{
  if (!self->_invalidated && !self->_completed)
  {
    [(SBAnimationStepper *)self _setStepPercentage:self->_finishBackwardPercentage * (1.0 - (CACurrentMediaTime() - self->_finishBackwardTimestamp) / self->_finishBackwardDuration)];
    views = self->_views;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__SBAnimationStepper__displayLinkFiredForBackwardToStart___block_invoke;
    v5[3] = &unk_2783B7908;
    v5[4] = self;
    [(NSMutableSet *)views enumerateObjectsUsingBlock:v5];
    [(SBAnimationStepper *)self _checkForCompletion];
  }
}

void __58__SBAnimationStepper__displayLinkFiredForBackwardToStart___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 layer];
  [v3 timeOffset];
  v5 = v4;
  [v3 beginTime];
  if (v5 <= v6 + 0.00000011920929)
  {
    [v3 beginTime];
    [v3 setTimeOffset:?];
    [v7 sb_removeAnimationsIncludingSubviews:1 predicate:&__block_literal_global_184];
    [*(*(a1 + 32) + 24) addObject:v7];
  }
}

- (double)_nextCommitTime
{
  v2 = [MEMORY[0x277CD9FF0] valueForKey:*MEMORY[0x277CDA910]];
  [v2 doubleValue];
  if (BSFloatIsZero())
  {
    v3 = CACurrentMediaTime();
  }

  else
  {
    [v2 doubleValue];
  }

  v4 = v3;

  return v4;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  if (!self->_invalidated && !self->_completed)
  {
    v7 = stopCopy;
    v6 = objc_getAssociatedObject(stopCopy, &SBAnimationStepperViewForAnimationKey);
    if (v6)
    {
      [(NSMutableSet *)self->_finishedAnimatingViews addObject:v6];
      [(SBAnimationStepper *)self _checkForCompletion];
    }

    stopCopy = v7;
  }
}

- (void)setStepPercentage:(double)percentage
{
  if (!self->_invalidated && !self->_completed)
  {
    if (self->_animatingToStepPercent)
    {
      [(SBAnimationStepper *)self _updateAnimationSteppingTarget:percentage];
    }

    else
    {
      [(SBAnimationStepper *)self _setStepPercentage:percentage];
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBAnimationStepper *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBAnimationStepper *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBAnimationStepper *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBAnimationStepper_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __60__SBAnimationStepper_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"settings"];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) views];
  [v3 appendArraySection:v4 withName:@"views" skipIfEmpty:1 objectTransformer:&__block_literal_global_50_3];
}

- (void)startSteppingAnimationsInView:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __32__SBAnimationStepper_invalidate__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"SBAnimationStepper.m" lineNumber:171 description:@"this animation better be our own"];
}

- (void)finishSteppingForwardToEndWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)finishSteppingForwardToEndWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)finishSteppingBackwardToStartWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)finishSteppingBackwardToStartWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)finishSteppingBackwardToStartWithCompletion:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CBEB88] currentRunLoop];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end