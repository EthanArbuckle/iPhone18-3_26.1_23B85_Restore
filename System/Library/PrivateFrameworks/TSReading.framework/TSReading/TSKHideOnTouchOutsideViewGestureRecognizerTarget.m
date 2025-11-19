@interface TSKHideOnTouchOutsideViewGestureRecognizerTarget
- (BOOL)isEqual:(id)a3;
- (SEL)action;
- (unint64_t)hash;
- (void)setAction:(SEL)a3;
@end

@implementation TSKHideOnTouchOutsideViewGestureRecognizerTarget

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!a3)
  {
    return 0;
  }

  v6 = v5;
  v7 = [(TSKHideOnTouchOutsideViewGestureRecognizerTarget *)self target];
  if (v7 != [v6 target])
  {
    return 0;
  }

  v9 = [(TSKHideOnTouchOutsideViewGestureRecognizerTarget *)self action];
  return v9 == [v6 action];
}

- (unint64_t)hash
{
  v2 = [(TSKHideOnTouchOutsideViewGestureRecognizerTarget *)self target];

  return [v2 hash];
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

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->mAction = v3;
}

@end