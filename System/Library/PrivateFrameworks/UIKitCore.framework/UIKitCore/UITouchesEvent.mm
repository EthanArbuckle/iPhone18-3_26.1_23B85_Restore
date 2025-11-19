@interface UITouchesEvent
- (BOOL)_anyInterestedGestureRecognizersForTouchInView:(id)a3;
- (BOOL)_sendEventToGestureRecognizer:(id)a3;
- (BOOL)_sendSynthesizedBeganForTransitioningGESTouchesToGestureIfNeeded:(id)a3 withDispatchedTouchesIntoSet:(id)a4;
- (BOOL)_shouldSkipEventDeliveryWithIgnoreInteractionEvents:(BOOL)a3;
- (CGPoint)_digitizerLocation;
- (NSString)description;
- (__CFDictionary)_coalescedTouchesForHidEvent:(__IOHIDEvent *)a3;
- (double)_initialTouchTimestamp;
- (double)_initialTouchTimestampForWindow:(id)a3;
- (id)_allTouches;
- (id)_allWindows;
- (id)_cloneEvent;
- (id)_componentsForGestureRecognizer:(id)a3;
- (id)_firstTouchForView:(id)a3;
- (id)_gestureRecognizersForWindow:(id)a3;
- (id)_init;
- (id)_initWithEvent:(__GSEvent *)a3 touches:(id)a4;
- (id)_lastPendingCoalescedTouchForIndex:(int64_t)a3 hidEvent:(__IOHIDEvent *)a4;
- (id)_rawCoalescedTouchesForTouch:(id)a3;
- (id)_respondersForWindow:(id)a3;
- (id)_touchesForGesture:(id)a3 withPhase:(int64_t)a4;
- (id)_touchesForResponder:(id)a3 withPhase:(int64_t)a4;
- (id)_viewsForWindow:(id)a3;
- (id)_windowsAwaitingLatentSystemGestureNotificationDeliveredToEventWindow:(id)a3;
- (id)allTouches;
- (id)coalescedTouchesForTouch:(id)a3;
- (id)predictedTouchesForTouch:(id)a3;
- (unint64_t)_inputPrecision;
- (void)_addCoalescedTouch:(id)a3 forIndex:(int64_t)a4 hidEvent:(__IOHIDEvent *)a5;
- (void)_addGestureRecognizersFromContainer:(id)a3 toTouch:(id)a4 forContinuation:(BOOL)a5;
- (void)_addTouch:(id)a3 forDelayedDelivery:(BOOL)a4;
- (void)_addWindowAwaitingLatentSystemGestureNotification:(id)a3 deliveredToEventWindow:(id)a4;
- (void)_cancelComponents:(id)a3;
- (void)_cancelResponderDeliveryAndClearTouchesOfWindow:(void *)a1;
- (void)_clearTouches;
- (void)_clearViewForTouch:(id)a3;
- (void)_collectGestureRecognizersFromContainer:(id)a3 withBlock:(id)a4;
- (void)_gestureRecognizerNoLongerNeedsSendEvent:(id)a3;
- (void)_invalidateGestureRecognizerForWindowCache;
- (void)_moveCoalescedTouchesFromHidEvent:(__IOHIDEvent *)a3 toHidEvent:(__IOHIDEvent *)a4;
- (void)_moveTouchesFromView:(id)a3 toView:(id)a4;
- (void)_removeComponents:(id)a3;
- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4;
- (void)_removeTouch:(id)a3;
- (void)_removeTouch:(id)a3 fromGestureRecognizer:(id)a4;
- (void)_removeTouchesForKey:(id)a3;
- (void)_setHIDEvent:(__IOHIDEvent *)a3;
- (void)_touchesForGesture:(id)a3 withPhase:(int64_t)a4 intoSet:(id)a5;
- (void)_windowNoLongerAwaitingSystemGestureNotification:(id)a3;
- (void)dealloc;
@end

@implementation UITouchesEvent

- (void)_invalidateGestureRecognizerForWindowCache
{
  gestureRecognizersByWindow = self->_gestureRecognizersByWindow;
  if (gestureRecognizersByWindow)
  {
    CFDictionaryRemoveAllValues(gestureRecognizersByWindow);
  }
}

- (id)allTouches
{
  allTouchesImmutableCached = self->_allTouchesImmutableCached;
  if (!allTouchesImmutableCached)
  {
    v4 = [(NSMutableSet *)self->_allTouchesMutable copy];
    v5 = self->_allTouchesImmutableCached;
    self->_allTouchesImmutableCached = v4;

    allTouchesImmutableCached = self->_allTouchesImmutableCached;
  }

  return allTouchesImmutableCached;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = UITouchesEvent;
  v2 = [(UIEvent *)&v6 _init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = v2[16];
    v2[16] = v3;

    _UITouchesEventCommonInit(v2);
  }

  return v2;
}

- (id)_allWindows
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(UITouchesEvent *)self allTouches];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) window];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_clearTouches
{
  [(NSMutableSet *)self->_allTouchesMutable removeAllObjects];
  allTouchesImmutableCached = self->_allTouchesImmutableCached;
  self->_allTouchesImmutableCached = 0;

  CFDictionaryRemoveAllValues(self->_keyedTouches);
  keyedTouchesByWindow = self->_keyedTouchesByWindow;

  CFDictionaryRemoveAllValues(keyedTouchesByWindow);
}

- (CGPoint)_digitizerLocation
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(UIEvent *)self _hidEvent]&& IOHIDEventConformsTo())
  {
    IOHIDEventGetFloatValue();
    v2 = v4;
    IOHIDEventGetFloatValue();
    v3 = v5;
  }

  v6 = v2;
  v7 = v3;
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)_cloneEvent
{
  v7.receiver = self;
  v7.super_class = UITouchesEvent;
  v3 = [(UIEvent *)&v7 _cloneEvent];
  v4 = [(NSMutableSet *)self->_allTouchesMutable mutableCopy];
  v5 = *(v3 + 16);
  *(v3 + 16) = v4;

  _UITouchesEventCommonInit(v3);
  __29__UITouchesEvent__cloneEvent__block_invoke(self->_keyedTouches, *(v3 + 18));
  __29__UITouchesEvent__cloneEvent__block_invoke(self->_keyedTouchesByWindow, *(v3 + 19));
  return v3;
}

void __29__UITouchesEvent__cloneEvent__block_invoke(const __CFDictionary *a1, __CFDictionary *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = (v10 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((8 * Count) >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = 8 * Count;
    }

    bzero(v10 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    CFDictionaryGetKeysAndValues(a1, v6, 0);
    do
    {
      v8 = *v6++;
      v9 = [CFDictionaryGetValue(a1 v8)];
      CFDictionarySetValue(a2, v8, v9);

      --v5;
    }

    while (v5);
  }
}

- (void)dealloc
{
  keyedTouches = self->_keyedTouches;
  if (keyedTouches)
  {
    CFRelease(keyedTouches);
  }

  keyedTouchesByWindow = self->_keyedTouchesByWindow;
  if (keyedTouchesByWindow)
  {
    CFRelease(keyedTouchesByWindow);
  }

  gestureRecognizersByWindow = self->_gestureRecognizersByWindow;
  if (gestureRecognizersByWindow)
  {
    CFRelease(gestureRecognizersByWindow);
  }

  coalescedTouches = self->_coalescedTouches;
  if (coalescedTouches)
  {
    CFRelease(coalescedTouches);
  }

  finalTouches = self->_finalTouches;
  if (finalTouches)
  {
    CFRelease(finalTouches);
  }

  v8.receiver = self;
  v8.super_class = UITouchesEvent;
  [(UIEvent *)&v8 dealloc];
}

- (double)_initialTouchTimestamp
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(UITouchesEvent *)self allTouches];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      [v7 initialTouchTimestamp];
      v9 = v8;
      if ([v7 type] != 2)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = UITouchesEvent;
  v4 = [(UITouchesEvent *)&v10 description];
  [(UIEvent *)self timestamp];
  v6 = v5;
  v7 = [(UITouchesEvent *)self allTouches];
  v8 = [v3 stringWithFormat:@"%@ timestamp: %g touches: %@", v4, v6, v7];

  return v8;
}

- (id)_initWithEvent:(__GSEvent *)a3 touches:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v25.receiver = self;
  v25.super_class = UITouchesEvent;
  v8 = [(UIEvent *)&v25 _init];
  v9 = v8;
  if (v8)
  {
    _UITouchesEventCommonInit(v8);
    [v9 _setGSEvent:a3];
    objc_storeStrong(v9 + 16, a4);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 view];
          if (v16)
          {
            v17 = [v9 _touchesForKey:v16];
            [v17 addObject:v15];
          }

          v18 = [v15 window];
          if (v18)
          {
            v19 = [v9 _touchesForWindow:v18];
            [v19 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }
  }

  return v9;
}

- (BOOL)_shouldSkipEventDeliveryWithIgnoreInteractionEvents:(BOOL)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(UITouchesEvent *)self _allWindows];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v21 + 1) + 8 * i) _canIgnoreInteractionEvents])
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(UITouchesEvent *)self allTouches];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        if (v15 && (*(v15 + 236) & 0x2000) != 0)
        {
          v9 = 0;
          goto LABEL_24;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  return v9;
}

- (id)_allTouches
{
  allTouchesImmutableCached = self->_allTouchesImmutableCached;
  self->_allTouchesImmutableCached = 0;

  allTouchesMutable = self->_allTouchesMutable;

  return allTouchesMutable;
}

- (void)_collectGestureRecognizersFromContainer:(id)a3 withBlock:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v27 = v5;
  v7 = [v5 _eventReceivingWindow];
  v8 = [v7 _exclusiveTouchView];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__239;
  v47 = __Block_byref_object_dispose__239;
  v48 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __68__UITouchesEvent__collectGestureRecognizersFromContainer_withBlock___block_invoke;
  v39 = &unk_1E7129CC8;
  v26 = v8;
  v40 = v26;
  v9 = v6;
  v41 = v9;
  v42 = &v43;
  if ((__68__UITouchesEvent__collectGestureRecognizersFromContainer_withBlock___block_invoke(v37, v5, 0) & 1) == 0)
  {
    if ([v44[5] count])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (v5)
      {
        v11 = v5;
        do
        {
          [v10 addObject:v11];
          v11 = [v11 _parentGestureRecognizerContainer];
        }

        while (v11);
      }

      while ([v44[5] count])
      {
        v12 = [v44[5] lastObject];
        [v44[5] removeLastObject];
        v13 = v38(v37, v12, v10);

        if (v13)
        {
          goto LABEL_29;
        }
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = [(UIEvent *)&self->super.super.isa _eventObservers];
    v14 = [v10 countByEnumeratingWithState:&v33 objects:v50 count:16];
    if (v14)
    {
      v22 = v14;
      v23 = *v34;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v16 = [v15 _gestureRecognizersForEvent:self];
            v17 = [v16 countByEnumeratingWithState:&v29 objects:v49 count:16];
            if (v17)
            {
              v18 = *v30;
              while (2)
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v30 != v18)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v20 = *(*(&v29 + 1) + 8 * j);
                  [(UIGestureRecognizer *)v20 _setEventObserving:?];
                  v28 = 0;
                  v21 = [v20 view];
                  (*(v9 + 2))(v9, v20, v21, &v28);

                  if (v28)
                  {

                    goto LABEL_29;
                  }
                }

                v17 = [v16 countByEnumeratingWithState:&v29 objects:v49 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v22 = [v10 countByEnumeratingWithState:&v33 objects:v50 count:16];
      }

      while (v22);
    }

LABEL_29:
  }

  _Block_object_dispose(&v43, 8);
}

uint64_t __68__UITouchesEvent__collectGestureRecognizersFromContainer_withBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    while (1)
    {
      if (v6)
      {
        if ([v6 containsObject:v7])
        {
          goto LABEL_24;
        }

        [v6 addObject:v7];
      }

      v8 = [v7 gestureRecognizers];
      if (v8)
      {
        v9 = a1[4];
        if (!v9 || isDescendantOfContainer(v9, v7, 0))
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v23;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v23 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                (*(a1[5] + 16))();
              }

              v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
            }

            while (v12);
          }
        }
      }

      if (_IsKindOfUIView(v7) && ![v7 deliversTouchesForGesturesToSuperview])
      {
        break;
      }

      v15 = [v7 _actingParentGestureRecognizerContainer];
      if (v15)
      {
        v16 = v15;
        v17 = *(*(a1[6] + 8) + 40);
        if (!v17)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v19 = *(a1[6] + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;

          v17 = *(*(a1[6] + 8) + 40);
        }

        [v17 addObject:v16];
      }

      v7 = [v7 _parentGestureRecognizerContainer];
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_24:

  return 0;
}

- (BOOL)_anyInterestedGestureRecognizersForTouchInView:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__UITouchesEvent__anyInterestedGestureRecognizersForTouchInView___block_invoke;
  v7[3] = &unk_1E7129CF0;
  v9 = &v10;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  [(UITouchesEvent *)self _collectGestureRecognizersFromContainer:v5 withBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __65__UITouchesEvent__anyInterestedGestureRecognizersForTouchInView___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 isEnabled] && objc_msgSend(v10, "state") <= 2)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v6 = a1[5];
    v7 = *(a1[4] + 160);
    v8 = [v6 window];
    v9 = CFDictionaryGetValue(v7, v8);
    CFDictionaryRemoveValue(v7, v8);
  }
}

- (void)_addGestureRecognizersFromContainer:(id)a3 toTouch:(id)a4 forContinuation:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__UITouchesEvent__addGestureRecognizersFromContainer_toTouch_forContinuation___block_invoke;
  v12[3] = &unk_1E7129D18;
  v16 = a5;
  v13 = v9;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  [(UITouchesEvent *)self _collectGestureRecognizersFromContainer:v10 withBlock:v12];
}

void __78__UITouchesEvent__addGestureRecognizersFromContainer_toTouch_forContinuation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v16 isEnabled];
  if (v6)
  {
    if ([v16 state] > 2)
    {
      v6 = 0;
    }

    else if (*(a1 + 56) == 1)
    {
      v6 = [objc_opt_class() _supportsTouchContinuation];
    }

    else
    {
      v6 = 1;
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 236);
    LODWORD(v7) = (v8 >> 12) & 1;
    v9 = (v8 >> 13) & 1;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if ((v7 | v9))
  {
    if (v7)
    {
      v10 = [v16 _isAllowedToReceiveGESEvents];
      if (v10 & 1) != 0 || ((v9 ^ 1))
      {
        if (v10)
        {
          goto LABEL_18;
        }

LABEL_17:
        v11 = *(a1 + 48);
        v12 = *(*(a1 + 40) + 160);
        v13 = [v11 _eventReceivingWindow];
        v14 = CFDictionaryGetValue(v12, v13);
        CFDictionaryRemoveValue(v12, v13);
        goto LABEL_23;
      }
    }

    else if (!v9)
    {
      goto LABEL_17;
    }

    if ([v16 _isAllowedToReceiveGESEvents])
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (dyld_program_sdk_at_least())
  {
    v15 = [v16 container];
  }

  else
  {
    v15 = v5;
  }

  v13 = v15;
  if (![v16 _shouldReceiveTouch:*(a1 + 32) forEvent:*(a1 + 40) recognizerView:v15])
  {
    goto LABEL_24;
  }

  [(UITouch *)*(a1 + 32) _addGestureRecognizer:v16];
  v14 = [*(a1 + 40) _touchesForKey:v16];
  [v14 addObject:*(a1 + 32)];
LABEL_23:

LABEL_24:
}

- (void)_addTouch:(id)a3 forDelayedDelivery:(BOOL)a4
{
  v98 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(NSMutableSet *)self->_allTouchesMutable addObject:v6];
  allTouchesImmutableCached = self->_allTouchesImmutableCached;
  self->_allTouchesImmutableCached = 0;

  v8 = [v6 _responder];
  if (v8)
  {
    v9 = [(UITouchesEvent *)self _touchesForKey:v8];
    [v9 addObject:v6];
  }

  v10 = [v6 window];
  if (a4 || [v6 phase])
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v11 = [v6 _gestureRecognizers];
    v12 = [v11 countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v82;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v82 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(UITouchesEvent *)self _touchesForKey:*(*(&v81 + 1) + 8 * i)];
          [v16 addObject:v6];
        }

        v13 = [v11 countByEnumeratingWithState:&v81 objects:v89 count:16];
      }

      while (v13);
    }

    if (a4)
    {
LABEL_60:
      gestureRecognizersByWindow = self->_gestureRecognizersByWindow;
      v56 = v10;
      v57 = CFDictionaryGetValue(gestureRecognizersByWindow, v56);
      CFDictionaryRemoveValue(gestureRecognizersByWindow, v56);

      if (v56)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    v17 = v6;
    v18 = v8;
    if (!self || (v19 = [(__CFString *)v17 phase], v20 = _UIApplicationSupportsGlobalEdgeSwipeTouches(), !v17) || !v20 || (v17[7].info & 0x200000000000) == 0 || v19 > 2)
    {
LABEL_59:

      goto LABEL_60;
    }

    if (!v8)
    {
      v41 = *(__UILogGetCategoryCachedImpl("Touch", &qword_1ED497A40) + 8);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v95 = v17;
        _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "ERROR: Early return from handling touch GES transition & gesture collection due to unexpected nil container: %{public}@", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v76 = v8;
    v77 = v10;
    v80 = [(__CFString *)v17 window];
    if (!_IsKindOfUIView(v18) || !_UITouchCanParticipateInExclusiveTouchForWindow(v17, v80, 1))
    {
LABEL_51:
      v49 = v18;
      v50 = v17;
      v51 = [(__CFString *)v50 phase];
      if (_UIApplicationSupportsGlobalEdgeSwipeTouches() && (v17[7].info & 0x200000000000) != 0 && v51 < 3)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &_MergedGlobals_38);
        if (*CategoryCachedImpl)
        {
          v59 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *v90 = 134217984;
            v91 = v50;
            _os_log_impl(&dword_188A29000, v59, OS_LOG_TYPE_ERROR, "Setting phase of transitioning GES touch %p to Began for gesture collection", v90, 0xCu);
          }
        }

        [(__CFString *)v50 setPhase:0];
        [(UITouchesEvent *)self _addGestureRecognizersFromContainer:v49 toTouch:v50 forContinuation:0];
        v54 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497A38);
        if (*v54)
        {
          v60 = *(v54 + 8);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *v90 = 134217984;
            v91 = v50;
            _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_ERROR, "Resetting phase of transitioning GES touch %p after gesture collection", v90, 0xCu);
          }
        }

        [(__CFString *)v50 setPhase:v51];
      }

      else
      {
        v52 = [MEMORY[0x1E696AAA8] currentHandler];
        [v52 handleFailureInMethod:sel__addGestureRecognizersFromContainer_forTouchTransitioningFromGES_ object:self file:@"UITouchesEvent.m" lineNumber:294 description:{@"Invalid request to collect gestures for transitioning GES touch: app supports GES: %d; gesture container: %@; touch: %@", _UIApplicationSupportsGlobalEdgeSwipeTouches(), v49, v50}];
      }

      v8 = v76;
      v10 = v77;
      goto LABEL_59;
    }

    v75 = v18;
    v21 = v18;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v22 = [(__CFString *)v17 window];
    v23 = [(UITouchesEvent *)self touchesForWindow:v22];

    v24 = [v23 countByEnumeratingWithState:&v85 objects:buf count:16];
    if (v24)
    {
      v25 = v24;
      obj = v23;
      v74 = v17;
      v26 = 0;
      v27 = 0;
      v28 = *v86;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v86 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v85 + 1) + 8 * j);
          v27 |= _UITouchViewIsMatchForExclusiveTouchParticipantView(v21, v30, v80, 1);
          v26 |= _UITouchWindowIsMatchForExclusiveTouchParticipantWindow(v30, v80, 1);
        }

        v25 = [obj countByEnumeratingWithState:&v85 objects:buf count:16];
      }

      while (v25);

      v17 = v74;
      if (v27)
      {
        goto LABEL_47;
      }
    }

    else
    {

      LOBYTE(v26) = 0;
    }

    [(__CFString *)v17 _setIsFirstTouchForView:1];
    v46 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497A48);
    if (*v46)
    {
      v61 = *(v46 + 8);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = MEMORY[0x1E696AEC0];
        v63 = v21;
        v64 = v61;
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        v67 = [v62 stringWithFormat:@"<%@: %p>", v66, v63];

        *v90 = 134218242;
        v91 = v17;
        v92 = 2112;
        v93 = v67;
        _os_log_impl(&dword_188A29000, v64, OS_LOG_TYPE_ERROR, "Marking transitioning GES touch %p as first touch in view: %@", v90, 0x16u);
      }
    }

LABEL_47:
    if ((v26 & 1) == 0)
    {
      if ([v21 _shouldApplyExclusiveTouch])
      {
        [v80 _setExclusiveTouchView:v21];
        v47 = [(UITouchesEvent *)self _exclusiveTouchWindows];
        [v47 addObject:v80];

        v48 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497A50);
        if (*v48)
        {
          v68 = *(v48 + 8);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v69 = v80;
            if (v69)
            {
              v70 = MEMORY[0x1E696AEC0];
              v71 = objc_opt_class();
              v72 = NSStringFromClass(v71);
              v73 = [v70 stringWithFormat:@"<%@: %p>", v72, v69];
            }

            else
            {
              v73 = @"(nil)";
            }

            *v90 = 134218242;
            v91 = v17;
            v92 = 2112;
            v93 = v73;
            _os_log_impl(&dword_188A29000, v68, OS_LOG_TYPE_ERROR, "Adding transitioning GES touch %p as exclusive touch for window: %@", v90, 0x16u);
          }
        }
      }
    }

    v18 = v75;
    goto LABEL_51;
  }

  if (v8)
  {
    [(UITouchesEvent *)self _addGestureRecognizersFromContainer:v8 toTouch:v6];
    v31 = v6;
    if (_UITouchShouldCancelDelayingGesturesFromPreviousSequence(v31))
    {
      v32 = [UIApp _gestureEnvironment];
      v33 = [UIGestureEnvironment _gesturesWithDelayedTouchForTouch:v32 event:v31];
      if ([v33 count])
      {
        v34 = *(__UILogGetCategoryCachedImpl("Gesture", &qword_1ED497A58) + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v78 = v10;
          v35 = v31;
          if (v35)
          {
            v36 = MEMORY[0x1E696AEC0];
            v37 = objc_opt_class();
            NSStringFromClass(v37);
            v39 = v38 = v8;
            v40 = [v36 stringWithFormat:@"<%@: %p>", v39, v35];

            v8 = v38;
          }

          else
          {
            v40 = @"(nil)";
          }

          *buf = 138543618;
          v95 = v40;
          v96 = 2114;
          v97 = v33;
          _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "The following gestures delayed responder-based delivery of %{public}@ during a previous sequence. However, they are no longer associated with this touch and did not eventually transition to a terminal state, which is invalid. These gestures will be cancelled to unblock responder event delivery of the new sequence for this touch:\n %{public}@", buf, 0x16u);

          v10 = v78;
        }

        v42 = [v33 allObjects];
        [(UIGestureEnvironment *)v32 _cancelGestureRecognizers:v42];
      }
    }
  }

  if (v10)
  {
    v43 = self->_gestureRecognizersByWindow;
    v44 = v10;
    v45 = CFDictionaryGetValue(v43, v44);
    CFDictionaryRemoveValue(v43, v44);

LABEL_61:
    v58 = [(UITouchesEvent *)self _touchesForWindow:v10];
    [v58 addObject:v6];
  }

LABEL_62:
}

- (void)_clearViewForTouch:(id)a3
{
  v6 = a3;
  v4 = [v6 _responder];
  [v6 _setResponder:0];
  if (v4)
  {
    v5 = [(UITouchesEvent *)self _touchesForKey:v4];
    [v5 removeObject:v6];
    if (![v5 count])
    {
      [(UITouchesEvent *)self _removeTouchesForKey:v4];
    }
  }
}

- (void)_removeTouch:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UITouchesEvent *)self _clearViewForTouch:v4];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 gestureRecognizers];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(UITouchesEvent *)self _touchesForKey:v10];
        [(UITouch *)v4 _removeGestureRecognizer:v10];
        [v11 removeObject:v4];
        if (![v11 count])
        {
          [(UITouchesEvent *)self _removeTouchesForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [v4 window];
  [v4 setWindow:0];
  if ([v4 _isPointerTouch])
  {
    [v4 _clearForReenteringHoverInWindow:v12];
  }

  if (v12)
  {
    v13 = [(UITouchesEvent *)self _touchesForWindow:v12];
    [v13 removeObject:v4];
    gestureRecognizersByWindow = self->_gestureRecognizersByWindow;
    v15 = v12;
    v16 = CFDictionaryGetValue(gestureRecognizersByWindow, v15);
    CFDictionaryRemoveValue(gestureRecognizersByWindow, v15);

    if (![v13 count])
    {
      [(UITouchesEvent *)self _removeTouchesForWindow:v15];
    }
  }

  [(NSMutableSet *)self->_allTouchesMutable removeObject:v4];
  allTouchesImmutableCached = self->_allTouchesImmutableCached;
  self->_allTouchesImmutableCached = 0;
}

- (void)_removeTouch:(id)a3 fromGestureRecognizer:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(UITouchesEvent *)self _touchesForKey:v8];
  [v7 removeObject:v6];

  if (![v7 count])
  {
    [(UITouchesEvent *)self _removeTouchesForKey:v8];
  }
}

- (void)_removeTouchesForKey:(id)a3
{
  key = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [key state] >= 3)
  {
    v4 = [key view];
    v5 = [v4 window];

    if (v5)
    {
      gestureRecognizersByWindow = self->_gestureRecognizersByWindow;
      v7 = v5;
      v8 = CFDictionaryGetValue(gestureRecognizersByWindow, v7);
      CFDictionaryRemoveValue(gestureRecognizersByWindow, v7);
    }
  }

  CFDictionaryRemoveValue(self->_keyedTouches, key);
}

- (void)_cancelResponderDeliveryAndClearTouchesOfWindow:(void *)a1
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [a1 _touchesForWindow:a2];
    v5 = [v4 copy];

    [a1 _cancelComponents:v5];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          [(UITouch *)v11 _clearForWindowIfNeeded:a2];
          [a1 _removeTouch:{v11, v12}];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [a1 _removeTouchesForWindow:a2];
  }
}

- (id)_touchesForResponder:(id)a3 withPhase:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(UITouchesEvent *)self touchesForResponder:v6, 0];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v16;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v15 + 1) + 8 * i);
      if ([v13 phase] == a4 && (objc_msgSend(v13, "isDelayed") & 1) == 0)
      {
        if (a4 >= 3)
        {
          if (v13 && (v13[118] & 8) != 0)
          {
            continue;
          }
        }

        else if (a4 == 1 && ![(UITouch *)v13 _shouldDeliverTouchForTouchesMoved])
        {
          continue;
        }

        if (!v10)
        {
          v10 = [MEMORY[0x1E695DFA8] set];
        }

        [v10 addObject:v13];
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v9);
LABEL_21:

  return v10;
}

- (BOOL)_sendEventToGestureRecognizer:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] > 2)
  {
    v10 = 0;
  }

  else
  {
    if (!qword_1ED497A60)
    {
      v5 = objc_opt_new();
      v6 = qword_1ED497A60;
      qword_1ED497A60 = v5;
    }

    if (_UIApplicationSupportsGlobalEdgeSwipeTouches())
    {
      v7 = qword_1ED497A68;
      if (!qword_1ED497A68)
      {
        v8 = objc_opt_new();
        v9 = qword_1ED497A68;
        qword_1ED497A68 = v8;

        v7 = qword_1ED497A68;
      }

      [v7 removeAllObjects];
      v10 = [(UITouchesEvent *)self _sendSynthesizedBeganForTransitioningGESTouchesToGestureIfNeeded:v4 withDispatchedTouchesIntoSet:qword_1ED497A68];
    }

    else
    {
      v10 = 0;
    }

    [qword_1ED497A60 removeAllObjects];
    [(UITouchesEvent *)self _touchesForGesture:v4 withPhase:0 intoSet:qword_1ED497A60];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497A70);
    if (*CategoryCachedImpl)
    {
      v21 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = qword_1ED497A60;
        v23 = v21;
        v56 = 67109120;
        LODWORD(v57) = [v22 count];
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "\t\tBegan touch count: %d", &v56, 8u);
      }
    }

    if ([qword_1ED497A60 count])
    {
      v12 = __UILogGetCategoryCachedImpl("Touch", qword_1ED497A78);
      if (*v12)
      {
        v40 = *(v12 + 8);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = v40;
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v56 = 134218498;
          v57 = v4;
          v58 = 2112;
          v59 = v43;
          v60 = 2112;
          v61 = qword_1ED497A60;
          _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "\t\tCalling touchesBegan:withEvent: on gesture: %p (%@) with touches: %@", &v56, 0x20u);
        }
      }

      [v4 _componentsBegan:qword_1ED497A60 withEvent:self];
      v10 = 1;
    }

    [qword_1ED497A60 removeAllObjects];
    [(UITouchesEvent *)self _touchesForGesture:v4 withPhase:1 intoSet:qword_1ED497A60];
    v13 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497A78[1]);
    if (*v13)
    {
      v24 = *(v13 + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = qword_1ED497A60;
        v26 = v24;
        v27 = [v25 count];
        v56 = 67109120;
        LODWORD(v57) = v27;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "\t\tMoved touch count: %d", &v56, 8u);
      }
    }

    [qword_1ED497A60 minusSet:qword_1ED497A68];
    v14 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497A78[2]);
    if (*v14)
    {
      v28 = *(v14 + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = qword_1ED497A60;
        v30 = v28;
        v31 = [v29 count];
        v56 = 67109120;
        LODWORD(v57) = v31;
        _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "\t\tMoved touch count after removing synthesized begans: %d", &v56, 8u);
      }
    }

    if ([qword_1ED497A60 count])
    {
      v15 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497A90);
      if (*v15)
      {
        v44 = *(v15 + 8);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = v44;
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v56 = 134218498;
          v57 = v4;
          v58 = 2112;
          v59 = v47;
          v60 = 2112;
          v61 = qword_1ED497A60;
          _os_log_impl(&dword_188A29000, v45, OS_LOG_TYPE_ERROR, "\t\tCalling touchesMoved:withEvent: on gesture: %p (%@) with touches: %@", &v56, 0x20u);
        }
      }

      [v4 _componentsChanged:qword_1ED497A60 withEvent:self];
      v10 = 1;
    }

    [qword_1ED497A60 removeAllObjects];
    [(UITouchesEvent *)self _touchesForGesture:v4 withPhase:3 intoSet:qword_1ED497A60];
    v16 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497A98);
    if (*v16)
    {
      v32 = *(v16 + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = qword_1ED497A60;
        v34 = v32;
        v35 = [v33 count];
        v56 = 67109120;
        LODWORD(v57) = v35;
        _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "\t\tEnded touch count: %d", &v56, 8u);
      }
    }

    if ([qword_1ED497A60 count])
    {
      v17 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497AA0);
      if (*v17)
      {
        v48 = *(v17 + 8);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = v48;
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          v56 = 134218498;
          v57 = v4;
          v58 = 2112;
          v59 = v51;
          v60 = 2112;
          v61 = qword_1ED497A60;
          _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_ERROR, "\t\tCalling touchesEnded:withEvent: on gesture: %p (%@) with touches: %@", &v56, 0x20u);
        }
      }

      [v4 _componentsEnded:qword_1ED497A60 withEvent:self];
      v10 = 1;
    }

    [qword_1ED497A60 removeAllObjects];
    [(UITouchesEvent *)self _touchesForGesture:v4 withPhase:4 intoSet:qword_1ED497A60];
    v18 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497AA8);
    if (*v18)
    {
      v36 = *(v18 + 8);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = qword_1ED497A60;
        v38 = v36;
        v39 = [v37 count];
        v56 = 67109120;
        LODWORD(v57) = v39;
        _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "\t\tCanceled touch count: %d", &v56, 8u);
      }
    }

    if ([qword_1ED497A60 count])
    {
      v19 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497AB0);
      if (*v19)
      {
        v52 = *(v19 + 8);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = v52;
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          v56 = 134218498;
          v57 = v4;
          v58 = 2112;
          v59 = v55;
          v60 = 2112;
          v61 = qword_1ED497A60;
          _os_log_impl(&dword_188A29000, v53, OS_LOG_TYPE_ERROR, "\t\tCalling touchesCancelled on gesture: %p (%@) with touches: %@", &v56, 0x20u);
        }
      }

      [v4 _componentsCancelled:qword_1ED497A60 withEvent:self];
      v10 = 1;
    }

    [qword_1ED497A60 removeAllObjects];
  }

  return v10;
}

- (void)_gestureRecognizerNoLongerNeedsSendEvent:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITouchesEvent *)self touchesForGestureRecognizer:v4];
  v6 = [v5 copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (![v12 phase])
        {
          [(UITouchesEvent *)self _removeTouch:v12 fromGestureRecognizer:v4];
          [(UITouch *)v12 _removeGestureRecognizer:v4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)_touchesForGesture:(id)a3 withPhase:(int64_t)a4
{
  v6 = MEMORY[0x1E695DFA8];
  v7 = a3;
  v8 = [v6 set];
  [(UITouchesEvent *)self _touchesForGesture:v7 withPhase:a4 intoSet:v8];

  return v8;
}

- (void)_touchesForGesture:(id)a3 withPhase:(int64_t)a4 intoSet:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(UITouchesEvent *)self touchesForGestureRecognizer:a3, 0];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ([v14 phase] == a4 && (a4 != 1 || -[UITouch _shouldDeliverTouchForTouchesMoved](v14)))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (BOOL)_sendSynthesizedBeganForTransitioningGESTouchesToGestureIfNeeded:(id)a3 withDispatchedTouchesIntoSet:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!_UIApplicationSupportsGlobalEdgeSwipeTouches() || ([v6 _isAllowedToReceiveGESEvents] & 1) != 0 || objc_msgSend(v6, "state") > 2)
  {
    goto LABEL_37;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = [(UITouchesEvent *)self touchesForGestureRecognizer:v6];
  v9 = [v8 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        if (v13 && (*(v13 + 236) & 0x2000) != 0 && [*(*(&v59 + 1) + 8 * i) phase] <= 2)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v47 = self;
    v49 = v6;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497AB8);
    if (*CategoryCachedImpl)
    {
      v39 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = [v7 count];
        *buf = 67109120;
        LODWORD(v65) = v41;
        _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "\t\tTransitioning GES touch needing synthesized began count: %d", buf, 8u);
      }
    }

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v16 = qword_1ED497AC0;
    qword_1ED497AC0 = v15;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v48 = v7;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v55 objects:v70 count:16];
    if (v18)
    {
      v20 = v18;
      v21 = *v56;
      *&v19 = 134217984;
      v46 = v19;
      do
      {
        v22 = v17;
        v23 = 0;
        do
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(v22);
          }

          v24 = *(*(&v55 + 1) + 8 * v23);
          v25 = [v24 phase];
          v26 = qword_1ED497AC0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __112__UITouchesEvent__sendSynthesizedBeganForTransitioningGESTouchesToGestureIfNeeded_withDispatchedTouchesIntoSet___block_invoke;
          aBlock[3] = &unk_1E70F32F0;
          aBlock[4] = v24;
          aBlock[5] = v25;
          v27 = _Block_copy(aBlock);
          [v26 addObject:v27];

          v28 = __UILogGetCategoryCachedImpl("Touch", algn_1ED497AC8);
          if (*v28)
          {
            v29 = *(v28 + 8);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = v46;
              v65 = v24;
              _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Setting phase of transitioning GES touch %p for synthesized began gesture dispatch", buf, 0xCu);
            }
          }

          [v24 setPhase:0];
          ++v23;
        }

        while (v20 != v23);
        v17 = v22;
        v30 = [v22 countByEnumeratingWithState:&v55 objects:v70 count:16];
        v20 = v30;
      }

      while (v30);
    }

    v31 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED497AD0);
    if (*v31)
    {
      v42 = *(v31 + 8);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = v42;
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *buf = 134218498;
        v65 = v49;
        v66 = 2112;
        v67 = v45;
        v68 = 2112;
        v69 = v17;
        _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "\t\tCalling synthesized touchesBegan:withEvent: on gesture: %p (%@) with transitioning GES touches: %@", buf, 0x20u);
      }
    }

    v6 = v49;
    [v49 _componentsBegan:v17 withEvent:v47];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v32 = qword_1ED497AC0;
    v33 = [v32 countByEnumeratingWithState:&v50 objects:v63 count:16];
    v7 = v48;
    if (v33)
    {
      v34 = v33;
      v35 = *v51;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v51 != v35)
          {
            objc_enumerationMutation(v32);
          }

          (*(*(*(&v50 + 1) + 8 * j) + 16))();
        }

        v34 = [v32 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v34);
    }

    [qword_1ED497AC0 removeAllObjects];
    v37 = 1;
  }

  else
  {
LABEL_37:
    v37 = 0;
  }

  return v37;
}

uint64_t __112__UITouchesEvent__sendSynthesizedBeganForTransitioningGESTouchesToGestureIfNeeded_withDispatchedTouchesIntoSet___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &_UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow_block_invoke___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Resetting phase of transitioning GES touch %p after synthesized began gesture dispatch", &v6, 0xCu);
    }
  }

  return [*(a1 + 32) setPhase:*(a1 + 40)];
}

- (id)_gestureRecognizersForWindow:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CFDictionaryGetValue(self->_gestureRecognizersByWindow, v4);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(UITouchesEvent *)self touchesForWindow:v4];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v7 = 0;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v15 + 1) + 8 * i) _gestureRecognizers];
          if (v14)
          {
            if (!v7)
            {
              v7 = [MEMORY[0x1E695DFA8] set];
            }

            [v7 addObjectsFromArray:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);

      if (v7)
      {
        CFDictionarySetValue(self->_gestureRecognizersByWindow, v4, v7);
      }
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)_componentsForGestureRecognizer:(id)a3
{
  v3 = [(UITouchesEvent *)self _touchesForGestureRecognizer:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 _eventComponentType])
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"UITouchesEvent.m" lineNumber:911 description:{@"Wrong component type for event: %@; component: %@", self, v13}];
        }

        [(UITouch *)v13 _removeGestureRecognizer:v7];
        [(UITouchesEvent *)self _removeTouch:v13 fromGestureRecognizer:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)_viewsForWindow:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(UITouchesEvent *)self touchesForWindow:v4, 0];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) view];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_respondersForWindow:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(UITouchesEvent *)self touchesForWindow:v4, 0];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) _responder];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_firstTouchForView:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(UITouchesEvent *)self touchesForView:a3, 0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 _isFirstTouchForView])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)_moveTouchesFromView:(id)a3 toView:(id)a4
{
  key = a3;
  v6 = a4;
  v7 = CFDictionaryGetValue(self->_keyedTouches, key);
  if (v7)
  {
    CFDictionarySetValue(self->_keyedTouches, v6, v7);
    CFDictionaryRemoveValue(self->_keyedTouches, key);
    [v7 makeObjectsPerformSelector:sel_setView_ withObject:v6];
  }
}

- (double)_initialTouchTimestampForWindow:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [UIApp _mainEventEnvironment];
  v6 = [(UIEventEnvironment *)v5 _touchMapForWindow:v4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v8)
  {

LABEL_12:
    [(UITouchesEvent *)self _initialTouchTimestamp];
    v14 = v15;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *v18;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v18 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v17 + 1) + 8 * v11);
    [v12 initialTouchTimestamp];
    v14 = v13;
    if ([v12 type] != 2)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (v14 == 0.0)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v14;
}

- (void)_addWindowAwaitingLatentSystemGestureNotification:(id)a3 deliveredToEventWindow:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_latentSystemGestureWindows objectForKey:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMapTable *)self->_latentSystemGestureWindows setObject:v7 forKey:v6];
  }

  [v7 addObject:v8];
}

- (void)_windowNoLongerAwaitingSystemGestureNotification:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_latentSystemGestureWindows;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_latentSystemGestureWindows objectForKey:v11];
        [v12 removeObject:v4];
        if (![v12 count])
        {
          if (!v8)
          {
            v8 = [MEMORY[0x1E695DFA8] set];
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(NSMapTable *)self->_latentSystemGestureWindows removeObjectForKey:*(*(&v18 + 1) + 8 * j), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (id)_windowsAwaitingLatentSystemGestureNotificationDeliveredToEventWindow:(id)a3
{
  v3 = [(NSMapTable *)self->_latentSystemGestureWindows objectForKey:a3];
  v4 = [v3 setRepresentation];

  return v4;
}

- (__CFDictionary)_coalescedTouchesForHidEvent:(__IOHIDEvent *)a3
{
  Value = CFDictionaryGetValue(self->_coalescedTouches, a3);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(self->_coalescedTouches, a3, Value);
    CFRelease(Value);
  }

  return Value;
}

- (void)_addCoalescedTouch:(id)a3 forIndex:(int64_t)a4 hidEvent:(__IOHIDEvent *)a5
{
  v10 = a3;
  v8 = [(UITouchesEvent *)self _coalescedTouchesForHidEvent:a5];
  v9 = CFDictionaryGetValue(v8, a4);
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    CFDictionarySetValue(v8, a4, v9);
  }

  [v9 addObject:v10];
}

- (void)_moveCoalescedTouchesFromHidEvent:(__IOHIDEvent *)a3 toHidEvent:(__IOHIDEvent *)a4
{
  CFDictionarySetValue(self->_coalescedTouches, a4, [(UITouchesEvent *)self _coalescedTouchesForHidEvent:?]);
  coalescedTouches = self->_coalescedTouches;

  CFDictionaryRemoveValue(coalescedTouches, a3);
}

- (id)_lastPendingCoalescedTouchForIndex:(int64_t)a3 hidEvent:(__IOHIDEvent *)a4
{
  v4 = CFDictionaryGetValue([(UITouchesEvent *)self _coalescedTouchesForHidEvent:a4], a3);
  v5 = [v4 lastObject];

  return v5;
}

- (id)_rawCoalescedTouchesForTouch:(id)a3
{
  v4 = a3;
  v5 = [v4 _pathIndex];
  v6 = [(UITouchesEvent *)self _coalescedTouchesForHidEvent:[(UIEvent *)self _hidEvent]];
  v7 = CFDictionaryGetValue(v6, v5);
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    CFDictionarySetValue(v6, v5, v7);
  }

  return v7;
}

- (id)coalescedTouchesForTouch:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_allTouchesMutable containsObject:v4])
  {
    v5 = [(UITouchesEvent *)self _rawCoalescedTouchesForTouch:v4];
    v6 = [v4 _pathIndex];
    if (!CFDictionaryGetValue(self->_finalTouches, v6))
    {
      v7 = [v4 _clone];
      if ([v5 count])
      {
        v8 = [v5 lastObject];
        [v7 _setPreviousTouch:v8];
      }

      [v5 addObject:v7];
      CFDictionarySetValue(self->_finalTouches, v6, @"DidAppend");
    }

    v9 = [v5 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)predictedTouchesForTouch:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_allTouchesMutable containsObject:v4])
  {
    v5 = [(UITouch *)v4 _predictedTouchesWithEvent:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setHIDEvent:(__IOHIDEvent *)a3
{
  if ([(UIEvent *)self _hidEvent])
  {
    CFDictionaryRemoveValue(self->_coalescedTouches, [(UIEvent *)self _hidEvent]);
  }

  v7.receiver = self;
  v7.super_class = UITouchesEvent;
  [(UIEvent *)&v7 _setHIDEvent:a3];
  CFDictionaryRemoveAllValues(self->_finalTouches);
  if (a3)
  {
    v5 = _UIEventHIDGetDescendantPointerEvent(a3);
    self->_containsHIDPointerEvent = v5 != 0;
    v6 = _UIEventHIDGetPointerEventSource(v5);
  }

  else
  {
    v6 = 0;
    self->_containsHIDPointerEvent = 0;
  }

  self->_currentPointerEventSource = v6;
}

- (unint64_t)_inputPrecision
{
  v3 = [(UITouchesEvent *)self allTouches];
  if ([v3 count])
  {

LABEL_3:
    v4 = [(UITouchesEvent *)self allTouches];
    v5 = [UIEvent _inputPrecisionForTouches:v4];

    return v5;
  }

  v7 = [(UIEvent *)self _hidEvent];

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = [(UIEvent *)self _hidEvent];
  v9 = _UIEventHIDGetDescendantPointerEvent(v8);
  if (_UIEventHIDGetChildStylusEvent(v8) | v9)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_removeComponents:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 _eventComponentType])
        {
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          [v11 handleFailureInMethod:a2 object:self file:@"UITouchesEvent.m" lineNumber:1174 description:{@"Unexpected event component type: %ld", objc_msgSend(v10, "_eventComponentType")}];
        }

        [(UITouchesEvent *)self _removeTouch:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_cancelComponents:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __36__UITouchesEvent__cancelComponents___block_invoke;
  v50[3] = &unk_1E7129D40;
  v50[4] = self;
  v50[5] = a2;
  v32 = [v5 objectsPassingTest:v50];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = [v12 phase];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __36__UITouchesEvent__cancelComponents___block_invoke_2;
        aBlock[3] = &unk_1E70F32F0;
        aBlock[4] = v12;
        aBlock[5] = v13;
        v14 = _Block_copy(aBlock);
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v9);
  }

  [UIApp _cancelViewProcessingOfTouchesOrPresses:v7 withEvent:self sendingCancelToViewsOfTouchesOrPresses:v32];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v41 + 1) + 8 * j) + 16))();
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v17);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v7;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v37 + 1) + 8 * k);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v26 = [v25 gestureRecognizers];
        v27 = [v26 countByEnumeratingWithState:&v33 objects:v51 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v34;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v34 != v29)
              {
                objc_enumerationMutation(v26);
              }

              [(UIGestureRecognizer *)*(*(&v33 + 1) + 8 * m) _touchWasCancelled:v25];
            }

            v28 = [v26 countByEnumeratingWithState:&v33 objects:v51 count:16];
          }

          while (v28);
        }

        v31 = [UIApp _gestureDelayedEventComponentDispatcher];
        [(UIGestureDelayedEventComponentDispatcher *)v31 removeTouch:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v52 count:16];
    }

    while (v22);
  }
}

BOOL __36__UITouchesEvent__cancelComponents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _eventComponentType])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UITouchesEvent.m" lineNumber:1182 description:{@"Unexpected event component type: %ld", objc_msgSend(v3, "_eventComponentType")}];
  }

  v4 = [UIApp _gestureDelayedEventComponentDispatcher];
  v5 = !-[UIGestureDelayedEventComponentDispatcher touchesBeganWasDelayedForTouch:](v4, v3) && [v3 phase] != 0;

  return v5;
}

@end