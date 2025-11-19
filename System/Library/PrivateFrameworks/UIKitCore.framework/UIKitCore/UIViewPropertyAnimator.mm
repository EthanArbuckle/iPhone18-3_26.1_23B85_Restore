@interface UIViewPropertyAnimator
+ (BOOL)_canEnableTrackingAnimationsWithAnimators;
+ (BOOL)_containsAnimatorForTrackedAnimationsUUID:(id)a3;
+ (BOOL)_trackedAnimationsOptimizationsEnabled;
+ (BOOL)_trackedAnimationsScrubLinearly;
+ (BOOL)_trackedAnimationsStartPaused;
+ (BOOL)_trackedAnimationsUserInteractionEnabled;
+ (BOOL)_trackingAnimationsCurrentlyEnabled;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (UIViewPropertyAnimator)runningPropertyAnimatorWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options animations:(void *)animations completion:(void *)completion;
+ (double)_delayForAnimation:(id)a3 forLayer:(id)a4;
+ (id)_animationBlockForTrackingAnimation:(id)a3 animator:(id)a4 trackingSetup:(id)a5;
+ (id)_animatorForTrackedAnimationsUUID:(id)a3;
+ (id)_animatorWithTimingAttributesMatchingAnimation:(id)a3 forLayer:(id)a4 wasReused:(BOOL *)a5;
+ (id)_animatorsForTrackedAnimationsUUID:(id)a3;
+ (id)_currentPropertyAnimator;
+ (id)_currentTrackedAnimationsUUID;
+ (id)_getPropertyAnimationForState:(id)a3;
+ (id)_originalFromValueForKey:(id)a3 inLayer:(id)a4 forAnimatorWithTrackingIdentifier:(id)a5;
+ (id)_performWhileTrackingAnimations:(id)a3;
+ (id)_startTrackingAnimations;
+ (id)_trackAdditiveAnimationWithAnimator:(id)a3 nonAdditiveAnimation:(id)a4 withAnimationKey:(id)a5 forKeyPath:(id)a6 forLayer:(id)a7;
+ (id)_trackAnimationWithAnimator:(id)a3 forLayer:(id)a4 forAnimationKey:(id)a5 trackingSetup:(id)a6;
+ (id)_trackNonAdditiveAnimationWithAnimator:(id)a3 forLayer:(id)a4 forKey:(id)a5;
+ (void)_finishTrackingAnimations;
+ (void)_removeReferenceToActivePropertyAnimator:(id)a3;
+ (void)_removeReferenceToPropertyAnimatorWithTrackingIdentifier:(id)a3;
+ (void)_removeTrackingAnimator:(id)a3 forUUID:(id)a4 andDescription:(id)a5;
+ (void)_saveReferenceToActivePropertyAnimator:(id)a3;
+ (void)_saveReferenceToPropertyAnimator:(id)a3;
+ (void)_saveTrackingAnimator:(id)a3 forUUID:(id)a4 andDescription:(id)a5;
+ (void)_setTrackedAnimationsOptimizationsEnabled:(BOOL)a3;
+ (void)_setTrackedAnimationsScrubLinearly:(BOOL)a3;
+ (void)_setTrackedAnimationsStartPaused:(BOOL)a3;
+ (void)_setTrackedAnimationsUserInteractionEnabled:(BOOL)a3;
+ (void)animator:(id)a3 isObserving:(id)a4;
+ (void)removeAllObservedForObservingAnimatorWithId:(id)a3;
+ (void)removeObserved:(id)a3 forObservingAnimatorWithId:(id)a4;
- (BOOL)_computeDisplacementFractionComplete:(id)a3 withKey:(id)a4 inLayer:(id)a5 fromValue:(id)a6 toValue:(id)a7 fractionComplete:(double *)a8 displacement:(double *)a9;
- (BOOL)_computeSmallestDisplacementFractionComplete:(double *)a3;
- (BOOL)_generatePointValueSpringAnimationsForKeyPath:(id)a3;
- (BOOL)_isActive;
- (BOOL)_setContinuedWithNewSpring:(BOOL)a3 forAnimationKey:(id)a4 forLayer:(id)a5;
- (BOOL)_wasContinuedWithNewSpringForAnimationKey:(id)a3 forLayer:(id)a4;
- (NSArray)animationDescriptions;
- (NSString)description;
- (UIViewPropertyAnimator)init;
- (UIViewPropertyAnimator)initWithDuration:(NSTimeInterval)duration controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 animations:(void *)animations;
- (UIViewPropertyAnimator)initWithDuration:(NSTimeInterval)duration curve:(UIViewAnimationCurve)curve animations:(void *)animations;
- (UIViewPropertyAnimator)initWithDuration:(NSTimeInterval)duration dampingRatio:(CGFloat)ratio animations:(void *)animations;
- (UIViewPropertyAnimator)initWithDuration:(NSTimeInterval)duration timingParameters:(id)parameters;
- (UIViewPropertyAnimator)initWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 initialVelocity:(CGVector)a6 animations:(id)a7;
- (double)_additiveOffsetForKey:(id)a3 inLayer:(id)a4;
- (double)_dragAdjustedDuration;
- (double)_effectiveAdditiveOffsetForKey:(id)a3 inLayer:(id)a4;
- (double)_pauseAnimation:(id)a3 fromStart:(BOOL)a4 minimizingStateModifications:(BOOL)a5;
- (double)computeCurrentTimingFunction:(double)a3;
- (double)computeInverseOfCurrentTimingFunction:(double)a3;
- (double)fractionComplete;
- (double)pacedFractionComplete;
- (id)_animationDescriptionForView:(id)a3;
- (id)_animationStateAsString;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)_explicitAnimationUpdateForProperty:(id)a3 forView:(id)a4 withValue:(id)a5;
- (id)_newAnimationUpdateForProperty:(id)a3 implicit:(BOOL)a4 additive:(BOOL)a5;
- (id)_previousAnimatorForKeyPath:(id)a3 inLayer:(id)a4 compoundKeys:(id *)a5;
- (id)_stateAsString;
- (id)animationsDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)timingFunctionForPause;
- (int64_t)state;
- (unint64_t)_optionsForNestedLegacyAnimation:(unint64_t)a3;
- (unint64_t)_resolveEffectiveAnimationOptions;
- (unint64_t)_trackedAnimationsCount;
- (void)_clearAnimationState;
- (void)_continueWithTimingParameters:(id)a3 duration:(double)a4;
- (void)_executeCompletionHandlerWithFinalPosition:(int64_t)a3;
- (void)_notePropertyAnimationUpdate:(id)a3 forView:(id)a4;
- (void)_restoreLayerValueIfReversed:(id)a3 animation:(id)a4 toValue:(id)a5;
- (void)_runAnimations;
- (void)_runCompletions:(int64_t)a3 finished:(BOOL)a4;
- (void)_scheduleCACommitFuture;
- (void)_setAdditiveOffset:(double)a3 forKey:(id)a4 inLayer:(id)a5;
- (void)_setAnimationState:(int64_t)a3;
- (void)_setKVOCompliantReversed:(BOOL)a3;
- (void)_setKVOCompliantRunning:(BOOL)a3;
- (void)_setKVOCompliantState:(int64_t)a3;
- (void)_setKVOCompliantState:(int64_t)a3 fromState:(int64_t)a4;
- (void)_setOptions:(unint64_t)a3;
- (void)_setOriginalFromValue:(id)a3 forKey:(id)a4 inLayer:(id)a5;
- (void)_setOriginalToValue:(id)a3 forKey:(id)a4 inLayer:(id)a5;
- (void)_setPausesOnCompletion:(BOOL)a3;
- (void)_setShouldBeginFromCurrentState:(BOOL)a3;
- (void)_setShouldLayoutSubviews:(BOOL)a3;
- (void)_setTimingParameters:(id)a3;
- (void)_setViewAnimationState:(id)a3;
- (void)_setupAnimationTracking:(id)a3;
- (void)_setupAssociatedViewAnimationState:(id)a3 options:(unint64_t)a4;
- (void)_setupWithDuration:(double)a3 timingParameters:(id)a4 animations:(id)a5;
- (void)_springAnimationForXComponent:(id *)a3 forYComponent:(id *)a4;
- (void)_untrackPropertyAnimationsForKeys:(id *)a3 inLayer:(id)a4;
- (void)_updateAnimationsToFractionComplete:(double)a3;
- (void)addAnimations:(id)a3 delayFactor:(double)a4 durationFactor:(double)a5;
- (void)addCompletion:(void *)completion;
- (void)clearAnimationDescriptions;
- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(CGFloat)durationFactor;
- (void)dealloc;
- (void)finalizeStoppedAnimationWithPosition:(int64_t)a3;
- (void)finishAnimationAtPosition:(int64_t)a3;
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseAnimation;
- (void)pauseAnimationTransiently;
- (void)setFlushUpdates:(BOOL)a3;
- (void)setFractionComplete:(double)a3;
- (void)setInterruptible:(BOOL)interruptible;
- (void)setPacedFractionComplete:(double)a3;
- (void)setReversed:(BOOL)a3;
- (void)setScrubsLinearly:(BOOL)scrubsLinearly;
- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled;
- (void)startAnimation;
- (void)startAnimationAfterDelay:(double)a3;
- (void)startAnimationAsPaused:(BOOL)a3;
- (void)stopAnimation:(BOOL)a3;
@end

@implementation UIViewPropertyAnimator

+ (BOOL)_trackingAnimationsCurrentlyEnabled
{
  v2 = [a1 _currentTrackedAnimationsUUID];
  v3 = v2 != 0;

  return v3;
}

+ (id)_currentTrackedAnimationsUUID
{
  v2 = [__trackingAnimatorStates lastObject];
  v3 = [v2 uuid];

  return v3;
}

+ (BOOL)_canEnableTrackingAnimationsWithAnimators
{
  if (!dyld_program_sdk_at_least() || +[UIView _isAnimationTracking])
  {
    return 0;
  }

  v3 = +[UIView _currentViewAnimationState];
  v4 = [v3 _outerPropertyAnimator:0];
  v2 = v4 == 0;

  return v2;
}

+ (id)_startTrackingAnimations
{
  if (!__trackingAnimatorStates)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = __trackingAnimatorStates;
    __trackingAnimatorStates = v2;
  }

  v4 = objc_alloc_init(UIViewPropertyAnimatorTrackingState);
  [__trackingAnimatorStates addObject:v4];
  v5 = [(UIViewPropertyAnimatorTrackingState *)v4 uuid];

  return v5;
}

+ (void)_finishTrackingAnimations
{
  [__trackingAnimatorStates removeLastObject];
  if (![__trackingAnimatorStates count])
  {
    v2 = __trackingAnimatorStates;
    __trackingAnimatorStates = 0;
  }
}

+ (id)_currentPropertyAnimator
{
  v2 = +[UIView _currentViewAnimationState];
  v3 = [v2 _outerPropertyAnimator:1];

  return v3;
}

- (void)clearAnimationDescriptions
{
  v2 = [(UIViewPropertyAnimator *)self _animationDescriptionMap];
  [v2 removeAllObjects];
}

- (unint64_t)_resolveEffectiveAnimationOptions
{
  if (self->_optionsAreExplicit)
  {
    options = self->_options;
    self->_userInteractionEnabled = (options & 2) != 0;
    v4 = self->_timingParameters;
    if (v4)
    {
      v5 = v4;
      if ([(UITimingCurveProvider *)v4 timingCurveType])
      {
        v6 = [(UITimingCurveProvider *)v5 timingCurveType];

        if (v6 != 3)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      v11 = [(UITimingCurveProvider *)self->_timingParameters cubicTimingParameters];
      [v11 _setAnimationCurve:(options >> 16) & 7];
    }

LABEL_19:
    self->_shouldLayoutSubviews = options & 1;
    self->_flushUpdates = (options & 0x10000000) != 0;
    goto LABEL_28;
  }

  if ([(UIViewPropertyAnimator *)self isUserInteractionEnabled])
  {
    v7 = 614;
  }

  else
  {
    v7 = 612;
  }

  if ([(UIViewPropertyAnimator *)self isInterruptible]&& [(UIViewPropertyAnimator *)self isUserInteractionEnabled]&& ![(UIViewPropertyAnimator *)self isManualHitTestingEnabled])
  {
    v7 |= 0x1000uLL;
  }

  v8 = self->_timingParameters;
  if (v8)
  {
    v9 = v8;
    if ([(UITimingCurveProvider *)v8 timingCurveType])
    {
      v10 = [(UITimingCurveProvider *)v9 timingCurveType];

      if (v10 != 3)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v12 = [(UITimingCurveProvider *)self->_timingParameters cubicTimingParameters];
    v7 |= [v12 animationCurve] << 16;
  }

LABEL_22:
  v13 = v7 | [(UIViewPropertyAnimator *)self shouldLayoutSubviews];
  if ([(UIViewPropertyAnimator *)self flushUpdates])
  {
    v13 |= 0x10000000uLL;
  }

  if ([(UIViewPropertyAnimator *)self _shouldBeginFromCurrentState])
  {
    options = v13;
  }

  else
  {
    options = v13 & 0xFFFFFFFFFFFFFFFBLL;
  }

  self->_options = options;
LABEL_28:
  if ([(UITimingCurveProvider *)self->_timingParameters timingCurveType]== 1)
  {
    return options | 0x60000;
  }

  else
  {
    return options;
  }
}

- (BOOL)_isActive
{
  v3 = [(UIViewPropertyAnimator *)self _animationState];
  if (v3)
  {
    LOBYTE(v3) = [(UIViewPropertyAnimator *)self _animationState]!= 3;
  }

  return v3;
}

- (void)startAnimation
{
  if ([(UIViewPropertyAnimator *)self _animationState]== 4)
  {

    [(UIViewPropertyAnimator *)self continueAnimation];
  }

  else
  {
    if ([(UIViewPropertyAnimator *)self _animationState]== 3)
    {
      v3 = self;
      v4 = 0;
    }

    else
    {
      if ([(UIViewPropertyAnimator *)self _animationState])
      {
        return;
      }

      v4 = [(UIViewPropertyAnimator *)self isInterruptible];
      v3 = self;
    }

    [(UIViewPropertyAnimator *)v3 startAnimationAsPaused:v4];
  }
}

- (void)dealloc
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
  v4 = [UIViewPropertyAnimator observedsOfAnimatorWithTrackingId:v3];

  if (v4 && [v4 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          [v10 removeObserver:self forKeyPath:@"running"];
          [v10 removeObserver:self forKeyPath:@"state"];
          [v10 removeObserver:self forKeyPath:@"reversed"];
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v7);
    }

    v11 = objc_opt_class();
    v12 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
    [v11 removeAllObservedForObservingAnimatorWithId:v12];
  }

  if (dyld_program_sdk_at_least() && [(UIViewPropertyAnimator *)self _isActive])
  {
    v13 = [(UIViewPropertyAnimator *)self _animationState];
    if (os_variant_has_internal_diagnostics())
    {
      if (v13 != 2 && v13 != 4)
      {
        v27 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v34 = v13;
          _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "Animation state expected to be in paused or stopped state when deallocating while Active. Actual state %i", buf, 8u);
        }
      }
    }

    else if (v13 != 2 && v13 != 4)
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &dealloc___s_category_0) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v34 = v13;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Animation state expected to be in paused or stopped state when deallocating while Active. Actual state %i", buf, 8u);
      }
    }

    v15 = [(UIViewPropertyAnimator *)self _isStarting];
    hasFinalized = self->_hasFinalized;
    if (v13 != 2 || !self->_hasFinalized)
    {
      v18 = v15;
      if (v13 != 4 || !v15)
      {
        v19 = [(UIViewPropertyAnimator *)self _isPausedOnCompletion];
        v20 = MEMORY[0x1E695DF30];
        v21 = *MEMORY[0x1E695D930];
        v22 = [(UIViewPropertyAnimator *)self _animationStateAsString];
        v23 = v22;
        v24 = @"NO";
        if (v18)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        if (hasFinalized)
        {
          v24 = @"YES";
        }

        if (v19)
        {
          v26 = @"It is an error to release a property animator that has paused on completion. Property animators must either finish animating or be explicitly stopped and finished before they can be released. (animationState = %@, isStarting = %@, hasFinalized = %@, name = %@)";
        }

        else
        {
          v26 = @"It is an error to release a paused or stopped property animator. Property animators must either finish animating or be explicitly stopped and finished before they can be released. (animationState = %@, isStarting = %@, hasFinalized = %@, name = %@)";
        }

        [v20 raise:v21 format:{v26, v22, v25, v24, self->_name}];
      }
    }
  }

  v28.receiver = self;
  v28.super_class = UIViewPropertyAnimator;
  [(UIViewPropertyAnimator *)&v28 dealloc];
}

- (void)_runAnimations
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(UIViewPropertyAnimator *)self _animations];
  [(UIViewPropertyAnimator *)self _setAnimations:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
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

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_clearAnimationState
{
  v10 = self;
  v2 = [(UIViewPropertyAnimator *)v10 _trackingIdentifier];
  v3 = v10;
  trackingState = v10->_trackingState;
  if (trackingState)
  {
    v5 = objc_opt_class();
    v6 = [(UIViewPropertyAnimatorTrackingState *)v10->_trackingState uuid];
    [v5 _removeTrackingAnimator:v10 forUUID:v6 andDescription:v10->_trackingDescription];

    v3 = v10;
    trackingState = v10->_trackingState;
  }

  v3->_trackingState = 0;

  [UIView _disableAnimationTracking:v2];
  WeakRetained = objc_loadWeakRetained(&v10->_outerAnimator);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained removeObserver:v10 forKeyPath:@"running"];
    [v8 removeObserver:v10 forKeyPath:@"state"];
    [v8 removeObserver:v10 forKeyPath:@"reversed"];
    [UIViewPropertyAnimator removeObserved:v8 forObservingAnimatorWithId:v2];
    objc_storeWeak(&v10->_outerAnimator, 0);
  }

  objc_storeWeak(&v10->_viewAnimationState->_propertyAnimator, 0);
  [(UIViewPropertyAnimator *)v10 _setCompletions:0];
  [(UIViewPropertyAnimator *)v10 _setFinishingPosition:0];
  viewAnimationState = v10->_viewAnimationState;
  v10->_viewAnimationState = 0;

  [(_UICompoundObjectMap *)v10->_originalToValueMap removeAllMappings];
  [(_UICompoundObjectMap *)v10->_originalFromValueMap removeAllMappings];
  [(_UICompoundObjectMap *)v10->_additiveOffsetsForAnimationKeysMap removeAllMappings];
  [(_UICompoundObjectMap *)v10->_continuedWithSpringForAnimationKeyMap removeAllMappings];
  v10->_drag = 1.0;
  v10->_fractionComplete = 0.0;
  v10->_hasFinalized = 0;
  [(UIViewPropertyAnimator *)v10 _setKVOCompliantRunning:0];
  [(UIViewPropertyAnimator *)v10 _setKVOCompliantReversed:0];
  [(UIViewPropertyAnimator *)v10 _setKVOCompliantState:0];
  [objc_opt_class() _removeReferenceToPropertyAnimatorWithTrackingIdentifier:v2];
}

- (int64_t)state
{
  v3 = [(UIViewPropertyAnimator *)self _animationState];
  if (v3 < 5 && ((0x1Bu >> v3) & 1) != 0)
  {
    return qword_18A677A90[v3];
  }

  return [(UIViewPropertyAnimator *)self _animationState];
}

- (UIViewPropertyAnimator)init
{
  v3 = objc_opt_new();
  v4 = [(UIViewPropertyAnimator *)self initWithDuration:v3 timingParameters:0.0];

  return v4;
}

+ (BOOL)_trackedAnimationsStartPaused
{
  v2 = [a1 _currentTrackedAnimationsState];
  v3 = [v2 startPaused];

  return v3;
}

- (void)_setupWithDuration:(double)a3 timingParameters:(id)a4 animations:(id)a5
{
  v13 = a5;
  self->_pausedOnCompletion = 0;
  self->_pausesOnCompletion = 0;
  self->_scrubsLinearly = 1;
  v8 = a4;
  [(UIViewPropertyAnimator *)self _setAnimationState:0];
  [(UIViewPropertyAnimator *)self _setFinishingPosition:0];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  [(UIViewPropertyAnimator *)self setAnimationDescriptionMap:v9];

  self->_hasFinalized = 0;
  *&self->_userInteractionEnabled = 1;
  v10 = 0.2;
  if (a3 != 0.0)
  {
    v10 = a3;
  }

  self->_baseDuration = v10;
  self->_internalDuration = v10;
  self->_options = 0;
  self->_optionsAreExplicit = 0;
  self->_drag = UIAnimationDragCoefficient();
  *&self->_running = 0;
  self->_addedPacingAnimation = 0;
  pacingAnimationKey = self->_pacingAnimationKey;
  self->_pacingAnimationKey = 0;

  self->_fractionComplete = 0.0;
  [(UIViewPropertyAnimator *)self _setTimingParameters:v8];

  v12 = v13;
  self->_interruptible = 1;
  *&self->_shouldLayoutSubviews = 1;
  *&self->_shouldBeginFromCurrentState = 257;
  if (v13)
  {
    [(UIViewPropertyAnimator *)self addAnimations:v13];
    v12 = v13;
  }
}

- (void)_setOptions:(unint64_t)a3
{
  if (self->_options != a3)
  {
    self->_options = a3;
    self->_optionsAreExplicit = 1;
  }
}

- (void)_setPausesOnCompletion:(BOOL)a3
{
  if (!self->_interruptible)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"It is not allowed to set the pausesOnCompletion property on a non-interruptible animator (%@)", self}];
  }

  self->_pausesOnCompletion = a3;
}

- (void)setInterruptible:(BOOL)interruptible
{
  if ([(UIViewPropertyAnimator *)self _isActive])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"It is not allowed to set the interruptible property of an active animator (%@)", self}];
  }

  self->_interruptible = interruptible;
}

- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled
{
  if ([(UIViewPropertyAnimator *)self _isActive])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"It is not allowed to set the userInteractionEnabled property of an active animator (%@)", self}];
  }

  self->_userInteractionEnabled = userInteractionEnabled;
}

- (void)_setShouldLayoutSubviews:(BOOL)a3
{
  if ([(UIViewPropertyAnimator *)self _isActive])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"shouldLayoutSubviews may not be set on an active animator (%@)", self}];
  }

  self->_shouldLayoutSubviews = a3;
}

- (void)_setShouldBeginFromCurrentState:(BOOL)a3
{
  if ([(UIViewPropertyAnimator *)self _isActive])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"_shouldBeginFromCurrentState may not be set on an active animator (%@)", self}];
  }

  self->_shouldBeginFromCurrentState = a3;
}

- (void)setFlushUpdates:(BOOL)a3
{
  if ([(UIViewPropertyAnimator *)self _isActive])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"flushUpdates may not be set on an active animator (%@)", self}];
  }

  self->_flushUpdates = a3;
}

- (UIViewPropertyAnimator)initWithDuration:(NSTimeInterval)duration timingParameters:(id)parameters
{
  v6 = parameters;
  v10.receiver = self;
  v10.super_class = UIViewPropertyAnimator;
  v7 = [(UIViewPropertyAnimator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(UIViewPropertyAnimator *)v7 _setupWithDuration:v6 timingParameters:0 animations:duration];
  }

  return v8;
}

- (UIViewPropertyAnimator)initWithDuration:(NSTimeInterval)duration curve:(UIViewAnimationCurve)curve animations:(void *)animations
{
  v8 = animations;
  v9 = [[UICubicTimingParameters alloc] initWithAnimationCurve:curve];
  v10 = [(UIViewPropertyAnimator *)self initWithDuration:v9 timingParameters:duration];
  v11 = v10;
  if (v8)
  {
    [(UIViewPropertyAnimator *)v10 addAnimations:v8];
  }

  return v11;
}

- (UIViewPropertyAnimator)initWithDuration:(NSTimeInterval)duration controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 animations:(void *)animations
{
  y = point2.y;
  x = point2.x;
  v8 = point1.y;
  v9 = point1.x;
  v12 = animations;
  v13 = [[UICubicTimingParameters alloc] initWithControlPoint1:v9 controlPoint2:v8, x, y];
  v14 = [(UIViewPropertyAnimator *)self initWithDuration:v13 timingParameters:duration];
  v15 = v14;
  if (v12)
  {
    [(UIViewPropertyAnimator *)v14 addAnimations:v12];
  }

  return v15;
}

- (UIViewPropertyAnimator)initWithDuration:(NSTimeInterval)duration dampingRatio:(CGFloat)ratio animations:(void *)animations
{
  v8 = animations;
  v9 = [[UISpringTimingParameters alloc] initWithDampingRatio:ratio];
  v10 = [(UIViewPropertyAnimator *)self initWithDuration:v9 timingParameters:duration];
  v11 = v10;
  if (v8)
  {
    [(UIViewPropertyAnimator *)v10 addAnimations:v8];
  }

  return v11;
}

- (UIViewPropertyAnimator)initWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 initialVelocity:(CGVector)a6 animations:(id)a7
{
  dy = a6.dy;
  dx = a6.dx;
  v13 = a7;
  v14 = [[UISpringTimingParameters alloc] initWithMass:a3 stiffness:a4 damping:a5 initialVelocity:dx, dy];
  v15 = [(UIViewPropertyAnimator *)self initWithDuration:v14 timingParameters:0.0];
  v16 = v15;
  if (v13)
  {
    [(UIViewPropertyAnimator *)v15 addAnimations:v13];
  }

  return v16;
}

- (unint64_t)_optionsForNestedLegacyAnimation:(unint64_t)a3
{
  options = self->_options;
  v6 = [(UIViewPropertyAnimator *)self isUserInteractionEnabled];
  if ([(UIViewPropertyAnimator *)self isInterruptible]&& [(UIViewPropertyAnimator *)self isUserInteractionEnabled]&& ![(UIViewPropertyAnimator *)self isManualHitTestingEnabled])
  {
    a3 |= 0x1000uLL;
  }

  if (v6)
  {
    v7 = options & 4 | 2;
  }

  else
  {
    v7 = options & 4;
  }

  v8 = a3 | [(UIViewPropertyAnimator *)self shouldLayoutSubviews];
  v9 = [(UIViewPropertyAnimator *)self flushUpdates];
  v10 = v8 | 0x10000000;
  if (!v9)
  {
    v10 = v8;
  }

  return v10 | v7;
}

- (void)_setTimingParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 copyWithZone:0];
  timingParameters = self->_timingParameters;
  self->_timingParameters = v5;

  v11 = v4;
  if (v11)
  {
    if ([v11 timingCurveType] == 2)
    {
    }

    else
    {
      v7 = [v11 timingCurveType];

      if (v7 != 3)
      {
        goto LABEL_7;
      }
    }

    v8 = [v11 springTimingParameters];
    v9 = [v8 implicitDuration];

    if (v9)
    {
      v10 = [v11 springTimingParameters];
      [v10 settlingDuration];
      [(UIViewPropertyAnimator *)self setUnitDuration:?];

      self->_internalDuration = self->_baseDuration;
    }
  }

LABEL_7:
}

+ (UIViewPropertyAnimator)runningPropertyAnimatorWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options animations:(void *)animations completion:(void *)completion
{
  v12 = completion;
  v13 = animations;
  v14 = [[a1 alloc] initWithDuration:(options >> 16) & 7 curve:v13 animations:duration];

  [v14 setInterruptible:{+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled") ^ 1}];
  [v14 setManualHitTestingEnabled:1];
  v14[51] = 1;
  [v14 _setOptions:options & 0x1F0F0267];
  if (v12)
  {
    [v14 addCompletion:v12];
  }

  [v14 startAnimationAfterDelay:delay];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(UIViewPropertyAnimator *)self duration];
  v6 = v5;
  v7 = [(UIViewPropertyAnimator *)self timingParameters];
  [v4 _setupWithDuration:v7 timingParameters:0 animations:v6];

  [v4 setUserInteractionEnabled:{-[UIViewPropertyAnimator isUserInteractionEnabled](self, "isUserInteractionEnabled")}];
  [v4 setInterruptible:{-[UIViewPropertyAnimator isInterruptible](self, "isInterruptible")}];
  [v4 _setShouldLayoutSubviews:{-[UIViewPropertyAnimator shouldLayoutSubviews](self, "shouldLayoutSubviews")}];
  [v4 setFlushUpdates:{-[UIViewPropertyAnimator flushUpdates](self, "flushUpdates")}];
  return v4;
}

+ (void)_setTrackedAnimationsStartPaused:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 _currentTrackedAnimationsState];
  [v4 setStartPaused:v3];
}

+ (BOOL)_trackedAnimationsScrubLinearly
{
  v2 = [a1 _currentTrackedAnimationsState];
  v3 = [v2 scrubsLinearly];

  return v3;
}

+ (void)_setTrackedAnimationsScrubLinearly:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 _currentTrackedAnimationsState];
  [v4 setScrubsLinearly:v3];
}

+ (BOOL)_trackedAnimationsUserInteractionEnabled
{
  v2 = [a1 _currentTrackedAnimationsState];
  v3 = [v2 userInteractionEnabled];

  return v3;
}

+ (void)_setTrackedAnimationsUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 _currentTrackedAnimationsState];
  [v4 setUserInteractionEnabled:v3];
}

+ (BOOL)_trackedAnimationsOptimizationsEnabled
{
  v2 = [a1 _currentTrackedAnimationsState];
  v3 = [v2 optimizationsEnabled];

  return v3;
}

+ (void)_setTrackedAnimationsOptimizationsEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 _currentTrackedAnimationsState];
  [v4 setOptimizationsEnabled:v3];
}

+ (id)_animatorForTrackedAnimationsUUID:(id)a3
{
  v3 = [a1 _animatorsForTrackedAnimationsUUID:a3];
  v4 = [[_UIViewPropertyAnimatorTrackingGroup alloc] initWithAnimators:v3];

  return v4;
}

+ (id)_performWhileTrackingAnimations:(id)a3
{
  v4 = a3;
  v5 = [a1 _startTrackingAnimations];
  if (v4)
  {
    v4[2](v4);
  }

  [a1 _finishTrackingAnimations];
  v6 = [a1 _animatorForTrackedAnimationsUUID:v5];

  return v6;
}

+ (id)_animatorsForTrackedAnimationsUUID:(id)a3
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [_MergedGlobals_984 objectForKey:v4];

  v7 = [v6 array];
  v8 = [v5 initWithArray:v7];

  return v8;
}

+ (BOOL)_containsAnimatorForTrackedAnimationsUUID:(id)a3
{
  v3 = [_MergedGlobals_984 objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

+ (double)_delayForAnimation:(id)a3 forLayer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 beginTimeMode];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69795C0]];

  [v5 beginTime];
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v10 = 0.0;
    if (v9 > 0.0)
    {
      [v6 convertTime:0 fromLayer:CACurrentMediaTime()];
      v12 = v11;
      [v5 beginTime];
      v10 = (v13 - v12) / UIAnimationDragCoefficient();
    }
  }

  return v10;
}

+ (id)_animatorWithTimingAttributesMatchingAnimation:(id)a3 forLayer:(id)a4 wasReused:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _currentTrackedAnimationsState];
  v11 = +[UIView _currentViewAnimationState];
  v12 = v11[5];
  [a1 _delayForAnimation:v8 forLayer:v9];
  v14 = v13;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v8;
    v16 = [UISpringTimingParameters alloc];
    [v15 mass];
    v18 = v17;
    [v15 stiffness];
    v20 = v19;
    [v15 damping];
    v22 = v21;
    [v15 initialVelocity];
    v24 = v23;

    v25 = [(UISpringTimingParameters *)v16 initWithMass:v18 stiffness:v20 damping:v22 initialVelocity:v24, 0.0];
    v26 = [(UISpringTimingParameters *)v25 springTimingParameters];
    [(__CFString *)v26 setImplicitDuration:0];
  }

  else
  {
    v27 = [UICubicTimingParameters alloc];
    v26 = [v8 timingFunction];
    v25 = [(UICubicTimingParameters *)v27 initWithCustomCurve:v26];
  }

  if ([v10 optimizationsEnabled])
  {
    v28 = v11;
    v29 = v10;
    v30 = v25;
    v31 = v30;
    if (!v30)
    {
      v26 = @"timing unknown;";
      goto LABEL_21;
    }

    v32 = [(UISpringTimingParameters *)v30 timingCurveType];
    if (v32 < 2)
    {
      v33 = [(UISpringTimingParameters *)v31 cubicTimingParameters];
      v50 = _cubicTimingProviderDescription(v33);
    }

    else
    {
      if (v32 != 2)
      {
        if (v32 != 3)
        {
          goto LABEL_21;
        }

        v72 = a5;
        v70 = objc_alloc(MEMORY[0x1E696AEC0]);
        v33 = [(UISpringTimingParameters *)v31 cubicTimingParameters];
        v71 = _cubicTimingProviderDescription(v33);
        v34 = [(UISpringTimingParameters *)v31 springTimingParameters];
        v69 = v34;
        if (v34)
        {
          v35 = v34;
          v67 = objc_alloc(MEMORY[0x1E696AEC0]);
          [v35 dampingRatio];
          v37 = v36;
          v38 = [v35 implicitDuration];
          [v35 mass];
          v40 = v39;
          [v35 stiffness];
          v42 = v41;
          [v35 damping];
          v44 = v43;
          [v35 initialVelocity];
          v46 = v45;
          [v35 initialVelocity];
          v48 = [v67 initWithFormat:@"spring %f, %i, %f, %f, %f, %f, %f;", v37, v38, v40, v42, v44, v46, v47];
        }

        else
        {
          v48 = @"spring unknown;";
        }

        v68 = v48;
        v26 = [v70 initWithFormat:@"composed %@ %@", v71, v48];

        a5 = v72;
        goto LABEL_20;
      }

      v33 = [(UISpringTimingParameters *)v31 springTimingParameters];
      if (!v33)
      {
        v26 = @"spring unknown;";
        goto LABEL_20;
      }

      v73 = objc_alloc(MEMORY[0x1E696AEC0]);
      [v33 dampingRatio];
      v52 = v51;
      v53 = a5;
      v54 = [v33 implicitDuration];
      [v33 mass];
      v56 = v55;
      [v33 stiffness];
      v58 = v57;
      [v33 damping];
      v60 = v59;
      [v33 initialVelocity];
      v62 = v61;
      [v33 initialVelocity];
      v66 = v54;
      a5 = v53;
      v50 = [v73 initWithFormat:@"spring %f, %i, %f, %f, %f, %f, %f;", v52, v66, v56, v58, v60, v62, v63];
    }

    v26 = v50;
LABEL_20:

LABEL_21:
    v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p; %p; %f; %f; %@", v28, v29, *&v12, *&v14, v26];

    v64 = [qword_1ED49C758 objectForKey:v49];
    *a5 = v64 != 0;
    if (v64)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v49 = 0;
  *a5 = 0;
LABEL_22:
  v64 = [[UIViewPropertyAnimator alloc] initWithDuration:v25 timingParameters:v12];
  objc_storeStrong(&v64->_trackingDescription, v49);
  objc_storeStrong(&v64->_trackingState, v10);
  v64->_delay = v14;
  -[UIViewPropertyAnimator setScrubsLinearly:](v64, "setScrubsLinearly:", [v10 scrubsLinearly]);
  -[UIViewPropertyAnimator setUserInteractionEnabled:](v64, "setUserInteractionEnabled:", [v10 userInteractionEnabled]);
LABEL_23:

  return v64;
}

+ (id)_animationBlockForTrackingAnimation:(id)a3 animator:(id)a4 trackingSetup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _currentTrackedAnimationsState];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__UIViewPropertyAnimator__animationBlockForTrackingAnimation_animator_trackingSetup___block_invoke;
  v18[3] = &unk_1E70F5F08;
  v19 = v11;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v11;
  v16 = _Block_copy(v18);

  return v16;
}

void __85__UIViewPropertyAnimator__animationBlockForTrackingAnimation_animator_trackingSetup___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) startPaused])
  {
    [*(a1 + 40) setSpeed:0.0];
  }

  v2 = [*(a1 + 48) _viewAnimationState];
  [v2 _transferAnimationToTrackingAnimator:*(a1 + 40)];
  (*(*(a1 + 56) + 16))();
}

+ (id)_trackAnimationWithAnimator:(id)a3 forLayer:(id)a4 forAnimationKey:(id)a5 trackingSetup:(id)a6
{
  v18 = 0;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [a1 _currentTrackedAnimationsState];
  v13 = [a1 _animatorWithTimingAttributesMatchingAnimation:v11 forLayer:v10 wasReused:&v18];

  v14 = [a1 _animationBlockForTrackingAnimation:v11 animator:v13 trackingSetup:v9];

  if (v18)
  {
    v15 = [v13 _viewAnimationState];
    v16 = [v13 _trackingIdentifier];
    [UIView _performWithState:v15 trackingIdentifier:v16 duration:v14 delay:-1.0 animations:-1.0];
  }

  else
  {
    [v13 addAnimations:v14];
    [v13 startAnimation];
    if ([v12 startPaused])
    {
      [v13 pauseAnimation];
    }

    v15 = [v12 uuid];
    [a1 _saveTrackingAnimator:v13 forUUID:v15 andDescription:v13[2]];
  }

  return v13;
}

+ (id)_trackNonAdditiveAnimationWithAnimator:(id)a3 forLayer:(id)a4 forKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__UIViewPropertyAnimator__trackNonAdditiveAnimationWithAnimator_forLayer_forKey___block_invoke;
  v16[3] = &unk_1E70F5F30;
  v17 = v8;
  v18 = v10;
  v19 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  v14 = [a1 _trackAnimationWithAnimator:v13 forLayer:v11 forAnimationKey:v12 trackingSetup:v16];

  return v14;
}

+ (id)_trackAdditiveAnimationWithAnimator:(id)a3 nonAdditiveAnimation:(id)a4 withAnimationKey:(id)a5 forKeyPath:(id)a6 forLayer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __120__UIViewPropertyAnimator__trackAdditiveAnimationWithAnimator_nonAdditiveAnimation_withAnimationKey_forKeyPath_forLayer___block_invoke;
  v24[3] = &unk_1E70F5F58;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = [a1 _trackAnimationWithAnimator:v21 forLayer:v17 forAnimationKey:v19 trackingSetup:v24];

  return v22;
}

+ (void)_saveTrackingAnimator:(id)a3 forUUID:(id)a4 andDescription:(id)a5
{
  v16 = a3;
  v7 = a4;
  v8 = a5;
  v9 = _MergedGlobals_984;
  if (!_MergedGlobals_984)
  {
    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v11 = _MergedGlobals_984;
    _MergedGlobals_984 = v10;

    v9 = _MergedGlobals_984;
  }

  v12 = [v9 objectForKey:v7];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [_MergedGlobals_984 setObject:v12 forKey:v7];
  }

  [v12 addObject:v16];
  if (v8)
  {
    v13 = qword_1ED49C758;
    if (!qword_1ED49C758)
    {
      v14 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v15 = qword_1ED49C758;
      qword_1ED49C758 = v14;

      v13 = qword_1ED49C758;
    }

    [v13 setObject:v16 forKey:v8];
  }
}

+ (void)_removeTrackingAnimator:(id)a3 forUUID:(id)a4 andDescription:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = _MergedGlobals_984;
  v9 = a3;
  v10 = [v8 objectForKey:v13];
  [v10 removeObject:v9];

  if (!v10)
  {
    [_MergedGlobals_984 removeObjectForKey:v13];
    if (![_MergedGlobals_984 count])
    {
      v11 = _MergedGlobals_984;
      _MergedGlobals_984 = 0;
    }
  }

  if (v7)
  {
    [qword_1ED49C758 removeObjectForKey:v7];
    if (![qword_1ED49C758 count])
    {
      v12 = qword_1ED49C758;
      qword_1ED49C758 = 0;
    }
  }
}

- (void)setReversed:(BOOL)a3
{
  if (self->_reversed != a3)
  {
    v10 = v3;
    v11 = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__UIViewPropertyAnimator_setReversed___block_invoke;
    v8[3] = &unk_1E70F35E0;
    v8[4] = self;
    v9 = a3;
    v6 = _Block_copy(v8);
    v7 = [(UIViewPropertyAnimator *)self _animationState];
    if ((v7 - 3) >= 2)
    {
      if (v7 != 1)
      {
LABEL_7:

        return;
      }

      [(UIViewPropertyAnimator *)self willChangeValueForKey:@"reversed"];
      [(UIViewPropertyAnimator *)self pauseAnimationTransiently];
      v6[2](v6);
      [(UIViewPropertyAnimator *)self _continueWithTimingParameters:0 duration:0.0];
    }

    else
    {
      [(UIViewPropertyAnimator *)self willChangeValueForKey:@"reversed"];
      v6[2](v6);
    }

    [(UIViewPropertyAnimator *)self didChangeValueForKey:@"reversed"];
    goto LABEL_7;
  }
}

uint64_t __38__UIViewPropertyAnimator_setReversed___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 49) = *(a1 + 40);
  [*(a1 + 32) _setFinishingPosition:?];
  [*(a1 + 32) fractionComplete];
  v3 = 1.0 - v2;
  v4 = *(a1 + 32);

  return [v4 setFractionComplete:v3];
}

- (double)_dragAdjustedDuration
{
  drag = self->_drag;
  [(UIViewPropertyAnimator *)self internalDuration];
  if (drag > 1.0)
  {
    return drag * result;
  }

  return result;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if ([@"running" isEqualToString:v4] & 1) != 0 || (objc_msgSend(@"reversed", "isEqualToString:", v4) & 1) != 0 || (objc_msgSend(@"fractionComplete", "isEqualToString:", v4) & 1) != 0 || (objc_msgSend(@"state", "isEqualToString:", v4) & 1) != 0 || (objc_msgSend(@"animationState", "isEqualToString:", v4))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___UIViewPropertyAnimator;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v5;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  timingParameters = self->_timingParameters;
  v6 = a4;
  v7 = [(UITimingCurveProvider *)timingParameters springTimingParameters];
  [v7 initialVelocity];
  v9 = v8;
  if (![(UIViewPropertyAnimator *)self isInterruptible]&& [(UITimingCurveProvider *)self->_timingParameters timingCurveType]== 3 && ([(UITimingCurveProvider *)self->_timingParameters cubicTimingParameters], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = mediaTimingFunctionForTimingProvider(self->_timingParameters);
  }

  else
  {
    v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  }

  v12 = v11;
  v30 = 0.0;
  v13 = [MEMORY[0x1E69794A8] animationWithKeyPath:{v6, 0}];

  [(UIViewPropertyAnimator *)self internalDuration];
  v15 = v14;
  v16 = +[UIView _currentViewAnimationState];
  v17 = v16;
  if (*(v16 + 48) > 0.0)
  {
    v15 = *(v16 + 40);
  }

  if ([v7 implicitDuration])
  {
    if (v17[6] > 0.0)
    {
      [v7 dampingRatio];
      v19 = v18;
      [v7 mass];
      [UIViewSpringAnimationState computeDerivedSpringParameters:&v30 zeta:&v29 mass:v15 velocity:v19 epsilon:v20 stiffness:v9 damping:0.001];
    }

    [v7 mass];
    v22 = v21;
    [v7 stiffness];
    v30 = v23;
    [v7 damping];
  }

  else
  {
    [v7 dampingRatio];
    v22 = 1.0;
    [UIViewSpringAnimationState computeDerivedSpringParameters:&v30 zeta:&v29 mass:v15 velocity:v25 epsilon:1.0 stiffness:v9 damping:0.001];
    v24 = v29;
  }

  v29 = fmax(fabs(v24), 0.0);
  v30 = fmax(fabs(v30), 0.01);
  [v13 setTimingFunction:{v12, *&v29}];
  [v13 setMass:v22];
  [v13 setStiffness:v30];
  [v13 setDamping:v29];
  [v13 setVelocity:v9];
  [v13 speed];
  v27 = v26 / self->_drag;
  *&v27 = v27;
  [v13 setSpeed:v27];

  return v13;
}

- (BOOL)_generatePointValueSpringAnimationsForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(UITimingCurveProvider *)self->_timingParameters springTimingParameters];
  if (v5 && [v4 isEqualToString:@"position"])
  {
    [v5 initialVelocity];
    v8 = v7 != v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_springAnimationForXComponent:(id *)a3 forYComponent:(id *)a4
{
  v7 = [(UITimingCurveProvider *)self->_timingParameters springTimingParameters];
  v8 = *a3;
  [v7 initialVelocity];
  v10 = v9;
  if (([v7 implicitDuration] & 1) == 0)
  {
    v18 = 0.0;
    v19 = 0.0;
    [(UIViewPropertyAnimator *)self internalDuration];
    v12 = v11;
    [v7 dampingRatio];
    [UIViewSpringAnimationState computeDerivedSpringParameters:&v18 zeta:&v19 mass:v12 velocity:v13 epsilon:1.0 stiffness:v10 damping:0.001];
    [v8 stiffness];
    if (v14 < v18)
    {
      v14 = v18;
    }

    [v8 damping];
    if (v15 < v19)
    {
      v15 = v19;
    }

    v19 = v15;
    [v8 setStiffness:v18];
    [v8 setDamping:v19];
  }

  v16 = [v8 copy];
  [v16 setVelocity:v10];
  v17 = v16;
  *a4 = v16;
}

- (id)animationsDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__UIViewPropertyAnimator_animationsDescription__block_invoke;
  v7[3] = &unk_1E70F5F80;
  v5 = v3;
  v8 = v5;
  [UIView mapTrackedAnimations:v4 withBlock:v7];

  return v5;
}

uint64_t __47__UIViewPropertyAnimator_animationsDescription__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 debugDescription];
  [v3 appendFormat:@"<%@>\n", v4];

  return 0;
}

- (void)_setupAssociatedViewAnimationState:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UIViewPropertyAnimator *)self _viewAnimationState];
  if ([(UITimingCurveProvider *)self->_timingParameters timingCurveType]== 1)
  {
    v8 = mediaTimingFunctionForTimingProvider(self->_timingParameters);
    [v7 _setCustomCurve:v8];
  }

  objc_initWeak(&location, self);
  v9 = self->_timingParameters;
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  if ([(UITimingCurveProvider *)v9 timingCurveType]!= 2)
  {
    v11 = [(UITimingCurveProvider *)v10 timingCurveType];

    if (v11 == 3)
    {
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

LABEL_7:
  v12 = self;
LABEL_9:
  v13 = v12;
  [(UIViewPropertyAnimator *)self internalDuration];
  v15 = v14;
  delay = self->_delay;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__UIViewPropertyAnimator__setupAssociatedViewAnimationState_options___block_invoke;
  v17[3] = &unk_1E70F3668;
  objc_copyWeak(&v18, &location);
  [v7 setupWithDuration:0 delay:a4 view:v13 options:v6 factory:0 parentState:v17 start:v15 completion:delay];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __69__UIViewPropertyAnimator__setupAssociatedViewAnimationState_options___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _animationState] == 1 || objc_msgSend(WeakRetained, "_animationState") == 4)
  {
    if ([WeakRetained pausesOnCompletion])
    {
      [WeakRetained _setPausedOnCompletion:1];
      [WeakRetained pauseAnimation];
    }

    else
    {
      [WeakRetained _runCompletions:objc_msgSend(WeakRetained finished:{"_finishingPosition"), a2}];
    }
  }
}

+ (void)_saveReferenceToActivePropertyAnimator:(id)a3
{
  v3 = a3;
  v4 = __ActivePropertyAnimators;
  v7 = v3;
  if (!__ActivePropertyAnimators)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = __ActivePropertyAnimators;
    __ActivePropertyAnimators = v5;

    v3 = v7;
    v4 = __ActivePropertyAnimators;
  }

  [v4 addObject:v3];
}

+ (void)_removeReferenceToActivePropertyAnimator:(id)a3
{
  [__ActivePropertyAnimators removeObject:a3];
  if (![__ActivePropertyAnimators count])
  {
    v3 = __ActivePropertyAnimators;
    __ActivePropertyAnimators = 0;
  }
}

+ (void)_saveReferenceToPropertyAnimator:(id)a3
{
  v3 = a3;
  v4 = __ExtantPropertyAnimators;
  v8 = v3;
  if (!__ExtantPropertyAnimators)
  {
    v5 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v6 = __ExtantPropertyAnimators;
    __ExtantPropertyAnimators = v5;

    v3 = v8;
    v4 = __ExtantPropertyAnimators;
  }

  v7 = [v3 _trackingIdentifier];
  [v4 setObject:v8 forKey:v7];
}

+ (void)_removeReferenceToPropertyAnimatorWithTrackingIdentifier:(id)a3
{
  [__ExtantPropertyAnimators removeObjectForKey:a3];
  if (![__ExtantPropertyAnimators count])
  {
    v3 = __ExtantPropertyAnimators;
    __ExtantPropertyAnimators = 0;
  }
}

+ (id)_getPropertyAnimationForState:(id)a3
{
  WeakRetained = objc_loadWeakRetained(a3 + 35);

  return WeakRetained;
}

+ (void)animator:(id)a3 isObserving:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = __ObservedByMapping;
  if (!__ObservedByMapping)
  {
    v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v8 = __ObservedByMapping;
    __ObservedByMapping = v7;

    v6 = __ObservedByMapping;
  }

  v9 = [v13 _trackingIdentifier];
  v10 = [v6 objectForKey:v9];

  if (!v10)
  {
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = __ObservedByMapping;
    v12 = [v13 _trackingIdentifier];
    [v11 setObject:v10 forKey:v12];
  }

  [v10 addObject:v5];
}

+ (void)removeObserved:(id)a3 forObservingAnimatorWithId:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [__ObservedByMapping objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    [v6 removeObject:v9];
    if (![v7 count])
    {
      [__ObservedByMapping removeObjectForKey:v5];
      if (![__ObservedByMapping count])
      {
        v8 = __ObservedByMapping;
        __ObservedByMapping = 0;
      }
    }
  }
}

+ (void)removeAllObservedForObservingAnimatorWithId:(id)a3
{
  v6 = a3;
  v3 = [__ObservedByMapping objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 removeAllObjects];
    [__ObservedByMapping removeObjectForKey:v6];
    if (![__ObservedByMapping count])
    {
      v5 = __ObservedByMapping;
      __ObservedByMapping = 0;
    }
  }
}

- (void)_setViewAnimationState:(id)a3
{
  objc_storeStrong(&self->_viewAnimationState, a3);
  v5 = a3;
  objc_storeWeak(v5 + 35, self);
}

- (void)_setKVOCompliantRunning:(BOOL)a3
{
  if (self->_running != a3)
  {
    [(UIViewPropertyAnimator *)self willChangeValueForKey:@"running"];
    self->_running = a3;

    [(UIViewPropertyAnimator *)self didChangeValueForKey:@"running"];
  }
}

- (void)_setKVOCompliantReversed:(BOOL)a3
{
  if (self->_reversed != a3)
  {
    [(UIViewPropertyAnimator *)self willChangeValueForKey:@"reversed"];
    self->_reversed = a3;

    [(UIViewPropertyAnimator *)self didChangeValueForKey:@"reversed"];
  }
}

- (void)_setKVOCompliantState:(int64_t)a3 fromState:(int64_t)a4
{
  if ([(UIViewPropertyAnimator *)self _animationState]!= a3)
  {
    if ([(UIViewPropertyAnimator *)self _animationState]!= a4)
    {
      [(UIViewPropertyAnimator *)self _setAnimationState:a4];
    }

    [(UIViewPropertyAnimator *)self willChangeValueForKey:@"state"];
    [(UIViewPropertyAnimator *)self _setAnimationState:a3];

    [(UIViewPropertyAnimator *)self didChangeValueForKey:@"state"];
  }
}

- (void)_setKVOCompliantState:(int64_t)a3
{
  v5 = [(UIViewPropertyAnimator *)self _animationState];

  [(UIViewPropertyAnimator *)self _setKVOCompliantState:a3 fromState:v5];
}

- (void)_setAnimationState:(int64_t)a3
{
  self->_animationState = a3;
  v5 = objc_opt_class();
  if (a3 == 1)
  {

    [v5 _saveReferenceToActivePropertyAnimator:self];
  }

  else
  {

    [v5 _removeReferenceToActivePropertyAnimator:self];
  }
}

- (id)_stateAsString
{
  v2 = [(UIViewPropertyAnimator *)self state];
  if (v2 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70F6278[v2];
  }
}

- (id)_animationStateAsString
{
  v2 = [(UIViewPropertyAnimator *)self _animationState];
  if (v2 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70F6290[v2];
  }
}

- (void)_executeCompletionHandlerWithFinalPosition:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(UIViewPropertyAnimator *)self _completions];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = _Block_copy(*(*(&v11 + 1) + 8 * v9));

        (*(v7 + 2))(v7, a3);
        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_runCompletions:(int64_t)a3 finished:(BOOL)a4
{
  [(UIViewPropertyAnimator *)self finalizeStoppedAnimationWithPosition:a3, a4];
  v6 = [(UIViewPropertyAnimator *)self _animationState];
  if ([(UIViewPropertyAnimator *)self _animationState]!= 2)
  {
    [(UIViewPropertyAnimator *)self _setAnimationState:5];
  }

  [(UIViewPropertyAnimator *)self _executeCompletionHandlerWithFinalPosition:a3];
  [(UIViewPropertyAnimator *)self _setAnimationState:v6];

  [(UIViewPropertyAnimator *)self _clearAnimationState];
}

- (void)finishAnimationAtPosition:(int64_t)a3
{
  if ([(UIViewPropertyAnimator *)self _animationState]!= 2 && [(UIViewPropertyAnimator *)self _animationState])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:2233 description:@"finishAnimationAtPosition: should only be called on a stopped animator!"];
  }

  if ([(UIViewPropertyAnimator *)self _animationState]== 2)
  {

    [(UIViewPropertyAnimator *)self _runCompletions:a3 finished:1];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIViewPropertyAnimator *)self _stateAsString];
  if ([(UIViewPropertyAnimator *)self isRunning])
  {
    v7 = @" running";
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  if ([(UIViewPropertyAnimator *)self isReversed])
  {
    v8 = @" reversed";
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  v9 = [(UIViewPropertyAnimator *)self isInterruptible];
  v10 = @" interruptible";
  if (!v9)
  {
    v10 = &stru_1EFB14550;
  }

  v11 = [v3 stringWithFormat:@"<%@(%p) [%@]%@%@%@>", v5, self, v6, v7, v8, v10];

  return v11;
}

- (void)addAnimations:(id)a3 delayFactor:(double)a4 durationFactor:(double)a5
{
  v9 = a3;
  if (!v9)
  {
    v46 = MEMORY[0x1E695DF30];
    v47 = *MEMORY[0x1E695D940];
    v48 = NSStringFromSelector(a2);
    [v46 raise:v47 format:{@"%@ requires a non nil animation arg!", v48}];
  }

  if (a5 < 0.0)
  {
    v49 = MEMORY[0x1E695DF30];
    v50 = *MEMORY[0x1E695D940];
    v51 = NSStringFromSelector(a2);
    [v49 raise:v50 format:{@"%@ requires a durationFactor greater than or equal to zero!", v51}];
  }

  if ([(UIViewPropertyAnimator *)self _animationState]== 2)
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:2254 description:{@"Attempt to add an animation to an animator %@ that is in a stopped state", self}];
  }

  if ([(UIViewPropertyAnimator *)self _animationState]== 5)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:2255 description:{@"Attempt to add an animation to an animator %@ as it is completing", self}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__UIViewPropertyAnimator_addAnimations_delayFactor_durationFactor___block_invoke;
  aBlock[3] = &unk_1E70F5FA8;
  aBlock[4] = self;
  v60 = a4;
  v10 = v9;
  v59 = v10;
  v11 = _Block_copy(aBlock);
  if ([(UIViewPropertyAnimator *)self _isActive])
  {
    if ([(UIViewPropertyAnimator *)self _animationState]== 4)
    {
      if ([(UIViewPropertyAnimator *)self _isStarting]&& ([(UIViewPropertyAnimator *)self fractionComplete], v12 == 0.0))
      {
        v13 = [(UIViewPropertyAnimator *)self _viewAnimationState];
        v14 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
        [(UIViewPropertyAnimator *)self internalDuration];
        v16 = (1.0 - a4) * v15;
        [(UIViewPropertyAnimator *)self internalDuration];
        v18 = v17 * a4;
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __67__UIViewPropertyAnimator_addAnimations_delayFactor_durationFactor___block_invoke_4;
        v56[3] = &unk_1E70F0F78;
        v57 = v10;
        [UIView _performWithState:v13 trackingIdentifier:v14 duration:v56 delay:v16 animations:v18];

        v19 = [(UIViewPropertyAnimator *)self _viewAnimationState];
        v20 = [v19 _didEndCount];

        if (v20 >= 1)
        {
          [(UIViewPropertyAnimator *)self _setAnimationState:1];
          [(UIViewPropertyAnimator *)self _setStarting:0];
          if ([(UIViewPropertyAnimator *)self isInterruptible])
          {
            [(UIViewPropertyAnimator *)self _setKVOCompliantRunning:1];
          }
        }
      }

      else
      {
        [(UIViewPropertyAnimator *)self fractionComplete];
        v34 = v33;
        [(UIViewPropertyAnimator *)self internalDuration];
        v36 = (1.0 - v34) * v35;
        [(UIViewPropertyAnimator *)self delay];
        v39 = 0.0;
        if (v37.n128_f64[0] > 0.0 && v34 == 0.0)
        {
          v40 = [(UIViewPropertyAnimator *)self _viewAnimationState];
          [v40 _elapsedTimeForCanonicallyTrackedAnimation];
          v42 = v41;

          v37.n128_u64[0] = -1.0;
          v38.n128_u64[0] = 0;
          if (v42 < 0.0)
          {
            v38.n128_f64[0] = -v42;
          }

          if (v42 == -1.0)
          {
            v39 = -1.0;
          }

          else
          {
            v39 = v38.n128_f64[0];
          }
        }

        v11[2](v11, v37, v38);
        v43 = [(UIViewPropertyAnimator *)self _viewAnimationState];
        v44 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __67__UIViewPropertyAnimator_addAnimations_delayFactor_durationFactor___block_invoke_5;
        v55[3] = &unk_1E70F3590;
        v55[4] = self;
        [UIView _performWithState:v43 trackingIdentifier:v44 duration:v55 delay:v36 animations:v39];

        v45 = [(UIViewPropertyAnimator *)self timingFunctionForPause];
        [(UIViewPropertyAnimator *)self _pauseAnimation:v45 fromStart:1 minimizingStateModifications:1];

        [(UIViewPropertyAnimator *)self _updateAnimationsToFractionComplete:v34];
      }
    }

    else if ([(UIViewPropertyAnimator *)self _animationState]== 1)
    {
      [(UIViewPropertyAnimator *)self fractionComplete];
      v22 = v21;
      [(UIViewPropertyAnimator *)self internalDuration];
      v24 = (1.0 - v22) * v23;
      [(UIViewPropertyAnimator *)self delay];
      v27 = 0.0;
      if (v25.n128_f64[0] > 0.0 && v22 == 0.0)
      {
        v28 = [(UIViewPropertyAnimator *)self _viewAnimationState];
        [v28 _elapsedTimeForCanonicallyTrackedAnimation];
        v30 = v29;

        v25.n128_u64[0] = -1.0;
        v26.n128_u64[0] = 0;
        if (v30 < 0.0)
        {
          v26.n128_f64[0] = -v30;
        }

        if (v30 == -1.0)
        {
          v27 = -1.0;
        }

        else
        {
          v27 = v26.n128_f64[0];
        }
      }

      v11[2](v11, v25, v26);
      v31 = [(UIViewPropertyAnimator *)self _viewAnimationState];
      v32 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __67__UIViewPropertyAnimator_addAnimations_delayFactor_durationFactor___block_invoke_6;
      v54[3] = &unk_1E70F3590;
      v54[4] = self;
      [UIView _performWithState:v31 trackingIdentifier:v32 duration:v54 delay:v24 animations:v27];
    }
  }

  else
  {
    (v11[2])(v11);
    [(UIViewPropertyAnimator *)self _setAnimationState:3];
  }
}

void __67__UIViewPropertyAnimator_addAnimations_delayFactor_durationFactor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _animations];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_new();
    [v3 _setAnimations:v4];
  }

  v5 = *(a1 + 48);
  v10 = [*(a1 + 32) _animations];
  if (v5 > 0.0 && v5 < 1.0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__UIViewPropertyAnimator_addAnimations_delayFactor_durationFactor___block_invoke_2;
    aBlock[3] = &unk_1E70F5FA8;
    v13 = *(a1 + 48);
    v8 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v12 = v8;
    v9 = _Block_copy(aBlock);
    [v10 addObject:v9];
  }

  else
  {
    v7 = _Block_copy(*(a1 + 40));
    [v10 addObject:v7];
  }
}

void __67__UIViewPropertyAnimator_addAnimations_delayFactor_durationFactor___block_invoke_2(uint64_t a1)
{
  v2 = 1.0 - *(a1 + 48);
  [*(a1 + 32) internalDuration];
  v4 = v2 * v3;
  v5 = *(a1 + 48);
  [*(a1 + 32) internalDuration];
  v7 = v5 * v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__UIViewPropertyAnimator_addAnimations_delayFactor_durationFactor___block_invoke_3;
  v8[3] = &unk_1E70F0F78;
  v9 = *(a1 + 40);
  [UIView animateWithDuration:0 delay:v8 options:0 animations:v4 completion:v7];
}

- (id)_animationDescriptionForView:(id)a3
{
  v4 = a3;
  v5 = [(UIViewPropertyAnimator *)self _animationDescriptionMap];
  v6 = [MEMORY[0x1E696B098] valueWithPointer:v4];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (id)_explicitAnimationUpdateForProperty:(id)a3 forView:(id)a4 withValue:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(UIViewPropertyAnimator *)self _animationDescriptionForView:a4];
  v11 = [v10 updates];
  v12 = [v11 objectForKey:v9];

  v13 = [v12 lastObject];
  v14 = v13;
  if (v13 && ([v13 isImplicit] & 1) == 0)
  {
    v16 = [v14 fromValue];
    if (v16)
    {
      v15 = 0;
    }

    else
    {
      v17 = [v14 toValue];
      if ([v17 isEqualToValue:v8])
      {
        v18 = v14;
      }

      else
      {
        v18 = 0;
      }

      v15 = v18;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_newAnimationUpdateForProperty:(id)a3 implicit:(BOOL)a4 additive:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [[_UIViewPropertyAnimationUpdate alloc] initWithPropertyName:v7 implicit:v6 additive:v5];

  return v8;
}

- (void)_notePropertyAnimationUpdate:(id)a3 forView:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696B098] valueWithPointer:v6];
  v8 = [(UIViewPropertyAnimator *)self _animationDescriptionMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v9 = [[_UIViewPropertyAnimationDescription alloc] initWithView:v6];
    v10 = [(UIViewPropertyAnimator *)self _animationDescriptionMap];
    [v10 setObject:v9 forKeyedSubscript:v7];
  }

  [(_UIViewPropertyAnimationDescription *)v9 _addUpdate:v11];
}

- (void)addCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(UIViewPropertyAnimator *)self _completions];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(UIViewPropertyAnimator *)self _setCompletions:v6];
  }

  v8 = [(UIViewPropertyAnimator *)self _completions];
  v7 = _Block_copy(v4);

  [v8 addObject:v7];
}

- (NSArray)animationDescriptions
{
  v2 = [(UIViewPropertyAnimator *)self _animationDescriptionMap];
  v3 = [v2 allValues];

  return v3;
}

- (void)_setOriginalFromValue:(id)a3 forKey:(id)a4 inLayer:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  originalFromValueMap = self->_originalFromValueMap;
  if (!originalFromValueMap)
  {
    v11 = +[_UICompoundObjectMap compoundObjectMap];
    v12 = self->_originalFromValueMap;
    self->_originalFromValueMap = v11;

    originalFromValueMap = self->_originalFromValueMap;
  }

  [(_UICompoundObjectMap *)originalFromValueMap setValue:v13 forObject:v9 andProperty:v8];
}

- (void)_setOriginalToValue:(id)a3 forKey:(id)a4 inLayer:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  originalToValueMap = self->_originalToValueMap;
  if (!originalToValueMap)
  {
    v11 = +[_UICompoundObjectMap compoundObjectMap];
    v12 = self->_originalToValueMap;
    self->_originalToValueMap = v11;

    originalToValueMap = self->_originalToValueMap;
  }

  [(_UICompoundObjectMap *)originalToValueMap setValue:v13 forObject:v9 andProperty:v8];
}

- (void)_setAdditiveOffset:(double)a3 forKey:(id)a4 inLayer:(id)a5
{
  v13 = a4;
  v8 = a5;
  if (a3 >= 0.0)
  {
    additiveOffsetsForAnimationKeysMap = self->_additiveOffsetsForAnimationKeysMap;
    if (!additiveOffsetsForAnimationKeysMap)
    {
      v10 = +[_UICompoundObjectMap compoundObjectMap];
      v11 = self->_additiveOffsetsForAnimationKeysMap;
      self->_additiveOffsetsForAnimationKeysMap = v10;

      additiveOffsetsForAnimationKeysMap = self->_additiveOffsetsForAnimationKeysMap;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(_UICompoundObjectMap *)additiveOffsetsForAnimationKeysMap setValue:v12 forObject:v8 andProperty:v13];
  }
}

- (double)_additiveOffsetForKey:(id)a3 inLayer:(id)a4
{
  v4 = [(_UICompoundObjectMap *)self->_additiveOffsetsForAnimationKeysMap valueForObject:a4 andProperty:a3];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

- (double)_effectiveAdditiveOffsetForKey:(id)a3 inLayer:(id)a4
{
  [(UIViewPropertyAnimator *)self _additiveOffsetForKey:a3 inLayer:a4];
  v6 = v5;
  if (v5 > 0.0)
  {
    [(UIViewPropertyAnimator *)self delay];
    if (v7 > 0.0)
    {
      [(UIViewPropertyAnimator *)self delay];
      v9 = v8;
      [(UIViewPropertyAnimator *)self duration];
      v6 = v6 - v9 / v10;
    }
  }

  result = 1.0;
  if (v6 <= 1.0)
  {
    result = v6;
  }

  if (v6 < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)_setContinuedWithNewSpring:(BOOL)a3 forAnimationKey:(id)a4 forLayer:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  continuedWithSpringForAnimationKeyMap = self->_continuedWithSpringForAnimationKeyMap;
  if (!continuedWithSpringForAnimationKeyMap)
  {
    v11 = +[_UICompoundObjectMap compoundObjectMap];
    v12 = self->_continuedWithSpringForAnimationKeyMap;
    self->_continuedWithSpringForAnimationKeyMap = v11;

    continuedWithSpringForAnimationKeyMap = self->_continuedWithSpringForAnimationKeyMap;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [(_UICompoundObjectMap *)continuedWithSpringForAnimationKeyMap setValue:v13 forObject:v9 andProperty:v8];

  return 1;
}

- (BOOL)_wasContinuedWithNewSpringForAnimationKey:(id)a3 forLayer:(id)a4
{
  v4 = [(_UICompoundObjectMap *)self->_continuedWithSpringForAnimationKeyMap valueForObject:a4 andProperty:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_originalFromValueForKey:(id)a3 inLayer:(id)a4 forAnimatorWithTrackingIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _propertyAnimatorWithUUID:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 _originalFromValueForKey:v8 inLayer:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_previousAnimatorForKeyPath:(id)a3 inLayer:(id)a4 compoundKeys:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (([v8 hasPrefix:@"bounds"] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"contentsRect") & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"contentsCenter"))
  {
    v29 = [v8 stringByAppendingString:@".origin"];
    v28 = [v8 stringByAppendingString:@".size"];
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = __ExtantPropertyAnimators;
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    location = a5;
    v12 = *v32;
    if (v29)
    {
      v13 = v28 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
LABEL_12:
    v15 = 0;
    while (1)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v16 = [__ExtantPropertyAnimators objectForKey:{*(*(&v31 + 1) + 8 * v15), location}];
      v17 = v16;
      if (v16 != self)
      {
        v18 = [(UIViewPropertyAnimator *)v16 _originalFromValueForKey:v8 inLayer:v9];

        if (v18)
        {
          v22 = v8;
          v23 = location;
          goto LABEL_26;
        }

        if (v14)
        {
          v19 = [(UIViewPropertyAnimator *)v17 _originalFromValueForKey:v29 inLayer:v9];
          if (v19)
          {

LABEL_25:
            objc_storeStrong(location, v29);
            v23 = location + 1;
            v22 = v28;
LABEL_26:
            v24 = v22;
            v25 = *v23;
            *v23 = v24;

            v21 = v17;
            goto LABEL_27;
          }

          v20 = [(UIViewPropertyAnimator *)v17 _originalFromValueForKey:v28 inLayer:v9];

          if (v20)
          {
            goto LABEL_25;
          }
        }
      }

      if (v11 == ++v15)
      {
        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v11)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  v21 = 0;
LABEL_27:

  return v21;
}

- (void)_untrackPropertyAnimationsForKeys:(id *)a3 inLayer:(id)a4
{
  v10 = a4;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if (!a3[v6])
    {
      break;
    }

    v9 = [(UIViewPropertyAnimator *)self _viewAnimationState];
    [v9 _untrackAnimationsWithIdentifier:self->_trackingIdentifier keyPath:a3[v6] inLayer:v10 removeFromLayer:0];

    [(UIViewPropertyAnimator *)self _setOriginalFromValue:0 forKey:a3[v6] inLayer:v10];
    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
}

- (double)_pauseAnimation:(id)a3 fromStart:(BOOL)a4 minimizingStateModifications:(BOOL)a5
{
  v9 = a3;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x2020000000;
  v67 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v61[3] = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__10;
  v59[4] = __Block_byref_object_dispose__10;
  v60 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__10;
  v57[4] = __Block_byref_object_dispose__10;
  v58 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  timingProviderWhenContinued = self->_timingProviderWhenContinued;
  if (timingProviderWhenContinued)
  {
    v11 = timingProviderWhenContinued;
  }

  else
  {
    v11 = [(UIViewPropertyAnimator *)self timingParameters];
    if (!v11)
    {
      v14 = a5;
      v23 = 0;
      goto LABEL_10;
    }
  }

  v23 = v11;
  if ([(UITimingCurveProvider *)v11 timingCurveType]== 2)
  {

LABEL_7:
    v13 = [(UIViewPropertyAnimator *)self _computeSmallestDisplacementFractionComplete:v69 + 3];
    v14 = a5;
    *(v73 + 24) = v13;
    goto LABEL_10;
  }

  v12 = [(UITimingCurveProvider *)v11 timingCurveType];

  if (v12 == 3)
  {
    goto LABEL_7;
  }

  v14 = a5;
LABEL_10:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__UIViewPropertyAnimator__pauseAnimation_fromStart_minimizingStateModifications___block_invoke;
  aBlock[3] = &unk_1E70F5FD0;
  v41 = v49;
  v42 = v47;
  v43 = &v53;
  v44 = v51;
  v15 = v9;
  v39 = v15;
  v40 = self;
  v45 = v59;
  v46 = v57;
  v16 = _Block_copy(aBlock);
  v17 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __81__UIViewPropertyAnimator__pauseAnimation_fromStart_minimizingStateModifications___block_invoke_2;
  v24[3] = &unk_1E70F5FF8;
  v26 = v61;
  v27 = &v53;
  v24[4] = self;
  v36 = a4;
  v28 = v51;
  v29 = v59;
  v30 = v57;
  v31 = v49;
  v32 = &v72;
  v33 = &v68;
  v18 = v15;
  v37 = v14;
  v25 = v18;
  v34 = v66;
  v35 = &v62;
  [UIView modifyTrackedAnimations:v17 removeOnCompletion:0 animationFactory:v16 block:v24];

  if (!v14)
  {
    self->_pausedAsSpring = *(v54 + 24);
    objc_storeStrong(&self->_timingFunctionWhenPaused, a3);
    self->_fractionCompleteWhenContinued = 0.0;
    v19 = self->_timingProviderWhenContinued;
    self->_timingProviderWhenContinued = 0;
  }

  v20 = [(UIViewPropertyAnimator *)self isReversed];
  v21 = v63[3];
  if (v20)
  {
    v21 = 1.0 - v21;
    v63[3] = v21;
  }

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(v57, 8);

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(v61, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(v66, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  return v21;
}

id __81__UIViewPropertyAnimator__pauseAnimation_fromStart_minimizingStateModifications___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v8 hasPrefix:@"UIPacingAnimationForAnimatorsKey"];
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;
  v11 = *(*(a1 + 56) + 8);
  if (*(v11 + 24))
  {
    v12 = 1;
  }

  else
  {
    v12 = *(*(*(a1 + 48) + 8) + 24);
  }

  *(v11 + 24) = v12 & 1;
  objc_opt_class();
  *(*(*(a1 + 64) + 8) + 24) = objc_opt_isKindOfClass() & 1;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || *(*(*(a1 + 64) + 8) + 24) != 1)
  {
    v13 = 0;
  }

  else if (*(a1 + 32))
  {
    v13 = 1;
  }

  else
  {
    v13 = [*(a1 + 40) _wasContinuedWithNewSpringForAnimationKey:v8 forLayer:v9];
  }

  *(*(*(a1 + 72) + 8) + 24) = v13;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v14 = v7;
    v15 = [*(a1 + 40) _originalFromValueForKey:v8 inLayer:v9];
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if (!*(*(*(a1 + 80) + 8) + 40))
    {
      v18 = [v14 keyPath];
      v19 = [*(a1 + 40) _trackingIdentifier];
      v20 = _UIFromValueForAnimation(v14, v18, v9, v19);
      v21 = *(*(a1 + 80) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = *(a1 + 40);
      v24 = *(*(*(a1 + 80) + 8) + 40);
      v25 = [v14 keyPath];
      [v23 _setOriginalFromValue:v24 forKey:v25 inLayer:v9];
    }

    v26 = *(a1 + 40);
    v27 = [v14 keyPath];
    v28 = [v26 _originalToValueForKey:v27 inLayer:v9];
    v29 = *(*(a1 + 88) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v31 = MEMORY[0x1E6979318];
    v32 = [v14 keyPath];
    v33 = [v31 animationWithKeyPath:v32];

    v34 = [v14 delegate];
    [v33 setDelegate:v34];

    v35 = [v14 timingFunction];
    [v33 setTimingFunction:v35];

    [v33 setToValue:*(*(*(a1 + 88) + 8) + 40)];
    [v33 setFromValue:*(*(*(a1 + 80) + 8) + 40)];
    [v14 duration];
    [v33 setDuration:?];
    [v14 preferredFrameRateRange];
    [v33 setPreferredFrameRateRange:?];
    [v33 setHighFrameRateReason:{objc_msgSend(v14, "highFrameRateReason")}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v7;
      v37 = [v36 animations];
      v38 = [v37 firstObject];
      v33 = [v38 copy];

      v14 = [v36 delegate];

      [v33 setDelegate:v14];
    }

    else
    {
      v33 = [v7 copy];
      v39 = *(*(a1 + 88) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = 0;

      v41 = *(*(a1 + 80) + 8);
      v14 = *(v41 + 40);
      *(v41 + 40) = 0;
    }
  }

  [v33 setBeginTime:0.0];
  [v33 setBeginTimeMode:@"relative"];

  return v33;
}

uint64_t __81__UIViewPropertyAnimator__pauseAnimation_fromStart_minimizingStateModifications___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, id *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  *(*(*(a1 + 48) + 8) + 24) = 0xBFF0000000000000;
  v46 = 1.0;
  v14 = *a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  if (WeakRetained && (v18 = WeakRetained, v19 = objc_loadWeakRetained((*(a1 + 32) + 152)), v20 = [v19 _isFinished], v19, v18, (v20 & 1) == 0))
  {
    v25 = *(a1 + 32);
    v24 = v25[3];
  }

  else
  {
    v21 = [*(a1 + 32) _viewAnimationState];
    [v12 duration];
    [v21 _unpacedFractionCompleteForAnimation:v12 inLayer:v11 duration:?];
    v23 = 1.0;
    if (v22 <= 1.0)
    {
      v23 = v22;
    }

    if (v22 >= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = *(a1 + 32);
  }

  if ([v25 isReversed])
  {
    v26 = 1.0 - v24;
  }

  else
  {
    v26 = v24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v12 animations];
    v28 = [v27 firstObject];

    [*(a1 + 32) _effectiveAdditiveOffsetForKey:v13 inLayer:v11];
    v30 = 0.0;
    if (v29 < v26)
    {
      v30 = (v26 - v29) / (1.0 - v29);
    }

    v26 = v30;
    v12 = v28;
  }

  v32 = 0.0;
  if ([v11 hasBeenCommitted] && (*(a1 + 128) & 1) == 0)
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
      {
        v32 = v26;
        goto LABEL_38;
      }
    }

    else if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      goto LABEL_30;
    }

    v33 = [*(a1 + 32) _computeDisplacementFractionComplete:v16 withKey:v13 inLayer:v11 fromValue:*(*(*(a1 + 72) + 8) + 40) toValue:*(*(*(a1 + 80) + 8) + 40) fractionComplete:*(*(a1 + 48) + 8) + 24 displacement:&v46];
    [*(a1 + 32) _restoreLayerValueIfReversed:v11 animation:v16 toValue:*(*(*(a1 + 80) + 8) + 40)];
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) != 0 && (*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      v31 = v46;
      if (v46 != 0.0 && v33 == 1)
      {
LABEL_36:
        v37 = *(*(*(a1 + 48) + 8) + 24);
        if (v37 > 0.0)
        {
          v32 = computeInverseOfTimingFunction(*(a1 + 40), v37);
        }

        goto LABEL_38;
      }
    }

LABEL_30:
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24);
    }

    else if (v26 > 0.0)
    {
      if (*(a1 + 40))
      {
        v34 = [v12 timingFunction];
        *&v35 = v26;
        [v34 _solveForInput:v35];
        *(*(*(a1 + 48) + 8) + 24) = v36;
      }

      else
      {
        v32 = v26;
      }
    }

    goto LABEL_36;
  }

LABEL_38:
  v38 = 0.99999;
  if (v32 <= 0.99999)
  {
    v38 = v32;
  }

  if (v32 >= 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0.0;
  }

  if (!*(*(a1 + 32) + 96) && (*(a1 + 129) & 1) == 0)
  {
    v40 = [v14 timingFunction];
    v41 = *(a1 + 32);
    v42 = *(v41 + 96);
    *(v41 + 96) = v40;
  }

  v43 = *(*(a1 + 112) + 8);
  if ((*(v43 + 24) & 1) == 0)
  {
    *(v43 + 24) = 1;
    *(*(*(a1 + 120) + 8) + 24) = v39;
  }

  [v14 setSpeed:0.0];
  [v14 setFillMode:*MEMORY[0x1E69797E0]];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 setFromValue:*(*(*(a1 + 72) + 8) + 40)];
    }
  }

  [v12 duration];
  [v14 setTimeOffset:v39 * v44];
  if (*(a1 + 40))
  {
    [v14 setTimingFunction:?];
  }

  return 0;
}

- (void)pauseAnimationTransiently
{
  [(UIViewPropertyAnimator *)self _setAnimationState:4];
  v4 = [(UIViewPropertyAnimator *)self timingFunctionForPause];
  [(UIViewPropertyAnimator *)self _pauseAnimation:v4 fromStart:0];
  self->_fractionComplete = v3;
}

- (id)timingFunctionForPause
{
  if (self->_scrubsLinearly)
  {
    v4 = [MEMORY[0x1E69793D0] functionWithName:{*MEMORY[0x1E6979ED8], v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setScrubsLinearly:(BOOL)scrubsLinearly
{
  if ([(UIViewPropertyAnimator *)self _animationState]== 4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:2744 description:@"Cannot modify scrubsLinearly while animation is already paused"];
  }

  self->_scrubsLinearly = scrubsLinearly;
}

- (void)pauseAnimation
{
  if (![(UIViewPropertyAnimator *)self isInterruptible])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:2750 description:{@"An animator %@ that is not interruptible cannot be paused!", self}];
  }

  if ([(UIViewPropertyAnimator *)self _animationState]== 3)
  {
    [(UIViewPropertyAnimator *)self startAnimationAsPaused:1];
  }

  if ([(UIViewPropertyAnimator *)self _animationState]== 1)
  {
    [(UIViewPropertyAnimator *)self willChangeValueForKey:@"fractionComplete"];
    [(UIViewPropertyAnimator *)self _setAnimationState:4];
    v4 = [(UIViewPropertyAnimator *)self timingFunctionForPause];
    [(UIViewPropertyAnimator *)self _pauseAnimation:v4 fromStart:0];
    self->_fractionComplete = v5;

    [(UIViewPropertyAnimator *)self didChangeValueForKey:@"fractionComplete"];

    [(UIViewPropertyAnimator *)self _setKVOCompliantRunning:0];
  }
}

- (void)_restoreLayerValueIfReversed:(id)a3 animation:(id)a4 toValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(UIViewPropertyAnimator *)self isReversed])
  {
    if (v10)
    {
      v11 = v10;
LABEL_5:
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __73__UIViewPropertyAnimator__restoreLayerValueIfReversed_animation_toValue___block_invoke;
      v14[3] = &unk_1E70F6228;
      v15 = v8;
      v16 = v11;
      v17 = v9;
      v13 = v11;
      [UIView performWithoutAnimation:v14];

      goto LABEL_6;
    }

    v12 = [v9 keyPath];
    v11 = [v8 valueForKeyPath:v12];

    if (v11)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

void __73__UIViewPropertyAnimator__restoreLayerValueIfReversed_animation_toValue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) keyPath];
  [v1 setValue:v2 forKeyPath:v3];
}

- (BOOL)_computeDisplacementFractionComplete:(id)a3 withKey:(id)a4 inLayer:(id)a5 fromValue:(id)a6 toValue:(id)a7 fractionComplete:(double *)a8 displacement:(double *)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v99 = 0.0;
  v100[0] = 1.0;
  v18 = a4;
  v19 = [v18 hasSuffix:@".x"];
  v20 = [v18 hasSuffix:@".y"];
  v55 = [v18 hasPrefix:@"transform"];

  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v22 = [v14 keyPath];
    v21 = [v15 valueForKeyPath:v22];
  }

  v58 = v16;
  if (v16)
  {
    v23 = v16;
    v24 = v14;
  }

  else
  {
    v25 = [v14 keyPath];
    [(UIViewPropertyAnimator *)self _trackingIdentifier];
    v26 = v24 = v14;
    v23 = _UIFromValueForAnimation(v24, v25, v15, v26);
  }

  v27 = [v15 presentationLayer];
  v28 = v27;
  v56 = v15;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v15;
  }

  v30 = v24;
  v31 = [v24 keyPath];
  v32 = [v29 valueForKeyPath:v31];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = v23;
  }

  v35 = v34;

  if (v19)
  {
    [v21 CGPointValue];
    v37 = v36;
    [v23 CGPointValue];
    v39 = vabdd_f64(v37, v38);
    v100[0] = v39;
    [v21 CGPointValue];
    v41 = v40;
    [v35 CGPointValue];
    v43 = vabdd_f64(v41, v42);
  }

  else if (v20)
  {
    [v21 CGPointValue];
    v45 = v44;
    [v23 CGPointValue];
    v39 = vabdd_f64(v45, v46);
    v100[0] = v39;
    [v21 CGPointValue];
    v48 = v47;
    [v35 CGPointValue];
    v43 = vabdd_f64(v48, v49);
  }

  else
  {
    [v21 CA_distanceToValue:v23];
    v39 = fabs(v50);
    v100[0] = v39;
    [v21 CA_distanceToValue:v35];
    v43 = fabs(v51);
  }

  v99 = v43;
  if (v39 == 0.0)
  {
    v52 = -1.0;
    if (v55)
    {
      v53 = 0uLL;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      if (v23)
      {
        [v23 CATransform3DValue];
        v53 = 0uLL;
      }

      v89 = v53;
      v90 = v53;
      v87 = v53;
      v88 = v53;
      v85 = v53;
      v86 = v53;
      v83 = v53;
      v84 = v53;
      if (v21)
      {
        [v21 CATransform3DValue];
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      if (v35)
      {
        [v35 CATransform3DValue];
      }

      v71 = v95;
      v72 = v96;
      v73 = v97;
      v74 = v98;
      v67 = v91;
      v68 = v92;
      v69 = v93;
      v70 = v94;
      v63 = v87;
      v64 = v88;
      v65 = v89;
      v66 = v90;
      v59 = v83;
      v60 = v84;
      v61 = v85;
      v62 = v86;
      if (_UIVPA_CATransformDisplacement(&v67, &v59, v100))
      {
        v71 = v95;
        v72 = v96;
        v73 = v97;
        v74 = v98;
        v67 = v91;
        v68 = v92;
        v69 = v93;
        v70 = v94;
        v63 = v79;
        v64 = v80;
        v65 = v81;
        v66 = v82;
        v59 = v75;
        v60 = v76;
        v61 = v77;
        v62 = v78;
        if (_UIVPA_CATransformDisplacement(&v67, &v59, &v99))
        {
          v52 = v99 / v100[0];
        }
      }
    }
  }

  else
  {
    v52 = fabs((v39 - v43) / v39);
  }

  if (a8)
  {
    *a8 = v52;
  }

  if (a9)
  {
    *a9 = v100[0];
  }

  return v52 != -1.0;
}

- (BOOL)_computeSmallestDisplacementFractionComplete:(double *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x3FF0000000000000;
  v5 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__UIViewPropertyAnimator__computeSmallestDisplacementFractionComplete___block_invoke;
  v8[3] = &unk_1E70F6020;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v13;
  [UIView mapTrackedAnimations:v5 withBlock:v8];

  if (a3)
  {
    *a3 = v10[3];
  }

  v6 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t __71__UIViewPropertyAnimator__computeSmallestDisplacementFractionComplete___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 animationForKey:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = [v10 keyPath];
    v13 = [v11 _originalFromValueForKey:v12 inLayer:v7];

    v14 = *(a1 + 32);
    v15 = [v10 keyPath];
    v16 = [v14 _originalToValueForKey:v15 inLayer:v7];

    v17 = *(a1 + 32);
    v21 = 0.0;
    LODWORD(v15) = [v17 _computeDisplacementFractionComplete:v10 withKey:v8 inLayer:v7 fromValue:v13 toValue:v16 fractionComplete:&v21 displacement:0];
    [*(a1 + 32) _restoreLayerValueIfReversed:v7 animation:v10 toValue:v16];
    if (v15)
    {
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 24);
      if (v19 >= v21)
      {
        v19 = v21;
      }

      *(v18 + 24) = v19;
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return 0;
}

- (void)_continueWithTimingParameters:(id)a3 duration:(double)a4
{
  v7 = a3;
  if ([(UIViewPropertyAnimator *)self _animationState]!= 4)
  {
    goto LABEL_39;
  }

  if ([(UIViewPropertyAnimator *)self _isStarting])
  {
    [(UIViewPropertyAnimator *)self addAnimations:&__block_literal_global_594];
    goto LABEL_39;
  }

  v8 = [(UIViewPropertyAnimator *)self _trackingIdentifier];

  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
  pausedAsSpring = self->_pausedAsSpring;
  v38 = self->_timingFunctionPriorToPause;
  v11 = self->_timingFunctionWhenPaused;
  [(UIViewPropertyAnimator *)self internalDuration];
  v13 = v12;
  v14 = [(UIViewPropertyAnimator *)self timingParameters];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 timingCurveType] == 2 || objc_msgSend(v15, "timingCurveType") == 3;
  }

  else
  {
    v16 = 0;
  }

  v17 = v7;
  v18 = v17;
  if (v17)
  {
    if ([v17 timingCurveType] == 2)
    {

      v16 = 1;
    }

    else
    {
      v16 = [v18 timingCurveType] == 3;
    }

    v20 = mediaTimingFunctionForTimingProvider(v18);
  }

  else
  {
    v19 = [(UIViewPropertyAnimator *)self timingParameters];
    v20 = mediaTimingFunctionForTimingProvider(v19);
  }

  self->_pausedAsSpring = 0;
  timingFunctionPriorToPause = self->_timingFunctionPriorToPause;
  self->_timingFunctionPriorToPause = 0;

  timingFunctionWhenPaused = self->_timingFunctionWhenPaused;
  self->_timingFunctionWhenPaused = 0;

  [(UIViewPropertyAnimator *)self _setAnimationState:1];
  self->_fractionCompleteWhenContinued = self->_fractionComplete;
  objc_storeStrong(&self->_timingProviderWhenContinued, a3);
  self->_pausedOnCompletion = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  if (a4 != 0.0)
  {
    fractionComplete = self->_fractionComplete;
    [(UIViewPropertyAnimator *)self internalDuration];
    v13 = a4 / (1.0 - fractionComplete);
    if (v24 != v13)
    {
      [(UIViewPropertyAnimator *)self setInternalDuration:v13];
    }
  }

  v25 = self->_fractionComplete;
  v26 = [(UIViewPropertyAnimator *)self isReversed];
  v27 = 1.0 - v25;
  if (!v26)
  {
    v27 = v25;
  }

  *&v48 = -1.0;
  if (!v16)
  {
    if (pausedAsSpring)
    {
      if ([(UIViewPropertyAnimator *)self _computeSmallestDisplacementFractionComplete:&v48, v27])
      {
        v25 = *&v48;
LABEL_30:
        if (v20)
        {
          v25 = computeInverseOfTimingFunction(v20, v25);
        }

        if ([(UIViewPropertyAnimator *)self isReversed])
        {
          v25 = 1.0 - v25;
        }

        goto LABEL_34;
      }
    }

    else
    {
      *&v27 = v27;
      if (v11)
      {
        [(CAMediaTimingFunction *)v11 _solveForInput:v27];
      }

      else
      {
        [(CAMediaTimingFunction *)v38 _solveForInput:v27];
      }

      v25 = v28;
    }

    *&v48 = v25;
    goto LABEL_30;
  }

LABEL_34:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__UIViewPropertyAnimator__continueWithTimingParameters_duration___block_invoke_2;
  aBlock[3] = &unk_1E70F6048;
  aBlock[5] = v51;
  aBlock[6] = v49;
  aBlock[4] = self;
  v46 = v16;
  v47 = pausedAsSpring;
  v29 = _Block_copy(aBlock);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __65__UIViewPropertyAnimator__continueWithTimingParameters_duration___block_invoke_3;
  v40[3] = &unk_1E70F6070;
  v40[4] = self;
  v43 = v13;
  v44 = v25;
  v41 = v18;
  v30 = v20;
  v42 = v30;
  [UIView modifyTrackedAnimations:v9 removeOnCompletion:0 animationFactory:v29 block:v40];
  self->_fractionComplete = v25;
  v31 = [(UIViewPropertyAnimator *)self _animations];

  if (v31)
  {
    v32 = [(UIViewPropertyAnimator *)self isReversed];
    fractionCompleteWhenContinued = self->_fractionCompleteWhenContinued;
    [(UIViewPropertyAnimator *)self internalDuration];
    v35 = v34;
    if (!v32)
    {
      fractionCompleteWhenContinued = 1.0 - fractionCompleteWhenContinued;
    }

    v36 = [(UIViewPropertyAnimator *)self _viewAnimationState];
    v37 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __65__UIViewPropertyAnimator__continueWithTimingParameters_duration___block_invoke_4;
    v39[3] = &unk_1E70F3590;
    v39[4] = self;
    [UIView _performWithState:v36 trackingIdentifier:v37 duration:v39 delay:v35 * fractionCompleteWhenContinued animations:0.0];
  }

  [(UIViewPropertyAnimator *)self _scheduleCACommitFuture];

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);

LABEL_39:
}

id __65__UIViewPropertyAnimator__continueWithTimingParameters_duration___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 24))
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v11 = [v8 hasPrefix:@"UIPacingAnimationForAnimatorsKey"];
    v10 = *(*(a1 + 40) + 8);
    v12 = *(v10 + 24) | v11;
  }

  *(v10 + 24) = v12 & 1;
  v13 = v7;
  objc_opt_class();
  *(*(*(a1 + 48) + 8) + 24) = objc_opt_isKindOfClass() & 1;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = v15;
  if (v15)
  {
    v17 = *(a1 + 32);
    v18 = [v15 keyPath];
    v19 = [v17 _originalFromValueForKey:v18 inLayer:v9];

    v20 = *(a1 + 32);
    v21 = [v16 keyPath];
    v57 = [v20 _originalToValueForKey:v21 inLayer:v9];

    v22 = [v16 keyPath];
    v23 = [(__CFString *)v22 hasSuffix:@".origin"];
    v24 = [(__CFString *)v22 hasSuffix:@".size"];
    v25 = v24;
    if ((v23 & 1) != 0 || v24)
    {
      if ([(__CFString *)v22 hasPrefix:@"bounds"])
      {

        v22 = @"bounds";
      }

      if ([(__CFString *)v22 hasPrefix:@"contentsRect"])
      {

        v22 = @"contentsRect";
      }

      if ([(__CFString *)v22 hasPrefix:@"contentsCenter"])
      {

        v22 = @"contentsCenter";
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v22 = 0;
    v57 = 0;
    v19 = 0;
  }

  if (v11 & 1 | ((*(a1 + 56) & 1) == 0) || *(*(*(a1 + 48) + 8) + 24) != 1)
  {
    if (v11 & 1 | ((*(a1 + 57) & 1) == 0) || *(*(*(a1 + 48) + 8) + 24) != 1)
    {
      v28 = [v13 copy];
    }

    else
    {
      v32 = v8;
      v33 = MEMORY[0x1E6979318];
      [v16 keyPath];
      v35 = v34 = v19;
      v28 = [v33 animationWithKeyPath:v35];

      v19 = v34;
      v36 = [v13 delegate];
      [v28 setDelegate:v36];

      [v28 setFromValue:v34];
      v37 = [*(a1 + 32) _viewAnimationState];
      [v37 _transformIntoAdditiveAnimationAndNoteOriginal:v28 inLayer:v9 animationKey:v32];

      v8 = v32;
      [v13 preferredFrameRateRange];
      [v28 setPreferredFrameRateRange:?];
      [v28 setHighFrameRateReason:{objc_msgSend(v13, "highFrameRateReason")}];
    }

    goto LABEL_36;
  }

  v56 = v19;
  v26 = MEMORY[0x1E69794A8];
  v27 = [v16 keyPath];
  v28 = [v26 animationWithKeyPath:v27];

  v29 = [v13 delegate];
  [v28 setDelegate:v29];

  v55 = v8;
  if ([*(a1 + 32) isReversed])
  {
    v30 = v28;
    v31 = v56;
LABEL_28:
    [v30 setToValue:v31];
    goto LABEL_29;
  }

  if (v57)
  {
    v30 = v28;
    v31 = v57;
    goto LABEL_28;
  }

LABEL_29:
  v38 = [v9 presentationLayer];
  v39 = v38;
  if (!v38)
  {
    v38 = v9;
  }

  v40 = [v38 valueForKeyPath:v22];
  [v28 setFromValue:v40];

  if (v25)
  {
    v41 = [v28 fromValue];
    [v41 CGRectValue];
    v43 = v42;
    v45 = v44;

    v46 = [MEMORY[0x1E696B098] valueWithCGSize:{v43, v45}];
    [v28 setFromValue:v46];
  }

  if (v23)
  {
    v47 = [v28 fromValue];
    [v47 CGRectValue];
    v49 = v48;
    v51 = v50;

    v52 = [MEMORY[0x1E696B098] valueWithCGPoint:{v49, v51}];
    [v28 setFromValue:v52];
  }

  v53 = [*(a1 + 32) _viewAnimationState];
  [v53 _transformIntoAdditiveAnimationAndNoteOriginal:v28 inLayer:v9 animationKey:v55];

  v8 = v55;
  [v13 preferredFrameRateRange];
  [v28 setPreferredFrameRateRange:?];
  [v28 setHighFrameRateReason:{objc_msgSend(v13, "highFrameRateReason")}];
  [*(a1 + 32) _setContinuedWithNewSpring:1 forAnimationKey:v55 forLayer:v9];
  v19 = v56;
LABEL_36:

  return v28;
}

uint64_t __65__UIViewPropertyAnimator__continueWithTimingParameters_duration___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, id *a7)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = *a7;
  v12 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [*(a1 + 32) _effectiveAdditiveOffsetForKey:v10 inLayer:v12];
  v15 = v14;

  v16 = *(a1 + 56);
  v17 = [*(a1 + 32) isReversed];
  v18 = *(a1 + 64);
  v19 = 1.0 - v15;
  v20 = (v18 - v15) / (1.0 - v15);
  v21 = v16 * (v15 - v18);
  if (v15 <= 0.0)
  {
    v21 = 0.0;
  }

  if (v15 <= v18)
  {
    v21 = 0.0;
  }

  else
  {
    v20 = 0.0;
  }

  v22 = v18 / v19;
  if (v17)
  {
    v23 = 0.0;
  }

  else
  {
    v22 = v20;
    v23 = v21;
  }

  v24 = v19 * v16;
  v25 = v24 * (1.0 - v22);
  if (isKindOfClass)
  {
    v26 = v11;
    v52 = 0.0;
    v53 = 0.0;
    v27 = *(a1 + 40);
    if (v27)
    {
      v28 = [v27 springTimingParameters];
    }

    else
    {
      v40 = [*(a1 + 32) timingParameters];
      v28 = [v40 springTimingParameters];
    }

    [v28 initialVelocity];
    v42 = v41;
    v44 = v43;
    [v28 dampingRatio];
    v46 = v45;
    v47 = [v26 keyPath];
    if ([v47 hasPrefix:@"position"])
    {
      v48 = [v10 hasSuffix:@".y"];

      if (v48)
      {
        v42 = v44;
      }
    }

    else
    {
    }

    [UIViewSpringAnimationState computeDerivedSpringParameters:&v53 zeta:&v52 mass:v25 velocity:v46 epsilon:1.0 stiffness:v42 damping:0.001];
    [v26 setMass:1.0];
    [v26 setStiffness:v53];
    [v26 setDamping:v52];
    [v26 setVelocity:v42];
    [v26 setDuration:v25];
    [v26 setBeginTimeMode:@"relative"];
    [v26 setFillMode:*MEMORY[0x1E69797E0]];
    v49 = 1.0 / *(*(a1 + 32) + 40);
    *&v49 = v49;
    [v26 setSpeed:v49];
    [v26 setTimingFunction:*(a1 + 48)];

    goto LABEL_24;
  }

  [v11 setTimeOffset:0.0];
  [v11 setAutoreverses:0];
  [v11 setBeginTime:v23 - (v24 - v25) * *(*(a1 + 32) + 40)];
  v29 = [*(a1 + 32) isReversed];
  v30 = -1.0;
  if (!v29)
  {
    v30 = 1.0;
  }

  v31 = v30 / *(*(a1 + 32) + 40);
  *&v31 = v31;
  [v11 setSpeed:v31];
  [v11 setDuration:v24];
  [v11 setBeginTimeMode:@"relative"];
  v32 = *MEMORY[0x1E69797E0];
  [v11 setFillMode:*MEMORY[0x1E69797E0]];
  [v11 setTimingFunction:*(a1 + 48)];
  v26 = v11;
  if ([*(a1 + 32) isReversed])
  {
    [*(a1 + 32) internalDuration];
    v26 = v11;
    if (v24 < v33)
    {
      v34 = objc_alloc_init(MEMORY[0x1E6979308]);
      v54[0] = v11;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      [v34 setAnimations:v35];

      [*(a1 + 32) internalDuration];
      [v34 setDuration:?];
      [v34 setBeginTimeMode:@"relative"];
      [v11 beginTime];
      [v34 setBeginTime:?];
      v36 = [v11 delegate];
      [v34 setDelegate:v36];

      [v34 setFillMode:v32];
      v37 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      [v34 setTimingFunction:v37];

      v38 = 1.0 / *(*(a1 + 32) + 40);
      *&v38 = v38;
      [v34 setSpeed:v38];
      v26 = v34;

      [v11 setBeginTime:0.0];
      [v11 setDelegate:0];
      LODWORD(v39) = -1.0;
      [v11 setSpeed:v39];
LABEL_24:
    }
  }

  v50 = v26;
  *a7 = v26;

  return 0;
}

- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(CGFloat)durationFactor
{
  v9 = parameters;
  if (![(UIViewPropertyAnimator *)self isInterruptible])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:3199 description:{@"An animator %@ that is not interruptible cannot be continued or reversed!", self}];
  }

  if ([(UIViewPropertyAnimator *)self _animationState]== 4)
  {
    [(UIViewPropertyAnimator *)self unitDuration];
    [(UIViewPropertyAnimator *)self _continueWithTimingParameters:v9 duration:v7 * durationFactor];
    [(UIViewPropertyAnimator *)self _setKVOCompliantRunning:1];
  }
}

- (void)_scheduleCACommitFuture
{
  WeakRetained = objc_loadWeakRetained(&self->_caContinuationCommitFuture);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_caContinuationCommitFuture);
    [v4 invalidate];
  }

  v5 = [_UIAppCACommitFuture scheduledPostCommitFuture:0];
  objc_storeWeak(&self->_caContinuationCommitFuture, v5);
}

- (void)stopAnimation:(BOOL)a3
{
  v3 = a3;
  if (![(UIViewPropertyAnimator *)self isInterruptible])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:3222 description:{@"An animator %@ that is not interruptible cannot be stopped!", self}];
  }

  if ([(UIViewPropertyAnimator *)self state]== 2)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:3223 description:{@"Animator %@ is already stopped!", self}];
  }

  if ([(UIViewPropertyAnimator *)self _animationState]== 1 || [(UIViewPropertyAnimator *)self _animationState]== 4)
  {
    v6 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
    [UIView _stopAnimationWithUUID:v6 updatingModelValues:[(UIViewPropertyAnimator *)self _updatesModelValues]];

    if (v3)
    {
      [(UIViewPropertyAnimator *)self _setAnimationState:2];
    }

    else
    {
      [(UIViewPropertyAnimator *)self _setKVOCompliantState:2];
    }

    self->_pausedAsSpring = 0;
    [(UIViewPropertyAnimator *)self _setKVOCompliantRunning:0];
    [(UIViewPropertyAnimator *)self _setKVOCompliantReversed:0];
    if (v3)
    {
      [(UIViewPropertyAnimator *)self _setCompletions:0];
      [(UIViewPropertyAnimator *)self _setFinishingPosition:2];

      [(UIViewPropertyAnimator *)self _runCompletions:2 finished:0];
    }
  }
}

- (void)finalizeStoppedAnimationWithPosition:(int64_t)a3
{
  if ([(UIViewPropertyAnimator *)self _animationState]== 1 || [(UIViewPropertyAnimator *)self _animationState]== 4)
  {
    v5 = [(UIViewPropertyAnimator *)self isReversed];
    v6 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
    v19 = v6;
    if (v5)
    {
      [UIView _updateModelValuesForAnimationWithUUID:v6 useInitialValues:1 animatable:0 stateBlock:0 animationBlock:&__block_literal_global_607];
    }

    else
    {
      [UIView mapTrackedAnimations:v6 withBlock:&__block_literal_global_609];
    }
  }

  else if ([(UIViewPropertyAnimator *)self _animationState]== 2)
  {
    v7 = +[UIView _currentViewAnimationState];
    [(UIViewPropertyAnimator *)self _setFinishingPosition:a3];
    self->_hasFinalized = 1;
    if (a3 == 2)
    {
      v8 = [(UIViewPropertyAnimator *)self _viewAnimationState];
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __63__UIViewPropertyAnimator_finalizeStoppedAnimationWithPosition___block_invoke_3;
      v25[3] = &unk_1E70F60D8;
      v11 = v8;
      v26 = v11;
      v12 = v9;
      v27 = v12;
      [UIView mapTrackedAnimations:v10 withBlock:v25];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__UIViewPropertyAnimator_finalizeStoppedAnimationWithPosition___block_invoke_4;
      aBlock[3] = &unk_1E70F35B8;
      v13 = v12;
      v23 = v13;
      v14 = v11;
      v24 = v14;
      v15 = _Block_copy(aBlock);
      v16 = v15;
      if (v7)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __63__UIViewPropertyAnimator_finalizeStoppedAnimationWithPosition___block_invoke_5;
        v20[3] = &unk_1E70F3608;
        v21 = v15;
        [v7 _addCompletion:v20];
      }

      else
      {
        v15[2](v15);
      }
    }

    else
    {
      v17 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
      [UIView _finalizeStoppedAnimationWithUUID:v17 updatingModelValues:[(UIViewPropertyAnimator *)self _updatesModelValues] reverseAnimation:a3 != 0 state:v7 performCompletionsImmediately:1];

      if (!+[UIViewController _shouldDeferTransitions])
      {
        v18 = [(UIViewPropertyAnimator *)self _viewAnimationState];
        [v18 sendDelegateDidStopManually:a3 == 0];
      }
    }
  }
}

uint64_t __63__UIViewPropertyAnimator_finalizeStoppedAnimationWithPosition___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != a2)
  {
    [*(a1 + 40) addObject:{a2, v2, v3}];
  }

  return 0;
}

uint64_t __63__UIViewPropertyAnimator_finalizeStoppedAnimationWithPosition___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E695DFB0] null];
        [v7 animationDidStop:v8 finished:0];

        [v7 sendDelegateDidStopManually:0];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *(a1 + 40);
  v10 = [MEMORY[0x1E695DFB0] null];
  [v9 animationDidStop:v10 finished:0];

  return [*(a1 + 40) sendDelegateDidStopManually:0];
}

- (double)computeCurrentTimingFunction:(double)a3
{
  v5 = [(UIViewPropertyAnimator *)self _animationState];
  if ((v5 - 1) < 3)
  {
LABEL_2:
    timingProviderWhenContinued = self->_timingProviderWhenContinued;
    if (timingProviderWhenContinued)
    {
      v7 = timingProviderWhenContinued;
    }

    else
    {
      v7 = [(UIViewPropertyAnimator *)self timingParameters];
    }

    v9 = v7;
    [(UIViewPropertyAnimator *)self duration];
    a3 = computeTimingProvider(v9, v11, a3);
    goto LABEL_11;
  }

  if (v5 == 4)
  {
    timingFunctionWhenPaused = self->_timingFunctionWhenPaused;
    if (timingFunctionWhenPaused)
    {
      v9 = timingFunctionWhenPaused;
    }

    else
    {
      v9 = self->_timingFunctionPriorToPause;
      if (!v9)
      {
        goto LABEL_2;
      }
    }

    *&v10 = a3;
    [(CAMediaTimingFunction *)v9 _solveForInput:v10];
    a3 = v12;
LABEL_11:
  }

  return a3;
}

- (double)computeInverseOfCurrentTimingFunction:(double)a3
{
  v5 = [(UIViewPropertyAnimator *)self _animationState];
  if ((v5 - 1) < 3)
  {
    timingProviderWhenContinued = self->_timingProviderWhenContinued;
    if (timingProviderWhenContinued)
    {
      v7 = timingProviderWhenContinued;
    }

    else
    {
      v7 = [(UIViewPropertyAnimator *)self timingParameters];
    }

    v9 = v7;
    [(UIViewPropertyAnimator *)self duration];
    v10 = computeInverseOfTimingProvider(v9, v11, a3);
    goto LABEL_9;
  }

  if (v5 == 4)
  {
    v8 = self->_timingFunctionWhenPaused;
    if (!v8)
    {
      v13 = self->_timingProviderWhenContinued;
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = [(UIViewPropertyAnimator *)self timingParameters];
      }

      v15 = v14;
      [(UIViewPropertyAnimator *)self duration];
      a3 = computeInverseOfTimingProvider(v15, v16, a3);

      v9 = 0;
      goto LABEL_10;
    }

    v9 = v8;
    v10 = computeInverseOfTimingFunction(v8, a3);
LABEL_9:
    a3 = v10;
LABEL_10:
  }

  return a3;
}

- (double)pacedFractionComplete
{
  [(UIViewPropertyAnimator *)self fractionComplete];
  if (result > 0.00001 && result < 0.99999)
  {

    [(UIViewPropertyAnimator *)self computeCurrentTimingFunction:?];
  }

  return result;
}

- (void)setPacedFractionComplete:(double)a3
{
  if (a3 > 0.00001 && a3 < 0.99999)
  {
    [(UIViewPropertyAnimator *)self computeInverseOfCurrentTimingFunction:?];
  }

  [(UIViewPropertyAnimator *)self setFractionComplete:?];
}

- (double)fractionComplete
{
  v3 = [(UIViewPropertyAnimator *)self _animationState];
  result = 0.0;
  if (v3 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_caContinuationCommitFuture);
    if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_caContinuationCommitFuture), v8 = [v7 _isFinished], v7, v6, (v8 & 1) != 0))
    {
      v9 = [(UIViewPropertyAnimator *)self _viewAnimationState];
      [v9 _canonicalTrackedUnpacedFractionComplete];
      v11 = v10;

      if (v11 > -1.0 || ((fractionComplete = self->_fractionComplete, fractionComplete >= 0.0) ? (v13 = fractionComplete > 1.0) : (v13 = 1), v13))
      {
        fractionComplete = v11;
      }

      goto LABEL_15;
    }
  }

  else if (v3 != 4 && v3 != 2)
  {
    return result;
  }

  fractionComplete = self->_fractionComplete;
LABEL_15:
  result = 1.0;
  if (fractionComplete != 0.99999)
  {
    result = 0.0;
    if (fractionComplete != 0.00001)
    {
      result = 1.0;
      if (fractionComplete <= 1.0)
      {
        result = fractionComplete;
      }

      if (fractionComplete < 0.0)
      {
        return 0.0;
      }
    }
  }

  return result;
}

- (void)setFractionComplete:(double)a3
{
  v4 = 0.99999;
  if (a3 <= 0.99999)
  {
    v4 = a3;
  }

  if (a3 >= 0.00001)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.00001;
  }

  if ([(UIViewPropertyAnimator *)self _animationState]== 4)
  {
    if (v5 != self->_fractionComplete)
    {
      [(UIViewPropertyAnimator *)self willChangeValueForKey:@"fractionComplete"];
      self->_fractionComplete = v5;
      [(UIViewPropertyAnimator *)self _updateAnimationsToFractionComplete:v5];

      [(UIViewPropertyAnimator *)self didChangeValueForKey:@"fractionComplete"];
    }
  }

  else if ([(UIViewPropertyAnimator *)self _animationState]== 3)
  {
    [(UIViewPropertyAnimator *)self startAnimationAsPaused:1];

    [(UIViewPropertyAnimator *)self setFractionComplete:v5];
  }

  else if ([(UIViewPropertyAnimator *)self _animationState]== 1)
  {
    [(UIViewPropertyAnimator *)self pauseAnimationTransiently];
    [(UIViewPropertyAnimator *)self setFractionComplete:v5];

    [(UIViewPropertyAnimator *)self _continueWithTimingParameters:0 duration:0.0];
  }
}

- (unint64_t)_trackedAnimationsCount
{
  v2 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
  v3 = [UIView trackedAnimationsCount:v2];

  return v3;
}

- (void)_updateAnimationsToFractionComplete:(double)a3
{
  if ([(UIViewPropertyAnimator *)self isReversed])
  {
    a3 = 1.0 - a3;
  }

  v5 = [(UIViewPropertyAnimator *)self _trackingIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__UIViewPropertyAnimator__updateAnimationsToFractionComplete___block_invoke;
  v6[3] = &unk_1E70F6100;
  v6[4] = self;
  *&v6[5] = a3;
  [UIView modifyTrackedAnimations:v5 removeOnCompletion:0 animationFactory:0 block:v6];
}

uint64_t __62__UIViewPropertyAnimator__updateAnimationsToFractionComplete___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void **a7)
{
  v11 = a4;
  v12 = *a7;
  v13 = a6;
  v14 = a3;
  v15 = [v12 copy];
  [*(a1 + 32) _effectiveAdditiveOffsetForKey:v13 inLayer:v14];
  v17 = v16;

  if (v17 <= 0.0)
  {
    v28 = *(a1 + 40);
    v29 = v15;
    goto LABEL_10;
  }

  v18 = *(a1 + 32);
  if (*(v18 + 166) != 1 || !*(v18 + 96) || (v19 = *(v18 + 104)) == 0)
  {
    v30 = *(a1 + 40);
    v23 = 0.0;
    if (v30 <= v17)
    {
      goto LABEL_11;
    }

    v28 = (v30 - v17) / (1.0 - v17);
    v29 = v11;
LABEL_10:
    [v29 duration];
    v23 = v28 * v31;
    goto LABEL_11;
  }

  v20 = *(a1 + 40);
  *&v20 = v20;
  [v19 _solveForInput:v20];
  v22 = computeInverseOfTimingFunction(*(*(a1 + 32) + 96), v21);
  v23 = 0.0;
  if (v22 > v17)
  {
    v24 = (v22 - v17) / (1.0 - v17);
    *&v24 = v24;
    [*(*(a1 + 32) + 96) _solveForInput:v24];
    v26 = v25;
    [v11 duration];
    v23 = v27 * v26;
  }

LABEL_11:
  [v15 setFillMode:*MEMORY[0x1E69797E0]];
  [v15 setTimeOffset:v23];
  v32 = v15;
  *a7 = v15;

  return 0;
}

- (void)_setupAnimationTracking:(id)a3
{
  v4 = a3;
  v5 = +[UIView _startAnimationTracking];
  trackingIdentifier = self->_trackingIdentifier;
  self->_trackingIdentifier = v5;

  [objc_opt_class() _saveReferenceToPropertyAnimator:self];
  v4[2](v4);

  +[UIView _finishAnimationTracking];
  if ([(UIViewPropertyAnimator *)self _animationState]== 4)
  {
    v7 = [(UIViewPropertyAnimator *)self timingFunctionForPause];
    [(UIViewPropertyAnimator *)self _pauseAnimation:v7 fromStart:1];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    -[UIViewPropertyAnimator _setKVOCompliantReversed:](self, "_setKVOCompliantReversed:", [v9 isReversed]);
    -[UIViewPropertyAnimator _setKVOCompliantRunning:](self, "_setKVOCompliantRunning:", [v9 isRunning]);
    v11 = [v9 _animationState];
    if (v11)
    {
      [(UIViewPropertyAnimator *)self _setKVOCompliantState:v11];
    }
  }
}

- (void)startAnimationAsPaused:(BOOL)a3
{
  v3 = a3;
  if (a3 && ![(UIViewPropertyAnimator *)self isInterruptible])
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:3539 description:{@"An animator (%@) can be only started in the paused state if it is interruptible!", self}];
  }

  if ([(UIViewPropertyAnimator *)self _animationState])
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v7 = [objc_opt_class() _currentPropertyAnimator];
  [(UIViewPropertyAnimator *)self clearAnimationDescriptions];
  v8 = objc_opt_new();
  [(UIViewPropertyAnimator *)self _setViewAnimationState:v8];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke;
  aBlock[3] = &unk_1E70F6128;
  v30 = v6;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke_2;
  v25[3] = &unk_1E70F6150;
  v10 = v7;
  v26 = v10;
  v11 = v9;
  v27 = self;
  v28 = v11;
  v12 = _Block_copy(v25);
  [(UIViewPropertyAnimator *)self _setKVOCompliantState:1 fromState:0];
  if (!v3 && (-[UIViewPropertyAnimator isInterruptible](self, "isInterruptible") || [v10 isRunning]))
  {
    [(UIViewPropertyAnimator *)self _setKVOCompliantRunning:1];
  }

  if (v10 && ![(UIViewPropertyAnimator *)self isInterruptible])
  {
    -[UIViewPropertyAnimator _setKVOCompliantReversed:](self, "_setKVOCompliantReversed:", [v10 isReversed]);
  }

  if (v3)
  {
    [(UIViewPropertyAnimator *)self _setAnimationState:4];
  }

  [(UIViewPropertyAnimator *)self _setStarting:1];
  v13 = [(UIViewPropertyAnimator *)self isInterruptible];
  if (!v10)
  {
    if (v13)
    {
      [(UIViewPropertyAnimator *)self _setupAnimationTracking:v12];
      if (!v3)
      {
        goto LABEL_24;
      }

LABEL_28:
      v21 = [(UIViewPropertyAnimator *)self _viewAnimationState];
      -[UIViewPropertyAnimator _setStarting:](self, "_setStarting:", [v21 _didEndCount] == 0);

      goto LABEL_29;
    }

    v20 = [MEMORY[0x1E696AFB0] UUID];
    [(UIViewPropertyAnimator *)self _setTrackingIdentifier:v20];

LABEL_27:
    [objc_opt_class() _saveReferenceToPropertyAnimator:self];
    v12[2](v12);
    if (!v3)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (!v13)
  {
    objc_storeWeak(&self->_outerAnimator, v10);
    [v10 addObserver:self forKeyPath:@"running" options:1 context:0];
    [v10 addObserver:self forKeyPath:@"state" options:1 context:0];
    [v10 addObserver:self forKeyPath:@"reversed" options:1 context:0];
    v19 = [MEMORY[0x1E696AFB0] UUID];
    [(UIViewPropertyAnimator *)self _setTrackingIdentifier:v19];

    [UIViewPropertyAnimator animator:self isObserving:v10];
    goto LABEL_27;
  }

  v14 = [UIView _enableAnimationTracking:1];
  v15 = +[UIView _currentViewAnimationState];
  [(UIViewPropertyAnimator *)self _setTrackingIdentifier:v14];
  [objc_opt_class() _saveReferenceToPropertyAnimator:self];
  [(UIViewPropertyAnimator *)self _setupAssociatedViewAnimationState:v15 options:[(UIViewPropertyAnimator *)self _resolveEffectiveAnimationOptions]];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke_4;
  v23[3] = &unk_1E70F35B8;
  v23[4] = self;
  v24 = v14;
  v16 = v11[2];
  v17 = v14;
  v16(v11, v23);
  if (v3)
  {
    v18 = [(UIViewPropertyAnimator *)self timingFunctionForPause];
    [(UIViewPropertyAnimator *)self _pauseAnimation:v18 fromStart:1];
  }

  if (v3)
  {
    goto LABEL_28;
  }

LABEL_24:
  [(UIViewPropertyAnimator *)self _setStarting:0];
LABEL_29:
}

void __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v5 = [v2 _viewAnimationState];
    [v5 _performWithCompletionCallbacksDisabledOnPop:v3];
  }

  else
  {
    v4 = a2[2];
    v5 = a2;
    v4();
  }
}

void __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewAnimationState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke_3;
  v6[3] = &unk_1E70F35B8;
  v3 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v2;
  v4 = *(v3 + 16);
  v5 = v2;
  v4(v3, v6);
}

void __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolveEffectiveAnimationOptions];
  v3 = [*(a1 + 32) _viewAnimationState];
  [(UIViewAnimationState *)v3 pushWithViewAnimationID:v2 options:0 context:?];

  [*(a1 + 32) _setupAssociatedViewAnimationState:*(a1 + 40) options:v2];
  [*(a1 + 32) _runAnimations];

  +[UIViewAnimationState popAnimationState];
}

void __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewAnimationState];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__UIViewPropertyAnimator_startAnimationAsPaused___block_invoke_5;
  v4[3] = &unk_1E70F3590;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [UIView _performWithState:v2 trackingIdentifier:v3 duration:v4 delay:-1.0 animations:-1.0];
}

- (void)startAnimationAfterDelay:(double)a3
{
  if ([(UIViewPropertyAnimator *)self _animationState]== 4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIViewPropertyAnimator.m" lineNumber:3644 description:{@"A paused animator (%@) cannot be started with a delay!", self}];
  }

  if (a3 < 0.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The delay should be greater than or equal to zero."];
  }

  self->_delay = a3;

  [(UIViewPropertyAnimator *)self startAnimation];
}

- (void)interactionProgressDidUpdate:(id)a3
{
  v4 = a3;
  if ([(UIViewPropertyAnimator *)self _animationState]== 4)
  {
    [v4 percentComplete];
    [(UIViewPropertyAnimator *)self setFractionComplete:?];
  }
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  v4 = a4;
  [a3 removeProgressObserver:self];
  [(UIViewPropertyAnimator *)self setReversed:!v4];

  [(UIViewPropertyAnimator *)self continueAnimation];
}

@end