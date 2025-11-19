@interface UIViewController(TVMLKitAdditions)
- (void)tv_updateViewLayout;
@end

@implementation UIViewController(TVMLKitAdditions)

- (void)tv_updateViewLayout
{
  v2 = [a1 tv_associatedIKViewElement];
  if (v2)
  {
    v5 = v2;
    v3 = [a1 view];
    [v3 transferLayoutStylesFromElement:v5];

    v4 = [a1 view];
    [v4 setNeedsLayout];

    v2 = v5;
  }
}

@end