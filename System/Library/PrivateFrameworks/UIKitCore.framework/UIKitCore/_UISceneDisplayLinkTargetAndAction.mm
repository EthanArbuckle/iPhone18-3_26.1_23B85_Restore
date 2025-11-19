@interface _UISceneDisplayLinkTargetAndAction
- (SEL)action;
- (_UISceneDisplayLinkTargetAndAction)initWithTarget:(id)a3 action:(SEL)a4;
- (id)target;
@end

@implementation _UISceneDisplayLinkTargetAndAction

- (_UISceneDisplayLinkTargetAndAction)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _UISceneDisplayLinkTargetAndAction;
  v7 = [(_UISceneDisplayLinkTargetAndAction *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_action = v9;
  }

  return v8;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
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