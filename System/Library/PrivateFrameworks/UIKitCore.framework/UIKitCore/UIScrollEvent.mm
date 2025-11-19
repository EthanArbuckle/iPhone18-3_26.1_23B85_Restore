@interface UIScrollEvent
- (BOOL)_consumeBeforeDeliveryToGestureRecognizers:(id)a3 inWindow:(id)a4;
- (BOOL)_isHighResolution;
- (BOOL)directionInvertedFromDevice;
- (CGPoint)_convertPointFromSceneReferenceSpace:(CGPoint)a3 toView:(id)a4;
- (CGPoint)_convertPointToSceneReferenceSpace:(CGPoint)a3 fromView:(id)a4;
- (CGPoint)locationInView:(id)a3;
- (CGVector)_adjustedAcceleratedDeltaInView:(id)a3;
- (CGVector)_adjustedDeltaForPanWithAcceleration:(BOOL)a3 honoringScrollDirectionPreference:(BOOL)a4;
- (CGVector)_convertDeltaFromHIDDeviceSpaceToSceneReferenceSpaceIfNeeded:(CGVector)a3;
- (CGVector)_stifledDelta;
- (CGVector)acceleratedDelta;
- (CGVector)nonAcceleratedDelta;
- (id)_allWindows;
- (id)_cloneEvent;
- (id)_gestureRecognizersForWindow:(id)a3;
- (id)_init;
- (id)_initWithEvent:(__GSEvent *)a3 touches:(id)a4;
- (id)_windowServerHitTestWindow;
- (unint64_t)_scrollDeviceCategory;
- (unint64_t)_scrollType;
- (void)_beginStiflingDeltas;
- (void)_cleanupAfterDispatch;
- (void)_endStiflingDeltas;
- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4;
- (void)_removeGestureRecognizersFromWindows;
- (void)_removeGestureRecognizersSendingCancelledEvent:(id)a3;
- (void)_setHIDEvent:(__IOHIDEvent *)a3;
- (void)_simulateMomentumWithDelta:(CGVector)a3 inView:(id)a4;
- (void)_wasDeliveredToGestureRecognizers;
@end

@implementation UIScrollEvent

- (void)_removeGestureRecognizersFromWindows
{
  v18 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    if (self->_isCloneForAsyncDelivery)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v17 = self;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Cloned scroll event for async delivery %p should never get _removeGestureRecognizersFromWindows", buf, 0xCu);
      }
    }
  }

  else if (self->_isCloneForAsyncDelivery)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_removeGestureRecognizersFromWindows___s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = self;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Cloned scroll event for async delivery %p should never get _removeGestureRecognizersFromWindows", buf, 0xCu);
    }
  }

  if (![(UIScrollEvent *)self _hasDeliveredTerminalPhase]&& !self->_isDoingAsyncDelivery)
  {
    v3 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = NSAllMapTableValues(self->_gestureRecognizersByWindow);
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

          [v3 unionSet:{*(*(&v11 + 1) + 8 * i), v11}];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(UIScrollEvent *)self _removeGestureRecognizersSendingCancelledEvent:v3];
  }

  [(NSMapTable *)self->_gestureRecognizersByWindow removeAllObjects];
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = UIScrollEvent;
  v2 = [(UIEvent *)&v5 _init];
  v3 = v2;
  if (v2)
  {
    _UIScrollEventCommonInit(v2);
  }

  return v3;
}

- (id)_initWithEvent:(__GSEvent *)a3 touches:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIScrollEvent;
  v4 = [(UIEvent *)&v7 _init:a3];
  v5 = v4;
  if (v4)
  {
    _UIScrollEventCommonInit(v4);
  }

  return v5;
}

- (void)_setHIDEvent:(__IOHIDEvent *)a3
{
  v17.receiver = self;
  v17.super_class = UIScrollEvent;
  [(UIEvent *)&v17 _setHIDEvent:?];
  if ([(UIEvent *)self _hidEvent])
  {
    v6 = _UIEventHIDGetChildPointerEvent(a3);
    if (!v6)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"UIScrollEvent.m" lineNumber:187 description:{@"Invalid event structure for %@: missing child pointer HID event: %@", objc_opt_class(), a3}];
    }

    v7 = BKSHIDEventGetPointerAttributes();
    pointerAttributes = self->_pointerAttributes;
    self->_pointerAttributes = v7;

    v9 = _UIEventHIDUIWindowForHIDEvent();
    if (v9)
    {
      [v9 _convertPointToSceneReferenceSpace:{_UIEventHIDConvertPointerLocation3DToWindow(v6, v9)}];
      self->_sceneReferenceLocation.x = v10;
      self->_sceneReferenceLocation.y = v11;
    }

    else
    {
      self->_sceneReferenceLocation = *MEMORY[0x1E695EFF8];
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (!a3)
      {
        v15 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "unable to determine scrollEvent phase because the _hidEvent is nil", buf, 2u);
        }

        goto LABEL_29;
      }
    }

    else if (!a3)
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &_scrollPhaseForHIDEvent___s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "unable to determine scrollEvent phase because the _hidEvent is nil", buf, 2u);
      }

      goto LABEL_29;
    }

    Phase = IOHIDEventGetPhase();
    if (Phase > 3)
    {
      switch(Phase)
      {
        case 4:
          v13 = 4;
          goto LABEL_30;
        case 8:
          v13 = 5;
          goto LABEL_30;
        case 128:
          v13 = 1;
LABEL_30:
          self->_phase = v13;
          goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (Phase != 1)
    {
      if (Phase == 2)
      {
        v13 = 3;
        goto LABEL_30;
      }

LABEL_29:
      v13 = 0;
      goto LABEL_30;
    }

    self->_phase = 2;
    if (self->_lastReceivedPhase == 3 && ![(UIScrollEvent *)self _scrollType])
    {
      self->_phase = 3;
    }
  }

  else
  {
    self->_lastReceivedPhase = self->_phase;
    self->_phase = 0;
    self->_lastDeliveredPhase = 0;
    v9 = self->_pointerAttributes;
    self->_pointerAttributes = 0;
  }

LABEL_31:
}

- (id)_cloneEvent
{
  v2 = self;
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = UIScrollEvent;
  v3 = [(UIEvent *)&v23 _cloneEvent];
  *(v3 + 29) = v2->_phase;
  *(v3 + 136) = v2->_sceneReferenceLocation;
  *(v3 + 19) = v2->_lastDeliveredPhase;
  *(v3 + 20) = v2->_lastReceivedPhase;
  objc_storeStrong(v3 + 21, v2->_pointerAttributes);
  if (v2->_gestureRecognizersByWindow)
  {
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = *(v3 + 16);
    *(v3 + 16) = v4;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v2->_gestureRecognizersByWindow;
    v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      obj = v6;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [(NSMapTable *)v2->_gestureRecognizersByWindow objectForKey:v11];
          v13 = v2;
          v14 = *(v3 + 16);
          v15 = [v12 mutableCopy];
          v16 = v14;
          v2 = v13;
          [v16 setObject:v15 forKey:v11];
        }

        v6 = obj;
        v8 = [(NSMapTable *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  return v3;
}

- (void)_cleanupAfterDispatch
{
  v27 = *MEMORY[0x1E69E9840];
  self->_isDoingAsyncDelivery = 0;
  if ((self->_phase & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    asyncDeliveryTarget = self->_asyncDeliveryTarget;
    self->_asyncDeliveryTarget = 0;

    asyncDeliveryGesture = self->_asyncDeliveryGesture;
    self->_asyncDeliveryGesture = 0;
  }

  if (self->_isCloneForAsyncDelivery)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = NSAllMapTableValues(self->_gestureRecognizersByWindow);
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v18;
            do
            {
              v15 = 0;
              do
              {
                if (*v18 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [(UIGestureRecognizer *)*(*(&v17 + 1) + 8 * v15++) _removeActiveEvent:?];
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v13);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }
  }

  v16.receiver = self;
  v16.super_class = UIScrollEvent;
  [(UIEvent *)&v16 _cleanupAfterDispatch];
}

- (CGPoint)_convertPointFromSceneReferenceSpace:(CGPoint)a3 toView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(UIScrollEvent *)self _allWindows];
    v9 = [v10 anyObject];
  }

  v11 = [v9 _window];
  v12 = v11;
  if (v11)
  {
    [v11 _convertPointFromSceneReferenceSpace:{x, y}];
    x = v13;
    y = v14;
  }

  [v9 convertPoint:0 fromView:{x, y}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)_convertPointToSceneReferenceSpace:(CGPoint)a3 fromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(UIScrollEvent *)self _allWindows];
    v9 = [v10 anyObject];
  }

  v11 = [v9 _window];
  [v9 convertPoint:0 toView:{x, y}];
  v14 = v12;
  v15 = v13;
  if (v11)
  {
    [v11 _convertPointToSceneReferenceSpace:{v12, v13}];
    v14 = v16;
    v15 = v17;
  }

  v18 = v14;
  v19 = v15;
  result.y = v19;
  result.x = v18;
  return result;
}

- (unint64_t)_scrollType
{
  v2 = self->_pointerAttributes;
  v3 = v2;
  v6 = 1;
  if (v2)
  {
    if ([(BKSHIDEventPointerAttributes *)v2 source]!= 12 && [(BKSHIDEventPointerAttributes *)v3 source]== 11)
    {
      [(BKSHIDEventPointerAttributes *)v3 digitizerSurfaceWidth];
      if (v4 <= 0.0 || ([(BKSHIDEventPointerAttributes *)v3 digitizerSurfaceHeight], v5 <= 0.0))
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (BOOL)_isHighResolution
{
  pointerAttributes = self->_pointerAttributes;
  if (pointerAttributes)
  {
    LODWORD(pointerAttributes) = ([(BKSHIDEventPointerAttributes *)pointerAttributes options]>> 2) & 1;
  }

  return pointerAttributes;
}

- (unint64_t)_scrollDeviceCategory
{
  v3 = self->_pointerAttributes;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_18;
  }

  if ([(BKSHIDEventPointerAttributes *)v3 source]!= 12)
  {
    if ([(BKSHIDEventPointerAttributes *)v4 source]== 11)
    {
      v9 = [(UIScrollEvent *)self _scrollType];
      if (v9 == 1)
      {
        v8 = 3;
        goto LABEL_19;
      }

      if (!v9)
      {
        if ([(UIScrollEvent *)self _isHighResolution])
        {
          v8 = 4;
        }

        else
        {
          v8 = 5;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  [(BKSHIDEventPointerAttributes *)v4 digitizerSurfaceHeight];
  if (v5 <= 3198156.0 || v5 == 4004249.0 || v5 == 3388211.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

LABEL_19:

  return v8;
}

- (CGPoint)locationInView:(id)a3
{
  [(UIScrollEvent *)self _convertPointFromSceneReferenceSpace:a3 toView:self->_sceneReferenceLocation.x, self->_sceneReferenceLocation.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGVector)_convertDeltaFromHIDDeviceSpaceToSceneReferenceSpaceIfNeeded:(CGVector)a3
{
  dy = a3.dy;
  dx = a3.dx;
  v6 = [(BKSHIDEventPointerAttributes *)self->_pointerAttributes options];
  if ((v6 & 0x40) != 0)
  {
    v7 = v6;
    v8 = _UIEventHIDGetInterfaceOrientationForEvent(self->super._hidEvent);
    if (v8 == 3)
    {
      v9 = -dx;
    }

    else
    {
      v9 = dy;
    }

    if (v8 == 3)
    {
      v10 = dy;
    }

    else
    {
      v10 = dx;
    }

    if (v8 == 4)
    {
      v9 = dx;
      v10 = -dy;
    }

    if (v8 >= 2)
    {
      dy = v9;
    }

    else
    {
      dy = -dy;
    }

    if (v8 >= 2)
    {
      dx = v10;
    }

    else
    {
      dx = -dx;
    }

    if ((v7 & 0x20) == 0)
    {
      dx = -dx;
      dy = -dy;
    }
  }

  v11 = dx;
  v12 = dy;
  result.dy = v12;
  result.dx = v11;
  return result;
}

- (CGVector)acceleratedDelta
{
  dx = 0.0;
  dy = 0.0;
  if (!self->_isStiflingDeltas)
  {
    if (self->_hasSimulatedMomentumDelta)
    {
      dx = self->_simulatedMomentumDelta.dx;
      dy = self->_simulatedMomentumDelta.dy;
    }

    else
    {
      v5 = [(UIEvent *)self _hidEvent:0.0];
      if (_UIEventHIDGetChildScrollEvent(v5))
      {
        ChildScrollVector = _UIEventGetChildScrollVector(v5);
      }

      else if (v5)
      {
        IOHIDEventGetFloatValue();
        ChildScrollVector = v8;
        IOHIDEventGetFloatValue();
        v6 = v9;
      }

      else
      {
        v6 = 0.0;
        ChildScrollVector = 0.0;
      }

      [(UIScrollEvent *)self _convertDeltaFromHIDDeviceSpaceToSceneReferenceSpaceIfNeeded:ChildScrollVector, v6];
    }
  }

  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGVector)nonAcceleratedDelta
{
  dx = 0.0;
  dy = 0.0;
  if (!self->_isStiflingDeltas)
  {
    if (self->_hasSimulatedMomentumDelta)
    {
      dx = self->_simulatedMomentumDelta.dx;
      dy = self->_simulatedMomentumDelta.dy;
    }

    else
    {
      if ([(UIEvent *)self _hidEvent:0.0])
      {
        IOHIDEventGetFloatValue();
        v6 = v5;
        IOHIDEventGetFloatValue();
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
        v6 = 0.0;
      }

      [(UIScrollEvent *)self _convertDeltaFromHIDDeviceSpaceToSceneReferenceSpaceIfNeeded:v6, v8];
    }
  }

  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGVector)_adjustedDeltaForPanWithAcceleration:(BOOL)a3 honoringScrollDirectionPreference:(BOOL)a4
{
  if (a3)
  {
    [(UIScrollEvent *)self acceleratedDelta];
  }

  else
  {
    [(UIScrollEvent *)self nonAcceleratedDelta];
  }

  v26.i64[1] = v8;
  v29 = v6;
  if ([(UIScrollEvent *)self _scrollType])
  {
    if (a4)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v15 = _UIInternalPreferencesRevisionVar;
  v9.i64[0] = 3.0;
  v16 = v29;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v25 = _UIInternalPreference_DiscreteScrollMinimumDelta;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_DiscreteScrollMinimumDelta)
    {
      while (v15 >= v25)
      {
        _UIInternalPreferenceSync(v15, &_UIInternalPreference_DiscreteScrollMinimumDelta, @"DiscreteScrollMinimumDelta", _UIInternalPreferenceUpdateDouble);
        v25 = _UIInternalPreference_DiscreteScrollMinimumDelta;
        if (v15 == _UIInternalPreference_DiscreteScrollMinimumDelta)
        {
          v16 = v29;
          v9.i64[0] = 3.0;
          goto LABEL_16;
        }
      }

      v9.i64[0] = qword_1EA95E7E0;
      v16 = v29;
    }
  }

LABEL_16:
  v17 = fabs(*v16.i64) >= *v9.i64 || *v16.i64 == 0.0;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = vnegq_f64(v18);
  *&v20 = vbslq_s8(v19, v9, v16).u64[0];
  if (!v17)
  {
    *v16.i64 = v20;
  }

  v29.i64[0] = v16.i64[0];
  v21 = *v26.i64;
  v22 = fabs(*v26.i64) >= *v9.i64 || *v26.i64 == 0.0;
  v23 = vbslq_s8(v19, v9, v26).u64[0];
  if (!v22)
  {
    v21 = *&v23;
  }

  *v26.i64 = v21;
  if (!a4)
  {
LABEL_6:
    v10 = [(UIScrollEvent *)self directionInvertedFromDevice];
    v12 = v27;
    v11 = *v29.i64;
    if (!v10)
    {
      v12 = -v27;
      v11 = -*v29.i64;
    }

    *v26.i64 = v12;
    *v29.i64 = v11;
  }

LABEL_9:
  if (([(UIEvent *)self _modifierFlags]& 0x20000) != 0 && ![(UIScrollEvent *)self _scrollType])
  {
    v24 = [(UIScrollEvent *)self _isHighResolution];
    v14 = v28;
    v13 = *v29.i64;
    if (!v24)
    {
      v14 = -*v29.i64;
      v13 = -v28;
    }
  }

  else
  {
    v14 = v28;
    v13 = *v29.i64;
  }

  result.dy = v14;
  result.dx = v13;
  return result;
}

- (CGVector)_adjustedAcceleratedDeltaInView:(id)a3
{
  v4 = a3;
  [(UIScrollEvent *)self _adjustedDeltaForPanWithAcceleration:1 honoringScrollDirectionPreference:1];
  v6 = v5;
  v8 = v7;
  [(UIScrollEvent *)self _convertPointFromSceneReferenceSpace:v4 toView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v10 = v9;
  v12 = v11;
  [(UIScrollEvent *)self _convertPointFromSceneReferenceSpace:v4 toView:v6, v8];
  v14 = v13;
  v16 = v15;

  v17 = v14 - v10;
  v18 = v16 - v12;
  result.dy = v18;
  result.dx = v17;
  return result;
}

- (BOOL)directionInvertedFromDevice
{
  if (_UIDeviceNativeUserInterfaceIdiom())
  {
    return ([(BKSHIDEventPointerAttributes *)self->_pointerAttributes options]>> 5) & 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (id)_gestureRecognizersForWindow:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_gestureRecognizersByWindow objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if (self->_phase - 1 > 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UIScrollEvent *)self _windowServerHitTestWindow];
    v7 = _UINonComponentEventHitTestGestureRecognizers(self, v8, v8, self->_sceneReferenceLocation.x, self->_sceneReferenceLocation.y);
    gestureRecognizersByWindow = self->_gestureRecognizersByWindow;
    v10 = [v7 mutableCopy];
    [(NSMapTable *)gestureRecognizersByWindow setObject:v10 forKey:v4];
  }

  return v7;
}

- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = NSAllMapTableValues(self->_gestureRecognizersByWindow);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) removeObject:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)_consumeBeforeDeliveryToGestureRecognizers:(id)a3 inWindow:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_isCloneForAsyncDelivery)
  {
    goto LABEL_20;
  }

  if (!self->_asyncDeliveryTarget)
  {
    if (self->_phase - 1 > 1)
    {
      goto LABEL_19;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 selector:sel__depthFirstCompare_];
    v34 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    v17 = [v6 sortedArrayUsingDescriptors:v16];

    v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v23 = [v22 _asyncDeliveryTargetForScrollEvent:self];
            if (v23)
            {
              asyncDeliveryTarget = self->_asyncDeliveryTarget;
              self->_asyncDeliveryTarget = v23;
              v25 = v23;

              objc_storeStrong(&self->_asyncDeliveryGesture, v22);
              goto LABEL_18;
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    if (!self->_asyncDeliveryTarget)
    {
LABEL_19:
      [v6 count];
LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }
  }

  v8 = [(UIScrollEvent *)self _cloneEvent];
  v8[193] = 1;
  self->_isDoingAsyncDelivery = 1;
  outstandingSnapshotEventsForAsyncDelivery = self->_outstandingSnapshotEventsForAsyncDelivery;
  if (!outstandingSnapshotEventsForAsyncDelivery)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    v11 = self->_outstandingSnapshotEventsForAsyncDelivery;
    self->_outstandingSnapshotEventsForAsyncDelivery = v10;

    outstandingSnapshotEventsForAsyncDelivery = self->_outstandingSnapshotEventsForAsyncDelivery;
  }

  [(NSMutableSet *)outstandingSnapshotEventsForAsyncDelivery addObject:v8];
  v12 = self->_asyncDeliveryTarget;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__UIScrollEvent__consumeBeforeDeliveryToGestureRecognizers_inWindow___block_invoke;
  v27[3] = &unk_1E70F4638;
  v27[4] = self;
  v28 = v8;
  v29 = v7;
  v13 = v8;
  [(_UIScrollEventAsyncDeliveryTarget *)v12 _asynchronouslyDeliverScrollEvent:v13 completion:v27];

  v14 = 1;
LABEL_21:

  return v14;
}

uint64_t __69__UIScrollEvent__consumeBeforeDeliveryToGestureRecognizers_inWindow___block_invoke(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  result = [*(*(a1 + 32) + 200) containsObject:*(a1 + 40)];
  if (result)
  {
    [*(*(a1 + 32) + 200) removeObject:*(a1 + 40)];
    if (([*(a1 + 40) phase] - 1) <= 2 && a2 != 0)
    {
      [*(a1 + 40) _beginStiflingDeltas];
    }

    v6 = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)v6 _updateForEvent:*(a1 + 48) window:?];

    if (a2)
    {
      [*(a1 + 40) _endStiflingDeltas];
    }

    v7 = *(a1 + 40);

    return [v7 _cleanupAfterDispatch];
  }

  return result;
}

- (void)_beginStiflingDeltas
{
  p_stifledDelta = &self->_stifledDelta;
  [(UIScrollEvent *)self acceleratedDelta];
  p_stifledDelta->dx = v4;
  p_stifledDelta->dy = v5;
  self->_isStiflingDeltas = 1;
}

- (void)_endStiflingDeltas
{
  self->_stifledDelta.dx = 0.0;
  self->_stifledDelta.dy = 0.0;
  self->_isStiflingDeltas = 0;
}

- (void)_simulateMomentumWithDelta:(CGVector)a3 inView:(id)a4
{
  dy = a3.dy;
  dx = a3.dx;
  self->_hasSimulatedMomentumDelta = 1;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = a4;
  [(UIScrollEvent *)self _convertPointToSceneReferenceSpace:v9 fromView:v7, v8];
  v11 = v10;
  v13 = v12;
  [(UIScrollEvent *)self _convertPointToSceneReferenceSpace:v9 fromView:dx, dy];
  v15 = v14;
  v17 = v16;

  self->_simulatedMomentumDelta.dx = v15 - v11;
  self->_simulatedMomentumDelta.dy = v17 - v13;
}

- (void)_wasDeliveredToGestureRecognizers
{
  v3.receiver = self;
  v3.super_class = UIScrollEvent;
  [(UIEvent *)&v3 _wasDeliveredToGestureRecognizers];
  self->_lastDeliveredPhase = self->_phase;
}

- (void)_removeGestureRecognizersSendingCancelledEvent:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v16 = v19;
    v17 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if (v9 && (*(v9 + 12) & 8) != 0)
        {
          phase = self->_phase;
          self->_phase = 5;
          [(UIScrollEvent *)self _sendEventToGestureRecognizer:v9, v16];
          self->_phase = phase;
        }

        if (v9 == self->_asyncDeliveryGesture && !self->_isCloneForAsyncDelivery && ![(UIScrollEvent *)self _hasDeliveredTerminalPhase])
        {
          if ([(NSMutableSet *)self->_outstandingSnapshotEventsForAsyncDelivery count])
          {
            [(NSMutableSet *)self->_outstandingSnapshotEventsForAsyncDelivery removeAllObjects];
          }

          if (self->_asyncDeliveryTarget)
          {
            v11 = [(UIScrollEvent *)self _cloneEvent];
            v11[193] = 1;
            *(v11 + 29) = 5;
            asyncDeliveryTarget = self->_asyncDeliveryTarget;
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v19[0] = __64__UIScrollEvent__removeGestureRecognizersSendingCancelledEvent___block_invoke;
            v19[1] = &unk_1E70F3C60;
            v19[2] = self;
            v20 = v11;
            v13 = v11;
            [(_UIScrollEventAsyncDeliveryTarget *)asyncDeliveryTarget _asynchronouslyDeliverScrollEvent:v13 completion:v18];
            v14 = self->_asyncDeliveryTarget;
            self->_asyncDeliveryTarget = 0;

            asyncDeliveryGesture = self->_asyncDeliveryGesture;
            self->_asyncDeliveryGesture = 0;

            v4 = v17;
          }
        }

        [(UIScrollEvent *)self _removeGestureRecognizer:v9 fromComponents:0, v16];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }
}

- (id)_allWindows
{
  v2 = [(UIScrollEvent *)self _windowServerHitTestWindow];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_windowServerHitTestWindow
{
  [(UIEvent *)self _hidEvent];

  return _UIEventHIDUIWindowForHIDEvent();
}

- (CGVector)_stifledDelta
{
  dx = self->_stifledDelta.dx;
  dy = self->_stifledDelta.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end