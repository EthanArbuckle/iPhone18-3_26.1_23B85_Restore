@interface UIEventEnvironment
- (UIDragEvent)_dragEventForHIDEvent:(uint64_t)a1;
- (UIEventEnvironment)initWithApplication:(id)a3;
- (const)_touchMapForWindow:(uint64_t)a1;
- (id)UIKitEventForHIDEvent:(id *)a1;
- (id)_currentTouchForWindow:(uint64_t)a1;
- (id)_dragEvents;
- (id)_dynamicButtonEventForWindow:(id)a1;
- (id)_estimatedTouchRecordForContextID:(uint64_t)a3 estimationIndex:;
- (id)_eventOfType:(void *)a3 forScene:;
- (id)_findTouchesEventWindowSceneForKeyboardWindowIfNeeded:(uint64_t)a1;
- (id)_gameControllerEventForWindow:(id)a1;
- (id)_hoverEventForWindow:(id)a1;
- (id)_moveEventForWindow:(id)a1;
- (id)_pencilEventForWindow:(id)a1;
- (id)_physicalKeyboardEventForHIDEvent:(id *)a1;
- (id)_physicalKeyboardEventForWindow:(id)a1;
- (id)_pressForType:(void *)a3 window:;
- (id)_pressesEventForHIDEvent:(uint64_t)a1;
- (id)_pressesEventForWindow:(id)a1;
- (id)_scrollEventForWindow:(id)a1;
- (id)_touchesEventForWindow:(uint64_t)a1;
- (id)_transformEventForWindow:(id)a1;
- (id)_wheelEventForWindow:(id)a1;
- (uint64_t)_currentNudgePressTypeForWindow:(uint64_t)a1;
- (uint64_t)_resetTouchMapForWindow:(uint64_t)result;
- (void)_clearTouchesOfView:(uint64_t)a3 onWindow:;
- (void)_dispatchAndRemoveStaleEstimationUpdateRecordsWithEventTime:(double)a3 upToRecord:;
- (void)_enqueueClearEventsOfRetainedWindow:(void *)a1;
- (void)_registerEstimatedTouches:(void *)a3 event:(uint64_t)a4 forTouchable:;
- (void)_removeDragEvent:(uint64_t)a1;
- (void)_removeEstimatedTouchRecord:(uint64_t)a1;
- (void)_sendMotionBegan:(uint64_t)a1;
- (void)_sendMotionCancelled:(uint64_t)a1;
- (void)_sendMotionEnded:(uint64_t)a1;
- (void)_sendRemoteControlEvent:(uint64_t)a1;
- (void)_setCurrentNudgePressType:(void *)a3 forWindow:;
- (void)_setCurrentTouch:(void *)a3 forWindow:;
- (void)_setPress:(uint64_t)a3 forType:(void *)a4 window:;
- (void)_setTouchMap:(const void *)a3 forWindow:;
- (void)dealloc;
- (void)pointerLockStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation UIEventEnvironment

- (UIEventEnvironment)initWithApplication:(id)a3
{
  v40.receiver = self;
  v40.super_class = UIEventEnvironment;
  v4 = [(UIEventEnvironment *)&v40 init];
  v5 = v4;
  if (v4)
  {
    v4->_application = a3;
    v6 = objc_opt_new();
    eventQueue = v5->_eventQueue;
    v5->_eventQueue = v6;

    v8 = [(UIEvent *)[UIPressesEvent alloc] _initWithEnvironment:v5];
    fallbackPressesEvent = v5->_fallbackPressesEvent;
    v5->_fallbackPressesEvent = v8;

    v10 = [(UIEvent *)[UIPhysicalKeyboardEvent alloc] _initWithEnvironment:v5];
    fallbackPhysicalKeyboardEvent = v5->_fallbackPhysicalKeyboardEvent;
    v5->_fallbackPhysicalKeyboardEvent = v10;

    v12 = [(UIEvent *)[UIWheelEvent alloc] _initWithEnvironment:v5];
    fallbackWheelEvent = v5->_fallbackWheelEvent;
    v5->_fallbackWheelEvent = v12;

    v14 = [[UIEvent alloc] _initWithEnvironment:v5];
    event = v5->_event;
    v5->_event = v14;

    v16 = [(UIEvent *)[UIRemoteControlEvent alloc] _initWithEnvironment:v5];
    remoteControlEvent = v5->_remoteControlEvent;
    v5->_remoteControlEvent = v16;

    v18 = [(UIEvent *)[UIMotionEvent alloc] _initWithEnvironment:v5];
    motionEvent = v5->_motionEvent;
    v5->_motionEvent = v18;

    v20 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    eventRegistryByScene = v5->_eventRegistryByScene;
    v5->_eventRegistryByScene = v20;

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v5 selector:sel_sceneDidDisconnect_ name:@"UISceneDidDisconnectNotification" object:0];
    [v22 addObserver:v5 selector:sel_sceneDidActivate_ name:@"UISceneDidActivateNotification" object:0];
    [v22 addObserver:v5 selector:sel_pointerLockStateDidChange_ name:@"UIPointerLockStateDidChangeNotification" object:0];
    v23 = objc_opt_new();
    dragEventsByContextAndSessionIDPair = v5->_dragEventsByContextAndSessionIDPair;
    v5->_dragEventsByContextAndSessionIDPair = v23;

    v25 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    currentNudgePressTypeByScene = v5->_currentNudgePressTypeByScene;
    v5->_currentNudgePressTypeByScene = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fallbackPressMap = v5->_fallbackPressMap;
    v5->_fallbackPressMap = v27;

    v29 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    pressesMapByScene = v5->_pressesMapByScene;
    v5->_pressesMapByScene = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    estimatedTouchRecordsByContextIDAndEstimationIndex = v5->_estimatedTouchRecordsByContextIDAndEstimationIndex;
    v5->_estimatedTouchRecordsByContextIDAndEstimationIndex = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    estimatedTouchRecordsInIncomingOrder = v5->_estimatedTouchRecordsInIncomingOrder;
    v5->_estimatedTouchRecordsInIncomingOrder = v33;

    v35 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    currentTouchByScene = v5->_currentTouchByScene;
    v5->_currentTouchByScene = v35;

    v37 = objc_opt_new();
    windowsWithActiveTouchMaps = v5->_windowsWithActiveTouchMaps;
    v5->_windowsWithActiveTouchMaps = v37;

    v5->_touchMapsByWindow = 0;
  }

  return v5;
}

- (void)dealloc
{
  v7[3] = *MEMORY[0x1E69E9840];
  touchMapsByWindow = self->_touchMapsByWindow;
  if (touchMapsByWindow)
  {
    CFRelease(touchMapsByWindow);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v7[0] = @"UISceneDidDisconnectNotification";
  v7[1] = @"UISceneDidActivateNotification";
  v7[2] = @"UIPointerLockStateDidChangeNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  [(NSNotificationCenter *)v4 _uiRemoveObserver:v5 names:?];

  v6.receiver = self;
  v6.super_class = UIEventEnvironment;
  [(UIEventEnvironment *)&v6 dealloc];
}

- (id)UIKitEventForHIDEvent:(id *)a1
{
  if (!a1)
  {
    goto LABEL_63;
  }

  Type = IOHIDEventGetType();
  if (Type > 29)
  {
    if (Type > 38)
    {
      if (Type == 39)
      {
        if (!_UIEventHIDIsPencilBarrelEvent())
        {
          goto LABEL_63;
        }

        v5 = _UIEventHIDUIWindowForHIDEvent();
        v6 = [v5 _eventRoutingScene];
        v7 = a1;
        v8 = 13;
      }

      else
      {
        if (Type != 42)
        {
          goto LABEL_28;
        }

        if (!_UIDynamicButtonFeatureIsEnabled() || !_UIEventHIDIsDynamicButtonEvent(a2))
        {
LABEL_63:
          v19 = 0;
          goto LABEL_64;
        }

        v5 = _UIEventHIDUIWindowForHIDEvent();
        v6 = [v5 _eventRoutingScene];
        v7 = a1;
        v8 = 16;
      }
    }

    else
    {
      if (Type == 30)
      {
LABEL_52:
        v14 = [(UIEventEnvironment *)a1 _physicalKeyboardEventForHIDEvent:a2];
        goto LABEL_62;
      }

      if (Type != 35)
      {
        goto LABEL_28;
      }

      v5 = _UIEventHIDUIWindowForHIDEvent();
      v6 = [v5 _eventRoutingScene];
      v7 = a1;
      v8 = 8;
    }

LABEL_37:
    v19 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v7, v8, v6);

    goto LABEL_64;
  }

  if (Type <= 10)
  {
    if (Type != 1)
    {
      if (Type == 6)
      {
        if (_UIEventHIDIsScrollEvent(a2))
        {
          v5 = _UIEventHIDUIWindowForHIDEvent();
          v6 = [v5 _eventRoutingScene];
          v7 = a1;
          v8 = 10;
        }

        else
        {
          v18 = BKSHIDEventGetBaseAttributes();
          [v18 contextID];

          v5 = _UIEventHIDUIWindowForHIDEvent();
          v6 = [v5 _eventRoutingScene];
          v7 = a1;
          v8 = 7;
        }

        goto LABEL_37;
      }

LABEL_28:
      v15 = IOHIDEventGetType();
      switch(v15)
      {
        case 3:
          if (_UIEventHIDPressTypeForKeyboardHIDEvent() != -1)
          {
            goto LABEL_54;
          }

          break;
        case 29:
          IntegerValue = IOHIDEventGetIntegerValue();
          if (IntegerValue && IntegerValue != 3)
          {
LABEL_54:
            if ([UIApp isFrontBoard])
            {
              v26 = BKSHIDEventGetBaseAttributes();
              v27 = [v26 contextID];

              if (!v27)
              {
                v14 = a1[13];
                goto LABEL_62;
              }
            }

LABEL_61:
            v14 = [UIEventEnvironment _pressesEventForHIDEvent:a1];
            goto LABEL_62;
          }

          break;
        case 17:
          v16 = _UIEventHIDUIScreenForHIDEvent(a2);
          v17 = [v16 _userInterfaceIdiom];

          if (v17 == 3)
          {
            goto LABEL_54;
          }

          break;
      }

      if (IOHIDEventGetType() == 3)
      {
        v24 = IOHIDEventGetIntegerValue();
        switch(v24)
        {
          case 7:
            goto LABEL_52;
          case 255:
            goto LABEL_52;
          case 12:
            v25 = IOHIDEventGetIntegerValue();
            if (v25 == 184 || v25 == 669 || v25 == 430)
            {
              goto LABEL_52;
            }

            break;
        }
      }

      goto LABEL_63;
    }

    goto LABEL_63;
  }

  if (Type == 11)
  {
    if ((_UIEventHIDIgnoresDragEvents() & 1) == 0)
    {
      Children = IOHIDEventGetChildren();
      if (Children)
      {
        v10 = Children;
        if (CFArrayGetCount(Children) >= 1)
        {
          CFArrayGetValueAtIndex(v10, 0);
          v11 = BKSHIDEventGetDigitizerAttributes();
          v12 = _UIEventHIDPathAttributesForChild(v11);
          v13 = [v12 locus];

          if (v13)
          {
            v14 = [UIEventEnvironment _dragEventForHIDEvent:a1];
LABEL_62:
            v19 = v14;
            goto LABEL_64;
          }
        }
      }
    }

    if (_UIEventHIDShouldIgnoreEventsExpectedToBecomeDragEvent() && _UIEventHIDExpectedToBecomeDragEvent())
    {
      goto LABEL_63;
    }

    v5 = _UIEventHIDUIWindowForHIDEvent();
    v6 = [(UIEventEnvironment *)a1 _findTouchesEventWindowSceneForKeyboardWindowIfNeeded:v5];
    v7 = a1;
    v8 = 0;
    goto LABEL_37;
  }

  if (Type != 17)
  {
    goto LABEL_28;
  }

  if (_UIEventHIDIsTransformEvent(a2))
  {
    v5 = _UIEventHIDUIWindowForHIDEvent();
    v6 = [v5 _eventRoutingScene];
    v7 = a1;
    v8 = 14;
    goto LABEL_37;
  }

  v20 = IOHIDEventGetType();
  if (v20 == 3)
  {
    if (_UIEventHIDPressTypeForKeyboardHIDEvent() != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  if (v20 != 29)
  {
    if (v20 == 17)
    {
      v21 = _UIEventHIDUIScreenForHIDEvent(a2);
      v22 = [v21 _userInterfaceIdiom];

      if (v22 == 3)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_63;
  }

  v28 = IOHIDEventGetIntegerValue();
  v19 = 0;
  if (v28 && v28 != 3)
  {
    goto LABEL_61;
  }

LABEL_64:

  return v19;
}

- (UIDragEvent)_dragEventForHIDEvent:(uint64_t)a1
{
  Children = IOHIDEventGetChildren();
  v3 = Children;
  if (Children)
  {
    if (CFArrayGetCount(Children) < 1)
    {
      v3 = 0;
    }

    else
    {
      CFArrayGetValueAtIndex(v3, 0);
      v4 = BKSHIDEventGetDigitizerAttributes();
      v5 = _UIEventHIDPathAttributesForChild(v4);

      if ([v5 locus])
      {
        v3 = [v5 userIdentifier];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v6 = BKSHIDEventGetBaseAttributes();
  v7 = [v6 contextID];

  v8 = 0;
  if (v3 && v7)
  {
    v9 = IOHIDEventGetChildren();
    if (v9 && (v10 = v9, CFArrayGetCount(v9) >= 1))
    {
      CFArrayGetValueAtIndex(v10, 0);
      v11 = BKSHIDEventGetDigitizerAttributes();
      v12 = _UIEventHIDPathAttributesForChild(v11);
      v13 = [v12 locus];

      v14 = v7 << 32;
      if (v13 != 4)
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14 | v3];
    v8 = [*(a1 + 48) objectForKeyedSubscript:v15];
    if (!v8)
    {
      v8 = [[UIDragEvent alloc] initWithDragSessionID:v3 environment:a1];
      if (v8)
      {
        [*(a1 + 48) setObject:v8 forKeyedSubscript:v15];
      }
    }
  }

  return v8;
}

- (id)_physicalKeyboardEventForHIDEvent:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = BKSHIDEventGetBaseAttributes();
    v5 = [v4 contextID];
    v6 = _UIEventHIDUIWindowForHIDEvent();
    if (!v5)
    {
      if ([UIApp isFrontBoard])
      {
        v7 = [v4 environment];
        v8 = [MEMORY[0x1E698E398] systemEnvironment];
        v9 = [v7 isEqual:v8];

        if (v9)
        {
          v10 = _UIEventHIDUIScreenForHIDEvent(a2);
          v11 = [UIApp _windowForSystemAppButtonEventsForScreen:v10];

          if (!v11)
          {
            v11 = [UIApp _keyWindowForScreen:v10];
          }

          v6 = v11;
        }
      }
    }

    if (v6 || ![UIApp isFrontBoard])
    {
      v12 = [v6 _eventRoutingScene];
      v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 4, v12);

      if (!v2)
      {
        [UIApp _resetGSKeyboardModifierStateIfNecessary:a2];
      }
    }

    else
    {
      v2 = v2[14];
    }

    [v2 setSource:4];
  }

  return v2;
}

- (id)_pressesEventForHIDEvent:(uint64_t)a1
{
  v2 = _UIEventHIDUIWindowForHIDEvent();
  v3 = _UIEventHIDPressTypeForKeyboardHIDEvent();
  v4 = [UIApp isFrontBoard];
  if (v3 != 601)
  {
    v5 = v4 ^ 1;
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x66)
    {
      v5 = 0;
    }

    if ((v5 & 1) == 0)
    {
      if ([UIApp isFrontBoard])
      {
        v6 = v2 == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!v6)
      {
        goto LABEL_12;
      }

LABEL_10:
      v7 = *(a1 + 104);
      goto LABEL_13;
    }
  }

  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_12:
  v8 = [v2 _eventRoutingScene];
  v7 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(a1, 3, v8);

LABEL_13:

  return v7;
}

- (void)_clearTouchesOfView:(uint64_t)a3 onWindow:
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [_UIEventEnvironmentClearTouchesContext alloc];
    if (v6)
    {
      v19.receiver = v6;
      v19.super_class = _UIEventEnvironmentClearTouchesContext;
      v7 = objc_msgSendSuper2(&v19, sel_init);
      v8 = v7;
      if (v7)
      {
        *(v7 + 1) = a2;
        *(v7 + 2) = a3;
      }
    }

    else
    {
      v8 = 0;
    }

    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = *(a1 + 88);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(UIEventEnvironment *)a1 _touchMapForWindow:?];
          if (v14)
          {
            CFDictionaryApplyFunction(v14, _ClearReferencesToView, v8);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (const)_touchMapForWindow:(uint64_t)a1
{
  Value = 0;
  if (a1 && key)
  {
    Mutable = *(a1 + 176);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      *(a1 + 176) = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, key);
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(*(a1 + 176), key, Value);
      CFRelease(Value);
    }
  }

  return Value;
}

- (void)_enqueueClearEventsOfRetainedWindow:(void *)a1
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 && (!a2 || (a2[89] & 8) == 0))
  {
    v4 = [a2 _eventRoutingScene];
    v5 = [v4 _hasInvalidated];

    v6 = objc_opt_class();
    Name = class_getName(v6);
    v8 = *(__UILogGetCategoryCachedImpl("EventEnvironment", &_enqueueClearEventsOfRetainedWindow____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 136446722;
      v19 = Name;
      v20 = 2050;
      v21 = a2;
      v22 = 1026;
      v23 = [a2 _contextId];
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Enqueuing clear events of window: <%{public}s: %{public}p>; contextId: 0x%{public}X", buf, 0x1Cu);
    }

    v10 = [a2 _contextId];
    v11 = [(UIEventEnvironment *)a1 _touchesEventForWindow:a2];
    v12 = [(UIEventEnvironment *)a1 _hoverEventForWindow:a2];
    v13 = [(UIEventEnvironment *)a1 _dynamicButtonEventForWindow:a2];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__UIEventEnvironment__enqueueClearEventsOfRetainedWindow___block_invoke;
    aBlock[3] = &unk_1E7119200;
    aBlock[4] = a2;
    aBlock[5] = v11;
    aBlock[6] = a1;
    aBlock[7] = v12;
    v17 = v10;
    aBlock[8] = v13;
    aBlock[9] = Name;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (v5)
    {
      v14[2](v14);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }
  }
}

- (id)_touchesEventForWindow:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [(UIEventEnvironment *)a1 _findTouchesEventWindowSceneForKeyboardWindowIfNeeded:a2];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 0, v3);
  }

  return v2;
}

- (id)_hoverEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 11, v3);
  }

  return v2;
}

- (id)_dynamicButtonEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 16, v3);
  }

  return v2;
}

void __58__UIEventEnvironment__enqueueClearEventsOfRetainedWindow___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("EventEnvironment", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_14) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 32);
    v5 = v2;
    *buf = 136446722;
    v27 = v3;
    v28 = 2050;
    v29 = v4;
    v30 = 1026;
    v31 = [v4 _contextId];
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Performing clear events of window: <%{public}s: %{public}p>; contextId: 0x%{public}X", buf, 0x1Cu);
  }

  [(UITouchesEvent *)*(a1 + 40) _cancelResponderDeliveryAndClearTouchesOfWindow:?];
  v6 = [(UIEventEnvironment *)*(a1 + 48) _touchMapForWindow:?];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(v12 + 360);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = *(a1 + 32);

        if (v14 == v15)
        {
          [(UITouch *)v12 _clearForWindowIfNeeded:?];
        }

        ++v11;
      }

      while (v9 != v11);
      v16 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v9 = v16;
    }

    while (v16);
  }

  [(UIEventEnvironment *)*(a1 + 48) _resetTouchMapForWindow:?];
  v17 = *(a1 + 48);
  if (v17)
  {
    Mutable = *(v17 + 176);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      *(v17 + 176) = Mutable;
    }
  }

  else
  {
    Mutable = 0;
  }

  CFDictionaryRemoveValue(Mutable, *(a1 + 32));
  [*(a1 + 56) _removeAllHoverTouchesForContextId:*(a1 + 80)];
  v19 = *(a1 + 64);
  v20 = [v19 _componentsForWindow:*(a1 + 32)];
  [v19 _removeComponents:v20];
}

- (uint64_t)_resetTouchMapForWindow:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    Mutable = *(result + 176);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      *(v3 + 176) = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, key);
    if (Value)
    {
      CFDictionaryRemoveAllValues(Value);
    }

    v6 = *(v3 + 88);

    return [v6 removeObject:key];
  }

  return result;
}

- (void)_setTouchMap:(const void *)a3 forWindow:
{
  if (a1)
  {
    Count = CFDictionaryGetCount(theDict);
    v7 = *(a1 + 88);
    if (Count)
    {
      [v7 addObject:a3];
    }

    else
    {
      [v7 removeObject:a3];
    }

    Mutable = *(a1 + 176);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      *(a1 + 176) = Mutable;
    }

    CFDictionarySetValue(Mutable, a3, theDict);
  }
}

- (id)_currentTouchForWindow:(uint64_t)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = [a2 _eventRoutingScene];
    v6 = v5;
    if (v5)
    {
      if (([v5 _hasInvalidated] & 1) == 0)
      {

LABEL_10:
        v8 = *(a1 + 168);
        v6 = [a2 windowScene];
        v2 = [v8 objectForKey:v6];
        goto LABEL_11;
      }

      if ([v6 _hasInvalidated])
      {
        v7 = [*(a1 + 136) containsObject:v6];

        if (v7)
        {
          v2 = 0;
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    v2 = 0;
LABEL_11:
  }

LABEL_12:

  return v2;
}

- (void)_setCurrentTouch:(void *)a3 forWindow:
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    v6 = [a3 _eventRoutingScene];
    if (!v6)
    {
      goto LABEL_20;
    }

    v11 = v6;
    if ([v6 _hasInvalidated])
    {
      if (![v11 _hasInvalidated])
      {
        goto LABEL_19;
      }

      v8 = [*(a1 + 136) containsObject:v11];

      if (v8)
      {
        return;
      }
    }

    else
    {
    }

    v10 = *(a1 + 168);
    v11 = [a3 windowScene];
    [v10 removeObjectForKey:v11];
    goto LABEL_19;
  }

  if (!a3)
  {
    return;
  }

  v6 = [a3 _eventRoutingScene];
  if (!v6)
  {
    goto LABEL_20;
  }

  v11 = v6;
  if (([v6 _hasInvalidated] & 1) == 0)
  {

LABEL_16:
    v9 = *(a1 + 168);
    v11 = [a3 windowScene];
    [v9 setObject:a2 forKey:v11];
    goto LABEL_19;
  }

  if ([v11 _hasInvalidated])
  {
    v7 = [*(a1 + 136) containsObject:v11];

    if (v7)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_19:
  v6 = v11;
LABEL_20:
}

- (void)_registerEstimatedTouches:(void *)a3 event:(uint64_t)a4 forTouchable:
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 96) == 1)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v6 = a2;
    v7 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v40 + 1) + 8 * i) type] == 2)
          {

            v11 = MEMORY[0x1E696AD98];
            [a3 _hidEvent];
            v12 = BKSHIDEventGetBaseAttributes();
            v13 = [v11 numberWithUnsignedInt:{objc_msgSend(v12, "contextID")}];

            v14 = [*(a1 + 192) objectForKey:v13];
            if (!v14)
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
              [*(a1 + 192) setObject:v14 forKey:v13];
            }

            v30 = a1;
            v31 = v13;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            obj = v6;
            v28 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v28)
            {
              v26 = *v37;
              do
              {
                v15 = 0;
                do
                {
                  if (*v37 != v26)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = v15;
                  v16 = *(*(&v36 + 1) + 8 * v15);
                  v17 = [a3 coalescedTouchesForTouch:v16];
                  v32 = 0u;
                  v33 = 0u;
                  v34 = 0u;
                  v35 = 0u;
                  v18 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *v33;
                    do
                    {
                      for (j = 0; j != v19; ++j)
                      {
                        if (*v33 != v20)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v22 = *(*(&v32 + 1) + 8 * j);
                        if (v22 && ((*(v22 + 265) & 1) != 0 || *(v22 + 268) == 1))
                        {
                          v23 = [*(*(&v32 + 1) + 8 * j) estimationUpdateIndex];
                          if (v23)
                          {
                            v24 = [v14 objectForKey:v23];
                            if (!v24)
                            {
                              v24 = [[_UIEstimatedTouchRecord alloc] initWithLiveTouch:v16 freezeTouch:v22 contextID:v31];
                              [v14 setObject:v24 forKey:v23];
                              [*(v30 + 200) addObject:v24];
                            }

                            [(_UIEstimatedTouchRecord *)v24 addTouchable:a4];
                          }
                        }
                      }

                      v19 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
                    }

                    while (v19);
                  }

                  v15 = v29 + 1;
                }

                while (v29 + 1 != v28);
                v28 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
              }

              while (v28);
            }

            v6 = v31;
            goto LABEL_37;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:
  }
}

- (void)_removeEstimatedTouchRecord:(uint64_t)a1
{
  if (a1)
  {
    [*(a1 + 200) removeObject:a2];
    v7 = [a2 contextID];
    v4 = [*(a1 + 192) objectForKey:?];
    v5 = [a2 frozenTouch];
    v6 = [v5 estimationUpdateIndex];
    [v4 removeObjectForKey:v6];

    if (![v4 count])
    {
      [*(a1 + 192) removeObjectForKey:v7];
    }
  }
}

- (id)_estimatedTouchRecordForContextID:(uint64_t)a3 estimationIndex:
{
  if (a1)
  {
    v4 = [*(a1 + 192) objectForKey:a2];
    v5 = [v4 objectForKey:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_dispatchAndRemoveStaleEstimationUpdateRecordsWithEventTime:(double)a3 upToRecord:
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = *(a1 + 200);
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v25;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if (v12 == a2)
        {
          break;
        }

        v13 = [*(*(&v24 + 1) + 8 * v11) frozenTouch];
        [v13 timestamp];
        if (a3 - v14 > 0.4)
        {
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          [v9 addObject:v12];
          [v13 _pressure];
          [v12 dispatchUpdateWithPressure:1 stillEstimated:?];
          [v13 _rollAngle];
          [v12 dispatchUpdateWithRollAngle:1 stillEstimated:?];
        }

        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(UIEventEnvironment *)a1 _removeEstimatedTouchRecord:?];
        }

        v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }
}

- (void)_removeDragEvent:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [*(a1 + 48) allKeysForObject:{a2, 0}];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(a1 + 48) removeObjectForKey:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)_dragEvents
{
  if (a1)
  {
    a1 = [a1[6] allValues];
    v1 = vars8;
  }

  return a1;
}

- (id)_pressForType:(void *)a3 window:
{
  if (!a1)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    v6 = [a3 _eventRoutingScene];
    v7 = v6;
    if (v6)
    {
      if (([v6 _hasInvalidated] & 1) == 0)
      {

LABEL_11:
        v11 = *(a1 + 144);
        v12 = [a3 windowScene];
        v7 = [v11 objectForKey:v12];

        v13 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
        v9 = [v7 objectForKey:v13];

        goto LABEL_12;
      }

      if ([v7 _hasInvalidated])
      {
        v8 = [*(a1 + 136) containsObject:v7];

        if (v8)
        {
LABEL_7:
          v9 = 0;
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    v9 = 0;
  }

  else
  {
    v10 = *(a1 + 160);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v9 = [v10 objectForKey:v7];
  }

LABEL_12:

LABEL_13:

  return v9;
}

- (void)_setPress:(uint64_t)a3 forType:(void *)a4 window:
{
  if (!a1)
  {
    return;
  }

  if (!a4)
  {
    v10 = *(a1 + 160);
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v10 setObject:a2 forKey:v17];
    goto LABEL_13;
  }

  v8 = [a4 _eventRoutingScene];
  if (v8)
  {
    v17 = v8;
    if (([v8 _hasInvalidated] & 1) == 0)
    {

LABEL_10:
      v11 = *(a1 + 144);
      v12 = [a4 windowScene];
      v18 = [v11 objectForKey:v12];

      v13 = v18;
      if (!v18)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v17 = v13;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [v17 setObject:a2 forKey:v14];

      v15 = *(a1 + 144);
      v16 = [a4 windowScene];
      [v15 setObject:v17 forKey:v16];

      goto LABEL_13;
    }

    if ([v17 _hasInvalidated])
    {
      v9 = [*(a1 + 136) containsObject:v17];

      if (v9)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_13:
    v8 = v17;
  }
}

- (uint64_t)_currentNudgePressTypeForWindow:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return -1;
  }

  v4 = [a2 _eventRoutingScene];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  if (([v4 _hasInvalidated] & 1) == 0)
  {

    goto LABEL_9;
  }

  if (![v5 _hasInvalidated])
  {
    goto LABEL_11;
  }

  v6 = [*(a1 + 136) containsObject:v5];

  if ((v6 & 1) == 0)
  {
LABEL_9:
    v8 = *(a1 + 152);
    v9 = [a2 windowScene];
    v5 = [v8 objectForKey:v9];

    if (v5)
    {
      v7 = [v5 integerValue];
LABEL_12:

      return v7;
    }

LABEL_11:
    v7 = -1;
    goto LABEL_12;
  }

  return -1;
}

- (void)_setCurrentNudgePressType:(void *)a3 forWindow:
{
  if (!a1 || !a3)
  {
    return;
  }

  v6 = [a3 _eventRoutingScene];
  if (v6)
  {
    v10 = v6;
    if ([v6 _hasInvalidated])
    {
      if (![v10 _hasInvalidated])
      {
LABEL_10:
        v6 = v10;
        goto LABEL_11;
      }

      v7 = [*(a1 + 136) containsObject:v10];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    v8 = *(a1 + 152);
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v9 = [a3 windowScene];
    [v8 setObject:v10 forKey:v9];

    goto LABEL_10;
  }

LABEL_11:
}

- (void)sceneDidDisconnect:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 object];
    v6 = [objc_opt_class() _supportsEventUIWindowRouting];

    if (v6)
    {
      v7 = [a3 object];
      if (v7)
      {
        invalidatedAndDisconnectedScenes = self->_invalidatedAndDisconnectedScenes;
        if (!invalidatedAndDisconnectedScenes)
        {
          v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
          v10 = self->_invalidatedAndDisconnectedScenes;
          self->_invalidatedAndDisconnectedScenes = v9;

          invalidatedAndDisconnectedScenes = self->_invalidatedAndDisconnectedScenes;
        }

        [(NSHashTable *)invalidatedAndDisconnectedScenes addObject:v7];
        v11 = [(NSMapTable *)self->_eventRegistryByScene objectForKey:v7];
        v12 = v11;
        if (v11)
        {
          [*(v11 + 8) removeAllObjects];
          v13 = v12[1];
          v12[1] = 0;
        }

        [(NSMapTable *)self->_currentNudgePressTypeByScene removeObjectForKey:v7];
        [(NSMapTable *)self->_pressesMapByScene removeObjectForKey:v7];
        [(NSMapTable *)self->_currentTouchByScene removeObjectForKey:v7];
        [(NSMapTable *)self->_eventRegistryByScene removeObjectForKey:v7];
        v14 = [(NSMutableSet *)self->_windowsWithActiveTouchMaps copy];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v23 + 1) + 8 * i);
              v21 = [v20 _eventRoutingScene];

              if (v21 == v7)
              {
                [(UIEventEnvironment *)self _resetTouchMapForWindow:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v17);
        }
      }
    }
  }

  else
  {
  }
}

- (void)sceneDidActivate:(id)a3
{
  v3 = [a3 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() _supportsEventUIWindowRouting])
  {
    v4 = v3;
    if ([v4 _allowsEventUIWindowRouting])
    {
      v5 = [v4 _allWindows];
      v6 = [v5 count];

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 keyWindow];
        }

        else
        {
          [v4 _topVisibleWindowPassingTest:&__block_literal_global_424];
        }
        v7 = ;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __39__UIEventEnvironment_sceneDidActivate___block_invoke_2;
        v9[3] = &unk_1E70F35B8;
        v10 = v7;
        v11 = v4;
        v8 = v7;
        [v11 _enqueuePostSettingsUpdateResponseBlock:v9 inPhase:0x1EFB17490];
      }
    }
  }
}

uint64_t __39__UIEventEnvironment_sceneDidActivate___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 canBecomeKeyWindow];
  if (result)
  {
    if ([a2 _isTextEffectsWindow])
    {
      return 0;
    }

    else
    {
      return [a2 isInternalWindow] ^ 1;
    }
  }

  return result;
}

void __39__UIEventEnvironment_sceneDidActivate___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _UIPencilEventRequestBarrelFocusIfAbleForWindow(v2, 0);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"_UIPencilEventDidEvaluateBarrelFocusForSceneTransition" object:*(a1 + 40) userInfo:0];
}

- (void)pointerLockStateDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [a3 object];
  v6 = [a3 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"scene"];

  if ([objc_opt_class() _supportsEventUIWindowRouting])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v5 && v9 && _UIPointerLockStateIsAvailableForScene(v9))
  {
    v11 = *(__UILogGetCategoryCachedImpl("PointerLockState", &pointerLockStateDidChange____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v10 succinctDescription];
      v14 = [v5 isLocked];
      v15 = @"NO";
      if (v14)
      {
        v15 = @"YES";
      }

      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "pointerLockState notification received: windowScene %@; isLocked: %@", &v17, 0x16u);
    }

    v16 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(self, 11, v10);
    if (v16)
    {
      [v16 _setPointerLocked:{objc_msgSend(v5, "isLocked")}];
    }
  }
}

- (id)_eventOfType:(void *)a3 forScene:
{
  if (a1)
  {
    a1 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(a1, a2, a3);
    v3 = vars8;
  }

  return a1;
}

- (id)_moveEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 5, v3);
  }

  return v2;
}

- (id)_findTouchesEventWindowSceneForKeyboardWindowIfNeeded:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v4 = v3;
    if (!+[UIKeyboard inputUIOOP])
    {
      v4 = v3;
      if (+[_UIRemoteKeyboards enabled])
      {
        v4 = v3;
        if ([a2 _isRemoteKeyboardWindow])
        {
          v5 = [v3 _sceneForKeyboardDisplay];
          v6 = v5;
          if (v5)
          {
            v7 = v3 == v5;
          }

          else
          {
            v7 = 0;
          }

          v8 = v7;
          v9 = +[_UIRemoteKeyboards wantsUnassociatedWindowSceneForKeyboardWindow];
          v10 = [UIApp isFrontBoard];
          v11 = [v3 _screen];
          v12 = [v11 _userInterfaceIdiom];

          if (v12 == 3)
          {
            v13 = 0;
          }

          else
          {
            v13 = v10;
          }

          if (v9)
          {
            v14 = v13;
          }

          else
          {
            v14 = 1;
          }

          v4 = v3;
          if ((v8 & v14) == 1)
          {
            v4 = +[UIWindowScene _keyWindowScene];

            v15 = [v4 _settingsScene];
            v16 = v15;
            if (v15 && v15 != v3 && [v15 _allowsEventUIWindowRouting])
            {
              v17 = v16;

              v4 = v17;
            }
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_pressesEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 3, v3);
  }

  return v2;
}

- (id)_wheelEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 7, v3);
  }

  return v2;
}

- (id)_gameControllerEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 8, v3);
  }

  return v2;
}

- (id)_physicalKeyboardEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 4, v3);
  }

  return v2;
}

- (id)_pencilEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 13, v3);
  }

  return v2;
}

- (id)_scrollEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 10, v3);
  }

  return v2;
}

- (id)_transformEventForWindow:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 _eventRoutingScene];
    v2 = _UIEventEnvironmentEventOfTypeForEventRoutingUIScene(v2, 14, v3);
  }

  return v2;
}

- (void)_sendMotionBegan:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if ([v4 _isDetectingMotionEvents])
    {
      [v4 _setSubtype:a2];
      [v4 setShakeState:0];
      [*(a1 + 8) sendEvent:v4];
    }
  }
}

- (void)_sendMotionEnded:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if ([v4 _isDetectingMotionEvents])
    {
      [v4 _setSubtype:a2];
      [v4 setShakeState:1];
      [*(a1 + 8) sendEvent:v4];
    }
  }
}

- (void)_sendMotionCancelled:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if ([v4 _isDetectingMotionEvents])
    {
      [v4 _setSubtype:a2];
      [v4 setShakeState:2];
      [*(a1 + 8) sendEvent:v4];
    }
  }
}

- (void)_sendRemoteControlEvent:(uint64_t)a1
{
  if (a1 && [*(a1 + 8) _hasRemoteControlEventObservers])
  {
    v4 = *(a1 + 40);
    [v4 _setSubtype:a2];
    [*(a1 + 8) sendEvent:v4];
  }
}

@end