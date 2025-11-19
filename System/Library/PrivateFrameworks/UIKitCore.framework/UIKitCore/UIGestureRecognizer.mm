@interface UIGestureRecognizer
- (BOOL)__canPreventGestureRecognizer:(id)a3;
- (BOOL)__requiresGestureRecognizerToFail:(id)a3;
- (BOOL)_affectedByGesture:(id)a3;
- (BOOL)_canExcludeOtherExcludables;
- (BOOL)_canExcludeWithActiveRequirements;
- (BOOL)_componentControllerShouldReceiveTouch:(id)a3;
- (BOOL)_hasUnmetFailureRequirements;
- (BOOL)_inForceCapableEnvironment;
- (BOOL)_isExcludedByExcludable:(id)a3;
- (BOOL)_isTouchGestureRecognizer;
- (BOOL)_needsDynamicDependentRequirementForGestureRecognizer:(id)a3;
- (BOOL)_needsDynamicFailureRequirementForGestureRecognizer:(id)a3;
- (BOOL)_shouldBegin;
- (BOOL)_shouldReceivePress:(id)a3;
- (BOOL)_shouldReceiveTouch:(id)a3 forEvent:(id)a4 recognizerView:(id)a5;
- (BOOL)globallyScoped;
- (BOOL)isDeeperThanContainer:(id)a3 referenceNode:(id)a4;
- (BOOL)isDescendantOfContainer:(id)a3 referenceNode:(id)a4;
- (BOOL)isEnabled;
- (CGPoint)_centroidOfTouches:(id)a3 excludingEnded:(BOOL)a4;
- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (CGPoint)_convertPoint:(CGPoint)a3 toSceneReferenceCoordinatesFromView:(id)a4;
- (CGPoint)locationInView:(UIView *)view;
- (CGPoint)locationOfTouch:(NSUInteger)touchIndex inView:(UIView *)view;
- (NSArray)allowedTouchTypes;
- (NSSet)_allActiveTouches;
- (NSString)_briefDescription;
- (NSString)description;
- (NSString)name;
- (NSUInteger)numberOfTouches;
- (UIGestureRecognizer)initWithCoder:(NSCoder *)coder;
- (UIGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (UIView)view;
- (_UIGestureRecognizerContainer)container;
- (id)_activeComponentsForEvent:(uint64_t)a1;
- (id)_activeEventOfType:(int64_t)a3;
- (id)_activeEvents;
- (id)_activePressesEvent;
- (id)_activeTouchesEvent;
- (id)_defaultAllowedTouchTypes;
- (id)_failureDependents;
- (id)_failureRequirements;
- (id)_forceLevelClassifier;
- (id)_gatherViewsToQueryForDelegateCall;
- (id)_pairedGestureIdentifiersAndCreate:(BOOL)a3;
- (id)_rawBriefDescription;
- (id)_touchForceObservable;
- (id)delegate;
- (id)gestureNode:(id)a3 roleForRelationType:(int64_t)a4 relatedNode:(id)a5;
- (int64_t)_depthFirstCompare:(id)a3;
- (int64_t)_recognitionEvent;
- (int64_t)currentPreviewForceState;
- (int64_t)indexOfGestureNode:(id)a3;
- (uint64_t)_appendDescription:(uint64_t)a1 forDependencies:(void *)a2 toString:(void *)a3 atLevel:(int)a4;
- (uint64_t)_componentController;
- (uint64_t)_defaultAllowedTouchTypesMask;
- (uint64_t)_delegateAcceptsBeingFailureDependentOnGestureRecognizer:(uint64_t)result;
- (uint64_t)_delegateAcceptsBeingFailureRequirementForGestureRecognizer:(uint64_t)result;
- (uint64_t)_delegateCanBeCancelledByGestureRecognizer:(uint64_t)a1;
- (uint64_t)_delegateCanBePreventedByGestureRecognizer:(uint64_t)a1;
- (uint64_t)_delegateCanCancelGestureRecognizer:(uint64_t)result;
- (uint64_t)_delegateCanPreventGestureRecognizer:(uint64_t)a1;
- (uint64_t)_delegateShouldReceiveDynamicButton:(uint64_t)a1;
- (uint64_t)_delegateShouldReceiveDynamicButtonEvent:(uint64_t)result;
- (uint64_t)_delegateShouldReceiveEvent:(uint64_t)a1;
- (uint64_t)_delegateShouldReceivePress:(uint64_t)a1;
- (uint64_t)_delegateShouldReceivePressesEvent:(uint64_t)result;
- (uint64_t)_delegateShouldReceiveTouch:(void *)a3 forEvent:;
- (uint64_t)_hasUnmetRequirementsPreventingExclusion;
- (uint64_t)_internalShouldReceiveEvent:(uint64_t)a1;
- (uint64_t)_invalidateInitialTouchType;
- (uint64_t)_isActive;
- (uint64_t)_node;
- (uint64_t)_removeActiveTouchesAndInvalidateInitialTouchTypeIfNeeded:(uint64_t)result;
- (uint64_t)_shouldReceiveDynamicButton:(uint64_t)a3 forEvent:;
- (uint64_t)_shouldReceiveDynamicButtonEvent:(uint64_t)result;
- (uint64_t)_shouldReceivePress:(uint64_t)a3 forPressesEvent:;
- (uint64_t)_state;
- (void)_addActiveEvent:(uint64_t)a1;
- (void)_addActiveTouches:(uint64_t)a1;
- (void)_addForceTarget:(void *)a3 action:;
- (void)_addTouch:(id)a3 forEvent:(id)a4;
- (void)_appendDescriptionToString:(int)a3 atLevel:(int)a4 includingDependencies:;
- (void)_cancelRecognition;
- (void)_clearDelayedPresses;
- (void)_clearDelayedTouches;
- (void)_componentsBegan:(id)a3 withEvent:(id)a4;
- (void)_componentsCancelled:(id)a3 withEvent:(id)a4;
- (void)_componentsChanged:(id)a3 withEvent:(id)a4;
- (void)_componentsEnded:(id)a3 withEvent:(id)a4;
- (void)_connectInterfaceBuilderEventConnection:(id)a3;
- (void)_delayActiveEventsToRespondersIfNeeded;
- (void)_delayPress:(void *)a3 forEvent:;
- (void)_delayPressesForEvent:(uint64_t)a3 inPhase:;
- (void)_delayPressesForEventIfNeeded:(uint64_t)a1;
- (void)_delayTouchesForEvent:(uint64_t)a3 inPhase:;
- (void)_delayTouchesForEventIfNeeded:(uint64_t)a1;
- (void)_enqueueDelayedPressesToSend;
- (void)_enqueueDelayedTouchesToSend;
- (void)_ensureForceObservationChain;
- (void)_exclude;
- (void)_failWithReason:(id)a3;
- (void)_forceLevelClassifier:(id)a3 currentForceLevelDidChange:(int64_t)a4;
- (void)_gestureRecognizerDriver:(id)a3 didUpdateState:(int64_t)a4 previousState:(int64_t)a5;
- (void)_ignoreActiveEvents;
- (void)_pressWasCancelled:(uint64_t)a1;
- (void)_removeActiveEvent:(uint64_t)a1;
- (void)_removeTouch:(uint64_t)a3 forEvent:(char)a4 byCancellingTouches:;
- (void)_requiredGestureRecognizerCompletedOrWasUnrelated:(uint64_t)a1;
- (void)_resetComponentController;
- (void)_resetGestureRecognizer;
- (void)_sendActions;
- (void)_sendTouchesToComponentController:(id)a3;
- (void)_setCanExcludeWithActiveRequirements:(BOOL)a3;
- (void)_setComponentController:(id *)location;
- (void)_setEventObserving:(void *)a1;
- (void)_setForceLevelClassifier:(id)a3;
- (void)_setInitialTouchType:(void *)a1;
- (void)_setRecognitionEvent:(int64_t)a3;
- (void)_setRequiresSystemGesturesToFail:(BOOL)a3;
- (void)_touchWasCancelled:(uint64_t)a1;
- (void)_updateCachedActiveEventProperties;
- (void)_updateContainer:(uint64_t)a1;
- (void)_updateForceClassifierWithEvent:(uint64_t)a1;
- (void)_updateGestureForActiveEvents;
- (void)_updateObserversForState:(uint64_t)a1;
- (void)addTouchesFromGestureRecognizer:(void *)a1;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)gestureNode:(id)a3 didEnqueuePhase:(int64_t)a4;
- (void)gestureNode:(id)a3 didUpdatePhase:(int64_t)a4;
- (void)gestureNodeWillUnblock:(id)a3;
- (void)ignorePress:(UIPress *)button forEvent:(UIPressesEvent *)event;
- (void)ignoreTouch:(UITouch *)touch forEvent:(UIEvent *)event;
- (void)removeFailureRequirement:(id)a3;
- (void)removeTarget:(id)target action:(SEL)action;
- (void)requireGestureRecognizerToFail:(UIGestureRecognizer *)otherGestureRecognizer;
- (void)setAllowedPressTypes:(NSArray *)allowedPressTypes;
- (void)setAllowedTouchTypes:(NSArray *)allowedTouchTypes;
- (void)setCancelsTouchesInView:(BOOL)cancelsTouchesInView;
- (void)setContainer:(id)a3;
- (void)setDelaysTouchesBegan:(BOOL)delaysTouchesBegan;
- (void)setDelaysTouchesEnded:(BOOL)delaysTouchesEnded;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
- (void)setGestureEnvironment:(uint64_t)a1;
- (void)setGloballyScoped:(BOOL)a3;
- (void)setName:(NSString *)name;
- (void)setRequiredPreviewForceState:(int64_t)a3;
- (void)setRequiresExclusiveTouchType:(BOOL)requiresExclusiveTouchType;
- (void)setState:(UIGestureRecognizerState)state;
- (void)setView:(id)a3;
- (void)transferTouchesFromGestureRecognizer:(void *)a1;
@end

@implementation UIGestureRecognizer

- (uint64_t)_state
{
  if (result)
  {
    v1 = result;
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      v2 = [*(v1 + 232) phase];
      if ((v2 - 2) >= 5)
      {
        return 0;
      }

      else
      {
        return v2 - 1;
      }
    }

    else
    {
      return *(v1 + 72);
    }
  }

  return result;
}

- (uint64_t)_defaultAllowedTouchTypesMask
{
  if (result)
  {
    if ([objc_opt_class() _supportsDefaultTouchTypes])
    {
      if ([objc_opt_class() _supportsStylusTouches])
      {
        return 15;
      }

      else
      {
        return 11;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v3 = viewFromContainer(WeakRetained);

  return v3;
}

- (_UIGestureRecognizerContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (NSString)name
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled)
  {
    v3 = [(GFGestureNode *)self->_node tag];
  }

  else
  {
    v3 = self->_name_DO_NOT_USE_DIRECTLY;
  }

  return v3;
}

- (void)_enqueueDelayedPressesToSend
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        v7 = *v15;
        do
        {
          v8 = 0;
          do
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v14 + 1) + 8 * v8);
            if (v9)
            {
              v10 = *(v9 + 24);
            }

            else
            {
              v10 = 0;
            }

            v11 = v10;
            if ([v11 isDelayed] && v9)
            {
              v12 = *(v9 + 8);

              if (v12 == 1)
              {
                [(UIGestureDelayedEventComponentDispatcher *)*(a1 + 272) enqueueDelayedPressToSend:v9];
                if (!v6)
                {
                  v6 = [MEMORY[0x1E695DF70] array];
                }

                [v6 addObject:v9];
              }
            }

            else
            {
            }

            ++v8;
          }

          while (v5 != v8);
          v13 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          v5 = v13;
        }

        while (v13);
      }

      else
      {
        v6 = 0;
      }

      [*(a1 + 40) removeObjectsInArray:v6];
      [(UIGestureRecognizer *)a1 _clearDelayedPresses];
    }
  }
}

- (NSArray)allowedTouchTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  allowedTouchTypes = self->_allowedTouchTypes;
  if (allowedTouchTypes)
  {
    [v3 addObject:&unk_1EFE30A60];
    allowedTouchTypes = self->_allowedTouchTypes;
    if ((allowedTouchTypes & 2) == 0)
    {
LABEL_3:
      if ((allowedTouchTypes & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((allowedTouchTypes & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:&unk_1EFE30A78];
  allowedTouchTypes = self->_allowedTouchTypes;
  if ((allowedTouchTypes & 4) == 0)
  {
LABEL_4:
    if ((allowedTouchTypes & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v4 addObject:&unk_1EFE30A90];
  if ((self->_allowedTouchTypes & 8) != 0)
  {
LABEL_5:
    [v4 addObject:&unk_1EFE30AA8];
  }

LABEL_6:
  v6 = [v4 copy];

  return v6;
}

- (uint64_t)_invalidateInitialTouchType
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_invalidateInitialTouchType___s_category);
    if (*CategoryCachedImpl)
    {
      v3 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = v3;
        v5 = [v1 _briefDescription];
        v6 = 138412546;
        v7 = v5;
        v8 = 2080;
        v9 = "[UIGestureRecognizer _invalidateInitialTouchType]";
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%@: %s", &v6, 0x16u);
      }
    }

    *(v1 + 8) &= ~0x80000000000uLL;
    return [*(v1 + 96) removeAllObjects];
  }

  return result;
}

- (void)_enqueueDelayedTouchesToSend
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        v7 = *v25;
        do
        {
          v8 = 0;
          do
          {
            if (*v25 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v24 + 1) + 8 * v8);
            if (v9)
            {
              v10 = *(v9 + 24);
            }

            else
            {
              v10 = 0;
            }

            v11 = v10;
            if ([v11 isDelayed] && v9)
            {
              v12 = *(v9 + 8);

              if (v12 == 1)
              {
                CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", _enqueueDelayedTouchesToSend___s_category);
                if (*CategoryCachedImpl)
                {
                  v14 = *(CategoryCachedImpl + 8);
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    log = v14;
                    v23 = [a1 _briefDescription];
                    v22 = *(v9 + 24);
                    v15 = objc_opt_class();
                    v20 = NSStringFromClass(v15);
                    v16 = *(v9 + 24);
                    v18 = *(v9 + 32);
                    v19 = [v18 _phaseDescription];
                    *buf = 138413058;
                    v29 = v23;
                    v30 = 2112;
                    v31 = v20;
                    v32 = 2048;
                    v33 = v16;
                    v34 = 2112;
                    v35 = v19;
                    _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%@: Enqueueing delayed touch <%@: %p; phase = %@>", buf, 0x2Au);
                  }
                }

                [(UIGestureDelayedEventComponentDispatcher *)*(a1 + 272) enqueueDelayedTouchToSend:v9];
                if (!v6)
                {
                  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                [v6 addObject:v9];
              }
            }

            else
            {
            }

            ++v8;
          }

          while (v5 != v8);
          v17 = [v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
          v5 = v17;
        }

        while (v17);
      }

      else
      {
        v6 = 0;
      }

      [*(a1 + 32) removeObjectsInArray:v6];
      [(UIGestureRecognizer *)a1 _clearDelayedTouches];
    }
  }
}

- (uint64_t)_isActive
{
  v1 = a1;
  if (a1)
  {
    if (-[UIGestureRecognizer _state](a1) <= 2 && [v1 isEnabled] && (*(v1 + 12) & 8) != 0)
    {
      v3 = [v1 container];
      v1 = v3 != 0;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (BOOL)isEnabled
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    return [(GFGestureNode *)self->_node isDisabled]^ 1;
  }

  else
  {
    return (*(&self->_gestureFlags + 4) & 4) == 0;
  }
}

- (void)_resetGestureRecognizer
{
  v16 = *MEMORY[0x1E69E9840];
  [(UIGestureRecognizer *)self reset];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_activeEvents;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(UIEvent *)*(*(&v11 + 1) + 8 * i) _removeGestureRecognizer:?];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_activeEvents removeAllObjects];
  self->_forcePressCount = 0;
  *&self->_gestureFlags &= 0xFFF3FFFFFFFFFFFFLL;
  self->_firstEventTimestamp = 0.0;
  self->_buttonMask = 0;
  self->_modifierFlags = 0;
  [(UIGestureRecognizer *)self _invalidateInitialTouchType];
  gestureFlags = self->_gestureFlags;
  *(&self->_gestureFlags + 4) &= ~0x20u;
  self->_machTimeEnqueuedForReset = 0;
  *&self->_gestureFlags = gestureFlags & 0xFFFDFE07FFFFFFFFLL;
  [(UIGestureRecognizer *)self _enqueueDelayedTouchesToSend];
  [(UIGestureRecognizer *)self _enqueueDelayedPressesToSend];
  *&self->_gestureFlags &= ~0x40000000uLL;
  self->_state_DO_NOT_USE_DIRECTLY = 0;
  [(_UITouchForceObservable *)self->_touchForceObservable receiveObservedValue:0];
  v9 = self->_gestureFlags;
  self->_inputPrecision = 0;
  *&self->_gestureFlags = v9 & 0xF00FEFFFFFFFFFFFLL;
  LOWORD(v9) = *(&self->_gestureFlags + 4);
  *(&self->_gestureFlags + 4) = v9 & 0xFFF0;
  if ((v9 & 0x80) != 0)
  {
    v10 = [(UIGestureRecognizer *)self _driver];
    [v10 reset];
  }

  if (self->_componentController)
  {
    [(UIGestureRecognizer *)self _resetComponentController];
  }
}

- (id)_activeTouchesEvent
{
  if (a1)
  {
    a1 = [a1 _activeEventOfType:0];
    v1 = vars8;
  }

  return a1;
}

- (void)_clearDelayedPresses
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_clearDelayedPresses___s_category);
        if (*CategoryCachedImpl)
        {
          v9 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            log = v9;
            v10 = [a1 _briefDescription];
            if (v7)
            {
              v11 = *(v7 + 24);
            }

            else
            {
              v11 = 0;
            }

            v12 = v11;
            *buf = 138412546;
            v21 = v10;
            v22 = 2112;
            v23 = v12;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%@: Clearing delay on press %@", buf, 0x16u);
          }
        }

        [(UIGestureDelayedEventComponentDispatcher *)*(a1 + 272) removeDelayedPress:v7];
        ++v6;
      }

      while (v4 != v6);
      v13 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v4 = v13;
    }

    while (v13);
  }

  v14 = *(a1 + 40);
  *(a1 + 40) = 0;
}

- (void)_ignoreActiveEvents
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [a1[23] copy];
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v8 = [v7 touchesForGestureRecognizer:a1];
          v9 = [v8 copy];

          v10 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                [a1 ignoreTouch:*(*(&v23 + 1) + 8 * i) forEvent:v7];
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
            }

            while (v11);
          }

LABEL_15:

          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v9 = [v7 pressesForGestureRecognizer:{a1, 0}];
          v14 = [v9 countByEnumeratingWithState:&v19 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v20;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v20 != v16)
                {
                  objc_enumerationMutation(v9);
                }

                [a1 ignorePress:*(*(&v19 + 1) + 8 * j) forEvent:v7];
              }

              v15 = [v9 countByEnumeratingWithState:&v19 objects:v31 count:16];
            }

            while (v15);
          }

          goto LABEL_15;
        }

        [(UIEvent *)v7 _removeGestureRecognizer:a1];
LABEL_16:
        ++v6;
      }

      while (v6 != v4);
      v18 = [v2 countByEnumeratingWithState:&v27 objects:v33 count:16];
      v4 = v18;
    }

    while (v18);
  }
}

- (void)_updateGestureForActiveEvents
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = v1[34];
    [v1 _updateForActiveEvents];
    v3 = [v1 _activeEventOfType:0];
    v4 = [v1 _activeEventOfType:3];
    v5 = [v1 _hasUnmetFailureRequirements];
    v6 = [(UIGestureRecognizer *)v1 _state];
    if ([(UIGestureRecognizer *)v1 _state]- 4) < 0xFFFFFFFFFFFFFFFDLL || (v5)
    {
      if (v6 >= 4)
      {
        v13 = v1[1];
        if (v6 == 4 && (v13 & 0x1000000000) != 0)
        {
          [(UIGestureRecognizer *)v1 _sendActions];
        }

        else if ((v13 & 0x200) != 0)
        {
          WeakRetained = objc_loadWeakRetained(v1 + 31);
          [WeakRetained _gestureRecognizerFailed:v1];

          [v1[20] receiveObservedValue:MEMORY[0x1E695E110]];
        }

        [(UIGestureRecognizer *)v1 _enqueueDelayedTouchesToSend];
        [(UIGestureRecognizer *)v1 _enqueueDelayedPressesToSend];
        goto LABEL_29;
      }

      [(UIGestureRecognizer *)v1 _delayTouchesForEventIfNeeded:v3];
      [(UIGestureRecognizer *)v1 _delayPressesForEventIfNeeded:v4];
    }

    else
    {
      if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if ((_UIIsGesturesFrameworkEnabled_enabled & 1) == 0 && (*(v1 + 12) & 0x10) != 0 && v6 == 1)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_updateGestureForActiveEvents___s_category);
        if (*CategoryCachedImpl)
        {
          v15 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = v15;
            v17 = [v1 _briefDescription];
            v18 = 138412802;
            v19 = v17;
            v20 = 2112;
            v21 = @"Began";
            v22 = 2112;
            v23 = @"Changed";
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "%@: Automatically moving a gesture from state %@ to state %@ because another event was received.", &v18, 0x20u);
          }
        }

        [v1 setState:2];
      }

      v8 = v1[1];
      if ((v8 & 0x10000000000) != 0)
      {
        v1[1] = (v8 & 0xFFFFFEFFFFFFFFFFLL);
        [v1 _willBeginAfterSatisfyingFailureRequirements];
        v8 = v1[1];
      }

      if ((v8 & 0x1000000000) == 0)
      {
        [v1[20] receiveObservedValue:MEMORY[0x1E695E118]];
      }

      [(UIGestureRecognizer *)v1 _sendActions];
      if ((*(v1 + 11) & 0x80) != 0)
      {
        v9 = v1[4];
        v10 = [v3 touchesForGestureRecognizer:v1];
        [(UIGestureDelayedEventComponentDispatcher *)v2 cancelDelayedTouches:v9 touches:v10 fromEvent:v3];

        v11 = v1[5];
        v12 = [v4 pressesForGestureRecognizer:v1];
        [(UIGestureDelayedEventComponentDispatcher *)v2 cancelDelayedPresses:v11 presses:v12 fromEvent:v4];
      }

      [(UIGestureRecognizer *)v1 _clearDelayedTouches];
      [(UIGestureRecognizer *)v1 _clearDelayedPresses];
      if (v6 == 3)
      {
LABEL_29:
        [(UIGestureRecognizer *)v1 _ignoreActiveEvents];
LABEL_30:
        [v1[16] receiveObservedValue:0];
LABEL_31:

        return;
      }
    }

    if (v6 < 3)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }
}

- (void)_delayActiveEventsToRespondersIfNeeded
{
  if (a1)
  {
    v2 = [a1 _activeEventOfType:0];
    [(UIGestureRecognizer *)a1 _delayTouchesForEventIfNeeded:v2];

    v3 = [a1 _activeEventOfType:3];
    [(UIGestureRecognizer *)a1 _delayPressesForEventIfNeeded:v3];
  }
}

- (void)_clearDelayedTouches
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_clearDelayedTouches___s_category);
        if (*CategoryCachedImpl)
        {
          v9 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            log = v9;
            v10 = [a1 _briefDescription];
            if (v7)
            {
              v11 = *(v7 + 24);
            }

            else
            {
              v11 = 0;
            }

            v12 = v11;
            *buf = 138412546;
            v21 = v10;
            v22 = 2112;
            v23 = v12;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%@: Clearing delay on touch %@", buf, 0x16u);
          }
        }

        [(UIGestureDelayedEventComponentDispatcher *)*(a1 + 272) removeDelayedTouch:v7];
        ++v6;
      }

      while (v4 != v6);
      v13 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v4 = v13;
    }

    while (v13);
  }

  v14 = *(a1 + 32);
  *(a1 + 32) = 0;
}

- (BOOL)_hasUnmetFailureRequirements
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    v3 = [(GFGestureNode *)self->_node coordinator];
    v4 = [v3 hasUnresolvedFailureDependenciesForNode:self->_node];

    if (v4)
    {
LABEL_5:
      LOBYTE(v5) = 1;
      return v5;
    }
  }

  else if (([(UIGestureEnvironment *)self->_gestureEnvironment unmetRequirementsForGestureRecognizer:?]& 1) != 0)
  {
    goto LABEL_5;
  }

  v5 = [(UIGestureRecognizer *)self _shouldDelayUntilForceLevelRequirementIsMet];
  if (v5)
  {
    LOBYTE(v5) = (*(&self->_gestureFlags + 5) & 0x10) == 0;
  }

  return v5;
}

- (id)_activeEvents
{
  v2 = [(NSMutableSet *)self->_activeEvents copy];

  return v2;
}

- (void)dealloc
{
  failureDependents = self->_failureDependents;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__UIGestureRecognizer_dealloc__block_invoke;
  v7[3] = &unk_1E710B408;
  v7[4] = self;
  [(NSMutableSet *)failureDependents enumerateObjectsUsingBlock:v7];
  failureRequirements = self->_failureRequirements;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__UIGestureRecognizer_dealloc__block_invoke_2;
  v6[3] = &unk_1E710B408;
  v6[4] = self;
  [(NSMutableSet *)failureRequirements enumerateObjectsUsingBlock:v6];
  [(UIGestureRecognizer *)self _enqueueDelayedTouchesToSend];
  [(UIGestureRecognizer *)self _enqueueDelayedPressesToSend];
  v5.receiver = self;
  v5.super_class = UIGestureRecognizer;
  [(UIGestureRecognizer *)&v5 dealloc];
}

- (id)_gatherViewsToQueryForDelegateCall
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 11) & 0x80) != 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v2 = 0;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          if (v8)
          {
            v8 = v8[4];
          }

          v9 = v8;
          v10 = [v9 view];

          if (v10)
          {
            if (!v2)
            {
              v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
            }

            [v2 addObject:v10];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v5);
    }

    else
    {
      v2 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [a1 _activeEventOfType:{0, 0}];
    v12 = [v11 touchesForGestureRecognizer:a1];

    v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v19 + 1) + 8 * j) view];
          if (v17)
          {
            if (!v2)
            {
              v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
            }

            [v2 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)globallyScoped
{
  v3 = sub_18A4A6FC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = self;
  v11 = [(UIGestureRecognizer *)v10 _node];
  swift_getObjectType();
  sub_18A4A7938();
  swift_unknownObjectRelease();
  sub_18A4A6FB8();
  sub_188D0FECC(&unk_1ED48E190, MEMORY[0x1E69A28A8]);
  LOBYTE(self) = sub_18A4A7E28();

  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  return self & 1;
}

- (uint64_t)_node
{
  if (result)
  {
    return *(result + 232);
  }

  return result;
}

- (BOOL)_shouldBegin
{
  v31 = *MEMORY[0x1E69E9840];
  if ((*(&self->_gestureFlags + 3) & 0x80) != 0 && (*(&self->_gestureFlags + 4) & 0x10) != 0)
  {
    [(UIGestureRecognizer *)self _gatherViewsToQueryForDelegateCall];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = v24 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v3);
          }

          if (![*(*(&v21 + 1) + 8 * i) gestureRecognizerShouldBegin:{self, v21}])
          {
            v4 = 0;
            goto LABEL_14;
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v4 = 1;
LABEL_14:
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (*&self->_gestureFlags & 1) == 0 || v3 && ([v3 containsObject:WeakRetained])
  {
    if (!v4)
    {
LABEL_32:
      v19 = 0;
      goto LABEL_33;
    }
  }

  else if (!v4 || ([WeakRetained gestureRecognizerShouldBegin:self] & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((*(&self->_gestureFlags + 1) & 4) != 0 && ![WeakRetained _gestureRecognizerShouldBegin:self])
  {
    goto LABEL_32;
  }

  v10 = [(UIGestureRecognizer *)self _activeEvents];
  v11 = [MEMORY[0x1E695DFA8] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v25 + 1) + 8 * j) touchesForGestureRecognizer:self];
        [v11 unionSet:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [UIEvent _inputPrecisionForTouches:v11];
  self->_inputPrecision = v18;

  v19 = 1;
LABEL_33:

  return v19;
}

- (int64_t)_recognitionEvent
{
  v2 = objc_getAssociatedObject(self, sel__recognitionEvent);
  v3 = [v2 integerValue];

  return v3;
}

- (void)_updateCachedActiveEventProperties
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(a1 + 184);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * i);
          *(a1 + 200) |= [v7 _buttonMask];
          *(a1 + 208) |= [v7 _modifierFlags];
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_sendActions
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if ([a1 _isPaused] && -[UIGestureRecognizer _state](a1) <= 2)
    {
      return;
    }

LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(a1 + 12) & 0x80) == 0 || [(UIGestureRecognizer *)a1 _state]< 2)
  {
    if ([a1 _isPaused] && -[UIGestureRecognizer _state](a1) < 3)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = [(UIGestureRecognizer *)a1 _state];
  *(a1 + 72) = 1;
  _UIGestureRecognizerSendActions(a1, 1);
  if ([(UIGestureRecognizer *)a1 _state]== 1)
  {
    *(a1 + 72) = v2;
  }

  if ([(UIGestureRecognizer *)a1 _state]!= 2)
  {
    v3 = 1;
LABEL_16:

    _UIGestureRecognizerSendActions(a1, v3);
  }
}

- (void)setGloballyScoped:(BOOL)a3
{
  v4 = self;
  sub_188D18058(a3);
}

- (NSUInteger)numberOfTouches
{
  v3 = [(UIGestureRecognizer *)self _activeTouchesEvent];
  v4 = [v3 touchesForGestureRecognizer:self];
  v5 = [v4 count];

  return v5;
}

- (NSSet)_allActiveTouches
{
  v2 = [(NSMutableSet *)self->_internalActiveTouches copy];

  return v2;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_inForceCapableEnvironment
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 view];
  v2 = [v1 traitCollection];
  v3 = [v2 forceTouchCapability] == 2;

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(UIGestureRecognizer *)self _appendDescriptionToString:v3 atLevel:0 includingDependencies:1];

  return v3;
}

- (id)_rawBriefDescription
{
  if (a1)
  {
    v2 = MEMORY[0x1E696AD60];
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v2 stringWithFormat:@"%@: %p", v4, a1];

    v6 = [a1 name];
    v7 = v6;
    if (v6)
    {
      [v5 appendFormat:@" (%@)", v6];
    }

    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      v8 = [a1[29] identifier];
      [v5 appendFormat:@"; id = %@", v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_failureDependents
{
  if (a1)
  {
    a1 = a1[22];
    v1 = vars8;
  }

  return a1;
}

- (id)_failureRequirements
{
  if (a1)
  {
    a1 = a1[21];
    v1 = vars8;
  }

  return a1;
}

- (void)_resetComponentController
{
  v2 = self;
  if ([(UIGestureRecognizer *)v2 _componentController])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55598(v4, v3);
    sub_18A4A7038();
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    sub_18A4A7018();
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)_componentControllerShouldReceiveTouch:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_189012598();

  return self & 1;
}

- (void)_sendTouchesToComponentController:(id)a3
{
  sub_188E4059C();
  sub_188D0FECC(&qword_1EA941110, sub_188E4059C);
  v4 = sub_18A4A77A8();
  v5 = self;
  sub_18901194C(v4);
}

- (BOOL)_isTouchGestureRecognizer
{
  v2 = [(UIGestureRecognizer *)self allowedTouchTypes];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_setRecognitionEvent:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  objc_setAssociatedObject(self, sel__recognitionEvent, v4, 1);
}

- (UIGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v11.receiver = self;
  v11.super_class = UIGestureRecognizer;
  v6 = [(UIGestureRecognizer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    _UIGestureRecognizerCommonInit(v6);
    if (target)
    {
      if (dyld_program_sdk_at_least() & 1) != 0 || ([target allowsWeakReference])
      {
        if (action)
        {
          _UIGestureRecognizerAddTargetToArray(&v7->_targets, target, action);
        }
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __45__UIGestureRecognizer_initWithTarget_action___block_invoke;
        v9[3] = &unk_1E70F35B8;
        v9[4] = target;
        v10 = v7;
        if (initWithTarget_action__once != -1)
        {
          dispatch_once(&initWithTarget_action__once, v9);
        }
      }
    }
  }

  return v7;
}

void __45__UIGestureRecognizer_initWithTarget_action___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_11) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as a target. This will be a hard crash in the future. Offending object: %@ hostObject: %@", &v5, 0x16u);
  }
}

- (UIGestureRecognizer)initWithCoder:(NSCoder *)coder
{
  if (dyld_program_sdk_at_least())
  {
    v5 = [(UIGestureRecognizer *)self init];
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = UIGestureRecognizer;
    v6 = [(UIGestureRecognizer *)&v21 init];
    v5 = v6;
    if (!v6)
    {
      return v5;
    }

    _UIGestureRecognizerCommonInit(v6);
  }

  [(UIGestureRecognizer *)v5 setEnabled:[(NSCoder *)coder decodeBoolForKey:@"UIGestureRecognizer.disabled"]^ 1];
  if ([(NSCoder *)coder containsValueForKey:@"UIGestureRecognizer.cancelsTouchesInView"])
  {
    v7 = [(NSCoder *)coder decodeBoolForKey:@"UIGestureRecognizer.cancelsTouchesInView"];
    v8 = 0x80000000;
    if (!v7)
    {
      v8 = 0;
    }

    *&v5->_gestureFlags = *&v5->_gestureFlags & 0xFFFFFFFF7FFFFFFFLL | v8;
  }

  if ([(NSCoder *)coder containsValueForKey:@"UIGestureRecognizer.delaysTouchesBegan"])
  {
    v9 = [(NSCoder *)coder decodeBoolForKey:@"UIGestureRecognizer.delaysTouchesBegan"];
    v10 = 0x100000000;
    if (!v9)
    {
      v10 = 0;
    }

    *&v5->_gestureFlags = *&v5->_gestureFlags & 0xFFFFFFFEFFFFFFFFLL | v10;
  }

  if ([(NSCoder *)coder containsValueForKey:@"UIGestureRecognizer.delaysTouchesEnded"])
  {
    v11 = [(NSCoder *)coder decodeBoolForKey:@"UIGestureRecognizer.delaysTouchesEnded"];
    v12 = 0x200000000;
    if (!v11)
    {
      v12 = 0;
    }

    *&v5->_gestureFlags = *&v5->_gestureFlags & 0xFFFFFFFDFFFFFFFFLL | v12;
  }

  if ([(NSCoder *)coder containsValueForKey:@"UIGestureRecognizer.allowedTouchTypes"])
  {
    v5->_allowedTouchTypes = [(NSCoder *)coder decodeIntegerForKey:@"UIGestureRecognizer.allowedTouchTypes"];
  }

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [(NSCoder *)coder decodeObjectOfClasses:v15 forKey:@"UIGestureRecognizer.allowedPressTypes"];
  allowedPressTypes = v5->_allowedPressTypes;
  v5->_allowedPressTypes = v16;

  if ([(NSCoder *)coder containsValueForKey:@"UIGestureRecognizer.requiredPreviewForceState"])
  {
    v5->_requiredPreviewForceState = [(NSCoder *)coder decodeIntegerForKey:@"UIGestureRecognizer.requiredPreviewForceState"];
  }

  if ([(NSCoder *)coder containsValueForKey:@"UIGestureRecognizer.requiresExclusiveTouchType"])
  {
    v18 = [(NSCoder *)coder decodeBoolForKey:@"UIGestureRecognizer.requiresExclusiveTouchType"];
    v19 = 0x40000000000;
    if (!v18)
    {
      v19 = 0;
    }

    *&v5->_gestureFlags = *&v5->_gestureFlags & 0xFFFFFBFFFFFFFFFFLL | v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (![(UIGestureRecognizer *)self isEnabled])
  {
    [a3 encodeBool:1 forKey:@"UIGestureRecognizer.disabled"];
  }

  gestureFlags = self->_gestureFlags;
  if ((gestureFlags & 0x80000000) != 0)
  {
    if ((gestureFlags & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [a3 encodeBool:0 forKey:@"UIGestureRecognizer.cancelsTouchesInView"];
    gestureFlags = self->_gestureFlags;
    if ((gestureFlags & 0x100000000) == 0)
    {
LABEL_5:
      if ((gestureFlags & 0x200000000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  [a3 encodeBool:1 forKey:@"UIGestureRecognizer.delaysTouchesBegan"];
  if ((*&self->_gestureFlags & 0x200000000) == 0)
  {
LABEL_6:
    [a3 encodeBool:0 forKey:@"UIGestureRecognizer.delaysTouchesEnded"];
  }

LABEL_7:
  [a3 encodeInteger:self->_allowedTouchTypes forKey:@"UIGestureRecognizer.allowedTouchTypes"];
  if ([(NSArray *)self->_allowedPressTypes count])
  {
    [a3 encodeObject:self->_allowedPressTypes forKey:@"UIGestureRecognizer.allowedPressTypes"];
  }

  requiredPreviewForceState = self->_requiredPreviewForceState;
  if (requiredPreviewForceState)
  {
    [a3 encodeInteger:requiredPreviewForceState forKey:@"UIGestureRecognizer.requiredPreviewForceState"];
  }

  v7 = (*&self->_gestureFlags >> 42) & 1;

  [a3 encodeBool:v7 forKey:@"UIGestureRecognizer.requiresExclusiveTouchType"];
}

- (void)setDelegate:(id)delegate
{
  v5 = objc_opt_respondsToSelector();
  v6 = 16;
  if ((v5 & 1) == 0)
  {
    v6 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFFEFLL | v6;
  v7 = objc_opt_respondsToSelector();
  v8 = 32;
  if ((v7 & 1) == 0)
  {
    v8 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFFDFLL | v8;
  v9 = objc_opt_respondsToSelector();
  v10 = 64;
  if ((v9 & 1) == 0)
  {
    v10 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFFBFLL | v10;
  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFFFELL | objc_opt_respondsToSelector() & 1;
  v11 = objc_opt_respondsToSelector();
  v12 = 8;
  if ((v11 & 1) == 0)
  {
    v12 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFFF7 | v12;
  v13 = objc_opt_respondsToSelector();
  v14 = 128;
  if ((v13 & 1) == 0)
  {
    v14 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFF7FLL | v14;
  v15 = objc_opt_respondsToSelector();
  v16 = 256;
  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFEFFLL | v16;
  v17 = objc_opt_respondsToSelector();
  v18 = 1024;
  if ((v17 & 1) == 0)
  {
    v18 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFBFFLL | v18;
  v19 = objc_opt_respondsToSelector();
  v20 = 2048;
  if ((v19 & 1) == 0)
  {
    v20 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFF7FFLL | v20;
  v21 = objc_opt_respondsToSelector();
  v22 = 4096;
  if ((v21 & 1) == 0)
  {
    v22 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFEFFFLL | v22;
  v23 = objc_opt_respondsToSelector();
  v24 = 0x2000;
  if ((v23 & 1) == 0)
  {
    v24 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFDFFFLL | v24;
  v25 = objc_opt_respondsToSelector();
  v26 = 0x4000;
  if ((v25 & 1) == 0)
  {
    v26 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFBFFFLL | v26;
  v27 = objc_opt_respondsToSelector();
  v28 = 0x8000;
  if ((v27 & 1) == 0)
  {
    v28 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFF7FFFLL | v28;
  v29 = objc_opt_respondsToSelector();
  v30 = 0x10000;
  if ((v29 & 1) == 0)
  {
    v30 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFEFFFFLL | v30;
  v31 = objc_opt_respondsToSelector();
  v32 = 0x20000;
  if ((v31 & 1) == 0)
  {
    v32 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFDFFFFLL | v32;
  v33 = objc_opt_respondsToSelector();
  v34 = 0x40000;
  if ((v33 & 1) == 0)
  {
    v34 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFBFFFFLL | v34;
  v35 = objc_opt_respondsToSelector();
  v36 = 0x80000;
  if ((v35 & 1) == 0)
  {
    v36 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFF7FFFFLL | v36;
  v37 = objc_opt_respondsToSelector();
  v38 = 0x100000;
  if ((v37 & 1) == 0)
  {
    v38 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFEFFFFFLL | v38;
  v39 = objc_opt_respondsToSelector();
  v40 = 0x200000;
  if ((v39 & 1) == 0)
  {
    v40 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFDFFFFFLL | v40;
  v41 = objc_opt_respondsToSelector();
  v42 = 0x400000;
  if ((v41 & 1) == 0)
  {
    v42 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFBFFFFFLL | v42;
  v43 = objc_opt_respondsToSelector();
  v44 = 0x800000;
  if ((v43 & 1) == 0)
  {
    v44 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFF7FFFFFLL | v44;
  v45 = objc_opt_respondsToSelector();
  v46 = 2;
  if ((v45 & 1) == 0)
  {
    v46 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFFFDLL | v46;
  v47 = objc_opt_respondsToSelector();
  v48 = 4;
  if ((v47 & 1) == 0)
  {
    v48 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFFFFFFFFFBLL | v48;
  v49 = objc_opt_respondsToSelector();
  gestureFlags = self->_gestureFlags;
  v51 = 512;
  if ((v49 & 1) == 0)
  {
    v51 = 0;
  }

  v52 = gestureFlags & 0xFFFFFFFFF7FFFDFFLL;
  v53 = (gestureFlags << 19) & 0x8000000;
  v54 = (gestureFlags & 0x60080) == 0;
  v55 = 0x8000000;
  if (v54)
  {
    v55 = v53;
  }

  *&self->_gestureFlags = v52 | v55 | v51;

  objc_storeWeak(&self->_delegate, delegate);
}

- (void)removeTarget:(id)target action:(SEL)action
{
  v23 = *MEMORY[0x1E69E9840];
  targets = self->_targets;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = targets;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (target)
        {
          v14 = [*(*(&v18 + 1) + 8 * v12) target];
          if (v14 != target)
          {
            v15 = [v13 target];
            if (v15)
            {

              goto LABEL_18;
            }
          }

          if (action)
          {
            v16 = [v13 action];

            if (v16 != action)
            {
              goto LABEL_18;
            }

LABEL_15:
            if (!v10)
            {
LABEL_16:
              v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }
          }

          else
          {

            if (!v10)
            {
              goto LABEL_16;
            }
          }

          [(NSMutableArray *)v10 addObject:v13, v18];
          goto LABEL_18;
        }

        if (!action || [*(*(&v18 + 1) + 8 * v12) action] == action)
        {
          goto LABEL_15;
        }

LABEL_18:
        ++v12;
      }

      while (v9 != v12);
      v17 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v9 = v17;
      if (!v17)
      {

        if (v10)
        {
          [(NSMutableArray *)v7 removeObjectsInArray:v10];
          goto LABEL_26;
        }

        return;
      }
    }
  }

  v10 = v7;
LABEL_26:
}

- (void)_updateContainer:(uint64_t)a1
{
  v49 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    v4 = (a1 + 48);
    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      objc_storeWeak(v4, obj);
      if (obj)
      {
        v5 = a1;
      }

      else
      {
        v5 = 0;
      }

      [*(a1 + 232) setContainer:v5];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(v4);
      objc_storeWeak((a1 + 48), obj);
      if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if (_UIIsGesturesFrameworkEnabled_enabled == 1)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v35 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
          }
        }

        else
        {
          v7 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1132) + 8);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
          }
        }
      }

      v8 = dyld_program_sdk_at_least();
      if (!obj && v8 && WeakRetained && (*(a1 + 8) & 0x800000000) != 0)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E488);
        if (*CategoryCachedImpl)
        {
          v36 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = v36;
            v38 = [a1 _briefDescription];
            v39 = [(UIGestureRecognizer *)a1 _state];
            v40 = _UIGestureRecognizerStateString(v39);
            *buf = 138412546;
            *&buf[4] = v38;
            v47 = 2112;
            v48 = v40;
            _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "%@: Cancelling gesture because the container was set to nil while in state %@", buf, 0x16u);
          }
        }

        v10 = *(a1 + 264);
        *buf = a1;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
        [(UIGestureEnvironment *)v10 _cancelGestureRecognizers:v11];
      }
    }

    v41 = viewFromContainer(obj);
    if (v41)
    {
      if (*(a1 + 120) && [(UIGestureRecognizer *)a1 _inForceCapableEnvironment])
      {
        [(UIGestureRecognizer *)a1 _ensureForceObservationChain];
      }

      if ((*(a1 + 13) & 2) != 0)
      {
        v12 = [v41 window];
        v13 = v12;
        if (v12)
        {
          [v12 _createSystemGestureGateGestureRecognizerIfNeeded];
          [v13 _createOtherSystemGateGestureRecognizersIfNeeded];
        }
      }

      v14 = [v41 _window];
      if (v14)
      {
        v15 = v14;
        v16 = [a1 _wantsPartialTouchSequences];

        if (v16)
        {
          v17 = UIApp;
          v18 = [v41 _window];
          v19 = [v17 _touchesEventForWindow:v18];

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v20 = [v19 allTouches];
          v21 = [v20 countByEnumeratingWithState:&v42 objects:buf count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v43;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v43 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v42 + 1) + 8 * i);
                v26 = [v25 view];
                if (!v26)
                {
                  v27 = [v25 window];
                  v26 = [v27 hitTest:0 withEvent:{-[UITouch _locationInWindow:](v25, 0)}];
                }

                if ([a1 _shouldReceiveTouch:v25 forEvent:v19 recognizerView:v41])
                {
                  [(UITouch *)v25 _addGestureRecognizer:a1];
                  v28 = [v19 _touchesForKey:a1];
                  [v28 addObject:v25];

                  [v19 _invalidateGestureRecognizerForWindowCache];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v42 objects:buf count:16];
            }

            while (v22);
          }
        }
      }

      v29 = [v41 _window];
      if (v29)
      {
        v30 = *(a1 + 8);

        if ((v30 & 0x1000000000000000) != 0)
        {
          v31 = UIApp;
          v32 = [v41 _window];
          v33 = [v31 _hoverEventForWindow:v32];

          v34 = [v41 _window];
          [v33 setNeedsHitTestResetForWindow:v34];
        }
      }
    }
  }
}

- (void)setContainer:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  if (WeakRetained != a3)
  {
    v6 = objc_loadWeakRetained(&self->_container);
    [(UIGestureRecognizer *)self _updateContainer:a3];
    if (a3)
    {
      v7 = viewFromContainer(a3);
      v8 = v7;
      if (self && v7)
      {
        *(&self->_gestureFlags + 4) |= 0x100u;
        [(UIGestureRecognizer *)self setView:v7];
        *(&self->_gestureFlags + 4) &= ~0x100u;
      }

      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (v6)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 0;
      }

      v11 = !v10;
      if (has_internal_diagnostics)
      {
        if ((v11 & 1) == 0)
        {
          v15 = viewFromContainer(v6);

          if (v15)
          {
            v16 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Re-attaching UIGestureRecognizer to a container without a view is unsupported", buf, 2u);
            }
          }
        }
      }

      else if ((v11 & 1) == 0)
      {
        v12 = viewFromContainer(v6);

        if (v12)
        {
          v13 = *(__UILogGetCategoryCachedImpl("Assert", &setContainer____s_category) + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *v17 = 0;
            _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Re-attaching UIGestureRecognizer to a container without a view is unsupported", v17, 2u);
          }
        }
      }
    }

    else
    {
      v14 = viewFromContainer(v6);
      if (self && v14)
      {
        *(&self->_gestureFlags + 4) |= 0x100u;
        [(UIGestureRecognizer *)self setView:0];
        *(&self->_gestureFlags + 4) &= ~0x100u;
      }
    }
  }
}

- (void)setView:(id)a3
{
  if ((*(&self->_gestureFlags + 4) & 0x100) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_container);

    if (WeakRetained != a3)
    {

      [(UIGestureRecognizer *)self _updateContainer:a3];
    }
  }
}

- (void)setCancelsTouchesInView:(BOOL)cancelsTouchesInView
{
  v3 = 0x80000000;
  if (!cancelsTouchesInView)
  {
    v3 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setDelaysTouchesBegan:(BOOL)delaysTouchesBegan
{
  v3 = 0x100000000;
  if (!delaysTouchesBegan)
  {
    v3 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setDelaysTouchesEnded:(BOOL)delaysTouchesEnded
{
  v3 = 0x200000000;
  if (!delaysTouchesEnded)
  {
    v3 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setEnabled:(BOOL)enabled
{
  v3 = enabled;
  v10[1] = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    node = self->_node;

    [(GFGestureNode *)node setDisabled:!v3];
  }

  else
  {
    gestureFlags = self->_gestureFlags;
    if (((gestureFlags >> 34) & 1) == v3)
    {
      v7 = 0x400000000;
      if (v3)
      {
        v7 = 0;
      }

      *&self->_gestureFlags = gestureFlags & 0xFFFFFFFBFFFFFFFFLL | v7;
      if ((gestureFlags & 0x800000000) != 0 && !v3)
      {
        gestureEnvironment = self->_gestureEnvironment;
        v10[0] = self;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
        [(UIGestureEnvironment *)gestureEnvironment _cancelGestureRecognizers:v9];
      }
    }
  }
}

- (void)setState:(UIGestureRecognizerState)state
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(&self->_gestureFlags + 4);
  *(&self->_gestureFlags + 4) = v5 | 0x200;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E490);
  if (*CategoryCachedImpl)
  {
    v24 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = [(UIGestureRecognizer *)self _briefDescription];
      v27 = _UIGestureRecognizerStateString(state);
      *buf = 138412546;
      v39 = v26;
      v40 = 2112;
      v41 = v27;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "%@: Setting state to %@", buf, 0x16u);
    }
  }

  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if ((state - 1) > 2)
    {
      if (state < UIGestureRecognizerStateCancelled)
      {
        v9 = 0;
        goto LABEL_69;
      }

      node = self->_node;
      v37 = 0;
      v17 = [(GFGestureNode *)node failWithReason:&stru_1EFB14550 error:&v37];
      v9 = v37;
      if (v17)
      {
        goto LABEL_69;
      }

      v18 = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4A0);
      if ((*v18 & 1) == 0)
      {
        goto LABEL_69;
      }

      v11 = *(v18 + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      *buf = 138412290;
      v39 = v9;
      v12 = "Couldn't fail the node: %@";
    }

    else
    {
      v7 = self->_node;
      v8 = GFGestureNodeDefaultValue();
      v37 = 0;
      LOBYTE(v7) = [(GFGestureNode *)v7 updateWithValue:v8 isFinal:state == UIGestureRecognizerStateEnded error:&v37];
      v9 = v37;

      if (v7)
      {
        goto LABEL_69;
      }

      v10 = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E498);
      if ((*v10 & 1) == 0)
      {
        goto LABEL_69;
      }

      v11 = *(v10 + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      *buf = 138412290;
      v39 = v9;
      v12 = "Couldn't update the node: %@";
    }

    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_69:

    goto LABEL_70;
  }

  v13 = [(UIGestureRecognizer *)self _state];
  v14 = v13;
  if (state >= UIGestureRecognizerStateBegan && !v13)
  {
    [(UIGestureEnvironment *)self->_gestureEnvironment setNeedsExclusivityUpdate];
    goto LABEL_13;
  }

  if (v13 > 2)
  {
    v15 = state;
    if ((v13 - 3) < 3)
    {
      goto LABEL_70;
    }

    goto LABEL_47;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      if (state != UIGestureRecognizerStateFailed)
      {
        if (state != UIGestureRecognizerStateBegan)
        {
          v15 = state;
          if (state == UIGestureRecognizerStatePossible)
          {
            v15 = UIGestureRecognizerStateBegan;
          }

          goto LABEL_47;
        }

LABEL_45:
        v15 = UIGestureRecognizerStateChanged;
        goto LABEL_47;
      }
    }

    else
    {
      v15 = state;
      if (v13 != 2)
      {
        goto LABEL_47;
      }

      if (state != UIGestureRecognizerStateFailed)
      {
        if (state != UIGestureRecognizerStateBegan)
        {
          v15 = state;
          if (state)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_45;
      }
    }

    v15 = UIGestureRecognizerStateCancelled;
    goto LABEL_47;
  }

LABEL_13:
  if ((state - 1) < 2)
  {
    v15 = UIGestureRecognizerStateBegan;
    goto LABEL_35;
  }

  if (state == UIGestureRecognizerStatePossible)
  {
    __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4B0);
    goto LABEL_70;
  }

  v15 = state;
  if (state != UIGestureRecognizerStateCancelled)
  {
LABEL_35:
    if (v14 == UIGestureRecognizerStatePossible && (v15 & 0xFFFFFFFFFFFFFFFDLL) == 1 && ![(UIGestureRecognizer *)self _shouldBegin])
    {
      v19 = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4A8);
      if (*v19)
      {
        v33 = *(v19 + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = v33;
          v35 = [(UIGestureRecognizer *)self _briefDescription];
          *buf = 138412290;
          v39 = v35;
          _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%@: Failing due to NO from gestureRecognizerShouldBegin", buf, 0xCu);
        }
      }

      state = UIGestureRecognizerStateFailed;
      self->_state_DO_NOT_USE_DIRECTLY = 5;
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  v15 = UIGestureRecognizerStateFailed;
  if ((*__UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4B0) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_47:
  if (v15 == state)
  {
    goto LABEL_49;
  }

  v28 = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4B8);
  if (*v28)
  {
    v36 = v5;
    v29 = *(v28 + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
      v31 = [(UIGestureRecognizer *)self _briefDescription];
      v32 = _UIGestureRecognizerStateString(v15);
      *buf = 138412546;
      v39 = v31;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "%@: Invalid state machine transition. Instead setting state to %@", buf, 0x16u);
    }

    state = v15;
    v5 = v36;
  }

  else
  {
LABEL_48:
    state = v15;
  }

LABEL_49:
  if (v14 != UIGestureRecognizerStateChanged && v14 == state)
  {
    goto LABEL_70;
  }

  self->_state_DO_NOT_USE_DIRECTLY = state;
  if (state == UIGestureRecognizerStateBegan)
  {
    *&self->_gestureFlags |= 0x4000000000uLL;
    v20 = v14 == UIGestureRecognizerStateBegan;
    v14 = UIGestureRecognizerStateBegan;
    if (v20)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v14 != state)
  {
LABEL_56:
    [(UIGestureRecognizer *)self _updateObserversForState:?];
    v14 = state;
  }

LABEL_57:
  if (dyld_program_sdk_at_least())
  {
    gestureFlags = self->_gestureFlags;
    if ((gestureFlags & 0x8000000000) == 0)
    {
      v22 = (gestureFlags & 0x5000000000) != 0x4000000000 || v14 <= UIGestureRecognizerStateBegan;
      v23 = 0x8000000000;
      if (v22)
      {
        v23 = 0;
      }

      *&self->_gestureFlags = v23 | gestureFlags;
    }
  }

  [(UIGestureEnvironment *)self->_gestureEnvironment setGestureNeedsUpdate:?];
  if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 4 && (*(&self->_gestureFlags + 4) & 0x80) != 0)
  {
    v9 = [(UIGestureRecognizer *)self _driver];
    [v9 fail];
    goto LABEL_69;
  }

LABEL_70:
  *(&self->_gestureFlags + 4) = *(&self->_gestureFlags + 4) & 0xFDFF | v5 & 0x200;
}

- (void)_updateObserversForState:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = *(a1 + 184);
    v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v13 = *v20;
      do
      {
        v4 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v19 + 1) + 8 * v4);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v6 = [(UIEvent *)v5 _eventObservers];
          v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v16;
            do
            {
              v10 = 0;
              do
              {
                if (*v16 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v15 + 1) + 8 * v10);
                if (objc_opt_respondsToSelector())
                {
                  [v11 _gestureRecognizer:a1 didTransitionToState:a2];
                }

                ++v10;
              }

              while (v8 != v10);
              v8 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v8);
          }

          ++v4;
        }

        while (v4 != v14);
        v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }
  }
}

- (void)_failWithReason:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    node = self->_node;
    v11 = 0;
    v6 = [(GFGestureNode *)node failWithReason:a3 error:&v11];
    v7 = v11;
    if ((v6 & 1) == 0)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_failWithReason____s_category);
      if (*CategoryCachedImpl)
      {
        v10 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v13 = v7;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Couldn't fail the node: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (([(UIGestureRecognizer *)self _state]- 1) < 3)
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }

    [(UIGestureRecognizer *)self setState:v9];
  }
}

- (void)setGestureEnvironment:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 264), a2);
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      v4 = [(UIGestureEnvironment *)a2 nodeCoordinator];
      [*(a1 + 232) setCoordinator:v4];
    }
  }
}

- (void)_setRequiresSystemGesturesToFail:(BOOL)a3
{
  gestureFlags = self->_gestureFlags;
  if (((((gestureFlags & 0x20000000000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x20000000000;
    if (!a3)
    {
      v4 = 0;
    }

    *&self->_gestureFlags = gestureFlags & 0xFFFFFDFFFFFFFFFFLL | v4;
    if (a3)
    {
      v7 = [(UIGestureRecognizer *)self view];
      v5 = [v7 window];
      v6 = v5;
      if (v5)
      {
        [v5 _createSystemGestureGateGestureRecognizerIfNeeded];
        [v6 _createOtherSystemGateGestureRecognizersIfNeeded];
      }
    }
  }
}

- (void)setRequiresExclusiveTouchType:(BOOL)requiresExclusiveTouchType
{
  v3 = 0x40000000000;
  if (!requiresExclusiveTouchType)
  {
    v3 = 0;
  }

  *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setName:(NSString *)name
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    node = self->_node;

    [(GFGestureNode *)node setTag:name];
  }

  else
  {
    name_DO_NOT_USE_DIRECTLY = self->_name_DO_NOT_USE_DIRECTLY;
    p_name_DO_NOT_USE_DIRECTLY = &self->_name_DO_NOT_USE_DIRECTLY;
    v6 = name_DO_NOT_USE_DIRECTLY;
    if (name_DO_NOT_USE_DIRECTLY != name && ![(NSString *)v6 isEqualToString:name])
    {

      objc_storeStrong(p_name_DO_NOT_USE_DIRECTLY, name);
    }
  }
}

- (void)_updateForceClassifierWithEvent:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 128);
    v3 = [a2 touchesForGestureRecognizer:a1];
    [v2 receiveObservedValue:v3];
  }
}

- (void)_componentsBegan:(id)a3 withEvent:(id)a4
{
  [(UIGestureRecognizer *)self _addActiveEvent:a4];
  [(UIGestureRecognizer *)self _updateCachedActiveEventProperties];
  v7 = [a4 type];
  if (v7 <= 8)
  {
    if ((v7 - 3) >= 2)
    {
      if (v7)
      {
        return;
      }

      [a4 timestamp];
      self->_lastTouchTimestamp = v13;
      [(UIGestureRecognizer *)self _addActiveTouches:a3];
      [(UIGestureRecognizer *)self _updateForceClassifierWithEvent:a4];
      if ((*(&self->_gestureFlags + 4) & 0x80) != 0)
      {
        v14 = [(UIGestureRecognizer *)self _driver];
        [v14 touchesBegan:a3 withEvent:a4];
      }

      if (self->_componentController)
      {
        [(UIGestureRecognizer *)self _sendTouchesToComponentController:a3];
      }

      [(UIGestureRecognizer *)self touchesBegan:a3 withEvent:a4];
      if ((*(&self->_gestureFlags + 3) & 0x10) != 0)
      {
        [UIApp _registerEstimatedTouches:a3 event:a4 forTouchable:self];
      }
    }

    else
    {
      if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if (_UIIsGesturesFrameworkEnabled_enabled == 1)
      {
        node = self->_node;
        v9 = [a3 allObjects];
        _UIGestureNodeUpdateEventComponentTracking(node, v9, 1);
      }

      [(UIGestureRecognizer *)self pressesBegan:a3 withEvent:a4];
    }

    goto LABEL_8;
  }

  if (v7 == 9)
  {
    if ((~*&self->_gestureFlags & 0x600000000000) != 0)
    {
      return;
    }

    [(UIGestureRecognizer *)self _draggingEnteredWithEvent:a4];
    goto LABEL_8;
  }

  if (v7 == 11)
  {
    if ((*(&self->_gestureFlags + 7) & 0x10) == 0)
    {
      return;
    }

    [(UIGestureRecognizer *)self _addActiveTouches:a3];
    [(UIGestureRecognizer *)self _hoverEntered:a3 withEvent:a4];
    goto LABEL_8;
  }

  if (v7 == 16 && (*&self->_gestureFlags & 0x8000000000000000) != 0)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      v11 = self->_node;
      v12 = [a3 allObjects];
      _UIGestureNodeUpdateEventComponentTracking(v11, v12, 1);
    }

    [(UIGestureRecognizer *)self _dynamicButtonsBegan:a3 withEvent:a4];
LABEL_8:
    if (self->_firstEventTimestamp == 0.0)
    {
      [a4 timestamp];
      self->_firstEventTimestamp = v10;
    }
  }
}

- (void)_addActiveEvent:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 184);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(a1 + 184);
      *(a1 + 184) = v5;

      v4 = *(a1 + 184);
    }

    [v4 addObject:a2];
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      v7 = *(a1 + 232);

      _UIGestureNodeUpdateEventTracking(v7, a2, 1);
    }
  }
}

- (void)_addActiveTouches:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 96);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = *(a1 + 96);
      *(a1 + 96) = v5;

      v4 = *(a1 + 96);
    }

    [v4 unionSet:a2];
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      v7 = *(a1 + 232);
      v8 = [a2 allObjects];
      _UIGestureNodeUpdateEventComponentTracking(v7, v8, 1);
    }
  }
}

- (void)_componentsChanged:(id)a3 withEvent:(id)a4
{
  v7 = [a4 type];
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 0xA)
  {
    [(UIGestureRecognizer *)self _addActiveEvent:a4];
  }

  [(UIGestureRecognizer *)self _updateCachedActiveEventProperties];
  if (v7 > 9)
  {
    if (v7 > 13)
    {
      if (v7 == 14)
      {
        if ((*(&self->_gestureFlags + 4) & 0x80) != 0)
        {
          v8 = [(UIGestureRecognizer *)self _driver];
          [v8 transformChangedWithEvent:a4];
        }

        if ((*(&self->_gestureFlags + 7) & 0x40) != 0)
        {

          [(UIGestureRecognizer *)self _transformChangedWithEvent:a4];
        }
      }

      else if (v7 == 16 && (*&self->_gestureFlags & 0x8000000000000000) != 0)
      {

        [(UIGestureRecognizer *)self _dynamicButtonsChanged:a3 withEvent:a4];
      }
    }

    else if (v7 == 10)
    {
      if ((*(&self->_gestureFlags + 7) & 0x20) != 0)
      {

        [(UIGestureRecognizer *)self _scrollingChangedWithEvent:a4];
      }
    }

    else if (v7 == 11 && (*(&self->_gestureFlags + 7) & 0x10) != 0)
    {

      [(UIGestureRecognizer *)self _hoverMoved:a3 withEvent:a4];
    }
  }

  else if ((v7 - 3) < 2)
  {

    [(UIGestureRecognizer *)self pressesChanged:a3 withEvent:a4];
  }

  else if (v7)
  {
    if (v7 == 9 && (~*&self->_gestureFlags & 0x600000000000) == 0)
    {

      [(UIGestureRecognizer *)self _draggingUpdatedWithEvent:a4];
    }
  }

  else
  {
    [a4 timestamp];
    self->_lastTouchTimestamp = v9;
    [(UIGestureRecognizer *)self _updateForceClassifierWithEvent:a4];
    if ((*(&self->_gestureFlags + 4) & 0x80) != 0)
    {
      v10 = [(UIGestureRecognizer *)self _driver];
      [v10 touchesMoved:a3 withEvent:a4];
    }

    if (self->_componentController)
    {
      [(UIGestureRecognizer *)self _sendTouchesToComponentController:a3];
    }

    [(UIGestureRecognizer *)self touchesMoved:a3 withEvent:a4];
    if ((*(&self->_gestureFlags + 3) & 0x10) != 0)
    {
      v11 = UIApp;

      [v11 _registerEstimatedTouches:a3 event:a4 forTouchable:self];
    }
  }
}

- (void)_componentsEnded:(id)a3 withEvent:(id)a4
{
  [(UIGestureRecognizer *)self _updateCachedActiveEventProperties];
  v7 = [a4 type];
  if (v7 > 8)
  {
    if (v7 == 9)
    {
      if ((~*&self->_gestureFlags & 0x600000000000) == 0)
      {

        [(UIGestureRecognizer *)self _draggingEndedWithEvent:a4];
      }
    }

    else if (v7 == 11)
    {
      if ((*(&self->_gestureFlags + 7) & 0x10) != 0)
      {
        [(UIGestureRecognizer *)self _hoverExited:a3 withEvent:a4];

        [(UIGestureRecognizer *)self _removeActiveTouchesAndInvalidateInitialTouchTypeIfNeeded:a3];
      }
    }

    else if (v7 == 16 && (*&self->_gestureFlags & 0x8000000000000000) != 0)
    {
      if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if (_UIIsGesturesFrameworkEnabled_enabled == 1)
      {
        node = self->_node;
        v9 = [a3 allObjects];
        _UIGestureNodeUpdateEventComponentTracking(node, v9, 0);
      }

      [(UIGestureRecognizer *)self _dynamicButtonsEnded:a3 withEvent:a4];
    }
  }

  else if ((v7 - 3) >= 2)
  {
    if (!v7)
    {
      [a4 timestamp];
      self->_lastTouchTimestamp = v10;
      [(UIGestureRecognizer *)self _removeActiveTouchesAndInvalidateInitialTouchTypeIfNeeded:a3];
      [(UIGestureRecognizer *)self _updateForceClassifierWithEvent:a4];
      if ((*(&self->_gestureFlags + 4) & 0x80) != 0)
      {
        v11 = [(UIGestureRecognizer *)self _driver];
        [v11 touchesEnded:a3 withEvent:a4];
      }

      if (self->_componentController)
      {
        [(UIGestureRecognizer *)self _sendTouchesToComponentController:a3];
      }

      [(UIGestureRecognizer *)self touchesEnded:a3 withEvent:a4];
      if ((*(&self->_gestureFlags + 3) & 0x10) != 0)
      {
        v12 = UIApp;

        [v12 _registerEstimatedTouches:a3 event:a4 forTouchable:self];
      }
    }
  }

  else
  {

    [(UIGestureRecognizer *)self pressesEnded:a3 withEvent:a4];
  }
}

- (uint64_t)_removeActiveTouchesAndInvalidateInitialTouchTypeIfNeeded:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    [*(result + 96) minusSet:a2];
    result = [*(v2 + 96) count];
    if (!result)
    {

      return [(UIGestureRecognizer *)v2 _invalidateInitialTouchType];
    }
  }

  return result;
}

- (void)_componentsCancelled:(id)a3 withEvent:(id)a4
{
  [(UIGestureRecognizer *)self _updateCachedActiveEventProperties];
  v7 = [a4 type];
  if (v7 > 8)
  {
    if (v7 == 9)
    {
      if ((~*&self->_gestureFlags & 0x600000000000) == 0)
      {

        [(UIGestureRecognizer *)self _draggingExitedWithEvent:a4];
      }
    }

    else if (v7 == 11)
    {
      if ((*(&self->_gestureFlags + 7) & 0x10) != 0)
      {
        [(UIGestureRecognizer *)self _hoverCancelled:a3 withEvent:a4];

        [(UIGestureRecognizer *)self _removeActiveTouchesAndInvalidateInitialTouchTypeIfNeeded:a3];
      }
    }

    else if (v7 == 16 && (*&self->_gestureFlags & 0x8000000000000000) != 0)
    {
      if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if (_UIIsGesturesFrameworkEnabled_enabled == 1)
      {
        node = self->_node;
        v9 = [a3 allObjects];
        _UIGestureNodeUpdateEventComponentTracking(node, v9, 0);
      }

      [(UIGestureRecognizer *)self _dynamicButtonsCancelled:a3 withEvent:a4];
    }
  }

  else if ((v7 - 3) >= 2)
  {
    if (!v7)
    {
      [a4 timestamp];
      self->_lastTouchTimestamp = v10;
      [(UIGestureRecognizer *)self _removeActiveTouchesAndInvalidateInitialTouchTypeIfNeeded:a3];
      [(UIGestureRecognizer *)self _updateForceClassifierWithEvent:a4];
      if ((*(&self->_gestureFlags + 4) & 0x80) != 0)
      {
        v11 = [(UIGestureRecognizer *)self _driver];
        [v11 touchesCancelled:a3 withEvent:a4];
      }

      if (self->_componentController)
      {
        [(UIGestureRecognizer *)self _sendTouchesToComponentController:a3];
      }

      [(UIGestureRecognizer *)self touchesCancelled:a3 withEvent:a4];
      if ((*(&self->_gestureFlags + 3) & 0x10) != 0)
      {
        v12 = UIApp;

        [v12 _registerEstimatedTouches:a3 event:a4 forTouchable:self];
      }
    }
  }

  else
  {

    [(UIGestureRecognizer *)self pressesCancelled:a3 withEvent:a4];
  }
}

- (void)_addTouch:(id)a3 forEvent:(id)a4
{
  if ([objc_opt_class() _supportsTouchContinuation] && (-[NSMutableSet containsObject:](self->_internalActiveTouches, "containsObject:", a3) & 1) == 0)
  {
    [(UITouch *)a3 _addGestureRecognizer:?];
    [a4 _addTouch:a3 forDelayedDelivery:1];
    if (([a3 phase] - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      gestureEnvironment = self->_gestureEnvironment;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __42__UIGestureRecognizer__addTouch_forEvent___block_invoke;
      v8[3] = &unk_1E710B580;
      v8[4] = a3;
      v8[5] = a4;
      [(UIGestureEnvironment *)gestureEnvironment _scheduleTouchContinuationDeliveryForGestureRecognizer:v8 deliveryBlock:?];
    }
  }
}

uint64_t __42__UIGestureRecognizer__addTouch_forEvent___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) phase];
  [*(a1 + 32) setPhase:0];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
  [a2 _componentsBegan:v5 withEvent:*(a1 + 40)];

  if (a2)
  {
    a2[1] |= 0x800000000uLL;
  }

  v6 = *(a1 + 32);

  return [v6 setPhase:v4];
}

- (void)_removeTouch:(uint64_t)a3 forEvent:(char)a4 byCancellingTouches:
{
  if (a1)
  {
    if ([*(a1 + 96) containsObject:a2])
    {
      v8 = *(a1 + 264);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __65__UIGestureRecognizer__removeTouch_forEvent_byCancellingTouches___block_invoke;
      v9[3] = &unk_1E710B5D0;
      v10 = a4;
      v9[4] = a2;
      v9[5] = a3;
      v9[6] = a1;
      [(UIGestureEnvironment *)v8 _scheduleTouchContinuationDeliveryForGestureRecognizer:a1 deliveryBlock:v9];
    }
  }
}

uint64_t __65__UIGestureRecognizer__removeTouch_forEvent_byCancellingTouches___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    a2[1] |= 0x800000000uLL;
  }

  v4 = [*(a1 + 32) phase];
  v5 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    [v5 setPhase:4];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
    [a2 _componentsCancelled:v6 withEvent:*(a1 + 40)];
  }

  else
  {
    [v5 setPhase:3];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
    [a2 _componentsEnded:v6 withEvent:*(a1 + 40)];
  }

  [*(a1 + 40) _removeTouch:*(a1 + 32) fromGestureRecognizer:*(a1 + 48)];
  [(UITouch *)*(a1 + 32) _removeGestureRecognizer:?];
  v7 = *(a1 + 32);

  return [v7 setPhase:v4];
}

- (void)transferTouchesFromGestureRecognizer:(void *)a1
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      v3 = a1;
      v4 = UIApp;
      v5 = [a1 view];
      v6 = [v5 _window];
      v7 = [v4 _touchesEventForWindow:v6];

      v8 = UIApp;
      v9 = [v2 view];
      v10 = [v9 _window];
      v11 = [v8 _touchesEventForWindow:v10];

      if (v7 != v11)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:sel_transferTouchesFromGestureRecognizer_ object:v3 file:@"UIGestureRecognizer.m" lineNumber:1538 description:{@"%@ is not in the same window scene as %@", v2, v3}];
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v2[12];
      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        v28 = v3;
        do
        {
          v15 = 0;
          v29 = v13;
          do
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v35 + 1) + 8 * v15);
            v17 = [v3 view];
            v18 = [v17 _window];

            if (!v18 || ([v16 window], v19 = objc_claimAutoreleasedReturnValue(), v19, v18 == v19))
            {
              [v2 _removeTouch:v16 forEvent:v7];
            }

            else
            {
              v20 = v14;
              v21 = v2;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v22 = [v16 gestureRecognizers];
              v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v32;
                do
                {
                  v26 = 0;
                  do
                  {
                    if (*v32 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    [*(*(&v31 + 1) + 8 * v26++) _removeTouch:v16 forEvent:v7];
                  }

                  while (v24 != v26);
                  v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
                }

                while (v24);
              }

              [v16 setWindow:v18];
              v2 = v21;
              v14 = v20;
              v3 = v28;
              v13 = v29;
            }

            [v3 _addTouch:v16 forEvent:v7];

            ++v15;
          }

          while (v15 != v13);
          v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)addTouchesFromGestureRecognizer:(void *)a1
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = UIApp;
    v5 = [a1 view];
    v6 = [v5 _window];
    v7 = [v4 _touchesEventForWindow:v6];

    v8 = UIApp;
    v9 = [a2 view];
    v10 = [v9 _window];
    v11 = [v8 _touchesEventForWindow:v10];

    if (v7 != v11)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:sel_addTouchesFromGestureRecognizer_ object:a1 file:@"UIGestureRecognizer.m" lineNumber:1561 description:{@"%@ is not in the same window scene as %@", a2, a1}];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = a2[12];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [a1 _addTouch:*(*(&v18 + 1) + 8 * v16++) forEvent:v7];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)ignoreTouch:(UITouch *)touch forEvent:(UIEvent *)event
{
  v30 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v7 = _UIGestureDelayedTouchForUITouch(touch, self->_delayedTouches);
    if (v7)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_enqueueDelayedTouchToSend____s_category);
      if (*CategoryCachedImpl)
      {
        v12 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          log = v12;
          v19 = [(UIGestureRecognizer *)self _briefDescription];
          v13 = v7[3];
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = v7[3];
          v17 = v7[4];
          v18 = [v17 _phaseDescription];
          *buf = 138413058;
          v23 = v19;
          v24 = 2112;
          v25 = v15;
          v26 = 2048;
          v27 = v16;
          v28 = 2112;
          v29 = v18;
          _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%@: Enqueueing delayed touch <%@: %p; phase = %@>", buf, 0x2Au);
        }
      }

      [(UIGestureDelayedEventComponentDispatcher *)self->_delayedEventComponentDispatcher enqueueDelayedTouchToSend:v7];
      [(NSMutableArray *)self->_delayedTouches removeObject:v7];
    }
  }

  v9 = [MEMORY[0x1E695DFD8] setWithObject:touch];
  [(UIEvent *)event _removeGestureRecognizer:self fromComponents:v9];
  [(UIGestureRecognizer *)self _removeActiveTouchesAndInvalidateInitialTouchTypeIfNeeded:v9];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    node = self->_node;
    v21 = touch;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    _UIGestureNodeUpdateEventComponentTracking(node, v11, 0);
  }
}

- (void)ignorePress:(UIPress *)button forEvent:(UIPressesEvent *)event
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = _UIGestureDelayedTouchForUITouch(button, self->_delayedPresses);
    if (v6)
    {
      [(UIGestureDelayedEventComponentDispatcher *)self->_delayedEventComponentDispatcher enqueueDelayedPressToSend:v6];
      [(NSMutableArray *)self->_delayedPresses removeObject:v6];
    }
  }

  [(UIPress *)button _removeGestureRecognizer:self, event];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    node = self->_node;
    v9[0] = button;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    _UIGestureNodeUpdateEventComponentTracking(node, v8, 0);
  }
}

- (id)_activeEventOfType:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_activeEvents;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_activePressesEvent
{
  if (a1)
  {
    a1 = [a1 _activeEventOfType:3];
    v1 = vars8;
  }

  return a1;
}

- (id)_activeComponentsForEvent:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = [a2 _componentsForGestureRecognizer:{a1, 0}];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [v8 _eventComponentPhase];
          v10 = [v9 value];

          if (v10 <= 2)
          {
            if (!v5)
            {
              v5 = [MEMORY[0x1E695DFA8] set];
            }

            [v5 addObject:v8];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)_centroidOfTouches:(id)a3 excludingEnded:(BOOL)a4
{
  v4 = _CentroidOfTouches(a3, a4);
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)_delayTouchesForEventIfNeeded:(uint64_t)a1
{
  if (a1)
  {
    if (([a1 delaysTouchesBegan] & 1) != 0 || objc_msgSend(*(a1 + 32), "count"))
    {
      [(UIGestureRecognizer *)a1 _delayTouchesForEvent:a2 inPhase:0];
    }

    if ((*(a1 + 12) & 2) != 0)
    {

      [(UIGestureRecognizer *)a1 _delayTouchesForEvent:a2 inPhase:3];
    }
  }
}

- (void)_delayPressesForEventIfNeeded:(uint64_t)a1
{
  if (a1)
  {
    if (([a1 delaysTouchesBegan] & 1) != 0 || objc_msgSend(*(a1 + 40), "count"))
    {
      [(UIGestureRecognizer *)a1 _delayPressesForEvent:a2 inPhase:0];
    }

    if ((*(a1 + 12) & 2) != 0)
    {

      [(UIGestureRecognizer *)a1 _delayPressesForEvent:a2 inPhase:3];
    }
  }
}

- (void)_delayPress:(void *)a3 forEvent:
{
  if (a1)
  {
    v6 = _UIGestureDelayedTouchForUITouch(a2, *(a1 + 40));

    if (!v6)
    {
      if (!*(a1 + 40))
      {
        v7 = [MEMORY[0x1E695DF70] array];
        v8 = *(a1 + 40);
        *(a1 + 40) = v7;
      }

      v9 = [(UIGestureDelayedEventComponentDispatcher *)*(a1 + 272) delayedPressForPress:a2 event:a3];
      [*(a1 + 40) addObject:v9];
    }
  }
}

- (void)_delayTouchesForEvent:(uint64_t)a3 inPhase:
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_delayTouchesForEvent_inPhase____s_category);
    if (*CategoryCachedImpl)
    {
      v17 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [a1 _briefDescription];
        if (a2)
        {
          v19 = MEMORY[0x1E696AEC0];
          v20 = a2;
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = [v19 stringWithFormat:@"<%@: %p>", v22, v20];
        }

        else
        {
          v23 = @"(nil)";
        }

        *buf = 138412802;
        v30 = v18;
        v31 = 2112;
        v32 = v23;
        v33 = 2048;
        v34 = a3;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "%@: Delaying touches for event: %@; phase: %li", buf, 0x20u);
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [a2 _touchesForGesture:a1 withPhase:a3];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = _UIGestureDelayedTouchForUITouch(v12, *(a1 + 32));

          if (!v13)
          {
            if (!*(a1 + 32))
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v15 = *(a1 + 32);
              *(a1 + 32) = v14;
            }

            v16 = [(UIGestureDelayedEventComponentDispatcher *)*(a1 + 272) delayedTouchForTouch:v12 event:a2];
            [*(a1 + 32) addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }
  }
}

- (void)_delayPressesForEvent:(uint64_t)a3 inPhase:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [a2 _pressesForGestureRecognizer:a1 withPhase:{a3, 0}];
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

          [(UIGestureRecognizer *)a1 _delayPress:a2 forEvent:?];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_touchWasCancelled:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = _UIGestureDelayedTouchForUITouch(a2, *(a1 + 32));
    if (v4)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_touchWasCancelled____s_category);
      if (*CategoryCachedImpl)
      {
        v6 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = v6;
          v8 = [a1 _briefDescription];
          v9 = 138412546;
          v10 = v8;
          v11 = 2112;
          v12 = a2;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@: Cancelling delay of touch %@", &v9, 0x16u);
        }
      }

      [(UIGestureDelayedEventComponentDispatcher *)*(a1 + 272) removeDelayedTouch:v4];
      [*(a1 + 32) removeObject:v4];
    }
  }
}

- (void)_pressWasCancelled:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = _UIGestureDelayedTouchForUITouch(a2, *(a1 + 40));
    if (v4)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_pressWasCancelled____s_category);
      if (*CategoryCachedImpl)
      {
        v6 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = v6;
          v8 = [a1 _briefDescription];
          v9 = 138412546;
          v10 = v8;
          v11 = 2112;
          v12 = a2;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@: Cancelling delay of press %@", &v9, 0x16u);
        }
      }

      [(UIGestureDelayedEventComponentDispatcher *)*(a1 + 272) removeDelayedPress:v4];
      [*(a1 + 40) removeObject:v4];
    }
  }
}

- (int64_t)_depthFirstCompare:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  if (a3)
  {
    v6 = objc_loadWeakRetained(a3 + 6);

    if (WeakRetained && v6)
    {
      result = [WeakRetained _compareGestureRecognizerContainer:v6];
      if (!result)
      {
        if (WeakRetained == v6)
        {
          v9 = [WeakRetained gestureRecognizers];
          v10 = [v9 indexOfObject:self];

          v11 = [v6 gestureRecognizers];
          v12 = [v11 indexOfObject:a3];

          if (v10 < v12)
          {
            return -1;
          }

          else
          {
            return 1;
          }
        }

        else
        {
          return 0;
        }
      }

      return result;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (WeakRetained)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

- (uint64_t)_internalShouldReceiveEvent:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    v5 = [a1 _driver];
    v4 = [v5 shouldReceiveEvent:a2];
  }

  else
  {
    v4 = 0;
  }

  v6 = [a2 type];
  v7 = 0;
  if (v6 > 9)
  {
    if (v6 > 13)
    {
      if (v6 == 14)
      {
        v10 = *(a1 + 8) >> 62;
      }

      else
      {
        if (v6 != 16)
        {
          goto LABEL_28;
        }

        v10 = *(a1 + 8) >> 63;
      }
    }

    else if (v6 == 10)
    {
      v10 = *(a1 + 8) >> 61;
    }

    else
    {
      if (v6 != 11)
      {
        goto LABEL_28;
      }

      v10 = *(a1 + 8) >> 60;
    }

    if (((v4 | v10) & 1) == 0)
    {
LABEL_27:
      v7 = 0;
      goto LABEL_28;
    }

LABEL_24:
    v7 = [a1 shouldReceiveEvent:a2];
    goto LABEL_28;
  }

  if ((v6 - 3) < 2)
  {
    goto LABEL_24;
  }

  if (!v6)
  {
    if (!*(a1 + 80) && !v4)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v6 == 9)
  {
    v8 = *(a1 + 8);
    if ((v8 & 0x200000000000) != 0)
    {
      v9 = v8 >> 46;
    }

    else
    {
      v9 = 0;
    }

    if (((v9 | v4) & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_28:
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_internalShouldReceiveEvent____s_category);
  if (*CategoryCachedImpl)
  {
    v13 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = [a1 _briefDescription];
      if (v7)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = objc_opt_class();
      v17 = v23;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "%@: Returning %@ for event class: %@", &v18, 0x20u);
    }
  }

  return v7;
}

- (uint64_t)_shouldReceivePress:(uint64_t)a3 forPressesEvent:
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 8);
    if ((~v6 & 0x100000800000000) != 0)
    {
      v7 = [result _shouldReceiveEvent:a3];
      v8 = 0x100000000000000;
      if (v7)
      {
        v8 = 0x300000000000000;
      }

      v6 = *(v5 + 8) & 0xFCFFFFFFFFFFFFFFLL | v8;
      *(v5 + 8) = v6;
    }

    if ((v6 & 0x200000000000000) != 0)
    {
      result = [(UIGestureRecognizer *)v5 _delegateShouldReceivePressesEvent:a3];
      if (result)
      {
        result = [v5 _shouldReceivePress:a2];
        if (result)
        {
          result = [(UIGestureRecognizer *)v5 _delegateShouldReceivePress:a2];
          if (result)
          {
            if ((*(v5 + 16) & 0x80) != 0)
            {
              v9 = [v5 _driver];
              v10 = [v9 shouldReceiveComponent:a2 withEvent:a3];

              return v10;
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_delegateShouldReceivePressesEvent:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 8);
    if ((~v3 & 0x400000800000000) != 0)
    {
      v4 = [(UIGestureRecognizer *)result _delegateShouldReceiveEvent:a2];
      v5 = 0x400000000000000;
      if (v4)
      {
        v5 = 0xC00000000000000;
      }

      v3 = *(v2 + 8) & 0xF3FFFFFFFFFFFFFFLL | v5;
      *(v2 + 8) = v3;
    }

    return (v3 >> 59) & 1;
  }

  return result;
}

- (uint64_t)_delegateShouldReceivePress:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 248));
  v5 = WeakRetained;
  v6 = *(a1 + 8);
  if ((v6 & 0x10000) == 0)
  {
    goto LABEL_5;
  }

  if ([WeakRetained _gestureRecognizer:a1 shouldReceivePress:a2])
  {
    v6 = *(a1 + 8);
LABEL_5:
    if ((v6 & 0x40) != 0)
    {
      v7 = [v5 gestureRecognizer:a1 shouldReceivePress:a2];
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (BOOL)_shouldReceivePress:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = [(UIGestureRecognizer *)self allowedPressTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "type")}];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)_shouldReceiveTouch:(id)a3 forEvent:(id)a4 recognizerView:(id)a5
{
  v5 = self;
  v35 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (![(UIGestureRecognizer *)self requiresExclusiveTouchType:a3]|| (*(&v5->_gestureFlags + 5) & 8) == 0)
    {
      goto LABEL_4;
    }

    v9 = [a3 type];
    initialTouchType = v5->_initialTouchType;
    v8 = v9 == initialTouchType;
    if ((*__UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4C0) & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v9 != initialTouchType)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4C8);
      if (*CategoryCachedImpl)
      {
        v27 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = v27;
          v29 = [(UIGestureRecognizer *)v5 _briefDescription];
          v30 = [MEMORY[0x1E696AD98] numberWithInteger:v5->_initialTouchType];
          v31 = 138412546;
          v32 = v29;
          v33 = 2112;
          v34 = v30;
          _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "%@: Disallowing touch for gesture recognizer because it does not match _initialTouchType(%@)", &v31, 0x16u);
        }
      }

      v8 = 0;
    }

    else
    {
LABEL_4:
      v8 = 1;
    }

LABEL_6:
    v11 = [a4 type];
    v12 = v11 == 0;
    v13 = dyld_program_sdk_at_least();
    v14 = [(UIGestureRecognizer *)v5 view];
    if (!v8 || (v5->_allowedTouchTypes & (1 << [a3 type])) == 0 || !-[UIGestureRecognizer isEnabled](v5, "isEnabled") || -[UIGestureRecognizer state](v5, "state") > UIGestureRecognizerStateChanged)
    {
      goto LABEL_41;
    }

    if (v11 || !v14)
    {
      if (v11)
      {
        if (![(UIGestureRecognizer *)v5 _shouldReceiveEvent:a4]|| ([(UIGestureRecognizer *)v5 _delegateShouldReceiveEvent:a4]& 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_29:
        if (![(UIGestureRecognizer *)v5 _shouldReceiveTouch:a3 withEvent:a4]|| ((v12 | v13) & 1) != 0 && ![(UIGestureRecognizer *)v5 _delegateShouldReceiveTouch:a3 forEvent:a4])
        {
          goto LABEL_41;
        }

        if ((*(&v5->_gestureFlags + 4) & 0x80) == 0)
        {
          if (!v5->_componentController || [(UIGestureRecognizer *)v5 _componentControllerShouldReceiveTouch:a3])
          {
            goto LABEL_45;
          }

LABEL_41:
          LOBYTE(v5) = 0;
LABEL_42:

          return v5;
        }

        v23 = [(UIGestureRecognizer *)v5 _driver];
        if (([v23 shouldReceiveComponent:a3 withEvent:a4] & 1) == 0)
        {

          goto LABEL_41;
        }

        if (v5->_componentController)
        {
          v24 = [(UIGestureRecognizer *)v5 _componentControllerShouldReceiveTouch:a3];

          if (!v24)
          {
            goto LABEL_41;
          }
        }

        else
        {
        }

LABEL_45:
        if ((*(&v5->_gestureFlags + 5) & 8) == 0)
        {
          -[UIGestureRecognizer _setInitialTouchType:](v5, [a3 type]);
        }

        LOBYTE(v5) = 1;
        goto LABEL_42;
      }
    }

    else
    {
      v15 = [v14 _window];
      v16 = [v15 _exclusiveTouchView];

      if (v16)
      {
        v17 = [v16 isDescendantOfView:v14];

        if ((v17 & 1) == 0)
        {
          goto LABEL_41;
        }
      }
    }

    gestureFlags = v5->_gestureFlags;
    if ((~gestureFlags & 0x10000800000000) != 0)
    {
      v19 = [(UIGestureRecognizer *)v5 _shouldReceiveEvent:a4];
      v20 = 0x10000000000000;
      if (v19)
      {
        v20 = 0x30000000000000;
      }

      gestureFlags = *&v5->_gestureFlags & 0xFFCFFFFFFFFFFFFFLL | v20;
      *&v5->_gestureFlags = gestureFlags;
    }

    if ((gestureFlags & 0x20000000000000) == 0)
    {
      goto LABEL_41;
    }

    if ((~gestureFlags & 0x40000800000000) != 0)
    {
      v21 = [(UIGestureRecognizer *)v5 _delegateShouldReceiveEvent:a4];
      v22 = 0x40000000000000;
      if (v21)
      {
        v22 = 0xC0000000000000;
      }

      gestureFlags = *&v5->_gestureFlags & 0xFF3FFFFFFFFFFFFFLL | v22;
      *&v5->_gestureFlags = gestureFlags;
    }

    if ((gestureFlags & 0x80000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  return v5;
}

- (uint64_t)_delegateShouldReceiveEvent:(uint64_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 248));
  v5 = WeakRetained;
  v6 = *(a1 + 8);
  if ((v6 & 0x4000) != 0)
  {
    v7 = [WeakRetained _gestureRecognizer:a1 shouldReceiveEvent:a2];
    v6 = *(a1 + 8);
  }

  else
  {
    v7 = 1;
  }

  v8 = ((v6 & 0x10) == 0) & v7;
  if ((v6 & 0x10) != 0 && v7)
  {
    v8 = [v5 gestureRecognizer:a1 shouldReceiveEvent:a2];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_delegateShouldReceiveEvent____s_category);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [a1 _briefDescription];
      if (v8)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v16 = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = objc_opt_class();
      v15 = v21;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@: Delegate is returning %@ for event class: %@", &v16, 0x20u);
    }
  }

  return v8;
}

- (uint64_t)_delegateShouldReceiveTouch:(void *)a3 forEvent:
{
  v23 = *MEMORY[0x1E69E9840];
  if (![a3 type] && (*(a1 + 11) & 0x80) != 0)
  {
    [(UIGestureRecognizer *)a1 _gatherViewsToQueryForDelegateCall];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v21 = 0u;
    v13 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v18 + 1) + 8 * v16) _gestureRecognizerShouldReceiveTouch:{a1, v18}])
          {
            v6 = 0;
            goto LABEL_28;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_28:
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 248));
  v8 = WeakRetained;
  v9 = *(a1 + 8);
  if ((v9 & 0x8000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  if ((v9 & 0x8000) != 0 && v6)
  {
    v10 = [WeakRetained _gestureRecognizer:a1 shouldReceiveTouch:a2];
    v9 = *(a1 + 8);
  }

  if ((v9 & 0x20) == 0)
  {
    v11 = v10;
    goto LABEL_30;
  }

  if (!v5)
  {
    if (!v10)
    {
      v11 = 0;
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v12 = [v5 containsObject:v8];
  v11 = v12 & v10;
  if ((v12 & 1) == 0 && ((v10 ^ 1) & 1) == 0)
  {
LABEL_26:
    v11 = [v8 gestureRecognizer:a1 shouldReceiveTouch:{a2, v18}];
  }

LABEL_30:

  return v11;
}

- (void)_setInitialTouchType:(void *)a1
{
  v19 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4E0);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [a1 _briefDescription];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v13 = 138412802;
      v14 = v8;
      v15 = 2080;
      v16 = "[UIGestureRecognizer _setInitialTouchType:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@: %s (type=%@)", &v13, 0x20u);
    }
  }

  if ((a1[10] & (1 << a2)) != 0)
  {
    a1[11] = a2;
    a1[1] |= 0x80000000000uLL;
  }

  else
  {
    v5 = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4E8);
    if (*v5)
    {
      v10 = *(v5 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [a1 _briefDescription];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%@: Attempting to set initial touch type, that is not allowed...", &v13, 0xCu);
      }
    }
  }
}

- (uint64_t)_shouldReceiveDynamicButtonEvent:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 16);
    if ((v3 & 1) == 0 || (*(result + 12) & 8) == 0)
    {
      if ([result _shouldReceiveEvent:a2])
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }

      v3 = *(v2 + 16) & 0xFFFC | v4;
      *(v2 + 16) = v3;
    }

    return (v3 >> 1) & 1;
  }

  return result;
}

- (uint64_t)_delegateShouldReceiveDynamicButtonEvent:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 16);
    if ((v3 & 4) == 0 || (*(result + 12) & 8) == 0)
    {
      if ([(UIGestureRecognizer *)result _delegateShouldReceiveEvent:a2])
      {
        v4 = 12;
      }

      else
      {
        v4 = 4;
      }

      v3 = *(v2 + 16) & 0xFFF3 | v4;
      *(v2 + 16) = v3;
    }

    return (v3 >> 3) & 1;
  }

  return result;
}

- (uint64_t)_delegateShouldReceiveDynamicButton:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 248));
  v5 = WeakRetained;
  if ((*(a1 + 10) & 0x80) != 0)
  {
    v6 = [WeakRetained _gestureRecognizer:a1 shouldReceiveDynamicButton:a2];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (uint64_t)_shouldReceiveDynamicButton:(uint64_t)a3 forEvent:
{
  if (!a1 || !-[UIGestureRecognizer _shouldReceiveDynamicButtonEvent:](a1, a3) || !-[UIGestureRecognizer _delegateShouldReceiveDynamicButtonEvent:](a1, a3) || ![a1 _shouldReceiveDynamicButton:a2])
  {
    return 0;
  }

  return [(UIGestureRecognizer *)a1 _delegateShouldReceiveDynamicButton:a2];
}

- (void)_removeActiveEvent:(uint64_t)a1
{
  if (a1)
  {
    [*(a1 + 184) removeObject:a2];
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      v4 = *(a1 + 232);

      _UIGestureNodeUpdateEventTracking(v4, a2, 0);
    }
  }
}

- (void)_ensureForceObservationChain
{
  if (a1)
  {
    v2 = *(a1 + 112);
    if (!v2)
    {
      v3 = [objc_opt_class() _shouldUseLinearForceLevelClassifier];
      v4 = off_1E70EBB20;
      if (!v3)
      {
        v4 = off_1E70EBF20;
      }

      v5 = objc_alloc_init(*v4);
      v6 = *(a1 + 112);
      *(a1 + 112) = v5;

      v2 = *(a1 + 112);
    }

    v7 = [v2 delegate];

    if (v7 != a1)
    {
      [*(a1 + 112) setDelegate:a1];
    }

    if (!*(a1 + 128))
    {
      v8 = objc_alloc_init(_UITouchForceObservable);
      v9 = *(a1 + 128);
      *(a1 + 128) = v8;

      *(a1 + 152) = 0;
      *(a1 + 8) &= 0xFFF3FFFFFFFFFFFFLL;
      v10 = objc_alloc_init(MEMORY[0x1E696ADB0]);
      v11 = *(a1 + 160);
      *(a1 + 160) = v10;
    }

    if (!*(a1 + 136))
    {
      v12 = [*(a1 + 128) addObserver:*(a1 + 112)];
      v13 = *(a1 + 136);
      *(a1 + 136) = v12;
    }
  }
}

- (BOOL)__canPreventGestureRecognizer:(id)a3
{
  if ((*(&self->_gestureFlags + 4) & 0x400) == 0 || (v5 = [(UIGestureRecognizer *)self canPreventGestureRecognizer:a3]) != 0)
  {

    LOBYTE(v5) = [(UIGestureRecognizer *)self _delegateCanPreventGestureRecognizer:a3];
  }

  return v5;
}

- (uint64_t)_delegateCanPreventGestureRecognizer:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 248));
  v5 = WeakRetained;
  v6 = *(a1 + 8);
  if ((v6 & 2) != 0)
  {
    if (![WeakRetained gestureRecognizer:a1 canPreventGestureRecognizer:a2])
    {
      goto LABEL_10;
    }

    v6 = *(a1 + 8);
  }

  if ((v6 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  if ([v5 _gestureRecognizer:a1 canPreventGestureRecognizer:a2])
  {
    v6 = *(a1 + 8);
LABEL_8:
    if ((v6 & 8) != 0)
    {
      if ([v5 gestureRecognizer:a1 shouldRecognizeSimultaneouslyWithGestureRecognizer:a2])
      {
        goto LABEL_10;
      }

      v6 = *(a1 + 8);
    }

    if ((v6 & 0x2000) != 0)
    {
      v7 = [v5 _gestureRecognizer:a1 shouldRecognizeSimultaneouslyWithGestureRecognizer:a2] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_15;
  }

LABEL_10:
  v7 = 0;
LABEL_15:

  return v7;
}

- (uint64_t)_delegateCanBePreventedByGestureRecognizer:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 248));
  v5 = WeakRetained;
  v6 = *(a1 + 8);
  if ((v6 & 4) != 0)
  {
    if (![WeakRetained gestureRecognizer:a1 canBePreventedByGestureRecognizer:a2])
    {
      goto LABEL_10;
    }

    v6 = *(a1 + 8);
  }

  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_8;
  }

  if ([v5 _gestureRecognizer:a1 canBePreventedByGestureRecognizer:a2])
  {
    v6 = *(a1 + 8);
LABEL_8:
    if ((v6 & 8) != 0)
    {
      if ([v5 gestureRecognizer:a1 shouldRecognizeSimultaneouslyWithGestureRecognizer:a2])
      {
        goto LABEL_10;
      }

      v6 = *(a1 + 8);
    }

    if ((v6 & 0x2000) != 0)
    {
      v7 = [v5 _gestureRecognizer:a1 shouldRecognizeSimultaneouslyWithGestureRecognizer:a2] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_15;
  }

LABEL_10:
  v7 = 0;
LABEL_15:

  return v7;
}

- (uint64_t)_delegateCanCancelGestureRecognizer:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if ((*(result + 10) & 8) != 0)
    {
      WeakRetained = objc_loadWeakRetained((result + 248));
      v5 = [WeakRetained _gestureRecognizer:v2 canCancelGestureRecognizer:a2];

      return v5;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)_delegateCanBeCancelledByGestureRecognizer:(uint64_t)a1
{
  if (!a1 || (*(a1 + 10) & 0x10) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 248));
  v6 = [WeakRetained _gestureRecognizer:a1 canBeCancelledByGestureRecognizer:a2];

  return v6;
}

- (BOOL)_isExcludedByExcludable:(id)a3
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &_isExcludedByExcludable____s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v12, 2u);
      }
    }
  }

  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    goto LABEL_29;
  }

  v8 = [(UIGestureRecognizer *)v6 container];

  v9 = 0;
  if (v7 && v8)
  {
    if ((-[UIGestureRecognizer _state](v7) - 1) > 2 || ![*(v7 + 184) intersectsSet:self->_activeEvents] || objc_msgSend(v7, "_shouldDelayUntilForceLevelRequirementIsMet") && (*(v7 + 13) & 0x10) == 0 || (-[UIGestureRecognizer _hasUnmetRequirementsPreventingExclusion](v7) & 1) != 0 || !-[UIGestureRecognizer _affectedByGesture:](self, "_affectedByGesture:", v7))
    {
      goto LABEL_29;
    }

    if ((*(&self->_gestureFlags + 4) & 0x10) != 0 && ([(UIGestureRecognizer *)self _state]- 1) <= 2)
    {
      if (!-[UIGestureRecognizer _canBeCancelledByGestureRecognizer:](self, "_canBeCancelledByGestureRecognizer:", v7) && !-[UIGestureRecognizer _delegateCanBeCancelledByGestureRecognizer:](self, v7) || ![v7 _canCancelGestureRecognizer:self] || (-[UIGestureRecognizer _delegateCanCancelGestureRecognizer:](v7, self) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if ((-[UIGestureEnvironment gestureRecognizer:requiresGestureRecognizerToFail:](self->_gestureEnvironment, v7, self) & 1) != 0 || ![v7 canPreventGestureRecognizer:self] || !-[UIGestureRecognizer canBePreventedByGestureRecognizer:](self, "canBePreventedByGestureRecognizer:", v7) || !-[UIGestureRecognizer _delegateCanBePreventedByGestureRecognizer:](self, v7) || (-[UIGestureRecognizer _delegateCanPreventGestureRecognizer:](v7, self) & 1) == 0)
    {
LABEL_29:
      v9 = 0;
      goto LABEL_30;
    }

    v9 = 1;
  }

LABEL_30:

  return v9;
}

- (uint64_t)_hasUnmetRequirementsPreventingExclusion
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &_hasUnmetRequirementsPreventingExclusion___s_category) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v5, 2u);
      }
    }
  }

  if ([a1 _canExcludeWithActiveRequirements])
  {
    return 0;
  }

  else
  {
    return [(UIGestureEnvironment *)a1[33] unmetRequirementsForGestureRecognizer:a1];
  }
}

- (void)_cancelRecognition
{
  if (a1)
  {
    if ((*(a1 + 12) & 8) != 0)
    {
      return [a1 _failWithReason:@"cancelRecognition"];
    }
  }

  return a1;
}

- (void)_exclude
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled != 1)
  {
LABEL_7:
    if (self)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (!os_variant_has_internal_diagnostics())
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &_exclude___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v6, 2u);
    }

    goto LABEL_7;
  }

  v5 = __UIFaultDebugAssertLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
  }

  if (self)
  {
LABEL_8:
    if (([(UIGestureRecognizer *)self _state]- 1) < 3)
    {
      goto LABEL_10;
    }
  }

LABEL_9:
  if ([(UIGestureRecognizer *)self _state]!= 4)
  {
    v4 = 5;
    goto LABEL_14;
  }

LABEL_10:
  v4 = 4;
  if ((*(&self->_gestureFlags + 4) & 0x10) == 0)
  {
    v4 = 5;
  }

LABEL_14:
  self->_state_DO_NOT_USE_DIRECTLY = v4;
  [(UIGestureEnvironment *)self->_gestureEnvironment setGestureNeedsUpdate:?];
}

- (BOOL)_canExcludeOtherExcludables
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }

      if (!self)
      {
        return 0;
      }

      goto LABEL_8;
    }

    v3 = *(__UILogGetCategoryCachedImpl("Assert", &_canExcludeOtherExcludables___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v6, 2u);
    }
  }

  if (!self)
  {
    return 0;
  }

LABEL_8:
  if (([(UIGestureRecognizer *)self _state]- 1) > 2 || [(UIGestureRecognizer *)self _shouldDelayUntilForceLevelRequirementIsMet]&& (*(&self->_gestureFlags + 5) & 0x10) == 0)
  {
    return 0;
  }

  return [(UIGestureRecognizer *)self _hasUnmetRequirementsPreventingExclusion]^ 1;
}

- (BOOL)__requiresGestureRecognizerToFail:(id)a3
{
  if (([(NSMutableSet *)self->_failureRequirements containsObject:?]& 1) != 0)
  {
    return 1;
  }

  return [(UIGestureRecognizer *)self _needsDynamicFailureRequirementForGestureRecognizer:a3];
}

- (void)requireGestureRecognizerToFail:(UIGestureRecognizer *)otherGestureRecognizer
{
  if (otherGestureRecognizer == self)
  {
    if (dyld_program_sdk_at_least())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__UIGestureRecognizer_requireGestureRecognizerToFail___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      if (requireGestureRecognizerToFail__once != -1)
      {
        dispatch_once(&requireGestureRecognizerToFail__once, block);
      }
    }
  }

  else if ([(UIGestureRecognizer *)self _acceptsBeingFailureDependentOnGestureRecognizer:?]&& [(UIGestureRecognizer *)self _delegateAcceptsBeingFailureDependentOnGestureRecognizer:?]&& [(UIGestureRecognizer *)otherGestureRecognizer _acceptsBeingFailureRequirementForGestureRecognizer:self]&& [(UIGestureRecognizer *)otherGestureRecognizer _delegateAcceptsBeingFailureRequirementForGestureRecognizer:?])
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (otherGestureRecognizer)
      {
        node = otherGestureRecognizer->_node;
      }

      else
      {
        node = 0;
      }

      [(GFGestureNode *)self->_node addRelationWithType:4 role:0 relatedNode:node];
    }

    else
    {
      [(UIGestureEnvironment *)self->_gestureEnvironment addRequirementForGestureRecognizer:otherGestureRecognizer requiringGestureRecognizerToFail:?];
    }

    failureRequirements = self->_failureRequirements;
    if (!failureRequirements)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      v8 = self->_failureRequirements;
      self->_failureRequirements = Mutable;

      failureRequirements = self->_failureRequirements;
    }

    [(NSMutableSet *)failureRequirements addObject:otherGestureRecognizer];
    if (otherGestureRecognizer)
    {
      failureDependents = otherGestureRecognizer->_failureDependents;
      if (!failureDependents)
      {
        v10 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        v11 = otherGestureRecognizer->_failureDependents;
        otherGestureRecognizer->_failureDependents = v10;

        failureDependents = otherGestureRecognizer->_failureDependents;
      }

      [(NSMutableSet *)failureDependents addObject:self];
    }
  }
}

void __54__UIGestureRecognizer_requireGestureRecognizerToFail___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_LinkCheckShouldFailOnPressesBeganIfNotTrackingTouches_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Attempting set a failure requirement between a gesture recognizer and itself. (%@)", &v4, 0xCu);
  }
}

- (uint64_t)_delegateAcceptsBeingFailureDependentOnGestureRecognizer:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if ((*(result + 10) & 0x40) != 0)
    {
      WeakRetained = objc_loadWeakRetained((result + 248));
      v5 = [WeakRetained _gestureRecognizer:v2 acceptsBeingFailureDependentOnGestureRecognizer:a2];

      return v5;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)_delegateAcceptsBeingFailureRequirementForGestureRecognizer:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if ((*(result + 10) & 0x20) != 0)
    {
      WeakRetained = objc_loadWeakRetained((result + 248));
      v5 = [WeakRetained _gestureRecognizer:v2 acceptsBeingFailureRequirementForGestureRecognizer:a2];

      return v5;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)removeFailureRequirement:(id)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      [(GFGestureNode *)self->_node removeRelationWithType:4 role:0 relatedNode:*(a3 + 29)];
    }

    else
    {
      [(UIGestureEnvironment *)self->_gestureEnvironment removeRequirementForGestureRecognizer:a3 requiringGestureRecognizerToFail:?];
    }

    [(NSMutableSet *)self->_failureRequirements removeObject:a3];
    [*(a3 + 22) removeObject:self];
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if ((_UIIsGesturesFrameworkEnabled_enabled & 1) == 0)
    {
      [(UIGestureRecognizer *)self _requiredGestureRecognizerCompletedOrWasUnrelated:a3];
      gestureEnvironment = self->_gestureEnvironment;
      v7[0] = self;
      v7[1] = a3;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
      [(UIGestureEnvironment *)gestureEnvironment _queueGestureRecognizersForResetIfFinished:v6];
    }
  }
}

- (void)_requiredGestureRecognizerCompletedOrWasUnrelated:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v12 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v17) = 0;
          _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Shouldn't end up here", &v17, 2u);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E4D0) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", &v17, 2u);
        }
      }
    }

    if ([(UIGestureRecognizer *)a1 _state]> 3)
    {
      if ([*(a1 + 32) count] && (-[UIGestureEnvironment unmetRequirementsForGestureRecognizer:](*(a1 + 264), a1) & 1) == 0)
      {
        [(UIGestureRecognizer *)a1 _enqueueDelayedTouchesToSend];
        [(UIGestureRecognizer *)a1 _enqueueDelayedPressesToSend];
      }

      [(UIGestureRecognizer *)a1 _ignoreActiveEvents];
    }

    else
    {
      if (a2 && ([(UIGestureRecognizer *)a2 _state]- 1) <= 2)
      {
        [(UIGestureRecognizer *)a1 _ignoreActiveEvents];
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4D8);
        if (*CategoryCachedImpl)
        {
          v13 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = v13;
            v15 = [a1 _briefDescription];
            v16 = [a2 _briefDescription];
            v17 = 138412546;
            v18 = v15;
            v19 = 2112;
            v20 = v16;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "%@: Failing due to recognition of %@", &v17, 0x16u);
          }
        }

        if (([(UIGestureRecognizer *)a1 _state]- 1) < 3 || [(UIGestureRecognizer *)a1 _state]== 4)
        {
          v6 = 4;
          if ((*(a1 + 12) & 0x10) == 0)
          {
            v6 = 5;
          }
        }

        else
        {
          v6 = 5;
        }

        *(a1 + 72) = v6;
      }

      v7 = [(UIGestureRecognizer *)a1 _state];
      v8 = *(a1 + 8);
      if ((v7 - 1) >= 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = ~(16 * v8) & 0x10000000000;
      }

      v10 = v9 | v8 & 0xFFFFFEFFFFFFFFFFLL;
      *(a1 + 8) = v10;
      if ((v8 & 0x5000000000) == 0x4000000000)
      {
        v11 = ([(UIGestureRecognizer *)a1 _state]> 1) << 39;
        v10 = *(a1 + 8);
      }

      else
      {
        v11 = 0;
      }

      *(a1 + 8) = v10 & 0xFFFFFF7FFFFFFFFFLL | v11;
      [(UIGestureEnvironment *)*(a1 + 264) setGestureNeedsUpdate:a1];
    }
  }
}

- (void)_setCanExcludeWithActiveRequirements:(BOOL)a3
{
  v3 = a3;
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    node = self->_node;

    [(GFGestureNode *)node setDisallowExclusionWithUnresolvedFailureRequirements:!v3];
  }

  else
  {
    v6 = 0x1000000000000;
    if (!v3)
    {
      v6 = 0;
    }

    *&self->_gestureFlags = *&self->_gestureFlags & 0xFFFEFFFFFFFFFFFFLL | v6;
  }
}

- (BOOL)_canExcludeWithActiveRequirements
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    return [(GFGestureNode *)self->_node disallowExclusionWithUnresolvedFailureRequirements]^ 1;
  }

  else
  {
    return *(&self->_gestureFlags + 6) & 1;
  }
}

- (void)_setEventObserving:(void *)a1
{
  if (a1)
  {
    v4 = 0x2000000000000;
    if (!a2)
    {
      v4 = 0;
    }

    a1[1] = a1[1] & 0xFFFDFFFFFFFFFFFFLL | v4;
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {

      [a1 setGloballyScoped:a2];
    }
  }
}

- (BOOL)_needsDynamicFailureRequirementForGestureRecognizer:(id)a3
{
  gestureFlags = self->_gestureFlags;
  if ((gestureFlags & 0x1000000) != 0)
  {
    if ([(UIGestureRecognizer *)self shouldRequireFailureOfGestureRecognizer:a3])
    {
      LODWORD(v7) = 0;
      v8 = 0;
      goto LABEL_14;
    }

    gestureFlags = self->_gestureFlags;
  }

  if ((gestureFlags & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained gestureRecognizer:self shouldRequireFailureOfGestureRecognizer:a3])
    {
      v8 = 0;
      LODWORD(v7) = 1;
      goto LABEL_14;
    }

    if ((*(&self->_gestureFlags + 2) & 2) == 0)
    {
      v9 = 0;
LABEL_24:

      return v9;
    }
  }

  else if ((gestureFlags & 0x20000) == 0)
  {
    return 0;
  }

  v7 = (gestureFlags >> 7) & 1;
  gestureFlags = objc_loadWeakRetained(&self->_delegate);
  if (![gestureFlags _gestureRecognizer:self shouldRequireFailureOfGestureRecognizer:a3])
  {
    v9 = 0;
    goto LABEL_23;
  }

  v8 = 1;
LABEL_14:
  if (![a3 _acceptsBeingFailureRequirementForGestureRecognizer:self] || !-[UIGestureRecognizer _delegateAcceptsBeingFailureRequirementForGestureRecognizer:](a3, self) || !-[UIGestureRecognizer _acceptsBeingFailureDependentOnGestureRecognizer:](self, "_acceptsBeingFailureDependentOnGestureRecognizer:", a3))
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_20:
    if (!v7)
    {
      return v9;
    }

    goto LABEL_24;
  }

  v9 = [(UIGestureRecognizer *)self _acceptsBeingFailureDependentOnGestureRecognizer:a3];
  if ((v8 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:

  if (v7)
  {
    goto LABEL_24;
  }

  return v9;
}

- (BOOL)_needsDynamicDependentRequirementForGestureRecognizer:(id)a3
{
  gestureFlags = self->_gestureFlags;
  if ((gestureFlags & 0x2000000) != 0)
  {
    if ([(UIGestureRecognizer *)self shouldBeRequiredToFailByGestureRecognizer:a3])
    {
      LODWORD(v7) = 0;
      v8 = 0;
      goto LABEL_14;
    }

    gestureFlags = self->_gestureFlags;
  }

  if ((gestureFlags & 0x100) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained gestureRecognizer:self shouldBeRequiredToFailByGestureRecognizer:a3])
    {
      v8 = 0;
      LODWORD(v7) = 1;
      goto LABEL_14;
    }

    if ((*(&self->_gestureFlags + 2) & 4) == 0)
    {
      v9 = 0;
LABEL_24:

      return v9;
    }
  }

  else if ((gestureFlags & 0x40000) == 0)
  {
    return 0;
  }

  v7 = (gestureFlags >> 8) & 1;
  gestureFlags = objc_loadWeakRetained(&self->_delegate);
  if (![gestureFlags _gestureRecognizer:self shouldBeRequiredToFailByGestureRecognizer:a3])
  {
    v9 = 0;
    goto LABEL_23;
  }

  v8 = 1;
LABEL_14:
  if (![a3 _acceptsBeingFailureDependentOnGestureRecognizer:self] || !-[UIGestureRecognizer _delegateAcceptsBeingFailureDependentOnGestureRecognizer:](a3, self) || !-[UIGestureRecognizer _acceptsBeingFailureRequirementForGestureRecognizer:](self, "_acceptsBeingFailureRequirementForGestureRecognizer:", a3))
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_20:
    if (!v7)
    {
      return v9;
    }

    goto LABEL_24;
  }

  v9 = [(UIGestureRecognizer *)self _delegateAcceptsBeingFailureRequirementForGestureRecognizer:a3];
  if ((v8 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:

  if (v7)
  {
    goto LABEL_24;
  }

  return v9;
}

- (void)setRequiredPreviewForceState:(int64_t)a3
{
  if (a3 && [(UIGestureRecognizer *)self _inForceCapableEnvironment])
  {
    [(UIGestureRecognizer *)self _ensureForceObservationChain];
  }

  [(UIGestureRecognizer *)self willChangeValueForKey:@"requiredPreviewForceState"];
  self->_requiredPreviewForceState = a3;

  [(UIGestureRecognizer *)self didChangeValueForKey:@"requiredPreviewForceState"];
}

- (int64_t)currentPreviewForceState
{
  result = self->_forceClassifier;
  if (result)
  {
    return [result currentForceLevel];
  }

  return result;
}

- (id)_touchForceObservable
{
  touchForceObservable = self->_touchForceObservable;
  if (!touchForceObservable)
  {
    [(UIGestureRecognizer *)self _ensureForceObservationChain];
    touchForceObservable = self->_touchForceObservable;
  }

  return touchForceObservable;
}

- (id)_forceLevelClassifier
{
  forceClassifier = self->_forceClassifier;
  if (!forceClassifier)
  {
    [(UIGestureRecognizer *)self _ensureForceObservationChain];
    forceClassifier = self->_forceClassifier;
  }

  return forceClassifier;
}

- (void)_setForceLevelClassifier:(id)a3
{
  p_forceClassifier = &self->_forceClassifier;
  forceClassifier = self->_forceClassifier;
  if (forceClassifier != a3)
  {
    [(_UIForceLevelClassifier *)forceClassifier setDelegate:0];
    touchForceObservableAndClassifierObservation = self->_touchForceObservableAndClassifierObservation;
    self->_touchForceObservableAndClassifierObservation = 0;

    objc_storeStrong(p_forceClassifier, a3);

    [(UIGestureRecognizer *)self _ensureForceObservationChain];
  }
}

- (void)_forceLevelClassifier:(id)a3 currentForceLevelDidChange:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(&self->_gestureFlags + 5) & 0x10) == 0 && -[UIGestureRecognizer _shouldDelayUntilForceLevelRequirementIsMet](self, "_shouldDelayUntilForceLevelRequirementIsMet") && self->_requiredPreviewForceState <= [a3 currentForceLevel])
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_forceLevelClassifier_currentForceLevelDidChange____s_category);
    if (*CategoryCachedImpl)
    {
      v11 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [(UIGestureRecognizer *)self _briefDescription];
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@: Force requirement for satisfied", &v14, 0xCu);
      }
    }

    *&self->_gestureFlags |= 0x100000000000uLL;
    [(UIGestureEnvironment *)self->_gestureEnvironment setGestureNeedsUpdate:?];
  }

  if ([a3 currentForceLevel] != a4)
  {
    if (![(UIGestureRecognizer *)self _state]&& (*(&self->_gestureFlags + 6) & 4) == 0)
    {
      v8 = [(UIGestureRecognizer *)self _shouldBegin];
      v9 = 0x4000000000000;
      if (v8)
      {
        v9 = 0xC000000000000;
      }

      *&self->_gestureFlags = *&self->_gestureFlags & 0xFFF3FFFFFFFFFFFFLL | v9;
    }

    if ([a3 currentForceLevel] > a4)
    {
      v10 = [a3 currentForceLevel];
      if (v10 == [(UIGestureRecognizer *)self requiredPreviewForceState])
      {
        ++self->_forcePressCount;
      }
    }

    if ((*(&self->_gestureFlags + 6) & 8) != 0)
    {
      if ([(NSMutableArray *)self->_forceTargets count])
      {
        _UIGestureRecognizerSendTargetActions(self, self->_forceTargets);
      }
    }
  }
}

- (void)_addForceTarget:(void *)a3 action:
{
  if (a1)
  {
    v5 = (a1 + 144);
    if (!*(a1 + 144))
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v7 = *v5;
      *v5 = v6;
    }

    _UIGestureRecognizerAddTargetToArray(v5, a2, a3);
  }
}

- (NSString)_briefDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIGestureRecognizer *)&self->super.isa _rawBriefDescription];
  v5 = _UIGestureRecognizerStateString([(UIGestureRecognizer *)self state]);
  v6 = [v3 stringWithFormat:@"<%@ state = %@>", v4, v5];;

  return v6;
}

- (uint64_t)_appendDescription:(uint64_t)a1 forDependencies:(void *)a2 toString:(void *)a3 atLevel:(int)a4
{
  v21 = *MEMORY[0x1E69E9840];
  [a3 appendFormat:@"; %@ = {", a1];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a2;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ((v11 & 1) == 0)
        {
          [a3 appendString:{@", "}];
        }

        [(UIGestureRecognizer *)v13 _appendDescriptionToString:a3 atLevel:(a4 + 1) includingDependencies:0];
        v11 = 0;
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v11 = 0;
    }

    while (v9);
  }

  [a3 appendString:@"\n"];
  if (a4)
  {
    v14 = 1;
    do
    {
      [a3 appendString:@"    "];
      ++v14;
    }

    while (v14 <= a4);
  }

  return [a3 appendString:@"}"];
}

- (void)_appendDescriptionToString:(int)a3 atLevel:(int)a4 includingDependencies:
{
  if (a1)
  {
    v8 = objc_autoreleasePoolPush();
    if ([a2 length])
    {
      [a2 appendString:@"\n"];
    }

    v28 = a4;
    if (a3)
    {
      v9 = 1;
      do
      {
        [a2 appendString:@"    "];
        ++v9;
      }

      while (v9 <= a3);
    }

    v10 = [(UIGestureRecognizer *)a1 _rawBriefDescription];
    [a2 appendFormat:@"<%@", v10];

    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = objc_opt_class();
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:v12];
    if (v13 == v11)
    {
LABEL_10:
    }

    else
    {
      while (1)
      {
        v14 = objc_opt_class();

        if (v12 == v14)
        {
          break;
        }

        v12 = [v12 superclass];
        v13 = [MEMORY[0x1E696AAE8] bundleForClass:v12];
        if (v13 == v11)
        {
          goto LABEL_10;
        }
      }
    }

    if (objc_opt_class() != v12 && objc_opt_class() != v12)
    {
      v15 = NSStringFromClass(v12);
      [a2 appendFormat:@"; baseClass = %@", v15];
    }

    v16 = _UIGestureRecognizerStateString([a1 state]);
    [a2 appendFormat:@"; state = %@", v16];

    if (([a1 isEnabled] & 1) == 0)
    {
      [a2 appendString:@"; enabled = NO"];
    }

    if (([a1 cancelsTouchesInView] & 1) == 0)
    {
      [a2 appendString:@"; cancelsTouchesInView = NO"];
    }

    if ([a1 delaysTouchesBegan])
    {
      [a2 appendString:@"; delaysTouchesBegan = YES"];
    }

    if (([a1 delaysTouchesEnded] & 1) == 0)
    {
      [a2 appendString:@"; delaysTouchesEnded = NO"];
    }

    v17 = [a1 view];
    if (v17)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 stringWithFormat:@"<%@: %p>", v20, v17];
    }

    else
    {
      v21 = @"(nil)";
    }

    [a2 appendFormat:@"; view = %@", v21];

    v22 = [*(a1 + 24) count];
    v23 = *(a1 + 24);
    if (v22 == 1)
    {
      v24 = [v23 objectAtIndex:0];
      [a2 appendFormat:@"; target= <%@>", v24];

      v25 = v28;
    }

    else
    {
      v25 = v28;
      if ([v23 count] >= 2)
      {
        [a2 appendFormat:@"; targets= <%@>", *(a1 + 24)];
      }
    }

    [a1 _appendSubclassDescription:a2];
    if (v25)
    {
      v26 = *(a1 + 168);
      if (v26)
      {
        [UIGestureRecognizer _appendDescription:v26 forDependencies:a2 toString:a3 + 1 atLevel:?];
      }

      v27 = *(a1 + 176);
      if (v27)
      {
        [UIGestureRecognizer _appendDescription:v27 forDependencies:a2 toString:a3 + 1 atLevel:?];
      }
    }

    [a2 appendFormat:@">"];

    objc_autoreleasePoolPop(v8);
  }
}

- (BOOL)_affectedByGesture:(id)a3
{
  v5 = [(UIGestureRecognizer *)self container];
  v6 = [a3 container];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (self && (*(&self->_gestureFlags + 6) & 2) != 0 || a3 && (*(a3 + 14) & 2) != 0)
    {
      v9 = [(UIGestureRecognizer *)self view];
      v10 = [a3 view];
      v8 = 0;
      if (v9)
      {
        v11 = v10;
        if (v10)
        {
          v12 = [v9 _window];
          v13 = [v12 windowScene];
          v14 = [v11 _window];
          v15 = [v14 windowScene];
          v8 = v13 == v15;
        }
      }
    }

    else if (v6 == v5 || (isDescendantOfContainer(v5, v6, 0) & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = isDescendantOfContainer(v7, v5, 0);
    }
  }

  return v8;
}

- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v7 = [(UIGestureRecognizer *)self view];
    v6 = [v7 window];
  }

  v8 = [v6 _window];
  v9 = v8;
  if (v8)
  {
    [v8 _convertPointFromSceneReferenceSpace:{x, y}];
    x = v10;
    y = v11;
  }

  [v6 convertPoint:0 fromView:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)_convertPoint:(CGPoint)a3 toSceneReferenceCoordinatesFromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v7 = [(UIGestureRecognizer *)self view];
    v6 = [v7 window];
  }

  v8 = [v6 _window];
  [v6 convertPoint:0 toView:{x, y}];
  v11 = v9;
  v12 = v10;
  if (v8)
  {
    [v8 _convertPointToSceneReferenceSpace:{v9, v10}];
    v11 = v13;
    v12 = v14;
  }

  v15 = v11;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)locationInView:(UIView *)view
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(UIGestureRecognizer *)self _activeTouchesEvent];
  v6 = [v5 touchesForGestureRecognizer:self];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v21 + 1) + 8 * i) locationInView:{view, v21}];
        v11 = (v15 + v11);
        v12 = (v16 + v12);
      }

      v10 += v9;
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);

    v17 = (v11 / v10);
    v18 = (v12 / v10);
  }

  else
  {

    v17 = *MEMORY[0x1E695EFF8];
    v18 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v19 = v17;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)locationOfTouch:(NSUInteger)touchIndex inView:(UIView *)view
{
  v8 = [(UIGestureRecognizer *)self _activeTouchesEvent];
  v9 = [v8 touchesForGestureRecognizer:self];

  if ([v9 count] <= touchIndex)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    v11 = [v17 stringWithFormat:@"-[%@ %@]", v19, v20];

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%ld) beyond bounds (%ld).", v11, touchIndex, objc_msgSend(v9, "count")}];
    v14 = *MEMORY[0x1E695EFF8];
    v16 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v10 = [v9 allObjects];
    v11 = [v10 sortedArrayUsingSelector:sel__compareIndex_];

    v12 = [v11 objectAtIndex:touchIndex];
    [v12 locationInView:view];
    v14 = v13;
    v16 = v15;
  }

  v21 = v14;
  v22 = v16;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)setAllowedTouchTypes:(NSArray *)allowedTouchTypes
{
  v17 = *MEMORY[0x1E69E9840];
  self->_allowedTouchTypes = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = allowedTouchTypes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = *MEMORY[0x1E695D940];
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) integerValue];
        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v11 = self->_allowedTouchTypes | 4;
          }

          else
          {
            if (v10 != 3)
            {
LABEL_13:
              [MEMORY[0x1E695DF30] raise:v8 format:{@"Invalid value for touch type: %ld. Must be one of UITouchTypeDirect, UITouchTypeIndirect, UITouchTypeStylus, or UITouchTypeIndirectPointer", v10}];
              goto LABEL_17;
            }

            v11 = self->_allowedTouchTypes | 8;
          }
        }

        else if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_13;
          }

          v11 = self->_allowedTouchTypes | 2;
        }

        else
        {
          v11 = self->_allowedTouchTypes | 1;
        }

        self->_allowedTouchTypes = v11;
LABEL_17:
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)setAllowedPressTypes:(NSArray *)allowedPressTypes
{
  v4 = [(NSArray *)allowedPressTypes copy];
  v5 = self->_allowedPressTypes;
  self->_allowedPressTypes = v4;
}

- (id)_defaultAllowedTouchTypes
{
  if (a1)
  {
    v2 = [(UIGestureRecognizer *)a1 _defaultAllowedTouchTypesMask];
    a1 = _UIGestureRecognizerAllowedTouchTypesArrayFromMask(v2);
    v1 = vars8;
  }

  return a1;
}

- (void)_gestureRecognizerDriver:(id)a3 didUpdateState:(int64_t)a4 previousState:(int64_t)a5
{
  v9 = [(UIGestureRecognizer *)self _state];
  if (v9 > 2)
  {
    return;
  }

  switch(a4)
  {
    case 3:
      if (v9 < 1)
      {
        v10 = 5;
      }

      else if ((*(&self->_gestureFlags + 4) & 0x10) != 0)
      {
        v10 = 4;
      }

      else
      {
        v10 = 5;
      }

      goto LABEL_15;
    case 2:
      v10 = 3;
LABEL_15:
      [(UIGestureRecognizer *)self setState:v10];
      break;
    case 1:
      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_15;
  }

  [(UIGestureRecognizer *)self _stateUpdatedForDriver:a3 previousState:a5];
}

- (void)_setComponentController:(id *)location
{
  if (location)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if ((_UIIsGesturesFrameworkEnabled_enabled & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel__setComponentController_ object:location file:@"UIGestureRecognizer.m" lineNumber:3474 description:0];
    }

    v4 = location[30];
    if (v4 != obj)
    {
      if (v4)
      {
        GFGestureComponentControllerSetNode();
      }

      objc_storeStrong(location + 30, obj);
      if (obj)
      {

        GFGestureComponentControllerSetNode();
      }
    }
  }
}

- (void)gestureNodeWillUnblock:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &gestureNodeWillUnblock____s_category);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [(UIGestureRecognizer *)self _briefDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%@ will be unblocked", &v8, 0xCu);
    }
  }

  *&self->_gestureFlags |= 0x10000000000uLL;
}

- (void)gestureNode:(id)a3 didEnqueuePhase:(int64_t)a4
{
  if (a4 >= 2)
  {
    v5 = [(UIGestureRecognizer *)self _state];
    [(UIGestureRecognizer *)self _updateObserversForState:v5];
    if ((*(&self->_gestureFlags + 4) & 0x200) == 0)
    {
      [(UIGestureRecognizer *)self willChangeValueForKey:@"state"];

      [(UIGestureRecognizer *)self didChangeValueForKey:@"state"];
    }
  }
}

- (void)gestureNode:(id)a3 didUpdatePhase:(int64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a4 - 2) < 3)
  {
LABEL_12:
    [(UIGestureRecognizer *)self _updateGestureForActiveEvents];
    return;
  }

  if ((a4 - 5) < 2)
  {
    v5 = [a3 failureReason];
    [v5 code];
    IsTerminated = GFGestureFailureTypeIsTerminated();

    if (IsTerminated)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [(NSMutableSet *)self->_activeEvents copy];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * v11);
            v13 = [MEMORY[0x1E695DFD8] setWithObject:self];
            [v12 _removeGestureRecognizersSendingCancelledEvent:v13];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }

    goto LABEL_12;
  }

  if (!a4)
  {

    [(UIGestureRecognizer *)self _resetGestureRecognizer];
  }
}

- (id)gestureNode:(id)a3 roleForRelationType:(int64_t)a4 relatedNode:(id)a5
{
  v8 = _UIGestureNodeGetGestureRecognizer(a5);
  if (!v8 || (-[UIGestureRecognizer globallyScoped](self, "globallyScoped") || [v8 globallyScoped]) && (-[UIGestureRecognizer view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "_window"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "windowScene"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "view"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "_window"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "windowScene"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v10, v9, v5, v10 != v13))
  {
    v5 = 0;
    goto LABEL_32;
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v14 = &unk_1EFE30A60;
      if (![(UIGestureRecognizer *)self _canBeCancelledByGestureRecognizer:v8]&& ![(UIGestureRecognizer *)self _delegateCanBeCancelledByGestureRecognizer:v8])
      {
        v14 = &unk_1EFE30A78;
      }
    }

    else
    {
      if (a4 == 4)
      {
        v16 = [(UIGestureRecognizer *)self _needsDynamicFailureRequirementForGestureRecognizer:v8];
      }

      else
      {
        if (a4 != 5)
        {
          goto LABEL_32;
        }

        v16 = [(UIGestureRecognizer *)self _needsDynamicDependentRequirementForGestureRecognizer:v8];
      }

      if (v16)
      {
        v14 = &unk_1EFE30A60;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_32;
      }

      v14 = &unk_1EFE30A78;
      if (![(UIGestureRecognizer *)self _canCancelGestureRecognizer:v8])
      {
        goto LABEL_31;
      }

      v15 = [(UIGestureRecognizer *)self _delegateCanCancelGestureRecognizer:v8];
      goto LABEL_24;
    }

    v14 = &unk_1EFE30A78;
    if ([(UIGestureRecognizer *)self canBePreventedByGestureRecognizer:v8])
    {
      v15 = [(UIGestureRecognizer *)self _delegateCanBePreventedByGestureRecognizer:v8];
LABEL_24:
      if (v15)
      {
        v14 = &unk_1EFE30A60;
      }
    }
  }

  else
  {
    v14 = &unk_1EFE30A78;
    if ([(UIGestureRecognizer *)self canPreventGestureRecognizer:v8])
    {
      v15 = [(UIGestureRecognizer *)self _delegateCanPreventGestureRecognizer:v8];
      goto LABEL_24;
    }
  }

LABEL_31:
  v5 = v14;
LABEL_32:

  return v5;
}

- (int64_t)indexOfGestureNode:(id)a3
{
  v4 = _UIGestureNodeGetGestureRecognizer(a3);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_container);
    v6 = [WeakRetained gestureRecognizers];
    v7 = [v6 indexOfObject:v4];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BOOL)isDescendantOfContainer:(id)a3 referenceNode:(id)a4
{
  v5 = _UIGestureNodeGetGestureRecognizer(a4);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_container);
    v7 = objc_loadWeakRetained(v5 + 6);
    v8 = isDescendantOfContainer(WeakRetained, v7, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isDeeperThanContainer:(id)a3 referenceNode:(id)a4
{
  v5 = _UIGestureNodeGetGestureRecognizer(a4);
  if (v5)
  {
    v6 = [(UIGestureRecognizer *)self _depthFirstCompare:v5]== 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_componentController
{
  if (result)
  {
    return *(result + 240);
  }

  return result;
}

- (void)_connectInterfaceBuilderEventConnection:(id)a3
{
  v4 = a3;
  v6 = [v4 target];
  v5 = [v4 action];

  [(UIGestureRecognizer *)self addTarget:v6 action:v5];
}

- (id)_pairedGestureIdentifiersAndCreate:(BOOL)a3
{
  v3 = a3;
  v6 = objc_getAssociatedObject(self, a2);
  if (!v6 && v3)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    objc_setAssociatedObject(self, a2, v6, 1);
  }

  return v6;
}

@end