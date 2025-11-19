@interface UIControlTargetAction
- (id)description;
@end

@implementation UIControlTargetAction

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_actionHandler)
  {
    v11.receiver = self;
    v11.super_class = UIControlTargetAction;
    v4 = [(UIControlTargetAction *)&v11 description];
    v5 = [v3 stringWithFormat:@"%@ actionHandler=%@ events=0x%lX", v4, self->_actionHandler, self->_eventMask];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIControlTargetAction;
    v4 = [(UIControlTargetAction *)&v10 description];
    WeakRetained = objc_loadWeakRetained(&self->_target);
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    v8 = NSStringFromSelector(action);
    v5 = [v3 stringWithFormat:@"%@ target=%p action=%@ events=0x%lX", v4, WeakRetained, v8, self->_eventMask];
  }

  return v5;
}

@end