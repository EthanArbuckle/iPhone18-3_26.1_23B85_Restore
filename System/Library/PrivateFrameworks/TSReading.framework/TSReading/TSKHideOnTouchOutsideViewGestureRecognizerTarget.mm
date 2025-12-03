@interface TSKHideOnTouchOutsideViewGestureRecognizerTarget
- (BOOL)isEqual:(id)equal;
- (SEL)action;
- (unint64_t)hash;
- (void)setAction:(SEL)action;
@end

@implementation TSKHideOnTouchOutsideViewGestureRecognizerTarget

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!equal)
  {
    return 0;
  }

  v6 = v5;
  target = [(TSKHideOnTouchOutsideViewGestureRecognizerTarget *)self target];
  if (target != [v6 target])
  {
    return 0;
  }

  action = [(TSKHideOnTouchOutsideViewGestureRecognizerTarget *)self action];
  return action == [v6 action];
}

- (unint64_t)hash
{
  target = [(TSKHideOnTouchOutsideViewGestureRecognizerTarget *)self target];

  return [target hash];
}

- (SEL)action
{
  if (self->mAction)
  {
    return self->mAction;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->mAction = actionCopy;
}

@end