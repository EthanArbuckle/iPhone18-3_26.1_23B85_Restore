@interface UIEvent
+ (unint64_t)_inputPrecisionForTouches:(id)a3;
- (BKSHIDEventAuthenticationMessage)_authenticationMessage;
- (CGPoint)_digitizerLocation;
- (NSSet)_allWindows;
- (id)_allGestureRecognizers;
- (id)_cloneEvent;
- (id)_eventObservers;
- (id)_init;
- (id)_initWithEnvironment:(id)a3;
- (id)_screen;
- (id)_triggeringPhysicalButton;
- (int64_t)_modifierFlags;
- (void)_addEventObserver:(uint64_t)a1;
- (void)_addHitTestObserver:(uint64_t)a1;
- (void)_removeGestureRecognizer:(void *)a1;
- (void)_removeGestureRecognizersSendingCancelledEvent:(id)a3;
- (void)_setGSEvent:(__GSEvent *)a3;
- (void)_setHIDEvent:(__IOHIDEvent *)a3;
- (void)dealloc;
@end

@implementation UIEvent

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UIEvent;
  return [(UIEvent *)&v3 init];
}

- (id)_eventObservers
{
  if (a1)
  {
    a1 = a1[8];
    v1 = vars8;
  }

  return a1;
}

- (id)_screen
{
  p_cachedScreen = &self->_cachedScreen;
  v4 = self->_cachedScreen;
  if (!v4)
  {
    v4 = _UIEventHIDUIScreenForHIDEvent([(UIEvent *)self _hidEvent]);
    if (!v4)
    {
      v4 = [objc_opt_self() mainScreen];
    }

    objc_storeStrong(p_cachedScreen, v4);
  }

  return v4;
}

- (id)_cloneEvent
{
  v3 = objc_alloc_init(objc_opt_class());
  gsEvent = self->_gsEvent;
  if (gsEvent)
  {
    gsEvent = CFRetain(gsEvent);
  }

  *(v3 + 1) = gsEvent;
  hidEvent = self->_hidEvent;
  if (hidEvent)
  {
    hidEvent = CFRetain(hidEvent);
  }

  *(v3 + 2) = hidEvent;
  [(UIEvent *)self timestamp];
  [v3 _setTimestamp:?];
  objc_storeStrong(v3 + 7, self->_cachedScreen);
  *(v3 + 24) = self->_hasValidModifiers;
  *(v3 + 4) = self->_mzModifierFlags;
  *(v3 + 5) = self->_mzClickCount;
  *(v3 + 6) = self->_buttonMask;
  *(v3 + 11) = self->_lastPointerSenderID;
  *(v3 + 14) = self->_trackpadFingerDownCount;
  return v3;
}

- (int64_t)_modifierFlags
{
  if (self->_hasValidModifiers)
  {
    return self->_mzModifierFlags;
  }

  [UIApp _hardwareKeyboard:{0, v2, v3}];
  LiveModifierState = GSKeyboardGetLiveModifierState();
  if ((LiveModifierState & 0x480000) != 0)
  {
    v6 = (((LiveModifierState & 0x1010000) != 0) << 20) | 0x80000;
  }

  else
  {
    v6 = ((LiveModifierState & 0x1010000) != 0) << 20;
  }

  if ((LiveModifierState & 0x900000) != 0)
  {
    v6 |= 0x40000uLL;
  }

  if ((LiveModifierState & 0x220000) != 0)
  {
    v6 |= 0x20000uLL;
  }

  return v6 | (LiveModifierState >> 3) & 0x800000 | (LiveModifierState >> 2) & 0x10000;
}

- (void)dealloc
{
  gsEvent = self->_gsEvent;
  if (gsEvent)
  {
    CFRelease(gsEvent);
  }

  hidEvent = self->_hidEvent;
  if (hidEvent)
  {
    CFRelease(hidEvent);
  }

  v5.receiver = self;
  v5.super_class = UIEvent;
  [(UIEvent *)&v5 dealloc];
}

- (id)_allGestureRecognizers
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_opt_new();
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [a1 _allWindows];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [a1 _gestureRecognizersForWindow:*(*(&v10 + 1) + 8 * i)];
          if (v2)
          {
            [v2 unionSet:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_setGSEvent:(__GSEvent *)a3
{
  gsEvent = self->_gsEvent;
  if (gsEvent)
  {
    CFRelease(gsEvent);
  }

  if (a3)
  {
    [(UIEvent *)self _setHIDEvent:0];
    self->_gsEvent = CFRetain(a3);
    GSEventGetTimestamp();

    [(UIEvent *)self _setTimestamp:?];
  }

  else
  {
    self->_gsEvent = 0;
  }
}

- (void)_setHIDEvent:(__IOHIDEvent *)a3
{
  if (self->_hidEvent == a3)
  {
    return;
  }

  cachedScreen = self->_cachedScreen;
  self->_cachedScreen = 0;

  hidEvent = self->_hidEvent;
  if (hidEvent)
  {
    CFRelease(hidEvent);
  }

  hasValidModifiers = self->_hasValidModifiers;
  self->_hasValidModifiers = 0;
  self->_isInteractionBehaviorInactive = 0;
  if (!a3)
  {
    self->_hidEvent = 0;
    goto LABEL_14;
  }

  [(UIEvent *)self _setGSEvent:0];
  self->_hidEvent = CFRetain(a3);
  TimeStamp = IOHIDEventGetTimeStamp();
  [(UIEvent *)self _setTimestamp:_UIMediaTimeForMachTime(TimeStamp)];
  v9 = _UIEventHIDGetDescendantPointerEvent(a3);
  if (v9)
  {
    self->_mzClickCount = 0;
    self->_buttonMask = _UIEventHIDButtonMaskFromPointerEventAndChildren(v9);
    v10 = BKSHIDEventGetPointerAttributes();
    v11 = v10;
    if (v10)
    {
      v10 = [v10 fingerDownCount];
    }

    self->_trackpadFingerDownCount = v10;
    self->_lastPointerSenderID = IOHIDEventGetSenderID();
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (IOHIDEventGetType() == 11)
  {
    v11 = BKSHIDEventGetDigitizerAttributes();
    if (v11)
    {
LABEL_13:
      self->_hasValidModifiers = 1;
      self->_mzModifierFlags = _UIEventGetHIDModifierFlags(a3, v11);
      self->_isInteractionBehaviorInactive = [v11 sceneTouchBehavior] == 1;
    }
  }

LABEL_14:
  if (hasValidModifiers && !self->_hasValidModifiers)
  {
    self->_trackpadFingerDownCount = 0;
    self->_mzClickCount = 0;
    self->_buttonMask = 0;
    self->_mzModifierFlags = 0;
  }
}

- (id)_triggeringPhysicalButton
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: Using deprecated _triggeringPhysicalButton: instead of inspecting presses and their phases directly. This will become an assert in future builds.", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &_triggeringPhysicalButton___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Using deprecated _triggeringPhysicalButton: instead of inspecting presses and their phases directly. This will become an assert in future builds.", v5, 2u);
    }
  }

  return 0;
}

- (CGPoint)_digitizerLocation
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)_initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(UIEvent *)self _init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 13, v4);
  }

  return v6;
}

- (NSSet)_allWindows
{
  v2 = UIApp;
  v3 = [(UIEvent *)self _screen];
  v4 = [v2 _keyWindowForScreen:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_addEventObserver:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    v7 = v3;
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
      v6 = *(a1 + 64);
      *(a1 + 64) = v5;

      v4 = *(a1 + 64);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (void)_addHitTestObserver:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 72);
    v7 = v3;
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:1];
      v6 = *(a1 + 72);
      *(a1 + 72) = v5;

      v4 = *(a1 + 72);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (void)_removeGestureRecognizersSendingCancelledEvent:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = a3;
  v32 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v32)
  {
    v31 = *v45;
    v33 = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v4;
        v35 = *(*(&v44 + 1) + 8 * v4);
        v5 = [(UIEvent *)self _componentsForGestureRecognizer:?];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = *v49;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v49 != v9)
              {
                objc_enumerationMutation(v5);
              }

              v11 = *(*(&v48 + 1) + 8 * i);
              v12 = [v11 _eventComponentPhase];
              v13 = [v12 value];

              if (v13 <= 2)
              {
                if (!v8)
                {
                  v8 = objc_opt_new();
                }

                [v8 addObject:v11];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
          }

          while (v7);
        }

        else
        {
          v8 = 0;
        }

        if ([v8 count])
        {
          v14 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v15 = v8;
          v16 = [v15 countByEnumeratingWithState:&v40 objects:v53 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v41;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v41 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v40 + 1) + 8 * j);
                v21 = [v20 _eventComponentPhase];
                [v14 setObject:v21 forKey:v20];

                v22 = [v20 _eventComponentPhaseForValue:4];
                [v20 _setEventComponentPhase:v22];
              }

              v17 = [v15 countByEnumeratingWithState:&v40 objects:v53 count:16];
            }

            while (v17);
          }

          [v35 _componentsCancelled:v15 withEvent:v33];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v23 = v15;
          v24 = [v23 countByEnumeratingWithState:&v36 objects:v52 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v37;
            do
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v37 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v36 + 1) + 8 * k);
                v29 = [v14 objectForKey:v28];
                [v28 _setEventComponentPhase:v29];
              }

              v25 = [v23 countByEnumeratingWithState:&v36 objects:v52 count:16];
            }

            while (v25);
          }

          self = v33;
        }

        [(UIEvent *)self _removeGestureRecognizer:v35 fromComponents:v5];

        v4 = v34 + 1;
      }

      while (v34 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v32);
  }
}

- (void)_removeGestureRecognizer:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 _componentsForGestureRecognizer:v3];
    [a1 _removeGestureRecognizer:v3 fromComponents:v4];
  }
}

+ (unint64_t)_inputPrecisionForTouches:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    v8 = 1;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v8)
        {
          if (v10)
          {
            v6 = *(v10 + 48);
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          if (!v6)
          {
            goto LABEL_19;
          }

          if (v10)
          {
            v10 = *(v10 + 48);
          }

          if (v6 != v10)
          {
            goto LABEL_18;
          }
        }

        v8 = 0;
        ++v9;
      }

      while (v5 != v9);
      v11 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v11;
      v8 = 0;
    }

    while (v11);
  }

  else
  {
LABEL_18:
    v6 = 0;
  }

LABEL_19:

  return v6;
}

- (BKSHIDEventAuthenticationMessage)_authenticationMessage
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(UIEvent *)self _hidEvent])
  {
    goto LABEL_16;
  }

  if (IOHIDEventGetType() == 11 && !IOHIDEventGetEvent())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [(UIEvent *)self allTouches];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
LABEL_6:
      v7 = 0;
      while (1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 384);
          if (v9)
          {
            goto LABEL_18;
          }
        }

        if (v5 == ++v7)
        {
          v10 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
          v5 = v10;
          if (v10)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

LABEL_16:
    v11 = 0;
    goto LABEL_19;
  }

  v3 = BKSHIDEventGetBaseAttributes();
  v9 = [v3 authenticationMessage];
LABEL_18:
  v11 = v9;

LABEL_19:

  return v11;
}

@end