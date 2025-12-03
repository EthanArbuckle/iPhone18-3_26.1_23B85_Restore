@interface UIInputViewAnimationControllerBasic
- (id)prepareAnimationWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement;
@end

@implementation UIInputViewAnimationControllerBasic

- (id)prepareAnimationWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement
{
  endPlacementCopy = endPlacement;
  [host updateToPlacement:placement withNormalAnimationsAndNotifications:0];

  return endPlacementCopy;
}

@end