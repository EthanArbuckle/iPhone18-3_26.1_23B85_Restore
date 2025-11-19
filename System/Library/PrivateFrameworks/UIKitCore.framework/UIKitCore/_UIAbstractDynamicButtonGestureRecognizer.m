@interface _UIAbstractDynamicButtonGestureRecognizer
- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)a3;
- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)a3;
- (BOOL)_shouldReceiveDynamicButton:(id)a3;
- (BOOL)_shouldReceiveEvent:(id)a3;
- (_UIAbstractDynamicButtonGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)setCancelsTouchesInView:(BOOL)a3;
- (void)setDelaysTouchesBegan:(BOOL)a3;
- (void)setDelaysTouchesEnded:(BOOL)a3;
@end

@implementation _UIAbstractDynamicButtonGestureRecognizer

- (_UIAbstractDynamicButtonGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = _UIAbstractDynamicButtonGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
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

- (void)setDelaysTouchesBegan:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(__UILogGetCategoryCachedImpl("DynamicButton", &setDelaysTouchesBegan____s_category) + 8);
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
      v12 = v9;
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

- (void)setDelaysTouchesEnded:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(__UILogGetCategoryCachedImpl("DynamicButton", &setDelaysTouchesEnded____s_category) + 8);
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
      v12 = v9;
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

- (void)setCancelsTouchesInView:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(__UILogGetCategoryCachedImpl("DynamicButton", &setCancelsTouchesInView____s_category) + 8);
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
      v12 = v9;
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

- (BOOL)_shouldReceiveEvent:(id)a3
{
  if ([a3 type] != 16)
  {
    return 0;
  }

  return [(UIGestureRecognizer *)self shouldReceiveEvent:a3];
}

- (BOOL)_shouldReceiveDynamicButton:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIAbstractDynamicButtonGestureRecognizer.m" lineNumber:97 description:@"Must be overridden by subclasses"];

  return 0;
}

- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)a3
{
  if (a3)
  {
    if ((*(a3 + 1) & 0x8000000000000000) != 0)
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

- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)a3
{
  if (a3)
  {
    if ((*(a3 + 1) & 0x8000000000000000) != 0)
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