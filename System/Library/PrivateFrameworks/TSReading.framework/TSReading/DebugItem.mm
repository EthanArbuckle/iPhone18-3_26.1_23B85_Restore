@interface DebugItem
- (DebugItem)initWithTitle:(id)title target:(id)target action:(SEL)action;
- (SEL)action;
- (void)dealloc;
@end

@implementation DebugItem

- (DebugItem)initWithTitle:(id)title target:(id)target action:(SEL)action
{
  v11.receiver = self;
  v11.super_class = DebugItem;
  v8 = [(DebugItem *)&v11 init];
  if (v8)
  {
    v8->_title = [title copy];
    v8->_target = target;
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v8->_action = actionCopy;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DebugItem;
  [(DebugItem *)&v3 dealloc];
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