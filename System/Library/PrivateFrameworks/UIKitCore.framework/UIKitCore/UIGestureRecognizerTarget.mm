@interface UIGestureRecognizerTarget
- (SEL)action;
- (id)description;
- (id)target;
- (void)_sendActionWithGestureRecognizer:(uint64_t)a1;
@end

@implementation UIGestureRecognizerTarget

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_action)
  {
    action = self->_action;
  }

  else
  {
    action = 0;
  }

  v5 = NSStringFromSelector(action);
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = objc_loadWeakRetained(&self->_target);
  v10 = [v3 stringWithFormat:@"(action=%@, target=<%@ %p>)", v5, v8, v9];

  return v10;
}

- (void)_sendActionWithGestureRecognizer:(uint64_t)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (*(a1 + 16))
    {
      v4 = *(a1 + 16);
    }

    else
    {
      v4 = 0;
    }

    if (dyld_program_sdk_at_least())
    {
      [WeakRetained v4];
    }

    else
    {
      [WeakRetained performSelector:v4 withObject:a2];
    }
  }
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

@end