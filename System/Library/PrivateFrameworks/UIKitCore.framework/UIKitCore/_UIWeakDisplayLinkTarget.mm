@interface _UIWeakDisplayLinkTarget
- (_UIWeakDisplayLinkTarget)initWithTarget:(id)target action:(SEL)action;
- (void)_displayLinkTick:(id)tick;
@end

@implementation _UIWeakDisplayLinkTarget

- (_UIWeakDisplayLinkTarget)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  if (targetCopy)
  {
    if (action)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWeakDisplayLinkTarget.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"target"}];

    if (action)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIWeakDisplayLinkTarget.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"action"}];

LABEL_3:
  v14.receiver = self;
  v14.super_class = _UIWeakDisplayLinkTarget;
  v8 = [(_UIWeakDisplayLinkTarget *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v9->_action = actionCopy;
  }

  return v9;
}

- (void)_displayLinkTick:(id)tick
{
  tickCopy = tick;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (self->_action)
  {
    action = self->_action;
  }

  else
  {
    action = 0;
  }

  if (dyld_program_sdk_at_least())
  {
    [WeakRetained action];
  }

  else
  {
    [WeakRetained performSelector:action withObject:tickCopy];
  }
}

@end