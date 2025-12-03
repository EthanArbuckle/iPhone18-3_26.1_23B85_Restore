@interface _UIGestureRecognizerDriverContextImpl
- (CGPoint)convertPoint:(CGPoint)point fromSceneReferenceCoordinatesToView:(id)view;
- (CGPoint)convertPoint:(CGPoint)point toSceneReferenceCoordinatesFromView:(id)view;
- (UIWindow)eventReceivingWindow;
- (void)ignoreEventComponent:(id)component forEvent:(id)event;
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
  container = [(UIGestureRecognizer *)self->_gestureRecognizer container];
  _eventReceivingWindow = [container _eventReceivingWindow];

  return _eventReceivingWindow;
}

- (CGPoint)convertPoint:(CGPoint)point fromSceneReferenceCoordinatesToView:(id)view
{
  [(UIGestureRecognizer *)self->_gestureRecognizer _convertPoint:view fromSceneReferenceCoordinatesToView:point.x, point.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toSceneReferenceCoordinatesFromView:(id)view
{
  [(UIGestureRecognizer *)self->_gestureRecognizer _convertPoint:view toSceneReferenceCoordinatesFromView:point.x, point.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)ignoreEventComponent:(id)component forEvent:(id)event
{
  v13 = *MEMORY[0x1E69E9840];
  if ([component _eventComponentType])
  {
    if ([component _eventComponentType] == 1)
    {
      gestureRecognizer = self->_gestureRecognizer;

      [(UIGestureRecognizer *)gestureRecognizer ignorePress:component forEvent:event];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = 138412290;
        componentCopy2 = component;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unsupported event component: %@", &v11, 0xCu);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &ignoreEventComponent_forEvent____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        componentCopy2 = component;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unsupported event component: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    v8 = self->_gestureRecognizer;

    [(UIGestureRecognizer *)v8 ignoreTouch:component forEvent:event];
  }
}

@end