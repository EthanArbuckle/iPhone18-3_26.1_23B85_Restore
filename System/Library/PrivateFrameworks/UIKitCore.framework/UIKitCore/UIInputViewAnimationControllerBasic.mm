@interface UIInputViewAnimationControllerBasic
- (id)prepareAnimationWithHost:(id)a3 startPlacement:(id)a4 endPlacement:(id)a5;
@end

@implementation UIInputViewAnimationControllerBasic

- (id)prepareAnimationWithHost:(id)a3 startPlacement:(id)a4 endPlacement:(id)a5
{
  v7 = a5;
  [a3 updateToPlacement:a4 withNormalAnimationsAndNotifications:0];

  return v7;
}

@end