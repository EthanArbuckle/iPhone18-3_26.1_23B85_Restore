@interface _UIWeakDisplayLinkTarget
- (_UIWeakDisplayLinkTarget)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_displayLinkTick:(id)a3;
@end

@implementation _UIWeakDisplayLinkTarget

- (_UIWeakDisplayLinkTarget)initWithTarget:(id)a3 action:(SEL)a4
{
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIWeakDisplayLinkTarget.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"target"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"_UIWeakDisplayLinkTarget.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"action"}];

LABEL_3:
  v14.receiver = self;
  v14.super_class = _UIWeakDisplayLinkTarget;
  v8 = [(_UIWeakDisplayLinkTarget *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_target, v7);
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v9->_action = v10;
  }

  return v9;
}

- (void)_displayLinkTick:(id)a3
{
  v6 = a3;
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
    [WeakRetained performSelector:action withObject:v6];
  }
}

@end