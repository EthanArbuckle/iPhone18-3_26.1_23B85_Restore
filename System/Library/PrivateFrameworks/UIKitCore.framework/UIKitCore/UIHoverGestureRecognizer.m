@interface UIHoverGestureRecognizer
- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)a3;
- (BOOL)_isPaused;
- (CAPoint3D)_location3DInView:(id)a3;
- (CGFloat)altitudeAngle;
- (CGFloat)azimuthAngleInView:(UIView *)view;
- (CGFloat)zOffset;
- (CGPoint)_preciseLocationInView:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (CGVector)azimuthUnitVectorInView:(UIView *)view;
- (UIHoverGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)_hoverHeight;
- (double)_maximumHoverHeight;
- (double)_rollAngle;
- (id)_setAllowedTouchTypes:(id)result;
- (void)_hoverCancelled:(id)a3 withEvent:(id)a4;
- (void)_hoverEntered:(id)a3 withEvent:(id)a4;
- (void)_hoverExited:(id)a3 withEvent:(id)a4;
- (void)_hoverMoved:(id)a3 withEvent:(id)a4;
- (void)_resetInternalState;
- (void)reset;
- (void)setAllowedTouchTypes:(id)a3;
- (void)setRequiresExclusiveTouchType:(BOOL)a3;
@end

@implementation UIHoverGestureRecognizer

- (UIHoverGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = UIHoverGestureRecognizer;
  result = [(UIGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
  if (result)
  {
    result->_pausesWhilePanning = 1;
  }

  return result;
}

- (void)setAllowedTouchTypes:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (dyld_program_sdk_at_least())
  {
    v25.receiver = self;
    v25.super_class = UIHoverGestureRecognizer;
    [(UIGestureRecognizer *)&v25 setAllowedTouchTypes:v4];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = "Hover";
      v9 = &setAllowedTouchTypes____s_category;
      v10 = *v27;
      do
      {
        v11 = 0;
        v24 = v7;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v26 + 1) + 8 * v11) integerValue] == 1)
          {
            v12 = *(__UILogGetCategoryCachedImpl(v8, v9) + 8);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              if (self)
              {
                v13 = MEMORY[0x1E696AEC0];
                v14 = self;
                v15 = objc_opt_class();
                NSStringFromClass(v15);
                v16 = v10;
                v17 = v5;
                v18 = self;
                v19 = v9;
                v21 = v20 = v8;
                v22 = [v13 stringWithFormat:@"<%@: %p>", v21, v14];

                v8 = v20;
                v9 = v19;
                self = v18;
                v5 = v17;
                v10 = v16;
                v7 = v24;
              }

              else
              {
                v22 = @"(nil)";
              }

              *buf = 138412290;
              v31 = v22;
              _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "An invalid allowed touch type of UITouch.TouchType.indirect was set on the UIHoverGestureRecognizer %@. In a future release, this will render the gesture nonfunctional", buf, 0xCu);
            }
          }

          ++v11;
        }

        while (v7 != v11);
        v7 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v7);
    }

    v4 = v23;
  }
}

- (id)_setAllowedTouchTypes:(id)result
{
  if (result)
  {
    v2.receiver = result;
    v2.super_class = UIHoverGestureRecognizer;
    return objc_msgSendSuper2(&v2, sel_setAllowedTouchTypes_, a2);
  }

  return result;
}

- (void)setRequiresExclusiveTouchType:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Hover", &setRequiresExclusiveTouchType____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v5 = MEMORY[0x1E696AEC0];
        v6 = self;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v5 stringWithFormat:@"<%@: %p>", v8, v6];
      }

      else
      {
        v9 = @"(nil)";
      }

      *buf = 138412290;
      v11 = v9;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "requiresExclusiveTouchType was called on the UIHoverGestureRecognizer %@ with an unsupported value of false. UIHoverGestureRecognizer currently does not support non-exclusive touch types. This value will be ignored.", buf, 0xCu);
    }
  }
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = UIHoverGestureRecognizer;
  [(UIGestureRecognizer *)&v5 reset];
  currentHoverEvent = self->_currentHoverEvent;
  self->_currentHoverEvent = 0;

  currentTouch = self->_currentTouch;
  self->_currentTouch = 0;

  self->_previousTrackpadFingerDownCount = 0;
  self->_trackpadFingerDownCount = 0;
}

- (void)_hoverEntered:(id)a3 withEvent:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HoverGesture", &_MergedGlobals_15_13);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "_hoverEntered: %@ withEvent: %@", &v18, 0x16u);
    }
  }

  if (!self->_currentHoverEvent && [(UITouch *)v6 count]== 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_currentHoverEvent, a4);
      v9 = [(UITouch *)v6 anyObject];
      currentTouch = self->_currentTouch;
      self->_currentTouch = v9;

      self->_trackpadFingerDownCount = [(UIEvent *)self->_currentHoverEvent _trackpadFingerDownCount];
      [(UIGestureRecognizer *)self setState:1];
      v11 = __UILogGetCategoryCachedImpl("HoverGesture", &qword_1ED49C220);
      if (*v11)
      {
        v13 = *(v11 + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = self->_currentTouch;
          v15 = v13;
          v16 = [(UIGestureRecognizer *)self view];
          [(UITouch *)v14 locationInView:v16];
          v17 = NSStringFromCGPoint(v23);
          v18 = 138412546;
          v19 = v14;
          v20 = 2112;
          v21 = v17;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "_hoverEntered: BEGAN with touch %@ at %@", &v18, 0x16u);
        }
      }
    }
  }
}

- (void)_hoverMoved:(id)a3 withEvent:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HoverGesture", &qword_1ED49C228);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "_hoverMoved: %@ withEvent: %@", &v16, 0x16u);
    }
  }

  if (self->_currentHoverEvent == v7)
  {
    if ([(UITouch *)v6 containsObject:self->_currentTouch])
    {
      self->_previousTrackpadFingerDownCount = self->_trackpadFingerDownCount;
      self->_trackpadFingerDownCount = [(UIEvent *)v7 _trackpadFingerDownCount];
      [(UIGestureRecognizer *)self setState:2];
      v9 = __UILogGetCategoryCachedImpl("HoverGesture", &qword_1ED49C230);
      if (*v9)
      {
        v11 = *(v9 + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          currentTouch = self->_currentTouch;
          v13 = v11;
          v14 = [(UIGestureRecognizer *)self view];
          [(UITouch *)currentTouch locationInView:v14];
          v15 = NSStringFromCGPoint(v21);
          v16 = 138412546;
          v17 = currentTouch;
          v18 = 2112;
          v19 = v15;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "_hoverMoved: CHANGED with touch %@ at %@", &v16, 0x16u);
        }
      }
    }
  }
}

- (void)_hoverExited:(id)a3 withEvent:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HoverGesture", &qword_1ED49C238);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "_hoverExited: %@ withEvent: %@", &v16, 0x16u);
    }
  }

  if (self->_currentHoverEvent == v7)
  {
    v9 = __UILogGetCategoryCachedImpl("HoverGesture", &qword_1ED49C240);
    if (*v9)
    {
      v11 = *(v9 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        currentTouch = self->_currentTouch;
        v13 = v11;
        v14 = [(UIGestureRecognizer *)self view];
        [(UITouch *)currentTouch locationInView:v14];
        v15 = NSStringFromCGPoint(v21);
        v16 = 138412546;
        v17 = currentTouch;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "_hoverExited: ENDED with touch %@ at %@", &v16, 0x16u);
      }
    }

    [(UIHoverGestureRecognizer *)self _resetInternalState];
    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)_hoverCancelled:(id)a3 withEvent:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HoverGesture", &qword_1ED49C248);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "_hoverCancelled: %@ withEvent: %@", &v16, 0x16u);
    }
  }

  if (self->_currentHoverEvent == v7)
  {
    v9 = __UILogGetCategoryCachedImpl("HoverGesture", &qword_1ED49C250);
    if (*v9)
    {
      v11 = *(v9 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        currentTouch = self->_currentTouch;
        v13 = v11;
        v14 = [(UIGestureRecognizer *)self view];
        [(UITouch *)currentTouch locationInView:v14];
        v15 = NSStringFromCGPoint(v21);
        v16 = 138412546;
        v17 = currentTouch;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "_hoverCancelled: CANCELLED with touch %@ at %@", &v16, 0x16u);
      }
    }

    [(UIHoverGestureRecognizer *)self _resetInternalState];
    [(UIGestureRecognizer *)self setState:4];
  }
}

- (void)_resetInternalState
{
  currentHoverEvent = self->_currentHoverEvent;
  self->_currentHoverEvent = 0;

  currentTouch = self->_currentTouch;
  self->_currentTouch = 0;

  self->_previousTrackpadFingerDownCount = self->_trackpadFingerDownCount;
  self->_trackpadFingerDownCount = 0;
}

- (CGPoint)locationInView:(id)a3
{
  currentTouch = self->_currentTouch;
  if (currentTouch)
  {
    [(UITouch *)currentTouch locationInView:a3];
  }

  else
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_preciseLocationInView:(id)a3
{
  currentTouch = self->_currentTouch;
  if (currentTouch)
  {
    [(UITouch *)currentTouch preciseLocationInView:a3];
  }

  else
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CAPoint3D)_location3DInView:(id)a3
{
  [(UIHoverGestureRecognizer *)self locationInView:a3];
  v5 = v4;
  v7 = v6;
  [(UIHoverGestureRecognizer *)self _hoverHeight];
  v9 = v8;
  v10 = v5;
  v11 = v7;
  result.z = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_isPaused
{
  currentTouch = self->_currentTouch;
  if (currentTouch && ([(UITouch *)currentTouch phase]- 3) >= 5)
  {

    return [(UIHoverGestureRecognizer *)self _pausesWhilePanning];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIHoverGestureRecognizer;
    return [(UIGestureRecognizer *)&v5 _isPaused];
  }
}

- (double)_rollAngle
{
  currentHoverEvent = self->_currentHoverEvent;
  if (currentHoverEvent)
  {
    return currentHoverEvent->_hoverRollAngle;
  }

  else
  {
    return 0.0;
  }
}

- (CGFloat)altitudeAngle
{
  currentHoverEvent = self->_currentHoverEvent;
  if (currentHoverEvent)
  {
    return 1.57079633 - currentHoverEvent->_hoverAltitudeAngle;
  }

  else
  {
    return 0.0;
  }
}

- (CGFloat)azimuthAngleInView:(UIView *)view
{
  v4 = view;
  v5 = 0.0;
  if (self->_currentHoverEvent)
  {
    [(UIHoverGestureRecognizer *)self _azimuthUnitVectorInView:v4];
    if (v6 != 0.0 || v7 != 0.0)
    {
      v5 = atan2(v7, v6);
    }
  }

  return v5;
}

- (CGVector)azimuthUnitVectorInView:(UIView *)view
{
  if (self->_currentHoverEvent)
  {
    v4 = view;
    v5 = [(UIView *)v4 window];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v10 = [(UIGestureRecognizer *)self view];
      v7 = [v10 window];
    }

    currentHoverEvent = self->_currentHoverEvent;
    if (currentHoverEvent)
    {
      hoverAzimuthAngle = currentHoverEvent->_hoverAzimuthAngle;
    }

    else
    {
      hoverAzimuthAngle = 0.0;
    }

    v13 = _UITouchConvertCADisplayAzimuthAngleToWindow(v7, hoverAzimuthAngle);
    v8 = _UITouchAzimuthUnitVectorInView(v7, v4, v13).n128_u64[0];
    v9 = v14;
  }

  else
  {
    *&v8 = 0.0;
    v9 = 0.0;
  }

  v15 = *&v8;
  v16 = v9;
  result.dy = v16;
  result.dx = v15;
  return result;
}

- (double)_hoverHeight
{
  currentHoverEvent = self->_currentHoverEvent;
  if (currentHoverEvent)
  {
    return currentHoverEvent->_positionZ;
  }

  else
  {
    return 0.0;
  }
}

- (double)_maximumHoverHeight
{
  currentHoverEvent = self->_currentHoverEvent;
  if (currentHoverEvent)
  {
    return currentHoverEvent->_maximumPositionZ;
  }

  else
  {
    return 0.0;
  }
}

- (CGFloat)zOffset
{
  [(UIHoverGestureRecognizer *)self _hoverHeight];
  v4 = v3;
  [(UIHoverGestureRecognizer *)self _maximumHoverHeight];
  if (v5 == 0.0)
  {
    v5 = 15.0;
  }

  result = v4 / v5;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

@end