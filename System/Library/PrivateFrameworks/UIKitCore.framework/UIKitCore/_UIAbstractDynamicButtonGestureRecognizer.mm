@interface _UIAbstractDynamicButtonGestureRecognizer
- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)recognizer;
- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)recognizer;
- (BOOL)_shouldReceiveDynamicButton:(id)button;
- (BOOL)_shouldReceiveEvent:(id)event;
- (_UIAbstractDynamicButtonGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)setCancelsTouchesInView:(BOOL)view;
- (void)setDelaysTouchesBegan:(BOOL)began;
- (void)setDelaysTouchesEnded:(BOOL)ended;
@end

@implementation _UIAbstractDynamicButtonGestureRecognizer

- (_UIAbstractDynamicButtonGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = _UIAbstractDynamicButtonGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(_UIAbstractDynamicButtonGestureRecognizer *)v4 setDelaysTouchesBegan:0];
    [(_UIAbstractDynamicButtonGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(_UIAbstractDynamicButtonGestureRecognizer *)v5 setCancelsTouchesInView:0];
    v6 = MEMORY[0x1E695E0F0];
    [(UIGestureRecognizer *)v5 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setAllowedPressTypes:v6];
  }

  return v5;
}

- (void)setDelaysTouchesBegan:(BOOL)began
{
  v13 = *MEMORY[0x1E69E9840];
  if (began)
  {
    v4 = *(__UILogGetCategoryCachedImpl("DynamicButton", &setDelaysTouchesBegan____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v5 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        selfCopy = [v5 stringWithFormat:@"<%@: %p>", v8, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412290;
      v12 = selfCopy;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "delaysTouchesBegan was called on %@ with an unsupported value of true. This gesture currently does not support delaying touches. This value will be ignored.", buf, 0xCu);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIAbstractDynamicButtonGestureRecognizer;
    [(UIGestureRecognizer *)&v10 setDelaysTouchesBegan:?];
  }
}

- (void)setDelaysTouchesEnded:(BOOL)ended
{
  v13 = *MEMORY[0x1E69E9840];
  if (ended)
  {
    v4 = *(__UILogGetCategoryCachedImpl("DynamicButton", &setDelaysTouchesEnded____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v5 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        selfCopy = [v5 stringWithFormat:@"<%@: %p>", v8, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412290;
      v12 = selfCopy;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "delaysTouchesEnded was called on %@ with an unsupported value of true. This gesture currently does not support delaying touches. This value will be ignored.", buf, 0xCu);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIAbstractDynamicButtonGestureRecognizer;
    [(UIGestureRecognizer *)&v10 setDelaysTouchesEnded:?];
  }
}

- (void)setCancelsTouchesInView:(BOOL)view
{
  v13 = *MEMORY[0x1E69E9840];
  if (view)
  {
    v4 = *(__UILogGetCategoryCachedImpl("DynamicButton", &setCancelsTouchesInView____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v5 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        selfCopy = [v5 stringWithFormat:@"<%@: %p>", v8, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412290;
      v12 = selfCopy;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "cancelsTouchesInView was called on %@ with an unsupported value of true. This gesture currently does not support cancelling touches. This value will be ignored.", buf, 0xCu);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIAbstractDynamicButtonGestureRecognizer;
    [(UIGestureRecognizer *)&v10 setCancelsTouchesInView:?];
  }
}

- (BOOL)_shouldReceiveEvent:(id)event
{
  if ([event type] != 16)
  {
    return 0;
  }

  return [(UIGestureRecognizer *)self shouldReceiveEvent:event];
}

- (BOOL)_shouldReceiveDynamicButton:(id)button
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAbstractDynamicButtonGestureRecognizer.m" lineNumber:97 description:@"Must be overridden by subclasses"];

  return 0;
}

- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)recognizer
{
  if (recognizer)
  {
    if ((*(recognizer + 1) & 0x8000000000000000) != 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)recognizer
{
  if (recognizer)
  {
    if ((*(recognizer + 1) & 0x8000000000000000) != 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end