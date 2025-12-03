@interface UIViewAnimationState
+ (id)originalAnimationForKeyPath:(id)path inLayer:(id)layer;
+ (void)_addConstraintPendingAnimation:(id)animation container:(id)container;
+ (void)_addSystemPostAnimationAction:(id)action;
+ (void)_addViewForConstraintBasedAnimation:(id)animation;
+ (void)_flushUpdates;
+ (void)popAnimationState;
+ (void)pushViewAnimationState:(int)state options:(uint64_t)options context:;
- (BOOL)_addCompletion:(id)completion;
- (BOOL)_addCompletionWithPosition:(id)position;
- (BOOL)_allowsHitTesting;
- (BOOL)_allowsUserInteraction;
- (BOOL)_allowsUserInteractionToCutOffEndOfAnimation;
- (BOOL)_hasDeferredAnimationForView:(id)view key:(id)key;
- (BOOL)_shouldAnimateAdditivelyForKey:(id)key onLayer:(id)layer forView:(id)view;
- (BOOL)_shouldStartFromCurrentStateForLayer:(id)layer key:(id)key forView:(id)view;
- (CAFrameRateRange)preferredFrameRateRange;
- (UIViewAnimationState)init;
- (double)_canonicalTrackedUnpacedFractionComplete;
- (double)_elapsedTimeForCanonicallyTrackedAnimation;
- (double)_unpacedFractionCompleteForAnimation:(id)animation inLayer:(id)layer duration:(double)duration;
- (id)_canonicalTrackedLayerAnimationInLayer:(id *)layer;
- (id)_createDeferredAnimationForKey:(id)key ignoringKeyFrames:(BOOL)frames;
- (id)_deferredAnimationForView:(id)view key:(id)key ignoringKeyFrames:(BOOL)frames;
- (id)_outerPropertyAnimator:(BOOL)animator;
- (id)_updateAnimationFrameWithAnimationProperties:(id)properties;
- (id)actionForLayer:(id)layer forKey:(id)key forView:(id)view;
- (id)animationForLayer:(id)layer forKey:(id)key forView:(id)view;
- (uint64_t)_requestsFlushUpdatesByDefault;
- (void)_acceptEarlyAnimationCutoff:(id)cutoff;
- (void)_addAnimationStateForTracking:(id)tracking;
- (void)_finalizeDeferredAnimations;
- (void)_incrementDidEndCount;
- (void)_performWithCompletionCallbacksDisabledOnPop:(id)pop;
- (void)_prepareForViewAnimationAfterPush;
- (void)_removeAnimationStateFromTrackingMap:(BOOL)map disableTrackingIfNeeded:(BOOL)needed;
- (void)_runAlongsideAnimations;
- (void)_runConstraintBasedLayoutAnimations;
- (void)_setAlongsideAnimations:(id)animations;
- (void)_setFinishedPosition:(int64_t)position;
- (void)_trackAnimation:(id)animation nonAdditiveAnimation:(id)additiveAnimation withAnimationKey:(id)key forKeyPath:(id)path inLayer:(id)layer;
- (void)_trackObject:(id)object withAnimationPropertyName:(id)name inLayer:(id)layer;
- (void)_transferAnimationToTrackingAnimator:(id)animator;
- (void)_transformIntoAdditiveAnimationAndNoteOriginal:(id)original inLayer:(id)layer animationKey:(id)key;
- (void)_untrackAnimationsWithIdentifier:(id)identifier keyPath:(id)path inLayer:(id)layer removeFromLayer:(BOOL)fromLayer;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)configureAnimation:(id)animation forLayer:(id)layer forKey:(id)key;
- (void)pop;
- (void)pushWithViewAnimationID:(int)d options:(uint64_t)options context:;
- (void)sendDelegateAnimationDidStop:(id)stop finished:(BOOL)finished;
- (void)sendDelegateDidStopManually:(BOOL)manually;
- (void)setAnimationAttributes:(id)attributes skipDelegateAssignment:(BOOL)assignment customCurve:(id)curve;
- (void)setupWithDuration:(double)duration delay:(double)delay view:(id)view options:(unint64_t)options factory:(id)factory parentState:(id)state start:(id)start completion:(id)self0;
@end

@implementation UIViewAnimationState

- (void)_prepareForViewAnimationAfterPush
{
  if (qword_1EA994720 && !self->_belongsToTrackingAnimator && [(UIViewAnimationState *)self _runsAlongsideAnimations])
  {
    [(UIViewAnimationState *)self _setAlongsideAnimations:qword_1EA994720];
    v3 = qword_1EA994720;
    qword_1EA994720 = 0;
  }

  if (qword_1EA994710)
  {
    if (!self->_trackedAnimations)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      trackedAnimations = self->_trackedAnimations;
      self->_trackedAnimations = v4;
    }

    if (!self->_uuid)
    {
      [(UIViewAnimationState *)self _addAnimationStateForTracking:qword_1EA994710];
      WeakRetained = objc_loadWeakRetained(&self->_propertyAnimator);
      v7 = *(self + 172);
      if ((v7 & 0x20) != 0)
      {
        v8 = 64;
        if (WeakRetained)
        {
          v10 = WeakRetained;
          v9 = [WeakRetained isInterruptible] == 0;
          WeakRetained = v10;
          if (v9)
          {
            v8 = 64;
          }

          else
          {
            v8 = 0;
          }

          v7 = *(self + 172);
        }
      }

      else
      {
        v8 = 0;
      }

      *(self + 172) = v7 & 0xBF | v8;
    }
  }
}

+ (void)popAnimationState
{
  v0 = objc_opt_self();
  if (__currentViewAnimationState)
  {
    v1 = v0;
    v9 = __currentViewAnimationState;
    [v9 pop];
    if (*(__currentViewAnimationState + 16))
    {
      v2 = *(__currentViewAnimationState + 16);
    }

    else
    {
      v2 = &stru_1EFB14550;
    }

    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v2, @"name", *(v9 + 4), @"delegate", 0}];
    v4 = +[NSNotificationCenter uikitInternalCenter];
    [v4 postNotificationName:@"UIViewAnimationDidCommitInternalNotification" object:v1 userInfo:v3];

    v5 = *(__currentViewAnimationState + 16);
    objc_storeStrong(&__currentViewAnimationState, *(__currentViewAnimationState + 8));
    if (!*(v9 + 42) && (*(v9 + 173) & 1) == 0)
    {
      [v9 sendDelegateAnimationDidStop:0 finished:1];
      v6 = *(v9 + 4);
      *(v9 + 4) = 0;
    }

    v7 = __currentViewAnimationState;
    if (!__currentViewAnimationState && qword_1EA994710)
    {
      if (__animate == 1 && ([v5 isEqualToString:@"UITextSelectionView"] & 1) == 0 && (byte_1EA9946CA & 1) == 0)
      {
        v8 = qword_1EA994710;
        qword_1EA994710 = 0;
      }

      v7 = __currentViewAnimationState;
    }

    if (!v7)
    {
      [qword_1EA994738 removeAllObjects];
    }
  }
}

- (void)_runAlongsideAnimations
{
  alongsideAnimations = self->_alongsideAnimations;
  if (alongsideAnimations)
  {
    alongsideAnimations[2](alongsideAnimations, a2);
    v4 = self->_alongsideAnimations;
    self->_alongsideAnimations = 0;
  }
}

- (void)_runConstraintBasedLayoutAnimations
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_viewsPendingConstraintBasedAnimation count])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v3 = [(NSMutableArray *)self->_viewsPendingConstraintBasedAnimation count];
    v29[3] = 0;
    if (v3)
    {
      v4 = 0;
      v5 = &unk_1E7120FA0;
      do
      {
        v6 = [(NSMutableArray *)self->_viewsPendingConstraintBasedAnimation objectAtIndex:v4];
        layer = [v6 layer];
        context = [layer context];
        if (context)
        {
          v9 = 0;
        }

        else
        {
          _layoutEngine = [v6 _layoutEngine];
          delegate = [_layoutEngine delegate];
          v9 = delegate == 0;
        }

        if ([v6 _is_needsLayout])
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          v13 = [qword_1EA994738 objectForKey:v6];
          LODWORD(v12) = [v13 count] != 0;

          if (((v9 | v12) & 1) == 0)
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            _mutableLayoutArrangements = [v6 _mutableLayoutArrangements];
            v12 = [_mutableLayoutArrangements countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v12)
            {
              v15 = v5;
              v16 = *v25;
              while (2)
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v25 != v16)
                  {
                    objc_enumerationMutation(_mutableLayoutArrangements);
                  }

                  if ([*(*(&v24 + 1) + 8 * i) _awaitingAnimationLayoutPass])
                  {
                    LOBYTE(v12) = 1;
                    goto LABEL_20;
                  }
                }

                v12 = [_mutableLayoutArrangements countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }

LABEL_20:
              v5 = v15;
            }
          }
        }

        if (!v9 && (v12 & 1) != 0)
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __59__UIViewAnimationState__runConstraintBasedLayoutAnimations__block_invoke;
          v19[3] = v5;
          v20 = v6;
          selfCopy = self;
          v22 = &v28;
          v23 = v3;
          [v20 _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v19];
        }

        v4 = v29[3] + 1;
        v29[3] = v4;
      }

      while (v4 < v3);
    }

    viewsPendingConstraintBasedAnimation = self->_viewsPendingConstraintBasedAnimation;
    self->_viewsPendingConstraintBasedAnimation = 0;

    _Block_object_dispose(&v28, 8);
  }
}

- (UIViewAnimationState)init
{
  v7.receiver = self;
  v7.super_class = UIViewAnimationState;
  v2 = [(UIViewAnimationState *)&v7 init];
  if (v2)
  {
    v3 = qword_1EA994710 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    trackedAnimations = v2->_trackedAnimations;
    v2->_trackedAnimations = v4;
  }

  return v2;
}

- (uint64_t)_requestsFlushUpdatesByDefault
{
  if (result)
  {
    v1 = result;
    result = dyld_program_sdk_at_least();
    if (result)
    {
      v2 = _UIInternalPreferenceUsesDefault(&dword_1ED48B820, @"InProcessAnimationsFlushUpdates", _UIInternalPreferenceUpdateBool);
      result = 0;
      if ((v2 & 1) == 0)
      {
        if (byte_1ED48B824)
        {
          result = [v1 isInProcess];
          if (result)
          {
            if ((_UIInternalPreferenceUsesDefault(&dword_1ED48B828, @"SystemAppInProcessAnimationsFlushUpdates", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48B82C)
            {
              return [UIApp isFrontBoard] ^ 1;
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

- (void)pop
{
  selfCopy = self;
  [(UIViewAnimationState *)self _runAlongsideAnimations];
  [(UIViewAnimationState *)selfCopy _finalizeDeferredAnimations];
  transitionView = selfCopy->_transitionView;
  if (transitionView)
  {
    v4 = 0;
    transition = selfCopy->_transition;
    v6 = @"pageCurl";
    if (transition <= 100)
    {
      if (transition <= 3)
      {
        switch(transition)
        {
          case 1:
            v6 = @"oglFlip";
            v4 = @"fromLeft";
            goto LABEL_33;
          case 2:
            v6 = @"oglFlip";
            v4 = @"fromRight";
            goto LABEL_33;
          case 3:
            goto LABEL_33;
        }
      }

      else
      {
        if (transition <= 5)
        {
          if (transition != 4)
          {
            v4 = 0;
            v6 = @"fade";
            goto LABEL_33;
          }

          goto LABEL_26;
        }

        if (transition == 6)
        {
          v6 = @"oglFlip";
          v4 = @"fromTop";
          goto LABEL_33;
        }

        if (transition == 7)
        {
          v6 = @"oglFlip";
          v4 = @"fromBottom";
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (transition <= 104)
      {
        if (transition <= 102)
        {
          if (transition == 101)
          {
            goto LABEL_33;
          }

LABEL_26:
          v4 = 0;
          v6 = @"pageUnCurl";
          goto LABEL_33;
        }

        v4 = 0;
        if (transition == 103)
        {
          v6 = @"suckEffect";
        }

        else
        {
          v6 = @"spewEffect";
        }

LABEL_33:
        animation = [MEMORY[0x1E6979538] animation];
        [animation setType:v6];
        [animation setSubtype:v4];
        [(UIViewAnimationState *)selfCopy setAnimationAttributes:animation skipDelegateAssignment:0];
        frameInterval = selfCopy->_frameInterval;
        if (frameInterval > 0.0)
        {
          [animation setFrameInterval:selfCopy->_frameInterval];
        }

        if (CAFrameRateRangeIsEqualToRange(selfCopy->_preferredFrameRateRange, *MEMORY[0x1E69792B8]))
        {
          if (frameInterval > 0.0)
          {
LABEL_40:
            if ((*(selfCopy + 172) & 4) != 0)
            {
              [animation setTransitionFlags:3];
            }

            if (selfCopy->_transitionOptions)
            {
              [animation setOptions:?];
            }

            v13 = selfCopy->_transitionView;
            if (selfCopy->_useBackingOutermostLayerForTransition)
            {
              _backing_outermostLayer = [(UIView *)v13 _backing_outermostLayer];
            }

            else
            {
              _backing_outermostLayer = v13->_layer;
            }

            v15 = _backing_outermostLayer;
            if ([UIView _shouldTrackActionWithAnimator:animation])
            {
              v16 = [UIViewPropertyAnimator _trackNonAdditiveAnimationWithAnimator:animation forLayer:v15 forKey:@"transition"];
            }

            [(CALayer *)v15 addAnimation:animation forKey:0];
            if (+[UIView _isAnimationTracking])
            {
              [(UIViewAnimationState *)selfCopy _trackAnimation:animation withAnimationKey:@"transition" forKeyPath:@"transition" inLayer:v15];
            }

            transitionView = selfCopy->_transitionView;
            goto LABEL_52;
          }

          LODWORD(v10) = 1123024896;
          LODWORD(v9) = 30.0;
          LODWORD(v11) = 1123024896;
          [animation setPreferredFrameRateRange:{v9, v10, v11}];
          updateReason = 1048609;
        }

        else
        {
          *&v9 = selfCopy->_preferredFrameRateRange.minimum;
          *&v10 = selfCopy->_preferredFrameRateRange.maximum;
          *&v11 = selfCopy->_preferredFrameRateRange.preferred;
          [animation setPreferredFrameRateRange:{v9, v10, v11}];
          updateReason = selfCopy->_updateReason;
        }

        [animation setHighFrameRateReason:updateReason];
        goto LABEL_40;
      }

      if (transition <= 106)
      {
        v4 = 0;
        if (transition == 105)
        {
          v6 = @"cameraIris";
        }

        else
        {
          v6 = @"cameraIrisHollowClose";
        }

        goto LABEL_33;
      }

      if (transition == 107)
      {
        v4 = 0;
        v6 = @"cameraIrisHollowOpen";
        goto LABEL_33;
      }

      if (transition == 108)
      {
        v4 = 0;
        v6 = @"genieEffect";
        goto LABEL_33;
      }
    }

LABEL_52:
    selfCopy->_transitionView = 0;
  }

  filterView = selfCopy->_filterView;
  if (filterView)
  {
    filter = selfCopy->_filter;
    if ((filter & 0xFFFFFFFE) == 0xC8)
    {
      if (filter == 200)
      {
        [(UIView *)filterView bounds];
        filterValue = selfCopy->_filterValue;
        _UIViewCurlUpTransitionToTime(&filterValue, v19, v20);
        v22 = v21;
        v23 = objc_alloc(MEMORY[0x1E6979378]);
        v24 = [v23 initWithType:*MEMORY[0x1E6979CD8]];
        [v24 setName:@"curl"];
        [v24 setCachesInputImage:1];
        LODWORD(v25) = 1128792064;
        v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        [v24 setValue:v26 forKey:@"inputRadius"];

        LODWORD(v27) = 1083258398;
        v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
        [v24 setValue:v28 forKey:@"inputAngle"];

        LODWORD(v29) = v22;
        v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
        [v24 setValue:v30 forKey:@"inputTime"];

        v31 = [MEMORY[0x1E695DEC8] arrayWithObject:v24];
        layer = [(UIView *)selfCopy->_filterView layer];
        [layer setFilters:v31];
      }

      v33 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.curl.inputTime"];
      [(UIViewAnimationState *)selfCopy setAnimationAttributes:v33];
      [v33 setFillMode:*MEMORY[0x1E69797F0]];
      if (filter == 200)
      {
        v34 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
        [v33 setFromValue:v34];

        [v33 setToValue:0];
        layer2 = [(UIView *)selfCopy->_filterView layer];
        [layer2 addAnimation:v33 forKey:0];
      }

      else
      {
        [v33 setFromValue:0];
        [v33 setToValue:0];
        layer3 = [(UIView *)selfCopy->_filterView layer];
        [layer3 addAnimation:v33 forKey:0];

        layer4 = [(UIView *)selfCopy->_filterView layer];
        v38 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
        [layer4 setValue:v38 forKeyPath:@"filters.curl.inputTime"];

        [(UIView *)selfCopy->_filterView performSelector:sel__clearAnimationFilters withObject:0 afterDelay:selfCopy->_delay + selfCopy->_duration];
      }

      filterView = selfCopy->_filterView;
    }

    selfCopy->_filterView = 0;
  }

  [(UIViewAnimationState *)selfCopy _runConstraintBasedLayoutAnimations];
  do
  {
    flushUpdates = selfCopy->_flushUpdates;
    if (flushUpdates)
    {
      break;
    }

    selfCopy = selfCopy->_nextState;
  }

  while (selfCopy);
  v40 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_AnimationsFlushUpdates, @"AnimationsFlushUpdates", _UIInternalPreferenceUpdateInteger);
  v41 = qword_1ED48B798;
  if (v40)
  {
    v41 = 0;
  }

  if (v41 != -1 && (v41 == 1 || flushUpdates))
  {

    +[UIViewAnimationState _flushUpdates];
  }
}

- (void)_finalizeDeferredAnimations
{
  v18 = *MEMORY[0x1E69E9840];
  for (i = self->_viewToDeferredAnimationsMap; i; i = self->_viewToDeferredAnimationsMap)
  {
    v4 = i;
    viewToDeferredAnimationsMap = self->_viewToDeferredAnimationsMap;
    self->_viewToDeferredAnimationsMap = 0;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * j);
          v12 = [(NSMapTable *)v6 objectForKey:v11];
          [v12 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_711];
          [v11 _generateDeferredAnimations:v12];
        }

        v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)_incrementDidEndCount
{
  ++self->_didEndCount;
  if (self->_belongsToTrackingAnimator)
  {
    nextState = self->_nextState;
    if (nextState)
    {
      [(UIViewAnimationState *)nextState _incrementDidEndCount];
    }
  }
}

- (CAFrameRateRange)preferredFrameRateRange
{
  minimum = self->_preferredFrameRateRange.minimum;
  maximum = self->_preferredFrameRateRange.maximum;
  preferred = self->_preferredFrameRateRange.preferred;
  result.preferred = preferred;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

- (double)_canonicalTrackedUnpacedFractionComplete
{
  v10 = 0;
  v3 = [(UIViewAnimationState *)self _canonicalTrackedLayerAnimationInLayer:&v10];
  v4 = v10;
  beginTimeMode = [v3 beginTimeMode];
  v6 = [beginTimeMode isEqualToString:*MEMORY[0x1E6979588]];

  v7 = -1.0;
  if (v6)
  {
    [v3 duration];
    [(UIViewAnimationState *)self _unpacedFractionCompleteForAnimation:v3 inLayer:v4 duration:?];
    v7 = v8;
  }

  return v7;
}

- (BOOL)_allowsUserInteraction
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  delegate = self->_delegate;

  return [delegate _allowsUserInteraction];
}

- (BOOL)_allowsUserInteractionToCutOffEndOfAnimation
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [delegate _allowsUserInteractionToCutOffEndOfAnimation];
}

+ (void)_flushUpdates
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v0 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1, 0];
  v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v6;
    do
    {
      v4 = 0;
      do
      {
        if (*v6 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v5 + 1) + 8 * v4++) layoutBelowIfNeeded];
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
    }

    while (v2);
  }
}

- (void)pushWithViewAnimationID:(int)d options:(uint64_t)options context:
{
  v7 = a2;
  v8 = v7;
  if (self)
  {
    v21 = v7;
    v9 = [v7 copy];
    v10 = *(self + 16);
    *(self + 16) = v9;

    *(self + 24) = options;
    *(self + 40) = 0x3FC999999999999ALL;
    if ((d & 0x10000000) != 0)
    {
      v12 = 1;
      *(self + 232) = 1;
    }

    else
    {
      _requestsFlushUpdatesByDefault = [(UIViewAnimationState *)self _requestsFlushUpdatesByDefault];
      *(self + 232) = _requestsFlushUpdatesByDefault;
      if (_requestsFlushUpdatesByDefault)
      {
        v12 = 1;
      }

      else
      {
        v19 = __currentViewAnimationState;
        if (__currentViewAnimationState)
        {
          do
          {
            v12 = *(v19 + 232);
            if (v12)
            {
              break;
            }

            v19 = *(v19 + 8);
          }

          while (v19);
        }

        else
        {
          v12 = 0;
        }
      }
    }

    v13 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_AnimationsFlushUpdates, @"AnimationsFlushUpdates", _UIInternalPreferenceUpdateInteger);
    v14 = qword_1ED48B798;
    if (v13)
    {
      v14 = 0;
    }

    if (v14 != -1 && (v14 == 1 || v12 != 0))
    {
      +[UIViewAnimationState _flushUpdates];
    }

    if (__currentViewAnimationState)
    {
      WeakRetained = objc_loadWeakRetained((__currentViewAnimationState + 280));
      if (WeakRetained)
      {
        v17 = 32;
      }

      else
      {
        v17 = *(__currentViewAnimationState + 172) & 0x20;
      }

      *(self + 172) = *(self + 172) & 0xDF | v17;

      v18 = __currentViewAnimationState;
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong((self + 8), v18);
    objc_storeStrong(&__currentViewAnimationState, self);
    v8 = v21;
    if (__animate == 1)
    {
      v20 = [v21 isEqualToString:@"UITextSelectionView"];
      v8 = v21;
      if ((v20 & 1) == 0)
      {
        [self _prepareForViewAnimationAfterPush];
        v8 = v21;
      }
    }
  }
}

+ (void)pushViewAnimationState:(int)state options:(uint64_t)options context:
{
  v8 = a2;
  v6 = objc_alloc_init(objc_opt_self());
  v7 = v6;
  if (v6)
  {
    [(UIViewAnimationState *)v6 pushWithViewAnimationID:v8 options:state context:options];
  }
}

- (void)_performWithCompletionCallbacksDisabledOnPop:(id)pop
{
  v4 = *(self + 173);
  *(self + 173) = v4 | 1;
  (*(pop + 2))(pop, a2);
  *(self + 173) = *(self + 173) & 0xFE | v4 & 1;
}

- (void)_transferAnimationToTrackingAnimator:(id)animator
{
  animatorCopy = animator;
  v6 = dyld_program_sdk_at_least();
  WeakRetained = objc_loadWeakRetained(&self->_propertyAnimator);

  if (v6)
  {
    if (!WeakRetained)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:1197 description:@"Attempting to transfer an animation to an animation state that does not belong to a property animator."];
    }
  }

  else if (!WeakRetained)
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA994728) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Attempting to transfer an animation to an animation state that does not belong to a property animator.", buf, 2u);
    }
  }

  v9 = dyld_program_sdk_at_least();
  delegate = [animatorCopy delegate];
  nextState = self->_nextState;

  if (v9)
  {
    if (delegate != nextState)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:1198 description:@"Attempting to transfer an animation to an animation state that is not a direct child of the animation's animation state."];
    }
  }

  else if (delegate != nextState)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA994730) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Attempting to transfer an animation to an animation state that is not a direct child of the animation's animation state.", v19, 2u);
    }
  }

  if (!self->_belongsToTrackingAnimator)
  {
    v13 = self->_nextState;
    self->_allowsHitTesting = v13->_allowsHitTesting;
    self->_allowUserInteractionToCutOffEndOfAnimation = v13->_allowUserInteractionToCutOffEndOfAnimation;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = self->_delegate;
      v15 = self->_nextState->_delegate;
      delegate[12] = v15[12];
      delegate[9] = v15[9];
      delegate[11] = v15[11];
    }

    self->_belongsToTrackingAnimator = 1;
    objc_storeStrong(&self->_retainedSelf, self);
  }

  [animatorCopy setDelegate:self];
  [animatorCopy setRemovedOnCompletion:0];
  ++self->_didEndCount;
}

- (void)configureAnimation:(id)animation forLayer:(id)layer forKey:(id)key
{
  animationCopy = animation;
  layerCopy = layer;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [layerCopy implicitAnimationForKeyPath:keyCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        fromValue = [v9 fromValue];
        [animationCopy setFromValue:fromValue];
      }
    }
  }
}

- (BOOL)_shouldStartFromCurrentStateForLayer:(id)layer key:(id)key forView:(id)view
{
  layerCopy = layer;
  keyCopy = key;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_propertyAnimator);
  if (WeakRetained)
  {
    v5 = [layerCopy animationForKey:keyCopy];
    if (!v5)
    {
      LOBYTE(v13) = 0;
      goto LABEL_9;
    }
  }

  if ((*(self + 172) & 2) != 0 && [layerCopy hasBeenCommitted])
  {
    v13 = ![(UIViewAnimationState *)self _shouldAnimateAdditivelyForKey:keyCopy onLayer:layerCopy forView:viewCopy];
    v14 = v13;
    if (!WeakRetained)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  LOBYTE(v13) = 0;
  v14 = 0;
  if (WeakRetained)
  {
LABEL_9:

    v14 = v13;
  }

LABEL_10:

  return v14;
}

- (id)animationForLayer:(id)layer forKey:(id)key forView:(id)view
{
  layerCopy = layer;
  keyCopy = key;
  viewCopy = view;
  v11 = viewCopy;
  if (viewCopy && (*(viewCopy + 91) & 2) != 0)
  {
    v17 = 0;
    goto LABEL_36;
  }

  v12 = self->_customCurve;
  animationFactory = self->_animationFactory;
  if (animationFactory)
  {
    v14 = [(_UIBasicAnimationFactory *)animationFactory _basicAnimationForView:v11 withKeyPath:keyCopy];
    WeakRetained = objc_loadWeakRetained(&self->_propertyAnimator);
    if (WeakRetained)
    {
      timingFunction = [v14 timingFunction];

      v12 = timingFunction;
    }

    else if (!v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = _UIGetAnimationCurveSpline(3uLL, v18, v19, v20, v21);
      }

      else
      {
        v12 = 0;
      }
    }

    if (self->_animationFactoryMakesPerAnimationCustomCurves)
    {
      v22 = [(_UIBasicAnimationFactory *)self->_animationFactory _timingFunctionForAnimationInView:v11 withKeyPath:keyCopy];

      v12 = v22;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!(v14 | v12))
  {
    if (self->_curve != 7)
    {
      if (![(UIViewAnimationState *)self _shouldStartFromCurrentStateForLayer:layerCopy key:keyCopy forView:v11])
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    _UILoadDefaultSpringParameters();
    v14 = [UIViewSpringAnimationState defaultSpringAnimationForKey:keyCopy mass:*&_UIViewDefaultSpringMass stiffness:*&_UIViewDefaultSpringStiffness damping:*&_UIViewDefaultSpringDamping velocity:0.0];
  }

  v23 = [(UIViewAnimationState *)self _shouldStartFromCurrentStateForLayer:layerCopy key:keyCopy forView:v11];
  if (v14)
  {
    if (!v23)
    {
      goto LABEL_23;
    }

    v24 = [layerCopy implicitAnimationForKeyPath:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      fromValue = [v24 fromValue];
      [v14 setFromValue:fromValue];
    }

    if (!v24)
    {
LABEL_23:
      v26 = [layerCopy valueForKeyPath:keyCopy];
      [v14 setFromValue:v26];

      v24 = 0;
    }

    v27 = v14;
    v17 = v27;
    goto LABEL_34;
  }

  if (!v23)
  {
LABEL_30:
    if (v11)
    {
      [v11 _basicAnimationWithKeyPath:keyCopy];
    }

    else
    {
      [(UIViewAnimationState *)self _defaultAnimationForKey:keyCopy];
    }
    v17 = ;
    v24 = [layerCopy valueForKeyPath:keyCopy];
    [v17 setFromValue:v24];
    v27 = 0;
LABEL_34:

    goto LABEL_35;
  }

LABEL_28:
  v28 = [layerCopy implicitAnimationForKeyPath:keyCopy];
  v17 = [v28 copy];

  if (!v17)
  {
    goto LABEL_30;
  }

  v27 = 0;
LABEL_35:
  [(UIViewAnimationState *)self configureAnimation:v17 forLayer:layerCopy forKey:keyCopy];
  [(UIViewAnimationState *)self setAnimationAttributes:v17 skipDelegateAssignment:0 customCurve:v12];

LABEL_36:

  return v17;
}

- (BOOL)_shouldAnimateAdditivelyForKey:(id)key onLayer:(id)layer forView:(id)view
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  layerCopy = layer;
  viewCopy = view;
  if (!self->_disallowAdditiveAnimations)
  {
    v12 = _normalizedAnimationKey(keyCopy);
    v13 = v12;
    if (viewCopy)
    {
      isAdditivelyAnimatableKeyForLayer = [viewCopy _shouldAnimatePropertyAdditivelyWithKey:v12];
    }

    else
    {
      isAdditivelyAnimatableKeyForLayer = _isAdditivelyAnimatableKeyForLayer(v12, layerCopy);
    }

    v15 = isAdditivelyAnimatableKeyForLayer;
    v16 = dyld_program_sdk_at_least();
    if (self->_animationFactory)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v11 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v17 = [(_UIBasicAnimationFactory *)self->_animationFactory _shouldAnimateAdditivelyForView:viewCopy withKeyPath:keyCopy];
    }

    else
    {
      v17 = 1;
    }

    v11 = 0;
    if ((v15 & v16) == 1 && v17)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      animationKeys = [layerCopy animationKeys];
      v19 = [animationKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v29 = v13;
        v30 = viewCopy;
        v21 = *v32;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(animationKeys);
            }

            v23 = [layerCopy animationForKey:{*(*(&v31 + 1) + 8 * i), v29, v30}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
              keyPath = [v24 keyPath];
              if ([keyPath isEqualToString:keyCopy])
              {
                if (![v24 isAdditive])
                {

LABEL_30:
                  v11 = 0;
                  goto LABEL_31;
                }

                [v24 repeatCount];
                v27 = v26;

                if (v27 > 0.0)
                {
                  goto LABEL_30;
                }
              }

              else
              {
              }
            }
          }

          v20 = [animationKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

        v11 = 1;
LABEL_31:
        v13 = v29;
        viewCopy = v30;
      }

      else
      {
        v11 = 1;
      }
    }

    goto LABEL_33;
  }

  v11 = 0;
LABEL_34:

  return v11;
}

- (void)_transformIntoAdditiveAnimationAndNoteOriginal:(id)original inLayer:(id)layer animationKey:(id)key
{
  originalCopy = original;
  layerCopy = layer;
  keyCopy = key;
  if (([originalCopy isAdditive] & 1) == 0 && !self->_disallowAdditiveAnimations)
  {
    keyPath = [originalCopy keyPath];
    delegate = [layerCopy delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate2 = [layerCopy delegate];

      if (delegate2)
      {
        if (([delegate2 _shouldAnimatePropertyAdditivelyWithKey:keyPath] & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    delegate2 = 0;
    if (!_isAdditivelyAnimatableKeyForLayer(keyPath, layerCopy))
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_9:
    toValue = [originalCopy toValue];
    v15 = toValue;
    if (toValue)
    {
      v16 = toValue;
    }

    else
    {
      keyPath2 = [originalCopy keyPath];
      v16 = [layerCopy valueForKeyPath:keyPath2];
    }

    fromValue = [originalCopy fromValue];
    toValue2 = [originalCopy toValue];

    if (toValue2)
    {
      if ([keyCopy hasPrefix:@"position"])
      {
        [v16 CGPointValue];
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __92__UIViewAnimationState__transformIntoAdditiveAnimationAndNoteOriginal_inLayer_animationKey___block_invoke;
      v31[3] = &unk_1E70F6228;
      v32 = layerCopy;
      v33 = v16;
      v34 = originalCopy;
      [UIView performWithoutAnimation:v31];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![keyCopy hasPrefix:@"position"])
    {
      goto LABEL_22;
    }

    [v16 CGPointValue];
    v21 = v20;
    v23 = v22;
    [fromValue CGPointValue];
    v25 = v24;
    v27 = v26;
    if (([keyCopy hasSuffix:@".x"] & 1) == 0)
    {
      if (![keyCopy hasSuffix:@".y"])
      {
LABEL_22:
        v29 = [fromValue CA_addValue:v16 multipliedBy:0xFFFFFFFFLL];
        [originalCopy setAdditive:1];
        [originalCopy setFromValue:v29];
        v30 = [v16 CA_addValue:v16 multipliedBy:0xFFFFFFFFLL];
        [originalCopy setToValue:v30];

        goto LABEL_23;
      }

      v21 = v25;
      v27 = v23;
    }

    v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{v21, v27}];

    v16 = v28;
    goto LABEL_22;
  }

LABEL_24:
}

void __92__UIViewAnimationState__transformIntoAdditiveAnimationAndNoteOriginal_inLayer_animationKey___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) keyPath];
  [v1 setValue:v2 forKeyPath:v3];
}

- (id)actionForLayer:(id)layer forKey:(id)key forView:(id)view
{
  v21[3] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  keyCopy = key;
  viewCopy = view;
  if ([keyCopy isEqualToString:@"cornerRadius"])
  {
    [layerCopy cornerRadius];
  }

  v11 = [(UIViewAnimationState *)self animationForLayer:layerCopy forKey:keyCopy forView:viewCopy];
  if (!v11)
  {
    v18 = 0;
    goto LABEL_18;
  }

  v12 = [(UIViewAnimationState *)self _outerPropertyAnimator:1];
  v13 = [(UIViewAnimationState *)self _shouldAnimateAdditivelyForKey:keyCopy onLayer:layerCopy forView:viewCopy];
  v14 = v13;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (([v11 isAdditive] | v14) & 1) == 0)
    {
      memset(v21, 0, 24);
      v15 = [v12 _previousAnimatorForKeyPath:keyCopy inLayer:layerCopy compoundKeys:v21];
      v16 = v15;
      if (v15 && v15 != v12)
      {
        [v15 _untrackPropertyAnimationsForKeys:v21 inLayer:layerCopy];
      }

      for (i = 2; i != -1; --i)
      {
      }
    }

    if ([(UIViewAnimationState *)self _isTrackingEnabled])
    {
      [v11 setRemovedOnCompletion:0];
    }
  }

  else if (!v13)
  {
    v19 = v11;
    goto LABEL_17;
  }

  v19 = [[_UIViewAdditiveAnimationAction alloc] initWithPendingAnimation:v11 withAnimationObject:v12 forView:viewCopy];
LABEL_17:
  v18 = v19;

LABEL_18:

  return v18;
}

- (id)_canonicalTrackedLayerAnimationInLayer:(id *)layer
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [qword_1EA994718 objectForKeyedSubscript:{self->_uuid, 0}];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        _trackedAnimations = [*(*(&v15 + 1) + 8 * i) _trackedAnimations];
        if ([_trackedAnimations count])
        {
          v9 = [_trackedAnimations objectAtIndex:0];
          if (v9)
          {
            v10 = v9;
            v11 = objc_getAssociatedObject(v9, &unk_1EA9946CB);
            v12 = objc_getAssociatedObject(v10, &unk_1EA9946CC);
            if ([v12 hasBeenCommitted])
            {
              v5 = [v12 animationForKey:v11];
              if (v12)
              {
                v13 = v12;
                *layer = v12;
              }

              goto LABEL_16;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v5;
}

- (double)_unpacedFractionCompleteForAnimation:(id)animation inLayer:(id)layer duration:(double)duration
{
  animationCopy = animation;
  layerCopy = layer;
  v9 = layerCopy;
  v10 = -1.0;
  if (animationCopy)
  {
    if ([layerCopy hasBeenCommitted])
    {
      beginTimeMode = [animationCopy beginTimeMode];
      v12 = [beginTimeMode isEqualToString:*MEMORY[0x1E6979588]];

      v10 = 0.0;
      if (v12)
      {
        if (duration == 0.0)
        {
          [animationCopy duration];
          duration = v13;
        }

        [v9 convertTime:0 fromLayer:CACurrentMediaTime()];
        v15 = v14;
        [animationCopy beginTime];
        v17 = v15 - v16;
        [animationCopy speed];
        v19 = v17 * fabsf(v18);
        [animationCopy timeOffset];
        v21 = v19 - v20;
        if (v21 > 0.0)
        {
          v22 = v21 / duration;
          if (v22 <= 1.0)
          {
            v10 = v22;
          }

          else
          {
            v10 = 1.0;
          }
        }
      }
    }
  }

  return v10;
}

- (double)_elapsedTimeForCanonicallyTrackedAnimation
{
  v16 = 0;
  v2 = [(UIViewAnimationState *)self _canonicalTrackedLayerAnimationInLayer:&v16];
  v3 = v16;
  v4 = v3;
  v5 = -1.0;
  if (v2)
  {
    if (v3)
    {
      if ([v3 hasBeenCommitted])
      {
        beginTimeMode = [v2 beginTimeMode];
        v7 = [beginTimeMode isEqualToString:*MEMORY[0x1E6979588]];

        if (v7)
        {
          [v4 convertTime:0 fromLayer:CACurrentMediaTime()];
          v9 = v8;
          [v2 beginTime];
          v11 = v9 - v10;
          [v2 speed];
          v13 = v11 * fabsf(v12);
          [v2 timeOffset];
          v5 = v13 - v14;
        }
      }
    }
  }

  return v5;
}

- (id)_outerPropertyAnimator:(BOOL)animator
{
  animatorCopy = animator;
  selfCopy = self;
  if (selfCopy)
  {
    p_isa = &selfCopy->super.isa;
    WeakRetained = 0;
    while (1)
    {
      v7 = WeakRetained;
      WeakRetained = objc_loadWeakRetained(p_isa + 35);

      if (WeakRetained)
      {
        if (!animatorCopy || ([WeakRetained isInterruptible] & 1) != 0)
        {
          break;
        }
      }

      v8 = p_isa[1];

      p_isa = v8;
      if (!v8)
      {
        p_isa = WeakRetained;
        WeakRetained = 0;
        break;
      }
    }
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (void)setupWithDuration:(double)duration delay:(double)delay view:(id)view options:(unint64_t)options factory:(id)factory parentState:(id)state start:(id)start completion:(id)self0
{
  viewCopy = view;
  factoryCopy = factory;
  stateCopy = state;
  startCopy = start;
  completionCopy = completion;
  v22 = WORD1(options) & 7;
  if (!stateCopy || (stateCopy[239] & 1) != 0)
  {
    WeakRetained = 0;
    v24 = 0;
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_propertyAnimator);

  if (WeakRetained)
  {
    WeakRetained = 0;
LABEL_37:
    if ((options & 0x20) == 0 && (*(self + 172) & 0x80000000) == 0)
    {
      duration = *(stateCopy + 5);
      if ((options & 0x40) != 0)
      {
        goto LABEL_68;
      }

      goto LABEL_63;
    }
  }

  else
  {
    v50 = startCopy;
    v37 = stateCopy;
    v38 = v37;
    while (1)
    {
      v39 = WeakRetained;
      WeakRetained = objc_loadWeakRetained(v38 + 35);

      if (WeakRetained)
      {
        if ([WeakRetained isInterruptible])
        {
          break;
        }
      }

      v40 = v38[1];

      v38 = v40;
      if (!v40)
      {

        WeakRetained = 0;
LABEL_54:
        if (*(self + 172) < 0)
        {
          startCopy = v50;
          goto LABEL_37;
        }

        v49 = 0;
        goto LABEL_56;
      }
    }

    *(self + 172) = *(self + 172) & 0x7F | (((options & 0x2008) != 0) << 7);
    v41 = [WeakRetained _optionsForNestedLegacyAnimation:options];
    options = v41;
    if ((v41 & 0x20) != 0)
    {
      goto LABEL_54;
    }

    duration = v37[5] - delay;
    delay = v37[6] + delay;
    if (*(self + 172) < 0)
    {
      startCopy = v50;
      if ((v41 & 0x40) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_68;
    }

    v49 = 1;
LABEL_56:
    v42 = v37;
    do
    {
      v43 = objc_loadWeakRetained(v42 + 35);
      if (v43)
      {
        break;
      }

      v44 = v42[1];

      v42 = v44;
    }

    while (v44);

    if (([v43 isInterruptible] & 1) == 0)
    {
      _viewAnimationState = [v43 _viewAnimationState];
      [_viewAnimationState _incrementDidEndCount];
    }

    startCopy = v50;
    if ((v49 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if ((options & 0x40) != 0)
  {
    goto LABEL_68;
  }

LABEL_63:
  v22 = *(stateCopy + 22);
  if (v22 == 6)
  {
    v24 = *(stateCopy + 25);
    v22 = 6;
    if ((options & 0x200) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_68:
  v24 = 0;
  if ((options & 0x200) == 0)
  {
LABEL_69:
    v46 = *(stateCopy + 24);

    factoryCopy = v46;
  }

LABEL_70:
  v47 = *(stateCopy + 7);
  if (v47 > 0.0)
  {
    self->_frameInterval = v47;
  }

  if (!CAFrameRateRangeIsEqualToRange(*(stateCopy + 64), *MEMORY[0x1E69792B8]))
  {
    v48 = *(stateCopy + 8);
    self->_preferredFrameRateRange.preferred = *(stateCopy + 18);
    *&self->_preferredFrameRateRange.minimum = v48;
    self->_updateReason = *(stateCopy + 19);
  }

LABEL_4:
  self->_duration = duration;
  self->_delay = delay;
  v25 = 3.4028e38;
  if ((options & 8) == 0)
  {
    v25 = 0.0;
  }

  self->_repeatCount = v25;
  v26 = *(self + 172) & 0xE5;
  self->_curve = v22;
  *(self + 172) = ((options & 0xFE) >> 1) & 0xA | (16 * (options & 1)) | v26;
  if ((options & 0x10000000) != 0)
  {
    _requestsFlushUpdatesByDefault = 1;
  }

  else
  {
    _requestsFlushUpdatesByDefault = [(UIViewAnimationState *)self _requestsFlushUpdatesByDefault];
  }

  v28 = options >> 1;
  self->_flushUpdates = _requestsFlushUpdatesByDefault;
  self->_transition = (options >> 20) & 7;
  objc_storeStrong(&self->_transitionView, view);
  *(self + 172) = (*(self + 172) & 0xFB | (options >> 5) & 4) ^ 4;
  objc_storeStrong(&self->_animationFactory, factoryCopy);
  v29 = BYTE3(options) & 0xF;
  if (v29)
  {
    v30 = 1.0 / (240.0 / (v29 + 1));
    if (v30 > 0.0)
    {
      self->_frameInterval = v30;
    }
  }

  v31 = completionCopy;
  if (stateCopy && (stateCopy[239] & 1) == 0)
  {
    if (stateCopy[236])
    {
      optionsCopy = options | 0x400;
    }

    else
    {
      optionsCopy = options;
    }

    if (stateCopy[237])
    {
      options = optionsCopy | 0x1000;
    }

    else
    {
      options = optionsCopy;
    }

    v28 = options >> 1;
  }

  self->_allowUserInteraction = v28 & 1;
  self->_allowUserInteractionToCutOffEndOfAnimation = (options & 0x400) != 0;
  self->_disallowAdditiveAnimations = (options & 0x800) != 0;
  self->_allowsHitTesting = (options & 0x1000) != 0;
  v33 = [UIViewAnimationBlockDelegate animationBlockDelegateWithDuration:options options:startCopy start:completionCopy completion:duration];
  [v33 set_animationState:self];
  objc_storeStrong(&self->_delegate, v33);
  self->_willStartSelector = sel__willBeginBlockAnimation_context_;
  self->_didEndSelector = sel__didEndBlockAnimation_finished_context_;
  if (v24)
  {
    objc_storeStrong(&self->_customCurve, v24);
  }

  if (v22 == 6 && factoryCopy)
  {
    if (!self->_customCurve && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v34 = startCopy;
      _timingFunctionForAnimation = [(_UIBasicAnimationFactory *)self->_animationFactory _timingFunctionForAnimation];
      if (_timingFunctionForAnimation)
      {
        objc_storeStrong(&self->_customCurve, _timingFunctionForAnimation);
      }

      startCopy = v34;
    }

    if (objc_opt_respondsToSelector())
    {
      self->_animationFactoryMakesPerAnimationCustomCurves = 1;
    }

    v31 = completionCopy;
    if (!self->_customCurve)
    {
      if (stateCopy)
      {
        v36 = *(stateCopy + 11);
      }

      else
      {
        v36 = 5;
      }

      self->_curve = v36;
    }
  }
}

+ (void)_addConstraintPendingAnimation:(id)animation container:(id)container
{
  animationCopy = animation;
  containerCopy = container;
  if (animationCopy && containerCopy)
  {
    [self _addViewForConstraintBasedAnimation:containerCopy];
    v7 = qword_1EA994738;
    if (!qword_1EA994738)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      v9 = qword_1EA994738;
      qword_1EA994738 = v8;

      v7 = qword_1EA994738;
    }

    v10 = [v7 objectForKey:containerCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [qword_1EA994738 setObject:v10 forKey:containerCopy];
    }

    [v10 addObject:animationCopy];
  }
}

+ (void)_addViewForConstraintBasedAnimation:(id)animation
{
  animationCopy = animation;
  if (__currentViewAnimationState)
  {
    v10 = animationCopy;
    _window = [animationCopy _window];
    if (_window)
    {
      v5 = *(__currentViewAnimationState + 264);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7 = *(__currentViewAnimationState + 264);
        *(__currentViewAnimationState + 264) = v6;

        v5 = *(__currentViewAnimationState + 264);
      }

      if ([v5 count])
      {
        v8 = 0;
        while (1)
        {
          v9 = [*(__currentViewAnimationState + 264) objectAtIndex:v8];
          if (v9 == v10)
          {

            goto LABEL_16;
          }

          if ([v10 isDescendantOfView:v9])
          {
            break;
          }

          if ([v9 isDescendantOfView:v10])
          {
            goto LABEL_14;
          }

          if (++v8 >= [*(__currentViewAnimationState + 264) count])
          {
            goto LABEL_11;
          }
        }

        ++v8;
LABEL_14:
      }

      else
      {
LABEL_11:
        v8 = 0;
      }

      [v10 setNeedsLayout];
      [*(__currentViewAnimationState + 264) insertObject:v10 atIndex:v8];
    }

LABEL_16:

    animationCopy = v10;
  }
}

+ (void)_addSystemPostAnimationAction:(id)action
{
  actionCopy = action;
  v4 = __currentViewAnimationState;
  v11 = actionCopy;
  if (__currentViewAnimationState)
  {
    v4 = *(__currentViewAnimationState + 32);
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[4])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = v5[4];
      v5[4] = v6;
    }

    v8 = [v11 copy];
    v9 = v5[4];
    v10 = _Block_copy(v8);
    [v9 addObject:v10];
  }

  else
  {
    v11[2]();
  }
}

- (id)_createDeferredAnimationForKey:(id)key ignoringKeyFrames:(BOOL)frames
{
  v4 = objc_alloc_init(_UIViewDeferredBasicAnimation);

  return v4;
}

- (id)_deferredAnimationForView:(id)view key:(id)key ignoringKeyFrames:(BOOL)frames
{
  framesCopy = frames;
  viewCopy = view;
  keyCopy = key;
  viewToDeferredAnimationsMap = self->_viewToDeferredAnimationsMap;
  if (!viewToDeferredAnimationsMap)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v12 = self->_viewToDeferredAnimationsMap;
    self->_viewToDeferredAnimationsMap = strongToStrongObjectsMapTable;

    viewToDeferredAnimationsMap = self->_viewToDeferredAnimationsMap;
  }

  v13 = [(NSMapTable *)viewToDeferredAnimationsMap objectForKey:viewCopy];
  if (!v13)
  {
    v13 = objc_opt_new();
    [(NSMapTable *)self->_viewToDeferredAnimationsMap setObject:v13 forKey:viewCopy];
  }

  v14 = [v13 objectForKeyedSubscript:keyCopy];
  if (!v14)
  {
    v14 = [(UIViewAnimationState *)self _createDeferredAnimationForKey:keyCopy ignoringKeyFrames:framesCopy];
    [v14 setKey:keyCopy];
    [v14 setDuration:self->_duration];
    v15 = [viewCopy _initialValueForKey:keyCopy];
    [v14 setInitialValue:v15];

    [v14 setRepeatCount:self->_repeatCount];
    [v14 setAutoreverses:(*(self + 172) >> 3) & 1];
    [v13 setObject:v14 forKeyedSubscript:keyCopy];
  }

  return v14;
}

- (BOOL)_hasDeferredAnimationForView:(id)view key:(id)key
{
  viewToDeferredAnimationsMap = self->_viewToDeferredAnimationsMap;
  keyCopy = key;
  v7 = [(NSMapTable *)viewToDeferredAnimationsMap objectForKey:view];
  v8 = [v7 objectForKeyedSubscript:keyCopy];

  return v8 != 0;
}

- (id)_updateAnimationFrameWithAnimationProperties:(id)properties
{
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    propertiesCopy = objc_alloc_init(_UIViewAnimationFrame);
  }

  [(_UIViewAnimationFrame *)propertiesCopy setStartTime:0.0];
  [(_UIViewAnimationFrame *)propertiesCopy setDuration:self->_duration];

  return propertiesCopy;
}

void __59__UIViewAnimationState__runConstraintBasedLayoutAnimations__block_invoke(uint64_t a1)
{
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__UIViewAnimationState__runConstraintBasedLayoutAnimations__block_invoke_2;
  v24[3] = &unk_1E70F3590;
  v25 = *(a1 + 32);
  [UIView performWithoutAnimation:v24];
  v2 = [*(a1 + 32) _layoutEngine];
  v3 = [v2 delegate];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v4 = *(a1 + 48);
  v23 = *(*(v4 + 8) + 24);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__UIViewAnimationState__runConstraintBasedLayoutAnimations__block_invoke_3;
  v15[3] = &unk_1E712AEE8;
  v18 = v4;
  v14 = *(a1 + 32);
  v5 = v14.i64[0];
  v16 = vextq_s8(v14, v14, 8uLL);
  v19 = &v20;
  v6 = v3;
  v17 = v6;
  [v5 _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v15];
  v7 = *(*(*(a1 + 48) + 8) + 24);
  v8 = v21[3];
  if ((v8 + 1) < *(a1 + 56))
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  while (v7 < v9)
  {
    v10 = [*(*(a1 + 40) + 264) objectAtIndex:v7];
    [v10 _setInAnimatedLayout:0];
    v11 = [v10 _layoutEngine];
    v12 = [v11 delegate];
    [v12 _setInAnimatedLayout:0];

    ++v7;
    v13 = v21[3];
    if ((v13 + 1) < *(a1 + 56))
    {
      v9 = v13 + 1;
    }

    else
    {
      v9 = *(a1 + 56);
    }
  }

  [v6 _setInAnimatedLayout:0];
  *(*(*(a1 + 48) + 8) + 24) = v21[3];

  _Block_object_dispose(&v20, 8);
}

void __59__UIViewAnimationState__runConstraintBasedLayoutAnimations__block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 24);
  for (i = *(a1 + 32); v2 < [*(i + 264) count]; i = *(a1 + 32))
  {
    v4 = [*(*(a1 + 32) + 264) objectAtIndex:v2];
    if (![v4 isDescendantOfView:*(a1 + 40)])
    {

      break;
    }

    [v4 _setNeedsUpdateConstraintsNeedingLayout:0];
    [v4 _setInAnimatedLayout:1];
    v5 = [v4 _layoutEngine];
    v6 = [v5 delegate];
    [v6 _setInAnimatedLayout:1];

    [v4 _flushConstraintsPendingAnimatedChanges];
    *(*(*(a1 + 64) + 8) + 24) = v2;

    ++v2;
  }

  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  if (![*(a1 + 48) _is_needsLayout] || (v7 = *(a1 + 48)) == 0)
  {
    if ([*(a1 + 40) _hostsLayoutEngine])
    {
      v7 = 0;
    }

    else
    {
      v7 = [*(a1 + 40) superview];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        do
        {
          v12 = v9;
          if (v8 == *(a1 + 48))
          {
            break;
          }

          if ([v8 _is_needsLayout])
          {
            v10 = v8;

            v12 = v10;
          }

          v11 = [v8 superview];

          v8 = v11;
          v9 = v12;
        }

        while (v11);

        v7 = v12;
      }
    }
  }

  v13 = v7;
  [*(a1 + 48) _setInAnimatedLayout:1];
  [v13 layoutIfNeeded];
}

- (void)_setAlongsideAnimations:(id)animations
{
  v4 = _Block_copy(animations);
  alongsideAnimations = self->_alongsideAnimations;
  self->_alongsideAnimations = v4;
}

- (BOOL)_addCompletionWithPosition:(id)position
{
  positionCopy = position;
  addedCompletions = self->_addedCompletions;
  if (!addedCompletions)
  {
    v6 = objc_opt_new();
    v7 = self->_addedCompletions;
    self->_addedCompletions = v6;

    addedCompletions = self->_addedCompletions;
  }

  v8 = [positionCopy copy];
  [(NSMutableArray *)addedCompletions addObject:v8];

  return 1;
}

- (BOOL)_addCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__UIViewAnimationState__addCompletion___block_invoke;
  v7[3] = &unk_1E712AF10;
  v8 = completionCopy;
  v5 = completionCopy;
  LOBYTE(self) = [(UIViewAnimationState *)self _addCompletionWithPosition:v7];

  return self;
}

- (void)setAnimationAttributes:(id)attributes skipDelegateAssignment:(BOOL)assignment customCurve:(id)curve
{
  attributesCopy = attributes;
  curveCopy = curve;
  if (!attributesCopy)
  {
    goto LABEL_41;
  }

  duration = self->_duration;
  v10 = UIAnimationDragCoefficient();
  v11 = v10;
  if (duration == 0.0)
  {
    duration = 0.001;
  }

  v12 = self->_customCurve;
  curve = self->_curve;
  if (curve == 7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v12 = 0;
    curveCopy = 0;
    duration = *&_UIViewDefaultSpringDuration;
    curve = 3;
  }

  else if (v10 != 1.0 && duration > 0.001)
  {
    v14 = [UIViewPropertyAnimator _getPropertyAnimationForState:self];
    v15 = attributesCopy;
    if (v14)
    {
      [v14 _drag];
      v11 = 1.0;
      v17 = 1.0 / v16;
      *&v17 = v17;
      [attributesCopy setSpeed:v17];
      v15 = attributesCopy;
    }

    v18 = v15;
    v19 = UIAnimationDragCoefficient();
    if (v19 == 1.0)
    {

      v25 = duration;
      duration = v11 * v25;
    }

    else
    {
      v20 = v19;
      [v18 speed];
      v22 = fabs(v21 + -1.0 / v20);

      v23 = duration;
      v24 = v11 * v23;
      if (v22 >= 0.00000011920929)
      {
        duration = v24;
      }
    }
  }

  frameInterval = self->_frameInterval;
  if (frameInterval > 0.0)
  {
    [attributesCopy setFrameInterval:self->_frameInterval];
  }

  if (!CAFrameRateRangeIsEqualToRange(self->_preferredFrameRateRange, *MEMORY[0x1E69792B8]))
  {
    *&v27 = self->_preferredFrameRateRange.minimum;
    *&v28 = self->_preferredFrameRateRange.maximum;
    *&v29 = self->_preferredFrameRateRange.preferred;
    [attributesCopy setPreferredFrameRateRange:{v27, v28, v29}];
    updateReason = self->_updateReason;
    goto LABEL_23;
  }

  v30 = attributesCopy;
  if (frameInterval <= 0.0)
  {
    LODWORD(v28) = 1123024896;
    LODWORD(v27) = 30.0;
    LODWORD(v29) = 1123024896;
    [attributesCopy setPreferredFrameRateRange:{v27, v28, v29}];
    updateReason = 1048609;
LABEL_23:
    [attributesCopy setHighFrameRateReason:updateReason];
    v30 = attributesCopy;
  }

  [v30 setDuration:duration];
  v36 = curveCopy;
  if (curveCopy || (v36 = v12) != 0)
  {
    [attributesCopy setTimingFunction:v36];
  }

  else
  {
    v40 = _UIGetAnimationCurveSpline(curve, v32, v33, v34, v35);
    [attributesCopy setTimingFunction:v40];
  }

  delay = self->_delay;
  start = self->_start;
  if (delay > 0.0 && start == 0.0)
  {
    [attributesCopy setBeginTime:v11 * delay];
    [attributesCopy setBeginTimeMode:*MEMORY[0x1E69795C0]];
LABEL_32:
    v39 = attributesCopy;
    goto LABEL_33;
  }

  v39 = attributesCopy;
  if (start > 0.0)
  {
    [attributesCopy setBeginTime:v11 * delay + start];
    goto LABEL_32;
  }

LABEL_33:
  [v39 setFillMode:*MEMORY[0x1E69797E0]];
  if (self->_repeatCount > 0.0)
  {
    [attributesCopy setRepeatCount:?];
  }

  if ((*(self + 172) & 8) != 0)
  {
    [attributesCopy setAutoreverses:1];
  }

  if (!assignment)
  {
    [attributesCopy setDelegate:self];
    [(UIViewAnimationState *)self _incrementDidEndCount];
    if (self->_didEndCount == 1)
    {
      objc_storeStrong(&self->_retainedSelf, self);
    }
  }

LABEL_41:
}

- (void)animationDidStart:(id)start
{
  startCopy = start;
  if ((*(self + 172) & 1) == 0 && !self->_animationDidStopSent && !self->_animationDidStopForced)
  {
    *(self + 172) |= 1u;
    if (self->_delegate)
    {
      v10 = startCopy;
      context = self->_context;
      if (!self->_willStartSelector)
      {
        if (objc_opt_respondsToSelector())
        {
          [self->_delegate performSelector:sel_animationWillStart_context_ withObject:self->_animationID withObject:context];
        }

        else
        {
          v8 = objc_opt_respondsToSelector();
          startCopy = v10;
          if ((v8 & 1) == 0)
          {
            goto LABEL_16;
          }

          [self->_delegate performSelector:sel_animationWillStart_ withObject:self->_animationID];
        }

LABEL_15:
        startCopy = v10;
        goto LABEL_16;
      }

      v6 = objc_opt_respondsToSelector();
      startCopy = v10;
      if (v6)
      {
        if (self->_willStartSelector)
        {
          willStartSelector = self->_willStartSelector;
        }

        else
        {
          willStartSelector = 0;
        }

        _UIPerformVoidSelector2(self->_delegate, willStartSelector, self->_animationID, context);
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (self->_belongsToTrackingAnimator)
  {
    nextState = self->_nextState;
    if (nextState)
    {
      v11 = startCopy;
      [(UIViewAnimationState *)nextState animationDidStart:startCopy];
      startCopy = v11;
    }
  }
}

- (void)sendDelegateAnimationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  v38 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  if (self->_delegate)
  {
    if (self->_didEndSelector)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_20;
      }

      delegate = self->_delegate;
      if (self->_didEndSelector)
      {
        didEndSelector = self->_didEndSelector;
      }

      else
      {
        didEndSelector = 0;
      }

      goto LABEL_7;
    }

    didEndSelector = sel_animationDidStop_finished_context_;
    v9 = objc_opt_respondsToSelector();
    delegate = self->_delegate;
    if (v9)
    {
LABEL_7:
      animationID = self->_animationID;
      v11 = [MEMORY[0x1E696AD98] numberWithBool:finishedCopy];
      [delegate didEndSelector];

      goto LABEL_20;
    }

    v12 = objc_opt_respondsToSelector();
    v13 = self->_delegate;
    if (v12)
    {
      v14 = self->_animationID;
      v15 = [MEMORY[0x1E696AD98] numberWithBool:finishedCopy];
      [v13 performSelector:sel_animationDidStop_finished_ withObject:v14 withObject:v15];
    }

    else if (objc_opt_respondsToSelector())
    {
      [self->_delegate performSelector:sel_animationDidStop_ withObject:self->_animationID];
    }
  }

LABEL_20:
  while (1)
  {
    addedCompletions = self->_addedCompletions;
    if (!addedCompletions)
    {
      break;
    }

    v16 = [(NSMutableArray *)addedCompletions copy];
    v17 = self->_addedCompletions;
    self->_addedCompletions = 0;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          (*(*(*(&v33 + 1) + 8 * i) + 16))();
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v20);
    }
  }

  if ((*(self + 172) & 0x40) != 0)
  {
    v28 = [(UIViewAnimationState *)self _outerPropertyAnimator:1];
    if (!v28)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__UIViewAnimationState_sendDelegateAnimationDidStop_finished___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_propertyAnimator);
    if (!WeakRetained || (v25 = WeakRetained, v26 = objc_loadWeakRetained(&self->_propertyAnimator), v27 = [v26 _pausesOnCompletion], v26, v25, (v27 & 1) == 0))
    {
      [(UIViewAnimationState *)self _removeAnimationStateFromTrackingMap:1 disableTrackingIfNeeded:(byte_1EA9946CA & 1) == 0];
    }
  }

  if (self->_animationID)
  {
    v29 = self->_animationID;
  }

  else
  {
    v29 = &stru_1EFB14550;
  }

  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v29, @"name", self->_delegate, @"delegate", 0}];
  v31 = +[NSNotificationCenter uikitInternalCenter];
  [v31 postNotificationName:@"UIViewAnimationDidStopInternalNotification" object:self userInfo:v30];
}

- (void)sendDelegateDidStopManually:(BOOL)manually
{
  if (!self->_animationDidStopSent && !self->_animationDidStopForced)
  {
    manuallyCopy = manually;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self->_delegate _setForcingImmediateCompletion:1];
    }

    [(UIViewAnimationState *)self sendDelegateAnimationDidStop:0 finished:manuallyCopy];
    self->_animationDidStopForced = 1;
    if (self->_belongsToTrackingAnimator)
    {
      nextState = self->_nextState;
      if (nextState)
      {

        [(UIViewAnimationState *)nextState sendDelegateDidStopManually:manuallyCopy];
      }
    }
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  belongsToTrackingAnimator = self->_belongsToTrackingAnimator;
  v7 = self->_nextState;
  if (!self->_animationDidStopSent)
  {
    [(UIViewAnimationState *)self _decrementDidEndCount];
    if (!self->_didEndCount)
    {
      v8 = [(UIViewAnimationState *)self _outerPropertyAnimator:0];
      if (![v8 _pausesOnCompletion] || *(self + 172) < 0)
      {
        self->_animationDidStopSent = 1;
        if (!self->_animationDidStopForced)
        {
          [(UIViewAnimationState *)self sendDelegateAnimationDidStop:stopCopy finished:finishedCopy];
        }

        if (v8 && (*(self + 172) & 0x80000000) == 0 && ([v8 isInterruptible] & 1) == 0)
        {
          _viewAnimationState = [v8 _viewAnimationState];
          [_viewAnimationState _animationDidStopWithNilAnimationFinished:finishedCopy];
        }

        delegate = self->_delegate;
        self->_delegate = 0;

        retainedSelf = self->_retainedSelf;
        if (retainedSelf)
        {
          self->_retainedSelf = 0;
        }
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_propertyAnimator);

        if (WeakRetained)
        {
          [(UIViewAnimationState *)self sendDelegateAnimationDidStop:stopCopy finished:finishedCopy];
        }
      }
    }
  }

  if (belongsToTrackingAnimator && v7 != 0)
  {
    [(UIViewAnimationState *)v7 animationDidStop:stopCopy finished:finishedCopy];
  }
}

- (void)_setFinishedPosition:(int64_t)position
{
  self->_finishedPosition = position;
  if (self->_belongsToTrackingAnimator)
  {
    nextState = self->_nextState;
    if (nextState)
    {
      [(UIViewAnimationState *)nextState _setFinishedPosition:?];
    }
  }
}

- (BOOL)_allowsHitTesting
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [delegate _allowsHitTesting];
}

- (void)_acceptEarlyAnimationCutoff:(id)cutoff
{
  v44 = *MEMORY[0x1E69E9840];
  cutoffCopy = cutoff;
  if (!self->_animationDidStopSent && self->_allowUserInteractionToCutOffEndOfAnimation)
  {
    self->_animationDidStopSent = 1;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = [qword_1EA994718 objectForKeyedSubscript:self->_uuid];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v38;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v37 + 1) + 8 * i) _acceptEarlyAnimationCutoff:cutoffCopy];
        }

        v8 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v8);
    }

    if (self->_belongsToTrackingAnimator)
    {
      nextState = self->_nextState;
      if (nextState)
      {
        [(UIViewAnimationState *)nextState _acceptEarlyAnimationCutoff:cutoffCopy];
      }
    }

    [qword_1EA994718 objectForKeyedSubscript:{self->_uuid, cutoffCopy}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v28 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v28)
    {
      v27 = *v34;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * j);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          selfCopy = self;
          _trackedAnimations = [(UIViewAnimationState *)self _trackedAnimations];
          v16 = [_trackedAnimations countByEnumeratingWithState:&v29 objects:v41 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            do
            {
              for (k = 0; k != v17; ++k)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(_trackedAnimations);
                }

                v20 = *(*(&v29 + 1) + 8 * k);
                v21 = objc_getAssociatedObject(v20, &unk_1EA9946CB);
                v22 = objc_getAssociatedObject(v20, &unk_1EA9946CC);
                [v22 removeAnimationForKey:v21];
              }

              v17 = [_trackedAnimations countByEnumeratingWithState:&v29 objects:v41 count:16];
            }

            while (v17);
          }

          [v13 _incrementDidEndCount];
          self = selfCopy;
        }

        v28 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v28);
    }

    cutoffCopy = v25;
    [(UIViewAnimationState *)self sendDelegateAnimationDidStop:v25 finished:1];
    delegate = self->_delegate;
    self->_delegate = 0;

    retainedSelf = self->_retainedSelf;
    if (retainedSelf)
    {
      self->_retainedSelf = 0;
    }
  }
}

- (void)_untrackAnimationsWithIdentifier:(id)identifier keyPath:(id)path inLayer:(id)layer removeFromLayer:(BOOL)fromLayer
{
  fromLayerCopy = fromLayer;
  v42 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pathCopy = path;
  layerCopy = layer;
  [qword_1EA994718 objectForKeyedSubscript:self->_uuid];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v27)
  {
    v26 = *v37;
    do
    {
      v11 = 0;
      do
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v11;
        _trackedAnimations = [*(*(&v36 + 1) + 8 * v11) _trackedAnimations];
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v13 = _trackedAnimations;
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v33;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v32 + 1) + 8 * i);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                keyPath = [v18 keyPath];
                if ([keyPath isEqualToString:pathCopy])
                {

LABEL_22:
                  v6 = objc_getAssociatedObject(v18, &unk_1EA9946CC);
                  if (v6 == layerCopy)
                  {
                    v23 = objc_getAssociatedObject(v18, &unk_1EA9946CB);
                    if (fromLayerCopy)
                    {
                      [layerCopy removeAnimationForKey:v23];
                    }

                    objc_setAssociatedObject(v18, &unk_1EA9946CB, 0, 1);
                    objc_setAssociatedObject(v18, &unk_1EA9946CC, 0, 1);
                    [v30 addObject:v18];
                  }

LABEL_26:

                  v6 = keyPath;
                  continue;
                }

                v6 = keyPath;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [pathCopy isEqualToString:@"transition"];
                v22 = v21;
                if ((isKindOfClass & 1) == 0)
                {
                  keyPath = v6;
                  if (!v21)
                  {
                    continue;
                  }

                  goto LABEL_22;
                }

                keyPath = v6;
                if (v22)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                keyPath = v6;
                if (isKindOfClass)
                {
                  goto LABEL_26;
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v15);
        }

        if ([v30 count])
        {
          [v13 removeObjectsInArray:v30];
        }

        v11 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }
}

- (void)_removeAnimationStateFromTrackingMap:(BOOL)map disableTrackingIfNeeded:(BOOL)needed
{
  mapCopy = map;
  v21 = *MEMORY[0x1E69E9840];
  if (self->_uuid)
  {
    neededCopy = needed;
    v6 = [qword_1EA994718 objectForKey:?];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_trackedAnimations;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = objc_getAssociatedObject(v12, &unk_1EA9946CC);
          objc_setAssociatedObject(v13, &unk_1EA9946C9, 0, 1);
          objc_setAssociatedObject(v12, &unk_1EA9946CC, 0, 1);
          objc_setAssociatedObject(v12, &unk_1EA9946CB, 0, 1);
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_trackedAnimations removeAllObjects];
    if (mapCopy)
    {
      [v6 removeObject:self];
      if (neededCopy && ![v6 count])
      {
        [UIView _disableAnimationTracking:self->_uuid clearTrackedAnimations:0];
      }
    }

    uuid = self->_uuid;
    self->_uuid = 0;
  }
}

- (void)_addAnimationStateForTracking:(id)tracking
{
  trackingCopy = tracking;
  v6 = [qword_1EA994718 objectForKey:trackingCopy];
  [v6 addObject:self];
  uuid = self->_uuid;
  self->_uuid = trackingCopy;
}

- (void)_trackObject:(id)object withAnimationPropertyName:(id)name inLayer:(id)layer
{
  nameCopy = name;
  object = object;
  objc_setAssociatedObject(object, &unk_1EA9946CC, layer, 1);
  objc_setAssociatedObject(object, &unk_1EA9946CB, nameCopy, 1);

  [(NSMutableArray *)self->_trackedAnimations addObject:object];
}

+ (id)originalAnimationForKeyPath:(id)path inLayer:(id)layer
{
  pathCopy = path;
  v6 = objc_getAssociatedObject(layer, &unk_1EA9946C9);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:pathCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_trackAnimation:(id)animation nonAdditiveAnimation:(id)additiveAnimation withAnimationKey:(id)key forKeyPath:(id)path inLayer:(id)layer
{
  animationCopy = animation;
  additiveAnimationCopy = additiveAnimation;
  keyCopy = key;
  pathCopy = path;
  layerCopy = layer;
  if ([(UIViewAnimationState *)self _isTrackingEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      if (!keyCopy || !pathCopy)
      {
        goto LABEL_58;
      }

LABEL_10:
      v17 = [UIViewPropertyAnimator _propertyAnimatorWithUUID:qword_1EA994710];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (!v17 || (v19 = isKindOfClass, objc_opt_class(), ((objc_opt_isKindOfClass() | v19) & 1) == 0))
      {
        if (additiveAnimationCopy)
        {
          v24 = objc_getAssociatedObject(layerCopy, &unk_1EA9946C9);
          if (!v24)
          {
            v24 = objc_opt_new();
            objc_setAssociatedObject(layerCopy, &unk_1EA9946C9, v24, 1);
          }

          [v24 setObject:additiveAnimationCopy forKeyedSubscript:pathCopy];
        }

        v22 = additiveAnimationCopy;
        if (!v17)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      fromValue = [v17 _originalFromValueForKey:pathCopy inLayer:layerCopy];
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = animationCopy;
      }

      v22 = v21;

      if (fromValue)
      {
        if (v22 && [v22 isAdditive])
        {
          v23 = [layerCopy animationForKey:pathCopy];
          if (!v23)
          {
            if ([pathCopy hasPrefix:@"position"])
            {
              v23 = [layerCopy animationForKey:@"position.x"];
            }

            else
            {
              v23 = 0;
            }
          }

          beginTimeMode = [v23 beginTimeMode];
          v37 = [beginTimeMode isEqualToString:*MEMORY[0x1E6979588]];

          if (v37)
          {
            [layerCopy convertTime:0 fromLayer:CACurrentMediaTime()];
            v39 = v38;
            v40 = v58;
            [v58 beginTime];
            v42 = v39 - v41;
            [v58 speed];
            v44 = v42 * v43;
            [v58 timeOffset];
            v46 = v44 - v45;
            [v17 duration];
            v48 = v46 / v47;
            if (v48 > 1.0)
            {
              v48 = 1.0;
            }
          }

          else
          {
            [v22 beginTime];
            v50 = v49;
            [v17 duration];
            v48 = v50 / v51;
            v40 = v58;
          }

          [v17 _setAdditiveOffset:keyCopy forKey:layerCopy inLayer:v48];
        }

        goto LABEL_53;
      }

      if ([keyCopy hasPrefix:@"UIPacingAnimationForAnimatorsKey"])
      {
        fromValue = 0;
        goto LABEL_53;
      }

      if (v19)
      {
        values = [animationCopy values];
        fromValue = [values objectAtIndex:0];
      }

      else
      {
        if (([animationCopy isAdditive] & 1) == 0)
        {
          fromValue = [animationCopy fromValue];
LABEL_35:
          [v17 _setOriginalFromValue:fromValue forKey:pathCopy inLayer:layerCopy];
          if ([v17 state] == 1)
          {
            [animationCopy beginTime];
            v28 = v27;
            if (([v17 _isStarting] & 1) != 0 || (objc_msgSend(v17, "isRunning") & 1) == 0 && (objc_msgSend(v17, "fractionComplete"), v32 <= 0.001))
            {
              if (![v17 _isStarting] || v28 <= 0.0)
              {
                goto LABEL_53;
              }

              [v17 _dragAdjustedDuration];
              v30 = v28 / v29;
              v31 = v17;
            }

            else
            {
              [(UIViewAnimationState *)self _canonicalTrackedUnpacedFractionComplete];
              v34 = v33;
              if (v28 > 0.0)
              {
                [v17 _dragAdjustedDuration];
                v34 = v34 + v28 / v35;
              }

              v31 = v17;
              v30 = v34;
            }

            [v31 _setAdditiveOffset:keyCopy forKey:layerCopy inLayer:v30];
          }

LABEL_53:

LABEL_54:
          if (([v17 _addedPacingAnimation] & 1) == 0)
          {
            v52 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
            v53 = [MEMORY[0x1E6979318] animationWithKeyPath:@"uiFractionalProgress"];
            [v53 setFromValue:v52];
            LODWORD(v54) = 1120403456;
            v55 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
            [v53 setToValue:v55];

            [v17 _setOriginalFromValue:v52 forKey:@"uiFractionalProgress" inLayer:layerCopy];
            _viewAnimationState = [v17 _viewAnimationState];
            [_viewAnimationState setAnimationAttributes:v53 skipDelegateAssignment:0 customCurve:0];
            [v53 setRemovedOnCompletion:0];
            v57 = UniqueAnimationKeyForLayer(layerCopy, @"UIPacingAnimationForAnimatorsKey", 0);
            [layerCopy addAnimation:v53 forKey:v57];
            [v17 _setAddedPacingAnimation:1 animationKey:v57];
            [_viewAnimationState _trackObject:v53 withAnimationPropertyName:v57 inLayer:layerCopy];
          }

          additiveAnimationCopy = v22;
LABEL_57:
          [(UIViewAnimationState *)self _trackObject:animationCopy withAnimationPropertyName:keyCopy inLayer:layerCopy];

          goto LABEL_58;
        }

        values = [layerCopy valueForKeyPath:pathCopy];
        fromValue2 = [animationCopy fromValue];
        fromValue = [values CA_addValue:fromValue2 multipliedBy:1];
      }

      goto LABEL_35;
    }

    objc_opt_class();
    v16 = objc_opt_isKindOfClass();
    if (keyCopy && pathCopy && (v16 & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_58:
}

@end