@interface BFFFinishSetupModalNavigationController
- (CGSize)preferredContentSize;
- (int64_t)modalPresentationStyle;
@end

@implementation BFFFinishSetupModalNavigationController

- (CGSize)preferredContentSize
{
  v2 = [(BFFFinishSetupModalNavigationController *)self topViewController];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)modalPresentationStyle
{
  if ([(BFFFinishSetupModalNavigationController *)self isPad])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end