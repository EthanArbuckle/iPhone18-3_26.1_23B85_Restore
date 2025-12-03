@interface UIViewController(TVMLKitAdditions)
- (void)tv_updateViewLayout;
@end

@implementation UIViewController(TVMLKitAdditions)

- (void)tv_updateViewLayout
{
  tv_associatedIKViewElement = [self tv_associatedIKViewElement];
  if (tv_associatedIKViewElement)
  {
    v5 = tv_associatedIKViewElement;
    view = [self view];
    [view transferLayoutStylesFromElement:v5];

    view2 = [self view];
    [view2 setNeedsLayout];

    tv_associatedIKViewElement = v5;
  }
}

@end