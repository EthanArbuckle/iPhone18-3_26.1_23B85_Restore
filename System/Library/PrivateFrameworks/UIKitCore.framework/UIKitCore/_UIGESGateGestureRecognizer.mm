@interface _UIGESGateGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)_validateTouchesFailingIfNeeded:(_BOOL8)result;
- (_UIGESGateGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIGESGateGestureRecognizer

- (_UIGESGateGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIGESGateGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setDelaysTouchesBegan:1];
    [(UIGestureRecognizer *)v5 setName:@"com.apple.UIKit.GESGate"];
  }

  return v5;
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  v11 = *MEMORY[0x1E69E9840];
  if (([UIApp _applicationWantsGESEvents] & 1) == 0)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_shouldReceiveTouch_withEvent____s_category);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      v5 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (!v5)
      {
        return v5;
      }

      v9 = 138412290;
      touchCopy = touch;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Rejecting touch because the application is not currently set to receive GES events: %@", &v9, 0xCu);
    }

    goto LABEL_5;
  }

  if (!touch)
  {
LABEL_5:
    LOBYTE(v5) = 0;
    return v5;
  }

  return (*(touch + 118) >> 12) & 1;
}

- (BOOL)_validateTouchesFailingIfNeeded:(_BOOL8)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = a2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:buf count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (!v8 || (*(v8 + 236) & 0x1000) == 0)
          {

            [v2 setState:{5, v11}];
            CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &_validateTouchesFailingIfNeeded____s_category);
            if (*CategoryCachedImpl)
            {
              v10 = *(CategoryCachedImpl + 8);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Opening GES Gate due to receiving touches without phase (kIOHIDEventPhaseMayBegin)", buf, 2u);
              }
            }

            return [v2 state] == 5;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:buf count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    return [v2 state] == 5;
  }

  return result;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (![(_UIGESGateGestureRecognizer *)self _validateTouchesFailingIfNeeded:ended])
  {
    _allActiveTouches = [(UIGestureRecognizer *)self _allActiveTouches];
    v6 = [_allActiveTouches count];

    if (!v6)
    {
      [(UIGestureRecognizer *)self setState:3];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &touchesEnded_withEvent____s_category);
      if (*CategoryCachedImpl)
      {
        v8 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Closing GES Gate because all touches ended with phase (kIOHIDEventPhaseMayBegin)", v9, 2u);
        }
      }
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (![(_UIGESGateGestureRecognizer *)self _validateTouchesFailingIfNeeded:cancelled])
  {
    _allActiveTouches = [(UIGestureRecognizer *)self _allActiveTouches];
    v6 = [_allActiveTouches count];

    if (!v6)
    {
      [(UIGestureRecognizer *)self setState:3];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &touchesCancelled_withEvent____s_category);
      if (*CategoryCachedImpl)
      {
        v8 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Closing GES Gate because all touches cancelled with phase (kIOHIDEventPhaseMayBegin)", v9, 2u);
        }
      }
    }
  }
}

@end