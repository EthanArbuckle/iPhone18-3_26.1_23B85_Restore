@interface _UIPopoverScene
- (id)nextResponder;
@end

@implementation _UIPopoverScene

- (id)nextResponder
{
  if (_UIResponderCrossSceneResponderChainEnabled())
  {
    v3 = [(UIWindowScene *)self windows];
    v4 = [v3 firstObject];

    v5 = [v4 rootViewController];
    v6 = [v5 parentModalViewController];

    if (v6)
    {
      v7 = [v5 _nextResponderIgnoresWindowIfRootVC];
      [v5 set_nextResponderIgnoresWindowIfRootVC:1];
      v8 = [v5 nextResponder];
      [v5 set_nextResponderIgnoresWindowIfRootVC:v7];

      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10.receiver = self;
  v10.super_class = _UIPopoverScene;
  v8 = [(UIScene *)&v10 nextResponder];
LABEL_7:

  return v8;
}

@end