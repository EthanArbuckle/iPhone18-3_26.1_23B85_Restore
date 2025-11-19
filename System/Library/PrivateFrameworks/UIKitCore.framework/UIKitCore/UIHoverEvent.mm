@interface UIHoverEvent
- (BOOL)_sendEventToGestureRecognizer:(id)a3;
- (id)_allWindows;
- (id)_deliveryTableByTouchCreateIfNeeded:(id)a3;
- (id)_gestureRecognizersForWindow:(id)a3;
- (id)_init;
- (id)_touchesByContextId:(unsigned int)a3 createIfNeeded:(BOOL)a4;
- (id)allTouches;
- (id)hoverTouchForContextId:(unsigned int)a3 pathIndex:(int64_t)a4;
- (id)touchesForWindow:(id)a3;
- (void)_cancelAllGestureRecognizers;
- (void)_cancelAllGestureRecognizersAndRemoveAllHoverTouches;
- (void)_completelyRemoveHoverTouchesForWindow:(id)a3 contextIdNumber:(id)a4 withCancellation:(BOOL)a5;
- (void)_gestureRecognizerNoLongerNeedsSendEvent:(id)a3;
- (void)_pointerStateDidChange:(id)a3;
- (void)_removeAllHoverTouchesForContextId:(unsigned int)a3;
- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4;
- (void)_removeGestureRecognizersSendingCancelledEvent:(id)a3;
- (void)_setHIDEvent:(__IOHIDEvent *)a3;
- (void)_setNeedsUpdateForWindow:(id)a3 forcingHitTest:(BOOL)a4;
- (void)_setPointerLocked:(BOOL)a3;
- (void)_windowDidBecomeHidden:(id)a3;
- (void)_windowDidDetachContext:(id)a3;
- (void)dealloc;
- (void)removeHoverTouchForContextId:(unsigned int)a3 pathIndex:(int64_t)a4;
- (void)removeTouch:(id)a3 fromGestureRecognizer:(id)a4;
- (void)setHoverTouch:(id)a3 forContextId:(unsigned int)a4 pathIndex:(int64_t)a5;
@end

@implementation UIHoverEvent

- (id)_init
{
  v13.receiver = self;
  v13.super_class = UIHoverEvent;
  v2 = [(UIEvent *)&v13 _init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v4 = v2[16];
    v2[16] = v3;

    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v6 = v2[17];
    v2[17] = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = v2[18];
    v2[18] = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__windowDidDetachContext_ name:_UIWindowDidDetachContextNotification object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel__windowDidBecomeHidden_ name:@"UIWindowDidBecomeHiddenNotification" object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v2 selector:sel__pointerStateDidChange_ name:0x1EFB7E670 object:0];
  }

  return v2;
}

- (void)_cancelAllGestureRecognizersAndRemoveAllHoverTouches
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = NSAllMapTableKeys(self->_touchesByContextId);
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

        [(UIHoverEvent *)self _completelyRemoveHoverTouchesForWindow:0 contextIdNumber:*(*(&v8 + 1) + 8 * v7++) withCancellation:1, v8];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = _UIWindowDidDetachContextNotification;
  v6[1] = @"UIWindowDidBecomeHiddenNotification";
  v6[2] = 0x1EFB7E670;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UIHoverEvent;
  [(UIEvent *)&v5 dealloc];
}

- (void)_setHIDEvent:(__IOHIDEvent *)a3
{
  v14.receiver = self;
  v14.super_class = UIHoverEvent;
  [(UIEvent *)&v14 _setHIDEvent:?];
  if (a3)
  {
    v5 = 0.0;
    if (_os_feature_enabled_impl())
    {
      _UIEventHIDPencilMaximumPositionZForEvent(a3);
      v7 = v6;
      if (_UIEventHIDGetChildStylusEvent(a3))
      {
        IOHIDEventGetFloatValue();
        v5 = v8;
        IOHIDEventGetFloatValue();
        v10 = v9;
        IOHIDEventGetFloatValue();
        v12 = v11;
        IOHIDEventGetFloatValue();
      }

      else
      {
        v10 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
      }
    }

    else
    {
      v10 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      v7 = 0.0;
    }

    self->_maximumPositionZ = v7;
    self->_positionZ = v12;
    self->_hoverAzimuthAngle = v10;
    self->_hoverAltitudeAngle = v5;
    self->_hoverRollAngle = v13;
  }
}

- (id)allTouches
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = NSAllMapTableValues(self->_touchesByContextId);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 unionSet:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)touchesForWindow:(id)a3
{
  touchesByContextId = self->_touchesByContextId;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "_contextId")}];
  v5 = [(NSMapTable *)touchesByContextId objectForKey:v4];

  return v5;
}

- (id)_allWindows
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_touchesByContextId;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 136315394;
    v16 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = +[UIWindow _windowWithContextId:](UIWindow, "_windowWithContextId:", [v10 unsignedIntValue]);
        if (v11)
        {
          [v3 addObject:v11];
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v13 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = v16;
            v22 = "[UIHoverEvent _allWindows]";
            v23 = 2112;
            v24 = v10;
            _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "%s: No window for tracked contextId: %@", buf, 0x16u);
          }
        }

        else
        {
          v12 = *(__UILogGetCategoryCachedImpl("Assert", &_allWindows___s_category) + 8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v22 = "[UIHoverEvent _allWindows]";
            v23 = 2112;
            v24 = v10;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s: No window for tracked contextId: %@", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v14 = [(NSMapTable *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      v7 = v14;
    }

    while (v14);
  }

  return v3;
}

- (id)_gestureRecognizersForWindow:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  touchesByContextId = self->_touchesByContextId;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "_contextId")}];
  v8 = [(NSMapTable *)touchesByContextId objectForKey:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(UIHoverEvent *)self _deliveryTableByTouchCreateIfNeeded:*(*(&v17 + 1) + 8 * i), v17];
        v15 = [v14 gestureRecognizers];
        [v5 unionSet:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v5;
}

- (BOOL)_sendEventToGestureRecognizer:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = NSAllMapTableValues(self->_deliveryTableByTouch);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  v20 = self;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v22;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      v14 = [v13 updateGestureRecognizerForDelivery:v4];
      switch(v14)
      {
        case 7:
          if (v8)
          {
            v15 = v8;
          }

          else
          {
            v15 = objc_opt_new();
            v8 = v15;
          }

          break;
        case 6:
          if (v9)
          {
            v15 = v9;
          }

          else
          {
            v15 = objc_opt_new();
            v9 = v15;
          }

          break;
        case 5:
          if (v10)
          {
            v15 = v10;
          }

          else
          {
            v15 = objc_opt_new();
            v10 = v15;
          }

          break;
        default:
          continue;
      }

      v16 = [v13 touch];
      [v15 addObject:v16];
    }

    v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v7);

  if (v10)
  {
    [v4 _componentsBegan:v10 withEvent:v20];
  }

  if (v9)
  {
    v17 = v20->_touchesWithOutstandingUpdates;
    v18 = [v4 _allActiveTouches];
    if ((-[NSMutableSet intersectsSet:](v17, "intersectsSet:", v18) & 1) != 0 || ![v18 count] && -[NSMutableSet count](v17, "count"))
    {
      [v4 _componentsChanged:v9 withEvent:v20];
    }
  }

  if (v8)
  {
    [v4 _componentsEnded:v8 withEvent:v20];
    v5 = v8;
LABEL_31:
  }

  return 1;
}

- (void)_gestureRecognizerNoLongerNeedsSendEvent:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIHoverEvent *)self touchesForGestureRecognizer:v4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        [(UIHoverEvent *)self removeTouch:*(*(&v10 + 1) + 8 * v9++) fromGestureRecognizer:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
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
          [v14 handleFailureInMethod:a2 object:self file:@"UIHoverEvent.m" lineNumber:499 description:{@"Wrong component type for event: %@; component: %@", self, v13}];
        }

        [(UIHoverEvent *)self removeTouch:v13 fromGestureRecognizer:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_removeGestureRecognizersSendingCancelledEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(UIHoverEvent *)self _componentsForGestureRecognizer:v9];
        [v9 _componentsCancelled:v10 withEvent:self];
        [(UIHoverEvent *)self _removeGestureRecognizer:v9 fromComponents:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_setNeedsUpdateForWindow:(id)a3 forcingHitTest:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = [(UIHoverEvent *)self touchesForWindow:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(UIHoverEvent *)self _deliveryTableByTouchCreateIfNeeded:*(*(&v12 + 1) + 8 * v10)];
        [v11 updateForEvent:self forcingHitTest:v4];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)removeTouch:(id)a3 fromGestureRecognizer:(id)a4
{
  deliveryTableByTouch = self->_deliveryTableByTouch;
  v6 = a4;
  v7 = [(NSMapTable *)deliveryTableByTouch objectForKey:a3];
  [v7 removeGestureRecognizer:v6];
}

- (id)hoverTouchForContextId:(unsigned int)a3 pathIndex:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  touchesByContextId = self->_touchesByContextId;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];
  v7 = [(NSMapTable *)touchesByContextId objectForKey:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 _pathIndex] == a4)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)setHoverTouch:(id)a3 forContextId:(unsigned int)a4 pathIndex:(int64_t)a5
{
  if (a3)
  {
    v5 = *&a4;
    v7 = a3;
    v8 = [(UIHoverEvent *)self _touchesByContextId:v5 createIfNeeded:1];
    [v8 addObject:v7];
  }
}

- (void)removeHoverTouchForContextId:(unsigned int)a3 pathIndex:(int64_t)a4
{
  v5 = *&a3;
  touchesByContextId = self->_touchesByContextId;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v13 = [(NSMapTable *)touchesByContextId objectForKey:v8];

  if (v13)
  {
    v9 = [(UIHoverEvent *)self hoverTouchForContextId:v5 pathIndex:a4];
    v10 = v9;
    if (v9)
    {
      [v9 setWindow:0];
      [v13 removeObject:v10];
      if (![v13 count])
      {
        v11 = self->_touchesByContextId;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
        [(NSMapTable *)v11 removeObjectForKey:v12];
      }

      [(NSMapTable *)self->_deliveryTableByTouch removeObjectForKey:v10];
    }
  }
}

- (void)_windowDidDetachContext:(id)a3
{
  v9 = a3;
  v4 = [v9 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v9 object];
    v7 = [v9 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"contextId"];

    [(UIHoverEvent *)self _completelyRemoveHoverTouchesForWindow:v6 contextIdNumber:v8 withCancellation:1];
  }
}

- (void)_windowDidBecomeHidden:(id)a3
{
  v8 = a3;
  v4 = [v8 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v8 object];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "_contextId")}];
    [(UIHoverEvent *)self _completelyRemoveHoverTouchesForWindow:v6 contextIdNumber:v7 withCancellation:1];
  }
}

- (void)_removeAllHoverTouchesForContextId:(unsigned int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];
  [(UIHoverEvent *)self _completelyRemoveHoverTouchesForWindow:0 contextIdNumber:v4 withCancellation:0];
}

- (void)_completelyRemoveHoverTouchesForWindow:(id)a3 contextIdNumber:(id)a4 withCancellation:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v20 = v9;
    v11 = [(NSMapTable *)self->_touchesByContextId objectForKey:v9];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (v5)
          {
            v17 = [(NSMapTable *)self->_deliveryTableByTouch objectForKey:*(*(&v21 + 1) + 8 * i)];
            [v17 _cancelAllGestureRecognizers];
          }

          if (v16)
          {
            if ((*(v16 + 16) - 5) <= 2)
            {
              v18 = v8;
              if (v8 || (+[UIWindow _windowWithContextId:](UIWindow, "_windowWithContextId:", [v20 unsignedIntValue]), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v19 = v18;
                [(UITouch *)v16 _clearForWindowIfNeeded:v18];
              }
            }
          }

          [(NSMapTable *)self->_deliveryTableByTouch removeObjectForKey:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v10 = v20;
    [(NSMapTable *)self->_touchesByContextId removeObjectForKey:v20];
  }
}

- (void)_cancelAllGestureRecognizers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = NSAllMapTableValues(self->_deliveryTableByTouch);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _cancelAllGestureRecognizers];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_touchesByContextId:(unsigned int)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  touchesByContextId = self->_touchesByContextId;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v9 = [(NSMapTable *)touchesByContextId objectForKey:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (!v10)
  {
    v9 = objc_opt_new();
    v11 = self->_touchesByContextId;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    [(NSMapTable *)v11 setObject:v9 forKey:v12];
  }

  return v9;
}

- (id)_deliveryTableByTouchCreateIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_deliveryTableByTouch objectForKey:v4];
  if (!v5)
  {
    v5 = [[_UIHoverTouchDeliveryTable alloc] initWithTouch:v4];
    [(NSMapTable *)self->_deliveryTableByTouch setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_pointerStateDidChange:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    if (![v7 pointerState])
    {
      if ([UIApp _isSpringBoard])
      {
        if (_UIInternalPreferencesRevisionOnce != -1)
        {
          dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
        }

        v8 = _UIInternalPreferencesRevisionVar;
        if (_UIInternalPreferencesRevisionVar < 1)
        {
          goto LABEL_7;
        }

        v14 = _UIInternalPreference_DisableSystemGestureWindowWorkaround_89259823;
        if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_DisableSystemGestureWindowWorkaround_89259823)
        {
          goto LABEL_7;
        }

        while (v8 >= v14)
        {
          _UIInternalPreferenceSync(v8, &_UIInternalPreference_DisableSystemGestureWindowWorkaround_89259823, @"DisableSystemGestureWindowWorkaround_89259823", _UIInternalPreferenceUpdateBool);
          v14 = _UIInternalPreference_DisableSystemGestureWindowWorkaround_89259823;
          if (v8 == _UIInternalPreference_DisableSystemGestureWindowWorkaround_89259823)
          {
            goto LABEL_7;
          }
        }

        if (!byte_1EA95E744)
        {
LABEL_7:
          v17 = 0u;
          v18 = 0u;
          v16 = 0u;
          v9 = [(UIHoverEvent *)self _allWindows:0];
          v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v16;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v16 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {

                  [(UIHoverEvent *)self _cancelAllGestureRecognizers];
                  goto LABEL_18;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      [(UIHoverEvent *)self _cancelAllGestureRecognizersAndRemoveAllHoverTouches];
    }

LABEL_18:
  }
}

- (void)_setPointerLocked:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_pointerLocked != a3)
  {
    v3 = a3;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("PointerLockState", &_setPointerLocked____s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = @"NO";
        if (v3)
        {
          v7 = @"YES";
        }

        v8 = 138412546;
        v9 = self;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Updating UIHoverEvent pointerLocked: hoverEvent: %@; pointerLocked: %@", &v8, 0x16u);
      }
    }

    self->_pointerLocked = v3;
    [(UIHoverEvent *)self _cancelAllGestureRecognizers];
  }
}

@end