@interface _UIGestureRecognizerDriverContextImpl
- (CGPoint)convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toSceneReferenceCoordinatesFromView:(id)a4;
- (UIWindow)eventReceivingWindow;
- (void)ignoreEventComponent:(id)a3 forEvent:(id)a4;
- (void)initWithGestureRecognizer:(void *)result;
@end

@implementation _UIGestureRecognizerDriverContextImpl

- (void)initWithGestureRecognizer:(void *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = _UIGestureRecognizerDriverContextImpl;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[1] = a2;
    }
  }

  return result;
}

- (UIWindow)eventReceivingWindow
{
  v2 = [(UIGestureRecognizer *)self->_gestureRecognizer container];
  v3 = [v2 _eventReceivingWindow];

  return v3;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  [(UIGestureRecognizer *)self->_gestureRecognizer _convertPoint:a4 fromSceneReferenceCoordinatesToView:a3.x, a3.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toSceneReferenceCoordinatesFromView:(id)a4
{
  [(UIGestureRecognizer *)self->_gestureRecognizer _convertPoint:a4 toSceneReferenceCoordinatesFromView:a3.x, a3.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)ignoreEventComponent:(id)a3 forEvent:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if ([a3 _eventComponentType])
  {
    if ([a3 _eventComponentType] == 1)
    {
      gestureRecognizer = self->_gestureRecognizer;

      [(UIGestureRecognizer *)gestureRecognizer ignorePress:a3 forEvent:a4];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = 138412290;
        v12 = a3;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unsupported event component: %@", &v11, 0xCu);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &ignoreEventComponent_forEvent____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = a3;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unsupported event component: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    v8 = self->_gestureRecognizer;

    [(UIGestureRecognizer *)v8 ignoreTouch:a3 forEvent:a4];
  }
}

@end