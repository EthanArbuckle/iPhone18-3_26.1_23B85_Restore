@interface _UISceneDisplayLinkTargetAndAction
- (SEL)action;
- (_UISceneDisplayLinkTargetAndAction)initWithTarget:(id)target action:(SEL)action;
- (id)target;
@end

@implementation _UISceneDisplayLinkTargetAndAction

- (_UISceneDisplayLinkTargetAndAction)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = _UISceneDisplayLinkTargetAndAction;
  v7 = [(_UISceneDisplayLinkTargetAndAction *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
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