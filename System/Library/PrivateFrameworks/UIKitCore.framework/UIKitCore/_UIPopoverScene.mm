@interface _UIPopoverScene
- (id)nextResponder;
@end

@implementation _UIPopoverScene

- (id)nextResponder
{
  if (_UIResponderCrossSceneResponderChainEnabled())
  {
    windows = [(UIWindowScene *)self windows];
    firstObject = [windows firstObject];

    rootViewController = [firstObject rootViewController];
    parentModalViewController = [rootViewController parentModalViewController];

    if (parentModalViewController)
    {
      _nextResponderIgnoresWindowIfRootVC = [rootViewController _nextResponderIgnoresWindowIfRootVC];
      [rootViewController set_nextResponderIgnoresWindowIfRootVC:1];
      nextResponder = [rootViewController nextResponder];
      [rootViewController set_nextResponderIgnoresWindowIfRootVC:_nextResponderIgnoresWindowIfRootVC];

      if (nextResponder)
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
  nextResponder = [(UIScene *)&v10 nextResponder];
LABEL_7:

  return nextResponder;
}

@end