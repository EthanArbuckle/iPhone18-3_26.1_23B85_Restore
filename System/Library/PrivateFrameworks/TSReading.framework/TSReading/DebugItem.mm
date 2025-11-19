@interface DebugItem
- (DebugItem)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (SEL)action;
- (void)dealloc;
@end

@implementation DebugItem

- (DebugItem)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v11.receiver = self;
  v11.super_class = DebugItem;
  v8 = [(DebugItem *)&v11 init];
  if (v8)
  {
    v8->_title = [a3 copy];
    v8->_target = a4;
    if (a5)
    {
      v9 = a5;
    }

    else
    {
      v9 = 0;
    }

    v8->_action = v9;
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